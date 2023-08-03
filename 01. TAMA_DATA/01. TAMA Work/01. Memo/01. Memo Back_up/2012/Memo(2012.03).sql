

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2012.03) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2012.03.01(목) 작업 ■■■■■■■■■■■■■■■
---> 12:10 ~ 18:00 --> 삼일정(공휴일)

- IOSP(/oauth2) Prj
2. createAuthorizationCode API 구현 
http://localhost:8080/v2/auth/oauth2/authorize?response_type=code&userauth_token=6Lft4caWSd&client_id=gtd83co8hu 
==> createAuthorizationCode() -> 02_Auth_authorize(GET 방식) 
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

- ▦조기축구
06:30 기상 
07:50 신구초등학교 
08:30 조기축구(5:5 무) ==> 남권이형 상요형하고 싸워서 유니폼 두고 집에 감 
10:30 종료 
11:30 중식(콩나물 국밥) 
11:30 종료 
12:10 출근 
18:00 퇴근 
18:10 석식(국밥: 현용이 쏨) 
19:40 귀가 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.03.02(금) 작업 ■■■■■■■■■■■■■■■
---> 07:25 ~ 21:00 --> Profile 담당 전상원 과장 철수 

- IOSP(/oauth2) Prj
3. createAccessToken API 구현 
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

- putter-utility 설정 
1. /start_local_server.cmd 파일에서 
set COH_OPTS=-Dtangosol.coherence.clusteraddress=237.16.152.153 ==> IP 변경(237.16.152.222 -> 237.16.152.153) 
==============================================================================================================

- Account 관련 이슈 회의(공통팀, Acount팀, 삼성전자 서정호 책임 외)(16:00 ~ 18:00) 
1. Open SSO DB 사용하여 추가 개발하기로 함 
2. Coherence 접근을 Licence를 통해서 수행 
3. SF, Auth 통합 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.03.03(토) 작업 ■■■■■■■■■■■■■■■
---> 08:00 ~ 15:30 --> 토요근무, 사무실 파티션 자리 증측 공사, 국화 당구장(17:00 ~ 20:00, 종업원 1:2 패) 

- IOSP(/oauth2) Prj
- SoapUI 세팅 
1. 워크스페이스: ws_TaemanJin_soapui 
D:\OSP\4.workspace\SERVER\oat\trunk\openapi-soapui-test\ws_TaemanJin_soapui-workspace.xml 
2. 프로젝트 생성: OSPS_oauth2 
D:\OSP\4.workspace\SERVER\oat\trunk\openapi-soapui-test\src\OSPS_oauth2 
3. Rest Service 생성 
 1) Service Name: OSPS_oauth2 
 2) Service Endpoint: http://localhost:8080 
4. Rest Resource 생성 
 1) Resource Name: AuthService 
 2) Resource Path/Endpoint: /v2/auth/oauth2/authenticate 
5. Rest Method 생성 
 1) Method Name: createUserAuthToken 
 2) http Method : POST 
6. Test Suite 생성 
1) New TestSuite: AuthService_createUserAuthToken ===> shopName: OST_TEST_SHOP_ 
7. Test Case생성  
1) New TesetCase: createUserAuthToken_200_OK_01 
2) New TesetCase: setUp ===> Groovy Script: ShopName동적생성 
String shopName = "OSP_TEST_SHOP_"+ String.valueOf(System.currentTimeMillis()); 
testRunner.testCase.testSuite.setPropertyValue( "shopName",shopName ) 
3) New TesetCase: tearDown  
--------------------------------------------------------------------------------------------------------- 

- SoapUI 세팅2 
1. 워크스페이스: ws_TaemanJin_soapui 
D:\OSP\4.workspace\SERVER\oat\trunk\openapi-soapui-test\ws_TaemanJin_soapui-workspace.xml 
2. 프로젝트 생성: OSPS_oauth2 
D:\OSP\4.workspace\SERVER\oat\trunk\openapi-soapui-test\src\OSPS_oauth2 
3. Rest Service 생성 
 1) Service Name: OSPS_oauth2 
 2) Service Endpoint: http://localhost:8080 
4. Rest Resource 생성 
 1) Resource Name: AuthService6 
 2) Resource Path/Endpoint: /v2/auth/user/isvalid 
5. Rest Method 생성 
 1) Method Name: isvalid 
 2) http Method : POST 
6. Test Suite 생성 
1) New TestSuite: AuthService6_isvalid ===> userName: @yopmail.com 
 isvalid_Request 1 Request Script:<username>${#TestSuite#userName}</username> 
7. Test Case생성 
1) New TesetCase: isvalid_200_OK_01 
2) New TesetCase: setUp ===> Groovy Script: userName_동적생성 
String userName = "@yopmail.com";   //login 아이디(@yopmail.com, 1semi.*@*.*) 
testRunner.testCase.testSuite.setPropertyValue( "userName", userName ) 
3) New TesetCase: tearDown 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.03.04(일) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

▦조기축구
07:30 기상 
08:20 신구초등학교 
08:20 조기축구(2:0 승): 골키퍼 
10:00 조기축구2(2:0 승): 1게임 뜀 
10:45 조기축구3(4:3 승): 골키퍼 
11:20 종료 
11:20 중식(문경세재: 갈비탕(흥국이형이 쏨)) 
12:50 종료 
13:30 귀가 
14:20 할리스 커피(종로점) 
15:30 김보미씨(*) 만 ==> 72년생, 효대 영문과 91, 영어 과외, 일산 
17:30 종료 
18:40 귀가 
23:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.03.05(월) 작업 ■■■■■■■■■■■■■■■
---> 07:20 ~ 22:00 --> 출입증 안 가지고 와서 15분 기다림 

- IOSP(/oauth2) Prj
- SoapUI 세팅 
1. 워크스페이스: ws_TaemanJin_soapui 
D:\OSP\4.workspace\SERVER\oat\trunk\openapi-soapui-test\ws_TaemanJin_soapui-workspace.xml 
2. 프로젝트 생성: OSPS_oauth2 
D:\OSP\4.workspace\SERVER\oat\trunk\openapi-soapui-test\src\OSPS_oauth2 
3. Rest Service 생성 
 1) Service Name: OSPS_oauth2 
 2) Service Endpoint: http://localhost:8080 
4. Rest Resource 생성 
 1) Resource Name: AuthService6 
 2) Resource Path/Endpoint: /v2/auth/user/isvalid 
5. Rest Method 생성 
 1) Method Name: isvalid 
 2) http Method : POST 
6. Test Suite 생성 
1) New TestSuite: AuthService6_isvalid ===> userName: @yopmail.com 
 isvalid_Request 1 Request Script:<username>${#TestSuite#userName}</username> 
7. Test Case생성 
1) New TesetCase: isvalid_200_OK_01 
2) New TesetCase: setUp ===> Groovy Script: userName_동적생성 
String userName = "@yopmail.com";   //login 아이디(@yopmail.com, 1semi.*@*.*) 
testRunner.testCase.testSuite.setPropertyValue( "userName", userName ) 
3) New TesetCase: tearDown 
==============================================================================================================

- LDAP 설정 
1. putty로 터널링(개발계 LDAP 정보) 
1. HUB 서버로 접속 설정: IOSP_HUB(50.16.215.98: 70) 
2. 접속계정 설정: auth 
3. Auth: Puttygen으로 변환한 private key( *.ppk) 
 1) putty puttygen > iosp-dev-auth: Action: load --> iosp-dev-auth.pem(Save private key 클릭) ==> auth.ppk 생성됨 
4. 터널링정보 입력 
L1689  210.118.57.208:1689 
L70  10.28.7.46:70(사용 안함) 
L80  10.28.7.46:80(사용 안함) 
5. HUB 접속- 터널링 적용됨 
6. 터널링 정의된 localhost : port 로 접속(20초 마다 다운됨) 
1) localhost:1689 
7. ApacheDirectoryStudio 설치 및 설정 
1) OSPMemoryCacheManager --> localhost:1689 
2) Bind DN or user: cn=writer,ou=manager,dc=samsung,dc=com 
3) Bind password: password  
==============================================================================================================

- OSPMemory pool(Coherence 설정 시 OSPMemoryCacheManager) 
1. authenticate: createUserAuthToken(auth/oauth2/authenticate) ==> osp_app_pool 
2. authorize: createAuthorizationCode(auth/oauth2/authorize) ==> osp_oauth_userauth_token_pool, osp_app_pool, 
osp_oauth_code_pool 
3. token: createAccessToken(auth/oauth2/token) ==> osp_oauth_code_pool, osp_app_pool, osp_oauth_access_token_pool,  
osp_oauth_refresh_token_pool 
4. deauthenticate: deauthenticate(auth/oauth2/deauthenticate) ==> osp_oauth_userauth_token_pool 
5. revoke: revoke(auth/oauth2/revoke) ==> osp_oauth_userauth_token_pool 
6. isvalid: isvalid(auth/user/isvalid) ==> osp_oauth_userauth_token_pool 
==============================================================================================================

- webserver 에러(Tomcat v6.0) 
1. 에러 내용: Port 8080 required by Tomcat v6.0 Server at localhost is already in use.  
2. 조치:  
 1) 서비스에서 Msdepsvc.exe(Web Deployment Agent Service)을 중지하고, 수동 또는 사용 안함으로 변경 
 2) Tomcat6 중지 
 3) 그래도 안되면 PC 재부팅 
------------------------------------------------------------------------------------------------------------------------------ 

- eclipse 저장 속도 문제(추천 안함) 
1. 에러 내용: 저장 후 2~3 분 동안 로딩 함 ==> Building workspace(SleepIng) 
2. 조치:  
 1) Tomcat v6.0 > Overview > Publishing에서 Modify setting for publishing: Never publishing automatically로 변경 
 2) Build Automatically 옵션을 끄고 쓰되, 필요할 때만 프로젝트 별로 빌드(project clean)해서 사용하세요.  
 3) C:\OSP2.5\tools\eclipse/eclipse.ini 파일에서 
-Xms40m 
-Xmx1024m ==> -Xmx750m 
==============================================================================================================

- JUNIT 사용방법 
1. http://blog.naver.com/byebird?Redirect=Log&logNo=20140786449 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.03.06(화) 작업 ■■■■■■■■■■■■■■■
---> 07:20 ~ 21:10 --> 출입증(번호: 0608) 분실, 임시 출입증(번호: 0231) 받음, 재신청(만 5천원) 

- IOSP(/oauth2) Prj
- OSPMemoryCacheManager 분석(/authenticate) 
1. appIDPool에 clientID가 존재하는지 조회 
DEBUG: com.samsungosp.license.memorycache.license.OSPMemoryCacheManager - Get element completed,  
Target : osp_app_pool Key : j5p7ll8g33_1.0.0 
DEBUG: com.samsungosp.auth.oauth2.biz.Oauth2CacheBizImpl - [getAppIDPool()]  
==> [appIDPool에 clientID가 존재하는지 조회_결과] [applicationInfoEntryVO]null  
--------------------------------------------------------------------------------------------------------------------------

2. UserauthToken 조회 결과 
DEBUG: com.samsungosp.auth.oauth2.biz.Oauth2CacheBizImpl - [existUserauthToken()]  
==> [userID]01gg5uki5o[userName]@yopmail.com[clientID]j5p7ll8g33[serviceType]M[physicalAddressText]2012001 
DEBUG: com.samsungosp.license.memorycache.license.OSPMemoryCacheManager - Search query is :  
userId='01gg5uki5o' AND userName='@yopmail.com' AND serviceType='M' AND physicalAddressText='2012001' AND clientId='j5p7ll8g33' 
DEBUG: com.samsungosp.license.memorycache.license.OSPMemoryCacheManager - Found 0 elements, with given Equal Filters 
DEBUG: com.samsungosp.auth.oauth2.biz.Oauth2CacheBizImpl - [existUserauthToken()]  
==> [UserauthToken 조회 결과(존재:not null)] [searchedUserauthTokenList][] 
--------------------------------------------------------------------------------------------------------------------------

3. UserAuthToken 발행 시 userauthtTokenPool에 insert 처리 
DEBUG: com.samsungosp.auth.oauth2.biz.Oauth2IssueBizImpl - [issueUserAuthToken()] ==>  
[ProfileUserauthTokenParamsEntryVO][ProfileUserauthTokenEntryVO] userauthToken : g6xjOJqqYh/expireIn :  
Mon Mar 05 21:10:15 KST 2012/userName : @yopmail.com/userId : 01gg5uki5o/physicalAddressText : 2012001/clientId : 
j5p7ll8g33/serviceType : M/ 
DEBUG: com.samsungosp.auth.oauth2.biz.Oauth2CacheBizImpl -  
☞☞☞  *** Logging Aspect : executed setUserauthToken() in com.samsungosp.auth.oauth2.biz.oauth2cachebizimpl Class. 
*************com.samsungosp.license.memorycache.common.vo.ProfileUserauthTokenEntryVO************* 
[ProfileUserauthTokenEntryVO] userauthToken : g6xjOJqqYh/expireIn : Mon Mar 05 21:10:15 KST 2012/userName :  
@yopmail.com/userId : 01gg5uki5o/physicalAddressText : 2012001/clientId : j5p7ll8g33/serviceType : M/ 
******************************************* 

DEBUG: com.samsungosp.auth.oauth2.biz.Oauth2CacheBizImpl - ☞☞☞ >>>>> logging around.... target class :  
com.samsungosp.auth.oauth2.biz.Oauth2CacheBizImpl 
DEBUG: com.samsungosp.auth.oauth2.biz.Oauth2CacheBizImpl - [setUserauthToken()] = 
=> [test_1] [profileUserauthTokenEntryVO.getUserauthToken()]g6xjOJqqYh[profileUserauthTokenEntryVO] 
[ProfileUserauthTokenEntryVO] userauthToken : g6xjOJqqYh/expireIn : Mon Mar 05 21:10:15 KST 2012/userName : 
@yopmail.com/userId : 01gg5uki5o/physicalAddressText : 2012001/clientId : j5p7ll8g33/serviceType : M/ 
DEBUG: com.samsungosp.license.memorycache.license.OSPMemoryCacheManager - Put element completed,  
Target : osp_oauth_userauth_token_pool Key : g6xjOJqqYh  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.03.07(수) 작업 ■■■■■■■■■■■■■■■
---> 07:20 ~ 22:00 

- IOSP(/oauth2) Prj
- oauth2, sf 합병 
1. sf 기준 합병/pom.xml, /applicationContext-marshaller.xml 파일 추가) 
==============================================================================================================

- OSPMemoryCacheManager 생성 
1. authenticate: appIDPool 생성(osp_app_pool) 
1. authenticate: UserauthToken 생성(osp_oauth_userauth_token_pool) 
2. authorize: AuthCode 생성(osp_oauth_code_pool) 
3. authenticate: AccessTokenn 생성(oauth_access_token_pool, oauth_refresh_token_pool) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.03.08(목) 작업 ■■■■■■■■■■■■■■■
---> 07:20 ~ 22:00 

- IOSP(/oauth2) Prj
- OSPMemoryCacheManager 소스 수정 
1. authenticate: appIDPool 생성(osp_app_pool) 
1. authenticate: UserauthToken 생성(osp_oauth_userauth_token_pool) 
2. authorize: AuthCode 생성(osp_oauth_code_pool) 
3. authenticate: AccessTokenn 생성(oauth_access_token_pool, oauth_refresh_token_pool) 
==============================================================================================================

- appID 관련 Table 변경 
1. appID 1.0 Table로 변경 
==============================================================================================================

- VO 일괄 변경 
1. @XmlRootElement(name = "ServiceVO") ==> @XStreamAlias("accessTokenVO") 
==============================================================================================================

- P4 Submit 에러 
1. 현상 
1) Merges still pending -- use 'resolve' to merge files. 
Submit failed -- fix problems above then use 'p4 submit -c 270742'.  
2) Out of date files must be resolved or reverted. 
Submit failed -- fix problems above then use 'p4 submit -c 270748'. 
2. 조치  
1) eclipse ==> Team --> Rever files: 확인 
2) eclipse ==> Team --> Check out 
3) 파일 수정 
4) eclipse ==> Team --> Submit 
==============================================================================================================

- local에서 Client Stub Gen 실행 방법 
1. auth-svc project에서 Run As ==> Maven build ==> Goals: dependency:copy-dependencies로 실행 
2. Build.xml 실행 
1) Build.xml(마우스 오른쪽 버튼) ==> Run As ==> 1. Ant Build ==> Edit configration(새창) >  
Target(Tab) : clean-all, build(체크) > Apply(클릭) > Run(클릭)  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.03.09(금) 작업 ■■■■■■■■■■■■■■■
---> 07:20 ~ 22:00 

- IOSP(/oauth2) Prj
- auth로 합병(oauth2, sf) 
1. auth 기준 합병(/web.xml, /pom.xml, /applicationContext-marshaller.xml 파일 추가) 
==============================================================================================================

- VO 파일 수정 
@XmlTransient ===>  @XStreamOmitField 
==============================================================================================================

- Client Stub Gen 실행, Doc 파일 생성(AA 노명석 차장) 
1. Build.xml 빌드 성공 ==> javadoc 생성 
==============================================================================================================

- AUTH2 Bundle 생성 
1. /auth-lib/src/main/resources/i18n/AuthLogBundle_ko_KR.properties 파일에서 
(C:\OSP2.5\workspace\IOSP\Workspace\Account\Auth\trunk\auth-lib\src\main\java 파일에서) 
#AUTH2 Bundle # @@@@@@@@@@@@@@@@@@@@@@@@@@ 
# AuthService 
AUTH.AUT_9001.500=Unknown error was occurred. 
2. /auth-svc/build.properties 파일에서 
# client jar, service contract, javadoc publish setting 
logbundle.prefix=Auth 
logbundle.locale=_en_US 
logbundle.check=false ===> Bundle 사용 여부(true:사용, false:미사용) 
1) 허드슨 빌드: http://165.213.146.213:7015/ 
2) Open API: http://devdoc.iosp.com/index.html 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.03.10(토) 작업 ■■■■■■■■■■■■■■■
---> 07:20 ~ 22:00 

07:30 기상 
08:20 조식(라면) 
08:40 버스(506번) 
09:20 고려 당구클럽: 세븐 당구 동호회(서울 시청 지역), 회비 만원 
16:00 당구 게임(회원, 2:0 패(80)) 
18:00 종료 
18:30 국결행사 모임(종로 병천유황오리): 회비 3만원 
22:00 호프집(안젤린(파주 영어 마을 직원):영어로 질문) 
22:30 종료 
22:38 버스 정류장(501번, 506번 버스 11:30에 끊김) 
22:45 지하철(을지로입구역) 
00:07 신도림역(지하철 끊김) 
00:20 택시(11,300원) 
01:10 귀가 
01:20 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.03.11(일) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

11:30 기상(당구 오래 쳐서 다리 아퍼서 축구 못 감) 
11:30 조식 
14:00 수화(안) 
14:20 D 이벤트(실망) 
15:35 크리스탈(애인모드, 반응 굿(최고)) 
18:00 석식 
18:30 종료 
19:30 귀가  
23:50 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.03.12(월) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 22:00 

- IOSP(/oauth2) Prj
- OSPMemoryCacheManager 소스 수정 
1. authenticate: appIDPool 생성(osp_app_pool)  
2. authenticate: UserauthToken 생성(osp_oauth_userauth_token_pool) 
/Oauth2IssueBizImpl.java 파일에서 
public String issueUserAuthToken(RequestTokenVO passwordVO) throws Oauth2Exception {  
	InsertUserauthTokeResult = oauth2CacheBiz.beForeInsertUserauthToken("");   //TEST 
	 //TEST ==> UserauthToken 생성(1. authenticate): MemoryCacheManager - Put(osp_oauth_userauth_token_pool) 
} 

2. authorize: AuthCode 생성(osp_oauth_code_pool) 

3. authenticate: AccessTokenn 생성(oauth_access_token_pool, oauth_refresh_token_pool) 

4. 참조: /ospPoolChecker/src/main/java/com/samsungosp/license/ospPoolChecker/insert/InsertTestDataMain.java 
==============================================================================================================

- appID 관련 Table 변경 
1. appID 1.0 Table로 변경 
==============================================================================================================

- JUnit 수정 
[개발검증 가이드] 
//OSP/IOSP/Co-work/1. IOSP 공식문서/1. Archtect/7.개발검증/통합OSP_개발단계 API 테스트 방안.pptx 
//OSP/IOSP/Co-work/1. IOSP 공식문서/1. Archtect/7.개발검증/통합OSP_API 기능 테스트 가이드.pptx 
//OSP/IOSP/Co-work/1. IOSP 공식문서/1. Archtect/7.개발검증/통합OSP_내부 검증 체크 항목.xlsx 
//OSP/IOSP/Co-work/1. IOSP 공식문서/1. Archtect/7.개발검증/통합OSP_개발자 자주검증 가이드.docx 

[soapUI Pro 툴 / Test Case source] 
D:\OSP2.5\workspace\IOSP\Workspace\OpenAPITest\testcase 
//OSP/IOSP/Co-work/1. IOSP 공식문서/1. Archtect/7.개발검증/soapUITool/ 
//OSP/IOSP/Workspace/OpenAPITest/testcase/IOSP_Auth.xml 
==============================================================================================================
   
■■■■■■■■■■■■■■■■■■ 2012.03.13(화) 작업 ■■■■■■■■■■■■■■■
---> 07:05 ~ 22:00 

- IOSP(/oauth2) Prj
- OSPMemoryCacheManager 소스 수정 
1. authenticate: appIDPool 생성(osp_app_pool) 
/Oauth2VerifyBizImpl.java 파일에서 
private boolean verifyClientInfo(Oauth2ClientInfoVO oauth2ClientInfoVO, String type) throws Oauth2Exception { 
	boolean InsertAppIDResult = false; 
	InsertAppIDResult = oauth2CacheBiz.beForeInsertAppID("");    
	//TEST ==> appIDPool 생성(1. authenticate): MemoryCacheManager - Put(osp_app_pool) 
} 

1. authenticate: UserauthToken 생성(osp_oauth_userauth_token_pool) 
/Oauth2IssueBizImpl.java 파일에서 
public String issueUserAuthToken(RequestTokenVO passwordVO) throws Oauth2Exception {  
	InsertUserauthTokeResult = oauth2CacheBiz.beForeInsertUserauthToken("");   //TEST 
	//TEST ==> UserauthToken 생성(1. authenticate): MemoryCacheManager - Put(osp_oauth_userauth_token_pool) 
} 

2. authorize: AuthCode 생성(osp_oauth_code_pool) 
/Oauth2VerifyBizImpl.java 파일에서 
public boolean verifyAuthorizationCodeVO(RequestTokenVO authorizationCodeVO) throws Oauth2Exception { 
	  InsertUserauthTokeResult = oauth2CacheBiz.beForeInsertCode("");    
	  //TEST =========> AuthCode  생성(2. authorize): MemoryCacheManager - Put(osp_oauth_code_pool) 
} 

3. token: AccessToken 생성(oauth_access_token_pool, oauth_refresh_token_pool) 
/Oauth2IssueBizImpl.java 파일에서 
public AccessTokenVO issueAccessToken(RequestTokenVO authorizationCodeVO) throws Oauth2Exception {  
	insertAccessTokenResult = oauth2CacheBiz.beForeInsertAccessToken("");    
	//TEST =========> AccessTokenn 생성(3. authenticate): MemoryCacheManager -  
	Put(oauth_access_token_pool, oauth_refresh_token_pool) 
} 
==> {token={"access_token":"AAfBlOEqkN","token_type":"bearer","refresh_token":"LDRxnRdUfv","userId":"lbzqxl6qsr"}} 

4. 참조: /ospPoolChecker/src/main/java/com/samsungosp/license/ospPoolChecker/insert/InsertTestDataMain.java 
==============================================================================================================

- LDAP 수정 
/UserAuthBizImpl.java 파일에서 
public UserIdentificationVO getUserIdentification(UserIdentificationVO userIdentificationVO) throws OSPException {  
	if(gcLDAP.getLdapUseFlag() == true) {  
		userIdentificationVOResult = gcLDAP.getUserIdentificationByLoginID(loginID, loginIDTypeCode);    
		// LDAP에 회원 인증 정보 조회(GC)  
	} 
} 

/UserLDAPImpl.java 파일에서 
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

/applicationContext-external.xml 파일에서 
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

- /resources/config/local/applicationSystemConfig.xml 파일에서 
<properties>   
<!-- =========================================================================================== --> 
<!-- auth2 LDAP Config Setting  --> 
<!-- =========================================================================================== --> 
<entry key="ldap.use.flag">true</entry> 
<entry key="ldap.url">ldap://localhost:1689</entry> 
<entry key="ldap.base">dc=samsung,dc=com</entry>   
</properties> 
==============================================================================================================

- JUnit Source Folder 생성 
1.  source Folder 생성: auth-svc > Java Resources(마우스 우 클릭) > New > source Folder 
1) Project Name: auth-svc 
2) Folder Name: src/main/java, src/main/resources, src/test/java, src/test/resources 

2. New java Package 생성 
1) Source Name: auth-svc/src/main/java,  auth-svc/src/test/java 
2) Name: com.samsungosp.auth.user.service 

3. New JUnit Test Case 생성 
1) Souce folder: auth-svc/src/test/java 
2) Package: com.samsungosp.auth, com.samsungosp.auth.oauth2.service 
3) Name: AuthServiceTest_authenticate_Test 
4) Class under test: com.samsungosp.auth.oauth2.service.AuthServiceResourceImpl 

4. src/test/resources 폴더에서 폴더 생성 
src/test/resources(마우스 우 클릭) > New > Other > Genearl > Folder > New Folder(새창): 
Advanced(Tab): 클릭: User default location(체크) > Folder Name: spring --> Finish(클릭)  
--Advanced(Tab): 클릭: Vrtual Folder(체크): Finish(클릭) 

- JUnit 사용방법 
http://blog.naver.com/byebird?Redirect=Log&logNo=20140786449 
==============================================================================================================
   
■■■■■■■■■■■■■■■■■■ 2012.03.14(수) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 22:00 

- IOSP(/oauth2) Prj
- 개발서버(Tomcat) 설정(turnel 적용) 
1. Host Name: localhost:70E 
2. 접속계정 설정: auth 
3. Auth: Puttygen으로 변환한 private key( *.ppk) 
---------------------------------------------------------------------------------------------------------------------------- 

- 개발서버(Tomcat) 시작, 종료 
auth@ec2-174-129-6-106:~$ cd / 
auth@ec2-174-129-6-106:~$ cd /iosp/comp/auth/configuration  
auth@ec2-174-129-6-106:/iosp/comp/auth/configuration$ ls 
deploy  iosp-coherence-settings.sh  shutdown.sh  startup.sh 
auth@ec2-174-129-6-106:/iosp/comp/auth/configuration$ ./startup.sh 

- 리눅스에서 톰켓(Tomcat) 로그 보기 
auth@ec2-174-129-6-106:~$ tail -f /iosp/comp/auth/logs/catalina.out 
auth@ec2-174-129-6-106:~$ cd /iosp/comp/auth/logs 
auth@ec2-174-129-6-106:/iosp/comp/auth/logs$ tail -f catalina.out 
==============================================================================================================

- ws_TaemanJin_soapui 생성 
1. ws_TaemanJin_soapui 
D:\OSP2.5\workspace\IOSP\Workspace\Account\Auth\trunk\openapi-soapui-test\ws_TaemanJin_soapui-workspace.xml  
D:\OSP2.5\workspace\IOSP\Workspace\OpenAPITest\testcase\IOSP_Auth.xml 

http://localhost:8080/v2/auth/oauth2/authenticate 
declare namespace ns1='http://auth.osp2.com/auth/oauth2/authenticate'; 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.03.15(목) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 22:00 

- IOSP(/oauth2) Prj
- JUnit 수정(AA 곽재우, 박종영 차장: 환결 설정 실패) 
1. 파일 변경: /auth-svc/src/test/resources/spring/applicationContext-resource.xml 
==============================================================================================================

- sample-svc 실행 에러 
1. 에러 내용:  
org.springframework.context.NoSuchMessageException: No message found under code 'default_language' for locale 'ko_KR'. 
at org.springframework.context.support.AbstractMessageSource.getMessage(AbstractMessageSource.java:135)
2. 조치: /sample-lib/src/main/resources/properties/local/authConfig.xml 파일이 
C:\OSP2.5\localhome\comp\auth\resources\properties\local 폴더에 authConfig.xml파일에도 복사되어야 함 
2. 조지2: applicationContext-resource.xml 파일에서 
<bean id="outPropertySource" class="org.springframework.context.support.ReloadableResourceBundleMessageSource"> 
        <property name="basenames"> 
            <array> 
                 <value>file:${osp.home.dir}/comp/${component.name}/resources/properties/${osp.server.type}/authConfig</value>  
            </array> 
        </property> 
        <!--cacheSeconds 가 -1 이면 reload 하지 않음--> 
        <property name="cacheSeconds" value="${outproperty.reload.second}"/> 
        <property name="defaultEncoding" value="UTF-8"/> 
    </bean>  
==============================================================================================================

- Document base 에러 처리 
1. Eclipse에서 해당 프로젝트를 제거를 합니다. 
2. 다음은 Eclipse를 종료하여 프로젝트가 없는 상태로 저장을 합니다. 
3. 물리적인 디렉토리에 가서 디렉토리 안의 모든 파일을 싹 지워 줍니다. 
4. Eclipse를 구동 해 봅니다. 
5. 아무 것도 없는 초기 상태로 구동이 되면 다시 종료 해서 웍스페이스를 없는 상태로 확인 사살을 해줍니다. 
6. Eclipse를 다시 구동하여 SVN 등을 이용하여 프로젝트를 받고 세팅을 합니다. 

현상:  
1. Tomcat > Add and Remove 에서 Avaible Module 안 보임 
2. Console > java.lang.IllegalArgumentException: Document base C:\OSP2.5\workspace\.metadata\.plugins\org.eclipse. 
 wst.server.core\tmp1\webapps\auth-svc does not exist or is not a readable directory 
==============================================================================================================

# auth 개발 서버 
127.0.0.1 eu.auth.samsungosp.com 
#174.129.6.106  api.samsungosp.com 
# auth 개발 서버(OSP 2..0) ==> 과거 껏 
auth.samsungosp.com 
# 51. Open API 
http://devdoc.iosp.com 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.03.16(금) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 

- IOSP(/oauth2) Prj
- soap UI 수정 및 교육(SDS 담당자: 윤명종 선임, 윤명종 과장) 
<client_id>j5p7ll8g33</client_id> ==> <client_id>gtd83co8hu</client_id> 

1. authenticate: AuthService_createUserAuthToken  ===> 성공 
@return  UserAuthToken 
AUT_1001 ~ AUT_1040 : invalid_request 
AUT_1701 ~ AUT_1702 : invalid_client 
AUT_1804 ~ AUT_1805 : invalid_grant 
AUT_1901            : unsupported_grant_type 
AUT_5001 ~ AUT_9001 : 500 

1) createUserAuthToken_200_01 
declare namespace ns1='http://localhost:9080/auth/oauth2/authenticate';  ==> 이전 거 
//ns1:Fault[1]/ns1:error_description[1]/text()  ==> 이전 거 
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

- 서버 
51. auth 개발서버(Tomcat) ==> localhost:70 
52. auth 개발 서버(REST) ==>localhost:8080 
00. IOSP_HUB ==>50.16.215.98: 70 
L1689  210.118.57.208:1689 
L70  10.28.7.46:70 
L80  10.28.7.46:80 
L8080  10.28.7.46:8080 
01. IOSP(local)_LDAP ==>localhost:1689  
==============================================================================================================

- oaf-client-stub-gen1.0.5.jar 파일 삭제 문제 
1. /auth-lib/pom.xml 파일에서 아래 부분 제거를 하고 oaf-client-stub-gen1.0.5.jar 파일을 삭제하니 Multiple  
markers at this line 에러가 납니다. 
<dependency>  
<groupId>com.samsungosp.profile</groupId> 
<artifactId>oaf-client-stub-gen</artifactId> 
<version>1.0.5</version> 
</dependency> 

2. SocialClientImpl.java 파일에서 
package com.samsungosp.auth.user.client;  //에러 줄...  import com.samsungosp.openapi.client.GenericResourceClient;  
public class SocialClientImpl implements SocialClient {  //Multiple markers at this line   
- The type osp.oaf.openapi.client.GenericResourceClient cannot be resolved. It is indirectly referenced from   

==> social-client-1.jar 파일에서(MemberServiceResourceClient.java 파일에서) 
import osp.oaf.openapi.client.*; 
public class MemberServiceResourceClient extends GenericResourceClient { 
} 
3. 조치: /auth-svc/target/dependency/osp-generator-2.5.0-20120321.010932-15.jar 활용할 것 
==============================================================================================================

- 현용돈 출금 및 전달(석식 제공 받음) 
1. 우리은행 607 054789 18 532, 예금주: 올앳황현용(송금 안 함(직접 전달)) 
2012.03.12: 1,042,031원 
2012.03.05: 1,042,031원 
2012.02.17: 2,014,593원 
2012.02.14: 2,014,593원 
나눔계비(~02월): -180,000원 
총액: 5,933,248원 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.03.17(토) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 --> 재발급 출입증(번호: 0104) 받음(조윤호 씨), 통합OSP Proj 개발완료(예정일) 

- IOSP(/oauth2) Prj
- soap UI 수정 
1. authenticate: AuthService_createUserAuthToken ===> 성공 
@return  UserAuthToken 
AUT_1001 ~ AUT_1040 : invalid_request 
AUT_1701 ~ AUT_1702 : invalid_client 
AUT_1804 ~ AUT_1805 : invalid_grant 
AUT_1901            : unsupported_grant_type 
AUT_5001 ~ AUT_9001 : 500 

1) createUserAuthToken_200_01 
declare namespace ns1='http://localhost:9080/auth/oauth2/authenticate';  ==> 이전 거 
//ns1:Fault[1]/ns1:error_description[1]/text()  ==> 이전 거 
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

- 서버 에러 
1. 내용: [SetPropertiesRule]{Server/Service/Engine/Host/Context} Setting property 'source' to 'org.eclipse.jst.jee. 
server:auth-svc' did not find a matching property. 
2. 조치: 
1) tomcat 서버 > clean 
2) eclipse 상의 서버 탭에서 해당 서버를 더블클릭 하시면 overview 가 뜹니다.  
server 옵션 탭의 publish module contexts to separate XML files 체크 하시고 
다시 서버를 시작하시면 정상적으로 경고 문구 없이 시작 하실수 있으실겁니다. 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.03.18(일) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

▦조기축구
08:00 기상 
08:40 신구초등학교 
08:50 조기축구(2:0 패) 
10:40 조기축구2(3:0 승): 1골 넣음 
11:20 종료 
11:20 중식(한상봉 전 감사님이 쏨) 
12:30 종료 
13:30 귀가 
17:10 롯데시네마(피카디리 지점)(김보미씨, 후배, 후배 부부) 
17:20 영화 시청(건축학 개론: 한가인, 엄태웅, 이제훈, 수지) ==> 팝콘, 콜라 
19:30 종료 
19:50 호프집(내가 쏨: 8만 천원) 
20:30 종료 
21:40 귀가 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.03.19(월) 작업 ■■■■■■■■■■■■■■■
---> 07:15 ~ 00:00 --> 철야 

- IOSP(/oauth2) Prj
- soap UI 수정 
1. createAuthorizationCode_response_type_AUT_1009_01 
http://localhost:9080/auth/oauth2/authorize?response_type=code&userauth_token=6Lft4caWSd&client_id=j5p7ll8g33  
http://localhost:9080/auth/oauth2/authorize?userauth_token=6Lft4caWSd&client_id=j5p7ll8g33 
@OSP( category="auth", function="G02") 
@RequestMapping(value="/authorize", method=RequestMethod.GET) 
public ModelAndView createAuthorizationCode(OSPHttpHeaderInfo headers,  
@RequestParam(value="response_type", required=false) String response_type,  
@RequestParam(value="redirect_uri", required=false) String redirect_uri) throws Exception {  

if (response_type == null   response_type.isEmpty()) {   //response_type이 null 이면  
OSPResultMessage.raiseException(Constants.BAD_REQUEST,  
"AUT_1009", MessageUtil.getMessage("AUTH.AUT_1009.400"), this.getClass().getName()); 
                //AUTH.AUT_1009.400=The value of response_type parameter must be present and have a non-empty value. 
} 
} 
==> 처리 결과: response_type을 필수값에서 옵션값으로 수정 처리 

2. isValid_password_AUT_1805_02 
http://localhost:9080/auth/user/isvalid 
Oauth2VerifyBizImpl - [isValidUser()] ==> [test_3] [@@@ 02. Password] --> [Incorrect Password..] 
if (strDifUserId.equals("1")) { //Incorrect Password 이면 
log.debug("[isValidUser()] ==> [test_3] [@@@ 02. Password] --> [AUTH.AUT_1805.400]"+ MessageUtil.getMessage("AUTH.AUT_1805.400") );   
OSPResultMessage.raiseException(Constants.BAD_REQUEST,  
"AUT_1805", MessageUtil.getMessage("AUTH.AUT_1805.400"), this.getClass().getName()); //AUTH.AUT_1805.400=The password is incorrect. 
} 
==============================================================================================================

- oauth2 방식 확인 
1. Query String 방식 확인 
2. Response 방식: Jason 방식 
@RequestMapping(value="/authenticate", method=RequestMethod.POST, headers={"accept=text/xml, application/json"})   
//accept: 서버에서 나가는 타입 
==============================================================================================================

- createUserAuthToken() 
${#TestSuite#mobile_country_code}  ==> 234 
${createUserAuthToken#country_code} ==> KOR 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.03.20(화) 작업 ■■■■■■■■■■■■■■■
---> 00:00 ~ 18:00 

- IOSP(/oauth2) Prj
- soap UI 수정(Jason 방식으로 수정해서 개발 서버에 올림) 
1. createAuthorizationCode_response_type_AUT_1009_01 
==============================================================================================================

- soapUI Test Results 생성 
1. Test Suite에서 디버깅(녹색 만들 것) > IOSP_Auth(마우스 우 클릭) > Launch TestRunner(클릭): Launch  
TestRunner(새창) --> Reports(Tab): 위 3개 체크 ==> Launch(클릭) 
==============================================================================================================

- eclipse 저장 문제 처리(SAVE 문제) 
1. eclipse를 닫은 후 C:\OSP2.5\workspace\.metadata\.plugins/org.eclipse.core.resources 폴더를 복사해서  
보관 후, 삭제 
2. eclipse 시작 
3. eclipse 종료 
4. 보관한  폴더C:\OSP2.5\workspace\.metadata\.plugins/org.eclipse.core.resources 붙어넣기 처리 
==============================================================================================================

- sf 수정(이선미 과장 요청) 
validateUserAccountByEmailId_200_OK_01 ==> 비밀번호 틀림 
validateUserAccountByEmailId_400_SSO_1000_02 ==> 수정 완료 
validateUserByEmailID_200_OK_01 failure==> 비밀번호 틀림 
validateUserByEmailID_400_SSO_1000_02   ==> 수정 완료 
==============================================================================================================

- 01. REST Client(크롬) 
chrome-extension://hgmloofddffdnphfgcellkdfbfbjeloo/RestClientApp.html 
==============================================================================================================

- EasyMock 2.3 기본문서 
http://www.easymock.org/EasyMock2_3_Documentation_ko.html 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.03.21(수) 작업 ■■■■■■■■■■■■■■■
---> 07:05 ~ 22:20 

- IOSP(/oauth2) Prj
- Tomcat 설정 
1. Tomcat installation directory 설정 
Tomcat installation directory: C:\OSP2.5\server\apache-tomcat-6.0.35(보통 server 폴더나 C:\Program Files에 있음) 
--------------------------------------------------------------------------------------------------------------------------- 

- Address already in use: JVM_Bin 에러(로컬 Tomcat 서버 동시에 2대 띄웠을 때)  
1. 조치: Tomcat 서버(더블 클릭) > Overview -> Ports: Tomcat admin port: 8005 --> 9005로 변경 
--------------------------------------------------------------------------------------------------------------------------- 

- Oracle DB 연결 에러 
1. 현상: DEBUG: org.springframework.jdbc.support.SQLErrorCodesFactory - Database product name cached for DataSource  
[oracle.jdbc.pool.OracleDataSource@1f18cd5]: name is 'Oracle' 
[2012-03-21] DEBUG: org.springframework.jdbc.support.SQLErrorCodesFactory - SQL error codes for 'Oracle' found 
### Error querying database.  Cause: java.sql.SQLException: ORA-00942: 테이블 또는 뷰가 존재하지 않습니다 
2. 조치:  
1) /oauth2-svc/pom.xml 파일에서 auth-lib를 oauth2-lib로 변경 후 Maven 빌드 다시 할 것 
<dependency> 
    <groupId>com.samsungosp</groupId> 
    <artifactId>oauth2-lib</artifactId> 
    <version>0.0.1-SNAPSHOT</version> 
</dependency> 

2)  /auth-lib/src/main/resources/config/local/applicationSystemConfig.xml 파일에서 OSSOC1 -> SPRF로 변경할 것 
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

- Eclipse workspace 설정(P4 동기화 안될 때(재설정)) 
C:\OSP2.5\tools\eclipse_2\configuration\.settings/org.eclipse.core.net 파일에서 
RECENT_WORKSPACES=D\:\\OSP2.5\\workspace 
RECENT_WORKSPACES=C\:\\OSP2.5\\workspace 

1. /auth-svc 변경 
1) RECENT_WORKSPACES=D\:\\OSP2.5\\workspace 
2) D:\OSP2.5\workspace\IOSP\Source\2.Account\Auth\trunk로 변경 

2. /oauth2-svc 변경 
1) RECENT_WORKSPACES=C\:\\OSP2.5\\workspace 
2) D:\OSP2.5\workspace\IOSP\Source\2.Account\Auth\trunk로 변경 

- P4 동기화 안될 때 
1. D:\OSP2.5\workspace\IOSP\Source\2.Account\Auth\trunk\oauth2-svc\.settings 폴더 읽기 전용 해제 
==============================================================================================================

- maven에서 jar을 못 찾을 때 
1. 현상: /auth-lib/pom.xml 파일에서 license-coherencecluster-manager 빨간색으로 표시됨 
2. 조치 
1) Maven은 기본적으로 http://repo1.maven.org/maven2/ 를 repository로 사용 
2) 로컬 서버에 Local repository 설정(Preferences > Maven > User Settings(새창) 
User Settings(open file): C:\OSP2.5\lib_repository\settings.xml  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.03.22(목) 작업 ■■■■■■■■■■■■■■■
---> 07:05 ~ 21:40 

- IOSP(/oauth2) Prj
- Open API Online documentation 수정 
1. 한글 param 영문으로 변경 
2. End Point URI에서 v2/auth 제거 ===> http://api.samsungosp.com/v2/auth/auth 
==============================================================================================================

- oaf-client-stub-gen1.0.5.jar 파일 처리 분석(eclipse 2 생성(oauth2-sv)) 
1. /auth-lib/pom.xml 파일에서 아래 부분 제거를 하고 oaf-client-stub-gen1.0.5.jar 파일을 삭제하니 Multiple  
markers at this line 에러가 납니다. 
<dependency>  
<groupId>com.samsungosp.profile</groupId> 
<artifactId>oaf-client-stub-gen</artifactId> 
<version>1.0.5</version> 
</dependency> 

2. SocialClientImpl.java 파일에서 
package com.samsungosp.auth.user.client;  //에러 줄...  import com.samsungosp.openapi.client.GenericResourceClient;  
public class SocialClientImpl implements SocialClient {  //Multiple markers at this line   
- The type osp.oaf.openapi.client.GenericResourceClient cannot be resolved. It is indirectly referenced from 

==> social-client-1.jar 파일에서(MemberServiceResourceClient.java 파일에서) 
import osp.oaf.openapi.client.*; 
public class MemberServiceResourceClient extends GenericResourceClient { 
} 

3. 조치:  
1) osp-generator-2.5.0-SNAPSHOT.jar 파일이 import osp.oaf.openapi.client.GenericResourceClient; 커버를 함 
2) /auth-lib/pom.xml 파일에서(social-client-1.jar 에서 profile-client.jar로 수정 후 Maven 빌드 다시 할 것) 
<!-- social-client(/auth2): /profile-client.jar  --> 
<dependency> 
<groupId>com.samsungosp.profile</groupId> 
<artifactId>social-client</artifactId> 
<version>1.0</version> 
</dependency> 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.03.23(금) 작업 ■■■■■■■■■■■■■■■
---> 06:55 ~ 21:40 

- IOSP(/oauth2) Prj
- 비밀번호 변경 
1. IdmService_makePasswordForEmailID > REST ChangePasswordForEmailID 
- /IdmDAOImpl.java 파일에서 
/* 사용자의 패스워드를 초기화 */ 
public int makePartyIdentificationPassword(UserAuthVO vo) throws Exception { 
	HashMap<String, String> paramMap = new HashMap<String, String>(); 
	paramMap.put("authStatusCode", vo.getAuthStatusCode()); 
	paramMap.put("password", vo.getPassword()); 
	paramMap.put("modifyRegionCode",CodeUtils.GetRegionCodeDouble()); 
	paramMap.put("loginID", vo.getLoginID()); 
	paramMap.put("authTypeCode", vo.getAuthTypeCode()); 
	log.debug("[makePartyIdentificationPassword()] ==> [DB조회_요청 칼럼(패스워드 초기화()]  
	[getAuthStatusCode()]"+ vo.getAuthStatusCode() +"[GetRegionCodeDouble()]"+ CodeUtils.GetRegionCodeDouble()  
	+"[getAuthTypeCode()]"+ vo.getAuthTypeCode() +"[vo.getLoginID()]"+ vo.getLoginID() +"[vo.getPassword()]"+ vo.getPassword() ); 
	     
	return getSqlSession().update("com.samsungosp.sf.idm.dao.idmDAO.makePartyIdentificationPassword", paramMap); 
} 
---------------------------------------------------------------------------------------------------------------- 

/* 사용자의 패스워드를 초기화 Update */ 
UPDATE /* [idmDAO.xml].[com.samsungosp.sf.idm.makePartyIdentificationPassword].[09] Modified(20100306) */ 
       TCSO_PRTY_IDNTN 
   SET USR_ATNT_STS_CD = 3,   --사용자 상태코드 
       USR_PWD = 'sM6HMRYe4+/ZoPjWxUAvtWca3SQ=', --비밀번호 
       MDFY_DT = SYSDATE, --수정일 
       MDFY_RGN_CD = #{modifyRegionCode} 
 WHERE SF_LGN_ID ='@yopmail.com' --login ID 
   AND LGN_ID_TP_CD = '003' --지역코드 
   AND DEL_YN_FG = 'N'  -삭제여부 
--; 

===> @yopmail.com/osp123(sM6HMRYe4+/ZoPjWxUAvtWca3SQ=) 
---------------------------------------------------------------------------------------------------------------- 
    
- /IdentityBizImpl.java 파일에서 
/**  Password를 암호화한다.  */ 
public String getEncPassword(String userID,String password)  {  
 String rst = null; 
        String strPassword = "osp123";   //TEST =====> 패스워드 임의 생성 
     log.debug("[getEncPassword()] [패스워드 확인] @@@@ ==> [userID]"+ userID +"[password]"+ password +"[strPassword]"+ strPassword );  
      
        if("".equals(strPassword)) {  //strPassword가 null 이면 
         password = password; 
        } else { 
         password = strPassword; 
        } 
        log.debug("[getEncPassword()] ==> [변경 요청 패스워드] @@@@ ==[userID]"+ userID +"[password]"+ password );  
         
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

- soap UI Groovy Script 대버깅 
String newPassword = context.expand( '${MakePasswordForEmailID - Request 1#Response}' ) 
println("[=======================================]");  
println("[temporary password동적생성] ==> [newPassword]"+ newPassword );  
println("[=======================================]");  
testRunner.testCase.testSuite.setPropertyValue( "newPassword",newPassword ) 
==============================================================================================================

- P4에서 import 받은 파일 한글 깨짐 
1. sample 소스 ===> //OSP/IOSP/Workspace/Architect/Sample/trunk/sample-svc/ 
2. 조치:  /auth-svc(마우스 우 클릭) > properties(새창) 
1) Resource(Tab) > Text file encoding: Other: UTF-8로 변경 
--------------------------------------------------------------------------------------------------------- 

- P4 소스 위치 
1. sample 소스 ===> //OSP/IOSP/Workspace/Architect/Sample/trunk/sample-svc/ 
2. auth 소스 ==> //OSP/IOSP/Workspace/Account/Auth/auth-svc/ 
3. sf 2.0 소스 ==> //OSP/SERVER/sf/trunk/sf-ear/* 
4. profile 2.0 소스 ==> //OSP/OSPS2.0/OSP2_PJT/Profile/trunk/profile-ear/ 
==============================================================================================================

- JUnit 설정 
1. 서버 Start 에러 
경고: [SetPropertiesRule]{Server/Service/Engine/Host/Context} Setting property 'source' to 'org.eclipse.jst.jee.server:auth-svc'  
did not find a matching property. 
심각: Error configuring application listener of class org.springframework.web.util.Log4jConfigListener 
java.lang.ClassNotFoundException: org.springframework.web.util.Log4jConfigListener 
2. 조치: tomcat 서버(마우스 우 클릭) > clean 
--------------------------------------------------------------------------------------------------------------------------- 

1. 서버 Start 에러 
ERROR: org.springframework.test.context.TestContextManager - Caught exception while allowing TestExecutionListener  
[org.springframework.test.context.support.DependencyInjectionTestExecutionListener@1fbe226]  
to prepare test instance [com.samsungosp.auth.oauth2.service.AuthServiceTest_authenticate_Test@161dfb5] 
java.lang.IllegalStateException: Failed to load ApplicationContext 

Caused by: org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'oauth2Biz': 
Injection of autowired dependencies failed; nested exception is org.springframework.beans.factory.BeanCreationException:  
Could not autowire field: private com.samsungosp.auth.oauth2.biz.Oauth2VerifyBiz com.samsungosp.auth.oauth2.biz. 
Oauth2BizImpl.oauth2VerifyBiz; nested exception is org.springframework.beans.factory.BeanCreationException:  
==============================================================================================================

- 세븐 당구 동호회(시청 지역)2 
21:40 퇴근  
22:30 고려 당구클럽: 세븐 당구 동호회(서울 시청 지역), 회비 만원 
23:00 시스템 설명(사장님: 파이브앤 하프시스템(쓰리가락, 우라칠때이용),시드시스템(투가락 안으로 걸어치기)) 
00:00 당구 게임(회원(삼성전자), 2:1승(100)) 
03:00 당구 게임(사장, 2:0 승(100)) 
05:00 당구 게임(종업원, 1:1 무(100)) 
06:00 종료  
07:00 출근 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.03.24(토) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 14:20  

- IOSP(/oauth2) Prj
- JUnit 설정 
1. P4 로그인이 안되어서 일찍 퇴근 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.03.25(일) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

▦조기축구
07:00 기상 
08:00 신구초등학교 
08:10 조기축구(3:1 패) 
09:00 조기축구2(1:0 패): 골키퍼 
1000 조기축구2(4:2 패) 
10:50 조기축구3(6:2 승) 
11:20 종료 
11:20 중식(김치찌게: 효순이형 가게(형들이 4만원 각출 함)) ==> 부옹성(5434-1778): 서울 강남구 신사동 590-12 
12:50 종료 
13:00 잠실역(정홍이 차) 
14:00 수화(안) 
17:00 철수(애인모드, 계대 후배) 
18:00 석식 
18:20 종료 
19:20 귀가 
23:50 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.03.26(월) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 20:00 

- IOSP(/oauth2) Prj
- JUnit 설정 
1. JUnit 환경 설정 
-Dosp.home.dir="C:\OSP2.5\localhome" -Dcomponent.name="auth" -Dosp.server.type="local"  
-Dtangosol.coherence.cacheconfig="C:\coherence-putter-utility\osp2_cache_config.xml"  
-Dtangosol.coherence.clusteraddress="224.3.10.81" -Dtangosol.coherence.clusterport=30981 -Dtangosol.coherence.ttl=0 
--------------------------------------------------------------------------------------------------------- 

- 1. JUnit 서버 Start 에러 
ERROR: org.springframework.test.context.TestContextManager - Caught exception while allowing TestExecutionListener  
[org.springframework.test.context.support.DependencyInjectionTestExecutionListener@10d4f27] to prepare test instance  
[com.samsungosp.auth.oauth2.service.AuthServiceTest_authenticate_Test@3b8b49] 
java.lang.IllegalStateException: Failed to load ApplicationContext 

Caused by: org.springframework.beans.factory.BeanInitializationException: Could not load properties; nested exception is  
java.io.FileNotFoundException: class path resource [config/${osp.server.type}/applicationSystemConfig.xml] cannot be  
opened because it does not exist 
2. 조치: /applicationContext-datasource.xml 파일에서 
 <!--  <context:property-placeholder location="classpath:config/${osp.server.type}/applicationSystemConfig.xml"/>  //주석 처리--> 
<bean id="propertyConfigurer" class="com.samsungosp.framework.crypto.EncryptablePropertyPlaceholderConfigurer"> 
	<property name="locations"> 
	    <list> 
	<value>classpath:config/local/applicationSystemConfig.xml</value> 
	    </list> 
	</property> 
</bean>  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.03.27(화) 작업 ■■■■■■■■■■■■■■■
---> 07:05 ~ 21:00 --> 중식(중국집(희원: 코스요리): 김성채 팀장, 팀원, PM) 

- IOSP(/oauth2) Prj
- JUnit 설정  
- 1. JUnit 서버 Start 에러 
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
2. 조치: CommonDAO.java의 파일 대소문자 맞춰 줄 것  
==============================================================================================================

- SoapUI 세팅 완료(InterceptorService) 
1. 워크스페이스: ws_TaemanJin_soapui 
D:\OSP\4.workspace\SERVER\oat\trunk\openapi-soapui-test\ws_TaemanJin_soapui-workspace.xml 
2. 프로젝트 생성: OSPS_oauth2 
D:\OSP\4.workspace\SERVER\oat\trunk\openapi-soapui-test\src\OSPS_oauth2 
3. Rest Service 생성 
 1) Service Name: InterceptorService 
 2) Service Endpoint: http://localhost:8080 
4. Rest Resource 생성 
 1) Resource Name: initConfigPool, isAppIdEntryExist, getSession, isExistsNonce, addNonce, 
 getAppIdEntry, getNonce, isBypass, shouldDenyInvalidSignature, shouldCheckTimeStamp, 
 shouldCheckNonce, shouldCheckSignature, isValidTimeStamp 
 2) Resource Path/Endpoint: /security/acc/initConfigPool, /security/acc/isAppIdEntryExist, /security/acc/getSession, 
 /security/acc/isExistsNonce, /security/acc/addNonce, 
/security/acc/getAppIdEntry, /security/acc/getNonce, /security/acc/isBypass, /security/acc/shouldDenyInvalidSignature, 
/security/acc/shouldCheckTimeStamp, 
/security/acc/shouldCheckNonce, /security/acc/shouldCheckSignature, /security/acc/isValidTimeStamp  

5. Rest Method 생성 
 1) Method Name: initConfigPool, isAppIdEntryExist, getSession, isExistsNonce, addNonce, 
 getAppIdEntry, getNonce, isBypass, shouldDenyInvalidSignature, shouldCheckTimeStamp, 
 shouldCheckNonce, shouldCheckSignature, isValidTimeStamp 
 2) http Method : GET 

6. Test Suite 생성 
1) New TestSuite: InterceptorService_initConfigPool, InterceptorService_isAppIdEntryExist, InterceptorService_getSession, 
InterceptorService_isExistsNonce, InterceptorService_addNonce, 
 InterceptorService_getAppIdEntry, InterceptorService_getNonce, InterceptorService_isBypass, 
 InterceptorService_shouldDenyInvalidSignature, InterceptorService_shouldCheckTimeStamp, 
 InterceptorService_shouldCheckNonce, InterceptorService_shouldCheckSignature, InterceptorService_isValidTimeStamp 

7. Test Case생성 
1) New TesetCase: initConfigPool_200_01, isAppIdEntryExist_200_01, getSession_200_01, isExistsNonce_200_01, addNonce_200_01, 
 getAppIdEntry_200_01, getNonce_200_01, isBypass_200_01, shouldDenyInvalidSignature_200_01, shouldCheckTimeStamp_200_01, 
 shouldCheckNonce_200_01, shouldCheckSignature_200_01, isValidTimeStamp_200_01 

1) New TesetCase: initConfigPool_400_SSO_1000_02, isAppIdEntryExist_400_SSO_1000_02, 
getSession_400_SSO_1000_02, isExistsNonce_400_SSO_1000_02, addNonce_400_SSO_1000_02, 
 getAppIdEntry_400_SSO_1000_02, getNonce_400_SSO_1000_02, isBypass_400_SSO_1000_02, 
 shouldDenyInvalidSignature_400_SSO_1000_02, shouldCheckTimeStamp_400_SSO_1000_02, 
 shouldCheckNonce_400_SSO_1000_02, shouldCheckSignature_400_SSO_1000_02, isValidTimeStamp_400_SSO_1000_02 

2) New TesetCase: setUp ===> Groovy Script: userName_동적생성 
String userName = "@yopmail.com";   //login 아이디(@yopmail.com, 1semi.*@*.*) 
testRunner.testCase.testSuite.setPropertyValue("userName", userName ) 
3) New TesetCase: tearDown 
8. Add Step 생성 
1) initConfigPool_200_01 > Test Steps(마우스 우 클릭) > Add Step > REST Test Request: initConfigPool(확인) 
> Select REST method to invoke for request: InterceptorService_initConfigPool -> initConfigPool -> Request 1(확인) 
==============================================================================================================

- 1. DB 연결 에러 에러 
DEBUG: org.springframework.jdbc.datasource.DataSourceUtils - Fetching JDBC Connection from DataSource 
org.springframework.jdbc.CannotGetJdbcConnectionException: Could not get JDBC Connection; nested exception  
is org.apache.commons.dbcp.SQLNestedException: Cannot create PoolableConnectionFactory (Communications link failure 
2. 조치: C:\OSP2.5\localhome\comp\auth\config 폴더 생성하지 말 것 
==============================================================================================================

- 20012년 신사 조기회 회비 송금 
1. 신한은행(110-318-342822), 예금주: 구창원(총무) ==> 6만원(1~3월) 송금 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.03.28(수) 작업 ■■■■■■■■■■■■■■■
---> 07:05 ~ 21:20 

- IOSP(/oauth2) Prj
- JUnit 설정  
- 1. JUnit 서버 Start 에러  
==============================================================================================================

- 1. 서버 Start 에러 
Multiple annotations found at this line: 
- No setter found for property 'loggingExcludedUrlMappings' in class 'com.samsungosp.framework.interceptor. 
RequestInfoInterceptor' [config set: auth-svc/web- context] 
- No setter found for property 'loggingExcludedUrlMappings' in class 'com.samsungosp.framework.interceptor. 
RequestInfoInterceptor' 
2. 조치: /servlet-interceptor.xml 다시 Update 받음(공통쪽에서 수정해서 에러 남) 
==============================================================================================================

- 1. 서버 Start 에러 
DEBUG: org.springframework.jdbc.datasource.DataSourceUtils - Fetching JDBC Connection from DataSource 
org.springframework.jdbc.CannotGetJdbcConnectionException: Could not get JDBC Connection; nested exception 
is org.apache.commons.dbcp.SQLNestedException: Cannot create PoolableConnectionFactory (Communications link failure 
2. 조치:  
1) Spring에서 JDBC 연동하여 DB에 접근중 위와 같은 에러가 발생하였다. 알고보니 password가 틀렸다.  
CannotGetJdbcConnection 문제 발생시 DB 연동 관련된 properties를 잘 보면 풀릴듯 싶다. 
2) /local/applicationSystemConfig.xml 파일에서 username, password 확인 
<!-- ======================================== --> 
<!--         ORACLE JDBC Configuration        --> 
<!-- ======================================== -->     
<entry key="oracle.jdbc.driverClassName">oracle.jdbc.driver.OracleDriver</entry> 
<!--entry key="oracle.jdbc.driverClassName">core.log.jdbc.driver.OracleDriver</entry--> 
<entry key="oracle.jdbc.url">jdbc:oracle:thin:@50.16.234.94:1521:DEVIOSP1</entry> 
<entry key="oracle.jdbc.username">wsoc</entry>   
<entry key="oracle.jdbc.password">osp123</entry> 
==============================================================================================================

1. 서버 Start 에러 
org.springframework.beans.factory.BeanDefinitionStoreException: Failed to load bean class: com.samsungosp.auth.user.dao.CommonDAOImpl;  
nested exception is java.io.FileNotFoundException: class path resource [org/mybatis/spring/support/SqlSessionDaoSupport.class]  
cannot be opened because it does not exist 
2.  
1) C/:\OSP2.5\lib_repository\repository 폴더 삭제 처리하고 다시 빌드 할 것 
2) //applicationContext-datasource.xml 파일에서  username, password 명시적으로 넣어줄 것 
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

■■■■■■■■■■■■■■■■■■ 2012.03.29(목) 작업 ■■■■■■■■■■■■■■■
---> 07:05 ~ 21:30 

- IOSP(/oauth2) Prj
- JUnit 설정  
1. JUnit 서버 Start 에러 
System.out.println("[testGetSample()] ==> [result]"+ result +"\n" ); 
==============================================================================================================

- JUnit에러 
1. 에러 내용: Test class not found in selected project 
2. 조치: 2번째 함수에 @Test(expected=OSPException.class) 추가 
==============================================================================================================

- Prevent 처리   
1. Build 실행: Command 창에서 실행 
1) C:\prevent-win32-4.5.1\bin> msc-build-java.bat 
2. 폴더 생성 후 붙여넣기 
1) P4 : //OSP/IOSP/Co-work/3. Prevent/PVT#1/2012-03-30/auth-llib.zip, auth-svc.zip 
==============================================================================================================

- 정적분석(JTest) 
1. P4: //OSP/IOSP/Co-work/4. 정적분석/2012-03-30/auth-2012-03-29.pdf 
2. Report Server 설정 
1) Host name: 10.254.218.81 
2) User name: admin  
3) Password : admin 
4) Project 선택: IOSP_AUTH(클릭) 
3. Project Property 설정  
1) Key: auth-svc, Value: OSPS 
2) Key: auth-lib, Value: OSPS 
3) Key: acc-pool-manager, Value: OSPS 
==============================================================================================================

- 프린터 출력 에러 
1. 부서코드 오류(삼성 SCX-7635_7645 Series PCL6) 
2. 인쇄 기본설정 클릭시 에러 발생 
3. 원격 서비스(조현종 사원): http://www.11st.co.kr ==> 실패(Virus 먹었다고 주장함) 
http://www.samsung.com/sec/support/download/supportDownloadMain.do 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.03.30(금) 작업 ■■■■■■■■■■■■■■■
---> 07:05 ~ 21:40 

- IOSP(/oauth2) Prj
- stg#1 서버 세팅 
1. 통합 OSP_AA_branch Label & Merge 
1) 통합OSP.AA Deployment branch Label & Merge Guide.ppt 파일 참조 
----------------------------------------------------------------------------------------------------------------------------- 

- hosts 파일 설정 
1. hosts 설정 
1) iosp_dev_hosts_direct(더블 클릭) --> 개발서버 호출시 사용 
2) iosp_stg1_hosts_direct(더블 클릭) --> STG서버 호출시 사용 
2. STG 설정 
## EUCloud: 176.34.99.237 ===> 71. STG서버_EUCloud_71: 176.34.99.237:70  
## EUIDC: 176.34.99.254 ===> 72. STG서버_EUIDC_72: 176.34.99.254:70  --> tomcat 호출시 사용 
## USCloud: 184.73.161.211 ===> 73. STG서버_USCloud_73: 184.73.161.211:70 
## USIDC: 184.169.145.113 ===> 74. STG서버_USIDC_74: 184.169.145.113:70 
## CNIDC: 122.248.232.129 ===> 75. STG서버_CNIDC_75: 122.248.232.129:70 
==============================================================================================================

- Oracle DB 연결 
1. 개발 DB 서버 
1) 호스트(H): 50.16.234.94: 1521 
2) 서비스 이름(A)름: IOSPS1US 
3) 사용자(U): wsoc/osp123   

3. stg#1 DB 서버(EU-IDC 대응) 
1) 호스트(H): 127.0.0.1: 1521 ===> 터널링(176.34.96.106:1521)  
2) 서비스 이름(A): IOSPS1EU 
3) 사용자(U): wsoc/osp123  

2. stg#1 DB 서버(US-IDC 대응): 사용 안함 
1) 호스트(H): 127.0.0.1: 1521 ===> 터널링(184.169.135.80 :1521) 
2) 서비스 이름(A): IOSPS1US 
3) 사용자(U): wsoc/osp123  
==============================================================================================================

- stg#1에서 조회 에러 @@@@@@@@@@@  ===> table 미 존재 
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

- client stub 생성 
1. /stub-client-sample/src/com/samsungosp/client/auth/AuthServiceClient.java 
2. http://devdoc.iosp.com/download/authauth-client.jar 파일 복사하여 
D:\OSP2.5\workspace\IOSP\Workspace\ClientStubSample\trunk\lib\auth-client.jar 파일 덮어쓰기 
==============================================================================================================

- 귤 구매 금액 송금(작은 누나 추천) 
1. 농협(22504756017792), 예금주: 고옥희 ==> 3만 5천원 송금 
==============================================================================================================

21:40 퇴근  
22:30 고려 당구클럽: 세븐 당구 동호회(서울 시청 지역), 회비 만원 
23:00 시스템 설명(사장님: 파이브앤 하프시스템(쓰리가락, 우라칠때이용),시드시스템(투가락 안으로 걸어치기)) 
00:00 당구 게임(3구, 2:1승(10개))  ====> 2012.03.31(토) 
03:00 당구 게임(3구(3명), 2등(10개)) 
05:00 당구 게임((3구(3명), 2등(10개) 
05:00 당구 게임(3구, 1:0승(10개)) 
09:10 종료  
10:00 귀가 
10:20 취침 
16:00 기상 
16:30 중식(라면) 
17:20 집출발 
17:30 낙성대역 
18:30 안산 중앙역 
18:50 주공 APT 6동 505호(고종사촌 동생 동욱이집) 
19:00 길 잃음(중앙초교 -> 덕성초교 --> 충효입구 -> 세무사사거리 -> 안산시청 -> 소방서사거리(택시: 3천원) 
19:50 삼학도만나(031-480-6860, 안산시 단원구 고잔동 716-2, 삼학도만나) 
19:55 안산 번개(국결행사 모임): 엔 준 산본, 필리핀 와이프 외 10명(매너저님, 최실장님) 
21:00 종료 
21:10 맥주집 
22:50 종료 
22:55 안산 고잔역(택시:2천원) 
23:14 지하철 탑승 
00:00 사당역 
00:05 낙성대역 
00:20 귀가 
01:00 취침 
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■