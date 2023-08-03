

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2004.04) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2004.04.01(목) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 06:40 ~ 23:00 
  
- 네트웍 ID/PWD 설정
\\210.123.133.39\f$(문서 서버) administrator/i3shop390321 
\\210.123.133.51(오라클 Test서버) (리눅스)root/i3shop511092 
\\210.123.133.52(쇼핑몰 Test서버) i3shop/i3shop520321 ========> 사용 안 함 
\\210.123.133.56(통합 Test서버)   i3shop/dacosystem ========> 사용 안 함 
\\211.233.5.100(OZ 레포트)         administrator/ozoz100# 
\\211.233.5.102(Nmail 서버) administrator/i3shop1020321 ========> 틀림 
\\211.233.5.103(공제조합/Mail 서버) administrator/i3shop1030321  
\\211.233.5.104(i3.1004.cc서버) administrator/i3shop1040321  
\\211.233.5.107((MS-SQL DB서버) i3shop/i3shop1070321 sa/ckrladl(차김이) MSDB-SERVER 
\\211.233.5.108(통합 실서버) i3shop/i3shop1080506 --> su/i3shop1089121 http://int.i3shop.com(admin/bukwin2k) 

\\211.233.5.111(쇼핑몰 실서버_1) i3shop/iiishop1110506 (삼바)i3shop/iiishop9125 --> su/iiishop1119563 
\\211.233.5.112(쇼핑몰 실서버_2) i3shop/iiishop1120506 (삼바)i3shop/iiishop9125 --> su/iiishop1129563 
\\211.233.5.113(쇼핑몰 실서버_3) i3shop/iiishop1130506 (삼바)i3shop/iiishop9125 --> su/iiishop1139563 
\\211.233.5.114(쇼핑몰 실서버_4) i3shop/i3shop1140506 --> su/i3shop1149121 
\\211.233.5.115(쇼핑몰 실서버_5) i3shop/i3shop1159121 --> su/i3shop1159121 
\\211.233.5.116(쇼핑몰 실서버_6) i3shop/i3shop1160506 --> su/i3shop1169121 
\\211.233.5.117(쇼핑몰 실서버_7) i3shop/i3shop1170506 --> su/i3shop1179121 
\\211.233.5.110(실 DB서버) oracle/i3shop1105974 --> su/ekzhtltmxpa(다코시스템) 
\\210.123.133.121(MS-SQL DB서버) administrator/i3shop649563 sa/project 
\\210.123.133.39(MS-SQL 백업 DB서버) administrator/i3shop390321 sa/ckrladl(차김이) 
\\210.123.133.123\i3shop(CVS 서버) administrator/i3shop 
------------------------------------------------------------------------------------------------------  

\\210.123.133.23(4층 Print) administrator/i3shop   ===> 앱손(EPSON EPL-6200L) 
\\Jjung(4층 디자이너 Print) administrator/i3shop   ===> HP(deskjet 920C) 
\\210.123.133.148(3층 김진혁 대리 Print) 진태만/tama12 
\\210.123.133.185(3층 노은주 주임 Print) 노은주/9035 
==============================================================================================================

- i3shop TAMA 개인컴 네트웍(IP 주소) --------- 
IP:    210.123.133.31 
S.M: 255.255.255.0 G.W: 210.123.133.1 
DNS: 211.233.5.93 DNS2: 168.126.63.1 
==============================================================================================================

- 협력업체
쇼핑몰 엘지세화(주) B0000520/2431 
쇼핑몰 김정배[(주)모션위즈] B0087207/87207 
쇼핑몰 서진석[프라이스데이] B0000602/pr55036 
쇼핑몰 김관수[(주)씨앤씨클럽] B0000404/4926 
임영택[Ace inc] B0000286/4166 
문극현[유한킴벌리] 31666/1666 
김창근[SK(주)] B0000587/4762 
김종문[대백유통] B0000046/4888 
물류 김한연[중외휴먼택] B0000511/3532 
마트 김관수[(주)씨앤씨클럽] B0000404/4926  
==============================================================================================================

디버깅 --> 터미널 서버 연결(Ztem) 
[i3shop@iiishop_int i3shop]$  cd /opt/WebSphere/AppServer/logs 
[i3shop@iiishop_int logs]$ tail -f Default_Server_stdout.log 
==============================================================================================================

- 대금정산 수정
- 실무 담당자 테스트 
- 계좌은행CD 없어서 세금계산서 관리에 안 보임(거래처관리에서 계좌정보 등록 요망) 
==============================================================================================================

- 매입구분(물류/마트)  마감구분이 반품이면  
/BizMgr/DeliveryMgr/StoreIn/storeinRiStatP.jsp?  
/BizMgr/SaleMgr/WebOrderMgr/returnItemOrderStatP.jsp 
==============================================================================================================

- 반품 주문번호 
/BizMgr/SaleMgr/WebOrderMgr/returnItemOrderStatP.jsp 
0100012004030800893 
--------------------------------------------------------------- 

- 물류 L&B   2004.1.1 ~ 1.31   5건   ======> 
거래처 등록을 할 때 은행계좌번호, 은행코드를 등록 안함 
==============================================================================================================

- OZ Script 수정  
global double gongup_dtl; // 공급가액  
global double total_dtl; // 합계금액 
global double tax_dtl; // 부가세 
------------------------------------------------------------------------------------------------------ ------------ 
  
::total_dtl=::total_dtl+#TOTAL_AMT#; // 합계금액 
::gongup_dtl=::gongup_dtl+#BUYING_AMT#; // 공급가액 
::tax_dtl=::tax_dtl+#BUYING_VAT#; // 부가세  
==============================================================================================================

- 업체명: 동일통상  00023 
입접업체 관리 아이디: B0000023 
패스워드: 0001 
입니다. 이건 3/16부터 3/31일까지 조회했거든요. 
금액이 서로 다릅니다. 확인바랍니다.  
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2004.04.02(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 00:30 

- 대금정산 수정
- 실무 담당자 테스트 
- 물류(정상, 반품) 확인 
- 거래서 송금관리(일일정산) 추가 
out.println("<br>[smlctg.jsp] :: [p_store_cd_1]"+ p_store_cd);  
---------------------------------------------------------------------------------------------------------------- 

--  정산명 조회 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 
SELECT A.ENTR_NO, A.ENTR_NM, A.SETTLE_TP_CD, 
   (SELECT B.CODE_NM FROM T_BASECODE B 
WHERE B.GROUP_ID ='G123'AND B.CODE = A.SETTLE_TP_CD) SETTLE_TP_NM 
FROM T_ENTERPRISE A 
WHERE A.COMPANY_CD = '01'   
 AND A.ENTR_NM LIKE '체육%'  
--================================================================================================================

- 음수값으로 UPDATE 
UPDATE T_MAGAM_MEIP SET QTY = QTY * -1 
WHERE COMPANY_CD ='01' 
  AND MERCHANT_CD ='9001' -- 점구분(0002:마트 9001:물류) 
  AND MAGAM_GUBUN ='02' --마감구분(01:정상 02:반품) 
  AND MEIP_GUBUN='02' --매입구분(01:쇼핑몰판매 02:입고(마트/물류) 03:수수료상품판매) 
==============================================================================================================

- TR 컴포넌트(Dataset) 
. tr component의 keyvalue에서 다음과 같이 tr용 서비스와 저장하고자 하는 dataset을 지정하도록 되어 있습니다.  
<param name="KeyValue" value="test_tr(I:input1=tbds_1)">  
이렇게 하게 되면 tbds_1이라는 dataset의 column정보와 test_tr이라는 tr용 서비스의 instance변수에서  
input1으로 지정된 변수 리스트의 값들 중 변수명 같은 것끼리 값을 매치시켜 넣어주게 됩니다.  
==============================================================================================================

2. 메뉴얼에서 확인하시면 아시겠지만 parameters에는 입력값을 넘기도록 되어 있습니다. 
┃지금 토인비를 사용해서 개발중인 초보 프로그래머입니다.  
┃TR을 사용하고 있는데 궁금한 것이 많군요.  
┃일단 그 궁금한 것들을 질문하면...  
┃  
┃1. 트랜젝션에서 삽입이나 수정 작업을 하게되는데  
┃ TR은 어떻게 데이터셋을 받아서 각 element 에 값을  
┃ 배정하나요?  
┃ 즉, SOB의 sql문에서 입력되는 값과 dataset의 컬럼들을  
┃ 어떻게 매칭시켜주느냐 하는 것입니다.  
┃  
┃2. TR에서 parameter를 사용해서 입력값을 대신할 때  
┃ 상수가 아닌 변수를 넣으려면 어떻게 해야하나요?  
┃ 예를 들면 "val1=tiger" 이런 것 대신에  
┃ tiger라는 문자열이 아닌 point라는 변수를 넣어주려  
┃ 면 말이죠.   
 ============================================================================================================== 
 
- [EJB, Bean 등록 방법]  ==========> 통합(i3shop)  
C:\i3shop\Int\BizMgrBean\com\i3shop\dao\BizMgr 
OrderDAO.java OrderDtlDAO.java 파일 수정(복사) 

-- Bean 등록 방법 
eclipse에서 내보내기 -> jar 파일 
로컬 PC C:\i3shop\intLib에 내보냄 
로컬 PC C:\orion2\lib에 내보냄 
BizMgr.jar 생성(복사) 
--------------------------------------------------------------------------------------------------------------- 

\\210.123.133.56\i3shop\lib 에 BizMgr.jar 파일 덮어 쓰기 
\\211.233.5.108\i3shop\src\bean\BizMgrDAO\com\i3shop\dao\BizMgr 
OrderDAO.java OrderDtlDAO.java 파일 덮어 쓰기 
\\211.233.5.108\websphere\lib\app에 BizMgr.jar 파일 덮어 쓰기  
.108서버 Websphere 종료 후 재시작  
==============================================================================================================

- EJB 등록 방법 
210.123.133.56 에서 @@@@@@@@@@@  ==> 현재 여기서 ItemMgr.jar 파일을 만든 후 211.233.5.108에 붙여 넣음 
--------------------------------------------------------------------------------------------------------------- 

1. C:\i3shop\Int\IntEjb\ItemMgr\com\i3shop\ejb\BizMgr\ItemMgrBean.java 수정  

2. \\210.123.133.56\i3shop\src\ejb\ItemMgrEJB 로컬에서 아래 3개 파일을 복사하여 붙여 넣기함 
ItemMgr.java ItemMgrBean.java ItemMgrHome.java 

3. 터미널 서버 연결(Ztem) 
IP: 210.123.133.56 i3shop/dacosystem 

4. 컴파일 하기 
[i3shop@newint i3shop]$  su 
[i3shop@newint i3shop]$  i3shop566414 
[i3shop@newint i3shop]# cd src/ejb/ItemMgr 
[i3shop@newint ItemMgr]$ ./build.sh ItemMgr 
.jar 파일 생성됨(---> \\210.123.133.56\i3shop\component\ejb\ItemMgr.jar 파일로 만들어 짐) 
\\211.233.5.108\websphere\installedApps\i3shop.ear 파일(ItemMgr.jar) 붙여 넣기 

5. .108서버 Websphere 종료 후 재시작 

6. 디버깅 --> 터미널 서버 연결(Ztem) 
[i3shop@newint i3shop i3shop]$  cd /opt/WebSphere/AppServer/logs 
[i3shop@newint i3shop logs]$ tail -f Default_Server_stdout.log 
==============================================================================================================
   
- [EJB, Bean 등록 방법]  ==========> 쇼핑몰(CCDOM)  
local 에서 EJB, Bean 생성  ======> 
C:\CCDOM\Ccdom\bin\com\i3shop\beans\BizStore 
CartBean.class 
C:\CCDOM\Ccdom\CcdomWeb 에서 JSP파일 수정 
---------------------------------------------------------------------------------------------------------------

- 테스트 서버(.52) --- 
\\210.123.133.52\i3shop   @@@@@  i3shop/i3shop520321(su/i3shop526414)  
(Bean: C:\CCDOM\Ccdom\CcdomBeans\com\i3shop\beans\BizStore 에서 CartBean.java 파일 복사 -->  
\\210.123.133.52\i3shop\src\bean 에 붙여 넣기) 

- 터미널 서버 연결(Ztem)==> IP: 211.233.5.52 
[i3shop@newint i3shop]$  su 
[i3shop@newint i3shop]$  i3shop526414 
[root@newint src]# cd src/bean 
[root@inewint bean]#  ./build.sh CartBean 
\\210.123.133.52\websphere\installedApps\BizStore.ear\BizStore.war\WEB-INF\classes\com\i3shop\beans\BizStore  
에 CartBean.class 자동 생성 

- 실제 웹 서버(.111) --- 
\\211.233.5.111\i3shop @@@@@   i3shop/i3shop1115974 (su/i3shop1116414)  
(Bean:  C:\CCDOM\Ccdom\CcdomBeans\com\i3shop\beans\BizStore 에서 CartBean.java 파일 복사 --> 
\\210.123.133.111\i3shop\src\bean 에 붙여 넣기) 

터미널 서버 연결(Ztem)==> IP: 211.233.5.111 
[i3shop@iiishop_ccdom1 i3shop]$  su 
[i3shop@iiishop_ccdom1 i3shop]$  i3shop1116414 
[root@iiishop_ccdom1 src]# cd src/bean 
[root@iiishop_ccdom1 bean]#  ./build.sh CartBean 
\\210.123.133.111\websphere\installedApps\BizStore.ear\BizStore.war\WEB-INF\classes\com\i3shop\beans\BizStore  
에 CartBean.class 자동 생성 

- 실제 웹 서버(.112) --- 
\\210.123.133.111 디버깅 파일(CartBean.class)을 아래 폴더에 붙여 넣기 
\\210.123.133.112\websphere\installedApps\BizStore.ear\BizStore.war\WEB-INF\classes\com\i3shop\beans\BizStore  

- 실제 웹 서버(.113) --- 
\\210.123.133.111 디버깅 파일(CartBean.class)을 아래 폴더에 붙여 넣기 
\\210.123.133.113\websphere\installedApps\BizStore.ear\BizStore.war\WEB-INF\classes\com\i3shop\beans\BizStore 
==============================================================================================================

- Bean 파일 수정 
네비게이터 ==> /Ccdom/bin/com/i3shop/beans/BizStore/CartBean.class 파일 복사 
(C:\CCDOM\bin\CartBean.class) 
패키지 탐색기 ==> /Ccdom/CcdomWeb/WEB-INF/classes/com/i3shop/beans/BizStore 붙여 넣기 
(C:\CCDOM\Ccdom\CcdomWeb\WEB-INF\classes\com\i3shop\beans\BizStore) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.04.03(토) 작업 ■■■■■■■■■■■■■■■■
---> 06:40 ~ 15:00 

- 대금정산 수정
- 거래처 송금 관리(일일정산) 추가 
- 계좌정보 수정 
송금계좌여부(REMIT_ACCOUNT_YN) 추가
out.println("[storeinP.jsp] :: [p_meip_no_bill]"+ p_meip_no_bill);  
---------------------------------------------------------------------------------------------------------------------
  
entrBankAccountB.jsp 
/Int/IntEjb/VendorMgr/com/i3shop/ejb/BizMgr/VendorMgrBean.java 
C:\i3shop\Int\BizMgrBean\com\i3shop\dao\BizMgr\EntrBankAccountDAO.java 
==============================================================================================================

http://127.0.0.1:5001/BizMgr/VendorMgr/vendorP.jsp
String p_remit_account_yn = null2str(dataHash.get("REMIT_ACCOUNT_YN")); 
p_remit_account_yn = p_remit_account_yn.trim(); 
out.println("[entrBankAccountP.jsp] :: [p_remit_account_yn]"+ p_remit_account_yn);  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.04.03(토) 작업 ■■■■■■■■■■■■■■■■
---> 06:40 ~ 14:30 

- 대금정산 수정
- 거래처 송금 관리(일일정산) 추가 
- 계좌정보 수정 
송금계좌여부(REMIT_ACCOUNT_YN) 추가 
out.println("[storeinP.jsp] :: [p_meip_no_bill]"+ p_meip_no_bill);  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.04.05(월) 작업 ■■■■■■■■■■■■■■■■
---> 09:00 ~ 20:00 

- 대금정산 수정
- 계좌정보 수정 
송금계좌여부(REMIT_ACCOUNT_YN) 추가
out.println("[storeinP.jsp] :: [p_meip_no_bill]"+ p_meip_no_bill);  
==============================================================================================================

-- 송금계좌여부 Y가 2개 이상인것 조회 @@@@@@@@@@@@@@@@@@@ 
SELECT COMPANY_CD, ENTR_NO, REMIT_ACCOUNT_YN      --결과( 45001, 45090): cf)45086  
FROM T_ENTR_BANK_ACCOUNT 
GROUP BY  COMPANY_CD, ENTR_NO, REMIT_ACCOUNT_YN  
HAVING COUNT(*) > 1 
   AND REMIT_ACCOUNT_YN ='Y' 
==============================================================================================================

- 계좌정보 수정 파일 
C:\i3shop\Int\IntWeb\BasicInfoMgr\inc\entrBankAccountLayer.jsp 
C:\i3shop\Int\IntWeb\BasicInfoMgr\ 
entrBankAccountEditP.jsp 
entrBankAccountS.jsp
C:\i3shop\Int\IntEjb\VendorMgr\com\i3shop\ejb\BizMgr\VendorMgrBean.java 
C:\i3shop\Int\BizMgrBean\com\i3shop\dao\BizMgr\EntrBankAccountDAO.java  
==============================================================================================================

- 영업관리 수정
- EJB 등록 방법 
210.123.133.56 에서 @@@@@@@@@@@  ==> 현재 여기서 VendorMgr.jar 파일을 만든 후 211.233.5.108에 붙여 넣음 
---------------------------------------------------------------------------------------------------------------------

1. C:\i3shop\Int\IntEjb\VendorMgr\com\i3shop\ejb\BizMgr\VendorMgrBean.java 수정  
  
2. \\210.123.133.56\i3shop\src\ejb\VendorMgrEJB 로컬에서 아래 3개 파일을 복사하여 붙여 넣기함 
VendorMgr.java VendorMgrBean.java VendorMgrHome.java 

3. 터미널 서버 연결(Ztem) 
IP: 210.123.133.56 i3shop/dacosystem 

4. 컴파일 하기 
[i3shop@newint i3shop]$  su 
[i3shop@newint i3shop]$  i3shop566414 
[i3shop@newint i3shop]# cd src/ejb/VendorMgr 
[i3shop@newint i3shop]# ./build.sh VendorMgr 
.jar 파일 생성됨(---> \\210.123.133.56\i3shop\component\ejb\VendorMgr.jar 파일로 만들어 짐) 
\\211.233.5.108\websphere\installedApps\i3shop.ear 파일(VendorMgr.jar) 붙여 넣기 

5. .108서버 Websphere 종료 후 재시작 

6. 디버깅 --> 터미널 서버 연결(Ztem) 
[i3shop@newint i3shop i3shop]$  cd /opt/WebSphere/AppServer/logs 
[i3shop@newint i3shop logs]$ tail -f Default_Server_stdout.log 
==============================================================================================================

- Bean 등록 방법  @@@@@@@@@@@ 
C:\i3shop\Int\BizMgrBean\com\i3shop\dao\BizMgr 
OrderDAO.java OrderDtlDAO.java 파일 수정(복사)  
-- Bean 등록 방법 
eclipse에서 내보내기 -> jar 파일 
로컬 PC C:\i3shop\intLib에 내보냄 
로컬 PC C:\orion2\lib에 내보냄 
BizMgr.jar 생성(복사) 
---------------------------------------------------------------------------------------------------------------------

\\211.233.5.108\i3shop\src\bean\BizMgrDAO\com\i3shop\dao\BizMgr 
OrderDAO.java OrderDtlDAO.java 파일 덮어 쓰기 
\\211.233.5.108\websphere\lib\app 
BizMgr.jar 파일 덮어 쓰기 
 
.108서버 Websphere 종료 후 재시작  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.04..06(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 23:00 

- 대금정산 수정
- SP 수정(반품일 때)
-- MAGAM_GUBUN = 02 반품 
-- MEIP_GUBUN  = 01 쇼핑몰 
FUNCTION DAY_MEIP_02_01 

SUM(B.QTY) QTY, 
T_STOREOUT_DTL B ===========>   -값 

SELECT COMPANY_CD, MERCHANT_CD, SEQ_NO, ITEM_CD, QTY 
FROM T_STOREOUT_DTL  
WHERE COMPANY_CD='01' 
AND MERCHANT_CD='0001' --쇼핑몰 
AND REAL_STOREOUT_DT >='20040404' 
AND REAL_STOREOUT_DT <='20040405' 
AND QTY < 0 
-------------------------------------------------------------------------------------------------------------- 

-- MAGAM_GUBUN = 02 반품 
-- MEIP_GUBUN  = 02 입고(마트/자인) 
FUNCTION DAY_MEIP_02_02 

-SUM(B.RI_QTY) AS QTY, ===========>   + 값 
T_STOREIN_RI_DTL B  

SELECT COMPANY_CD, MERCHANT_CD, SEQ_NO, ITEM_CD, RI_QTY 
FROM T_STOREIN_RI_DTL  
WHERE COMPANY_CD='01' 
AND MERCHANT_CD IN('0002', '9001') --입고(마트/자인) 
AND STOREIN_RI_DT >='20040404' 
AND STOREIN_RI_DT <='20040405' 
AND RI_QTY < 0 
==============================================================================================================

- Support 수정 요구 사항 
공급가액, 부가세 추가할 것(현재: 합계금액) 
업체명이 보이길 희망 
총 합계(TOTAL ATM) 금액이 보이길 희망 
Excel로 데이타 보이기 
매출집계 
대금 정산 입금여부(Y,N) 
==============================================================================================================

- 킬러앱 매장 쇼핑뉴스 추가 
- 제한수량 상품 등록 메뉴 추가  
763  BIZ_BuyLimitItemP    /BizMgr/ItemMgr/buyLimitItemP.jsp 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.04.07(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 19:00 

- 제한수량 수정- 제한수량 상품 등록 메뉴 추가
System.out.println("[getBuyingRemittanceMListB.jsp]::[p_store_cd]"+ p_store_cd); 
dlog("[ItemMgrBean.java]::[findCond]"+ findCond); 
dlog("[ItemMgrBean.java]::[SQL]"+ SQL); 
==============================================================================================================

- 기획 매장 
http://test.mart.cc/display/event/com/mainP.jsp?p_store_cd=S063&p_category_cd=U91010100&p_display_cd=51  
- 킬러앱 
http://test.mart.cc/display/event/com/mainP.jsp?p_store_cd=S065&p_category_cd=U02010100&p_display_cd=51 
==============================================================================================================
   
■■■■■■■■■■■■■■■■■■ 2004.04.08(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 24:00 

- 제한수량 수정
- 제한수량 상품 등록 메뉴 추가  
==============================================================================================================

--거래처 은행계좌정보 갱신(Update 문) 
SQL = " UPDATE T_ENTR_BANK_ACCOUNT " + 
  " SET UP_DT = sysdate "; 

int i = 1; 
for( Enumeration enum = inputHash.keys(); enum.hasMoreElements(); ) { 
String key = (String)enum.nextElement(); 
String colName = null; 

if( !"p_mode".equals(key) && !"p_up_dt".equals(key) && typeHash.containsKey(key) ) { 
try { 
colName = key.substring(2); 
colName = colName.toUpperCase(); 

param.put( i, (String)inputHash.get(key), ((Integer)typeHash.get(key)).intValue() ); 
SQL = SQL + ", " + colName + " = ?"; 
System.out.println("[PoDAO.java]::[update()]::[colName]"+ colName); //필드명 
System.out.println("[PoDAO.java]::[update()]::[colName_Value]"+ (String)inputHash.get(key)); //필드값 
} catch( Exception e ) { 
dlog( getClass().getName() + ".update() : " + key + "의 값은 update에 적용되지 않았습니다."); 
} 
i++; // param index 
} 
} 
==============================================================================================================

- Supprt(협력업체) 설정(eclipse) @@@@@@@@ 
1. 프로젝트 등록 
신규(W) --> 프로젝트(R) 
/Support.Ear C:\support\Support.Ear 

2. EJB모듈 추가 
C:\support\Support.Ear\META-INF\application.xml 에서 
add ejb module --> ejb-jar uri: DeliveryMgr(예제) 

3. EJB모듈 파일 추가 
신규(W) --> 소스폴더 
소스 프로젝트 이름(N): Support.Ear 
폴더 이름(D): /EjbSrc/DeliveryMgr(예제) 
중첩해결을 위해 다른 소스 폴더의 제외 필드 갱신 체크(U) 

신규(W) --> 패키지  
소스 폴더(D): Support.Ear/EjbSrc/DeliveryMgr 
이름(N): com.i3shop.ejb.BizMgrr(예제) 
  
신규(W) --> 파일  
상위 폴더(D): Support.Ear/EjbSrc/DeliveryMgr 
파일 이름(N): DeliveryMgrBean.java(예제) 

4. 출력 폴더 설정 
Support.Ear --> 특성(R) --> Java빌드 경로--> 소스(S)  
Support.Ear/EjbSrc/DeliveryMgr/출력 폴더 
특정출력 폴더에 체크: DeliveryMgr(예제) 
---------------------------------------------------------------------------------------------------------------------- 

5. 라이브러리 설정 
Support.Ear --> 특성(R) --> Java빌드 경로--> 라이브러리(L) --> 외부  JAR추가(X) 
C:\orion_support\lib\BizMgr.jar dev_stand.jar classes12.zip gauce.jar  
---------------------------------------------------------------------------------------------------------------------- 
C:\j2sdk1.4.1_05\lib\tools.jar 

6. 환경설정 
창(W) --> 환경설정(P)  
Lomboz --> JDK Tools jar: C:\j2sdk1.4.1_05\lib\tools.jar 
Orion --> 
Orion History Directoy: C:\orion_support 
PWD:  bukwin2k 
Host: C:localhost:23791 
Optical JAVA VM Arguments: -Denvfile=C:\support\Support.Ear\env\daco.env 
==============================================================================================================

- Support.Ear 설정 
server.xml 에서 @@@@@@@@ 
---------------------------------------------------------------------------------------------------------------------- 

<application name="Support.Ear" path="C:\Support\Support.Ear" /> 
<web-site path="./support-web-site.xml" /> 
==============================================================================================================

- URL 문제(http://127.0.0.1로 설정) 
support-web-site.xml 에서 @@@@@@@@ 
----------------------------------------------------------------------------------------------------------------------  

<web-site host="[ALL]" port="80" display-name="Support"> 
	<!-- The default web-app for this site, bound to the root --> 
	<default-web-app application="Support.Ear" name="Support" root="/" /> 
	<access-log path="../log/support-web-site-access.log" /> 
</web-site> 
==============================================================================================================

- 한글 문제 
D:\orion_support\application-deployments\default\defaultWebApp 
persistence 폴더 삭제 
D:\orion_support\application-deployments\support\WEB_ROOT 
orion-web.xml 에서 @@@@@@@@ 
---------------------------------------------------------------------------------------------------------------------- 

default-charset ="euc-kr" 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.04.09(금) 작업 ■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 20:00 

- 제한수량 수정
- 제한수량 상품 등록 메뉴 추가 
- R&F상품 일시 판매 중단된 상품 전시 및 중단 안내 Alert 창 
---------------------------------------------------------------------------------------------------------------------- 

out.println("<br>[smlctg.jsp] :: [p_store_cd_1]"+ p_store_cd);  
System.out.println("[ItemWebMgrBean.java]:[getStoreList())]:[findCond]"+ findCond); 
dlog( "[SaleMgrBean.java]::[getOrderDtlList()]::[SQL]=====>\n"+ SQL); 
==============================================================================================================

- 스크립트 에러 
javascript DS_Order에서 에러가 남(javascript DS_Member로 변경) 
C:\i3shop\Int\IntWeb\BizMgr\SaleMgr\WebOrderMgr\returnItemOrderEditP.jsp 에서 @@@@@@@@ 
---------------------------------------------------------------------------------------------------------------------- 

<script language="javascript" for="DS_Order" event="OnLoadError()"> 
</script> 

<script language="javascript" for="DS_Member" event="OnLoadCompleted(rowcnt)"> 
if( rowcnt > 0 ){  
var p_mno = DS_Order.NameValue(DS_Order.RowPosition , "MNO" ); 
var p_hpHone = DS_Member.NameValue(DS_Order.RowPosition , "HPHONE" ); 
if( p_hpHone != null && p_hpHone.length > 0 ) { 
editForm.p_mem_hphone.value = p_hpHone; 
} 

var p_ri_reason_cd = DS_ReturnItemReq.NameValue(DS_ReturnItemReq.RowPosition , "RI_REASON_CD" ); 
if( p_ri_reason_cd != null && p_ri_reason_cd.length > 0 ) { 
editForm.p_ri_reason_cd.CodeValue = p_ri_reason_cd; 
}  
} 
</script> 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.04.10(토) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 19:00 

- 제한수량 수정
- 제한수량 상품 등록 메뉴 추가 
dlog("[AccMgrBean.java]::[getBuyingRemitCheckD()]::[p_company_cd]"+ p_company_cd +"" + 
"[p_merchant_cd(점명)]"+ p_merchant_cd+"[p_from_date(일자)]"+ p_from_date +"" + 
"[p_to_date(일자_2)]"+ p_to_date+"[p_entr_no(거래처NO)]"+ p_entr_no +"" + 
"[p_store_cd(매입구분)]"+ p_store_cd+"[p_remittance_yn(송금유무)]"+ p_remittance_yn +"" + 
"[p_magam_gubun(마감구분)]"+ p_magam_gubun+"[p_remmit_url(세금 정산유무 URL)]"+ p_remmit_url); 
dlog("[AccMgrBean.java]::[getBuyingRemitCheckD()]::[SQL]=====>\n"+ SQL); 
==============================================================================================================

- 주문 내역 조회 
http://int.i3shop.com/BizMgr/SaleMgr/WebOrderMgr/orderP.jsp 
  
- 접수일자별내역조회  
http://int.i3shop.com/BizMgr/DeliveryMgr/StoreOut/storeoutStsP.jsp  
==============================================================================================================

- Grid 필드 복사가능 
<Param Name="Editable"  value="true"> 
<Param Name="ColSelect",   value="true">  
<C>id=ORDER_NO_FULL  name='주문번호'  edit=Yes</C>  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.04.12(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 19:00 

- 제한수량 수정- 제한수량 상품 등록 list 수정  
dlog("[AccMgrBean.java]::[updateBuyingRemittance()]::[p_company_cd]-->"+getData("p_company_cd",irowHash) +"" + 
"[p_merchant_cd]-->"+ getData("p_merchant_cd",irowHash) +"[p_storeout_dt]-->"+ getData("p_storeout_dt",irowHash) +"" + 
"[p_seq_no]-->"+ getData("p_seq_no",irowHash) +"[p_magamtype]-->"+ getData("p_magamtype",irowHash) +"" + 
"[p_meip_gubun]-->"+ getData("p_meip_gubun",irowHash) +"[p_entr_no]-->"+ getData("p_entr_no",irowHash) +"" + 
"[p_settle_yn]-->"+ getData("p_settle_yn",irowHash)+"[p_settle_dt]-->"+ getData("p_settle_dt",irowHash)); 

dlog("[AccMgrBean.java]::[getBuyingRemitCheckD()]::[SQL]=====>\n"+ SQL); 
==============================================================================================================
  
- CJ택배 회사 031-460-7571 B0000587/4762  
배송등록  
- 수불장에서 마트 재고 이상 
==============================================================================================================
   
■■■■■■■■■■■■■■■■■■ 2004.04.13(화) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 24:00 

- 제한수량 수정
- 제한수량 상품 등록 list 수정  
==============================================================================================================
  
1. MD란 무엇인가? 
일반적으로 의류뿐만이 아닌 모든 상품의 buyer 기능과 
상품기획 기능 (팔릴만한 상품을 선택하여 최소비용으로 매입하고 
적절한 수량을 예산내에서 확보하여 소비자에게 어필할 수 있는 마케팅을 함.) 
이렇게 2가지 기능을 합친 업무를 머천다이저(MD)라고 합니다. 
==============================================================================================================

- [DB 접속 문제] 
- DB 접속 문제(통합, 쇼핑몰에서 log시  DB연결 안됨) ==> 21:00분에 물류팀에서 문의 
해결책: 로그(archive) 파일 용량이 100%여서 /user2폴더의  
로그(archive) 파일을 지운 후 다시 재부팅 
-----------------------------------------------------------------------------------------------------------------------------

- zterm(터미널)에서 211.233.5.110(실서버 DB) IIISHOP 연결(oracle/i3shop1105974)   
 ===> su/ekzhtltmxpa(다코시스템: 영문으로) 
> topas 
> df --- 용량 확인 
> su 
> ekzhtltmxpa(다코시스템: 영문으로) 
> shutdown -Fr (cf: reboot -Fr)  =====> 재부팅 
-----------------------------------------------------------------------------------------------------------------------------

- 로그 파일 분석(.110) 
> df 
> cd cd /user2 
> cd ORACLE_DATA 
> cd IIISHOP_ARCH 
> cd log 
> vi 3335.arc 
==============================================================================================================

- .110 DB서버 문제 
zterm(터미널)에서 211.233.5.110(실서버 DB) IIISHOP 연결(oracle/i3shop1105974)   
 ===> su/ekzhtltmxpa(다코시스템: 영문으로) 
> topas 
> df --- 용량 확인 
> su 
> ekzhtltmxpa(다코시스템: 영문으로) 
> shutdown -Fr (cf: reboot -Fr)  =====> 재부팅 
-----------------------------------------------------------------------------------------------------------------------------

- 로그 파일 분석(.110) 
> df 
> cd cd /user2 
> cd ORACLE_DATA 
> cd IIISHOP_ARCH 
> cd log 
> vi 3335.arc 
==============================================================================================================

- [실DB STOP, START] 
A. DB STOP 
1. I3SHOP Stop 
env <--- 현재 환경 확인 
ORALCLE_SID=I3SHOP <--- 확인 

 lsnrctl stop 
sqlplus " / as  sysdba" 
SQL> shtudown; <--- 거의 종료 안됨(시간도 오래 걸림) 

-- 안될 경우.... 
SQL> shtudown abort; 
SQL> startup; 
SQL> shtudown; 
SQL> exit; 

2. IIISHOP Stop 
env <--- 현재 환경 확인 
ORALCLE_SID=I3SHOP <--- 확인 
export ORALCLE_SID=IIISHOP 
env <--- 현재 환경 확인 
ORALCLE_SID=IIISHOP <--- 확인 

sqlplus " / as  sysdba" 
SQL> shtudown; <--- 거의 종료 안됨(시간도 오래 걸림) 

-- 안될 경우.... 
SQL> shtudown abort; 
SQL> startup; 
SQL> shtudown; 
SQL> exit; 

1. I3SHOP Stop 
env <--- 현재 환경 확인 
ORALCLE_SID=I3SHOP <--- 확인 

 lsnrctl stop 
sqlplus " / as  sysdba" 
SQL> shtudown; <--- 거의 종료 안됨(시간도 오래 걸림) 

-- 안될 경우.... 
SQL> shtudown abort; 
SQL> startup; 
SQL> shtudown; 
SQL> exit; 
-----------------------------------------------------------------------------------------------------------------------------

B. DB Start 
1. IIISHOP 
env <--- 현재 환경 확인 
ORALCLE_SID=IIISHOP <--- 확인 
export ORALCLE_SID=IIISHOP 
env <--- 현재 환경 확인 
ORALCLE_SID=IIISHOP <--- 확인 

sqlplus " / as  sysdba" 
SQL> starttup; 
SQL> exit; 

 lsnrctl start 

2. I3SHOP 
env <--- 현재 환경 확인 
ORALCLE_SID=I3SHOP <--- 확인  
env <--- 현재 환경 확인 
ORALCLE_SID=I3SHOP <--- 확인 

sqlplus " / as  sysdba" 
SQL> starttup; 
SQL> exit; 
==============================================================================================================

getLimitItemList getItemRsvList 
convertLimitItemListToSql convertItemRsvInputToSql 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.04.14(수) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 01:00 

- 제한수량 수정
- 제한수량 상품 등록 list 수정 
==============================================================================================================

- 사업자 등록 번호 수정(통합) 
- R&F상품 일시 판매 중단된 상품 전시 및 중단 안내 Alert 창 제거 
==============================================================================================================

dlog("[AccMgrBean.java]::[updateBuyingRemittance()]::[p_company_cd]-->"+getData("p_company_cd",irowHash) +"" + 
"[p_merchant_cd]-->"+ getData("p_merchant_cd",irowHash) +"[p_storeout_dt]-->"+ getData("p_storeout_dt",irowHash) +"" + 
"[p_seq_no]-->"+ getData("p_seq_no",irowHash) +"[p_magamtype]-->"+ getData("p_magamtype",irowHash) +"" + 
"[p_meip_gubun]-->"+ getData("p_meip_gubun",irowHash) +"[p_entr_no]-->"+ getData("p_entr_no",irowHash) +"" + 
"[p_settle_yn]-->"+ getData("p_settle_yn",irowHash)+"[p_settle_dt]-->"+ getData("p_settle_dt",irowHash)); 
==============================================================================================================
  
- Oralce 기술 지원 
허병기 과장 053)741-4513 
--================================================================================================================

SELECT * FROM T_CLOSE_TOT 
WHERE SELLING_DT BETWEEN  '20040413' AND '20040413' 
------------------------------------------------------------------------------------------------------------------------  

- 일 매출 마감  
EXECUTE PKG_DAYOFCLOSE.FINALYDAY_YESTERDAY_INSERT; 

EXECUTE PKG_DAYOFCLOSE.FINALYDAY_CLOSE_INSERT('01', '0001', '20040413', 'Y')  

SELECT * FROM T_MERCHANT_ITEM_RSV 
WHERE  RSV_DT      = '20040413'  
==============================================================================================================

- 점별상품 예약 가격을 마스터에 적  
CALL PKG_ITEM_RSV.ITEM_RSV_UPD(''); 
EXECUTE ITEM_RSV_UPD('20040413')  
SELECT * FROM T_MERCHANT_ITEM_RSV 
WHERE  RSV_DT      = '20040413'  
==============================================================================================================
  
--통합 마감 조회 @@@@@@@@@@@@@@@ 
SELECT * FROM T_CLOSE_TOT 
WHERE SELLING_DT BETWEEN  '20040413' AND '20040413' 
  
--상품별 마감 조회 @@@@@@@@@@@@@@@ 
SELECT * FROM T_CLOSE_ITEM 
WHERE SELLING_DT BETWEEN  '20040413' AND '20040413' 

--거래처별 마감 조회 @@@@@@@@@@@@@@@ 
SELECT * FROM T_CLOSE_ENTR 
WHERE SELLING_DT BETWEEN  '20040413' AND '20040413' 

--DEPART별 마감 조회 @@@@@@@@@@@@@@@ 
SELECT * FROM T_CLOSE_DEPART 
WHERE SELLING_DT BETWEEN  '20040413' AND '20040413' 

--비즈센타별 마감정보 조회 @@@@@@@@@@@@@@@ 
SELECT * FROM T_CLOSE_BIZ 
WHERE SELLING_DT BETWEEN  '20040413' AND '20040413' 

--비즈센타별  일마감재고 조회 @@@@@@@@@@@@@@@ 
SELECT * FROM T_CLOSE_BIZINOUT 
WHERE SELLING_DT BETWEEN  '20040413' AND '20040413'  
==============================================================================================================

<C>id=USE_YN  name='사용여부1'  HeadAlign=center  align=center  width='50' EditStyle=Lookup 
Data='DS_store:USE_YN:USE_YN_NM'
</C> 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.04.15(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:50 ~ 22:00 

- 제한수량 수정- 제한수량 상품 등록 list 수정 
- Oracle DB 점검(.112번 서버 때문에 archieve 파일 과다하게 생김)  
ID: sky2727 sky27.i3tour.cc * 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.04.16(금) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 19:00 

- 제한수량 수정
- 제한수량 상품 등록 list 수정 
==============================================================================================================
  
 dlog("[AccMgrBean.java]::[updateBuyingRemittance()]::[p_company_cd]-->"+getData("p_company_cd",irowHash) +"" + 
"[p_merchant_cd]-->"+ getData("p_merchant_cd",irowHash) +"[p_storeout_dt]-->"+ getData("p_storeout_dt",irowHash) +"" + 
"[p_seq_no]-->"+ getData("p_seq_no",irowHash) +"[p_magamtype]-->"+ getData("p_magamtype",irowHash) +"" + 
"[p_meip_gubun]-->"+ getData("p_meip_gubun",irowHash) +"[p_entr_no]-->"+ getData("p_entr_no",irowHash) +"" + 
"[p_settle_yn]-->"+ getData("p_settle_yn",irowHash)+"[p_settle_dt]-->"+ getData("p_settle_dt",irowHash)); 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.04.17(토) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 19:00 

- 제한수량 수정
- 제한수량 상품 등록 list 수정 
String p_times_cd = (request.getParameter("p_times_cd") == null) ? "": request.getParameter("p_times_cd"); // 회차 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.04.01(월) 작업 ■■■■■■■■■■■■■■■■
 2004.04.18(일) 작업  
■■■■■■■■■■■■■■■■■■ 2004.04.01(월) 작업 ■■■■■■■■■■■■■■■■ 
---> 10:10 ~ 20:30 

- 제한수량 수정
- 제한수량 상품 등록 list 수정  
==============================================================================================================

- 날짜 전환 
"TO_CHAR(TO_DATE(ED_DT) -1, 'YYYYMMDD') AS ED_DT  " + // 종료일자 
==============================================================================================================

- 회차 String 
( SELECT LTRIM(TO_CHAR(NVL(MAX(NVL(TIMES_CD,0)),0)+1, '000000') 
==============================================================================================================

- [[EJB, Bean 등록 방법]  ==========> 쇼핑몰(CCDOM) 
local 에서 EJB, Bean 생성  ======> 
C:\CCDOM\Ccdom\bin\com\i3shop\beans\BizStore 
CartBean.class 
C:\CCDOM\Ccdom\CcdomWeb 에서 JSP파일 수정 
---------------------------------------------------------------------------------------------------------------------- 

- 테스트 서버(.52) --- 
\\210.123.133.52\i3shop   @@@@@  i3shop/i3shop520321(su/i3shop521092)  
(Bean: C:\CCDOM\Ccdom\CcdomBeans\com\i3shop\beans\BizStore 에서 CartBean.java 파일 복사 -->  
\\210.123.133.52\i3shop\src\bean 에 붙여 넣기) 

터미널 서버 연결(Ztem)==> IP: 211.233.5.52 
[root@testCcdom i3shop]# su 
[root@testCcdom i3shop]# i3shop521092 
[root@testCcdom i3shop]# cd src/bean 
[root@testCcdom bean]# ./build.sh CatBean  
\\210.123.133.52\websphere\installedApps\BizStore.ear\BizStore.war\WEB-INF\classes\com\i3shop\beans\BizStore  
에 CartBean.class 자동 생성 

- 실제 웹 서버(.111) --- 
\\211.233.5.111\i3shop @@@@@   i3shop/i3shop1115974 (su/i3shop1116414)  
(Bean:C:\CCDOM\Ccdom\CcdomBeans\com\i3shop\beans\BizStore 에서 CartBean.java 파일 복사 --> 
\\210.123.133.111\i3shop\src\bean 에 붙여 넣기) 

터미널 서버 연결(Ztem)==> IP: 211.233.5.111 
[i3shop@iiishop_ccdom1 i3shop]$  su 
[i3shop@iiishop_ccdom1 i3shop]$  i3shop1116414 
[root@iiishop_ccdom1 src]# cd src/bean 
[root@iiishop_ccdom1 bean]#  ./build.sh CartBean 
\\210.123.133.111\websphere\installedApps\BizStore.ear\BizStore.war\WEB-INF\classes\com\i3shop\beans\BizStore  
에 CartBean.class 자동 생성 

- 실제 웹 서버(.112) --- 
\\210.123.133.111 디버깅 파일(CartBean.class)을 아래 폴더에 붙여 넣기 
\\210.123.133.112\websphere\installedApps\BizStore.ear\BizStore.war\WEB-INF\classes\com\i3shop\beans\BizStore  

- 실제 웹 서버(.113) --- 
\\210.123.133.111 디버깅 파일(CartBean.class)을 아래 폴더에 붙여 넣기 
\\210.123.133.113\websphere\installedApps\BizStore.ear\BizStore.war\WEB-INF\classes\com\i3shop\beans\BizStore 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.04.19(월) 작업 ■■■■■■■■■■■■■■■■
---> 06:30 ~ 01:00 

- 제한수량 수정
- 제한수량 최종 수정 및 서버 등록 
---------------------------------------------------------------------------------------------------------------------- 

-- 구매 가능 수량 조회 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
SELECT  AA.ITEM_CD, AA.TIMES_CD, AA.COMPANY_CD, AA.STORE_CD, AA.CATEGORY_CD,  
AA.LIMIT_QTY,            --제한 수량 
DECODE(BB.BUYED_QTY, '', 0, BB.BUYED_QTY) AS BUYED_QTY, --구매한 수량의 합 
(NVL(AA.LIMIT_QTY,0) - NVL(BB.BUYED_QTY,0)) AS POS_QTY --구매 가능 수량의 합(제한 수량 - 구매한 수량의 합) 
FROM  (SELECT B.ITEM_CD, B.TIMES_CD AS TIMES_CD, B.COMPANY_CD, B.STORE_CD, B.CATEGORY_CD, 
B.MERCHANT_CD, 
NVL(MAX(B.SALE_MAX_QTY),0) AS LIMIT_QTY, 0AS BUYED_QTY,  
0 AS POS_QTY  
FROM  T_BuyCount A, T_BuyLimitCount B, T_BuyTimes C 
WHERE B.ITEM_CD = A.ITEM_CD(+)  
AND B.TIMES_CD = C.TIMES_CD 
AND C.ST_DT <= TO_CHAR(SYSDATE, 'YYYYMMDD') 
AND C.ED_DT >= TO_CHAR(SYSDATE, 'YYYYMMDD')   
AND A.MNO(+) = '92201' 
GROUP BY B.ITEM_CD, B.TIMES_CD, A.MNO, B.COMPANY_CD, B.STORE_CD,  
 B.CATEGORY_CD, B.MERCHANT_CD) AA,  
(SELECT  B2.ITEM_CD, B2.TIMES_CD, B2.COMPANY_CD, B2.STORE_CD, B2.CATEGORY_CD, B2.MERCHANT_CD, 
 NVL(MAX(B2.SALE_MAX_QTY),0) AS LIMIT_QTY, NVL(SUM(A2.QTY),0) AS BUYED_QTY, --구매한 수량의 합 
(NVL(MAX(B2.SALE_MAX_QTY),0) - NVL(SUM(A2.QTY),0))AS POS_QTY      --구매 가능 수량의 합 
FROM  T_BuyCount A2, T_BuyLimitCount B2, T_BuyTimes C2 
WHERE B2.ITEM_CD(+) = A2.ITEM_CD 
AND B2.TIMES_CD = C2.TIMES_CD 
AND C2.ST_DT <= TO_CHAR(SYSDATE, 'YYYYMMDD') 
AND C2.ED_DT >= TO_CHAR(SYSDATE, 'YYYYMMDD') 
AND A2.TIMES_CD = '000006' --회차 
AND A2.MNO(+) = '92201' 
GROUP BY B2.ITEM_CD, B2.TIMES_CD, A2.MNO, B2.COMPANY_CD, B2.STORE_CD,  
 B2.CATEGORY_CD, B2.MERCHANT_CD) BB  
WHERE AA.ITEM_CD = BB.ITEM_CD(+) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.04.20(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 23:00 

- Support 수정
공급가액, 부가세 추가할 것(현재: 합계금액) 
상품명 공급가액(단가) 수량  부가세  합계금액(금액) 입금 
------------------------------------------------------------------------------------------------------------------------------

- 업체명이 보이길 희망 
총 합계(TOTAL ATM) 금액이 보이길 희망 
Excel로 데이타 보이기 
매출집계 
대금 정산 입금여부(Y,N) 
------------------------------------------------------------------------------------------------------------------------------

- 임영택[Ace inc] B0000286/4166 김창근[SK(주)] B0000587/4762  
==============================================================================================================
 
- 숫자를받아서 3자리마다 ,를 넣는 함수 
function ChangeMoney(str) //숫자를받아서 3자리마다 ,를 넣는 함수 
{ 
   var Money; 
   Money = "";    
   //alert("[ChangeMoney()]:[str]"+ str);  
   while(parseInt(str) >= 1000) 
   { 
      if((parseInt(str)/1000) > 0) 
      { 
         if((parseInt(str) % 1000) == 0 ) 
         { 
            Money = "," + parseInt(str) % 1000 + "00" + Money; 
         } 
         else 
         { 
            if((parseInt(str) % 1000) > 99 ) 
               Money = "," + parseInt(str) % 1000 + Money; 
            else if((parseInt(str) % 1000) > 9 ) 
               Money = ",0" + parseInt(str) % 1000 + Money; 
            else 
               Money = ",00" + parseInt(str) % 1000 + Money; 
         } 
      } 
      str = parseInt(str)/1000; 
   }    
   //alert("[ChangeMoney()]:[str_2]"+ str);  
   Money = parseInt(str) + Money;  
   return Money; 
} 
==============================================================================================================
  
- 식사 배달(식사주문) 
오센드: 745-5565 청우: 745-6055 
매일반점: 751-5404 미도반점: 755-7524 대흥각: 753-3988 춘천각: 752-5100 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.04.21(수) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 23:00 

- Support 수정
- 협력업체 대금정산 수정 
1. DB 수정(T_MAGAM_MEIP 으로 수정) 
2. 대금정산 면세, 과세, 총합계 구하기 
업체명이 보이길 희망 
총 합계(TOTAL ATM) 금액이 보이길 희망 
Excel로 데이타 보이기 
매출집계 
대금 정산 입금여부(Y,N) 
----------------------------------------------------------------------------------------------------------------- 

http://210.123.133.31/Excel_test/viewcell.jsp 
http://210.123.133.31/Excel_test/test.jsp 

- 임영택[Ace inc] B0000286/4166 김창근[SK(주)] B0000587/4762  
==============================================================================================================
 
- 한글 자판 문제 
제어판->키보드->입력로케일->변경->키보드 에서 자판배열 입력기를 변경하세요 
ms-ime98이나 2000인가로 변경하시면 될겁니다. 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.04.22(목) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 23:00 

- Support 수정
- 대금정산 수정
임영택[Ace inc] B0000286/4166 김창근[SK(주)] B0000587/4762 
문극현[유한킴벌리] 31666/1666 김한연[중외휴먼택] B0000511/3532 
----------------------------------------------------------------------------------------------------------------- 

- Excel 파일로 데이타 저장 
<%@ page language="java" contentType="application/vnd.ms-excel;charset=euc-kr" %> 

<% 
response.setHeader("Content-Disposition", "attachment; filename=Settle_Accounts.xls"); 
response.setHeader("Content-Description", "JSP Generated Data"); 
%> 

<%@page import="javax.naming.*, com.i3shop.ejb.BizMgr.*, java.util.Hashtable"%> 
<%@page import="com.i3shop.ejb.BizMgr.*, java.math.*"%>  
<%@page import="com.i3shop.util.BizMgr.CodeConstants" %> 
<%@include file="/common/property.jsp"%> 
==============================================================================================================

- 본부영업관리/매출집계/거래처별 매입내역(대금정산과 비교) 
http://int.i3shop.com/BizMgr/ReportMgr/entrReportP.jsp  
==============================================================================================================

- url 링크 
go_url ="ToExcel.jsp?ToExcel=1&p_merchant_cd="+ p_merchant_cd +"&p_store_cd="+ p_store_cd +" "+ 
"&p_storeout_end_dt_from="+ p_storeout_end_dt_from +"&p_storeout_end_dt_to="+ p_storeout_end_dt_to+" "+ 
"&storeout_end_dt_from="+ storeout_end_dt_from +"&storeout_end_dt_to="+ storeout_end_dt_to+" "+ 
"&search_mode="+ search_mode +"&p_settle_yn="+ p_settle_yn; 
System.out.println("[ItemWebMgrBean.java]:[getStoreList())]:[findCond]"+ findCond); 
dlog( "[SaleMgrBean.java]::[getOrderDtlList()]::[SQL]=====>\n"+ SQL); 
==============================================================================================================

---수불장 조회(회사명 추가) @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 
SELECT  A.ITEM_CD, B.ITEM_NM, 
B.ENTR_NO, C.ENTR_NM 
--select SUM(*) 
FROM T_DAY_SUBUL A, T_MAGAM_MEIP B, T_ENTERPRISE C 
WHERE B.COMPANY_CD = '01' 
 AND A.ITEM_CD =  B.ITEM_CD 
 AND B.ENTR_NO =  C.ENTR_NO 
 AND A.MERCHANT_CD = '9001'   
 AND A.SUBUL_DATE >= '20040101' 
 AND A.SUBUL_DATE <= '20040331' 
GROUP BY A.ITEM_CD, B.ITEM_NM, B.ENTR_NO, C.ENTR_NM 
----------------------------------------------------------------------------------------------------------------- 

--매입장 조회 @@@@@@@ 
SELECT  B.ENTR_NO, B.ITEM_NM 
--select SUM(*) 
FROM T_MAGAM_MEIP B 
WHERE B.COMPANY_CD = '01'  
 AND B.MERCHANT_CD = '9001'   
 AND B.MAGAM_DATE >= '20040101' 
 AND B.MAGAM_DATE <= '20040331' 
 AND B.ITEM_CD =  '00000550' 
----------------------------------------------------------------------------------------------------------------- 

--수불장 조회 @@@@@@@ 
SELECT  * 
--select SUM(*) 
FROM T_DAY_SUBUL A 
WHERE A.COMPANY_CD = '01'  
 AND A.MERCHANT_CD = '9001'   
 AND A.SUBUL_DATE >= '20040101' 
 AND A.SUBUL_DATE <= '20040331' 
 AND A.ITEM_CD =  '00000550' 
--================================================================================================================  
  
■■■■■■■■■■■■■■■■■■ 2004.04.23(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 22:00 

- Support 수정
- 대금정산 수정 
- Excel 파일로 데이타 저장 수정 
----------------------------------------------------------------------------------------------------------------- 

- 쇼핑몰 김관수[(주)씨앤씨클럽] B0000404/4926 
임영택[Ace inc] B0000286/4166 
문극현[유한킴벌리] 31666/1666 
김창근[SK(주)] B0000587/4762 
김종문[대백유통] B0000046/4888 
물류 김한연[중외휴먼택] B0000511/3532 
마트 김관수[(주)씨앤씨클럽] B0000404/4926   
--================================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.04.24(토) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 18:30 

- Support 수정
- 대금정산 수정 
----------------------------------------------------------------------------------------------------------------- 

- 쇼핑몰 김관수[(주)씨앤씨클럽] B0000404/4926 
임영택[Ace inc] B0000286/4166 
문극현[유한킴벌리] 31666/1666 
김창근[SK(주)] B0000587/4762 
김종문[대백유통] B0000046/4888 
물류 김한연[중외휴먼택] B0000511/3532 
마트 김관수[(주)씨앤씨클럽] B0000404/4926 
==============================================================================================================

기획매장- 웰빙모음전(V13010000)  =========> S063:기획매장 
기획매장에 보이지 않음: MD 카테고리 상품 
기획매장- 웰빙모음전(V13010000)   00146155 반신욕 한방 입욕제 7종세트 
에서 전시되었는데  이미지가 안나옵니다. 

http://test.mart.cc/display/event/com/mainP.jsp?p_store_cd=S063&p_category_cd=V13010100&p_display_cd=51 
==============================================================================================================

- 초특가매장 - 생활/주방(T01010106)  =========> S064:초특가매장  
천용희 *  
http://test.mart.cc/display/big/bigctg.jsp?p_store_cd=S064&p_category_cd=T01000000&p_display_cd=41 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.04.26(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 23:00 

- 통합 수정
주문 내역 조회(/SaleMgr/WebOrderMgr/orderFullB.jsp) 
- 주문 상품 정보(/SaleMgr/WebOrderMgr/orderDtlB.jsp)  
// inputHash.put( "p_merchant_cd", (String)sessHash.get("MERCHANT_CD") ); ===> 점코드 수정(모든 점 사용이 조회 가능) 
==============================================================================================================
  
- 주간업무 보고서  MIS_weekleyReport 
/BizMgr/GitaMgr/WeekleyReport/WeekleyReportP.jsp 
==============================================================================================================

- 대금 정산 URL 수정 
거래처 세금  계산서관리 - /BizMgr/Remittance/EntrTaxAccountP.jsp  
거래처 송금 관리(일일정산) - /BizMgr/Remittance/EntrRemittanceDailyP.jsp   
거래처 송금 관리 -/BizMgr/Remittance/EntrRemittanceP.jsp  
==============================================================================================================
 
- 입고 예정 상품 조회
http://int.i3shop.com/BizMgr/DeliveryMgr/StoreIn/storeinPoP.jsp 
마트- 정유선(jys142/96143142) 
물류 - 조의재 대리(euijae1970/700420) 온라인 - 김우호(sunkwh/sun9434) 
점포관리/입고관리/입고 예정 상품 조회  
- PO_SHEET_SEND_YN 발주서전송여부(Y) 
==============================================================================================================

JNDI 등록 객체호출을 실패했습니다. 
javax.naming.NameNotFoundException: BizMgr/BuyingMgr not found in IntEar 

- 해결책 
1. /Int/IntEjb/BuyingMgr 소스 폴더의 META-INF 폴더 확인 
C:\i3shop\Int\IntEjb\BuyingMgr\META-INF\ejb-jar.xml 파일 점검 
/Int/IntEjb/BuyingMgr/META-INF/orion-ejb-jar.xml 파일 점검 
(location="BizMgr/BuyingMtgr ==> location="BizMgr/BuyingMgr 로 수정) 
----------------------------------------------------------------------------------------------------------------- 
 <!-- Session Beans --> 
<session-deployment name="BuyingMgr"  location="BizMgr/BuyingMtgr" > 
==============================================================================================================
2. C:\orion2\application-deployments\IntEar IntWeb폴더를 제외하고 모두 삭제 
3. 모두 다시 빌디(L)   
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.04.27(화) 작업 ■■■■■■■■■■■■■■■■ 
---> 07:10 ~ 19:00 

- 통합 수정
- 주간업무 보고서 개발(MIS_weekleyReport) 
1. 주간업무 보고서 TB 생성   
/BizMgr/GitaMgr/WeekleyReport/WeekleyReportP.jsp 
GitaMgr\WeekleyReport  
==============================================================================================================

 2. 입고 예정 상품 조회(http://int.i3shop.com/BizMgr/DeliveryMgr/StoreIn/storeinPoP.jsp) 
 AND APPROVER_ID IS NOT NULL   --승인이 된 것만 조회 가능으로 수정 
----------------------------------------------------------------------------------------------------------------- 

<param name="RowHeight" value=20> 
<C>id=BUSINESS_TP_NM name='업무구분명'  suppress=2</C> 
<C>id=B_GUBUN_NM  name='구분'     suppress=1 </C> 
==============================================================================================================

System.out.println("[storeinB.jsp]::[p_store_cd]"+ p_store_cd); 
dlog("[AccMgrBean.java]::[updateBuyingRemittance()]::[p_company_cd]-->"+ p_company_cd +"" + 
   "[p_merchant_cd]-->"+ p_merchant_cd +"[p_from_date]-->"+ p_from_date +"" + 
   "[p_to_date]-->"+ p_to_date +"[p_store_cd_매입구분]-->"+ p_store_cd +"" + 
   "[p_entr_no]-->"+ p_entr_no +"[p_entr_no]-->"+p_entr_no +"" + 
   "[p_tax_yn_부가세]-->"+ p_tax_yn +"[p_bill_collect_yn]-->"+ p_bill_collect_yn); 
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2004.04.28(수) 작업 ■■■■■■■■■■■■■■■■
---> 06:30 ~ 23:30 

- 통합 수정
- 주간업무 보고서 개발(MIS_weekleyReport)  
주간업무 보고서 DB 작성 
==============================================================================================================

- Grid 옵션 
<Param Name="DataID"        value="DS_item">  
<Param Name="TitleHeight",  value="18"> 
<Param Name="ViewHeader" value="true"> 
<Param Name="HeadLineColor" value="red"> 
<Param Name="RowHeight" value="50">  
<Param Name="AllshowEdit"  value="true">   
<Param Name="Editable"  value="true"> 
<Param Name="ColSizing",  value="true"> 
<Param Name="Fillarea"  value="true"> 
==============================================================================================================

C:\i3shop\i3shop_env\daco.env 에서 
--------------------------------------------------------------------------------------------------------- 
#기타 
GitaMgrconntype=pool 
GitaMgrpoolname=jdbc/i3shop_Oracle_DBPool 
==============================================================================================================
  
editForm.p_limit_qty.value  = editForm.em_p_limit_qty.Text;   //제한수량 
//alert("[p_limit_qty]"+ editForm.p_limit_qty.value); 
if( editForm.p_limit_qty.value == "" ) { 
alert("제한수량을 입력하세요!"); 
editForm.em_p_limit_qty.focus(); 
return false; 
} 

 response.sendRedirect("purchase.jsp?m_num=<%=m_num%>&imsi_pcount=<%=imsi_pcount%>");  
 String p_times_cd = (request.getParameter("p_times_cd") == null) ? "": request.getParameter("p_times_cd"); // 회차 
==============================================================================================================

- MS Office 업데이트 
http://office.microsoft.com/home/default.aspx 
==============================================================================================================

<script language="javascript"  for="tr_saveEntrTaxAccountMS" event="OnSuccess"> 
	//alert("[ EntrTaxAccountP.jsp]::[OnSuccess]::[tr_saveEntrTaxAccountMS]"); 
	btn_search(2); // 저장에 성공하면 하위Grid 리프래쉬 
	</script> 

	<script language="javascript" for="tr_saveEntrTaxAccountMS" event="OnFail"> 
	btn_search(2); 
</script> 
==============================================================================================================

<script>  
	alert("세션이 끊겼습니다."); 
	parent.location.replace("/login/login.jsp"); 
	</script> 

	<script language="JavaScript">  
	alert("세션이 끊겼습니다."); 
	parent.window.document.location.href="/login/login.jsp";   
	</script> 
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2004.04.29(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 23:00 

- 통합 수정
- 주간업무 보고서 개발(MIS_weekleyReport)  
주간업무 보고서 
BIZ_weekleyReport 
/BizMgr/GitaMgr/WeekleyReport/WeekleyReportP.jsp 
---------------------------------------------------------------------------------------------------------------------- 

- 주간업무 보고서_팀별 
BIZ_weekleyReport_Team 
/BizMgr/GitaMgr/WeekleyReport_Team/WeekleyReport_TeamP.jsp  
==============================================================================================================

- 점포관리/입고관리/입고 예정 상품 조회 
(http://210.123.133.31:5001/BizMgr/DeliveryMgr/StoreIn/storeinPoP.jsp) 
- SQL += "\n  AND APPROVER_ID IS NOT NULL"; //발주 승인이 된 것만 
---------------------------------------------------------------------------------------------------------------------- 

- 주문관리/발주 승인관리/발주 승인 관리 
(http://int.i3shop.com/BizMgr/BuyingMgr/PlacingOrderMgr/poAppP.jsp) 
============================================================================================================== 

■■■■■■■■■■■■■■■■■■ 2004.04.30(금) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 20:30 

- 통합 수정
- 주간업무 보고서 개발(MIS_weekleyReport)   
OZ 출력 
============================================================================================================== 

- 협력업체/오프라인발주내역 
(http://support.i3shop.com/VendorMgr/PoState/storeinP.jsp) 
- 승인거부 제외 
============================================================================================================== 

- 쇼핑몰 김관수[(주)씨앤씨클럽] B0000404/4926 
임영택[Ace inc] B0000286/4166 
문극현[유한킴벌리] 31666/1666 
김창근[SK(주)] B0000587/4762 
김종문[대백유통] B0000046/4888 
물류 김한연[중외휴먼택] B0000511/3532 
마트 김관수[(주)씨앤씨클럽] B0000404/4926  
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■