

�����������������������������������������������������������
+---------------------------------------------// Memo(2012.04) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2012.04.01(��) �۾� ����������������
---> 13:30 ~ 16:20 

- IOSP(/oauth2) Prj
- PVT ��ü ���� 
1. 04.01(��) 13�ú��� ��ü ���� ���� 
2. 14�� PL ȸ��(�̻� ����) 
==============================================================================================================
�������౸ 

08:30 ��� 
09:30 �ű��ʵ��б� 
10:00 �����౸(6:4 ��) 
11:00 ���� 
11:30 �߽�(�䵵��: �������): ȸ���� �� 
12:30 ���� 
13:30 ���(������ 823 ����) 
18:00 ��� 
18:10 ���� 
19:40 �Ͱ� 
==============================================================================================================

������������������� 2012.04.02(��) �۾� ����������������
---> 07:20 ~ 22:00  --> �籸��(������): 3��(7�� ���� ��), �ڸ��̵�(���ڸ� �ڽ��� ���� �̵�) 

- IOSP(/oauth2) Prj
- client stub ���� 
1. lib jar ��� 
1) json-lib-2.4-jdk15.jar, spring-test-3.0.6.RELEASE.jar 
2) ���: D:\OSP2.5\workspace\IOSP\Workspace\ClientStubSample\trunk\lib, C:\OSP2.5\lib_repository\repository  
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
System.out.println("[createUserAuthToken()] ==> [��� @@@@@@] [response]"+ response ); 

return response; 
    } 
--------------------------------------------------------------------------------------------------------- 

- createAuthorizationCode ����(/AuthServiceClient.java ����): ������ ������ 2�ð� ���� ���(�ذ� ����) 
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

- �뿩�� �� ���� ��ȭ 
1. ������(3õ ���� �޶�� ��ȭ �� ==> ������ �����ؼ� �شٰ� ��) 
2. ������(������ 50���� 4�� 17�� �شٰ� �� ==> ���¹�ȣ ���� ����) 
==============================================================================================================

������������������� 2012.04.03(ȭ) �۾� ����������������
---> 07:20 ~ 22:00 

- IOSP(/oauth2) Prj
- auth client stub POST��� ��� ���� 
1. /client/auth/AuthServiceClient.java���� 
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
System.out.print("[createUserAuthToken()] ==> [��� @@@@@@] [response]"+ response ); 

return response; 
} 
} 

2. ���� ���� 
POST http://localhost:9080/auth/oauth2/authenticate returned a response status of 400, Error detail: !The error entity is empty! 
at com.samsungosp.auth.oauth2.service.AuthServiceResourceClient.createUserAuthToken(Unknown Source) 
at com.samsungosp.client.auth.AuthServiceClient.createUserAuthToken(AuthServiceClient.java:150) 
at com.samsungosp.client.auth.AuthServiceClient.main(AuthServiceClient.java:117) 
==============================================================================================================

- auth client stub GET��� ��� ����  
1. /client/auth/AuthServiceClient.java���� 
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
String  userauth_token = "ijBsD4vfLX";  //�߱޵� UserAuthToken 
String  scope = ""; 
String  state = ""; 
String  physical_address_text = ""; 
String  service_type = ""; 
String  email_id = ""; 
String  redirect_uri = ""; 

List response = client.createAuthorizationCode(response_type, client_id, userauth_token, scope, state,  
physical_address_text, service_type, email_id, redirect_uri); 
System.out.print("[createAuthorizationCode()] ==> [��� @@@@@@] [response]"+ response ); 

return response; 
} 
} 
} 

2. ���� ���� 
com.sun.jersey.api.client.ClientHandlerException: A message body reader for Java type, interface java.util.List,  
and MIME media type, application/json;charset=UTF-8, was not found 
at com.sun.jersey.api.client.ClientResponse.getEntity(ClientResponse.java:235) 
at com.sun.jersey.api.client.ClientResponse.getEntity(ClientResponse.java:200) 
at com.samsungosp.auth.oauth2.service.AuthServiceResourceClient.createAuthorizationCode(Unknown Source) 
at com.samsungosp.client.auth.AuthServiceClient.createAuthorizationCode(AuthServiceClient.java:187) 
at com.samsungosp.client.auth.AuthServiceClient.main(AuthServiceClient.java:104) 

3. ��ϵ� library 
1) /jersey-client-1.0.2.jar, /jersey-core-1.0.2.jar, /jersey-server-1.0.2.jar, /spring-test-3.0.6.RELEASE.jar 
/servlet-api-2.5-sources.jar 

4. ��ġ �Ϸ� 
1) /AuthServiceResource.java ���Ͽ��� list ���� String�� ���� 
@ResponseResult("java.lang.String") 
public ModelAndView createUserAuthToken(OSPHttpHeaderInfo headers, HttpServletRequest request) throws Exception;   
==============================================================================================================

- /MemberServiceResourceImpl.java ���Ͽ��� 
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

- OSP APIs & Tools ����  
1) End Point URI : http://api.samsungosp.com/auth//auth 
 ==> �������� �������� URL: http://api.samsungosp.com/auth//(���� ��û URL: http://api.samsungosp.com/) 

1. http://api.samsungosp.com/auth//auth/oauth2/revoke 
2. Profile ���� 
1) End Point URI ==> http://www.ospserver.net/social/user 
1) Path ==> http://www.ospserver.net/social/user/rofiles/list  ==> ����(����: http://www.ospserver.net/social/user/profiles/list) 
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

������������������� 2012.04.04(��) �۾� ����������������
---> 07:10 ~ 21:20 

- IOSP(/oauth2) Prj
- client stub ���� 
1. auth client stub POST��� ��� ���� 
[2012-04-04] INFO : TRACE_LOGGER - REQen_US9a7f8784-61d2-4639-bd41-98cddd3439371#N/A 
/auth/oauth2/authenticateclient_id=j5p7ll8g33&scope=test&client_secret=5763D0052DC1462E13751F753384E9A9 
&grant_type=password&username=234%40yopmail.com&service_type=M&password=osp123&physical_address_text=test 
==============================================================================================================

- JUnit  ���� Start ���� 
1. ���� 
DEBUG: com.samsungosp.auth.oauth2.service.AuthServiceResourceImpl - [getSystemLocale] Loading....  
default_language :: en  Loading.... default_country :: US 
java.lang.NullPointerException 
at com.samsungosp.framework.web.service.BaseServiceResource.getMessage(BaseServiceResource.java:229) 
at com.samsungosp.framework.web.service.BaseServiceResource.getMessage(BaseServiceResource.java:122) 
at com.samsungosp.auth.oauth2.service.AuthServiceResourceImpl.createUserAuthToken(AuthServiceResourceImpl.java:140) 
at com.samsungosp.auth.oauth2.service.AuthServiceTest_authenticate_Test.testAuthServiceTest_authenticate_Test(AuthServiceTest_authenticate_Test.java:84) 

2. ��ġ 
1)  /AuthServiceTest_authenticate_Test.java ���Ͽ��� 
@Before 
public void setUp() throws Exception { 
System.out.print("[setUp()] ==> [test_00] \n");  
super.setUp();         
authServiceResource = new AuthServiceResourceImpl(); 
oauth2BizMock = createMock(Oauth2Biz.class);   
authServiceResource.setOauth2Biz(oauth2BizMock);   //===> �߰� 
} 

2) /AuthServiceResource.java ���Ͽ��� 
@RequestMapping("/auth/") 
public interface AuthServiceResource {   
void setOauth2Biz(Oauth2Biz oauth2Biz);    //===> �߰� 
} 

3) /AuthServiceResource.java ���Ͽ��� 
@Controller 
@RequestMapping("/auth/") 
public class AuthServiceResourceImpl extends BaseServiceResource implements AuthServiceResource { 
@Autowired 
private Oauth2Biz oauth2Biz; 
    
public void setOauth2Biz(Oauth2Biz oauth2Biz) {  //===> �߰� 
this.oauth2Biz = oauth2Biz; 
}  
}  
==============================================================================================================

������������������� 2012.04.05(��) �۾� ����������������
---> 07:10 ~ 21:20 

- IOSP(/oauth2) Prj
- test case ���� 
1. OSPResultMessage ó�� 
// 1. authenticate Flow 
AUTH.AUT_1901.400=The value of grant_type parameter is unsupported type. 
// 2. authorize Flow 
AUTH.AUT_1401.400=The value of respose_type parameter is unsupported type. 
// 3. AccessToken Flow 
AUTH.AUT_1901.400=The value of grant_type parameter is unsupported type. 
// 4. deauthenticate Flow    @@@@@  ==> �ʼ��� �ɼ����� ����(���� ����) 
AUTH.AUT_1005.400=The value of userauth_token parameter must be present and have a non-empty value. 
AUTH.AUT_1014.400=The length of a userauth_token parameter is invalid.(��� ����) 
AUTH.AUT_1801.400=The value of redirect_uri parameter is incorrect.(��� ����) 
// 5. revoke Flow  @@@@@  ==> �ʼ��� �ɼ����� ����(���� ����) 
AUTH.AUT_1005.400=The value of userauth_token parameter must be present and have a non-empty value. 
// 6. isvalid Flow  
AUTH.AUT_1805.400=The password is incorrect. 
==============================================================================================================

- client stub ���� 
1. auth client stub POST��� ��� ����(500�� ����) 
1) ���� 
POST http://localhost:9080/auth/oauth2/revoke?access_token=njHKXScByV returned a response status of 500 
2) ��ġ ==> revoke ��ü ���α׷� ����(parameter�� �� BIZ FLOW Ȯ��) 

2. auth client stub POST��� ��� ����(400�� ����) 
1) ���� 
POST http://localhost:9080/auth/oauth2/revoke?access_token=njHKXScByV returned a response status of 400 
2) ��ġ ==> /AuthServiceResourceClient.java ���Ͽ��� parameter�� Ȯ�� 
MultivaluedMap<String, String> qps = new MultivaluedMapImpl(); 
qps.add("access_token", String.valueOf(accessToken));  //�߰��� ��(parameter �߰�) 
------------------------------------------------------------------------------------------------------------------------ 

- client stub �׽�Ʈ ��� 
1. /auth-svc/auth-client/src/main/java/com/samsungosp/auth ������ ���� 
2. /trunk/src/com/samsungosp������ �ٿ� �ֱ� 
3. /trunk/src/com/samsungosp/auth/oauth2/service/AuthServiceResourceClient.java ���Ϸ� ����� 
4. /AuthServiceResource.java ���� @param �� ��Ȯ�� ������ �� 
1) * @param grant_type [required] - only use in Customized Flow for Device 
* @param client_id [required] - app_id is client identifier. 
==============================================================================================================

- JUnit ���� 
1. /AuthServiceTest_isvalid_Test.java ���� 
/PgManagementServiceResourceImplTest.java ���Ͽ��� 
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

������������������� 2012.04.06(��) �۾� ����������������
---> 07:10 ~ 21:30 --> �߽�(�뱸��, �������� ����, 3õ ��ȯ �䱸 ==> ���Ұ��� ����(12�� 31�� ��ȯ ���  ����)): 
				���뿪 13�� �ⱸ: �������� ����(����� ��ǥ��ȣ��) 

- IOSP(/oauth2) Prj
- PVT Defect ó�� 
1. Defect: PRJ1200004243(118��) 
2. Defect: PRJ1200004253(120��) 
==============================================================================================================

- JUnit ���� 
1. /AuthServiceTest_authenticate_Test.java ���� ==> �Ϸ� 
2. /AuthServiceTest_authorize_Test.java ���� ==> �Ϸ� 
3. /AuthServiceTest_token_Test.java ���� ==> �Ϸ�   
4. /AuthServiceTest_deauthenticate_Test.java ���� ==> �Ϸ� 
5. /AuthServiceTest_revoke_Test.java ���� ==> �Ϸ� 
6. /AuthServiceTest_isvalid_Test.java ���� ==> �Ϸ�  
==============================================================================================================

- Junit coverage ���ÿ��� �ϴ� ��� 
1. Eclipse Update Site ==> http://ecobertura.johoop.de/update 
==============================================================================================================

- JTest ��� 
1. auth-svc, auth-lib, acc-pool-manager(���콺 �� Ŭ��) > Parasoft > Test using > Team > MSC Java Coding Rules 
2. P4: //OSP/IOSP/Co-work/4. �����м�/2012-04-06/auth-2012-04-06.pdf  
-----------------------------------------------------------------------------------------------------------------  

- JTest ���� ��� 
1. Report Server ���� 
1) Host name: 10.254.218.81  ==> 10.90.62.197 
2) User name: admin  
3) Password : admin 
4) Project ����: IOSP_AUTH(Ŭ��) 
2. Project Property ����  
1) Key: auth-svc, Value: OSPS 
2) Key: auth-lib, Value: OSPS 
3) Key: acc-pool-manager, Value: OSPS 
==============================================================================================================

21:30 ���  
22:30 ��� �籸Ŭ��: ���� �籸 ��ȣȸ(���� ��û ����), ȸ�� ���� 
23:00 �ý��� ���� 
23:20 �籸 ����(3��(3��), 3��(10��)  
01:00 �籸 ����(3��(3��), 1��(8��)) ====> 2012.04.08(��) -->  ȭ���(���� �� ���� ������) 
04:00 �籸 ����((3��(3��), 3��(10��) 
08:00 ����  
08:50 �Ͱ� 
08:00 ��ħ 
14:00 ��� 
14:10 2012�� ���ξ߱� ������(SK 6:2 ���) 
01:00 ��ħ 
==============================================================================================================

- ���ʻ�ȸ��(2012��) ����  
1. ���ι�ȣ: 7003932  
2. ���ڳ��ι�ȣ: 0122432081  
==============================================================================================================

������������������� 2012.04.08(��) �۾� ����������������
---> 07:00 ~ 18:00 

�������౸
07:30 ��� 
08:20 �ű��ʵ��б� 
08:30 �����౸(4:2 ��) 
09:30 �����౸(3:3 ��) 
10:30 �����౸(6:6 ��) 
11:00 ���� 
11:30 �߽�(�䵵��: �������): �ѻ�� ��ȸ����� ��(����) 
12:40 ���� 
13:00 �ѻ�� ��ȸ��� �¼� �Ұ�(������: H)010-5410-3788, *@*.*, ��ȥ, ��ȥ����, �Ź��� LG ����) 
�츲ȭ�� ��ȹ����(����� ���α� ���Ƶ� 30-27, T:733-3738): www.artwoolim.com  
13:30 ���� 
14:30 �Ͱ� 
15:30 ���� 
18:30 ��� 
18:50 �ؼ��� ��� �е�(ħ�� �е�) ����(7����) 
20:40 ����(�Ҷ�� 2��: ������� ��) 
01:00 ��ħ 
==============================================================================================================

������������������� 2012.04.09(��) �۾� ����������������
---> 07:20 ~ 21:00 --> ����OSP PVT 2�� 

- JUnit ����(error coverage) 
1. /AuthServiceTest_authenticate_Test.java ���� 
01_testAuthServiceTest_authenticate_Test ==> �Ϸ� 
01_testAuthServiceTest_authenticate_Test_AUT_1901 ==> �Ϸ� 

2. /AuthServiceTest_authorize_Test.java ���� 
02_testAuthServiceTest_authorize_Test ==> �Ϸ� 
02_testAuthServiceTest_authorize_Test_AUT_1301 ==> �Ϸ� 

3. /AuthServiceTest_token_Test.java ���� 
03_AuthServiceTest_token_Test ==> �Ϸ� 
03_testAuthServiceTest_token_Test_AUT_1702 ==> �Ϸ� 

4. /AuthServiceTest_deauthenticate_Test.java ���� 
04_AuthServiceTest_deauthenticate_Test ==> �Ϸ� 
04_AuthServiceTest_deauthenticate_Test ==> 

5. /AuthServiceTest_revoke_Test.java ���� 
05_AuthServiceTest_revoke_Test ==> �Ϸ� 
05_testAuthServiceTest_revoke_Test_AUT_1811 ==> �Ϸ� 
--> Oauth2BizImpl.java�� postRevoke() ���� ��ȣ�� 
try {  
profileOauthAccessTokenEntryVO = oauth2CacheBiz.getAccessToken(accessToken);   //accessToken ��ȸ 
log.debug("[postRevoke()] ==> [profileOauthAccessTokenEntryVO]"+ profileOauthAccessTokenEntryVO ); 

if(profileOauthAccessTokenEntryVO == null  profileOauthAccessTokenEntryVO.getAccessToken() == null) {   
OSPResultMessage.raiseException(Constants.BAD_REQUEST,  
"AUT_1811", MessageUtil.getMessage("AUTH.AUT_1811.400"), this.getClass().getName());    // ȣ�� 
}  
}  
catch ( Exception e ) {  
OSPResultMessage.raiseException(Constants.INTERNAL_ERROR,  
"AUT_5001", MessageUtil.getMessage("AUTH.AUT_5001.500"), this.getClass().getName());      // �� ȣ�� 
} 

6. /AuthServiceTest_isvalid_Test.java ���� 
06_testAuthServiceTest_isvalid_Test ==> �Ϸ� 
06_testAuthServiceTest_isvalid_Test_AUT_1805 ==> �Ϸ� 
--> Oauth2VerifyBizImpl.java�� isValidUser() ���� ��ȣ�� 
==============================================================================================================

- Stage ���� ���(���� & ���÷���)  @@@@@@@@@@@ 
1. P4���� ���� ���� �ø��� 
2.  //OSP/IOSP/Workspace/Account/Auth/branches/auth-R1.x.x/ ���� 
3. Integrate(��â) 
1) //OSP/IOSP/Workspace/Account/Auth/trunk ����(���콺 �� Ŭ��) > Integrate >  
//OSP/IOSP/Workspace/Account/Auth/branches/auth-R1.x.x/... 
 �پ�ֱ�(���� �ϳ� �� ���: //OSP/IOSP/Workspace/Account/Auth/branches/auth-R1.x.x/auth-svc/src 
 /main/java/com/samsungosp/auth/oauth2/service/AuthServiceResourceImpl.java) 
2) Add files to pending chanagelist: NEW 
3) Advanced Options: 3��, 7��(������ ��): üũ ===> Integrate(Ŭ��) 
4. //OSP/IOSP/Workspace/Account/Auth/trunk ����(Ŭ��) > Pending(Ȯ��): ��¥�� 
 1) ? ==> Resolve > Atuo Source 
 2) X �Ǵ� ���ʿ� ���� ==> Revert 
 3) Submit(Ŭ��): PVT 3�� ���� ���� 
 4) Integrate ���� ���� Ȯ�� 
1) AuthServiceResourceImpl.java ����(���콺 �� Ŭ��): Revision Graph(Ŭ��) > Graph(��â); 1�� ���� ����(�Ǽ����� ������ ����) 
 2) //OSP/IOSP/Workspace/Account/Auth/branches/auth-R1.x.x/auth-lib/src/main/java/com/samsungosp/auth/oauth2/biz/Oauth2BizImpl.java 
5. ��彼 ���� & ���÷���  
--------------------------------------------------------------------------------------------------------------------------

- Versiontracking 
1. Stage ���� build & deploy���ֽñ� �ٶ��ϴ�. 
2. Tomcat restart  ���ֽñ� �ٶ��ϴ�. 
3. Hosts�� ������ ��� ��) 184.169.145.113  ver.samsungosp.net   
4. ȣ�� URL : http://ver.samsungosp.net/VersionTracking/auth/getospversion/jarName=iospversion.jar 
<buildVersion> 
	<buildDate>2012.04.09 16:36:40</buildDate> 
	<componentName>auth</componentName> 
	<libVersion/> 
	<revision>293715</revision> 
	<service>IOP</service> 
	<svcVersion>0.9.9-26</svcVersion> 
</buildVersion> 
==============================================================================================================

- build.xml ����(����� å��) 
1. Unpublish ������ build.xml�� skipPublish=false�� ���� �� Stage ���� build & deploy �ߴٰ� �� 
==============================================================================================================

������������������� 2012.04.10(ȭ) �۾� ����������������
---> 07:10 ~ 22:00 --> 2��° ����(���� �� ����) 

- JUnit ����(���߼��� ���) ==> Lines coverage 80% �̻�(���� 5%) 
1. Biz�� Exception ����(/Oauth2BizImpl.java) 
1) throws Oauth2Exception {  ==> throws Exception { 
==============================================================================================================

- DBA ���� 
1. ���� ���� 
DEBUG: com.samsungosp.auth.user.dao.UserAuthDAOImpl - [getUserIdentification()] ==>  
[DB��ȸ_��û Į��(ȸ�� ���� ���� ��ȸ(US)) -> UserAuthDAO.getUserIdentification()]  
[userIdentificationVO.getLoginID()]@yopmail.com[userIdentificationVO.getLoginIDTypeCode()]003 
DEBUG: org.springframework.jdbc.datasource.DataSourceUtils - Fetching JDBC Connection from DataSource 
2. ��ġ: /auth-svc/src/test/resources/spring/applicationContext-datasource.xml ���Ͽ��� 
���߼����� Oracle ip ������ ec2-50-16-234-94.compute-1.amazonaws.com �� ���� 
<!-- ORACLE DB POOL datasource --> 
<bean id="defaultDataSource" class="oracle.jdbc.pool.OracleDataSource" destroy-method="close"> 
<property name="connectionCachingEnabled" value="true" />    
 <!-- <property name="URL" value="jdbc:oracle:thin:@50.16.234.94:1521:DEVIOSP1" /> --> <!--// local //--> 
        <property name="URL" value="jdbc:oracle:thin:@ec2-50-16-234-94.compute-1.amazonaws.com:1521:DEVIOSP1" /> <!--// Dev //--> 
<property name="user" value="wsoc" /> <!--// user(Direct writing)  //--> 
<property name="password" value="osp123" /> <!--// password(Direct writing)  //-->  
</bean> 
3. DBA: �輼�� ����(���ھ�) 
==============================================================================================================

- G11NUtility ��ü 
1. /Oauth2ErrorUtil.java ���Ͽ��� 
if(Pattern.matches("(AUT).*", errorCode)){ 
oauth2ErrorVO.setError(G11NUtility.getLocalizedLogMessage(new StringBuilder(Oauth2LibConstants. 
COMPONENT_NAME).append(errorCode).append(".").append(httpStatus).toString(), Oauth2LibConstants.LOG_BUNDLE_NAME)); 
==> oauth2ErrorVO.setError(getMessage(new StringBuilder(Oauth2LibConstants.COMPONENT_NAME). 
append(errorCode).append(".").append(httpStatus).toString(), Oauth2LibConstants.LOG_BUNDLE_NAME)); 
} 
==============================================================================================================

- eclipse ���� �ӵ� ���� 
1. eclipse�� ���� �� C:\OSP2.5\workspace\.metadata\.plugins/org.eclipse.core.resources ������ �����ؼ�  
���� ��, ���� 
2. eclipse ���� 
3. eclipse ���� 
4. ������  ���� C:\OSP2.5\workspace\.metadata\.plugins/org.eclipse.core.resources �پ�ֱ� ó�� 
5. C:\OSP2.5\workspace\.metadata\.plugins\org.eclipse.core.resources/.history ==> ���� ���� �� ���� ���� 
1) history�� ���� ���� �̸� ������ ���� �⵿ �� �޸� ũ�Ⱑ �ٸ� �ɷ� �̷�� ���۵ȴ�. 
---------------------------------------------------------------------------------------------------------- 

- Spring Project Nature ����( ȿ�� ����) 
1. auth-svc(���콺 �� Ŭ��) > Spring Tools > Remove Spring Project Nature 
==============================================================================================================

22:00 ���  
22:50 ��� �籸Ŭ��: ���� �籸 ��ȣȸ(���� ��û ����), ȸ�� ���� 
23:00 ����(4��(2��), ��(20��)) 
00:20 ����(3��(3��), 3��(8��)) ������ �� �� ====> 2012.04.11(��)   
04:00 ����(�����): �⺻ �ڼ� ����(�ε巴�� �б�) 
08:00 ����  
08:50 ��ȭ 
09:00 ����(��ȭ): �ſ� �ò����� 
15:10 ��� 
15:20 �߽�(���) 
17:00 �¸�(�뱸, �̻�, 160cm) 
17:00 ���� 
17:30 19�� ��ȸ�ǿ� ���� ��ǥ(������ 2�� ����ȫ �ĺ�(�������մ�) �缱, �����Ŵ�(������ǥ)) 
17:50 �Ͱ� 
20:30 �ѻ�� ��ȸ������� ��ȭ ��(�����񾾿��� ��ȭ��: 4.13 ~ 5.7 �ε� ���� ���ٰ� ��) 
23:00 ��ħ 
03:00 ��� ====> 2012.04.12(��) 
03:10 TV��û 
05:00 �����: 19�� ��ȸ�ǿ� ���� �������� �¸�(����Ȯ��(152��)) 
05:50 ��� 
==============================================================================================================

������������������� 2012.04.12(��) �۾� ����������������
---> 05:50 ~ 21:30 --> �Ｚī�� ��߱�, ����, 823���� ���� ��� ����(���� ���(8������)): ī�� ��� ���� 

- 2012.02.13 ���� ���� ����  
/AuthServiceResourceImpl.java 
/Oauth2BizImpl.java, /Oauth2VerifyBizImpl.java, /Oauth2VerifyBizImpl.java, /Oauth2SaffronBizImpl.java 
==============================================================================================================

- PVT Defect ó�� 
00. Defect: PRJ1200004253  ó��(�Ϸ�)  
TestSuite - AuthService-createAccessToken  
TestCase - Setup 
creatUser�� ���� user�� ���� �����ؼ� createUserAuthToken�� userAuthToken�� �޾Ƽ�  
createAuthorizationCode�� ���� �� ���  
1ȸ ����� �����ڵ� AUT_9001�� ���� �ǰ� 2ȸ ���� ��� ���������� ���� �ǰ� �ֽ��ϴ� 
Ȯ���� �ʿ��� �κ��̿��� Reopen ó�� ��Ű�ڽ��ϴ�. 
------------------------------------------------------------------------------------------------------------------------------ 

- username ���� 
/v2/probile/user/user/ --> createUser()���� #TestSuite#appId�� username ���� 
http://eu.auth.samsungosp.com/auth/oauth2/authenticate --> createUserAuthToken()���� username�� 
username: ${createUser#Request#//UserCreateVO[1]/userIdentificationVO[1]/loginID[1]}���� ��� 

username: ${createUser#Request#//UserCreateVO[1]/userIdentificationVO[1]/loginID[1]}  ==> ${#TestSuite#username} 
<userTypeCode>${#TestSuite#userTypeCode}</userTypeCode>  
==============================================================================================================

- PVT Defect ó�� 
01. Defect: PRJ1200004779 ==> ���� �Ϸ�(API DOC ����) 
1. [���� OSP_Auth] AuthService_createUserAuthToken API�� doc Spec �κ��� 5���� �Ķ���Ϳ� ���Ͽ� Description��  
�������� �ʽ��ϴ� 
1) check_mandatory 
2) country 
3) appId 
4) langCode 
5) check_email_validation 
---------------------------------------------------------------------------------------------------------- 

02. Defect: PRJ1200004781 ==> Ȯ�� �Ϸ� 
1. [���� OSP_Auth] AuthService_createUserAuthToken API�� ���Ͽ� �ʼ� �Ķ���͸� ������Ų �� ������ �����ڵ�  
CMM_1007�� ���� �ǰ� �ֽ��ϴ� 
TestSuite : AuthService_createUserAuthToken 
TestCase : createUserAuthToken_400_01 (ù��° Step�� �ش�) 

2. ����: doc Spec�� ������ �Ķ������ invalid���� ���Ͽ� �´� �����ڵ尡 �����Ƿ� �׿� �ش� �ϴ� �����ڵ尡  
���� �Ǿ�� �մϴ�  
1) grant_type - AUT_1008  ==> Ȯ��(grant_type �ʼ���) 
2) client_id - AUT_1001 ==> Ȯ��(client_id �ʼ���) 
3) client_secret - AUT_1002 ==> Ȯ��(client_secret �ʼ���) 
4) username - AUT_1003 ==> Ȯ��(username �ʼ���) 
5) password - AUT_1004 ==> Ȯ��(password �ʼ���) 

OSP 2.5 ǥ�� �ؼ�(����) 
�� ��û�� �������� Rest ��û�� �ƴϹǷ� iOSP �����ӿ�ũ���� �ش� ������ �߻���Ű�� ���Դϴ�. 
���� 2.0 �ý����� Jax-rs ����̾��� ������ �����ӿ�ũ ���� �ƴ� �ش� ������Ʈ���� ������ �߻���ų �� �־����� 
iOSP ������ �������� API ��û�� �ƴ� ��� CMM ������ �߻���Ű�� ���� �����Դϴ�. 
---------------------------------------------------------------------------------------------------------- 

03. Defect: PRJ1200004785 ==> ���� �Ϸ� 
[���� OSP_Auth] AuthService_createUserAuthToken API�� ���Ͽ� �Ķ���Ϳ� �߸��Ȱ�(aaaaaaaaaa) �Է� �� ������  
�߸��� �����ڵ� AUT_9001�� ���� �ǰ� �ֽ��ϴ� 
TestSuite : AuthService_createUserAuthToken 
TestCase : createUserAuthToken_400_02 (ù��° Step�� �ش�) 

doc Spec�� ������ �Ķ������ invalid���� ���Ͽ� �´� �����ڵ尡 �����Ƿ� �׿� �ش� �ϴ� �����ڵ尡 ���� �Ǿ�� �մϴ� 
1) client_id : AUT_1701 ==> ���� 
2) client_secret : AUT_1702 ==> ����   
3) username : AUT_1804 ==> ����  
4) password : AUT_1805  ==> ����   
5) country_code : AUT_1037 ==> ���� 
6) mobile_country_code : AUT_1037 ==> ���� 
7) tnc_accepted : AUT_1034  ==> ���� 
8) tnc_type_code : AUT_1035 ==> ���� 
9) privacy_accepted : AUT_1036 ==> ���� 
---------------------------------------------------------------------------------------------------------- 

04. Defect: PRJ1200004789 ==> ���� �Ϸ� 
[���� OSP_Auth] AuthService_createUserAuthToken API�� ���Ͽ� �Ķ���Ͱ��� Spec�� ��õ� length�� ��� �� �Է� ��  
������ �����ڵ� AUT_9001�� ���� �ǰ� �ֽ��ϴ� 
[���� OSP_Auth] AuthService_createUserAuthToken API�� ���Ͽ� �Ķ���Ϳ� �߸��Ȱ�(aaaaaaaaaa) �Է� �� ������ �߸���  
�����ڵ� AUT_9001�� ���� �ǰ� �ֽ��ϴ� 
TestSuite : AuthService_createUserAuthToken 
TestCase : createUserAuthToken_400_02 (ù��° Step�� �ش�) 

doc Spec�� ������ �Ķ������ invalid���� ���Ͽ� �´� �����ڵ尡 �����Ƿ� �׿� �ش� �ϴ� �����ڵ尡 ���� �ǵ��� ó��  
�߽��ϴ�. 
1) client_id : AUT_1010  ==> ���� 
2) client_id : AUT_1010 ==> ���� 
3) client_secret : AUT_1011 ==> ����  
4) client_secret : AUT_1011==> ����  
5) username : AUT_1012 ==> ����  
6) username : AUT_1012 ==> ����  
7) password : AUT_1013  ==> ����  
8) password : AUT_1013 ==> ����  
9) scope : AUT_1019 ==> ����  
10) physical_address_text : AUT_1020 ==> ���� 
11) service_type : AUT_1021 ==> ���� 
12) country_code : AUT_1028 ==> ���� 
13) mobile_country_code : AUT_ 1029 ==> ���� 
14) tnc_accepted : AUT_1030 ==> ���� 
15) tnc_type_code : AUT_1031 ==> ���� 
16) privacy_accepted : AUT_1032 ==> ���� 
---------------------------------------------------------------------------------------------------------- 

05. Defect: PRJ1200004790 ==> Ȯ�� �Ϸ� 
[���� OSP_Auth] AuthService_createUserAuthToken API�� ���Ͽ� �ɼ� �Ķ���͸� ������Ų �� ������ �����ڵ尡 �ƴ� �����ڵ�  
AUT_9001�� ���� �ǰ� �ֽ��ϴ� 
TestSuite : AuthService_createUserAuthToken 
TestCase : createUserAuthToken_200_05 
TestStep : createUserAuthToken_country_code_02 

�ش���� ������ ���� ������ �����˴ϴ�. 
�ش���� ȸ�� ��� ������ ��ȸ�� �ϸ鼭 ��ȸ ����� ��� ������ ���� �Դϴ�. 
AUT_5006: ��ȸ ���� ����(����) 

-- 1. ȸ�� ��� ���� ��ȸ  @@@@@@@@@@@@@@@@@@ 
 SELECT 
    /* [userDAO.xml].[com.samsungosp.profile.user.user.getUserTNCAcceptance].[39] ��������(20110426) */ 
    T2.TNC_VER_TXT 
    , T2.TNC_ACPT_FG 
    , TO_CHAR(T2.TNC_ACPT_DT,'YYYYMMDD') TNC_ACPT_DT 
    , T2.TNC_ACPT_LANG_CD 
    , T2.CRT_APSVC_ID 
FROM 
    TCSO_PRTY T1 /* ȸ������ TB */ 
    , TCSO_TNC_ACPTNC T2 
    , TSCO_CNTY T3 /* �������� TB */ 
WHERE 
  T2.USR_ID = LOWER('01gg5uki5o') /* USR_ID */ 
  AND T2.MBL_CNTY_CD = '234'  /* �����ڵ�(450: KOR) */ 
  AND T2.TNC_VER_TXT = '1.0'  /* ��� ���� */ 
  AND T2.DEL_YN_FG = 'N' 
  AND T1.USR_ID = T2.USR_ID 
  AND T1.USR_STS_CD  <>  '9' 
  AND T1.CNTY_CD = T3.CNTY_CD 
  AND T3.RGN_CD = 'US' 
  AND ROWNUM = 1 
--; 
---------------------------------------------------------------------------------------------------------- 

06. Defect: PRJ1200004795 ==> Ȯ�� �Ϸ� 
[���� OSP_Auth] AuthService_createUserAuthToken API�� ���Ͽ� �ɼ� �Ķ���Ϳ� ���Ͽ� ���� �Է� �� ������ �����ڵ� AUT_9001��  
���� �ǰ� �ֽ��ϴ� 

TestSuite : AuthService_createUserAuthToken 
TestCase : createUserAuthToken_200_05 (ù��° Step�� �ش�) 
TestStep :  
1) createUserAuthToken_country_code_01 
2) createUserAuthToken_mobile_country_code_01 

Request Parameter] 
1) country_code : USA 
2) mobile_country_code : 310 

�ش���� ������ ���� ������ �����˴ϴ�. 
�ش���� ȸ�� ��� ������ ��ȸ�� �ϸ鼭 ��ȸ ����� ��� ������ ���� �Դϴ�. 
AUT_5006: ��ȸ ���� ����(����) 

-- 1. ȸ�� ��� ���� ��ȸ  @@@@@@@@@@@@@@@@@@ 
 SELECT 
    /* [userDAO.xml].[com.samsungosp.profile.user.user.getUserTNCAcceptance].[39] ��������(20110426) */ 
    T2.TNC_VER_TXT 
    , T2.TNC_ACPT_FG 
    , TO_CHAR(T2.TNC_ACPT_DT,'YYYYMMDD') TNC_ACPT_DT 
    , T2.TNC_ACPT_LANG_CD 
    , T2.CRT_APSVC_ID 
FROM 
    TCSO_PRTY T1 /* ȸ������ TB */ 
    , TCSO_TNC_ACPTNC T2 
    , TSCO_CNTY T3 /* �������� TB */ 
WHERE 
  T2.USR_ID = LOWER('01gg5uki5o') /* USR_ID */ 
  AND T2.MBL_CNTY_CD = '310'  /* �����ڵ�(450: KOR) */ 
  AND T2.TNC_VER_TXT = '1.0'  /* ��� ���� */ 
  AND T2.DEL_YN_FG = 'N' 
  AND T1.USR_ID = T2.USR_ID 
  AND T1.USR_STS_CD  <>  '9' 
  AND T1.CNTY_CD = T3.CNTY_CD 
  AND T3.RGN_CD = 'US' 
  AND ROWNUM = 1 
--;  
==============================================================================================================

07. Defect: PRJ1200004797 ==> Ȯ�� �Ϸ� 
[���� OSP_Auth] AuthService_createAuthorizationCode API�� ���Ͽ� �ʼ� �Ķ���͸� ������Ų �� ������ �����ڵ� CMM_1007��  
���� �ǰ� �ֽ��ϴ� 
TestSuite : AuthService_createAuthorizationCode 
TestCase : createAuthorizationCode_400_01 (ù��° Step�� �ش�) 

doc Spec�� ������ �Ķ������ invalid���� ���Ͽ� �´� �����ڵ尡 �����Ƿ� �׿� �ش� �ϴ� �����ڵ尡 ���� �Ǿ�� �մϴ� 
1) response_type : AUT_1009 
2) userauth_token : AUT_1005 
3) client_id : AUT_1001 

1) response_type : AUT_1009  ==> Ȯ��(response_type �ʼ���) 
2) userauth_token : AUT_1005 ==>  Ȯ��(userauth_token  �ʼ���)  
3) client_id : AUT_1001  ==> Ȯ��(client_id �ʼ���) 
---------------------------------------------------------------------------------------------------------- 

08. Defect: PRJ1200004798 ==> ���� �Ϸ� 
[���� OSP_Auth] AuthService_createAuthorizationCode API�� ���Ͽ� �Ķ���Ͱ��� Spec�� ��õ� length�� ��� �� �Է� �� ������  
�����ڵ� AUT_9001�� ���� �ǰ� �ֽ��ϴ� 
TestSuite : AuthService_createAuthorizationCode 
TestCase : createAuthorizationCode_400_02 (ù��° Step�� �ش�) 

doc Spec�� ������ �Ķ������ invalid���� ���Ͽ� �´� �����ڵ尡 �����Ƿ� �׿� �ش� �ϴ� �����ڵ尡 ���� �Ǿ�� �մϴ� 
1) userauth_token : AUT_1014 ==> ���� 
2) userauth_token : AUT_1014 ==> ���� 
3) client_id_AUT : AUT_1010 ==> ���� 
4) client_id_AUT : AUT_1010 ==> ����(aaaaabbbbba --> aaaaabbbbba12345�� ������ ��: �ִ� 14�ڸ�) 
5) scope_AUT : AUT_1019 ==> ���� 
6) state_AUT : AUT_1025  ==> ���� 
7) physical_address : AUT_1020 ==> ���� 
8) service_type : AUT_1021 ==> ���� 
9) email_id : AUT_1043 ==> ���� 
10) email_id : AUT_1043  ==> ���� 
---------------------------------------------------------------------------------------------------------- 

09. Defect: PRJ1200004801 ==> ���� �Ϸ� 
[���� OSP_Auth] AuthService_createAuthorizationCode API�� ���Ͽ� �Ķ���Ϳ� �߸��Ȱ� �Է� �� ������ �߸��� �����ڵ� AUT_9001��  
���� �ǰ� �ֽ��ϴ� 
TestSuite : AuthService_createAuthorizationCode 
TestCase : createAuthorizationCode_400_02 (ù��° Step�� �ش�) 

doc Spec�� ������ �Ķ������ invalid���� ���Ͽ� �´� �����ڵ尡 �����Ƿ� �׿� �ش� �ϴ� �����ڵ尡 ���� �Ǿ�� �մϴ� 
1) userauth_token : AUT_1302 ==> ���� 
2) client_id : AUT_1301  ==> ����(userauth_token ��Ȯ�� ������ ��) 
3) service_type : AUT_1023  ==>  ���� 
4) email_id : AUT_1044  ==> ���� 
5) redirect_uri : AUT_1022  ==> ���� 
==============================================================================================================

10. Defect: PRJ1200004803 ==> ���� �Ϸ� 
[���� OSP_Auth] AuthService_createAccessToken API�� ���Ͽ� �ʼ� �Ķ���͸� ������Ų �� ������ �����ڵ� CMM_1007�� ����  
�ǰ� �ֽ��ϴ� 
TestSuite : AuthService_createAccessToken 
TestCase : createAccessToken_400_01 (ù��° Step�� �ش�) 

doc Spec�� ������ �Ķ������ invalid���� ���Ͽ� �´� �����ڵ尡 �����Ƿ� �׿� �ش� �ϴ� �����ڵ尡 ���� �Ǿ�� �մϴ� 
1) grant_type : AUT_1008  ==> Ȯ��(grant_type�ʼ���) 
2) client_id : AUT_1001 ==> Ȯ��(client_id  �ʼ���) 
3) client_secret : AUT_1002 ==> Ȯ��(response_type �ʼ���) 
4) code : AUT_1006 ==> Ȯ��(code �ʼ���) 
5) refresh_token : AUT_1007 ==> Ȯ��(code �ʼ���) 
---------------------------------------------------------------------------------------------------------- 

11. Defect: PRJ1200004804 ==> ���� �Ϸ� 
[���� OSP_Auth] AuthService_createAccessToken API�� ���Ͽ� �Ķ���Ͱ��� Spec�� ��õ� length�� ��� �� �Է� �� ������  
�����ڵ� AUT_9001�� ���� �ǰ� �ֽ��ϴ� 
TestSuite : AuthService_createAccessToken 
TestCase : createAccessToken_400_02 (ù��° Step�� �ش�) 

doc Spec�� ������ �Ķ������ invalid���� ���Ͽ� �´� �����ڵ尡 �����Ƿ� �׿� �ش� �ϴ� �����ڵ尡 ���� �Ǿ�� �մϴ� 
1) client_id : AUT_1010 ==> ���� (MAX:14) 
2) client_id : AUT_1010 ==> ����(MIN:10) 
3) client : AUT_1011 ==> ���� 
4) client : AUT_1011 ==> ���� 
5) code : AUT_1015 ==> ���� 
6) code : AUT_1015 ==> ���� 
7) refresh_token : AUT_1016 ==> ���� 
8) refresh_token : AUT_1016 ==> ���� 
9) scope : AUT_1019 ==> ���� 
10) physical_address_tex : AUT_1020 ==> ���� 
11) service_type : AUT_1021 ==> ���� 
---------------------------------------------------------------------------------------------------------- 

12. Defect: PRJ1200004806 ==> ���� �Ϸ� 
[���� OSP_Auth] AuthService_createAccessToken API�� ���Ͽ� �Ķ���Ϳ� �߸��Ȱ� �Է� �� ������ �߸��� �����ڵ� AUT_9001��  
���� �ǰ� �ֽ��ϴ� 
TestSuite : AuthService_createAccessToken 
TestCase : createAccessToken_400_02 (ù��° Step�� �ش�) 

doc Spec�� ������ �Ķ������ invalid���� ���Ͽ� �´� �����ڵ尡 �����Ƿ� �׿� �ش� �ϴ� �����ڵ尡 ���� �Ǿ�� �մϴ� 
1) client_id : AUT_1806 ==> ����(��Ȯ�� code���� �޾� �;���) 
2) client_secret : AUT_1702 ==> ����(��Ȯ�� code���� �޾� �;���)  
3) code : AUT_1802 ==> ����(��Ȯ�� code���� �޾� �;���)  
4) refresh_token : AUT_1803 ==> ����(��Ȯ�� code���� �޾� �;���)  
5) service_type : AUT_1023 ==> ����(��Ȯ�� code���� �޾� �;���)  
---------------------------------------------------------------------------------------------------------- 

13. Defect: PRJ1200004807 ==> ���� �Ϸ�  
1. ���� OSP_Auth] AuthService_revoke API�� ���Ͽ� �ʼ��� userauth_token�� ��������10byte�� �Ѿ 11byte�Է� �� ������ �߸���  
�����ڵ� AUT_9001�� ���� �ǰ� �ֽ��ϴ�  
2. ����: AUTH.AUT_1014.400=The length of a userauth_token parameter is invalid.    
TestSuite : AuthService_deauthenticate 
TestCase : deauthenticate_400_01 
TestStep : deauthenticate_userauth_token_AUT_1014_02 

3. ó�� 
/Oauth2LibConstants.java ���Ͽ��� 
if(!ValidatorUtil.isNullorEmpty(client_id)) {   //client_id ���� �����ϸ�  
   if(!ValidatorUtil.ValidateLength_2(client_id, Oauth2LibConstants.MIN_LENGTH_CLIENT_ID_2, Oauth2LibConstants.MAX_LENGTH_CLIENT_ID_2)) { 
   throw new OSPException(Constants.BAD_REQUEST, "AUT_1010", 
MessageUtil.getMessage("AUTH.AUT_1010.400"), this.getClass().getName());  //AUTH.AUT_1010.400 
   }  
} 

if(!ValidatorUtil.ValidatePattern(tnc_accepted, Oauth2LibConstants.PATTERN_TNC_ACCEPTED)) {  //Parameter ���� ���� �̸� 
   throw new OSPException(Constants.BAD_REQUEST, "AUT_1034", 
MessageUtil.getMessage("AUTH.AUT_1034.400"), this.getClass().getName());  //AUTH.AUT_1034.400 
} 

/Oauth2LibConstants.java ���Ͽ��� 
public static final int MIN_LENGTH_USERAUTH_TOKEN_2  = 10;   //�߰� 

1) userauth_token : AUT_1014 ==> ���� 
==============================================================================================================

# IOSP DEV Int. #(IOSP 1.0 ȣ�� ==> TEST) 
210.118.57.17   oaf.osp.com 
==============================================================================================================

������������������� 2012.04.13(��) �۾� ����������������
---> 06:50 ~ 23:00 

- IOSP(/oauth2) Prj
- PVT Defect ó��  
01. Defect: PRJ1200004809 ==> ���� �Ϸ� 
[���� OSP_Auth] AuthService_deauthenticate API�� ���Ͽ� �ʼ��� userauth_token�� �߸��Ȱ�(1234567890) �Է� ��  
������ �߸��� �����ڵ� AUT_9001�� ���� �ǰ� �ֽ��ϴ� 
TestSuite : AuthService_revoke 
TestCase : deauthenticate_400_01 
TestStep : deauthenticate_userauth_token_AUT_1810_03 

1) userauth_token : AUT_1810 ==> ���� 
==============================================================================================================

02. Defect: PRJ1200004811 ==> ���� �Ϸ� 
[���� OSP_Auth] AuthService_revoke API�� ���Ͽ� �ʼ��� access_token�� ��������10byte�� �Ѿ 11byte�Է� ��  
������ �߸��� �����ڵ� AUT_5001�� ���� �ǰ� �ֽ��ϴ� 
TestSuite : AuthService_revoke 
TestCase : revoke_400_01 
TestStep : revoke_access_token_AUT_1027_02 

1) access_token : AUT_1027 ==> ����(AUT_1027  ����) 
---------------------------------------------------------------------------------------------------------- 

03. Defect: PRJ1200004812 ==> ���� �Ϸ� 
[���� OSP_Auth] AuthService_revoke API�� ���Ͽ� �ʼ��� access_token�� �߸��Ȱ�(aaaaabbbbb) �Է� ��  
������ �߸��� �����ڵ� AUT_5001�� ���� �ǰ� �ֽ��ϴ� 
TestSuite : AuthService_revoke 
TestCase : revoke_400_01 
TestStep : revoke_access_token_AUT_1811_03 
Test ���� : invalid data test 

1) access_token : AUT_1811 ==> ����(AUT_1811 ����) 
==============================================================================================================

04. Defect: PRJ1200004815 ==> ���� �Ϸ� 
[���� OSP_Auth] AuthService_isValid API�� ���Ͽ� �ʼ���(username,password)�� empty�� �Է� �� ���� ���  
�����ڵ尡 �ٸ��� ���� �ǰ� �ֽ��ϴ� 
TestSuite : AuthService_isValid 
TestCase : 1) isValid_400_01 
2) isValid_400_02 
TestStep : 1) isValid_username_AUT_1003_01 
2) isValid_password_AUT_1004_01 

1) username = AUT_1003 ==> Ȯ��(username  �ʼ���) 
2) password = AUT_1003 ==> Ȯ��(password  �ʼ���) 
---------------------------------------------------------------------------------------------------------- 

05. Defect: PRJ1200004817 ==> ���� �Ϸ� 
[���� OSP_Auth] AuthService_isValid API�� ���Ͽ� �ʼ��� username��  �߸��Ȱ�(aabbccddefgh) �Է� �� ������  
�����ڵ� AUT_5002�� ���� �ǰ� �ֽ��ϴ� 
TestSuite : AuthService_isValid 
TestCase : isValid_400_01 
TestStep : isValid_username_AUT_1804_02 

1) access_token : AUT_1804 ==> ���� 
AUT_1804.400=There is no login ID. 
==============================================================================================================

23:00 ���  
23:50 ��� �籸Ŭ��: ���� �籸 ��ȣȸ(���� ��û ����), ȸ�� ���� 
00:10 �ý��� ����  ====> 2012.04.14(��) 
01:20 �籸 ����(3��(4��), 3��(7��): ���̽�ũ�� ��� ���� 
04:00 �籸 ����(3��(4��), �� ����(15��): ��)  
07:00 ���� 
07:50 �Ͱ� 
08:10 ���� 
19:00 ��� 
01:00 ��ħ 
==============================================================================================================

������������������� 2012.04.15(��) �۾� ����������������
---> 07:00 ~ 18:00 

�������౸
07:20 ��� 
08:20 �ű��ʵ��б� 
08:30 �����౸(2:1 ��) 
09:30 �����౸(4:2 ��) 
11:00 ���� 
11:30 �߽�(���漼��: ������): ġ�������� ��(����), ������ ü�شٰ� �� ����(���� ȣ����) 
12:40 ���� 
13:00 ����(BBQ ġŲ: �������, �·������� ��): �������� �뿩�� ������ �̾߱� �� 
14:30 ���� 
15:00 ��õ �߾ӽ���(�ٳ��� ����ũ�� ����(30ml): 18,800��) 
16:20 �Ͱ� 
16:30 ���� 
19:45 ��� 
01:00 ��ħ 
==============================================================================================================

������������������� 2012.04.16(��) �۾� ����������������
---> 07:05 ~ 22:00 --> ����OSP PVT 3�� ���� 

- IOSP(/oauth2) Prj
- JUnit ����  
01. testAuthServiceTest_authenticate_Test_AUT_1032 -----> ����(����) 
03. testAuthServiceTest_token_Test_AUT_1702 ==> Biz�� üũ 
04. testAuthServiceTest_deauthenticate_Test_Test_AUT_1810 ==> Biz�� üũ  
05. testAuthServiceTest_revoke_Test_AUT_1811 ==> Biz�� üũ 
06. testAuthServiceTest_isvalid_Test_AUT_1804 ==> Biz�� üũ ---> ����(LDAP ������ ������): DEV, STG ���� ���� 
06. testAuthServiceTest_isvalid_Test_AUT_1805 ==> Biz�� üũ   
==============================================================================================================

- Release Note �ۼ� 
1. PVT ó����Ȳ ���� ���� 
1) ������ auth2.5(spring 3.0)0���� Interceptor(/OverallInterceptor.java)�� �������� �ʾƼ� �������� �ڵ� ó���� 
2) d:\OSP2.5\workspace\IOSP\Co-work\6.����\API\account\auth-PVT ó����Ȳ.xlsx 
==============================================================================================================

- Stage ���� ���(���� & ���÷���)  @@@@@@@@@@@ 
1. P4���� ���� ���� �ø��� 
2.  //OSP/IOSP/Workspace/Account/Auth/branches/auth-R1.x.x/ ���� 
3. Integrate(��â) 
1) //OSP/IOSP/Workspace/Account/Auth/trunk ����(���콺 �� Ŭ��) > Integrate >  
//OSP/IOSP/Workspace/Account/Auth/branches/auth-R1.x.x/... 
 �پ�ֱ�(���� �ϳ� �� ���: //OSP/IOSP/Workspace/Account/Auth/branches/auth-R1.x.x/auth-svc/src 
 /main/java/com/samsungosp/auth/oauth2/service/AuthServiceResourceImpl.java) 
2) Add files to pending chanagelist: NEW 
3) Advanced Options: 3��, 7��(������ ��): üũ ===> Integrate(Ŭ��) 
4. //OSP/IOSP/Workspace/Account/Auth/trunk ����(Ŭ��) > Pending(Ȯ��): ��¥�� 
 1) ? ==> Resolve > Atuo Source 
 2) X �Ǵ� ���ʿ� ���� ==> Revert 
 3) Submit(Ŭ��): PVT 3�� ���� ���� 
 4) Integrate ���� ���� Ȯ�� 
 //OSP/IOSP/Workspace/Account/Auth/branches/auth-R1.x.x/auth-lib/src/main/java/com/samsungosp/auth/oauth2/biz/Oauth2BizImpl.java 
5. ��彼 ���� & ���÷���  
------------------------------------------------------------------------------------------------------------ 

- 3�� PVT�� ���� release ���� ���� 
1. /auth-svc/version.properties���Ͽ���  
==> release.version=0.9.9���� release.version=0.9.10�� �����ϰ� integration�� �� 
2. Label ���� ==>  
//OSP/IOSP/Workspace/Account/Auth/branches/auth-R1.x.x����(���콺 �� Ŭ��)  > Label��: iosp-auth-R0.9.20 
3. STG ���� 
4. ���� Ȯ�� 
http://ver.samsungosp.net/VersionTracking/auth/getospversion/jarName=iospversion.jar 
<?xml version="1.0" encoding="UTF-8" standalone="true"?> 
-<buildVersion> 
<buildDate>2012.04.16 16:42:52</buildDate><componentName>auth</componentName><libVersion/> 
<revision>299055</revision><service>IOP</service> 
<svcVersion>0.9.10-32</svcVersion> 
</buildVersion> 
==============================================================================================================

- JTest �۾� 
1. license ������ �۾� �� �� ==> ���� IP����: 10.90.62.197 
1) Parasoft > Preferences(��â):  
��. License: 10.90.62.197 
��. Team Server > Host name: 10.90.62.197, Port number: 18888(Apply, OK) 
2. : //OSP/IOSP/Co-work/4. �����м�/2012-04-13/auth-2012-04-13.pdf 
==============================================================================================================

������������������� 2012.04.17(ȭ) �۾� ����������������
---> 06:45 ~ 22:00 --> ���� ī�� �ݳ�(�������� ��ü) 

- IOSP(/oauth2) Prj
- JUnit ����(Biz�� �۾�)(43%) 
1. /Oauth2BizImplTest.java 
==============================================================================================================

- PVT Defect ó��(Reopened) 
01. Defect: PRJ1200004253 ==> ���� � �� 
�ＺSDS ���ΰ����� ������ ���ӴԲ� ������ ��� Auth ���α׷� ������ �ƴ϶� SoapUI ��ü ������ �Ǵܵȴٴ� �亯�� �Խ��ϴ�.  
÷���� �����ʿ��� �ۼ��� ǥ��  �ۼ��� soapUI TC(IOSP_Auth.xml)�� ����ϸ� �Ʒ��� ���� ������ �߻����� �ʽ��ϴ�. 
�ۼ��� soapUI TC(IOSP_OSPv2_Auth_20120417_Infiniq.xml)���� �Ƹ��� userauth_token�� ������ ���� ���ؼ� ���� 
���� ���� �� ���������� �ϳ��� �ϸ� ���� ����ǹǷ� SoapUI ��ü ������ �Ǵܵ˴ϴ�. 
�̰����� �ٽ� Reopen�� �ÿ��� �ＺSDS ���ΰ����� ������(������(MyungjongYoon@@ospproject.ad) ���ӴԲ� ���� ���Ǹ� �϶�� �Ͻʴϴ�.  

02. Defect: PRJ1200004781 ==> �ʼ��� 
03. Defect: PRJ1200004797 ==> �ʼ��� 
04. Defect: PRJ1200004803 ==> �ʼ��� 
05. Defect: PRJ1200004815 ==> �ʼ��� 
==============================================================================================================

������������������� 2012.04.18(��) �۾� ����������������
---> 07:05 ~ 21:30 

- IOSP(/oauth2) Prj
- JUnit ����(Biz�� �۾�)(64% ==> 37%) 
1. /Oauth2IssueBizImpl.java 
2. /Oauth2VerifyBizImpl.java 
==============================================================================================================

- PVT Defect ó�� 
01. Defect: PRJ1200005353 ==> ���� � �� 
[���� OSP_Auth] AuthService_createUserAuthToken API�� ���Ͽ� privacy_accepted �Ķ���Ϳ� N�� �Է� �Ͽ�  
���� ��� �����ڵ尡 �ƴ� �����ڵ尡 ���� �ǰ� �ֽ��ϴ�. 
TestSuite : AuthService_createUserAuthToken 
TestCase : createUserAuthToken_400_13 
TestStep : createUserAuthToken_privacy_accepted_AUT_1039_03  
AUT_1039 - Did not agree the privacy conditions.   
privacy_accepted�� N���� ���� ���� ��ȣ ������ �������� �ʾ����Ƿ� ���� ���� �����ڵ尡 ���� �Ǿ�� �մϴ�.  
joinTNCAcceptance()] ==> [isAcceptedPrivacy]true[privacyAccepted]N 

- ��û�� userID(01gg5uki5o)�� User TNC Acceptance ��ȸ(��� ��ȸ) DB��ȸ�� �Ͽ� �������� ���� ���θ� Ȯ���ϰ� 
privacyAccepted �� null�� �ƴϸ鼭 Y�� �ƴ� ��츸 AUT_1039 ������ ���� 
- �ش���� �������� ���ǰ�  true �̱� ������ ���� ��ȸ�� �� 
- AUT_1039 ���� �߻� ����: �������� ���ǵ� ���µ�, privacyAccepted �� null�� �ƴϸ鼭 Y�� �ƴ� ��� 

02. Defect: PRJ1200005354 ==> ���� � �� 
TestSuite : AuthService_createUserAuthToken 
TestCase : createUserAuthToken_400_14  
AUT_1040  Did not agree the latest terms and privacy conditions.  
- ��û�� userID(01gg5uki5o)�� User TNC Acceptance ��ȸ(��� ��ȸ) DB��ȸ�� �Ͽ� �������� ���� ���θ� Ȯ���ϰ� 
privacyAccepted �� null�� �ƴϸ鼭 Y�� �ƴ� ��츸 AUT_1039 ������ ���� 
- �ش���� �ֱ� ��� ���ǰ�  true �̱� ������ ���� ��ȸ�� �� 
- AUT_1040 ���� �߻� ����:  �ֱ� ��� ���ǵ� ���µ� strTncAccepted�� Y�� �ƴϰ�, �������� ���ǵ� ���µ�,  
privacyAccepted �� null�� �ƴϸ鼭 Y�� �ƴ� ��� 

03. Defect: PRJ1200005358 ==> ���� 
TestSuite : AuthService_createUserAuthToken 
TestCase : createUserAuthToken_400_15 
TestStep :  
1) createUserAuthToken_check_mandatory_AUT_1049_01 ==> ���� 
2) createUserAuthToken_check_mandatory_AUT_1050_02 ==> ���� 
3) createUserAuthToken_check_mandatory_AUT_1813_03 ==> ���� 
check_mandatory�� optional �̹Ƿ� NULL, Y, N�� �ü� �ְ�  NULL�̹Ƿ� ���������� auth token�� ���� �˴ϴ�. 
AUTH.AUT_1813.400=Mandatory Field Setting Info. is not exist. 

04. Defect: PRJ1200005360 ==> ���� 
TestSuite : AuthService_createUserAuthToken 
TestCase : createUserAuthToken_400_16 
TestStep : The length of a country parameter is invalid. 
1) createUserAuthToken_country_AUT_1046_01 ==> ���� 
2) createUserAuthToken_country_AUT_1046_02 ==>����  
3) createUserAuthToken_country_AUT_1813_03 ==> ���� 
- �����ڵ�� �׳� �Է��Ѵٰ� ��ȸ�Ǵ� ���� �ƴմϴ�. 
- ��û�� userID(01gg5uki5o)�� Country Code DB��ȸ�� �Ͽ� �����ڵ�(450: KOR)�� ��ȸ�Ͽ� 
�ٽ� User TNC Acceptance ��ȸ(��� ��ȸ) �� �մϴ�. �׷��Ƿ� ���� �Դϴ�. 
   
-- 1. ȸ�� ��� ���� ��ȸ  @@@@@@@@@@@@@@@@@@ 
 SELECT 
    /* [userDAO.xml].[com.samsungosp.profile.user.user.getUserTNCAcceptance].[39] ��������(20110426) */ 
    T2.TNC_VER_TXT 
    , T2.TNC_ACPT_FG 
    , TO_CHAR(T2.TNC_ACPT_DT,'YYYYMMDD') TNC_ACPT_DT 
    , T2.TNC_ACPT_LANG_CD 
    , T2.CRT_APSVC_ID 
FROM 
    TCSO_PRTY T1 /* ȸ������ TB */ 
    , TCSO_TNC_ACPTNC T2 
    , TSCO_CNTY T3 /* �������� TB */ 
WHERE 
  T2.USR_ID = LOWER('01gg5uki5o') /* USR_ID */ 
  AND T2.MBL_CNTY_CD = '234'  /* �����ڵ�(450: KOR) */ 
  AND T2.TNC_VER_TXT = '1.0'  /* ��� ���� */ 
  AND T2.DEL_YN_FG = 'N' 
  AND T1.USR_ID = T2.USR_ID 
  AND T1.USR_STS_CD  <>  '9' 
  AND T1.CNTY_CD = T3.CNTY_CD 
  AND T3.RGN_CD = 'US' 
  AND ROWNUM = 1 
--; 

05. Defect: PRJ1200005363 ==> ����  
TestSuite : AuthService_createUserAuthToken 
TestCase : createUserAuthToken_400_18 
TestStep :  
1) createUserAuthToken_langCode_AUT_1048_01 ==> ���� 
2) createUserAuthToken_langCode_AUT_1048_02 ==> ���� 

06. Defect: PRJ1200005366 ==> ���� 
TestSuite : AuthService_createUserAuthToken 
TestCase : createUserAuthToken_400_19 
TestStep :  
1) createUserAuthToken_check_email_validation_AUT_1055 ==> ���� 
2) createUserAuthToken_check_email_validation_AUT_1056 ==> ���� 

07. Defect: PRJ1200005343 ==> ���� � �� 
TestSuite : AuthService_createAccessToken 
TestCase : createAccessToken_400_05 
TestStep : createAccessToken_refresh_token_AUT_1007_remove 
doc Spec�� ��õǾ� �ִ� refresh_token �� ���� remove�����ڵ�� AUT_1007�Դϴ�  
-OSP 2.5 ǥ�� �ؼ�(����) 
���ΰ����� ������ ���ӴԲ� ������ ��� CMM���� ���� ������ ���뿡�� ������ �����ڵ�� ������Ʈ�ܰ� ���� �� �̶� ������ ó���϶�� �մϴ�. 

08. Defect: PRJ1200005350 ==> ���� � �� 
TestSuite : AuthService_createUserAuthToken 
TestCase : createUserAuthToken_400_11 
TestStep : createUserAuthToken_tnc_accepted_AUT_1038_03 
AUT_1038 - Did not agree the latest terms and conditions  
- ��û�� userID(01gg5uki5o)�� ���ؼ��� DB ��ȸ�� �ϸ� 
�ֱ� ��� ���ǰ� �����Ͽ� ���� ��ȸ�� �Ǵ� �̴ϴ�.  

09. Defect: PRJ1200005362 ==> ���� 
TestSuite : AuthService_createUserAuthToken 
TestCase : createUserAuthToken_400_17 
TestStep :  
1) createUserAuthToken_appId_AUT_1047_01 ==> ���� 
2) createUserAuthToken_appId_AUT_1047_02 ==> ���� 
3) createUserAuthToken_appId_AUT_1813_03 ==> �߰� ����(2.0 ����� ���Ǹ� ��ó ���� ���� ����) 
check_mandatory: ����� �ʼ��׸�üũ  
3)�� ��쿡�� check_mandatory�� Y�̹Ƿ� country, appId, email, langCode �Ķ���� ��� ���� �־�� �ϹǷ� 
�����ڵ尡 ���� �Ǿ�� �մϴ�   

1. ����� Doc API ���� ������(2�� 13��) �������� �ٽ� ���� 
(http://stgdoc.iosp.com/docs/apispec/auth/AuthServiceResourceSC.xml) ==>  
[Parameters for user's mandatory check is composed of country, appId, email, langCode. ]<br>  ==> ��а� ���� 
2. ����: OSP 2.0�� mandatory check �κ��� ���� ������ ���Ŀ� ������ �κ����� ����� ���Ǹ� �ؼ� �۾��� ���� 
==============================================================================================================

������������������� 2012.04.19(��) �۾� ����������������
---> 06:55 ~ 21:30 

- IOSP(/oauth2) Prj
- JUnit ����(Biz�� �۾�)(64% ==> 39%) 
1. Dcheck_mandatory(����� �ʼ��׸�üũ) ����(�߰� ����) ==> (2.0 ����� ���Ǹ� ��ó ���� ���� ����) 
1) auth  �߰� ���߿� ���� db ��ȸ �Ұ��� ���̺� �߻� 
<!--// country+AppID ������ �����ʵ� ���ð� ��ȸ //-->    
SELECT * 
FROM   TFMB_APSVC_JN_FLD 
--;  

<!--// Ÿ��Ʋ(prefixName) �׸� ������ ��� ��ȸ  //-->    
SELECT * 
FROM   TFMB_PRFX_DFNTN 
--; 
==============================================================================================================

- printStackTrace ���� 
printStackTrace �޼ҵ�� ������ Ŭ���� �̸�, ���ܿ� ����� ���� String,  
������ �Ϸ���� ���� �޼ҵ���� ���(�޼ҵ� ȣ�� ���ÿ� �����ִ� ���  
�޼ҵ��)�� ǥ�� ���� ��ü(�Ϲ������� ��ɶ��� �Ǵ� �ܼ�)�� ����մϴ�.  
getMessage �޼ҵ�� ���ܿ� ����� ���� String�� ��ȯ�մϴ�.  

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

- log4j���� �α� ������ Debug�� ��� 
import org.apache.log4j.Logger;   
if (logger.isDebugEnabled()) {   //�α� ������ Debug�� ��� 
	logger.debug("view(Integer, Integer, Connection) - start"); 
} 
==============================================================================================================

������������������� 2012.04.20(��) �۾� ����������������
---> 07:05 ~ 22:00 --> ����OSP PV 4�� ���� 

- IOSP(/oauth2) Prj
- JUnit ����(Biz�� �۾�)(67% ==> 44%) 
==============================================================================================================

- JUnit ���� Ŀ���������� ����  ó��(/auth-lib/pom.xml) 
1 . Constants��  
/DeviceConstants.java, /ServiceConstants.java, /UserConstants.java ==> com.samsungosp.auth.user  
<instrumentation> 
       <excludes> 
<!-- // JUnit ���� Ŀ���������� ����  ó��(line coverage) //--> 
 <exclude>**/vo/*.class</exclude>   
<exclude>**/oauth2/common/util/*.class</exclude>  <!--// oauth2 Constants��[oauth2] //-->  
<exclude>**/oauth2/common/util/DUIDUtil.class</exclude>  <!--// oauth2 common util���� ����[oauth2] //-->   
<exclude>**/oauth2/common/util/RegionCodeUtils.class</exclude> 
<exclude>**/oauth2/Oauth2LibConstants.class</exclude> <!--// oauth2 Constants��[oauth2] //-->  
<exclude>**/user/*.class</exclude> <!--// user Constants�� //-->  <!--// user[oauth2] //-->  
       </excludes> 
</instrumentation>  
==============================================================================================================

- P4 ���� ��� ���� 
Librarian checkin /p4s_ver/OSP/IOSP/Workspace/Account/Auth/trunk/auth-lib/src/main/java/com/samsungos 
p/auth/user/util/UserValidatorUtil.java failed. 
write: /p4s_ver/OSP/IOSP/Workspace/Account/Auth/trunk/auth-lib/src/main/java/com/samsungosp/auth/user/ 
util/UserValidatorUtil.java,d/tmp.12452.27: No space left on device 
==============================================================================================================

- Version Tracking ���� ��Ȳ  
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

- ���������� ����(1�⿡ �ѹ���(4��) �������࿡�� ������ ��(������ �� ��)) ==> ��� ���� 
��������: http://bank.kbstar.com/quics?asfilecode=5023&_nextPage=page=B007118&weblog=l_quick_A3  
1. Mozilla Firefox�� �������࿡ �����Ͽ� ó�� 
1) ���� ����: Ű���庸�ȿ� ������ �ֽ��ϴ�. Error: 24 
2. ���� ���� 
1) ������: 2012.04.20(��) 
2) ���¹�ȣ: 640-21-0052-309( 640210052309 ) ==> ����ī�� ��4�ڸ�: 3971 
3) �����ID: tamario/ta****9 
4) ������ ��ȿ�Ⱓ: 2012/04/20 ~ 2013/04/21 
----------------------------------------------------------------------------------------------------------- 

- Ÿ�� ���������� ���(SC����: http://www.standardchartered.co.kr/gw/index.html)   
1) �����: 2012.04.20(��) 
2) ���¹�ȣ: 130-20-502841(13020502841) ==> ����ī�� 3, 4, 5�ڸ�: 429 
3) �����ID: tamario/ta****9 
----------------------------------------------------------------------------------------------------------- 

- ���������� ����(����)  
��������: http://www.myasset.com/myasset/mainindex.html 
1. ���¹�ȣ: 710-01-003202 (71001003202) 
2. ����ī�� �Ϸù�ȣ: 211(2,3, 4��° �ڸ�)  
==============================================================================================================

22:00 ���  
22:50 ��� �籸Ŭ��: ���� �籸 ��ȣȸ(���� ��û ����), ȸ�� ���� 
23:10 �ý��� ����(��� ����, �ϲ� ����) ====> 2012.04.21(��) 
01:20 ����(3��(2��), 3��(8��): ��)  
02:00 ����(3��2��), 3��(8��): ��) 
07:00 ����(3��2��), 3��(8��): 1��)  
08:00 ���� 
08:50 �Ͱ� 
09:10 ���� 
19:00 ��� 
01:00 ��ħ 
==============================================================================================================

������������������� 2012.04.22(��) �۾� ����������������
---> 08:30 ~ 18:00 --> �ٹ�(��ͼ� �౸ �� ��) 

- IOSP(/oauth2) Prj
- VM Ware 7.0 ��ġ 
1. WindowsXPMode_ko-kr ��ġ(Virtual XP) 
----------------------------------------------------------------------------------------------------------- 

- Prevent User's ��ġ 
1. C:\Coverity\prevent-win32-4.5.1 

- Java ������(Build ����) 
1. ���� ȯ�� ���� ���� 
1) eclipse ��ġ PC���� C:\apache-maven-2.2.1, C:\jdk1.6.0_30����, �پ� �ֱ� 
1) C:\cov-sa-win32_5_2\bin\ msc-prevent_env.bat���� ��Ŭ�� > ���� 
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

2. Command â���� ����  
1) C:\Documents and Settings\XPMUser> cd C:\prevent-win32-4.5.1\bin 
2) C:\prevent-win32-4.5.1\bin> msc-configure-java(01.auth-svc).bat ==> ��� 
3) C:\prevent-win32-4.5.1\bin> msc-configure-java(02.auth-lib).bat ==> ��� 
4) C:\prevent-win32-4.5.1\bin> msc-configure-java.bat ==> ��� ����(���� ��) 
cov-configure.exe  --compiler=C:\jdk1.6.0_30\bin\javac.exe --force-debug 
* Configuring c:\jdk1.6.0_30\bin\javac 
* Configuring c:\jdk1.6.0_30\bin\java 
* Configuring c:\jdk1.6.0_30\jre\bin\java 
* Configuring c:\jdk1.6.0_30\bin\apt 
* Configuring c:\jdk1.6.0_30\bin\javaw 

Generated coverity_config.xml at location c:\Coverity\prevent-win32-4.5.1\config 
\coverity_config.xml 
Successfully generated configuration for the compilers: apt java javac javaw 

3. Build ���� 
2) C:\prevent-win32-4.5.1\bin> msc-build-java(01.auth-svc).bat ==> ��� 
3) C:\prevent-win32-4.5.1\bin> msc-build-java(02.auth-lib).bat ==> ��� 
4) C:\prevent-win32-4.5.1\bin> msc-build-java.bat ==> ��� ����(���� ��) 

3. ���� ����� SQE/SE���� ���� 
1) C:\Coverity\prevent-win32-4.5.1\Prevent_Itmdt\java ������ �����ؼ� ���޹ٶ� 
2) auth-svc.zip. auth-lib.zip 
==============================================================================================================

- JTest ����(���� �Ϸ�) 
1. [] ���� 
/DUIDUtil.java ���� 
//byte byteData[] = md.digest(); ===> byte[] byteData = md.digest(); 
2. non-static Name ���� 
/SocialClientImpl.java ���� 
Use a naming convention for non-"static" methods [NAMING.NM-2]   
private List<AttributeUpdateVO> serviceDeveloperDefinedColumnVOtoAttributeUpdateVOList 
(ServiceDeveloperDefinedColumnVO serviceDeveloperDefinedColumnVO) { 
==> ServiceDeveloperDefinedColumnVO() ==> serviceDeveloperDefinedColumnVO�� ���� 
==============================================================================================================

������������������� 2012.04.23(��) �۾� ����������������
---> 06:50 ~ 22:00 

- IOSP(/oauth2) Prj
01. Defect: PRJ1200004253 ==> ���� 
TestSuite : AuthService_createAuthorizationCode 
TestCase : createAuthorizationCode_200_01 
Test ���� : 200 ���� ���� �׽�Ʈ 

(preStep �ܰ��� createUserAuthToken���� username�Ķ���͸� createUser���� �޾ƿ��� �Ǹ�   
createUserAuthToken���ܿ��� ������ �Ͽ� �����ܰ�� ������ ������ createAuthorizationCode API����  
������ �ϰ� ���� �ʽ��ϴ�. ���� testSuite�� �ִ�username : @yopmail.com �� ���ؼ��� ������ �ϰ� �ֽ��ϴ�.) 

- ���� �Ϸ� 
�ش� client_id�� ���ؼ� USR_ID�� @yopmail.com�Դϴ�. 
�׷��� 01. �ܰ迡�� createUser�� ���ؼ� ���ο� USR_ID *@*.* �� ���� �Ǿ����. 
(client_id�� ���ο� USR_ID�� �߻� ��Ű�� ���� �������� ���μ�����) 
03. �ܰ迡�� createAuthorizationCode_dummy user�� �ش� authorizationCode�� ���Ե��� ���� ������ ��� ����ó���� �ؾ��ϴµ� 
LDAP�� ���� ���� ���� �ϴ� �������� ������ �����ϴ�. LDAP�� ���� ���� ���� �ҽ� ����(���� �κ�)���� 
ó�� �߽��ϴ�. 
----------------------------------------------------------------------------------------------------------- 

01. createUser:  
1. client_id(j5p7ll8g33), username(USR_ID) ==> *@*.*(���� ������ USR_ID) 
==> 1. client_id(j5p7ll8g33), username(USR_ID) ==> @yopmail.com(�������� USR_ID) 

02. createUserAuthToken 
1. UserAuthToken �߱�: 2cZD35PF6l 

03. createAuthorizationCode_dummy �߻� 
1. DB����_��û Į��(user�� �ش� authorizationCode�� ���Ե��� ���� ������ ��� ����ó��)   
2. LDAP�� ���� ���� ���� �� ���� �߻� 

04. createAuthorizationCode �߻� 
1. user�� �ش� authorizationCode�� ���ԵǾ� �־ ���� ��ȸ �Ǿ��� 
2. AuthCode ����: UtOmpZBW4v 
----------------------------------------------------------------------------------------------------------- 

02. Defect: PRJ1200005694 ==> ���� 
[���� OSP_Auth] AuthService_createUserAuthToken�� 5���� API�� �����ڵ尡 doc Spec�� �����ϴ� ] 
(check_mandatory, country, appId, langCode, check_email_validation) 
1) check_mandatory 
2) country 
3) appId 
4) langCode 
5) check_email_validation 

- ���� �Ϸ� 
�ش� API�� ����Ǵ� �����ڵ���� spec�� ��� 
* 400 AUT_1046 
* 400 AUT_1047 
* 400 AUT_1048 
* 400 AUT_1049 
* 400 AUT_1050 
* 400 AUT_1055 
* 400 AUT_1056 
----------------------------------------------------------------------------------------------------------- 

03. Defect: PRJ1200005696 ==> ���� 
[���� OSP_Auth] AuthService_isValid API�� ���Ͽ� username �Ķ���Ϳ� ������ �Է� �� ���� ��� �����ڵ�  
USR_5312�� ���� �ǰ� �ֽ��ϴ�. 
TestSuite : AuthService_isValid 
TestCase : isValid_400_01 
TestStep : isValid_username_AUT_1003_01 

AUT_1003 - The value of username parameter must be present and have a non-empty value.  
Username�� ���� �������� ���Ͽ� �����ڵ尡 �����Ƿ� �ش� �����ڵ尡 ���� �Ǿ�� �մϴ�. 
����, Doc Spec�� ��� �Ǿ� ���� ���� �����ڵ� USR_5312 �Դϴ�. 

- ���� �Ϸ� 
username(AUT_1003) , password(AUT_1004)�� ���� �����ڵ� ���� �Ϸ� 
----------------------------------------------------------------------------------------------------------- 

04. Defect: PRJ1200005708 ==> Ȯ�� 
[���� OSP_Auth] AuthService_createUserAuthToken API�� ���Ͽ� country �Ķ���Ϳ� �߸��Ȱ�(��) �Է� ��  
���� ��� �������� �ǰ� �ֽ��ϴ�.' 
TestSuite : AuthService_createUserAuthToken 
TestCase : createUserAuthToken_400_16 
TestStep : createUserAuthToken_country_AUT_1813_03 

Type�� string�̾ Ư�����ڵ� �־�� �����ʴ� counry�� �־ �׽�Ʈ �� ��� �Դϴ�. 
( ����,����,Ư�� ������� 2~3���� �Է��Ͽ� ���� ��� �������� �ǰ� �ֽ��ϴ� ) 
Country�� ���� �߸��Ȱ� �־��� ��� �����ڵ尡 ���� �Ǿ�� �մϴ�. 

- Ȯ�� �Ϸ� 
2112�� 2�� ���� ������ �ҽ��� �������� �̻��� �����ϴ�. 
DOC API ��𿡵� Country�� ���� �߸��� ���� �־��� ��� �����ڵ带 ���� �Ǿ�� �Ѵٰ� ���µ��� �����. 
(API �������� Country�� ����,����,Ư�� ������� ������ �� ���� �Դϴ�. ��� �����ڵ�� API �������� �ۼ��ǰ�  
������ API�� �ؼ� �ٶ��ϴ�.) 

�ش� createUserAuthToken_country_AUT_1813_03 �׽�Ʈ�� check_mandatory(����� �ʼ��׸�üũ) �ÿ� 
country, appId, email, langCode �Ķ���Ͱ��� ���� üũ �κ��� �� ���ƿ�. 
�� �κκ��� 2112�� 2�� ���� ������ ���� �κ��̶� OSP2.O ����� ���� �� �Դϴ�. 
(check_mandatory�� ���ߵǸ� ���� Country ������ �ذ�� ������ �Ǵܵ˴ϴ�.) 
==============================================================================================================

- P4 Bookmark 
01. Auth, Location: //OSP/IOSP/Workspace/Account/Auth 
02. �����м�, Location: //OSP/IOSP/Co-work/4. �����м� 
01. Auth, Location: //OSP/IOSP/Workspace/Account/Auth 
91. profile-ear, Location: //OSP/OSPS2.0/OSP2_PJT/Profile/trunk/profile-ear 
==============================================================================================================

- putty �ѱ� ó�� 
1. puTTY Configuration(��â) > Window > Translation: UTF-8(����) 
2. utty �ѱ���http://dol82.net/229 

- ȭ�� ���� �ø���(�ټ� �ø���) 
1. puTTY Configuration(��â) > Window > Line of Scrollback: 200 --> 20000(����) 
==============================================================================================================

- Visaul Subst(���� ���� ����) ��� ��� 
1. �ϴ� �ʷϻ� + ������ Ŭ��~ 
�������� ���� ����̺긦 ����~ 
������ �����⸦ Ŭ���ؼ� �������̺�� ���� ������ �����մϴ�. 
2. �ʷϻ� + �� Ŭ���մϴ�. 
�׷� ���� �� ���� �������̺갡 ������ �ǰ� �� �ؿ� �������� ���� ������ ��Ÿ���� ���� 
----------------------------------------------------------------------------------------------------------- 

Visaul Subst(���� ���� ����) 
http://blog.naver.com/scoupetls?Redirect=Log&logNo=150020837760 
==============================================================================================================

- USB ��� ���(��� �Ұ�) 
1. %windir%\system32\subst.exe K: Z:\  ===> E\ ����̺꿡 ���� ���� ����  
==============================================================================================================

- Windows 7���� Virtual XP��� ����ϱ�( Windows 7 Home ������ �ȵ�(�� ��Ʈ�� ���׷��̵��� ��) 
1. �ٿ�ε� Page : http://www.microsoft.com/windows/virtual-pc/download.aspx ���� 
2. ���� �ڽ��� OS�� �´� ������ ���� ���� ���� 
3. �Ʒ� 3���� ������ �ٿ���� �� ������� ��ġ 
4. �Ʒ��� ���� Windows XP Mode�� �����Ű�� ������ ���� ȭ���� ��Ÿ�� 
==============================================================================================================

������������������� 2012.04.24(ȭ) �۾� ����������������
---> 06:50 ~ 22:00 

- IOSP(/oauth2) Prj
- JUnit ����(Biz�� �۾�)(67% ==> 44%) 
1.  
==============================================================================================================

- JUnit �����(DEBUG) ��� ���� 
1. /auth-svc/src/test/resources/log4j.xml ���Ͽ���(/auth-lib/src/test/resources/log4j.xml) 
<?xml version="1.0" encoding="UTF-8"?> 
<!DOCTYPE log4j:configuration PUBLIC "-//APACHE//DTD LOG4J 1.2//EN" "log4j.dtd"> 
<log4j:configuration xmlns:log4j="http://jakarta.apache.org/log4j/"> 
   <!-- Root Logger -->  
    <root> 
        <priority value="DEBUG" />   <!--// �߰��� �� //--> 
        <appender-ref ref="console" /> 
    </root> 
</log4j:configuration> 

2. /auth-svc/src/test/resources/log4j.xml ���Ͽ���(/auth-svc/src/test/resources/log4j.xmll) 
<?xml version="1.0" encoding="UTF-8"?> 
<!DOCTYPE log4j:configuration PUBLIC "-//APACHE//DTD LOG4J 1.2//EN" "log4j.dtd"> 
<log4j:configuration xmlns:log4j="http://jakarta.apache.org/log4j/"> 
    <!-- Root Logger --> 
    <root> 
        <priority value="DEBUG" /> <!--// �߰��� �� //--> 
        <appender-ref ref="console" /> 
    </root> 
</log4j:configuration> 
==============================================================================================================

- create Pool ����(/Oauth2CacheBiz.java ���Ͽ���) 
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
} else { // �� ���� ��� (API ȣ��, application �α׾ƿ�)�� accessTokenSectret�� ����Ѵ�. 
signingKey = sessInfo.getAccessTokenSecret(); 
} 
==============================================================================================================

������������������� 2012.04.25(��) �۾� ����������������
---> 06:50 ~ 21:30 --> è�� 4�� 2����(�ٸ��� 2: 2 ÿ��(��� ����)) 

- IOSP(/oauth2) Prj
- JUnit ����(Biz�� �۾�)(76% ==> 80%) 
1. /Oauth2IssueBizImpl.java  ===> 73% 
public String issueUserAuthToken(RequestTokenVO passwordVO) throws OSPException { } 

2. /Oauth2VerifyBizImpl.java ===> 71% 
/ * ���� ���� ���� Ȯ��   
private boolean isValidService(String userID, String applicationServiceID) throws OSPException { } 
==============================================================================================================

������������������� 2012.04.26(��) �۾� ����������������
---> 06:50 ~ 21:30 --> ����OSP PV 5�� ����, è�� 4�� 2����(���� 2: 1 ����(�º����� 3:1, ��� ����)) 

- IOSP(/oauth2) Prj
- Prevent ���� 
1. 180(Run ID) ==> auth_auth-lib  2012-04-19 19:11 
http://localhost:5467/cov.cgi?c=AAAAAADA7g__B41b49&class=1_2_5&q=6&runs=152&t=6&v=1 
833(CID), Checker: REVERSE_INULL ==> ó�� �Ϸ� 
832(CID), Checker: NULL_RETURNS ==> ó�� �Ϸ� 
202(CID), Checker: REVERSE_INULL ==> ó�� �Ϸ�  
204(CID), Checker: NULL_RETURNS ==> ó�� �Ϸ�(������ �� ==> while ())  
203(CID), Checker: FORWARD_NULL ==> ó�� �Ϸ�(������ �� ==> while ()) 
201(CID), Checker: NULL_RETURNS ==> ó�� �Ϸ�(������ �� ==> while ())  
200(CID), Checker: NULL_RETURNS ==> ó�� �Ϸ� 
197(CID), Checker: NULL_RETURNS ==> ó�� �Ϸ�  
196(CID), Checker: NULL_RETURNS ==> ó�� �Ϸ�(������ �� ==> while ())  
195(CID), Checker: NULL_RETURNS ==> ó�� �Ϸ�(������ �� ==> while ())  
192(CID), Checker: NULL_RETURNS ==> ó�� �Ϸ�(������ �� ==> while ())  
191(CID), Checker: FORWARD_NULL ==> ó�� �Ϸ�(������ �� ==> while ())  
185(CID), Checker: NULL_RETURNS ==> ó�� �Ϸ� 
184(CID), Checker: NULL_RETURNS ==> ó�� �Ϸ�(������ �� ==> while ()) 
830(CID), Checker: REVERSE_INULL ==> ó�� �Ϸ� 
831(CID), Checker: NULL_RETURNS ==> ó�� �Ϸ� 
207(CID), Checker: NULL_RETURNS ==> ��� ���� 
199(CID), Checker: NULL_RETURNS ==> ó�� �Ϸ� 
198(CID), Checker: NULL_RETURNS ==> ó�� �Ϸ� 
190(CID), Checker: NULL_RETURNS ==> ó�� �Ϸ� 
189(CID), Checker: REVERSE_INULL ==> ó�� �Ϸ� 
188(CID), Checker: NULL_RETURNS ==> ó�� �Ϸ�  
187(CID), Checker: REVERSE_INULL ==> ó�� �Ϸ� 
---------------------------------------------------------------------------------------------------------- 

2. 153 (Run ID) ==> auth_auth-svc 2012-04-19 19:36 
==============================================================================================================

- PVT ���� ���� 
1. http://localhost:9080/auth/oauth2/authenticate(Crome REST Client���� �׽�Ʈ) 
grant_type=&client_id=j5p7ll8g33&client_secret=5763D0052DC1462E13751F753384E9A9&username=234%40yopmail.com&password=osp123 
2. grant_type�� null�� �־ ����: AUT_1008 ���� �߻�(����) ===> CMM_1007(SoaupUI���� ���� �߻�): SoaupUI ��ü ����  
3. grant_type ��ü�� ���� ����: grant_type�� �ʼ������� ���� CMM_1007������ �߻�(����) 
---------------------------------------------------------------------------------------------------------- 

'-OSP 2.5 ǥ�� �ؼ�(����) 
1. �ذ���¸� Later���� Fixed�� ���� ó�� 
1) Crome REST Client���� �׽�Ʈ(���� ���� ��) 
2) CMM_1007(SoaupUI���� ���� �߻�): SoaupUI ��ü ������ �Ǵܵ�  
PRJ1200004781    
PRJ1200004797  
PRJ1200004803 
PRJ1200004815 
PRJ1200005343  
==============================================================================================================

������������������� 2012.04.27(��) �۾� ����������������
---> 07:00 ~ 22:00 --> SC���� �ε帲2U ���� ����(üũī��� �̿��� ��) 

- IOSP(/oauth2) Prj
- Prevent ���� 
1. 180(Run ID) ==> auth_auth-lib  2012-04-27 11:31  
2. 181(Run ID) ==>uth_auth-svc  2012-04-27 11:42 
==============================================================================================================

01. Defect: PRJ1200004803 ==> ���� �Ϸ� 
[���� OSP_Auth] AuthService_createAccessToken API�� ���Ͽ� �ʼ� �Ķ���͸� ������Ų �� ������ �����ڵ�  
CMM_1007�� ���� �ǰ� �ֽ��ϴ� 
TestSuite : AuthService_createAccessToken 
TestCase : createAccessToken_400_01 (ù��° Step�� �ش�)  
5) refresh_token : AUT_1007 ==> Ȯ��(code �ʼ���) 

������ 5���� refresh_token�� ������ ���� ���� ��� �����ڵ� AUT_1803�� ���� �ǰ� �ֽ��ϴ�. 
�� doc Spec�� ��� �Ǿ� �ִ� �����ڵ尡 �ΰ��� ��� ��Ȯ�� ������ �����Ƿ� �����ڵ� AUT_1007�� ���� �Ǿ�� �մϴ�.  
AUTH.AUT_1803.400=The value of refresh_token parameter is incorrect. 

'- ���� �Ϸ� 
1. ó��: ���信���ڵ� AUT_1803�� AUT_1007 ���� ���� ó���� 
2. ����: AUT_1007 ������ ������ �־�� �κ������� �������� �ٲ�鼭 
interceptor���� �ڵ����� �����ߵ� ���� spring3.0���� ���� �ȵǼ� �������� �̹��� �����ϰ� �Ǿ����ϴ�. 

�׸��� API���� grant_type�� optional(����)�� ���� ó�� �մϴ�. 
�ֳ��ϸ�, grant_type�� refresh_token�̸� refresh_token�� �ʼ�, grant_type�� authorization_code�̸� refresh_token�� �����̹Ƿ� 
API�� @param refresh_token�� required(�ʼ�)�� �ƴ϶� optional(����)�̶�� �ǴܵǾ ���� ó����. 
(����, grant_type�� �ʼ��� ó���ϸ� grant_type�� authorization_code�� ��� ���� �߻�(02. AUT_1007 ���� �߻�(������).jpg ���� ����)  
 * @param refresh_token [optional] - only use in Refreshing an Access Token Flow.<br>  
---------------------------------------------------------------------------------------------------------- 

- PRJ1200004803 ���� ����, ��ȭ 
1. ��ȣ��: hoyoung.*@*.*m, H) * 
==============================================================================================================

- PVT ���� ����(���� ����) 
userauth_token ���� ===> http://eu.auth.samsungosp.com/auth/oauth2/authenticate 
1. Crome REST Client���� �׽�Ʈ 
1) ����: grant_type�� null�� �־ ���� 
grant_type=&client_id=j5p7ll8g33&client_secret=5763D0052DC1462E13751F753384E9A9&username=234%40yopmail.com&password=osp123 
2) ���: AUT_1008 ���� �߻�(����) 

2. SoaupUI���� �׽�Ʈ  
1) ����: grant_type�� null�� �־ ����(grant_type�� ��ĭ �� �ٿ�� ��ĭ�� ����) 
2) ���: CMM_1007(SoaupUI���� ���� �߻�): SoaupUI ��ü ����(grant_type ��ü�� �ν� ���ϴ� ������ ����) 

3. SoaupUI���� �׽�Ʈ  
1) ����: grant_type�� ���� ��ĭ �ٿ��� ���� 
2) ���: AUT_1008 ���� �߻�(����): SoaupUI ��ü ����(grant_type null�� �ν�) 

4. Crome  REST Client, SoaupUI���� �׽�Ʈ 
1) ����: grant_type ��ü�� ���� ���� 
2) ���: CMM_1007������ �߻�(����) 
3) ����: grant_type�� �ʼ������� ���� CMM_1007������ �߻�(����) 
==============================================================================================================

- [iOSP] ������(JENIFFER) ���� 
1. �Ͻ� : 4�� 27�� �ݿ��� 14��(ȸ�ǽ� 8231) 
2. ���� : ȸ�ǽ� 8231  
1) ������ ����(����͸� ���) 
2) ���ϼ� ��ġ �� ���� 
D:\OSP2.5\workspace\IOSP\Workspace\OpenAPITestPVT\4��/���� ���� �׽�Ʈ ���̵� using SoapUI for OSPS2.0(110629).ppt 
==============================================================================================================

22:00 ���  
22:50 ��� �籸Ŭ��: ���� �籸 ��ȣȸ(���� ��û ����), ȸ�� ���� 
23:10 �ý��� ����(�ϲ� ����) ====> 2012.04.28(��) 
00:20 ����(3��(2��, 5����): ��)  
01:30 ����(3��(2��, 5����): ��) 
04:00 ����(3��(2��, 5����): ��) 
05:00 ���� 
06:00 ��� 
06:00 ����(3��(2��, 5����): ��) 
07:00 ����(3��(2��(������, 5����): ��) 
08:00 ���� 
08:50 ��� 
17:40 ��� 
19:00 ������� ���� ����(ȸ�� 3����) 
19:10 ����(���� ���� ����) 
19:30 �Ȼ긮����(��ȥ, �ʸ��� ������, �Ȼ꿡�� �߰���ǻ�� ���� �): �ʸ��� �������� ���� �ɾ 
        �ʸ��ʸ��� �̾߱���� ���� �� 
21:00 ���� ���(�Ա�, �ӽ� ����) 
22:00 ���� 
22:10 ���� 
23:10 �Ͱ� 
23:30 ��ħ 
==============================================================================================================

������������������� 2012.04.28(��) �۾� ����������������
---> 08:50 ~ 17:40  --> ��� �ٹ�(PVT 5�� ����), �߽�(���� �Ұ��(����): ����� å���� ��, ī���) 

- IOSP(/oauth2) Prj
- Prevent ����(����ȸ ���� ��Ʈ��: ����99) 
1. 215(Run ID) ==> auth_auth-lib  2012-04-27 19:49  
Checker: NULL_RETURNS ==> 1(�Ϸ�) 
Function: com.samsungosp.auth.oauth2.biz.Oauth2IssueBizImpl.issueAccessToken(com.samsungosp.auth.oauth2.vo.RequestAuthorizeVO)  
File: /com/samsungosp/auth/oauth2/biz/Oauth2IssueBizImpl.java 

Checker: NULL_RETURNS  ==> 2(�Ϸ�) 
Function: com.samsungosp.auth.oauth2.biz.Oauth2VerifyBizImpl.verifyRefreshAccessTokenVO(com.samsungosp.auth.oauth2.vo.RequestTokenVO)  
File: /com/samsungosp/auth/oauth2/biz/Oauth2VerifyBizImpl.java  

Checker: NULL_RETURNS ==> 3(�Ϸ�) 
Function: com.samsungosp.auth.oauth2.biz.Oauth2VerifyBizImpl.verifyAuthorizationCodeVO(com.samsungosp.auth.oauth2.vo.RequestTokenVO)  
File: /com/samsungosp/auth/oauth2/biz/Oauth2VerifyBizImpl.java  

Checker: NULL_RETURNS ==> 4(�Ϸ�) 
Checker: NULL_RETURNS  
Function: com.samsungosp.auth.oauth2.biz.Oauth2VerifyBizImpl.verifyRequestAuthorizeVOSamsungOSP(com.samsungosp.auth.oauth2.vo.RequestAuthorizeVO)  
File: /com/samsungosp/auth/oauth2/biz/Oauth2VerifyBizImpl.java  

Checker: NULL_RETURNS  ==> 5(�Ϸ�) 
Function: com.samsungosp.auth.user.biz.UserAuthBizImpl.generateUserID(com.samsungosp.auth.user.vo.UserIdentificationVO)  
File: /com/samsungosp/auth/user/biz/UserAuthBizImpl.java  
deref_while_null: com.samsungosp.auth.oauth2.common.util.SecurityUtil.generateRandomToken(...) dereferenced while null ==> 2�� ���� 
deref_while_null: com.samsungosp.auth.oauth2.common.util.SecurityUtil.generateRandomToken(...) dereferenced while null 

strUserID = SecurityUtil.generateRandomToken(UserConstants.LENGTH_USER_ID).toLowerCase(); 
==>  
String randomToken = SecurityUtil.generateRandomToken(UserConstants.LENGTH_USER_ID); 
if (randomToken != null) {  //randomToken�� null�� �ƴϸ�(����) 
strUserID = randomToken.toLowerCase(); 
} 

Checker: NULL_RETURNS ==> 6(�Ϸ�) 
Function: com.samsungosp.auth.user.biz.UserAuthBizImpl.validate(com.samsungosp.auth.user.vo.UserIdentificationVO, boolean)  
File: /com/samsungosp/auth/user/biz/UserAuthBizImpl.java  

Checker: FORWARD_NULL ==> 7(�Ϸ�) 
Function: com.samsungosp.auth.user.biz.UserAuthBizImpl.userTNCRequest(com.samsungosp.auth.user.vo. 
UserTNCRequestVO, com.samsungosp.framework.auth.header.OSPHttpHeaderInfo)  
File: /com/samsungosp/auth/user/biz/UserAuthBizImpl.java  

Checker: NULL_RETURNS  ==> 8(�Ϸ�) 
Function: com.samsungosp.auth.user.biz.UserAuthBizImpl.userTNCRequest(com.samsungosp.auth.user.vo 
.UserTNCRequestVO, java.lang.String, java.lang.String, java.lang.String, java.lang.String)  
File: /com/samsungosp/auth/user/biz/UserAuthBizImpl.java  

Checker: REVERSE_INULL ==> 9(�Ϸ�) 
Function: com.samsungosp.auth.user.biz.UserAuthBizImpl.userTNCRequest(com.samsungosp.auth.user.vo. 
UserTNCRequestVO, java.lang.String, java.lang.String, java.lang.String, java.lang.String)  
File: /com/samsungosp/auth/user/biz/UserAuthBizImpl.java  

Checker: FORWARD_NULL  ==> 10(�Ϸ�) 
Function: com.samsungosp.auth.user.biz.UserAuthBizImpl.validate(com.samsungosp.auth.user.vo.UserCreateVO)  
File: /com/samsungosp/auth/user/biz/UserAuthBizImpl.java  
branch_null: userBaseVO is null ==> 2���� ���(branch_null,branch_not null) 

Checker: FORWARD_NULL  ==> 11(��� ����) 
Checker: NULL_RETURNS  
Function: com.samsungosp.auth.user.client.SFClientImpl.validateTNC(com.samsungosp.auth.user.vo.UserTNCRequestVO, java.lang.String, java.lang.String)  
File: /com/samsungosp/auth/user/client/SFClientImpl.java  

Checker: FORWARD_NULL  ==> 12(��� ����) 
Function: com.samsungosp.auth.user.client.SFClientImpl.throwOSPException(osp.oaf.openapi.client.ClientException)  
File: /com/samsungosp/auth/user/client/SFClientImpl.java  

Checker: NULL_RETURNS ==> 13(�Ϸ�) 
Function: com.samsungosp.auth.user.client.SocialClientImpl.getDevice(java.lang.String, java.lang.String, java.lang.String)  
File: /com/samsungosp/auth/user/client/SocialClientImpl.java 

Checker: NULL_RETURNS  ==> 14(�Ϸ�) 
Function: com.samsungosp.auth.user.client.SocialClientImpl.createUserForDevice(com.samsungosp.auth.user.vo.UserCreateForDeviceVO, java.lang.String)  
File: /com/samsungosp/auth/user/client/SocialClientImpl.java  

Checker: FORWARD_NULL ==> 15(�Ϸ�) 
Function: com.samsungosp.auth.user.client.SocialClientImpl.getUser(java.lang.String, java.lang.String, java.lang.String, java.lang.String)  
File: /com/samsungosp/auth/user/client/SocialClientImpl.java  

 Checker: NULL_RETURNS ==> 16(�Ϸ�): SF 
Function: com.samsungosp.sf.common.SfClientUtil.generateUserId()  
File: /com/samsungosp/sf/common/SfClientUtil.java  

Checker: NULL_RETURNS ==> 17(�Ϸ�): SF 
Function: com.samsungosp.sf.common.Util.raiseExcetpion(javax.servlet.http.HttpServletResponse, int, java.lang.String, java.lang.String,  
java.lang.String, java.lang.String, java.lang.Exception)  
File: /com/samsungosp/sf/common/Util.java  

Checker: NULL_RETURNS ==> 18(�Ϸ�): SF 
Function: com.samsungosp.sf.common.Util.formEncode(java.lang.Iterable, java.io.OutputStream)  
File: /com/samsungosp/sf/common/Util.java 
==============================================================================================================

������������������� 2012.04.29(��) �۾� ����������������
---> 07:00 ~ 18:00 

�������౸ 

06:40 ��� 
07:00 SK �ź�õ ������(�������� ��: ó�� �ý�) 
07:30 ����(����� ������) 
07:50 �ű��ʵ��б� 
08:20 ������(2:1 ��) 
08:50 �����౸(2:2 ��): è������ �౸�� �����忡 �ѱ� 
09:30 �����౸(4:2 ��): 2�� ���� 
10:30 ���� 
11:30 �߽�(���� ���屹: �δ����): �̰�ȯ ������ ��(����) 
12:10 ���� 
12:30 ������(���Ÿ� 8�� ���� ���� �� ã�� �޶�� ��û��: â�������� �� ���� ��) 
12:40 ���������� 
12:30 ����͹̳� ��ó ���� 
13:30 ��ȭ(��������� ��� ��õ): ������: 73,6kg 
13:40 �޽�(TV ��û; ���ξ߱�) 
18:30 ���(165cm, ����, �̼��� ����, ����(����� ��)) 
19:40 ���� 
19:50 ����(��ȭ) 
20:00 ���� 
20:50 �Ͱ� 
22:30 ��ħ 
==============================================================================================================

������������������� 2012.04.30(��) �۾� ����������������
---> 06:50 ~ 21:30 --> Prevent �Ϸ� 

- IOSP(/oauth2) Prj
- Prevent ���� 
1. 239(Run ID) ==> auth_auth-lib  239 2012-04-30 08:52  

Checker: FORWARD_NULL ==> 1(�Ϸ�)(�ű�) 
Function: com.samsungosp.auth.user.biz.UserAuthBizImpl.userTNCRequest(com.samsungosp.auth.user.vo. 
UserTNCRequestVO, com.samsungosp.framework.auth.header.OSPHttpHeaderInfo)  
File: /com/samsungosp/auth/user/biz/UserAuthBizImpl.java 

if ( privacyAccepted != null  &&  strTncAccepted != null) { //privacyAccepted�� null�� �ƴϰ�  
	strTncAccepted�� null�� �ƴϸ�(Prevent ����) 
} 
==============================================================================================================

- PVT6���� ���� release ���� ���� 
#component svc release version 
release.version=0.9.22 
==============================================================================================================

- [�߿����] Logging ���� ���� ���� 
Logging ���� Stg �߰� ���� �����Դϴ�.  

1. applicationContext-aop.xml 
<bean id="loggingAspect" class="com.samsungosp.framework.aspect.OSPLoggingAspect" > 
     <property name="subProjectName" value="auth" /><!-- logging point �����뵵 --> 
    <!--<property name="subProjectName" value="sample}" /><!-- SubProject�� - logging point �����뵵 --> 
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
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������