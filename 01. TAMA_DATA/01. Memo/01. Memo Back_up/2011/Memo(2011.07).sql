

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2011.07) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2011.07.01(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00  --> 중식(신진NTS 이순복 사장님 사줌) 

- IMK 차세대Prj
- DashBoard 개발 
com.imk.mall.by.cm.bycmdashboardapp.dao.ByCmDashBoardDVO, ByCmDashBoardSvcImpl 
cm.bycmdashboardapp.dao.ByCmDashBoardSvcImpl 
ByCmDashBoard, bycmdashboardapp 
ByCmDashBoardDQM(대시보드DQM) --> getBoardrList, DashBoard리스트 
dsByCmDashBoardDVO, reqGetDashBoardList 
dsTestguideDVOList=testguideDVOList  ==> dsByCmDashBoardDVO=byCmDashBoardDVO 
==============================================================================================================

- bean name 못 찾음 
원인: name = cm.bycmdashboardapp.ByCmDashBoardSvcImpl) doesn't exist~! 
조치: bean name 작성 후 서버 재시작할 것 
==============================================================================================================

- UX Studio 라이센스 갱신 
 1. UX Studio License: GBZSW-U1JKR-NF2R7-C1K1C-XKKGS-437P5-479 
1) 현상: com.tobesoft.xplatform.license.InvalidLicenseException: License has expired: expireDate=2011-07-01, currentDate=2011-07-01 
2) 조치: UX Studio Program(실행) --> Help --> about UX Studio --> UX Studio (새창): Enter New License(엔터) 
Customer Name: TOBESOFT, Product Key: GBZSW-U1JKR-NF2R7-C1K1C-XKKGS-437P5-479 --> 종료 후 재실행 

- eclipse 라이센스 갱신 
/imk_pjt/src/main/resources/XPLATFORM_Server_License.xml(오른쪽 마우스) ==> Team --> Update 
(C:\workspace\imk_pjt\src\main\resources\XPLATFORM_Server_License.xml) 
==============================================================================================================

- eclpse에서 DQM 생성시 새창이 안뜨는 문제 
1. 원인: DB Explorer 에러 
2. 조치: Properties for imk_pjt(새창) ==> Anyframe --> DB Explorer 
URL: jdbc:oracle:thin:@122.1.20.17:1521:DEVMRO ==> jdbc:oracle:thin:@ 88.1.117.22:154:DBDMRO --> 
Connection Test(클릭): OK면 정상으로 DQM 생성시 새창이 뜸 
==============================================================================================================

- SAP --> MP 호출(SAP JCO 서버 프로그램 사용) 
1. 소스: com.imk.mall.swcall.sapcallmp.ImkJcoServerCallMP 
- MP --> SAP 호출 
1. 구현 안됨 
==============================================================================================================

- ISA Study
18:00 퇴근 
18:30 귀가 
18:40 석식 
19:30 감리사 공부(총 복습) 
24:00 취침 
==============================================================================================================

- 송금 
1. 오태융 팀장(KPC) 신한: 110 083 875890, 50만원 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.07.02(토) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

- ISA Study
05:30 기상 
05:40 조식 
06:30 신구초등학교 
06:40 숏개암(3:3 2골 넣음) 
07:30 종료 
08:10 식사(수정식당) 
09:00 라이지움 도착  ==> 라이지움(이권준, 정용국) 
09:30 실전 모의고사(3회)(66점 나옴) 
11:30 종료 
12:30 라이지움 실전 모의고사(3회) 풀이(강사: 유지호 기술사) 
16:30 종료 
16:40 라이지움 랩실(9층: 총정리 보안 비디오 시청) 
19:00 종료 
19:30 중국집(짬뽕밥) 
20:00 귀가 
23:30 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.07.03(일) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 00:00  --> 비 옴 

- KPC 모의고사(3회)
07:00 기상 
07:30 성현동 도서관(총 복습) 
11:40 종료 
11:50 중식(짬뽕) 
13:00 KPC 도착 
14:00 KPC 실전모의고사(3회) 시험(64점 나옴) 
16:00 KPC 실전모의고사(3회) 풀이(강사: 이정인 기술사, 김은정 감리사) 
18:50 종료 
20:00 석식(짬뽕밥) 
20:40 귀가 
24:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.07.04(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

- IMK 차세대Prj
- Dashboard 소스 파일 
- IMK 차세대Prj
- BW-MP간 인터페이스 협의 결과(07.04(월)) 
1. BW-MP간 인터페이스 방식 협의 
 1) RFC 호출(100만 건 이상 처리에 1시간 반 소요될 것으로 예상됨) ==> 가장 현실적인 대안, 잠정 결정 
 2) XI 사용(부하가 많이 걸릴 것으로 추정: 사실상 불가능) 
 3) DB 링크 사용(SAP 정책상 불가능 하다가 함) 
2. BW 사용시 시스템 부하 고민(일 배치 100만 건 이상 발생할 것으로 추정) 
3. MP 구매 View 처리(일부 등록 완료) 
4. MP 영업 View 처리 요청(BW 배준 부장님이 제상화 수석님과 협의 한다고 함) 
==============================================================================================================

- 가비지 컬렉션: 사용하지 않는 모든 객체와 변수를 삭제하면 해당 객체가 가지고 있는 메모리를 정기적으로 다시 회수하는 작업 
==============================================================================================================

- ISA Study
18:00 퇴근 
18:30 귀가 
18:40 석식 
19:00 감리사 공부(모의고사 문제집) 복습 
24:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.07.05(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

- IMK 차세대Prj
- MP Hub DashBoard 개발 
1. Batch 테이블 확인(DB 연결 성공) 
1) HITTS2510(품목DASHBOARD통계), HITTG2110(품목) 
==============================================================================================================

- DB 세로 결과 가로로 보여주기 
--품목 DASHBOARD 통계 조회 @@@@@@@@@@@ 
SELECT  CTR_YY , MAX(DECODE(CTR_MM,'01', TT_ITM_QTY)) TT_QTY_1, MAX(DECODE(CTR_MM,'02', TT_ITM_QTY)) 
		T_QTY_2 --총품목수량 
FROM HITTS2510 
GROUP BY CTR_YY 
--; 
==============================================================================================================

- DB 서버 
IP: 188.1.117.22:1545 port: 1545, DBDMRO, mpusr/usrmp , msusr/usrms 
==============================================================================================================

- ISA Study
18:00 퇴근 
18:30 귀가 
18:40 석식 
19:00 감리사 공부(모의고사 문제집) 복습 
24:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.07.06(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

- IMK 차세대Prj
- MP Hub DashBoard Batch 개발 
1.  배치 스케쥴러(Control-M) 
1) 샘플 소스: hu.cu.supplierbatch.SpAutoBlockBSvc   
2. SVN Repositories: svn://122.1.20.30/project ==> CVS Repository 사용 안함 
==============================================================================================================

- ISA Study
18:00 퇴근 
18:30 귀가 
18:40 석식 
19:00 감리사 공부(총복습) 
24:00 취침 
==============================================================================================================
   
■■■■■■■■■■■■■■■■■■ 2011.07.07(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

- IMK 차세대Prj
- MP Hub DashBoard Batch 개발 
1. 개발 경로 
1) /imk_batch_pjt/src/com/imk/mall/batch ==> com.imk.mall.batch.hu.it.itdashbatch.ItDashBoardBSvc.java, ItDashBoard001_CFG.xml 
2) com.imk.mall.hu.it.itdashapp.dao.ItDashBoardDQM  ==> HITTS2510 
------------------------------------------------------------------------------------------------------ 

2.  배치 스케쥴러(Control-M) 
0) C:\workspace\imk_batch_pjt\build/batch.properties파일에서 batch.agent.on= false, batch.security.on=false 
1) Eclipse 메뉴의 Run → Run Configuration → 다이얼로그 창에서 "Java Application" 우클릭 → New 
2) Name: 원하는 테스트 이름 입력 ex) ItDashBoard 
3) Main class: com.sds.anyframe.batch.launcher.BatchJobLauncher 
4) Program arguments: build/com/imk/mall/batch/hu/it/itdashbatch/cfg/ItDashBoard001_CFG ODATE=20110706 
5) Apply 및 Run을 클릭하여 Batch 시작 
------------------------------------------------------------------------------------------------------ 

3.  배치 스케쥴러(Control-M)(참조) 
0) C:\workspace\imk_batch_pjt\build/batch.properties파일에서 batch.agent.on= false, batch.security.on=false 
1) Eclipse 메뉴의 Run → Run Configuration → 다이얼로그 창에서 "Java Application" 우클릭 → New 
2) Name: 원하는 테스트 이름 입력 ex) SpAutoBlock 
3) Main class: com.sds.anyframe.batch.launcher.BatchJobLauncher 
4) Program arguments: build/com/imk/mall/batch/hu/cu/supplierbatch/cfg/SpAutoBlock001_CFG ODATE=20110706 
5) Apply 및 Run을 클릭하여 Batch 시작 
==============================================================================================================

- ISA Study
18:00 퇴근 
18:30 귀가 
18:40 석식 
19:00 감리사 공부(총복습) 
24:00 취침 
==============================================================================================================
   
■■■■■■■■■■■■■■■■■■ 2011.07.08(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

- IMK 차세대Prj
- MP Hub DashBoard Batch 개발 
1. 배치 스케쥴러(Control-M) 수정 
==============================================================================================================

- DashBoard 개발(DashBoard Hub 폴더 위치 변경) 
1.2. DQM 개발하기 
ItDashBoardDQM(품목 DASHBOARD 통계) --> getItDashBoardList(품목 DASHBOARD 통계 조회) 
1.3. SVO 생성하기 
ItDashBoardSVO(품목 DASHBOARD SVO) --> itDashBoardDVO(품목 DASHBOARD DVO) 
1.4. SVC Interface 개발하기 
Source foler: imk_pjt/src/main/java 
Package: com.imk.mall.hu.it.itdashapp 
Name : ItDashBoardSvc 
1.5. SVC Impl 개발하기 
Name : ItDashBoardSvcImpl 
Super class: com.sds.anyframe.extension.basic.abstractlayer.AbstractService 
Choose interfaces: ItDashBoardSvc(Add(클릭) ==> 새창 뜸) 

1.6. SVC Impl 개발하기-Bean Name 추가하기 
1.7. Biz Class 개발하기 
Name : ItDashBoardBiz 
Source foler: imk_pjt/src/main/java 
Package: com.imk.mall.hu.it.itdashapp 
Super class: com.sds.anyframe.extension.basic.abstractlayer.AbstractService 
==> com.imk.mall.hu.it.itdashapp.dao.HuItDashBoardSvcImpl,     HuItDashBoardSvc 
------------------------------------------------------------------------------------------------------ 

1. 화면개발가이드-조회(dList) 
2.3. 그리드 Dataset 만들기 
Invisible Objects(DB LIST): dsItDashBoardDVO 
itDashBoardDVO 
2.4. 그리드 바인드 하기 

2.5. dsActionMapping 추가 
id : reqGetItDashBoardList 
beanName : hu.it.itdashapp.ItDashBoardSvcImpl 
methodName : reqGetItDashBoardList 
inputVoName : com.imk.mall.hu.it.itdashapp.ItDashBoardSVO 
2.6. dsService 추가 
id : reqGetItDashBoardList 
outDatasets : dsItDashBoardDVO=itDashBoardDVO 
svctp : R 
callback : fn_trans_callback 
message : tscsMsgId 
asyncyp : true 
bintp : false 
comtp : false 
==============================================================================================================

- 그리드 조회하기 전에 화면 display 하기 
1. Invisible Objects(dsItDashBoardDVO) ==> Dataset Contents Editor(새창)에서 Rows 줄에 Add a New Row(클릭) 
==============================================================================================================

- MP Hub DashBoard 그래프 개발 관련 이슈 사항 
1. 이번 프로젝트에서 구매한 X-Platfrom에서 버전에서 그래프 기능은 제공하고 있지 않다고 함(임점예 과장에게 확인 함) 
2. X-Platfrom에서 개발자가 개발한 Library를 제공해줄 계획이라고 하는데 아직 결정이 안 났다고 함 
==============================================================================================================

- ISA Study
18:00 퇴근 
18:30 귀가 
18:40 석식 
19:00 감리사 공부(총복습) 
24:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.07.09(토) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

- ISA Study
06:30 기상 
07:10 성현동 도서관(기출문제 분석) 
17:00 석식(짬뽕) 
19:30 종료 
20:00 귀가 
23:30 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.07.10(일) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

- ISA Study
06:00 기상 
07:00 예배(광림교회) ==> 설교(김정석 목사: 신령한 비밀을 깨닫게 하는 은혜) 
08:20 안수 기도(추연복 목사님) 감리사 합격 기원 
08:30 종료 
08:30 조기축구(4:2 승): 1골, 1AS 
10:00 종료 
11:30 문경세제(갈비탕: 만원) 
11:20 종료 
12:30 귀가 
13:00 낮잠 
17:30 공부 
20:00 8시 뉴스 
23:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.07.11(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 --> 민방위훈련(비와서 도장만 받고 옴) 

- IMK 차세대Prj
- MP Hub DashBoard 개발 
백분율(이미지등록품목): perImgQty1,java.lang.String,PER_IMG_QTY_1,VARCHAR2 
백분율(이미지필수품목수량): perImgNseQty1,java.lang.String,PER_IMG_NSE_QTY_1,VARCHAR2 
백분율(필수이미지등록건수): perImgNseRegQty1,java.lang.String,PER_IMG_NSE_REG_QTY_1,VARCHAR2 
------------------------------------------------------------------------------------------------------ 

--품목 DASHBOARD 통계 조회 @@@@ ==> DB 세로 결과 가로로 보여주기 
SELECT  CTR_YY , 
    MAX(DECODE(CTR_MM,'01', TT_ITM_QTY)) TT_QTY_1,   /* 총품목수량 */ 
    MAX(CASE WHEN CTR_MM = '01'  THEN '('  TRIM(TO_CHAR(((DECODE(CTR_MM,'01', IMG_REG_ITM_QTY, 0)) 
        /(DECODE(CTR_MM,'01', TT_ITM_QTY))*100), '990'))  '%)' ELSE '' END) AS PER_IMG_QTY_1,   /* 백분율(이미지등록품목) */ 
    TO_CHAR((MAX(DECODE(CTR_MM,'01', REG_ITM_QTY, 0)) +  MAX(DECODE(CTR_MM,'02', REG_ITM_QTY, 0))) 
        /(MAX(CASE WHEN CTR_MM = '01' THEN 1 WHEN CTR_MM = '02' THEN 2 END)), '999,999,990') SUM_REGT_QTY /* 합계(등록품목수량): 평균 */ 
FROM HITTS2510 
WHERE CTR_YY = TO_CHAR(SYSDATE, 'YYYY') 
GROUP BY CTR_YY 
--; 
==============================================================================================================

- Servers 세팅(eclipse에서) 
Server's host name: localhost 
Server name: Oracle WebLogic Server 11gR1 PatchSet 2 at localhost 
Server runtime environment:Oracle WebLogic Server 11gR1 PatchSet 2 
Configuration 
Domain Directory: C:\Oracle\Middleware\imk_pjt\domains\mpdomain 
Add and Remove: imk_pjt 
- Servers 시작 에러(eclipse에서) 
1. 현상: The server is invalid. 
Error occurred reading server configuration. 
Error was found in the configuration document. The configuration cannot be read. 
The markup in the document preceding the root element must be well-formed. 
2. 조치: 
1) Servers 삭제(eclipse에서) 
2) C:\Oracle\Middleware\imk_pjt\domains 폴더 삭제 
3) WAS(WebLogic) 도메인 재 설정 
WebLogic Configuration Wizard(설정마법사) 실행 ===> 
도메인 이름: mpdomain, 도메인 위치: C:\Oracle\Middleware\imk_pjt\domains 
4) Servers 세팅(eclipse에서) 
==============================================================================================================

- ISA Study
18:00 퇴근 
18:30 귀가 
18:40 석식 
19:00 감리사 공부(총복습) 
24:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.07.12(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

- IMK 차세대Prj
- MP Hub DashBoard 개발 
==============================================================================================================

- ISA Study
18:00 퇴근 
18:30 귀가 
18:40 석식 
19:00 감리사 공부(총복습) 
24:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.07.11(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 --> 민방위훈련(비와서 도장만 받고 옴) 

- IMK 차세대Prj
- MP Hub DashBoard 개발 
백분율(이미지등록품목): perImgQty1,java.lang.String,PER_IMG_QTY_1,VARCHAR2 
백분율(이미지필수품목수량): perImgNseQty1,java.lang.String,PER_IMG_NSE_QTY_1,VARCHAR2 
백분율(필수이미지등록건수): perImgNseRegQty1,java.lang.String,PER_IMG_NSE_REG_QTY_1,VARCHAR2 
------------------------------------------------------------------------------------------------------ 

--품목 DASHBOARD 통계 조회 @@@@ ==> DB 세로 결과 가로로 보여주기 
SELECT  CTR_YY , 
    MAX(DECODE(CTR_MM,'01', TT_ITM_QTY)) TT_QTY_1,   /* 총품목수량 */ 
    MAX(CASE WHEN CTR_MM = '01'  THEN '('  TRIM(TO_CHAR(((DECODE(CTR_MM,'01', IMG_REG_ITM_QTY, 0)) 
        /(DECODE(CTR_MM,'01', TT_ITM_QTY))*100), '990'))  '%)' ELSE '' END) AS PER_IMG_QTY_1,   /* 백분율(이미지등록품목) */ 
    TO_CHAR((MAX(DECODE(CTR_MM,'01', REG_ITM_QTY, 0)) +  MAX(DECODE(CTR_MM,'02', REG_ITM_QTY, 0))) 
        /(MAX(CASE WHEN CTR_MM = '01' THEN 1 WHEN CTR_MM = '02' THEN 2 END)), '999,999,990') SUM_REGT_QTY /* 합계(등록품목수량): 평균 */ 
FROM HITTS2510 
WHERE CTR_YY = TO_CHAR(SYSDATE, 'YYYY') 
GROUP BY CTR_YY 
--; 
==============================================================================================================

- Servers 세팅(eclipse에서) 
Server's host name: localhost 
Server name: Oracle WebLogic Server 11gR1 PatchSet 2 at localhost 
Server runtime environment:Oracle WebLogic Server 11gR1 PatchSet 2 
Configuration 
Domain Directory: C:\Oracle\Middleware\imk_pjt\domains\mpdomain 
Add and Remove: imk_pjt 
- Servers 시작 에러(eclipse에서) 
1. 현상: The server is invalid. 
Error occurred reading server configuration. 
Error was found in the configuration document. The configuration cannot be read. 
The markup in the document preceding the root element must be well-formed. 
2. 조치: 
1) Servers 삭제(eclipse에서) 
2) C:\Oracle\Middleware\imk_pjt\domains 폴더 삭제 
3) WAS(WebLogic) 도메인 재 설정 
WebLogic Configuration Wizard(설정마법사) 실행 ===> 
도메인 이름: mpdomain, 도메인 위치: C:\Oracle\Middleware\imk_pjt\domains 
4) Servers 세팅(eclipse에서) 
==============================================================================================================

- ISA Study
18:00 퇴근 
18:30 귀가 
18:40 석식 
19:00 감리사 공부(총복습) 
24:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.07.12(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

- IMK 차세대Prj
- MP Hub DashBoard 개발 
1. 대시보드 종류(품목, 공급사, 고객사) 
1) 콤보 추가: cmb_boardSortCD(대시보드 종류 CD: 품목, 공급사, 고객사) 
==============================================================================================================

- 로컬 PC에서 WAS 기동속도 향상팁 
1. imk-application-servlet.xml 파일에서 
<context:component-scan base-package="com.imk.mall.hu.it,com.imk.mall.by.cm,com.imk.mall.cm,com.imk.anyframe" use-default-filters="false"> 
    <context:include-filter type="annotation" expression="org.springframework.stereotype.Controller" /> 
</context:component-scan> <!-- //컴포넌트 스캔 범위 조정(com.imk.mall.hu.it:DashBoard Hub, com.imk.mall.by.cm: DashBoard 영업, 
com.imk.mall.cm: 공통, com.imk.anyframe: 프레임웍 관련 패키지 // --> 
==============================================================================================================

- ISA Study
18:00 퇴근 
18:30 귀가 
18:40 석식 
19:00 감리사 공부(총복습) 
24:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.07.13(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

- IMK 차세대Prj
- MP Hub DashBoard 개발 
1. 대시보드 종류(공급사) 개발 
==============================================================================================================

- BW회의 13시(16층) 
1. 요약: MP 영업관련 View 생성 요청 
2. 참석자: 배준 부장, 김영수 차장, 홍의식 이사(MP 구매3셀), 김화중 부장(MP 구매4셀) 
==============================================================================================================

- ISA Study
18:00 퇴근 
18:30 귀가 
18:40 석식 
19:00 감리사 공부(총복습) 
24:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.07.14(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

- IMK 차세대Prj
- MP Hub DashBoard 개발 
1. 대시보드 종류(공급사, 고객사) DB 연결 개발 
1) ItDashBoardDQM 설정 ==> getItDashBoardList(품목 DASHBOARD 조회) 
2) SupDashBoardDQM 설정 ==> getSupDashBoardList(공급사 DASHBOARD 조회) 
3) GusDashBoardDQM 설정 ==> getGusDashBoardList(고객사 DASHBOARD 조회) 
==============================================================================================================

- DB 조회 에러 
1. 현상 
SELECT CPNT_ID FROM CRUDSAMPLE2 
WHERE 1 = 1 AND LANG_CD IN ('SUP') 
/* com.imk.mall.hu.it.itdashapp.dao.ItDashBoardDQM.getSupDashBoardList.001 */  {FAILED after 16 msec} 
java.sql.SQLSyntaxErrorException: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다 ==> 실제 테이블 존재 
2. 원인: SupDashBoardDQM는 생성하지 않고 ItDashBoardDQM에 모두 처리하려고 함 
3. 조치: SupDashBoardDQM(dao) 새로 생성, ItDashBoardSVO는 함께 사용 ==> 실제 USER가 테이블 권한 없음 
==============================================================================================================

- ISA Study
18:00 퇴근 
18:30 귀가 
18:40 석식 
19:00 감리사 공부(총복습) 
24:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.07.15(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00  --> 시험지 철수할 것 

- IMK 차세대Prj
- MP Hub DashBoard 개발 
1. 대시보드 종류(공급사) 개발 
2. 주간보고서(2011.07_5주차) 작성 
==============================================================================================================

- ISA Study
18:00 퇴근 
18:30 귀가 
18:40 석식 
19:00 감리사 공부(총복습) 
24:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.07.16(토) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00  --> 2011년 감리사 시험(덕수고) 

- ISA Study
06:30 기상 
07:10  감리사 공부(총복습) 
12:00 집출발 
12:10 중식(짬뽕밥) 
13:20 한양고 도착 
13:30 수험번호가 변경되어 본부에 가서 다시 확인(1101200557 --> 1101200472) 
14:00 입실완료 
14:30 감리사 시험 
16:30 종료 
17:20 강남역 
18:00 임모 만남 
18:10 당구장(임모한테 50 놓고 2:0으로 이김) 
18:40 삽겸살집(두레촌:현용 합유): 내가 쏨(5만원) 
20:00 당구장(현용 1등, 80놓고 2등함) 
22:40 호프집(자리 없어서 변두리까지 밀려감) 
23:30 종료 
23:40 지하철(낙성대역) 
24:20 귀가 
==============================================================================================================

- 2011년 감리사 시험 예상 
1. 합격 가능성: 20%, 합격선: 90점 
2. 합격 관건은 04. CA, 01. Audit 선방 여부 
==============================================================================================================

- 2011년 감리사 시험장소 및 지원번호 안내(지원번호: 1101200557) 
1. 일시 및 장소 
(1) 일시 : 2011. 7. 16(토) (14:00 ~ 16:30) 
※ 고사실 입실시간은 13:00~14:00까지이며, 13:50까지는 고사장 입실을 완료하여야 함. 
(2) 장소 : 서울 덕수고등학교 
※ 2호선 한양대 전철역 4번 출구(약도는 http://www.duksoo.hs.kr/ 참조) 
2. 수험번호 안내 : 감리사 홈페이지(auditor.nia.or.kr)에서 감리사자격검정-인터넷원서접수-접수(원서)확인을 
통해 개인별 지원번호 확인 
3. 필기전형 개요 
(1) 과목 : 감리 및 사업관리, 소프트웨어공학, 데이터베이스론, 시스템구조, 보안 
(2) 필기문항수 : 총 120문제(객관식 4지～5지 선다형) 
(3) 시험 시간 : 120분 
(4) 필기전형 최종합격자는 필기시험 후 응시자격심의를 통해서 결정 
4. 준비물 
(1) 신분증(주민등록증, 운전면허증, 여권 중 1개) 
※ 필기전형 당일 신분증 미지참자는 시험에 응시할 수 없음 
(2) 답안지 작성용 필기도구(컴퓨터용 흑색 싸인펜) 
※ 계산기는 지참할 수 없음 
5. 유의사항 
(1) 14시 00분 이후에는 고사실 입실이 불가능합니다. 
(2) 주차가 불가하오니 대중교통을 이용하시기 바랍니다. 
(3) 지원번호를 꼭 확인하고 오시기 바랍니다 
6. 기타 
1) 가답안 공개 및 이의신청 기간 : 2011. 7. 19(화) 10:00 ~ 7. 25(월) 15:00 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.07.17(일) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 00:00 

- ISA Study
10:00 기상 
10:30 집에서 영화보며 쉼 
18:30 시장(반찬(오징어포)) 
10:30 집에서 영화보며 쉼 
20:00 8시 뉴스 
23:00 취침 
==============================================================================================================

- 냉장고, 세탁기 구입 ==> 총 금액: 680,770원 
1. 냉장고: LG R-B247QV(237L) 322,300원 
2. 세탁기: LG T1207W7 통돌이 358,570원 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.07.18(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:20 

- IMK 차세대Prj
- DashBoard 영업 분석 
1. 발주(PO: PURCHASE ORDER): IMK에 의해 실제로 공급사에게 주문을 내는 것 
2. 매출채권(AR: ACCOUNT RECEIVABLE): 기업이 상품을 판매하는 과정에서 발생한 채권으로 외상매출금과 
받을어음 등 ‘외상 판매대금’을 가리킴 
3. 이광수 차장 

- MP 영업에서 만들어 줘야할 View REPORT NAME 
1. 미결지표, 서비스지표, 내부관리용(월별/기간별), 반품교환, 원가절감, 신규등록, 20.PO IF Error 관리 
==============================================================================================================

- ERD 
\\88.1.117.106\차세대\90. WorkPlace\02. 업무별Working\06. 아키텍쳐공통\10. DA 
==============================================================================================================

- 관심사항 
1. 감리 문서화 작업 
2. 다빈치 치과의원(서울특별시 관악구 행운동 1687-22) 
3. 도서(이순신): 칼의 노래 
4. 시장(우산, 거실 패드), 미역국, 쌀, 선풍기 
==============================================================================================================

- 미역국 끓이는 법 
0. 재료: 미역, 소금, 간장, 참기름, 소고기 
1. 마른 미역을 찬물에 30분정도 담궈 불려주세요.. 
2. 불린 미역을 뽀뜨뜩.. 뽀뜨뜩... 주물러서 씻어주세요! 
3. 씻은 미역을 체에 걸러 물기를 빼주고... 
4. 냄비에 미역을 넣은후 들기름으로 달달 볶아주세요. 들기름이 없으면 참기름도 좋아요! 
미역 색이 익으면서 초록빛이 돌기 시작하면 미역이 잠길 정도로 물을 넣고  보글보글 한소큼 끓여주세요 
5. 냉장고에서 소고기를 꺼내서 준비해 두고.. 
6. 한소큼 끓인 미역국에 찬물을 넣어서 한번더 끓여 주세요. 
7. 보글보글 끓인 미역국에 소고기를 넣고.. 
8. 굵은 소금과 국간장으로 미역국 간을 해주세요. 
9. 드디어 미역국 완성 

- 미역국 끓이는 법 
01. 마른 미역은 물에 불린 후 적당히 썰고 재래간장을 약간 넣어 무쳐 둔다. 
02. 쇠고기는 잘게 썰어 냄비에 참기름과 다진 마늘을 넣고 볶는다. 고기가 어느 정도 익으면 썰어 놓은 미역을 
넣고 같이 볶는다. 
03. 쇠고기와 미역을 볶은 냄비에 물을 부은 후 오랫동안 끓인다 
04. 마지막에 재래간장과 소금으로 간을 하여 낸다. 
05. 완성 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.07.19(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 18:00 

- IMK 차세대Prj
- MP Hub DashBoard 영업 분석 
1. BY-간소화 어플리케이션구조도_SAL_v.0.76_20110713.xlsx 작성 
1) MP-메인화면들의 어플리케이션(컴포넌트, impl, biz, dao, I/F 방식, data_source)에 대한 업무 담당 모듈의 
항목으로 목록 식별 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.07.20(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:00  --> 중식((주)보우테크 조성학 과장): 삼계탕(만천원) 얻어 먹음 

- IMK 차세대Prj
- MP Hub DashBoard 영업 분석 
1. BY-간소화 어플리케이션구조도_SAL_v.0.76_20110713.xlsx 작성 
2. main-DashBoard MP 영업 어플리케이션구조도_SAL_v.0.01_20110719.xlsx 작성 
1) DashBoard MP 영업 메인 
 가. comMainLeftBy: Left MP Admin 영업 
 나. mpMainBY: DashBoard MP 영업 메인 
 다. byMainBottom: Dashboard Bottom 
- STTDD00M: 간소화 메인 
------------------------------------------------------------------------------------------------------- 

- Start page 설정 방법: UX Studio ==> Project ==> ADL 'imk_starter' ==> Set as Active ADL 
==============================================================================================================

- 다빈치 치과의원(18:30 ~ 21:00) 
1. 어금니 4개 치료, 틀 제작 ==> 200만원 
2. 덮어쓰우기 3개(다음주) 
3. 스켈링: 6만원 ===> 총 206만원 
4. 깨진이 골절 처리할 것(보험사 연락할 것) 
5. 다음주 수요일(.07.27(수)) 18시 예약(어금니 4개 작업 완료, 덮어쓰우기 3개 치료 완료) 
==============================================================================================================

- 식당 
1. 명동칼국수, 떡삼시대, 팬다(중식) 
2. 식사 후 비치된 관리대장에 시간, 실명 모두 기재 
3. 근무시간 초과 3시간 근무시 식사 제공 
==============================================================================================================

- 치과치료(다빈치 치과의원: T)884-2757) 
1. 어금니 4개, 덮어쓰우기 3개 ==> 200만원 
2. 스켈링: 6만원 ===> 총 206만원 
3. 깨진이 골절 처리할 것(보험사 연락할 것)  ==> 미적용 결론 
4. 다음주 수요일(.07.27(수)) 18시 예약 
5. 통증이 심해서 밤에 잠자다가 깸(견딜만은 했음) 
------------------------------------------------------------------------------------------------------- 

- 어금니 골절 보험 적용 여부 확인 메일(--> 미적용 결론) 
무배당 PCA드림링크 변액유니버셜보험 II 을 가입일: 2006/05/10에 가입을 했는데요. 
이번에 음식을 먹다가 어금니가 뿌려져서 치과에 갔더니 2008년 이전에 보험에 가입을 했으면 
골절로 보험금을 받을 수가 있다고 하더군요. 
제가 가진 보험(무배당 PCA드림링크 변액유니버셜보험 II )도 해당이 되는지 궁금해서 문의 드립니다. 
메일(*@*.*)로 답변 부탁드립니다. 
그럼, 수고하세요. 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.07.21(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:00 

- IMK 차세대Prj
- MP Hub DashBoard Chart 개발 
1. ItDashBoardChartDQM(DashBoard Hub Chart) 
dsItDashBoardChartDVO  ==> getItDashBoardChartList(품목 DASHBOARD Chart 조회) ==> itDashBoardChartDVO 
reqGetItDashBoardChartList => dsItDashBoardChartDVO=itDashBoardChartDVO 
------------------------------------------------------------------------------------------------------------------------- 

- MP Hub DashBoard Chart 조회 @@@@@@@@ 
SELECT  CTR_YY AS GRP_YY, CTR_MM AS GRP_MM, 
  TT_ITM_QTY AS GRP_TOT_QTY, REG_ITM_QTY AS GRP_REG_QTY, AMD_ITM_QTY AS GRP_MOD_QTY 
FROM HITTS2510 
WHERE CTR_YY = TO_CHAR(SYSDATE, 'YYYY') 
; 
==============================================================================================================

- fn_init_dsGrid 초기화(PUPOM10M) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.07.22(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:00 --> 주간보고서 작성 

- IMK 차세대Prj
- MP Hub DashBoard Chart 개발 
1. 완료 
==============================================================================================================

- DB 데이타 확인 
function mpMainBY_lonload(obj:Form, e:LoadEventInfo)  //fn() 품목 폼 초기화 처리 함수 
{ 
 gfn_doService("reqGetDashBoardList"); //DASHBOARD Sub 조회 
} 

function fn_trans_callback(strSvcId, nErrorCode, strErrorMsg)  //fn() 최초 Callback 함수 선언 함수 
{  
 trace("[/mpMainBY.xfdl][fn_trans_callback()] [strSvcId]"+ strSvcId +"[nErrorCode]"+ nErrorCode); 
 if(strSvcId=="reqGetDashBoardList") { 
    if( nErrorCode != "-1" ){ 
      mpMainBY_lonload(); 
      return; 
    } 
  }    
} 

function mpMainBY_lonload(obj:Form, e:LoadEventInfo) //fn() 폼 초기화 처리 함수 
{ 
 trace("[/BYTDM03M.xfdl][mpMainBY_lonload()] [ordAmt1]"+ dsDashboardDVO.getColumn(0,"ordAmt1") 
 +"[Qty_1]"+ dsDashboardDVO.getColumn(0, 1) +"[Qty_2]"+ dsDashboardDVO.getColumn(0, 2) 
 +"[Qty_3]"+ dsDashboardDVO.getColumn(0, 3 ));  //필드값 확인 
} 
-------------------------------------------------------------------------------------------------------------- 

- DQM 설정 에러 
1. ItDashBoardSvcImpl.java에서 
public ItDashBoardSVO reqGetSupDashBoardSubList(ItDashBoardSVO itdashboardSVO) { 
 debug("\n\n [/DashBoardSvcImpl.java]:: reqGetDashBoardList() 시작 !!"); 
 ItDashBoardBiz itdashBoardBiz = new ItDashBoardBiz(); 
 itdashboardSVO = itdashBoardBiz.getSupDashBoardSubList(itdashboardSVO); 
 debug("\n\n [/ItDashBoardSvcImpl.java][reqGetSupDashBoardSubList()][itdashboardSVO]"+ itdashboardSVO); 
 //데이타 확인할 것 
 return itdashboardSVO; 
} 

2. DashBoardSvcImpl.java에서 
public DashBoardSVO reqGetDashBoardList(DashBoardSVO dashboardSVO) { 
 DashBoardBiz dashBoardBiz = new DashBoardBiz(); 
 dashboardSVO = dashBoardBiz.getDashBoardList(dashboardSVO); 
 debug("\n\n [/DashBoardSvcImpl.java][reqGetDashBoardList()][dashboardSVO]"+ dashboardSVO); 
 //데이타 확인할 것, DVO명을 확인할 것  
 return dashboardSVO; 
} 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.07.23(토) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

- ISA Study
05:30 기상 
06:30 조기축구(3:1 패) 
08:00 종료 
08:20 수정식당(상설이형 쏨) 
11:30 상설이형집(승희형, 호성이형, 병규형 ==> 간식, 설겆이, 샤워) 
12:30 압구정역 
13:00 KPC 기술사 설명회(804호)  
 ==> 기본반(정경배 기술사): 70만원, 중급반(이춘식 기술사): 80만원, 심화반(멘토 기술사): 90만원  
16:30 종료 
19:00 석식(짬뽕밥) 
20:00 귀가 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.07.24(일) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00  --> 비옴 

- ISA Study
05:40 기상 
06:10 641번 버스(버스 잘못 탐) 
06:40 뱅뱅사거리(440번)  ==> 영동중학교 정류장(전용차선 아님)에서 4412번 탈 것 
07:05 예배(광림교회) ==> 설교(김선도 감독: 하나님 신앙이 지혜의 근본이니라): 지각해서 2층에서 예배봄 
08:30 종료 
08:30 조기축구(4:1 승) 
10:30 종료 
10:40 중식(운동장에서 삼계탕 끓임) 
11:30 종료 
11:30 문경세제(점심: 오교문님이 쏨) 
12:30 종료 
13:30 현대자동차 매장(경덕이형 근무지: 태호형, 종록이형)  --> 태호형 중국에 사업하러 간다고 함, 종록이형 라이브 까페 
        장사가 잘된다고 함(미래를 위해 철저한 준비를 하자) 
17:30 종료 
17:50 선릉역 
18:30 귀가 
23:30 취침 
==============================================================================================================

- 머리숯 치료 
1. 윤태영 충북대병원 피부과 교수(http://blog.naver.com/krbsh?Redirect=Log&logNo=120115528536) 
- 조만(사기) 
* 희진, 미정  ==> 농협 302-0421-6877-71 이은동 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.07.25(토) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:00 

- IMK 차세대Prj
- MP 영업 DashBoard 개발 
1. DB 쿼리 작성 
==============================================================================================================

- SVN에서 파일 못 받아옴 
1. 현상: login.xml(-) 파일 못 받아 옴 
2. 조치: C:\workspace\imk_mall\main폴더 삭제 후 다시 Update 

- svn no write-lock in 에러 발생 
1. 원인: 해당 파일이 현재 사용중일 수 있습니다. 파일을 사용하고 있을 수 있는 프로세스를 종료하고 업데이트 
2. 조치: 해당프로젝트에서 오른쪽 버튼 눌러서 team --> clean up 

- is not a working copy  에러 발생 
1. 조치: 해당프로젝트 폴더$svn cleanup 하면 잘 됨  
2. cleanup을 할때 ~locked 어쩌구라고 에러문구가 뜬다면 해당소스경로 .svn파일안에 lock이라는 파일을 삭제 
==============================================================================================================

- xChart 재설정(svn에서 파일 받은 후) 
1. UXStudio ==> TypeDefinition(더블 클릭) ==> Edit TypeDefinition(새창) 
1) Type: Binary, Object: Chart 
2) Type: Binary, ID: Chart, ClassName: Chart, Module: XChartCmp --> default_typedef.xml 
==============================================================================================================

- MP Hub DashBoard(고객사: 정재우 책임) 
==============================================================================================================

- 보험 확인 
1. MetLeft: 무배당 마스터플랜 변액유니버셜종신보험을 가입일: 2006/04/30 
2. PCA: 무배당 PCA드림링크 변액유니버셜보험 II  가입일: 2006/05/10 
3. 대한생명: 대생연금보험료 
==============================================================================================================

- 봉천키(승현) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.07.26(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:50 ~ 18:00 

- IMK 차세대Prj
- MP 영업 DashBoard 개발 
1.2. DQM 개발하기 
DashBoardDQM(DashBoard MP 영업) --> getDashBoardList(DASHBOARD 조회) 
getDashBoardIndexList(DASHBOARD 지표 조회), getDashBoardLeftList(DASHBOARD Left 조회) 
1.3. SVO 생성하기 
DashBoardSVO(MP 영업 DashBoard SVO) --> dashboardDVO(MP 영업 DashBoard DVO) 
1.4. SVC Interface 개발하기 
Source foler: imk_pjt/src/main/java 
Package: com.imk.mall.by.td.dashboardapp 
Name : DashBoardSvc 
1.5. SVC Impl 개발하기 
Name : DashBoardSvcImpl 
Super class: com.sds.anyframe.extension.basic.abstractlayer.AbstractService 
Choose interfaces: DashBoardSvc(Add(클릭) ==> 새창 뜸) 
1.6. SVC Impl 개발하기-Bean Name 추가하기 
@Service("by.td.dashboardapp.DashBoardSvcImpl") 
1.7. Biz Class 개발하기 
Name : DashBoardBiz 
Source foler: imk_pjt/src/main/java 
Package: com.imk.mall.hu.it.itdashapp 
Super class: com.sds.anyframe.extension.basic.abstractlayer.AbstractService 
Choose interfaces: DashBoardSvc(Add(클릭) ==> 새창 뜸) 
------------------------------------------------------------------------------------------------------ 

1. 화면개발가이드-조회(dList) 
2.3. 그리드 Dataset 만들기 
Invisible Objects(DB LIST): dsDashBoardDVO 
2.5. dsActionMapping 추가 
id: reqGetDashBoardList 
beanName: by.td.dashboardapp.DashBoardSvcImpl 
methodName: reqGetDashBoardList 
inputVoName: com.imk.mall.by.td.dashboardapp.DashBoardSVO 
2.6. dsService 추가 
id: reqGetDashBoardList, outDatasets: dsDashboardDVO=dashboardDVO, svctp: R 
callback: fn_trans_callback, message: tscsMsgId, asyncyp: true, bintp: false, comtp: false 
==============================================================================================================

- SVN Repositories Update 권한 요청 
1. SVN Repositories: svn://122.1.20.30/project 
2. 권한 ID/PWD: tamario/ssjtm881 
3. 해당 폴더 
1) DashBoard 영업: /imk_mall/BY/TD, /imk_pjt/src/main/java/com/imk/mall/by/td 
2) DashBoard Hub 
 가. 품목: /imk_mall/HU/IT, /imk_pjt/src/main/java/com/imk/mall/hu/it 
 나. 공급사, 고객사: /imk_mall/HU/CU, /imk_pjt/src/main/java/com/imk/mall/hu/cu 
3) DashBoard Hub Batch 
 가. 품목: /imk_batch_pjt/src/com/imk/mall/batch/hu/it 
 나. 공급사, 고객사: /imk_batch_pjt/src/com/imk/mall/batch/hu/cu 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.07.27(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:50 ~ 18:00 

- IMK 차세대Prj
- MP 영업 DashBoard 개발 
- pageSize null 에러 
1. 현상: Error: [C:/workspace/imk_mall/lib/COMTRAN.xjs][line:74] pageSize'은(는) null이거나 객체가 필요(행: 74) 
1) mpMainBY.xfdl파일에서 
gfn_doService("reqGetDashBoardList"); 

2) COMTRAN.xjs 파일에서 
function gfn_doService(sId, dsService, dsActionMapping, argumentSearch) 
{ 
 var _pageSize = new String(this.components[_divPageId].pageSize); 
} 
2. 조치: dsService에서 reqGetDashBoardList(id) divPageId 칼럼의 [Undefined] 제거 
------------------------------------------------------------------------------------------------------ 

- DB 연결 확인 
1. dsService에서 outDatasets 대소문자 확실히 확인할 것 ==> dsDashboardDVO=dashboardDVO 
==============================================================================================================

- MP-HUB 작업 진척 현황 
 가. 품목: 등록건수(I/F) 필드외에 모두 완료(필드 생성 MP 구매 박성원 책임에게 요청) 
 나. 공급사: UI 화면만 그려 놓은 상황 
 나. 고객사: UI 화면도 안 나온 상황 
==> 미진한 부분은 MP 구매 정승현 수석님이 모두 월요일까지 정리하여 넘긴다고 했는데 아직 안 왔음 
==============================================================================================================

- 치과치료(다빈치 치과의원: T)884-2757) ==> 치료완료 
1. 어금니 4개(플래타우(도자기): 완료), 덮어쓰우기 3개(치료완료) ==> 결재완료(50만원) ==> 총 206만원 
2. 어금니 4개 끼우는데 씨려서 통증이 심했음 
3. 몇일 동안 이가 씨린다고 하니 짠 것, 뜨거운 것을 삼가할 것 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.07.28(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:50 ~ 18:00  --> 주간보고서 작성 

- IMK 차세대Prj
- MP 영업 DashBoard 개발 
1. MP 영업 DashBoard DB 연결 
1) MP 영업 DashBoard 
2) MP 영업 DashBoard 주요지표 
3) MP 영업 DashBoard Left 
==============================================================================================================

- UX Studio 이미지 실행시 부팅시간 절약 
1. Tools ==> Options(새창) --> Etc: Reopen last open projcet on Startup(R): 체크 해제(OK: 클릭) 
==============================================================================================================

- 메인 URL  ==> BY/TD::BYTDM03M.xfdl 
1. mpMainBlank.xfdl 파일에서 
function fn_setMain(formKey) { 
	 if (formKey == "SP") { 
		 divMain.url = "main::mpMainSP.xfdl"; 
	 } else {  //BY(영업) 일때 
		divMain.url = "BYTD::BYTDM03M.xfdl";  //MP 영업 DashBoard 호출 
	 } 
} 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.07.29(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:50 ~ 18:00  --> 휴가1 

- 휴가1
08:00 기상 
10:30 냉장고(LG R-B247QV(237L)) 도착, 설치 
12:00 중식 
12:40 집출발 
13:20 강남 고속터미널 
13:40 강남 고속터미널 출발 
17:20 동대구 고속터미널 도착 
18:20 i3shop 4층 전산실(김과장, 배과장, 현애) 
18:40 소백산왕소금구이(호진): 4만 천원 
20:40 종료 
21:00 독도횟집(신천 시장내): 창환이형, 일남, 태용 
22:00 당구장(꼴찌함: 만 7천원) 
23:40 종료 
24:20 일남집(동변동), 샤워 
24:50 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.07.30(토) 작업 ■■■■■■■■■■■■■■■■
---> 07:50 ~ 18:00  --> 휴가2 

- 휴가2
08:00 기상 
08:30 조식(인선, 근아, 성은) 
09:00 일남집 출발(근아, 성은 만원씩 줌) 
09:30 동부 정류장(버스비: 7,400원) 
11:10 포항 터미널 
11:50 포항집 
12:00 중식  
19:30 석식  ==> 포항불빛축제(안 보러 감, 포 쏘는 소리만 들음) 
24:50 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.07.31(일) 작업 ■■■■■■■■■■■■■■■■
---> 07:50 ~ 18:00  --> 휴가3 

- 휴가3
08:00 기상 
08:30 조식 
12:00 중식  
19:30 석식 
24:50 취침 
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■