

�����������������������������������������������������������
+---------------------------------------------// Memo(2012.05) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2012.05.01(ȭ) �۾� ����������������
---> 07:50 ~ 15:00 --> �뵿��, ġ�� ġ��(�Լ� ���ļ� 1���� ���� �䵵 ����� �� ����) 

- IOSP(/oauth2) Prj
- createUserAuthToken(), createAuthorizationCode(), revoke() ���� 
1. response �߰�(�׽�Ʈ) 
==============================================================================================================
   
04:50 ��� 
04:50 �����̾�(����:�ǽ�Ƽ) ==> (36���� ���� 1:0 �й� -> ���� 86������ ����, �������� �ǽ�Ƽ 1�� 
06:50 �ű��ʵ��б� ==> ������(�� ã�� ��): ����� ��� �౸ ���� 
07:00 ���(�ɾ ����823 �������� ��) 
11:30 �߽�(�ᳪ������)  
15:00 ���  
15:50 �ٺ�ġ ġ���ǿ� 
16:00 ���̸� ���� 
17:00 �Ͱ� 
18:00 �ٺ�ġ ġ���ǿ�(���� �Ʒ� ��ݴ� 2�� ġ��, ������ �۰��� 1�� ġ��)  
20:00 ����(������ ȭ���� ����) 
17:00 �Ͱ� 
08:00 ��ħ  
-------------------------------------------------------------------------------------------------------- 

- ġ��ġ��(�ٺ�ġ ġ���ǿ�: T)884-2757) ==> ġ�� 
1. ġ��(���� �Ʒ� ��ݴ� 2�� ġ��, ������ �۰��� 1�� ġ��) ==> 3�� 105���� 
2. ���̸���(6����) ==> ���� 
3. ���� �Ʒ� ��ݴ� �ݰ�(5����) ==> �� 100����(94���� ī�� ���, 6���� ���� ���) 
==============================================================================================================

������������������� 2012.05.02(��) �۾� ����������������
---> 07:15 ~ 21:00 

- IOSP(/oauth2) Prj
- createUserAuthToken(), createAuthorizationCode(), revoke() ���� 
1. response �߰�(�׽�Ʈ) 
1) response.addHeader("Location", result.toString());  //==> Response does not contain any headers. 
---------------------------------------------------------------------------------------------------------- 

- SocialProxyServlet.java ���Ͽ��� 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse; 

response.addHeader(headerName, headerValue); 
==============================================================================================================

- check_mandatory �߰� 
1. �ʼ� �׸� üũ(���� ������ ��) 
==============================================================================================================

- Client Stub Gen ���� ���(local����)  @@@@@@@ 
1. auth-svc project���� Run As ==> Maven build ==> Goals: dependency:copy-dependencies�� ���� 
2. Build.xml ���� 
1) Build.xml(���콺 ������ ��ư) ==> Run As ==> 1. Ant Build ==> Edit configration(��â) >  
Target(Tab) : clean-all, build(üũ) > Apply(Ŭ��) > Run(Ŭ��) 
[jar] Building jar: D:\OSP2.5\workspace\IOSP\Workspace\Account\Auth\trunk\auth-svc\dist\auth-client.jar 
BUILD SUCCESSFUL 
Total time: 16 seconds 
3. /auth-svc/dist/auth-client.jar�� /auth-svc/auth-client/src/main/java/com/samsungosp/auth/oauth2/service 
/AuthServiceResourceClient.java�� ������ 
---------------------------------------------------------------------------------------------------------- 

- java Application(local����)  @@@@@@@ 
1. /stub-2.0-client-sample(���콺 �� Ŭ��) > Import as Project 
(/ClientStubSample/branches/stub-2.0-client-sample ����) 
2. Package �� ���� ���� �� ���� ���� �۾�: com.samsungosp.client.auth, 
/stub-2.0-client-sample/src/com/samsungosp/client/auth/AuthServiceClient.java 
3. Tomcat v6.0 Server at localhost ���� 
4.  java Application ���� 
1) AuthServiceClient.java(���콺 �� Ŭ��) > Run As > java Application(Ŭ��) 

- java Application ȯ�� ���� 
1. Name: 91. AuthServiceClient[Client Stub] 
2. Project: stub-2.0-client-sample 
3. Maiin Class: com.samsungosp.client.auth.AuthServiceClient 
4. Arguments: Arguments> VM Arguments: Tomcat v6.0 Server at localhost �����Ͽ� �ٿ��ֱ� ó�� 
---------------------------------------------------------------------------------------------------------- 

- client stub �׽�Ʈ ���(local����)  @@@@@@@ ==> /stub-2.0-client-sample 
1. /auth-svc/auth-client/src/main/java/com/samsungosp/auth ������ ���� 
2. /stub-2.0-client-sample/src/com/samsungosp ������ �ٿ��ֱ�(/stub-2.0-client-sample/src ������ �ش� pakage ������) 
3. /stub-2.0-client-sample/src/com/samsungosp/client/auth/AuthServiceClient.java ���Ϸ� �����(Open Declaration�� 
��������) 
4. /AuthServiceResource.java ���� @param �� ��Ȯ�� ������ ��(log.debug ������) 
1) * @param grant_type [required] - only use in Customized Flow for Device 
* @param client_id [required] - app_id is client identifier. 
2) AuthServiceResource.java ���Ͽ��� 
public class AuthServiceResourceClient extends GenericResourceClient { 
public java.lang.String createUserAuthToken ( 
// content-type(response type) 
builder = builder.type(MediaType.valueOf("text/xml")); 
builder = setHttpHeader(builder); 
System.out.println("[/AuthServiceResourceClient.java] [createUserAuthToken()] ==> [resource]"+ resource +"[builder]"+ builder ); 

getResponseHttpHeader().setProperties(response.getMetadata()); 
int responseHttpStatus = response.getStatus(); 
System.out.println("[/AuthServiceResourceClient.java] [createUserAuthToken()] ==> [responseHttpStatus]"+ responseHttpStatus ); 
} 
} 
---------------------------------------------------------------------------------------------------------- 

1. IOSP Open API Client Stub Guide 
D:\OSP2.5\workspace\IOSP\Co-work\1. IOSP ���Ĺ���\1. Archtect\2.����\AA/����OSP_Open API Client  
Stub���̵�(v0.1)_AA.pptx 
2. Client Stub Development Guide 
D:\OSP2.5\workspace\DOC\DOC\OspServer\Work\3. OAF\3. SF/OAF_Client_Stub_Guide_v1 3.ppt 
==============================================================================================================

- ���α׷� ��ġ(Database for Oracle) 
1. OraClient10g ��ġ(setup. exe) 
 1) Oracle Ȩ������(http://www.oracle.com)���� client ��ġ������ �ٿ� �޴´�.  
��. ��ġ����: 10201_client_win32.zip   
��. ��ġ���� ���ÿ��� ������ ����(SQL Plus ��ũ��Ʈ�� ���ԵǾ��ִ�.)�� ���� 
 2) ����� ��ġ������ ������ ������ Ǯ�� setup.exe ������ �����Ų��.  
 http://blog.naver.com/wangkkulmul?Redirect=Log&logNo=30023175932 
 3) ���� Ȯ�� 
��. OraClient10g_Home1 > ���յ� ���� �� > SQLPlus ��ũ��Ʈ(��â) 
��. ����� �̸�(U): wsoc, ��ȣ(P): osp123, ����: 127.0.0.1:7080/DEVIOSP1(10.76.249.108:1521/DEVIOSP1) 
2. PL/SQL Developer 9.0.3 ��ġ(PLSQL Developer.exe) ==> ����(F8) 
---------------------------------------------------------------------------------------------------------- 

- ����Ŭ DB ���� ==>  
1. 70. ���� DB ����(�����Ʈ: 7080) 
1) ȣ��Ʈ(H): 10.76.249.108:1521 ==> wsoc/osp123 
2) ���� �̸�(A): DEVIOSP1 
2. 71. Stg_1 DB ����(�����Ʈ: 7070) 
1) ȣ��Ʈ(H):176.34.96.106 ==> wsoc/osp123 
2) ���� �̸�(A): IOSPS1EU 
==============================================================================================================

������������������� 2012.05.03(��) �۾� ����������������
---> 07:00 ~ 21:00 --> ����OSP PVT6�� ����, �輺ä ���� ���(6������ ����OSP �۷ι� Ȯ������ ���� �ϱ�� ���� ����) 

- IOSP(/oauth2) Prj
- createUserAuthToken(), createAuthorizationCode(), revoke() ���� 
1. response �߰�(�׽�Ʈ) 
1) response.addHeader("Location", result.toString());  //==> Response does not contain any headers. 
==============================================================================================================

- [iOSP] STG#2 ���� ��� 
1. ����OSP STG#1 Svc Build & Deploy > stg_auth_svc-build(�۾�) ==> ��� �������(Ŭ��) 
2. ����OSP STG#2 Svc Build & Deploy > svn_stg2_auth_svc-deploy(�۾�) ==> ��� �������(Ŭ��)  
3. Project svn_stg2_auth_svc-deploy(http://165.213.146.213:3450/view/4.Stg2%20Svc/job/svn_stg2_auth_svc-deploy/build?delay=0sec) 
BUILD_NUMBER: 7 ==> (BUILD_NUMBER: STG#1���� ���� ������ BUILD_NUMBER) 
4. Restart ==> 72. STG����_EUIDC(tomcat)_72 ���� ó��(STG#1 ����� ����) 

5. ���� ���� 
BUILD FAILED 
Target "cleanup-stg-svc" does not exist in the project "auth" ==> AA���� ���� ó�� 
---------------------------------------------------------------------------------------------------------- 

- [iOSP] STG#2 ���� ���� ��û 
# IOSP STG2 External # 
54.247.179.87 eu.api.samsungosp.com  
176.34.230.38 www.ospserver.net 
176.34.230.38 account.samsung.com auth.samsung.com 
176.34.230.38 dn2.ospserver.net up2.ospserver.net 
176.34.230.38 phub.samsungosp.com eu.phub.samsungosp.com api.samsungapps.com payment.ospserver.net 
176.34.230.38 eu.auth.samsungosp.com 
==============================================================================================================

- �����ڵ� �߰� 
1. Tomcat ����(���� Ŭ��) > Overview(ȭ��) > Opent launch configuration(Ŭ��) 
2. Tomcat v6.0 Server at localhost(��â) > Arguments > VM Arguments: -Dosp.center.countrycode=US-U 
==============================================================================================================

- putty�� �ͳθ� 
1. Session(Category) 
1) Saved Sessions: 00. Stg_1. IOSP_HUB(����) ==> 50.16.215.98:70 
2) Tunnels 
01. Stg_1_EU_Cloud_71 ==> 176.34.99.237:70[Source port::71] 
02. Stg_1_EU_IDC(tomcat)_72 ==> 176.34.99.254:70[Source port::72] 
03. Stg_1_US_Cloud_73 ==> 184.73.161.211:70[Source port::73] 
04. Stg_1_US_IDC_74 ==> 184.169.145.113:70[Source port::74] 
05. Stg_1_CN_IDC_75 ==> 122.248.232.129:70[Source port::75] 

2. Session(Category) 
1) Saved Sessions: 01. Stg_1_EU_Cloud_71 ==> localhost:71 
1) Saved Sessions: 02. Stg_1_EU_IDC(tomcat)_72 ==> localhost:72 
1) Saved Sessions: 03. Stg_1_US_Cloud_73 ==> localhost:73 
1) Saved Sessions: 04. Stg_1_US_IDC_74 ==> localhost:74 
1) Saved Sessions: 05. Stg_1_CN_IDC_75 ==> localhost:75  
------------------------------------------------------------ 

1. Session(Category) 
1) Saved Sessions: 20. Stg_2. IOSP_HUB(����) ==> 54.247.161.217:70 
2) Tunnels 
21. Stg_2_EU_Cloud_71 ==> 54.247.161.217:70[Source port::71] 
22. Stg_2_EU_IDC(tomcat)_72 ==> 54.247.167.97:70[Source port::72] 
23. Stg_2_US_Cloud_73 ==>  
24. Stg_2_US_IDC_74 ==> 184.169.141.194:70[Source port::74] 
25. Stg_2_CN_IDC_75 ==> 46.137.214.241:70[Source port::75] 

2. Session(Category) 
1) Saved Sessions: 21. Stg_2_EU_Cloud_71 ==> localhost:71 
1) Saved Sessions: 22. Stg_2_EU_IDC(tomcat)_72  ==> localhost:72 
1) Saved Sessions: 
1) Saved Sessions: 24. Stg_2_US_IDC_74 ==> localhost:74 
1) Saved Sessions: 25. Stg_2_CN_IDC_75 ==> localhost:75  
==============================================================================================================

- SC���� ����ĳ����(365�ڵ�ȭ: ������ ������ ���� ���� ��� ����) 
(http://asp.talkyple.com/scbank/map/index.jsp?type=2) 
1. ��������; ����Ư���� ���Ǳ� ���Ƿ�12�� 113(��õ7�� 1625-29) 
2. ���� ��ȣ��: ���ϵ� ���׽� �ϱ� ��ȣ�� 45(��ȣ�� 1053-2) 
3. 365�ڵ�ȭ �̿� ������ 
1) SC���� �ε帲 ���� ==> 24�ð� ����(������ ����ϰ� ����� ��) 
2) SC���� �ε帲2U ���� ==> ������ �ð� 600�� ������ 
==============================================================================================================

������������������� 2012.05.04(��) �۾� ����������������
---> 07:05 ~ 21:00 

- IOSP(/oauth2) Prj
- Client Stub Gen ���� 
1. ���� ����: CODSTA.BP.AMRO: Method 'createUserAuthToken' returns Object ==> Jtest ���� 
2. ��ġ: public static Object createUserAuthToken() { 
==> public static java.lang.String createUserAuthToken() �� ���� 
==============================================================================================================

- redirect_uri ���� ����(���� ����) 
response.setStatus(Oauth2LibConstants.HTTPSTATUS_INT_302);  //redirect message(302 ==> Location ����) 
result = ValidatorUtil.redirectionSetting(redirectUri, "code", jsonObject, state, null); 
response.addHeader("Location", result);  //Location �߰�  ===> 
//response.setStatus(200);  //���� message 

200 => "HTTP/1.1 200 OK", 
302 => "HTTP/1.1 302 Found", 
http://cafe.naver.com/q69/10259 
==============================================================================================================

21:00 ���  
21:50 ��� �籸Ŭ��: ���� �籸 ��ȣȸ(���� ��û ����), ȸ�� ����  
23:20 �籸 ����(3��(2��), 2��(5��)): ��� �� �� 
23:50 �߽�(«��):====> 2012.05.05(��) 
00:30 �籸 ����(4��(4��), ������(��)): �ҹ� ������ ����� ¥��� ����(��: ����) 
02:00 �籸 ����(4��(4��), ������(��))  
06:50 ���� 
07:00�ý��� ����(�Ӵٰ��� ����) 
08:30 ���� 
09:30 �Ͱ� 
16:00 ��� 
16:10 2012�� ��ݱ� ���ð��� ����(h: *) 
20:00 ���� 
23:00 ��ħ 
==============================================================================================================

������������������� 2012.05.06(��) �۾� ����������������
---> 07:00 ~ 18:00 

�������౸
07:00 ��� 
08:00 �ű��ʵ��б� 
08:30 �����౸(4:4 ��) 
09:30 �����౸(4:3 ��) 
10:30 ���� 
11:30 �߽�(�����Ĵ�: ��������): ������� �������� ���� ��ȭ�ؼ� ������ ��ȭ ��(�� ����) ==> 
        ������������ ���� �ش޶�� ��û�϶�� �� 
12:40 ���� 
13:30 BBQġŲ(������, �·�����, ȣ������): 2���� 
17:30 ���� 
17:30 �ý�(�·������� ���� ��) 
18:10 ��迪(�ýú�: 8õ 5��� ����) 
18:20 ����(461��) 
18:30 �̹� 
19:00 �Ͱ� 
20:00 ���� 
22:00 ��ħ 
==============================================================================================================

������������������� 2012.05.07(��) �۾� ����������������
---> 07:05 ~ 18:30 --> ����̳� �뵷(20���� �۱�), �߽�(account��: ��å��, ��Ű������(����)(http://www.makinochaya.co.kr)) 

- IOSP(/oauth2) Prj
- Client Stub Gen ����(�Ϸ�) 
1. /stub-iosp-client-sample 
1) ����: The declared package "com.samsungosp.client.auth" does not match the expected package" 
2) ����: D:\OSP2.5\workspace\IOSP\Workspace\ClientStubSample\branches\stub-iosp-client-sample\bin 
������ .class ���� ���� �ȵ�(Java Build Pah. Default output folder: stub-iosp-client-sample/bin) 
3) ��ġ: D:\OSP2.5\workspace\IOSP\Workspace\ClientStubSample\branches\stub-iosp-client-sample 
\src\com\samsungosp\client ���� �б� ���� ���� 
==============================================================================================================

[iOSP-����] STG_2 �׽�Ʈ ��Ȳ �� ���� ���� ��û 
1. 5���� SoapUI �׽�Ʈ Profile���� ��ǰ� �ִ� creatUser ���� 
==============================================================================================================

������������������� 2012.05.08(ȭ) �۾� ����������������
---> 07:00 ~ 18:00 --> �ٹ�ġ ġ��(�Ʒ��� 2��, ���� 1�� ���� �����), 2012�� ���ռҵ漼 �Ű� �ۼ�2 

- IOSP(/oauth2) Prj
- check_email_validation �߰� 
1. check_email_validation: Y 
-- 1. country+AppID ������ �����ʵ� ���ð� ��ȸ(���� ������ ��) @@@@ ==> Table ������ 
SELECT FLD_NM, MNDTRY_FG, DISP_ORD_NUM 
FROM TFMB_APSVC_JN_FLD 
WHERE CNTY_CD = 'KOR' 
  AND APSVC_ID =  '22n6hzkam0' 
  AND MNDTRY_FG = '1' 
ORDER BY DISP_ORD_NUM     
--; 

-- 2. Ÿ��Ʋ(prefixName) �׸� ������ ��� ��ȸ(���� ������ ��) @@@@ ==> Table ������ 
SELECT CNTY_CD, LANG_CD, CD_VAL, DISP_ALS_TXT 
FROM TFMB_PRFX_DFNTN T                      
WHERE CNTY_CD =  'KOR' 
    AND LANG_CD = 'KO' 
ORDER BY DISP_ORD_NUM  
--; 
==============================================================================================================

- �Ｚ���� myProject > B2B(���¾�ü �����) myProject ����Ʈ �ű� ���� 
https://partnerlogin.samsungelectronics.com/common/frameMain.jsp 
1. tamario/ssp**m8**1 
==============================================================================================================

- Junit �� �̿��� ȿ������ ���� �׽�Ʈ ���� 
http://www.javajigi.net/pages/viewpage.action?pageId=278 
==============================================================================================================

������������������� 2012.05.09(��) �۾� ����������������
---> 07:10 ~ 18:00 --> 2012�� ���ռҵ漼 �Ű� �ۼ�3 

- IOSP(/oauth2) Prj
- Merge �۾� 
1. check_email_validation �߰� 
==============================================================================================================

- ���������� ����[1�⿡ �ѹ���(4��) SC����(http://www.standardchartered.co.kr/gw/index.htm)���� ������ 
��(������ �� ��)] ==> 2013�� 5�� ���� ������ �� 
1. ������: 2012.05.09(��) 
2. ���¹�ȣ: 130-20-502841(13020502841) ==> ����ī�� 3, 4, 5�ڸ�: 429 
3. �����ID: tamario/ta****9 
4. ������ ��ȿ�Ⱓ: 2012/05/09 ~ 2013/05/08 
5. ������ ����: yessignCA Class1, ���������(�߱���), 2013-05-09(��������) 
6. �������� ���� > ���������� ���� > ������ ���� > ���������� �ٷΰ��� 
-------------------------------------------------------------------------------------------------------- 

- Ÿ�� ���������� ���(��������(http://www.kbstar.com)���� ����) 
1. ������: 2012.05.09(��) 
2. ���¹�ȣ: 640-21-0052-309(640210052309) ==> ����ī�� ��4�ڸ�: 3971 
3. �����ID: tamario/ta****9 
-------------------------------------------------------------------------------------------------------- 

- ���������� ����(����: ��������(http://www.myasset.com/myasset/mainindex.html) ���� ����)  
1. ���¹�ȣ: 710-01-003202(71001003202) 
2. ����ī�� �Ϸù�ȣ: 211(2,3, 4��° �ڸ�) 
==============================================================================================================

������������������� 2012.05.10(��) �۾� ����������������
---> 07:10 ~ 18:30 --> 2012�� ���ռҵ漼 �Ű� �ۼ�, merge �۾� ����(OSP2.0 profile_auth�����̷�_0209-0510.xml) 

- IOSP(/oauth2) Prj
- Merge �۾� 
1. Auth SCloud ���� ����߰� 
==============================================================================================================

- �߽�(��������(���ʿ� 7�� �ⱸ, 12��)) 
1. �ּ�: ����� ���ʱ� ���ʵ� 1719-3 ������� 202ȣ �������� ���� ������ ���������� 
2. ������ �ۼ� 
1) ���������ۼ���(�������� ����): 66,500��, ���: 3,00�� ==> ��: 69,500�� 
2) �������� ����: ����� ���ʱ� ����3�� 1572-1 �������� 4�� 
2. ��Ÿ 
1) Ư�� ����: 1������ ��ȣ �����Ͽ� ��ȯ ���� ���� 
2) ����: ������ ������ü, Ȥ�� �� �� �������� Ư���� ������� �Ǵ� ���������� ����(����)�� �������� ���� 
�ϴ� ��, Ȥ�� ������ �ڰ��� ���� �������� ����ڵ��� ����� ����, �������� �����ϰ� �Ͽ� ������ ������ 
�̿��� �����ϰ� �ϴ� ���� ���Ѵ�.  
������ ���ڴ� �������� �ϴ� �ε����Ⱑ ������, ���ڴ� �����ΰ��� ���� �յ������繫�ҿ� ���������� �� 
��� �������� �ϰ�, �����繫�Ұ� ���� ���� �������û �Ǵ� ��û�� �Ӹ���� �˻簡 ����Ѵ�. ��������  
�ۼ��� ������ ���������� �ϸ�, �̰��� �λ������̳� �������ǿ��� ������ ���ŷ��� �ֱ� ������ ���￹���� 
���� �����ذῡ�� ������ �ش�.  
���������� �������� �������� �� ���� ���(����)�� ���� ����� �ۼ��ϴ� �����ε�, �̰��� �ۼ��Ǹ� �̴� 
������ ������ �����ǹǷ� ������ ���� ������ �������� �����ȴ�. �׸��� ������ ������ �����繫�ҿ��� ���� 
�Ⱓ ���� �����ϱ� ������ �н��� ���赵 �پ���. 
���� ���� ��༭ ���� �ۼ��� ���� ���ŷ��� Ȯ���ϰ� ������ Ȯ���ϰ� �ϱ� ���� �����س��� ���� ����. 
==============================================================================================================

������������������� 2012.05.11(��) �۾� ����������������
---> 07:06 ~ 18:00 --> 2012�� ���ռҵ漼 �Ű� �ۼ�5 

- IOSP(/oauth2) Prj
- Merge �۾� 
1. Auth �̸������� ��� �߰� �� �ʼ��׸� üũ 
AUTH.AUT_1057.400=The pattern of a username(emailID) parameter is invalid (@UserService).  
// EMAIL_VLD_CHK Ȯ�� 
 UserBaseVO userBaseVOForCheckEmailValidation = userDAO.getUserBase(userID); 
==============================================================================================================

17:00 �̻��� �α�(�̸�Ÿ���� �̻� �غ�: ���� �̻�) 
17:50 ����  
18:00 ��� 
18:10 ����(û�� ���)  
19:40 ��� �籸Ŭ��: ���� �籸 ��ȣȸ(���� ��û ����), ȸ�� ����  
20:00 ȥ�� ����: ��� �� �� 
23:00 �籸 ����(3��(2��), ������(��)) 
01:00 �籸 ����(3��(2��), ������(��)) ====> 2012.05.12(��) 
04:00 ���� 
05:00 �籸 ����(3��(2��), ������(��)): �߰� �籸 ���� �� �� 
06:50 ���� 
07:50 �Ͱ� 
08:00 ���� 
16:00 ��� 
20:00 ���� 
23:00 ��ħ 
==============================================================================================================

������������������� 2012.05.13(��) �۾� ����������������
---> 07:00 ~ 18:00 

�������౸
07:00 ��� 
08:00 �ű��ʵ��б� 
08:30 �����౸(4:4 ��) 
09:30 �����౸(4:3 ��) 
11:00 ���� 
11:20 �߽�(�������: ������): ������ ������ �� 
12:30 ���� 
13:30 ��ȭ(���쳪�� ������: ���� ����(����: 18����) 
13:40 �޽�(TV ��û: �ں�, ����) 
18:10 �׸���(176cm, ��ô, ����(������ �ణ �̾���)) 
19:30 ���� 
19:50 ����(��ȭ) 
20:00 ���� 
20:50 �Ͱ� 
22:30 ��ħ 
==============================================================================================================

������������������� 2012.05.14(��) �۾� ����������������
---> 07:20 ~ 20:00 --> �̸�Ÿ�� �̻�(9��): ��Ǯ��, ũ������� ��Ź�� �ñ�, �ٸ��� 

- IOSP(/oauth2) Prj
- ���Ȱ��� ��ġ(Auth_-___OSP.doc) 
1. userPassword 
 1) /UserIdentificationVO.java  ���Ͽ��� 
public String getUserPassword() { 
return userPassword; 
}  

 2) /Oauth2VerifyBizImpl.java  ���Ͽ��� 
public Oauth2IsVaildUserVO isValidUser(String username, String password) throws OSPException {    
userIdentificationVOResult = userAuthBiz.getUserIdentification(userIdentificationVO);  //User DB, LDAP ��ȸ 
String returnPassword = userIdentificationVOResult.getUserPassword(); 
} 

 11) /UserAuthVO.java  ���Ͽ���  
public void setPassword(String password) { 
this.password = password; 
} 

  21) /IdentityBizImpl.java  ���Ͽ��� 
public UserAuthVO makePassword(UserAuthVO vo) { 
vo.setPassword(getEncPassword(vo.getUserID(), vo.getPassword())); 
} 

3. /AuthServiceTest_authenticate_Test.java ���Ͽ��� 
@Test 
public void testAuthServiceTest_authenticate_Test() throws OSPException { 
String m_pwd = "osp123";  //password -> m_pwd ���� 
} 
2. /UserConstants.java ���Ͽ��� 
public static final String NAME_CHECK_SITE_PASSWORD = "50831625" 
==> NAME_CHECK_SITE_PWD�� ����(NAME_CHECK_SITE_PASSWORD) 
==============================================================================================================

- IP �ּ�(����OSP Proj): �̸�Ÿ�� 9��(���� ������ ���ﵿ 825-22 �̸�Ÿ�� 9�� ����OSP Proj Account��)  
1. ������\��� ������ �׸�\��Ʈ��ũ �� ���� ����\��Ʈ��ũ ���� ==> ���ÿ��� ����: �Ӽ� > TCP/IPv4 
IP: 70.4.152.164 GW: 70.4.152.1 
SM: 255.255.255.0, DNS: 203.241.135.135, 203.241.135.85 
�ӽ� DNS: 54.247.161.217, 50.16.215.98 ==> 2012.05.16(��) 
----------------------------------------------------------------------------------------------------- 

- ������ ����(�̸�Ÿ�� 9��) 
01. Lexmark T652(9��) --> IP �ּ�: 70.4.152.191 
02. SCX-7635 Series PCL6(9��) --> IP �ּ�: 70.4.152.190 
==============================================================================================================

- Merge �۾� 
1. Auth �̸������� ��� �߰� �� �ʼ��׸� üũ 
==============================================================================================================

������������������� 2012.05.15(ȭ) �۾� ����������������
---> 07:20 ~ 21:00 

- IOSP(/oauth2) Prj
- ���Ȱ��� ��ġ(Auth_-___OSP.doc) 
1. IdentityBizTest.java 
==============================================================================================================

- deploy war ���� slimȭ ���� 
1./pom.xml ���Ͽ��� 
 <scope>provided</scope> <!--// deploy war ���� slimȭ ���� //--> 
<artifactId>spring-jdbc</artifactId>  <!--// deploy war ���� slimȭ ���� �ȵ�(���� �߻�) //--> 
==============================================================================================================

- �����ϰ� Source Folder ���� 
1. java���� ���� 
2. D:\OSP2.5\workspace\IOSP\Workspace\Account\Auth\trunk\auth-lib\src\test ������ �ٿ��ֱ� 
3  source Folder ����: auth-svc > Java Resources(���콺 �� Ŭ��) > New > source Folder 
1) Project Name: auth-svc 
2) Folder Name: src/test/java 
4. src/test/java source Folder���� ������ 
==============================================================================================================

������������������� 2012.05.16(��) �۾� ����������������
---> 07:10 ~ 21:00 

- IOSP(/oauth2) Prj
- PRT(Funkload) 
1. Funkload Client Script �ۼ� 
iosptest@ip-10-28-163-41:~$ cd /home01/iosptest/funkload/iosp/auth 
$ vi test_auth.py 
$ vi auth.conf 
$ vi monitor.conf 
==============================================================================================================

2. Funkload Command 
1) ����� Instance Start(���� ���� �� �ѹ� �� ����) @@@@@@@ 
$ fl-monitor-ctl monitor.conf start 

2) �� �� ȣ�� 
iosptest@ip-10-28-163-41:~$ cd /home01/iosptest/funkload/iosp/auth 
$ fl-run-test -dv test_auth.py auth.test_getInitResult  
$ fl-run-test -dv test_auth.py auth.test_createUserAuthToken 
$ fl-run-test -dv test_auth.py auth.test_createAuthorizationCode  ==> ���� �߻� 
$ fl-run-test -dv test_auth.py auth.test_authenticateApplication 
$ fl-run-test -dv test_auth.py auth.test_authenticateUserByEmailID    
$ fl-run-test -dv test_auth.py auth.test_validateUserByEmailId 

3) ���� �׽�Ʈ ��ɾ� 
$ fl-run-bench -c 100:300:400:500 -D 20 test_auth.py test_getInitResult 
$ fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_createUserAuthToken  
$ fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_createAuthorizationCode  ==> ���� �߻� 
$ fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_createUserAuthToken 
$ fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_authenticateApplication 
$ fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_authenticateUserByEmailID 
$ fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_validateUserByEmailId 
   
4) Run Script Background ���� 
$ nohup fl-run-bench -c 100:300:400:500 -D 20 test_auth.py test_getInitResult & 
$ nohup fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_createUserAuthToken & 
$ nohup fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_createAuthorizationCode & ==> ���� �߻� 
$ nohup fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_authenticateApplication & 
$ nohup fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_authenticateUserByEmailID & 
$ nohup fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_validateUserByEmailId & 
-------------------------------------------------------------------------------------------------------- 

3. Report �ۼ� @@@@@@@ 
$ cd /mnt/bench-log/auth 
$ fl-build-report --html /mnt/bench-log/auth/AUTH-credential-test.xml 
test_authenticateUserByEmailID-20120516T074633 ���� ==> ���� 

 1) ftp romote host: /home01/iosptest/funkload/iosp/auth 
 2) tar ���� ���� 
$ tar cvf test_auth.tar ./test_authenticateUserByEmailID-20120516T074633/ 
test_auth.tar  ==> ���� 
$ gzip ./test_auth.tar 
test_auth.tar.gz  ==> ���� 
-------------------------------------------------------------------------------------------------------- 

4. log  Ȯ�� 
$ cd /iosp/comp/auth/logs 
$ tail -f /iosp/comp/auth/logs/catalina.out   
$ tail -f /var/log/nginx/access.log  
==============================================================================================================

- Xshell ��ġ �� Xshell���� ����(�ͳθ�) ���� 
C:\Users\TAMA\AppData\Roaming\NetSarang\Xshell(http://www.netsarang.co.kr/download/down_xsh.html) 
- Xftp4 ��ġ 
http://www.netsarang.co.kr/download/down_xfp.html 
==============================================================================================================

- putty�� �ͳθ�(Funkload: stg2) 
1. Session(Category) 
1) Saved Sessions: 00. IOSP-HUB ==> 50.16.215.98:70 --> iosp-dev-auth.pem(auth) 
2) Tunnels 
91. Funkload client ==> 10.28.163.41:70[��� ��Ʈ(H)::91] 

2. Session(Category) 
1) Saved Sessions: 01. Funkload client ==> localhost:91 --> iosptest.pem(iosptest/iosptest) 
==============================================================================================================

- ���� ��ȸ(����������) 
$ find /iosp/comp/auth -name 'monitor.conf' 
$ mkdir tmp   ===> tmp ��� ���� ���� 
==============================================================================================================

- �������� ���� 
1. Account_auth(05.16).doc: 3�� ���� 
/Oauth2VerifyBizImpl.java, /Oauth2IssueBizImpl.java, /JsonObjectUtil.java 
==============================================================================================================

- �Ҿ� ���� ����(���� ����) 
1. ������� > �����ϱ�: http://www.mobilians.co.kr/korean/service/inquiry/board_write.php 
2. ���νŹ���(������ ��): http://www.epeople.go.kr 
�������� ��������� �����͢� �̿뼭�� �̿뼭�񽺢� ���񽺾�ü �������� �������� ����  �߽Ź�ȣ  010-3072-0  
2012/4/6  �������  1600-1705  ���۴�   1600-1705 ������Ÿ�� �Ϲݰ��� �Ҿװ���  www.comfany.com  16,500  
==============================================================================================================

������������������� 2012.05.17(��) �۾� ����������������
---> 07:00 ~ 20:50 

- IOSP(/oauth2) Prj
- PRT(Funkload) 
 1. ������4 ����(http://50.19.120.204/login.jsp) �Ⱥ��� ==> Fire Fox(������) ��ġ(jre6 ��ġ) 
==============================================================================================================

- Funkload ���� �׽�Ʈ ���(UIA) 
1. ������4 ����(http://50.19.120.204/login.jsp) > ��� �м� > ���� > ���� ����  
-> ������Ʈ: UIA, ��¥: �Ϸ� ����(�˻�: Ŭ��) ==> 5. ������Ʈ �� ��Ȳ(5�� ����) 
 1) �ִ� TPS ==> ���� ��û�� > �ִ�: 124.90 
 2) 0.3�� �̳� TPS ==> ���� ��û�� > ���: 2.14 
 3) Max CPU(%) ==> �ý��� CPU ����(%) > �ִ�: 83.06 
 4) �ִ� Memory ��뷮(%)  ==> �� �޸� ��뷮(MB) > ���: 144.00 

2. ����ð� �׷��� �м�(����OSP_�����׽�Ʈ_Auth.ppt����) 
D:\02. TAMA Project\01. 2012.02(����OSP_IL4U)\00. Work\74. PRT(Funkload)\02. Funkloal Report 
\test_createUserAuthToken-20120516T232740\index.html(Ŭ��) 
5. Request stats 
1) PPS(Requests Per Second), RPT(Requests Response Time 
==============================================================================================================

- STG#2 �ǿ��� ������ �׽�Ʈ ���� 
1. Auth_auth.samsungosp.com_20120517_001 
 1) createAccessToken_200_01 
 2) revoke_200_01 
2. Auth_auth.samsungosp.net_20120517_001 
 1) createAccessToken_200_01 
 2) revoke_200_01  
3. ���� ���� 
 1) cache Method ����(Coherence ��ȸ�� �ȵ�: ������(/Oauth2CacheBizImpl.java���Ͽ���) 
public List<ProfileOauthAccessTokenEntryVO> existAccessToken(ProfileOauthAccessTokenEntryVO profileAccess 
TokenEntryVO) throws OSPException {  
List<PoolDataVO> searchedAccessTokenList = ospMemory.getAllAccessToken(params); 
} 
4. ��ġ 
 1) Coherence ����� �� ���� ����� 
==============================================================================================================

������������������� 2012.05.18(��) �۾� ����������������
---> 07:05 ~ 20:40 

- IOSP(/oauth2) Prj
- Merge �۾� 
1. disclaimer �߰� ����(/RequestTokenVO.java����) 
1) auth-client-1.0.jar ���ϰ� �浹 ���� ������ ���� 
2) requestUserauthTokenVO.setDisclaimer(disclaimer);   // disclaimer����(/AuthServiceResourceImpl.jva����) 
D:\OSP2.5\workspace\IOSP\Workspace\Account\Auth\trunk\auth-svc\dist/auth-client.jar �����Ͽ� 
C:\OSP2.5\lib_repository\repository\com\samsungosp\auth-client\1.0/auth-client-1.0.jar�� �����  
==============================================================================================================

- auth-client ���� ����(/repository ��������) 
1. C:\OSP2.5\lib_repository\repository\com\samsungosp/auth-client ���� ���� 
2. eclipse ����� 
3. auth_svc > java Resources > Libaries > Maven Dependencies���� auth-client.jar �� ����(�����Ǿ���) 
==============================================================================================================

- ���� merge�۾��� ���� ���̺� ���� ��û 
1. OSP2.0�� ��Ȳ(���� ����) 
 1) auth1.0���� ���� ���̺� ����(SMB) 
 2) auth2.0���� ���̺� �����Ͽ� auth1.0 ���� ���̺�� ETL�� ���ؼ� ����ȭ 
2. OSP2.5�� ��ȹ(���� ���� ��Ȳ) 
 1) auth1.0���� ���� ���̺� ����(SMB): DBA���� SYNONYM �Ұ��� �ϴٰ� �뺸 
 2) auth2.0���� JNDI�� ���ؼ� ����(�ּ�å)  
 3)auth2.0���� ���̺� �����Ͽ� auth1.0 ���� ���̺�� ETL�� ���ؼ� ����ȭ(����å: ���� ���) 
3. ��� 
 1) JNDI�� �̿��� ��� �˾ƺ� ��(7�� �߼� ���� �̰� �� ����) 
----------------------------------------------------------------------------------------------------- 

 1. �ʼ��׸� üũ   ==> getCheck_mandatory �߰� 
< !--// country+AppID ������ �����ʵ� ���ð� ��ȸ //-->    
SELECT * 
FROM   TFMB_APSVC_JN_FLD 
--; 

<!--// Ÿ��Ʋ(prefixName) �׸� ������ ��� ��ȸ  //-->    
SELECT * 
FROM   TFMB_PRFX_DFNTN 
--;  
==============================================================================================================

- auth2 ���� 
1. ��� üũ �� ���� 
cc, mcc, tnc_type_code, privacy_accepted 
2. �̸��� ���� 
check_email_validation 
3. �ʼ��� üũ 
check_mandatory, country, appId, langCode 
4. 3rd Party disclaimer 
appId, disclaimer(3rd Party(���»� ����) ���� ����) 
==============================================================================================================

- ũ�ν� ����Ʈ ��ũ����(XSS) ����� ���� 
1. ���� ���� 
 1) createAccessToken__200_OK_01 > createAuthorizationCode  > state ������ "><script>alert('xss')</script> ���� ���� 
2. ��ġ 
 1) state = StringUtil.cleanXSS(state);  //XSS ����� ���� 
==============================================================================================================

17:00 �̻��� �α�(�̸�Ÿ���� �̻� �غ�: ���� �̻�) 
17:50 ����  
18:00 ��� 
18:10 ����(û�� ���)  
19:40 ��� �籸Ŭ��: ���� �籸 ��ȣȸ(���� ��û ����), ȸ�� ����  
20:00 ȥ�� ����: ��� �� �� 
23:00 �籸 ����(3��(2��), ������(��)) 
01:00 �籸 ����(3��(2��), ������(��)) ==> 2012.05.12(��) 
04:00 ���� 
05:00 �籸 ����(3��(2��), ������(��)): �߰� �籸 ���� �� �� 
06:50 ���� 
07:50 �Ͱ� 
08:00 ���� 
16:00 ��� 
20:00 ���� 
23:00 ��ħ 
==============================================================================================================

������������������� 2012.05.19(��) �۾� ����������������
---> 07:00 ~ 18:00 

�������౸
05:30 ���  
06:30 �ű��ʵ��б� 
06:40 �����౸(5:4 ��): ū ����(1�� ����) 
07:30 ���� 
08:00 ����(ȭ���Ĵ�: �������� ��) 
09:30 ����  
10:30 �Ͱ� 
10:40 �ٺ�ġ ġ���ǿ�(������ �۰��� �Ű� ġ�� �ٽ� �ؾ� �ȴٰ� ��) 
       --> �Ű� ��ġ�� ��� û���ؼ� �����ϰ� ����(���� �θ�): �Ű� ġ�� ��(14,400��)       
12:30 �Ͱ� 
14:30 ���� 
18:50 ���  
19:00 �庸��(���, ��������) 
20:00 ���� 
22:30 ��ħ 
==============================================================================================================

������������������� 2012.05.20(��) �۾� ����������������
---> 07:00 ~ 18:00 

�������౸
04:00 ��� 
04:05 è�� ���(ÿ��: ����): ÿ��(4:3) �º����� �� ==> ÿ�� â�� ù è�Ǿ𽺸��� ��� 
07:00 SK �ź�õ ������(�������� ��) 
07:30 �ű��ʵ��б�(�ѻ�� ������� ������ ���� ������ ���� �ִٰ� �� ==> �̷� ������) 
08:30 �����౸(4:4 ��) 
09:45 �����౸(5:3 ��): ����� ���� 
10:20 ���� 
10:30 ������ �ʱ��� ����FC���̶� ����(�ȿ���(�������� �Ƶ�: 15��)�� ��) 
11:20 �߽�(�����Ĵ�: �ᱹ��): ��������� �� 
12:30 ����  
12:40 ������(��(������, ����, ��ȫ) ����: 19,700��) 
12:50 �������� �� 
13:30 �Ͱ� 
15:30 ���� 
18:50 ��� 
19:00 ��̴� ��ȭ(������ ������ ���� ���� ����) 
23:00 ��ĵ(������(��������), �������� ��ĵ ó�� ��) 
12:50 ��ħ 
==============================================================================================================

������������������� 2012.05.21(��) �۾� ����������������
---> 07:05 ~ 21:00 --> �߽�(ö�Ǻ�����: ������(*@*.*)���� ����): �ٺ�ġ ġ�� ��� ��� ���� 

- IOSP(/oauth2) Prj
- Merge �۾� 
1. sf-client �߰�(/auth-lib/pom.xml) 
<dependency> 
  <groupId>com.samsungosp.profile</groupId> 
  <artifactId>sf-client</artifactId> 
  <version>1.2</version> 
</dependency>  
----------------------------------------------------------------------------------------------------- 

- sf-client.jar ���ϼ� �ʵ� �߰� ��û 
1. UserTncRequestVO.java ���� 
setAppID(), setCheckCountryCode() �߰�  
2. UserTncResultVO.java ���� 
getIs3rdParty(), getRequireDisclaimer() �߰� 
==> SFClient, SFClientImpl 
==> SocialClient, SocialClientImpl 
----------------------------------------------------------------------------------------------------- 

- repository�� sf-client.jar ��� ���(http://165.213.146.213:8080) ==> sf-client �����: ����ö 
1. artifact Searh���� sf-client ��ȸ 
2. Maven Information XML  Ȯ�� 
==============================================================================================================

- �ٺ�ġġ�� ��� ���(6�� ��Ģ) 
0. 6�Ͽ�Ģ - ����(who), ����(when), ���(where), ����(what), ��(why), ���(how)�� ���� ���� 
1. ����(who): ġ�� �ǻ簡 
2. ����(when): 2012�� 05�� 19��(��) 11�ð濡 
3. ���(where): ���Ǳ� ���� �����ϴ� �ٺ�ġ ġ������  
4. ����(what): �Ű� ġ�� ��ġ��� û���� 
5. ��(why): �Ű� ġ�Ḧ �ٽ� �Ѵٴ� ������� 
6. ���(how): �̹� ���� �Ű� ġ���� ��ġ��� û���� 
----------------------------------------------------------------------------------------------------- 

- ��ġ��(02-873-7203): 2003�� 10���� ġ�� ���� �� 
1. �ּ�: ����Ư���� ���Ǳ� ������ 1638-19 �������� 4�� 
2. 09:30~18:00: ������, ���� �޹� 
==============================================================================================================

- �������� �뿩�� ��ȯ(50����) 
1. 2012.05.21 19:18 0 500,000 �� ���� ���� 
==============================================================================================================

������������������� 2012.05.22(ȭ) �۾� ����������������
---> 06:50 ~ 22:00 

- IOSP(/oauth2) Prj
- Merge �۾� 
01_Auth_authenticate 
1. OSP-661: �̸��� ���� ��� �߰� ��  �ʼ��׸� üũ ==> ���� 
2. OSP-928: Auth authenticate API errorCode �߰�(AUT_1057) ==> ���� 
3. OSP-1059: Auth SHA256 �ݿ� ==> ����, OK 
4. OSP-857: ���,�̸������� �������� SF Client ���� ==> ���� 
5. OSP-1211: grant_type=auth_token ���� code�߱�, authorize ����(AUT_1307.400) ==> ���� 
6. �� �ݿ�: 3rd Party ���� ���� �ű� �� API ����==> ���� 

02_Auth_authorize 
1. OSP-636: redirect_uri, Implicit Type �߰�(response_type=token) ==> ���� 
==============================================================================================================

1. disclaimer �߰� ==> appId, disclaimer(3rd Party(���»� ����) ���� ����) ==> disclaimer=Y, appId=22n6hzkam0 
tncResult = oauth2VerifyBiz.verifyTNCRequest(passwordVO);  // 3rd Party ���ǿ��� ���� �� ���� Biz flow 
resultVO = userAuthBiz.userTNCRequest(verifiedUserTNCRequestVO, serviceID);  // OSP 1.0, 2.0 ���� ��ȸ Biz flow 

- auth-client, sf-client ���� 
C:\OSP2.5\lib_repository\repository\com\samsungosp\auth-client\1.0/auth-client-1.0.jar // TEST ===> 

- auth-client ���ÿ��� ��� 
1. /UserAuthTokenResultVO.java ���Ͽ��� �ʵ� �߰�(��: userId) 
2. Maven buil�� auth-client.jar ���� ����(/auth-svc/dist/auth-client.jar) 
3. auth-client.jar ������ auth-client-1.0.jar ���Ϸ� �̸� ���� 
4. C:\OSP2.5\localhome\webapps\auth-svc\WEB-INF\lib/auth-client-1.0.jar�� �ٿ��ֱ� 
5. eclipse ����� 
==============================================================================================================

- auth-client ����(/auth-lib/pom.xml����) 
<!--// auth-client ���� --> 
<dependency> 
<groupId>com.samsungosp</groupId> 
<artifactId>osp-framework</artifactId> 
<version>0.0.1-SNAPSHOT</version> 
</dependency> 
----------------------------------------------------------------------------------------------------- 

- ���� lib�� ������ ���� ���丮 ���� 
1. tomcat(���� Ŭ��) > Overview(��â) 
==> Server Locations 
1) Server Path: .metadata\.plugins\org.eclipse.wst.server.core\tmp0 ==> C:\OSP2.5\localhome    
2) Deploy Path: C:\OSP2.5\localhome\webapps 
==============================================================================================================

- Update ���� 
1. ����:  
Can't clobber writable file D:\OSP2.5\workspace\IOSP\Workspace\Account\Auth\trunk\auth-lib\src\main 
\java\com\samsungosp\sf\common\Constants.java 
2. ��ġ: /auth-lib(���콺 �� Ŭ��) > Team > Get Revision(Ŭ��) > Sync Files to Revision(��â) 
Revision Number(üũ), Force Operation0(üũ) ===> OK(Ŭ��) 
==============================================================================================================

- eclipse tomcat ���� ���� ���� 
1. ����: Caused by: org.springframework.context.NoSuchMessageException: No message found under code 
'sscom.userinfo.endpoint' for locale 'ko_KR'. 
2. ��ġ:  
D:\OSP2.5\workspace\IOSP\Workspace\Account\Auth\trunk\auth-lib\src\main\resources\properties\local\authConfig.xml 
�����Ͽ� C:\�� �ٿ��ֱ� 
C:\OSP2.5\localhome\comp\auth\resources\properties\local/authConfig.xml 
==============================================================================================================

- eclipse tomcat ���� ���� ���� 
1. ����: Illegal access: this web application instance has been stopped already.  Could not load com.tangosol.coherence. 
component.application.DefaultApplication.  The eventual following stack trace is caused by an error thrown for  
debugging purposes as well as to attempt to terminate the thread which caused the illegal access, and has no  
functional impact.  
2. ��ġ: coherence ����(�̰��忡�� ��û) 
==============================================================================================================

- eclipse tomcat ���� ���� ���� 
1. ����: org.springframework.beans.factory.BeanDefinitionStoreException: Failed to load bean class: com.samsungosp.auth.user. 
dao.CommonDAOImpl; nested exception is java.io.FileNotFoundException: class path resource  
[com/samsungosp/framework/dao/BaseDAO.class] cannot be opened because it does not exist 
2. ��ġ: tomcat ���� clean 
==============================================================================================================

- eclipse ��tomcat ���� ���� ���� 
1. ����: Publishing failed with multiple errors 
File not found: D:\OSP2.5\workspace\IOSP\Workspace\Account\Auth\trunk\auth-svc\target\m2e-wtp\web-resources\META-INF\MANIFEST.MF. 
File not found: D:\OSP2.5\workspace\IOSP\Workspace\Account\Auth\trunk\auth-svc\target\classes\com\samsungosp\auth\oauth2\service\AuthServiceResource.class. 
File not found: D:\OSP2.5\workspace\IOSP\Workspace\Account\Auth\trunk\auth-svc\target\classes\com\samsungosp\auth\oauth2\service\AuthServiceResourceImpl.class.File not found: D:\  
File not found:  
2. ��ġ: Maven ���� ==> tomcat ���� clean 
==============================================================================================================

������������������� 2012.05.23(��) �۾� ����������������
---> 06:50 ~ 21:20 --> ������ 6�� ö�� ���� 

- IOSP(/oauth2) Prj
- Merge �۾� 
01_Auth_authenticate 
1. OSP-661: �̸��� ���� ��� �߰� ��  �ʼ��׸� üũ ==> ���� 
2. OSP-928: Auth authenticate API errorCode �߰�(AUT_1057) ==> ���� 
3. OSP-1059: Auth SHA256 �ݿ� ==> ����, OK 
4. OSP-857: ���,�̸������� �������� SF Client ���� ==> ���� 
5. OSP-1211: grant_type=auth_token ���� code�߱�, authorize ����(AUT_1307.400) ==> ���� 
6. �� �ݿ�: 3rd Party ���� ���� �ű� �� API ����==> ���� 

02_Auth_authorize 
1. OSP-636: redirect_uri, Implicit Type �߰�(response_type=token) ==> ���� 
==============================================================================================================

- mybatis VO ���� 
/UserAuthDAOImpl.java ���Ͽ��� @@@@@ 
/** 
* 3rd Ư�� ������ ���� ������� ���� ��ȸ(���� ������ ��) 
*/ 
public int get3rdDisclaimerAcceptance(User3rdDisclaimerAcceptanceCreateVO user3rdDisclaimerAcceptanceCreateVO) throws OSPException {  
int result = 0; 
log.debug("[get3rdDisclaimerAcceptance()] ==> [DB��ȸ(3rd Ư�� ������ ���� ������� ���� ��ȸ)]  
[user3rdDisclaimerAcceptanceCreateVO]"+ user3rdDisclaimerAcceptanceCreateVO ); 
      
try { 
result = (Integer)getSqlSession().update("com.samsungosp.auth.user.dao.UserAuthDAO.get3rdDisclaimerAcceptance", user3rdDisclaimerAcceptanceCreateVO); 
} catch(Exception e) { 
e.printStackTrace(); 
throw new OSPException("AUTH", "USR_5221", 500, this.getClass(), "get3rdDisclaimerAcceptance(user3rdDisclimerAcceptanceCreateVO)" + e.getMessage());         
} 

 log.debug("[getServiceInforList()] ==> [DB��ȸ���] [result]"+ result ); 
return result; 
} 

/userAuthDAO.xml ���Ͽ��� @@@@@ 
<resultMap id="User3rdDisclaimerAcceptanceCreateVO" type="com.samsungosp.auth.user.vo.User3rdDisclaimerAcceptanceCreateVO"> 
	<result property="applicationID" column="APSVC_ID"/> 
	<result property="userID" column="USR_ID"/> 
	<result property="disclaimerVersionText" column="DSCMR_VER_TXT"/>  
</resultMap>  

<!--// 3rd Ư�� ������ ���� ������� ���� ��ȸ //--> 
<select id="get3rdDisclaimerAcceptance" parameterType="com.samsungosp.auth.user.inner.vo.User3rdDisclaimerAcceptanceCreateVO" resultType="java.lang.Integer">   
	SELECT  
	    /* [userAuthDAO.xml].[com.samsungosp.auth.user.dao.UserAuthDAO.get3rdDisclaimerAcceptance] */ 
	    COUNT(*) 
	FROM  
	    TCSO_3RD_PRTY_DSCMR_ACPTNC 
	WHERE 
	    APSVC_ID = #{applicationID} 
	AND USR_ID = #{userID} 
	AND DSCMR_VER_TXT = #{disclaimerVersionText}  
</select> 

<insert id="insertService" parameterType="com.samsungosp.auth.user.inner.vo.ServiceVO" > 
	INSERT  
	    /* [serviceDAO.xml].[com.samsungosp.auth.user.dao.ServiceDAO.insertService].[01] ��������(20110517) */  
	INTO  
 </insert>  

 ==> type(type, parameterType)�� ������ VO �ۼ�: com.samsungosp.auth.user.inner.vo 
==============================================================================================================
- /osp-framework import �� ���� 
1. ����: /AuthServiceResourceImpl.java���� 
import org.springframework.beans.factory.annotation.Autowired;   //===> ���� �߻�(������: �ν� ����) 
import org.springframework.stereotype.Controller; 
2. ��ġ:  
 1. eclipse ==> close 
 2. auth-svc, /auth-lib, /osp-framework ==> target ���� ���� 
 3. eclipse ==> open 
 4. /auth-svc, /auth-lib ==> close project 
 5. /osp-framework ==> Maven ���� 
 6. /auth-svc, /auth-lib ==> Maven ���� 
----------------------------------------------------------------------------------------------------- 

- auth-client ���� �� ��ġ 
1. RequestTokenVO.java ���� ���� 
2. /auth-svc/build.xml(���콺 �� Ŭ��) > Ant Bulid ==> /auth-svc/dist/auth-client.jar ���� ����(auth-client-1.2.jar�� ����) 
3. /osp-framework/pom.xml ���Ͽ� ���� ó�� 
     <dependency> 
          <groupId>com.samsungosp</groupId> 
          <artifactId>auth-client</artifactId> 
          <version>1.2</version>   //===> 1.1�� 1.2�� ���� 
        </dependency> 
4. �Һ���Կ��� ���Ϸ� �뺸 
5. nexus ������ ���(http://165.213.146.213:8080/nexus/index.html#nexus-search;quick~auth-client) 
1) auth-client-1.2.jar�� ��ϵ�  
==============================================================================================================

- ���߼��� Hudson ���� ����(��� ���忡�� ���� �߼�) 
1. auth-client-1.10.jar�� auth-client-1.1.jar�� ������Ʈ �� �� ���߼��� Hudson ���� ������ ���ϴ�. 
 1) Downloading: http://165.213.146.213:8080/nexus/content/groups/public/com/samsungosp/auth-client/1.0/auth-client-1.0-sources.jar �� �ٿ�� 
  ==> Downloading: http://165.213.146.213:8080/nexus/content/groups/public/com/samsungosp/auth-client/1.1/auth-client-11-sources.jar�� �ٿ� �Ǿ�� �� 
==============================================================================================================

- DB ����(Tunneling)(���� DB����) 
1. /config/local/applicationSystemConfig.xml ���Ͽ��� 
  <!--entry key="oracle.jdbc.url">jdbc:oracle:thin:@50.16.234.94:1521:DEVIOSP1</entry--> 
==> <entry key="oracle.jdbc.url">jdbc:oracle:thin:@127.0.0.1:7080:DEVIOSP1</entry>  <!--// local dev(Tunneling) //--> 
2. 70. ���� DB ����(Tunneling) IP �߰�: 10.76.249.108:1521 ==> 7080(127.0.0.1:7080/DEVIOSP1) --> wsoc/osp123 

- DB ����(Tunneling)(Stg_1 DB����) 
1. /config/local/applicationSystemConfig.xml ���Ͽ��� 
    <entry key="oracle.jdbc.url">jdbc:oracle:thin:@10.238.202.179:1521:IOSPS1EU</entry> <!--// local dev(Tunneling) //--> 
2. 71. Stg_1 DB ����(Tunneling) IP �߰�: 10.238.202.179:1521 ==> 7081(127.0.0.1:7081/IOSPS1EU) --> wsoc/osp123 

- DB ���� Ȯ�� 
telnet 10.76.249.108 1521  ==>  70. ���� DB ����(���� ����) 
telnet 10.238.202.179 1521 ==>  71. Stg_1 DB ����(���� ����: Tunneling �ȵǾ� ����) 
----------------------------------------------------------------------------------------------------- 

- MB ���� ���� ��û ���̺� ==> ���̺� ���� Ȯ��: 2012�� 5�� 23�� ������ ���� 4:06  
1. TFMB_APSVC_INFOR: countryCode���ǿ� �ش��ϴ� AppId ����Ʈ ���̺� 
2. TFMB_APSVC_JN_FLD: ountry+AppID ������ �����ʵ� ���ð� ��ȸ ���̺� 
3. TFMB_PRFX_DFNTN:  Ÿ��Ʋ(prefixName) �׸� ������ ��� ��ȸ ���̺� 
==============================================================================================================

- VO ���� 
1. /Oauth2VerifyBizImpl.java ���Ͽ��� 
public boolean verifyTNCRequest(RequestTokenVO passwordVO) throws OSPException { 
	UserTNCRequestVO verifiedUserTNCRequestVO = new UserTNCRequestVO();  
	log.debug("[verifyTNCRequest()] ==> [test_2] [passwordVO.getAppId()]"+ passwordVO.getAppId() ); 
	 //verifiedUserTNCRequestVO.setAppID(passwordVO.getAppId()); // disclaimer ����  // TEST ===> 
	 log.debug("[verifyTNCRequest()] ==> [test_3] [passwordVO.getAppId()]"+ passwordVO.getAppId() ); 
} 

2. /UserTNCRequestVO.java ���Ͽ��� 
@XStreamAlias("UserTNCRequestVO") 
public class UserTNCRequestVO extends SystemAttributeVO { 
	public String getAppID() { 
	return appID; 
} 
public void setAppID(String appID) { 
this.appID = appID; 
} 
} 
2. ����: 
java.lang.NoSuchMethodError: com.samsungosp.auth.user.vo.UserTNCRequestVO.setAppID(Ljava/lang/String;)V 
at com.samsungosp.auth.oauth2.biz.Oauth2VerifyBizImpl.verifyTNCRequest(Oauth2VerifyBizImpl.java:808) 
3. ��ġ: VO�� appID�� ����� �ݿ��� �ȵ�(UserTNCRequestVO.class���� Ȯ��) 
==============================================================================================================

- eclipse tomcat ���� ���� ���� 
1. ����: �׳� loaing ���� ���� ���۵� 
����: JK: ajp13 listening on /0.0.0.0:9010 
2012. 5. 23 ���� 8:57:07 org.apache.jk.server.JkMain start 
����: Jk running ID=0 time=0/0  config=null 
2012. 5. 23 ���� 8:57:07 org.apache.catalina.startup.Catalina start 
����: Server startup in 1281 ms 
2. ��ġ: 1) xml ���� �߿� auth-svc, auth-lib ���尡 ���� �ִ��� Ȯ��(���߼��� �ҽ��� ��ũ ���� �� ��) 
2) �ȵǸ� target ���� �� Maven ������ �� 
==============================================================================================================

������������������� 2012.05.24(��) �۾� ����������������
---> 06:30 ~ 21:20 

- IOSP(/oauth2) Prj
- Merge �۾� 
01_Auth_authenticate 
1. OSP-661: �̸��� ���� ��� �߰� ��  �ʼ��׸� üũ ==> ���� 
2. OSP-928: Auth authenticate API errorCode �߰�(AUT_1057) ==> ���� 
3. OSP-1059: Auth SHA256 �ݿ� ==> ����, OK 
4. OSP-857: ���,�̸������� �������� SF Client ���� ==> ���� 
5. OSP-1211: grant_type=auth_token ���� code�߱�, authorize ����(AUT_1307.400) ==> ���� 
6. �� �ݿ�: 3rd Party ���� ���� �ű� �� API ����==> ���� 

02_Auth_authorize 
1. OSP-636: redirect_uri, Implicit Type �߰�(response_type=token) ==> ���� 
==============================================================================================================

- Nexus Repository ���� 
1. Artifact ���(�ݵ��� 2�� ���) 
1) Repositories > 3rd party > Artifact Upload  ==>3rd party ���̺귯�� artifact ��� 
- Repositories > releases > Artifact Upload  ==> ���� ������Ʈ���� ������ artifact ��� 
2) Artifact ��� �ϱ�(3rd party ���̺귯�� ���) 
- Select GAV Definition Source 
 1. GAV Definition : GAV Parameters(����) 
 2. GroupId: com.samsungosp 
 3. Artifact: auth-client 
 4. version: 1.1 
 5. Packing: jar 
- Upload Artifact(s) 
 1. Select  Artifact(s) to Upload(Ŭ��) ==>  auth-client-1.1.jar ����((���ε� ��)  
 2. Add Artifact(Ŭ��) 
 3. Upload Artifact(s)(Ŭ��) 

2. Artifact ���� 
 1) Artifact Search: auth-client(Ŭ��) > Artifact Information(Tab   Ŭ��): Detete(Ŭ��) 
==============================================================================================================

- auth-client 1.2(/auth-client 1.2.jar) ��� ���� @@@@@@@ 
A.  auth-client-1.2.jar ��� 
1. RequestTokenVO.java ���� ���� 
2. Maven Build > auth-svc[auth_client]: auth-svc ==> clean dependency:copy-dependencies(Run: Ŭ��) 
3. /auth-svc/build.xml(���콺 �� Ŭ��) > Ant Bulid ==> /auth-svc/dist/auth-client.jar ���� ����(auth-client-1.2.jar�� ����) 
4. �Һ���Կ��� ���Ϸ� �뺸 
5. nexus ������ ���(http://165.213.146.213:8080/nexus/index.html#nexus-search;quick~auth-client) 
1) auth-client-1.2.jar�� ��ϵ�  
------------------------------------------------------------------------------------------------------ 

B. osp-framework-0.0.1-SNAPSHOT.jar ��� 
1. RequestTokenVO.java ���� ���� Ȯ�� 
2. /osp-framework/pom.xm ���� auth-client 1.2�� ����(���� ���ϰ� �����忡�� ��û�� ��) 
<dependency> 
<groupId>com.samsungosp</groupId> 
<artifactId>auth-client</artifactId> 
<version>1.2</version>  ===> 1.1���� 1.2�� ���� 
</dependency> 
3. P4�� Commit ó��(���� ���ϰ� �����忡�� ��û�� ��) 
4. �����(JaewooKwag) ���忡�� ��û 
5. nexus ������ ��� Ȯ��(http://165.213.146.213:8080/nexus/index.html#nexus-search;quick~auth-client) 
 1) Repository Path:/com/samsungosp/osp-framework/0.0.1-SNAPSHOT/osp-framework-0.0.1-20120524.011601-64.jar��  
��ϵ�(osp-framework-0.0.1-SNAPSHOT.jar) 
==============================================================================================================

- PRT(Funkload) ���۾� @@@@@@@@@@@@@@ 
1. Funkload Client Script �ۼ� 
iosptest@ip-10-28-163-41:~$ cd /home01/iosptest/funkload/iosp/auth 
$ vi test_auth.py 
$ vi auth.conf 
$ vi monitor.conf 
------------------------------------------------------------------------------------------------------ 

2. Funkload Command 
1) ����� Instance Start(���� ���� �� �ѹ� �� ����) @@@@@@@ 
$ fl-monitor-ctl monitor.conf start 

2) �� �� ȣ�� 
iosptest@ip-10-28-163-41:~$ cd /home01/iosptest/funkload/iosp/auth  
$ fl-run-test -dv test_auth.py auth.test_createUserAuthToken 
$ fl-run-test -dv test_auth.py auth.test_authenticateApplication 
$ fl-run-test -dv test_auth.py auth.test_getInitResult 
$ fl-run-test -dv test_auth.py auth.test_authenticateUserByEmailID    
$ fl-run-test -dv test_auth.py auth.test_validateUserByEmailId  
$ fl-run-test -dv test_auth.py auth.test_createAuthorizationCode  ==> ���� �߻�(������) 
$ fl-run-test -dv test_auth.py auth.test_random ==> ������ 

3) ���� �׽�Ʈ ��ɾ� 
$ cd /home01/iosptest/funkload/iosp/auth  
$ fl-run-bench -c 100:500:700:1000 -D 20 test_auth.py auth.test_random 
===> ���� ���� ã��_1(�⺻) 
$ fl-run-bench -c  100:450:500:550:600:650:700 -D 20 test_auth.py auth.test_random 
===>  ���� ���� ã��_2(450 TPS, 3��) 

$ fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_authenticateApplication 
===> ���� ���� ã��_1(�⺻) 
$ fl-run-bench -c 100:500:700:1000 -D 20 test_auth.py auth.test_createUserAuthToken 
===> ���� ���� ã��_2(450 TPS, 3��) 
$ fl-run-bench -c 100:450:500:550:600  -D 20 test_auth.py auth.test_createUserAuthToken   
===> ���� ���� ã��_3(76.5 TPS, 0.7��) 

$ fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_authenticateApplication  
$ fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_getInitResult 
$ fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_authenticateUserByEmailID 
$ fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_validateUserByEmailId 
   
4) Run Script Background ���� 
$ nohup fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_createUserAuthToken &  
$ nohup fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_authenticateApplication & 
$ nohup fl-run-bench -c 100:300:400:500 -D 20 test_auth.py test_getInitResult & 
$ nohup fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_authenticateUserByEmailID & 
$ nohup fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_validateUserByEmailId & 
-------------------------------------------------------------------------------------------------------- 

3. Report �ۼ� @@@@@@@ 
1. index.html ���� ���� 
$ cd /mnt/bench-log/auth 
$ fl-build-report --html /mnt/bench-log/auth/AUTH-credential-test.xml 
done:  
/home01/iosptest/funkload/iosp/auth/test_createUserAuthToken-20120524T013305/index.html ==> ���� 

2. ����ð� �׷��� �м�(����OSP_�����׽�Ʈ_Auth.ppt����) 
D:\02. TAMA Project\01. 2012.02(����OSP_IL4U)\00. Work\74. PRT(Funkload)\02. Funkloal Report 
\test_createUserAuthToken-20120524T013305\index.html(Ŭ��) 
 5. Request stats 
 1) PPS(Requests Per Second), RPT(Requests Response Time) 
3.  ������ ����(http://50.19.120.204/login.jsp) 
1) �ǽð� ����͸� > �ǽð� ��Ȳ 
��. CPU(�ֱ� �ý��� CPU ����(%): 70% ���� ã�� ��), �޸�, DB 
-------------------------------------------------------------------------------------------------------- 

4. log  Ȯ�� 
$ cd /iosp/comp/auth/logs 
$ tail -f /iosp/comp/auth/logs/catalina.out   
$ tail -f /var/log/nginx/access.log 
-------------------------------------------------------------------------------------------------------- 

- host ������ Ȯ�� 
$ vi /etc/hosts 
1. url ����(auth.conf ���Ͽ��� ����) 
url=http://eu.api.samsungosp.com/ ===>/ 10.124.138.138(�ƴ�)  ===> �ǹ� ���� 
2. iosp_stg2_hosts_direct ���Ͽ��� 
# IOSP STG2 External # ===> 54.247.179.87 eu.api.samsungosp.com  
==============================================================================================================

- Stg_2 US_IDC ���� 
1. ���� ����: 184.169.141.194[UIA](Stg_2 US_IDC ����) ==> ������ ��ġ�Ǿ� ���� 
2. ��û: 54.247.167.97(Stg_2 EU_IDC ����) ==> ������ ��ġ�ȵǾ� ����(��� ����) 
==============================================================================================================

- �̼��� ���� tomcat ���� �׽�Ʈ 
1. http://70.4.152.163:8089/auth/oauth2/authenticate 
==============================================================================================================

������������������� 2012.05.25(��) �۾� ����������������
---> 07:00 ~ 23:00  --> �߽�(account��: �輺ä ����) 

- IOSP(/oauth2) Prj
- Merge �۾� 
01_Auth_authenticate 
1. OSP-661: �̸��� ���� ��� �߰� ��  �ʼ��׸� üũ ==> ���� 
2. OSP-928: Auth authenticate API errorCode �߰�(AUT_1057) ==> ���� 
3. OSP-1059: Auth SHA256 �ݿ� ==> ����, OK 
4. OSP-857: ���,�̸������� �������� SF Client ���� ==> ���� 
5. OSP-1211: grant_type=auth_token ���� code�߱�, authorize ����(AUT_1307.400) ==> ���� 
6. �� �ݿ�: 3rd Party ���� ���� �ű� �� API ����==> ���� 

02_Auth_authorize 
1. OSP-636: redirect_uri, Implicit Type �߰�(response_type=token) ==> ���� 
==============================================================================================================

- auth-client ������ �߰� 
1. ����: ���� VO�� XStream, �ܺ� �ҽ� VO�� JAXB�� ���� 
 1) VO���� ���Ƽ� auth-client1.0.jar ���ο� ���Ե� VO�� ���� ������(�ʵ� �ϳ� �߰� �� ���� .jar ����� �ؾ���) 
3. �ذ�å 
 1) ���� VO ������ ����(auth.oauth2.vo)�� auth.oauth2.inner.vo�� ����(�ҽ����� ���� ����) 
 2) VO ���� �տ� �ּ����� target_package���� 
 - /AccessTokenVO.java ���Ͽ��� 
package com.samsungosp.auth.oauth2.inner.vo;   // vo ==> inner.vo�� ���� 

import com.thoughtworks.xstream.annotations.XStreamAlias; 

/** 
 * This is the AccessTokenVO class 
 *  
 * @version 1.0 
 * @author Tae-Man Jin 
 *  
 * @target_package com.samsungosp.auth.oauth2.vo 
 *  
 */ 
@XStreamAlias("accessTokenVO") 
public class AccessTokenVO { 
} 
 3) type(type, parameterType)�� com.samsungosp.auth.user.inner.vo�� ������ �� 
 (type="User3rdDisclaimerAcceptanceCreateVO" ==> type="com.samsungosp.auth.user.vo.User3rdDisclaimerAcceptanceCreateVO") 

/userAuthDAO.xml ���Ͽ��� @@@@@ 
<resultMap id="User3rdDisclaimerAcceptanceCreateVO" type="com.samsungosp.auth.user.vo.User3rdDisclaimerAcceptanceCreateVO"> 
	<result property="applicationID" column="APSVC_ID"/> 
	<result property="userID" column="USR_ID"/> 
	<result property="disclaimerVersionText" column="DSCMR_VER_TXT"/>  
</resultMap>  

<!--// 3rd Ư�� ������ ���� ������� ���� ��ȸ //--> 
<select id="get3rdDisclaimerAcceptance" parameterType="com.samsungosp.auth.user.inner.vo.User3rdDisclaimerAcceptanceCreateVO" resultType="java.lang.Integer">   
	SELECT  
	    /* [userAuthDAO.xml].[com.samsungosp.auth.user.dao.UserAuthDAO.get3rdDisclaimerAcceptance] */ 
	    COUNT(*) 
	FROM  
	    TCSO_3RD_PRTY_DSCMR_ACPTNC 
	WHERE 
	    APSVC_ID = #{applicationID} 
	AND USR_ID = #{userID} 
	AND DSCMR_VER_TXT = #{disclaimerVersionText}  
</select> 
4. ��Ÿ 
 1) auth-client �������� Merge �۾��� �� Stage1 ������ �� �÷ȴٰ� ��å�ӿ��� �ҷ� �� 
==============================================================================================================

- ���߼��� Hudson ���� ���� 
1. ����: ���� �������� Maven ���� ���� ������ 99% udson ���� ���� �ؾ� �� 
2. ���� ����:  
 1) ���� ������ ����(/SystemAttributeVO.java)�� P4 Commit �� ���� ���(��κ� P4 Commit ����) 
2. �ذ�å:  
 1) �ҽ� ������ Ȯ�� 
 2) �ٸ� ������ ���� ������������ P4 Upadate �޾Ƽ� Maven ���� �� Ȯ�� �غ� �� 
==============================================================================================================

������������������� 2012.05.26(��) �۾� ����������������
---> 09:30 ~ 22:00  --> �����౸, ��� 

- IOSP(/oauth2) Prj
- Merge �۾� 
01_Auth_authenticate 
1. OSP-661: �̸��� ���� ��� �߰� ��  �ʼ��׸� üũ ==> ���� 
2. OSP-928: Auth authenticate API errorCode �߰�(AUT_1057) ==> ���� 
3. OSP-1059: Auth SHA256 �ݿ� ==> ����, OK 
4. OSP-857: ���,�̸������� �������� SF Client ���� ==> ���� 
5. OSP-1211: grant_type=auth_token ���� code�߱�, authorize ����(AUT_1307.400) ==> ���� 
6. �� �ݿ�: 3rd Party ���� ���� �ű� �� API ����==> ���� 

02_Auth_authorize 
1. OSP-636: redirect_uri, Implicit Type �߰�(response_type=token) ==> ���� 
==============================================================================================================

05:30 ���  
06:40 �ű��ʵ��б� 
06:40 �����౸(0:4 ��): ū ���� 
07:25 ���� 
07:40 ����(ȭ���Ĵ�: �������� ��) 
08:30 ����  
09:30 ��� 
12:00 �߽�(�ٳ���: 2õ��) 
18:00 �����ᳪ�� ����: 4õ��) 
21:00 ��� 
22:20 �Ͱ� 
23:30 ��ħ 
==============================================================================================================

������������������� 2012.05.27(��) �۾� ����������������
---> 07:00 ~ 18:00 

�������౸
07:20 ��� 
08:30 �ű��ʵ��б� 
08:50 �����౸(6:1 ��): ������  
10:00 ���� 
10:20 �߽�(���� ���屹: �δ����): ���� ȸ������ �� 
12:30 ���� 
12:30 ���� ȸ������ ���� ������ ��(���� �޸���� 703ȣ) 
13:30 ���·� ȣ����(������, �·�����, â������): 5����(���� ��) 
16:00 ���� 
17:10 �����(��) 
19:30 ��(��: ī��(B, 169, ����):����): ù�湮 ==> ������ Perfect ��ħ(�� ����) 
20:40 ���� 
21:00 ����(¥�İ�Ƽ) 
22:30 ��ħ(�����(��)) 
06:00 ��� ==> 2012.05.28(��) 
06:20 ����((�����(��) ���) 
06:50 ���� 
07:10 ��� 
17:30 ��� 
==============================================================================================================

������������������� 2012.05.28(��) �۾� ����������������
---> 07:10 ~ 17:30 --> ������(��ó�� ���ų�) 

- IOSP(/oauth2) Prj
- Merge �۾� 
01_Auth_authenticate 
1. OSP-661: �̸��� ���� ��� �߰� ��  �ʼ��׸� üũ ==> ���� 
2. OSP-928: Auth authenticate API errorCode �߰�(AUT_1057) ==> ���� 
3. OSP-1059: Auth SHA256 �ݿ� ==> ����, OK 
4. OSP-857: ���,�̸������� �������� SF Client ���� ==> ���� 
5. OSP-1211: grant_type=auth_token ���� code�߱�, authorize ����(AUT_1307.400) ==> ���� 
6. �� �ݿ�: 3rd Party ���� ���� �ű� �� API ����==> ���� 

02_Auth_authorize 
1. OSP-636: redirect_uri, Implicit Type �߰�(response_type=token) ==> ���� 
==============================================================================================================

- sf-client ����(/SFClientImpl.java ���Ͽ���) 
public UserAccountAuthResultVO validateUserAccountByEmailId (UserAccountAuthRequestVO userAccountAuthRequestVO,  
    String AppID, String AppSecretKey, OSPUserRegionTypeCode regionTypeCode) throws OSPException { 
UserAccountAuthResultVO userAccountAuthResultVO = new UserAccountAuthResultVO(); 

try { 
    AuthenticateServiceResourceClient client = new AuthenticateServiceResourceClient(/*endpointURI*/getEndPointURIFromRegionTypeCode(regionTypeCode)); 
    //setHttpHeader(client, AppID, AppSecretKey); // Ȯ�� �ʿ�! // TEST ===>  
    userAccountAuthResultVO = client.validateUserAccountByEmailId(userAccountAuthRequestVO.getLoginID(), userAccountAuthRequestVO);  
}  
-------------------------------------------------------------------------------------------------------- 

[WARNING] advice defined in org.springframework.scheduling.aspectj.AbstractAsyncExecutionAspect has not been applied [Xlint:adviceDidNotMatch] 
[INFO] ------------------------------------------------------------------------ 
[INFO] BUILD FAILURE 
[INFO] ------------------------------------------------------------------------  
[ERROR] Failed to execute goal org.codehaus.mojo:aspectj-maven-plugin:1.3:compile (default) on project auth-lib: Compiler errors: 
[ERROR] error at userAccountAuthResultVO = client.validateUserAccountByEmailId(userAccountAuthRequestVO.getLoginID(), userAccountAuthRequestVO); 
[ERROR] ^^^^^^^^^^^^^^^ 
[ERROR] D:\OSP2.5\workspace\IOSP\Workspace\Account\Auth\trunk\auth-lib\src\main\java\com\samsungosp\auth\user\clien 
t\SFClientImpl.java:306:0::0 The method validateUserAccountByEmailId(String, UserAccountAuthRequestVO) is undefined for the type AuthenticateServiceResourceClient 
[ERROR] -> [Help 1] 
==============================================================================================================

- ���� ����� ���(������ å���� ���) 
1. username: *@*.*, password: osp123 
2. client_id(app_id): 5zjyopnywm, client_secret(app_secret): , app_id(service ID)  
grant_type=password&client_id=j5p7ll8g33&client_secret=5763D0052DC1462E13751F753384E9A9&username=*@*.*&password=osp123 
grant_type=password&client_id=j5p7ll8g33&client_secret=5763D0052DC1462E13751F753384E9A9&username=*@*.*&password=osp123
&check_email_validation=Y&country=KOR&country_code=KOR&langCode=KO&appId=22n6hzkam0 
3. ��� ������ ���� LDAP�� ȸ�� ���� ���� ��ȸ(GC)�� ������(STG_1���� ����) 
==============================================================================================================

������������������� 2012.05.29(ȭ) �۾� ����������������
---> 06:50 ~ 22:00 --> 2012�� ���ռҵ漼 �Ű� �Ϸ�(���α�: 195,030��) 

- IOSP(/oauth2) Prj
- PVT_Defect[ ó��([auth] OSP1.0, 2.0 Source Merge ����� CR ��û: http://10.254.218.34:8080/browse/IOSP-8) 
1. IOSP-49 ==> ó�� �Ϸ� 
==> 1. grant_type=refresh_token code ������(createAccessToken_200_02)  
2. IOSP-56 ==> ó�� �Ϸ� 
==> 1. check_mandatory�� Y(createUserAuthToken_200_01) 
 1) ��û �Ķ���� appId�� "22n6hzkam0" ���� �����Ͽ� API ��û��.  
 2) ��û �Ķ���� appId�� "j5p7ll8g33" ���� �����Ͽ� API ��û��. 
3. IOSP-61 ==> ó�� �Ϸ� 
==> 1. createAccessToken API Request �Ķ������ refresh_token�� Mandatory�� ������  
==============================================================================================================

- LDAP ����(ApacheDirectoryStudio ��ġ �� ����)  
1. New LDAP Connection(��â): 
 1) Connection Name: 01. auth LDAP(local ����) 
 2) Host Name: localhost 
 3) Port: 1689 
2. Authenticcation 
 1) Bind DN or user: cn=writer,ou=manager,dc=samsung,dc=com 
 2) Bind password: password 
-------------------------------------------------------------------------------------------------------- 

- LDAP ���� 
81. IOSP LDAP(local ����): 210.118.57.208:1689  ==> ldap://localhost:1689 
02. stg_1: 210.118.57.29:1689 ==> ldap://localhost:1689 
==============================================================================================================

- /auth-lib/pom.xml ���Ͽ��� 
<!--// sf-client(/auth2): /sf-client-1.2.jar //-->  ==> ��� ���� 
<dependency> 
  <groupId>com.samsungosp.profile</groupId> 
  <artifactId>sf-client</artifactId> 
  <version>1.2</version> 
</dependency> 

<!--// social-client(/auth2): /social-client-1.1.jar //-->  ==> ��� 
<dependency> 
  <groupId>com.samsungosp.profile</groupId> 
  <artifactId>social-client</artifactId> 
  <version>1.1</version> 
</dependency> 
==============================================================================================================

- sf-client ��� ����(auth-client-1.3.jar ���) 
import com.samsungosp.openapi.client.*;   ==> GenericResourceClient 

- AuthenticateServiceResourceClient.class(/sf-client-1.2.jar)���Ͽ��� 
import com.samsungosp.openapi.client.*;   
public class AuthenticateServiceResourceClient extends GenericResourceClient { 
} 
==============================================================================================================

- ���� ����� ���(���� ����: ������ ���忡�� ��û) ==> /user/createUser(http://www.ospserver.net): �ȵ� 
1. username: *@*.*, password: osp123 
2. client_id(app_id): 5zjyopnywm, client_secret(app_secret): , app_id(service ID)  
3. UserServicePrfResourceImpl.java ���Ͽ��� 
public ModelAndView createUser(OSPHttpHeaderInfo header, @RequestBody UserCreateVO userCreateVO) { 
	UserCreateResultVO resultVO = userBiz2.createUser(userCreateVO, header); 
}  
==============================================================================================================

������������������� 2012.05.30(��) �۾� ����������������
---> 07:00 ~ 21:00  --> OSP2.0 � �����(�赿�� ����, ������ ���) 

- IOSP(/oauth2) Prj
- PVT_Defect 
IOSP-57 ==> ó�� �Ϸ� 
1. ��û �Ķ���� isValid�� ���� ==> REQUEST_ERROR"�� ����� 
AUTH.AUT_1003.400=The value of username parameter must be present and have a non-empty value. 

IOSP-58 ==> ó�� �Ϸ� 
1. isValid_passwrod_AUT_1004_01�� AUT_1805 "The password is incorrect." ����� 
AUT_1004 "The value of password parameter must be present and have a non-empty value." ����� ���� �Ǿ�� �� 

IOSP-60 ==> ó�� �Ϸ� 
1. createUserAuthToken API fault Code Description�� N/A�� ���� �Ǿ� �ִ� fault code 
-AUT_1815 Did not agree the latest disclaimer(3rd Party).  
2. OSP 2.0 ���� �������� ���� �Ǿ������� ���� OSP ���幮������ ���ԵǾ��ִ� faultcode 
 1) createUserAuthToken�� AUT_1018 ���� ó��(createAuthorizationCode�� AUT_1018 ����(OSP 2.0 ������ �����ϰ� ó��)) 

IOSP-50  ==> ó�� �Ϸ� 
1. �̱� �������� createAuthorizaionCode API�� ��û --> privacyAccepted�� Y�� ���� ==> ó�� �Ϸ�  
�ش� userID(nvfclhqmtr) ������� �ֱ� ��� ���� ���� ��ȸ���� ����Ÿ�� �������� �ʾұ� ������ ������� �ֱ�  
��� ���� ����(privacyAccepted)�� Y �����Ǿ� ����(�������� ��Ȳ���� ������) 
 ==> �̱� ������ ��� privacyAccepted ����� �ƴϹǷ� N���� ����Ǿ�� �Ѵٸ� DB�� �ش� ����Ÿ�� ��������  
 �ʾƼ� ���� ������ �Ǵܵ˴ϴ�. (��ȸ ����(Y)�̸� privacyAccepted: N, N�̸� privacyAccepted: Y))  
/UserAuthBizImpl.java ���Ͽ��� 
public UserTNCResultVO verifyTNCRequest(String strLoginID, String appId) throws OSPException {  
 // 6. ������� �ֱ� ��� ���� ���� �������� 
boolean isAcceptedRecentTNC = isExistTNCAcceptance(strUserID, prioryMobileCountryCode, 
userTNCContent.getTncVersionText()); 
boolean isAcceptedPrivacy = isExistPrivaceAcceptance(strUserID, orgCountryCode); 
 log.debug("[verifyTNCRequest()] ==> [������� �ֱ� ��� ���� ����] [isAcceptedPrivacy]"+ isAcceptedPrivacy); 

userTNCResultVO.setPrivacyAccepted(strAcceptedPrivacyYn); 
        log.debug("[verifyTNCRequest()] ==> [������� �ֱ� ��� ���� ����_Re][strAcceptedPrivacyYn]"+ strAcceptedPrivacyYn); 
} 

IOSP-51 ==> ó�� �Ϸ� 
1. userauth_token �� ����� --> userId, userauth_token, userauth_token_expires_in�� ���� ==> ó�� �Ϸ� 
1) getUserAuthTokenExpiresIn�� 0�̿��� ������� ǥ���� �ȵ� 

IOSP-52 ==> ó�� �Ϸ� 
1. �ʼ��� ����, �ּ�, �ִ밪 ���� 
 1) AUT_1004 "The value of password parameter must be present and have a non-empty value." ����. 
 2) AUT_1013 "The length of a password parameter is invalid." ����.  

IOSP-54  ==> ó�� �Ϸ� 
1. tncAccepted, privateAccepted�� "N"�� �����Ͽ� ��û�Ͽ��� ��, AUT_9001 �� ���� 
1. AUT_1038 "Did not agree the latest terms and conditions." �� �����.  
2. AUT_1039 "Did not agree the privacy conditions." �� �����.  
3. AUT_1040 "Did not agree the latest terms and privacy conditions." �� �����. 

IOSP-55 ==> ó�� �Ϸ� 
1. countryCode�� invalid �� "AAA"�� �����Ͽ� ��û, AUT_1000 "invalid_request" �� ���� ==> ó�� �Ϸ�  
 1) AUT_1037 "Service is not available in your country.(Cannot get the terms and condition content.)" �� �����. 
==============================================================================================================

������������������� 2012.05.31(��) �۾� ����������������
---> 07:00 ~ 18:00  --> �Ű�ġ��3(�ٺ�ġġ��): ù�� �Ű�ġ���(14,400��) �� ������ �ɷ� ��ġ�� �� 

- IOSP(/oauth2) Prj
- PVT_Defect 
==============================================================================================================

- oauth2 ����OSP 2.0���� ��ȯ ��û ����(������(EunjaeKim) å�ӿ��� ����): ������ ���� ��� 
1/ ������(oauth2)���� ȣ���� �ϸ� OSP 2.0���� ��ȯ �Ǿ� �׽�Ʈ ������ �߻� 
(oauth2�� ����, �׽�Ʈ ���� ����OSP 2.0���� ��ȯ ��û) 
2. ����: ����OSP_�_�����_20110229_v1_4_TA.xlsx ����(÷������ ����)�� ���� ���� auth.samsungosp.net�� 
 "5�� ������ OSP 2.0, ���� ���� 2.0���� ��ȯ"�̶�� �Ǿ� �ִµ� �̰� ���� ó�� ���� ���� 
==============================================================================================================

- PRT(Funkload) ���۾� @@@@@@@@@@@@@@ 
1. Funkload Client Script �ۼ� 
3) ���� �׽�Ʈ ��ɾ� 
$ cd /home01/iosptest/funkload/iosp/auth  
$ fl-run-bench -c 100:450:500:550:600:650:700 -D 20 test_auth.py auth.test_random  
===>  ���� ���� ã��_2(450 TPS, 3��)  ==> 5.24 

$ fl-run-bench -c 10:30:50:70 -D120 test_auth.py auth.test_random 
===>  ���� ���� ã��_2(450 TPS, 3��)  ==> 5.31_01 

$  fl-run-bench -c  10:50:100:110:120:130:140:150:200 -D 120 test_auth.py auth.test_random 
===>  ���� ���� ã��_2(450 TPS, 3��)  ==> 5.31_02_2(���� ��� ��) 

$  fl-run-bench -c  10:50:100:110:120:130:140 -D 120 test_auth.py auth.test_random 
===>  ���� ���� ã��_2(450 TPS, 3��)  ==> 5.31_02_3 
==============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������