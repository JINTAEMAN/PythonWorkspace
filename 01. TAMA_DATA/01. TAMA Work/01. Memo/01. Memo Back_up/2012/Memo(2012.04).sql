

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2012.04) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2012.04.01(일) 작업 ■■■■■■■■■■■■■■■
---> 13:30 ~ 16:20 

- IOSP(/oauth2) Prj
- PVT 전체 점검 
1. 04.01(일) 13시부터 전체 점검 진행 
2. 14시 PL 회의(이상 없음) 
==============================================================================================================
▦조기축구 

08:30 기상 
09:30 신구초등학교 
10:00 조기축구(6:4 승) 
11:00 종료 
11:30 중식(밥도둑: 동태찌게): 회에서 쏨 
12:30 종료 
13:30 출근(강남역 823 빌딩) 
18:00 퇴근 
18:10 석식 
19:40 귀가 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.04.02(월) 작업 ■■■■■■■■■■■■■■■
---> 07:20 ~ 22:00  --> 당구비(조과장): 3구(7개 놓고 짐), 자리이동(옆자리 박승필 과장 이동) 

- IOSP(/oauth2) Prj
- client stub 수정 
1. lib jar 등록 
1) json-lib-2.4-jdk15.jar, spring-test-3.0.6.RELEASE.jar 
2) 경로: D:\OSP2.5\workspace\IOSP\Workspace\ClientStubSample\trunk\lib, C:\OSP2.5\lib_repository\repository  
==============================================================================================================

- /client/auth/AuthServiceClient.java 
public static void main(String[] args) {  
try { 
obj = createUserAuthToken(request);  // 1. authenticate Flow  
new XStream().toXML(obj, System.out);  
Thread.sleep(1000 * 3); 
} 
} 

public static Object createUserAuthToken(HttpServletRequest  request) throws Exception { 
     AuthServiceResourceClient client = new AuthServiceResourceClient(strUrl);  
       setHttpHeader(client); 
          
        List response = client.createUserAuthToken(request);  // 1. authenticate Flow   
System.out.println("[createUserAuthToken()] ==> [결과 @@@@@@] [response]"+ response ); 

return response; 
    } 
--------------------------------------------------------------------------------------------------------- 

- createAuthorizationCode 에러(/AuthServiceClient.java 에서): 박종영 차장이 2시간 동안 고민(해결 실패) 
at com.samsungosp.auth.oauth2.service.AuthServiceResourceClient.createAuthorizationCode(Unknown Source) 
com.sun.jersey.api.client.ClientHandlerException: A message body reader for Java type, i 
nterface java.util.List, and MIME media type, application/json;charset=UTF-8, was not found 
==============================================================================================================

- /client/billing/BillingClient.java 
public static void main(String[] args) {  
try { 
obj = initCarrierBilling(); 
new XStream().toXML(obj, System.out);  
Thread.sleep(1000 * 3); 
} 
} 

public static Object initCarrierBilling() throws Exception {  
CarrierBillingServiceResourceClient client = new CarrierBillingServiceResourceClient(strUrl);  
setHttpHeader(client); 

CarrierBillingInitResponseVO rs = client.initCarrierBilling(requestVo);  
paymentID = rs.getPaymentID(); 
initTokenKey = rs.getInitTokenKey(); 
authURL = rs.getAuthURL(); 

return rs; 
} 
==============================================================================================================

- 대여한 돈 정리 전화 
1. 조남권(3천 돌려 달라고 전화 함 ==> 형수와 상의해서 준다고 함) 
2. 종록형(빌려간 50만원 4월 17일 준다고 함 ==> 계좌번호 문자 보냄) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.04.03(화) 작업 ■■■■■■■■■■■■■■■
---> 07:20 ~ 22:00 

- IOSP(/oauth2) Prj
- auth client stub POST방식 등록 에러 
1. /client/auth/AuthServiceClient.java에서 
public class AuthServiceClient {   
public static void main(String[] args) { 
endpointURI = STG2_SERVER + "/auth";   
MockHttpServletRequest request = new MockHttpServletRequest("POST", "/oauth2/authenticate"); 
   
try {   
request.setParameter("client_id", "j5p7ll8g33");   //client_id 
request.setParameter("client_secret","5763D0052DC1462E13751F753384E9A9");  //client_secret 
request.setParameter("grant_type","password");   //grant_type 
request.setParameter("username", "@yopmail.com");  //username 
request.setParameter("password", "osp123");  //password 
request.setParameter("scope", "test");      //scope 
request.setParameter("physical_address_text", "1234");     //physical_address_text 
request.setParameter("service_type", "M");  

obj = createUserAuthToken(request);  // 1. authenticate Flow  
System.out.println(""); 
Thread.sleep(1000 * 3);  

} catch (Exception e) { 
e.printStackTrace(); 
} 
} 

public static Object createUserAuthToken(HttpServletRequest  request) throws Exception {  
AuthServiceResourceClient client = new AuthServiceResourceClient(strUrl);  
setHttpHeader(client); 
   
List response = client.createUserAuthToken(request);  // 1. authenticate Flow   
System.out.print("[createUserAuthToken()] ==> [결과 @@@@@@] [response]"+ response ); 

return response; 
} 
} 

2. 에러 내용 
POST http://localhost:9080/auth/oauth2/authenticate returned a response status of 400, Error detail: !The error entity is empty! 
at com.samsungosp.auth.oauth2.service.AuthServiceResourceClient.createUserAuthToken(Unknown Source) 
at com.samsungosp.client.auth.AuthServiceClient.createUserAuthToken(AuthServiceClient.java:150) 
at com.samsungosp.client.auth.AuthServiceClient.main(AuthServiceClient.java:117) 
==============================================================================================================

- auth client stub GET방식 등록 에러  
1. /client/auth/AuthServiceClient.java에서 
public class AuthServiceClient {   
public static void main(String[] args) { 
endpointURI = STG2_SERVER + "/auth";   
MockHttpServletRequest request = new MockHttpServletRequest("POST", "/oauth2/authenticate"); 
   
try {  
obj = createAuthorizationCode();  // 2. authorize Flow 
new XStream().toXML(obj, System.out); 
System.out.println(""); 
Thread.sleep(1000 * 3);  

} catch (Exception e) { 
e.printStackTrace(); 
} 
} 

public static Object createAuthorizationCode() throws Exception {  
try { 
AuthServiceResourceClient client = new AuthServiceResourceClient(strUrl);  
setHttpHeader(client); 

String  response_type = "code"; 
String  client_id = "j5p7ll8g33"; 
String  userauth_token = "ijBsD4vfLX";  //발급된 UserAuthToken 
String  scope = ""; 
String  state = ""; 
String  physical_address_text = ""; 
String  service_type = ""; 
String  email_id = ""; 
String  redirect_uri = ""; 

List response = client.createAuthorizationCode(response_type, client_id, userauth_token, scope, state,  
physical_address_text, service_type, email_id, redirect_uri); 
System.out.print("[createAuthorizationCode()] ==> [결과 @@@@@@] [response]"+ response ); 

return response; 
} 
} 
} 

2. 에러 내용 
com.sun.jersey.api.client.ClientHandlerException: A message body reader for Java type, interface java.util.List,  
and MIME media type, application/json;charset=UTF-8, was not found 
at com.sun.jersey.api.client.ClientResponse.getEntity(ClientResponse.java:235) 
at com.sun.jersey.api.client.ClientResponse.getEntity(ClientResponse.java:200) 
at com.samsungosp.auth.oauth2.service.AuthServiceResourceClient.createAuthorizationCode(Unknown Source) 
at com.samsungosp.client.auth.AuthServiceClient.createAuthorizationCode(AuthServiceClient.java:187) 
at com.samsungosp.client.auth.AuthServiceClient.main(AuthServiceClient.java:104) 

3. 등록된 library 
1) /jersey-client-1.0.2.jar, /jersey-core-1.0.2.jar, /jersey-server-1.0.2.jar, /spring-test-3.0.6.RELEASE.jar 
/servlet-api-2.5-sources.jar 

4. 조치 완료 
1) /AuthServiceResource.java 파일에서 list 에서 String로 수정 
@ResponseResult("java.lang.String") 
public ModelAndView createUserAuthToken(OSPHttpHeaderInfo headers, HttpServletRequest request) throws Exception;   
==============================================================================================================

- /MemberServiceResourceImpl.java 파일에서 
    @OSP(category="MemberServiceResource", function="createMember") 
    @RequestMapping(value="/signup", method=RequestMethod.POST, headers={"accept=text/plain"}) 
    @ReqBodyArgument(name="memberCreateVO", type="com.samsungosp.social.member.orchestration.vo.MemberCreateVO") 
    public ModelAndView createMember(OSPHttpHeaderInfo header, HttpServletRequest request) { 
String sourceXml = OSPDataMapper.getXMLBodyFromHttpRequest(request);        
            MemberCreateVO memberCreateVO = (MemberCreateVO)OSPDataMapper.getObjectMappingFromXmlByX 
Stream(new XStream(), MemberCreateVO.class, sourceXml); 
            userID = memberBiz.createMember(header, memberCreateVO); 
} 
==============================================================================================================

- OSP APIs & Tools 에러  
1) End Point URI : http://api.samsungosp.com/auth//auth 
 ==> 서버에서 가져오는 URL: http://api.samsungosp.com/auth//(수정 요청 URL: http://api.samsungosp.com/) 

1. http://api.samsungosp.com/auth//auth/oauth2/revoke 
2. Profile 참조 
1) End Point URI ==> http://www.ospserver.net/social/user 
1) Path ==> http://www.ospserver.net/social/user/rofiles/list  ==> 에러(수정: http://www.ospserver.net/social/user/profiles/list) 
/* 
* @resource_name UserService 1.0 
* @resource_category social 
* @resource_path user 
* @target_package osp.component.social.user.service 
*/ 

@RequestMapping("social/user/") 
public interface UserServiceResource {  
@OSP(category="UserServiceResource", function="getUserProfileList") 
@RequestMapping(value="profiles/list", method=RequestMethod.POST, headers={"accept=text/xml"}) 
@ResponseResult("com.samsungosp.social.user.profile.vo.UserResultVOListVO") 
public ModelAndView getUserProfileList(OSPHttpHeaderInfo header, 
    @RequestBody UserSearchVO userSearchVO); 
} 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.04.04(수) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 21:20 

- IOSP(/oauth2) Prj
- client stub 수정 
1. auth client stub POST방식 등록 에러 
[2012-04-04] INFO : TRACE_LOGGER - REQen_US9a7f8784-61d2-4639-bd41-98cddd3439371#N/A 
/auth/oauth2/authenticateclient_id=j5p7ll8g33&scope=test&client_secret=5763D0052DC1462E13751F753384E9A9 
&grant_type=password&username=234%40yopmail.com&service_type=M&password=osp123&physical_address_text=test 
==============================================================================================================

- JUnit  서버 Start 에러 
1. 현상 
DEBUG: com.samsungosp.auth.oauth2.service.AuthServiceResourceImpl - [getSystemLocale] Loading....  
default_language :: en  Loading.... default_country :: US 
java.lang.NullPointerException 
at com.samsungosp.framework.web.service.BaseServiceResource.getMessage(BaseServiceResource.java:229) 
at com.samsungosp.framework.web.service.BaseServiceResource.getMessage(BaseServiceResource.java:122) 
at com.samsungosp.auth.oauth2.service.AuthServiceResourceImpl.createUserAuthToken(AuthServiceResourceImpl.java:140) 
at com.samsungosp.auth.oauth2.service.AuthServiceTest_authenticate_Test.testAuthServiceTest_authenticate_Test(AuthServiceTest_authenticate_Test.java:84) 

2. 조치 
1)  /AuthServiceTest_authenticate_Test.java 파일에서 
@Before 
public void setUp() throws Exception { 
System.out.print("[setUp()] ==> [test_00] \n");  
super.setUp();         
authServiceResource = new AuthServiceResourceImpl(); 
oauth2BizMock = createMock(Oauth2Biz.class);   
authServiceResource.setOauth2Biz(oauth2BizMock);   //===> 추가 
} 

2) /AuthServiceResource.java 파일에서 
@RequestMapping("/auth/") 
public interface AuthServiceResource {   
void setOauth2Biz(Oauth2Biz oauth2Biz);    //===> 추가 
} 

3) /AuthServiceResource.java 파일에서 
@Controller 
@RequestMapping("/auth/") 
public class AuthServiceResourceImpl extends BaseServiceResource implements AuthServiceResource { 
@Autowired 
private Oauth2Biz oauth2Biz; 
    
public void setOauth2Biz(Oauth2Biz oauth2Biz) {  //===> 추가 
this.oauth2Biz = oauth2Biz; 
}  
}  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.04.05(목) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 21:20 

- IOSP(/oauth2) Prj
- test case 수정 
1. OSPResultMessage 처리 
// 1. authenticate Flow 
AUTH.AUT_1901.400=The value of grant_type parameter is unsupported type. 
// 2. authorize Flow 
AUTH.AUT_1401.400=The value of respose_type parameter is unsupported type. 
// 3. AccessToken Flow 
AUTH.AUT_1901.400=The value of grant_type parameter is unsupported type. 
// 4. deauthenticate Flow    @@@@@  ==> 필수가 옵션으로 변경(문제 없음) 
AUTH.AUT_1005.400=The value of userauth_token parameter must be present and have a non-empty value. 
AUTH.AUT_1014.400=The length of a userauth_token parameter is invalid.(사용 안함) 
AUTH.AUT_1801.400=The value of redirect_uri parameter is incorrect.(사용 안함) 
// 5. revoke Flow  @@@@@  ==> 필수가 옵션으로 변경(문제 없음) 
AUTH.AUT_1005.400=The value of userauth_token parameter must be present and have a non-empty value. 
// 6. isvalid Flow  
AUTH.AUT_1805.400=The password is incorrect. 
==============================================================================================================

- client stub 수정 
1. auth client stub POST방식 등록 에러(500번 에러) 
1) 현상 
POST http://localhost:9080/auth/oauth2/revoke?access_token=njHKXScByV returned a response status of 500 
2) 조치 ==> revoke 자체 프로그램 에러(parameter값 및 BIZ FLOW 확인) 

2. auth client stub POST방식 등록 에러(400번 에러) 
1) 현상 
POST http://localhost:9080/auth/oauth2/revoke?access_token=njHKXScByV returned a response status of 400 
2) 조치 ==> /AuthServiceResourceClient.java 파일에서 parameter값 확인 
MultivaluedMap<String, String> qps = new MultivaluedMapImpl(); 
qps.add("access_token", String.valueOf(accessToken));  //추가할 것(parameter 추가) 
------------------------------------------------------------------------------------------------------------------------ 

- client stub 테스트 방법 
1. /auth-svc/auth-client/src/main/java/com/samsungosp/auth 폴더를 복사 
2. /trunk/src/com/samsungosp폴더에 붙여 넣기 
3. /trunk/src/com/samsungosp/auth/oauth2/service/AuthServiceResourceClient.java 파일로 디버깅 
4. /AuthServiceResource.java 파일 @param 값 정확히 점검할 것 
1) * @param grant_type [required] - only use in Customized Flow for Device 
* @param client_id [required] - app_id is client identifier. 
==============================================================================================================

- JUnit 수정 
1. /AuthServiceTest_isvalid_Test.java 수정 
/PgManagementServiceResourceImplTest.java 파일에서 
public class PgManagementServiceResourceImpl extends BaseServiceResource implements PgManagementServiceResource{ 
	@Test 
	public void testGetPGCompany() { 
	PGCompanyVO pGCompanyVO = new PGCompanyVO(); 
	//String pGCompanyID = "0000000101"; 

	OSPHttpHeaderInfo header = new OSPHttpHeaderInfo(); 
	header.setXOspAppId("m7gs06bc3c");//m7gs06bc3c 
	header.setXOspUserId("3eF6icVHCi"); 

	String pGCompanyID = "0000001162"; 

	try { 
	    ModelAndView mv = pgManagementServiceResource.getPGCompany(header, pGCompanyID); 
	    pGCompanyVO = (PGCompanyVO) mv.getModelMap().get(getModelAndViewName(mv)); 
	} catch (Exception e) { 
	    LOG.debug("{}", e); 
	} 

	assertNotNull(pGCompanyVO.getPGCompanyID()); 
	} 
} 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.04.06(금) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 21:30 --> 중식(대구탕, 남권이형 만남, 3천 반환 요구 ==> 지불각서 받음(12월 31일 상환 약속  받음)): 
				교대역 13번 출구: 법무법인 태한(김요한 대표변호사) 

- IOSP(/oauth2) Prj
- PVT Defect 처리 
1. Defect: PRJ1200004243(118번) 
2. Defect: PRJ1200004253(120번) 
==============================================================================================================

- JUnit 수정 
1. /AuthServiceTest_authenticate_Test.java 수정 ==> 완료 
2. /AuthServiceTest_authorize_Test.java 수정 ==> 완료 
3. /AuthServiceTest_token_Test.java 수정 ==> 완료   
4. /AuthServiceTest_deauthenticate_Test.java 수정 ==> 완료 
5. /AuthServiceTest_revoke_Test.java 수정 ==> 완료 
6. /AuthServiceTest_isvalid_Test.java 수정 ==> 완료  
==============================================================================================================

- Junit coverage 로컬에서 하는 방법 
1. Eclipse Update Site ==> http://ecobertura.johoop.de/update 
==============================================================================================================

- JTest 등록 
1. auth-svc, auth-lib, acc-pool-manager(마우스 우 클릭) > Parasoft > Test using > Team > MSC Java Coding Rules 
2. P4: //OSP/IOSP/Co-work/4. 정적분석/2012-04-06/auth-2012-04-06.pdf  
-----------------------------------------------------------------------------------------------------------------  

- JTest 설정 방법 
1. Report Server 설정 
1) Host name: 10.254.218.81  ==> 10.90.62.197 
2) User name: admin  
3) Password : admin 
4) Project 선택: IOSP_AUTH(클릭) 
2. Project Property 설정  
1) Key: auth-svc, Value: OSPS 
2) Key: auth-lib, Value: OSPS 
3) Key: acc-pool-manager, Value: OSPS 
==============================================================================================================

21:30 퇴근  
22:30 고려 당구클럽: 세븐 당구 동호회(서울 시청 지역), 회비 만원 
23:00 시스템 설명 
23:20 당구 게임(3구(3명), 3등(10개)  
01:00 당구 게임(3구(3명), 1등(8개)) ====> 2012.04.08(토) -->  화장실(속이 안 좋아 설싸함) 
04:00 당구 게임((3구(3명), 3등(10개) 
08:00 종료  
08:50 귀가 
08:00 취침 
14:00 기상 
14:10 2012년 프로야구 개막전(SK 6:2 기아) 
01:00 취침 
==============================================================================================================

- 적십사회비(2012년) 납부  
1. 지로번호: 7003932  
2. 전자납부번호: 0122432081  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.04.08(일) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

▦조기축구
07:30 기상 
08:20 신구초등학교 
08:30 조기축구(4:2 승) 
09:30 조기축구(3:3 무) 
10:30 조기축구(6:6 무) 
11:00 종료 
11:30 중식(밥도둑: 동태찌게): 한상봉 부회장님이 쏨(찬조) 
12:40 종료 
13:00 한상봉 부회장님 맞선 소개(임진희: H)010-5410-3788, *@*.*, 결혼, 신혼여행, 신반포 LG 자이) 
우림화랑 기획실장(서울시 종로구 관훈동 30-27, T:733-3738): www.artwoolim.com  
13:30 종료 
14:30 귀가 
15:30 낮잠 
18:30 기상 
18:50 극세사 모노 패드(침대 패드) 구매(7만원) 
20:40 석식(쌀라면 2개: 상요형이 줌) 
01:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.04.09(월) 작업 ■■■■■■■■■■■■■■■
---> 07:20 ~ 21:00 --> 통합OSP PVT 2차 

- JUnit 수정(error coverage) 
1. /AuthServiceTest_authenticate_Test.java 수정 
01_testAuthServiceTest_authenticate_Test ==> 완료 
01_testAuthServiceTest_authenticate_Test_AUT_1901 ==> 완료 

2. /AuthServiceTest_authorize_Test.java 수정 
02_testAuthServiceTest_authorize_Test ==> 완료 
02_testAuthServiceTest_authorize_Test_AUT_1301 ==> 완료 

3. /AuthServiceTest_token_Test.java 수정 
03_AuthServiceTest_token_Test ==> 완료 
03_testAuthServiceTest_token_Test_AUT_1702 ==> 완료 

4. /AuthServiceTest_deauthenticate_Test.java 수정 
04_AuthServiceTest_deauthenticate_Test ==> 완료 
04_AuthServiceTest_deauthenticate_Test ==> 

5. /AuthServiceTest_revoke_Test.java 수정 
05_AuthServiceTest_revoke_Test ==> 완료 
05_testAuthServiceTest_revoke_Test_AUT_1811 ==> 완료 
--> Oauth2BizImpl.java단 postRevoke() 에러 미호출 
try {  
profileOauthAccessTokenEntryVO = oauth2CacheBiz.getAccessToken(accessToken);   //accessToken 조회 
log.debug("[postRevoke()] ==> [profileOauthAccessTokenEntryVO]"+ profileOauthAccessTokenEntryVO ); 

if(profileOauthAccessTokenEntryVO == null  profileOauthAccessTokenEntryVO.getAccessToken() == null) {   
OSPResultMessage.raiseException(Constants.BAD_REQUEST,  
"AUT_1811", MessageUtil.getMessage("AUTH.AUT_1811.400"), this.getClass().getName());    // 호출 
}  
}  
catch ( Exception e ) {  
OSPResultMessage.raiseException(Constants.INTERNAL_ERROR,  
"AUT_5001", MessageUtil.getMessage("AUTH.AUT_5001.500"), this.getClass().getName());      // 또 호출 
} 

6. /AuthServiceTest_isvalid_Test.java 수정 
06_testAuthServiceTest_isvalid_Test ==> 완료 
06_testAuthServiceTest_isvalid_Test_AUT_1805 ==> 완료 
--> Oauth2VerifyBizImpl.java단 isValidUser() 에러 미호출 
==============================================================================================================

- Stage 파일 등록(빌드 & 디플로이)  @@@@@@@@@@@ 
1. P4에서 수정 파일 올리기 
2.  //OSP/IOSP/Workspace/Account/Auth/branches/auth-R1.x.x/ 복사 
3. Integrate(새창) 
1) //OSP/IOSP/Workspace/Account/Auth/trunk 폴더(마우스 우 클릭) > Integrate >  
//OSP/IOSP/Workspace/Account/Auth/branches/auth-R1.x.x/... 
 붙어넣기(파일 하나 일 경우: //OSP/IOSP/Workspace/Account/Auth/branches/auth-R1.x.x/auth-svc/src 
 /main/java/com/samsungosp/auth/oauth2/service/AuthServiceResourceImpl.java) 
2) Add files to pending chanagelist: NEW 
3) Advanced Options: 3번, 7번(마지막 번): 체크 ===> Integrate(클릭) 
4. //OSP/IOSP/Workspace/Account/Auth/trunk 폴더(클릭) > Pending(확인): 날짜별 
 1) ? ==> Resolve > Atuo Source 
 2) X 또는 불필요 파일 ==> Revert 
 3) Submit(클릭): PVT 3차 버전 수정 
 4) Integrate 성공 여부 확인 
1) AuthServiceResourceImpl.java 파일(마우스 우 클릭): Revision Graph(클릭) > Graph(새창); 1시 방향 점선(실선으로 나오면 에러) 
 2) //OSP/IOSP/Workspace/Account/Auth/branches/auth-R1.x.x/auth-lib/src/main/java/com/samsungosp/auth/oauth2/biz/Oauth2BizImpl.java 
5. 허드슨 빌드 & 디플로이  
--------------------------------------------------------------------------------------------------------------------------

- Versiontracking 
1. Stage 서버 build & deploy해주시기 바랍니다. 
2. Tomcat restart  해주시기 바랍니다. 
3. Hosts에 도메인 등록 예) 184.169.145.113  ver.samsungosp.net   
4. 호출 URL : http://ver.samsungosp.net/VersionTracking/auth/getospversion/jarName=iospversion.jar 
<buildVersion> 
	<buildDate>2012.04.09 16:36:40</buildDate> 
	<componentName>auth</componentName> 
	<libVersion/> 
	<revision>293715</revision> 
	<service>IOP</service> 
	<svcVersion>0.9.9-26</svcVersion> 
</buildVersion> 
==============================================================================================================

- build.xml 수정(나대균 책임) 
1. Unpublish 문제로 build.xml을 skipPublish=false로 수정 후 Stage 서버 build & deploy 했다고 함 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.04.10(화) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 22:00 --> 2일째 굶음(속이 안 좋음) 

- JUnit 수정(개발서버 등록) ==> Lines coverage 80% 이상(현재 5%) 
1. Biz단 Exception 변경(/Oauth2BizImpl.java) 
1) throws Oauth2Exception {  ==> throws Exception { 
==============================================================================================================

- DBA 에러 
1. 에러 내용 
DEBUG: com.samsungosp.auth.user.dao.UserAuthDAOImpl - [getUserIdentification()] ==>  
[DB조회_요청 칼럼(회원 인증 정보 조회(US)) -> UserAuthDAO.getUserIdentification()]  
[userIdentificationVO.getLoginID()]@yopmail.com[userIdentificationVO.getLoginIDTypeCode()]003 
DEBUG: org.springframework.jdbc.datasource.DataSourceUtils - Fetching JDBC Connection from DataSource 
2. 조치: /auth-svc/src/test/resources/spring/applicationContext-datasource.xml 파일에서 
개발서버의 Oracle ip 정보를 ec2-50-16-234-94.compute-1.amazonaws.com 로 변경 
<!-- ORACLE DB POOL datasource --> 
<bean id="defaultDataSource" class="oracle.jdbc.pool.OracleDataSource" destroy-method="close"> 
<property name="connectionCachingEnabled" value="true" />    
 <!-- <property name="URL" value="jdbc:oracle:thin:@50.16.234.94:1521:DEVIOSP1" /> --> <!--// local //--> 
        <property name="URL" value="jdbc:oracle:thin:@ec2-50-16-234-94.compute-1.amazonaws.com:1521:DEVIOSP1" /> <!--// Dev //--> 
<property name="user" value="wsoc" /> <!--// user(Direct writing)  //--> 
<property name="password" value="osp123" /> <!--// password(Direct writing)  //-->  
</bean> 
3. DBA: 김세영 과장(엔코아) 
==============================================================================================================

- G11NUtility 대체 
1. /Oauth2ErrorUtil.java 파일에서 
if(Pattern.matches("(AUT).*", errorCode)){ 
oauth2ErrorVO.setError(G11NUtility.getLocalizedLogMessage(new StringBuilder(Oauth2LibConstants. 
COMPONENT_NAME).append(errorCode).append(".").append(httpStatus).toString(), Oauth2LibConstants.LOG_BUNDLE_NAME)); 
==> oauth2ErrorVO.setError(getMessage(new StringBuilder(Oauth2LibConstants.COMPONENT_NAME). 
append(errorCode).append(".").append(httpStatus).toString(), Oauth2LibConstants.LOG_BUNDLE_NAME)); 
} 
==============================================================================================================

- eclipse 저장 속도 문제 
1. eclipse를 닫은 후 C:\OSP2.5\workspace\.metadata\.plugins/org.eclipse.core.resources 폴더를 복사해서  
보관 후, 삭제 
2. eclipse 시작 
3. eclipse 종료 
4. 보관한  폴더 C:\OSP2.5\workspace\.metadata\.plugins/org.eclipse.core.resources 붙어넣기 처리 
5. C:\OSP2.5\workspace\.metadata\.plugins\org.eclipse.core.resources/.history ==> 하위 폴더 및 파일 삭제 
1) history가 많을 때와 이를 삭제한 후의 기동 후 메모리 크기가 다른 걸로 미루어 짐작된다. 
---------------------------------------------------------------------------------------------------------- 

- Spring Project Nature 삭제( 효과 있음) 
1. auth-svc(마우스 우 클릭) > Spring Tools > Remove Spring Project Nature 
==============================================================================================================

22:00 퇴근  
22:50 고려 당구클럽: 세븐 당구 동호회(서울 시청 지역), 회비 만원 
23:00 게임(4구(2명), 패(20개)) 
00:20 게임(3구(3명), 3등(8개)) 끝장을 못 봄 ====> 2012.04.11(수)   
04:00 강습(사장님): 기본 자세 교정(부드럽게 밀기) 
08:00 종료  
08:50 수화 
09:00 낮잠(수화): 매우 시끄러움 
15:10 기상 
15:20 중식(백반) 
17:00 승리(대구, 이쁨, 160cm) 
17:00 종료 
17:30 19대 국회의원 선거 투표(관악을 2번 유기홍 후보(민주통합당) 당선, 진보신당(정당투표)) 
17:50 귀가 
20:30 한상봉 부회장님한테 전화 옴(임진희씨에게 전화함: 4.13 ~ 5.7 인도 여행 간다고 함) 
23:00 취침 
03:00 기상 ====> 2012.04.12(목) 
03:10 TV시청 
05:00 집출발: 19대 국회의원 선거 새누리당 승리(과반확보(152석)) 
05:50 출근 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.04.12(목) 작업 ■■■■■■■■■■■■■■■
---> 05:50 ~ 21:30 --> 삼성카드 재발급, 수령, 823빌딩 출입 방법 변경(지문 등록(8층에서)): 카드 사용 안함 

- 2012.02.13 이후 수정 파일  
/AuthServiceResourceImpl.java 
/Oauth2BizImpl.java, /Oauth2VerifyBizImpl.java, /Oauth2VerifyBizImpl.java, /Oauth2SaffronBizImpl.java 
==============================================================================================================

- PVT Defect 처리 
00. Defect: PRJ1200004253  처리(완료)  
TestSuite - AuthService-createAccessToken  
TestCase - Setup 
creatUser를 통해 user를 새로 생성해서 createUserAuthToken의 userAuthToken을 받아서  
createAuthorizationCode를 수행 할 경우  
1회 수행시 에러코드 AUT_9001가 응답 되고 2회 수행 결과 정상적으로 응답 되고 있습니다 
확인이 필요한 부분이여서 Reopen 처리 시키겠습니다. 
------------------------------------------------------------------------------------------------------------------------------ 

- username 수정 
/v2/probile/user/user/ --> createUser()에서 #TestSuite#appId로 username 생성 
http://eu.auth.samsungosp.com/auth/oauth2/authenticate --> createUserAuthToken()에서 username을 
username: ${createUser#Request#//UserCreateVO[1]/userIdentificationVO[1]/loginID[1]}으로 사용 

username: ${createUser#Request#//UserCreateVO[1]/userIdentificationVO[1]/loginID[1]}  ==> ${#TestSuite#username} 
<userTypeCode>${#TestSuite#userTypeCode}</userTypeCode>  
==============================================================================================================

- PVT Defect 처리 
01. Defect: PRJ1200004779 ==> 수정 완료(API DOC 수정) 
1. [통합 OSP_Auth] AuthService_createUserAuthToken API의 doc Spec 부분중 5개의 파라메터에 대하여 Description이  
존재하지 않습니다 
1) check_mandatory 
2) country 
3) appId 
4) langCode 
5) check_email_validation 
---------------------------------------------------------------------------------------------------------- 

02. Defect: PRJ1200004781 ==> 확인 완료 
1. [통합 OSP_Auth] AuthService_createUserAuthToken API에 대하여 필수 파라메터를 누락시킨 후 수행결과 에러코드  
CMM_1007가 응답 되고 있습니다 
TestSuite : AuthService_createUserAuthToken 
TestCase : createUserAuthToken_400_01 (첫번째 Step만 해당) 

2. 에러: doc Spec에 각각의 파라메터의 invalid값에 대하여 맞는 에러코드가 있으므로 그에 해당 하는 에러코드가  
응답 되어야 합니다  
1) grant_type - AUT_1008  ==> 확인(grant_type 필수값) 
2) client_id - AUT_1001 ==> 확인(client_id 필수값) 
3) client_secret - AUT_1002 ==> 확인(client_secret 필수값) 
4) username - AUT_1003 ==> 확인(username 필수값) 
5) password - AUT_1004 ==> 확인(password 필수값) 

OSP 2.5 표준 준수(정상) 
이 요청은 정상적인 Rest 요청이 아니므로 iOSP 프레임워크에서 해당 에러를 발생시키는 것입니다. 
기존 2.0 시스템은 Jax-rs 기반이었기 때문에 프레임워크 단이 아닌 해당 컴포넌트에서 에러를 발생시킬 수 있었으나 
iOSP 에서는 정상적인 API 요청이 아닌 경우 CMM 에러를 발생시키는 것이 정상입니다. 
---------------------------------------------------------------------------------------------------------- 

03. Defect: PRJ1200004785 ==> 수정 완료 
[통합 OSP_Auth] AuthService_createUserAuthToken API에 대하여 파라메터에 잘못된값(aaaaaaaaaa) 입력 후 수행결과  
잘못된 에러코드 AUT_9001가 응답 되고 있습니다 
TestSuite : AuthService_createUserAuthToken 
TestCase : createUserAuthToken_400_02 (첫번째 Step만 해당) 

doc Spec에 각각의 파라메터의 invalid값에 대하여 맞는 에러코드가 있으므로 그에 해당 하는 에러코드가 응답 되어야 합니다 
1) client_id : AUT_1701 ==> 수정 
2) client_secret : AUT_1702 ==> 수정   
3) username : AUT_1804 ==> 수정  
4) password : AUT_1805  ==> 수정   
5) country_code : AUT_1037 ==> 수정 
6) mobile_country_code : AUT_1037 ==> 수정 
7) tnc_accepted : AUT_1034  ==> 수정 
8) tnc_type_code : AUT_1035 ==> 수정 
9) privacy_accepted : AUT_1036 ==> 수정 
---------------------------------------------------------------------------------------------------------- 

04. Defect: PRJ1200004789 ==> 수정 완료 
[통합 OSP_Auth] AuthService_createUserAuthToken API에 대하여 파라메터값이 Spec에 명시된 length를 벗어난 값 입력 후  
수행결과 에러코드 AUT_9001가 응답 되고 있습니다 
[통합 OSP_Auth] AuthService_createUserAuthToken API에 대하여 파라메터에 잘못된값(aaaaaaaaaa) 입력 후 수행결과 잘못된  
에러코드 AUT_9001가 응답 되고 있습니다 
TestSuite : AuthService_createUserAuthToken 
TestCase : createUserAuthToken_400_02 (첫번째 Step만 해당) 

doc Spec에 각각의 파라메터의 invalid값에 대하여 맞는 에러코드가 있으므로 그에 해당 하는 에러코드가 응답 되도록 처리  
했습니다. 
1) client_id : AUT_1010  ==> 수정 
2) client_id : AUT_1010 ==> 수정 
3) client_secret : AUT_1011 ==> 수정  
4) client_secret : AUT_1011==> 수정  
5) username : AUT_1012 ==> 수정  
6) username : AUT_1012 ==> 수정  
7) password : AUT_1013  ==> 수정  
8) password : AUT_1013 ==> 수정  
9) scope : AUT_1019 ==> 수정  
10) physical_address_text : AUT_1020 ==> 수정 
11) service_type : AUT_1021 ==> 수정 
12) country_code : AUT_1028 ==> 수정 
13) mobile_country_code : AUT_ 1029 ==> 수정 
14) tnc_accepted : AUT_1030 ==> 수정 
15) tnc_type_code : AUT_1031 ==> 수정 
16) privacy_accepted : AUT_1032 ==> 수정 
---------------------------------------------------------------------------------------------------------- 

05. Defect: PRJ1200004790 ==> 확인 완료 
[통합 OSP_Auth] AuthService_createUserAuthToken API에 대하여 옵션 파라메터를 누락시킨 후 수행결과 정상코드가 아닌 에러코드  
AUT_9001가 응답 되고 있습니다 
TestSuite : AuthService_createUserAuthToken 
TestCase : createUserAuthToken_200_05 
TestStep : createUserAuthToken_country_code_02 

해당건은 문제가 없는 것으로 추정됩니다. 
해당건은 회원 약관 정보를 조회를 하면서 조회 결과가 없어서 나오는 에러 입니다. 
AUT_5006: 조회 실패 에러(정상) 

-- 1. 회원 약관 정보 조회  @@@@@@@@@@@@@@@@@@ 
 SELECT 
    /* [userDAO.xml].[com.samsungosp.profile.user.user.getUserTNCAcceptance].[39] 변경일자(20110426) */ 
    T2.TNC_VER_TXT 
    , T2.TNC_ACPT_FG 
    , TO_CHAR(T2.TNC_ACPT_DT,'YYYYMMDD') TNC_ACPT_DT 
    , T2.TNC_ACPT_LANG_CD 
    , T2.CRT_APSVC_ID 
FROM 
    TCSO_PRTY T1 /* 회원정보 TB */ 
    , TCSO_TNC_ACPTNC T2 
    , TSCO_CNTY T3 /* 국가정보 TB */ 
WHERE 
  T2.USR_ID = LOWER('01gg5uki5o') /* USR_ID */ 
  AND T2.MBL_CNTY_CD = '234'  /* 국가코드(450: KOR) */ 
  AND T2.TNC_VER_TXT = '1.0'  /* 약관 버전 */ 
  AND T2.DEL_YN_FG = 'N' 
  AND T1.USR_ID = T2.USR_ID 
  AND T1.USR_STS_CD  <>  '9' 
  AND T1.CNTY_CD = T3.CNTY_CD 
  AND T3.RGN_CD = 'US' 
  AND ROWNUM = 1 
--; 
---------------------------------------------------------------------------------------------------------- 

06. Defect: PRJ1200004795 ==> 확인 완료 
[통합 OSP_Auth] AuthService_createUserAuthToken API에 대하여 옵션 파라메터에 대하여 정상값 입력 후 수행결과 에러코드 AUT_9001가  
응답 되고 있습니다 

TestSuite : AuthService_createUserAuthToken 
TestCase : createUserAuthToken_200_05 (첫번째 Step만 해당) 
TestStep :  
1) createUserAuthToken_country_code_01 
2) createUserAuthToken_mobile_country_code_01 

Request Parameter] 
1) country_code : USA 
2) mobile_country_code : 310 

해당건은 문제가 없는 것으로 추정됩니다. 
해당건은 회원 약관 정보를 조회를 하면서 조회 결과가 없어서 나오는 에러 입니다. 
AUT_5006: 조회 실패 에러(정상) 

-- 1. 회원 약관 정보 조회  @@@@@@@@@@@@@@@@@@ 
 SELECT 
    /* [userDAO.xml].[com.samsungosp.profile.user.user.getUserTNCAcceptance].[39] 변경일자(20110426) */ 
    T2.TNC_VER_TXT 
    , T2.TNC_ACPT_FG 
    , TO_CHAR(T2.TNC_ACPT_DT,'YYYYMMDD') TNC_ACPT_DT 
    , T2.TNC_ACPT_LANG_CD 
    , T2.CRT_APSVC_ID 
FROM 
    TCSO_PRTY T1 /* 회원정보 TB */ 
    , TCSO_TNC_ACPTNC T2 
    , TSCO_CNTY T3 /* 국가정보 TB */ 
WHERE 
  T2.USR_ID = LOWER('01gg5uki5o') /* USR_ID */ 
  AND T2.MBL_CNTY_CD = '310'  /* 국가코드(450: KOR) */ 
  AND T2.TNC_VER_TXT = '1.0'  /* 약관 버전 */ 
  AND T2.DEL_YN_FG = 'N' 
  AND T1.USR_ID = T2.USR_ID 
  AND T1.USR_STS_CD  <>  '9' 
  AND T1.CNTY_CD = T3.CNTY_CD 
  AND T3.RGN_CD = 'US' 
  AND ROWNUM = 1 
--;  
==============================================================================================================

07. Defect: PRJ1200004797 ==> 확인 완료 
[통합 OSP_Auth] AuthService_createAuthorizationCode API에 대하여 필수 파라메터를 누락시킨 후 수행결과 에러코드 CMM_1007가  
응답 되고 있습니다 
TestSuite : AuthService_createAuthorizationCode 
TestCase : createAuthorizationCode_400_01 (첫번째 Step만 해당) 

doc Spec에 각각의 파라메터의 invalid값에 대하여 맞는 에러코드가 있으므로 그에 해당 하는 에러코드가 응답 되어야 합니다 
1) response_type : AUT_1009 
2) userauth_token : AUT_1005 
3) client_id : AUT_1001 

1) response_type : AUT_1009  ==> 확인(response_type 필수값) 
2) userauth_token : AUT_1005 ==>  확인(userauth_token  필수값)  
3) client_id : AUT_1001  ==> 확인(client_id 필수값) 
---------------------------------------------------------------------------------------------------------- 

08. Defect: PRJ1200004798 ==> 수정 완료 
[통합 OSP_Auth] AuthService_createAuthorizationCode API에 대하여 파라메터값이 Spec에 명시된 length를 벗어난 값 입력 후 수행결과  
에러코드 AUT_9001가 응답 되고 있습니다 
TestSuite : AuthService_createAuthorizationCode 
TestCase : createAuthorizationCode_400_02 (첫번째 Step만 해당) 

doc Spec에 각각의 파라메터의 invalid값에 대하여 맞는 에러코드가 있으므로 그에 해당 하는 에러코드가 응답 되어야 합니다 
1) userauth_token : AUT_1014 ==> 수정 
2) userauth_token : AUT_1014 ==> 수정 
3) client_id_AUT : AUT_1010 ==> 수정 
4) client_id_AUT : AUT_1010 ==> 수정(aaaaabbbbba --> aaaaabbbbba12345로 변경할 것: 최대 14자리) 
5) scope_AUT : AUT_1019 ==> 수정 
6) state_AUT : AUT_1025  ==> 수정 
7) physical_address : AUT_1020 ==> 수정 
8) service_type : AUT_1021 ==> 수정 
9) email_id : AUT_1043 ==> 수정 
10) email_id : AUT_1043  ==> 수정 
---------------------------------------------------------------------------------------------------------- 

09. Defect: PRJ1200004801 ==> 수정 완료 
[통합 OSP_Auth] AuthService_createAuthorizationCode API에 대하여 파라메터에 잘못된값 입력 후 수행결과 잘못된 에러코드 AUT_9001가  
응답 되고 있습니다 
TestSuite : AuthService_createAuthorizationCode 
TestCase : createAuthorizationCode_400_02 (첫번째 Step만 해당) 

doc Spec에 각각의 파라메터의 invalid값에 대하여 맞는 에러코드가 있으므로 그에 해당 하는 에러코드가 응답 되어야 합니다 
1) userauth_token : AUT_1302 ==> 수정 
2) client_id : AUT_1301  ==> 수정(userauth_token 정확히 기입할 것) 
3) service_type : AUT_1023  ==>  수정 
4) email_id : AUT_1044  ==> 수정 
5) redirect_uri : AUT_1022  ==> 수정 
==============================================================================================================

10. Defect: PRJ1200004803 ==> 수정 완료 
[통합 OSP_Auth] AuthService_createAccessToken API에 대하여 필수 파라메터를 누락시킨 후 수행결과 에러코드 CMM_1007가 응답  
되고 있습니다 
TestSuite : AuthService_createAccessToken 
TestCase : createAccessToken_400_01 (첫번째 Step만 해당) 

doc Spec에 각각의 파라메터의 invalid값에 대하여 맞는 에러코드가 있으므로 그에 해당 하는 에러코드가 응답 되어야 합니다 
1) grant_type : AUT_1008  ==> 확인(grant_type필수값) 
2) client_id : AUT_1001 ==> 확인(client_id  필수값) 
3) client_secret : AUT_1002 ==> 확인(response_type 필수값) 
4) code : AUT_1006 ==> 확인(code 필수값) 
5) refresh_token : AUT_1007 ==> 확인(code 필수값) 
---------------------------------------------------------------------------------------------------------- 

11. Defect: PRJ1200004804 ==> 수정 완료 
[통합 OSP_Auth] AuthService_createAccessToken API에 대하여 파라메터값이 Spec에 명시된 length를 벗어난 값 입력 후 수행결과  
에러코드 AUT_9001가 응답 되고 있습니다 
TestSuite : AuthService_createAccessToken 
TestCase : createAccessToken_400_02 (첫번째 Step만 해당) 

doc Spec에 각각의 파라메터의 invalid값에 대하여 맞는 에러코드가 있으므로 그에 해당 하는 에러코드가 응답 되어야 합니다 
1) client_id : AUT_1010 ==> 수정 (MAX:14) 
2) client_id : AUT_1010 ==> 수정(MIN:10) 
3) client : AUT_1011 ==> 수정 
4) client : AUT_1011 ==> 수정 
5) code : AUT_1015 ==> 수정 
6) code : AUT_1015 ==> 수정 
7) refresh_token : AUT_1016 ==> 수정 
8) refresh_token : AUT_1016 ==> 수정 
9) scope : AUT_1019 ==> 수정 
10) physical_address_tex : AUT_1020 ==> 수정 
11) service_type : AUT_1021 ==> 수정 
---------------------------------------------------------------------------------------------------------- 

12. Defect: PRJ1200004806 ==> 수정 완료 
[통합 OSP_Auth] AuthService_createAccessToken API에 대하여 파라메터에 잘못된값 입력 후 수행결과 잘못된 에러코드 AUT_9001가  
응답 되고 있습니다 
TestSuite : AuthService_createAccessToken 
TestCase : createAccessToken_400_02 (첫번째 Step만 해당) 

doc Spec에 각각의 파라메터의 invalid값에 대하여 맞는 에러코드가 있으므로 그에 해당 하는 에러코드가 응답 되어야 합니다 
1) client_id : AUT_1806 ==> 수정(정확한 code값을 받아 와야함) 
2) client_secret : AUT_1702 ==> 수정(정확한 code값을 받아 와야함)  
3) code : AUT_1802 ==> 수정(정확한 code값을 받아 와야함)  
4) refresh_token : AUT_1803 ==> 수정(정확한 code값을 받아 와야함)  
5) service_type : AUT_1023 ==> 수정(정확한 code값을 받아 와야함)  
---------------------------------------------------------------------------------------------------------- 

13. Defect: PRJ1200004807 ==> 수정 완료  
1. 통합 OSP_Auth] AuthService_revoke API에 대하여 필수값 userauth_token에 고정길이10byte를 넘어선 11byte입력 후 수행결과 잘못된  
에러코드 AUT_9001가 응답 되고 있습니다  
2. 에러: AUTH.AUT_1014.400=The length of a userauth_token parameter is invalid.    
TestSuite : AuthService_deauthenticate 
TestCase : deauthenticate_400_01 
TestStep : deauthenticate_userauth_token_AUT_1014_02 

3. 처리 
/Oauth2LibConstants.java 파일에서 
if(!ValidatorUtil.isNullorEmpty(client_id)) {   //client_id 값이 존재하면  
   if(!ValidatorUtil.ValidateLength_2(client_id, Oauth2LibConstants.MIN_LENGTH_CLIENT_ID_2, Oauth2LibConstants.MAX_LENGTH_CLIENT_ID_2)) { 
   throw new OSPException(Constants.BAD_REQUEST, "AUT_1010", 
MessageUtil.getMessage("AUTH.AUT_1010.400"), this.getClass().getName());  //AUTH.AUT_1010.400 
   }  
} 

if(!ValidatorUtil.ValidatePattern(tnc_accepted, Oauth2LibConstants.PATTERN_TNC_ACCEPTED)) {  //Parameter 패턴 검증 이면 
   throw new OSPException(Constants.BAD_REQUEST, "AUT_1034", 
MessageUtil.getMessage("AUTH.AUT_1034.400"), this.getClass().getName());  //AUTH.AUT_1034.400 
} 

/Oauth2LibConstants.java 파일에서 
public static final int MIN_LENGTH_USERAUTH_TOKEN_2  = 10;   //추가 

1) userauth_token : AUT_1014 ==> 수정 
==============================================================================================================

# IOSP DEV Int. #(IOSP 1.0 호출 ==> TEST) 
210.118.57.17   oaf.osp.com 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.04.13(금) 작업 ■■■■■■■■■■■■■■■
---> 06:50 ~ 23:00 

- IOSP(/oauth2) Prj
- PVT Defect 처리  
01. Defect: PRJ1200004809 ==> 수정 완료 
[통합 OSP_Auth] AuthService_deauthenticate API에 대하여 필수값 userauth_token에 잘못된값(1234567890) 입력 후  
수행결과 잘못된 에러코드 AUT_9001가 응답 되고 있습니다 
TestSuite : AuthService_revoke 
TestCase : deauthenticate_400_01 
TestStep : deauthenticate_userauth_token_AUT_1810_03 

1) userauth_token : AUT_1810 ==> 수정 
==============================================================================================================

02. Defect: PRJ1200004811 ==> 수정 완료 
[통합 OSP_Auth] AuthService_revoke API에 대하여 필수값 access_token에 고정길이10byte를 넘어선 11byte입력 후  
수행결과 잘못된 에러코드 AUT_5001가 응답 되고 있습니다 
TestSuite : AuthService_revoke 
TestCase : revoke_400_01 
TestStep : revoke_access_token_AUT_1027_02 

1) access_token : AUT_1027 ==> 수정(AUT_1027  응답) 
---------------------------------------------------------------------------------------------------------- 

03. Defect: PRJ1200004812 ==> 수정 완료 
[통합 OSP_Auth] AuthService_revoke API에 대하여 필수값 access_token에 잘못된값(aaaaabbbbb) 입력 후  
수행결과 잘못된 에러코드 AUT_5001가 응답 되고 있습니다 
TestSuite : AuthService_revoke 
TestCase : revoke_400_01 
TestStep : revoke_access_token_AUT_1811_03 
Test 설명 : invalid data test 

1) access_token : AUT_1811 ==> 수정(AUT_1811 응답) 
==============================================================================================================

04. Defect: PRJ1200004815 ==> 수정 완료 
[통합 OSP_Auth] AuthService_isValid API에 대하여 필수값(username,password)에 empty값 입력 후 수행 결과  
에러코드가 다르게 응답 되고 있습니다 
TestSuite : AuthService_isValid 
TestCase : 1) isValid_400_01 
2) isValid_400_02 
TestStep : 1) isValid_username_AUT_1003_01 
2) isValid_password_AUT_1004_01 

1) username = AUT_1003 ==> 확인(username  필수값) 
2) password = AUT_1003 ==> 확인(password  필수값) 
---------------------------------------------------------------------------------------------------------- 

05. Defect: PRJ1200004817 ==> 수정 완료 
[통합 OSP_Auth] AuthService_isValid API에 대하여 필수값 username에  잘못된값(aabbccddefgh) 입력 후 수행결과  
에러코드 AUT_5002가 응답 되고 있습니다 
TestSuite : AuthService_isValid 
TestCase : isValid_400_01 
TestStep : isValid_username_AUT_1804_02 

1) access_token : AUT_1804 ==> 수정 
AUT_1804.400=There is no login ID. 
==============================================================================================================

23:00 퇴근  
23:50 고려 당구클럽: 세븐 당구 동호회(서울 시청 지역), 회비 만원 
00:10 시스템 설명  ====> 2012.04.14(토) 
01:20 당구 게임(3구(4명), 3등(7개): 아이스크림 얻어 먹음 
04:00 당구 게임(3구(4명), 팀 게임(15개): 패)  
07:00 종료 
07:50 귀가 
08:10 낮잠 
19:00 기상 
01:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.04.15(일) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

▦조기축구
07:20 기상 
08:20 신구초등학교 
08:30 조기축구(2:1 승) 
09:30 조기축구(4:2 패) 
11:00 종료 
11:30 중식(문경세재: 갈비탕): 치근이형이 쏨(찬조), 종순이 체해다고 손 따줌(상태 호전됨) 
12:40 종료 
13:00 맥주(BBQ 치킨: 상록이형, 승렬이형이 쏨): 남권이형 대여금 문제로 이야기 함 
14:30 종료 
15:00 봉천 중앙시장(다나한 아이크림 구입(30ml): 18,800원) 
16:20 귀가 
16:30 낮잠 
19:45 기상 
01:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.04.16(월) 작업 ■■■■■■■■■■■■■■■
---> 07:05 ~ 22:00 --> 통합OSP PVT 3차 시작 

- IOSP(/oauth2) Prj
- JUnit 수정  
01. testAuthServiceTest_authenticate_Test_AUT_1032 -----> 에러(수정) 
03. testAuthServiceTest_token_Test_AUT_1702 ==> Biz단 체크 
04. testAuthServiceTest_deauthenticate_Test_Test_AUT_1810 ==> Biz단 체크  
05. testAuthServiceTest_revoke_Test_AUT_1811 ==> Biz단 체크 
06. testAuthServiceTest_isvalid_Test_AUT_1804 ==> Biz단 체크 ---> 에러(LDAP 오류로 추정됨): DEV, STG 서버 정상 
06. testAuthServiceTest_isvalid_Test_AUT_1805 ==> Biz단 체크   
==============================================================================================================

- Release Note 작성 
1. PVT 처리현황 세부 내역 
1) 수정된 auth2.5(spring 3.0)0에서 Interceptor(/OverallInterceptor.java)를 지원하지 않아서 수동으로 코딩 처리함 
2) d:\OSP2.5\workspace\IOSP\Co-work\6.검증\API\account\auth-PVT 처리현황.xlsx 
==============================================================================================================

- Stage 파일 등록(빌드 & 디플로이)  @@@@@@@@@@@ 
1. P4에서 수정 파일 올리기 
2.  //OSP/IOSP/Workspace/Account/Auth/branches/auth-R1.x.x/ 복사 
3. Integrate(새창) 
1) //OSP/IOSP/Workspace/Account/Auth/trunk 폴더(마우스 우 클릭) > Integrate >  
//OSP/IOSP/Workspace/Account/Auth/branches/auth-R1.x.x/... 
 붙어넣기(파일 하나 일 경우: //OSP/IOSP/Workspace/Account/Auth/branches/auth-R1.x.x/auth-svc/src 
 /main/java/com/samsungosp/auth/oauth2/service/AuthServiceResourceImpl.java) 
2) Add files to pending chanagelist: NEW 
3) Advanced Options: 3번, 7번(마지막 번): 체크 ===> Integrate(클릭) 
4. //OSP/IOSP/Workspace/Account/Auth/trunk 폴더(클릭) > Pending(확인): 날짜별 
 1) ? ==> Resolve > Atuo Source 
 2) X 또는 불필요 파일 ==> Revert 
 3) Submit(클릭): PVT 3차 버전 수정 
 4) Integrate 성공 여부 확인 
 //OSP/IOSP/Workspace/Account/Auth/branches/auth-R1.x.x/auth-lib/src/main/java/com/samsungosp/auth/oauth2/biz/Oauth2BizImpl.java 
5. 허드슨 빌드 & 디플로이  
------------------------------------------------------------------------------------------------------------ 

- 3차 PVT를 위한 release 버전 변경 
1. /auth-svc/version.properties파일에서  
==> release.version=0.9.9에서 release.version=0.9.10로 변경하고 integration할 것 
2. Label 수행 ==>  
//OSP/IOSP/Workspace/Account/Auth/branches/auth-R1.x.x폴더(마우스 우 클릭)  > Label명: iosp-auth-R0.9.20 
3. STG 빌드 
4. 버전 확인 
http://ver.samsungosp.net/VersionTracking/auth/getospversion/jarName=iospversion.jar 
<?xml version="1.0" encoding="UTF-8" standalone="true"?> 
-<buildVersion> 
<buildDate>2012.04.16 16:42:52</buildDate><componentName>auth</componentName><libVersion/> 
<revision>299055</revision><service>IOP</service> 
<svcVersion>0.9.10-32</svcVersion> 
</buildVersion> 
==============================================================================================================

- JTest 작업 
1. license 문제로 작업 못 함 ==> 서버 IP변경: 10.90.62.197 
1) Parasoft > Preferences(새창):  
가. License: 10.90.62.197 
나. Team Server > Host name: 10.90.62.197, Port number: 18888(Apply, OK) 
2. : //OSP/IOSP/Co-work/4. 정적분석/2012-04-13/auth-2012-04-13.pdf 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.04.17(화) 작업 ■■■■■■■■■■■■■■■
---> 06:45 ~ 22:00 --> 출입 카드 반납(지문으로 대체) 

- IOSP(/oauth2) Prj
- JUnit 수정(Biz단 작업)(43%) 
1. /Oauth2BizImplTest.java 
==============================================================================================================

- PVT Defect 처리(Reopened) 
01. Defect: PRJ1200004253 ==> 정상 운영 중 
삼성SDS 내부검증팀 윤명종 선임님께 문의한 결과 Auth 프로그램 에러가 아니라 SoapUI 자체 에러로 판단된다는 답변이 왔습니다.  
첨부한 저희쪽에서 작성한 표준  작성한 soapUI TC(IOSP_Auth.xml)를 사용하면 아래와 같은 에러가 발생하지 않습니다. 
작성한 soapUI TC(IOSP_OSPv2_Auth_20120417_Infiniq.xml)에서 아마도 userauth_token을 가지고 오지 못해서 나는 
에러 같은 데 정상적으로 하나씩 하면 정상 수행되므로 SoapUI 자체 에러로 판단됩니다. 
이건으로 다시 Reopen할 시에는 삼성SDS 내부검증팀 윤명종(윤명종(MyungjongYoon@@ospproject.ad) 선임님께 먼저 질의를 하라고 하십니다.  

02. Defect: PRJ1200004781 ==> 필수값 
03. Defect: PRJ1200004797 ==> 필수값 
04. Defect: PRJ1200004803 ==> 필수값 
05. Defect: PRJ1200004815 ==> 필수값 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.04.18(수) 작업 ■■■■■■■■■■■■■■■
---> 07:05 ~ 21:30 

- IOSP(/oauth2) Prj
- JUnit 수정(Biz단 작업)(64% ==> 37%) 
1. /Oauth2IssueBizImpl.java 
2. /Oauth2VerifyBizImpl.java 
==============================================================================================================

- PVT Defect 처리 
01. Defect: PRJ1200005353 ==> 정상 운영 중 
[통합 OSP_Auth] AuthService_createUserAuthToken API에 대하여 privacy_accepted 파라메터에 N을 입력 하여  
수행 결과 에러코드가 아닌 정상코드가 응답 되고 있습니다. 
TestSuite : AuthService_createUserAuthToken 
TestCase : createUserAuthToken_400_13 
TestStep : createUserAuthToken_privacy_accepted_AUT_1039_03  
AUT_1039 - Did not agree the privacy conditions.   
privacy_accepted를 N으로 개인 정보 보호 조건을 동의하지 않았으므로 위와 같은 에러코드가 응답 되어야 합니다.  
joinTNCAcceptance()] ==> [isAcceptedPrivacy]true[privacyAccepted]N 

- 요청한 userID(01gg5uki5o)로 User TNC Acceptance 조회(약관 조회) DB조회를 하여 개인정보 동의 여부를 확인하고 
privacyAccepted 가 null이 아니면서 Y도 아닌 경우만 AUT_1039 에러를 보냄 
- 해당건은 개인정보 동의가  true 이기 때문에 정상 조회가 됨 
- AUT_1039 에러 발생 조건: 개인정보 동의도 없는데, privacyAccepted 가 null이 아니면서 Y도 아닌 경우 

02. Defect: PRJ1200005354 ==> 정상 운영 중 
TestSuite : AuthService_createUserAuthToken 
TestCase : createUserAuthToken_400_14  
AUT_1040  Did not agree the latest terms and privacy conditions.  
- 요청한 userID(01gg5uki5o)로 User TNC Acceptance 조회(약관 조회) DB조회를 하여 개인정보 동의 여부를 확인하고 
privacyAccepted 가 null이 아니면서 Y도 아닌 경우만 AUT_1039 에러를 보냄 
- 해당건은 최근 약관 동의가  true 이기 때문에 정상 조회가 됨 
- AUT_1040 에러 발생 조건:  최근 약관 동의도 없는데 strTncAccepted가 Y가 아니고, 개인정보 동의도 없는데,  
privacyAccepted 가 null이 아니면서 Y도 아닌 경우 

03. Defect: PRJ1200005358 ==> 수정 
TestSuite : AuthService_createUserAuthToken 
TestCase : createUserAuthToken_400_15 
TestStep :  
1) createUserAuthToken_check_mandatory_AUT_1049_01 ==> 수정 
2) createUserAuthToken_check_mandatory_AUT_1050_02 ==> 수정 
3) createUserAuthToken_check_mandatory_AUT_1813_03 ==> 정상 
check_mandatory가 optional 이므로 NULL, Y, N이 올수 있고  NULL이므로 정상적으로 auth token이 발행 됩니다. 
AUTH.AUT_1813.400=Mandatory Field Setting Info. is not exist. 

04. Defect: PRJ1200005360 ==> 수정 
TestSuite : AuthService_createUserAuthToken 
TestCase : createUserAuthToken_400_16 
TestStep : The length of a country parameter is invalid. 
1) createUserAuthToken_country_AUT_1046_01 ==> 수정 
2) createUserAuthToken_country_AUT_1046_02 ==>수정  
3) createUserAuthToken_country_AUT_1813_03 ==> 정상 
- 국가코드는 그냥 입력한다고 조회되는 것이 아닙니다. 
- 요청한 userID(01gg5uki5o)로 Country Code DB조회를 하여 국가코드(450: KOR)를 조회하여 
다시 User TNC Acceptance 조회(약관 조회) 를 합니다. 그러므로 정상 입니다. 
   
-- 1. 회원 약관 정보 조회  @@@@@@@@@@@@@@@@@@ 
 SELECT 
    /* [userDAO.xml].[com.samsungosp.profile.user.user.getUserTNCAcceptance].[39] 변경일자(20110426) */ 
    T2.TNC_VER_TXT 
    , T2.TNC_ACPT_FG 
    , TO_CHAR(T2.TNC_ACPT_DT,'YYYYMMDD') TNC_ACPT_DT 
    , T2.TNC_ACPT_LANG_CD 
    , T2.CRT_APSVC_ID 
FROM 
    TCSO_PRTY T1 /* 회원정보 TB */ 
    , TCSO_TNC_ACPTNC T2 
    , TSCO_CNTY T3 /* 국가정보 TB */ 
WHERE 
  T2.USR_ID = LOWER('01gg5uki5o') /* USR_ID */ 
  AND T2.MBL_CNTY_CD = '234'  /* 국가코드(450: KOR) */ 
  AND T2.TNC_VER_TXT = '1.0'  /* 약관 버전 */ 
  AND T2.DEL_YN_FG = 'N' 
  AND T1.USR_ID = T2.USR_ID 
  AND T1.USR_STS_CD  <>  '9' 
  AND T1.CNTY_CD = T3.CNTY_CD 
  AND T3.RGN_CD = 'US' 
  AND ROWNUM = 1 
--; 

05. Defect: PRJ1200005363 ==> 수정  
TestSuite : AuthService_createUserAuthToken 
TestCase : createUserAuthToken_400_18 
TestStep :  
1) createUserAuthToken_langCode_AUT_1048_01 ==> 수정 
2) createUserAuthToken_langCode_AUT_1048_02 ==> 수정 

06. Defect: PRJ1200005366 ==> 수정 
TestSuite : AuthService_createUserAuthToken 
TestCase : createUserAuthToken_400_19 
TestStep :  
1) createUserAuthToken_check_email_validation_AUT_1055 ==> 수정 
2) createUserAuthToken_check_email_validation_AUT_1056 ==> 수정 

07. Defect: PRJ1200005343 ==> 정상 운영 중 
TestSuite : AuthService_createAccessToken 
TestCase : createAccessToken_400_05 
TestStep : createAccessToken_refresh_token_AUT_1007_remove 
doc Spec에 명시되어 있는 refresh_token 에 대한 remove에러코드는 AUT_1007입니다  
-OSP 2.5 표준 준수(정상) 
내부검증팀 윤명종 선임님께 문의한 결과 CMM으로 나는 에러는 공통에서 보내는 에러코드로 컴포넌트단과 협의 중 이라 보류로 처리하라고 합니다. 

08. Defect: PRJ1200005350 ==> 정상 운영 중 
TestSuite : AuthService_createUserAuthToken 
TestCase : createUserAuthToken_400_11 
TestStep : createUserAuthToken_tnc_accepted_AUT_1038_03 
AUT_1038 - Did not agree the latest terms and conditions  
- 요청한 userID(01gg5uki5o)에 대해서는 DB 조회를 하면 
최근 약관 동의가 존재하여 정상 조회가 되는 겁니다.  

09. Defect: PRJ1200005362 ==> 수정 
TestSuite : AuthService_createUserAuthToken 
TestCase : createUserAuthToken_400_17 
TestStep :  
1) createUserAuthToken_appId_AUT_1047_01 ==> 수정 
2) createUserAuthToken_appId_AUT_1047_02 ==> 수정 
3) createUserAuthToken_appId_AUT_1813_03 ==> 추가 사항(2.0 운영팀과 협의를 거처 추후 적용 예정) 
check_mandatory: 사용자 필수항목체크  
3)의 경우에는 check_mandatory가 Y이므로 country, appId, email, langCode 파라메터 모두 값이 있어야 하므로 
에러코드가 응답 되어야 합니다   

1. 변경된 Doc API 개발 시작일(2월 13일) 기준으로 다시 변경 
(http://stgdoc.iosp.com/docs/apispec/auth/AuthServiceResourceSC.xml) ==>  
[Parameters for user's mandatory check is composed of country, appId, email, langCode. ]<br>  ==> 당분간 제거 
2. 원인: OSP 2.0에 mandatory check 부분은 개발 시작일 이후에 수정된 부분으로 운영팀과 협의를 해서 작업할 예정 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.04.19(목) 작업 ■■■■■■■■■■■■■■■
---> 06:55 ~ 21:30 

- IOSP(/oauth2) Prj
- JUnit 수정(Biz단 작업)(64% ==> 39%) 
1. Dcheck_mandatory(사용자 필수항목체크) 수정(추가 사항) ==> (2.0 운영팀과 협의를 거처 추후 적용 예정) 
1) auth  추가 개발에 따른 db 조회 불가능 테이블 발생 
<!--// country+AppID 조건의 가변필드 세팅값 조회 //-->    
SELECT * 
FROM   TFMB_APSVC_JN_FLD 
--;  

<!--// 타이틀(prefixName) 항목 누락의 경우 조회  //-->    
SELECT * 
FROM   TFMB_PRFX_DFNTN 
--; 
==============================================================================================================

- printStackTrace 설명 
printStackTrace 메소드는 예외의 클래스 이름, 예외에 저장된 설명 String,  
실행이 완료되지 않은 메소드들의 목록(메소드 호출 스택에 남아있는 모든  
메소드들)을 표준 에러 매체(일반적으로 명령라인 또는 콘솔)로 출력합니다.  
getMessage 메소드는 예외에 저장된 설명 String를 반환합니다.  

public class UsingExceptions {  
    public static void main(String[] args){  
        try{  
             method1();  
        } catch(UserException e){  
             System.err.println(e.getMessage() + "\nThe Stack Trace is:");  
             e.printStackTrace();  
        }//end of try-catch  

    }//end of main 
} 
----------------------------------------------------------------------------------------------------------- 

- log4j에서 로그 레벨이 Debug일 경우 
import org.apache.log4j.Logger;   
if (logger.isDebugEnabled()) {   //로그 레벨이 Debug일 경우 
	logger.debug("view(Integer, Integer, Connection) - start"); 
} 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.04.20(금) 작업 ■■■■■■■■■■■■■■■
---> 07:05 ~ 22:00 --> 통합OSP PV 4차 시작 

- IOSP(/oauth2) Prj
- JUnit 수정(Biz단 작업)(67% ==> 44%) 
==============================================================================================================

- JUnit 라인 커버리지에서 제외  처리(/auth-lib/pom.xml) 
1 . Constants값  
/DeviceConstants.java, /ServiceConstants.java, /UserConstants.java ==> com.samsungosp.auth.user  
<instrumentation> 
       <excludes> 
<!-- // JUnit 라인 커버리지에서 제외  처리(line coverage) //--> 
 <exclude>**/vo/*.class</exclude>   
<exclude>**/oauth2/common/util/*.class</exclude>  <!--// oauth2 Constants값[oauth2] //-->  
<exclude>**/oauth2/common/util/DUIDUtil.class</exclude>  <!--// oauth2 common util폴더 파일[oauth2] //-->   
<exclude>**/oauth2/common/util/RegionCodeUtils.class</exclude> 
<exclude>**/oauth2/Oauth2LibConstants.class</exclude> <!--// oauth2 Constants값[oauth2] //-->  
<exclude>**/user/*.class</exclude> <!--// user Constants값 //-->  <!--// user[oauth2] //-->  
       </excludes> 
</instrumentation>  
==============================================================================================================

- P4 파일 등록 에러 
Librarian checkin /p4s_ver/OSP/IOSP/Workspace/Account/Auth/trunk/auth-lib/src/main/java/com/samsungos 
p/auth/user/util/UserValidatorUtil.java failed. 
write: /p4s_ver/OSP/IOSP/Workspace/Account/Auth/trunk/auth-lib/src/main/java/com/samsungosp/auth/user/ 
util/UserValidatorUtil.java,d/tmp.12452.27: No space left on device 
==============================================================================================================

- Version Tracking 적용 현황  
01. eu idc 
http://eui.ver.samsungosp.net/VersionTracking/auth/getospversion/jarName=iospversion.jar 
02. us idc 
http://usi.ver.samsungosp.net/VersionTracking/auth/getospversion/jarName=iospversion.jar 
03. cn idc 
http://cni.ver.samsungosp.net/VersionTracking/auth/getospversion/jarName=iospversion.jar 
04. eu cloud 
http://euc.ver.samsungosp.net/VersionTracking/auth/getospversion/jarName=iospversion.jar 
05. us cloud 
http://usc.ver.samsungosp.net/VersionTracking/auth/getospversion/jarName=iospversion.jar 
11. eu idc(Admin) 
http://euc.ver.adm.samsungosp.net/VersionTracking/auth/getospversion/jarName=iospversion.jar 
==============================================================================================================

- 공인인증서 갱신(1년에 한번씩(4월) 국민은행에서 시행할 것(집에서 할 것)) ==> 사용 안함 
국민은행: http://bank.kbstar.com/quics?asfilecode=5023&_nextPage=page=B007118&weblog=l_quick_A3  
1. Mozilla Firefox로 국민은행에 접속하여 처리 
1) 에러 원인: 키보드보안에 문제가 있습니다. Error: 24 
2. 갱신 정보 
1) 갱신일: 2012.04.20(금) 
2) 계좌번호: 640-21-0052-309( 640210052309 ) ==> 보안카드 뒷4자리: 3971 
3) 사용자ID: tamario/ta****9 
4) 인증서 유효기간: 2012/04/20 ~ 2013/04/21 
----------------------------------------------------------------------------------------------------------- 

- 타행 공인인증서 등록(SC은행: http://www.standardchartered.co.kr/gw/index.html)   
1) 등록일: 2012.04.20(금) 
2) 계좌번호: 130-20-502841(13020502841) ==> 보안카드 3, 4, 5자리: 429 
3) 사용자ID: tamario/ta****9 
----------------------------------------------------------------------------------------------------------- 

- 공인인증서 갱신(증권)  
동양증권: http://www.myasset.com/myasset/mainindex.html 
1. 계좌번호: 710-01-003202 (71001003202) 
2. 보안카드 일련번호: 211(2,3, 4번째 자리)  
==============================================================================================================

22:00 퇴근  
22:50 고려 당구클럽: 세븐 당구 동호회(서울 시청 지역), 회비 만원 
23:10 시스템 설명(우라 마시, 하꼬 마시) ====> 2012.04.21(토) 
01:20 게임(3구(2명), 3등(8개): 패)  
02:00 게임(3구2명), 3등(8개): 승) 
07:00 게임(3구2명), 3등(8개): 1등)  
08:00 종료 
08:50 귀가 
09:10 낮잠 
19:00 기상 
01:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.04.22(일) 작업 ■■■■■■■■■■■■■■■
---> 08:30 ~ 18:00 --> 근무(비와서 축구 못 함) 

- IOSP(/oauth2) Prj
- VM Ware 7.0 설치 
1. WindowsXPMode_ko-kr 설치(Virtual XP) 
----------------------------------------------------------------------------------------------------------- 

- Prevent User's 설치 
1. C:\Coverity\prevent-win32-4.5.1 

- Java 컴파일(Build 실행) 
1. 빌드 환경 변수 설정 
1) eclipse 설치 PC에서 C:\apache-maven-2.2.1, C:\jdk1.6.0_30복사, 붙어 넣기 
1) C:\cov-sa-win32_5_2\bin\ msc-prevent_env.bat파일 우클릭 > 편집 
@echo off 
Set HOME=C:\prevent-win32-4.5.1 
Set PREVENT_CON=\config 
Set DIR=\Prevent_Itmdt 

Set COMP_TYPE_VC=msvc 
Set COMP_VS="C:\Program Files\Microsoft Visual Studio 9.0\VC\bin\cl.exe" 
Set BUILD="C:\Program Files\Microsoft Visual Studio 9.0\Common7\IDE\devenv.exe" 

Set JAVA_HOME=C:\jdk1.6.0_30 
Set COMP_JAVA=C:\jdk1.6.0_30\bin\javac.exe 
Set POM_PATH=\\tsclient\C\OSP2.5\workspace\IOSP\Workspace\Account\auth\trunk\auth-svc\pom.xml    
Set BUILD_JAVA=C:\apache-maven-2.2.1\bin\mvn.bat -Dmaven.test.skip=true -f %POM_PATH% clean install 

2. Command 창에서 실행  
1) C:\Documents and Settings\XPMUser> cd C:\prevent-win32-4.5.1\bin 
2) C:\prevent-win32-4.5.1\bin> msc-configure-java(01.auth-svc).bat ==> 사용 
3) C:\prevent-win32-4.5.1\bin> msc-configure-java(02.auth-lib).bat ==> 사용 
4) C:\prevent-win32-4.5.1\bin> msc-configure-java.bat ==> 사용 안함(이전 꺼) 
cov-configure.exe  --compiler=C:\jdk1.6.0_30\bin\javac.exe --force-debug 
* Configuring c:\jdk1.6.0_30\bin\javac 
* Configuring c:\jdk1.6.0_30\bin\java 
* Configuring c:\jdk1.6.0_30\jre\bin\java 
* Configuring c:\jdk1.6.0_30\bin\apt 
* Configuring c:\jdk1.6.0_30\bin\javaw 

Generated coverity_config.xml at location c:\Coverity\prevent-win32-4.5.1\config 
\coverity_config.xml 
Successfully generated configuration for the compilers: apt java javac javaw 

3. Build 실행 
2) C:\prevent-win32-4.5.1\bin> msc-build-java(01.auth-svc).bat ==> 사용 
3) C:\prevent-win32-4.5.1\bin> msc-build-java(02.auth-lib).bat ==> 사용 
4) C:\prevent-win32-4.5.1\bin> msc-build-java.bat ==> 사용 안함(이전 꺼) 

3. 빌드 결과물 SQE/SE측에 전달 
1) C:\Coverity\prevent-win32-4.5.1\Prevent_Itmdt\java 폴더를 압축해서 전달바람 
2) auth-svc.zip. auth-lib.zip 
==============================================================================================================

- JTest 수정(수정 완료) 
1. [] 에러 
/DUIDUtil.java 에서 
//byte byteData[] = md.digest(); ===> byte[] byteData = md.digest(); 
2. non-static Name 에러 
/SocialClientImpl.java 에서 
Use a naming convention for non-"static" methods [NAMING.NM-2]   
private List<AttributeUpdateVO> serviceDeveloperDefinedColumnVOtoAttributeUpdateVOList 
(ServiceDeveloperDefinedColumnVO serviceDeveloperDefinedColumnVO) { 
==> ServiceDeveloperDefinedColumnVO() ==> serviceDeveloperDefinedColumnVO로 변경 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.04.23(월) 작업 ■■■■■■■■■■■■■■■
---> 06:50 ~ 22:00 

- IOSP(/oauth2) Prj
01. Defect: PRJ1200004253 ==> 수정 
TestSuite : AuthService_createAuthorizationCode 
TestCase : createAuthorizationCode_200_01 
Test 설명 : 200 정상 동작 테스트 

(preStep 단계인 createUserAuthToken에서 username파라메터를 createUser에서 받아오게 되면   
createUserAuthToken스텝에서 정상동작 하여 다음단계로 진행이 되지만 createAuthorizationCode API에선  
정상동작 하고 있지 않습니다. 현재 testSuite에 있는username : @yopmail.com 에 대해서만 정상동작 하고 있습니다.) 

- 수정 완료 
해당 client_id에 대해서 USR_ID는 @yopmail.com입니다. 
그런데 01. 단계에서 createUser를 통해서 새로운 USR_ID *@*.* 가 생성 되었어요. 
(client_id가 새로운 USR_ID를 발생 시키는 것은 정상적인 프로세스임) 
03. 단계에서 createAuthorizationCode_dummy user가 해당 authorizationCode에 가입되지 않은 상태일 경우 가입처리를 해야하는데 
LDAP에 서비스 정보 생성 하는 과정에서 에러가 났습니다. LDAP에 서비스 정보 생성 소스 수정(연결 부분)으로 
처리 했습니다. 
----------------------------------------------------------------------------------------------------------- 

01. createUser:  
1. client_id(j5p7ll8g33), username(USR_ID) ==> *@*.*(새로 생성된 USR_ID) 
==> 1. client_id(j5p7ll8g33), username(USR_ID) ==> @yopmail.com(정상적인 USR_ID) 

02. createUserAuthToken 
1. UserAuthToken 발급: 2cZD35PF6l 

03. createAuthorizationCode_dummy 발생 
1. DB저장_요청 칼럼(user가 해당 authorizationCode에 가입되지 않은 상태일 경우 가입처리)   
2. LDAP에 서비스 정보 생성 후 에러 발생 

04. createAuthorizationCode 발생 
1. user가 해당 authorizationCode에 가입되어 있어서 정상 조회 되었음 
2. AuthCode 발행: UtOmpZBW4v 
----------------------------------------------------------------------------------------------------------- 

02. Defect: PRJ1200005694 ==> 수정 
[통합 OSP_Auth] AuthService_createUserAuthToken의 5가지 API의 에러코드가 doc Spec에 없습니다 ] 
(check_mandatory, country, appId, langCode, check_email_validation) 
1) check_mandatory 
2) country 
3) appId 
4) langCode 
5) check_email_validation 

- 수정 완료 
해당 API에 응답되는 에러코드들을 spec에 명시 
* 400 AUT_1046 
* 400 AUT_1047 
* 400 AUT_1048 
* 400 AUT_1049 
* 400 AUT_1050 
* 400 AUT_1055 
* 400 AUT_1056 
----------------------------------------------------------------------------------------------------------- 

03. Defect: PRJ1200005696 ==> 수정 
[통합 OSP_Auth] AuthService_isValid API에 대하여 username 파라메터에 누락값 입력 후 수행 결과 에러코드  
USR_5312가 응답 되고 있습니다. 
TestSuite : AuthService_isValid 
TestCase : isValid_400_01 
TestStep : isValid_username_AUT_1003_01 

AUT_1003 - The value of username parameter must be present and have a non-empty value.  
Username에 대한 누락값에 대하여 에러코드가 있으므로 해당 에러코드가 응답 되어야 합니다. 
또한, Doc Spec에 명시 되어 있지 않은 에러코드 USR_5312 입니다. 

- 수정 완료 
username(AUT_1003) , password(AUT_1004)에 대한 에러코드 생성 완료 
----------------------------------------------------------------------------------------------------------- 

04. Defect: PRJ1200005708 ==> 확인 
[통합 OSP_Auth] AuthService_createUserAuthToken API에 대하여 country 파라메터에 잘못된값(…) 입력 후  
수행 결과 정상응답 되고 있습니다.' 
TestSuite : AuthService_createUserAuthToken 
TestCase : createUserAuthToken_400_16 
TestStep : createUserAuthToken_country_AUT_1813_03 

Type이 string이어서 특수문자도 넣어보고 맞지않는 counry도 넣어서 테스트 한 경우 입니다. 
( 숫자,영문,특문 상관없이 2~3글자 입력하여 수행 결과 정상응답 되고 있습니다 ) 
Country에 대해 잘못된값 넣엇을 경우 에러코드가 응답 되어야 합니다. 

- 확인 완료 
2112년 2월 개발 시작전 소스를 기준으로 이상이 없습니다. 
DOC API 어디에도 Country에 대해 잘못된 값을 넣었을 경우 에러코드를 응답 되어야 한다고 나온데가 없어요. 
(API 기준으로 Country는 숫자,영문,특문 상관없이 나오는 것 정상 입니다. 모든 에러코드는 API 기준으로 작성되고  
있으니 API를 준수 바랍니다.) 

해당 createUserAuthToken_country_AUT_1813_03 테스트는 check_mandatory(사용자 필수항목체크) 시에 
country, appId, email, langCode 파라메터값을 에러 체크 부분인 것 같아요. 
이 부부분은 2112년 2월 개발 시작후 변경 부분이라 OSP2.O 운영팀과 협의 중 입니다. 
(check_mandatory가 개발되면 위의 Country 문제도 해결될 것으로 판단됩니다.) 
==============================================================================================================

- P4 Bookmark 
01. Auth, Location: //OSP/IOSP/Workspace/Account/Auth 
02. 정적분석, Location: //OSP/IOSP/Co-work/4. 정적분석 
01. Auth, Location: //OSP/IOSP/Workspace/Account/Auth 
91. profile-ear, Location: //OSP/OSPS2.0/OSP2_PJT/Profile/trunk/profile-ear 
==============================================================================================================

- putty 한글 처리 
1. puTTY Configuration(새창) > Window > Translation: UTF-8(저장) 
2. utty 한글판http://dol82.net/229 

- 화면 버퍼 늘리기(줄수 늘리기) 
1. puTTY Configuration(새창) > Window > Line of Scrollback: 200 --> 20000(수정) 
==============================================================================================================

- Visaul Subst(가상 공간 생성) 사용 방법 
1. 하단 초록색 + 오른쪽 클릭~ 
가상으로 잡을 드라이브를 지정~ 
오른쪽 돋보기를 클릭해서 가상드라이브로 잡을 폴더를 선택합니다. 
2. 초록색 + 를 클릭합니다. 
그럼 위에 빈 곳에 가상드라이브가 지정이 되고 그 밑에 가상으로 잡은 폴더가 나타나게 되죠 
----------------------------------------------------------------------------------------------------------- 

Visaul Subst(가상 공간 생성) 
http://blog.naver.com/scoupetls?Redirect=Log&logNo=150020837760 
==============================================================================================================

- USB 사용 방법(사용 불가) 
1. %windir%\system32\subst.exe K: Z:\  ===> E\ 드라이브에 가상 공간 생성  
==============================================================================================================

- Windows 7에서 Virtual XP모드 사용하기( Windows 7 Home 버전은 안됨(집 노트북 업그레이드할 것) 
1. 다운로드 Page : http://www.microsoft.com/windows/virtual-pc/download.aspx 접속 
2. 현재 자신의 OS에 맞는 버전과 국가 명을 선택 
3. 아래 3개의 파일을 다운받은 후 순서대로 설치 
4. 아래와 같이 Windows XP Mode를 실행시키면 다음과 같은 화면이 나타남 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.04.24(화) 작업 ■■■■■■■■■■■■■■■
---> 06:50 ~ 22:00 

- IOSP(/oauth2) Prj
- JUnit 수정(Biz단 작업)(67% ==> 44%) 
1.  
==============================================================================================================

- JUnit 디버그(DEBUG) 모드 제어 
1. /auth-svc/src/test/resources/log4j.xml 파일에서(/auth-lib/src/test/resources/log4j.xml) 
<?xml version="1.0" encoding="UTF-8"?> 
<!DOCTYPE log4j:configuration PUBLIC "-//APACHE//DTD LOG4J 1.2//EN" "log4j.dtd"> 
<log4j:configuration xmlns:log4j="http://jakarta.apache.org/log4j/"> 
   <!-- Root Logger -->  
    <root> 
        <priority value="DEBUG" />   <!--// 추가할 것 //--> 
        <appender-ref ref="console" /> 
    </root> 
</log4j:configuration> 

2. /auth-svc/src/test/resources/log4j.xml 파일에서(/auth-svc/src/test/resources/log4j.xmll) 
<?xml version="1.0" encoding="UTF-8"?> 
<!DOCTYPE log4j:configuration PUBLIC "-//APACHE//DTD LOG4J 1.2//EN" "log4j.dtd"> 
<log4j:configuration xmlns:log4j="http://jakarta.apache.org/log4j/"> 
    <!-- Root Logger --> 
    <root> 
        <priority value="DEBUG" /> <!--// 추가할 것 //--> 
        <appender-ref ref="console" /> 
    </root> 
</log4j:configuration> 
==============================================================================================================

- create Pool 수정(/Oauth2CacheBiz.java 파일에서) 
1. beForeInsertAppID(), beForeInsertUserauthToken(), beForeInsertCode() 

import java.net.MalformedURLException; 
import java.net.URL; 

String  requestURL = request.getRequestURI(); 

if (httpMethod.compareToIgnoreCase("DELETE") == 0 
&& requestURL != null 
&& (requestURL.contains("security/sso/userprofiles/authentication/authtoken")  
 requestURL.contains("security/idm/userprofiles"))) { 
signingKey = sessInfo.getAuthTokenSecret(); 
} else if (httpMethod.compareToIgnoreCase("POST") == 0  
&& !requestURL.contains("/social/member/appusers/list")  
&& requestURL.contains("/social/member/appusers")){ 
signingKey = sessInfo.getAuthTokenSecret(); 
} else { // 그 외의 경우 (API 호출, application 로그아웃)는 accessTokenSectret을 사용한다. 
signingKey = sessInfo.getAccessTokenSecret(); 
} 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.04.25(수) 작업 ■■■■■■■■■■■■■■■
---> 06:50 ~ 21:30 --> 챔스 4강 2차전(바르샤 2: 2 첼시(결승 진출)) 

- IOSP(/oauth2) Prj
- JUnit 수정(Biz단 작업)(76% ==> 80%) 
1. /Oauth2IssueBizImpl.java  ===> 73% 
public String issueUserAuthToken(RequestTokenVO passwordVO) throws OSPException { } 

2. /Oauth2VerifyBizImpl.java ===> 71% 
/ * 서비스 가입 여부 확인   
private boolean isValidService(String userID, String applicationServiceID) throws OSPException { } 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.04.26(목) 작업 ■■■■■■■■■■■■■■■
---> 06:50 ~ 21:30 --> 통합OSP PV 5차 시작, 챔스 4강 2차전(레알 2: 1 뮌헨(승부차기 3:1, 결승 진출)) 

- IOSP(/oauth2) Prj
- Prevent 수정 
1. 180(Run ID) ==> auth_auth-lib  2012-04-19 19:11 
http://localhost:5467/cov.cgi?c=AAAAAADA7g__B41b49&class=1_2_5&q=6&runs=152&t=6&v=1 
833(CID), Checker: REVERSE_INULL ==> 처리 완료 
832(CID), Checker: NULL_RETURNS ==> 처리 완료 
202(CID), Checker: REVERSE_INULL ==> 처리 완료  
204(CID), Checker: NULL_RETURNS ==> 처리 완료(점검할 것 ==> while ())  
203(CID), Checker: FORWARD_NULL ==> 처리 완료(점검할 것 ==> while ()) 
201(CID), Checker: NULL_RETURNS ==> 처리 완료(점검할 것 ==> while ())  
200(CID), Checker: NULL_RETURNS ==> 처리 완료 
197(CID), Checker: NULL_RETURNS ==> 처리 완료  
196(CID), Checker: NULL_RETURNS ==> 처리 완료(점검할 것 ==> while ())  
195(CID), Checker: NULL_RETURNS ==> 처리 완료(점검할 것 ==> while ())  
192(CID), Checker: NULL_RETURNS ==> 처리 완료(점검할 것 ==> while ())  
191(CID), Checker: FORWARD_NULL ==> 처리 완료(점검할 것 ==> while ())  
185(CID), Checker: NULL_RETURNS ==> 처리 완료 
184(CID), Checker: NULL_RETURNS ==> 처리 완료(점검할 것 ==> while ()) 
830(CID), Checker: REVERSE_INULL ==> 처리 완료 
831(CID), Checker: NULL_RETURNS ==> 처리 완료 
207(CID), Checker: NULL_RETURNS ==> 사용 안함 
199(CID), Checker: NULL_RETURNS ==> 처리 완료 
198(CID), Checker: NULL_RETURNS ==> 처리 완료 
190(CID), Checker: NULL_RETURNS ==> 처리 완료 
189(CID), Checker: REVERSE_INULL ==> 처리 완료 
188(CID), Checker: NULL_RETURNS ==> 처리 완료  
187(CID), Checker: REVERSE_INULL ==> 처리 완료 
---------------------------------------------------------------------------------------------------------- 

2. 153 (Run ID) ==> auth_auth-svc 2012-04-19 19:36 
==============================================================================================================

- PVT 오류 문제 
1. http://localhost:9080/auth/oauth2/authenticate(Crome REST Client에서 테스트) 
grant_type=&client_id=j5p7ll8g33&client_secret=5763D0052DC1462E13751F753384E9A9&username=234%40yopmail.com&password=osp123 
2. grant_type에 null을 넣어서 보냄: AUT_1008 에러 발생(정상) ===> CMM_1007(SoaupUI에서 에러 발생): SoaupUI 자체 에러  
3. grant_type 자체를 빼고 보냄: grant_type은 필수값으로 빼면 CMM_1007에러가 발생(정상) 
---------------------------------------------------------------------------------------------------------- 

'-OSP 2.5 표준 준수(정상) 
1. 해결상태를 Later에서 Fixed로 변경 처리 
1) Crome REST Client에서 테스트(정상 수행 됨) 
2) CMM_1007(SoaupUI에서 에러 발생): SoaupUI 자체 에러로 판단됨  
PRJ1200004781    
PRJ1200004797  
PRJ1200004803 
PRJ1200004815 
PRJ1200005343  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.04.27(금) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 22:00 --> SC은행 두드림2U 통장 개설(체크카드로 이용할 것) 

- IOSP(/oauth2) Prj
- Prevent 수정 
1. 180(Run ID) ==> auth_auth-lib  2012-04-27 11:31  
2. 181(Run ID) ==>uth_auth-svc  2012-04-27 11:42 
==============================================================================================================

01. Defect: PRJ1200004803 ==> 수정 완료 
[통합 OSP_Auth] AuthService_createAccessToken API에 대하여 필수 파라메터를 누락시킨 후 수행결과 에러코드  
CMM_1007가 응답 되고 있습니다 
TestSuite : AuthService_createAccessToken 
TestCase : createAccessToken_400_01 (첫번째 Step만 해당)  
5) refresh_token : AUT_1007 ==> 확인(code 필수값) 

하지만 5번인 refresh_token에 누락값 으로 수행 결과 에러코드 AUT_1803가 응답 되고 있습니다. 
위 doc Spec에 명시 되어 있는 에러코드가 두가지 모두 명확히 정해져 있으므로 에러코드 AUT_1007가 응답 되어야 합니다.  
AUTH.AUT_1803.400=The value of refresh_token parameter is incorrect. 

'- 수정 완료 
1. 처리: 응답에러코드 AUT_1803을 AUT_1007 으로 수정 처리함 
2. 원인: AUT_1007 사항은 기존에 있어든 부분이지만 개발툴이 바뀌면서 
interceptor에서 자동으로 지원했든 것이 spring3.0에서 지원 안되서 수동으로 이번에 적용하게 되었습니다. 

그리고 API에서 grant_type은 optional(선택)로 수정 처리 합니다. 
왜냐하면, grant_type이 refresh_token이면 refresh_token이 필수, grant_type이 authorization_code이면 refresh_token이 선택이므로 
API의 @param refresh_token는 required(필수)가 아니라 optional(선택)이라고 판단되어서 수정 처리함. 
(만약, grant_type을 필수로 처리하면 grant_type이 authorization_code일 경우 에러 발생(02. AUT_1007 에러 발생(비정상).jpg 파일 참조)  
 * @param refresh_token [optional] - only use in Refreshing an Access Token Flow.<br>  
---------------------------------------------------------------------------------------------------------- 

- PRJ1200004803 관련 메일, 전화 
1. 임호영: hoyoung.*@*.*m, H) * 
==============================================================================================================

- PVT 오류 문제(참고 사항) 
userauth_token 발행 ===> http://eu.auth.samsungosp.com/auth/oauth2/authenticate 
1. Crome REST Client에서 테스트 
1) 조건: grant_type에 null을 넣어서 보냄 
grant_type=&client_id=j5p7ll8g33&client_secret=5763D0052DC1462E13751F753384E9A9&username=234%40yopmail.com&password=osp123 
2) 결과: AUT_1008 에러 발생(정상) 

2. SoaupUI에서 테스트  
1) 조건: grant_type에 null을 넣어서 보냄(grant_type에 한칸 안 뛰우고 빈칸을 넣음) 
2) 결과: CMM_1007(SoaupUI에서 에러 발생): SoaupUI 자체 에러(grant_type 자체를 인식 못하는 것으로 추정) 

3. SoaupUI에서 테스트  
1) 조건: grant_type에 빈값을 한칸 뛰워서 보냄 
2) 결과: AUT_1008 에러 발생(정상): SoaupUI 자체 에러(grant_type null로 인식) 

4. Crome  REST Client, SoaupUI에서 테스트 
1) 조건: grant_type 자체를 빼고 보냄 
2) 결과: CMM_1007에러가 발생(정상) 
3) 원인: grant_type은 필수값으로 빼면 CMM_1007에러가 발생(정상) 
==============================================================================================================

- [iOSP] 제니퍼(JENIFFER) 교육 
1. 일시 : 4월 27일 금요일 14시(회의실 8231) 
2. 내용 : 회의실 8231  
1) 제니터 사용법(모니터링 방법) 
2) 제니서 설치 및 설정 
D:\OSP2.5\workspace\IOSP\Workspace\OpenAPITestPVT\4차/단위 성능 테스트 가이드 using SoapUI for OSPS2.0(110629).ppt 
==============================================================================================================

22:00 퇴근  
22:50 고려 당구클럽: 세븐 당구 동호회(서울 시청 지역), 회비 만원 
23:10 시스템 설명(하꼬 마시) ====> 2012.04.28(토) 
00:20 게임(3구(2명, 5개씩): 패)  
01:30 게임(3구(2명, 5개씩): 승) 
04:00 게임(3구(2명, 5개씩): 패) 
05:00 쪽잠 
06:00 기상 
06:00 게임(3구(2명, 5개씩): 승) 
07:00 게임(3구(2명(종업원, 5개씩): 패) 
08:00 종료 
08:50 출근 
17:40 퇴근 
19:00 국결행사 서울 모임(회비 3만원) 
19:10 석식(오리 훈제 구이) 
19:30 안산리더님(재혼, 필리핀 와이프, 안산에서 중고컴퓨터 가게 운영): 필리필 와이프들 옆에 앉어서 
        필리필말로 이야기들을 많이 함 
21:00 공식 행사(입국, 임신 축하) 
22:00 종료 
22:10 버스 
23:10 귀가 
23:30 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.04.28(토) 작업 ■■■■■■■■■■■■■■■
---> 08:50 ~ 17:40  --> 토요 근무(PVT 5차 종료), 중식(광양 불고기(정식): 나대균 책임이 쏨, 카페라떼) 

- IOSP(/oauth2) Prj
- Prevent 수정(구형회 차장 노트북: 가자99) 
1. 215(Run ID) ==> auth_auth-lib  2012-04-27 19:49  
Checker: NULL_RETURNS ==> 1(완료) 
Function: com.samsungosp.auth.oauth2.biz.Oauth2IssueBizImpl.issueAccessToken(com.samsungosp.auth.oauth2.vo.RequestAuthorizeVO)  
File: /com/samsungosp/auth/oauth2/biz/Oauth2IssueBizImpl.java 

Checker: NULL_RETURNS  ==> 2(완료) 
Function: com.samsungosp.auth.oauth2.biz.Oauth2VerifyBizImpl.verifyRefreshAccessTokenVO(com.samsungosp.auth.oauth2.vo.RequestTokenVO)  
File: /com/samsungosp/auth/oauth2/biz/Oauth2VerifyBizImpl.java  

Checker: NULL_RETURNS ==> 3(완료) 
Function: com.samsungosp.auth.oauth2.biz.Oauth2VerifyBizImpl.verifyAuthorizationCodeVO(com.samsungosp.auth.oauth2.vo.RequestTokenVO)  
File: /com/samsungosp/auth/oauth2/biz/Oauth2VerifyBizImpl.java  

Checker: NULL_RETURNS ==> 4(완료) 
Checker: NULL_RETURNS  
Function: com.samsungosp.auth.oauth2.biz.Oauth2VerifyBizImpl.verifyRequestAuthorizeVOSamsungOSP(com.samsungosp.auth.oauth2.vo.RequestAuthorizeVO)  
File: /com/samsungosp/auth/oauth2/biz/Oauth2VerifyBizImpl.java  

Checker: NULL_RETURNS  ==> 5(완료) 
Function: com.samsungosp.auth.user.biz.UserAuthBizImpl.generateUserID(com.samsungosp.auth.user.vo.UserIdentificationVO)  
File: /com/samsungosp/auth/user/biz/UserAuthBizImpl.java  
deref_while_null: com.samsungosp.auth.oauth2.common.util.SecurityUtil.generateRandomToken(...) dereferenced while null ==> 2중 정의 
deref_while_null: com.samsungosp.auth.oauth2.common.util.SecurityUtil.generateRandomToken(...) dereferenced while null 

strUserID = SecurityUtil.generateRandomToken(UserConstants.LENGTH_USER_ID).toLowerCase(); 
==>  
String randomToken = SecurityUtil.generateRandomToken(UserConstants.LENGTH_USER_ID); 
if (randomToken != null) {  //randomToken이 null이 아니면(수정) 
strUserID = randomToken.toLowerCase(); 
} 

Checker: NULL_RETURNS ==> 6(완료) 
Function: com.samsungosp.auth.user.biz.UserAuthBizImpl.validate(com.samsungosp.auth.user.vo.UserIdentificationVO, boolean)  
File: /com/samsungosp/auth/user/biz/UserAuthBizImpl.java  

Checker: FORWARD_NULL ==> 7(완료) 
Function: com.samsungosp.auth.user.biz.UserAuthBizImpl.userTNCRequest(com.samsungosp.auth.user.vo. 
UserTNCRequestVO, com.samsungosp.framework.auth.header.OSPHttpHeaderInfo)  
File: /com/samsungosp/auth/user/biz/UserAuthBizImpl.java  

Checker: NULL_RETURNS  ==> 8(완료) 
Function: com.samsungosp.auth.user.biz.UserAuthBizImpl.userTNCRequest(com.samsungosp.auth.user.vo 
.UserTNCRequestVO, java.lang.String, java.lang.String, java.lang.String, java.lang.String)  
File: /com/samsungosp/auth/user/biz/UserAuthBizImpl.java  

Checker: REVERSE_INULL ==> 9(완료) 
Function: com.samsungosp.auth.user.biz.UserAuthBizImpl.userTNCRequest(com.samsungosp.auth.user.vo. 
UserTNCRequestVO, java.lang.String, java.lang.String, java.lang.String, java.lang.String)  
File: /com/samsungosp/auth/user/biz/UserAuthBizImpl.java  

Checker: FORWARD_NULL  ==> 10(완료) 
Function: com.samsungosp.auth.user.biz.UserAuthBizImpl.validate(com.samsungosp.auth.user.vo.UserCreateVO)  
File: /com/samsungosp/auth/user/biz/UserAuthBizImpl.java  
branch_null: userBaseVO is null ==> 2가지 경우(branch_null,branch_not null) 

Checker: FORWARD_NULL  ==> 11(사용 안함) 
Checker: NULL_RETURNS  
Function: com.samsungosp.auth.user.client.SFClientImpl.validateTNC(com.samsungosp.auth.user.vo.UserTNCRequestVO, java.lang.String, java.lang.String)  
File: /com/samsungosp/auth/user/client/SFClientImpl.java  

Checker: FORWARD_NULL  ==> 12(사용 안함) 
Function: com.samsungosp.auth.user.client.SFClientImpl.throwOSPException(osp.oaf.openapi.client.ClientException)  
File: /com/samsungosp/auth/user/client/SFClientImpl.java  

Checker: NULL_RETURNS ==> 13(완료) 
Function: com.samsungosp.auth.user.client.SocialClientImpl.getDevice(java.lang.String, java.lang.String, java.lang.String)  
File: /com/samsungosp/auth/user/client/SocialClientImpl.java 

Checker: NULL_RETURNS  ==> 14(완료) 
Function: com.samsungosp.auth.user.client.SocialClientImpl.createUserForDevice(com.samsungosp.auth.user.vo.UserCreateForDeviceVO, java.lang.String)  
File: /com/samsungosp/auth/user/client/SocialClientImpl.java  

Checker: FORWARD_NULL ==> 15(완료) 
Function: com.samsungosp.auth.user.client.SocialClientImpl.getUser(java.lang.String, java.lang.String, java.lang.String, java.lang.String)  
File: /com/samsungosp/auth/user/client/SocialClientImpl.java  

 Checker: NULL_RETURNS ==> 16(완료): SF 
Function: com.samsungosp.sf.common.SfClientUtil.generateUserId()  
File: /com/samsungosp/sf/common/SfClientUtil.java  

Checker: NULL_RETURNS ==> 17(완료): SF 
Function: com.samsungosp.sf.common.Util.raiseExcetpion(javax.servlet.http.HttpServletResponse, int, java.lang.String, java.lang.String,  
java.lang.String, java.lang.String, java.lang.Exception)  
File: /com/samsungosp/sf/common/Util.java  

Checker: NULL_RETURNS ==> 18(완료): SF 
Function: com.samsungosp.sf.common.Util.formEncode(java.lang.Iterable, java.io.OutputStream)  
File: /com/samsungosp/sf/common/Util.java 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.04.29(일) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

▦조기축구 

06:40 기상 
07:00 SK 신봉천 주유소(태훈이형 차: 처음 시승) 
07:30 주차(현대고 주차장) 
07:50 신구초등학교 
08:20 숏게임(2:1 승) 
08:50 조기축구(2:2 무): 챔스리그 축구공 공사장에 넘김 
09:30 조기축구(4:2 승): 2골 넣음 
10:30 종료 
11:30 중식(류명국 해장국: 부대찌게): 이계환 고문님이 쏨(찬조) 
12:10 종료 
12:30 공사장(막거리 8병 사들고 가서 공 찾아 달라고 요청함: 창원이형이 돈 만원 줌) 
12:40 태훈이형차 
12:30 고속터미널 근처 내림 
13:30 수화(수실장님이 사랑 추천): 몸무게: 73,6kg 
13:40 휴식(TV 시청; 프로야구) 
18:30 사랑(165cm, 전주, 이수경 닮음, 투샷(힘들어 함)) 
19:40 종료 
19:50 석식(수화) 
20:00 버스 
20:50 귀가 
22:30 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.04.30(월) 작업 ■■■■■■■■■■■■■■■
---> 06:50 ~ 21:30 --> Prevent 완료 

- IOSP(/oauth2) Prj
- Prevent 수정 
1. 239(Run ID) ==> auth_auth-lib  239 2012-04-30 08:52  

Checker: FORWARD_NULL ==> 1(완료)(신규) 
Function: com.samsungosp.auth.user.biz.UserAuthBizImpl.userTNCRequest(com.samsungosp.auth.user.vo. 
UserTNCRequestVO, com.samsungosp.framework.auth.header.OSPHttpHeaderInfo)  
File: /com/samsungosp/auth/user/biz/UserAuthBizImpl.java 

if ( privacyAccepted != null  &&  strTncAccepted != null) { //privacyAccepted이 null이 아니고  
	strTncAccepted이 null이 아니면(Prevent 수정) 
} 
==============================================================================================================

- PVT6차를 위한 release 버전 변경 
#component svc release version 
release.version=0.9.22 
==============================================================================================================

- [중요공지] Logging 설정 관련 설정 
Logging 관련 Stg 추가 설정 내용입니다.  

1. applicationContext-aop.xml 
<bean id="loggingAspect" class="com.samsungosp.framework.aspect.OSPLoggingAspect" > 
     <property name="subProjectName" value="auth" /><!-- logging point 설정용도 --> 
    <!--<property name="subProjectName" value="sample}" /><!-- SubProject명 - logging point 설정용도 --> 
</bean> 

2. servlet-osp.xml 
<!-- AOP(Aspect Oriented Programming) --> 
<aop:aspectj-autoproxy proxy-target-class="true"/> 

3. servlet-rest.xml 
<!-- To enable @RequestMapping process on type level and method level --> 
<bean class="org.springframework.web.servlet.mvc.annotation.DefaultAnnotationHandlerMapping"> 
    <property name="useDefaultSuffixPattern" value="false"/> 
</bean> 
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■