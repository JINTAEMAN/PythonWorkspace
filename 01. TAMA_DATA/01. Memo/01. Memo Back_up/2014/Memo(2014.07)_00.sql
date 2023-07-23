

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2014.07) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2014.07.01(화) 작업 ■■■■■■■■■■■■■■■
---> 07:50 ~ 21:00 --> 야근(석식)

- SMART TV App Mgt Prj
1. App Info 상세화면 목업 작업
http://localhost:8080/Sapphire/app/registration/detail/view/1404070000001/14001/10TV
@RequestMapping(value = "/{siteId}/app/registration/detail/view/{appId}/{appVerSeqNo}/{mdlGrpId}", method = RequestMethod.GET)
==> /front/application/appmgmt/appmgmt_detail
-------------------------------------------------------------------------------------------------------

http://localhost:8080/Sapphire/app/registration/list
@RequestMapping(value = "/{siteId}/app/registration/list", method = RequestMethod.GET)
==> /front/application/appmgmt/appmgmt_list  
==============================================================================================================

- Ap Info lIST  정보 조회 @@@@@@@@@@@@@ ==> /front-app-query.xml/selectAppMgmtList()
logger.debug("[/AppManagementController.java][appDetailInfo()] ==> [test]"); 
selectAppMgmtList
==============================================================================================================
 
http://localhost:8080/Sapphire/app/registration/detail/view/1404070000001/14001/10TV
- 정상(NO 데이타)
http://localhost:8080/Sapphire/app/registration/detail/view/1405010000005/2/all

- 정상(데이타 존재)
http://localhost:8080/Sapphire/app/registration/detail/view/A201406000928/1/all
[DEBUG] 2014-07-01 15:19:43.330 com.samsung.sapphire.ui.front.application.appmgmt.controller.AppManagementController - 
[/AppManagementController.java][mdlGrpList()] ==>
[mlGrpAppInfoList][{OPEN_CLOSE=Open 0Critical 0, APP_MDL_STAT_NM=Request Test, APP_VER_SEQ_NO=1, 
UPDATE_DATE=2014-06-26, APP_VER_INFO=1.234, APP_MDL_STAT_CD=AP.CS.VF.2010, APP_TTL=appId2014, 
SALES_APP_VER= , MDL_GRP_NM=14TV, APP_OPEN_TTL=TV에 노출될 앱 제목을 언어에 맞게 입력하세요, 
MDL_GRP_ID=006, APP_ID=A201406000928}]

- 에러(데이타 존재)  ==> 해결
http://localhost:8080/Sapphire/app/registration/detail/view/1404070000001/14002/all 
- [/AppManagementController.java][mdlGrpList()] ==> [mlGrpAppInfoList][{OPEN_CLOSE=Open 0Critical 0, 
APP_VER_SEQ_NO=14002, UPDATE_DATE=2014-06-30, APP_VER_INFO=2.010, APP_MDL_STAT_CD=AP.CS.VF, 
PP_TTL=app_ttl_test_1, SALES_APP_VER= , MDL_GRP_NM=10TV, APP_OPEN_TTL=app_open_ttl, MDL_GRP_ID=10TV, 
APP_ID=1404070000001}] ==> APP_MDL_STAT_CD=AP.CS.VF 필드에 데이타는 필히 존재할 것
==============================================================================================================

- appmgmt.js 파일에서
AppManager.prototype.appFileDownLoad1 = appFileDownLoad1;
AppManager.prototype.appFileDownLoad2 = appFileDownLoad2;
AppManager.prototype.appFileDownLoad3 = appFileDownLoad3;
-----------------------------------------------------------------------------------------------------

AppManager.prototype.setAppImgUrl = setAppImgUrl;
AppManager.prototype.appImgUrl = appImgUrl; 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.07.02(수) 작업 ■■■■■■■■■■■■■■■
---> 07:50 ~ 18:00 -->  

- SMART TV App Mgt Prj1. App Info 상세화면 목업 작업
http://localhost:8080/Sapphire/app/registration/detail/view/1404070000001/14001/10TV
==============================================================================================================

- DB 테이블 변경
1. DBA에서 테이블명, 필드 일부 변경 처리
==============================================================================================================

- 파워포인트 링크
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.07.03(목) 작업 ■■■■■■■■■■■■■■■
---> 07:50 ~ 18:00 --> 

- SMART TV App Mgt Prj1. App Info 상세화면 목업 작업
http://localhost:8080/Sapphire/app/registration/detail/view/1404070000001/14001/10TV
==============================================================================================================

- DB 테이블 변경
1. DBA에서 테이블명, 필드 일부 변경 처리
==============================================================================================================

- eclipse 실행 에러
7월 03, 2014 12:57:05 오후 org.apache.catalina.core.ApplicationContext log
심각: StandardWrapper.Throwable
org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named 'cxf' is defined
---------------------------------------------------------------------------------------------------------

1. 현상: mySingleApprovalTask 에러 뜨고 /Calendar-Event-query.xml 파일에서 ==> EventVo 파일 인식 못함
 2. 조치: /com.samsung.sapphire 삭제 후 다시 받고 /com.samsung.element 들을 하나씩 Clean Up((Run as > Ant Build)
==============================================================================================================

- eclipse 실행 에러심각: Exception sending context initialized event to listener instance of class org.springframework.
web.context.ContextLoaderListenerorg.springframework.beans.factory.BeanCreationException: Error creating bean with name 
'mySingleApprovalTask':Injection of autowired dependencies failed; nested exception is org.springframework.beans.factory.
BeanCreationException: Could not autowire field: private com.samsung.element.manager.system.service.ApprovalService 
com.samsung.element.engines.mysingle.task.MySingleApprovalTask.approvalService; nested exception is 
org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'ElementApprovalServiceImpl': 
Injection of autowired dependencies failed; nested exception is org.springframework.beans.factory.BeanCreationException:
Could not autowire field: private com.samsung.element.engines.file.service.AttachFileService 
com.samsung.element.manager.system.service.impl.ApprovalServiceImpl.fileService; nested 
exception is org.springframework.beans.factory.BeanCreationException: Error creating bean with nam
e 'ElementAttachFileServiceImpl': Injection of autowired dependencies failed; nested exception is
org.springframework.beans.factory.BeanCreationException: Could not autowire field: private com.
samsung.element.engines.file.dao.AttachFileDao com.samsung.element.engines.file.service.impl.AttachFileServiceImpl.
attachFileDao;nested exception is org.springframework.beans.factory.BeanCreationException: Error creating bean 
with name'ElementAttachFileDao': Injection of autowired dependencies failed; nested exception is 
org.springframework.beans.factory.BeanCreationException: Could not autowire method: public final void 
org.mybatis.spring.support.SqlSessionDaoSupport.setSqlSessionFactory(org.apache.ibatis.session
.SqlSessionFactory);nested exception is org.springframework.beans.factory.BeanCreationException: 
Error creating bean with name 'sqlSessionFactory' defined in file [D:\sapphire\webapp\WEB-INF\classes\spring\context-common.xml]: 
Invocation of init method failed; nested exception is org.springframework.core.NestedIOException: Failed to parse mapping resource:
'file [D:\sapphire\webapp\WEB-INF\classes\query\element\calendar-Admin-query.xml]'; 
nested exception is java.lang.RuntimeException: Error parsing Mapper XML.  Cause: java.lang.IllegalArgumentException: 
Mapped Statements collection already contains value for Calendar.Admin.getLanguageList
---------------------------------------------------------------------------------------------------------

1. 현상: mySingleApprovalTask 에러 뜨고 /Calendar-Event-query.xml 파일에서 ==> EventVo 파일 인식 못함 
2. 조치: /com.samsung.sapphire 삭제 후 다시 받고 /com.samsung.element 들을 하나씩 Clean Up((Run as > Ant Build)
==============================================================================================================

- clipse 실행 에러
심각: Exception sending context initialized event to listener instance of class org.springframework.web.context.ContextLoaderListener
org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'mySingleApprovalTask': Injection of 
autowired dependencies failed; nested exception is org.springframework.beans.factory.BeanCreationException: 
Could not autowire field: private com.samsung.element.manager.system.service.ApprovalService c
om.samsung.element.engines.mysingle.task.MySingleApprovalTask.approvalService; 
nested exception is org.springframework.beans.factory.BeanCreationException: Error creating bean with name 
'ElementApprovalServiceImpl': Injection of autowired dependencies failed; nested exception i
s org.springframework.beans.factory.BeanCreationException: Could not autowire field: 
private com.samsung.element.engines.file.service.AttachFileService com.samsung.element.manager.system.service.impl.ApprovalServiceImpl.fileService; 
nested exception is org.springframework.beans.factory.BeanCreationException: Error creating bean with name
'ElementAttachFileServiceImpl': Injection of autowired dependencies failed; nested exception is 
org.springframework.beans.factory.BeanCreationException: Could not autowire field: 
private com.samsung.element.engines.file.dao.AttachFileDao com.samsung.element.engines.file.service.impl.AttachFileServiceImpl.attachFileDao; 
nested exception is org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'ElementAttachFileDao': Injection of autowired dependencies failed; 
nested exception is org.springframework.beans.factory.BeanCreationException: Could not autowire method:
public final void org.mybatis.spring.support.SqlSessionDaoSupport.setSqlSessionFactory(org.apache.ibatis.session.SqlSessionFactory); 
nested exception is org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'sqlSessionFactory' 
defined in file [D:\sapphire\webapp\WEB-INF\classes\spring\context-common.xml]: Invocation of init method failed; 
nested exception is org.springframework.core.NestedIOException: Failed to parse mapping resource: 
'file [D:\sapphire\webapp\WEB-INF\classes\query\sapphire\front-app-query.xml]'; nested exception is org.apache.ibatis.builder.BuilderException: 
Error creating document instance.  Cause: org.xml.sax.SAXParseException; lineNumber: 4356; columnNumber: 4; 
The element type "mapper" must be terminated by the matching end-tag "</mapper>".
at org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor.postProcessPropertyValues(AutowiredAnnotationBeanPostProcessor.java:289)
---------------------------------------------------------------------------------------------------------

1. 현상: mySingleApprovalTask 에러 뜨고 /Calendar-Event-query.xml 파일에서 ==> EventVo 파일 인식 못함
 2. 조치: D:\sapphire\webapp 폴더 삭제 후 다시 받고 Clean Up((Run as > Ant Build)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.07.04(금) 작업 ■■■■■■■■■■■■■■■ 
---> 07:50 ~ 18:00 --> 
 
 - SMART TV App Mgt Prj1. App Info 상세화면 목업 작업
 http://localhost:8080/Sapphire/app/registration/detail/view/1404070000001/14001/10TV 
 1) modal 작업 /appmgmt_detail_modify.jsp 
 // 01. button Modify App Info(Link)@RequestMapping(value = "/{siteId}/app/registration/detail/edit/{appId}/
 {appVerSeqNo}", method = RequestMethod.GET)http://localhost:8080/Sapphire/app/registration/detail/edit
 /1404070000001/14001/modal_quick_release.jsp 
 // 02. button Quick Release  ==> 완료/modal_quick_release.jsp
 // 03. button Version Up(Link)2) modal 작업 /modal_request_drop.jsp
 // 51. Drop ==>  test ===>/modal_request_add_model_group.jsp
 // 52. Request Add Model Group  /modal_request_launch.jsp
 // 53. Request Launch 3) Tab 작업01. Tab(App Information) 
 ==> /appmgmt_detail_appinfo.jsp(/appmgmt_detail_modify.jsp)0
 2. Tab(Defect) ==> /appmgmt_detail_defect.jsp03. Tab(History) ==>
 /appmgmt_detail_history.jsp 
 
 SMART TV App Mgt Prj 메인: http://localhost:8080/Sapphire/portal/main
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.07.05(토) 작업 ■■■■■■■■■■■■■■■ 
---> 06:30 ~ 18:00 -->

-주말
09:00 기상
09:30 조식(식빵)
10:00 병원(내과): 루옌 목감기
10:20 봉원중학교(506번)
10:40 숭실대입구역
11:20 학동역
11:30 하이맨 남성의원
11:40 정관 수술(이형준 원장님): 21만 5천원
12:00 종료
12:20 서울세관 사거리(6411번)
13:30 귀가
13:50 중식
14:00 낮잠
17:00 기상
17:30 이마트 쇼핑(테팔 토스트기 구입) ==> 신라면 5개(5만원 이상 3번 방문 이벤트)
20:00 종료
21:00 귀가
23:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.07.06(일) 작업 ■■■■■■■■■■■■■■■  
---> 06:30 ~ 18:00 --> 정관 수술해서 축구 못 감

- 주말2
09:00 기상
09:30 조식(식빵)
10:00 대청소
12:00 중식(삼계탕)
12:50 쇼핑(과일, 아이스크림)
13:10 대규 방문(옷, 책 선물 받음), 작은 아버지 수종 돌잔치 축의금(5만원) 받음
14:20 종료
17:00 쇼핑
18:30 석식(소갈비탕, 제육볶음): 만 4천원
19:00 귀가
23:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.07.07(월) 작업 ■■■■■■■■■■■■■■■\
---> 07:50 ~ 19:30 --> 프로젝트 다과회(식당)

- SMART TV App Mgt Prj
1. App Info 상세화면 목업 작업http://localhost:8080/Sapphire/app/registration/detail/view/1404070000001/14001/10TV  
1) modal 작업 /appmgmt_detail_modify.jsp // 01. button Modify App Info(Link)@RequestMapping(value = "/{siteId}
/app/registration/detail/edit/{appId}/{appVerSeqNo}", method = RequestMethod.GET)http://localhost:8080/Sapphire/app/registration/detail/edit/1404070000001/14001http://localhost:8080/Sapphire/app/registration/detail/edit/A201407001207/1/modal_quick_release.jsp // 02. button Quick Release  ==> 완료Request Launch 조건(AP.CS.FR.3070 -> AP.CS.FR.3010로 변경됨)/modal_quick_release.jsp // 03. button Version Up(Link)2) modal 작업 /modal_request_drop.jsp// 51. Drop ==>  test ===>/modal_request_add_model_group.jsp// 52. Request Add Model Group  /modal_request_launch.jsp// 53. Request Launch    ===>==> Waiting Launch 인 것만 처리 3) Tab 작업01. Tab(App Information) ==> /appmgmt_detail_appinfo.jsp(/appmgmt_detail_modify.jsp)02. Tab(Defect) ==> /appmgmt_detail_defect.jsp03. Tab(History) ==> /appmgmt_detail_history.jsp SMART TV App Mgt Prj 메인: http://localhost:8080/Sapphire/portal/main========================================================================================================= =========================================================================================================- 구매 고민1. 찜질기(다용도 숯 황토 온열찜질기): http://itempage3.auction.co.kr/DetailView.aspx?itemno=A524269299&frm3=V22. 정수기3. 공기청정기(제습기)========================================================================================================= =========================================================================================================■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ +---------------------------------// 2014.07.08(화) 작업 //---------------------------------------+ ■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ ---> 07:50 ~ 19:30 --> 비 맞고 출근함- SMART TV App Mgt Prj 2) modal 작업 /modal_request_drop.jsp// 51. Drop ==>  test ===>/modal_request_add_model_group.jsp// 52. Request Add Model Group  /modal_request_launch.jsp// 53. Request Launch    ===>==> Waiting Launch 인 것만 처리 ==> Waiting Launch(AP.CS.RL.5010 ~ AP.CS.RL.5050)/modal_request_drop.jsp// 51. Drop ==>  test ===>========================================================================================================= =========================================================================================================■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ +---------------------------------// 2014.07.09(수) 작업 //---------------------------------------+ ■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ ---> 07:50 ~ 18:10 --> 정관 수술 붕대 품(샤워함)- SMART TV App Mgt Prj 2) modal 작업 /modal_request_drop.jsp// 51. Drop ==>  test ===>/modal_request_add_model_group.jsp// 52. Request Add Model Group  ==> /appmgmt_step2.jsp   -> S_AP_MDL_GRP: 20_모델그룹 TB/modal_request_launch.jsp// 53. Request Launch    ===>==> Waiting Launch 인 것만 처리 ==> Waiting Launch(AP.CS.RL.5010 ~ AP.CS.RL.5050) /modal_request_drop.jsp// 51. Drop ==>  test ===>========================================================================================================= =========================================================================================================- Hostway에 위치한 사파이어 개발DB 방화벽 해제작업이 완료  tnsname.ora SAPPAD =    (DESCRIPTION =       (ADDRESS =          (PROTOCOL = TCP)         (HOST = 207.**.**.**)         (PORT = 1521)      )      (CONNECT_DATA =          (SERVICE_NAME = **)      )   ) ========================================================================================================= ========================================================================================================= # DIAMOND DB(DB 설정)  ==> /config.properties 파일에서webapp.driverClassName=net.sf.log4jdbc.DriverSpywebapp.url=jdbc:log4jdbc:oracle:thin:@203.***:1666:DIAMONDwebapp.username=SPPHR_Wwebapp.password=spphrwas4!========================================================================================================= =========================================================================================================■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ +---------------------------------// 2014.07.10(목) 작업 //---------------------------------------+ ■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ ---> 07:50 ~ 19:40 --> - SMART TV App Mgt Prj 2) modal 작업 /modal_request_drop.jsp// 51. Drop ==>  test ===>/modal_request_add_model_group.jsp// 52. Request Add Model Group  ==> /appmgmt_step2.jsp   -> S_AP_MDL_GRP: 20_모델그룹 TB/modal_request_launch.jsp// 53. Request Launch    ===>==> Waiting Launch 인 것만 처리 ==> Waiting Launch(AP.CS.RL.5010 ~ AP.CS.RL.5050)  ========================================================================================================= =========================================================================================================- Doc Base 확인1. D:\sapphire\webapp --> D:\_sapphire\webapp 변경 요청 => D:\sapphire\webapp이 맞음D:\sapphire\webapp\WEB-INF\classes\query\sapphire defectLibraryMgmt-query.xml, release-query.xml, testRefMgmt-query.xml --> 3개 파일 삭제========================================================================================================= =========================================================================================================-  참조 자료ㅇ Seller Office 소스 경로 :[File 서버]\document\04. 참고자료 (Reference)\99.ASIS_산출물\SellerOffice\소스코드\AStore-Seller-2014.07.03-KCY.zipㅇ Seller Office 접속 URL : http://seller.samsungapps.com/  ID/PWD = *@gmail.com / **ㅇ 화면 : \WebContent\WEB-INF\jsp\TVStore\account\calculateㅇ Action : osp.tvstore.accounting.calculate.actionㅇ service : osp.tvstore.accounting.calculate.service ========================================================================================================= =========================================================================================================■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ +---------------------------------// 2014.07.11(금) 작업 //---------------------------------------+ ■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ ---> 07:50 ~ 19:50 --> 석식(집에서 식빵 3개 가지고 옴)- SMART TV App Mgt Prj 2) modal 작업 /modal_request_drop.jsp// 51. Request Drop ==>  test ===>/modal_request_add_model_group.jsp// 52. Request Add Model Group==> /appmgmt_step2.jsp   -> S_AP_MDL_GRP: 20_모델그룹 TB/modal_request_launch.jsp// 53. Request Launch    ===>==> Waiting Launch 인 것만 처리 ==> Waiting Launch(AP.CS.RL.5010 ~ AP.CS.RL.5050)  ========================================================================================================= =========================================================================================================- Model Group Status 코드1. Pre Test --> 2. Doc Review --> 3. Verification--> 4. Defect Review --> 5. Contents Review -->  6. SP Review========================================================================================================= =========================================================================================================S_CF_APP_VER_TEST E,               -- 30_앱버전테스트 TBS_CF_APP_VER_TEST_DFCT F       -- 30_앱버전테스트결함 TB S_CF_DFCT_LIB  --  30_결함라이브러리 TB ========================================================================================================= =========================================================================================================insertRequestDropDiscntnuinsertRequestDropDiscntnuMdlGrpRelDISCNTNU_IDS_AP_DISCNTNU_MDL_GRP_REL   -- 20_중단앱버전모델그룹관계========================================================================================================= =========================================================================================================■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ +---------------------------------// 2014.07.12(토) 작업 //---------------------------------------+ ■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ ---> 06:30 ~ 18:00 -->- 주말08:00 기상08:30 조식(식빵)09:00 봉원중학교(506번)09:10 숭실대입구역 09:25 학동역09:30 하이맨 남성의원09:40 정관 수술 실밥 품(이형준 원장님): 2분 걸림09:45 종료09:50 서울세관 사거리(6411번)10:30 귀가11:50 집출발12:30 구로디지털역13:00 일품요리학원(다문화 요리 교실 참여: 짜장면 만들기)14:00 루옌 짜장면 만들어서 같이 먹음14:30 종료15:00 이마트 쇼핑(빵, 수종 옷)17:00 종료18:00 귀가20:00 팥빙수 만들어 먹음23:00 취침========================================================================================================= =========================================================================================================■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ +---------------------------------// 2014.07.13(일) 작업 //---------------------------------------+ ■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ ---> 06:30 ~ 18:00 --> 정관 수술 때문에 제대로 못 뜀▦조기축구05:00 기상05:10 브라질 월드컵 3,4위전(네덜란드 3:0 브라질)06:30 국민은행 봉천동지점 앞(태훈이형 차) 07:00 신구초등학교 07:30 숏게임(1:0 패)08:00 게임(6:4 패) ==> 40대, 50대 수박내기 게임에서 패10:30 숏게임(1:0 패)10:45 종료11:30 중식(갈비탕: 문경새재): 만원 냄12:20 종료13:20 귀가15:00 낮잠16:00 기상18:00 석식(순대국집)19:30 쇼핑(라붐 아울렛: 루옌 바지(29,000원)20:00 귀가23:00 취침========================================================================================================= =========================================================================================================■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ +---------------------------------// 2014.07.14(월) 작업 //---------------------------------------+ ■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ ---> 07:50 ~ 19:50 -->  브라질 월드컵 결승전(독일 1:0 아르헨티나[연장전]), 석식(집에서 식빵 4개 가지고 옴)- SMART TV App Mgt Prj 2) modal 작업 /modal_request_drop.jsp// 51. Request Drop ==> 완료insertRequestDropDiscntnuinsertRequestDropDiscntnuMdlGrpRe ==> S_AP_DISCNTNU_MDL_GRP_REL( 20_중단앱버전모델그룹관계 TB)  ========================================================================================================= =========================================================================================================■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ +---------------------------------// 2014.07.15(화) 작업 //---------------------------------------+ ■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ ---> 07:20 ~ 19:50 --> 프로젝트 계약[(주)아리츠 이윤지 과장, 530, 9월까지]- SMART TV App Mgt Prj 2) modal 작업/modal_request_add_model_group.jsp// 52. Request Add Model Group==> /appmgmt_step2.jsp   -> S_AP_MDL_GRP: 20_모델그룹 TBhttp://localhost:8080/Sapphire/app/registration/verUp/edit/A201407000001/1 ========================================================================================================= =========================================================================================================- CLOB 에러1. 에러 내용: ->java.util.HashMap["TV_DESC_CTNT"]->oracle.sql.CLOB["characterStream"])2. 수정
/* [by tamario2.jin(2014.07.14)] ==> [앱버전서비스 목록조회] - [/front-app-query.xml > selectListAppVerSvcLang()]  */  
SELECT A.APP_ID,
<!-- <br>A.TV_DESC_CTNT,<br>A.WEB_DESC_CTNT,<br>--> 
DBMS_LOB.SUBSTR(A.TV_DESC_CTNT, DBMS_LOB.GETLENGTH(A.TV_DESC_CTNT),1) TV_DESC_CTNT,
DBMS_LOB.SUBSTR(A.WEB_DESC_CTNT, DBMS_LOB.GETLENGTH(A.WEB_DESC_CTNT),1) WEB_DESC_CTNT,
 FROM  S_AP_SVC_LANG A
--;
==============================================================================================================

- 앱 등록
1. /AppManagementController.java 파일에서
@RequestMapping(value = "/{siteId}/app/registration/new", method = RequestMethod.POST)
public ModelAndView appRegi(@PathVariable("siteId") String siteId, @RequestParam HashMap appInfo, 
@AuthenticationPrincipal Member member) throws Exception {
int nAppSeqMaxNo = appService.createAppRegi(appInfo);   // 앱 등록
}

2. /AppServiceImpl.java 파일에서
@Transactional(rollbackFor={Exception.class})
public int createAppRegi(HashMap<String>, String> paramMap) throws Exception{

if ( "T".equals(sTblInclude) ) {
updateAppVerMdlGrpRel(hTempMap);//기존 저장되었던 사용여부를 N처리한 후 업데이트를 해야 기존선택 한 것들 중 
제외된것들이 빠지게된다.

for(int i = 0; i < saMdlGrpId.length; i++) { 
hFixMap.put("mdlGrpId", saMdlGrpId[i]);
hFixMap.put("appTrTypCd", saAppTrTypCd[i]);
hFixMap.put("certStepCd", saCertStepCd[i]);
hFixMap.put("dfctRvwStatCd", saDfctRvwStatCd[i]); 
mergeAppVerMdlGrpRel(hFixMap);  // MERGE
}
}
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ 
+---------------------------------// 2014.07.16(수) 작업 //---------------------------------------+ 
■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ 
---> 07:50 ~ 19:50 --> 

- SMART TV App Mgt Prj 
2) modal 작업
/modal_request_add_model_group.jsp// 52. Request Add Model Group
==> /appmgmt_step2.jsp   -> S_AP_MDL_GRP: 20_모델그룹 TB
http://localhost:8080/Sapphire/app/registration/verUp/edit/A201407000001/1 
==============================================================================================================
- 최종 앱 버전 순번(FNL_APP_VER_SEQ_NO)  생성
SELECT A.APP_ID appId,
        A.FNL_APP_VER_SEQ_NO "최종 앱 버전 순번",
 FROM S_AP_APP A 
;
1. App 등록시 앱 버전 순번(FNL_APP_VER_SEQ_NO) INSERT ==> 1.0000 , 1
2. Version Up시에 최종 앱 버전 순번(FNL_APP_VER_SEQ_NO) 업데이트 
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ 
+---------------------------------// 2014.07.17(목) 작업 //---------------------------------------+ 
■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ 
---> 07:20 ~ 21:50 --> TeamB 회의(22일까지 개발 완료, 토욜 근무, 식당:정책임이 커피 사줌)

- SMART TV App Mgt Prj03. Tab(History) ==> /appmgmt_detail_history.jsp
http://localhost:8080/Sapphire/app/registration/verUp/edit/A201407000001/1 
==============================================================================================================
- eclipse tomcat 서버 시작 에러
1. 현상:
심각: Exception sending context initialized event to listener instance of class org.springframework.web.context.ContextLoaderListener
org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'org.springframework.web.servlet.mvc
.method.annotation.RequestMappingHandlerMapping#0': Invocation of init method failed; nested exception is java.lang.IllegalStateException: 
Ambiguous mapping found. Cannot map 'SapphireAppAssignModalController' bean method 
public org.springframework.web.servlet.ModelAndView com.samsung.sapphire.ui.backoffice.normalapp.assign.controller.
AppAssignModalController.appAssign(java.lang.String,java.util.Map<java.lang.String>, java.lang.String>,org.springframework.ui.Model) 
throws java.lang.Exception
2. 조치: appAssign() 주석 처리
==============================================================================================================
 
D:\sapphire\workspace\com.samsung.sapphire\src\main\webapp\resources\img\samsung-bi
D:\sapphire\workspace\com.samsung.sapphire\src\main\webapp\resources\img\samsung-default
/img/samsung-default/glyphicons-halflings.png')
==============================================================================================================
http://localhost:8080/Sapphire/app/registration/detail/view/1404070000001/14001/10TV
http://localhost:8080/Sapphire/app/registration/detail/view2/1404070000001/14001/ALL
http://localhost:8080/Sapphire/app/registration/detail/view/A201407001301/1/all#
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ 
+---------------------------------// 2014.07.18(금) 작업 //---------------------------------------+ 
■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ 
---> 07:20 ~ 21:50 --> 

- SMART TV App Mgt Prj03. Tab(History) ==> /appmgmt_detail_history.jsp
http://localhost:8080/Sapphire/app/registration/verUp/edit/A201407000001/1 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ 
+---------------------------------// 2014.07.19(토) 작업 //---------------------------------------+ 
■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ 
---> 08:40 ~ 18:00 --> 주말 근무(정 책임이 SDS 김책임한테 신용카드 받아서 점심 사줌)

- SMART TV App Mgt Prj
/modal_request_add_model_group.jsp// 52. Request Add Model Group ==> 완료
==============================================================================================================
03. Tab(History) ==> /appmgmt_detail_history.jsp
1. 첨부 파일 확인
TN_CF_FILE: 첨부파일 관리 : 첨부파일 TB
S_AP_APP_VER_ATTCH_FILE: 20_앱버전첨부파일 TB
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ 
+---------------------------------// 2014.07.20(일) 작업 //---------------------------------------+ 
■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ 
---> 06:30 ~ 18:00 --> 

▦조기축구
06:15 기상
06:30 국민은행 봉천동지점 앞(태훈이형 차) 
07:00 신구초등학교 
07:30 숏게임(1:0 패)
08:00 게임(6:4 패) 
10:00 월례회의(상요형이 이즈미에서 교장 식사 대접했다고 화냄)
10:20 종료 ==> 루옌이 집에 전기 나갔다고 전화옴(5층 아저씨가 사람 불러서 해결해줌)
11:00 중식(설렁탕: 식당): 효순이형이 쏨
12:20 종료
13:00 귀가(루옌 신도림에 뽀로로 3D 보로 감)
13:00 낮잠
16:00 기상
18:00 석식(알탕, 냉면, 라뽁기, 김밥): 포마토
20:00 귀가
23:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ 
+---------------------------------// 2014.07.21(월) 작업 //---------------------------------------+ 
■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ 
---> 07:20 ~ 20:50 --> 개발 완료 대비(소스 서버에 올리기)

- SMART TV App Mgt Prj
1. 첨부 파일 확인
TN_CF_FILE: 첨부파일 관리 : 첨부파일 TB
S_AP_APP_VER_ATTCH_FILE: 20_앱버전첨부파일 TB
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ 
+---------------------------------// 2014.07.22(화) 작업 //---------------------------------------+ 
■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ 
---> 07:20 ~ 19:50 --> 개발 완료(고객 시연)

- SMART TV App Mgt Prj
03. Tab(History) ==> /appmgmt_detail_history.jsp
http://localhost:8080/Sapphire/app/registration/detail/view/A201407002181/1/all/all
==============================================================================================================
- UploadController_파일 다운로드 기록 제거(/UploadController.java 파일에서)
@RequestMapping(value = "/{siteId}/download/{fileKey}", method = RequestMethod.GET)
public void download(HttpServletRequest request, HttpServletResponse response, @PathVariable("fileKey") String fileKey, 
@PathVariable("siteId") String siteId, @RequestParam(value = "thumb", required = false) boolean thumb, 
@AuthenticationPrincipal Member member) throws Exception {
 
try {
//attachFileService.createFileDownLog(UUID.randomUUID().toString(), fileId, fileSeq, 
member.getUser(siteId).getUserId()); 
fis = new FileInputStream(file);
FileCopyUtils.copy(fis, out); 
} 
}
==============================================================================================================
 
- 크롬(Crome) 디버깅
http://opentutorials.org/course/580/4152
http://cafe.naver.com/webmarkup/2009

var console = window.console  {log:function(){}};    // javascript에서 사용 @@@
console.log("[/appmgmt_detail_history.jsp] [gridVersionHistoryList()] ==> [aData.APP_VER_NM]"+  aData.APP_VER_NM
+"[aData.APP_VER_SEQ_NO]"+  versionNm01 );
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ 
+---------------------------------// 2014.07.23(수) 작업 //---------------------------------------+ 
■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ 
---> 07:20 ~ 19:50 --> 장마(출근길 비 많이 옴)

- SMART TV App Mgt Prj
03. Tab(History) ==> /appmgmt_detail_history.jsp
http://localhost:8080/Sapphire/app/registration/detail/view/A201407001301/1/all/all
http://localhost:8080/Sapphire/app/registration/detail/view/A201407002181/1/all/all
http://localhost:8080/Sapphire/app/registration/detail/view/A201407000022/1/all/all
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ 
+---------------------------------// 2014.07.24(목) 작업 //---------------------------------------+ 
■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ 
---> 07:20 ~ 19:50 --> 

- SMART TV App Mgt Prj
03. Tab(History) ==> /appmgmt_detail_history.jsp
1) 02. App Info Change History  ==> DB 데이타 INSERT(S_AP_APP_CHNG, S_AP_APP_CHNG_DTL_LST)
http://localhost:8080/Sapphire/app/registration/detail/view/A201407001301/1/all/all
http://localhost:8080/Sapphire/app/registration/detail/view/A201407002181/1/all/all
http://localhost:8080/Sapphire/app/registration/detail/view/A201407000022/1/all/all
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ 
+---------------------------------// 2014.07.25(금) 작업 //---------------------------------------+ 
■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ 
---> 07:30 ~ 19:50 --> 

- SMART TV App Mgt Prj
03. Tab(History) ==> /appmgmt_detail_history.jsp
/modal_app_version_info.jsp
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ 
+---------------------------------// 2014.07.26(토) 작업 //---------------------------------------+ 
■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ 
---> 08:40 ~ 18:00 --> 주말(금산에서 장모님 방문)

- SMART TV App Mgt Prj
08:15 기상 
09:00 조식(식빵)
10:00 집출발
10:30 고속터미널역
10:35 쇼핑(고속터미널역 상가): 루옌 티(만원) 사줌
12:20 장모님 도착(홍삼 2박스 부모님 선물로 사옴)
13:20 중식(알탕 2, 돈까스, 라뽁이): 장모님이 쏨
13:50 귀가
14:00 낮잠
18:00 기상
19:00 석식
20:00 귀가
23:00 취침
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ 
+---------------------------------// 2014.07.27(일) 작업 //---------------------------------------+ 
■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ 
---> 06:30 ~ 18:00 --> 

▦조기축구
06:15 기상
06:30 국민은행 봉천동지점 앞(태훈이형 차) 
07:00 신구초등학교 
07:30 숏게임(1:0 패)
08:00 게임(2:0 승): 도곡 조기회 
08:00 게임(1:1 무): 4게임함
11:30 종료
11:50 중식(갈비탕: 문경새재): 만원 냄
1:240 종료
13:20 귀가
13:00 낮잠
16:00 기상
18:00 석식
20:00 귀가
23:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ 
+---------------------------------// 2014.07.28(월) 작업 //---------------------------------------+ 
■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ 
---> 07:30 ~ 19:50 -->  

- SMART TV App Mgt Prj
03. Tab(History) ==> /appmgmt_detail_history.jsp
/modal_app_version_info.jsp
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ 
+---------------------------------// 2014.07.29(화) 작업 //---------------------------------------+ 
■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ 
---> 07:30 ~ 20:00 --> 추가 수정 요구 사항 다시 옴

- SMART TV App Mgt Prj
2) modal 작업 
/modal_request_drop.jsp// 51. Drop ==>  test ===>
/modal_request_add_model_group.jsp// 52. Request Add Model Group  
/modal_request_launch.jsp// 53. Request Launch
/modal_app_version_info.jsp// 54. 버전 정보
http://localhost:8080/Sapphire/app/registration/m_app_version_info/3201407002622/1 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ 
+---------------------------------// 2014.07.30(수) 작업 //---------------------------------------+ 
■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ 
---> 07:30 ~ 20:00 --> 7.30 재보선(새누리당 압승), 장인 어른 방문(채류기간 연장, 여름 휴가)

- SMART TV App Mgt Prj
/modal_app_version_info.jsp// 54. 버전 정보(추후 UP DOWN 문제 수정하기로 함) 
/modal_language.jsp// 55. 언어 정보 ==> 이지선씨가 하기로 함
/modal_country.jsp// 56. 국가 정보
==============================================================================================================

- 마이싱글(임시) 비밀번호 변경
diamond.sds / sds##1212  ===> 사용자명: DIAMOND.SDS
diamond.sds@samsung.com
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ 
+---------------------------------// 2014.07.31(목) 작업 //---------------------------------------+ 
■■■■■■■■■■■■■■■■■■ 2014.07.01(토) 작업 ■■■■■■■■■■■■■■■ 
---> 07:30 ~ 19:50 --> 

- SMART TV App Mgt Prj
/modal_country.jsp// 56. 국가 정보  ==> 완료
/modal_quick_release.jsp // 02. button Quick Release  ==> 날짜 수정  ==> 완료
1. 수정, 버전업 조건 수정   ==> 완료
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■