

�����������������������������������������������������������
+---------------------------------------------// Memo(2012.06) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2012.06.01(��) �۾� ����������������
---> 07:00 ~ 18:40 --> ������ ���� ����(�ڽ��� ���� �μ��ΰ�) 

- IOSP(/oauth2) Prj
- PVT_Defect 
IOSP-50(Reopen) ==> ó�� �Ϸ�(���� ����): �������� ���� Ȯ�� ��ȸ DB ���̺� �ʵ� �������  ���� �߻��� ������ ������ 
1. �̱� �������� createAuthorizaionCode API�� ��û --> privacyAccepted�� Y�� ���� ==> ó�� �Ϸ�  

IOSP-54(Reopen) ==> ó�� �Ϸ�(���� ����): �������� ���� Ȯ�� ��ȸ DB ���̺� �ʵ� �������  ���� �߻��� ������ ������ 
1. AUT_1040�� ����� --> AUT_1039�� ����Ǿ�� �� 
tnc_accepted�� Y, privacy_accepted�� N�� �����Ͽ����Ƿ� privacy_accepted ���� ���� �ڵ��� AUT_1039�� ����Ǿ�� �� ������ ���Դϴ�.  

IOSP-56(Reopen) ==> ó�� �Ϸ� 
1. ��û �Ķ���� appId�� "j5p7ll8g33" ���� �����Ͽ� API ��û��. 
==============================================================================================================

- �뱸 ���� 
1. ��ä��: 010-8832-0 
2. �Ͻ�: 06.02(��) 16�� 
3. ���: �Ե����� �뱸������������(�뱸 ���������� ��ó) 
1) �ּ�: �뱸 �޼��� ������ 1033-2(http:place.map.daum.net/11732002), T) 053-623-0 
==============================================================================================================

������������������� 2012.06.02(��) �۾� ����������������
---> 07:00 ~ 18:00 

�������౸
05:30 ���  
06:20 �ű��ʵ��б� 
06:40 �����౸(4:2 ��) 
07:20 �����౸(2:0 ��): ū ���� 
07:50 ���� 
08:20 ����(ȭ���Ĵ�: ȣ�������� ��) 
08:50 ���� 
09:00 �Ͱ�  
10:20 �� ��� 
11:10 ���� �͹̳� 
11:20 ��ӹ���(�뱸��, ���(24,100��) 
15:00 ���뱸 ��ӹ��� �͹̳� 
15:10 726�� ����(���7�� ��ü���ǳ�) 
15:40 ���������� 
16:00 �Ե����� �뱸������������(��ä��(010-8832-0) ����): ���� �� �޾Ҵٰ� Ƽ�԰� ����, Ű ����(150cm��) 
17:00 �͹� ȣ��(��ä�徾) 
19:00 ���� 
19:10 805�� ����(LG���ڼ��񽺼���) 
19:40 �̸�Ʈ ������(��ȣ ����) 
19:50 ������ �����(�������, �¼�, â��): 113,000��(���� ��) 
        - ������� �ﱹ���� ���� ��Ź(3�г� �ǿ��, 5�г� �ǳ���: �뱸�� �ϱ� ħ�굿 ģ�� ����Ÿ�� 101�� 112ȣ) 
24:00 ���� ==> 2012.06.03(��) 
24:10 �籸(��ȣ: 100���� ���� ��, ��ȣ�� �����) 
24:30 ���� 
24:40 �Ϻ���(������ �����(����ȸ ȸ��)�� ��) 
01:00 �ý�(7,800��) 
01:20 ���뱸 ��ӹ��� �͹̳�(�뱸��, �ɾ߿��(26,500��)) 
01:50 ��ӹ��� ž��(1�� 30�� ��) 
05:00 ���� ��ӹ��� ���� 
05:40 �Ͱ� 
==============================================================================================================

������������������� 2012.06.03(��) �۾� ����������������
---> 07:00 ~ 18:00 

�������౸
06:10 �ź�õ ������(�������� ��)  
06:30 �ű��ʵ��б�(���� ����(30����): ���� ����): ���, �� 
07:20 ���� ��� 
08:20 ���� ���� ���(���� ���� ����ȸ, ���� ���� ����ȸ) 
08:40 ����(2���� ��): 1��5��(���� ����) ==> �Ⱥ��� ��ġ(���� ���� ����) 
       - ��ȫ ����(������ 7��), ��ȿ���� ����(����� 9��) 
14:20 ���� 
15:20 ���� ���(�����񾾿��� ģ�� �ƹ����� �� ���ߴٰ� ���� ��) 
16:20 �ű��ʵ��б� ����0 
16:40 ����� ������(�������� ��) 
17:10 �Ͱ�(�����񾾿��� ��ȭ�� ==> ������ ��翡 ����� ��)  
17:20 ��ħ 
==============================================================================================================

������������������� 2012.06.04(��) �۾� ����������������
---> 07:05 ~ 19:00 --> ���� ����(19��: ���뵷(5,651,046��) ã�� ����(5������)) ==> ������ 

- IOSP(/oauth2) Prj
- PVT_Defect 
1. throwOSPException �ּ� ó��(OSPResultMessage.raiseException�� ��ü) 
catch(ClientException ce) {  
    throwOSPException(ce); 
    OSPResultMessage.raiseException(new OSPException(ce.getStatus(), ce.getErrorEntity().getCode(),  
    ce.getErrorEntity().getMessage(), ce.getErrorEntity().getResource())); 
} 
==============================================================================================================

- kman�� �������� 
http:cafe.naver.com/ArticleRead.nhn?clubid=18064087&menuid=22&boardtype=P&page=4&specialmenutype=&articleid=4346&referrerAllArticles=false 
==============================================================================================================

19:10 ��� 
19:40 ¯�� Ƚ��(���뵷 ����, ���� ��): ���� ����ȸ �ѹ� ������ �ϱ�� �� 
23:40 ���� 
23:45 �ý� 
24:00 ������ ��Ÿ� ���� ���� ==> 2012.06.05(ȭ) 
24:10 ������(��: 23��(���� ��)) 
24:30 ���������� ��Ʈ���� �޾Ƽ� ���� �θ� 
01:00 ���� 
01:30 ��ħ 
06:30 ��� 
08:10 ��� 
==============================================================================================================

������������������� 2012.06.05(ȭ) �۾� ����������������
---> 08:10 ~ 20:00 

- IOSP(/oauth2) Prj
- PVT_Defect 
IOSP-78 ==> ó�� �Ϸ� 
��û �Ķ���� country�� Invalid �� "ABC"�� �����Ͽ� ��û�Ͽ��� ��,  
����Ǵ� �����ڵ尡 AUT_1813�� �ƴ� AUT_5008���� ����˴ϴ�.  
==============================================================================================================

- Administrator's Guide (Component - Account) ���� �ۼ� 
1. ����OSP_Admin Guide_Account.doc 
==============================================================================================================

- Client Stub�� ���� OSP2.0 API ���� 
1. OSP2.0 Client Stub�� IOSP Client Stub�� Response �� 
(d:\OSP2.5\workspace\IOSP\Co-work\1. IOSP ���Ĺ���\1. Archtect\7.���߰���\���ΰ������ 
\ClientStub API �������\Client Stub API ���ΰ���_Account.xlsx) 
==============================================================================================================

������������������� 2012.06.06(��) �۾� ����������������
---> 11:20 ~ 17:40 --> ������, ������ ��� 

- IOSP(/oauth2) Prj
- PVT_Defect 
IOSP-78 ==> ó�� �Ϸ� 
��û �Ķ���� country�� Invalid �� "ABC"�� �����Ͽ� ��û�Ͽ��� ��, ����Ǵ� �����ڵ尡 AUT_1813�� �ƴ� AUT_5008���� ����. 

IOSP-79 ==> ó�� �Ϸ� 
��û �Ķ���� check_email_validation�� Y�� �����ϰ�, username�� �������� ���� email �ּҰ��� �����Ͽ��� ��,  
�����ڵ� AUT_1814�� ������� �ʰ� ���� ���� �ϰ� �ֽ��ϴ�. 
==============================================================================================================

- HttpHeaderConfig ���� 
import com.samsungosp.framework.auth.header.OSPHttpHeaderInfo; 
OSPHttpHeaderInfo httpHeaderConfig ==> OSPHttpHeaderInfo httpHeaderConfig  
==============================================================================================================

�������౸ 
05:30 ��� 
06:40 �ű��ʵ��б� 
06:50 ������ 
07:30 ����(4:2 ��) 
07:30 ����(5:2 ��) 
09:10 ���� 
09:50 ȭ���Ĵ�(�ѻ�� ��ȸ����� ��) 
10:40 ���� 
11:20 ��� 
17:40 ��� 
17:55 �����(��) 
18:00 ��(��: �μ�(A, 165, ����, ����, �Ѽ� ���)) 
19:00 ���� 
19:10 ����((�����(��) ���)  
19:20 ���� 
20:10 �Ͱ� 
22:00 ��ħ 
==============================================================================================================

������������������� 2012.06.07(��) �۾� ����������������
---> 06:30 ~ 18:40 --> �츮�������� ���� ����(�翹��): �Ѽ��ɾ�: 49,476,840��, ������ ����(���� JSġŲ): �ְ� 

- IOSP(/oauth2) Prj
- PVT_Defect 
IOSP-50(Reopen) ==> ó�� �Ϸ� 
1. �̱� �������� createAuthorizaionCode API�� ��û --> privacyAccepted�� Y�� ���� ==> ó�� �Ϸ� 
==============================================================================================================

- ADS, DDS ���⹰ �ۼ� 
1. ����OSP_ADS_Account(�Ϸ�) 
OSP/IOSP/Co-work/7. PMO����/30. ���⹰����/20. �������⹰/10. ������Ʈ �������⹰/20. ����/MSC-IOSP-DE01_ADS 
/����OSP_ADS_Account.docx 
2. ����OSP_Detail Design Specification_Content(�Ϸ�) 
OSP/IOSP/Co-work/7. PMO����/30. ���⹰����/20. �������⹰/10. ������Ʈ �������⹰/20. ����/MSC-IOSP-DE03_DDS 
/����OSP_Detail Design Specification_Content.doc 
-------------------------------------------------------------------------------------------------------- 

- Amateras(AmaterasERD, AmaterasUML)  
1. GEF(Graphical Editing Framework) ��ġ  
 1) GEF �ٿ�ε� �ٷΰ��� ==> http:www.eclipse.org/gef/downloads/  
��. ���� �ٿ�ε� �������� ��� ���� ������ "Draw2D, GEF and Zest"���� "All-In-One SDK(Runtime, Source, Examples)"�� Ŭ�� 
��. GEF-ALL-3.7.2.zip �ٿ�ε� �� 
 2) GEF-ALL-3.7.2\eclipse �������� features, plugins �����Ͽ� Eclipse�� ��ġ�� ������ �ٿ��ֽ��ϴ� 

2. Amateras ��ġ 
 1) Amateras �ٿ�ε� �ٷΰ��� ==> http:sourceforge.jp/projects/amateras/releases/ 
�ٿ�ε� ����Ʈ�� �湮�Ͽ� �Ʒ� �̹����� ǥ�� �κ��� Ŭ���Ͽ� AmaterasERD, AmaterasUML �� �ٿ� �޴´�. 
(net.java.amateras.db_1.0.8.jar, AmaterasUML_1.3.3.jar) 
�� ������ jar ���ϰ� AmaterasERD�� jar ������ ��� %Eclipse_Home%\plugins  
����(C:\OSP2.5\tools\eclipse_N\plugins)�� �ٿ������� ��ġ�� �Ϸ�.  

3. Amateras ����  
���� Eclipse�� �����Ͽ� "File" �޴� > "New" > "Other..."�� ���ʴ�� Ŭ���غ��� �Ʒ�ó��  
AmaterasERD�� AmaterasUML �÷������� �߰��Ǿ� ����� �غ� �Ǿ� �ִ� ���� �� �� �ֽ��ϴ�. 

UML Diagram�� ���󵵰� ���� �Ʒ��� �װ��� Diagram�� �����ϴ� ���� �� �� �ֽ��ϴ�.  
- Usecase Diagram 
- Class Diagram 
- Sequence Diagram 
- Activity Diagram 
==============================================================================================================

- UML ���� 
1. OJT KOREA ���ᰭ��(UML): http:www.ojtkorea.com/contents/e-learning/?code=uml 
==============================================================================================================

������������������� 2012.06.08(��) �۾� ����������������
---> 06:30 ~ 18:30 --> �ڽ��� ���� ö��(�߽�, �籸ħ), ����OSP ����(600, 10������): ������ 

- IOSP(/oauth2) Prj
- PVT_Defect 
IOSP-80 ==> ó�� �Ϸ�   
1. tnc_accepted, privacy_accepted �Ķ���Ϳ� ������ ���� �ݿ����� �ʽ��ϴ�. ==> ó�� �Ϸ� 
 1) tnc_accepted: ������� ����, privacy_accepted: ������������ ����  
==============================================================================================================

- ���߼��� Hudson(��彼) ���� ���� 
1. ����: ���߼��� Hudson(��彼) ���� ���� �߻� 
build-client: 
[javac] D:\osp2.5\hudson\dev\jobs\dev_auth_svc-build\workspace\auth\auth-svc\build.xml:235:  
warning: 'includeantruntime' was not set, defaulting to build.sysclasspath=last; set to false for repeatable builds 
[javac] Compiling 90 source files to D:\osp2.5\hudson\dev\jobs\dev_auth_svc-build\workspace 
\auth\auth-svc\auth-client\build\classes 
[javac] D:\osp2.5\hudson\dev\jobs\dev_auth_svc-build\workspace\auth\auth-svc\auth-client\src 
\main\java\com\samsungosp\auth\oauth2\common\vo\BooleanVO.java:34: warning: unmappable character for encoding UTF-8 
[javac]  * BooleanVO??boolean ���� ?????Value Object ??��. 
   
BUILD FAILED 
D:\osp2.5\hudson\dev\jobs\dev_auth_svc-build\workspace\auth\auth-svc\build.xml:235: Compile failed; see the compiler error output for details. 

2. ��ġ: /build.xml�� local ����(eclipse) build.xml ���� ó��  ==>  public application/xml isValid �Ʒ� ���� �߰� �� 
build-client: 
    [javac] D:\OSP2.5\workspace\IOSP\Workspace\Account\Auth\trunk\auth-svc\build.xml:235: warning:  
    'includeantruntime' was not set, defaulting to build.sysclasspath=last; set to false for repeatable builds 
    [javac] Compiling 90 source files to D:\OSP2.5\workspace\IOSP\Workspace\Account\Auth\trunk 
    \auth-svc\auth-client\build\classes 
    [javac] D:\OSP2.5\workspace\IOSP\Workspace\Account\Auth\trunk\auth-svc\auth-client\src 
    \main\java\com\samsungosp\auth\oauth2\service\AuthServiceResourceClient.java:1101: <identifier> expected 
    [javac]     public application/xml isValid ( 
==============================================================================================================

- isValid() API ���� 
1. json ��Ŀ��� xml ������� ���� 
@RequestMapping(value = "user/isvalid", method = RequestMethod.POST, headers =  
{"Content-Type=application/x-www-form-urlencoded", "accept=application/xml"})  
@ResponseResult("com.samsungosp.auth.oauth2.inner.vo.Oauth2IsVaildUserVO") 
public ModelAndView isValid(OSPHttpHeaderInfo headers, 
     @RequestParam("username") String username, 
     @RequestParam("password") String password) throws OSPException; 
} 
==============================================================================================================

������������������� 2012.06.09(��) �۾� ����������������
---> 10:00 ~ 15:00 --> EFA EURO 2012 ����(01�� ==> ������ 1: 1 �׸���) 

- IOSP(/oauth2) Prj
- isValid() client-stub ���� 
1. json ��Ŀ��� xml ������� ���� 
==============================================================================================================

�������౸
05:00 ��� 
05:00 EURO 2012(A�� ���þ� 4:1 ü��) 
05:30 ����� 
06:30 �ű��ʵ��б� 
06:40 ������(3:2 ��)  
07:30 ���� 
09:50 ȭ���Ĵ�(�̽����� ��) 
09:30 ���� 
10:00 ��� 
15:00 ���  
15:30 �ٺ�ġ ġ��(�Ű�ġ��3) 
16:30 �Ͱ�   
17:00 ��ħ 
==============================================================================================================

������������������� 2012.06.10(��) �۾� ����������������
---> 07:00 ~ 18:00 

�������౸
05:00 ��� 
05:00 EURO 2012(B�� ==> ���� 1 vs 0 ��������) 
07:00 ����� 
07:05 �ź�õ ������(�������� ��(����ȣ: 26�� 5439)) 
07:30 �ű��ʵ��б�  
07:40 ������(0:0 ��) 
09:00 ����(3:0 ��)  
09:50 ���� 
10:10 Ŀ�Ǽ� �Ϻ���(�� 2õ��): �������� ��) 
11:30 �ű��ʱ� �� 
11:50 ������ ������(�ѻ�� ��ȸ��, �����, ������, ����): �� ��ȸ����� 3���� �⸧������ �� 
12:30 �ʿ�����Ȧ(7ȣ�� �����꿪 2�� �ⱸ) 
12:40 ���(���� 5����) 
13:00 ���� 
13:20 �Ĵ�(����) 
15:00 ���� 
15:00 ������ ������(�ѻ�� ��ȸ��, �����, ������, ����) 
15:20 ����(�ű��ʱ� ��) 
15:30 ����� ������(�������� ��) 
16:00 �Ͱ� 
17:20 ��ħ 
==============================================================================================================

������������������� 2012.06.11(��) �۾� ����������������
---> 06:50 ~ 20:00 

- IOSP(/oauth2) Prj
- isValid() json ��Ŀ��� xml ������� ����  
1. STG#2�� �ݿ� ���� 
2. client-stub ���� �߻� 
==============================================================================================================

- client-stub ���� ������ ���� ���� �߻� 
1. ����: auth isValid API�� json ��Ŀ��� xml ������� �������� ���� ������ �м��� ��� client-stub���� InputStream  
������ com.samsungosp.auth.oauth2.vo.Oauth2IsVaildUserVO�� �ƴ϶� com.samsungosp.auth.oauth2.inner.vo. 
Oauth2IsVaildUserVO�� �����ؼ� ������ �߻� 
2. ��å: source_package�� ������� �ʰ� �ٺ����� ��å�� ������ �� 
==============================================================================================================

������������������� 2012.06.12(ȭ) �۾� ����������������
---> 06:50 ~ 20:20 --> �Ӿ� �ѻ�� ��ȸ��� ���� �Ằ �뺸 

- IOSP(/oauth2) Prj
- PVT_Defect 
IOSP-87 ==> ó�� �Ϸ� 
1. AuthService_isValid) ���� ���� �׽�Ʈ ����� CMM_1003 �����ڵ尡 ����˴ϴ�. ==> ó�� �Ϸ�  
 1) Headers �κп� Accept�� xml������� ����ó�� �߽��ϴ�. 
 2) ���� �ٰ�:  ���� ����� OSP2.0 API���� POST user/isvalid�� Response Type�� application/xml�� 
 �Ǿ� �־ ���� ó����(http:devdoc.iosp.com/docs/apispec_kr/auth/index.html) 
 3) ���� OSP OSP2.0 API���� POST user/isvali ȣ��� Headers �κп��� �Ʒ� �κ����� ���� ó�� ��� 
  Accept: application/json===> Accept: application/xml 

IOSP-88 ==> ó�� �Ϸ� 
1. email_id ���� userauth_token ���� ������ ���� ����ġ �� ��, AUT_1000 �����ڵ尡 ����˴ϴ�. ==> ó�� �Ϸ� 
==============================================================================================================

- client-stub ���� ������ ���� ���� �߻� 
1. ����: auth isValid API�� json ��Ŀ��� xml ������� �������� ���� ������ �м��� ��� client-stub���� InputStream  
������ com.samsungosp.auth.oauth2.vo.Oauth2IsVaildUserVO�� �ƴ϶� com.samsungosp.auth.oauth2.inner.vo. 
Oauth2IsVaildUserVO�� �����ؼ� ������ �߻� 
2. ��å: source_package�� ������� �ʰ� �ٺ����� ��å�� ������ �� 
3. �ذ�: ���� source_package����/applicationContext-marshaller.xml ���Ͽ��� VO ��ο� inner �߰� 
<value>com.samsungosp.auth.user.inner.vo.User3rdDisclaimerAcceptanceCreateVO</value> 
==============================================================================================================

- jsonObject ���� ���� 
1. return�� jsonObject�� �ƴ϶� VO�� �����ؾ� jsonObject�� �ڵ� ���� ������ 
public ModelAndView createUserAuthToken(..) {  
return success(jsonObject); 
} 
==============================================================================================================

������������������� 2012.06.13(��) �۾� ����������������
---> 06:20 ~ 20:50 

- IOSP(/oauth2) Prj
- isValid ���� 
1. success �Ķ���� ���� 
<?xml version="1.0" encoding="UTF-8"?> 
<ResultIsValidate> 
<userID>01gg5uki5o</userID> 
<ResponseValue>true</ResponseValue> 
</ResultIsValidate> 
2. auth.samsungosp.com, auth.samsungosp.net �׽�Ʈ �Ϸ� 
==============================================================================================================

- OSP2.0 stub-2.0-client �׽�Ʈ �Ұ� 
�Ｚ ���� ������ å�Ӳ��� OSP2.0 stub-2.0-client�� Profile�� �Բ� ����Ͽ� �� ��ÿ� ����� ���� ����  
���¿��� �׽�Ʈ�� ���������� �Ұ��ϴٰ� �׽�Ʈ ������ 
==============================================================================================================

- �Ҿ� ���� ����(���� ����) 
1. ������� > �����ϱ�: http:www.mobilians.co.kr/korean/service/inquiry/board_write.php 
2. ���νŹ���(������ ��): http:www.epeople.go.kr 
�������� ��������� �����͢� �̿뼭�� �̿뼭�񽺢� ���񽺾�ü �������� �������� ����  �߽Ź�ȣ  010-3072-0  
2012/4/6  �������  1600-1705  ���۴�   1600-1705 ������Ÿ�� �Ϲݰ��� �Ҿװ���  www.comfany.com  16,500  
2012/5/7  �������  1600-1705  oudition.com(�ڵ�)   1600-1705 �ص� �ڵ����� �Ҿװ���  www.oudition.com  16,500  
==> 15,000�� ȯ�����شٰ� ��(����) 
==============================================================================================================

������������������� 2012.06.14(��) �۾� ����������������
---> 06:20 ~ 20:30 --> ����OSP PM �μ��ΰ�(����� å�� --> �̰��� å��(*)) 

- IOSP(/oauth2) Prj
- PVT_Defect  
IOSP-80(Reopen) ==> ó�� �Ϸ�   
1. tnc_accepted, privacy_accepted �Ķ���Ϳ� ������ ���� �ݿ����� �ʽ��ϴ�. ==> ó�� �Ϸ� 
 1) tnc_accepted: ������� ����, privacy_accepted: ������������ ���� 
������ �������� ���ϰ� ��ȭ ��ȭ�� �Ͽ� ���� ������� ���Դٴ� Ȯ���Ͽ� Resolve ó�� �մϴ�.  
H) 010-3312-0(������ ������) 
-------------------------------------------------------------------------------------------------------- 

- isValid(OSP 2.0 API) ==> ǥ�� 
<?xml version="1.0" encoding="UTF-8" standalone="yes"?> 
<ResultIsValidate> 
<ResponseValue>true</ResponseValue> 
<UserID>cntslpbig4</UserID> 
</ResultIsValidate>   
==============================================================================================================

- �޴��� ��û �� ����(��ȣ�̵�: SKT --> U+) 
1. ��û��:  2012.06.13(��) 08:00 
2. �ù� ������: 2012.06.14(��) 12:00(12�ð� ���� ��ȭ �ȵ�) 
3. �ܸ��� ��� 
 1) ����: ��Ƽ�ӽ� ��(LG-LU6800)(4.3��ġ, 16GB RAM ����, 500�� ȭ��) 
 2) ����: �����Ⱓ: 24����, �����ݾ�: 170,000��(1������ �����ÿ� ����� 85,000���� �δ�) 
 3) �����: �Ϲݿ����(�� 10,900��), ����Ÿ �����(1G �� ����): �߰��� ��û 
 4) ��Ż�: (0505-299-0, @naver.com) 
���Խ�û��: http:onsalemobile.uplus.co.kr/AppFormUserTypeCmd.lgtelecom?formId=90079&agentId=309911&openmktCd=2342 

- ��Ƽ�ӽ��� �����극�� ���׷��̵��� ==> ��ġ�Ϸ� 
http:hansh862.blog.me/100151943506 
http:blog.naver.com/PostView.nhn?blogId=hansh862&logNo=100152413571 
-------------------------------------------------------------------------------------------------------- 

- �ܸ��� ���� ���(���� �Ϸ� �Ǿ� ������) 
1. �޴��� ������ �� 
2. ��ȭ > ##10306#(����) 
3. ���� > 0103070(Ȯ�� ����) 
4. �޴��� �ڵ� ����  
5. �޴��� �ٽ� ���� 
-------------------------------------------------------------------------------------------------------- 

- ��Ƽ�ӽ� ��(LG-LU6800) �޴��� ��� 
1. PU: T1 OMAP 3630 1GHz 
2. RAM: 512M 
3. OS: ���ο�(�����극�� Upgrade �Ϸ� ==> 2012�� 3�б⿡ ���̽�ũ�� ������ġ ���׷��̵� ���� ����) 
4. ũ��: 132 * 69.3 * 10.1 
5. ����: 151g 
6. ����޸�: 16GB 
7. ����޸�: �ִ� 32GB ���� 
8. ���͸�: 1500mAh 
9. ī�޶�: ���� VGA, �ĸ� 500�� AF ī�޶� 
10. ��Ÿ: GPS, WIFI, ������ȭ, WIFI ���̷�Ʈ, DLNA, ������� 3.0, 2011�� 5�� ��� �� 
-------------------------------------------------------------------------------------------------------- 

- ��Ƽ�ӽ� ��(LG-LU6800) �޴��� ȭ����ݹ�ȣ 
1. ���� Ȯ��: 69 
==============================================================================================================

������������������� 2012.06.15(��) �۾� ����������������
---> 06:20 ~ 19:20 

- IOSP(/oauth2) Prj
- isValid XML schema ���� 
1. http://stgdoc.iosp.com/docs/apispec/auth/index.html�� isValid XML schema(����) 
<?xml version="1.0" standalone="yes"?> 
<xs:schema version="1.0" xmlns:xs="http://www.w3.org/2001/XMLSchema"> 
  <xs:element name="ResultIsValidate" type="oauth2IsVaildUserVO"/> 
  <xs:complexType name="oauth2IsVaildUserVO"> 
    <xs:sequence> 
      <xs:element name="userID" type="xs:string" minOccurs="0"/> 
      <xs:element name="value" type="xs:boolean"/> 
      <xs:element name="errorCode" type="xs:string" minOccurs="0"/> 
      <xs:element name="errorDesc" type="xs:string" minOccurs="0"/> 
    </xs:sequence> 
  </xs:complexType> 
</xs:schema> 
-------------------------------------------------------------------------------------------------------- 

2. http://stgdoc.iosp.com/docs/apispec/auth/index.html�� isValid XML schema(���� ��û): ��ҹ��� ����, ������ ��Ȯ�ؾ� �� 
<?xml version="1.0" standalone="yes"?> 
<xs:schema version="1.0" xmlns:xs="http://www.w3.org/2001/XMLSchema"> 
  <xs:element name="ResultIsValidate" type="oauth2IsVaildUserVO"/> 
  <xs:complexType name="oauth2IsVaildUserVO"> 
    <xs:sequence> 
      <xs:element name="ResponseValue" type="xs:string" minOccurs="0"/> 
      <xs:element name="UserID" type="xs:boolean"/> 
      <xs:element name="ErrorCode" type="xs:string" minOccurs="0"/> 
      <xs:element name="ErrorDesc" type="xs:string" minOccurs="0"/> 
    </xs:sequence> 
  </xs:complexType> 
</xs:schema> 
==============================================================================================================

- return success(VO) ���� 
1. return success("authenticate", jsonObject) ==> return success(responseValueVO) 
1) {"responseValueVO":{"username":null,"password":null,"userId":"01gg5uki5o","userauth_token":"QMTQnPvIn8", 
"access_token":null,"refresh_token":null,"token_type":null,"accessTokenExpiresIn":0,"expires_in":0,"refreshTokenExpiresIn":0}} 

http://forum.springsource.org/showthread.php?81132-Can-a-spring-controller-return-a-json-object 
==============================================================================================================

- ��� VOD(http://jwcoolguy1.blog.me/70140063381) 
1. ��������(������), ��ǰ��(�̼���), �����(�̿���), ����(������), ������ ������(���缺, �ֽö�), �Ѹ����� ����(�Ѽ���) 
==============================================================================================================

19:20 ��� 
19:50 ���� ���� 
20:00 ¯��(Ƚ��): ���� �� 
23:00 ȣ����: ���� �� 
24:30 ��ȭ: ���� �� 
05:00 ����(165, ����, �ǰ��� ��)[66P] ==> 2012.06.16(��) 
06:00 ���� 
07:30 �Ͱ� 
08:00 ���� 
13:00 ��� 
13:00 �ٺ�ġ ġ��(�Ű�ġ��4)  
13:20 ���� 
13:30 �߽�(���ҸӴϱ�����): ��ġ���(3õ 5���) 
14:00 �Ͱ� 
20:00 ���� 
23:00 ��ħ 
==============================================================================================================

������������������� 2012.06.17(��) �۾� ����������������
---> 07:00 ~ 18:00 

�������౸
05:00 ��� 
05:00 EURO 2012(�׸��� 1 vs 0 ���þ�) ==> A�� ü��, �׸��� 8�� ���� 
06:30 ����� 
06:35 �ź�õ ������(�������� ��) 
07:00 �ű��ʵ��б�  
07:30 ����(3:4 ��): 1AS(�� �� �ѱ�: �ٷ� ã�� ��) 
08:30 ����(3:3 ��): 1�� ���� 
10:30 ���� ==> �ѻ�� ��ȸ���� �Ӿ� �ٽ� ������� �ϱ淡 ������ 
11:00 �߽�(���� ���屹: �δ����): ����̰� ��ȥ ���� ��ʷ� �� 
12:00 ���� 
12:10 �ĸ��ٰ�Ʈ(��ȫ ���� ������ ���� ����): �� 6õ�� 
12:30 ����� ������(������ ��) 
13:00 �Ͱ� 
13:30 ���� 
17:00 ��� 
20:00 ���� 
23:00 ��ħ 
==============================================================================================================

������������������� 2012.06.18(��) �۾� ���������������
---> 06:30 ~ 20:40 --> EURO 2012(B�� ����, �������� 8�� ����), P4 ���� ��� �߻� 

- IOSP(/oauth2) Prj
- return success(VO) ���� 
1. ����OSP_AA_FAQ_20120615. doc ���� > 5. ��û�� Accept�� ������ �������� ��ȯ�ϴ� response content-type��  
�ٸ��� �����ϵ��� ������ ��ǥ�� ���� ����� ������ �ذ��ϴ� ��� 

1. return success("authenticate", jsonObject) ==> return success(responseValueVO) 
1) {"responseValueVO":{"username":null,"password":null,"userId":"01gg5uki5o","userauth_token":"QMTQnPvIn8", 
"access_token":null,"refresh_token":null,"token_type":null,"accessTokenExpiresIn":0,"expires_in":0,"refreshTokenExpiresIn":0}} 
==> {"username":null,"password":null,"userId":"01gg5uki5o","userauth_token":"QMTQnPvIn8", 
"access_token":null,"refresh_token":null,"token_type":null,"accessTokenExpiresIn":0,"expires_in":0,"refreshTokenExpiresIn":0} 
==============================================================================================================

- [��Ĺ���࿡��] Starting Tomcat v6.0 Server at localhost' has encountered a problem 
1. ��������:  
Port 9080 required by Tomcat v6.0 Server at localhost is already in use. The server may already be running in  
another process, or a system process may be using the port. To start this server you will need to stop the other  
process or change the port number(s) 
2. ����:  
��Ĺ ������ �����ų �� �̿� ���� ����â�� �߸鼭 ��Ĺ ������ STOP�Ǵ� ������ 
�ٸ� ���μ������� ������ �̹� ���ư��� �ֱ� �����Դϴ�.  
��Ʈ��ȣ�� �浹�� �� ��쿡 ��Ʈ��ȣ�� �ٲپ��־ �ذ��� �Ǵ� ��찡 �ֽ��ϴ�. 
 ������ �׷��� �ذ��� ���� �ʴ� ��쿡�� ��Ĺ ���� ���μ����� ���̸� �˴ϴ�. 
3. ��ġ:  
 1) �۾� ������ ���� (Ctrl + Alt + Del) 
 2) �۾� ������-���μ����ǿ��� �������� javaw.exe�� ã�� (javaw.exe : ��Ĺ ���� ���μ���) 
 3) javaw.exe�� 2�� �� ������ �Ѵ� ������ ��ư ������ '���μ��� ����' ���� 
 ��Ĺ ���� ���μ����� 2�� �� �־��� ������ ��Ʈ �浹�� �� ���� 
 4) �ڵ������� Eclipse�� ����� 
 5) �ٽ� Eclipse�� �����Ű�� ��Ĺ ������ �����ϸ� OK.  
==============================================================================================================

- Tomcat v6.0 Server at localhost ȯ�� ���� 
1. Open launch coofigration > Agruments > VM Aaruments 
-Dcatalina.base="C:\OSP2.5\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp2"  
-Dcatalina.home="C:\OSP2.5\server\apache-tomcat-6.0.35"  
-Dwtp.deploy="C:\OSP2.5\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp2\wtpwebapps"  
-Djava.endorsed.dirs="C:\OSP2.5\server\apache-tomcat-6.0.35\endorsed"  
-Dosp.home.dir="C:\OSP2.5\localhome" -Dcomponent.name="oauth2" -Dosp.server.type="local"  
-Dtangosol.coherence.cacheconfig="C:\coherence-putter-utility\osp2_cache_config.xml"  
-Dtangosol.coherence.clusteraddress="224.153.111.222"  
-Dtangosol.coherence.clusterport=2222 -Dtangosol.coherence.ttl=0 -Dosp.center.countrycode=US-U 
2. Web Modules 
Document base: oauth2-svc, Path: / 
3. ���� ����: 
�ɰ�: Exception sending context initialized event to listener instance of class org.springframework.web.context.ContextLoaderListener 
org.springframework.beans.factory.BeanInitializationException: Could not load properties; nested exception is java.io.FileNotFoundException:  
class path resource [config/${osp.server.type}/applicationSystemConfig.${osp.center.countrycode}.xml] cannot be opened because it does not exist 
==============================================================================================================

������������������� 2012.06.19(ȭ) �۾� ����������������
---> 06:30 ~ 19:30 --> EURO 2012(C�� ������, ��Ż���� 8�� ����) 

- IOSP(/oauth2) Prj
- return success(VO) ����  
/servlet-rest.xml ���Ͽ��� 
<!--/ / AA ������ jsonView class�� com.samsungosp...�� ��Ȯ �ϴٰ� �Ͽ� ���� ó��(ǥ�� �ؼ�) //--> 
<bean id="jsonView" 
class="com.samsungosp.framework.web.servlet.view.json.MappingJacksonJsonView">   
<!-- class="org.springframework.web.servlet.view.json.MappingJacksonJsonView"> --> 
<property name="contentType" value="application/json;charset=UTF-8" /> 
</bean> 

���: 
{"authenticate":{"userauth_token":"E6ZHyioyyH"}} ==> {"userauth_token":"E6ZHyioyyH"} 
-------------------------------------------------------------------------------------------------------- 

- json2.js ������ include �Ѵ�. (����) 
1. JSON Object -> String ==> JSON.stringify(object); 
2. String -> JSON Object ==> JSON.parse(string); 
-------------------------------------------------------------------------------------------------------- 

- net.sf.json.JSONObject javadoc 
http://json-lib.sourceforge.net/apidocs/net/sf/json/package-summary.html 
==============================================================================================================

������������������� 2012.06.20(��) �۾� ����������������
---> 06:35 ~ 18:40 --> EURO 2012(D�� �ױ۷���, ������ 8�� ����) 

- IOSP(/oauth2) Prj
- IOSP �̰��� OSP1.0 MB ���̺� DB ó�� ���� 
1. �̰��� �ϸ� OGG �������� �ذ� �Ѵٰ� ��(Profile�� ���� ���� �ɷ� �ִ� ���̺� ����) 
==============================================================================================================

- ����ȭ app 
1. easy task killer, Ŭ��û�ұ� 
==============================================================================================================

������������������� 2012.06.21(��) �۾� ����������������
---> 06:40 ~ 20:00 --> SF Interceptor ȣ�� ��� ����(stub call���� Rest Template ������� ����): ���ֿ� ���� 

- IOSP(/oauth2) Prj
- Test case ���� 
1. createUser ���� 
==============================================================================================================

- LG ����Mobile ���񽺼��� �湮 
1. ��Ƽ�ӽ� ��(LG-LU6800) ������ ���ߴ� ���� ��� 
 1) RAM �������� ���� �������� ����(2�Ͽ� �ѹ��� �޴��� ������� ��) 
 2) ������ ���߸� �嵥�� ���� ����� ��� �ۿ� ���ٰ� �� 
-------------------------------------------------------------------------------------------------------- 

- LG ���񽺼���(�޴���) 
1. ����Mobile ���񽺼���(1544[1588]-0) 
 1) �ּ�: ���� ������ ���ﵿ 820-9 �۶�Ÿ������ 16�� 
 2) �����ð�: ����(10:00 ~ 19:00), �����(10:00 ~ 14:00) 
2. LG ���� ���񽺼���(1544[1588]-0) 
 1) �ּ�: ����Ư���� ���ʱ� ����� 75-13���� ��������Ÿ�� ��2�� 2�� LG best���� 
 2) �����ð�: ����(09:00 ~ 18:00), �����(09:00 ~ 13:00) 
==============================================================================================================

������������������� 2012.06.22(��) �۾� ����������������
---> 06:25 ~ 20:40 --> EURO 2012([8��] ü�� 0 vs 1 ��������) 

- IOSP(/oauth2) Prj
- target_package ����(/AccessTokenVO.java) 
package com.samsungosp.auth.oauth2.inner.vo;���� ==> package com.samsungosp.auth.oauth2.vo;�� ���� 
-------------------------------------------------------------------------------------------------------- 

/auth-lib/pom.xml ���Ͽ���(sf-client.jar �߰� ==> ���� ���� �� ��) 
<!--// sf-client.jar ȣ��(/auth2) //-->    
<dependency> 
  <groupId>com.samsungosp.profile</groupId> 
  <artifactId>sf-client</artifactId> 
  <version>1.2</version> 
</dependency> 
==============================================================================================================

- IOSP���� SFClient ������� �ʵ��� ���� 
1. ������� SFClient ��� @@@@@@@@@ 
1. ��� validate 
UserTncResultVO userTncResultVO = client.validateTNC(userTncRequestVO); ==> 
userTNCResultVO2 = authenticateValidatorBiz.validateTNC(partyIdentificationBizVO);  // SF 1.0 ���� ȣ�� 
2. Email ID�� ����� ���� 
userAuthResultVO = client.authenticateUserByEmailId(userAuthRequestVO); ==> 
userAuthResultVO = authenticateValidatorBiz.authenticateUser(partyIdentificationBizVO);  // SF 1.0 ���� ȣ�� 
3. Email ID�� ����� Accoun validate ==> IDM���� ����(��� ����) 
userAccountAuthResultVO = client.validateUserAccountByEmailId(userAccountAuthRequestVO.getLoginID(), userAccountAuthRequestVO); 
==============================================================================================================

������������������� 2012.06.23(��) �۾� ����������������
---> 07:00 ~ 18:00 

�������౸
05:00 ��� 
05:00 EURO 2012([8��] ���� 2 vs  0 �׸���(03:45)) 
06:00 ����� 
06:10 �ź�õ ������(�������� ��(����ȣ: 26�� 5439)) 
06:30 �ű��ʵ��б� 
06:40 �����౸(3:3 ��): 20�� ����� ��  
07:30 ���� 
08:20 ����(ȭ���Ĵ�: �������� ��) 
10:00 ���� 
11:00 �Ͱ�  
12:30 �� ���  
12:40 �ٺ�ġ ġ�� �湮(�Ű�ġ��5 ==> ���� �Ϸ�) 
13:00 ���� 
13:10 461�� ���� 
13:50 ��(��): �μ�(����, ��Ų��) 
15:00 ���� 
15:10 �߽�(���) 
16:20 3100�� ��������(�켺����Ʈ) 
17:20 �Ȼ� ��ϼ����� 
17:30 ���� �Ȼ� �繫��(�Ȼ�� ��ϱ� ������ 874/11 ������ 501ȣ ����Ŀ��) => �ֽ���� 
19:00 �Ȼ� ����(������ ���� ���� ����) ==> ��Ƽ��(��Ʈ�� �뿪)�� ���(������ �ʿ� ��Ʈ�� ����� ���� ����) 
21:00 �Ĵ�(����): �ֽ������ �� 
22:40 ����(������ �� ��� ��) 
23:20 �Ȼ� ��ϼ���(����� ���� Ž) 
24:00 ��翪 
24:05 �����뿪�� ��ö Ž 
24:10 ������ ==> 2012.06.24(��) 
24:20 �Ͱ� 
01:00 ��ħ 
03:00 �ٸ��� �㰡 ���� �� �� 
05:00 ��� 
05:00 EURO 2012([8��] ������ 2 vs  0 ������(03:45)) 
06:00 ��ħ 
10:00 ��� 
11:00 ������ȥ ���� �غ񼭷� �ۼ� �� ��Ȯ�� 
12:20 �߽� 
20:20 ���� 
01:20 ��ħ 
==============================================================================================================

������������������� 2012.06.25(��) �۾� ����������������
---> 06:25 ~ 19:45 --> EURO 2012([8��] �ױ۷��� 0 <PK 2 vs 4> 0  ��Ż����(03:45)), ä��ǰ����ܼ� ��û 

- ����OSP(/oauth2 Prj
- target_package ����(/AccessTokenVO.java) 
package com.samsungosp.auth.oauth2.inner.vo;���� ==> package com.samsungosp.auth.oauth2.vo;�� ���� 
-------------------------------------------------------------------------------------------------------- 

- auth-client, sf-client ���� 
<!--// auth-client.jar ȣ��(/auth2): ��� ����(OSP���� ���� auth�� client-stub ȣ������ ����) //-->    
<dependency> 
	<groupId>com.samsungosp</groupId> 
	<artifactId>auth-client</artifactId> 
	<version>1.3.1</version> 
</dependency> 

/auth-lib/pom.xml ���Ͽ���(sf-client.jar ���� �� ��) ==> SFClientImpl.java ���� ���� ó�� 
<!--// sf-client.jar ȣ��(/auth2) //-->    
<dependency> 
	  <groupId>com.samsungosp.profile</groupId> 
	  <artifactId>sf-client</artifactId> 
	  <version>1.2</version> 
</dependency>   
==============================================================================================================

- stage1���� ���� �߻� 
1. ����: java.lang.NoClassDefFoundError: osp/sf/sso/AuthenticateServiceResourceClient 
2. ����: /auth-lib/pom.xml ������ /auth-lib/pom_stg.xml�� �Ȱ��� ����� ��  
==============================================================================================================

- ���� ����(�� ����) 
19:45 ��� 
20:05 ���� ���� 
20:10 ¯��(Ƚ��): ���� �� 
23:00 ������: ���� �� 
24:00 �����: ���� �� ==> 2012.06.26(ȭ) 
01:30 ���� 
02:00 �Ͱ� 
02:10 ��ħ 
==============================================================================================================

- ���� �غ񼭷� @@@@ 
1. ȥ�ΰ�������(���繫�� �߱�) ==> ó�� �Ϸ� 
2. ������������(���繫�� �߱�) ==> ó�� �Ϸ� 
3. �⺻����(���繫�� �߱�) ==> ó�� �Ϸ� 
4. �����(���繫��: �����̸��� ����) ==> ó�� �Ϸ� 
5. �ѱ۵(���繫�� �߱�) ==> ó�� �Ϸ� 
6. ����5�� ==> ó�� �Ϸ� 
7. ���Ǻ��� ==> ó�� �Ϸ� 
8. ���˰������(������ �����(�ο��� �ƴ�) �߱�) ==> ó�� �Ϸ� 
9. �ſ�������ȸ��(�������࿬��ȸ(www.credit4u.or.kr)���� �߱�) ==> tamariio/s@jtm0339!# ==> ó�� �Ϸ� 
10. ����������(���������� ��õ¡��������(���� ȸ��) �޿� ����纻(SC����) ==> ó�� �Ϸ� 
 1) (��)���̿�����: ����� ���ʱ� ���絿 67���� ���κ��� 4��(T: 571-0) 
 2) �޿�������(1��ġ, ������ ����) --> ��õ¡�������� ��ü 
11. �������(���ε, ������༭(Ȯ������ ���� ��)) ==> ó�� �Ϸ� 
12. ä��ǰ����ܼ�(������� 2��: ������ȯ, ������, ���� ���� �߰��� ��)  
==> �����޿��� ������ �ٿ� �ִ� ä��ǰ����ܼ��� �߱� ���� ��(�ٽ� �� ��) 
13. ������ȥ �ȳ� ���α׷� ��û(���Ա�������): �̼��� ����(������ ����) ==> ó�� �Ϸ� 
 1) ������ȥ �ȳ� ���α׷�(http://www.hikorea.go.kr/pt/index.htm) ==> ���ڹο� > ���ڹο���û�ϱ�  
 > ��û������ �ο� �繫��� list: �ο��繫��(������ȥ �ȳ� ���α׷�)(Ŭ��) > ��û�� �ۼ� 
 2)  ���� ����(�������Ա��繫��(����Ư���� ��õ�� ������ 330-11ȣ �ѱ��̹���� ��ȸ������)) 
   ��. ���� ��(14:00~17:00), T) 2650-0 ==> 7�� 11��(��) 14�� ���� ��û�� 
   ��. ����ö 2ȣ�� ��õ��û�� 1�� �ⱸ-> ���� �ǳ��� 
   http://cafe.naver.com/ArticleRead.nhn?clubid=16608696&page=1&inCafeSearch=true&searchBy=0&query=%B1%DE%BF%A 
-------------------------------------------------------------------------------------------------------- 

- ������ȥ ��� @@@@ ==> �� 1,100���� 
1. ���� 100���� �۱�(2012.06.25(��))==> 500���� �۱�(2012.06.25(��)) 
1) ��������(644201-01-0, ������: ��ݼ�(����Ŀ�ð�ȥ) 
==============================================================================================================

������������������� 2012.06.26(ȭ) �۾� ����������������
---> 06:55 ~ 18:40 --> ���� ���� �غ�(����1�� �ֹμ��� �湮, ����û) 

- ����OSP(/oauth2 Prj
- target_package ����(/AccessTokenVO.java) 
1. package com.samsungosp.auth.oauth2.inner.vo;���� ==> package com.samsungosp.auth.oauth2.vo;�� ����  
2. isValid() API Doc ���� 
http://stgdoc.iosp.com/docs/apispec/auth/com_samsungosp_auth_oauth2_service_AuthServiceResourceSC.xml#POSTuser/isvalid 

<?xml version="1.0" standalone="yes"?> 
<xs:schema version="1.0" xmlns:xs="http://www.w3.org/2001/XMLSchema"> 
  <xs:element name="ResultIsValidate" type="oauth2IsVaildUserVO"/> 
  <xs:complexType name="oauth2IsVaildUserVO">     
  <xs:sequence> 
      <xs:element name="ResponseValue" type="xs:boolean"/> 
      <xs:element name="UserID" type="xs:string" minOccurs="0"/> 
      <xs:element name="ErrorCode" type="xs:string" minOccurs="0"/> 
      <xs:element name="ErrorDesc" type="xs:string" minOccurs="0"/> 
    </xs:sequence> 
  </xs:complexType> 
</xs:schema> 
==============================================================================================================
- local variable ���� ó�� 
1. ���� ����: The value of the local variable userTncResultVO is not used 
2. ó��: UserTncResultVO userTNCResultVO = null; ==> UserTncResultVO userTNCResultVO2 = null; ���� ���� 

- Null pointer access ���� ó�� 
1. ���� ����: Null pointer access: The variable partyIdentificationBizVO can only be null at this location 
2. ó��: PartyIdentificationBizVO partyIdentificationBizVO = null; ==> 
PartyIdentificationBizVO partyIdentificationBizVO = new PartyIdentificationBizVO();���� ���� 
==============================================================================================================

������������������� 2012.06.27(��) �۾� ����������������
---> 06:40 ~ 19:00 --> �̼��� ���� auth1.0 �μ��ΰ� ���� 

- ����OSP(/oauth2 Prj
- slimȭ �۾� 
1. //OSP/IOSP/Co-work/1. IOSP ���Ĺ���/1. Archtect/2.����/AA/����OSP_WAR_Slimȭ_���̵�(v0.1)_AA.pptx 
2. Maven compile Deploy �� �����Ǵ� WAR ������ ũ�⸦ ����ȭ(Slim)�Ͽ� deploy�� ȿ��ȭ�Ѵ�. 
 1) compile: ������ �� �� �ʿ�. �׽�Ʈ �� ��Ÿ�ӿ��� Ŭ���� �н��� ���� 
 2) provided: compile �� �ſ� ����. ������ �ÿ� �ʿ�������, ���� ��Ÿ�� ������ �����̳� ���� �Ϳ���  
 �����Ǵ� ���. servlet, jsp api ���� �̿� �ش�. ���� �� ���ܵ�. ���� ����� �� ��쿡�� ��� ����.  
-------------------------------------------------------------------------------------------------------- 

- ���� ���� 
[ERROR] \OSP2.5\workspace\IOSP\Workspace\Account\Auth\trunk\auth-svc\src\main\java\com 
\samsungosp\auth\oauth2\service\AuthServiceResourceImpl.java:[89,2] cannot find symbol 
[ERROR] symbol  : class JSONObject 

/auth-lib/pom.xml ���Ͽ��� 
<dependency> 
<groupId>net.sf.json-lib</groupId> 
<artifactId>json-lib</artifactId> 
<version>2.4</version> 
<classifier>jdk15</classifier> 
<type>jar</type> 
<!-- <scope>provided</scope> -->  //===> ����Ʈ�� complile �� 
</dependency> 

<dependency> 
<groupId>javax.xml.bind</groupId> 
<artifactId>jaxb-api</artifactId> 
<version>2.2.2</version> 
<type>jar</type> 
<scope>provided</scope> <!--// slimȭ //--> 
</dependency>  
==============================================================================================================

������������������� 2012.06.28(��) �۾� ����������������
---> 06:55 ~ 18:00 --> EURO 2012([4��] ������ 0 <PK 4 vs 3> 0 ��������(03:45)), ���� ���� �غ�2, ���� ȸ�� 

- ����OSP(/oauth2 Prj
- ���� UesrID �׽�Ʈ ��� 
1. stub-iosp-client�� createUser API ȣ���Ͽ� SF Login ID(username) ���� 
/stub-iosp-client-sample/src/com/samsungosp/client/profile/ProfilePrf2Client.java ���Ͽ��� @@@@  
public class ProfilePrf2Client {   
private static final String PRD_STG1_SERVER = "http://eu.auth.samsungosp.net/auth";   // STG1 ���� URL(Auth IOSP URL) 
private static UserServiceResourceClient profileClient  = new UserServiceResourceClient(PRD_STG1_SERVER);    //���� ���� 

public static void main(String[] args) { 
System.setProperty("osp.consumer.type", "internal");//�̰� ������ This service requires a login. �����߻� 
try 
{      
//1.createUser ó�� createUser�۾��� ���� response���� userId�� loginId�� ���� ������ ���� �������Ͻð� 2�� �۾��� �Ͻø� �˴ϴ�. 
//�� API�� �Ｚ���� �����ϴ� ���񽺸� �̿��ϱ� ���Ͽ� Samsung Account�� �����Ѵ�.  
inicreateUser();  
} 
} 

/****************************************************************** 
* Profile2.0 createUser Trasaction 
*****************************************************************/ 
public static void inicreateUser() throws Exception {  
String l_osp_appId  = "t70f55z2q1";   //appId  ===> TEST 
String l_osp_userId = "z8oa0aj1dz";        
setProfileHeader(profileClient, l_osp_userId,l_osp_appId);  

UserCreateVO requestVo = new UserCreateVO();  
UserBaseVO  userBaseVO = new UserBaseVO();          

// ���� �ڵ� ���� @@@@@@ 
userBaseVO.setUserName("Samsung Useral"); 
userBaseVO.setUserTypeCode("1"); 
userBaseVO.setUserStatusCode("1"); 
userBaseVO.setUserDisplayName("Sam"); 
userBaseVO.setUserLocalTimezoneCode("TZ0069"); 
userBaseVO.setLanguageCode("ENG"); 
userBaseVO.setCountryCode("USA"); //�����ڵ� 

 userBaseVO.setUserBaseIndividualVO(userBaseIndividualVO);     

UserIdentificationVO userIdentificationVO = new UserIdentificationVO(); 
userIdentificationVO.setLoginID(randomLoginId());  //randomLoginId(userID) ===> ���� ���� 
userIdentificationVO.setLoginIDTypeCode("003"); 
userIdentificationVO.setUserPassword("osp123"); 

requestVo.setUserBaseVO(userBaseVO);  // User Base VO ó�� 
requestVo.setUserIdentificationVO(userIdentificationVO);    // UserIdentity ����(���񽺺� ȸ������ ����) VO ó�� 

StringVO ret = profileClient.createUser(requestVo);  

createUserId = ret.getValue();  
new XStream().toXML(ret, System.out); 
System.out.println("\n==========response End======================================"); 

//�������� 
setTempUserId(ret.getValue()); 
} 
} 
-------------------------------------------------------------------------------------------------------- 

���: 
[/stub-iosp-client-sample] [main()] ==> [test] [profileClient]com.samsungosp.profile.user.service.UserServiceResourceClient@e5b723 
===========// 1. inicreateUser Flow  // @@@@@@@@@ //==============>  
[inicreateUser()] ===========// 1. createUser Flow  // @@@@@@@@@ //==============>  
[inicreateUser()] [ret]null 
[inicreateUser()] [createUserId]null[loginID(SF Login ID)]@mail.com 
==============================================================================================================
   
2. createAccessToken API ȣ��(��������� ���� username=*@*.*�� ����) 
http://eu.auth.samsungosp.com/auth/oauth2/authenticate 
grant_type=password&client_id=j5p7ll8g33&client_secret=5763D0052DC1462E13751F753384E9A9&username=*@*.*&password=osp123 
���:  
{ 
"userauth_token": "wJ4tNUFTBa", 
"userId": "01gg5uki5o" 
} 

3. http://localhost:9080/auth/oauth2/authenticate�� ����(GC)�� LDAP���� �����Ƿ� Stg1 ���� URL�� 
(http://eu.auth.samsungosp.com/auth/oauth2/authenticate)���� �׽�Ʈ�� �� 
==============================================================================================================

- facebook 
https://www.facebook.com ==> *@*.*/sspe**8*1* 
- twitter 
https://twitter.com ==> *@*.*/sspe**8*1* 
==============================================================================================================

- ������� 
11:30 �߽� 
11:50 SC����(�޿�������(1��ġ, ������ ����)) 
12:20 �޵�ĵ �ǿ�(ä��ǰ����ܼ� �߱�) ==> �������� �ٽ� ���� �� 
12:25 ����21��(����������Ʈ �Ĺ����� ==> ���ʰ�����) 
12:45 ���˰������ �߱�(���ʰ����� �����) 
13:00 �ͻ� 
18:10 ��� 
18:50 ����Ŀ�� ����繫��(���� ���̿� 1109ȣ(4ȣ�� �ſ�꿪 5�� �ⱸ)) 
19:10 ��Ʈ�� ��༭ �ۼ�(�� 1,110����)  
        ==> ���� ���(�ź� ���� 100�޷�(11����), 2�� ����� 100�޷�, �������� �Ұ� 600�޷�) --> �� �� 5�ʸ��� 
2�� �ⱹ; 4������, ��Ʈ�� �Ϸպ��� 
19:40 ����(���� ������� ��): ����, ȣ�� ==> ��Ʈ�� ��ȥ���� ���� ���� ����(�̹�, ����, û����, Ƽ): ����, ���� 
21:50 ����(���� ���̿� 1109ȣ) 
22:50 ���� 
23:50 �Ͱ� 
24:00 ����(�󱼿� ����) 
24:30 ��ħ 
-------------------------------------------------------------------------------------------------------- 

- ���� Ŀ�� ����ó 
1. ��õ�繫�� ��ǥ ��ݼ�(�������̵�, 010-8959-0, @naver.com) 
==> ��õ�� ���� ������ 293-10(1ȣ�� ���Ͽ�)  
2. �Ȼ�繫�� ��ǥ ������ �����(��Ű��õ, 010-6321-0,  @naver.com) 
==> �Ȼ�� ��ϱ� ������ 874/11 ������ 501ȣ(4ȣ�� ��ϼ��� 2�� �ⱸ)  
3. ����繫�� ��ǥ ������(�Խ�Ʈ��õ, 016-309-0, @naver.com) 
==> ����� ��걸 �Ѱ���2�� 2-37 ���� ���̿� 1109ȣ(4ȣ�� �ſ�꿪 5�� �ⱸ) 
==============================================================================================================

������������������� 2012.06.29(��) �۾� ����������������
---> 06:30 ~ 16:00 --> EURO 2012([4��] ���� 1 vs 2 ��Ż����(03:45)), �ⱹ �غ�(����) 

- IOSP(/oauth2) Prj
- oauth2 �ҽ� �м� 
1. 2�� Merge �۾���� �ҽ� ����ȭ 
==============================================================================================================

- ������� �ⱹ �غ� 
1. 500���� �۱� ==> ��������(644201-01-0, ������: ��ݼ�(����Ŀ�ð�ȥ): �۱� �Ϸ� 
2. 200���� ȯ��(SC����): �Ϸ� 
 1) �ܱ���ȭ: 1,705, ��ȭ: 1,172.66(US) ==> ��ȭ�ݾ�: 1,999,385�� 
 2) 200���� ==> 100�޷�: 17��, 5��: 1�� + 710�� 
3. ����� �ð� 
 1) �ⱹ: ���� 06.30(��) 10:03 ==> �ϳ��� 13:00[��Ʈ�� �װ�] --> 8�ÿ� ��õ�������� 3�� C����Ʈ���� ���� ���� 
 2) �Ա�: �ϳ��� 07.04(��) 22:00 ==> ���� 07.05(��) 05:50[��Ʈ�� �װ�](�� 5�ð�) 
4. ���� �غ� 
 1) û����, Ƽ, ����, �ȭ , ���鵵��, �޴��� �嵥��(������), ���, ������, ī�޶�, ���� 
 2) �纹(��Ÿ��), Y����, ���� 
5. ��Ÿ 
 1) ȸ�� ���� �� ���� ���� ����Կ��� ���Ϸ� ������ ��(20�ñ���): �Ϸ� 
 2) ���� ����: ��Ʈ�� �Ϸպ���(�ϳ��̿��� 3�ð� �ҿ�) ==> �ε����̳�(��ȭ) 
-------------------------------------------------------------------------------------------------------- 

- ���׹���(http://www.airport.kr/airport/traffic/bus/busList.iia?flag=K) 
1. ����� - ��õ����(6003)(������ �Ϲ�, 9,000��) ==> 1�� 6A,12B(ù��, 04:40, ���� 20:00, �������� 20��): 1�ð� 30�� �ҿ� 
2. ����� - ��õ����(6017)(������ ���, 15,000��) ==> 1�� 6B/13A(ù��, 05:00, ���� 20:40, �������� 50��) 
3. ��õ���� - �������(6020)(������ ���, 15,000��) ==> 1�� 5A,11B(ù��, 05:00, ���� 20:40, �������� 10~150��)  
==============================================================================================================

- SC���� �޿� ���� ���� 
1. ������ ����: 220-20-030608 
2. (��)���̿����� ������ �븮(010-7303-000, @il4u.co.kr)���� ���Ϸ� �޿� ���� ���� ��û 

- SC���� �ſ�ī�� ��û(���� �ֿ� ��ȭ ���� �������� �����Ͽ� ã�ƿ� ��) 
1. Ÿ�� �ſ�ī��(��ȸ��: 2õ��, S-Oil ���ʹ� 60��, ������ 10%����, �̵���ſ�� 5% ����) 
==============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������