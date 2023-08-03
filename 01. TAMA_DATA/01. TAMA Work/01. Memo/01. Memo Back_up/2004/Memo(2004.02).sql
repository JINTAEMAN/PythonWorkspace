

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2004.02) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2004.02.02(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 

- 회계 분석
- 가우스 라이센스(매월 바뀜)  
에러: alert("데이타 다운로드중 에러가 발생했습니다"); 
C:/gauce30/license/license.conf 에서 
--------------------------------------------------------------------------------------------------------------- 

gauce.license.serial=30855286-02204-30401-9B 
---------------------------------------------------------------------------------------------------------------

- 해결책: 가우스 홈페이지 자료실에 가서 라이센스 복사하여 넣고 Orion 재부팅
http://member.shift.co.kr/index.php?member=sh_board_gdata&view_html=gaucedb&mode=board_click_view 
가우스 라이센스(2004.02월)  
가우스 라이센스 2004년 02월 29일까지입니다.  
30855286-02204-30401-9B  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.02.03(화) 작업 ■■■■■■■■■■■■■■■■
---> 06:55 ~ 23:00 

- 회계 분석
-- 대차대조표(관리용) 조회 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 
SELECT  *                                                                     
FROM ( SELECT  *   FROM T_ACCTITLE ) A, 
  ( SELECT *   
FROM ( SELECT *   FROM T_ACCTITLE ) A, 
  ( SELECT *   FROM T_ACCSLIP ) B 
  ) B 
WHERE A.COMPANY_CD = B.COMPANY_CD(+)                                                                              
  AND A.ACCGROUP2 = B.ACCGROUP2(+) 
==============================================================================================================

-- 손익계산서(관리용) 조회 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
SELECT  *                                                                     
FROM ( SELECT  *    
FROM ( SELECT  A.ACCTITLE_CD,                                                                   
( SELECT  C5                                                               
FROM  T_MISCOMMON                                                      
WHERE  COMPANY_CD = '01'                                                   
AND MISGROUP_ID = 'A001'                                         
AND MISCODE =  A.ACCGROUP) ACCTITLE_NM,                          
NVL(B.MNY1,0) MNY1,                                                              
NVL(B.MNY2,0) MNY2,                                                              
NVL(B.MNY3,0) MNY3,                                                              
NVL(B.MNY4,0) MNY4,                                                              
A.ACCGROUP'10' ORSEQ  
FROM ( SELECT *   FROM ( SELECT *   FROM  ) A, 
SELECT *    
FROM ( SELECT *   FROM T_ACCTITLE ) A,  
  ( SELECT *   FROM T_ACCSLIP ) B                                                                 
WHERE A.COMPANY_CD = B.COMPANY_CD                                                                            
   AND A.ACCTITLE_CD = B.ACCTITLE_CD                                                                          
GROUP BY A.COMPANY_CD,A.ACCGROUP ) B  
WHERE  A.COMPANY_CD = B.COMPANY_CD                                                                                   
AND A.ACCGROUP = B.ACCGROUP 

UNION ALL    ---// ===================================== 

SELECT  A.ACCTITLE_CD,                                                                                                
DECODE(A.ACCTITLE_CD,'451','상품매출원가','455','제품매출원가') ACCTITLE_NM,                                  
0 MNY1,                                                                                                       
NVL(A.DEBTOR_AMT - CREDITOR_AMT,0) MNY2,                                                                      
0 MNY3,                                                                                                       
NVL(A.DEBTOR_AMT_BEFORE - CREDITOR_AMT_BEFORE,0) MNY4,                                                        
'13''30' ORSEQ                                    
FROM  ( SELECT *   FROM T_ACCSLIP ) A             

UNION ALL    ---// ===================================== 

SELECT  A.ACCTITLE_CD,                                                          
DECODE(A.ACCTITLE_CD,'451','기초상품재고액','455','기초제품재고액') ACCTITLE_NM,                              
0 MNY1,                                                                                                       
NVL(A.TR_AMT,0) MNY2,                                                                                         
0 MNY3,                                                                                                       
NVL(A.TR_AMT_BEFORE,0) MNY4,                                                                                  
'13'DECODE(A.ACCTITLE_CD,'451','40','455','50') ORSEQ       
FROM  ( SELECT *   FROM  T_COSTBASE ) A 

UNION ALL    ---// ===================================== 

-----------------------------..............(계속) 

ORDER BY ORSEQ) AA                                                                                                 
ORDER BY AA.ORSEQ ) BB 
==============================================================================================================

-- 이익잉여금 계산서 조회 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
SELECT  *                                                                     
FROM ( SELECT  *    
FROM ( SELECT A.ACCTITLE_CD ACCTITLE_CD,                                                                          
   '처분전이익잉여금 ' ACCTITLE_NM,                                                                    
   0 MNY1,                                                                                             
   NVL(CREDITOR_AMT,0) MNY2,                                                                           
   0 MNY3,                                                                                             
   NVL( CREDITOR_AMT_BEFORE,0) MNY4,                                                                   
   '10'A.ACCTITLE_CD ORSEQ              
FROM ( SELECT *   FROM ( SELECT *   FROM  ) A, 
SELECT *    
FROM ( SELECT *   FROM DUAL ) A,  
  ( SELECT *   FROM  T_ACCSLIP ) B                                                                           
 WHERE A.COMPANY_CD = B.COMPANY_CD(+)                                                                      
   AND A.ACCTITLE_CD = B.ACCTITLE_CD(+)     

UNION ALL    ---// ===================================== 

SELECT  A.ACCTITLE_CD ACCTITLE_CD,                                                                                 
CASE WHEN A.ACCTITLE_CD = '375' THEN '전기이월이익잉여금'                                                  
 WHEN A.ACCTITLE_CD = '369' THEN '회계변경의기준효과'                                                  
 WHEN A.ACCTITLE_CD = '370' THEN '전기오류수정이익'                                                    
 WHEN A.ACCTITLE_CD = '371' THEN '전기오류수정손실' END ACCTITLE_NM,                                   
CASE WHEN A.ACCTITLE_CD = '375' OR A.ACCTITLE_CD = '371' THEN NVL(B.CREDITOR_AMT,0)                        
 WHEN A.ACCTITLE_CD = '369' OR A.ACCTITLE_CD = '370' THEN NVL(B.DEBTOR_AMT,0) END MNY1,                
0 MNY2,                                                                                                    
CASE WHEN A.ACCTITLE_CD = '375' OR A.ACCTITLE_CD = '371' THEN NVL(B.CREDITOR_AMT_BEFORE,0)                 
 WHEN A.ACCTITLE_CD = '369' OR A.ACCTITLE_CD = '370' THEN NVL(B.DEBTOR_AMT_BEFORE,0) END MNY3,         
0 MNY4,                                                                                                    
'20'A.ACCTITLE_CD ORSEQ          
FROM  ( SELECT *   FROM  T_ACCTITLE ) A, 
   ( SELECT *   FROM T_ACCSLIP ) B                                                                       
WHERE A.COMPANY_CD = B.COMPANY_CD(+)                                                                      
AND A.ACCTITLE_CD = B.ACCTITLE_CD(+)           

UNION ALL    ---// ===================================== 

SELECT  A.ACCTITLE_CD,                                                                                             
'당기순이익' ACCTITLE_NM,                                                                                  
NVL(B.DEBTOR_AMT - B.CREDITOR_AMT,0) MNY1,                                                                 
0 MNY2,                                                                                                    
NVL(B.DEBTOR_AMT_BEFORE - B.CREDITOR_AMT_BEFORE,0) MNY3,                                                   
0 MNY4,                                                                                                    
'20'A.ACCTITLE_CD ORSEQ                  
FROM  ( SELECT *   FROM DUAL ) A,  
   ( SELECT *   FROM T_ACCSLIP ) B                                                                           
WHERE A.COMPANY_CD = B.COMPANY_CD(+)                                                                      
AND A.ACCTITLE_CD = B.ACCTITLE_CD(+) 

UNION ALL    ---// ===================================== 

-----------------------------..............(계속) 

ORDER BY ORSEQ) AA                                                                                                 
ORDER BY ORSEQ ) BB 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.02.04(수) 작업 ■■■■■■■■■■■■■■■■
---> 06:58 ~ 23:00 

- 회계 분석
- 방송 듣기(세무사회) 
http://211.43.195.98/Lec/lec001_01/default.htm  
-- [교육] --  
2004 JS Project 설명회 
- 17:00 ~ 19:00 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.02.05(목) 작업 ■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 23:00 ==> 눈 

- 회계 분석
- Enter키 문제
<script language="javascript"  for="grid_ds_list" event=OnKeyPress(kcode)>   
	if(kcode == "13"){ //엔터키를 눌렀을 때 
	if(grid_ds_list.GetColumn() == "ACCSLIP_DAY") {  // 일자일 때 
	grid_ds_list.SetColumn("DCTYPE_NM");  //발생후 위치할 컬럼   
	f1.grid_ds_list.Focus();  
	return; 
	  
	} else if(grid_ds_list.GetColumn() == "VATTYPE_NM") {  // VAT일 때   

	if(ds_list.rowposition == ds_list.CountRow){ // DataSet(ds_list)의 개수와 현재의 row수가 같으면(마지막이면) 
	grid_ds_list.SetColumn("ACCSLIP_DAY"); //발생후 위치할 컬럼   
	btn_new();    //  dsAddRowFocus(f1.ds_list,f1.grid_ds_list,"ACCSLIP_DAY");를 함   
	} else { 
	grid_ds_list.SetColumn("ACCSLIP_DAY"); //발생후 위치할 컬럼  
	ds_listt.rowposition = ds_list.rowposition+1; //발생후 위치할 rowposition  
	grid_ds_list.Focus(); 
	return; 
	} 
	} 
	} 
</script> 
==============================================================================================================

-- [교육] -- 
자사상품 교육(세제) 
- 15:00 ~ 16:00 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.02.06(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 23:00 

- 회계 분석
- 세무관리
System.out.println("[TAMA] :: [_qryhash]"+ _qryhash); 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.02.07(토) 작업 ■■■■■■■■■■■■■■■■ 
---> 07:20 ~ 16:00 ==> 눈 

- 회계 분석
- 세무관리 프로그램 list 정리 
==============================================================================================================

- [주간업무 04_02  1째주] 
★ 금주 업무 실적  
 회계관리  
- 자금관리 프로그램 list 정리 
- 세무관리 프로그램 list 정리 
---------------------------------------------------------- 

★ 차주 업무 계획 
 회계관리  
- 자산 관리 프로그램 list 정리 
- 경영정보관리 프로그램 list 정리
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.02.09(월) 작업 ■■■■■■■■■■■■■■■■ 
---> 07:20 ~ 21:00 

- 회계 분석
- 회계전표 입력 분석, 수정 
◇ 문제점 
- 거래처명(ENTR_NM), 부속명(ACCSUB_NM), VATTYPE_NM(VAT) Code도움 필요함 
- 현장명(SPOT_NM) Combo로 처리 해야 함 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.02.10(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 23:00 

- 회계 분석
- Grid에서 Combo 설정 
1. 수동으로 적어서 값 넣음 
2. DB에서 Data 불러와서 값 넣음 

<!-- "평가항목그룹"에 대한 콤보 DataSet --> 
<object id="ds_E212" classid=<%= CLASSID_TOINB_DATA %> codebase="<%= CD_TOINB_DATA %>"> 
<param name="DataID" value="/BaseCode/comCode/getMisCommonListB.jsp?MISGROUP_ID=E212"> 
<param name="syncload" value=true> 
</object> 
--------------------------------------------------------------------------------------------------------------------- 

<C>id=SPOT_CD <%=  CLR_GRID_EDITABLE %> <%=  CLR_GRID_HDCOLOR %> <%=  CLR_GRID_COLOR %>  
name=현장CD2   width=60  align=Center  EditStyle=Combo Data='00:전체,01:R&F,02:쇼핑몰'</C> 
<C>id=SPOT_NM <%=  CLR_GRID_EDITABLE %> <%=  CLR_GRID_HDCOLOR %> <%=  CLR_GRID_COLOR %>  
name=현장명2 width=60 HeadAlign=Center  EditStyle=Lookup data='ds_spot_combo:MISCODE:C1' </C>  
==============================================================================================================

-- MIS공통코드 조회(현장명)  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 
SELECT A.* 
FROM T_MISCOMMON A 
WHERE A.COMPANY_CD = '01'   
AND A.MISGROUP_ID = 'A003'   
ORDER BY MISGROUP_ID,MISCODE 
------------------------------------------------------------------------------------------------------ - 

- 상대계정 - 전표 입력시 VAT관련 전표를 자동 추가하기 위해  
==============================================================================================================
  
- [i3shop  컴퓨터 사양]
본체 SN: 50068 741 00136(삼보 Dreamsys) 
펜티엄4, DDR SDRAM  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.02.11(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:25 ~ 19:30 

- 회계 분석
- 코드Help 수정 
- MS-SQL DB 210.123.133.121 ID/PWD sa/project 
==============================================================================================================

- 계정과목확인용(계정과목이 존재하지 않는 필드 중 번호가 일치하는 필드 가져 오기) 
select  A.* 
from  "DB_Acc" A, 
(SELECT B.번호,  B.전표일자 
FROM  "DB_Acc" B 
WHERE B.계정코드 IS NULL 
GROUP BY B.번호, B.전표일자 ) C 
where C.번호 = A.번호 
 AND C.전표일자 = A.전표일자  
 -- AND A.전표일자='20030630' 
------------------------------------------------------------------ 

SELECT * FROM  "DB_Acc" A 
WHERE A.계정코드 IS NULL 
AND A.필드8<>'FFF'  
------------------------------------------------------------------ 

UPDATE "DB_Acc" A 
SET A.계정코드 = '209' 
WHERE A.계정코드 IS NULL 
AND A.필드7 = '감가상각누계액' 
==============================================================================================================

--// DB_Acc2 테이블의 deliv_date필드를 buy_date를 이용하여 수정  @@@@@@@@@@@@@@@  @!!!!!!!!!  
UPDATE DB_Acc2 a 
SET a.계정코드 = (SELECT 계정코드 FROM DB_Acc2 b  
 WHERE  a.계정코드 b.계정코드 
   AND a.seq= b.seq) 
WHERE EXISTS (SELECT 'X' FROM DB_Acc2 b WHERE  a.cust_no= b.cust_no 
     AND a.seq= b.seq); 
------------------------------------------------------------------ 

--// DB_Acc2 테이블 수정  @@@@@@@@@@@@@@@  @!!!!!!!!!  
UPDATE "DB_Acc" A 
SET A.필드8 = 'GGG' 
WHERE EXISTS (SELECT 'X' FROM "DB_Acc" B WHERE A.ID= B.ID 
     AND B.필드8='FFF'); 
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2004.02.12(목) 작업 ■■■■■■■■■■■■■■■■ 
---> 07:20 ~ 23:00 

- 회계 분석
- 계정과목확인용 수정
매입할인(148) 판매장려금(929) 장기금융상품(198) 
AM수당(판)(871) 감가상각누계액(209) 

UPDATE "DB_Acc" A 
SET A.계정코드 = '209' 
WHERE A.계정코드 IS NULL 
AND A.필드7 = '감가상각누계액' 
==============================================================================================================

- 도시가스 설치(859-7810) -> 24,000원 
==============================================================================================================

- 코드Help 수정(부서명, VAT) 
==============================================================================================================

- 새창 뜨기(일반  window.open) 
var target = "/BizMgr/common/popup/popEnterpriseP.jsp?p_entr_nm_para="+p_entr_no_nm2+ 
"&p_CountRow_para="+f1.ds_entr_detail.CountRow;  // 새창 뜨기 

var result = window.open(target,"","width=460, height=485,scrollbars=yes,resizable=no,top=0,left=0"); 
alert("[TAMA] OnExit() :: [result]"+ result); 
==============================================================================================================

- 새창 뜨기(일반  ModalDialog) 
var target = "/BizMgr/common/popup/popEnterpriseP.jsp?p_entr_nm_para="+p_entr_no_nm2+ 
"&p_CountRow_para="+f1.ds_entr_detail.CountRow;  // 새창 뜨기 
var result = searchPopup2( target, '250', '550','500', '450'); 
------------------------------------------------------------------------------------------------------- 

/********************************** 
* 팝업창 띄우기(위, 왼쪽 추가) 
***********************************/ 
function searchPopup2( openFile, top, left, width, height )  
	var editForm = document.editForm; 
	var result = window.showModalDialog( openFile, null, "dialogTop:" + top + "px;dialogLeft:" + left + "px;dialogWidth:" 
	+ width + "px;dialogHeight:" + height + "px; edge:Sunken;" ); 
	return result; 
} 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.02.13(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 23:00 

- 회계 Test
- TEST(.56) DB 연결(Net8) --- 
IP: 210.123.133.56 I3SHOP iiishop/i3shop 
------------------------------------------------------------------------------------------------------------- 

- 원격 오라클 서버 접속 구성 방법(NET8) 
Network administrator --> Net8 Configuration Assistant   
1. 로컬네트웍 이름 구성(radio체크) --> 추가 --> 서버스 이름: I3SHOP --> TCP --> 
호스트 이름: 210.123.133.56 --> 네트웍 이름: I3SHOP 
2. tnsnames.ora 파일에 수동으로 추가  
 #---  통합 Test서버 TNS 연결 DB 환경( iiishop/i3shop)  ========================== 
I3SHOP = 
  (DESCRIPTION = 
    (ADDRESS_LIST = 
      (ADDRESS = (PROTOCOL = TCP)(HOST = 211.233.5.110)(PORT = 1521)) 
    ) 
    (CONNECT_DATA = 
      (SERVICE_NAME = I3SHOP) 
    ) 
  ) 
#--- ================================================================================================= 

- 터미널 서버 연결(Ztem) 
IP: 210.123.133.56 i3shop/dacosystem 
------------------------------------------------------------------------------------------------------------- 
cd /opt/WebSphere/AppServer/logs 
[i3shop@newint logs]$ tail -f Default_Server_stdout.log 
==============================================================================================================

- 대용량 DB호출 에러  
============> 1824   ==================> 정상 
AND B.ACCSLIP_DT >='20030101' 
AND B.ACCSLIP_DT <='20030107'  
------------------------------------------------------------------------------------------------------------- 
[메세지] 
Called AccMgrBean ==> ejbCreate() 

============> 2089   ==================> 에러 발생 
AND B.ACCSLIP_DT >='20030101' 
AND B.ACCSLIP_DT <='20030108'  

[메세지] 
Remote Method 호출 에러입니다. 
java.rmi.ServerError: Error occurred in server thread; nested exception is: 
        java.lang.OutOfMemoryError 
==============================================================================================================

- subquery 에러 
ORA-01427: single-row subquery returns more than one row 
subquery 에서 single row 가 돌아와야 하는데 그 결과로 돌아온 row 가 2개 이상일때 발생하는 에러입니다 

sub_query 결과가 여러개의 값을 return하기때문입니다.  
만약 여러개의 건이 결과라면 '=' 대신에 'IN'을 사용하셔야 됩니다. 
select u.upchname from projupch u, bidding t  
where u.upchcode IN (select company_no from bidding  
where notice_no=''1000000030'' group by company_no)  
==============================================================================================================

◇ 대표계정 =================== 
- 제출용으로 외부에 보여줄 때 대표계정으로 보여 줌 

@ 관리용 @ 제출용 
----------------- ----------------- 
 현금    현금과 등가물  
----------------- ----------------- 
     당좌예금     
-----------------    
     보통예금     
----------------- ----------------- 
==============================================================================================================

◇ 상대계정 =================== 
- VAT 코드 
01 ~ 10: 과세 11 ~ 20: 비과세 
21: 과세(매입) 11 ~ : 비과세(매입) 
-------------------------------------------------------- 

[회계전표 입력]에서 계정과목이 상품이고 VAT 코드가 01 ~ 10이면 외상매출금, 부가세 필드가 자동 추가됨 
[회계전표 입력]에서 계정과목이 상품이고 VAT 코드가 11 ~ 20이면 외상매출금 필드가 자동 추가됨 
==============================================================================================================

◇ 일계표 ====================== 
1. 유동자산이란 취득일로 부터 1년이내 현금화 할 수 있는 자산이구요 
유동자산의 카테고리(디렉토리) 아래에 하위개념으로 
당좌자산과 재고자산이 있습니다. 
당좌자산은 현금, 단기매매, 단기 증권, 단기채권,단기수금 등이 있구요 
재고자산은 상품, 반제품, 재공품, 원재료 등이 있습니다.  

2. 투자자산은 자본을 말하는 거고 
3. 유형자산은 자본금 
4. 무형자산은 자본잉여금, 이익잉여금, 자본조정 등이 되겠습니다.  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.02.14(토) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 13:00 ==> 흐림 

- 회계 Test
- 일계표 Test 
==============================================================================================================

- [주간업무 04_02 2째주] 
★ 금주 업무 실적
 회계관리  
- 자산 관리 프로그램 list 정리 
- 경영정보관리 프로그램 list 정리 
---------------------------------------------------------- 

★ 차주 업무 계획 
 회계관리  
- 회계 Data 테스트(회계전표관리)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.02.16(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:38 ~ 21:40 

- 회계 Test
- 월계표 Test 
--------------------------------------------------------------------------------------------------- 

- inline-view 
SELECT a.* 
FROM AAA a,  
(SELECT * FROM BBB ) b 
WHERE a.id = b.id 
AND a.id in (SELECT id FROM CCC ); 

위에서 FROM 절에 쓴 SELECT * FROM BBB가 inline-view가 되고 WHERE 절에 쓴 SELECT id FROM CCC는 sub-query가 됩니다.  
==============================================================================================================

- 현사장님 * 
새마을 금고 5.2% 비과세 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.02.17(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:30 

- 회계 Test
- 선급비용 
1. 선급비용이란 당해 결산기 또는 전기에 지출된 비용 중 그 비용에 대한 해당 기간이 경과하지 아니함으로 인해  
차기 이후의 비용으로 이연되는 부분을 말합니다. 즉, 계속적으로 역무의 제공을 받기로 하는 계약을 체결하고 비용을  
지출한 경우, 그 지출액에 상당하는 용역중에서 결산일에 이르기까지 아직 제공받지 아니한 용역에 해당하는 부분을 말합니다.  
예로 이자비용, 보험료, 선급임차료 등이 있습니다. 

선급비용은 이미 지출한 비용 중 결산시점까지 그 비용의 효과가 미치지 않은 것을 말한다.  
예를 들어 6월 1일에 12개월분 보험료 120,000원을 보험사에 지급한 경우 결산시점인 12월말일 현재의 보험료는  
6개월분인 60,000원만 해당하며, 나머지 60,000원은 선급보험료로서 선급비용이 되는 것이다. 
선급비용  60,000  /  보험료  60,000 

그리고 다음연도에는 나머지 60,000원이 당해연도 보험료에 해당하므로 다음과 같이 처리한다. 
보험료  60,000  /  선급비용  60,000 
==============================================================================================================

- 드래그, 오른쪽 클릭 금지 
<BODY oncontextmenu="return false" onselectstart="return false"  
ondragstart="return false" text=black vLink=purple aLink=red link=blue  
bgColor=white leftMargin=0 topMargin=0 marginheight="0" marginwidth="0"> 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.02.19(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:30 

- 회계 Test
- 합계잔액 시산표 
==============================================================================================================

- 쇼핑몰 clipse 세팅
\\210.123.133.39\c$\CVS_ROOT\CCDOM 
C:\eclipse\eclipse.exe -data C:\CCDOM 
==============================================================================================================

#---  쇼핑몰 Test서버 TNS 연결 DB 환경( iiishop/iiishop)  ==========================  
I3SHOPDB = 
  (DESCRIPTION = 
    (ADDRESS_LIST = 
      (ADDRESS = (PROTOCOL = TCP)(HOST = 210.123.133.51)(PORT = 1521)) 
    ) 
    (CONNECT_DATA = 
      (SERVICE_NAME = i3shopdb.testoracle) 
    ) 
  ) 
#--- ================================================================================================= 

- 기타(O) --> CVS저장소 탐색 --> 신규(N) -->  
위치 
호스트(H): 210.123.133.39 
저장소 경로(R): C:\CVS_ROOT 
인증 
사용자(U): bychan 
암호(P): wjd0wn   
----------------------------------------------------------------------------------------- 

C:\WINNT\system32\drivers\etc\hosts 
#127.0.0.1       localhost 
210.123.133.31 test.mart.cc 
210.123.133.52 tamario.i3shop.cc 
==============================================================================================================

◇ 실서버(.111) 소스 가져 오기 ====================== 
-- Enitiy 등록 방법 
\\211.233.5.111\i3shop\src\bean  파일 복사 
C:\CCDOM\Ccdom\CcdomBeans\com\i3shop\beans\BizStore  eclipse에서 붙여 넣기 

-- Bean 등록 방법 
\\211.233.5.111\i3shop\src\ejb  폴더 복사 
C:\CCDOM\Ccdom\CcdomEjb eclipse에서 붙여 넣기 

-- web 파일(.jsp) 등록 방법 
\\211.233.5.111\websphere\installedApps\BizStore.ear\BizStore.war  폴더 복사  
C:\CCDOM\Ccdom\CcdomWeb붙여 넣기 
==============================================================================================================

- 실제 웹 서버 --- 
\\211.233.5.111\i3shop i3shop/i3shop1115974 
==============================================================================================================

- 전입) 대구시 동구 신천4동 461-4 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.02.20(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 24:00 

- 쇼핑몰 수정
- 구매한정 수량 TABLE(상품별, 기간별)   
-- 구매 수량 TABLE 생성 
CREATE TABLE T_BuyCount ( 
	USER_ID VARCHAR2 (20) NOT NULL -- 회원ID 
	ITEM_CD CHAR (4) NOT NULL, -- 상품코드 
	COUNT NUMBER(3), -- 구매수량 
	BUY_DT CHAR (8) -- 구매일자  
 ) 
------------------------------------------------------------------------------------------------------------------------ 

-- 구매한정 수량 TABLE 생성 
CREATE TABLE T_BuyLimitCount ( 
	ITEM_CD CHAR (4) NOT NULL, -- 상품코드 
	COUNT NUMBER(3) -- 한정구매 수량 
)  
==============================================================================================================

- 구매한정 수량 TABLE(상품별, 기간별)  
장바구니에 담을 때, 바로구매하기:  한정 수량 확인 
/cart/cartGetP.jsp?p_cartshow=Y /order/rnf/checkRnFSes.jsp 
주문이 완전이 종료했을 때: 구매 수량 저장  
==============================================================================================================

- eclipse 에러 
/Ccdom/CcdomWeb/common/bz_property.jsp 파일에서 아래 내용 부분 삭제  
<jsp:useBean id="filedistlog" class="com.daco.util.FileDistLog" scope="application" /> 
==============================================================================================================

- 쇼핑몰 Test서버  
http://test.mart.cc/index.jsp test01/unit 
------------------------------------------------------------------------------------------------------------------------ 

- 쇼핑몰 Test DB 연결 
C:\orion_ccdom\config\data-sources.xml에서 
------------------------------------------------------------- 

<data-source  
        class="oracle.jdbc.xa.client.OracleXADataSource"  
        name="i3shopDataSource"  
        location="jdbc/i3shop_Oracle_DBPool"  
        username="iiishop"  
        password="iiishop"  
        url="jdbc:oracle:thin:@210.123.133.51:1521:I3SHOPDB"  
        inactivity-timeout="5"  
        wait-timeout="10"  
        max-connections="10"  
        min-connections="2"  
 >  
------------------------------------------------------------------------------------------------------------------------ 

 - 쇼핑몰 실 DB 연결 
C:\orion_ccdom\config\data-sources.xml에서 
 ------------------------------------------------------------- 
<data-source  
        class="oracle.jdbc.xa.client.OracleXADataSource"  
        name="i3shopDataSource"  
        location="jdbc/i3shop_Oracle_DBPool"  
        username="iiishop"  
        password="iiishop"  
        url="jdbc:oracle:thin:@211.233.5.110:1521:iiishop"  
        inactivity-timeout="5"  
        wait-timeout="10"  
        max-connections="10"  
        min-connections="2"  
 >   
==============================================================================================================

- [inputHash]{p_company_cd=01, p_point=0, p_store_cd=S065, p_use_cmoney=0, p_bv=0, p_cmoney_useyn=N,  
p_direct_cmoney=0, p_gift_yn=N, p_reseller_price=187000, p_merchant_cd=0001, p_category_cd=U02010101,  
p_direct_money=0, p_ship_cl_cd=01, p_bonus_item_cl=01, p_gift_no=0, p_gift_nm=0, p_cyberpv=0,  
p_sale_price=187000, p_item_nm=(K)남양임페리얼드림 3단계 800g*12개 분유,  
p_limit_sale_yn=Y, p_old_qty=0, p_sale_max_qty=2, p_qty=4, p_cyberbv=0, p_gift_seq_no=0,  
p_bank_pv=0, p_consumer_price=187000, p_pv=0, p_ar_way_cd=01, p_sale_min_qty=1, p_item_cd=00143392, p_limit_sale_qty=996} 

// p_qty : 수량  
// p_sale_max_qty : 판매최대수량 
// p_sale_min_qty : 판매최소수량 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.02.21(토) 작업 ■■■■■■■■■■■■■■■■ 
---> 08:20 ~ 18:30 

- 쇼핑몰 수정
1. 한정수량 초과 여부 확인(바로구매, 장바구니 전에서 체크) 
/cart/cartPut.jsp 에서 @@@@@@@@ 
------------------------------------------------------------------------------------------------------------------------ 

// 카트담기. PV가 있는 상품여부는 이곳에서 체크한다. 
resultHash = cart.addItemOnCart(inputHash); 
------------------------------------------------------------------------------------------------------------------------ 

/Ccdom/CcdomBeans/com/i3shop/beans/BizStore/CartBean.java 에서 @@@@@@@@ 
------------------------------------------------------------------------------------------------------------------------ 

public Hashtable addOnCart(Hashtable inputHash) throws Err { // 장바구니에 하나의 상품을 Append 

// 1회 최대 판매수량, 1회 최소 판매수량 검증 
//  retHash = checkSaleQty(inputHash);  ====================> 제거 
} 
==============================================================================================================

2. 한정수량 초과 여부 확인(장바구니 다음에서 체크) 
/order/rnf/checkRnFSes.jsp 에서 @@@@@@@@ 
------------------------------------------------------------------------------------------------------------------------ 

<%-- 필요한 비지니스로직을 선언--%> 
<jsp:include page="/cart/cartGet.jsp" flush="true" /> 

<% //변수선언/기본값셋팅/cartGet.jsp에서 넘긴값 셋팅 
Vector inputHash = (Vector)request.getAttribute("itemVec");  

// 분리된 정보를 카드에 담기 
try { 
//카트담기. PV가 있는 상품여부는 이곳에서 체크한다. 
resultHash = cart.checkSaleQtyArr(inputHash); 

//결과 분석 
errflag = (String)util.getData("errflag",resultHash); 
errstr  = (String)util.getData("errstr",resultHash); 

//카트에 담지 못하면 에러처리 
if (errflag.equals("true")) { 
util.log(MNAME,"상품을 장바구니에 담지 못했습니다.\n"+ errstr); 
util.setErr(request,"A3E","상품을 장바구니에 담지 못했습니다.\n <br>[오류:"+errstr+"]"); 
%> 
<script language="JavaScript"> 
alert("[TEST_checkRnFSes]"); 
alert("<%= errstr%>"); 
history.go(-1); 
</script> 
<% 
return; 
} else { 

//로그인 여부 확인 
if (!cart.getLogin()) { 
if(!util.isValidSession("MNO",request)) { 
%> 
<script language="javascript"> 
window.location.replace("/customer/loginfP.jsp?p_location=<%= p_url%>"); 
</script> 
<%   
return; 
} else { 
cart.setLogin(true); //로그인 결과를 장바구니에 셋팅  
} 
}//end if (로그인 여부) 

} //end if (장바구니에 담았는지 여부) 

} catch (Err err) { 
util.log(MNAME,err.getEXStr()); 
util.setErr(request,err.getCode(),err.getMsg()); %> 
<jsp:forward page="/err/errMsg.jsp" /> 
<% } catch (Exception e) { 
util.log(MNAME,"에러 발생 \n" + e.toString()); 
util.setErr(request,"123","시스템 에러입니다.\n관리자에게 문의 하세요"); %> 
<jsp:forward page="/err/errMsg.jsp" /> 
<% } %> 
------------------------------------------------------------------------------------------------------------------------ 

/Ccdom/CcdomBeans/com/i3shop/beans/BizStore/CartBean.java 에서 @@@@@@@@ 
------------------------------------------------------------------------------------------------------------------------ 

public Hashtable checkSaleQtyArr(Hashtable inputHash) throws Err {  // 장바구니에서 구매하기로 상품들의 주문 갯수가 
판매 가능한 갯수인지 확인 

/*================================================== 
입력값을 분리한다. 
==================================================*/ 
boolean _errflag = false; //인자값 분리에러 존재 여부 
String _errstr = "" ; //에러내용 
  
//점코드 : 디폴트(Web점) 
String p_merchant_cd = (String)inputHash.get("p_merchant_cd"); 
if(p_merchant_cd == null  p_merchant_cd.equals("")) { 
p_merchant_cd = "0001" ; 
} 
//등록자id 
String p_reg_id = (String)inputHash.get("p_reg_id"); 
if(p_reg_id == null  p_reg_id.equals("")) { 
_errflag = true; 
_errstr += " [p_reg_id] " ; 
} 
//등록자ip 
String p_reg_ip = (String)inputHash.get("p_reg_ip"); 
if(p_reg_ip == null  p_reg_ip.equals("")) { 
_errflag = true; 
_errstr += " [p_reg_ip] " ; 
} 
//TERMINAL_NO 
String p_terminal_no = (String)inputHash.get("p_terminal_no"); 
if(p_terminal_no == null  p_terminal_no.equals("")) { 
p_terminal_no = ""; 
} 
if(_errflag) {   
log(MNAME+".checkSaleQty()","["+getDate()+"]"+"checkSaleQty(). 판매가능여부 확인할때 에러 발생" + _errstr); 
throw new Err("A","2","G","["+getDate()+"]"+"시스템 에러입니다.\n관리자에게 문의하십시요."); 
} 

// 구매한정 수량 조회 
String SQL = " SELECT COUNT(*) " + 
 " FROM T_BuyLimitCount A, T_BuyCount B " + 
 " WHERE A. ITEM_CD = B.ITEM_CD " + 
 " AND A.ITEM_CD = ? " + 
 " AND A.USER_ID = ? " + 
  " AND A.QTY > B.SALE_MAX_QTY ; 
/*================================================*/ 
// DB 파라미터 설정 
Vector param = new Vector(); 

//주문결제정보 
Vector p_arVec = (Vector)inputHash.get("p_arVec"); 

for(int i = 0; i < p_arVec.size(); i++) { 
ParamType rowparam = new ParamType(); 
Hashtable rowHash = (Hashtable)p_arVec.elementAt(i); 

rowparam.put(1,p_company_cd,Code.DB_VARCHAR); 
rowparam.put(2,p_merchant_cd,Code.DB_VARCHAR);  

param.addElement(rowparam); 
} 

//데이터 호출 입력값을 저장한다. 
Hashtable _qryhash = new Hashtable(); 
_qryhash.put("SQL",SQL); 
_qryhash.put("param",param); 

/*==================================================*/ 
// 리턴 데이터를 저장한다. 
Hashtable retHash = null; 

try{ 
//결제정보 입력 
retHash = setMMData(_qryhash); 
} catch(Err err) { 
log(MNAME+".checkSaleQtyArr()","쿼리실행을 실패했습니다.\n" + SQL + "\n" + err.getEXStr()); 
throw err; 
} catch(Exception e2) { 
log(MNAME+".checkSaleQtyArr()","에러 발생.\n" + e2.toString()); 
throw new Err("A","2","G","["+getDate()+"]"+"시스템 에러입니다.\n관리자에게 문의하십시요.");   
} 

return retHash; 
}//End of checkSaleQtyArr()  
==============================================================================================================

-- 구매한정 수량 조회 
String CSQL = " SELECT COUNT(*) " + 
 " FROM T_BuyLimitCount A, T_BuyCount B " + 
 " WHERE A. ITEM_CD = B.ITEM_CD " + 
 " AND A.USER_ID = " + USER_ID= +"" + 
  " AND A.QTY > B.SALE_MAX_QTY ; 
 ------------------------------------------------------------------------------------------------------------------------ 

-- 구매 수량 저장  
String ISQL ="INSERT INTO T_BuyCount(USER_ID , " +  //등록자ID 
" ITEM_CD , " +  //상품코드  
" QTY , " +  //구매수량   
" BUY_DT) " +  //구매일자 
" VALUES ( ? , " +  //등록자ID 
" ? , " +  //상품코드 
" ? , " +  //구매수량 
" SYSDATE) " ;  //구매일자 
----------------------------------------------------------------------------------------------------------------------- 

-- 구매 수량 수정  
String USQL = " UPDATE T_BuyCount SET  QTY = ? , " +  //구매수량  
" BUY_DT = SYSDATE " +  //구매일자 
" WHERE USER_ID = ? " ;  //회사코드 
USQL += "  AND ITEM_CD  = ? " ;  //상품코드 
==============================================================================================================

-- 구매 수량 TABLE 생성 
CREATE TABLE T_BuyCount ( 
	---SEQ VARCHAR2 (20) NOT NULL -- SEQ 
	USER_ID VARCHAR2 (20) NOT NULL -- 회원ID 
	ITEM_CD CHAR (4) NOT NULL, -- 상품코드 
	QTY NUMBER(3), -- 구매수량 
	BUY_DT CHAR (8) -- 구매일자  
 ) 
------------------------------------------------------------------------------------------------------------------------ 

-- 구매한정 수량 TABLE 생성 
CREATE TABLE T_BuyLimitCount ( 
	ITEM_CD CHAR (4) NOT NULL, -- 상품코드 
	SALE_MAX_QTY NUMBER(3) -- 한정구매 수량 
)  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.02.22(일) 작업 ■■■■■■■■■■■■■■■■
---> 08:20 ~ 19:00 

- 쇼핑몰 수정
- Vector를 Hashtable로 수정 
------------------------------------------------------------------------------------------------------------------------ 

 <%-- 필요한 비지니스로직을 선언--%> 
<jsp:include page="/cart/cartGet.jsp" flush="true" /> 

<% //변수선언/기본값셋팅/cartGet.jsp에서 넘긴값 셋팅  
Vector inputVec = (Vector)request.getAttribute("itemVec");   //Hashtable로 받아야 됨 
System.out.println("[TAMA] :: [inputVec_00]"+ inputVec); 

try { 
if (inputVec!=null && inputVec.size()>0) { 

for (int i=0; i<inputVec.size(); ++i) { 
//상품정보/유형정보 분리 
inputHash = (Hashtable)inputVec.elementAt(i);   
} 
} 
} catch (Exception e) { 
util.log(MNAME,"에러 발생 ==> " + e.toString()); 
util.setErr(request,"123","시스템 에러입니다.<br>관리자에게 문의 하세요"); 
%> 
<jsp:forward page="/err/errMsg.jsp" /> 
<% 
} %> 
 
<% 
//분리된 정보를 카드에 담기 
try { 
//카트담기. PV가 있는 상품여부는 이곳에서 체크한다.   
resultHash = cart.checkSaleQtyArr(inputHash); 
} 
==============================================================================================================

// 상품정보를 분리  
// p_item_cd : 상품코드 
// p_qty : 수량  
------------------------------------------------------------------------------------------------------------------------ 
  
- 사운드 카드 진단 
1. 내컴퓨터 -> 하드웨어 -> 장치관리자-> 사운드, 오디오 및 게임 컨트롤러 
비이오 코덱/ 오디오 코덱 밑에 SoundMX I Digital Audio라는 사운드 카드가 정상적으로 작동 됨 
2. 제어판 -> 사운드 및 멀티미디어 -> 소리  
경고메세지/ chord.wav 눌러 보고 소리가 나면 정상 
==============================================================================================================

15:25 정전사고 
16:00 정전사고 --> 한전 설비 고장(053-350-2114) 
==============================================================================================================

210.123.133.56 서버(root/i3shop566414) 
2. 서버실행 
- cd /opt/WebSphere/AppServer/bin 
./adminserver.sh& 

3. 클라이언트 실행 
- cd /opt/WebSphere/AppServer/bin 
./adminclient.sh 
==============================================================================================================

// USER_ID (입력자:수기주문시에만 들어감) 
if (getSesValue("USERID",req)==null getSesValue("USERID",req).equals("")) { 
ordHash.put("p_user_id",""); 
} else { 
ordHash.put("p_user_id",getSesValue("USERID",req)); 
} 
//회원ID 
if (getSesValue("ID",req)==null getSesValue("ID",req).equals("")) { 
_errflag = true; 
_errstr += " [회원ID] " ; 
} else { 
ordHash.put("p_mem_id",getSesValue("ID",req)); 
} 
==============================================================================================================

// 변수선언/기본값셋팅/cartGet.jsp에서 넘긴값 셋팅  
//Vector inputHash = (Vector)request.getAttribute("itemVec");   //Hashtable로 받아야 됨 
//System.out.println("[TAMA] :: [inputHash_00]"+ inputHash); 

Hashtable inputHash =  cart.getCartItems(); //cartVec(벡터전체) 반환 
request.setAttribute("itemVec",itemVec); 
==============================================================================================================

[itemVec][{p_company_cd=01, p_point=0, p_store_cd=S065, p_use_cmoney=0, p_bv=0, p_cmoney_useyn=N, p_direct_cmoney=0,  
p_gift_yn=N, p_reseller_price=187000, p_merchant_cd=0001, p_category_cd=U02010101, p_direct_money=0, p_ship_cl_cd=01,  
p_bonus_item_cl=01, p_gift_no=0, p_gift_nm=0, p_cyberpv=0, p_sale_price=187000, p_item_nm=(K)남양임페리얼드림 3단계 800g*12개 분유,  
p_limit_sale_yn=Y, p_old_qty=0, p_sale_max_qty=2, p_qty=1, p_cyberbv=0, p_gift_seq_no=0, p_bank_pv=0, p_consumer_price=187000,  
p_pv=0, p_ar_way_cd=01, p_sale_min_qty=1, p_item_cd=00143392, p_limit_sale_qty=996}, {p_company_cd=01, p_point=0, p_store_cd=S065,  
p_use_cmoney=0, p_bv=0, p_cmoney_useyn=N, p_direct_cmoney=0, p_gift_yn=N, p_reseller_price=187000, p_merchant_cd=0001,  
p_category_cd=U02010101, p_direct_money=0, p_ship_cl_cd=01, p_bonus_item_cl=01, p_gift_no=0, p_gift_nm=0, p_cyberpv=0,  
p_sale_price=187000, p_item_nm=(K)남양 임페리얼드림4단계 800g*12 분유, p_limit_sale_yn=Y, p_old_qty=0, p_sale_max_qty=2,  
p_qty=2, p_cyberbv=0, p_gift_seq_no=0, p_bank_pv=0, p_consumer_price=187000, p_pv=0, p_ar_way_cd=01, p_sale_min_qty=1,  
p_item_cd=00143393, p_limit_sale_qty=999} 
==============================================================================================================
  
- MS PROJECT CD키 
KW77G-TBTQ2-3V7V6-9DWP2-98VDJ 
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2004.02.23(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 

- 쇼핑몰 수정
java.lang.IllegalStateException  
이 익셉션이 왜 일어나는지만 이해하면.. 쉽게 처리가 가능합니다. (물론 구조적으로 해결하기가 힘든 경우도 있지만..)  
저 익셉션은 forward나 redirect를 하기전에.. out.println() 또는 response.setHeader(..)와 같은 함수를 호출해서 발생합니다. 
즉 브라우져에 보낼 데이터를 버퍼에 쓴 이후로는 redirect나 forward를 할수 없다는 말입니다.  
발생한 jsp에서 위와 같은 사항이 없는지 살펴보시길..  
------------------------------------------------------------------------------------------------------------------------  

/usr/local/tomcat/work/Standalone/yphoo.com/_/Notice_jsp.java:48: cannot resolve symbol 
symbol  : class M_notice  
location: class org.apache.jsp.Notice_jsp 
      M_notice Notice = null; 

M_notice 라는 class 화일을 인식을 못하고 있습니다.  
import 설정을 잘 해보시길...  
------------------------------------------------------------------------------------------------------------------------  

java.lang.ClassCastException 
beans 화일이나 서블릿 화일을 재 컴파일 했을경우 웹서버를 재시동해주셔야 합니다.  
==============================================================================================================

- Bean 수정 
네비게이터 ==> /Ccdom/bin/com/i3shop/beans/BizStore 해당 파일 복사 
패키지 탐색기 ==> /Ccdom/CcdomWeb/WEB-INF/classes/com/i3shop/beans/BizStore 붙여 넣기 
==============================================================================================================
  
getSesValue("ID",req)  
util.setSesValue("ID",util.getData("MEM_ID",memHash).toLowerCase(),request); 

// 등록자id 
String p_reg_id = (String)inputHash.get("p_reg_id"); 
if(p_reg_id == null  p_reg_id.equals("")) { 
	_errflag = true; 
	_errstr += " [p_reg_id] " ; 
} 

param.put(1, (String)sessHash.get("USER_ID"), Code.DB_VARCHAR); 

/** 
 * 가발주 정보를 수정한다. 
 *  
 * @param sessHash 사용자 hash 
 * @param inputHash 수정 정보 
 *      <pre> 
 *      Key              설명          필수여부 
 *      --------------------------------------- 
 *      p_company_cd     회사코드         Y 
 *      p_buyer_id       발주자ID         Y 
 *      p_seq_no         가발주일련번호   Y 
 *      p_po_qty         발주수량         Y 
 *      </pre> 
 * @ejb.interface-method 
 */ 
public void updateTempPoDtl(Hashtable sessHash, Hashtable inputHash) throws Err { 
TempPoDtlDAO dao = new TempPoDtlDAO(MNAME); 

String p_po_qty = (String)inputHash.get("p_po_qty"); 

//--- 입력값 검사 --- 
TempPoDtlDAO.checkDetailInput(inputHash); 
if( p_po_qty == null  p_po_qty.trim().equals("") ) 
throw new Err("9", "1", "E", "발주수량[p_po_qty]는 필수입력항목입니다."); 

//--- update --- 
inputHash.put("p_up_id", sessHash.get("USER_ID")); 
inputHash.put("p_up_ip", sessHash.get("USER_IP")); 

dao.update(inputHash); 
} 
==============================================================================================================

iBuyingMgr.updateTempPoDtl( sessHash, inputHash ); 
tempPoMerchantEditS.jsp 

addReturnOrderDtl 
addReturnItemReq 

// 구매한정 수량 조회 
String SQL = " SELECT COUNT(*) " + 
 "FROM T_BuyLimitCount A, T_BuyCount B, T_BuyTimes C" + 
 "WHERE A. ITEM_CD = B.ITEM_CD " + 
  " AND A.TIMES_CD = C.TIMES_CD " + 
 " AND A.ITEM_CD = ? " + 
 " AND A.USER_ID = ? " + 
 " AND A.TIMES_CD = ? " + 
 " AND A.QTY  >  B.SALE_MAX_QTY "; 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.02.24(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 23:00 

- 쇼핑몰 수정
-- 실제 구매 수량 정보 TABLE 생성 
CREATE TABLE T_BuyCount (  
	USER_ID VARCHAR2 (20) NOT NULL, -- 회원ID 
	TIMES_CD CHAR (6) NOT NULL, -- 회차순서 
	ITEM_CD CHAR (8) NOT NULL, -- 상품코드 
	QTY NUMBER(3) DEFAULT '0',  -- 구매수량 
	BUY_DT DATE            DEFAULT SYSDATE -- 구매일자  
) 
------------------------------------------------------------------------------------------------------------------------ 

-- 구매한정 수량 TABLE 생성 
CREATE TABLE T_BuyLimitCount ( 
	ITEM_CD CHAR (8) NOT NULL, -- 상품코드 
	TIMES_CD CHAR (6) NOT NULL, -- 회차순서 
	SALE_MAX_QTY NUMBER DEFAULT '0',  -- 한정구매 수량 
	COMPANY_CD   CHAR (4), -- 회사코드 
	STORE_CD   CHAR (4), -- 매장코드 
	CATEGORY_CD   CHAR (9), -- 카테고리 코드 
	  MERCHANT_CD   CHAR (4), -- 점코드 
	USE_YN   CHAR (1), -- 사용여부 
	REG_DT DATE            DEFAULT SYSDATE, -- 등록일자  
	PRIMARY KEY ( ITEM_CD, TIMES_CD ) 
) 
------------------------------------------------------------------------------------------------------------------------ 

-- 기간별 회차 정보 TABLE 생성 
CREATE TABLE T_BuyTimes ( 
	TIMES_CD CHAR (6) NOT NULL, -- 회차순서 
	ST_DT CHAR (8),   -- 시작일자 
	ED_DT CHAR (8),   -- 종료일자   
	REG_DT DATE            DEFAULT SYSDATE, -- 등록일자  
	PRIMARY KEY ( TIMES_CD ) 
) 
==============================================================================================================

SELECT * FROM T_BuyCount	 -- 실제 구매 수량 정보 
SELECT * FROM T_BuyLimitCount	-- 구매한정 수량 정보 
SELECT * FROM T_BuyTimes	-- 기간별 회차 정보 
==============================================================================================================

-- 구매한정 수량   
INSERT INTO T_BuyLimitCount (ITEM_CD, 
TIMES_CD, 
SALE_MAX_QTY,  
REG_DT) 
VALUES ('00143395', 
'200401', 
'2',   
SYSDATE) 
------------------------------------------------------------------------------------------------------------------------ 

-- 기간별 회차 정보 
INSERT INTO T_BuyTimes (TIMES_CD, 
ST_DT, 
ED_DT,  
REG_DT) 
VALUES (  '200401', 
'20040223', 
'20040306',   
SYSDATE) 
==============================================================================================================

-- 구매한정 수량 정보 필드 수정 
ALTER TABLE T_BuyCount modify ( 
	ITEM_CD    CHAR (8) 
); 
==============================================================================================================

- 벡터 --> HashTable   @@@@@@@@@@@@@ 
 irowHash = (Hashtable)inputVec.elementAt(i); // 벡터 --> HashTable 
------------------------------------------------------------------------------------------------------------------------ 


 HashTable --> 벡터  @@@@@@@@@@@@@ 
<%  
//변수선언/기본값셋팅/cartGet.jsp에서 넘긴값 셋팅  
Vector inputVec = (Vector)request.getAttribute("itemVec");   //Hashtable로 받아야 됨 
  
try { 
if (inputVec!=null && inputVec.size()>0) { 
for (int i=0; i<inputVec.size(); ++i) {  
inputHash = (Hashtable)inputVec.elementAt(i); //상품정보/유형정보 분리   
} 
} 
}  

try { 
//카트담기. PV가 있는 상품여부는 이곳에서 체크한다.   
boolean resultHash = cart.checkSaleQtyArr(sessHash, inputVec); // Vector 넘김 
%> 
==============================================================================================================

SELECT  COUNT(*) AS CNT 
FROM  T_BuyCount A, T_BuyLimitCount B, T_BuyTimes C   
WHERE A.ITEM_CD = B.ITEM_CD 
  AND A.TIMES_CD = B.TIMES_CD 
  AND A.ITEM_CD = B.ITEM_CD 
  AND A.TIMES_CD = C.TIMES_CD 
  AND A.TIMES_CD = '200401' 
  AND A.ITEM_CD = '00143395' 
  AND A.USER_ID = '9221' 
  AND B.SALE_MAX_QTY < 2 
==============================================================================================================

.111 ===> (Bean, EJB 존재)        <-----------  .52 에서 테스트 후 올림 
.112 
.113 

- 결재 시스템 
tgcorp   ---> jar로 존재 
nice ---> .class로 존재 
==============================================================================================================

- 주문 갯수  DB에 저장 한다.(구매한정 수량 설정을 위해) 
/order/orderPut_3.jsp 에서 @@@@@@@@ 
------------------------------------------------------------ 

<% 
Hashtable inputHash = null; 
Vector itemVec = null;  

//장바구니 조회 
itemVec = cart.getCartItems(); //cartVec(벡터전체) 반환 
request.setAttribute("itemVec",itemVec); 

//변수선언/기본값셋팅/cartGet.jsp에서 넘긴값 셋팅  
Vector inputVec = (Vector)request.getAttribute("itemVec");   //Hashtable로 받아야 됨 

Hashtable sessHash = new Hashtable(); 
sessHash.put("USER_ID",  (String)util.getSesValue("MNO", request));   // 회원 번호로 user id   
   
   
//분리된 정보를 카드에 담기 
try { 
// 주문 수량 저장 
boolean resultHash = cart.setSaleQtyArr(sessHash, inputVec); // Vector 넘김 
     
} catch (Err err) { 
util.log(MNAME,err.getEXStr()); 
util.setErr(request,err.getCode(),err.getMsg()); %> 
<jsp:forward page="/err/errMsg.jsp" /> 
<% } catch (Exception e) { 
util.log(MNAME,"에러 발생 \n" + e.toString()); 
util.setErr(request,"123","시스템 에러입니다.\n관리자에게 문의 하세요"); %> 
<jsp:forward page="/err/errMsg.jsp" /> 
<% } %> 
==============================================================================================================

/order/cartListDispS.jsp 에서 @@@@@@@@ 
------------------------------------------------------------ 

Hashtable itemHash = null; 

//가격제한/배송비 확인 
itemListVec=cart.getCartItems(); 

try { 
//총합계를 계산 
int sum_ship_price = cart.getShipPrice(); 
int pv = 0; 
int bv = 0; 
int point = 0; 
if (itemListVec!=null && itemListVec.size()>0) { 
for (int i=0; i<itemListVec.size(); ++i) { 

//상품정보,유형정보 분리 
itemHash = (Hashtable)itemListVec.elementAt(i); 
itemTypeVec = (Vector)itemHash.get("p_itemTypeVec"); //장바구니에 담긴 유형정보 

//판매가,수량을 읽는다 
item_cd = (String)util.getData("p_item_cd", itemHash); 
} 
} 
} 
==============================================================================================================

- int 변경 
qty_count = parseInt(getData("PO_CNT",retHash)); 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.02.25(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:35 ~ 23:00 

- 쇼핑몰 수정
- DB 커넥트 오류(set: INSERT, UPDATE, DELETE get: SELECT) 
retHash = setMMData(_iqryHash);     
{mcnt=2, yn=N, txcnt=2}  
==============================================================================================================

- 한정판매여부,  한정상품잔여수량 
E.LIMIT_SALE_YN,  E.LIMIT_SALE_QTY 
==============================================================================================================
   
- 한정구매수량 수정 파일 
/order/rnf/checkRnFSes.jsp 
/cart/cartGetP.jsp 
/order/orderPut_3.jsp 

/Ccdom/CcdomBeans/com/i3shop/beans/BizStore/CartBean.java  
==============================================================================================================

NVL Function   
　● NULL 은 NVL Function을 이용하여 다른 값으로 대치 가능. 
　● 사용가능한 datatype은 날짜, 문자 및 숫자형. 
　● 다음과 같이 쓰여져야 한다. 
         ♬NVL(start_date, '01-JAN-95') 
         ♬NVL(title, 'NO Title Yet') 
         ♬NVL(salary, 100) 

NVL(expr1, expr2) 
  
▶ expr1 : 널값을 포함할 수 있는 값이거나 표현식. 
▶ expr2 : 널값을 전환시 사용할 값.   
Note : 여러분은 어떠한 datatype에도 NVL 함수를사용할 수 있으며 되돌려 받는 값은 항상 expr1의 datatype과 동일해야 한다.   

SELECT  LAST_NAME, TITLE, salary*NVL(commission_pct,0)/100 COMM 
FROM    s_emp;  
==============================================================================================================

/cart/cartGetP.jsp 에서 @@@@@@@@ 
------------------------------------------------------------ 
<% 

String errflag = "false"; 
String errstr = ""; 
Hashtable inputHash = null; 
//Hashtable resultHash = null;   
Vector itemVec = null;  
  
//장바구니 조회 
itemVec = cart.getCartItems(); //cartVec(벡터전체) 반환 
request.setAttribute("itemVec",itemVec); 

//변수선언/기본값셋팅/cartGet.jsp에서 넘긴값 셋팅  
Vector inputVec = (Vector)request.getAttribute("itemVec");   //Hashtable로 받아야 됨 
  
try { 
if (inputVec!=null && inputVec.size()>0) { 

for (int i=0; i<inputVec.size(); ++i) { 
//상품정보/유형정보 분리 
inputHash = (Hashtable)inputVec.elementAt(i);   
} 
} 
} catch (Exception e) { 
util.log(MNAME,"에러 발생 ==> " + e.toString()); 
util.setErr(request,"123","시스템 에러입니다.<br>관리자에게 문의 하세요"); 
%> 
<jsp:forward page="/err/errMsg.jsp" /> 
<% 
} %> 

<% 

Hashtable sessHash = new Hashtable(); 
//sessHash.put("USER_ID", util.getSession("p_user_id",request)); 
sessHash.put("USER_ID",  (String)util.getSesValue("MNO", request));   // 회원 번호로 user id 

//회원번호 
String p_mno = (String)util.getSesValue("MNO",request); 

//String strMemgbn = (String)util.getSesValue("MEMGBN", request); 
//util.getSession("p_reseller_ord_cl",request); 
 System.out.println("[test-p_mno]"+ p_mno); 
 System.out.println("[test-sessHash]"+ sessHash);  
   

//분리된 정보를 카드에 담기 
try { 
//카트담기. PV가 있는 상품여부는 이곳에서 체크한다. 
//resultHash = cart.checkSaleQtyArr(inputHash); 
//resultHash = cart.checkSaleQtyArr(inputVec); 
//boolean resultHash = cart.checkSaleQtyArr(sessHash, inputHash); // inputHash 넘김 
boolean resultHash = cart.getSaleQtyArr(sessHash, inputVec); // Vector 넘김 
  
  
if (resultHash == false) {  // 한계 수량 데이타를 추가 불가능 하면 
util.log(MNAME,"한계 수량으로 인해 상품을 구매하지 못했습니다.\n"+ errstr); 
util.setErr(request,"A3E","한계 수량으로 인해 상품을 구매하지 못했습니다.\n <br>[오류:"+errstr+"]"); 
%> 
<script language="JavaScript"> 
//alert("[TEST_checkRnFSes]"); 
alert("한계 수량으로 인해 상품을 구매하지 못했습니다."); 
history.go(-1); 
</script> 
<% 
return; 
} else { 

//로그인 여부 확인 
if (!cart.getLogin()) { 
if(!util.isValidSession("MNO",request)) {   
return; 
} else { 
cart.setLogin(true); //로그인 결과를 장바구니에 셋팅  
} 
}//end if (로그인 여부) 

} //end if (장바구니에 담았는지 여부) 

} catch (Err err) { 
util.log(MNAME,err.getEXStr()); 
util.setErr(request,err.getCode(),err.getMsg()); %> 
<jsp:forward page="/err/errMsg.jsp" /> 
<% } catch (Exception e) { 
util.log(MNAME,"에러 발생 \n" + e.toString()); 
util.setErr(request,"123","시스템 에러입니다.\n관리자에게 문의 하세요"); %> 
<jsp:forward page="/err/errMsg.jsp" /> 
<% } %>  
==============================================================================================================

- 구매 가능 수량 조회 
String SQL =  
" SELECT  SUM(DECODE(AA.SUM_1, NULL, 0, AA.SUM_1 - BB.SUM_1)) POS_CNT " + 
"  FROM ( SELECT SUM(DECODE(A.SALE_MAX_QTY,NULL,0,A.SALE_MAX_QTY)) AS SUM_1 " + 
"  FROM  T_BuyLimitCount A, T_BuyTimes B, T_BuyTimes C " + 
" WHERE A.TIMES_CD = B.TIMES_CD " + 
"  AND A.TIMES_CD = C.TIMES_CD " + 
"  AND C.ST_DT <= SYSDATE " +  
"  AND C.ED_DT >= SYSDATE " +  
"  AND A.ITEM_CD = ? ) AA,  " +   
"    ( SELECT SUM(DECODE(A.QTY,NULL,0, A.QTY)) AS SUM_1 " + 
"  FROM  T_BuyCount A, T_BuyTimes C " + 
" WHERE A.TIMES_CD = C.TIMES_CD " + 
"  AND C.ST_DT <= SYSDATE " +  
"  AND C.ED_DT >= SYSDATE " +  
"  AND A.ITEM_CD = ? " + 
"  AND A.USER_ID = ? " + 
" GROUP BY A.TIMES_CD, A.ITEM_CD, A.USER_ID ) BB " ; 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.02.26(목) 작업 ■■■■■■■■■■■■■■■■ 
---> 07:35 ~ 23:00 

- 쇼핑몰 수정
- Hashtable sessHash(회원번호, 상품코드, 수량, 한계수량 여부) 
Hashtable sessHash = new Hashtable();  
sessHash.put("MNO",  (String)util.getSesValue("MNO", request));   // 회원번호 
// sessHash.put("MNO",  (String)util.getSesValue("MNO", request));   // 수량 

 - Hashtable sessHash( 상품코드, 한계수량, 구매한 수량, 구매가능 수량) 
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■