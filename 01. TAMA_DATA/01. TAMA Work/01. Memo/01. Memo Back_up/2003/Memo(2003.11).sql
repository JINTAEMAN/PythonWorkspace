

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2003.11) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2003.11.01(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 13:00 ==> 맑음 

- B2C 이벤트
- 진열매장 상품찾기 이벤트 제 2탄  
==============================================================================================================

- DB link 분석
SELECT *  FROM user_db_links --// DB 링크 확인 

SELECT * FROM STK_IN@DL_1BDEV 
SELECT * FROM cust@DL_1BDEV WHERE cust_no='1096006' 
  
DROP  DATABASE LINK DL_1BDEV --// DB 링크 삭제 
  
CREATE DATABASE LINK DL_1BDEV 
CONNECT TO LEADER IDENTIFIED       --// DB 링크 생성 
BY LEADER01 USING '1BDEV.world' 

CREATE DATABASE LINK DL_SE1BDB 
CONNECT TO LEADER IDENTIFIED       --// DB 링크 생성 
BY solomon USING 'SE1BDB.world' 
 
select *  from global_name 
------------------------------------------------------------------------------------------------------------------------------ 

HIBCPDB:/home/b2cprod> oerr ora 2085 
02085, 00000, "database link %s connects to %s" 
// *Cause: a database link connected to a database with a different name. 
//  The connection is rejected. 
// *Action: create a database link with the same name as the database it 
//  connects to, or set global_names=false. 
==============================================================================================================

- 문제 해결: 
C:\oracle\admin\TAMAora\pfile\initTAMAora.ora 
global_names=false로 설정 
==============================================================================================================

- DB 데이타 옮기기(DB link를 걸어서 Table를 만들어 새로 저장) 
create table cust 
as 
	SELECT * FROM cust@T_SE1BDB WHERE cust_no >='2861000' and cust_no <='2861020' 
------------------------------------------------------------------------------------------------------------

SELECT *  FROM cust 
DROP table cust 
==============================================================================================================

- Export 사용 
c:\> exp tama/tama339 file=C:\ALL_WEB\Calendar_ora\DB\PDA\EXPDAT_cust.DMP tables=cust log=cust.log 
===============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2003.11.03(월) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:40 ~ 19:00 ==> 맑음 

- B2C 이벤트
- 진열매장 상품찾기 이벤트 제 2탄 
- 1회차 ====>  총참여수 410명 참여(정답 397명, 오답 13) 
==============================================================================================================

- PDA 수정
- 프로그램 Test 장비 
1. 백화점용 PDA(iPhone 이용) 장비 
- HiMobileD/iphone없이 테스트(크래들에 연결)
2. 지점용 PDA(무선랜 이용) 장비 
- HiMobile(무선랜 이용) 
- HiMobileD/iphone없이 테스트(무선랜 이용)  ===> 로컬 Comp(.34)를 이용 
- HiMobileD/iphone없이 테스트_126(무선랜 이용)  ===> Test 서버 Comp(.126)를 이용 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.11.04(화) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 19:00 ==> 맑음 

- PDA 수정
-- 테이블 유저(user) 검색  
SELECT owner, object_name FROM dba_objects  
WHERE object_type='TABLE' AND owner='TAMA' 
-- 자신이 소유한 테이블만 검색 
sselect * from tab; 
-- 자기가 액세스할 수 있는 테이블을 조회 
select table_name from all_tables; 
==============================================================================================================

- 물류재고 조회
 == 물류재고 조회(/store/StockWDbWrap.java에서) 
SELECT c.ware_name, a.possible_vol+b.possible_vol,  
a.available_quantity+b.available_quantity, a.ows_quantity+b.ows_quantity  
FROM   
(SELECT w.ware_name, w.ware_code, 0 possible_vol, NVL(TO_CHAR(a.available_quantity),'0') available_quantity,  
NVL(TO_CHAR(a.ows_quantity),'0') ows_quantity  
FROM  
(SELECT vrs.organization_code, vrs.available_quantity, vrs.ows_quantity 
 FROM xinvk_stock_v@hiup_erpprod_link vrs --// 단품  ###### 
 WHERE vrs.item_code= 'AHA-RV21CB'   
UNION  
 SELECT vrs.organization_code, MIN(TRUNC(vrs.available_quantity/sm.comp_qty)),  
MIN(TRUNC(vrs.ows_quantity/sm.comp_qty)) 
 FROM xinvk_set_model_stock_v@hiup_erpprod_link vrs,SET_MODEL SM --// 셋트 모델  ###### 
 WHERE vrs.item_code= 'F-3130CD' 
   and vrs.item_code=  sm.p_model_code 
         GROUP BY vrs.organization_code) a, warehouse w  
 WHERE w.ware_code = a.organization_code(+)) a, 
(SELECT w.ware_name, w.ware_code, NVL(TO_CHAR(a.possible_vol),'0') possible_vol, 
0 available_quantity, 0 ows_quantity  
FROM  
(SELECT s.store_code,min(trunc(s.possible_vol/sd.comp_qty)) possible_vol FROM stock_month s,SET_MODEL SD 
WHERE sd.p_model_code = 'F-3130CD' 
AND sd.m_model_code = s.model_code 
AND s.branch_code = 'AAA' 
AND s.store_gb = '1' 
AND s.comp_cd = '1100' 
AND s.stk_date = TO_CHAR(SYSDATE,'yyyymm') 
AND s.possible_vol != 0 
group by s.store_code) a, warehouse w   
WHERE w.ware_code = a.store_code(+)  
AND w.ware_code >= 'YPZ'  AND w.ware_code <= 'YPZ' ) b,  
warehouse c  
WHERE b.ware_code = a.ware_code  
AND c.ware_name=b.ware_name  
AND (a.possible_vol + b.possible_vol != 0  
OR a.available_quantity + b.available_quantity != 0  
OR a.ows_quantity + b.ows_quantity != 0)  
==============================================================================================================
  
- 물류명: warehouse Table에서 c.ware_name 
HI판매가능재고: a에서의 판매가능재고(v_rdc_stock Table에서 0 possible_vol)와  
b에서의 판매가능재고(stock_month Table에서 a.possible_vol)의 합 
LGE주문대기재고: a에서의 주문대기재고(v_rdc_stock Table에서 a.wait_qty)와  
b에서의 주문대기재고(stock_month Table에서 0 wait_qty)의 합 
OWS: a에서의 OWS(v_rdc_stock Table에서 a.ows_qty)와  
b에서의 OWS(stock_month Table에서 0 ows_qty)의 합 
================================================================================================================

v_rdc_stock --> xinvk_stock_v@hiup_erpprod_link(Eagle 단품재고 view) 
mlct_cd organization_code 
modl item_code 
wait_qty available_quantity 
ows_qty ows_quantity 

v_rdc_stock --> xinvk_set_model_stock_v@hiup_erpprod_link(Eagle 셋모델품재고 view) 
mlct_cd organization_code 
modl child_item_code 
wait_qty available_quantity 
ows_qty ows_quantity 
================================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2003.11.05(수) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 08:00 ~ 19:00 ==> 맑음 

- Oracle 문제
- 테이블스페이스 파일 삭제(C:\oracle\OHome) 
원인: 파일 용량이 지나치게 크서 오라클 종료 후 삭제 
처리: 오라클이 Startup하면서 삭제된 테이블스페이스 파일을  아래 파일에서 찾으므로 재설치 해야 함 
C:\oracle\admin\TAMAora\bdump/tamaoraALRT.LOG 
------------------------------------------------------------------------------------------------------- 

- ora-01033 
:oracle initialization or shutdown in progress 
말 그대로 오라클이 기동 혹은 다운중입니다. 
즉, 기동중이라면 사용하려는 메모리 및 시스템 자원을 확보중일 것이며 
다운중이라면 사용했던 메모리 및 시스템 자원을 해제하는 중일 것입니다. 
1~2분 정보 기달렸다가 다시 시도해 보세요. 
===================================================================================================================

1.우선 해당하는 user 가 생성한 데이타만 지우고 싶으면 
  drop user aa cascade; 하시면 해당되는 데이타는 다 지워집니다. 
2.user를 삭제한 후에 tablespace 를 지워야하는데...이때는 
   이 tablespace에 aa 라는 유저이외에 다른 유저가 만든 데이타가 
   있으면 안됩니다....꼭 확인하시고 
    drop tablespace aaa INCLUDING CONTENTS; 하시면 딕셔너리에 
   서 tablespace 가 삭제됩니다.....그후에 unix 명령어로 해당하는  
   datafile를 삭제하시면 됩니다. 
====================================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.11.06(목) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:30 ~ 19:00 ==> 맑음 

- PDA 수정
-- 생성 Table 데이타(DB_CALEDNAR_2 생성) 
create table DB_CALEDNAR_2 
as 
SELECT * FROM DB_CALEDNAR 
WHERE writeday >= '2003-11-01' AND cc_id <= '2003-09-01' 
-- SELECT *  FROM DB_CALEDNAR_2 

-- DB_CALEDNAR 테이블에 추가 
INSERT INTO DB_CALEDNAR(  
SELECT * FROM DB_CALEDNAR_2) 
-- SELECT *  FROM DB_CALEDNAR 
===================================================================================================================

Initialization error 
Could not locate OCI dll 
1. 일단 클라이언트 PC 에 Net8 소프트웨어가 설치되었는지 궁금하군요.  
만약 설치되지 않았다면 personal oracle 에서 Net8 소프트웨어만 설치하고 다시 시도를 해보세요. 
2. Toad Server Login에서 SQL * Net compatible Net8 리스트 박스 체크 후 로그인 
===================================================================================================================

구체적인 정보도 없고 정확히 무엇을 묻고자 하는지도 잘 모르겠지만...   
1. 데이터 파일이 9GB가 넘었다는 것은 문제가 있다.  
물론 데이터량에 따라 그 이상이 될 수도 있지만 네 PC에서 테스트로 활용하는 DB파일 크기가 그 정도라면 .... ㅡ.ㅡ;;  
DB환경, 작업내역 등의 정보도 없이 그 원인을 짐작하기란 불가하다.  

2. 삭제 할려고 하는데 삭제가 안된다니. 에러가 발생한 거라면 에러코드도 함께 올렸어야지....  
정확히 어떤 상황인지는 잘 모르겠지만 아래 내용을 보니 tama USER가 default tablespace로 사용중인데 삭제하려고 하니 삭제가 
안되는것 같다. 
tama user를 먼저 삭제후 tablespace 삭제 그리고 다시 tablespace와 user를 생성하던지, 해당 tablespace에 사용중인 내용을 tama user에서 
삭제하고 tama user에게 default tablespace를 새로이 할당후 tablespace를 삭제하면 되지 않을까?  
그리고 Drop tablespace ..... 이것은 단순히 오라클 내부 관리 정보를 삭제하는 것이다.  
따라서 이 구문을 수행 후 물리적으로 해당파일을 지워주어야 한다.  

3. 새로운 Tablespace 생성 구분에서 ...  
default storage 설정값 중 minextents 값을 10으로 설정한 이유가 있는 지 모르겠다. 일반적으로 rollback segment용 tablespace에서는 
최소 2 이상이 되어야 하고  기타 tablespace는 1로써 설정한다.  
maxextents 값을 121로 설정했는데 뭐 크게 문제시 될 것은 없지만 데이터량이 많은 환경이라면 unlimited로 설정하는 것도 괜찮다.  
물론 이것들이 의미하는 것은 네가 다른 문서를 찾아보고 개념정리를 먼저 해라.  

전체적으로 tama USER에게 새로운 작업공간을 할당하는 작업을 수행한것 같은데 그 정도까지라면 문제가 없지만 위 2번에서 말한 작업이 
필요하다면  alter user ... 구분 다음에 수행하면 된다.  
==============================================================================================================

A. 삭제할 경우 
--// 사용자 tama 삭제(TAMAORA Database에서) 
Drop USER tama CASCADE; 
-------------------------------------------------------------------------------------------------------

--// TAMA_DATA와 DB 내의 모든 내용 같이 삭제(TAMAORA Database에서) 
Drop tablespace TAMA_DATA including contents; 
-------------------------------------------------------------------------------------------------------

- TABLESPACE TAMA_DATA  다시 생성 
CREATE DATABASE tama_data 
DATAFILE 'C:\oracle\OHome\tama_data.dbs' SIZE 200M 
autoextend on next 10M 
maxsize 1000M 
DEFAULT STORAGE( INITIAL 50K 
NEXT 50K 
MINEXTENTS 2 
MAXEXTENTS unlimited 
PCTINCREASE 50); 
-------------------------------------------------------------------------------------------------------

-- 사용자 tama 다시 생성 
SQL> CREATE USER tama 
       IDENTIFIED BY tama339 
       DEFAULT    TABLESPACE tama_data 
       TEMPORARY  TABLESPACE temporary_data 
       QUOTA 5M   ON tama_data 
       QUOTA 3M   ON temporary_data; 

-- tama 사용자에게 DBA권한 부여 
GRANT CONNECT, DBA TO tama; 
==============================================================================================================

SELECT a.tablespace_name, a.bytes, a.status, b.status, b.enabled, b.name 
FROM DBA_DATA_FILES a, V$DATAFILE b 
WHERE a.FILE_ID = b.FILE#  
AND a.tablespace_name = 'TAMA_DATA'; 
==============================================================================================================

create tablespace testdb  
  2  datafile 'd:\testdb\test_db.dat' size 1000M    
  3  default storage (initial 50M next 50M  
  4  minextents 1 maxextents 4096  
  5  pctincrease 0);  

table등을 생성시 storage절을 생략하면 Tablespace의 값을 따라갑니다. (Dictionary managed TS가정시) 
님의 경우엔 table 생성시 Storage절을 생략했으므로, 
Tablespace의 디폴트인 initial 50M minextents 1 기준으로 최초 테이블 생성시 50M짜리 extents 1개가 table segment에 할당됩니다. 
==============================================================================================================

extent는 블럭의 연속집합입니다.  
컬럼은 말그대로 해당 블럭에 들어갈 data 입니다. 
처음 create table 문장으로 segment생성시 extent를 할당하고 점점 데이타가 추가되어 추가적인 extent가 필요할시 다음 extent를 할당합니다.  
storage 할당은 oracle Default(보통 아무 옵션 사용안함), tablespace, table level로 할당 가능합니다. 
tablespace 생성시 default storage절로 설정하고, 
table생성시 storage절로 설정합니다. 
우선순위는 minimum_extent(dictionary관리), uniform_size(local관리) 만 빼고는 table level에서 정의한게 우선입니다.  
위옵션은 tablespace level에서 정의합니다. 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.11..07(금) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:50 ~ 19:00 ==> 맑음 

- PDA 수정
- 진열매장 상품찾기 이벤트 제 2탄
===============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2003.11.10(월) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:50 ~ 19:00 ==> 맑음 

- B2C 이벤트
- 진열매장 상품찾기 이벤트 제 2탄 
- 2회차 ====>  총 참여수 711명 참여(정답 662명, 오답 49) 
==============================================================================================================

- PDA 수정
- 매출등록(/store/Sale_register.jsp): t_sale_save_i
set_model    comp_qty    구성비 개수 추가  ===> 이관등록(/store/Trans_request_input.jsp) 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.11.11(화) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 19:00 ==> 맑음 

- PDA 수정
- CAPA 체크 수정(추가: out_type_i, house_type_i, setup_type_i) ==> /Sale_register_ulisCapaInput.jsp 
- 제품설치유형 변경 ==> /Sale_register_item.jsp?str_modelCode=DA-6000T 
- 긴급주문 여부 ==> /Sale_register_itemEmgc.jsp 
==============================================================================================================

Calendar Calendar = Calendar.getInstance();
String NowDate = Integer.toString(Calendar.get(Calendar.YEAR)) + "-"; 
NowDate = NowDate + Integer.toString(Calendar.get(Calendar.MONTH)+1) + "-"; 
NowDate = NowDate + Integer.toString(Calendar.get(Calendar.DATE)); // 오늘 날짜 
==============================================================================================================

- 제품설치 유형 조회(/classes/sale/SaleRegisterDbWrap.java에서)  ==> DA-3530(단순, 복합, 추가 설치 code) 
SELECT DISTINCT install_type, install_type_nm 
FROM vi_li_modelfee 
WHERE corp_type= '1100'  
AND model_cd IN ( SELECT DISTINCT m_model_code  
FROM set_model 
WHERE p_model_code = 'F-3130CD' 
UNION 
SELECT model_code 
FROM model 
WHERE model_code =  'F-3130CD') 
AND install_type IS NOT NULL 
------------------------------------------------------------------------------------------------------------------------- 

 // 긴급주문 여부 조회(/classes/sale/SaleRegisterDbWrap.java에서)  ===> 양재물류센타(양재동) 
SELECT DECODE(distance_type, '1', 'Y', 'N')  ft_deliv_emergency_chk( TO_DATE('20031117'  '2100', 'YYMMDDHH24MI')) distance_type 
FROM vi_ld_distance  
WHERE dc_cd ='YPZ' AND zip_cd ='435755' 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.11.12(수) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:20 ~ 22:00 ==> 맑음 

- PDA 수정
IDD_SALE_REGISTER_DEL 수정 
- 주거형태(IDC_C_HOUSE_TYPE2) 수정: IDD_SALE_REGISTER_INFO에서 옮겨옴(CAPA체크를 위해) 
- 설치유형(IDC_C_SETUP_TYPE) 추가  

  <VARIABLE NAME="house_type_i"   FORMNAME="house_type_i"    COMMENT="주거형태"/>     
  <VARIABLE NAME="setup_type_i"   FORMNAME="setup_type_i"  COMMENT="설치유형"/> 
==============================================================================================================

- Oracle 문제
ORA-01659: 5 을(를) 넘어서 테이블스페이스 TAMA_DATA에 MINEXTENTS를 할당할 수 없 
습니다 
ORA-01659: unable to allocate MINEXTENTS beyond 3 in tablespace USER_DATA 
------------------------------------------------------------------------------------------------------------------------- 

--//  tablespace의 존재 데이타 정보 조회 
SELECT owner, segment_name, segment_type, bytes, bytes/1024  'M' AS MAX_Mega  
FROM dba_segments 
WHERE tablespace_name = 'TAMA_DATA'  
------------------------------------------------------------------------------------------------------------------------- 

--// tablespace의 존재 데이타 총합 
SELECT SUM(bytes), SUM(bytes/1024)  'M' AS SUM_Mega 
FROM dba_segments  
WHERE tablespace_name = 'TAMA_DATA'  
------------------------------------------------------------------------------------------------------------------------- 

--// 현재 남아있는 여유공간의 총 합과, 그 여유공간중에서 가장 큰 조각의 size를 확인 
SELECT SUM(bytes), SUM(bytes/1024)  'M' AS SUM_Mega,  
SUM((bytes/1024)/100)  'G' AS SUM_Giga,MAX(bytes), MAX(bytes/1024)  'M' AS MAX_Mega 
FROM dba_free_space  
WHERE tablespace_name = 'TAMA_DATA' 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.11.13(목) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:20 ~ 22:00 ==> 맑음 

- PDA 수정
IDD_SALE_REGISTER_DEL 수정 
- 주거형태(IDC_C_HOUSE_TYPE2) 수정: IDD_SALE_REGISTER_INFO에서 옮겨옴(CAPA체크를 위해) 
- 설치유형(IDC_C_SETUP_TYPE) 추가 
==============================================================================================================

- 노트북 램 추가(512N) ==> 속도향상 효과  
===============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2003.11.14(금) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 19:00 ==> 맑음 

- PDA 수정
- 파라미터 알람 
string_t mess = bExceptionMessage(outputs); 
wchar_t* w_message = ansi2uni(mess);  
MessageBox(hDlg,w_message, TEXT("[_DONE] :: [Test_0]"),TEXT("[테스트 창]"),MB_OK);// 파라미터 알람 mgsbox  
===============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2003.11.17(월) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 08:30 ~ 22:00 ==> 맑음 

- B2C 이벤트
- 진열매장 상품찾기 이벤트 제 2탄 
- 3회차 ====>  총참여수 346명 참여(정답 341명, 오답 5) 
==============================================================================================================

- PDA 수정
- 타입 변경
itoa : 숫자 -> 문자 
atoi : 문자 -> 숫자  
// 설치유형 
wchar_t wszBuffer[100];  
int isetup_type2 = SendMessage(GetDlgItem(hDlg, IDC_C_SETUP_TYPE), CB_GETCURSEL, 0, 0); 
wchar_t * w2_message =_itow(isetup_type2, wszBuffer,  10 ); 
MessageBox(hDlg, w2_message, TEXT("[DelDlg_isetup_type2 -설치유형]"),MB_OK); // 파라미터 알람 mgsbox  
strcpy(deliData[33], setupType_number2[isetup_type2]); //설치유형 
wchar_t* ws2_message = ansi2uni(setupType_number2[isetup_type2]); 
MessageBox(hDlg, ws2_message, TEXT("[DelDlg -설치유형]"),MB_OK); // 파라미터 알람 mgsbox 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.11.18(화) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:50 ~ 19:00 ==> 맑음 

- PDA 수정
- CAPA 조회(CAPA여부, CAPA율) 넘기기 
HWND hList = GetDlgItem(hDlg, IDC_ULISCAPA_LIST); 
int index = ListView_GetNextItem(hList, -1, LVNI_ALL  LVNI_SELECTED); 
if( index == -1 ) break; 
SetDlgItemText(GetParent(hDlg), IDC_DELTIME, ansi2uni(bmGet(matrix,index,1)));   

strcpy(deliData[31], bmGet(matrix, index, 2));	 // CAPA여부 
strcpy(deliData[34], bmGet(matrix, index, 3));	// CAPA율 
------------------------------------------------------------------------------------------------------------------ 

bInput(bin, "as_it_atp_sign", regiData[iCnt][31]); //CAPA여부: 수정 
bInput(bin, "as_it_capa_rate", regiData[iCnt][34]); //CAPA율: 추가 
==============================================================================================================

System.out.println("Delivery_search.jsp:: [s_o_jmnno]"+ s_o_jmnno[i]); //주문서번호 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.11.19(수) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:50 ~ 19:00 ==> 맑음 

- PDA 수정
- 최종 테스트  
- PDA 장비점검
S/N: 4G29DW33616W -->  정상 
S/N: HV11D02A010386 --> (CDMA2000 i-Kit PLUS): i-kit이 느림(로그인시 끊어짐) 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.11.20(목) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 19:00 ==> 맑음 

- Oracle 문제 
- import 에러 문제
c:\> imp tama/tama339 file=C:\ALL_WEB\Calendar_ora\DB\CALENDAR_DB\EXPDAT.DMP  
tables=DB_CALENDAR log=DB_CALENDAR.log 

IMP-00003: ORACLE 오류 1659 가 발생했습니다 
ORA-01659: 5 을(를) 넘어서 테이블스페이스 TAMA_DATA에 MINEXTENTS를 할당할 수 없 
습니다 
--------------------------------------------------------------------------------------------------------------------- 

- 해결책: 
1. C:\oracle\OHome\TAMA_DATA.DBS를 10GB로 늘여줌 
2. 다른 테이블스페이스 THIBCPDB_data로 잠시 export 시킴 
(될 수 있으면 MINEXTENTS 1로 된 테이블스페이스로 데이타 넘길 것) 
3. DB_CALENDAR 테이블 삭제 
SQL> DROP TABLE DB_CALENDAR CASCADE CONSTRAINTS ;  
3. TABLESPACE 수정(MINEXTENTS 1로 수정) 

ALTER TABLESPACE THIBCPDB_DATA  
DEFAULT STORAGE( INITIAL 50K 
NEXT 50K 
MINEXTENTS 1 
MAXEXTENTS unlimited 
PCTINCREASE 50); 

4. TAMA_DATA 테이블스페이스를 1000M로 줄여줌  
SQL> ALTER DATABASE DATAFILE 'C:\oracle\OHome\TAMA_DATA.DBS' RESIZE 1000M; 
5. 다시 import 시킴 
===============================================================================================================

- listener.ora 와 sqlnet.ora tnsnames.ora에 문제가 있을 확률이 큽니다.   
sqlnet.ora에는 "NAMES.DEFAULT_DOMAIN = xx.co.kr" 와 같은 라인이 있어야 하며   
listener.ora에는 IPC 프로토콜에 대한 설정, 즉 LISTENER에 ADDRESS_LIST안에  
"(ADDRESS = (PROTOCOL = IPC)(KEY = EXTPROC))" 와 비슷한 것과  
SID_LIST_LISTENER안에 SID_LIST에  
"(SID_DESC =  
(SID_NAME = PLSExtProc)  
(ORACLE_HOME = /usr/local/oracle/apps/oracle/product/8.1.6) 
(PROGRAM = extproc) 
)"비슷한 것이 있어야 합니다. 

또, tnsnames.ora 에는  
EXTPROC_CONNECTION_DATA.xxx.co.kr =  
(DESCRIPTION =  
(ADDRESS_LIST =  
(ADDRESS = (PROTOCOL = IPC)(KEY = EXTPROC))  
)  
(CONNECT_DATA =  
(SID = PLSExtProc)  
(PRESENTATION = RO)  
)  
)  
과 같은 라인이 있어야 합니다. 

3개를 비교하시면 연관성을 알수 있을 겁니다.  
tnsping EXTPROC_CONNECTION_DATA.xxx.co.kr 
라고 했을때 핑이 성공 해야 합니다. 

lsnrctl status시 
(DESCRIPTION=(ADDRESS=(PROTOCOL=IPC)(KEY=EXTPROC)))에 연결되었습니다 
와 같은 말이 나와야 합니다. 
===============================================================================================================

Net8세팅이 다되었다면 리스너를 재실행 합니다. 
C:\> lsnrctl stop -> lsnrctl start 

C:\> tnsping EXTPROC_CONNECTION_DATA.127.0.0.1  
===============================================================================================================

에러:==> TNS-03505: 이름 처리에 실패했습니다 
ctxsrv -user ctxsys/ctxsys -logfile /tmp/ctxsrv.log & 
로 백그라운드 프로세서를 띄우세요..   
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.11.21(금) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 19:00 ==> 맑음 

- Oracle 문제
- index 생성 에러(intermedia Text) 
SQL> create index DB_CALENDAR_comment on DB_CALENDAR(cc_desc) 
 indextype is ctxsys.context 
 parameters('lexer han_lexer 
             filter comment_filter'); 

create index DB_CALENDAR_comment on DB_CALENDAR(cc_desc) 
* 
1행에 오류: 
ORA-29855: ODCIINDEXCREATE 루틴을 수행하는데 오류가 발생했습니다 
ORA-20000: interMedia Text 오류: 
DRG-10700: 환경설저이 존재하지 않습니다: comment_filter 
ORA-06512: "CTXSYS.DRUE", 줄 126에서 
ORA-06512: "CTXSYS.TEXTINDEXMETHODS", 줄 78에서 
ORA-06512: 줄 1에서 
-------------------------------------------------------------------------------------------------------------------- 

원인: comment_filter이 환경설정 안 되어 있음 
해결책: comment_filter를 새로 만듬 
SQL> begin   
ctx_ddl.create_preference('COMMENT_FILTER', 'NULL_FILTER'); 
end; 
/   
===============================================================================================================

- PDA 분석
/iPAQ File Store/HiMobileD/ 밑에 iPhone2002.CAB파일을 복사하여 넣어줌(수동) 

c.f) HiMobileDSetup.exe의 역할 
HiMobileD.CAB 파일과 iPhone2002.CAB 파일을 Temp/밑으로 copy한 뒤  
HiMobileD.CAB 파일을 실행시킨다. 

- PDA 백업
- 14:00 PDA 사용방법 및 PDA 하드포맷시 프로그램 인스톨 과정  
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.11.22(토) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 08:10 ~ 13:00 ==> 맑음 

- B2C 분석
- Weblsphere 설정
Dynamo.ear/ dyn.war
===============================================================================================================
   
■■■■■■■■■■■■■■■■■■ 2003.11.24(월) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 19:00 ==> 맑음 

- B2C 이벤트
- 진열매장 상품찾기 이벤트 제 5탄 
- 4회차 ====>  총참여수 339명 참여(정답 328명, 오답 11) 
---------------------------------------------------------------------------------------------------- 

- B2C 수정
- mypage 수정
/mypage -->   
/www/MyPage.jsp 에서 
---------------------------------------------------------------------------------------------------- 

function browseOpen2( code,service, check ) {  
	if (code=='dmc'){   // DMC 일때(창 띄우기) 
		 noticeWindow  =  window.open('/shop/www/order/dmc_point2.jsp?code='+ code+'&service='+ service+'&check='+ 
		 check+'','popup','toolbar=yes,location=yes,directories=yes,status=yes,menubar=yes,scrollbars=yes,resizable=yes,
		 width=950,height=700,top=10,left=20'); 
		 noticeWindow.opener = self;  
	} else { 
		var fo = document.channelForm; 
		var serviceId = service; 
		fo.service.value = service; 
		fo.action = '/shop/www/common/MyPageChannel.jsp'; 

		if (code=='dmc'){ 
			 fo.action="/shop/main/dmc"; 
		 } 
		fo.submit();  
	}  
}         
//--> 

<a href="javascript:browseOpen('dmc','SVC_USE', <%=check%>);">[무상수리서비스 내역 조회]</a>  
===============================================================================================================

 /www/order/dmc_point2.jsp 에서 
<!-- My Page 왼편 메뉴 --> 
<%@ include file="../common/MyPageChannel2.jsp"%> 

<iframe src="/shop/main/dmcmain?service=<%=service%>&k=<%=randomSessionId%>" border="0" bordercolor="white"
height="700"  width="600"  scrolling="auto"  noresize framespacing="0" frameborder="no" marginheight="0" marginwidth="0" 
name="iFrame">
</iframe>  
===============================================================================================================

/dmcmain --> /www/order/redirect.jsp 
/dmc  --> /www/order/dmc_point.jsp 
/dmcNewWin --> /www/order/dmc_point2.jsp 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.11.25(화) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:40 ~ 19:00 ==> 맑음 

- B2C 수정
- mypage 수정 
디지털 멤버쉽 카드
===============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2003.11.26(수) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:35 ~ 19:00 ==> 맑음 

- B2C 수정
- mypage 수정 
-------------------------------------------------------------------------------------------------- 

- 참조 사이트 
http://www.lgnara.com/lgnara/Home.jhtml 
-------------------------------------------------------------------------------------------------- 

 /www/order/dmc_point2.jsp 에서 
<!-- 다이나모 관련 필요한 소스시작 -->  
<%@ taglib uri="/dspTaglib" prefix="dsp" %> 
<%@ page import="atg.userprofiling.*"%> 
<%@ page import="atg.servlet.*"%> 
<%@ page import="atg.nucleus.*"%>  
<%@ page import="javax.naming.*"%> 
<%@ page import="com.hiplaza.util.CommonUtil.*"%> 

<dsp:page> 
<!-- 다이나모 관련 필요한 소스끝--> 
<!-- 다이나모 관련 태그 --> 
</dsp:page> 
<!-- 다이나모 관련 태그 -->  
//=====================================================================================================

- 한글 오피스 Update 
http://office.microsoft.com/officeupdate/default.aspx?CTT=6&Origin=EC010749131042 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.11.27(목) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:50 ~ 19:00 흐림 

- B2C 분석
- Websphere 설정  
dyn.ear  
dyn.war 
===============================================================================================================

- 김치찌게 
김치썰고, 깍두기 그냥 넣고... 김치국물 조금, 물, 참치 또는 돼지고기 넣구... 푹푹... 끓여. 
먹을때쯤 두부나, 떡같은거 넣음 아주 좋구... 
(돼지고기 김치찌개용 한근에 3천원) 
===============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2003.11.28(금) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:40 ~ 19:00 ==> 비 

- B2C 분석
- Websphere 설정
dyn.ear  
dyn.war 
===============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■