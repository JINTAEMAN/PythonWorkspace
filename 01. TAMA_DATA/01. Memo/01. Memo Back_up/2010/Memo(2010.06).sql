

�����������������������������������������������������������
+---------------------------------------------// Memo(2010.06) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2010.06.01(ȭ) �۾� �����������������
---> 11:30 ~ 01:00  --> �������������ý��� 2�ܰ� ���� Proj ù ���(������ 3-1�� �ⱸ ���� ���� 5��) 

- �������� Prj
- Proj ������ 
(��) ��ħ ����Ʈ ===> ��ö ����: HP) 010-2677-2211(�߽�(������ 7õ��) ��� ����) 
(��) LG CNS ����1����� ===> ���ְ� ����(PM): �߽� ����, �ۿ�ȯ ����(PL): HP) 010-2210-0780(*@*.*) 
6�� 12��(��) ����  ==> �̱�� ����� 15�� 250�� ���� �� 
==============================================================================================================

- IP �ּ�(�������� �ý��� Proj) 
IP �ּ�: 192.168.1.5 
GW: 192.168.1.206 
SM: 255.255.255.0 
DNS: 168.126.63.1 
- ���� ���� 
URL: \\192.168.1.240\���ϼ���, ���¸�/0898 
- ������ ����(������ ���Ͻ� 286) 
IP �ּ�: 192.168.1.250 
==============================================================================================================

- ���� ���α׷� ��ġ 
1. MS Office 2007 
2. JDK 1.5.0(jdk-1_5_0_06-windows-i586-p-iftw.exe) ��ġ 

3.1  ������ ��ġ 
1) \\192.168.1.240\���ϼ���\02.��������2�ܰ�\99.��������������\00.����ȯ��װ��̵�\3.����ȯ����� 
\ISARANG_D.zip�� ������ ���� PC�� D:\ ����̺� �ٷ� �Ʒ��� ISARANG������ Ǯ����´�. D:\IRARANG ����  
�Ʒ��� app, tool ������ ���̸� �����̴�.  

2) ���������� �Ϸ�Ǿ����� D:\ISARANG ������ ����Ŭ���� ���ۡ� �ٷΰ��⸦ �̿��Ͽ� ��Ŭ������ �����Ѵ�.  
  
3.2  ������ ��ȣȭ ��� ��ġ   

4. CVS ���� 
CVS �۽���Ƽ�꿡�� CVS Repository Location������ �߰��Ѵ�.  
1. Menu -> Window -> Open Perspective -> CVS Repositary (������ Other)Ŭ���Ѵ�. 
2. CVS Repositary View���� Mouse ������ ��ư�� Ŭ���Ѵ�.  
3. PopUp -> New -> CVS Repositary Location�� �Ʒ��� ������ �����ϰ� Authentication���� �ڽ��� User ID, Password�� ��� �Ѵ�. 
211.59.10.245 --> tmjin/tmjin 

5. Code Templates ���� 

6. Jeus ���� ���� �߰� 
\\192.168.1.240\���ϼ���\02.��������2�ܰ�\99.��������������\00.����ȯ��װ��̵�\1.��������\jeus6.0  
���丮 �ȿ� �ִ� �Ʒ� ���丮/������ ������ ���� ��ġ�� �����Ѵ�. 
config/isarang/isarang_servlet_cpis 
config/isarang/isarang_servlet_ccis 
config/isarang/JEUSMain.xml (��� �� ����) 
webserver/config/http.m (��� �� ����) 
cpis, ccis �����̳� ������ �߰��� �������Ϸ� 1�ܰ� ���� �ý��� �����̳� ������ ������ ä �����Ѵ�. 

7. ���� ���� 
  
9. ���� �׽�Ʈ 
9.1  hosts ���� ��� 
9.2  ������ �������� ������ 
 - D:\ISARANG\tool\jeus6.0\bin> wscfl -i http.m 
        Current configuration: 
                Number of client handler(HTH) = 1 
                Supported maximum user per node = 825 
                Supported maximum user per handler = 825 
CFL is done successfully for node(localwas(tama)) 
9.3  �����⵿ 
- ��ũ��Ʈ�� �̿��Ͽ� WEBTOB �� JUES�� �⵿�� ���Ḧ �����Ѵ�.  
9.4  ���� �׽�Ʈ 
������������ http://lcpis.childcare.go.kr ���� ������ �� ���ø����̼��� ���������� �۵��ϴ��� �׽�Ʈ�� ����.  
==============================================================================================================

- ����ȯ�汸�� 
1) eclipse3.4 ��ġ 
http://download.eclipse.org/webtools/downloads/ 
- C:\eclipse�� ���� 
- eclipse.ini  ==> C:/Program Files/Java/jdk1.5.0_19/bin/javaw.exe 

2) jsdk1.5.15 ��ġ 
http://java.sun.com/j2se/1.5.0/download.jsp 
- ������/�ý���/ȯ�溯�� ==> CATALINA_HOME : C:\Program Files\Apache Software Foundation\Tomcat 5.5, 
/�ý��� ����(S) ==> CLASS_PATH: C:\Program Files\Java\jdk1.5.0_19\lib 

3) Tomcat5.5 ��ġ 
http://tomcat.apache.org/tomcat-5.5-doc/index.html 
- apache-tomcat-5.5.28������ apache-tomcat-5.5.28.exe ���� Ŭ�� 
- apache-tomcat-5.5.28-admin/conf, server������ �����Ͽ� C:\Program Files\Apache Software Foundation 
\Tomcat 5.5 ������ �پ� �ֱ� 
- apache ��ġ �� ����� �� �� 

4) Oracle 10g client ��ġ(/10201_client_win32/setup.exe) 
http://www.oracle.com 
- C:\oracle ������ ��ġ(��Ÿ��(235M) ��ġ) 
- C:\oracle\product\10.2.0\client_2\NETWORK\ADMIN\tnsnames.ora ���� ���� 

5) Toad for Oracle 10 ��ġ(Toad for Oracle 10.0 Commercial.exe, ToadforOracle10PatchFull.exe) 
- .NET Framework ��ġ(http://msdn.microsoft.com/en-us/netframework/) 

6) workspace ���� ���� 
workspace.zip ������ Ǯ�� d:/samsung dotcom/�� �ٿ� �ֱ��� �� 

7) CVS ����  
==============================================================================================================

������������������� 2010.06.02(��) �۾� �������������������
---> 11:30 ~ 01:00  --> �� 5ȸ �����������漱��(������ ü�������� �����Ŵ� �ĺ��� ��ǥ ��), �߱�(22�� ���) 

- �������� Prj
- vm �߰� eclipse.ini ���Ͽ��� 
-vm 
D:\ISARANG\tool\jdk1.6.0_12\bin\javaw.exe  
1. Portal(apis) URL 
1) Portal Test ����: http://dcpis.childcare.go.kr, isarang1/isarang1 
2) Portal ���� ����: http://lcpis.childcare.go.kr, isarang1/isarang1  
2. �������� 
1) �߾Ӻ�������(ccis) Test ����: http://dcentral.childcare.go.kr, isarang1/isarang1 
2) �߾Ӻ������� ���� ����: http://lcentral.childcare.go.krr, isarang1/isarang1  
3) �α���: http://lcentral.childcare.go.kr/ccis/loginF.jsp 
4) �޿����ǰ��: http://lcentral.childcare.go.kr/ccis/nursery/EmpSalarySimlatnSl.jsp 
3. ��Ÿ 
CMS(acis)  ������(Test ����): http://dcms.childcare.go.kr, cmsAdmin/admin7645 
==============================================================================================================

- �������� Proj ��� ���� 
1. �޿����ǰ�� 
4�� ��� ���� �ڵ� DB ����Ÿȭ(���ο���, �ǰ�����, ��뺸��, ���纸��) 
2. �˾� ���� 
http://dseoul.childcare.go.kr, seoul, seoul 
http://dcms.childcare.go.kr/index.html 
http://dcms.childcare.go.kr/main.jsp 
3. �Խ��� ���� �ϰ� ���� 
Ȩ���������� -> �ý��۰��� -> ���α׷� ���ذ������� ��� ���̵� ����(������)�� hcare, job, counsel �������� 
���� ������ ��(/portal/webapps/ccis/community/board/BoardSl.jsp ����) 
4. �̷¼� ��Ͻ� �ڰݰ��� �繫�� ���� 
==============================================================================================================

- OP(Online Preview)  �м� �� SW TEST 
1. jsp �����(JSTL����) 
[/frontMain.jsp] ======>[maintopprdname]${maintopprdname}<br>  
2. java ����� 
System.out.println("[/OpMainAction.java] ======> [execute()]:[opCountWSOP]"+ opCountWSOP);  
==============================================================================================================

- KCISA ���� �ʱ� ���ͳ� ���� ���� 
�ϳ����� 404-097848-04004(������: �ѱ�������ȸ�����): �ʱ������� 10���� 
==============================================================================================================

������������������� 2010.06.03(��) �۾� �������������������
---> 08:00 ~ 01:00  --> �߱�(22�� ���), ����(û��: �������� ����) 

- �������� Prj
- �޿����ǰ�� 
int C = Round(B * 0.1 * monthpay_rate, 10);   //����ڳ��ξ�(���ο���) 
���ο��� ����(string_monthpay_rate): 4.5%, �ǰ����� ����: 4.5%, �ֹμ� ����: 4.5%, ��뺸�� ����: 4.5%  
var string_monthpay_rate = lists.getElementsByTagName('monthpay_rate').item(0).firstChild.nodeValue;  //���ο��� ���� 
var string_healthpayA_rate = lists.getElementsByTagName('healthpayA_rate').item(0).firstChild.nodeValue;  //�ǰ����� ����A 
var string_healthpayB_rate = lists.getElementsByTagName('healthpayB_rate').item(0).firstChild.nodeValue;  //�ǰ����� ����B 
var string_ftotaly_rate = lists.getElementsByTagName('ftotaly_rate').item(0).firstChild.nodeValue;  //�ֹμ� ���� 
var string_koyoung_rate = lists.getElementsByTagName('koyoung_rate').item(0).firstChild.nodeValue;  //��뺸�� ����  
  
-- �����ڵ�����ȸ ==> �����ڵ���� 
acis.sys.CmmnCode.selectCmmnCodeSList=/*+ acis.sys.CmmnCode.selectCmmnCodeSList */ 
SELECT CODEGB   --�ڵ屸�� 
       ,COCODE AS PREV_COCODE --���������ڵ� 
       ,COCODE  --�����ڵ� 
       ,UPRCODE --�����ڵ� 
       ,USGB    --����ڱ��� 
       ,SYSCODE --�ý����ڵ� 
       ,CDNAME  --�ڵ�� 
       ,DSPNAME --�ڵ�ǥ�ø�  ====> ���� 
       ,CDLEVEL --�ڵ巹�� 
       ,CDUSED  --�ڵ��뿩�� 
       ,CDORDER --���� 
FROM   TB_CP_SYCMMNCODE 
WHERE  CDLEVEL > 0 
AND    CODEGB  = 'CIZ003' 
ORDER BY CODEGB ASC, COCODE ASC 
;  
--------------------------------------------------------------------------------------------------------- 
- ����ȯ 
Long p_count = Long.parseLong(str_count); // �Ǽ��� 
int p_count =  Integer.parseInt(str_count); // ��û���� ���� �� ��    
lng_obj = Double.parseLong(s); 

- ���� ���� �׽�Ʈ ���� �ݿ� 
/portal/webapps/ccis/nursery/EmpSalarySimlatnSl.jsp 
/portal/src/cis/cpis/nursery/EmpSalarySimlatnMgr.java 
==============================================================================================================

2. �˾� ���� 
http://dseoul.childcare.go.kr, seoul, seoul 
http://dcms.childcare.go.kr/index.html 
http://dcms.childcare.go.kr/main.jsp 
http://lacis.childcare.go.kr/acis/popup/PopUpView.jsp?flag=Sl&POPUPSEQ=12&GB=PREVIEW 

 --- Į�� �߰�  --------- 
ALTER TABLE TB_CP_PUPOPUP ADD (  
BCRNTMPLATCODE    VARCHAR2(6)  --��� ���ø�  ===> PORTALGB(���б���) 
);  
  
 POPUPBGTEMPLATEE, 
 Query: /*cpis.popup.PopUp.selectPopUp*/ 

- radio �ڽ� ���� 
<input type="radio" id="POPUP_TEMPLATE" name="POPUP_BGTEMPLATE" value="A" <c:if test="${popup.POPUP_BGTEMPLATE eq 'A'}">checked </c:if>>AŸ�� 
<input type="radio" id="POPUP_TEMPLATE" name="POPUP_BGTEMPLATE" value="B" <c:if test="${popup.POPUP_BGTEMPLATE eq 'B'}">checked </c:if>>BŸ�� 
<input type="radio" id="POPUP_TEMPLATE" name="POPUP_BGTEMPLATE" value="C" <c:if test="${popup.POPUP_BGTEMPLATE eq 'C'}">checked </c:if>>CŸ�� 

- ��� �̹���  
<body style="background-image:url('<%=imagePath%>/common/center_pop_02.gif');"> 
==============================================================================================================

������������������� 2010.06.04(��) �۾� �������������������
---> 07:40 ~ 01:00  --> �߱�(22�� ���) 

- �������� Prj
2. �˾� ���� 
http://dseoul.childcare.go.kr, seoul, seoul 
http://dcms.childcare.go.kr/index.html 
http://dcms.childcare.go.kr/main.jsp 
http://lacis.childcare.go.kr/acis/popup/PopUpView.jsp?flag=Sl&POPUPSEQ=12&GB=PREVIEW 
��� �̹��� ������: 350*400 --> 350*380 
1) 1�� �Ϸ� �� �׽�Ʈ(������) �������� 
 - ��Ͻ� ��� ���ø�(�̹��� ���̱�), ������ ���� �Ұ�, �˾����� ���� 
 - Scroll ���� 
 - .jpg�� ���� 
==============================================================================================================

3. ���������������� ã��(http://dcentral.childcare.go.kr/ccis/mainCentral.jsp) 
- ���������������� -> ����������������ã��(���и��ο��� ��Ī ����) 
���͹ٷΰ��� �̹��� �����ϰ�, ����Ʈ�ڽ� �߾��� ��ü�� �ٲ�. ����Ʈ�ڽ� ���� ""��ȸ""��ư 

- ���������������� ã�� select �ڽ� 
<select onchange="if(!cfIsNull(this.value)) window.open(this.value);" style="width:80px;"> 
<option value="">���� ����</option> 
<c:forEach var="sys" items="${SYSCENTER}"> 
  <c:if test="${sys.SYSCODE eq 'C0000'}"><option value="<%=contextPath%>/sitelink/SiteLinkCenterSlPL.jsp?flag=SlPL
  &schRELATESITEGBCODE=98">��ü</option></c:if> 
  <c:if test="${sys.SYSCODE ne 'C0000'}"><option value="<%=contextPath%>/sitelink/SiteLinkCenterSlPL.jsp?flag=SlPL
  &schRELATESITEGBCODE=98&SYSCODE=${sys.SYSCODE}">${sys.AREADSPNM}</option></c:if> 
</c:forEach> 
</select>  
==============================================================================================================

- �������� ���߼��� ����(����) 
1. �ڳ� ���� : 211.59.10.246 
2. dvpadm/dxltb123 �α��� 
3. cdbp ��ɾ� ��� -> ���� ��ġ�� �̵� 
[devwas:/src/dvpadm]cdbp  
[devwas:/src/portal/cvssrc/build]ls 
build.properties*    build.xml*           core                 imgdocs/             webapps/ 
build.sh*            compile.sh*          hs_err_pid3659.log   tarfiles/            webdocs/  
4. build.sh ����  
[devwas:/src/portal/cvssrc/build] build.sh 

- �̹��� ���(FTP ����) --> FileZilla_3.3.2.1_win32-setup.exe ��ġ(FTP ���α׷�) 
ȣ��Ʈ IP: 211.59.10.246, dvpadm/dxltb123 
/nfs1/src_web_i/dvpadm/imgdocs/ 
----------------------------------------------------------------------------------- 
- �α�(log) Ȯ�� 
- IP: 211.59.10.246 
- ����: loguser/loguser 
- ���� ��ü �α� 
/applog/jeus/devwas/JeusServer_����.log 
- �����̳ʺ� �α� 
/aplog/devwas_�����̳ʸ� 
- �������α� 
�α���: /applog/log4j]/login 
����: /applog/log4j]/payment 
����: /applog/log4j]/common 
����/�����: /applog/log4j]/common 
[devwas:/nfs2/applog_was/jeus/devwas]ls  
[devwas:/nfs2/applog_was/jeus/devwas]tail -f JeusServer_20100604.log 
==============================================================================================================

- SecureCRT ��ġ�� 
1. scrt513.exe ������ �����ؼ� ��ġ�Ѵ� 
2. scrt513-tbe.exe ������ �����Ѵ� 
3. Patch ��ư�� Ŭ���Ѵ� 
4. SecureCRT.exe ������ ã�ڳĴ� â�� ������ "��"�� ������ 
5. SecureCRT.exe ���� ��θ� ã���ش� ( �⺻ ��� : C:\Program Files\SecureCRT ) 
6. SecureCRT.exe ������ �����ϰ� Ȯ���� �����ش�. 
7. �� 
- Automate Logon ����ϱ� 
Session Options --> Connection --> Login Script 
Expect: login Send: dvpadm 
Expect: Password Send: dxltb123    
==============================================================================================================

- �������� --> ���û���Ʈ ���� ����(CMS ������) 
http://dcms.childcare.go.kr/main.jsp, center/center 
����Ʈ�����ڵ� --> ��ϱ���, �ý����ڵ� --> ���������� ���� 
/portal/webapps/ccis/mainCentral.jsp 
/portal/webapps/acis/sitelink/SiteLinkManageSvL.jsp 

- ���û���Ʈ���� ��ȸ  @@@@@@@@@@@@@ 
SELECT T.RELATESITESEQ  
,T.RELATESITEGBCODE ���û���Ʈ�����ڵ� 
,T.SYSCODE 
, (SELECT DISTINCT(AREADSPNM) LOCAL_NM FROM  TB_CP_SYSYS WHERE  USEYN = 'Y'  
AND SYSCODE= T.SYSCODE) LOCAL_NM  --������ �߰�(�ý����ڵ� --> ������) 
,T.ORGNM 
,T.CRHOME 
,T.TELNO 
,T.NTTLEVEL 
,T.CDORDER 
,T.USEYN 
FROM TB_CP_SYRELATESITE T 
WHERE  1=1 
AND T.RELATESITEGBCODE != '98'  
ORDER BY T.RELATESITESEQ ASC  
--; 
==============================================================================================================

- ���� ���� �׽�Ʈ ���� �ݿ� 
/portal/src/cis/cpis/popup/PopUpMgr.java, PopUp.sql   --> �˾� ���� 
/portal/webapps/acis/popup/PopUpSl.jsp, PopUpUd.jsp, PopUpView.jsp 
/portal/webapps/ccis/mainCentral.jsp   --> 3. ���������������� ã��  
/portal/webapps/acis/sitelink/SiteLinkManageSvL.jsp  --> �������� --> ���û���Ʈ ���� ���� 
/portal/webapps/acis/sitelink/SiteLinkCenterManageSvL.jsp 
/portal/src/cis/acis/sitelink/SiteLinkManage.sql  
==============================================================================================================

- STOCKS 
��(4,100), ȭ(4,095), ��(���漱��), ��(3,980), ��(3,955) 
==============================================================================================================

������������������� 2010.06.05(��) �۾� �������������������
---> 07:40 ~ 01:00  --> �߱�(22�� ���) 

- �������� Prj
3. ������ �ڰݻ��� ����(Ajax ���) 
- ���� ���� ���� --> �ڰݻ��� ���� ��ȸ 
 1) ����(�õ�, �߾�) ==> http://lcentral.childcare.go.kr/ccis/job/JobSearchIs.jsp,  center/center 
 2) ����(������ > ���α��� > ���ΰ���) ==> http://lcpms.childcare.go.kr/cpms/cpis/job/JobSvL.jsp?&progrmid=LKP_CSMS10B010, skkim/1111 
  ����(������ > ���α��� > ���ΰ���) ==> ������¡ ����: http://cpmse.childcare.go.kr, skkim/1111(DB ���� ������ ���� ����) 
  ���� ���: http://lcpms.childcare.go.kr/cpms/cpis/job/JobIsPu.jsp 
  ���� ����: http://lcpms.childcare.go.kr/cpms/cpis/job/JobUdPu.jsp 
- ����Ŭ DB ����(ISARANG) ==> IP �ּ�: 211.59.10.245, cpma/cpma 
   
- ��Ż ���� �ø���(http://dcpms.childcare.go.kr): FTP�� �ø��� 
1. jsp ���� �ø���: /isarang/webapps/cpms/cpis/job/JobUdPu.jsp, JobIsPu.jsp --> ������ �ڰݻ��� ����(��Ż) 
2. class ���� �ø���: /isarang/src/cis/cpms/common/CommonCodeMgr.java, CommonCode.sql 
3. .sql ���� �ø��� ���� 
http://dcpms.childcare.go.kr/common/jsp/ResourceRefresh.jsp ==> .sql ���� �ø��� �ѹ� ���� �� �ٰ� 

ISARANG: TB_CM_COCMMNCODE, Center: TB_CP_SYCMMNCODE 

- �ڰ� ���� 
<select name="EMLICEM" id="EMLICEM" onchange="fnComboLowerCode('EMLICE','CIC003',2,this.value,'S');"> 
<option value="">����</option> 
<cis:htmlOptions items="${CD.CIC003}" colValue="COCODE" colText="CDNAME" /> 
</select> 
<select name="EMLICE" id="EMLICE"> 
<option value="">����</option> 
</select> 

- ���������� �ڰ� �ڵ� 
-- 01(�ü���) --> 0010.  
-- 01(�ü���) --> 2100.  02(��������) --> 0100.  03(Ư������) --> 0500.   
-- 04(ġ���) --> 1300.  1400.  1300.  1400.  1500.  1600.   1700.  1800.  1900, 2000 
-- 05(�����) --> 0900.   
-- 06(����) --> 1000. 07(�繫��) --> .  08(��ü����(������)) -->  .  13(��ü����(�Ϲ�)) -->  .  10(�������) --> .  12(��Ÿ)    

-- �ڰ� ���� ��ȸ(����) @@@@@@@@@@@@@  
SELECT UPRCODE, substr(cocode,1,2) , COCODE, DSPNAME AS CDNAME 
FROM TB_CP_SYCMMNCODE 
WHERE CDUSED = 'Y' 
    AND CODEGB = 'CIC003'   --���� �ڵ�(CIC002:���� ����, CIC003:����2  ����) CIC002/CIC003/CIC004/CIC005 
    AND CDLEVEL = 2  
    AND (UPRCODE = '000000' OR UPRCODE = '0100') 
ORDER BY CDORDER ASC 
--; 
-------------------------------------------------------------------------------------------------------- 

- Ajax ��� 
1. /portal/webapps/ccis/job/JobSearchIs.jsp ���Ͽ��� 
<select name="EMPGBCODE" id="EMPGBCODE" style="width:134px;" onchange="fnComboLowerCode_2('EMLICE','CIC003', 2, this.value,'S');"> 
<option value="">����</option> 
<cis:htmlOptions items="${CD.CIC002}" colValue="COCODE" colText="CDNAME"  /> 
</select> 
<select name="EMLICE" id="EMLICE"> 
<option value="">����</option> 
</select> 

2. /portal/webdocs/js/common/fncommon.js ���Ͽ��� 
function fnComboLowerCode_2(subCode,codegb,cdlevel,uprcode,alltype) { 
  if(alltype == undefined) alltype = 'A';  
  var txt = $.ajax({ 
    type: "POST", 
    url: "/common/util/CmmnCodeSlL_2.jsp", 
    data: {codegb:codegb,cdlevel:cdlevel,uprcode:uprcode,alltype:alltype}, 
    success: function(data) { 
      $('#' + subCode).html(data); 
    } 
  }); 
} 

3. /portal/webapps/common/util/CmmnCodeSlL_2.jsp ���Ͽ��� 
(/portal/src/cis/cpis/common/CoCmmnCodeMgr.java ������ selectCodeListFromParam_2 �Լ� ȣ��) 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="tag"  uri="/simpleTag" %> 
<% new cis.cpis.common.CoCmmnCodeMgr().selectCodeListFromParam_2(); %> 

<option value=""><c:choose><c:when test="${param.alltype eq 'A'}">��ü</c:when> 
<c:when test="${param.alltype eq 'S'}">����</c:when></c:choose></option> 
<c:forEach varStatus="idx" var="code" items="${codeList}"> 
<option value="${code.COCODE}">${code.CDNAME}</option> 
</c:forEach> 

alert("[/DownloadBoardFile.jsp] ======> [fnComboLowerCode_2()] [subCode]"+ subCode); 
==============================================================================================================

- ���� ���� �׽�Ʈ ���� �ݿ� 
/portal/webapps/ccis/job/JobSearchIs.jsp  --> ������ �ڰݻ��� ���� 
/portal/src/cis/cpis/common/CoCmmnCodeMgr.java 
/portal/src/cis/cpis/common/CoCmmnCode.sql 
/isarang/webapps/cpms/cpis/job/JobUdPu.jsp, JobIsPu.jsp --> ������ �ڰݻ��� ����(��Ż) 
/isarang/src/cis/cpms/common/CommonCodeMgr.java 
/isarang/src/cis/cpms/common/CommonCode.sql 
==============================================================================================================

- Window Search ��ġ(MS �˻� ����) 
D:\ ����ũž ����ȭ�� 
==============================================================================================================

������������������� 2010.06.07(��) �۾� �������������������
---> 07:10 ~ 01:00  --> �߽�(�Ƶ����� ��ƹ���(4õ ���): ������ �� �޾ƿ�, �߱�(22�� ���) 

- �������� Prj
- ������������ ����/���� ���� ������ �ڰ� ���� ���(�����ڵ� ���) 
-- ���� ���� ���(����)  ���� @@@@@@@@@@@@@  
-- INSERT  INTO TB_CP_SYCMMNCODE   
(CODEGB, COCODE, UPRCODE, USGB, SYSCODE,    
 CDNAME, DSPNAME, CDUSED, CDLEVEL, CDORDER)   
 VALUES( 
'CIC002',  '13', '000000', 'M', '0', 
'��ü����',  '��ü����', 'Y', 1, 11 
 ) 
--; 

-- ���� ���� ����(����) @@@@@@@@@@@@@  
UPDATE TB_CP_SYCMMNCODE A 
SET  A.CDNAME =  'Ư������ �ڰ� ������',   -- �ڵ��  
        A.DSPNAME =  'Ư������ �ڰ� ������'   -- �ڵ�ǥ�ø� 
WHERE  A.CDUSED IS NOT NULL 
    -- AND  A.CDUSED = 'Y' 
    AND  A.CODEGB = 'CIC003'   --���� �ڵ�(CIC002:���� ����, CIC003:����2  ����)  
    AND  A.COCODE =  '0302'      --�����ڵ� 
    AND  A.CDLEVEL = 2   
    AND ( A.UPRCODE = '000000' OR  SUBSTR( A.COCODE,1,2) = '03') 
--; 
==============================================================================================================

- ����Ÿ import(����Ŭ���� ����Ʈ) 
Database --> import --> import Table Data 
Schema: CPIA 
Object Type: Tables 
Object Name: TB_CP_SYCMMNCODE  
���� �� ==> Show Data --> Excute Wizrd(��â���� .excel ���� -> �� �ʵ带 ����) 

- DB ���̺��� ������ Export(Toad����) 
��ȸ --> Data Grid(���콺 ������ Ŭ��: Export Data ���� )  -> Export Data(�˾�â) 
Ouput ==> File: 00. TB_CP_SYCMMNCODE.xls 
Delimiter ==> Character: Tab  
==============================================================================================================

- ���� ���� ����(� ���� �ݿ�) 
1. �޿����ǰ�� --> � ���� �ݿ� ��û 
D:\ISARANG\app\portal\webapps\ccis\nursery\EmpSalarySimlatnSl.jsp 
D:\ISARANG\app\portal\src\cis\cpis\nursery\EmpSalarySimlatnMgr.java 
2. �˾� ���� --> � ���� �ݿ� ��û 
D:\ISARANG\app\portal\src\cis\cpis\popup\PopUpMgr.java 
D:\ISARANG\app\portal\src\cis\cpis\popup\PopUp.sql  
D:\ISARANG\app\portal\webapps\acis\popup\PopUpIs.jsp 
D:\ISARANG\app\portal\webapps\acis\popup\PopUpSl.jsp 
D:\ISARANG\app\portal\webapps\acis\popup\PopUpUd.jsp 
D:\ISARANG\app\portal\webapps\acis\popup\PopUpView.jsp 
D:\ISARANG\app\portal\webdocs\images\acis\common\center_pop_01.gif 
D:\ISARANG\app\portal\webdocs\images\acis\common\center_pop_02.gif 
D:\ISARANG\app\portal\webdocs\images\acis\common\center_pop_03.gif 
3. ���û���Ʈ ���� ����(��������) --> � ���� �ݿ� ��û 
D:\ISARANG\app\portal\webapps\ccis\mainCentral.jsp 
D:\ISARANG\app\portal\webapps\acis\sitelink\SiteLinkManageSvL.jsp 
D:\ISARANG\app\portal\webapps\acis\sitelink\SiteLinkCenterManageSvL.jsp 
D:\ISARANG\app\portal\src\cis\acis\sitelink\SiteLinkManage.sql 
4. ������ �ڰݻ��� ���� --> � ���� �ݿ� ��û 
D:\ISARANG\app\portal\webapps\ccis\job\JobSearchIs.jsp 
D:\ISARANG\app\portal\src\cis\cpis\common\CoCmmnCodeMgr.java 
D:\ISARANG\app\portal\src\cis\cpis\common\CoCmmnCode.sql 
5. ������ �ڰݻ��� ����(��Ż) --> � ���� �ݿ� ��û 
D:\ISARANG\app\isarang\webapps\cpms\cpis\job\JobIsPu.jsp 
D:\ISARANG\app\isarang\webapps\cpms\cpis\job\JobUdPu.jsp 
D:\ISARANG\app\isarang\src\cis\cpms\common\CommonCodeMgr.java 
D:\ISARANG\app\isarang\src\cis\cpms\common\CommonCode.sql 
6. ���������������� ã�� -->  
/src/portal/webapps/ccis/common/include/page/SubLeft03.jspf  ==> ���� ���� 
http://dcentral.childcare.go.kr/ccis/central/content_6555.jsp 
==============================================================================================================

- ���͹ٷ� ����(������������ ȭ��) 
1. FTP�� �����Ͽ� �ٿ� �޾Ƽ� ����(D���������� �۾� ����): /src/portal/webapps/ccis/common/include/page  
/src/portal/webapps/ccis/common/include/page/SubLeft03.jspf 
==============================================================================================================

- ������Ʈ ����  
����ȯ ����(*@*.*): *, ����� ����(*@*.*), ����(*@*.*) 
==============================================================================================================

- MS Office 2007 ��ǰ ���� �˶� â ó�� ==> MS Office 2010 Program ��ġ  
SN: Q4M47-6848R-94QVR-BTXMB-VPFMJ 
==============================================================================================================

- ��Ʈ�� ���� 
��ü: DELL, CPU: ���� �ھ�i7 i7-720M, �޸�: 4G DDR3, HD: 500G, ȭ��: 15.6in 
http://gen.gmarket.co.kr/challenge/neo_goods/goods.asp?goodscode=185767177&GoodsSale=Y&jaehuid=200002657&service_id=pcdn ==> ����(1,547,000��) 
http://blog.danawa.com/prod/?prod_c=1093583&cate_c1=860&cate_c2=869&cate_c3=15601&cate_c4=0 ==> ��õ(1,386,000��) 
http://blog.danawa.com/prod/?prod_c=1036453&cate_c1=860&cate_c2=869&cate_c3=15601&cate_c4=0 ==> ����� ���岨(1,578,000��)  
http://blog.danawa.com/prod/?prod_c=1051974&cate_c1=860&cate_c2=869&cate_c3=10585&cate_c4=0 
http://blog.danawa.com/prod/?prod_c=1001186&cate_c1=860&cate_c2=869&cate_c3=10580&cate_c4=0 ==> �Ｚ 
==============================================================================================================

������������������� 2010.06.08(ȭ) �۾� �������������������
---> 07:10 ~ 03:30  --> �߽�(�Ƶ����� ��ƹ���(4õ ���): ������ �� �޾ƿ�, ö��(��쳪(6õ��), �縻(3õ��)) 

- �������� Prj
3. ���� �ٿ�ε� ���� ���� �����Ͽ� �ٿ�ε� 
/portal/src/cis/common/util/CompressUtil.java 
- ���ﺸ��C -->  ����� � --> �������� 
http://dseoul.childcare.go.kr/ccis/community/data/DataImgSlPL.jsp?BBSGB=42 
http://dseoul.childcare.go.kr/ccis/community/data/DataImgSl.jsp 
- ���� �ٿ�ε�(�˾�) 
http://dseoul.childcare.go.kr/ccis/community/common/AllDownloadSlPu.jsp?flag=FSl&BBSGB=42&BIDARR=26445 
- CMS Ȩ������������ �Խù������ʿ��� ��� 
http://dacis.childcare.go.kr/acis/community/board/ImageBoardIsF.jsp?flag=IsF&BBSGB=42&BBSCLSFCCODE=&clsfccode=&SEL_SYSCODE=&gb=&selBbsSchFlag=Y) 
http://lcms.childcare.go.kr, seoul/seoul 
   
1) ���� ���� �ѹ��� 
0608_00001 
2) ���� ��� 
- D://upload/cpis/board/2010/06/7/ 
3) ���� ���� �� �ٷ� �ٿ�ε� 
---------------------------------------------------------------------------------------------------------------------------- 

/portal/src/cis/acis/board/DtaAdm.sql �ķϿ���(acis.board.DtaAdm.selectFileList) 
-- �������� ��ȸ @@@@@@@@@@@@@  ==> TB_CP_BBBBSIMAGEDTAATCH(��������_�Խ���-�Խ����̹����ڷ� TB) 
SELECT BBSGB, BID ,ATCHMNFLSEQ 
    ,BUPLOADU, BUPLOADS, BUPPATH 
FROM TB_CP_BBBBSIMAGEDTAATCH   --//��������_�Խ���-�Խ����̹����ڷ�÷�� TB 
WHERE  BBSGB  = 42 
    AND BID = 33458 
    AND ATCHMNFLSEQ  = 1  
--;   
==============================================================================================================

- ���� ���� ������¡ ���� ���� ���� --> �ڰݻ��� ���� ��ȸ  
����(������ > ���α��� > ���ΰ���) ==> ������¡ ����: http://cpmse.childcare.go.kr, skkim/1111(DB ���� ������ ���� ����) 
���� ����Ʈ: http://cpmse.childcare.go.kr/cpms/cpis/job/JobSvL.jsp?&progrmid=LKP_CSMS10B010 
���� ���: http://cpmse.childcare.go.kr/cpms/cpis/job/JobIsPu.jsp 
==============================================================================================================

������������������� 2010.06.09(��) �۾� ������������������� 
---> 08:40 ~  06:00  --> ö��, �߽�(3,500��) 

- �������� Prj
- ���û���Ʈ ���� �� DB���� ���� 
1. ���� üũ�� DB���� ���� 
2. ���û���Ʈ( http://lacis.childcare.go.kr/acis/sitelink/SiteLinkManageSvL.jsp ) 

-- ���û���Ʈ ����  @@@@@@@@@@@@@  
DELETE FROM TB_CP_SYRELATESITE  
WHERE RELATESITESEQ = 680 
--; 

-- ���û���Ʈ ����  @@@@@@@@@@@@@  
INSERT INTO TB_CP_SYRELATESITE ( 
    RELATESITESEQ, SYSCODE, RELATESITEGBCODE, 
    ORGNM, CRHOME, TELNO, 
    NTTLEVEL, CDORDER, USEYN, 
    REGISTID, REGDATE) 
VALUES (  
    (select NVL(MAX(RELATESITESEQ),0)+1 AS RELATESITESEQ from TB_CP_SYRELATESITE), 
    'C0000', '01',   --SYSCODE 
    'test', 'www.geducare.co.kr/',  null,   --TELNO 
    1, (select NVL(MAX(CDORDER),0)+1 AS CDORDER from TB_CP_SYRELATESITE), 'Y',  --USEYN 
    'test01', SYSDATE 
)  
--;  
==============================================================================================================

- ���û���Ʈ ����(http://lcpis.childcare.go.kr/cpis/sitelink/SiteLinkSlPL.jsp) 
���� + ����� + Ȩ�������� ���� (������ ��ȭ��ȣ�� ����)  
==============================================================================================================

- ���� ���� ����(� ���� �ݿ�) 
1. ���û���Ʈ ���� �� DB���� ���� 
D:\ISARANG\app\portal\webapps\acis\sitelink\SiteLinkManageSvL.jsp 
D:\ISARANG\app\portal\src\cis\acis\sitelink\SiteLinkManageMgr.java 
D:\ISARANG\app\portal\src\cis\acis\sitelink\SiteLinkManage.sql 
2. ���û���Ʈ ���� 
D:\ISARANG\app\portal\webapps\cpis\sitelink\SiteLinkSlPL.jsp 
==============================================================================================================

3. ���� �ٿ�ε�(���� �ٿ�ε� ���� ���� �����Ͽ� �ٿ�ε�) 
- ���� �ٿ�ε�(�˾�) 
http://dseoul.childcare.go.kr/ccis/community/common/AllDownloadSlPu.jsp?flag=FSl&BBSGB=42&BIDARR=26445 

1) ���� ���� �ѹ��� 
0608_00001 
2) ���� ��� 
- D://upload/cpis/board/2010/06/7/ 
3) ���� ���ε� --> ���� ���� --> �ٿ�ε� 
D:\upload\Compress\2010\06\10  
==============================================================================================================

������������������� 2010.06.10(��) �۾� �������������������
---> 12:30 ~ 05:30  --> ö��, ������ 13�ÿ� ���(23�ÿ� �ٽ� ���) 

- �������� Prj
3. ���� �ٿ�ε�(���� �ٿ�ε� ���� ���� �����Ͽ� �ٿ�ε�) 
- ���ﺸ��C -->  ����� � --> �������� 
http://dseoul.childcare.go.kr/ccis/community/data/DataImgSlPL.jsp?BBSGB=42, center/center 
- ���� �ٿ�ε�(�˾�) 
http://dseoul.childcare.go.kr/ccis/community/data/DataImgSlPL.jsp?BBSGB=42 
http://dseoul.childcare.go.kr/ccis/community/common/AllDownloadSlPu.jsp?flag=FSl&BBSGB=42&BIDARR=26445 
- ���� ���� ���ε� ��� ���� 
/portal/webapps/WEB-INF/config/filepath.properties ���Ͽ��� 
#���� ����  
filepath.upload.root.cpis.edcevent=/upload/Compress 
==============================================================================================================

- ���û���Ʈ ����(http://dwww.childcare.go.kr/cpis/sitelink/SiteLinkSlPL.jsp?flag=SlPL&programId=P0001PG00001253)  
(http://lcpis.childcare.go.kr/cpis/sitelink/SiteLinkSlPL.jsp?flag=SlPL&programId=P0001PG00001253) 
==============================================================================================================

- �����������͸�ũ���� 
http://dcms.childcare.go.kr/main.jsp, center/center 
http://dacis.childcare.go.kr/acis/sitelink/SiteLinkCenterManageSvL.jsp?p_relatesitegbcode=98 
/portal/webapps/acis/sitelink/SiteLinkCenterManageSvL.jsp  ==> movieList.jsp, movie_5793.jsp 
==============================================================================================================

2. �˾� ���� 
http://lacis.childcare.go.kr/acis/popup/PopUpView.jsp?flag=Sl&POPUPSEQ=12&GB=PREVIEW 
http://lacis.childcare.go.kr/ccis/popup/PopUpView.jsp?flag=Sl&POPUPSEQ=12&GB=PREVIEW  --> ���� ��� 
http://lacis.childcare.go.kr/common/jsp/PopUpView.jsp?flag=Sl&POPUPSEQ=12&GB=PREVIEW --> ���� ���  
==============================================================================================================

- ���� ���� ����(� ���� �ݿ�) 
1. �����������͸�ũ���� --> � ���� �ݿ� ��û 
D:\ISARANG\app\portal\webapps\acis\sitelink\SiteLinkCenterManageSvL.jsp 
2. �˾� ���� --> � ���� �ݿ� ��û 
D:\ISARANG\app\portal\webapps\ccis\popup\PopUpView.jsp 
D:\ISARANG\app\portal\webapps\common\jsp\PopUpView.jsp 
D:\ISARANG\app\portal\webapps\acis\popup\PopUpSl.jsp 
3. board css ���� --> � ���� �ݿ� ��û 
D:\ISARANG\app\portal\webdocs\images\css\ccis\01\board.css 
D:\ISARANG\app\portal\webdocs\images\css\ccis\02\board.css 
D:\ISARANG\app\portal\webdocs\images\css\ccis\03\board.css 
3. layou css ���� --> � ���� �ݿ� ��û 
D:\ISARANG\app\portal\webdocs\images\css\ccis\03\layout.css 
4. ���û���Ʈ(����) --> � ���� �ݿ� ��û 
D:\ISARANG\app\portal\webapps\cpis\sitelink\SiteLinkSlPL.jsp 
5. ���û���Ʈ(����) --> � ���� �ݿ� ��û 
D:\ISARANG\app\portal\webapps\ccis\sitelink\SiteLinkSlPL.jsp 
==============================================================================================================

- ���� ���� ����(� ���� �ݿ�) 
1. �������� ���� 
D:\ISARANG\app\portal\webapps\acis\hcare\HtcherRequestUd.jsp 
D:\ISARANG\app\portal\src\cis\acis\hcare\HtcherRequestMgr.java 
2. ��ȣ�� ���� ���, ����(��Ż) 
D:\ISARANG\app\portal\webapps\ccis\hcare\protectorRequestIs.jsp 
D:\ISARANG\app\portal\webapps\ccis\hcare\protectorRequestUd.jsp 
D:\ISARANG\app\portal\webapps\acis\hcare\HtcherRequestUd.jsp 
D:\ISARANG\app\portal\src\cis\cpis\hcare\ProtectorRequestMGR.java 
D:\ISARANG\app\portal\src\cis\cpis\hcare\ProtectorRequest.sql 
==============================================================================================================

- �������� ����(��������>����������������) 
�������� ��û����: http://dacis.childcare.go.kr/acis/hcare/HtcherRequestSvL.jsp, gyeonggi1/gyeonggi1 
�������� ����(�˾�): http://dacis.childcare.go.kr/acis/hcare/HtcherRequestUd.jsp  
�ڰ��������(QUALFACQSDT1) 
��½�������1(CAREERBEGINDT1), �����������1(CAREERBEGINDT1) 
��½�������1(CAREERBEGINDT1), �����������1(CAREERBEGINDT2) 

- ��ȣ�� ���� ��� 
http://lgyeonggi.childcare.go.kr/ccis/hcare/protectorRequestIs.jsp 
- ��ȣ�� ���� ���� 
http://lgyeonggi.childcare.go.kr/ccis/hcare/protectorRequestUd.jsp 
- ��ȣ�� ���� ����Ʈ 
http://lgyeonggi.childcare.go.kr/ccis/hcare/protectorRequestSlPL.jsp?flag=SlPL 
�������(CHBIRTH), ���� �̿�(TCHERUSEBEGINDT) 
NVL2(CHBIRTH,SUBSTR(CHBIRTH,1,4)'-'SUBSTR(CHBIRTH,5,2)'-'SUBSTR(CHBIRTH,7),'') AS CHBIRTH 
 1. ��¥ Ÿ�� ����(2010-06-12 --> 20100612) 
qualResume[i][2] = (String)SqlUtil.replace((String) paramMap.get("QUALFACQSDT" + (i + 1)), "-", "");   //�ڰ��������1, 2, 3 
==============================================================================================================

- ���� ���� 
\\192.168.1.240\���ϼ���\03.����\03.��������_��������\02.����������ġ���\��ô������ ���� 
\\192.168.1.240\���ϼ���\02.��������2�ܰ�\99.��������������\06.�����׽�Ʈ\�����׽�Ʈ���_0601\�۾���_�ۿ�ȯ 
==============================================================================================================

������������������� 2010.06.11(��) �۾� �������������������
---> 12:50 ~ 05:00  --> ö��, ������ 13�ÿ� ��� 

- �������� Prj
- ���� ���� �ٿ�ε� 
D:\upload\Compress\2010\06\10 
String usid = AcisUserSession.getCwUserid();; // ����ڰ������̵� 
String sess_usid = UserContext.getSession().getId(); //���� ���̵� 
[sess_usid]hDrKVjx9EMW3HMZGlTV5XhASBJoKnFI8sgCVjYP2EngC8vIfZCBsaXJm1p7f1PiR.isarang_servlet_ccis 
DebugLogger.log("[/ImageDtaMgr.java] ======> [ImageDtaMgr()]:[flag]"+ flag); 
---------------------------------------------------------------------------------------------------------- 
- �ѱ� ���� ���� ����(jazzlib) 
1. jazzlib.jar�� ���� ����(net.sf.jazzlib�� .class ���Ϸ� ���� ��) 
 ==> D:\ISARANG\app\portal\webapps\WEB-INF\lib\������ �ֱ� ==> ��� �����ϱ�  
2. classes ����: /src/portal/webapps/WEB-INF/classes/cis/cpis/board 
3. ���� ����: [devwas:/upload/compress/2010/06/11]cd /upload/compress/2010/06/11  
http://www.javaservice.net/~java/bbs/read.cgi?m=resource&b=jdk&c=r_p&n=1100737475&k=����&d=tb#1100737475 
http://cafe.naver.com/itmecca.cafe?iframe_url=/ArticleRead.nhn%3Farticleid=1737 
==============================================================================================================

- ���� ���� ����(� ���� �ݿ�) 
1. ���� ���� �ٿ�ε� 
D:\ISARANG\app\portal\webapps\ccis\community\common\AllDownloadSlPu.jsp 
D:\ISARANG\app\portal\src\cis\cpis\board\ImageDtaMgr.java 
D:\ISARANG\app\portal\src\cis\common\util\CompressUtil_N.java 
D:\ISARANG\app\portal\webapps\WEB-INF\config\filepath.properties 
D:\ISARANG\app\portal\webapps\WEB-INF\lib\jazzlib.jar 
==============================================================================================================

- ������ ������ ���Ͽ� ���� 
06.12(��), 13(��): 9~6�� 
06.14(��) ����: 9~6�� 
�ҽ� �ݿ�: ��û���� �Ἥ PM, ������ �̱��븮 ���ιް� AA���� �ѱ� 
==============================================================================================================

- STOCKS 
��(3,950), ȭ(4,025), ��(4,190), ��(4,100), ��(4,200) 
==============================================================================================================

- ������ ���� 
1. ���ư� vs �߽��� 
�ð�: 2010�� 6�� 11��(��), 23:00 
���: ��Ŀ ��Ƽ 
==============================================================================================================

������������������� 2010.06.12(��) �۾� �������������������
---> 12:50 ~ 05:30  --> ö��(���� 05:30 ��� �� �Ϸ� ��) 

- �������� Prj
- �˾� ���� 
http://dseoul.childcare.go.kr, seoul/seoul  ==> seoul/seo0614(���� �Ǽ���), djcare1/djccic1(���� �Ǽ���) 
- ���� ����(�˾�) 
http://lacis.childcare.go.kr/acis/popup/PopUpView.jsp?flag=Sl&POPUPSEQ=17&GB=PREVIEW  
==============================================================================================================

- ���� ���� ����(� ���� �ݿ�) 
- ���� ����(�˾�) --> � ���� �ݿ� ��û 
D:\ISARANG\app\portal\webapps\acis\popup\PopUpView.jsp  ==> �˾� â ũ��, â�ݱ� ��ġ ���� 
D:\ISARANG\app\portal\webapps\ccis\popup\PopUpView.jsp  ==> �˾� â ũ��, â�ݱ� ��ġ ���� 
D:\ISARANG\app\portal\webapps\common\jsp\PopUpView.jsp  ==> �˾� â ũ��, â�ݱ� ��ġ ���� 
==============================================================================================================

- �α��� - �Ǹ����� �̹��� ����(timg_rname2_108.gif)  ==> ���߼��� ���: /src/portal/webapps/cpis/usr  
- ���� ���� ����(� ���� �ݿ�)  ==> �̹��� ����: /nfs1/src_web_i/dvpadm/imgdocs 
1. �α��� - �Ǹ����� �̹��� ����(http://dimg.childcare.go.kr/cpis/01/usr/timg_rname2_108.gif) 
http://dwww.childcare.go.kr/cpis/usr/MemberRealNameF.jsp?loginPageType=01   
http://dseoul.childcare.go.kr/ccis/usr/MemberRealNameF.jsp?loginPageType=01 
==============================================================================================================

- ���� ����Ʈ Ȯ�� 
���� ����Ʈ: http://dseoul.childcare.go.kr/ccis/sitelink/SiteLinkSlPL.jsp?flag=SlPL   
Ȩ ����Ʈ: http://lseoul.childcare.go.kr/ccis/main.jsp 

- ��ȸ�� Ȯ��(JSTL����) 
<c:forEach items="${awardList}" var="awardList" varStatus="status"> 
    [/frontDDMain.jsp] ======> [status.count]${status.count}<br> 
</c:forEach> 

SELECT PHOTOFILESTRENM,PHOTOSTREPATH,URL,BANNERNM 
FROM TB_CP_SYBANNER 
WHERE  SYSCODE = 'C0001' 
--; 
==============================================================================================================

- ������ ������ ��û
05:30 ��� 
06:20 �Ͱ� 
06:30 ��ħ 
12:30 ��� �� �޽� 
19:00 ������ ��ó �͹ٶ� �Ͻ���(����, �Ӹ�): ���� 7�� 6õ�� ���� �� 
20:30 ������ ����(�ѱ� 2 vs 0 �׸���) ==> �Ӹ� ���� ���߾ 2���� ��÷��) 
23:30 �籸��(�� ��ġ ��) 
00:10 ������(�Ƹ���Ƽ�� 1 vs 0 ����������) 
01:30 ���� 
01:40 �ý�(���굿 ������ �Ӹ� �¿���) 
02:30 �Ͱ� 
03:30 ��ħ 
==============================================================================================================

- ���ư� ������ 
1. �ѱ� vs �׸��� 
�ð�: 2010�� 6�� 12�� (��), 20:30 
���: �ڽ� ������ ���� ��Ÿ��� 
-------------------------------------------------------------- 
2. �Ƹ���Ƽ�� vs ���������� 
�ð�: 2010�� 6�� 12�� (��), 23:00 
==============================================================================================================

������������������� 2010.06.13(��) �۾� �������������������
---> 11:00 ~ 00:30  --> �������� Proj ����, �ýú� 12,600��(û���� ��) 

- �������� Prj
- ������ �׽�Ʈ 
���� ��Ż: http://isarang.childcare.go.kr/psisMainTest.jsp, seoul/seo0614 
�ű� ��Ż: http://www.childcare.go.kr/cpis/indexTest.jsp, seoul/seo0614 
��������: http://seoul.childcare.go.kr/indexTest.jsp, seoul/seo0614(���� �Ǽ���) 
������: http://cms.childcare.go.kr/cms/indexTest.jsp 
����� �����ý���: http://cpms.childcare.go.kr/loginF2Test.jsp  
==============================================================================================================

- ���ͳݰ������ ���濡 ���� ���� �˾�â ��û(��Ż ����) 
http://lwww.childcare.go.kr/cpis/main1.jsp ==>  /portal/webdocs/html/popup/popup_0610.htm 
==============================================================================================================

- eclipse���� ������ ������ �ѱ� ���� 
popup_0610.htm ����: ���콺 ������ Ŭ�� ==> Properties  ==> Resource(��â) 
Text file encoding ==> Default(UTF-8) --> Other: euc-kr�� ���� 
==============================================================================================================

- ���� ������ Select Box ���� �ȳ��� ���� 
����(������ > ���α��� > ���ΰ���) ==> ������¡ ����: http://cpmse.childcare.go.kr, skkim/1111(DB ���� ������ ���� ����) 
���� ����:  http://lcpms.childcare.go.kr/cpms/cpis/job/JobSvL.jsp?&progrmid=LKP_CSMS10B010 
���� ���: http://lcpms.childcare.go.kr/cpms/cpis/job/JobIsPu.jsp  
CPMS ���� ����(jsp): /src/dvpadm/webapps/cpms/cpis/job 
CPMS ���� ����(class): /src/dvpadm/webapps/WEB-INF/classes/cis/cpms/cpis 

1. �����ڵ�����ȸ(�ڰ� ����) 
cpms.common.selectCmmnCodeList_2=/*+ cpms.common.selectCmmnCodeList_2 */ 
SELECT COCODE as code, DSPNAME as name 
FROM   TB_CP_SYCMMNCODE 
WHERE  CDUSED = 'Y' 
AND    CODEGB = ${codegb} 
AND    CDLEVEL = ${cdlevel}  --> 2�� ���� 
AND    (UPRCODE = '000000' OR SUBSTR(COCODE,1,2)= ${uprcode})  --�Ϲ��ڵ� 
ORDER BY CDORDER ASC 
; 

-- ������Ż_���α���_�ΰ��ü����� ���� ��ȸ  @@@@@@@@@@@@@  
SELECT  * 
FROM  CISO.TB_CP_JBCNFMCRJO  A 
WHERE  A.JOSEQ IS NOT NULL  
ORDER BY A.JOSEQ DESC 
--; 

- ���Ἲ ���� ����(CISO.PK_CP_JBCNFMCRJO)�� ����  ===> JOSEQ(���μ���) �ʵ�   
SELECT SQ_CPJBCNFMCRJO.NEXTVAL FROM DUAL   --// SQ_CPJBNCNFMCRJO ==> SQ_CPJBCNFMCRJO 
==============================================================================================================

- ���� ����Ʈ Ȯ�� 
���� ����Ʈ: http://dseoul.childcare.go.kr/ccis/sitelink/SiteLinkSlPL.jsp?flag=SlPL   
Ȩ ����Ʈ: http://lseoul.childcare.go.kr/ccis/main.jsp ==> /portal/webapps/ccis/mainSeoul.jsp 

- ��ȸ�� Ȯ��(JSTL����) 
<c:forEach items="${awardList}" var="awardList" varStatus="status"> 
    [/frontDDMain.jsp] ======> [status.count]${status.count}<br> 
</c:forEach> 

SELECT PHOTOFILESTRENM,PHOTOSTREPATH,URL,BANNERNM 
FROM TB_CP_SYBANNER 
WHERE  SYSCODE = 'C0001' 
--; 
==============================================================================================================

- ���� ���� ����(� ���� �ݿ�) 
1. ���� ������ Select Box ���� ����--> � ���� �ݿ� ��û 
D:\ISARANG\app\isarang\webapps\cpms\cpis\job\JobUdPu.jsp  ==> ���� ������ Select Box ���� �ȳ��� ���� 
D:\ISARANG\app\isarang\src\cis\cpms\cpis\JobMgr.java ==> ���� ������ Select Box ���� �ȳ��� ����  
==============================================================================================================

������������������� 2010.06.14(��) �۾� �������������������
---> 09:50 ~ 18:00  --> �߽�(�������� ��), ���� ���ڵ�� ��(A4�� 27��) ����(5õ��): formtec.co.kr 

- �������� Prj
- ���� ���� �ٿ�ε� 
- Ȩ���������� --> Ŀ��ƼƼ���� --> �Խù����� 
http://dacis.childcare.go.kr/acis/community/board/BoardSlPL.jsp, seoul/seoul 
==> ���ϻ������ 5MB�� �� 5��(25MB) ���� ��� �� �� �ֽ��ϴ�. 
- ���ﺸ��C -->  ����� � --> �������� 
http://dseoul.childcare.go.kr/ccis/community/data/DataImgSlPL.jsp?BBSGB=42 
- ���� �ٿ�ε�(�˾�) 
http://dseoul.childcare.go.kr/ccis/community/common/AllDownloadSlPu.jsp?flag=FSl&BBSGB=42&BIDARR=26445  
- ���� ���� ����( �ӵ� ������ �ٷ� ����) 
(����--> ����--> �ٿ�ε�)  ==> (����--> �ٿ�ε�) 
==============================================================================================================

- ȸ�� 
18:30 ��� 
18:50 �����(����: ��ħ ����Ʈ �輺�� ����(*@*.*, ����, ����ȯ ���� ö��) 
21:00 ���� 
22:00 �Ͱ� 
==============================================================================================================

������������������� 2010.06.15(ȭ) �۾� �������������������
---> 07:30 ~ 18:00  --> �������� Proj ö��, �߽�(3,500��) 

- �������� Prj
- DB �ڷ� �̰�(���������� �ڷ�˻�) 
- Ȩ���������� --> ���;ȳ� --> ���������� �ڷ�˻� --> �ڷ�˻�����  
http://dacis.childcare.go.kr/acis/lend/DataManageSvL.jsp, seoul/seoul 
���������� �ڷ�˻� ���� TB), TB_CP_SYCMMNCODE(�з��ڵ� ���� TB) 
NBOOKCODE(�����з��ڵ� TB), NBOOKS(�������� TB) 
WRHOUSNGGB: �԰���(P:����, C:����)  ===> �����ڵ忡�� ���� �ؾ� �� 
-- ��ǰ�з��ڵ� ���� ��ȸ @@@@@@@@@@@@@  
SELECT COCODE, DSPNAME AS CDNAME 
FROM TB_CP_SYCMMNCODE 
WHERE CDUSED = 'Y' 
AND CODEGB = 'CIF009' 
AND CDLEVEL = 1 
--; 
- ���;ȳ� --> ���������� �ڷ�˻� --> ���������� �ڷ�˻� 
http://dseoul.childcare.go.kr/ccis/lend/DataSlPL.jsp  PMIG/PMIG  ==> NBOOK  
==============================================================================================================

- ���� ���� ����(� ���� �ݿ�) 
1. ���� ���� �ٿ�ε� 
D:\ISARANG\app\portal\webapps\ccis\community\common\AllDownloadSlPu.jsp 
D:\ISARANG\app\portal\src\cis\cpis\board\ImageDtaMgr.java 
D:\ISARANG\app\portal\src\cis\common\util\CompressUtil_N.java 
D:\ISARANG\app\portal\webapps\WEB-INF\config\filepath.properties 
D:\ISARANG\app\portal\webapps\WEB-INF\lib\jazzlib.jar 
2. �ڷ�˻����� ���� --> � ���� �ݿ� ��û 
D:\ISARANG\app\portal\webapps\acis\lend\DataManageSvL.jsp  ==> �ڷ�˻����� ȭ�� ���� ���� 
==============================================================================================================

- �˻�(Edit Plus���� ��ȸ) 
�˻�(S) ==> ���� ���� ã��(I) ==> ���� ���Ͽ��� ã��(��â) 
ã�� ��(I): CIF009, ���� ����: *.jsp, ����(O): D:\ISARANG\app\portal, ���� ���� ����(S): üũ 
==============================================================================================================

������������������� 2010.06.16(��) �۾� �������������������
---> 07:00 ~ 22:00  --> �ۺ� ������ 

- KCISA Study
- ������� �� ���� ���� 
============================================================================================================== 

������������������� 2010.06.17(��) �۾� �������������������
---> 07:00 ~ 22:00  --> �ۺ� ������ 

- KCISA Study
- ������� �� ���� ���� 
============================================================================================================== 

- TAMA_HouseK_Book ����(TAMA ���� �����(���� �� ���) ����) 
�ٹٲ� : vbCrLf  --> Chr(10) 

- ���ڼ� ��������(jsp����) 
 int p_title_lens = ds_contrnm.length();    //���ڼ� ���� 
 if(p_title_lens >20) {  ds_contrnm = ds_contrnm.substring(0,20) +"..."; }  else { ds_contrnm = ds_contrnm; }   
==============================================================================================================

- ������ ���� �ʱ� ��ó ����(������ ���� ���� ���) 
�츣��(herzen.co.kr) 593-9507  
==============================================================================================================

- ���ư� ������ 
1. �ѱ� 1 vs 4 �Ƹ���Ƽ��   
�ð�: 2010�� 6�� 17�� (��), 20:30 
------------------------------------------------------------------------- 
2. �׸��� 2 vs 1 ���������� 
�ð�: 2010�� 6�� 17�� (��), 23:00 
==============================================================================================================

������������������� 2010.06.18(��) �۾� �������������������
---> 12:30 ~ 22:00 

- KCISA Study
- ������� �� ���� ���� 
============================================================================================================== 

- G����(https://www.gmarket.co.kr/) 
G���� ��й�ȣ: ssp**8*2 
============================================================================================================== 

- STOCKS 
��(4,285), ȭ(4,400), ��(4,430), ��(4,440), ��(4,445) 
==============================================================================================================

������������������� 2010.06.19(��) �۾� �������������������
---> 07:00 ~ 01:00 

- KCISA ���� Ǯ�� ����(3���� �̷�1)
07:30 ��� 
08:40 �п� ����(���� �ڸ� ��� ��) 
09:00 ���� ���� 
09:00 PM ����--> ������ ���� 
12:30 �߽�(Į����(����) --> ���� ��) 
13:50 ������ �Ұ� ���� 3 ����(����) 
17:20 ���� 
18:20 �Ͱ� 
==============================================================================================================

- KCISA Review & ����Ǯ�� ���� 
 1. 3���� 
1) �̷�(�ָ�): 2010. 6. 19 ~ 6. 20(��), 7. 3(��) --> ��: 9:30 ~ 12:30, 13:30 ~ 16:30 
2) �������ǰ��(��): 6. 27(��), 7. 4(��), 7. 11(��) --> ��: 9:00 ~ 11:00, 12:00 ~ 16:00 
==============================================================================================================

- ������7 ��ġ 
1. ��ġ ����: Window 7 HomeBasic K 64��Ʈ 
2. ������ 
1) Window 7 HomeBasic CDŰ ���� �ȵ�  
CD Ű: TBWRC-MX8k4-39FD4-GD4VR-CCCH9  ====> ����� ������ �� ������7_��ǰ����_ũ��.zip�� ���� ���� 
2) osi ���� ���α׷� ���� �ȵ�  ==> ALZip801.exe�� ����Ͽ� ������ Ǯ� ��ġ�ϸ� �� 
3) MS Offfice iso ��ġ 
4) roboform ��ġ ����(������7�� ���ϱ�) 
5) TAMA_HouseK_Book���� LabelX3.ocx ��ġ ����(REGSVR LabelX3.ocx �Ұ���) 
NSIS �ν��� ���α׷� ��ġ(http://bgcom.egloos.com/3596675)  
==============================================================================================================

������������������� 2010.06.20(��) �۾� ������������������� 
---> 07:00 ~ 24:00 

- KCISA ���� Ǯ�� ����(3���� �̷�2)
07:30 ��� 
08:40 �п� ����(���� �ڸ� ��� ��) 
09:10 ���� ���� 
09:00 ���� ����--> ������ ����  ===> ����ó�� ��������(���� ������ ��������) 
12:30 �߽�(���屹(����) --> ������ ��) 
13:30 ���� ����--> ����ȣ ���� 
15:30 DB ����--> ������ ���� 
18:30 ���� 
19:20 �Ͱ� 
==============================================================================================================

������������������� 2010.06.21(��) �۾� �������������������
---> 07:30 ~ 22:00  --> �ۺ� ������, GS Į�ؽ� ����(17:00�� ���￪ 7�� �ⱸ GS ���� Ÿ��) 

- KCISA Study
- 01. ������� �� ���� ���� 
============================================================================================================== 

������������������� 2010.06.22(ȭ) �۾� �������������������
---> 07:30 ~ 22:00  --> �ۺ� ������ 

- KCISA Study
- 02. SE ���� 
============================================================================================================== 
   
- ���� ���� 
1. ���⹮�� �м��Ͽ� ���� ���� ���� 
2. �Ķ��� ���� ��� 
3. 60�� �ȿ� �ѹ� �� Ǯ ��(�ӵ�) 
4. �𸣴� ���� üũ�ϰ� �Ѿ �� 
==============================================================================================================

������������������� 2010.06.23(��) �۾� �������������������
---> 05:30 ~ 22:00 

- KCISA Study
- 03. DB ���� 
============================================================================================================== 
  
- ���� �౸ 
05:30 ���(�������� ��) ==> �ѱ� 1�� 1�� 1�з� ������ 16�� ����(�� ��) 
06:20 �ű��ʵ��б� 
06:30 ������(1:2 ��) 
07:20 ���� 
07:50 ����(ġ�������� 16�� ���� ������� ��) 
09:10 ���� �ڵ��� ������(���ؿ� T)882-7255, H)019-208-7374) --> ��̷� ��ȯ(�߰�(15,000��): ����), c.f) ����(6����) 
10:00 �Ͱ� 
15:00 �� ��� 
15:30 ���빮��(1�� �ⱸ: 750�� ����) 
16:00 ����û ������Ʈ ����(�ں��� JAVA�� ����(ProC), �߱�, �ָ� ���) 
16:30 ���� 
15:30 ���� 
==============================================================================================================

- ���ư� ������ 
1. �ѱ� 2 vs 2 ���������� 
�ð�: 2010�� 6�� 23�� (��), 03:30
2. �׸��� 0  vs 2 �Ƹ���Ƽ�� 
�ð�:2010�� 6�� 23�� (��), 03:30 
==============================================================================================================

- �����ϵ� 2.5��ġ ����  
���� ICS25SU(640G) 2.5 ��ǰ, ����: 85,120�� 
==============================================================================================================

������������������� 2010.06.24(��) �۾� �������������������
---> 07:30 ~ 22:00  --> �ۺ� ������ 

- KCISA Study
- 03. DB ���� 
============================================================================================================== 
  
- STOCKS 
��(4,395), ȭ(4,210), ��(4,095), ��(3,960), ��(4,445) 
==============================================================================================================

cc_cExcelPrint.dll ���� 
REGSVR32 D:\TAMA_DATA\02_My_DOCUMENT\02_My_Project\Project_VB\OCX\cc_cExcelPrint.dll 

regsvr32.exe /u D:\TAMA_DATA\02_My_DOCUMENT\02_My_Project\Project_VB\OCX\cc_cExcelPrint.dll 

 http://blog.naver.com/mismir?Redirect=Log&logNo=40021648671 
============================================================================================================== 
�����������������������������������������������������������
+--------------------------------------------------------// End //----------------------------------------------------------+ 
����������������������������������������������������������� 