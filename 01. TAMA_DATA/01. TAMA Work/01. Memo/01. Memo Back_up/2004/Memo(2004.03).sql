

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2004.03) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2004.03.01(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00

- 회계 Test
- 일계표 테스트 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.03.02(화) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 23:00 

- 회계 Test
- 일계표 테스트 
- 한정 수량 상품상세보기: 한계수량 보여주기 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.03.03(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 

- 회계 회의
- 회계팀, 외주업체 전체 Review 
- 상대계정과목 에러, 전표 등록 오류 
- 일계표 차, 대변 수치 불일치 
- 현재 회계를 포기하고 타 시스템을 구매하여 사용하기로 합의 
==============================================================================================================

- 수정파일 등록
- EJB 등록 방법 
210.123.133.56 에서 @@@@@@@@@@@  ==> 현재 여기서 AccMgr.jar 파일을 만든 후 211.233.5.108에 붙여 넣음 
----------------------------------------------------------------------------------------------------------------------------

1. C:\i3shop\Int\IntEjb\AccMgr\com\i3shop\ejb\MisMgr\AccMgrBean.java 수정   
2. \\210.123.133.56\i3shop\src\ejb\AccMgrEJB 로컬에서 아래 3개 파일을 복사하여 붙여 넣기함 
AccMgr.java AccMgrBean.java AccMgrHome.java  
3. 터미널 서버 연결(Ztem) 
IP: 210.123.133.56 i3shop/dacosystem  
4. 컴파일 하기 
[i3shop@newint i3shop]$  su 
[i3shop@newint i3shop]$  i3shop566414 
[i3shop@newint i3shop]# cd src/ejb/AccMgrEJB 
[i3shop@newint i3shop]# ./build.sh AccMgr 
.jar 파일 생성됨(---> \\210.123.133.56\i3shop\component\ejb\AccMgr.jar 파일로 만들어 짐) 
\\211.233.5.108\websphere\installedApps\i3shop.ear 파일(AccMgr.jar) 붙여 넣기  
5. .108서버 Websphere 종료 후 재시작
6. 디버깅 --> 터미널 서버 연결(Ztem) 
[i3shop@newint i3shop i3shop]$  cd /opt/WebSphere/AppServer/logs 
[i3shop@newint i3shop logs]$ tail -f Default_Server_stdout.log 
==============================================================================================================

- local 에서 Bean 생성 
C:\CCDOM\Ccdom\bin\com\i3shop\beans\BizStore 
CartBean.class 
C:\CCDOM\Ccdom\CcdomWeb 에서 JSP수정됨 
----------------------------------------------------------------------------------------------------------------------------

\\210.123.133.52\i3shop 에 EJB, Bean 등록 @@@@@  i3shop / i3shop520321 
(Bean: C:\CCDOM\Ccdom\bin\com\i3shop\beans\BizStore에서 복사)  
(\\210.123.133.52\i3shop\src\bean   build.cmd 디버깅...)  
\\210.123.133.52\websphere\installedApps\BizStore.ear\BizStore.war\WEB-INF\classes\com\i3shop\beans\BizStore 

- 실제 웹 서버 --- 
\\211.233.5.111\i3shop @@@@@   i3shop/i3shop1115974 (su i3shop1116414) 
(Bean: \\211.233.5.111\i3shop\src\bean   build.cmd 디버깅.... 마직막 줄에 CartBean.java 설정) 

- 실제 웹 서버 --- 
\\211.233.5.112\i3shop @@@@@  i3shop/i3shop1125974 (su i3shop1126414) 
\\211.233.5.111\websphere\installedApps\BizStore.ear\BizStore.war\WEB-INF\classes\com\i3shop\beans\BizStore 
Bean.class를 복사하여 아래로 붙여 넣기 함 
\\211.233.5.112\websphere\installedApps\BizStore.ear\BizStore.war\WEB-INF\classes\com\i3shop\beans\BizStore 

- 실제 웹 서버 --- 
\\211.233.5.113\i3shop @@@@@   i3shop/i3shop1135974(su i3shop1136414) 
\\211.233.5.111\websphere\installedApps\BizStore.ear\BizStore.war\WEB-INF\classes\com\i3shop\beans\BizStore 
Bean.class를 복사하여 아래로 붙여 넣기 함 
\\211.233.5.113\websphere\installedApps\BizStore.ear\BizStore.war\WEB-INF\classes\com\i3shop\beans\BizStore 
==============================================================================================================

- WebSphere 4.06 Start / Stop 
./apachectl stop 
cd /opt/WebSphere/AppServer/bin  
./adminclient.sh     - 클라이언트 실행 
- WebSphere 디폴트 섭저 중지 -> 시작 
./apachectl start 
==============================================================================================================

#---  쇼핑몰 Test서버 TNS 연결 DB 환경( iiishop/iiishop): I3SHOPDB   
#---  통합(쇼핑몰) 실DB서버 TNS 연결 DB 환경( iiishop / iiishop): IIISHOP  
==============================================================================================================

- 터미널 서버 연결(Ztem) 
IP: 210.123.133.56 @@@@@   i3shopi3shop/dacosystem 
-------------------------------------------------------------------------------------------------- 

cd /opt/WebSphere/AppServer/logs 
[i3shop@newint logs]$ tail -f Default_Server_stdout.log 
==============================================================================================================
\\210.123.133.52\i3shop\src\bean\ 에서 마직막 줄에 CartBean.java 설정 
-------------------------------------------------------------------------------------------------- 
#!/bin/sh 

####################################################################### 
# 
# 프로그램유형  :       Build(shell) 
# 프로그램명    :       build.sh 
# Version               :       1.0 
# 작성일                :       2003/09/5 
# 작성자                :       이현수 
# 수정일                : 
# 수정자                : 
# 설명                  :       주문관련 bean을 컴파일한다. 
# 
# 프로젝트명    :       i3shop 
# 
####################################################################### 

PHOME=${PHOME:-"/home/i3shop"} 
JAVA_HOME=${JAVA_HOME:-"/opt/WebSphere/AppServer/java"} 
APP_HOME=${APP_HOME:-"/opt/WebSphere/AppServer/installedApps/BizStore.ear/BizStore.war/WEB-INF/classes"} 
WASLIB=${WASLIB:-"/opt/WebSphere/AppServer/lib"} 
CPATH=.:$PHOME/lib/dev_stand.jar:$PHOME/component/class:$WASLIB/app/jcert.jar:$WASLIB/app/jnet.jar:
$WASLIB/app/AclMgr.jar:$WASLIB/app/jsse.jar:$WASLIB/app/xerces_1_2.jar:$WASLIB/app/log4j.jar:$WASLIB/app/trs.jar:
$WASLIB/j2ee.jar:$APP_HOME 
PATH=$JAVA_HOME/bin:/pt/WebSphere/AppServer/bin:$PATH 
javac -d /opt/WebSphere/AppServer/installedApps/BizStore.ear/BizStore.war/WEB-INF/classes  -classpath $CPATH CartBean.java
==============================================================================================================

[i3shop@testCcdom i3shop]$ 
Red Hat Linux release 7.3 (Valhalla) 
Kernel 2.4.18-3 on an i686 
login: i3shop 
Password: 
Last login: Wed Mar  3 15:02:43 from 210.123.133.121 
[i3shop@testCcdom i3shop]$ cd src 
[i3shop@testCcdom src]$ ls 
bean  ejb 
[i3shop@testCcdom src]$ cd bean/ 
[i3shop@testCcdom bean]$ ls  
[i3shop@testCcdom bean]$ sh build.sh 
==============================================================================================================
  
- 한정구매수량 수정 파일 
/order/rnf/checkRnFSes.jsp --> 한계수량 조회(바로구매) 
/cart/cartPut.jsp --> 한계수량 조회(장바구니) 
/order/orderPut_3.jsp --> 한계수량 저장(주문하기) 
/display/com/itemDetaiInfoP.jsp -->상품상세 보기 

/Ccdom/CcdomBeans/com/i3shop/beans/BizStore/CartBean.java
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.03.04(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 

- 쇼핑몰 수정
--// 상품 등록 
INSERT INTO T_BuyLimitCount(ITEM_CD, TIMES_CD, SALE_MAX_QTY, COMPANY_CD, STORE_CD, 
       CATEGORY_CD, MERCHANT_CD, REG_DT)   
SELECT ITEM_CD, '000002', DISPLAY_SEQ, COMPANY_CD, STORE_CD, 
    CATEGORY_CD, '0001', SYSDATE 
FROM T_CATEGORY_ITEM  
WHERE STORE_CD = 'S065'  AND CATEGORY_CD = 'U02010101' AND END_DT IS NULL  
--------------------------------------------------------------------------------------------------------------------------- 

-- 상품 등록 조회     
SELECT * FROM T_CATEGORY_ITEM WHERE STORE_CD = 'S065' AND CATEGORY_CD = 'U02010101' AND END_DT IS NULL  
--// '000002' 상품 등록 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.03.05(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 22:00 

- 쇼핑몰 최종 수정
- 킬러앱 한정구매 상품 '000002'회차 등록(04.03.05 ~ 03.18) 
--------------------------------------------------------------------------------------------------------------------------- 

-- 구매 가능 수량 조회 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
SELECT  B.ITEM_CD, B.TIMES_CD, B.COMPANY_CD, B.STORE_CD, B.CATEGORY_CD, B.MERCHANT_CD, 
 NVL(MAX(B.SALE_MAX_QTY),0) LIMIT_QTY, NVL(SUM(A.QTY),0) BUYED_QTY, -- (구매한정 수량, 실제 구매한 수량의 합) 
(NVL(MAX(B.SALE_MAX_QTY),0) - NVL(SUM(A.QTY),0))POS_QTY -- 구매 가능 수량의 합 
FROM  T_BuyCount A, T_BuyLimitCount B, T_BuyTimes C 
WHERE B.ITEM_CD = A.ITEM_CD(+) 
  AND B.TIMES_CD = C.TIMES_CD(+)  
  AND C.ST_DT  <= SYSDATE 
  AND C.ED_DT  >= SYSDATE 
  --AND B.TIMES_CD = '000002' 
  AND A.MNO(+) = '92201'   
GROUP BY B.ITEM_CD, B.TIMES_CD, A.MNO, B.COMPANY_CD, B.STORE_CD, B.CATEGORY_CD, B.MERCHANT_CD 
==============================================================================================================

-- 상품 코드 조회 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
SELECT ITEM_CD, A.TIMES_CD, STORE_CD, CATEGORY_CD 
FROM T_BuyLimitCount A, T_BuyTimes C  
WHERE A.TIMES_CD = C.TIMES_CD(+) 
AND C.ST_DT  <= SYSDATE 
AND C.ED_DT  >= SYSDATE 
==============================================================================================================

수고많으십니다, 주임님, 다름이 아니라  현재 노블레스매장 
안에 킬러앱에서 수량제한을 하고 있는데요, 아래 고객분 
경우는 주문도 안했는데 이미 2포 주문한것 처럼 현재 -2개로 
주문이 안된다고 되어 메모드립니다~  
정삼차   아이디:  donkas1   비번: jsc4144  
노블레스 매장에  합천쌀 주문접수한것도 없고, 2주안에 주문한적도 없는데 주문하셨던것처럼 구매할려면 현재 -2개로 주문불가하다는 
문구가뜸  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.03.06(토) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 18:00 

- 회계 수정
- 회계 업무 중단 보고서 
1. 원인 
A. 프로그램 문제 
B. 개발자 문제  
- 개발자의 숙련도 부족 
요구한 일정을 정확하게 못 지킴 
전반적인 회계 시스템에 대한 기술 부족 
- 회계 이해 부족 
회계팀과의 미팅시 여러 에러 사항 지적 
C. 기타 
장기간 개발에 따른 상호 신뢰 관계 결여 
기존의 C/S 회계 프로그램에서 웹으로의 전환 기술 부족 
개발자의 개발 의지 부족 
2. 해결책 
A. Active X 모듈 ERP에 적용 
==============================================================================================================

- Win32/MyDoom.worm.34568  
 TCP 1080번 포트를 열어둔다.  
- 특정일에 마이크로소프트사와 RIAA를 공격한다.  
- 각종 보안 프로그램, Windows 작업 관리자, 레지스트리 편집기 등이 자동 종료된다.  
==============================================================================================================

http://www.hauri.co.kr/virus/virusinfo/virussearch_read.html?code=WOW3000438&start=1&before_page=/virus/index.html
&orderby=&virus_name=agobot&summary_symptom1=&summary_symptom2=&category=&active_month=&active_day=
&active_week=&link_field=&link_method=
2003년 9월 9일 한국에서 발견되었으며, 외국에도 같은 시기에 발견 되었다.  
==============================================================================================================

- [웜이 사용하는 확산 방법 및 변형에 대한 근본 대책]
Worm.Win32.Agobot은 수많은 변형이 존재하며, 이 웜의 제작자는 계속해서 변형을 제작하여 유포시키고 있다.  
그러므로 계속해서 나오는 Agobot 변형에 감염되지 않으려면, 이 웜이 사용하는 확산 경로를 근본적으로 차단하면, 웜의 감염되지 
않을 수 있다. 다음은 이 웜이 사용하는 확산 방법이다.  

- IPC$(관리자) 패스워드 취약점(유추하기 쉬운 패스워드로 인한 감염)  
- RPC DCOM 취약점(MS03-026)  
- RPC Locator 취약점(MS03-001)  
- IIS 사용자만 해당 WebDAV 취약점(MS03-007)  

*웜이 확산 동작을 수행할때는 시스템이 과부하 걸릴 수 있으며, 특히 TCP 9900, 135, 445  
을 사용하여 확산되는데, 이 포트에서 트래픽이 상당히 증가할 수 있다.  
==============================================================================================================

- [감염 후 증상]  
1.웜에 감염되면 윈도우 시스템 폴더에 다음의 파일명으로 웜의 복사본을 생성한다.  
- scvhost.exe (201,216 바이트) 
- 바이로봇 엔진버전 2003-09-10.01 버전부터 진단 및 치료(웜 파일 삭제) 가능하다.  
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2004.03.08(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 19:00 

- 영업관리 분석
- 반품관리  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.03.09(화) 작업 ■■■■■■■■■■■■■■■■ 
---> 07:10 ~ 19:00 

- 영업관리 분석
- 반품관리  
/SaleMgr/com/i3shop/ejb/BizMgr/SaleMgrBean.java 에서 @@@@@@@@	// 반품접수일자 추가 
------------------------------------------------------------------------------------------------------------------------------ 

public Hashtable update(Hashtable inputHash) throws Err {
	SQL +=  "  RETURNACCEPT_DT = sysdate WHERE " +   // 반품접수일자 추가 
}  
==============================================================================================================

- 대금정산시스템 화면 설계 
매입내역조회, 정산관리, 세금계산서 취합 관리, 송금관리 
http://int.i3shop.com/login/login.jsp(210.123.133.108) admin/bukwin2k 
==> jdbc:oracle:thin:@211.233.5.110:1521:iiishop IIISHOP/IIISHOP 
http://210.123.133.56 admin/admin 
==> jdbc:oracle:thin:@211.233.5.110:1521:i3shop iiishop/i3shop 
==============================================================================================================

SELECT * FROM T_MEIP_JUNGSAN 
SELECT * FROM T_STOREIN -- 입고정보 
SELECT * FROM T_STOREIN_DTL -- 입고상품정보 
SELECT * FROM T_STOREIN_RI -- 입고반품정보 
SELECT * FROM T_STOREIN_RI_DTL -- 입고반품상품정보  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.03.10(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 23:00 

- 영업관리 분석
- 반품관리  
dlog( "[SaleMgrBean.java]::[setOrderStsProdure()]=====>\n"+ SQL ); 
dlog( "[SaleMgrBean.java]::[getReturnOrderList()]:: [p_order_dt]"+ p_order_dt ); 
==============================================================================================================

-- 반품 접수일자 기록 
String p_order_sts  = (String)inputHash.get("p_order_sts"); 
if( p_order_sts.equals("22")) {  // 주문상태가 반품접수 이면(반품 접수일자 기록) 
	SQL += "  , RETURNACCEPT_DT =  TO_CHAR ( SYSDATE , 'YYYYMMDD')  WHERE   "; 
}  else { 
	SQL += " WHERE  "; 
} 
SQL +=  "   COMPANY_CD = ? AND MERCHANT_CD = ? AND ORDER_DT = ? AND ORDER_NO = ?  "; 
==============================================================================================================

-- 반품회수일자 기록 
if( p_ship_sts.equals("22")) { // 배송상태가 물품회수대기(21) 이면(반품회수일자 기록) 
SQL +=  "  , RETURNRECALL_DT =  TO_CHAR ( SYSDATE , 'YYYYMMDD') WHERE      "; 
} else { 
SQL +=  " WHERE "; 
} 
SQL +=  "  COMPANY_CD = ? AND MERCHANT_CD = ? AND ORDER_DT = ? AND ORDER_NO = ? AND SEQ_NO = ?  "; 
==============================================================================================================

- 실제 웹 서버 --- 
\\211.233.5.108\i3shop i3shop/i3shop1085974 
-------------------------------------------------------------------------------------------------------------- 

- EJB, Bean 등록방법
A. Bean 등록 방법  @@@@@@@@@@@ 
C:\i3shop\Int\BizMgrBean\com\i3shop\dao\BizMgr 
OrderDAO.java OrderDtlDAO.java 파일 수정(복사) 

-- Bean 등록 방법 
eclipse에서 내보내기 -> jar 파일 
로컬 PC C:\i3shop\intLib에 내보냄 
로컬 PC C:\orion2\lib에 내보냄 
BizMgr.jar 생성(복사) 
-------------------------------------------------------------------------------------------------------------- 
\\211.233.5.108\i3shop\src\bean\BizMgrDAO\com\i3shop\dao\BizMgr 
OrderDAO.java OrderDtlDAO.java 파일 덮어 쓰기 
\\211.233.5.108\websphere\lib\app 
BizMgr.jar 파일 덮어 쓰기  
==============================================================================================================

B. EJB 등록 방법 =========> 211.233.5.108 에서 @@@@@@@@@@@  ==> 현재 (210.123.133.56)  
210.123.133.56 에서 @@@@@@@@@@@  ==> 현재 여기서 AccMgr.jar 파일을 만든 후 211.233.5.108에 붙여 넣음 
-------------------------------------------------------------------------------------------------------------- 

1. C:\i3shop\Int\IntEjb\AccMgr\com\i3shop\ejb\MisMgr\AccMgrBean.java 수정  
2. \\210.123.133.56\i3shop\src\ejb\AccMgrEJB 로컬에서 아래 3개 파일을 복사하여 붙여 넣기함 
AccMgr.java AccMgrBean.java AccMgrHome.java 
3. 터미널 서버 연결(Ztem) 
IP: 210.123.133.56 i3shop/dacosystem 
4. 컴파일 하기 
[i3shop@newint i3shop]$  su 
[i3shop@newint i3shop]$  i3shop566414 
[i3shop@newint i3shop]# cd src/ejb/AccMgrEJB 
[i3shop@newint i3shop]# ./build.sh AccMgr 
.jar 파일 생성됨(---> \\210.123.133.56\i3shop\component\ejb\AccMgr.jar 파일로 만들어 짐) 
\\211.233.5.108\websphere\installedApps\i3shop.ear 파일(AccMgr.jar) 붙여 넣기 
5. .108서버 Websphere 종료 후 재시작 
6. 디버깅 --> 터미널 서버 연결(Ztem) 
[i3shop@newint i3shop i3shop]$  cd /opt/WebSphere/AppServer/logs 
[i3shop@newint i3shop logs]$ tail -f Default_Server_stdout.log 
==============================================================================================================

not found: java.lang.Exception: com.i3shop.ejb.MisMgr.AccMgr: method getBuyingRemittance(Ljava/util/Hashtable;)Ljava
/util/Hashtable; not found 

-- 칼럼 삭제  --------- 
ALTER TABLE T_ORDER drop column RETURNACCEPTDATE; 

-- 칼럼 추가  --------- 
ALTER TABLE T_ORDER add ( 
	RETURNACCEPT_DT    CHAR (8) 
); 
-------------------------------------------------------------------------------------------------------------- 

-- 칼럼 삭제  --------- 
ALTER TABLE T_ORDER_DTL drop column RETURNRECALLDATE; 

-- 칼럼 추가  --------- 
ALTER TABLE T_ORDER_DTL add ( 
	RETURNRECALL_DT   CHAR (8) 
);  
============================================================================================================== 

■■■■■■■■■■■■■■■■■■ 2004.03.11(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 23:00 

- 영업관리 분석
- 반품관리(실서버 등록) 
- 사업지원2팀: 한승태 대리(9058) 
============================================================================================================== 

- T_ORDER_DTL: 주문상세정보 
RETURNRECALL_DT 반품회수완료일(접수취소일) 
RETURNRECALL_DT 반품회수취소일 
-------------------------------------------------------------------------------------------------------------- 

- 입금 확인 
/BizMgr/SaleMgr/WebOrderMgr/standByReceiptsP.jsp 
-------------------------------------------------------------------------------------------------------------- 

logUtil.dlog( "orderDtlB.jsp 조회조건 : " + inputHash.toString() ); 
dlog( "[SaleMgrBean.java]::[setOrderStsProdure()]=====>\n"+ SQL);  
dlog( "[SaleMgrBean.java]::[update()]::[p_storeout_dt]"+ p_storeout_dt); 
dlog( "[SaleMgrBean.java]::[update()]::[p_storeout_no]"+ p_storeout_no); 
dlog( "[SaleMgrBean.java]::[update()]=====>\n"+ SQL); 
============================================================================================================== 

■■■■■■■■■■■■■■■■■■ 2004.03.12(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 23:00 

- 영업관리 분석
- 입금확인 수정 
- 배송건수 2건 발생 오류 수정 
-------------------------------------------------------------------------------------------------------------- 

dlog( "[OrderDAO.java]::[update()]::[p_merchant_cd]"+ p_merchant_cd); 
dlog( "[OrderDAO.java]::[update()]::[p_order_dt]"+ p_order_dt); 
dlog( "[OrderDAO.java]::[update()]::[p_order_no]"+ p_order_no); 

dlog( "[SaleMgrBean.java]::[update()]::[p_order_dt_from]"+ p_order_dt_from); 
dlog( "[SaleMgrBean.java]::[update()]::[SQL]=====>\n"+ SQL); 
============================================================================================================== 

-- 1개 이상의 출고 데이타값 조회 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
select a, b, c, d 
from 테이블 
group by a, b, c, d 
having count( * ) > 1 
-------------------------------------------------------------------------------------------------------------- 

SELECT COMPANY_CD, MERCHANT_CD, STOREOUT_DT, STOREOUT_NO  
FROM T_STOREOUT 
GROUP BY  COMPANY_CD, MERCHANT_CD, STOREOUT_DT, STOREOUT_NO  
HAVING COUNT(*) > 1 
WHERE STOREOUT_DT >='20040301'  
AND STOREOUT_DT <='20040311' 
============================================================================================================== 

SELECT COMPANY_CD, MERCHANT_CD, STOREOUT_DT, STOREOUT_NO, SEQ_NO,  
RECV_MERCHANT_CD, RECV_DT, RECV_NO, RECV_DTL_SEQ_NO, ITEM_CD, 
RECV_MERCHANT_CD, RECV_DT, RECV_NO, RECV_DTL_SEQ_NO, ITEM_CD, 
ITEM_NM, ITEM_SHORT_NM, DEPART1_CD, DEPART2_CD, DEPART3_CD, 
MFG_NM, UNIT_CD, MODEL_NM, ITEM_SPEC, EMPTY_ITEM_CL, 
TAX_YN, TAX_RATE, FEE_ITEM_YN, FEE_RATE, FEE, 
ENTR_NO, BUYING_PRICE, RECV_ORD_PRICE, RECV_ORDER_QTY, RECV_ORDER_AMT,  
SP_PRICE, QTY, AMT, REAL_STOREOUT_DT, STOREOUT_ITEM_STS, 
SETTLE_YN, SETTLE_DT, REG_ID, REG_IP, REG_DT, 
UP_ID, UP_DT, UP_IP 
FROM T_STOREOUT_DTL 
GROUP BY  COMPANY_CD, MERCHANT_CD, STOREOUT_DT, STOREOUT_NO, SEQ_NO, 
RECV_MERCHANT_CD, RECV_DT, RECV_NO, RECV_DTL_SEQ_NO, ITEM_CD, 
RECV_MERCHANT_CD, RECV_DT, RECV_NO, RECV_DTL_SEQ_NO, ITEM_CD, 
ITEM_NM, ITEM_SHORT_NM, DEPART1_CD, DEPART2_CD, DEPART3_CD, 
MFG_NM, UNIT_CD, MODEL_NM, ITEM_SPEC, EMPTY_ITEM_CL, 
TAX_YN, TAX_RATE, FEE_ITEM_YN, FEE_RATE, FEE, 
ENTR_NO, BUYING_PRICE, RECV_ORD_PRICE, RECV_ORDER_QTY, RECV_ORDER_AMT,  
SP_PRICE, QTY, AMT, REAL_STOREOUT_DT, STOREOUT_ITEM_STS, 
SETTLE_YN, SETTLE_DT, REG_ID, REG_IP, REG_DT, 
UP_ID, UP_DT, UP_IP 
HAVING COUNT(*) > 1 
WHERE STOREOUT_DT >='20040301'  
AND STOREOUT_DT <='20040311' 
============================================================================================================== 

- 접수 취소:  
본인 --> 오늘 다시 구매 가능 
call 센타 --> 오늘 다시 구매 불가능 
============================================================================================================== 

■■■■■■■■■■■■■■■■■■ 2004.03.13(토) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 18:30 

- 영업관리 분석
- 대금정산시스템 화면 설계 
매입내역조회, 정산관리, 세금계산서 취합 관리, 송금관리 
==============================================================================================================

dlog( "[SaleMgrBean.java]::[getTempPoDtlList()]::[findCond]"+ findCond); 
dlog( "[SaleMgrBean.java]::[getTempPoDtlList()]::[SQL]=====>\n"+ SQL); 
JNDI 등록 객체호출을 실패했습니다. 
javax.naming.NameNotFoundException: BizMgr/BuyingMgr not found in IntEar 
----> C:\i3shop\intLib/MisMgr.jar를 잘못 내보내기 했기 때문(다시 내보내기 함) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.03.15(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:15 ~ 22:00 

- 영업관리 분석
A. 회계 관리 대금정산시스템 화면 분석(기존 회계관리에 존재) 
1. 매입내역 확인(T_STOREOUT_DTL, T_SOTREIN_DTL, T_STOREIN_RI_DTL 테이블 사용) 
저장- 정산여부, 정산일자 갱신 
2. 매입송금 입력속도가 느림 
==============================================================================================================

dlog( "[AccMgrBean.java]::[getBuyingRemittance()]::[findCond]"+ findCond); 
dlog( "[AccMgrBean.java]::[getBuyingRemittance()]::[SQL]=====>\n"+ SQL); 
==============================================================================================================

- 반품회수 취소 Query
-- 반품회수취소 상품 확인 조회 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
SELECT A.ORDER_NO, A.ORDER_STS, A.UP_DT, A.RETURNACCEPT_DT, B.SEQ_NO, B.SHIP_STS, B.QTY, B.REAL_QTY, B.RETURNRECALL_DT 
FROM T_ORDER A, T_ORDER_DTL B 
WHERE  A.COMPANY_CD = B.COMPANY_CD 
	AND A.MERCHANT_CD = B.MERCHANT_CD 
	AND A.ORDER_DT = B.ORDER_DT 
	AND A.ORDER_NO = B.ORDER_NO 
	--AND B.REAL_QTY = '0' 
	AND A.ORDER_STS like '23%'       --// 주문상태(물품회수완료) 
	AND A.ORDER_TP = '03'   --// 주문유형(반품주문) 
	AND B.SHIP_STS like '27%'       --//  배송상태 변경(반품불가:27) 
	AND B.ORDER_DT IS NOT NULL 
	AND A.UP_DT IS NOT NULL 
	AND B.ORDER_DT >= '20040312'  
	AND B.ORDER_DT <= '20040315'   
--==============================================================================================================

 -- 반품회수취소 상품 확인 조회_2 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
SELECT ORDER_NO, UP_DT, SEQ_NO, SHIP_STS, QTY, REAL_QTY, RETURNRECALL_DT 
FROM  T_ORDER_DTL 
WHERE  SHIP_STS like '27%'       --//  배송상태 변경(반품불가:27)  
	AND ORDER_DT >= '20040313'  
	AND ORDER_DT <= '20040315'   
--==============================================================================================================

-- 반품 회수 취소 저장 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
UPDATE T_ORDER_DTL 
SET UP_DT = sysdate , 
	ORDER_DT = '20040311',  
	ORDER_NO = '00179',  
	SHIP_STS = '27',  --// 배송상태(SHIP_STS)가(반품불가:27)로 변경 
	REAL_QTY = '0', --// 수량 '0'으로 변경 
	MERCHANT_CD = '0001', 
	COMPANY_CD = '01',  
	SEQ_NO = '1'  
WHERE COMPANY_CD =  '01'  
	AND MERCHANT_CD = '0001' 
	AND ORDER_DT =  '20040311'  
	AND ORDER_NO = '00179'  
	AND SEQ_NO =  '1'  
--==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2004.03.16(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 21:00 

- 영업관리 분석
- 대금정산시스템 화면 설계 
매입내역조회 --> 세금계산서 취합 --> 정산관리-->  송금관리  
==============================================================================================================

- 매입정산(T_MEIP_JUNGSAN), 매입정산 상세정보(T_MEIP_JUNGSAN_DTL) 테이블 생성 
- 기존 대금정산시스템의 속도 저하(많은 테이블을 사용하여 조인) 

회계팀 김근배 과장과 회의(16:00 ~ 16:40) 
정확한 업무 분석을 위해 
매입내역 현황(정산구분 불필요, 세금계산서 유무 추가요) 

- 매입내역 확인 조회 2번 수정(/AccMgr/fundsMgt/remittance/buyingRemittanceP.jsp) 
==============================================================================================================

- EJB, Bean 등록방법
A. Bean 등록 방법  @@@@@@@@@@@ 
C:\i3shop\Int\BizMgrBean\com\i3shop\dao\BizMgr 
OrderDAO.java OrderDtlDAO.java 파일 수정(복사) 

-- Bean 등록 방법 
eclipse에서 내보내기 -> jar 파일 
로컬 PC C:\i3shop\intLib에 내보냄 
로컬 PC C:\orion2\lib에 내보냄 
BizMgr.jar 생성(복사) 
--------------------------------------------------------------------------------------------------------------  

\\211.233.5.108\i3shop\src\bean\BizMgrDAO\com\i3shop\dao\BizMgr 
OrderDAO.java OrderDtlDAO.java 파일 덮어 쓰기 
\\211.233.5.108\websphere\lib\app 
BizMgr.jar 파일 덮어 쓰기  
==============================================================================================================

B. EJB 등록 방법  @@@@@@@@@@@ 
C:\i3shop\Int\IntEjb\BuyingMgr\com\i3shop\ejb\BizMgr 
BuyingMgrBean.java  수정 
eclipse에서 프로젝트(P) --> 다시빌드(L) 
-------------------------------------------------------- 

\\211.233.5.108\i3shop\src\ejb\BuyingMgr에 3개 파일 붙어 넣기 
BuyingMgr.java BuyingMgrBean.java BuyingMgrHome.java 

- 터미널 서버 연결(Ztem) 
IP: 210.123.133.108 i3shop/i3shop1085974 
-------------------------------------------------------- 

> cd /i3shop/src/ejb  
i3shop/src/ejb> ./build.sh BuyingMgr 

.jar 파일 생성됨(---> \\211.233.5.108\i3shop\component\ejb\.BuyingMgr.jar 파일로 만들어 짐) 
\\211.233.5.108\websphere\installedApps\i3shop.ear 파일(BuyingMgr.jar) 붙여 넣기
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.03.17(수) 작업 ■■■■■■■■■■■■■■■■
---> 08:00 ~ 20:30 

- 영업관리 수정
- 대금정산시스템 화면 설계 
마감매입(T_MAGAM_MEIP) TB Sprocedure로 만듬  --> 거래처 세금계산서 관리 --> 거래처 송금 관리  
=============================================================================================================

- 거래발생유형코드(MEIP_GUBUN) 
쇼핑몰 R&F - 01 
L&B - 02 
물류 R&F - 03 
L&B - 04 
마트 마트 - 05  
==============================================================================================================

-- 매입내역 확인 조회(상단 Grid) 
SELECT  AAA.ENTR_NO, 
( SELECT  ENTR_NM FROM T_ENTERPRISE 
WHERE COMPANY_CD = '01' AND ENTR_NO = AAA.ENTR_NO) ENTR_NM, 
SUM(AAA.BUYING_AMT) AS BUYING_AMT,   -- 공급가액 
SUM(AAA.BUYING_VAT) AS BUYING_VAT,   -- 부가세 
SUM(AAA.TOTAL_AMT) AS TOTAL_AMT,   -- 합계금액 
DD.BANK_CD,   -- 입금은행CD 
( SELECT ENTR_NM FROM T_ENTERPRISE_CODE 
WHERE ENTR_CD = DD.BANK_CD) BANK_NM, 
DD.ACCOUNT_NO,   -- 계좌번호 
DD.DEPOSITOR   -- 예금주 
FROM( SELECT  AA.ENTR_NO ENTR_NO, AA.BUYING_AMT BUYING_AMT, 
AA.BUYING_VAT BUYING_VAT, AA.TOTAL_AMT TOTAL_AMT 
FROM( 
SELECT  A.ENTR_NO ENTR_NO, AX.ENTR_NM, 
SUM(CASE WHEN A.TAX_YN = 'Y' THEN NVL(A.QTY,0)  * NVL(A.GONGUP_AMT,0) /1.1  
 WHEN A.TAX_YN = 'N' THEN NVL(A.QTY,0)  * NVL(A.GONGUP_AMT,0) END) AS BUYING_AMT,  --공급가액(부가세 제외) 
SUM(CASE WHEN A.TAX_YN = 'Y' THEN NVL(A.QTY,0)  * NVL(A.GONGUP_AMT,0) / 11 
 WHEN A.TAX_YN = 'N' THEN 0 END ) AS BUYING_VAT,     --부가세 
SUM(NVL(A.QTY,0) * NVL(A.GONGUP_AMT,0)) AS TOTAL_AMT  --합계금액 
FROM( SELECT ENTR_NO, ENTR_NM FROM T_ENTERPRISE 
WHERE COMPANY_CD = '01' AND SETTLE_TP_CD = '01') AX, 
T_MAGAM_MEIP A 
WHERE A.ENTR_NO = AX.ENTR_NO 
AND A.COMPANY_CD = '01' 
AND A.MERCHANT_CD = '0001'  
AND A.MAGAM_DATE >= '20040301' 
AND A.MAGAM_DATE <= '20040318' 
GROUP BY A.ENTR_NO) AA 
) AAA, 
( SELECT ENTR_NO,BANK_CD,ACCOUNT_NO,DEPOSITOR 
FROM T_ENTR_BANK_ACCOUNT -- 거래처 은행계좌정보TB 
WHERE COMPANY_CD = '01' ) DD 
WHERE AAA.ENTR_NO = DD.ENTR_NO 
GROUP BY AAA.ENTR_NO,DD.BANK_CD,DD.ACCOUNT_NO,DD.DEPOSITOR 
================================================================================================== 

-- 매입내역 확인 조회(하단 Grid) 
SELECT  * FROM T_MAGAM_MEIP 
WHERE  COMPANY_CD = '01'                                                      
AND MERCHANT_CD = '0001'        
AND MAGAM_DATE >= '20040315'   
AND MAGAM_DATE <= '20040315'        
AND ENTR_NO = '00046' -- 거래처NO 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.03.18(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 23:00 

- 영업관리 수정
- 대금정산시스템 화면 설계 
마감매입(T_MAGAM_MEIP) TB Sprocedure로 만듬  --> 거래처 세금계산서 관리 --> 거래처 송금 관리  
==============================================================================================================

- 회계 회의(09:10 ~ 10:10) 
- 거래발생유형코드(MEIP_GUBUN) 최종 합의 
- 화면 구성도 일부 수정 
==============================================================================================================

-- 사용자의 전체메뉴를 반환한다.(권한이 있는 메뉴만 전시됨, 시스템구분별 조회가능)  @@@@@@@@@@@@@ 
SELECT A.*, LEVEL MENU_LEVEL 
FROM(  SELECT DISTINCT MENU_NO,PMENU_NO,MENU_NM, 
SUBSYSTEM_CD,PRG_ID,PROGRAM_YN,PRG_PATH, 
DISPLAY_ORDER 
FROM T_MENUINFO 
CONNECT BY PRIOR PMENU_NO = MENU_NO 
START WITH MENU_NO IN ( 
  SELECT MENU_NO 
  FROM T_USERAUTHORITY 
  WHERE USER_ID = 'admin') 
ORDER BY PMENU_NO, DISPLAY_ORDER 
) A 
CONNECT BY PRIOR A.MENU_NO = A.PMENU_NO 
START WITH A.PMENU_NO = 0 
--==============================================================================================================

-- 마감매입 정보 조회 Data 생성 @@@@@ 
INSERT INTO T_MAGAM_MEIP(MAGAM_DATE, COMPANY_CD, MERCHANT_CD, MAGAM_GUBUN, MEIP_GUBUN, 
ENTR_NO, SEQ_NO, MEIP_NO, ITEM_CD, QTY, 
TAX_YN, MEIP_DANGA, GONGUP_DANGA, TAX_DANGA, MEIP_AMT,  
GONGUP_AMT, TAX_AMT, SALE_DANGA, SALE_GONGUP_DANGA, SALE_TAX_DANGA,  
SALE_AMT, SALE_GONGUP_AMT, SALE_TAX_AMT, RESELLER_DANGA, ILBAN_DANGA,  
SHIP_CHARGE_DANGA, SHIP_CHARGE_AMT, SHIP_BILL_DANGA, SHIP_BILL_AMT, PV, 
BV, EMONEY, CMONEY, RNFMONEY, BANKPV,  
DIRECT_CMONEY, DIRECT_MONEY, SALE_BONUS, BILL_CHECK_YN, BILL_YN)   
SELECT A.REAL_STOREOUT_DT AS MAGAM_DATE, A.COMPANY_CD AS COMPANY_CD, A.RECV_MERCHANT_CD 
AS MERCHANT_CD, '01'AS MAGAM_GUBUN, '01'AS MEIP_GUBUN, 
A.ENTR_NO AS ENTR_NO, A.SEQ_NO AS SEQ_NO, '00001'AS MEIP_NO, A.ITEM_CD AS ITEM_CD, NVL(A.QTY,0)AS QTY, 
A.TAX_YN AS TAX_YN, NVL(A.BUYING_PRICE,0)AS MEIP_DANGA,  
CASE WHEN A.TAX_YN = 'Y' THEN (NVL(A.QTY,0) * NVL(A.BUYING_PRICE,0)/1.1)  
 WHEN A.TAX_YN = 'N' THEN (NVL(A.QTY,0) * NVL(A.BUYING_PRICE,0)) END AS GONGUP_DANGA,   
'0'AS TAX_DANGA, '0'AS MEIP_AMT, 
'0'AS GONGUP_AMT, '0'AS TAX_AMT, '0'AS SALE_DANGA, '0'AS SALE_GONGUP_DANGA, '0'AS SALE_TAX_DANGA, 
'0'AS SALE_AMT, '0'AS SALE_GONGUP_AMT, '0'AS SALE_TAX_AMT, '0' AS RESELLER_DANGA, '0'AS ILBAN_DANGA,  
'0'AS SHIP_CHARGE_DANGA, '0'AS SHIP_CHARGE_AMT, '0'AS SHIP_BILL_DANGA, '0'AS SHIP_BILL_AMT, '0'AS PV, 
'0'AS BV, '0'AS EMONEY, '0'AS CMONEY, '0'AS RNFMONEY, '0'AS BANKPV, 
'0'AS DIRECT_CMONEY, '0'AS DIRECT_MONEY, '0'AS SALE_BONUS, 'N'AS BILL_CHECK_YN, 'N'AS BILL_YN 
FROM T_STOREOUT_DTL@IIISHOP_MAIN A, T_ORDER@IIISHOP_MAIN C                              
WHERE A.COMPANY_CD = C.COMPANY_CD                  
AND A.RECV_MERCHANT_CD = C.MERCHANT_CD                              
AND A.RECV_DT = C.ORDER_DT                               
AND A.RECV_NO = C.ORDER_NO               
AND A.COMPANY_CD = '01'                         
AND A.MERCHANT_CD = '0001'                         
AND A.ENTR_NO = '00046'    -- 거래처NO                                                 
AND A.SETTLE_YN = 'N'      -- 정산여부('N')                                   
AND A.REAL_STOREOUT_DT >= '20040315'                                          
AND A.REAL_STOREOUT_DT <= '20040315'   
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.03.19(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 05:00 

- 영업관리 수정
- 대금정산시스템 화면 설계 
마감매입(T_MAGAM_MEIP) TB Sprocedure로 만듬  --> 거래처 세금계산서 관리 --> 거래처 송금 관리  
==============================================================================================================

- 거래처 세금계산서 관리 개발(buyingRemittanceP.jsp) 
---------------------------------------------------------------------------------------- 

clearDataSet( f1.ds_list_d);  // 자동으로 하위 Grid 삭제 

function clearDataSet( dataSet ){ /*** 데이터 셋 청소   */ 
	dataSet.ClearData(); 
} 
  
==============================================================================================================

saveBuyingRemittanceMS.jsp  에서 에러  
----------------------------------------------------------------------------------------

// DB 칼럼과 일치하지 않은 필드명 존재 
 Exception에러 발생 : java.lang.IndexOutOfBoundsException:  
sColumn index[-1] is out of the range of the count[20] of GauceDataColumn! 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.03.20(토) 작업 ■■■■■■■■■■■■■■■■
---> 09:00 ~ 18:00 

- 영업관리 수정
- 대금정산시스템 화면 설계 
마감매입(T_MAGAM_MEIP) TB Sprocedure로 만듬  --> 거래처 세금계산서 관리 --> 거래처 송금 관리  
==============================================================================================================

- 거래처 세금계산서 관리(buyingRemitCheckP.jsp) 개발 
-------------------------------------------------------------------------------------------------------------------

- 원인: 파람(param) 번호를 순서대로 잘 못 넣어줌 
java.sql.SQLException: ORA-01008: 일부 변수가 결합되지 않았습니다  
param.put(3 ,p_settle_tp_cd,Code.DB_VARCHAR); // 정산 
param.put(3 ,p_company_cd,Code.DB_VARCHAR); 
==============================================================================================================

- 원인: 칼럼명이 없는 경우 
Exception에러 발생 : java.lang.IndexOutOfBoundsException:  
Column index[-1] is out of the range of the count[15] of GauceDataColumn! 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.03.22(월) 작업 ■■■■■■■■■■■■■■■■
---> 08:00 ~ 23:00 

- 영업관리 수정
- 대금정산시스템 화면 설계 
마감매입(T_MAGAM_MEIP) TB Sprocedure로 만듬  --> 거래처 세금계산서 관리 --> 거래처 송금 관리  
==============================================================================================================

-  거래처 송금 관리(buyingRemittanceP.jsp)  개발  
- 세금계산서 금액 공식 
공급가액(매입단가*수량/1.1) 
부가세((매입단가*수량)- 공급가액) 
합계금액(매입단가*수량) 
-------------------------------------------------------------------------------------------------------------------

( SELECT NVL(MAX(NVL(BILL_CHECK_DT_SEQ,0)),0)+1" +  // SEQ 넘버 
FROM  T_MAGAM_MEIP) 
==============================================================================================================

- TRUNC(n[,m])  
용도 : n을 소숫점아래 m자리까지남기고 절사한다.  
m의 사용법은 ROUND 함수의 경우와 동일  
예 : SELECT TRUNC(12.645,2) FROM DUAL  
==============================================================================================================

-- 구매 가능 수량 조회 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
SELECT   B.ITEM_CD, B.TIMES_CD, B.COMPANY_CD, B.STORE_CD, B.CATEGORY_CD, B.MERCHANT_CD, 
		 NVL(MAX(B.SALE_MAX_QTY),0) AS LIMIT_QTY, NVL(SUM(A.QTY),0) AS BUYED_QTY, -- (구매한정 수량, 실제 구매한 수량의 합) 
		(NVL(MAX(B.SALE_MAX_QTY),0) - NVL(SUM(A.QTY),0))AS POS_QTY -- 구매 가능 수량의 합 
		 --, MAX(C.ST_DT), MAX(C.ED_DT), SYSDATE 
FROM  T_BuyCount A, T_BuyLimitCount B, T_BuyTimes C 
WHERE B.ITEM_CD(+) = A.ITEM_CD 
  AND B.TIMES_CD = C.TIMES_CD  
  AND A.TIMES_CD = '000003' 
  --AND B.ITEM_CD(+) = A.ITEM_CD 
  AND A.MNO(+) = '92201'   -- TEST01 사용자(테스트용): '92201' 
GROUP BY B.ITEM_CD, B.TIMES_CD, A.MNO, B.COMPANY_CD, B.STORE_CD, B.CATEGORY_CD, B.MERCHANT_CD 
--==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.03.23(화) 작업 ■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 23:00 

- 영업관리 수정
- 대금정산시스템 화면 설계 
마감매입(T_MAGAM_MEIP) TB Sprocedure로 만듬  --> 거래처 세금계산서 관리 --> 거래처 송금 관리  
==============================================================================================================

-  거래처 송금 관리(buyingRemittanceP.jsp)  개발
점명  ==> MERCHANT_CD 조회 
검색조건(매장명)  ==> MEIP_GUBUN 조회 
==============================================================================================================

L&B(마트포함)는 dep940을 제외한 모든 상품입니다. 
R&F상품 dep940은 대중소 한개만 있습니다. 

if(p_store_cd.equals("02")) {  //물류(R&F매장) 이면  
SQL +=  "  AND A.DEPART1_CD = '940' "; // depart_cd1 조회 
} else if(p_store_cd.equals("03")) { //물류(L&B매장) 이면  
SQL +=  "  AND A.DEPART1_CD <> '940' "; // depart_cd1 조회  
} 
==============================================================================================================

Return Hash : {mcnt=1, yn=Y} 
[AccMgrBean.java]::[updateBuyingRemittance()]:: Return Hash : {mcnt=0, yn=N, txcnt=1}
 dlog("[AccMgrBean.java]::[updateBuyingRemittance()]::[p_entr_no]"+ getData("p_entr_no",irowHash)); 
--==============================================================================================================
  
-  반품 접수 Query
-- 반품 접수 저장 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
UPDATE T_ORDER 
SET UP_DT = sysdate , 
	ORDER_STS = '22',	--// 주문상태 : 22 반품접수 
	ORDER_NO = '00179',   
	MERCHANT_CD = '0001', 
	COMPANY_CD = '01',  
	RETURNACCEPT_DT = '20040311',	--// 반품접수일자 갱신 
	SEQ_NO = '1'  
WHERE COMPANY_CD =  '01'  
	AND MERCHANT_CD = '0001' 
	AND ORDER_DT =  '20040309'  
	AND ORDER_NO = '00657'  
--==============================================================================================================
  
-- 반품 회수 저장 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
UPDATE T_ORDER_DTL 
SET UP_DT = sysdate , 
	ORDER_DT = '20040311',  
	ORDER_NO = '00179',  
	SHIP_STS = '22',  --// 배송상태(SHIP_STS)가 (반품접수:22)로 변경  
	MERCHANT_CD = '0001', 
	COMPANY_CD = '01',  
	RETURNRECALL_DT = '20040311', --// 반품회수완료일(회수취소일) 갱신 
	SEQ_NO = '1'  
WHERE COMPANY_CD =  '01'  
	AND MERCHANT_CD = '0001' 
	AND ORDER_DT =  '20040311'  
	AND ORDER_NO = '00179'  
	AND SEQ_NO =  '1'  
--==============================================================================================================

-- 반품 회수 취소 저장 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
UPDATE T_ORDER_DTL 
SET UP_DT = sysdate , 
	ORDER_DT = '20040311',  
	ORDER_NO = '00179',  
	SHIP_STS = '27',  --// 배송상태(SHIP_STS)가 (반품불가:27)로 변경 
	REAL_QTY = '0', --// 수량 '0'으로 변경 
	MERCHANT_CD = '0001', 
	COMPANY_CD = '01',  
	RETURNRECALL_DT = '20040311', --//  반품회수완료일(회수취소일) 갱신 
	SEQ_NO = '1'  
WHERE COMPANY_CD =  '01'  
	AND MERCHANT_CD = '0001' 
	AND ORDER_DT =  '20040311'  
	AND ORDER_NO = '00179'  
	AND SEQ_NO =  '1'  
--==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.03.24(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 19:00 

- 영업관리 수정
- 대금정산시스템 화면 설계 
마감매입(T_MAGAM_MEIP) TB Sprocedure로 만듬  --> 거래처 세금계산서 관리 --> 거래처 송금 관리  
==============================================================================================================

- 거래처 세금계산서 관리 
EJB에서 데이타 저장은 되었는데 실DB에서 저장이 안 되는 문제 
ENTR_NO CHAR(6)으로 설정해서 마지막 자리에서 널이 생김 CHAR(5)로 수정 

[p_entr_no]00485
SQL += " AND ENTR_NO =  ? " ; //거래처번호 
urowparam.put(8,getData("p_entr_no",irowHash),Code.DB_VARCHAR); //거래처번호  
==============================================================================================================

\\211.233.5.100 administrator/ozoz100# 
==============================================================================================================

- DB 연결을  
C:\i3shop\OZProduct\OZServer25\conf에서 @@@@@@@@ 
-------------------------------------------------------------------------------------------------------- 
newmis.vendor=oracle 
newmis.serverAddress=210.123.133.51 
newmis.dsn=thin 
newmis.portNo=1521 
newmis.sid=I3SHOPDB 
newmis.user=iiishop 
newmis.password=iiishop 
newmis.maxconns=30 
newmis.initconns=5 
newmis.timeout=10 
==============================================================================================================
###    End.  
### 1. I3SHOPDB =   iiishop/iiishop #---  통합 Test서버 TNS 연결 DB 환경 

C:\i3shop\OZReport\OZDesigner25\Report\nobless.xml 에서 @@@@@@@@ 
------------------------------------------------------------------------------------------------------------------ 
  
1. I3SHOPDB =   iiishop/iiishop #---  통합 Test서버 TNS 연결 DB 환경 
<OZORACLE NAME="I3SHOPDB" VENDOR="Oracle" SERVERNAME="I3SHOPDB" DBNAME="" DATASOURCENAME="thin" 
USERNAME="iiishop" PASSWORD="iiishop" 
<OZQUERY NAME="Main" MASTERSET="" DBINFOID="I3SHOPDB" SCRIPT="false" MAXROW="0" HIDDEN="false"  
LOADSFIELDINFODYNAMICALLY="false" SDMTYPE="0" SIGN="false" PREPARED="false" HIDEDESIGNTIME="false"> 
------------------------------------------------------------------------------------------------------------------ 

2. IIISHOP =   IIISHOP/IIISHOP #--- 실서버 TNS 연결 DB 환경 
  <OZORACLE NAME="IIISHOP" VENDOR="Oracle" SERVERNAME="IIISHOP" DBNAME="" DATASOURCENAME="thin" 
  USERNAME="IIISHOP" PASSWORD="IIISHOP" 
<OZQUERY NAME="Main" MASTERSET="" DBINFOID="IIISHOP" SCRIPT="false" MAXROW="0" HIDDEN="false"  
LOADSFIELDINFODYNAMICALLY="false" SDMTYPE="0" SIGN="false" PREPARED="false" HIDEDESIGNTIME="false"> 
------------------------------------------------------------------------------------------------------------------ 

ALIASFILENAME="C:\i3shop\OZProduct\OZServer25\conf\db.properties" 
==============================================================================================================  

■■■■■■■■■■■■■■■■■■ 2004.03.25(목) 작업 ■■■■■■■■■■■■■■■■
---> 08:30 ~ 23:00 

- 영업관리 수정
- 대금정산시스템 화면 개발 
1. 매입점 구성 업무 흐름도 
2. 세금계산서 구성 업무 흐름도 
3. 송금 관리 업무 흐름도 
==============================================================================================================

- 오즈 레포트 출력 테스트 
- 거래처 세금계산서 관리 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.03.26(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 23:00 

- 영업관리 수정
- 오즈 레포트 출력 
 \\211.233.5.100 administrator/ozoz100# 

- 도구(T) -> 스크립트 탐색기(S) 
타이틀 밴드1 에서 @@@@@@@@@@@@@ 
global double mamt_dtl; // 매입단가 
global double qty_dtl; // 수량 
global double gongup_dtl; // 공급가액 
global double tax_dtl; // 부가세 
global double total_dtl; // 합계금액 
------------------------------------------------------------------------------------------------------------------ 

- 데이터 밴드2 에서 @@@@@@@@@@@@@ 
::mamt_dtl=::mamt_dtl+#MEIP_AMT#; // 매입단가 
::qty_dtl= ::qty_dtl+#BUYING_QTY#; // 수량 
::gongup_dtl=::gongup_dtl+#GONGUP_AMT#;// 공급가액 
::tax_dtl=::tax_dtl+#TAX_AMT#; // 부가세 
::total_dtl=::total_dtl+#TOTAL_AMT#; // 합계금액 
==============================================================================================================

- 오즈 레포트 조건 Query 출력 문제(오즈에서 p_remittance_yn_SQL 파라미터 설정) 
buyingRemitCheckP.jsp 에서 @@@@@@@@ 
------------------------------------------------------------------------------------------------------------------ 

if(!p_remittance_yn.equals("A")) p_remittance_yn_SQL =  "  AND  A.BILL_YN = ? "; // 송금유무  전체가 아니면 
<param name="connection.args9" value="p_remittance_yn_SQL=<%=p_remittance_yn_SQL%>"> 
==============================================================================================================

- 오즈 에러(실서버 연결) 
서버에 요청한 데이타 모듈을 가져 올 수 없습니다. 
<<Server side message>> 
Error Message : [Error Code : 12503] Error on Data-Module-Binding. 
Error code : 12503 
==============================================================================================================

http://support.i3shop.com/index.jsp B0000360 / p81918  
 http://support.i3shop.com/VendorMgr/SettleInfo/storeOutDtlP.jsp 
System.out.println("[getBuyingRemittanceMListB.jsp]::[p_store_cd]"+ p_store_cd); 
==============================================================================================================

- Support clipse 세팅
1. 다른 컴퓨터에서 불러옴(복사) 
\\210.123.133.24\d$\i3shop\support 
C:\eclipse\eclipse.exe -data C:\CCDOM
2. C:\support에 붙여 넣음 
3. 바탕화면에 eclipse 만듬 
C:\eclipse\eclipse.exe -data C:\support 
4. eclipse 실행 
5. Support(폴더 오른 Click) --> 특성(R) --> JAVA빌드 경로 
라이브러리(L) --> 외부JAR추가(X) 
C:\orion2 
C:\i3shop\intLib 
6. 창(W) --> 환경설정(P) 
JAVA --> 설치된 JRE 
C:\j2sdk1.4.1_05 
Lomboz 
C:\j2sdk1.4.1_05\lib\tools.jar 
Orion  
C:\orion2 
localhost:23791 
-Denvfile=C:\i3shop\i3shop_env\daco.env 
------------------------------------------------------------------------------------------------------------- 

클래스 경로가 완전하지 않아 프로젝트가 빌드되지 못했습니다. 
이 컴파일 단위가 간접적으로 누락된 java.lang.Object 유형을 참조합니다. 
include file problem:  com.daco는 분석할 수 없거나 유형이 아닙니다. 

C:\orion2\config\int-web-site.xml 에서 @@@@@@@@  
------------------------------------------------------------------------------------------------------------- 

 <web-site host="[ALL]" port="5001" display-name="IntWeb"> 
==============================================================================================================  

◇ 실서버(.211.233.5.108) 소스 가져 오기 ====================== 
-- Enitiy 등록 방법 
\\211.233.5.108\i3shop\src\bean  파일 복사 
C:\CCDOM\Ccdom\CcdomBeans\com\i3shop\beans\BizStore  eclipse에서 붙여 넣기 

-- Bean 등록 방법 
\\211.233.5.108\i3shop\src\ejb  폴더 복사 
C:\CCDOM\Ccdom\CcdomEjb eclipse에서 붙여 넣기 

-- web 파일(.jsp) 등록 방법 
\\211.233.5.108\websphere\installedApps\support.ear\support 폴더 복사  
C:\CCDOM\Ccdom\CcdomWeb붙여 넣기 
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2004.03.27(토) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:00 

- 영업관리 수정
- Package 
오라클 데이타베이스에 저장된 관련이 있는 PL/SQL 프로시저(Store Procedure)와  
함수(Function)들의 집합체 
선언부(Specitfication)와 본문(Body)으로 구분 

SQL PLUS 에서 @@@@@@@@  ======> 실행 
------------------------------------------------------------------------------------------------------------- 

SQL> EXECUTE PKG_MEIP_MAGAM.DAY_MEIP('20040101'); 
SQL> EXECUTE PKG_MEIP_MAGAM.DAY_MEIP('20040102'); 
SQL> EXECUTE PKG_MEIP_MAGAM.DAY_MEIP('20040103'); 
SQL> EXECUTE PKG_MEIP_MAGAM.DAY_MEIP('20040104'); 

EXECUTE PKG_MEIP_MAGAM.DAY_MEIP('20040120'); 

EXECUTE PKG_MEIP_MAGAM.DAY_MEIP('20040131'); 

PL/SQL 처리가 정상적으로 완료되었습니다. 
==============================================================================================================

- Clone Job 작업(일정 시각(24:00)이 지나면 자동으로 SP 호출) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.03.28(일) 작업 ■■■■■■■■■■■■■■■■
---> 13:00 ~ 18:00 

- 영업관리 수정
- Package 데이타 생성
SQL> EXECUTE PKG_MEIP_MAGAM.DAY_MEIP('20040104'); 
PL/SQL 처리가 정상적으로 완료되었습니다. 
==============================================================================================================

 - 오즈 에러(실서버 연결) 
실제 JSP를 호출하는 오즈는 .100에서  IIISHOP(211.233.5.110) DB호출 
\\211.233.5.100 administrator/ozoz100# 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.03.29(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 23:00 

- 영업관리 수정
- crontab 개요 
유닉스/리눅스에서 사용하는 작업예약 스케줄 프로그램을 말합니다.  
응용프로그램 실행 파일경로와 시작시간을 등록해 놓으면 그시간에 자동으로 실행되게 하는것이지요  

오라클에서는 job queue라는 넘을 사용하지요.. crontab는 OS level 에서 실행됩니다..  
오라클의 job은 crontab을 대치 할정도의 수준은 되지 못합니다. 
따라서 꼭 필요한 경우가 아니면 사용하지 않거나...  
OS 지원을 사용 하세요. 
=================================================================================================================

- crontab 생성 방법 
1. meip_magam_cron.sh 편집
. /user1/oracle/cron_job/env.sh 
##################################################################### 
# 
# 일별 매입장 마감  저장(일작업) 
# 
# 작성자 : 진태만 
# 작성일자 : 2004/03/29 
# 
##################################################################### 

sqlplus /nolog <<! 
CONNECT iiishop/iiishop 

set serveroutput on size 1000000; 
set timing on; 

CALL PKG_MEIP_MAGAM.DAY_MEIP_INSERT(''); 

EXIT; 
! 
=================================================================================================================

2. FTP로 211.233.5.110(실서버 DB) 접속(oracle/i3shop1105974) 
3. /user1/oracle/cron_job 에 붙어 넣기 
4. zterm(터미널)에서 211.233.5.110(실서버 DB) IIISHOP 연결(oracle/i3shop1105974)  ===> su/타코시스템(영문으로) 
5. 사용중인 cront 편집 
$ cd cron_job 
$ crontab -e 

=============================================> 실행 결과(vi처럼 편집 가능) 

###################################################################### 
# 
# 배치 작업 설정 
# 
# 작성자 : 오범석 
# 작성일 : 2003/08/06 
# 
# 
# 
###################################################################### 
#### 일별 매입장 마감  저장(일작업)    ####  ==============> 추가 
2 1 * * * /user1/oracle/cron_job/meip_magam_cron.sh > /user1/oracle/cron_job/log/meip_magam_cron_log 
#### 월별 회원 정보 저장(월작업)    #### 
2 3 * * * /user1/oracle/cron_job/month_member_cron.sh > /user1/oracle/cron_job/log/month_member_log 
#### 멤버 포인트 정보 저장(일작업)  #### 
#### 승급/수당 처리 수행(일작업)    #### 
3 3 * * * /user1/oracle/cron_job/batch_job.sh > /user1/oracle/cron_job/log/batch_job_log 
0 3 * * * /user1/oracle/cron_job/day_sale_close_cron.sh > /user1/oracle/cron_job/log/day_sale_close.log 
## 영업관리 ## 
1 3 * * * /user1/oracle/cron_job/bizmgr_item_price.sh > /user1/oracle/cron_job/log/bizmgr_item_price.log 
1 2 * * * /user1/oracle/cron_job/day_subul_cron.sh > /user1/oracle/cron_job/log/day_subul_cron.log 
#### 증권번호 처리  #### 
0 8 * * * /user1/oracle/cron_job/reqbill.sh > /user1/oracle/cron_job/log/reqbill_08.log 
0 20 * * * /user1/oracle/cron_job/reqbill.sh > /user1/oracle/cron_job/log/reqbill_20.log 
#### 증권취소처리 
0 9 * * * /user1/oracle/cron_job/cancelbill.sh > /user1/oracle/cron_job/log/cancelbill_09.log 
0 21 * * * /user1/oracle/cron_job/cancelbill.sh > /user1/oracle/cron_job/log/cancelbill_20.log 

#### 오라클 이카이브 로그 삭제  백업 스크립트에서 실행하도록 수정함#### 
####59 2 * * * /user1/oracle/cron_job/clean_log/clean_log > /user1/oracle/cron_job/log/clean_log 

:wq! ==============> 종료(편집이 완료됨) 
=================================================================================================================
  
- The crontab file format 분석  
The crontab file format  
crontab file은 각 entry마다 여섯개의 field로 구성되어있다. 각 필드는 space 나 tab으로 구분한다.  
5      4      *      *      6       /usr/lib/newsyslog  
분필드(0, 59)  시간필드(0,23)  일/월필드(1,31)  월필드(1,12)  일/주필드(0,6)  명령어라인(log를 보여줌) 
* 는 모든을 뜻한다. 

#### 일별 매입장 마감  저장(일작업)    ####  일 경우 
2 1 * * * /user1/oracle/cron_job/meip_magam_cron.sh > /user1/oracle/cron_job/log/meip_magam_cron_log 
매일 오전 1시 2분에 해당작업을 처리하라는 뜻이다. 

#### 증권번호 처리  ####  일 경우 
0 8 * * * /user1/oracle/cron_job/reqbill.sh > /user1/oracle/cron_job/log/reqbill_08.log 
0 20 * * * /user1/oracle/cron_job/reqbill.sh > /user1/oracle/cron_job/log/reqbill_20.log 
매일 오전 8시 0분에 해당작업을 처리하라는 뜻이다. 
매일 오후 8시 0분에 해당작업을 처리하라는 뜻이다. 
==============================================================================================================

- 어제 날짜 세팅  
/AccMgr/fundsMgt/remittance/buyingRemittanceP.jsp 에서 @@@@@@@@ 
---------------------------------------------------------------------------------------------------------------------------- 

Calendar calendar = Calendar.getInstance(); 
String YESTERDAY = null; 
String tmpYY = null; 
String tmpMM = null; 
String tmpDD = null; 

//-- 어제 날짜 -- 
calendar.add(Calendar.DAY_OF_MONTH , -1);  

tmpYY = Integer.toString( calendar.get(Calendar.YEAR) );  
tmpMM = Integer.toString( calendar.get(Calendar.MONTH) + 1 ); 
tmpDD = Integer.toString( calendar.get(Calendar.DAY_OF_MONTH) ); 

if( tmpMM.length() < 2 ) tmpMM = "0" + tmpMM; 
if( tmpDD.length() < 2 ) tmpDD = "0" + tmpDD; 
YESTERDAY = tmpYY + tmpMM + tmpDD; 
==============================================================================================================

- 구매관리/발주 내역 조회에서 발주 내역 삭제 
발주 내역 조회 
발주번호:0100012004031900006 
상품코드:001437741 
상품명;SIO2 마스크 팩  
수량 : 500EA 
입고 등록 삭제 부탁 드립니다. 
---------------------------------------------------------------------------------------------------------------------------- 

SELECT * FROM T_PO_DTL 
WHERE COMPANY_CD ='01' 
AND MERCHANT_CD ='0001'  
AND PO_DT = '20040319' 
AND PO_NO = '00006' 
============================================================================================================== 

■■■■■■■■■■■■■■■■■■ 2004.03.30(화) 작업 ■■■■■■■■■■■■■■■■
---> 06:40 ~ 23:00 

- 영업관리 수정
- EJB 등록 방법 
210.123.133.56 에서 @@@@@@@@@@@  ==> 현재 여기서 AccMgr.jar 파일을 만든 후 211.233.5.108에 붙여 넣음 
---------------------------------------------------------------------------------------------------------------------------- 

1. C:\i3shop\Int\IntEjb\AccMgr\com\i3shop\ejb\MisMgr\AccMgrBean.java 수정
2. \\210.123.133.56\i3shop\src\ejb\AccMgrEJB 로컬에서 아래 3개 파일을 복사하여 붙여 넣기함 
AccMgr.java AccMgrBean.java AccMgrHome.java 
3. 터미널 서버 연결(Ztem) 
IP: 210.123.133.56 i3shop/dacosystem 
4. 컴파일 하기 
[i3shop@newint i3shop]$  su 
[i3shop@newint i3shop]$  i3shop566414 
[i3shop@newint i3shop]# cd src/ejb/AccMgrEJB 
[i3shop@newint i3shop]# ./build.sh AccMgr 
.jar 파일 생성됨(---> \\210.123.133.56\i3shop\component\ejb\AccMgr.jar 파일로 만들어 짐) 
\\211.233.5.108\websphere\installedApps\i3shop.ear 파일(AccMgr.jar) 붙여 넣기 
5. .108서버 Websphere 종료 후 재시작 
6. 디버깅 --> 터미널 서버 연결(Ztem) 
[i3shop@newint i3shop i3shop]$  cd /opt/WebSphere/AppServer/logs 
[i3shop@newint i3shop logs]$ tail -f Default_Server_stdout.log 
==============================================================================================================

수불장 3.22 ~3.29 
수불장/물류 
==============================================================================================================

- 매입단가(MEIP_DANGA) 
공급가액(GONGUP_AMT), 매입금액(MEIP_AMT) = (매입단가(MEIP_DANGA)*수량(QTY)/1.1) 
부가세(TAX_AMT) = ((매입단가(MEIP_DANGA)*수량(QTY))- 공급가액) 
합계금액(TOTAL_AMT) = (매입단가(MEIP_DANGA)*수량(QTY)) 
==============================================================================================================

- 세금계산서 취합 이력(T_MAGAM_BILL_COLLECT) 
송금 취합 이력(T_MAGAM__REMIT_COLLECT) 
==============================================================================================================

- sequence 객체에 sequence 객체를 생성해서 next value를 취하면 된다... 
============================================================================================================== 

- 물류 2004-03-23  00144475 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.03.31(수) 작업 ■■■■■■■■■■■■■■■■

- 영업관리 수정
- 대금정산 권한 부여자 
대금정산 담당자 
회계팀 - 노은주, 서갑정 
온라인팀 - 권희경 
---------------------------------------------------------------------------------------------------------------------------- 

- 온라인팀 전직원 
오프라인팀은 윤승한, 정법기, 홍경호) 
자인물류팀은 조의재, 정해경, 이경동 
==============================================================================================================

- DAY_MEIP_01_01 ==>(정상, 쇼핑몰) 
A.COMPANY_CD  A.RECV_MERCHANT_CD  A.RECV_DT  A.RECV_NO AS MEIP_NO, 
T_STOREOUT A 
주문번호 = 회사코드  수주점코드  수주 일자  수주 번호 

- DAY_MEIP_02_01 ==>(반품, 쇼핑몰) 
A.COMPANY_CD  A.RECV_MERCHANT_CD  A.RECV_DT  A.RECV_NO AS MEIP_NO, 
T_STOREOUT A 
주문번호 = 회사코드  수주점코드  수주 일자  수주 번호 

- DAY_MEIP_01_02 ==>(정상, 물류/마트) 
A.COMPANY_CD  A.MERCHANT_CD  A.STOREIN_DT  A.STOREIN_NO AS MEIP_NO, 
T_STOREIN A 
주문번호 = 회사코드  점코드  입고 일자  입고 번호 

- DAY_MEIP_02_02 ==>(반품, 물류/마트) 
A.COMPANY_CD  A.MERCHANT_CD  A.STOREIN_RI_DT  A.STOREIN_RI_NO AS MEIP_NO, 
T_STOREIN_RI A 
주문번호 = 회사코드  점코드  입고반품 일자  입고반품 번호 
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■