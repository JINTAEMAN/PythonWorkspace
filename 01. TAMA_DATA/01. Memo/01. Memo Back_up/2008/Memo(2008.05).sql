

�����������������������������������������������������������
+---------------------------------------------// Memo(2008.05) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2008.05.01(��) �۾� �����������������
---> 09:00 ~ 19:00  --> �ӽ� ������ 

- �Ｚ AML Prj 
1. STR �ҽ� �м�(STR  ���� �溸)  
 [2008-04-30 09:13:53] ERROR [ExecuteThread: '12' for queue: 'weblogic.kernel.Default'] -   
 ============================== SAS AML Exception ============================== 
java.lang.ClassCastException: com.sas.aml.service.AlertQueryService 
at com.sas.aml.str.action.UserAlertListAction.execute(UserAlertListAction.java:35) 

AlertQueryService alertqueryservice = (AlertQueryService)hashmap.get("AlertQueryService"); 
����: 1) ���� Ŭ�����̸��̳� Ȥ�� ���� ��ü������ ���� �̸��� �ֱ� ������ ��Ÿ���ϴ� 
2) ĳ���� �Ǵ� ��ü�� ĳ�����ҷ��� �ϴ� Ŭ������ ���� �ʾƼ� �߻��ϴ� ���� 
��ġ: import com.sas.aml.str.service.AlertQueryServiceN; 
AlertQueryServiceN alertqueryservice = (AlertQueryServiceN)hashmap.get("AlertQueryServiceN"); 
------------------------------------------------------------------------------------------ 
  
============================== SAS AML Exception ============================== 
java.lang.ClassCastException: com.sas.aml.util.ListNavigator 
at com.sas.aml.str.action.UserAlertListAction.execute(UserAlertListAction.java:37) 

ListNavigator ListNavigator = (ListNavigator)httpsession.getAttribute("alnuser"); 
����: ���� Ŭ�����̸��̳� Ȥ�� ���� ��ü������ ���� �̸��� �ֱ� ������ ��Ÿ���ϴ� 
 ��ġ: import com.sas.aml.str.service.AlertQueryServiceN; 

 java.lang.Error: Unresolved compilation problem:  
The method getMyAlerts(UserContent, ListNavigator) in the type AlertQueryServiceN is not applicable for  
the arguments (UserContent, ListNavigatorN)  
---------------------------------------------------------------------------------------------------------- 
  
��������: ORA-01775 ���Ǿ ��ȯ �� �������� ���ǵǾ� �ֽ��ϴ� 
����: Schema���� �ٸ� 
��������: ORA-00937 ���� �׷��� �׷��Լ��� �ƴմϴ�. 
����:  
ListNavigator 
==============================================================================================================

- jadclipse ��ġ ���  
1. http://sourceforge.net/projects/jadclipse ���� ���ϴ� ������ jadclipse�� �ٿ�޴´�.   
jadnt158.zip ���� �ٿ�ε� --> ������ Ǯ�� jad.exe ������ ���� 
2. �ٿ���� jadclipse_XXX.jar ������ Ǯ� eclipse plug-in ����(D:\eclipse\plugins)�� �Űܳ��´�. 
/net.sf.jadclipse_3.2.4������ �����Ͽ� D:\eclipse\plugins ��� �پ� �ֱ� 
3. eclipse�� �����Ѵ�.   
4. window->preference->general->editors->file assosiations���� *.class������ �ϴ���  
JadClipse Class File Viewr �� ������ default �� �����Ѵ�.  
5. window->preference->java->JadClipse�� �������� Reuse coed buffer�� üũ���ش�. 
Path the decompliler: D:\jad\jadnt158\jad.exe 
Derectory for temporary files: D:\jad\net.sf.jadclipse_3.2.4\net\sf\jadclipse  
6. eclipse ���� �޴��� Package explorer���� sasaml_class.jar�� Ŭ���ϰ� AlertQueryService.class ������  
����Ŭ���ϸ� .java�ҽ� ����(D:\eclipse\workspace\Proj_sasaml2\build\lib\sasaml_class.jar) 
------------------------------------------------------------------------------------------ 
- �������� ���� ===> �Ϻ� class�� ������ ���� �޼����� �����鼭 �������� ������ �� 
Overlapped try statements detected. Not all exception handlers will be resolved in the method getMyAlerts 
Couldn't fully decompile method getMyAlerts 
Couldn't resolve all exception handlers in method getMyAlerts 
http://javanuri.devpia.com/devforum/boardView.jsp?Id=209787&menuId=18 

java.lang.ClassCastException: com.sas.aml.service.AlertQueryService 
==============================================================================================================

 - ��ӹ��� ���, ���� ��� �� 
1. ��ӹ��� ���(���� -> ����) 
�Ϲ�: 18,600��, ���: 27,700��, �ɾ߿��: 30,500�� 
2. ���� ���(���� -> ����) 
������: 38,200�� 
 ------------------------------------------------------------------------------------------ 
3. ��ӹ��� ���(���� -> ����) 
�Ϲ�: 17,500��, ���: 26,000��, �ɾ߿��: 28,600�� 
4. ���� ���(���� -> ����) 
������: 35,800��, ����ȭ: 24,100�� 
5. ���� ���(���� -> ���뱸) 
KTX: 41,100��, ������: 30,400��, ����ȭ: 20,500�� 
==============================================================================================================

 - MyLG 070 ��ȭ �ȳ� 
http://www.070mylg.com 
www.dacom4u.co.kr(��ȫ�� ȸ��) --> ��ȭ��, ������ ����� �ش�.  
==============================================================================================================

-  [�ְ����� 2008�� 5�� 1°��] 
�� ���� ���� ����(04/28 ~ 05/02) 
1. ���� ���� �ۼ� 
2. STR �ҽ� �м�(STR  ���� �溸) 
------------------------------------------------------------------------------------------ 

�� ���� ���� ��ȹ(05/06 ~ 05/09) 
1. STR ���� 
- 1) ���ǰŷ� ���� ��� 
==============================================================================================================

������������������� 2008.05.02(��) �۾� �����������������
---> 07:10 ~ 21:00 

- �Ｚ AML Prj 
1. STR �ҽ� �м�(STR  ���� �溸)  
The method getMyAlerts(UserContent, ListNavigator) in the type AlertQueryNewService is not applicable  
for the arguments (UserContent, ListNavigator)  
java.lang.ClassCastException: com.sas.aml.content.UserContent 
java.lang.ClassCastException�� � Ŭ������ ��ĳ�����̳� �ٿ�ĳ�����Ҷ� �߸��� Ŭ������ ĳ�����Ҷ�  
���� �����Դϴ� 
==============================================================================================================

- eclipse �缼�� 
http://45.10.4.21:7001/WebContent/vxi/AlertListUser 
==============================================================================================================

- AML ���� ���� 
host : 45.101.21.181 
id/pwd: sasadm/sasadm  
--------------------------------------------------------------------- 
- STR ���� cvs �׽�Ʈ ����(�ְ��� ��Ʈ��)  
host : 45.10.10.174 
id/pwd : cvsuser1/ksh_00  --> tamario/ssjtm_12 
repository path: /cvs/repository 
--------------------------------------------------------------------- 
- ���ǰŷ� ����(���ǰŷ�����2.0 ���α׷�) 
okbl3474/bmk4743 
==============================================================================================================

- ������ �������� ���� ����  
1. ���ݿ�� ���⿹�ݺ���2008-05-02 
���¹�ȣ: 011-02-24-0343097 
����: 420����, �Ǽ��ɾ�:  ��, ������: �� 6.59%, ��ġ�Ⱓ: 1�� 
��������: 2009/05/02    
==============================================================================================================
     
 - �Ｚ���� CMA���� ����(�Ｚ CMA) 
 1) (001)�Ｚ �̸�¡ ���̳��� �ֽ�(CMA) --> ��ü ������ ���� 
���¹�ȣ: 47319166  
�������: 4211 90 40352925(��������): 42119040352925 
������: �� 5%,  1�� ��ü�ݾ�: 1��,  1�� ��ݾ�: 3�� 
 2) (1057 194)�Ｚ �̸�¡ ���̳��� �ֽ� ��������1ȣ-C1(�ݵ�): �ֽ���  
���ǰ��¹�ȣ: 4731966-����(001) 
��ü�ݾ�: 10����, ��ü��: 25��, �Ⱓ: 36���� 
��������: 2011/04 
==============================================================================================================

������������������� 2008.05.03(��) �۾� �����������������
---> 09:30 ~ 15:30 --> �����౸(06:40 ~ 07:30), ������(��ӹ���) 

- �Ｚ AML Prj 
1. STR �ҽ� �м�(STR  ���� �溸) 
  �溸 ���� ����Ʈ 
http://45.10.4.21:7001/WebContent/vxi/NewSAR  
- ��Ŭ�������� ���� �� ISO-8859-1 encoding ���� �� ������ �ȵ� ��� 
window>Preferences > General > content Types> Text���� Default encoding�� euc-kr�� update �� ���� �Ѵ�.  
(�ȵǸ� Text > JSP���� Default encoding�� euc-kr�� update �� ����) 
����: Some characters is not mapping ISO-8859-1 character encoding. 
http://45.10.4.21:7001/WebContent/vxi/AlertListUser 
==============================================================================================================

 - ServletContext ���� 
��������: the import ServletContext cannot be resolved  
��ġ: Propotites sasaml�� Libararies�ǿ��� Add Extenal JARS �� Ŭ���Ͽ� weblogic.jar, webservices.jar  
������ ���   
==============================================================================================================

������������������� 2008.05.06(ȭ) �۾� �����������������
---> 07:10 ~ 22:30  --> ���� ���� �� ���� ����(KYC ���) ���� 

- �Ｚ AML Prj 
1. STR �ҽ� �м� 
1. ���ǰŷ� ���� ���(/WebContent/vxi/AlertSTR  --> /str/displaySTRs.jsp)  
SAR_ALERTS, FSK_CASH_FLOW_ALERT, FSK_CASH_FLOW_BANK_ALERT, FSK_CASH_FLOW_ALERT 
http://45.10.4.21:7001/WebContent/vxi/NewSAR 
==============================================================================================================

- STRService ���� 
��������: java.lang.ClassNotFoundException: com.sas.aml.str.service.STRService 
��ġ: 1. C:\bea\user_projects\domains\AMLDomain\config.xml ���Ͽ��� sasaml3 �κ� ���� 
<Application Name="sasaml3" Path="d:\eclipse\workspace\Proj_sasaml3" StagingMode="nostage" TwoPhase="true"> 
<WebAppComponent Name="sasaml3" Targets="AMLServer" URI="sasaml3"/> 
</Application> 
2. D:\Proj_sasaml\sasaml\WEB-INF\classes�� �ش� class �����Ͽ� �ٿ� �ֱ� 
---------------------------------------------------------------------------------------- 
- AlertSTR ������ �� �� ���� 
��������: No action instance for path /AlertSTR could be created 
��ġ: class��ġ ���� 
 D:\eclipse_T2\sasaml\build\classes  --> D:\eclipse_T2\sasaml\build 
 D:\eclipse_T2\sasaml\WebContent\WEB-INF\classes 
==============================================================================================================

- ������Ƽ ������ ����(�ѱ� ��ȯ) 
���ŷο� �۾� �� �ϳ���, native2ascii�� ����ϴ� ������Ƽ ������ �����ڵ� ��ȯ�۾��� �ʿ���� �� ��  
1. Help - Software Updates - Update Manager �޴��� ���� 
2. Install/Update ����  --> Search for new features to install üũ 
2. Install���� Update sites to visit --> New Remote Site ��ư Ŭ�� 
 Name: ������Ƽ ������ 
 URL: http://propedit.sourceforge.jp/eclipse_plugins 
3. Feature Updates ���� �� �ؿ� '������Ƽ ������'��� �׸��� ���� ������ �̴ϴ�. �� �׸��� ��� Ȯ���ϸ�  
��Ÿ���� 'PropertiesEditorFeature 3.x'�� 'viPlugin for PropertiesEditor'�� �����ϸ�,  
Chage Location: D:\eclipse\workspace\Proj_sasaml2\sasaml2\WEB-INF\config\eclipse ���� 
������ Preview �信�� ������ ����, ���̼��� ��� �Բ� 'Install Now' ��ư�� ���Դϴ�. �� ��ư�� Ŭ���ϰ� 
Next ��ư�� ��� �����ָ�(���̼������� �����ϼž���!) ��ġ�� �Ϸ��   
4. ���� ��Ŭ������ ���� �����ϸ� �� �÷������� ����Ͻ� �� �ֽ��ϴ�   
http://cafe.naver.com/leesc81.cafe?iframe_url=/ArticleRead.nhn%3Farticleid=221 
==============================================================================================================

- �������� ���� ���� 
�Ͻ�: 2008�� 5�� 17��(��) ~ 18��(��) 
���: ���� �Ͽ� 
���� �����ο�: ����, ��ȯ, �¿�, �¸�, ����, ȣ�� 
----------------------------------------------------------- 
- �������� ���� �籸��ȸ 
A�� ��õ�: ��ȯ(120) 
B�� ��õ�: �Ӹ�(120) 
C�� ��õ�: ����(100) 
������ ���� ���� ��÷���� ����. 
��� 1��: 5����, ��ġ �籸�� ���� 
==============================================================================================================

������������������� 2008.05.07(��) �۾� �����������������
---> 07:10 ~ 22:10 

- �Ｚ AML Prj 
1. STR �ҽ� �м� 
1. ���ǰŷ� ���� ���(/WebContent/vxi/AlertSTR  --> /str/displaySTRs.jsp) 
FSK_CASH_FLOW_ALERT: Core ���� ���̺�  
-------------------------------------------------------------------------------------------------------------  

1) /com.sas.aml.str.action.AlertSTRsAction.java ���Ͽ��� 
httpservletrequest.setAttribute("strCount", String.valueOf(arraylist.size())); // STR ��ȸ��  
httpservletrequest.setAttribute("STRArray", arraylist);  // List ��ȸ 
-------------------------------------------------------------------------------------------------------------  

2) /str/displaySTRs.jsp ����  -->  ���ǰŷ� ���� ��� 
 ��ȸ��:  <c:out value="${strCount}" />��</TD> 
  
<TABLE cellspacing=0 cellpadding=0 width=100% border=1>    
 <c:if test="${strCount > 0}"> 
<TR> 
<c:set var="counter" value="1" /> 
<c:forEach var="str" items="${STRArray}"><!--// LIST GRID ����  //-->       
<TD class="text"> <c:out value="${counter}" /> <!--// ���� //--></TD>  
<TD class="text" width="40"> <c:out value="${str.ACCOUNT_NUMBER}" /> <!--// ���¹�ȣ //--></TD>  
<TD class="text" width="60"> <c:out value="${str.TRANSACTION_DT}" /> <!--// �ŷ��Ͻ� //--></TD>  
<TD class="text" width="170"> <c:out value="${str.TRANSACTION_DESCRIPTION}" /> <!--// �ŷ��� //--></TD>  
<TD class="text" width="80"> <c:out value="${str.BRANCH_NAME}" /> <!--// ����� //--></TD>   
<TD class="text" width="60"> <c:out value="${str.PARTY_TAX_ID}" /> <!--// ������ �Ǹ��ȣ //--></TD>  
<TD class="text" width="40"> <c:out value="${str.PARTY_NAME}" /> <!--// �����ָ� //--></TD>  
<TD class="text" width="30"> &nbsp;<!--// �븮�� //--></TD>  
<TD class="text" width="30"> &nbsp;<!--a// ���� //--></TD>  
</TR> 
<c:set var="counter" value="${counter + 1}" /> 
</c:forEach> 
</c:if>   
</TABLE> 
-------------------------------------------------------------------------------------------------------------  

- IF �� ����(JSTL����) 
<TD class="text" width="40" align="center"><c:if test="${str.PARTY_TYPE_DESC=='����'}"> 
<input type="checkbox" name="p_party_type_desc" value="01" style="border:0px;" checked></c:if> 
<c:if test="${str.PARTY_TYPE_DESC !='����'}"><input type="checkbox" name="p_party_type_desc" value="01" style="border:0px;"></c:if> 
<!--// ��ǥ��  //--></TD>   
==============================================================================================================

- ���ǰŷ� ���� ���� ��ȸ @@@@@ 
SELECT  A.ALERT_ID, B.TRANSACTION_KEY, B.ACCOUNT_KEY, (B.DATE_KEY  B.TIME_KEY) TRANSACTION_DT , 
 C.ACCOUNT_NUMBER,   D.PARTY_KEY,  
 E.PARTY_NUMBER, E.PARTY_NAME,  
 E.PARTY_TYPE_DESC, E.PARTY_TAX_ID, E.PARTY_TAX_ID_DESC, E.PARTY_IDENTIFIACTION_ID, 
 F.TRANSACTION_DESCRIPTION, 
 G.BRANCH_NAME 
FROM FSK_ALERT A, FSK_CASH_FLOW_ALERT B, 
  FSC_ACCOUNT_DIM C, FSC_PARTY_ACCOUNT_BRIDGE D, FSC_PARTY_DIM E, 
  FSC_TRANSACTION_DIM F, FSC_BRANCH_DIM G 
WHERE A.ALERT_ID = B.ALERT_ID 
AND B.ACCOUNT_KEY = C.ACCOUNT_KEY 
AND C.ACCOUNT_KEY = D.ACCOUNT_KEY 
AND B.BRANCH_KEY = G.BRANCH_KEY  
AND D.PARTY_KEY = E.PARTY_KEY  
AND B.ACCOUNT_KEY = F.TRANSACTION_KEY 
AND A.ALERT_ID = 1 --�溸 ID 
--; 
==============================================================================================================

- �籸 ��� 
1. ĥ�����ϴ� �β��� �Ӹ��� �׸��� ģ��. 
2. ���� ���� ���� ���� ���о� �������� �ϸ� ��κ��� ���� �о� ģ��. 
3. ���� ġ��� ť ���̸� ���� �Ͽ� ǫ �δٴ� �������� ������ ģ��. 
4. �о�ġ��� �ﰢ �߾� �κп� �β��� �����ϸ� ��� ���� �о ģ��. 
5. �� ����� X���� �߾��� �׸��� �о� ģ��. 
6. ����� ĥ���� �ϸ� ���̸� ���� ģ��. 
==============================================================================================================

������������������� 2008.05.08(��) �۾� �����������������
---> 07:10 ~ 22:30 

- �Ｚ AML Prj 
1. STR �ҽ� �м� 
1. ���ǰŷ� ���� ���(/WebContent/vxi/AlertSTR  --> /str/displaySTRs.jsp) 
com.sas.aml.str.action.RegSTRTransaction  
   
-- STR ���� ���� ��Ȳ(STR_ALERT_STATUS) 
-- STR �ŷ����� ����(STR_TRADE_INFO) 
-- STR ���� ����(STR_ACCOUNT_INFO) 
-- STR �ŷ��� ����(STR_TRADE_PERSON_INFO) 
- ��¥ ��ȸ 
TO_DATE(B.DATE_KEY  '12:00:00', 'YYYY-MM-DD HH24:MI:SS') TRANSACTION_DT 
==============================================================================================================

������������������� 2008.05.09(��) �۾� �����������������
---> 07:50 ~ 21:00--> �籸(����� ����, AML��), �¿� ���� �� 

- �Ｚ AML Prj 
1. STR �ҽ� �м� 
1. ���ǰŷ� ���� ���(/WebContent/vxi/AlertSTR  --> /str/displaySTRs.jsp) 
2. ������ ���(/WebContent/vxi/AlertSTR  --> /str/displaySTRs.jsp) 
  
 -- ���� �ڵ� ��ȸ 
SELECT * FROM STR_MASTER  
WHERE GROUP_CODE = 'STATUS_CD' AND STR_CODE = '01' 

-- STR ���� ���� ��Ȳ(STR_ALERT_STATUS) 
SELECT AMLCTR.FSK_SEQ.nextval FROM DUAL 
--;    
 SELECT * FROM STR_ALERT_STATUS 
-- WHERE STR_ALERT_STATUS IN ( 2021, 3177) 
--;    
-- DELETE FROM STR_ALERT_STATUS  
==============================================================================================================

������������������� 2008.05.10(��) �۾� ����������������� 
---> 09:40 ~ 20:00  --> ���(�¿� �¿���), �����౸(06:00 ~ 07:30), ��� �湮(LCD����)(12:30 ~ 14:30) 

- �Ｚ AML Prj 
1. STR �ҽ� �м� 
1. ���ǰŷ� ���� ���(/WebContent/vxi/AlertSTR  --> /str/displaySTRs.jsp) 
2. ������ ���(/WebContent/vxi/AlertSTR  --> /str/displaySTRs.jsp) 
 ���ǰŷ� ����� ��ȸ 
 <c:if test="${strOrganCount > 0}"> 
   <c:forEach var="str" items="${STROrganArray}">  
   </c:forEach> 
</c:if>  
==============================================================================================================

- �������� ���� ATV(4�� �������) ���� 
�δ� 1�ð�: 3����(�� 6��: 18����) 
������ http://www.x-zone.or.kr 
�ֿ��: T)0 41-858-0223, HP) * 
�ּ�: �泲 ���ֽ� ���ȸ� ���긮 126���� 
==============================================================================================================

- TV��� LCD ����(WIDVIEW MT-202MWT 20��ġ) 
(��)�����ھ���ũ: ���� ��걸 �Ѱ���2�� ������19�� 3�� �� 303ȣ  
WIDVIEW MT-202MWT ������  51cm (20) / 1680 x 1050 / 5�� / 300�� / 1000��1 / ������ ��å /  220,000��  
http://lcddotcom.co.kr/product/productView.php?cate_c1=&cate_c2=&cate_c3=&cate_c4=&nDepth=&nFirst=&nSecond=
&nThird=&nForth=&sSearchMethod=all&sSearchString=MT-202MWT&sOrderType=&nPage=1&nListPerScreen=20&nProdCode=520449 
==============================================================================================================

������������������� 2008.05.12(��) �۾� �����������������
---> 11:50 ~ 21:00  --> �ӽð�����, �����౸(08:00 ~ 11:30): ���� ��Ƽ, TV��� LCD(����) ū�������� ���� 

- �Ｚ AML Prj 
1. ���ǰŷ� ���� ���(/WebContent/vxi/AlertSTR  --> /str/displaySTRs.jsp) 
1-1. STR ���� ���� ��Ȳ ��ȸ ȭ��(�˾�)������ ���(/WebContent/vxi/AlertSTR  --> /str/displaySTRs.jsp) 
==============================================================================================================

- otherwise ���� 
 <c:choose> 
<c:when test="${counter % 2 == 0}"> 
<TR bgcolor="#EEEEEE"> 
</c:when> 
<c:otherwise> 
<TR bgcolor="#FFFFFF"> 
</c:otherwise> 
</c:choose> 
-------------------------------------------------------------------------------------- 

- ���� �ڵ� ��ȸ 
SELECT * FROM STR_MASTER  
WHERE GROUP_CODE = 'STATUS_CD' AND STR_CODE = '01' 

- NULL�� ó�� 
 if( p_str_id == null  p_str_id.trim()==""   p_str_id.length() == 0 ) {  // ��� �̸� 
s6 = strservice.creategRpOrgan(p_alert_id, p_str_id, p_strstatus_cd, httpservletrequest);   //�Լ� ȣ��(����) 
} else {  // ����  �̸�   
s6 = strservice.editRpOrgan(p_alert_id, p_str_id, p_strstatus_cd, httpservletrequest);   //�Լ� ȣ��(����) 
} 
-------------------------------------------------------------------------------------- 

- â�ݱ� 
<a href="javascript:window.close();" target="_self">[�ڽ� â�ݱ�]</a> 
<Script Language="JavaScript"> 
alert("���� ������ �����߽��ϴ�!\n"); 
opener.location.reload(); 
window.close(); 
</Script> 

<TR bgcolor="#A9D3F4">  
<TD>&nbsp;<a href="AlertSTR?alertId=<c:out value='${alertId}'/>&queryType=user" onclick=" 
open('','edverclip','menubar=no,toolbar=no,location=no,directories=no,status=no,scrollbars=no,resizable=no, 
width=900,height=600,left=100,top=20');" target="_blank">[â �ݱ�]</a></TD>  
</TR>  
</TABLE>  
==============================================================================================================

- ���� �뼱  
1. ������ -> �Ż����б�(900��): ȯ�� 
������ -> ��翪(5412��, 5524��, 5528��) 
��翪 -> �Ż����б�(4318��, 8431��) 
---------------------------------------------- 
������ -> ��ӹ����͹̳�(ȣ����)(5412��) 
��ӹ����͹̳�(ȣ����) -> �Ż����б�(143��) 
��ӹ����͹̳�(ȣ����) -> �Ż翪(148��) 
------------------------------------------------------------ 
2. �Ż����б� -> ����(900��) 
�Ż����б� -> ����2��(143��) 
�Ż����б� -> ������ �Ա���(472��) 
------------------------------------------------------------  
3. ������ -> ����Ÿ����Ÿ�:������ ��ó(5412��): ��ӹ����͹̳� ���� 
--------------------------------------------------------------------------------------------------------  
1. ������� -> ���뱸 ����͹̳�(900��)(527��) 
==============================================================================================================

������������������� 2008.05.13(ȭ) �۾� �����������������
---> 08:10 ~ 23:00 --> �ι����Ʒ�(07:20 ~ 07:21): ��õ���� ���常 ��� �� 

- �Ｚ AML Prj 
1. ���ǰŷ� ���� ���(/WebContent/vxi/AlertSTR  --> /str/displaySTRs.jsp) 
1-1. STR ���� ���� ��Ȳ ��ȸ ȭ��(�˾�)������ ���(/WebContent/vxi/AlertSTR  --> /str/displaySTRs.jsp) 
2. ������ŷ��� �߰� ȭ��(�˾�)(/WebContent/vxi/AddTradeSearchAction  --> /str/pop_RpTrade.jsp) 
- ��ȸ�� ����Ÿ 
 System.out.println("[/AlertSTRsAction.java]:[execute()]:[arraylist]"+ arraylist); 
[arraylist][com.sas.aml.str.form.STRForm@2319876, com.sas.aml.str.form.STRForm@2319876]  --> 2��   
========================================================================================================= 

string path = ""; 
return new ActionForward(path, true); 
-- return actionmapping.findForward(s1); 
========================================================================================================= 

- â �ݱ�(��ȸ�� ���ÿ� URL �׼��� ����) 
<script language="javascript" type="text/javascript"> 
<!--  
url = "AlertSTR?alertId=<c:out value='${alertId}'/>&queryType=user";  
window.opener.location = url;  
//--> 
</script>   
<TD align="center">&nbsp;&nbsp;<a href="javascript:window.close();" target="_self">[â�ݱ�]</a></TD>   
------------------------------------------------------------------------------------------------------------ 

- â �ݱ�( [â�ݱ�]�� Ŭ���ϸ� URL �׼��� ����ǰ� â�� ����) 
<script language="javascript" type="text/javascript"> 
<!-- 
function linkToOpener(url) {   
window.opener.location = url; 
window.close(); 
} 
//--> 
</script>    
 <TD align="center">&nbsp;<a href="javascript:linkToOpener('AlertSTR?alertId=<c:out value='${alertId}'/>&queryType=user');"> 
 [â�ݱ�]</a></TD>   
------------------------------------------------------------------------------------------------------------ 

- savedel_yn �Ķ���͸� Ȯ���Ͽ� ?�� URL �׼��� ����ǰ� �̵��� ��) 
<script language="javascript" type="text/javascript"> 
<!--   
var savedel_yn =<c:out value='${savedel_yn}'/>;  
if (savedel_yn =='1'  savedel_yn =='2') { 
var url = "AlertSTR?alertId=<c:out value='${alertId}'/>&queryType=user"; 
if (savedel_yn =='1') { 
alert("���� ��Ͽ� ���� �߽��ϴ�."); 
} else { 
alert("���� ������ ���� �߽��ϴ�."); 
}  
window.location = url; 
}  
//--> 
</script>    
==============================================================================================================

- �ι����Ʒ�(7���� ������): ��õ���� ���常 ��� ��  
�Ͻ�: 2007�� 5�� 13��(ȭ) 7�� 30�� 
���: ���� �ʵ��б�(����� ���Ǳ�) 
��������: T) 876-4061 
==============================================================================================================

������������������� 2008.05.14(��) �۾� ����������������� 
---> 07:00 ~ 23:00  --> AML �������� ȸ��( �豤�� ������ ��) 

- �Ｚ AML Prj 
2. ������ŷ��� �߰� ȭ��(�˾�)(/AddTradeSearchAction  --> /str/pop_RpTrade.jsp) 
3. �������� �˻�(�˾�)(/RpPersonAction  --> /str/pop_RpPerson.jsp) 
   
 if(p_search_val.equals("1")) { // �˻� ������ �Ǹ��ȣ �̸� 
preparedstatement = prepareStatement(connection, getSQLProperty("sasaml.str.get.str_rp_man_ori.sql")  
+" "+ getSQLProperty("sasaml.str.get.str_rp_man_ori3.sql")); 
} else { 
preparedstatement = prepareStatement(connection, getSQLProperty("sasaml.str.get.str_rp_man_ori.sql")  
+" "+ getSQLProperty("sasaml.str.get.str_rp_man_ori4.sql")); 
}  
==============================================================================================================

- JSTL DB ���� 
<sql:query var="rs" dataSource="jdbc/DB"> 
select id, foo, bar from testdata  
</sql:query> 
==============================================================================================================

 - forEach ���  
ArrayList list = new ArrayList();  
String p_Name =null; 
   
for(int i=1; i <= 3; i++) { 
 AForm aaform = new AForm();  

 p_Name ="����" + i; 
 aaform.setName(p_Name);   //�̸� 
 aaform.setAge(i);    //����  
 list.add(aaform);  
} 

httpservletrequest.setAttribute("AList", list);   
[AList][com.sas.aml.str.form.STRForm@2319876, com.sas.aml.str.form.STRForm@2319876],  
com.sas.aml.str.form.STRForm@2319876]--> 3�� 
------------------------------------------------------------------------------ 
  
 <c:choose> 
<c:when test="${AList!= null && !empty AList}">   
<TR>      
 <c:forEach var="i" items="${AList}" varStatus="loop"> 
 <TD class="text" align="center"> <c:out value="${loop.index}" /><!--// index //--></TD>  
 <TD class="text"> <c:out value="${loop.count}"/> <!--// count //--></TD>  
 <TD class="text"> <c:out value="${i.name}"/> <!--// �̸� //--></TD>   
 <TD align="center"><c:out value="${i.age}"/>  <!--// ����  //--></TD>   
</TR>    
</c:forEach> 
</c:when>   
<c:otherwise> 
 NO Data 
</c:otherwise> 
</c:choose> 
------------------------------------------------------------------------------ 

- ���� ����� 
index  count �̸�  ���� 
0 1  ����1 1    
1 2  ����2 2    
2 3  ����3 3   
==============================================================================================================

- JAVA ���� 
http://tong.nate.com/kangdydtjs/30910914 
==============================================================================================================

������������������� 2008.05.15(��) �۾� �����������������
---> 07:30 ~ 23:00 --> ����������� ����(�������, ���̻��), ����(������9õ 5���:�հ������ ��) 

- �Ｚ AML Prj 
4. ���ǰŷ� ���� ��� - ���� 
4-1. ���� �߰� ȭ��(�˾�)(/Account  --> /str/pop_Account.jsp) 
4-1-1. ��������ڵ� �˻�(�˾�)(/CommonSearchAction  --> /str/pop_Common_Bank.jsp) 
4-1-2. ���� �˻�(�˾�)(/CommonSearchAction  --> /str/pop_Common_Branch.jsp) 
4-1-3. �ּ� �˻�(�˾�)(/CommonSearchAction  --> /str/pop_Common_Zipcode.jsp)  
==============================================================================================================

- JSTL LIST ��ȸ 
<c:choose> 
<c:when test="${RpTradeArray!= null && !empty RpTradeArray}">   
<TR>  
<c:set var="counter" value="1" /> 
<c:forEach var="iz" items="${RpTradeArray}"><!--// LIST GRID ����  //-->          
<TD class="text" align="center"><c:out value="${counter}" /> <!--// ���� //--></TD>  
<TD class="text"> <c:out value="${iz.ACCOUNT_NUMBER}" /> <!--// ���¹�ȣ //--></TD>  
<TD class="text"> <c:out value="${iz.TRANSACTION_DT}" /> <!--// �ŷ��Ͻ� //--></TD>  
<TD class="text"> <c:out value="${iz.TRANSACTION_DESCRIPTION}" /> <!--// �ŷ��� //--></TD>  
<TD class="text"> <c:out value="${iz.BRANCH_NAME}" /> <!--// ����� //--></TD>   
<TD class="text"> <c:out value="${iz.PARTY_TAX_ID}" /> <!--// ������ �Ǹ��ȣ //--></TD>  
<TD class="text"> <c:out value="${iz.PARTY_NAME}" /> <!--// �����ָ� //--></TD>  
<TD class="text"> &nbsp;  <!--// �븮�� //--></TD>  
<TD class="text"> &nbsp;<!--// ���� //--></TD>  
</TR>  
<c:set var="counter" value="${counter + 1}" /> 
</c:forEach> 
</c:when>   
<c:when test="${p_str_id=='10'}"> test </c:when>   
<c:otherwise> 
<TR bgcolor=#FFFFFF>  
<TD class="text" colspan=8>  &nbsp; <!--//  NO Data  //--></TD>  
</TR> 
</c:otherwise> 
</c:choose> 
------------------------------------------------------------------------------ 
  
-- �����ȣ ���� ��ȸ @@@@@ 
SELECT * FROM sg_CBBB_ZIPCD 
--; 
==============================================================================================================

- DB ���� �ߺ����� ��Ÿ����(DB ����Ÿ�� �߸� �־���) 
for(resultset = preparedstatement.executeQuery(); resultset.next(); arraylist.add(strlistingcontent)) 
{   
	strlistingcontent = new STRForm();  //Form���� ���� ����� �� 
	strlistingcontent.setTRANSACTION_KEY(resultset.getString("TRANSACTION_KEY"));  //�ŷ� �ĺ���ȣ  
	strlistingcontent.setACCOUNT_NUMBER(resultset.getString("ACCOUNT_NUMBER"));  //���¹�ȣ 
} 
==============================================================================================================

- �ڵ��� ���� 1�� Ư��, �빰��� Ư�� �簡�� 
- 1������ +1�� �߰�(26,500��), 1���� �߰�(11,000��) 
���¿�: *  
�빰��� 2������ ����: 5,220�� 
��: 31,720�� �۱� 
����ȭ��(���� 8392-9011-483859 ������: ����ȭ��)  
==============================================================================================================

- [�ְ����� 2008�� 5�� 3°��] 
�� ���� ���� ����(05/13 ~ 05/16)  
A. STR �ҽ� ���� 
2. ������ŷ��� �߰� ȭ��(�˾�) 
3. �������� ȭ��(�˾�) 
4. ���ǰŷ� ���� ��� - ���� 
5. ���� �߰� ȭ��(�˾�) 
6. ���ǰŷ� ���� ��� - �������� 
7. �������� �߰� ȭ��(�˾�)  
------------------------------------------------------------------------------------------ 

�� ���� ���� ��ȹ(05/19 ~ 05/23)
A. STR �ҽ� ���� 
6. �ŷ����� ��� ȭ�� 
6-1. �ŷ�����(�ż�/�ŵ�) ȭ�� 
6-2. �ŷ�����(�԰�/���) ȭ�� 
6-3. �ŷ�����(��ü�԰�/��ü���) ȭ�� 
7. ���������� ��� ȭ��  
8. ���� ��� ȭ�� 
9. ÷������ ��� ȭ�� 
==============================================================================================================

������������������� 2008.05.16(��) �۾� �����������������
---> 07:00 ~ 22:00 

- �Ｚ AML Prj 
5. ���ǰŷ� ���� ��� - ��������  
5-1. �������� �߰� ȭ��(�˾�)(/Securities  --> /str/pop_Securities.jsp) 
# �������ǰŷ� ���� ����   
------------------------------------------------------------------------------------------------- 

- DB ������� ���� 
Caused by: java.sql.SQLException: �������� �� �ε��� 
����: BRANCH_NAME LIKE '%?%'�� ����Ͽ� ������ �� 
# ���� ���� ��ȸ2 
sasaml.str.get.common_branch2.sql=AND BRANCH_NAME LIKE '%'  ?  '%'  
����: �������� ���ε���... �� �ַ�  ResultSet�� ������ �߸��� �� �߻��Ѵ�. 
 �ڵ���� output�� �ε����� �߸��Ǵ� ��쿡 �ַ� �߻���.  .getInt() ���� üũ 
---------------------------------------------------------------------------- 
java.sql.SQLException: �ε������� ������ IN �Ǵ� OUT �Ű�����:: 2 
�Ƹ��� StringBuffer�� �տ��� ��� ������� ���� �� �����Ű� ��������  
clear�� �ִ���...�𸣰ڴµ� StringBuffer���� ��� ������ ������� �ʰ� ��� append�ؼ� ������ ���� ������    
------------------------------------------------------------------------------------------------- 

-- �ڱ�ռ�ǥ ���� ��ȸ @@@@@ 
SELECT * FROM AMLCORE.FSC_CHECK_INOUT_FACT 
--;  
------------------------------------------------------------------------------ 

- ������(JSTL����) 
 <c:choose>2008-05-16 
<c:when test="${p_suc_id=='10'}">������ ���� ��� ����</c:when> 
<c:when test="${p_suc_id=='11'}"> ������ŷ� �߰�(�˻�) ��� ����</c:when> 
<c:otherwise>no&nbsp;&nbsp</c:otherwise></c:choose> 
==============================================================================================================

������������������� 2008.05.19(��) �۾� �����������������
---> 07:00 ~ 22:30 

- �Ｚ AML Prj 
5. ���ǰŷ� ���� ��� - ��������  
5-1. �������� �߰� ȭ��(�˾�)(/Securities  --> /str/pop_Securities.jsp) 
# �������ǰŷ� ���� ����  
------------------------------------------------------------------------------------------------- 
  
- ������ ������������ ����  
��������: Error 404--Not Found. The server has not found anything matching the Request-URI. 
����: 404 Not found ������ �������� ���ٴ� �����Դϴ�.  
��� ��ġ�Ǿ����� Ȯ���� �� �𸣰ڽ��ϴٸ�..   
Context ������ ������ ���ٸ� index.html �� �ִ��� Ȯ���� �� ���ž� �� �̴ϴ� 
��ġ: 1. ������ �ܼ� Ȯ��(http://localhost:7001/console)  
        --> C:\bea\user_projects\domains\AMLDomain\config.xml ���� Ȯ�� 
2. ����Ŭ DB�� ���� ������ ���Ƽ� �׷� ��쵵 ����(DB Ȯ��) 
==============================================================================================================

-- �޺��ڽ� ó��(JSTL����) 
<select  name="trade_channel_gb" onchange=""> 
<option value="1" <c:if test="${alertId=='1'}"> 'selected' </c:if>>   <!--// Null  //--></option> 
<option value="06" <c:if test="${alertId=='06'}"> 'selected' </c:if>> �ݼ���  <!--// �ݼ��� //--> </option> 
<option value="07" <c:if test="${alertId=='07'}"> 'selected' </c:if>> ���������<!--// ��������� //--> </option  
</select> 
==============================================================================================================

-- ���̺� ���� 
ALTER TABLE STR_SECURITIES_TRADE_INFO MODIFY (  
 SECURITIES_NO    VARCHAR (30)     --���������� ��ȣ(��ǥ��ȣ)  
) 
--;  
==============================================================================================================

-- �������ǰŷ� ���� @@@@@ 
SELECT * FROM STR_SECURITIES_TRADE_INFO 
--; 
-- �������ǰŷ� ���� ���� @@@@@ 
-- DELETE FROM STR_SECURITIES_TRADE_INFO 
--; 
==============================================================================================================

- ���� ���� ���� ���� 
2008.05.17 ���� ȸ�� 14���� ���� ---> (10���� �̳�) 
�Ｚ CMA �Ա� 79,320�� 
==============================================================================================================

������������������� 2008.05.20(ȭ) �۾� �����������������
---> 07:00 ~ 22:20 

- �Ｚ AML Prj 
8. �ŷ����� ��� ȭ��  
9. ���������� ��� ȭ��  
10. ���� ��� ȭ��  
11. ÷������ ��� ȭ��  
12. ���ǰŷ����� ��Ȳ��ȸ(/SuspiLlist  --> /str/displaySuspiLlist.jsp) 
<tiles:add><fmt:message key="alert.menu.forBranch.txt"/></tiles:add> <!--// STR ������ //--> 
------------------------------------------------------------------------------------------------- 
  
-- ���� �ڵ� ��ȸ 
SELECT * FROM STR_MASTER  
WHERE GROUP_CODE = 'CHANNEL_CD' AND STR_CODE = '01' 
-- STRATUS_CD:�������, CHANNEL_CD:�ŷ�ä��, TYPE_CD:�ŷ�����, KIND_CD:�ŷ����� PRODUCT_CD:�ŷ���ǰ 
--; 
==============================================================================================================
    
������������������� 2008.05.21(��) �۾� �����������������
---> 07:30 ~ 22:20 

- �Ｚ AML Prj 
12. ���ǰŷ����� ��Ȳ��ȸ(/SuspiLlist  --> /str/displaySuspiLlist.jsp)   
-- ���� �ڵ� ��ȸ 
SELECT * FROM STR_MASTER  
WHERE GROUP_CODE = 'TYPE_CD'   -- AND STR_CODE = '01' 
-- STATUS_CD:�������, CHANNEL_CD:�ŷ�ä��, TYPE_CD:�ŷ�����, KIND_CD:�ŷ����� PRODUCT_CD:�ŷ���ǰ 
--; 
==============================================================================================================

-- STR ID ��ȸ 
SELECT (TO_CHAR(SYSDATE, 'YYYYMMDD')   LPAD(STR_SEQ.NEXTVAL, 4, '0')) AS STR_ID FROM DUAL 
 ------------------------------------------------------------------------------  
- AMLCTR ������ ����(��� ����)   
 CREATE SEQUENCE AMLCTR.STR_SEQ 
  START WITH 1 --���۰� 
  MAXVALUE 9999999999999999999999999999 --�ִ밪 
  MINVALUE 1 --�ּҰ� 
  NOCYCLE 
  NOCACHE --ĳ��: Oracle Server�� �̸� �����ϰ� �޸𸮿� ������ ���� �� 
  NOORDER 
 ; 
----------------------------------------------------  
-- DROP SEQUENCE AMLCTR.STR_SEQ;  
SELECT STR_SEQ.nextval FROM DUAL;  
---------------------------------------------------------------------------------------------- 
-- STR ���� ���� ��Ȳ(STR_ALERT_STATUS) 
SELECT (TO_CHAR(SYSDATE, 'YYYY')   LPAD(STR_SEQ.NEXTVAL, 6, '0')) AS DDDD FROM DUAL 
==> 2008000001   
==============================================================================================================

- DB ��ȸ(Loop �ƴҶ�) (JSTL����) 
<c:choose> 
<c:when test="${RpStatusArray!= null && !empty RpStatusArray}">     
<c:forEach var="taSts" items="${RpStatusArray}"><!--// STR ���� ���� ��Ȳ ��ȸ  //-->    
</c:forEach> 
</c:when></c:choose>  

<table align="center" border=1 width="300">  
<tr>  
<td align="center">�����������</td> 
<td> <c:choose><c:when test="${tasts.status_cd == '01'}"><input type="text" name="ststus"  value="�ۼ���" readonly></c:when> 
 <c:when test="${tasts.status_cd == '02'}"> <input type="text" name="ststus"  value="���" readonly></c:when> 
 <c:when test="${tasts.status_cd == '03'}"> <input type="text" name="ststus"  value="������" readonly></c:when> 
  <c:when test="${tasts.status_cd == '04'}"> <input type="text" name="ststus"  value="�ݼ�" readonly></c:when> 
  <c:when test="${tasts.status_cd == '05'}"> <input type="text" name="ststus"  value="��ü����" readonly></c:when> 
  <c:when test="${tasts.status_cd == '06'}"> <input type="text" name="ststus"  value="���ǿϷ�" readonly></c:when> 
  <c:when test="${tasts.status_cd == '07'}"> <input type="text" name="ststus"  value="����Ϸ�" readonly></c:when> 
 <c:when test="${tasts.status_cd == null  tasts.status_cd == ''}"> <input type="text" name="ststus"  value="" readonly></c:when> 
 <c:otherwise> </c:otherwise></c:choose>    
 </td>  
</tr>  
<tr> 
<td align="center">�������</td> 
<td><input type="text" name="str_create_date"   value="<c:out value='${tasts.str_create_date}'/>" readonly></td>    
</tr>  
</table>  
------------------------------------------------------------------------------------------------- 

- üũ�ڽ����� üũ�� ���� �ΰ� �̻��̸� 
 <form name="fname" action="Check1.jsp" method="post" onsubmit="return check_submit();">  
<table align="center" border=1 width="300">  
<tr>  
<td align="center">�� ��</td> <td>�� ��1</td> <td>�� ��2</td>  
</tr>  
<tr>  
<td><input type="checkbox" name="chk" value="01">001</td>  
<td>�� ��1</td> <td>�� ��1</td> </tr>  
<tr>  
<td><input type="checkbox" name="chk" value="02">002</td>  
<td>�� ��2</td> <td>�� ��2</td> 
</tr>  
</table> 

<%    
String[] ex = request.getParameterValues("chk"); //���� ������ �ϼ��������Ƿ� �迭 ���� 
  
int size = ex.length;// �迭�ȿ� ������ ������ �ľ��մϴ�. üũ�ǰ���  
  
if(ex != null){ // �迭 ex ���� ������ null �� �ƴ϶�� ����    
for(int i = 0; i < size; i++) {    
out.println(ex[i] + "<br>");  // ����� �մϴ� �迭[i] ��° ������  
}  
}  
%>  

document.getElementsByName("chkSdm_sub").length �̷��� ����ϼŵ� �ذ�˴ϴ�. 
==============================================================================================================

 - �Ϳ��� 
�̷��̺����İ�(http://www.ear75.com) 
 - �񴢱�� 
������ �񴢱��(http://www.penilee.co.kr)   
����Ư���� �߱� ������ �� ��ȯ���� 3��  T) 02-779-4400, 4500   
������Ʈ�� �񴢱��(http://www.clinicmetro.com)  
����Ư���� ���α� �Ź���1�� 25  T) 02-738-9115 

 - ��Ȱ�� ���� 
http://www.bestrecycle.com/index.htm 
http://www.korea-recycle.com/index.html 

 - ���ϸ��� ���� ����,������Ÿ 
http://blog.naver.com/sgmain?Redirect=Log&logNo=150003802783 
==============================================================================================================

������������������� 2008.05.22(��) �۾� �����������������
---> 07:20 ~ 21:00  -> UEFA�� è�Ǿ� ���� ���� ���(1:1 PK 5:4), ����, �Ӹ� ����(�籸, ��) 

- �Ｚ AML Prj 
9. ���������� ��� ȭ��(/AddTradeSearch  --> /str/SubjQuestion.jsp): SubjQuestion 
10. ���� ��� ȭ��(/AddTradeSearch  --> /str/SubjQuestion.jsp): SubjQuestion  
==============================================================================================================

- ���� ��Ʈ�� �ޱ� 
String  relation = request.getParameter("relation");   
 - �������� �迭�� �ޱ� 
String [] relation = request.getParameterValues("relation"); 
------------------------------------------------------------------------------------------------- 
   
<b>request.getParameterNames() �޼ҵ� ���</b><br> 
<% 
    Enumeration enums = request.getParameterNames(); 
    while(enums.hasMoreElements()) { 
        String name = (String)enums.nextElement(); 
%> 
        <%= name %> 
<% 
    } 
%> 
==============================================================================================================

- DB ���� 
 Caused by: java.sql.SQLException: �������� �� �ε��� 
 ����: DB ���� ����...preparedstatement.setString(1, p_str_id); // str_id ���� ���� 
==============================================================================================================

������������������� 2008.05.23(��) �۾� �����������������
---> 07:00 ~ 18:00  --> ��ȭ�뱳 ������(��������, ��������) 

- �Ｚ AML Prj 
10. ���� ��� ȭ��(/AddTradeSearch  --> /str/SubjQuestion.jsp): SubjQuestion 
8. �ŷ����� ��� ȭ��(/AddTradeSearch  --> /str/SubjQuestion.jsp): TradeType, TradeTypeOri 

 - [JSP- null�� ó��] 
String p_rdoTrade_channel_gb =(httpservletrequest.getParameter("rdoTrade_channel_gb")== null)? "":  
httpservletrequest.getParameter("rdoTrade_channel_gb"); //�ŷ� �ŷ�ä���ڵ�(���� ��ư) 
------------------------------------------------------------------------------------------------- 

- DB ���� 
��������: CCaused by: java.sql.SQLException: �������� �� �̸� 
 com.sas.aml.service.ServiceException: Error getting STR Information for alert 
at com.sas.aml.str.service.STRService.getDescription(STRService.java:473) 
��ġ: ����(STRService)�� getDescription() �Լ��� ���� �ʵ带 �ϳ��� ����鼭 Ȯ�� 
------------------------------------------------------------------------------------------------- 
��������: java.sql.SQLException: �ε������� ������ IN �Ǵ� OUT �Ű�����:: 2 
����: DB ���� ����...preparedstatement.setString(1, p_str_id); //str_id ���� ����� ���� �� �� 
==============================================================================================================

������������������� 2008.05.24(��) �۾� �����������������
---> 08:50 ~ 20:30 --> �����౸(06:30 ~ 07:20): �������� ��, ����(������ ������ ������ �񴢱��: �����̱�) 

- �Ｚ AML Prj 
8. �ŷ����� ��� ȭ��(/AddTradeSearch  --> /str/SubjQuestion.jsp): TradeType, TradeTypeOri  
1. ���ǰŷ� ���� ��� 
�ӽ�����, �������, ���� �� ����� Tab���� �̵� 
2. ������ŷ��� �߰� ȭ��(�˾�) 
==============================================================================================================

- ����ȯ(JSP, JAVA ����) 
 int p_count =  Integer.parseInt(str_count); // ��û���� ���� �� ��  

- ����ȯ(javascript ����) 
var test1 = '8'; 
int test2 = parseInt(test1);  //String --> int  
==============================================================================================================

- ĭ�����((�����̱�)�� ġ��  
ĭ��ٱ��� ���ڴ� �������� �����ٰ� �����ϰ� ���Ⱑ ���� ������ ���� Ʒ��� �����մϴ�. 
ĭ��ٴ� ��Ʈ������ ��ȯ������ ��ü�� �鿪���� ������ ���� �� ���� �� �����մϴ� 
- ĭ��� �� ���� 
1. �������·� �����ؾ� �մϴ�. ��� �ӿ��� ����ǰ���� �ٲٰ� ���� �Ŀ��� �����ϰ� ���� ��Ű�ʽÿ�. 
2. ���ڸ��� �� ���� �ӿ��� ���� �ʰų� �����θ� �� ��ǰ�� ����Ͻʽÿ�. 
3. ��� �ӿ��� �� ���� �Ա� �� ������ �������Ѽ� �����ʽÿ�. 
4. ������ �� ��� ���� ���Ŀ� ���� �������� �԰� ���� ���� ���� ���� �� ���� ������ ���� �����ʽÿ�.  
5. �� ���� ������ �ﰡ �Ͻʽÿ�.   
==============================================================================================================

- ��ȫ�� ��ȥ�� ���Ǳ�(5����) 
���� 407-11-000838  ������: �̽¿�,  ����ȫ(*) 
--------------------------------------------------------------- 
�ʿ� ��ǰ: ����, ����, ���ڷ�, ��������, ����, ���� 
==============================================================================================================

������������������� 2008.05.26(��) �۾� �����������������
---> 06:50 ~ 00:00  --> ö�� 

- �Ｚ AML Prj 
2. ������ŷ��� �߰� ȭ��(�˾�) 
SELECT  A.ALERT_ID, B.TRANSACTION_KEY, B.ACCOUNT_KEY, D.PARTY_KEY, C.ACCOUNT_NUMBER,  
TO_CHAR(TO_DATE(B.POSTED_DATE_KEY, 'YYYY-MM-DD'), 'YYYY-MM-DD HH24:MI:SS') TRANSACTION_DT,  
F.TRANSACTION_DESCRIPTION, G.BRANCH_NAME, E.PARTY_TAX_ID, E.PARTY_NAME   
FROM FSK_ALERT A, FSK_CASH_FLOW_ALERT B,  FSC_ACCOUNT_DIM C, FSC_PARTY_ACCOUNT_BRIDGE D,  
FSC_PARTY_DIM E, FSC_TRANSACTION_DIM F, FSC_BRANCH_DIM G  
WHERE A.ALERT_ID = B.ALERT_ID AND B.ACCOUNT_KEY = C.ACCOUNT_KEY AND C.ACCOUNT_KEY = D.ACCOUNT_KEY  
AND B.BRANCH_KEY = G.BRANCH_KEY   
AND D.PARTY_KEY = E.PARTY_KEY  AND B.ACCOUNT_KEY = F.TRANSACTION_KEY 
AND B.TRANSACTION_KEY = '102' 
--; 
--------------------------------------------------------------------------------------------------------- 

- ������ �۾�, �� �̹��� �����(���伥) 
==============================================================================================================

- TEST ����(���¼� ����) 
http://45.10.10.174:7001/sasaml 
==============================================================================================================

 - MyLG 070 ��ȭ ��û 
��ȭ��ȣ: 070-8222-0898 
www.dacom4u.co.kr(��ȫ�� ȸ��) --> ��ȭ��, ������ ���� 
==============================================================================================================

1. ���׶�̼� ���� �ֱ�(���伥����) 
���� �޴� ���� Ecliptical Marquee Tool --> �� �׸���(���� �׸���) --> Edit --> Stroke Ŭ��  
Stroke �޴�â����: Width: 3 px Color: red Blending: Normal  --> OK Ŭ�� 
------------------------------------------------------------------------------------------------------------- 

����: 235, 238, 221 
�� ��Ȳ��: 241, 96, 34 
==============================================================================================================

A. Ȩ������ ����  
1. ������ ���: �����
http://www.gabia.com ==> URL: http://www.jakn.biz 
2��: 31,300�� 
2. ��ȣ���� ���: ������(http://netsvill.net)  
��: 220,000�� 
--------------------------------------------------------  
��ȣ: ������ ��Ȱ�� ����(���ͺ���ȸ)   
URL: http://www.jakn.biz 
FTP: 211.174.62.33   jakn/jk1505  
�Ȼ��: *@*.* 
jakn/jk1505  
============================================================================================================== 

������������������� 2008.05.27(ȭ) �۾� �����������������
---> 00:00 ~ 00:00 --> ö�� 

- �Ｚ AML Prj 
2. ������ŷ��� �߰� ȭ��(�˾�)  
==============================================================================================================

- # �Ｚ���� AML Proj �Ǽ��� ���� 
connection Pool  
���� : jdbc:oracle:thin:@45.1.40.204:1521:DRISKPRD 

Name: AML REAL_RISK Connection Pool Database Name: DRISKPRD 
Host Name: 45.1.40.204 Database User Name: amlctr/amlctr1  
Data Source Name: AMLRealDS 
 - Ŀ��ƮǮ ���� 
AMLKCtrDS   --> AML REAL_RISK Connection Pool �� ���� 
------------------------------------------------------------------------------  
- DB ���ؽ� ����(�Ǽ���) 
D:\eclipse_T2\sasaml\WebContent\WEB-INF\config\sasaml.config 
sasaml.datasource=AMLKCtrDS  
------------------------------------------------------------------------------ 
# �Ｚ���� AML Proj �Ǽ��� 
  REAL_RISK = 
(DESCRIPTION = 
    (ADDRESS_LIST = 
        (ADDRESS = (PROTOCOL = TCP)(HOST = 45.1.40.204)(PORT = 1521)) 
    ) 
    (CONNECT_DATA =(SERVER = DEDICATED) 
    (SERVICE_NAME = DRISKPRD) 
    ) 
) 
==============================================================================================================

 - ���� ���� 
 httpservletrequest.setAttribute("p_status_cd", resultset.getString("STATUS_CD"));  // ������� 
 -����  �ޱ� 
String p_status_cd =(httpservletrequest.getParameter("p_status_cd")== null)? "00":  
httpservletrequest.getParameter("p_status_cd"); //������� 

- JS ���� 
<script src="STR.js"></script> 
--------------------------------------------------------------------------------------------------------- 

��������: code too large for try statement  
<tiles:insert page="/mypage/member/viewMember.jsp" flush="true"/>   
��ġ: include�� tited�� �κ� ���� 
==============================================================================================================

- ��¥ Ÿ�� ����(�ڸ��� ����) 
trade_start_dt ="2008. 5. 28.";  --> trade_start_dt ="2008-5-28";  
trade_start_dt = replace(trade_start_dt, ".", "-");    //.�� -�� ģȯ 
trade_start_dt = replace(trade_start_dt, " ", ""); // �ΰ� ���ֱ� 
trade_start_dt = trade_start_dt.substring(0, trade_start_dt.length()-1);  //������ -�� ���ֱ� 

//@@@@@@@@@@    ����� ���ִ� �Լ� @@@@@@@@@ 
public String replace(String s, String old, String replacement)  
{  
int i = s.indexOf(old);  
StringBuffer r = new StringBuffer();  

if (i == -1) return s;  
r.append(s.substring(0,i) + replacement);  

if (i + old.length() < s.length())  
r.append(replace(s.substring(i + old.length(), s.length()),old, replacement));  

return r.toString();  
}  
==============================================================================================================

- Query ��(struts����) 
StringBuffer sql = new StringBuffer( 
"SELECT A.ALERT_ID, B.TRANSACTION_KEY, B.ACCOUNT_KEY, D.PARTY_KEY, C.ACCOUNT_NUMBER, \n"+ 
" TO_CHAR(TO_DATE(B.POSTED_DATE_KEY, 'YYYY-MM-DD'), 'YYYY-MM-DD HH24:MI:SS') TRANSACTION_DT, \n"+ 
" F.TRANSACTION_DESCRIPTION, G.BRANCH_NAME, E.PARTY_TAX_ID, E.PARTY_NAME \n"+ 
"FROM FSK_ALERT A, FSK_CASH_FLOW_ALERT B,  FSC_ACCOUNT_DIM C, \n"+ 
" FSC_PARTY_ACCOUNT_BRIDGE D, FSC_PARTY_DIM E, FSC_TRANSACTION_DIM F, FSC_BRANCH_DIM G   \n"+ 
"WHERE A.ALERT_ID = B.ALERT_ID AND B.ACCOUNT_KEY = C.ACCOUNT_KEY  \n"+ 
"        AND C.ACCOUNT_KEY = D.ACCOUNT_KEY AND B.BRANCH_KEY = G.BRANCH_KEY   \n"+  
"         AND D.PARTY_KEY = E.PARTY_KEY AND B.ACCOUNT_KEY = F.TRANSACTION_KEY  \n"+  
"       AND (TO_DATE(B.POSTED_DATE_KEY, 'YYYY-MM-DD') >='"+ trade_start_dt +"' AND TO_DATE(B.POSTED_DATE_KEY,  
'YYYY-MM-DD') <='"+ trade_end_dt +"')   \n"); 
if( account_no.length()> 0) { // ���¹�ȣ�� �����ϸ� 
sql.append("    AND C.ACCOUNT_NUMBER ='"+ id_type_nm +"'  \n"); 
} else {   
sql.append("   AND C.ACCOUNT_NUMBER ='"+ id_type_nm +"'  \n"); 
} 
System.out.println("[/STRService.java]:[getSTRsByAlert()]:[sql]"+ sql);  
preparedstatement3= prepareStatement(connection, sql.toString()); 

for(resultset = preparedstatement3.executeQuery(); resultset.next(); arraylist.add(strlistingcontent)) 
{  
System.out.println("[/STRService.java]:[getSTRsByAlert()]:[TES_3]"); 
strlistingcontent.setTRANSACTION_KEY(resultset.getString("TRANSACTION_KEY"));  //�ŷ� �ĺ���ȣ   
strlistingcontent.setPARTY_TAX_ID(resultset.getString("PARTY_TAX_ID"));   //������ �Ǹ��ȣ 
strlistingcontent.setPARTY_NAME(resultset.getString("PARTY_NAME"));    //������ 
}   
resultset.close(); 
==============================================================================================================

������������������� 2008.05.28(��) �۾� ����������������� 
---> 00:00 ~ 18:00  --> AML �ý��� �ÿ�ȸ(15��, ���� �� IT ������, AML ȸ��(�����, ����(�͹�), �뷡��) 

- �Ｚ AML Prj 
2. ������ŷ��� �߰� ȭ��(�˾�) 
==============================================================================================================

������������������� 2008.05.29(��) �۾� �����������������
---> 07:30 ~ 18:00  --> ���� ���� ����(����, �Ӹ�): ���� -> �籸 -> ������ 

- �Ｚ AML Prj 
2. ������ŷ��� �߰� ȭ��(�˾�)
32712969050, 42238615001    
==============================================================================================================

- �޿� ������ ������ �ο� �ϴ� ��  
SQL> SELECT empno, ename, sal,  
        RANK() OVER (ORDER BY sal DESC ) as rk 
        FROM emp;  
- �׷캰�� ������ �ο� �ϴ� �� 
SQL> SELECT deptno, ename, sal,  
       RANK() OVER (PARTITION BY deptno ORDER BY sal DESC ) as rk  
       FROM emp ; 
 - DENSE_RANK( ) - �ߺ� RANK�� ���� �����ϰ� numbering�� �մϴ�.  
(1��, 2��, 2�� �̷��� 2���� �ߺ��Ǿ��µ� 4���� �ƴ϶� 3���� �ο� �˴ϴ�.) 
SQL> SELECT empno, ename, sal,   
       DENSE_RANK() OVER (ORDER BY sal DESC ) as rk 
       FROM emp;     
==============================================================================================================

- [�ְ����� 2008�� 5�� 5°��]
�� ���� ���� ����(05/26 ~ 05/30)
A. STR �ҽ� ���� 
2. ������ŷ��� �߰� ȭ��(�˾�)  
B. �ÿ�ȸ �غ� 
������ �۾�, �ҽ� ����  
==============================================================================================================

������������������� 2008.05.30(��) �۾� �����������������
---> 11:30 ~ 15:00  --> ���� �湮(����, ���� ���): ��� ���� ���� 

- �Ｚ AML Prj 
1. �Ｚ AML Prj ö��
==============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������