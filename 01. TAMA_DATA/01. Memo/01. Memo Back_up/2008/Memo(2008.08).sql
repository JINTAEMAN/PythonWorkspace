

�����������������������������������������������������������
+---------------------------------------------// Memo(2008.08) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2008.08.01(��) �۾� �����������������
---> 07:40 ~ 22:00 --> ���¿� ���� ����(���̹�â�� PL:SK), ������ ���� ��ü 

- ���� Ȩ ������ Prj
1. ��������ȸ(II)[������ȸ] 
 1) ���������(Tab)   
com.kyobo.kblcm.cyber.in.cm.action.CYINAM_accountAction.java 
kblcm.cy.si.ii.action.CYSIII_accountAction.java --> YC122usCall 
CYSIII_main01.jsp, CYSIII_account_tab01.jsp  

- ��ȭ������_���� 
http://127.0.0.1:8080/KBLCM/in/gwmyAppliIntro.do  
==============================================================================================================

- ��ǰ�ڵ�(�����ϴ� �� / �Ǹ����� �� ��) 
��������(1000126),  
�����÷������غ���(1000428 / 1000317) ,  
������ü���庸��(1000392 / 1000417),  
���������κ�������(1000409) 
�����Ѹ�����������(1000447) 
==============================================================================================================

- ���κ��� ��ü �λ� 
(��) IT KUDOS ����ȯ �̻�  HP) * 
IT KUDOS ������ 2���� ���̹�â�� ���� 
==============================================================================================================

<form id="form1" action="UI_CY_0001_home_���̹�â��_������ȸ_��������ȸ_container.html" method="post"> 
<a style="text-decoration:underline;" href="javascript:" onclick="submitToLayer({formId:'form1', layerId:'sample1', width:'750'});">12313**34345</a> 
</form>  
==============================================================================================================

������������������� 2008.08.02(��) �۾� �����������������
---> 07:00 ~ 18:00  --> ���ҿ���(�������, ���̽�Ƽ) 

- ���� Ȩ ������ Prj
1. ��������ȸ(II)[������ȸ] 
 1) ���������(Tab)   
com.kyobo.kblcm.cyber.in.cm.action.CYINAM_accountAction.java 
kblcm.cy.si.ii.action.CYSIII_accountAction.java --> YC122usCall 
CYSIII_main01.jsp, CYSIII_account_tab01.jsp  

- ��ȭ������_���� 
http://127.0.0.1:8080/KBLCM/in/gwmyAppliIntro.do  
==============================================================================================================

 - ���� 
����: [DEBUG] - Error while retrieving generic property class for property=resultMap 
java.lang.NullPointerException 
����: jsp ���Ͽ��� resultMap �Լ��� ���� �� �ϴ�  ������ ����( Action java �ܿ��� resultMap ����� �� ��) 
var ajax = new kbl.Ajax('resultDiv', true, true); //===> Ȯ���� �� 
-------------------------------------------------------------------------------------------- 

- ���� 
����: ibus.jcon.cics.CICSException: ECI_ERR_RESOURCE_SHORTAGE(-16) 
����: Host interface ����(�ź��� ��Ʈ�� ������ ����) 
��ġ: ������ ���忡�� �����ؼ� ��ġ�� �޾ƾ� �� 
==============================================================================================================

������������������� 2008.08.03(��) �۾� �����������������
---> 11:30 ~ 20:30   --> ���� �౸ 

- ���� Ȩ ������ Prj
1. ������ȸ �μ��ΰ� ���� 
��������ȸ(�� Ȯ��, ��â ���� Ȯ��) 
�ݵ������Ȳ��ȸ(�ŷ�������ȸ: �޺��ڽ� Ȯ��(ajax �̿�)  
==============================================================================================================

������������������� 2008.08.04(��) �۾� �����������������
---> 06:30 ~ 22:30   --> (��) IT KUDOS ����(3��) 

- ���� Ȩ ������ Prj
1. ���̹� â�� ���� �ڷ� �����(���̹�â�� �������̽� ���� �۾�-v4.0.doc) 
- EJB -> SPRING���� ���� 
- ��Ÿ(���� ���� �м�) 
============================================================================================================== 

- �������� IR 
http://127.0.0.1:8080/KBLCM/ir/subMain.do 
http://127.0.0.1:8080/KBLCM/ir/irkokuopOperationReport.do?docGbCd=08 
- ����ä��  
http://127.0.0.1:8080/KBLCM/rm/rmMain.do 
==============================================================================================================

- ���̹� â�� 
������ �븮(�������: ����)   
����ȭ ����(�������): * 
�輺�� �븮(���κ���: ����) 
Ȳ��ȯ ����(���κ���): * 
==============================================================================================================

������������������� 2008.08.05(ȭ) �۾� �����������������
---> 06:10 ~ 01:00   --> ö��(�߽�: ���(���� ��)) 

- ���� Ȩ ������ Prj
1. ����༱��[�������>��������]   ===> ������, HTML ����(11��) 
http://127.0.0.1:8080/KBLCM/cy/CYCIRITC_selTrgCon.do 
kblcm.company.cy.ri.tc.action.COCYRITC_selTrgConAction  
--> kblcm.cy.ci.ri.tc.action.CYCIRITC_selTrgConAction.java --> YC122usCall 
CYCIRITC_selTrgCon_lst.jsp 
  
- �������� �α���(http://100.1.131.106) ===> �Ǽ���(K1), �׽�Ʈ ����(K5, K9) 
http://100.1.131.106/company/cocy_submain.do?p_cmd=list&layer=01  
==============================================================================================================

- DB ServiceBean ���� ���� 
���� ����: 
[08/05 16:52:01] [ERROR] - Context initialization failed 
org.springframework.beans.factory.BeanCreationException: Error creating bean with name  
'CYCIRITC_loginServiceBean' defined in ServletContext resource  
[/WEB-INF/conf/context/cyContext.xml]: Error setting property values; nested exception 
is org.springframework.beans.NotWritablePropertyException: Invalid property 'CYCIRITC_loginDAO'  
of bean class [kblcm.cy.ci.ri.tc.service.CYCIRITC_loginServicelmpl]:  
Bean property 'CYCIRITC_loginDAO' is not writable or has an invalid setter method.  
Does the parameter type of the setter match the return type of the getter? 

��ġ1: CYCIRITC_loginServicelmpl.java ���Ͽ��� CYCIRITC_loginDAO�� �ҹ��� ó�� 
CYCIRITC_loginDAO --> cyciritc_loginDAO  
��ġ2: CYCIRITC_loginServicelmpl.java ���Ͽ��� get, set ó�� 
public CYCIRITC_loginDAO getCyciritc_loginDAO() {  
return cyciritc_loginDAO; 
}  
public void setCyciritc_loginDAO(CYCIRITC_loginDAO cyciritc_loginDAO) {  
this.cyciritc_loginDAO = cyciritc_loginDAO; 
}   
==============================================================================================================

<!-- // ID-��й�ȣ �α��� ó�� DAO --> 
<bean id="CYCIRITC_loginServiceBean" class="kblcm.cy.ci.ri.tc.service.CYCIRITC_loginServicelmpl"> 
<property name="CYCIRITC_loginDAO" ref="CYCIRITC_loginDAO"/> 
</bean>  

Error creating bean with name 'CYCIRITC_loginServiceBean' defined in ServletContext resource 
==============================================================================================================

- �α���(�������) 
http://127.0.0.1:8080/KBLCM/cy/CYCOLO_login.do 

1. ���� ���� 
CorpLoginContext SessionVO = new CorpLoginContext();   //����� �α��� ����  
                       
SessionVO.setLoginId(sUserId); 
SessionVO.setLoginPassword(sUserPasswd); 
SessionVO.setResd_no(sJuNo); // �ֹε�Ϲ�ȣ ==> �߰� 
SessionVO.setLogin_gb(sLoginGb);    // �α��� ���� ==> �߰�  
SessionVO.setUser_type(sUseGb);    // ����ڱ���(�ǹ���,������): ������ 
SessionVO.setNice_grade(loginVO.getCorp_grade()); // ������ ==> �߰� 
SessionVO.setWork_gb("2");     // �������� ==> �߰� 
SessionVO.setPolicyNo(policyNo);    //���ǹ�ȣ  
SessionVO.setUser_auth(loginVO.getUser_auth()); 

Map<Object, Object> Session = ActionContext.getContext().getSession(); 
Session.put("corpContext", SessionVO);  // ���� ����  
 -------------------------------------------------------------------------------------------- 

2. ���� �ޱ� 
Map<Object, Object> Session = ActionContext.getContext().getSession();  
CorpLoginContext sessionVO = (CorpLoginContext)Session.get("corpContext");  //����� �α��� ����  

String szUserId = sessionVO.getLoginId(); // ��ȸ�����̵� 
String szUserPasswd = sessionVO.getLoginPassword();   // ��й�ȣ 
String ju_no = sessionVO.getResd_no();   //�ֹι�ȣ  
String szUserType = sessionVO.getUser_type();  //����ڱ���(�ǹ���,������)  
String login_gb = sessionVO.getLogin_gb();  //�α��� ���� 
String szSecuNo = sessionVO.getPolicyNo();  //���ǹ�ȣ  
-------------------------------------------------------------------------------------------- 

=============  EW00EW74 [ECW074OD] �Է°� ============= 
EW00EW74_I : EW00_USER_ID [tama] 
EW00EW74_I : EW00_USER_PSWD [kyobo01] 
EW00EW74_I : EW00_SYJ_GB [1] 
EW00EW74_I : EW00_LOGIN_GB [2] 
EW00EW74_I : EW00_JU_NO [7201102352035] 
>> Communication is null, CTG Communication settimg.( EU00EW74 : 100.1.131.106:2006 ) 
CICS ECI Call Result value : 0 
EW00EW74_M : MSG_CODE [S00001]   ===> // ��ϵ� ���̵� �ƴ� 
-------------------------------------------------------------------------------------------- 

-- �α��� �������  
select PASSWD_CNT, ACCESS_DT, ACCESS_TIME 
 from TB_COCYM001 
 where ID = ? order by ID fetch FIRST 1 ROWS ONLY 
--; 
==============================================================================================================

- ���� ǥ�� ����(13:00 ~ 14:10) 
���̹�â�� �ҽ� ���ַ� ����(����������� �븮 2��, (��) IT KUDOS ���� 4��) 
==============================================================================================================

-  ȸ��(16:00 ~ 16:40) 
1. ���� Deploy(��а� ��� PL���� �� ��) 
2. catch SQLEXception ��� 
3. @Transaction(Reader =true) ��� 
4. DAO ȣ��� Spring ��� --> ���� �ҽ��� ����� �� 
- ���߼���(Deploy) 
https://10.33.3.19:9049/console/logon.jsp  
- ������ȸ(���̹�â��): ���߼��� 
http://10.33.3.19:9080/KBLCM/cy/CYCOLO_simple_login.do 
==============================================================================================================

- �μ��ΰ�(����ö ����) 
1. �������� �������(�������>��������) 
2. ����û��(�������� ����û�� ��Ʈ�� �����Ͽ� ������ �����ϱ��� ����� �شٰ� ��) 
==============================================================================================================

������������������� 2008.08.06(��) �۾� �����������������
---> 05:00 ~ 20:40 --> (��) IT KUDOS ö��(2��), ����(���̹�â��: ��PL, �����, �̰���) 

- ���� Ȩ ������ Prj
1. ����༱��[�������>��������>�����������] 
http://127.0.0.1:8080/KBLCM/cy/CYCIRITC_selTrgCon.do 
kblcm.company.cy.ri.tc.action.COCYRITC_selTrgConAction 
--> kblcm.cy.ci.ri.tc.action.CYCIRITC_selTrgConAction.java --> YC122usCall 
CYCIRITC_selTrgCon_lst.jsp 
  
������ ����: �ֹι�ȣ: 720110 - 20 choi3252/kyobo01 
������ �븮(09919161/c919161) 
==============================================================================================================

1. �����������[�������>��������] 
 1) ó������ ���� 
http://127.0.0.1:8080/KBLCM/cy/CYCIRISP_notProcess.do    
com.kyobo.kblcm.company.cy.ri.yu.action.COCYRIYU_notProcessAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_notProcessAction.java --> EW00W140odCall  
CYCIRISP_main01.jsp, CYCIRISP_notProcess_lst.jsp  
==============================================================================================================

������������������� 2008.08.07(��) �۾� �����������������
---> 06:30 ~ 23:00  --> ������ ��ü(�������� B/D 10�� ����), ����(C9: 10�� 31��, 450) 

- ���� Ȩ ������ Prj
1. ó������ ����[�������>��������>�����������] 
http://127.0.0.1:8080/KBLCM/cy/CYCIRISP_notProcess.do    
com.kyobo.kblcm.company.cy.ri.yu.action.COCYRIYU_notProcessAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_notProcessAction.java --> EW00W140odCall  
CYCIRISP_main01.jsp, CYCIRISP_notProcess_lst.jsp  
==============================================================================================================

1. �������� ����[�������>��������>�����������] 
http://127.0.0.1:8080/KBLCM/cy/CYCIRISP_businessProcessAction.do 
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_businessProcessAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_businessProcessAction.java --> EW10EW22odCall 
CYCIRISP_businessProcess_lst.jsp 
------------------------------------------------------------------------------------------ 

1. ����Ϲݻ��� ���� �����Ȳ ��ȸ[�������>��������>�����������>�������� ����]  
  1-1) ����Ϲݻ��� ���� �����Ȳ ��ȸ 
 http://127.0.0.1:8080/KBLCM/cy/CYCIRISP_generalContractRslt.do 
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_generalContractRsltAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_generalContractRsltAction.java --> EW10EW24odCall 
CYCIRISP_generalContractRslt.jsp 
==============================================================================================================

- �ڹٽ�ũ��Ʈ ���� 
����: kbl.cy.ci�� ã�� �� �����ϴ�. 
����:  javascript�� 2������ �Ǿ� ������ �̷� ������ �� 
��ġ: CYCIRITC_selTrgCon_lst.jsp ���Ͽ��� javascript �κ� ���� 
<script type="text/javascript" src="/KBLCM/js/common/common.js"></script> 
------------------------------------------------------------------------------------------ 
- �ҽ� ���� 
����: Struts Problem Report 
Struts has detected an unhandled exception:   
����: Action.java ���Ͽ��� ������ �� 
==============================================================================================================

 - trim() �Լ�(/EW00EW76odCall.java����) 
String EW76_JG_NAME2 = CY_commonUtil.strTrim(EW76_JG_NAME); 
EW76_JG_NAME2 = CY_commonUtil.replace(EW76_JG_NAME2, "��", ""); 
==============================================================================================================

- ȸ�� �Ұ� 
http://127.0.0.1:8080/KBLCM/in/ceoNewslist.do 
- ȸ�� �Ұ�(ceo���üҽ� / ����) 
http://10.33.3.19:9080/KBLCM/in/ceoNewslist.do 
==============================================================================================================

- ���� �ٿ�ε� 
<!-- �ٿ�ε� �� �������÷��̾�� ���� ��ư ���� --> 
<img src="/KBLCM/images/common/btn_movieDown.gif" style="cursor:hand;" onclick="kbl.in1.TvCf.doDownload();" /> 

// ������ �ٿ�ޱ� 
doDownload: function() { 
	var frm = $("boardForm"); 
	//alert("fileName = " + frm.fileName.value); 
	var url = kbl.APPLICATION_CONTEXT_ROOT + "/in/fileDownload.do"; 
	frm.fileName.value = "master.mpg"; 

	frm.action = url;  
	frm.method = "POST"; 
	frm.submit(); 
}, 
==============================================================================================================

������������������� 2008.08.08(��) �۾� �����������������
---> 06:40 ~ 23:00  --> ����¡ �ø��� ����, ����ö, ������ ���� ö�� 

- ���� Ȩ ������ Prj
1. �������� ����[�������>��������>�����������] 
http://127.0.0.1:8080/KBLCM/cy/CYCIRISP_businessProcessAction.do 
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_businessProcessAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_businessProcessAction.java --> EW10EW22odCall 
CYCIRISP_businessProcess_lst.jsp 
==============================================================================================================

- ���� �߰� ���� 
Map<Object, Object> Session = ActionContext.getContext().getSession(); 
CorpLoginContext SessionVO = (CorpLoginContext)Session.get("corpContext");  //����� �α��� ����  

SessionVO.setPolicyNo(secu_num);    //���ǹ�ȣ 
Session.put("corpContext", SessionVO);  // ���� ����  
==============================================================================================================

- ��ȭ������_���� 
http://127.0.0.1:8080/KBLCM/in/gwmyAppliIntro.do  
<action name="goMyAppliList" class="kblcm.in.in.ko.ng.gw.ap.action.ININKONGGWAP_DefaultAction"> 
    <result type="tiles">in.ng.gw.gwmyAppliView</result> 
</action> 
<!-- ��ȭ������_���� ���� ��ȸ�ϱ� --> 
<definition name="in.ng.gw.gwmyAppliView" extends="in.tabMain"> 
<put-attribute name="ScriptPath" value="/KBLCM/js/service/in/in/ko/ng/gw/ap"></put-attribute> 
<put-attribute name="ScriptName" value="ININKONGGWAP_gwmyAppli"></put-attribute> 
<put-attribute name="tabContent" value="/WEB-INF/jsp/in/in/ko/ng/gw/ap/ININKONGGWAP_gwmyAppli_lst_frm.jsp" ></put-attribute> 
</definition> 
------------------------------------------------------------------------------------------ 

/ININKONGGWAP_gwmyAppli_lst_frm.jsp ���Ͽ���  
 <script> 
// ����Ʈ ��ȸ ȭ�� ���� ��� ��ũ��Ʈ �Լ� 
//kbl.extJS.initializeApplication(kbl.in1.gulsamo.do_list, kbl.in1.gulsamo); 
kbl.extJS.initializeApplication(kbl.in1.gwmyAppli.do_list, kbl.in1.gwmyAppli); 
kbl.PAGE_SIZE = 10; 
</script> 
------------------------------------------------------------------------------------------ 

/ININKONGGWAP_gwmyAppli_lst.js ���Ͽ���  
<div class="cnt_paging" style="margin-top:10px"> 
<s:if test="%{resultMap.boardList.size != null}">    
<!--  ������ ó��  --> 
<s:include value="/WEB-INF/jsp/common/paging.jsp"> 
<s:param name="currPage"> <s:property value="inputMap.condVO.cpage" /></s:param> 
<s:param name="totalCount"> <s:property value="resultMap.totalCount" /></s:param> 
<s:param name="blockSize"><s:property value="inputMap.condVO.pageSize" /></s:param> 
<s:param name="maxLinkedPages" value="10" /> 
<s:param name="scriptname">kbl.in1.gwmyAppli.do_Page</s:param> 
</s:include> 
</s:if> 
</div> 
------------------------------------------------------------------------------------------ 

/ININKONGGWAP_gwmyAppli_lst.js ���Ͽ���  
do_Page: function(page) { 
var frm = $("boardForm"); 
frm.cpage.value = page; 
frm.pageSize.value = kbl.PAGE_SIZE; 
var url = kbl.APPLICATION_CONTEXT_ROOT + "/in/myAppliList.do"; 
var kblAjax = new kbl.Ajax('resultDiv', false, true); 
kblAjax.ajaxCommSubmit(url, frm); 
} 

<action name="myAppliList" class="kblcm.in.in.ko.ng.gw.ap.action.ININKONGGWAP_ListAction"> 
    <result>/WEB-INF/jsp/in/in/ko/ng/gw/ap/ININKONGGWAP_gwmyAppli_lst.jsp</result> 
</action>  
==============================================================================================================

  - json �Խ���(div���·� ���� ������) 
<!-- TV���� --> 
<action name="CfIntro"> 
    <result type="tiles">in.kc.ad.CfListIntro</result> 
</action> 
<action name="tvCflist" class="kblcm.in.in.ko.kc.ad.action.ININKOKCAD_TvCfListAction"> 
    <result type="json" name="success"></result> 
</action> 

<!-- TV/�μⱤ�� INTRO --> 
<definition name="in.kc.ad.CfListIntro" extends="in.main" > 
<put-attribute name="ScriptPath" value="/KBLCM/js/service/in/in/ko/kc/ad"></put-attribute> 
<put-attribute name="ScriptName" value="ININKOKCAD_tvCf"></put-attribute> 
<put-attribute name="content" value="/WEB-INF/jsp/in/in/ko/kc/ad/ININKOKCAD_cf_intro.jsp" ></put-attribute> 
<put-attribute name="titleImage" value="/KBLCM/images/service/in/title_tvPrintAd.gif"></put-attribute> 
</definition> 
  
<script type="text/javascript" src="/KBLCM/js/service/in/in/ko/kc/ad/ININKOKCAD_tvCf.js"></script> 
==============================================================================================================

- 7�� ������Ǽ� �ۼ�, ���� 
���� ����: Ȳ��ȣ ����(*@*.*) 
���� ������: Ȳ���� ���忡�� ���� 
==============================================================================================================

- �������� �ϰ� û�� ���� ȸ��(13:00 ~ 13:30) 
1. ����ڸ� ������ �븮���� �ñ���� ����(���� �ٽ� �ñ�� ��) 
2. ����� �븮: * 
==============================================================================================================

- ��������(��������) �������� 
1. ���߱Ⱓ(8�� 18�� ~ 22��) 
2. ��û ����Ÿ 
 1) �������� �߰�׺��� 
INPUT: �������߰�� 
�߰�ױ�������(��û) 
���ر޿�(��û)  
 2) ��������>������� 
OUTPUT: �������� <= ������������(��û) 
==============================================================================================================

- ���� Deploy ��� 
1. jar ���� ���� ANT�� ���(commons-net-1.4.1.jar, jakarta-oro-2.0.8.jar) 
Windows --> Preference --> Ant  --> Runtime --> Add External Jars: 2�� ���� ���ε�: Apply  ==> OK 

2. ���� ��ü Update 

3. �ҽ� ���� ���� 
Project --> Build Automatically 

4. bulid.xml(���콺 ������ Ŭ��) --> Run As --> 2. Ant Build  --> �����(2�� �� ��) 
BUILD SUCCESSFUL 
Total time: 64 minutes 55 seconds 
  
5. ���� ���� ������ ����  
 1) url: https://10.33.3.19:9049/ibm/console/logon.jsp(wasadm00/wasadm00 ) 
 2) ���� --> Application Server  -->  
 CMProdApp1, CMProdApp2, CMProdApp3, CMProdApp4(üũ): ���� Ŭ�� ==> Ȯ��(enable��) 
  �޽��� 
   - ������ ���� �Ǿ��ٴ� �޼����� ���� 

 3) CMProdApp1, CMProdApp2, CMProdApp3, CMProdApp4(üũ): ���� Ŭ�� 
   �޽���  
- CMNode01/CMDevApp ������ ���۵Ǿ����ϴ�. JVM �α� ���� �߰� ���λ����� ���    
- CMNode02/CMDevApp ������ ���۵Ǿ����ϴ�. JVM �α� ���� �߰� ���λ����� ���  
- CMNode03/CMDevApp ������ ���۵Ǿ����ϴ�. JVM �α� ���� �߰� ���λ����� ���  
- CMNode04/CMDevApp ������ ���۵Ǿ����ϴ�. JVM �α� ���� �߰� ���λ����� ���  

5. ���� ���� ���� Ȯ�� 
http://10.33.3.19:9080/KBLCM/cy/CYCOLO_login.do ==> ������� 
http://10.33.3.19:9080/KBLCM/cy/CYCOLO_simple_login.do ==> ������ȸ 
==============================================================================================================

- HTML �׽�Ʈ 
http://10.33.165.191/KBLCM 
==============================================================================================================

������������������� 2008.08.09(��) �۾� �����������������
---> 08:20 ~ 20:00   --> �����౸, 2ȸ�ǽ� ���ֱ�(���� Ȯ��) 

- ���� Ȩ ������ Prj
1-1) ����Ϲݻ��� ���� �����Ȳ ��ȸ[�������>��������>�����������>�������� ����]    
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_generalContractRsltAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_generalContractRsltAction.java --> EW10EW24odCall 
CYCIRISP_generalContractRslt_viw.jsp   ======> �Ϸ�  
1-2) �����û�� �����Ȳ ��ȸ[�������>��������>�����������>�������� ����]  
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_insuReqRsltAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_insuReqRsltAction.java --> EW10EW23odCall  
CYCIRISP_insuReqRslt_lst.jsp         ======>  �Ϸ� 
1-2-1) û���� �Է°��[�������>��������>�����������>�������� ����]  
com.kyobo.kblcm.company.cy.ri.ap.action.COCYRIAP_insuReqDetailAction.java 
--> kblcm.cy.si.ii.action.CYCIRISP_insuReqDetailAction.java -> EW10EWA1odCall 
CYCIRISP_insuReqDetail_viw_pop.jsp   ======>  �Ϸ� 
1-3) ���޺����� �����Ȳ ��ȸ[�������>��������>�����������>�������� ����] 
com.kyobo.kblcm.company.ad.cy.ri.ra.action.COADCYRIRA_appUnpaidRetireAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_unpaidRetireAction.java -->   EW30EW36odCall 
CYCIRISP_appUnpaidRetire_lst.jsp   
1-4) ������� �����Ȳ ��ȸ[�������>��������>�����������>�������� ����] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_unpaidRetireAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_unpaidRetireAction.java --> EW10EW17odCall 
CYCIRISP_unpaidRetire_lst.jsp   ======>  �Ϸ� 
1-5) ����� ���� �����Ȳ ��ȸ[�������>��������>�����������>�������� ����] 
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_userChangeRsltAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_userChangeRsltAction.java --> EW10EWA4odCall 
COCYRISP_userChangeRslt_viw.jsp  ======>  �Ϸ� 
1-6) �����û �����Ȳ ��ȸ[�������>��������>�����������>�������� ����] 
com.kyobo.kblcm.company.cy.ri.ap.action.COCYRIAP_transferReqApprovalAction.java 
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_transferReqApprovalAction.java --> EW10EW154odCall 
CYCIRISP_transferReqApproval_lst.jsp  ======>  �Ϸ� 
==============================================================================================================

- recv_data �� 
[recv_data]{ 
param_data={status=01, company_nm=���֣��������������հ����繫��, COM_O_CUR_COUNT=25, secu_no=0001930},  
recv_data=[{COM_O_SC_GB_CODE=31, COM_O_SC_YMD=2008-08-06, COM_O_SC_AMT=1,057,969, COM_O_SMSC_SEQ=68,  
  COM_O_SC_CNT=1, STATUS=�����ڰ�����, COM_O_SC_GB=�����Ͻñ�, COM_REG_DT=2008-08-06, IN_SEL=2,  
  COM_O_CR_NAME= �����Ͻñ� û��, COM_O_SC_YMD_GB=N, COM_O_SC_NAME=������ , COM_O_JH_ST=10},  
{COM_O_SC_GB_CODE=31, COM_O_SC_YMD=2008-08-09, COM_O_SC_AMT=5,188,777, COM_O_SMSC_SEQ=92,  
  COM_O_SC_CNT=2, STATUS=�����ڰ�����, COM_O_SC_GB=�����Ͻñ�, COM_REG_DT=2008-08-09, IN_SEL=2,  
  COM_O_CR_NAME= �����Ͻñ� û��, COM_O_SC_YMD_GB=N, COM_O_SC_NAME=������  , COM_O_JH_ST=10}]} 
- ��ȸ��:[<s:property value='resultMap.recv_data.recv_data.size'/>] 
==============================================================================================================

������������������� 2008.08.10(��) �۾� �����������������
---> 07:00 ~ 18:00  --> ����(����, ���̻�:������ ����) 

- ���� Ȩ ������ Prj
1-1) ����Ϲݻ��� ���� �����Ȳ ��ȸ[�������>��������>�����������>�������� ����]    
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_generalContractRsltAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_generalContractRsltAction.java --> EW10EW24odCall 
CYCIRISP_generalContractRslt_viw.jsp 
1-2) �����û�� �����Ȳ ��ȸ[�������>��������>�����������>�������� ����]  
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_insuReqRsltAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_insuReqRsltAction.java --> EW10EW23odCall  
CYCIRISP_insuReqRslt_lst.jsp 
1-2-1) û���� �Է°��[�������>��������>�����������>�������� ����]  
com.kyobo.kblcm.company.cy.ri.ap.action.COCYRIAP_insuReqDetailAction.java 
--> kblcm.cy.si.ii.action.CYCIRISP_insuReqDetailAction.java -> EW10EWA1odCall 
CYCIRISP_insuReqDetail_viw_pop.jsp 
1-3) ���޺����� �����Ȳ ��ȸ[�������>��������>�����������>�������� ����] 
com.kyobo.kblcm.company.ad.cy.ri.ra.action.COADCYRIRA_appUnpaidRetireAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_unpaidRetireAction.java -->   EW30EW36odCall 
CYCIRISP_appUnpaidRetire_lst.jsp   
1-4) ������� �����Ȳ ��ȸ[�������>��������>�����������>�������� ����] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_unpaidRetireAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_unpaidRetireAction.java --> EW10EW17odCall 
CYCIRISP_unpaidRetire_lst.jsp 
1-5) ����� ���� �����Ȳ ��ȸ[�������>��������>�����������>�������� ����] 
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_userChangeRsltAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_userChangeRsltAction.java --> EW10EWA4odCall 
CYCIRISP_userChangeRslt_viw.jsp 
1-6) �����û �����Ȳ ��ȸ[�������>��������>�����������>�������� ����] 
com.kyobo.kblcm.company.cy.ri.ap.action.COCYRIAP_transferReqApprovalAction.java 
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_transferReqApprovalAction.java --> EW10EW154odCall 
CYCIRISP_transferReqApproval_lst.jsp 
==============================================================================================================

- ��¥ ��ȯ  
sh.put("sinchung_date2", CY_commonUtil.stringToDateForm(COM_O_GJ_DATE, "."));  //��¥��ȯ(.���� ��ȯ) 
String insuPolicyNew = CY_commonUtil.getNumberStar(EW76_JG_NO, 7, 4); // ���ǹ�ȣ(* �տ��� 5�ڸ����� 3�ڸ��� * ó��) 
- trim()�Լ� 
COM_O_CUR_COUNT = COM_O_CUR_COUNT.trim(); 
==============================================================================================================

- �Խ��� ����¡ �ޱ� 
<!-- ����¡ --> 
<div class="cnt_paging MT10">   
	<s:include value="/WEB-INF/jsp/common/paging.jsp"> 
	<s:param name="currPage"><s:property value="inputMap.condVO.cPage" /></s:param> 
	<s:param name="totalCount"><s:property value="resultMap.recv_data.param_data.rcount" /></s:param> 
	<s:param name="blockSize" value="5" /> 
	<s:param name="maxLinkedPages" value="10" /> 
	<s:param name="scriptname">kbl.cy.si.CYSIII_account_lst.do_page</s:param> 
	</s:include>  
</div>  
==============================================================================================================

=============  EW10EW22 [ECW022OD] �Է°� Ȯ�� ============= 
EW10EW22_IN : COM_I_SC_DATE_FR [2008-08-01] //��¥ 
EW10EW22_IN : COM_I_SC_DATE_TO [2008-08-10] //��¥2 
EW10EW22_IN : COM_K_CUR_PAGE [000001]   //������  
EW10EW22_IN : COM_O_TOT_COUNT [null] 
EW10EW22_IN : COM_O_CUR_COUNT [null] 
>> Communication is null, CTG Communication settimg.( EU10EW22 : 100.1.131.106:2006 ) 
CICS ECI Call Result value : 0 
MSG_CODE = [000000] 

=============  EW10EW22 [ECW022OD] �Է°� Ȯ�� ============= 
EW10EW22_IN : COM_I_SC_DATE_FR [2008-08-01] 
EW10EW22_IN : COM_I_SC_DATE_TO [2008-08-11] 
EW10EW22_IN : COM_K_CUR_PAGE [000002]   //������  
EW10EW22_IN : COM_O_TOT_COUNT [null] 
EW10EW22_IN : COM_O_CUR_COUNT [null] 
>> Communication is null, CTG Communication settimg.( EU10EW22 : 100.1.131.106:2006 ) 
CICS ECI Call Result value : 0 
MSG_CODE = [E61001] 
DUMMY : 000000100   
------------------------------------------------------------------------------------------ 

=============  EW10EW23 [ECW023OD] �Է°� Ȯ�� ============= 
EW10EW23_IN : COM_K_SMSC_DATE [2008-08-11]  //��¥ 
EW10EW23_IN : COM_K_SMSC_GB [21]   //�ڵ� 
EW10EW23_IN : COM_K_SMSC_SEQ [9]  //SEQ 
EW10EW23_IN : COM_K_CUR_PAGE [000001]   //������  
>> Communication is null, CTG Communication settimg.( EU10EW23 : 100.1.131.106:2006 ) 
CICS ECI Call Result value : 0 
MSG_CODE = [E70001]  => // ���� �޼���(ȣ��Ʈ ��� ���� �޽��� üũ) 
DUMMY : 000000100   

- EW10EW23odCall.java ���Ͽ��� 
 =============  EW10EW23 [ECW023OD] �Է°� Ȯ�� ============= 
EW10EW23_IN : COM_K_SMSC_DATE [2008-08-06]  //��¥ 
EW10EW23_IN : COM_K_SMSC_GB [21]  //�ڵ� 
EW10EW23_IN : COM_K_SMSC_SEQ [68]  //SEQ 
EW10EW23_IN : COM_K_CUR_PAGE [000001]  //������  
>> Communication is null, CTG Communication settimg.( EU10EW23 : 100.1.131.106:2006 ) 
CICS ECI Call Result value : 0 
MSG_CODE = [E70001]  ==> // ���� �޼���(ȣ��Ʈ ��� ���� �޽��� üũ) 
==============================================================================================================

������������������� 2008.08.11(��) �۾� �����������������
---> 06:30 ~ 21:00  --> ����(�����, �̰���): ����, �� 

- ���� Ȩ ������ Prj
1) �⺻������[�������>��������>������ ��ȸ/����>����Ϲݻ���]     
com.kyobo.kblcm.company.cy.ri.is.action.COCYRIIS_generalContractAction.java 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_generalContractAction.java --> YC122usCall 
CYCIRIIS_main01.jsp, CYCIRIIS_generalContract_viw.jsp 

1-1) ������� �Է�[�������>��������>������ ��ȸ/����>����Ϲݻ���]     
com.kyobo.kblcm.cyber.in.cm.action.CYINAM_accountAction.java 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_generalContractAction --> YC122usCall 
CYCIRIIS_generalContract_upd.jsp 
   
1-2) �����û�Ϸ� [�������>��������>������ ��ȸ/����>����Ϲݻ���]     
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_insuredAltAction 
--> kblcm.cy.ci.ri.is.action.CYSIII_insuredAltAction  --> YC122usCall 
CYCIRIIS_insuredAlt_lst.jsp 
==============================================================================================================

1) �������� ��ȸ[�������>��������>������ ��ȸ/����>��������]  
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIIS_insuredPersonAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonAction --> YC122usCall 
CYCIRIIS_insuredPerson_lst.jsp 

1-1) �������� ��ȸ- ���� �ٿ�ε�[�������>��������>������ ��ȸ/����>��������]  
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIIS_insuredXlsAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredXlsAction 

2) �������� ��������[�������>��������>������ ��ȸ/����>��������] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIIS_generalContractAction.java 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltAction --> YC122usCall 
CYCIRIIS_insuredAlt_lst.jsp  
==============================================================================================================

 - Eclipse CVS ���� 
1. CVS Repository -> New -> Repository Location 
2. Add CVS Repository 
 1) Host: 10.33.165.171   
 2) Repository path: /kyobo 
 3) Authorization: dev02/dev02  
3. Head --> check out(������ Ŭ��) 
==============================================================================================================

-  //�����û�� �����Ȳ ��ȸ(����û��) 
 jsp\company\cy\ri\sp\COCYRISP_insuReqRslt_lst.jsp   
==============================================================================================================

������������������� 2008.08.12(ȭ) �۾� �����������������
---> 07:00 ~ 23:00  --> �¿� �ڰ�(�λ� �����), (��) IT KUDOS ������(6��) 

- ���� Ȩ ������ Prj
1-1) ����Ϲݻ��� ���� �����Ȳ ��ȸ[�������>��������>�����������>�������� ����]    
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_generalContractRsltAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_generalContractRsltAction.java --> EW10EW24odCall 
CYCIRISP_generalContractRslt_viw.jsp   ======> �Ϸ� 
[I/F IN ����] [szDate]2008-08-12[szTableSeq]0001[infdate]2008-08-01[intdate]2008-08-12 
=============  EW10EW24 [ECW024OD] �Է°� Ȯ�� ============= 
EW10EW24_HEAD : LOGIN [kyobo01] 
EW10EW24_HEAD : PASSWORD [kyobo01] 
EW10EW24_HEAD : USER_TYPE [1] 
EW10EW24_HEAD : PROC_TYPE [S] 
EW10EW24_HEAD : SECU_NUM [0003302] 
EW10EW24_HEAD : COMPANY_NAME [�����������֣���������������������������] 
EW10EW24_HEAD : STATUS_CODE [] 
EW10EW24_IN : COM_I_SC_DATE [2008-08-12] 
EW10EW24_IN : COM_I_SMSC_SEQ    [0001] 
>> Communication is null, CTG Communication settimg.( EU10EW24 : 100.1.131.106:2006 ) 
CICS ECI Call Result value : 0 
   
1-2) �����û�� �����Ȳ ��ȸ[�������>��������>�����������>�������� ����]  
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_insuReqRsltAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_insuReqRsltAction.java --> EW10EW23odCall  
CYCIRISP_insuReqRslt_lst.jsp   ======> �Ϸ�   
1-2-1) û���� �Է°��[�������>��������>�����������>�������� ����]  
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_unpaidRetireRsltAction 
--> kblcm.cy.si.ii.action.CYCIRISP_insuReqDetailAction.java -> EW10EWA1odCall 
CYCIRISP_insuReqDetail_viw_pop.jsp  ======> �Ϸ�(�� �۾� �ʿ�)  
1-3) ���޺����� �����Ȳ ��ȸ[�������>��������>�����������>�������� ����] 
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_unpaidRetireRsltAction 
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_unpaidRetireRsltAction -->   EW30EW36odCall  
CYCIRISP_appUnpaidRetire_lst.jsp  ======> �Ϸ� 
1-4) ������� �����Ȳ ��ȸ[�������>��������>�����������>�������� ����] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRISP_unpaidRetireRsltAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_unpaidRetireRsltAction--> EW10EW17odCall 
COCYRISP_joinCancelRslt_lst.jsp  ======> �Ϸ�   

1-5) ����� ���� �����Ȳ ��ȸ[�������>��������>�����������>�������� ����] 
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_userChangeRsltAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_userChangeRsltAction.java --> EW10EWA4odCall 
CYCIRISP_userChangeRslt_viw.jsp  ======>  

1-6) �����û �����Ȳ ��ȸ[�������>��������>�����������>�������� ����] 
com.kyobo.kblcm.company.cy.ri.ap.action.COCYRIAP_transferReqApprovalAction.java 
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_transferReqApprovalAction.java --> EW10EW154odCall 
CYCIRISP_transferReqApproval_lst.jsp  ======> �Ϸ� 
=============  EW10EW154 [ECW154OD] �Է°� Ȯ�� ============= 
EW10EW154_HEAD : LOGIN [kyobo01] 
EW10EW154_HEAD : PASSWORD [kyobo01] 
EW10EW154_HEAD : USER_TYPE [1] 
EW10EW154_HEAD : PROC_TYPE [S] 
EW10EW154_HEAD : SECU_NUM [0003302] 
EW10EW154_HEAD : COMPANY_NAME [] 
EW10EW154_HEAD : STATUS_CODE [] 
EW10EW154_IN : COM_I_SC_YMD     [2008-08-13] 
EW10EW154_IN : COM_I_SMSC_SEQ   [0001] 
EW10EW154_IN : COM_K_CUR_PAGE   [000001] 
EW10EW154_IN : COM_O_SIL_JR_YUL [null] 
EW10EW154_IN : COM_O_TOT_COUNT  [null] 
EW10EW154_IN : COM_O_CUR_COUNT  [null] 
EW10EW154_IN : COM_O_SC_GB      [null] 
EW10EW154_IN : COM_O_PBHJ_NO    [null] 
EW10EW154_IN : COM_O_PBHJ_NM    [null] 
EW10EW154_IN : COM_O_JU_NO      [null] 
EW10EW154_IN : COM_O_GJ_GYE     [null] 
EW10EW154_IN : COM_O_DND_TJ_AMT [null] 
EW10EW154_IN : COM_O_JR_AMT     [null] 
EW10EW154_IN : COM_O_IS_YMD     [null] 
EW10EW154_IN : COM_O_JGJS_YMD   [null] 
>> Communication is null, CTG Communication settimg.( EU10W154 : 100.1.131.106:2006 ) 
CICS ECI Call Result value : 0 
EW10EW154_MSGCODE = [000000] 

1-7) �������� ���� �� ���系��[�������>��������>�����������>�������� ����] 
kblcm.company.cy.ri.sp.action.COCYRISP_insuredAltRsltAction 
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_insuredAltRsltAction --> EW10EW154odCall 
CYCIRISP_insuredAltRslt_lst.jsp  ======> �Ϸ�(������ ������ ���� �۾��� ��) 
==============================================================================================================

- �ڹ� ��ũ��Ʈ 
var url; 
var tb_seq = "<s:property value='resultMap.param_data.tb_seq'/>"; 
var send_date = "<s:property value='resultMap.param_data.send_date'/>"; 
var proc_gb = "<s:property value='resultMap.param_data.proc_gb'/>"; 
var page = fc.getFldVal("page_print", "", frm); 
==============================================================================================================

- �׽�Ʈ ���� ���� ���(106�� ����) 
> cd /was_svr/AppServer/logs/kblcm1  
> tail -f SystemOut.log 
PC: jun8876 
50001188/wldud77 

* secureCRT ���ӹ�� *  
>100.1.131.106 ���� (50001258/ss******)(������ �븮:50001188/wldud77) 
> su - root 
kyobolife  
> clog  kyobolife 
> sna -d s  ===> K5/K9Ȯ�ι�� 
�� �ٽ� �Ӷ� ==> ����ȭ�� > genuine-hacksmw.reg  
==============================================================================================================

������������������� 2008.08.13(��) �۾� �����������������
---> 06:40 ~ 22:40 

- ���� Ȩ ������ Prj
1) �⺻������[�������>��������>������ ��ȸ/����>����Ϲݻ���] 
com.kyobo.kblcm.company.cy.ri.is.action.COCYRIIS_generalContractAction.java 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_generalContractAction 
CYCIRIIS_generalContract_viw.jsp  ======> �Ϸ� 
1-1) ������� �Է�[�������>��������>������ ��ȸ/����>����Ϲݻ���] 
kblcm.company.cy.ri.ms.action.COCYRIMS_generalContractAction 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_generalContractChAction --> EW10EW16odCall 
CYCIRIIS_generalContract_upd.jsp ======> 
1-2) �����û�Ϸ�[�������>��������>������ ��ȸ/����>����Ϲݻ���] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_insuredAltAction 
--> kblcm.cy.ci.ri.is.action.CYSIII_insuredAltAction  --> YC122usCall 
CYCIRIIS_insuredAlt_lst.jsp ======> 
  
2-1) ������� �Է�[�������>��������>������ ��ȸ/����>����Ϲݻ���>�������� ��ǥ��� �� ��ǥ�� ����] 
kblcm.company.cy.ri.ms.action.COCYRIMS_representAction 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_representAction --> YC122usCall 
CYCIRIIS_represent_upd.jsp  ======> 
2-2) �����û�Ϸ�[�������>��������>������ ��ȸ/����>����Ϲݻ���>�������� ��ǥ��� �� ��ǥ�� ����] 
kblcm.company.cy.ri.ms.action.COCYRIMS_representAction 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_representAction --> YC122usCall 
CYCIRIIS_apprvlok_viw.jsp 
  
3) ����Ȯ�μ� �߱�[�������>��������>������ ��ȸ/����>����Ϲݻ���] 
kblcm.company.cy.ri.cr.action.COCYRICR_appJoinConfirmAction 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_appJoinConfirmAction 
CYCIRIIS_appJoinConfirm_viw.jsp  ======>   
==============================================================================================================

-  �ֹι�ȣ(* �տ��� 6�ڸ����� 6�ڸ��� * ó��) 
String juminNo_star = CY_commonUtil.getNumberStar(COM_O_PBHJ_DPJ_NO, 13, 6, "*******"); 
contractVO.setCOM_O_PBHJ_DPJ_NO(CO_Util.SeperateCorpNum(juminNo_star));    //�ֹι�ȣ  
==============================================================================================================

- �� ��巹��(Mac address) 
> ipconfig /all 
==============================================================================================================

������������������� 2008.08.14(��) �۾� �����������������
---> 06:40 ~ 22:50   --> Ź��� ��ǳ�� ����(�������� Prj) 

- ���� Ȩ ������ Prj
1) �⺻������[�������>��������>������ ��ȸ/����>����Ϲݻ���>�⺻������] 
com.kyobo.kblcm.company.cy.ri.is.action.COCYRIIS_generalContractAction.java 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_generalContractAction 
CYCIRIIS_generalContract_viw.jsp  ======> �Ϸ� 
1-1) ������� �Է�[�������>��������>������ ��ȸ/����>����Ϲݻ���>�⺻������] 
kblcm.company.cy.ri.ms.action.COCYRIMS_generalContractAction 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_generalContractChAction --> EW10EW16odCall 
CYCIRIIS_generalContract_upd.jsp ======> �Ϸ�  
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_generalContract_upd.do 

1-1-1)  ������ üũ[�������>��������>������ ��ȸ/����>����Ϲݻ���>�⺻������]  
CYCIRIIS_depositor_pop.jsp ======> �Ϸ�  
1-1-2) ���� Ȯ��[�������>��������>������ ��ȸ/����>����Ϲݻ���>�⺻������] 
kblcm.company.cy.ri.ms.action.CYCIRIIS_depositorAction 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_depositorAction  
CYCIRIIS_depositorRslt_viw.jsp ======> �Ϸ�  
1-2) �����û�Ϸ�[�������>��������>������ ��ȸ/����>����Ϲݻ���>�⺻������] 
kblcm.company.cy.ri.ms.action.COCYRIMS_generalContractAction 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_generalContractAction 
CYCIRIIS_apprvlok_viw.jsp ======>  

1-2-1) ����繫 ���񼭷� �ȳ� 
COCYRIMS_reqDoc_pop.jsp 
--> CYCIRIIS_reqDoc_pop.jsp 
==============================================================================================================

- �ڹٽ�ũ��Ʈ js ���� 
<script src="/KBLCM/js/CN_FormControl.js"></script>  
<script src="/KBLCM/js/CO_Util.js"></script> 
<script src="/KBLCM/js/CN_StringUtil.js"></script> 
<script src="/KBLCM/js/CN_Common.js"></script> 
------------------------------------------------------------------------- 

 - layer �ݱ� 
<a href="javascript:" onclick="top.layers.hide(window.layerId);"> 
 <img src="/KBLCM/images/common/btn_layerClose.gif" class="cnt_layer_close" /></a>[�ݱ�] 
- �Ϲ� â �ݱ�  
<a href="javascript:self.close();">[�ݱ�]</a> 
- ���� ��ũ 
<img helpId ="CYCIRISP_insuReqRslt_lst" src="/KBLCM/images/common/btn_help01.gif"/><!--// ���� //-->  
==============================================================================================================

- �����ȣ ã�� 
 SELECT SIDO  GUGUN  DONG 
 FROM TB_CN00M100 
 WHERE ZIP_CD = '616090' GROUP BY SIDO, GUGUN, DONG    
==============================================================================================================

������������������� 2008.08.15(��) �۾� �����������������
---> 07:41 ~ 18:00   --> ���� �ٹ�, ���ֻ꼺(������, �뷡��): ���̹�â����(���κ���:7, �������:4) 

- ���� Ȩ ������ Prj
2-1) ������� �Է�[�������>��������>������ ��ȸ/����>����Ϲݻ���>�������� ��ǥ��� �� ��ǥ�� ����] 
kblcm.company.cy.ri.ms.action.COCYRIMS_representAction 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_representAction --> YC122usCall 
CYCIRIIS_represent_upd.jsp  ======> �Ϸ� 
 http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_represent_upd.do 

2-2) �����û�Ϸ�[�������>��������>������ ��ȸ/����>����Ϲݻ���>�������� ��ǥ��� �� ��ǥ�� ����] 
kblcm.company.cy.ri.ms.action.COCYRIMS_representAction 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_representAction --> YC122usCall 
CYCIRIIS_apprvlok_viw.jsp  ======> 
CYCIRIIS_represent_viw 

3) ����Ȯ�μ� �߱�[�������>��������>������ ��ȸ/����>����Ϲݻ���] 
kblcm.company.cy.ri.cr.action.COCYRICR_appJoinConfirmAction 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_appJoinConfirmAction 
CYCIRIIS_appJoinConfirm_viw.jsp  ======> �Ϸ� 
3-1) �����߱�[�������>��������>������ ��ȸ/����>����Ϲݻ���] 
kblcm.company.cy.ri.cr.action.COCYRICR_appJoinConfirmAction 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_appJoinConfirmAction 
CYCIRIIS_appJoinConfirm_prn.jsp  ======> �Ϸ� 
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_appJoinConfirm_viw.do 
==============================================================================================================

- ���� ǥ�� ����(13:00 ~ 14:20): 3�� 
����Ȯ�μ� �߱�(�������) �ҽ� ���ַ� ����((��) IT KUDOS ���� 6��) 
==============================================================================================================

- select ���ð� ó�� 
<select name="COM_I_PBHJ_DPJ_GB" style="width:234px"> 
<option value="">&nbsp;</option> 
<option value="01" <s:if test="%{resultMap.contractVO.getCOM_I_PBHJ_DPJ_GB().equals('01')}">selected</s:if>>��������</option> 
<option value="02"<s:if test="%{resultMap.contractVO.getCOM_I_PBHJ_DPJ_GB().equals('02')}">selected</s:if>>�������ȸ</option> 
<option value="03"<s:if test="%{resultMap.contractVO.getCOM_I_PBHJ_DPJ_GB().equals('03')}">selected</s:if>>�뵿����</option> 
</select> 
==============================================================================================================

������������������� 2008.08.16(��) �۾� �����������������
---> 08:30 ~ 21:00  --> ��� �ٹ�(��) 

- ���� Ȩ ������ Prj
2-1) ������� �Է�[�������>��������>������ ��ȸ/����>����Ϲݻ���>�������� ��ǥ��� �� ��ǥ�� ����] 
kblcm.company.cy.ri.ms.action.COCYRIMS_representAction 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_representAction 
CYCIRIIS_represent_upd.jsp  ======> �Ϸ� 
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_represent_upd.do 

2-1-1) ����繫 ���񼭷� �ȳ�[�������>��������>������ ��ȸ/����>����Ϲݻ���>�������� ��ǥ��� �� ��ǥ�� ����] 
COCYRIMS_reqDoc_pop.jsp   
--> CYCIRIIS_reqDoc_pop.jsp   

2-1-2) ���� ������ ó��[�������>��������>������ ��ȸ/����>����Ϲݻ���>�������� ��ǥ��� �� ��ǥ�� ����] 
/jsp/company/cyCO_certProcessp.jsp   
--> /jsp/cy/ci/CYCI_certProcess.jsp 
  
2-2) �����û�Ϸ�[�������>��������>������ ��ȸ/����>����Ϲݻ���>�������� ��ǥ��� �� ��ǥ�� ����] 
kblcm.company.cy.ri.ms.action.COCYRIMS_representAction 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_representAction 
CYCIRIIS_apprvlok_viw.jsp  ======> �Ϸ� 
   
2-2-1) �������� ����Ϲݻ��� ���� ���[�������>��������>������ ��ȸ/����>����Ϲݻ���>�������� ��ǥ��� �� ��ǥ�� ����] 
kblcm.company.cy.ri.ms.action.COCYRIMS_representAction 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_representAction 
CYCIRIIS_bossUpdPrint.jsp  ======> �Ϸ�  
==============================================================================================================

- �׽�Ʈ ����(19�� ����) 
http://10.33.3.19/KBLCM/cy/CYCOLO_login.do 
- �����ڷ� 
\\10.33.165.170\kyobo\88.����\04.������\��Ÿ\01. �����ڷ� 
==============================================================================================================

- include ���� 
<%--20070319 ���� ������ ���� �߰� --%>   
<s:include value="/WEB-INF/jsp/cy/ci/CYCI_certProcessInclude.jsp"> 
<s:param name="uType" value="<s:property value='resultMap.uType'/>"/> <!-- ����� ���� --> 
<s:param name="resdNo" value="<s:property value='resultMap.resdNo'/>"/>  <!-- ��������ȣ(1:�ֹι�ȣ, 2:���ι�ȣ) -->  
</s:include>  

 - include ����2 
<s:include value="/WEB-INF/jsp/cy/ci/CYCI_certProcessInclude.jsp" />   
==============================================================================================================

������������������� 2008.08.17(��) �۾� �����������������
---> 06:50 ~ 20:30  --> ���� �ٹ� 

- ���� Ȩ ������ Prj
2-1) ������� �Է�[�������>��������>������ ��ȸ/����>����Ϲݻ���>�������� ��ǥ��� �� ��ǥ�� ����] 
kblcm.company.cy.ri.ms.action.COCYRIMS_representAction 

- ���� CSS ���̵�(�ڹ� ��ũ��Ʈ) 
http://10.33.165.191/KBLCM/cssGuide/list_tab_js.html 
==============================================================================================================

������������������� 2008.08.18(��) �۾� �����������������
---> 07:00 ~ 23:00 

- ���� Ȩ ������ Prj
1) �������� �ϰ� ����[�������>��������>������ ��ȸ/����>��������>��������  ��� ����] 
kblcm.company.cy.ri.ms.action.COCYRIMS_representAction 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_representAction 
CYCIRIIS_insuredPersonAllSend.jsp  ======>  
<!-- �����û�� > ����������ϰ�û�� -->     
==============================================================================================================

 - 2008�� �ֹμ�(���αյ���) ���� 
����: �ֹμ�, ���汳����(6,000��) 
���: 6205707, ����: 10104001, ������ȣ: 0012590  
==============================================================================================================

- 19�� ���� �ڳ� ����  
> wassvr/wassvr 
>  /applog/cmwas/CMProdApp1/SystemErr.log 
>  /applog/cmwas/CMProdApp2/SystemErr.log 
------------------------------------------------------------------------------------------------- 

- 106�� ���� �ڳ� ���� 
> telnet 100.1.131.106   
> 50001188/ansgur23 
> su -  
> kyobolife  
> clog   
==============================================================================================================

- ���� ǥ�� ����(20:00 ~ 21:20): 4�� 
������ ��ȸ(�������) �ҽ� ���ַ� ����(������ 6��:���̹�â�� ������) 
==============================================================================================================

������������������� 2008.08.19(ȭ) �۾� �����������������
---> 06:40 ~ 23:00  --> CVS ���� ����(����Ÿ ����), ����(���б� ����) 

- ���� Ȩ ������ Prj
1-1) �������� �ϰ� ����[�������>��������>������ ��ȸ/����>��������>��������  ��� ����]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSend_ins.jsp  ======>   

2) ���۰�� Ȯ��/����[�������>��������>������ ��ȸ/����>��������>��������  ��� ����]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSendOK_viw.jsp  ======> 

3) �����û[�������>��������>������ ��ȸ/����>��������>��������  ��� ����] 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotalSendApprvAction 
CYCIRIIS_insuredPersonTotalSendApproval_view.jsp  ======> 

 - �������� �ϰ�û��(�����û��) 
http://127.0.0.1:8080/KBLCM/cy/cyciriisInsuReqMain.do 
------------------------------------------------------------------------------------------------- 

<!--// ci.ri.is ���̹�â��>�������>��������>�����û��>�������� �ϰ�û��> //--> 
<action name="cyciriisBundleSendInit" class="kblcm.cy.ci.ri.is.action.CYCIRIIS_bundleSendInitAction" >        
<result name="init" >/WEB-INF/jsp/cy/ci/ri/is/CYCIRIIS_bundleSend_ins.jsp</result> 
</action> 

<!--// ci.ri.is ���̹�â��>�������>��������>�����û��>�������� �ϰ�û��> �ϰ�û�� //--> 
<action name="cyciriisBundleSend" class="kblcm.cy.ci.ri.is.action.CYCIRIIS_bundleSendAction" >        
<result name="init" >/WEB-INF/jsp/cy/ci/ri/is/CYCIRIIS_bundleSend_ins.jsp</result> 
<result name="SendOK" type="tiles">cy.cyciriisBundleSendOK</result>        
</action> 

<definition name="cy.CYCIRIIS_insuredAllSendOK" extends="cy.tabMain"> 
<put-attribute name="titleImage" value="/KBLCM/images/service/cy/title_ins_demand.gif"></put-attribute>     
<put-attribute name="ScriptPath" value="/KBLCM/js/cy/ci/ri/is"></put-attribute> 
<put-attribute name="ScriptName" value="CYCIRIIS_indivReqRsltFormControl.js"></put-attribute>     
<put-attribute name="tabContent" value="/WEB-INF/jsp/cy/ci/ri/is/CYCIRIIS_bundleSendOK_viw.jsp"></put-attribute>  
</definition> 


<!--// ci.ri.is ���̹�â��>�������>�����>�ϰ�û��> �������ȸ//--> 
<definition name="cy.cyciriisBundleReqSelect" extends="cy.tabMain"> 
<put-attribute name="titleImage" value="/KBLCM/images/service/cy/title_ins_demand.gif"></put-attribute>     
<put-attribute name="ScriptPath" value="/KBLCM/js/cy/ci/ri/is"></put-attribute> 
<put-attribute name="ScriptName" value="CYCIRIIS_indivReqRsltFormControl.js"></put-attribute>  
<put-attribute name="tabContent" value="/WEB-INF/jsp/cy/ci/ri/is/CYCIRIIS_bundleReqSelect_lst.jsp"></put-attribute>  
 </definition>  
==============================================================================================================

- ���� ��Ʈ��ũ ���� 
miraeasset 
1234567890/1234567890 
==============================================================================================================

- eclipse ���� ����(�űԷ� ���� ��) 
applicationContext.xml ���� 
����: cvs�� Context.xml�� �߸� �÷ȴٰ� �Ǵܵ� 
==============================================================================================================

������������������� 2008.08.20(��) �۾� �����������������
---> 06:40 ~ 23:00   --> ����(����: �������: ��PM�� ��) 

- ���� Ȩ ������ Prj
- �α��� ����(DB ���� ����) 
[errorCode : COM00003^]# [errorMessage : COM00003^]# [errorModule : null^]#  
[exception : org.springframework.jdbc.CannotGetJdbcConnectionException:  
Could not get JDBC Connection; nested exception is org.apache.commons.dbcp.SQLNestedException:  
Cannot create PoolableConnectionFactory ([jcc][t4][2043][11550][3.51.90] ���� java.net.ConnectException:  
���� �޽����� �Բ� /10.33.160.178 ������ ���� ������ 50,000 ��Ʈ���� ���� ����:  
Connection refused: connect. ERRORCODE=-4499, SQLSTATE=08001)] 
����: DB ���� �ȵ�(178�� DB ������ ���õ�) 
��ġ: DB ���� ����(15�� DB ������ ������) 
/WEB-INF/conf/kblcm-property.xml ���Ͽ��� 
<jdbc> 
<driverClassName>com.ibm.db2.jcc.DB2Driver</driverClassName> 
<url>jdbc:db2://10.33.3.15:50010/KYOBOWWW</url> 
<username>kyobowww</username> 
<password>kyobo01</password> 
<maxActive>1</maxActive> 
</jdbc> 
==============================================================================================================

- CVS ���� Ÿ�Ӿƿ� ������ �߻� 
[Window]-[Preferences]-[Team]-[CVS]�� ConnectionTimeout�� 60���� 360���� ���� 
==============================================================================================================

- ��Ʈ�� ���� ��� ��Ű�� ��� 
1. ����: �׻� �ѱ� 
���÷��� ������� -> ��������ǥ: �׻��ѱ� 
2. �ý��� ���� ��� ���� ���� 
����ǻ�� -> ��ġ������ -> �ý��� ����: ��� ����̺꿡 �ý��� ���� ��� ����(T): üũ 
3. ���� �޸� �ּ�ȭ 
����ǻ�� -> ��ġ������ -> ��� -> ����: ����(C) -> ����޸�: ����(C) 
-> ����� ���� ũ��(S): 512M ~ 1024M 
4. Ĩ�� ��ġ 
intel PM 965 chipset(�Ｚ Sends Q70��) 
==============================================================================================================

������������������� 2008.08.21(��) �۾� �����������������
---> 06:50 ~ 23:00 

- ���� Ȩ ������ Prj
1-1) �������� �ϰ� ����[�������>��������>������ ��ȸ/����>��������>��������  ��� ����]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSend_ins.jsp  ======>    
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_insuredAllSend_ins.do 

2) ���۰�� Ȯ��/����[�������>��������>������ ��ȸ/����>��������>��������  ��� ����]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSendOK_viw.jsp  ======> 

3) �����û[�������>��������>������ ��ȸ/����>��������>��������  ��� ����] 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotalSendApprvAction 
CYCIRIIS_insuredPersonTotalSendApproval_view.jsp  ======>  
 - �������� �ϰ�û��(�����û��) 
http://127.0.0.1:8080/KBLCM/cy/cyciriisInsuReqMain.do   

- C:\DevEnv\Projects\KBLCM\src\struts.properties ���Ͽ���(���� ���ε� ��� ����) 
struts.multipart.maxSize=1073741824 
struts.multipart.saveDir=C:/DevEnv/AttFile/tmp 
#struts.multipart.saveDir=D:/workspace/KYOBO/KBLCM/AttFile/tmp 

- ���̾� ���� ����(target �ֱ�) 
<a href="/KBLCM/cy/CYCIRITC_selTrgCon.do" target="_top"> 
-----------------------------------------------------------------------------------  
 - �������� ��ȸ(����¡ ó��) 
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_insuredPerson_lst.do  
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_insuredPerson_lst.do   
==============================================================================================================

- �� ������ ���� 
1-1) ��ຯ�氡����ȸ[���κ���>������ȸ/����>������] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_accountUpdAction 
--> kblcm.cy pi.ic.cc.action.CYPIICCC_accountUpdAction   

<action name="CYPIICCC_accountUpd" class="kblcm.cy.pi.ic.cc.action.CYPIICCC_accountUpdAction"> 
<result type="tiles">cy.CYPIICCC_accountUpd</result> <!--//  ��ຯ�氡����ȸ  //--> 
<result name="checkItem">/WEB-INF/jsp/cy/pi/ic/cc/CYPIICCC_accountUpdCheckItem_frm.jsp</result> <!--//  ��ຯ�氡�� ���� �޼��� ó��  //--> 
</action>   
==============================================================================================================

- �ٹ�ȣ, �ټ���(EditPlus)  
1. ����(T) -> �⺻����(P) -> �Ϲ� -> ���� -> �� ��ȣ 
������(����): 141, 171, 191 
2. ����(T) -> �⺻����(P) -> �Ϲ� -> ���� -> ���� �� 
������(����): 141, 171, 191 
- ������(EditPlus) 
��Ʈ: ���� 10  
����: 76 ä��: 78  ��: 194 
==============================================================================================================

- ũ�� ���Ǿ�(��Ź ������) 
http://cleantopia.com 
Y����: 900�� 
==============================================================================================================

- �ֽ� ����(kosdaq) 
(��)��������Ƽ��((��)������ �պ��� ȸ��) 
�������� ���¿� 15,500,000�� �Ա�(���¹�ȣ: 710-01-029063) 
���簡: 3,045�� �ŷ���: 5,000��  �ŷ���: 15,225,000��) 
ù�� ������: +4.26,  �Ѽ���: +648,862�� 
http://stock.naver.com/item/main.nhn?code=036180 
==============================================================================================================

������������������� 2008.08.22(��) �۾� �����������������
---> 07:00 ~ 22:00 

- ���� Ȩ ������ Prj
1-1) �������� �ϰ� ����[�������>��������>������ ��ȸ/����>��������>��������  ��� ����]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSend_ins.jsp  ======> �Ϸ� 
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_insuredAllSend_ins.do 

2) ���۰�� Ȯ��/����[�������>��������>������ ��ȸ/����>��������>��������  ��� ����]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSendOK_viw.jsp  ======> 

3) �����û[�������>��������>������ ��ȸ/����>��������>��������  ��� ����] 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotalSendApprvAction 
CYCIRIIS_insuredPersonTotalSendApproval_view.jsp  ======> 

 - �������� �ϰ�û��(�����û��) 
http://127.0.0.1:8080/KBLCM/cy/cyciriisInsuReqMain.do 
==============================================================================================================

- SVN ��ġ(������Ʈ ���� ���� ����) 
1. ��ġ 
http://subclipse.tigris.org/install.html ����  
(Subclipse 1.4.x (Eclipse 3.2+) �� �ؾ� �մϴ�.)  
mylyn required ������ integrations ����  
2. ���� 
Windows - Open Perspective - Other - SVN Repository  
���콺 ������ư - New - Repository Location  
svn://10.33.165.172/kyobo(dev302/dev302)  
3. �̰� 
0 .���� �ҽ��� ���� ��� 
1. ���� KBLCM ��Ŀ��Ʈ(�̶� ��Ÿ�����͵� ��� �����Ѵ�): ���� CVS ���� �κ� ���� 
 KBLCM[10.33.165.171] ����(������ Ŭ��) -> Team -> Disconnect: Ŭ��(��Ÿ������ ���� ����) 
2. KBLCM �� ���콺 ������ư - Team - Share Project - SVN - (�⼳���� svn�ּ� ����) - Finish 
------------------------------------------------------------------------ 

- SVN Ư�� 
1. ���丮, �̸� ���� ���� 
2. Change Set : ���� ����(rcs) 
3. �ӵ� ���(DB ����)  
4. Auto Commit 
5. Unicode 

- SVN ���� 
1. Commit �� Update 
2. �۾� ����(Change Set) Commit 
3. Comment  ==> ���¸�: ���� �۾� 
4. �۾��� ���ϸ� ���� Commit 
------------------------------------------------------------------------------------------- 

- SVN ���� ID(���̵�) 
���¿���� :  dev301 
���¸����� :  dev302  
�������� :  dev303  
����ȭ���� :  dev304 -------------------------> 
����ȯ�̻� :  dev305 
�赿����� :  dev306 
�ݹ������ :  dev307 
������� :  dev308 
�̵�ȣ��� :  dev309 
��������� :  dev310 
����ȣ���� :  dev311 
�������̻� :  dev312 
��μ���� :  dev313 
��â������ :  dev314 -------------------------> 
�輺��븮 :  dev315 
�������븮 :  dev316 
==============================================================================================================

������������������� 2008.08.23(��) �۾� �����������������
---> 08:30 ~ 00:00  --> ��� �ٹ�, ö��(����¡ �ø��� �߱� ��� -> ���3:2) 

- ���� Ȩ ������ Prj
 1) ������� �Է�[�������>��������>������ ��ȸ/����>�������� ��������] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIIS_insuredAltAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltAction 
CYCIRIIS_insuredAlt_lst.jsp ======> �Ϸ� 
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_insuredAlt.do 
  
 2) �����û[�������>��������>������ ��ȸ/����>�������� ��������] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_insuredAltSelectAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltSelectAction 
CYCIRIIS_insuredAltSelect_lst.jsp ======> �Ϸ� 
   
 3) �����û�Ϸ�[�������>��������>������ ��ȸ/����>�������� ��������] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_insuredAltSelectAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltSelectAction 
CYCIRIIS_insuredAltDone_wiw.jsp ======> �Ϸ� 
==============================================================================================================

- if ��(struts tag) 
<s:if test="#row.COM_O_SC_GB == ''  #row.COM_O_SC_GB == 0"> <!-- ������� ������ ������ --> 
<select name="SC_GB" id="select4" class="SmlSty"> 
<option value=""></option> 
<option value="1">���������̸�</option> 
<option value="2">�������߰��</option> 
</select> 
</s:if> 
<s:elseif test="#row.COM_O_SC_GB == 1"> <!-- ������� ������ 1 �̸� --> 
<input type="hidden" name="SC_GB" value="3">���������̸� 
</s:elseif> 
<s:else> 
<input type="hidden" name="SC_GB" value="4">�������߰�� 
</s:else> 
==============================================================================================================

������������������� 2008.08.24(��) �۾� �����������������
---> 00:00 ~ 06:00  --> ö��, ����(����B/D �߿� ��ġ: �����), �����౸, ����¡ �ø��� �� 

- ���� Ȩ ������ Prj
 1) ������� �Է�[�������>��������>������ ��ȸ/����>�������� ��������] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIIS_insuredAltAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltAction 
CYCIRIIS_insuredAlt_lst.jsp ======>   
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_insuredAlt.do  
==============================================================================================================

- ����� ��ȥ��(���� 6��) 
���絿 ���� ������ȭȸ�� ������(http://www.temf.co.kr) 
8�� 24��(��) 13:30  
����: 641(�����뿪 -> ���翪)  
-3ȣ�� ���翪 7�� �ⱸ�� ���ʱ���ȸ�� �ա� ���� ��Ʋ���� �̿� 
���� �ƹ���, �����, ���� ���� ����, ö�� ����, ���� 
���� 10���� 
==============================================================================================================

������������������� 2008.08.25(��) �۾� �����������������
---> 06:50 ~ 22:40 

- ���� Ȩ ������ Prj
 1) ������� �Է�[�������>��������>������ ��ȸ/����>�������� ��������] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIIS_insuredAltAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltAction 
CYCIRIIS_insuredAlt_lst.jsp ======> �Ϸ� 
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_insuredAlt.do 

1. �������� ��������(ȭ�� ID: UI_CY_9155_10)  
1) EW10W156odCall:  ������� �Է�[�������� ��������] 
�Ǻ����ڸ�(���� ��), �������߰��(���� ��), �������߰��(���� ��), 
�߰�ױ�����, �߰�ױ�����(���� ��) 
2) EW10W157odCall:  �����û[�������� ��������] 
�Ǻ����ڸ�(���� ��), �������߰��(���� ��), �������߰��(���� ��), 
�߰�ױ�����, �߰�ױ�����(���� ��) 

2. ���޺�����/�������(ȭ�� ID: UI_CY_9155_2)  
1) EW10EW17odCall:  ������� �Է�[���޺�����/�������] 
������(���� ��), ��������(���� ��), �������߰��, �߰�ױ����� 
2) EW10EW18odCall:  �����û[���޺�����/�������] 
������(���� ��), ��������(���� ��), �������߰��, �߰�ױ����� 

- ���� jsp �ҽ� Content-Type ���� 
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr"> 
==> <%@ page contentType="text/html; charset=utf-8" %>  
---------------------------------------------------------------------------------------- 
  
 2) �����û[�������>��������>������ ��ȸ/����>�������� ��������] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_insuredAltSelectAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltSelectAction 
CYCIRIIS_insuredAltSelect_lst.jsp ======> �Ϸ� 
   
 3) �����û�Ϸ�[�������>��������>������ ��ȸ/����>�������� ��������] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_insuredAltSelectAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltSelectAction 
CYCIRIIS_insuredAltDone_wiw.jsp ======> �Ϸ�  
==============================================================================================================

- ������� �α��� ��å 
1. �α��� ȭ���� �ϳ� 
2. �α����� �ϸ� ��������(Host IF), �������(DB)�� üũ�ؼ� �ش� ���� ���θ� 
������ ���� ����(2�� ���ѵ� ����) 
==============================================================================================================

������������������� 2008.08.26(ȭ) �۾� �����������������
---> 07:00 ~ 21:00  --> �μ��ΰ�(�����: ����ȭ ������ �ź�), ��(����ȣ, ����, �Ӹ�)  

- ���� Ȩ ������ Prj
 1) ������� �Է�[�������>��������>������ ��ȸ/����>�������� ��������] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIIS_insuredAltAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltAction 
CYCIRIIS_insuredAlt_lst.jsp ======> �Ϸ� 
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_insuredAlt.do 
  
 2) �����û[�������>��������>������ ��ȸ/����>�������� ��������] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_insuredAltSelectAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltSelectAction 
CYCIRIIS_insuredAltSelect_lst.jsp ======> �Ϸ� 
   
 3) �����û�Ϸ�[�������>��������>������ ��ȸ/����>�������� ��������] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_insuredAltSelectAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltSelectAction 
CYCIRIIS_insuredAltDone_viw.jsp ======> �Ϸ�  
==============================================================================================================

- structs, tiles �и� 
���κ���(struts-cy.xml, tiles-cy.xml), ������� �и�(struts-cy-ci.xml, tiles-cy-ci.xml) 
struts.xml(/KBLCM/src), web.xml(/KBLCM/WebContent/WEB-INF) 
==============================================================================================================

������������������� 2008.08.27(��) �۾� �����������������
---> 07:40 ~ 22:30  --> ����(����:�����, �����), ������(Ű��), �뷡��: ����� �ܷ� ���� ���� 

- ���� Ȩ ������ Prj
 1) ������� �Է�[�������>��������>������ ��ȸ/����>�������� ��������] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIIS_insuredAltAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltAction 
CYCIRIIS_insuredAlt_lst.jsp ======> �Ϸ� 
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_insuredAlt.do 
  
�������߰��(COM_O_TJ_AMT) 
�߰�ױ�������(COM_O_GJ_YMD): �߰��� �� 
�����(COM_O_GY_YMD)   
  
 2) �����û[�������>��������>������ ��ȸ/����>�������� ��������] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_insuredAltSelectAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltSelectAction 
CYCIRIIS_insuredAltSelect_lst.jsp ======> �Ϸ� 
   
 3) �����û�Ϸ�[�������>��������>������ ��ȸ/����>�������� ��������] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_insuredAltSelectAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltSelectAction 
CYCIRIIS_insuredAltDone_viw.jsp ======> �Ϸ�  
==============================================================================================================

- �������� �������� ���� ȸ��(19:30 ~ 20:00) 
1. ����������� ��������� �̼�ȣ ����, ��â�� ���� 
ȭ�� ��Ŷ �Ǽ�, ��������Ÿ ��ȭ��ȣ 
����ó��(�����ڸ�), �����û(�ǹ���) 
==============================================================================================================

������������������� 2008.08.28(��) �۾� �����������������
---> 07:00 ~ 22:30 

- ���� Ȩ ������ Prj
 1) ������� �Է�[�������>��������>������ ��ȸ/����>���޺�����/�������] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_unpaidRetireAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_unpaidRetireAction 
CYCIRIIS_unpaidRetire_lst.jsp 
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_unpaidRetire.do 

 2) �����û[�������>��������>������ ��ȸ/����>���޺�����/�������] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_unpaidRetireSelectedAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_unpaidRetireSelectedAction 
CYCIRIIS_unpaidRetireSelected_lst.jsp 
  
 3) �����û�Ϸ�[�������>��������>������ ��ȸ/����>���޺�����/�������] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_unpaidRetireSelectedAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_unpaidRetireSelectedAction 
CYCIRIIS_unpaidRetireDone_viw.jsp 
==============================================================================================================

- Host call ���� 
EW10W156_MSGCODE : [E80001] 
��������: ȣ��DB ERROR�Դϴ�  
---------------------------------------------------------------- 
- Host call ���� 
java.lang.NumberFormatException: For input string: "null  " 
��������: INPUT���� �߸� �Ǿ��� �� ���� ���� 
��ġ: EW10EW17_IN : COM_I_PBHJ_NM  ���� 
==============================================================================================================

������������������� 2008.08.29(��) �۾� �����������������
---> 07:10 ~ 23:10 

- ���� Ȩ ������ Prj
- �������� ��������, ���޺�����/������� ��ȸ(EW10W156od, EW10W17od) �κ� SM�� �׽�Ʈ �Ϸ�
 1) ������� �Է�[�������>��������>������ ��ȸ/����>�������� ��������] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIIS_insuredAltAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltAction 
CYCIRIIS_insuredAlt_lst.jsp ======> �Ϸ� 
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_insuredAlt.do 
  
�������߰��(COM_O_TJ_AMT) 
�߰�ױ�������(COM_O_GJ_YMD): �߰��� ��  
  
 2) �����û[�������>��������>������ ��ȸ/����>�������� ��������] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_insuredAltSelectAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltSelectAction 
CYCIRIIS_insuredAltSelect_lst.jsp ======> �Ϸ� 
   
 3) �����û�Ϸ�[�������>��������>������ ��ȸ/����>�������� ��������] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_insuredAltSelectAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltSelectAction 
CYCIRIIS_insuredAltDone_viw.jsp ======> �Ϸ�  
==============================================================================================================

- �α���(���ȸ��) 
String szUserId = sessionVO.getId(); // ��ȸ�����̵� 
String szUserPasswd = sessionVO.getLoginPassword();   // ��й�ȣ 
String ju_no = sessionVO.getResdNo();   //�ֹι�ȣ  
String szUserType = sessionVO.getUserType();  //����ڱ���(�ǹ���,������)  
String login_gb = sessionVO.getLoginGb();  //�α��� ���� 
String szSecuNo = sessionVO.getPolicyNo();  //���ǹ�ȣ   
==============================================================================================================

������������������� 2008.08.30(��) �۾� �����������������
---> 08:30 ~ 20:00  --> �����౸ 

- ���� Ȩ ������ Prj
- Host �������̽��� �߰��ؼ� ������ ���� 
��ġ: �������̽� CommArea Name�� ������� ���� 
-------------------------------------------------------------------------------------------------------- 

 1) ������� �Է�[�������>��������>������ ��ȸ/����>�������� ��������] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIIS_insuredAltAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltAction 
CYCIRIIS_insuredAlt_lst.jsp ======> �Ϸ� 
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_insuredAlt.do 
EW10W156odCall.java     
�������߰��(COM_O_TJ_AMT) 
�߰�ױ�������(COM_O_GJ_YMD): �߰��� �� 

 2) �����û[�������>��������>������ ��ȸ/����>�������� ��������] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_insuredAltSelectAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltSelectAction 
CYCIRIIS_insuredAltSelect_lst.jsp ======>   
 EW10W157odCall.java     

 3) �����û�Ϸ�[�������>��������>������ ��ȸ/����>�������� ��������] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_insuredAltSelectAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltSelectAction 
CYCIRIIS_insuredAltDone_viw.jsp ======>    
==============================================================================================================

 1) ������� �Է�[�������>��������>������ ��ȸ/����>���޺�����/�������] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_unpaidRetireAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_unpaidRetireAction 
CYCIRIIS_unpaidRetire_lst.jsp ======> �Ϸ� 
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_unpaidRetire.do 
EW10EW17odCall.java  

 2) �����û[�������>��������>������ ��ȸ/����>���޺�����/�������] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_unpaidRetireSelectedAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_unpaidRetireSelectedAction 
CYCIRIIS_unpaidRetireSelected_lst.jsp 
EW10EW18odCall.java  
  
 3) �����û�Ϸ�[�������>��������>������ ��ȸ/����>���޺�����/�������] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_unpaidRetireSelectedAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_unpaidRetireSelectedAction 
CYCIRIIS_unpaidRetireDone_viw.jsp 
==============================================================================================================

������������������� 2008.08.31(��) �۾� �����������������
---> 11:30 ~ 21:00  --> �����౸ 

- ���� Ȩ ������ Prj
EW10W156odCall.java, EW10EW17odCall.java �Ϸ� 
EW10W157odCall.java, EW10EW18odCall.java SM���� ���� ����ؼ� ���� �ؾ��� �� ���� 
==============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������