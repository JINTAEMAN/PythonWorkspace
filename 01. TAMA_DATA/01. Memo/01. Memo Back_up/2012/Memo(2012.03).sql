

�����������������������������������������������������������
+---------------------------------------------// Memo(2012.03) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2012.03.01(��) �۾� ����������������
---> 12:10 ~ 18:00 --> ������(������)

- IOSP(/oauth2) Prj
2. createAuthorizationCode API ���� 
http://localhost:8080/v2/auth/oauth2/authorize?response_type=code&userauth_token=6Lft4caWSd&client_id=gtd83co8hu 
==> createAuthorizationCode() -> 02_Auth_authorize(GET ���) 
2) response body 
200 OK 
<?xml version="1.0" encoding="UTF-8"?><net.sf.json.JSONObject><nullObject>false</nullObject> 
<properties class="org.apache.commons.collections.map.ListOrderedMap" serialization="custom"> 
<unserializable-parents/><org.apache.commons.collections.map.ListOrderedMap> 
<default>
<insertOrder> 
<string>code</string> 
</insertOrder> 
</default> 
<map> 
<entry key="code">&amp;lt;![CDATA[hPtcn15TTf]]&amp;gt;</entry> 
</map> 
</org.apache.commons.collections.map.ListOrderedMap> 
</properties> 
</net.sf.json.JSONObject> 
==============================================================================================================

- �������౸
06:30 ��� 
07:50 �ű��ʵ��б� 
08:30 �����౸(5:5 ��) ==> �������� ������ϰ� �ο��� ������ �ΰ� ���� �� 
10:30 ���� 
11:30 �߽�(�ᳪ�� ����) 
11:30 ���� 
12:10 ��� 
18:00 ��� 
18:10 ����(����: ������ ��) 
19:40 �Ͱ� 
==============================================================================================================

������������������� 2012.03.02(��) �۾� ����������������
---> 07:25 ~ 21:00 --> Profile ��� ����� ���� ö�� 

- IOSP(/oauth2) Prj
3. createAccessToken API ���� 
http://localhost:8080/v2/auth/oauth2/token ==> createAccessToken() -> 03_Auth_token  
1) request body 
grant_type=authorization_code&client_id=testapp000&client_secret=12345678901234567890123456789012&code=ngHU0Gusqc 

<requestTokenVO> 
	<grant_type>authorization_code</grant_type> 
	<client_id>testapp000</client_id> 
	<client_secret>12345678901234567890123456789012</client_secret> 
	<code>ngHU0Gusqc</code>  
</requestTokenVO> 
2) response body 
200 OK 
<?xml version="1.0" encoding="UTF-8"?> 
<net.sf.json.JSONObject> 
	<nullObject>false</nullObject> 
	properties class="org.apache.commons.collections.map.ListOrderedMap" serialization="custom">< 
	unserializable-parents/><org.apache.commons.collections.map.ListOrderedMap><default> 
	<insertOrder><string>access_token</string><string>token_type</string><string>refresh_token</string></insertOrder></default> 
	<map> 
	<entry key="token_type">&amp;lt;![CDATA[bearer]]&amp;gt;</entry> 
	<entry key="refresh_token">&amp;lt;![CDATA[YZ5W3qqxJe]]&amp;gt;</entry> 
	<entry key="access_token">&amp;lt;![CDATA[H7JJEj5TtP]]&amp;gt;</entry> 
	</map> 
	</org.apache.commons.collections.map.ListOrderedMap></properties> 
</net.sf.json.JSONObject> 
==============================================================================================================

- putter-utility ���� 
1. /start_local_server.cmd ���Ͽ��� 
set COH_OPTS=-Dtangosol.coherence.clusteraddress=237.16.152.153 ==> IP ����(237.16.152.222 -> 237.16.152.153) 
==============================================================================================================

- Account ���� �̽� ȸ��(������, Acount��, �Ｚ���� ����ȣ å�� ��)(16:00 ~ 18:00) 
1. Open SSO DB ����Ͽ� �߰� �����ϱ�� �� 
2. Coherence ������ Licence�� ���ؼ� ���� 
3. SF, Auth ���� 
==============================================================================================================

������������������� 2012.03.03(��) �۾� ����������������
---> 08:00 ~ 15:30 --> ���ٹ�, �繫�� ��Ƽ�� �ڸ� ���� ����, ��ȭ �籸��(17:00 ~ 20:00, ������ 1:2 ��) 

- IOSP(/oauth2) Prj
- SoapUI ���� 
1. ��ũ�����̽�: ws_TaemanJin_soapui 
D:\OSP\4.workspace\SERVER\oat\trunk\openapi-soapui-test\ws_TaemanJin_soapui-workspace.xml 
2. ������Ʈ ����: OSPS_oauth2 
D:\OSP\4.workspace\SERVER\oat\trunk\openapi-soapui-test\src\OSPS_oauth2 
3. Rest Service ���� 
 1) Service Name: OSPS_oauth2 
 2) Service Endpoint: http://localhost:8080 
4. Rest Resource ���� 
 1) Resource Name: AuthService 
 2) Resource Path/Endpoint: /v2/auth/oauth2/authenticate 
5. Rest Method ���� 
 1) Method Name: createUserAuthToken 
 2) http Method : POST 
6. Test Suite ���� 
1) New TestSuite: AuthService_createUserAuthToken ===> shopName: OST_TEST_SHOP_ 
7. Test Case����  
1) New TesetCase: createUserAuthToken_200_OK_01 
2) New TesetCase: setUp ===> Groovy Script: ShopName�������� 
String shopName = "OSP_TEST_SHOP_"+ String.valueOf(System.currentTimeMillis()); 
testRunner.testCase.testSuite.setPropertyValue( "shopName",shopName ) 
3) New TesetCase: tearDown  
--------------------------------------------------------------------------------------------------------- 

- SoapUI ����2 
1. ��ũ�����̽�: ws_TaemanJin_soapui 
D:\OSP\4.workspace\SERVER\oat\trunk\openapi-soapui-test\ws_TaemanJin_soapui-workspace.xml 
2. ������Ʈ ����: OSPS_oauth2 
D:\OSP\4.workspace\SERVER\oat\trunk\openapi-soapui-test\src\OSPS_oauth2 
3. Rest Service ���� 
 1) Service Name: OSPS_oauth2 
 2) Service Endpoint: http://localhost:8080 
4. Rest Resource ���� 
 1) Resource Name: AuthService6 
 2) Resource Path/Endpoint: /v2/auth/user/isvalid 
5. Rest Method ���� 
 1) Method Name: isvalid 
 2) http Method : POST 
6. Test Suite ���� 
1) New TestSuite: AuthService6_isvalid ===> userName: @yopmail.com 
 isvalid_Request 1 Request Script:<username>${#TestSuite#userName}</username> 
7. Test Case���� 
1) New TesetCase: isvalid_200_OK_01 
2) New TesetCase: setUp ===> Groovy Script: userName_�������� 
String userName = "@yopmail.com";   //login ���̵�(@yopmail.com, 1semi.*@*.*) 
testRunner.testCase.testSuite.setPropertyValue( "userName", userName ) 
3) New TesetCase: tearDown 
==============================================================================================================

������������������� 2012.03.04(��) �۾� ����������������
---> 07:00 ~ 18:00 

�������౸
07:30 ��� 
08:20 �ű��ʵ��б� 
08:20 �����౸(2:0 ��): ��Ű�� 
10:00 �����౸2(2:0 ��): 1���� �� 
10:45 �����౸3(4:3 ��): ��Ű�� 
11:20 ���� 
11:20 �߽�(���漼��: ������(�ﱹ������ ��)) 
12:50 ���� 
13:30 �Ͱ� 
14:20 �Ҹ��� Ŀ��(������) 
15:30 �躸�̾�(*) �� ==> 72���, ȿ�� ������ 91, ���� ����, �ϻ� 
17:30 ���� 
18:40 �Ͱ� 
23:00 ��ħ 
==============================================================================================================

������������������� 2012.03.05(��) �۾� ����������������
---> 07:20 ~ 22:00 --> ������ �� ������ �ͼ� 15�� ��ٸ� 

- IOSP(/oauth2) Prj
- SoapUI ���� 
1. ��ũ�����̽�: ws_TaemanJin_soapui 
D:\OSP\4.workspace\SERVER\oat\trunk\openapi-soapui-test\ws_TaemanJin_soapui-workspace.xml 
2. ������Ʈ ����: OSPS_oauth2 
D:\OSP\4.workspace\SERVER\oat\trunk\openapi-soapui-test\src\OSPS_oauth2 
3. Rest Service ���� 
 1) Service Name: OSPS_oauth2 
 2) Service Endpoint: http://localhost:8080 
4. Rest Resource ���� 
 1) Resource Name: AuthService6 
 2) Resource Path/Endpoint: /v2/auth/user/isvalid 
5. Rest Method ���� 
 1) Method Name: isvalid 
 2) http Method : POST 
6. Test Suite ���� 
1) New TestSuite: AuthService6_isvalid ===> userName: @yopmail.com 
 isvalid_Request 1 Request Script:<username>${#TestSuite#userName}</username> 
7. Test Case���� 
1) New TesetCase: isvalid_200_OK_01 
2) New TesetCase: setUp ===> Groovy Script: userName_�������� 
String userName = "@yopmail.com";   //login ���̵�(@yopmail.com, 1semi.*@*.*) 
testRunner.testCase.testSuite.setPropertyValue( "userName", userName ) 
3) New TesetCase: tearDown 
==============================================================================================================

- LDAP ���� 
1. putty�� �ͳθ�(���߰� LDAP ����) 
1. HUB ������ ���� ����: IOSP_HUB(50.16.215.98: 70) 
2. ���Ӱ��� ����: auth 
3. Auth: Puttygen���� ��ȯ�� private key( *.ppk) 
 1) putty puttygen > iosp-dev-auth: Action: load --> iosp-dev-auth.pem(Save private key Ŭ��) ==> auth.ppk ������ 
4. �ͳθ����� �Է� 
L1689  210.118.57.208:1689 
L70  10.28.7.46:70(��� ����) 
L80  10.28.7.46:80(��� ����) 
5. HUB ����- �ͳθ� ����� 
6. �ͳθ� ���ǵ� localhost : port �� ����(20�� ���� �ٿ��) 
1) localhost:1689 
7. ApacheDirectoryStudio ��ġ �� ���� 
1) OSPMemoryCacheManager --> localhost:1689 
2) Bind DN or user: cn=writer,ou=manager,dc=samsung,dc=com 
3) Bind password: password  
==============================================================================================================

- OSPMemory pool(Coherence ���� �� OSPMemoryCacheManager) 
1. authenticate: createUserAuthToken(auth/oauth2/authenticate) ==> osp_app_pool 
2. authorize: createAuthorizationCode(auth/oauth2/authorize) ==> osp_oauth_userauth_token_pool, osp_app_pool, 
osp_oauth_code_pool 
3. token: createAccessToken(auth/oauth2/token) ==> osp_oauth_code_pool, osp_app_pool, osp_oauth_access_token_pool,  
osp_oauth_refresh_token_pool 
4. deauthenticate: deauthenticate(auth/oauth2/deauthenticate) ==> osp_oauth_userauth_token_pool 
5. revoke: revoke(auth/oauth2/revoke) ==> osp_oauth_userauth_token_pool 
6. isvalid: isvalid(auth/user/isvalid) ==> osp_oauth_userauth_token_pool 
==============================================================================================================

- webserver ����(Tomcat v6.0) 
1. ���� ����: Port 8080 required by Tomcat v6.0 Server at localhost is already in use.  
2. ��ġ:  
 1) ���񽺿��� Msdepsvc.exe(Web Deployment Agent Service)�� �����ϰ�, ���� �Ǵ� ��� �������� ���� 
 2) Tomcat6 ���� 
 3) �׷��� �ȵǸ� PC ����� 
------------------------------------------------------------------------------------------------------------------------------ 

- eclipse ���� �ӵ� ����(��õ ����) 
1. ���� ����: ���� �� 2~3 �� ���� �ε� �� ==> Building workspace(SleepIng) 
2. ��ġ:  
 1) Tomcat v6.0 > Overview > Publishing���� Modify setting for publishing: Never publishing automatically�� ���� 
 2) Build Automatically �ɼ��� ���� ����, �ʿ��� ���� ������Ʈ ���� ����(project clean)�ؼ� ����ϼ���.  
 3) C:\OSP2.5\tools\eclipse/eclipse.ini ���Ͽ��� 
-Xms40m 
-Xmx1024m ==> -Xmx750m 
==============================================================================================================

- JUNIT ����� 
1. http://blog.naver.com/byebird?Redirect=Log&logNo=20140786449 
==============================================================================================================

������������������� 2012.03.06(ȭ) �۾� ����������������
---> 07:20 ~ 21:10 --> ������(��ȣ: 0608) �н�, �ӽ� ������(��ȣ: 0231) ����, ���û(�� 5õ��) 

- IOSP(/oauth2) Prj
- OSPMemoryCacheManager �м�(/authenticate) 
1. appIDPool�� clientID�� �����ϴ��� ��ȸ 
DEBUG: com.samsungosp.license.memorycache.license.OSPMemoryCacheManager - Get element completed,  
Target : osp_app_pool Key : j5p7ll8g33_1.0.0 
DEBUG: com.samsungosp.auth.oauth2.biz.Oauth2CacheBizImpl - [getAppIDPool()]  
==> [appIDPool�� clientID�� �����ϴ��� ��ȸ_���] [applicationInfoEntryVO]null  
--------------------------------------------------------------------------------------------------------------------------

2. UserauthToken ��ȸ ��� 
DEBUG: com.samsungosp.auth.oauth2.biz.Oauth2CacheBizImpl - [existUserauthToken()]  
==> [userID]01gg5uki5o[userName]@yopmail.com[clientID]j5p7ll8g33[serviceType]M[physicalAddressText]2012001 
DEBUG: com.samsungosp.license.memorycache.license.OSPMemoryCacheManager - Search query is :  
userId='01gg5uki5o' AND userName='@yopmail.com' AND serviceType='M' AND physicalAddressText='2012001' AND clientId='j5p7ll8g33' 
DEBUG: com.samsungosp.license.memorycache.license.OSPMemoryCacheManager - Found 0 elements, with given Equal Filters 
DEBUG: com.samsungosp.auth.oauth2.biz.Oauth2CacheBizImpl - [existUserauthToken()]  
==> [UserauthToken ��ȸ ���(����:not null)] [searchedUserauthTokenList][] 
--------------------------------------------------------------------------------------------------------------------------

3. UserAuthToken ���� �� userauthtTokenPool�� insert ó�� 
DEBUG: com.samsungosp.auth.oauth2.biz.Oauth2IssueBizImpl - [issueUserAuthToken()] ==>  
[ProfileUserauthTokenParamsEntryVO][ProfileUserauthTokenEntryVO] userauthToken : g6xjOJqqYh/expireIn :  
Mon Mar 05 21:10:15 KST 2012/userName : @yopmail.com/userId : 01gg5uki5o/physicalAddressText : 2012001/clientId : 
j5p7ll8g33/serviceType : M/ 
DEBUG: com.samsungosp.auth.oauth2.biz.Oauth2CacheBizImpl -  
�ѢѢ�  *** Logging Aspect : executed setUserauthToken() in com.samsungosp.auth.oauth2.biz.oauth2cachebizimpl Class. 
*************com.samsungosp.license.memorycache.common.vo.ProfileUserauthTokenEntryVO************* 
[ProfileUserauthTokenEntryVO] userauthToken : g6xjOJqqYh/expireIn : Mon Mar 05 21:10:15 KST 2012/userName :  
@yopmail.com/userId : 01gg5uki5o/physicalAddressText : 2012001/clientId : j5p7ll8g33/serviceType : M/ 
******************************************* 

DEBUG: com.samsungosp.auth.oauth2.biz.Oauth2CacheBizImpl - �ѢѢ� >>>>> logging around.... target class :  
com.samsungosp.auth.oauth2.biz.Oauth2CacheBizImpl 
DEBUG: com.samsungosp.auth.oauth2.biz.Oauth2CacheBizImpl - [setUserauthToken()] = 
=> [test_1] [profileUserauthTokenEntryVO.getUserauthToken()]g6xjOJqqYh[profileUserauthTokenEntryVO] 
[ProfileUserauthTokenEntryVO] userauthToken : g6xjOJqqYh/expireIn : Mon Mar 05 21:10:15 KST 2012/userName : 
@yopmail.com/userId : 01gg5uki5o/physicalAddressText : 2012001/clientId : j5p7ll8g33/serviceType : M/ 
DEBUG: com.samsungosp.license.memorycache.license.OSPMemoryCacheManager - Put element completed,  
Target : osp_oauth_userauth_token_pool Key : g6xjOJqqYh  
==============================================================================================================

������������������� 2012.03.07(��) �۾� ����������������
---> 07:20 ~ 22:00 

- IOSP(/oauth2) Prj
- oauth2, sf �պ� 
1. sf ���� �պ�/pom.xml, /applicationContext-marshaller.xml ���� �߰�) 
==============================================================================================================

- OSPMemoryCacheManager ���� 
1. authenticate: appIDPool ����(osp_app_pool) 
1. authenticate: UserauthToken ����(osp_oauth_userauth_token_pool) 
2. authorize: AuthCode ����(osp_oauth_code_pool) 
3. authenticate: AccessTokenn ����(oauth_access_token_pool, oauth_refresh_token_pool) 
==============================================================================================================

������������������� 2012.03.08(��) �۾� ����������������
---> 07:20 ~ 22:00 

- IOSP(/oauth2) Prj
- OSPMemoryCacheManager �ҽ� ���� 
1. authenticate: appIDPool ����(osp_app_pool) 
1. authenticate: UserauthToken ����(osp_oauth_userauth_token_pool) 
2. authorize: AuthCode ����(osp_oauth_code_pool) 
3. authenticate: AccessTokenn ����(oauth_access_token_pool, oauth_refresh_token_pool) 
==============================================================================================================

- appID ���� Table ���� 
1. appID 1.0 Table�� ���� 
==============================================================================================================

- VO �ϰ� ���� 
1. @XmlRootElement(name = "ServiceVO") ==> @XStreamAlias("accessTokenVO") 
==============================================================================================================

- P4 Submit ���� 
1. ���� 
1) Merges still pending -- use 'resolve' to merge files. 
Submit failed -- fix problems above then use 'p4 submit -c 270742'.  
2) Out of date files must be resolved or reverted. 
Submit failed -- fix problems above then use 'p4 submit -c 270748'. 
2. ��ġ  
1) eclipse ==> Team --> Rever files: Ȯ�� 
2) eclipse ==> Team --> Check out 
3) ���� ���� 
4) eclipse ==> Team --> Submit 
==============================================================================================================

- local���� Client Stub Gen ���� ��� 
1. auth-svc project���� Run As ==> Maven build ==> Goals: dependency:copy-dependencies�� ���� 
2. Build.xml ���� 
1) Build.xml(���콺 ������ ��ư) ==> Run As ==> 1. Ant Build ==> Edit configration(��â) >  
Target(Tab) : clean-all, build(üũ) > Apply(Ŭ��) > Run(Ŭ��)  
==============================================================================================================

������������������� 2012.03.09(��) �۾� ����������������
---> 07:20 ~ 22:00 

- IOSP(/oauth2) Prj
- auth�� �պ�(oauth2, sf) 
1. auth ���� �պ�(/web.xml, /pom.xml, /applicationContext-marshaller.xml ���� �߰�) 
==============================================================================================================

- VO ���� ���� 
@XmlTransient ===>  @XStreamOmitField 
==============================================================================================================

- Client Stub Gen ����, Doc ���� ����(AA ��� ����) 
1. Build.xml ���� ���� ==> javadoc ���� 
==============================================================================================================

- AUTH2 Bundle ���� 
1. /auth-lib/src/main/resources/i18n/AuthLogBundle_ko_KR.properties ���Ͽ��� 
(C:\OSP2.5\workspace\IOSP\Workspace\Account\Auth\trunk\auth-lib\src\main\java ���Ͽ���) 
#AUTH2 Bundle # @@@@@@@@@@@@@@@@@@@@@@@@@@ 
# AuthService 
AUTH.AUT_9001.500=Unknown error was occurred. 
2. /auth-svc/build.properties ���Ͽ��� 
# client jar, service contract, javadoc publish setting 
logbundle.prefix=Auth 
logbundle.locale=_en_US 
logbundle.check=false ===> Bundle ��� ����(true:���, false:�̻��) 
1) ��彼 ����: http://165.213.146.213:7015/ 
2) Open API: http://devdoc.iosp.com/index.html 
==============================================================================================================

������������������� 2012.03.10(��) �۾� ����������������
---> 07:20 ~ 22:00 

07:30 ��� 
08:20 ����(���) 
08:40 ����(506��) 
09:20 ��� �籸Ŭ��: ���� �籸 ��ȣȸ(���� ��û ����), ȸ�� ���� 
16:00 �籸 ����(ȸ��, 2:0 ��(80)) 
18:00 ���� 
18:30 ������� ����(���� ��õ��Ȳ����): ȸ�� 3���� 
22:00 ȣ����(������(���� ���� ���� ����):����� ����) 
22:30 ���� 
22:38 ���� ������(501��, 506�� ���� 11:30�� ����) 
22:45 ����ö(�������Ա���) 
00:07 �ŵ�����(����ö ����) 
00:20 �ý�(11,300��) 
01:10 �Ͱ� 
01:20 ��ħ 
==============================================================================================================

������������������� 2012.03.11(��) �۾� ����������������
---> 07:00 ~ 18:00 

11:30 ���(�籸 ���� �ļ� �ٸ� ���ۼ� �౸ �� ��) 
11:30 ���� 
14:00 ��ȭ(��) 
14:20 D �̺�Ʈ(�Ǹ�) 
15:35 ũ����Ż(���θ��, ���� ��(�ְ�)) 
18:00 ���� 
18:30 ���� 
19:30 �Ͱ�  
23:50 ��ħ 
==============================================================================================================

������������������� 2012.03.12(��) �۾� ����������������
---> 07:10 ~ 22:00 

- IOSP(/oauth2) Prj
- OSPMemoryCacheManager �ҽ� ���� 
1. authenticate: appIDPool ����(osp_app_pool)  
2. authenticate: UserauthToken ����(osp_oauth_userauth_token_pool) 
/Oauth2IssueBizImpl.java ���Ͽ��� 
public String issueUserAuthToken(RequestTokenVO passwordVO) throws Oauth2Exception {  
	InsertUserauthTokeResult = oauth2CacheBiz.beForeInsertUserauthToken("");   //TEST 
	 //TEST ==> UserauthToken ����(1. authenticate): MemoryCacheManager - Put(osp_oauth_userauth_token_pool) 
} 

2. authorize: AuthCode ����(osp_oauth_code_pool) 

3. authenticate: AccessTokenn ����(oauth_access_token_pool, oauth_refresh_token_pool) 

4. ����: /ospPoolChecker/src/main/java/com/samsungosp/license/ospPoolChecker/insert/InsertTestDataMain.java 
==============================================================================================================

- appID ���� Table ���� 
1. appID 1.0 Table�� ���� 
==============================================================================================================

- JUnit ���� 
[���߰��� ���̵�] 
//OSP/IOSP/Co-work/1. IOSP ���Ĺ���/1. Archtect/7.���߰���/����OSP_���ߴܰ� API �׽�Ʈ ���.pptx 
//OSP/IOSP/Co-work/1. IOSP ���Ĺ���/1. Archtect/7.���߰���/����OSP_API ��� �׽�Ʈ ���̵�.pptx 
//OSP/IOSP/Co-work/1. IOSP ���Ĺ���/1. Archtect/7.���߰���/����OSP_���� ���� üũ �׸�.xlsx 
//OSP/IOSP/Co-work/1. IOSP ���Ĺ���/1. Archtect/7.���߰���/����OSP_������ ���ְ��� ���̵�.docx 

[soapUI Pro �� / Test Case source] 
D:\OSP2.5\workspace\IOSP\Workspace\OpenAPITest\testcase 
//OSP/IOSP/Co-work/1. IOSP ���Ĺ���/1. Archtect/7.���߰���/soapUITool/ 
//OSP/IOSP/Workspace/OpenAPITest/testcase/IOSP_Auth.xml 
==============================================================================================================
   
������������������� 2012.03.13(ȭ) �۾� ����������������
---> 07:05 ~ 22:00 

- IOSP(/oauth2) Prj
- OSPMemoryCacheManager �ҽ� ���� 
1. authenticate: appIDPool ����(osp_app_pool) 
/Oauth2VerifyBizImpl.java ���Ͽ��� 
private boolean verifyClientInfo(Oauth2ClientInfoVO oauth2ClientInfoVO, String type) throws Oauth2Exception { 
	boolean InsertAppIDResult = false; 
	InsertAppIDResult = oauth2CacheBiz.beForeInsertAppID("");    
	//TEST ==> appIDPool ����(1. authenticate): MemoryCacheManager - Put(osp_app_pool) 
} 

1. authenticate: UserauthToken ����(osp_oauth_userauth_token_pool) 
/Oauth2IssueBizImpl.java ���Ͽ��� 
public String issueUserAuthToken(RequestTokenVO passwordVO) throws Oauth2Exception {  
	InsertUserauthTokeResult = oauth2CacheBiz.beForeInsertUserauthToken("");   //TEST 
	//TEST ==> UserauthToken ����(1. authenticate): MemoryCacheManager - Put(osp_oauth_userauth_token_pool) 
} 

2. authorize: AuthCode ����(osp_oauth_code_pool) 
/Oauth2VerifyBizImpl.java ���Ͽ��� 
public boolean verifyAuthorizationCodeVO(RequestTokenVO authorizationCodeVO) throws Oauth2Exception { 
	  InsertUserauthTokeResult = oauth2CacheBiz.beForeInsertCode("");    
	  //TEST =========> AuthCode  ����(2. authorize): MemoryCacheManager - Put(osp_oauth_code_pool) 
} 

3. token: AccessToken ����(oauth_access_token_pool, oauth_refresh_token_pool) 
/Oauth2IssueBizImpl.java ���Ͽ��� 
public AccessTokenVO issueAccessToken(RequestTokenVO authorizationCodeVO) throws Oauth2Exception {  
	insertAccessTokenResult = oauth2CacheBiz.beForeInsertAccessToken("");    
	//TEST =========> AccessTokenn ����(3. authenticate): MemoryCacheManager -  
	Put(oauth_access_token_pool, oauth_refresh_token_pool) 
} 
==> {token={"access_token":"AAfBlOEqkN","token_type":"bearer","refresh_token":"LDRxnRdUfv","userId":"lbzqxl6qsr"}} 

4. ����: /ospPoolChecker/src/main/java/com/samsungosp/license/ospPoolChecker/insert/InsertTestDataMain.java 
==============================================================================================================

- LDAP ���� 
/UserAuthBizImpl.java ���Ͽ��� 
public UserIdentificationVO getUserIdentification(UserIdentificationVO userIdentificationVO) throws OSPException {  
	if(gcLDAP.getLdapUseFlag() == true) {  
		userIdentificationVOResult = gcLDAP.getUserIdentificationByLoginID(loginID, loginIDTypeCode);    
		// LDAP�� ȸ�� ���� ���� ��ȸ(GC)  
	} 
} 

/UserLDAPImpl.java ���Ͽ��� 
public UserIdentificationVO getUserIdentificationByLoginID(String loginID, String loginIDTypeCode) throws OSPException {        
	loginID = loginID.toLowerCase(); 
	String loginIDTypeText = getLoginIDTypeText(loginIDTypeCode);   
	return getUserIdentification(new EqualsFilter(loginIDTypeText, loginID)); 
} 

private UserIdentificationVO getUserIdentification(Filter query) throws OSPException { 
	UserIdentificationVO userIdentificationVO = null; 

	try { 
		AndFilter filter = new AndFilter(); 
		filter.and(new EqualsFilter("objectClass", "Party")).and(query);   
		List list = ldapTemplate.search(buildDnForSearch(), filter.encode(), getContextMapper());  
		   
		if(list != null && list.size() > 0) { 
			userIdentificationVO = (UserIdentificationVO)list.get(0); 
		} 
	}  
	return userIdentificationVO; 
} 

/applicationContext-external.xml ���Ͽ��� 
<beans xmlns="http://www.springframework.org/schema/beans"> 
<!-- ==================================================== --> 
<!--  auth2 LDAP Config Setting --> 
<!-- ==================================================== --> 
<bean id="gcLDAP" class="com.samsungosp.auth.user.ldap.UserLDAPImpl">    
<property name="ldapTemplate" ref="ldapTemplateGC"/>  
<property name="targetLDAP" value="GC"/>  
<property name="ldapUseFlag" value="${ldap.use.flag}"/>    
</bean> 

<bean id="ldapTemplateGC" class="org.springframework.ldap.core.LdapTemplate"> 
<constructor-arg ref="poolingContextSourceGC" /> 
</bean> 

<bean id="poolingContextSourceGC" class="org.springframework.ldap.pool.factory.PoolingContextSource"> 
<property name="contextSource" ref="contextSourceGC"></property> 
<property name="dirContextValidator" ref="dirContextValidator"></property> 
<property name="testOnBorrow" value="true"></property> 
<property name="testWhileIdle" value="true"></property> 
<property name="maxActive" value="100"></property> 
<property name="maxIdle" value="20"></property> 
<property name="minIdle" value="0"></property> 
<property name="maxWait" value="5000"></property> 
</bean> 

<bean id="contextSourceGC" class="org.springframework.ldap.core.support.LdapContextSource"> 
<property name="url" value="${ldap.url}" /> 
<property name="base" value="${ldap.base}" /> 
<property name="userDn" value="${ldap.writer.bind.dn}" /> 
<property name="password" value="${ldap.writer.bind.password}" /> 
<property name="pooled" value="false"></property> 
<property name="baseEnvironmentProperties"> 
<map> 
<entry key="com.sun.jndi.ldap.connect.timeout" value="5000"></entry> 
<entry key="com.sun.jndi.ldap.read.timeout" value="5000"></entry> 
</map> 
</property> 
</bean> 

<bean id="dirContextValidator"  class="org.springframework.ldap.pool.validation.DefaultDirContextValidator" /> 

</beans> 
==============================================================================================================

- /resources/config/local/applicationSystemConfig.xml ���Ͽ��� 
<properties>   
<!-- =========================================================================================== --> 
<!-- auth2 LDAP Config Setting  --> 
<!-- =========================================================================================== --> 
<entry key="ldap.use.flag">true</entry> 
<entry key="ldap.url">ldap://localhost:1689</entry> 
<entry key="ldap.base">dc=samsung,dc=com</entry>   
</properties> 
==============================================================================================================

- JUnit Source Folder ���� 
1.  source Folder ����: auth-svc > Java Resources(���콺 �� Ŭ��) > New > source Folder 
1) Project Name: auth-svc 
2) Folder Name: src/main/java, src/main/resources, src/test/java, src/test/resources 

2. New java Package ���� 
1) Source Name: auth-svc/src/main/java,  auth-svc/src/test/java 
2) Name: com.samsungosp.auth.user.service 

3. New JUnit Test Case ���� 
1) Souce folder: auth-svc/src/test/java 
2) Package: com.samsungosp.auth, com.samsungosp.auth.oauth2.service 
3) Name: AuthServiceTest_authenticate_Test 
4) Class under test: com.samsungosp.auth.oauth2.service.AuthServiceResourceImpl 

4. src/test/resources �������� ���� ���� 
src/test/resources(���콺 �� Ŭ��) > New > Other > Genearl > Folder > New Folder(��â): 
Advanced(Tab): Ŭ��: User default location(üũ) > Folder Name: spring --> Finish(Ŭ��)  
--Advanced(Tab): Ŭ��: Vrtual Folder(üũ): Finish(Ŭ��) 

- JUnit ����� 
http://blog.naver.com/byebird?Redirect=Log&logNo=20140786449 
==============================================================================================================
   
������������������� 2012.03.14(��) �۾� ����������������
---> 07:10 ~ 22:00 

- IOSP(/oauth2) Prj
- ���߼���(Tomcat) ����(turnel ����) 
1. Host Name: localhost:70E 
2. ���Ӱ��� ����: auth 
3. Auth: Puttygen���� ��ȯ�� private key( *.ppk) 
---------------------------------------------------------------------------------------------------------------------------- 

- ���߼���(Tomcat) ����, ���� 
auth@ec2-174-129-6-106:~$ cd / 
auth@ec2-174-129-6-106:~$ cd /iosp/comp/auth/configuration  
auth@ec2-174-129-6-106:/iosp/comp/auth/configuration$ ls 
deploy  iosp-coherence-settings.sh  shutdown.sh  startup.sh 
auth@ec2-174-129-6-106:/iosp/comp/auth/configuration$ ./startup.sh 

- ���������� ����(Tomcat) �α� ���� 
auth@ec2-174-129-6-106:~$ tail -f /iosp/comp/auth/logs/catalina.out 
auth@ec2-174-129-6-106:~$ cd /iosp/comp/auth/logs 
auth@ec2-174-129-6-106:/iosp/comp/auth/logs$ tail -f catalina.out 
==============================================================================================================

- ws_TaemanJin_soapui ���� 
1. ws_TaemanJin_soapui 
D:\OSP2.5\workspace\IOSP\Workspace\Account\Auth\trunk\openapi-soapui-test\ws_TaemanJin_soapui-workspace.xml  
D:\OSP2.5\workspace\IOSP\Workspace\OpenAPITest\testcase\IOSP_Auth.xml 

http://localhost:8080/v2/auth/oauth2/authenticate 
declare namespace ns1='http://auth.osp2.com/auth/oauth2/authenticate'; 
==============================================================================================================

������������������� 2012.03.15(��) �۾� ����������������
---> 07:10 ~ 22:00 

- IOSP(/oauth2) Prj
- JUnit ����(AA �����, ������ ����: ȯ�� ���� ����) 
1. ���� ����: /auth-svc/src/test/resources/spring/applicationContext-resource.xml 
==============================================================================================================

- sample-svc ���� ���� 
1. ���� ����:  
org.springframework.context.NoSuchMessageException: No message found under code 'default_language' for locale 'ko_KR'. 
at org.springframework.context.support.AbstractMessageSource.getMessage(AbstractMessageSource.java:135)
2. ��ġ: /sample-lib/src/main/resources/properties/local/authConfig.xml ������ 
C:\OSP2.5\localhome\comp\auth\resources\properties\local ������ authConfig.xml���Ͽ��� ����Ǿ�� �� 
2. ����2: applicationContext-resource.xml ���Ͽ��� 
<bean id="outPropertySource" class="org.springframework.context.support.ReloadableResourceBundleMessageSource"> 
        <property name="basenames"> 
            <array> 
                 <value>file:${osp.home.dir}/comp/${component.name}/resources/properties/${osp.server.type}/authConfig</value>  
            </array> 
        </property> 
        <!--cacheSeconds �� -1 �̸� reload ���� ����--> 
        <property name="cacheSeconds" value="${outproperty.reload.second}"/> 
        <property name="defaultEncoding" value="UTF-8"/> 
    </bean>  
==============================================================================================================

- Document base ���� ó�� 
1. Eclipse���� �ش� ������Ʈ�� ���Ÿ� �մϴ�. 
2. ������ Eclipse�� �����Ͽ� ������Ʈ�� ���� ���·� ������ �մϴ�. 
3. �������� ���丮�� ���� ���丮 ���� ��� ������ �� ���� �ݴϴ�. 
4. Eclipse�� ���� �� ���ϴ�. 
5. �ƹ� �͵� ���� �ʱ� ���·� ������ �Ǹ� �ٽ� ���� �ؼ� �������̽��� ���� ���·� Ȯ�� ����� ���ݴϴ�. 
6. Eclipse�� �ٽ� �����Ͽ� SVN ���� �̿��Ͽ� ������Ʈ�� �ް� ������ �մϴ�. 

����:  
1. Tomcat > Add and Remove ���� Avaible Module �� ���� 
2. Console > java.lang.IllegalArgumentException: Document base C:\OSP2.5\workspace\.metadata\.plugins\org.eclipse. 
 wst.server.core\tmp1\webapps\auth-svc does not exist or is not a readable directory 
==============================================================================================================

# auth ���� ���� 
127.0.0.1 eu.auth.samsungosp.com 
#174.129.6.106  api.samsungosp.com 
# auth ���� ����(OSP 2..0) ==> ���� �� 
auth.samsungosp.com 
# 51. Open API 
http://devdoc.iosp.com 
==============================================================================================================

������������������� 2012.03.16(��) �۾� ����������������
---> 07:00 ~ 23:00 

- IOSP(/oauth2) Prj
- soap UI ���� �� ����(SDS �����: ������ ����, ������ ����) 
<client_id>j5p7ll8g33</client_id> ==> <client_id>gtd83co8hu</client_id> 

1. authenticate: AuthService_createUserAuthToken  ===> ���� 
@return  UserAuthToken 
AUT_1001 ~ AUT_1040 : invalid_request 
AUT_1701 ~ AUT_1702 : invalid_client 
AUT_1804 ~ AUT_1805 : invalid_grant 
AUT_1901            : unsupported_grant_type 
AUT_5001 ~ AUT_9001 : 500 

1) createUserAuthToken_200_01 
declare namespace ns1='http://localhost:9080/auth/oauth2/authenticate';  ==> ���� �� 
//ns1:Fault[1]/ns1:error_description[1]/text()  ==> ���� �� 
declare namespace ns1='${createUserAuthToken#Endpoint}/auth/oauth2/authenticate'; 
//ns1:Fault[1]/ns1:error_description[1]/text() 

2) createUserAuthToken_400_01(AUT_1008) 
declare namespace ns1='http://auth.osp2.com/auth/oauth2/authenticate'; 
//ns1:Fault[1]/ns1:error_code[1]/text() 

2. authorize: createAuthorizationCode 
@return AuthorizationCode. 
AUT_1001 ~ AUT_1045 : invalid_request 
AUT_1301 ~ AUT_1302 : access_denied 
AUT_1401            : unsupported_response_type 
AUT_5001 ~ AUT_9001 : 500 

3. token: createAccessToken 
@return  AccessToken. 
AUT_1001 ~ AUT_1024 : invalid_request 
AUT_1701            : invalid_client 
AUT_1802 ~ AUT_1807 : invalid_grant 
AUT_1901            : unsupported_grant_type 
AUT_5001 ~ AUT_9001 : 500 

4. deauthenticate 
5. revoke: revoke 
6. isvalid: isvalid 
==============================================================================================================

- ���� 
51. auth ���߼���(Tomcat) ==> localhost:70 
52. auth ���� ����(REST) ==>localhost:8080 
00. IOSP_HUB ==>50.16.215.98: 70 
L1689  210.118.57.208:1689 
L70  10.28.7.46:70 
L80  10.28.7.46:80 
L8080  10.28.7.46:8080 
01. IOSP(local)_LDAP ==>localhost:1689  
==============================================================================================================

- oaf-client-stub-gen1.0.5.jar ���� ���� ���� 
1. /auth-lib/pom.xml ���Ͽ��� �Ʒ� �κ� ���Ÿ� �ϰ� oaf-client-stub-gen1.0.5.jar ������ �����ϴ� Multiple  
markers at this line ������ ���ϴ�. 
<dependency>  
<groupId>com.samsungosp.profile</groupId> 
<artifactId>oaf-client-stub-gen</artifactId> 
<version>1.0.5</version> 
</dependency> 

2. SocialClientImpl.java ���Ͽ��� 
package com.samsungosp.auth.user.client;  //���� ��...  import com.samsungosp.openapi.client.GenericResourceClient;  
public class SocialClientImpl implements SocialClient {  //Multiple markers at this line   
- The type osp.oaf.openapi.client.GenericResourceClient cannot be resolved. It is indirectly referenced from   

==> social-client-1.jar ���Ͽ���(MemberServiceResourceClient.java ���Ͽ���) 
import osp.oaf.openapi.client.*; 
public class MemberServiceResourceClient extends GenericResourceClient { 
} 
3. ��ġ: /auth-svc/target/dependency/osp-generator-2.5.0-20120321.010932-15.jar Ȱ���� �� 
==============================================================================================================

- ���뵷 ��� �� ����(���� ���� ����) 
1. �츮���� 607 054789 18 532, ������: �þ�Ȳ����(�۱� �� ��(���� ����)) 
2012.03.12: 1,042,031�� 
2012.03.05: 1,042,031�� 
2012.02.17: 2,014,593�� 
2012.02.14: 2,014,593�� 
�������(~02��): -180,000�� 
�Ѿ�: 5,933,248�� 
==============================================================================================================

������������������� 2012.03.17(��) �۾� ����������������
---> 07:00 ~ 21:00 --> ��߱� ������(��ȣ: 0104) ����(����ȣ ��), ����OSP Proj ���߿Ϸ�(������) 

- IOSP(/oauth2) Prj
- soap UI ���� 
1. authenticate: AuthService_createUserAuthToken ===> ���� 
@return  UserAuthToken 
AUT_1001 ~ AUT_1040 : invalid_request 
AUT_1701 ~ AUT_1702 : invalid_client 
AUT_1804 ~ AUT_1805 : invalid_grant 
AUT_1901            : unsupported_grant_type 
AUT_5001 ~ AUT_9001 : 500 

1) createUserAuthToken_200_01 
declare namespace ns1='http://localhost:9080/auth/oauth2/authenticate';  ==> ���� �� 
//ns1:Fault[1]/ns1:error_description[1]/text()  ==> ���� �� 
declare namespace ns1='${createUserAuthToken#Endpoint}/auth/oauth2/authenticate'; 
//ns1:Fault[1]/ns1:error_description[1]/text() 

2) createUserAuthToken_400_01(AUT_1008) 
declare namespace ns1='http://auth.osp2.com/auth/oauth2/authenticate'; 
//ns1:Fault[1]/ns1:error_code[1]/text() 

2. authorize: createAuthorizationCode 
@return AuthorizationCode. 
AUT_1001 ~ AUT_1045 : invalid_request 
AUT_1301 ~ AUT_1302 : access_denied 
AUT_1401            : unsupported_response_type 
AUT_5001 ~ AUT_9001 : 500 

3. token: createAccessToken 
@return  AccessToken. 
AUT_1001 ~ AUT_1024 : invalid_request 
AUT_1701            : invalid_client 
AUT_1802 ~ AUT_1807 : invalid_grant 
AUT_1901            : unsupported_grant_type 
AUT_5001 ~ AUT_9001 : 500 

4. deauthenticate 
5. revoke: revoke 
6. isvalid: isvalid 
==============================================================================================================

- ���� ���� 
1. ����: [SetPropertiesRule]{Server/Service/Engine/Host/Context} Setting property 'source' to 'org.eclipse.jst.jee. 
server:auth-svc' did not find a matching property. 
2. ��ġ: 
1) tomcat ���� > clean 
2) eclipse ���� ���� �ǿ��� �ش� ������ ����Ŭ�� �Ͻø� overview �� ��ϴ�.  
server �ɼ� ���� publish module contexts to separate XML files üũ �Ͻð� 
�ٽ� ������ �����Ͻø� ���������� ��� ���� ���� ���� �ϽǼ� �����ǰ̴ϴ�. 
==============================================================================================================

������������������� 2012.03.18(��) �۾� ����������������
---> 07:00 ~ 18:00 

�������౸
08:00 ��� 
08:40 �ű��ʵ��б� 
08:50 �����౸(2:0 ��) 
10:40 �����౸2(3:0 ��): 1�� ���� 
11:20 ���� 
11:20 �߽�(�ѻ�� �� ������� ��) 
12:30 ���� 
13:30 �Ͱ� 
17:10 �Ե��ó׸�(��ī�� ����)(�躸�̾�, �Ĺ�, �Ĺ� �κ�) 
17:20 ��ȭ ��û(������ ����: �Ѱ���, ���¿�, ������, ����) ==> ����, �ݶ� 
19:30 ���� 
19:50 ȣ����(���� ��: 8�� õ��) 
20:30 ���� 
21:40 �Ͱ� 
==============================================================================================================

������������������� 2012.03.19(��) �۾� ����������������
---> 07:15 ~ 00:00 --> ö�� 

- IOSP(/oauth2) Prj
- soap UI ���� 
1. createAuthorizationCode_response_type_AUT_1009_01 
http://localhost:9080/auth/oauth2/authorize?response_type=code&userauth_token=6Lft4caWSd&client_id=j5p7ll8g33  
http://localhost:9080/auth/oauth2/authorize?userauth_token=6Lft4caWSd&client_id=j5p7ll8g33 
@OSP( category="auth", function="G02") 
@RequestMapping(value="/authorize", method=RequestMethod.GET) 
public ModelAndView createAuthorizationCode(OSPHttpHeaderInfo headers,  
@RequestParam(value="response_type", required=false) String response_type,  
@RequestParam(value="redirect_uri", required=false) String redirect_uri) throws Exception {  

if (response_type == null   response_type.isEmpty()) {   //response_type�� null �̸�  
OSPResultMessage.raiseException(Constants.BAD_REQUEST,  
"AUT_1009", MessageUtil.getMessage("AUTH.AUT_1009.400"), this.getClass().getName()); 
                //AUTH.AUT_1009.400=The value of response_type parameter must be present and have a non-empty value. 
} 
} 
==> ó�� ���: response_type�� �ʼ������� �ɼǰ����� ���� ó�� 

2. isValid_password_AUT_1805_02 
http://localhost:9080/auth/user/isvalid 
Oauth2VerifyBizImpl - [isValidUser()] ==> [test_3] [@@@ 02. Password] --> [Incorrect Password..] 
if (strDifUserId.equals("1")) { //Incorrect Password �̸� 
log.debug("[isValidUser()] ==> [test_3] [@@@ 02. Password] --> [AUTH.AUT_1805.400]"+ MessageUtil.getMessage("AUTH.AUT_1805.400") );   
OSPResultMessage.raiseException(Constants.BAD_REQUEST,  
"AUT_1805", MessageUtil.getMessage("AUTH.AUT_1805.400"), this.getClass().getName()); //AUTH.AUT_1805.400=The password is incorrect. 
} 
==============================================================================================================

- oauth2 ��� Ȯ�� 
1. Query String ��� Ȯ�� 
2. Response ���: Jason ��� 
@RequestMapping(value="/authenticate", method=RequestMethod.POST, headers={"accept=text/xml, application/json"})   
//accept: �������� ������ Ÿ�� 
==============================================================================================================

- createUserAuthToken() 
${#TestSuite#mobile_country_code}  ==> 234 
${createUserAuthToken#country_code} ==> KOR 
==============================================================================================================

������������������� 2012.03.20(ȭ) �۾� ����������������
---> 00:00 ~ 18:00 

- IOSP(/oauth2) Prj
- soap UI ����(Jason ������� �����ؼ� ���� ������ �ø�) 
1. createAuthorizationCode_response_type_AUT_1009_01 
==============================================================================================================

- soapUI Test Results ���� 
1. Test Suite���� �����(��� ���� ��) > IOSP_Auth(���콺 �� Ŭ��) > Launch TestRunner(Ŭ��): Launch  
TestRunner(��â) --> Reports(Tab): �� 3�� üũ ==> Launch(Ŭ��) 
==============================================================================================================

- eclipse ���� ���� ó��(SAVE ����) 
1. eclipse�� ���� �� C:\OSP2.5\workspace\.metadata\.plugins/org.eclipse.core.resources ������ �����ؼ�  
���� ��, ���� 
2. eclipse ���� 
3. eclipse ���� 
4. ������  ����C:\OSP2.5\workspace\.metadata\.plugins/org.eclipse.core.resources �پ�ֱ� ó�� 
==============================================================================================================

- sf ����(�̼��� ���� ��û) 
validateUserAccountByEmailId_200_OK_01 ==> ��й�ȣ Ʋ�� 
validateUserAccountByEmailId_400_SSO_1000_02 ==> ���� �Ϸ� 
validateUserByEmailID_200_OK_01 failure==> ��й�ȣ Ʋ�� 
validateUserByEmailID_400_SSO_1000_02   ==> ���� �Ϸ� 
==============================================================================================================

- 01. REST Client(ũ��) 
chrome-extension://hgmloofddffdnphfgcellkdfbfbjeloo/RestClientApp.html 
==============================================================================================================

- EasyMock 2.3 �⺻���� 
http://www.easymock.org/EasyMock2_3_Documentation_ko.html 
==============================================================================================================

������������������� 2012.03.21(��) �۾� ����������������
---> 07:05 ~ 22:20 

- IOSP(/oauth2) Prj
- Tomcat ���� 
1. Tomcat installation directory ���� 
Tomcat installation directory: C:\OSP2.5\server\apache-tomcat-6.0.35(���� server ������ C:\Program Files�� ����) 
--------------------------------------------------------------------------------------------------------------------------- 

- Address already in use: JVM_Bin ����(���� Tomcat ���� ���ÿ� 2�� ����� ��)  
1. ��ġ: Tomcat ����(���� Ŭ��) > Overview -> Ports: Tomcat admin port: 8005 --> 9005�� ���� 
--------------------------------------------------------------------------------------------------------------------------- 

- Oracle DB ���� ���� 
1. ����: DEBUG: org.springframework.jdbc.support.SQLErrorCodesFactory - Database product name cached for DataSource  
[oracle.jdbc.pool.OracleDataSource@1f18cd5]: name is 'Oracle' 
[2012-03-21] DEBUG: org.springframework.jdbc.support.SQLErrorCodesFactory - SQL error codes for 'Oracle' found 
### Error querying database.  Cause: java.sql.SQLException: ORA-00942: ���̺� �Ǵ� �䰡 �������� �ʽ��ϴ� 
2. ��ġ:  
1) /oauth2-svc/pom.xml ���Ͽ��� auth-lib�� oauth2-lib�� ���� �� Maven ���� �ٽ� �� �� 
<dependency> 
    <groupId>com.samsungosp</groupId> 
    <artifactId>oauth2-lib</artifactId> 
    <version>0.0.1-SNAPSHOT</version> 
</dependency> 

2)  /auth-lib/src/main/resources/config/local/applicationSystemConfig.xml ���Ͽ��� OSSOC1 -> SPRF�� ������ �� 
<!-- ======================================== --> 
<!--         ORACLE JDBC Configuration        --> 
<!-- ======================================== -->     
<entry key="oracle.jdbc.driverClassName">oracle.jdbc.driver.OracleDriver</entry>  
<entry key="oracle.jdbc.url">jdbc:oracle:thin:@50.16.234.94:1521:DEVIOSP1</entry> 
<!--<entry key="oracle.jdbc.username">OSSOC1</entry>  --> 
<!--<entry key="oracle.jdbc.password">osp123</entry> --> 
===>  
<entry key="oracle.jdbc.username">SPRF</entry> <!-- SPRF(SPRF/SPRF), OSSOC1(OSSOC1/osp123)  --> 
<entry key="oracle.jdbc.password">SPRF</entry> 
==============================================================================================================

- Eclipse workspace ����(P4 ����ȭ �ȵ� ��(�缳��)) 
C:\OSP2.5\tools\eclipse_2\configuration\.settings/org.eclipse.core.net ���Ͽ��� 
RECENT_WORKSPACES=D\:\\OSP2.5\\workspace 
RECENT_WORKSPACES=C\:\\OSP2.5\\workspace 

1. /auth-svc ���� 
1) RECENT_WORKSPACES=D\:\\OSP2.5\\workspace 
2) D:\OSP2.5\workspace\IOSP\Source\2.Account\Auth\trunk�� ���� 

2. /oauth2-svc ���� 
1) RECENT_WORKSPACES=C\:\\OSP2.5\\workspace 
2) D:\OSP2.5\workspace\IOSP\Source\2.Account\Auth\trunk�� ���� 

- P4 ����ȭ �ȵ� �� 
1. D:\OSP2.5\workspace\IOSP\Source\2.Account\Auth\trunk\oauth2-svc\.settings ���� �б� ���� ���� 
==============================================================================================================

- maven���� jar�� �� ã�� �� 
1. ����: /auth-lib/pom.xml ���Ͽ��� license-coherencecluster-manager ���������� ǥ�õ� 
2. ��ġ 
1) Maven�� �⺻������ http://repo1.maven.org/maven2/ �� repository�� ��� 
2) ���� ������ Local repository ����(Preferences > Maven > User Settings(��â) 
User Settings(open file): C:\OSP2.5\lib_repository\settings.xml  
==============================================================================================================

������������������� 2012.03.22(��) �۾� ����������������
---> 07:05 ~ 21:40 

- IOSP(/oauth2) Prj
- Open API Online documentation ���� 
1. �ѱ� param �������� ���� 
2. End Point URI���� v2/auth ���� ===> http://api.samsungosp.com/v2/auth/auth 
==============================================================================================================

- oaf-client-stub-gen1.0.5.jar ���� ó�� �м�(eclipse 2 ����(oauth2-sv)) 
1. /auth-lib/pom.xml ���Ͽ��� �Ʒ� �κ� ���Ÿ� �ϰ� oaf-client-stub-gen1.0.5.jar ������ �����ϴ� Multiple  
markers at this line ������ ���ϴ�. 
<dependency>  
<groupId>com.samsungosp.profile</groupId> 
<artifactId>oaf-client-stub-gen</artifactId> 
<version>1.0.5</version> 
</dependency> 

2. SocialClientImpl.java ���Ͽ��� 
package com.samsungosp.auth.user.client;  //���� ��...  import com.samsungosp.openapi.client.GenericResourceClient;  
public class SocialClientImpl implements SocialClient {  //Multiple markers at this line   
- The type osp.oaf.openapi.client.GenericResourceClient cannot be resolved. It is indirectly referenced from 

==> social-client-1.jar ���Ͽ���(MemberServiceResourceClient.java ���Ͽ���) 
import osp.oaf.openapi.client.*; 
public class MemberServiceResourceClient extends GenericResourceClient { 
} 

3. ��ġ:  
1) osp-generator-2.5.0-SNAPSHOT.jar ������ import osp.oaf.openapi.client.GenericResourceClient; Ŀ���� �� 
2) /auth-lib/pom.xml ���Ͽ���(social-client-1.jar ���� profile-client.jar�� ���� �� Maven ���� �ٽ� �� ��) 
<!-- social-client(/auth2): /profile-client.jar  --> 
<dependency> 
<groupId>com.samsungosp.profile</groupId> 
<artifactId>social-client</artifactId> 
<version>1.0</version> 
</dependency> 
==============================================================================================================

������������������� 2012.03.23(��) �۾� ����������������
---> 06:55 ~ 21:40 

- IOSP(/oauth2) Prj
- ��й�ȣ ���� 
1. IdmService_makePasswordForEmailID > REST ChangePasswordForEmailID 
- /IdmDAOImpl.java ���Ͽ��� 
/* ������� �н����带 �ʱ�ȭ */ 
public int makePartyIdentificationPassword(UserAuthVO vo) throws Exception { 
	HashMap<String, String> paramMap = new HashMap<String, String>(); 
	paramMap.put("authStatusCode", vo.getAuthStatusCode()); 
	paramMap.put("password", vo.getPassword()); 
	paramMap.put("modifyRegionCode",CodeUtils.GetRegionCodeDouble()); 
	paramMap.put("loginID", vo.getLoginID()); 
	paramMap.put("authTypeCode", vo.getAuthTypeCode()); 
	log.debug("[makePartyIdentificationPassword()] ==> [DB��ȸ_��û Į��(�н����� �ʱ�ȭ()]  
	[getAuthStatusCode()]"+ vo.getAuthStatusCode() +"[GetRegionCodeDouble()]"+ CodeUtils.GetRegionCodeDouble()  
	+"[getAuthTypeCode()]"+ vo.getAuthTypeCode() +"[vo.getLoginID()]"+ vo.getLoginID() +"[vo.getPassword()]"+ vo.getPassword() ); 
	     
	return getSqlSession().update("com.samsungosp.sf.idm.dao.idmDAO.makePartyIdentificationPassword", paramMap); 
} 
---------------------------------------------------------------------------------------------------------------- 

/* ������� �н����带 �ʱ�ȭ Update */ 
UPDATE /* [idmDAO.xml].[com.samsungosp.sf.idm.makePartyIdentificationPassword].[09] Modified(20100306) */ 
       TCSO_PRTY_IDNTN 
   SET USR_ATNT_STS_CD = 3,   --����� �����ڵ� 
       USR_PWD = 'sM6HMRYe4+/ZoPjWxUAvtWca3SQ=', --��й�ȣ 
       MDFY_DT = SYSDATE, --������ 
       MDFY_RGN_CD = #{modifyRegionCode} 
 WHERE SF_LGN_ID ='@yopmail.com' --login ID 
   AND LGN_ID_TP_CD = '003' --�����ڵ� 
   AND DEL_YN_FG = 'N'  -�������� 
--; 

===> @yopmail.com/osp123(sM6HMRYe4+/ZoPjWxUAvtWca3SQ=) 
---------------------------------------------------------------------------------------------------------------- 
    
- /IdentityBizImpl.java ���Ͽ��� 
/**  Password�� ��ȣȭ�Ѵ�.  */ 
public String getEncPassword(String userID,String password)  {  
 String rst = null; 
        String strPassword = "osp123";   //TEST =====> �н����� ���� ���� 
     log.debug("[getEncPassword()] [�н����� Ȯ��] @@@@ ==> [userID]"+ userID +"[password]"+ password +"[strPassword]"+ strPassword );  
      
        if("".equals(strPassword)) {  //strPassword�� null �̸� 
         password = password; 
        } else { 
         password = strPassword; 
        } 
        log.debug("[getEncPassword()] ==> [���� ��û �н�����] @@@@ ==[userID]"+ userID +"[password]"+ password );  
         
        try{ 
            rst =  com.samsungosp.sf.common.Util.hashData(addUserIDYN == true ? userID+password : password, "SHA-1"); 
             
        }catch(Exception e){ 
            //if(logger.isErrorEnabled())logger.error(e); 
        } 
         
        log.debug("[getEncPassword()] ==> [rst_end]"+ rst );  
        return rst; 
} 

- /IdentityBizImpl.java 
vo.setPassword(getEncPassword(vo.getUserID(),vo.getPassword())); 
==============================================================================================================

- soap UI Groovy Script ����� 
String newPassword = context.expand( '${MakePasswordForEmailID - Request 1#Response}' ) 
println("[=======================================]");  
println("[temporary password��������] ==> [newPassword]"+ newPassword );  
println("[=======================================]");  
testRunner.testCase.testSuite.setPropertyValue( "newPassword",newPassword ) 
==============================================================================================================

- P4���� import ���� ���� �ѱ� ���� 
1. sample �ҽ� ===> //OSP/IOSP/Workspace/Architect/Sample/trunk/sample-svc/ 
2. ��ġ:  /auth-svc(���콺 �� Ŭ��) > properties(��â) 
1) Resource(Tab) > Text file encoding: Other: UTF-8�� ���� 
--------------------------------------------------------------------------------------------------------- 

- P4 �ҽ� ��ġ 
1. sample �ҽ� ===> //OSP/IOSP/Workspace/Architect/Sample/trunk/sample-svc/ 
2. auth �ҽ� ==> //OSP/IOSP/Workspace/Account/Auth/auth-svc/ 
3. sf 2.0 �ҽ� ==> //OSP/SERVER/sf/trunk/sf-ear/* 
4. profile 2.0 �ҽ� ==> //OSP/OSPS2.0/OSP2_PJT/Profile/trunk/profile-ear/ 
==============================================================================================================

- JUnit ���� 
1. ���� Start ���� 
���: [SetPropertiesRule]{Server/Service/Engine/Host/Context} Setting property 'source' to 'org.eclipse.jst.jee.server:auth-svc'  
did not find a matching property. 
�ɰ�: Error configuring application listener of class org.springframework.web.util.Log4jConfigListener 
java.lang.ClassNotFoundException: org.springframework.web.util.Log4jConfigListener 
2. ��ġ: tomcat ����(���콺 �� Ŭ��) > clean 
--------------------------------------------------------------------------------------------------------------------------- 

1. ���� Start ���� 
ERROR: org.springframework.test.context.TestContextManager - Caught exception while allowing TestExecutionListener  
[org.springframework.test.context.support.DependencyInjectionTestExecutionListener@1fbe226]  
to prepare test instance [com.samsungosp.auth.oauth2.service.AuthServiceTest_authenticate_Test@161dfb5] 
java.lang.IllegalStateException: Failed to load ApplicationContext 

Caused by: org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'oauth2Biz': 
Injection of autowired dependencies failed; nested exception is org.springframework.beans.factory.BeanCreationException:  
Could not autowire field: private com.samsungosp.auth.oauth2.biz.Oauth2VerifyBiz com.samsungosp.auth.oauth2.biz. 
Oauth2BizImpl.oauth2VerifyBiz; nested exception is org.springframework.beans.factory.BeanCreationException:  
==============================================================================================================

- ���� �籸 ��ȣȸ(��û ����)2 
21:40 ���  
22:30 ��� �籸Ŭ��: ���� �籸 ��ȣȸ(���� ��û ����), ȸ�� ���� 
23:00 �ý��� ����(�����: ���̺�� �����ý���(��������, ���ĥ���̿�),�õ�ý���(������ ������ �ɾ�ġ��)) 
00:00 �籸 ����(ȸ��(�Ｚ����), 2:1��(100)) 
03:00 �籸 ����(����, 2:0 ��(100)) 
05:00 �籸 ����(������, 1:1 ��(100)) 
06:00 ����  
07:00 ��� 
==============================================================================================================

������������������� 2012.03.24(��) �۾� ����������������
---> 07:00 ~ 14:20  

- IOSP(/oauth2) Prj
- JUnit ���� 
1. P4 �α����� �ȵǾ ���� ��� 
==============================================================================================================

������������������� 2012.03.25(��) �۾� ����������������
---> 07:00 ~ 18:00 

�������౸
07:00 ��� 
08:00 �ű��ʵ��б� 
08:10 �����౸(3:1 ��) 
09:00 �����౸2(1:0 ��): ��Ű�� 
1000 �����౸2(4:2 ��) 
10:50 �����౸3(6:2 ��) 
11:20 ���� 
11:20 �߽�(��ġ���: ȿ������ ����(������ 4���� ���� ��)) ==> �ο˼�(5434-1778): ���� ������ �Ż絿 590-12 
12:50 ���� 
13:00 ��ǿ�(��ȫ�� ��) 
14:00 ��ȭ(��) 
17:00 ö��(���θ��, ��� �Ĺ�) 
18:00 ���� 
18:20 ���� 
19:20 �Ͱ� 
23:50 ��ħ 
==============================================================================================================

������������������� 2012.03.26(��) �۾� ����������������
---> 07:10 ~ 20:00 

- IOSP(/oauth2) Prj
- JUnit ���� 
1. JUnit ȯ�� ���� 
-Dosp.home.dir="C:\OSP2.5\localhome" -Dcomponent.name="auth" -Dosp.server.type="local"  
-Dtangosol.coherence.cacheconfig="C:\coherence-putter-utility\osp2_cache_config.xml"  
-Dtangosol.coherence.clusteraddress="224.3.10.81" -Dtangosol.coherence.clusterport=30981 -Dtangosol.coherence.ttl=0 
--------------------------------------------------------------------------------------------------------- 

- 1. JUnit ���� Start ���� 
ERROR: org.springframework.test.context.TestContextManager - Caught exception while allowing TestExecutionListener  
[org.springframework.test.context.support.DependencyInjectionTestExecutionListener@10d4f27] to prepare test instance  
[com.samsungosp.auth.oauth2.service.AuthServiceTest_authenticate_Test@3b8b49] 
java.lang.IllegalStateException: Failed to load ApplicationContext 

Caused by: org.springframework.beans.factory.BeanInitializationException: Could not load properties; nested exception is  
java.io.FileNotFoundException: class path resource [config/${osp.server.type}/applicationSystemConfig.xml] cannot be  
opened because it does not exist 
2. ��ġ: /applicationContext-datasource.xml ���Ͽ��� 
 <!--  <context:property-placeholder location="classpath:config/${osp.server.type}/applicationSystemConfig.xml"/>  //�ּ� ó��--> 
<bean id="propertyConfigurer" class="com.samsungosp.framework.crypto.EncryptablePropertyPlaceholderConfigurer"> 
	<property name="locations"> 
	    <list> 
	<value>classpath:config/local/applicationSystemConfig.xml</value> 
	    </list> 
	</property> 
</bean>  
==============================================================================================================

������������������� 2012.03.27(ȭ) �۾� ����������������
---> 07:05 ~ 21:00 --> �߽�(�߱���(���: �ڽ��丮): �輺ä ����, ����, PM) 

- IOSP(/oauth2) Prj
- JUnit ����  
- 1. JUnit ���� Start ���� 
ERROR: org.springframework.test.context.TestContextManager - Caught exception while allowing TestExecutionListener  
[org.springframework.test.context.support.DependencyInjectionTestExecutionListener@123defe] to prepare test instance 
[com.samsungosp.auth.oauth2.service.AuthServiceTest_authenticate_Test@8ee016] 
java.lang.IllegalStateException: Failed to load ApplicationContext 
at org.springframework.test.context.TestContext.getApplicationContext(TestContext.java:308)  
Caused by: org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'userAuthDAO':  
Injection of autowired dependencies failed; nested exception is org.springframework.beans.factory.BeanCreationException:  
Could not autowire method: public final void org.mybatis.spring.support.SqlSessionDaoSupport.setSqlSessionFactory 
(org.apache.ibatis.session.SqlSessionFactory); nested exception is org.springframework.beans.factory.BeanCreationException:  
Error creating bean with name 'defaultSqlSessionFactory' defined in file [D:\OSP2.5\workspace\IOSP\Workspace 
\Account\Auth\trunk\auth-svc\target\test-classes\spring\applicationContext-datasource.xml]: Invocation of init  
method failed; nested exception is java.lang.NoClassDefFoundError: com/samsungosp/auth/user/dao/commonDAO  
(wrong name: com/samsungosp/auth/user/dao/CommonDAO) 
2. ��ġ: CommonDAO.java�� ���� ��ҹ��� ���� �� ��  
==============================================================================================================

- SoapUI ���� �Ϸ�(InterceptorService) 
1. ��ũ�����̽�: ws_TaemanJin_soapui 
D:\OSP\4.workspace\SERVER\oat\trunk\openapi-soapui-test\ws_TaemanJin_soapui-workspace.xml 
2. ������Ʈ ����: OSPS_oauth2 
D:\OSP\4.workspace\SERVER\oat\trunk\openapi-soapui-test\src\OSPS_oauth2 
3. Rest Service ���� 
 1) Service Name: InterceptorService 
 2) Service Endpoint: http://localhost:8080 
4. Rest Resource ���� 
 1) Resource Name: initConfigPool, isAppIdEntryExist, getSession, isExistsNonce, addNonce, 
 getAppIdEntry, getNonce, isBypass, shouldDenyInvalidSignature, shouldCheckTimeStamp, 
 shouldCheckNonce, shouldCheckSignature, isValidTimeStamp 
 2) Resource Path/Endpoint: /security/acc/initConfigPool, /security/acc/isAppIdEntryExist, /security/acc/getSession, 
 /security/acc/isExistsNonce, /security/acc/addNonce, 
/security/acc/getAppIdEntry, /security/acc/getNonce, /security/acc/isBypass, /security/acc/shouldDenyInvalidSignature, 
/security/acc/shouldCheckTimeStamp, 
/security/acc/shouldCheckNonce, /security/acc/shouldCheckSignature, /security/acc/isValidTimeStamp  

5. Rest Method ���� 
 1) Method Name: initConfigPool, isAppIdEntryExist, getSession, isExistsNonce, addNonce, 
 getAppIdEntry, getNonce, isBypass, shouldDenyInvalidSignature, shouldCheckTimeStamp, 
 shouldCheckNonce, shouldCheckSignature, isValidTimeStamp 
 2) http Method : GET 

6. Test Suite ���� 
1) New TestSuite: InterceptorService_initConfigPool, InterceptorService_isAppIdEntryExist, InterceptorService_getSession, 
InterceptorService_isExistsNonce, InterceptorService_addNonce, 
 InterceptorService_getAppIdEntry, InterceptorService_getNonce, InterceptorService_isBypass, 
 InterceptorService_shouldDenyInvalidSignature, InterceptorService_shouldCheckTimeStamp, 
 InterceptorService_shouldCheckNonce, InterceptorService_shouldCheckSignature, InterceptorService_isValidTimeStamp 

7. Test Case���� 
1) New TesetCase: initConfigPool_200_01, isAppIdEntryExist_200_01, getSession_200_01, isExistsNonce_200_01, addNonce_200_01, 
 getAppIdEntry_200_01, getNonce_200_01, isBypass_200_01, shouldDenyInvalidSignature_200_01, shouldCheckTimeStamp_200_01, 
 shouldCheckNonce_200_01, shouldCheckSignature_200_01, isValidTimeStamp_200_01 

1) New TesetCase: initConfigPool_400_SSO_1000_02, isAppIdEntryExist_400_SSO_1000_02, 
getSession_400_SSO_1000_02, isExistsNonce_400_SSO_1000_02, addNonce_400_SSO_1000_02, 
 getAppIdEntry_400_SSO_1000_02, getNonce_400_SSO_1000_02, isBypass_400_SSO_1000_02, 
 shouldDenyInvalidSignature_400_SSO_1000_02, shouldCheckTimeStamp_400_SSO_1000_02, 
 shouldCheckNonce_400_SSO_1000_02, shouldCheckSignature_400_SSO_1000_02, isValidTimeStamp_400_SSO_1000_02 

2) New TesetCase: setUp ===> Groovy Script: userName_�������� 
String userName = "@yopmail.com";   //login ���̵�(@yopmail.com, 1semi.*@*.*) 
testRunner.testCase.testSuite.setPropertyValue("userName", userName ) 
3) New TesetCase: tearDown 
8. Add Step ���� 
1) initConfigPool_200_01 > Test Steps(���콺 �� Ŭ��) > Add Step > REST Test Request: initConfigPool(Ȯ��) 
> Select REST method to invoke for request: InterceptorService_initConfigPool -> initConfigPool -> Request 1(Ȯ��) 
==============================================================================================================

- 1. DB ���� ���� ���� 
DEBUG: org.springframework.jdbc.datasource.DataSourceUtils - Fetching JDBC Connection from DataSource 
org.springframework.jdbc.CannotGetJdbcConnectionException: Could not get JDBC Connection; nested exception  
is org.apache.commons.dbcp.SQLNestedException: Cannot create PoolableConnectionFactory (Communications link failure 
2. ��ġ: C:\OSP2.5\localhome\comp\auth\config ���� �������� �� �� 
==============================================================================================================

- 20012�� �Ż� ����ȸ ȸ�� �۱� 
1. ��������(110-318-342822), ������: ��â��(�ѹ�) ==> 6����(1~3��) �۱� 
==============================================================================================================

������������������� 2012.03.28(��) �۾� ����������������
---> 07:05 ~ 21:20 

- IOSP(/oauth2) Prj
- JUnit ����  
- 1. JUnit ���� Start ����  
==============================================================================================================

- 1. ���� Start ���� 
Multiple annotations found at this line: 
- No setter found for property 'loggingExcludedUrlMappings' in class 'com.samsungosp.framework.interceptor. 
RequestInfoInterceptor' [config set: auth-svc/web- context] 
- No setter found for property 'loggingExcludedUrlMappings' in class 'com.samsungosp.framework.interceptor. 
RequestInfoInterceptor' 
2. ��ġ: /servlet-interceptor.xml �ٽ� Update ����(�����ʿ��� �����ؼ� ���� ��) 
==============================================================================================================

- 1. ���� Start ���� 
DEBUG: org.springframework.jdbc.datasource.DataSourceUtils - Fetching JDBC Connection from DataSource 
org.springframework.jdbc.CannotGetJdbcConnectionException: Could not get JDBC Connection; nested exception 
is org.apache.commons.dbcp.SQLNestedException: Cannot create PoolableConnectionFactory (Communications link failure 
2. ��ġ:  
1) Spring���� JDBC �����Ͽ� DB�� ������ ���� ���� ������ �߻��Ͽ���. �˰��� password�� Ʋ�ȴ�.  
CannotGetJdbcConnection ���� �߻��� DB ���� ���õ� properties�� �� ���� Ǯ���� �ʹ�. 
2) /local/applicationSystemConfig.xml ���Ͽ��� username, password Ȯ�� 
<!-- ======================================== --> 
<!--         ORACLE JDBC Configuration        --> 
<!-- ======================================== -->     
<entry key="oracle.jdbc.driverClassName">oracle.jdbc.driver.OracleDriver</entry> 
<!--entry key="oracle.jdbc.driverClassName">core.log.jdbc.driver.OracleDriver</entry--> 
<entry key="oracle.jdbc.url">jdbc:oracle:thin:@50.16.234.94:1521:DEVIOSP1</entry> 
<entry key="oracle.jdbc.username">wsoc</entry>   
<entry key="oracle.jdbc.password">osp123</entry> 
==============================================================================================================

1. ���� Start ���� 
org.springframework.beans.factory.BeanDefinitionStoreException: Failed to load bean class: com.samsungosp.auth.user.dao.CommonDAOImpl;  
nested exception is java.io.FileNotFoundException: class path resource [org/mybatis/spring/support/SqlSessionDaoSupport.class]  
cannot be opened because it does not exist 
2.  
1) C/:\OSP2.5\lib_repository\repository ���� ���� ó���ϰ� �ٽ� ���� �� �� 
2) //applicationContext-datasource.xml ���Ͽ���  username, password ��������� �־��� �� 
<!-- ORACLE DB POOL datasource --> 
<bean id="defaultDataSource" class="oracle.jdbc.pool.OracleDataSource" destroy-method="close"> 
	<property name="connectionCachingEnabled" value="true" />    
	<property name="URL" value="jdbc:oracle:thin:@50.16.234.94:1521:DEVIOSP1" />  
	<property name="user" value="wsoc" /> 
	<property name="password" value="osp123" />         
	<!--  <property name="URL" value="${oracle.jdbc.url}" /> --> 
	<!-- <property name="user" value="${oracle.jdbc.username}" /> --> 
	<!-- property name="password" value="${oracle.jdbc.password}" /> --> 
	<property name="connectionCacheProperties"> 
	    <value>   
	MinLimit:10 
	MaxLimit:30 
	InitialLimit:1 
	ConnectionWaitTimeout:120 
	InactivityTimeout:180 
	ValidateConnection:true 
	    </value> 
	</property> 
</bean> 
==============================================================================================================

������������������� 2012.03.29(��) �۾� ����������������
---> 07:05 ~ 21:30 

- IOSP(/oauth2) Prj
- JUnit ����  
1. JUnit ���� Start ���� 
System.out.println("[testGetSample()] ==> [result]"+ result +"\n" ); 
==============================================================================================================

- JUnit���� 
1. ���� ����: Test class not found in selected project 
2. ��ġ: 2��° �Լ��� @Test(expected=OSPException.class) �߰� 
==============================================================================================================

- Prevent ó��   
1. Build ����: Command â���� ���� 
1) C:\prevent-win32-4.5.1\bin> msc-build-java.bat 
2. ���� ���� �� �ٿ��ֱ� 
1) P4 : //OSP/IOSP/Co-work/3. Prevent/PVT#1/2012-03-30/auth-llib.zip, auth-svc.zip 
==============================================================================================================

- �����м�(JTest) 
1. P4: //OSP/IOSP/Co-work/4. �����м�/2012-03-30/auth-2012-03-29.pdf 
2. Report Server ���� 
1) Host name: 10.254.218.81 
2) User name: admin  
3) Password : admin 
4) Project ����: IOSP_AUTH(Ŭ��) 
3. Project Property ����  
1) Key: auth-svc, Value: OSPS 
2) Key: auth-lib, Value: OSPS 
3) Key: acc-pool-manager, Value: OSPS 
==============================================================================================================

- ������ ��� ���� 
1. �μ��ڵ� ����(�Ｚ SCX-7635_7645 Series PCL6) 
2. �μ� �⺻���� Ŭ���� ���� �߻� 
3. ���� ����(������ ���): http://www.11st.co.kr ==> ����(Virus �Ծ��ٰ� ������) 
http://www.samsung.com/sec/support/download/supportDownloadMain.do 
==============================================================================================================

������������������� 2012.03.30(��) �۾� ����������������
---> 07:05 ~ 21:40 

- IOSP(/oauth2) Prj
- stg#1 ���� ���� 
1. ���� OSP_AA_branch Label & Merge 
1) ����OSP.AA Deployment branch Label & Merge Guide.ppt ���� ���� 
----------------------------------------------------------------------------------------------------------------------------- 

- hosts ���� ���� 
1. hosts ���� 
1) iosp_dev_hosts_direct(���� Ŭ��) --> ���߼��� ȣ��� ��� 
2) iosp_stg1_hosts_direct(���� Ŭ��) --> STG���� ȣ��� ��� 
2. STG ���� 
## EUCloud: 176.34.99.237 ===> 71. STG����_EUCloud_71: 176.34.99.237:70  
## EUIDC: 176.34.99.254 ===> 72. STG����_EUIDC_72: 176.34.99.254:70  --> tomcat ȣ��� ��� 
## USCloud: 184.73.161.211 ===> 73. STG����_USCloud_73: 184.73.161.211:70 
## USIDC: 184.169.145.113 ===> 74. STG����_USIDC_74: 184.169.145.113:70 
## CNIDC: 122.248.232.129 ===> 75. STG����_CNIDC_75: 122.248.232.129:70 
==============================================================================================================

- Oracle DB ���� 
1. ���� DB ���� 
1) ȣ��Ʈ(H): 50.16.234.94: 1521 
2) ���� �̸�(A)��: IOSPS1US 
3) �����(U): wsoc/osp123   

3. stg#1 DB ����(EU-IDC ����) 
1) ȣ��Ʈ(H): 127.0.0.1: 1521 ===> �ͳθ�(176.34.96.106:1521)  
2) ���� �̸�(A): IOSPS1EU 
3) �����(U): wsoc/osp123  

2. stg#1 DB ����(US-IDC ����): ��� ���� 
1) ȣ��Ʈ(H): 127.0.0.1: 1521 ===> �ͳθ�(184.169.135.80 :1521) 
2) ���� �̸�(A): IOSPS1US 
3) �����(U): wsoc/osp123  
==============================================================================================================

- stg#1���� ��ȸ ���� @@@@@@@@@@@  ===> table �� ���� 
SELECT 
/* [commonDAO.xml].[com.samsungosp.profile.user.common.getTNCContentByMobileCountryCode].[06] */ 
/*+ INDEX_DESC (TSCO_TNC_CTNT TSCO_TNC_CTNT_PK) */ 
LANG_CD 
, TNC_VER_TXT 
, REP_LANG_FG 
, TNC_VER_FNL_FG 
FROM 
 TSCO_TNC_CTNT 
==============================================================================================================

- client stub ���� 
1. /stub-client-sample/src/com/samsungosp/client/auth/AuthServiceClient.java 
2. http://devdoc.iosp.com/download/authauth-client.jar ���� �����Ͽ� 
D:\OSP2.5\workspace\IOSP\Workspace\ClientStubSample\trunk\lib\auth-client.jar ���� ����� 
==============================================================================================================

- �� ���� �ݾ� �۱�(���� ���� ��õ) 
1. ����(22504756017792), ������: ����� ==> 3�� 5õ�� �۱� 
==============================================================================================================

21:40 ���  
22:30 ��� �籸Ŭ��: ���� �籸 ��ȣȸ(���� ��û ����), ȸ�� ���� 
23:00 �ý��� ����(�����: ���̺�� �����ý���(��������, ���ĥ���̿�),�õ�ý���(������ ������ �ɾ�ġ��)) 
00:00 �籸 ����(3��, 2:1��(10��))  ====> 2012.03.31(��) 
03:00 �籸 ����(3��(3��), 2��(10��)) 
05:00 �籸 ����((3��(3��), 2��(10��) 
05:00 �籸 ����(3��, 1:0��(10��)) 
09:10 ����  
10:00 �Ͱ� 
10:20 ��ħ 
16:00 ��� 
16:30 �߽�(���) 
17:20 ����� 
17:30 �����뿪 
18:30 �Ȼ� �߾ӿ� 
18:50 �ְ� APT 6�� 505ȣ(�������� ���� ��������) 
19:00 �� ����(�߾��ʱ� -> �����ʱ� --> ��ȿ�Ա� -> �������Ÿ� -> �Ȼ��û -> �ҹ漭��Ÿ�(�ý�: 3õ��) 
19:50 ���е�����(031-480-6860, �Ȼ�� �ܿ��� ���ܵ� 716-2, ���е�����) 
19:55 �Ȼ� ����(������� ����): �� �� �꺻, �ʸ��� ������ �� 10��(�ų�����, �ֽ����) 
21:00 ���� 
21:10 ������ 
22:50 ���� 
22:55 �Ȼ� ���ܿ�(�ý�:2õ��) 
23:14 ����ö ž�� 
00:00 ��翪 
00:05 �����뿪 
00:20 �Ͱ� 
01:00 ��ħ 
==============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������