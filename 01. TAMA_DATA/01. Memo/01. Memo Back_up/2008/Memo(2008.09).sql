

�����������������������������������������������������������
+---------------------------------------------// Memo(2008.09) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2008.09.01(��) �۾� �����������������
---> 07:20 ~ 23:00 

- ���� Ȩ ������ Prj
- EW10W157odCall.java, EW10EW18odCall.java SM���� �����ؼ� ��κ� �ذ�
//Property COM_I_PBHJ_NO = new Property("I", "COM_I_PBHJ_NO", 6, "C", 0);   //��ȸ �ؽ�Ʈ ��(�������� ��ȣ) -> ���� 
//Property COM_O_TY_AMT = new Property("O", "COM_O_TY_AMT", 12, "N", 0); //Ư�ຸ��� -> ���� 
Property COM_I_PBHJ_NM = new Property("I", "COM_I_PBHJ_NM", 100, "C", 2); //��ȸ �ؽ�Ʈ ��(�̸�) -> ����(10 ->100) 

- HOST ���� �ڵ� 
EW10W156_MSGCODE : [A00001] ==> ���з��ڴ� ��û�� �� �����ϴ�.  
EW10EW17_MSGCODE : [A00003] ==> �� ��û���� �����մϴ� 
EW10EW17_MSGCODE : [A00002] ==> �̹�.. �����û�� ������Ұ��� �����մϴ�. 
--------------------------------------------------------------------------------------------------------- 

- �ý��� �̰� 
�Ͽ��� 18�� ����(����) 
�� ������ ���� �ý����� �����ǹǷ�.. 10�� ���ĺ��� �׽�Ʈ   
==============================================================================================================

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
CYCIRIIS_insuredAltSelect_lst.jsp ======>   
   
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

 2) �����û[�������>��������>������ ��ȸ/����>���޺�����/�������] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_unpaidRetireSelectedAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_unpaidRetireSelectedAction 
CYCIRIIS_unpaidRetireSelected_lst.jsp 
  
 3) �����û�Ϸ�[�������>��������>������ ��ȸ/����>���޺�����/�������] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_unpaidRetireSelectedAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_unpaidRetireSelectedAction 
CYCIRIIS_unpaidRetireDone_viw.jsp 
==============================================================================================================

- ��ȸ�� �α��� 
http://localhost:8090/KBLCM/cm/CMLCWMListViwAction.do 

- ��� �����ŷ� �� �α��� 
http://localhost:8090/KBLCM/cm/CMLCCCCustomerViwAction.do  
==============================================================================================================

������������������� 2008.09.02(ȭ) �۾� �����������������
---> 07:20 ~ 19:30  --> ���� ���� ����(�¿�, ����, ȣ�� -> �¿� �λ� �߷�): ����, �籸(50: 2��), ���� 

- ���� Ȩ ������ Prj
- EW10W157odCall.java, EW10EW18odCall.java ���� �κ� �ذ� �ؾ� �� 
- ���޺�����/������Ҵ� �Ǻ����ڸ� ���� ������ �̹� �����û�� ������Ұ��� �ϳ��� �����ϸ� 
�ٽ� ��û���������� �� �� ����  
--------------------------------------------------------------------------------------------------------- 

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

 1) ������� �Է�[�������>��������>������ ��ȸ/����>���޺�����/�������] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_unpaidRetireAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_unpaidRetireAction 
CYCIRIIS_unpaidRetire_lst.jsp ======> �Ϸ� 
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_unpaidRetire.do 

 2) �����û[�������>��������>������ ��ȸ/����>���޺�����/�������] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_unpaidRetireSelectedAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_unpaidRetireSelectedAction 
CYCIRIIS_unpaidRetireSelected_lst.jsp ======> �Ϸ� 
  
 3) �����û�Ϸ�[�������>��������>������ ��ȸ/����>���޺�����/�������] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_unpaidRetireSelectedAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_unpaidRetireSelectedAction 
CYCIRIIS_unpaidRetireDone_viw.jsp ======> �Ϸ� 
==============================================================================================================

- HOST ���� 
���� ����: 
=============  EW10EW18 [ECW018OD] ��°� Ȯ�� ============= 
EW10EW18_OUT [0]: COM_O_CR_GB  [Y] 
EW10EW18_OUT [0]: C_TG_GB  [52] 
EW10EW18_OUT [0]: C_PBHJ_NO  [null  ] 
EW10EW18_OUT [0]: C_PBHJ_NM  [     ] 
EW10EW18_OUT [0]: C_JUMIN_NO [             ]  
[errorCode : EU10EW18E41201^]# [errorMessage : EU10EW18E41201^]# [errorModule : null^]# [exception : ] 
����: C_PBHJ_NO ���� ����� �� �־��� 
��ġ:  
<input type="hidden" name="name<s:property value="%{#inq_stat.count-1}"/>" value="<s:property value="%{#row.name}"/>"> 
==============================================================================================================

- replace �Լ�  
altVO.setTJ_AMT(CMStringUtil.replace(request.getParameterValues("TJ_AMT_ALT")[i],  ",", ""));  //�������߰��(������)  
--------------------------------------------------------------------------------------------------------- 

// replace �Լ� 
public static String replace(String target, String old, String newer) 
{  
	System.out.println("[/CMStringUtil.java]:[replace()]:[target]"+ target +"[old]"+ old +"[newer]"+ newer); 
				
	int i = target.indexOf(old); 
	if (i == -1) 
	{ 
	    return target; 
	} 

	StringBuffer buf = new StringBuffer(); 
	buf.append(target.substring(0, i) + newer); 

	if (i + old.length() < target.length()) 
	{ 
	    buf.append( 
	replace( target.substring(i + old.length(), target.length()), old, newer)); 
	} 

	return buf.toString(); 
} 
==============================================================================================================

- ����޷� 
����޷� ����Ϸ��� �Ʒ� ������� ��¥�׸� input�� �ۼ��ϸ� �˴ϴ�.  
<input type="text" name="xxx" class="calendar"/>  
���� ����Ʈ : http://10.33.165.191/KBLCM/cssGuide/etc2.html 
==============================================================================================================

������������������� 2008.09.03(��) �۾� �����������������
---> 07:10 ~ 23:00 

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

- ���������� ���� 
xecure�� ���;� ������ �� ���� 
==============================================================================================================

- replace �Լ�(��¥ ġȯ: 2008-09-03 --> 20080903)  ===> �ڹ� ��ũ��Ʈ 
var in_fdate_new = frm.in_fdate.value.split("-").join("");   //��¥ ġȯ(replace)  
==============================================================================================================

- �������� ���� �� ���系��[�������>��������>�����������>�������� ����] ==> �׽�Ʈ �Ұ�(UI_CY_9148) 
http://127.0.0.1:8080/KBLCM/cy/CYCIRISP_insuredAltRslt_lst.do 
========================================================================================================= 

- ����Ϲݻ��� ���� �����Ȳ ��ȸ[�������>��������>�����������>�������� ����]  
http://127.0.0.1:8080/KBLCM/cy/CYCIRISP_generalContractRslt_viw.do 

=============  EW10EW24 [ECW024OD] �Է°� Ȯ�� ============= 
EW10EW24_HEAD : LOGIN [kyobo01] 
EW10EW24_HEAD : PASSWORD [kyobo01] 
EW10EW24_HEAD : USER_TYPE [1] 
EW10EW24_HEAD : PROC_TYPE [S] 
EW10EW24_HEAD : SECU_NUM [0001390] 
EW10EW24_HEAD : COMPANY_NAME [���֣������ý���������������������������] 
EW10EW24_HEAD : STATUS_CODE [] 
EW10EW24_IN : COM_I_SC_DATE [1111-11-11] ==> ��������(�ʼ� �Է� ����) 
EW10EW24_IN : COM_I_SMSC_SEQ    [0000] ==> �繫ó�� Seq(�ʼ� �Է� ����) 
>> Communication is null, CTG Communication settimg.( EU10EW24 : 100.1.131.106:2006 ) 
CICS ECI Call Result value : 0 
EW10EW24_MSGCODE : [E20001] 
DUMMY :              
==============================================================================================================

=============  EW10W156 [kblcm.hostif.od.base.Property@1d4b9ff] �Է°� Ȯ�� ============= 
EW10W156_HEAD : LOGIN [kyobo01] 
EW10W156_HEAD : PASSWORD [kyobo01] 
EW10W156_HEAD : USER_TYPE [1] 
EW10W156_HEAD : PROC_TYPE [P] 
EW10W156_HEAD : SECU_NUM [0001390] 
EW10W156_HEAD : COMPANY_NAME [] 
EW10W156_HEAD : STATUS_CODE [] 
EW10W156_IN : COM_I_DATE      [2008-09-03] 
EW10W156_IN : COM_I_TIME      [22:31:16] 
EW10W156_IN : COM_I_PBHJ_NM   [�����] 
EW10W156_IN : COM_K_CUR_PAGE  [000001] 
EW10W156_IN : COM_O_TOT_COUNT [000001] 
EW10W156_IN : COM_O_CUR_COUNT [1] 
EW10W156_IN [0]: COM_O_CR_GB ===> [1] 
EW10W156_IN [0]: COM_O_PBHJ_NM  [�����] 
EW10W156_IN [0]: COM_O_JUMIN_NO [7202281041917] 
EW10W156_IN [0]: COM_O_PBHJ_NO  [000028] 
EW10W156_IN [0]: COM_O_BGH_GGY  [1506992] 
EW10W156_IN [0]: COM_O_JR_AMT   [1758936] 
EW10W156_IN [0]: COM_O_JD_YMD   [2000-07-22] 
EW10W156_IN [0]: COM_O_JW_IW_GB [01] 
EW10W156_IN [0]: COM_O_TJ_AMT   [3265150] 
EW10W156_IN [0]: COM_O_GJ_YMD  [2007-12-31] 
EW10W156_IN [0]: COM_O_IS_YMD   [1994-10-28] 
EW10W156_IN [0]: COM_O_JGJS_YMD [1999-10-30] 
>> Communication is null, CTG Communication settimg.( EU10W156 : 100.1.131.106:2006 ) 
CICS ECI Call Result value : 0 
EW10W156_MSGCODE : [A00001]  ==> ���з��ڴ� ��û�� �� �����ϴ�.  
==============================================================================================================

- ���� ���� ȸ��(20:00 ~ 20:30) 
1. ���κ����� ���� 
2. ��������� ������ �븮���� �μ��ΰ�  
==============================================================================================================

������������������� 2008.09.04(��) �۾� �����������������
---> 07:00 ~ 18:00   --> ����(�ʻ���, ������:���¿� ���� ����԰� �� ��� �Դٰ� ȭ��(�̰��� ����)), ����(�̰���:1��°) 

- ���� Ȩ ������ Prj
 - ���� ����(������� --> ���κ���) 
 - ��������� ������ �븮���� �μ��ΰ� �Ϸ� 
 - ���̹�â�� ���� TEST ==> 9�� 9��(ȭ) 

- ���̹�â�� �α��� ���̵� 
�ۿ�(*)  
String name = "�ۿ�"; 
//String juminNo = "*"; //=> (*): �ۿ�  //�ֹι�ȣ 
//Strinp_jumin = "*";    //=> �ݵ� ���� ���� ����(*) 
//String juminNo = "*"; //=> (*) 
String juminNo = "*";  //=> (*) 
//String juminNo = "*";    //=> (*) 
- �ֹι�ȣ 
p_jumin = "*";    //=> 2.  
p_jumin = "*";     //=> 3. 
p_jumin = "*";    //=> 4. 
p_jumin = "*";    //=> 5. 
������ ����(* - 2352035), choi3252/kyobo01 
==============================================================================================================

- TAB ���� 
function onloadPage(){ 
	changeTab("tab7",2);   //TAB ����(-> 2) 
}  
--------------------------------------------------------------------------------------------------------- 

- �ش� URL�� �̵� 
<a href="javascript:goLink('/KBLCM/cy/CYCIRISP_main01.do?p_url=2');" >[�������� ����]</a> 

function goLink(url) {   // �ش� URL�� �̵� 
	top.layers.hide(window.layerId);  // ���̾� �ݱ�(â�ݱ�) 
	top.document.location.href = url;    //�ش� URL�� �̵� 
} 
==============================================================================================================

- js-debugger  ��ġ 
js-debugger ���� install.exe �� scd10en-shinki1234.exe �� �����Ͽ� ��ġ�Ͻø� �ͽ��÷η� ������ Javascript  
����Ű� ��ġ�˴ϴ�. ������ �߻��Ǹ� ��Ȯ�� ���� �߻� ��Ҹ� �˷��ݴϴ�.  
---------------------------------------------------------------------------------------- 
- ��Ŭ�������� ���� ã�� 
Ctr + Shift + R: Open Source 
==============================================================================================================

������������������� 2008.09.05(��) �۾� �����������������
---> 07:00 ~ 23:00 

- ���� Ȩ ������ Prj
- ���׺�����ȸ/�ݵ庯��[���κ���>������ȸ/����>���賻����ȸ] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction 
--> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction 
CYPIICVI_fund_list.jsp ======> �Ϸ� 
http://100.1.131.106/cyber/cyincm_varamt.do?q=6401836A189E007E4D4993C26094CB78F7784DD200167F 

- ������ ��ȸ[���κ���>������ȸ/����>���賻����ȸ] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java -->   
CYPIICVI_reserve_viw.jsp ======> �Ϸ� 
--> ���׺��� ����ȸ (�������ź���) CYINCM_varamt01_viw.jsp 
  
- ���ͷ� ��ȸ[���κ���>������ȸ/����>���賻����ȸ] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java -->   
CYPIICVI_bound_viw.jsp ======>     

  <definition name="CYINCM_varamtPension_upd" extends="cyber"> 
  <put name="body"   value="/jsp/kblcm/cyber/in/cm/CYINCM_varamtPension_upd.jsp" /> 
  </definition> 
==============================================================================================================

- ����(��ȣ�� ģ��)
1. ����Ĵ�(T)054-278-8784): ������������б� ������ ==> �߼� ���װ� ���� ��� �Ұ� ����
==============================================================================================================

������������������� 2008.09.06(��) �۾� �����������������
---> 08:30 ~ 22:30   --> ���ٹ� 

- ���� Ȩ ������ Prj
- ���ͷ� ��ȸ[���κ���>������ȸ/����>���賻����ȸ] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_bound_viw.jsp ======> �Ϸ� 
==============================================================================================================

- �ݾ� ���� 
VL117UM_O_IN_AMT_SUM_NEW = CMStringUtil.replace(VL117UM_O_IN_AMT_SUM,",",""); // ���Ժ���ᴩ��  
Long tempIN_AMT_SUM; 
//System.out.println("[/V7030805_OUT.java]:[setOutValue()]:[VL117UM_O_IN_AMT_SUM_NEW]"+  
VL117UM_O_IN_AMT_SUM_NEW + "[VL117UM_O_IN_AMT_SUM_NEW]"+ VL117UM_O_IN_AMT_SUM_NEW); 
// ���Ժ���ᴩ�� = ���Ժ���ᴩ�� - ����ü�����(��������)����  
tempIN_AMT_SUM = CMStringUtil.parseLong(VL117UM_O_IN_AMT_SUM_NEW)  
- CMStringUtil.parseLong(VL117UM_O_IN_AMT_SUM_NEW);  
String strIN_AMT_SUM = CMStringUtil.stringTomoney(""+ tempIN_AMT_SUM);  //�ݾ����� ��ȯ   
//System.out.println("[/V7030805_OUT.java]:[setOutValue()]:[tempIN_AMT_SUM]"+ tempIN_AMT_SUM  
+ "[VL117UM_O_IN_AMT_SUM_NEW]"+ CMStringUtil.parseLong(VL117UM_O_IN_AMT_SUM_NEW)  
+ "[VL117UM_O_IN_AMT_SUM_NEW]"+ CMStringUtil.parseLong(VL117UM_O_IN_AMT_SUM_NEW)); 
==============================================================================================================

������������������� 2008.09.07(��) �۾� �����������������
---> 08:10 ~ 21:30   --> �Ͽ�ٹ� 

- ���� Ȩ ������ Prj
- �ݵ庯��[���κ���>������ȸ/����>���賻����ȸ] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_change_ins.jsp ======>   
--> ���׿��ݺ��� �ݵ庯��: CYINCM_varamtPension_upd.jsp 
(CYINCM_varamtUpd_viw.jsp) 
����������ȣ: 206115002803 

- �ݵ庯�� ó��[���κ���>������ȸ/����>���賻����ȸ] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_change_completion.jsp ======>     
  
-  �ݵ�(�ɼ�)���� ���[���κ���>������ȸ/����>���賻����ȸ] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_change_cancel.jsp ======>   
CYINCM_varamtUpd_viw.jsp(���׺��� �ݵ庯���û ����� ��ȸ) 

- �ݵ�(�ɼ�)���� ��� ó��[���κ���>������ȸ/����>���賻����ȸ] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
-------------------------------------------------------------------- 
 - 7um�� ���� �ٶ� 
- ��ຯ�� ó�� �߿� ���� �� ������ȣ, ��������, �ڱ������� 
- ���� �������̸� ��� �� �� �����Ƿ� 
PM650UM�� ���ؼ� ������ȣ �־ ������ ��� ���� 
������ȣ�� �ְ� 
��Ҵ� PM650UM   
==============================================================================================================

- �׽�Ʈ ���� 
http://10.33.3.19/KBLCM/cy/subMain.do 
==============================================================================================================

- ���� ������ 
2008�� 3�� ~ 9������: 7���� �Ա�(���� ���� 6���� ã�� ��) 
���� CMA�� 13���� �Ա��� ��(==> �Ա� �Ϸ�) 
============================================================================================================== 

������������������� 2008.09.08(��) �۾� �����������������
---> 07:00 ~ 23:40  --> ���� �׽�Ʈ ���� 

- ���� Ȩ ������ Prj
- �ݵ庯��[���κ���>������ȸ/����>���賻����ȸ] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_change_ins.jsp ======>    
CYINCM_varamtPension_upd.jsp(���׿��ݺ��� �ݵ庯��) 
����������ȣ: 206115002803 

- �ݵ庯�� ó���Ϸ�[���κ���>������ȸ/����>���賻����ȸ] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_change_completion.jsp ======>     
  
-  �ݵ�(�ɼ�)���� ���[���κ���>������ȸ/����>���賻����ȸ] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_change_cancel.jsp ======>   
CYINCM_varamtUpd_viw.jsp(���׺��� �ݵ庯���û ����� ��ȸ) 

- �ݵ�(�ɼ�)���� ��� ó��[���κ���>������ȸ/����>���賻����ȸ] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 

new CommareaString$Spec( "PM112FS_I_PRCS_CAT1" , 1) , // 2���(1ó��, 2���) 
new CommareaString$Spec( "PM112FS_O_RCV_NO" , 15) , // ������ȣ 
==============================================================================================================

- Flash ����ӵ� ���� 
��������:    
�� ������ ��ũ��Ʈ�� ���� Flash Player�� ����ӵ��� �����ϴ�.  
��� �����ϸ� ��ǻ�Ϳ��� �������� ���� ���� �ֽ��ϴ�. ��ũ��Ʈ�� �ߴ��Ͻðڽ��ϱ�?" 
����: 
1. swf ���� ���� 
2. �÷����� for�� ���� 
3. ��ǻ�� ��� ���� 
�ذ�å:  
�׷��� ���̺귯���� �ִ� ���� �ϳ��ϳ� üũ�ؼ� (����Ŭ���ϸ� ȭ�鿡 ��Ÿ���ϴ�.)   
�׷��� ������ �ִ� ���� Ŭ���ϴ�......�÷��� ���α׷��� �������� �ݱ������...    
�׷��� ���̺귯���� ������ ���� �����ϰ� ���Ӱ� �����߽��ϴ�..   
==============================================================================================================

������������������� 2008.09.09(ȭ) �۾� �����������������
---> 07:40 ~ 22:30  --> �̰��� �μ��ΰ� �ź�(��¹� 5��) 

- ���� Ȩ ������ Prj
- ����ᳳ�� �Ͻ����� ��ǰ����[���κ���>������ȸ/����>����ᳳ�� �Ͻ�����]  
kblcm.cy.pi.ic.is.action.CYPIICIS_frontUpdAction 
CYPIICIS_front_lst.jsp ======>  
- us Host ���� 
YA401GMCall.java, YA401UM_W00_PARAM.java 

- ����ᳳ�� �Ͻ����� ��û[���κ���>������ȸ/����>����ᳳ�� �Ͻ�����]  
kblcm.cy.pi.ic.is.action.CYPIICIS_frontUpdAction 
CYPIICIS_front_reg.jsp ======>      
- us Host ���� 
YA402GMCall.java, YA402UM_W00_PARAM.java 
  
-  ����ᳳ�� �Ͻ����� ó���Ϸ�[���κ���>������ȸ/����>����ᳳ�� �Ͻ�����]  
kblcm.cy.pi.ic.is.action.CYPIICIS_frontUpdAction 
CYPIICIS_front_regDone_viw.jsp ======>    
- us Host ���� 
YA403GMCall.java, YA403UM_W00_PARAM.java 

- ����ᳳ�� �Ͻ����� ��û ����[���κ���>������ȸ/����>����ᳳ�� �Ͻ�����]  
kblcm.cy.pi.ic.is.action.CYPIICIS_frontUpdAction 
CYPIICIS_front_reg_lst.jsp ======>   
- us Host ���� 
YA404GMCall.java, YA404UM_W00_PARAM.java 
==============================================================================================================

[09/09 16:30:43] [ERROR] kblcm.cy.pi.ic.is.action.CYPIICIS_frontUpdAction - Error occured while execute action 
ibus.jcon.struct.JCNoSuchNameException: �������� �ʴ� Commarea �̸��Դϴ�.(YA401UM_O_PRTY_ID) 
at ibus.jcon.struct.CommareaStruct.get(ibus/jcon/struct/CommareaStruct) 
at kblcm.hostif.us.call.YA401GMCall.<init>(YA401GMCall.java:82) 
at kblcm.cy.pi.ic.is.action.CYPIICIS_frontUpdAction.service(CYPIICIS_frontUpdAction.java:112) 
==============================================================================================================

- ����ȸ�� �α���(���̹� â��) 
http://localhost:8080/KBLCM/cm/CMLCPC_DevLogin.do 
(/WEB-INF/jsp/cm/lc/pc/CMLCPC_DevLogin.jsp) 

import kblcm.common.web.login.context.PrivateLoginContext;  //����ȸ�� �α���(���̹�â��) 
import com.opensymphony.xwork2.ActionContext; 

Map<Object, Object> Session = ActionContext.getContext().getSession();   
PrivateLoginContext sessionVO = getLoginSessions().getPrivateLoginContext();   //���ΰ� �α��� ����  

String szUserId = sessionVO.getLoginId(); // ���̵�  
String name = sessionVO.getName(); // �̸�  
String juminNo = sessionVO.getJuminNo(); // �ֹι�ȣ  
String email = sessionVO.getEmail();  //Email 
String hometel = sessionVO.getHomePhone();  //����ȭ  

if (!chContrNo.equals("")) { 
sessionVO.setChContrNo(chContrNo);  //��ຯ��������ȣ �α��� ���ǿ� ���� 
} 
==============================================================================================================

- eclipse ���� 
���: [SetPropertiesRule]{Server/Service/Engine/Host/Context} Setting property 'source' to 
'org.eclipse.jst.jee.server:KBLCM' did not find a matching property. 
����: web.xml(/KBLCM/WebContent/WEB-INF) ������ �Ű��� 
==============================================================================================================

- ���� ����(��Ŭ���� ����) 
Timeout waiting for Tomcat v6.0 Server at localhost to start. Server did not start after 45s.  
(�����ϰ� ���� 45 �� �ǵ��� ���� �⵿�� �Ϸ���� ������ ������ ���鼭 stop �ȴ�) 
����: ��Ŭ���� ����� ƨ�ܹ����� ����.. (��������) 
��ġ: Window �޴��� preference -> Server �� ���ø� ���� �Ʒ��ʿ� Server timeout delay ==> longer ����  
==============================================================================================================

- Commarea �� ���� 
new CommareaArray$Spec( "PJ841UM_O_LOAN_RATEC" , 1 , new CommareaStruct$Spec 
("PJ841UM_O_LOAN_RATEC" , new Commarea$Spec[] { //�������� 
new CommareaPackDecimal$Spec( "PJ841UM_O_LOAN_RATE" , 6) , // 
})), 
----------------------------------------------------------------------------------- 

HashMap hm1 = new HashMap(); 
PJ841UM_O_LOAN_RATEC = PJ841UM_O_REPT_DATA.get("PJ841UM_O_LOAN_RATEC");//�������� 
PJ841UM_O_LOAN_RATE = PJ841UM_O_LOAN_RATEC.get("PJ841UM_O_LOAN_RATE").getString(); 
hm.put("PJ841UM_O_LOAN_RATE",PJ841UM_O_LOAN_RATE); 
==============================================================================================================

- YA401GM.java ���Ͽ��� �Ʒ����� �Է°��� ������ ������ ���ϴ�.   
�Է°� Ȯ�� 
getYA401UM_I_INQ_GUBUN( ��ȸ���� ) : 1 
getYA401UM_I_PRTY_REG_NO( �ֹι�ȣ ) : * 
getYA401UM_I_INAG_INAG_NO( ���ǹ�ȣ ) :  
getYA401UM_I_PROC_GUBUN( �������� ) : 1 
getYA401UM_I_SUB_BRNC_NO( ó����� ) : INTERNET 
ibus.jcon.cics.CICSException: ECI_ERR_TRANSACTION_ABEND(-7) 
at ibus.jcon.cics.CICSCommunication.invoke(ibus/jcon/cics/CICSCommunication) 
==============================================================================================================

������������������� 2008.09.10(��) �۾� �����������������
---> 07:50 ~ 23:00 

- ���� Ȩ ������ Prj
 - �ݵ庯��[���κ���>������ȸ/����>���賻����ȸ] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_change_ins.jsp ======>    
CYINCM_varamtPension_upd.jsp(���׿��ݺ��� �ݵ庯��) 

- �ݵ庯�� ó���Ϸ�[���κ���>������ȸ/����>���賻����ȸ] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_change_completion.jsp ======>     
CYPIICVI_varamtDAO.java    

private CYPIICVI_varamtServiceImpl CYPIICVI_varamtServiceBean  
   = (CYPIICVI_varamtServiceImpl) ContextLoader.getCurrentWebApplicationContext().getBean("CYPIICVI_varamtServiceBean"); 

cypiicvi_varamtVO = CYPIICVI_varamtServiceBean.setVaramtFund(cypiicvi_varamtVO);   // �ݵ� ���� ó��  
---------------------------------------------------------------------------------------------------------- 

--  �ݵ庯�� �Ѱ� ��ȸ 
SELECT * FROM TB_CYCML031;    --//CYQ02103 
--  �ݵ庯��  ��ȸ 
SELECT * FROM TB_CYCML033;    --//CYQ02105  
--  ��ຯ�� ��� ���� ��� 
SELECT * FROM TB_CYCML030;    --//CYQ09910  
--------------------------------------------------------------------- 

<!-- �ݵ庯�� �� �� ����(DB ����)   --> 
<query id="CYQ02103" type="pstmt" class="kblcm.cy.pi.ic.vi.dao.dao.CYPIICVI_varamtDAO"><![CDATA[ 
INSERT INTO  
   TB_CYCML031 (   
CNNCT_DM , /* ���� �Ͻ� */ 
POLCY_NO , /* ���� ��ȣ */ 
PROC_NO , /* ó�� ��ȣ  */ 
NM , /* �̸�  */ 
RESD_NO , /* �ֹε�� ��ȣ_5  -----------> */ 
AUTO_OPT, /* ���丮�߶��� �ɼ�  */ 
FUND_INPUT_RATE1, /* �ݵ� ���� ���� 1  */ 
FUND_INPUT_RATE2, /* �ݵ� ���� ���� 2  */ 
FUND_INPUT_RATE3, /* �ݵ� ���� ���� 3  */ 
FUND_INPUT_RATE4, /* �ݵ� ���� ���� 4 _10  ----------------------------> */ 
FUND_INPUT_RATE5, /* �ݵ� ���� ���� 5  */ 
FUND_INPUT_RATE6, /* �ݵ� ���� ���� 6  */ 
FUND_INPUT_RATE7, /* �ݵ� ���� ���� 7  */ 
RSV_AMT, /* ���� �ݾ�  */ 
PROC_GB, /* ó�� ����_15   ----------->  */ 
PROC_RSLT, /* ó�� ���  */ 
PROD_GB, /* ��ǰ ����  */ 
CNNCT_TYP, /* ���� ����  */ 
CNNCT_IP, /* ���� IP  */ 
SL_CD, /* �Һз� �ڵ� _20  ----------------------------> */ 
AVG_SPLT_INV_OPT, /* ��� ���� ���� �ɼ�  */ 
AVG_SPLT_INV_TRM /* ��� ���� ���� �Ⱓ  */ 
VALUES (  
?, ?, ?, ?, ?,  
?, ?, ?, ?, ?, 
?, ?, ?, ?, ?, 
?, ?, ?, ?, ?, 
?, ? 
 )    
 ]]></query> 
==============================================================================================================

- DB2 ���� 
IP: 10.33.160.178 �����ͺ��̽���: DB2ADMIN( ����: KYOBOWWW) 
ID/PWD: inst01/inst01www CATALOG TCPIP NODE: renewdev 
REMOTE: 10.33.160.178 SERVER PORT: 50000 
REMOTE_INSTANCE: inst01 OSTYPE AIX;   
CATALOG DATABASE KYOBOWWW AS WWW 
  AT NODE: renewde AUTHENTICATION: SERVER; 
==============================================================================================================

- DB ���� 
[jcc][10145][10844][3.51.90] ��ȿ���� ���� �Ű����� 1: �Ű����� �ε����� ������ ����ϴ�.  
ERRORCODE=-4461, SQLSTATE=42815 
[09/10 19:49:28] [ERROR] kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction - Error occured while execute action 
[errorCode : CYM03902^]# [errorMessage : CYM03902^]# [errorModule : null^]# [exception : com.ibm.db2.jcc.a.bn:  
����: ���̺� ����� Į������ ��ġ ���� ���� 
==============================================================================================================

-  �ݵ�(�ɼ�)���� ���[���κ���>������ȸ/����>���賻����ȸ] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_change_cancel.jsp ======>   
CYINCM_varamtUpd_viw.jsp(���׺��� �ݵ庯���û ����� ��ȸ) 

- �ݵ�(�ɼ�)���� ��� ó��[���κ���>������ȸ/����>���賻����ȸ] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 

new CommareaString$Spec( "PM112FS_I_PRCS_CAT1" , 1) , // 2���(1ó��, 2���) 
new CommareaString$Spec( "PM112FS_O_RCV_NO" , 15) , // ������ȣ 
==============================================================================================================

1. ����༱��[�������>��������]   
URL: http://127.0.0.1:8080/KBLCM/cy/CYCIRITC_selTrgCon.do 
�׼Ǹ�: kblcm.cy.ci.ri.tc.action.CYCIRITC_selTrgConAction.java 
INPUT:  
=============  EW00EW76 [ECW076OD] �Է°� Ȯ�� ============= 
EW00EW76_IN : EW76_LOGIN_GB [1]  --> �α��� ���� 
EW00EW76_IN : EW76_JU_NO [720625-1703411] --> �ֹι�ȣ 
--------------------------------------------------------------------------------------- 

2) �������� ��ȸ[�������>��������>������ ��ȸ/����>��������]  
URL: http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_insuredPerson_lst.do 
�׼Ǹ�: kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonAction.java 
INPUT:  
=============  EW00EW06 [ECW006OD] �Է°� Ȯ�� ============= 
EW00EW06_IN : COM_I_SEL [9]   --> ��ȸ �޺���(9:��ü, ������, ������) 
EW00EW06_IN : COM_I_PBHJ []   --> ��ȸ �޺���(�ֹε�Ϲ�ȣ) 
EW00EW06_IN : COM_I_NAME []   --> ��ȸ �޺���(�̸�) 
EW00EW06_IN : COM_K_CUR_PAGE [000001]   --> ���� ������  
==============================================================================================================

������������������� 2008.09.11(��) �۾� �����������������
---> 07:20 ~ 21:40  --> ���� �׽�Ʈ(��ü), ����, �뷡��(�����, �̰���) 

- ���� Ȩ ������ Prj
 - �ݵ庯��[���κ���>������ȸ/����>���賻����ȸ] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_change_ins.jsp ======>    
  
- �ݵ庯�� ó���Ϸ�[���κ���>������ȸ/����>���賻����ȸ] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_change_completion.jsp ======>   
==============================================================================================================

Ȥ�� ������ üũ�� CYCIRIIS_depositor_pop �� ȣ���Ͻô� ���� �����ø� ���� �ٶ��ϴ�.   
* get ��� ���޽� �ѱ�(�����ָ�)�� ������ �����  
CYCIRIIS_depositor_pop ȣ��� �Ʒ��� ���� ȣ���Ͽ��� ���������� �����մϴ�. 
   
1. ȣ�� ��ũ��Ʈ ���� 
/* =================================================================== 
Function : OwnerCheck() 
Return : 
Usage : ���� ���� üũ 
=================================================================== */ 
function OwnerCheck() 
{ 
winobj = window.open("", "remote", "width=500,height=303, scrollbars=no"); 
document.depositorFrm.target = "remote"; 
document.depositorFrm.action = "/KBLCM/cy/cyciriisDepositorCheck.do"; 
document.depositorFrm.submit(); 
} 
==============================================================================================================

- V2000801odCall.java ���Ͽ��� 
V2000801 [] �Է°� Ȯ��   ============= 
V2000801_IN : MSG_CODE [0000] 
V2000801_IN : NAME8 [�� ��] 
V2000801_IN : JUMIN [*] 
>> Communication is null, CTG Communication settimg.( V7000801 : 100.1.131.106:2006 ) 
CICS ECI Call Result value : 0 
[09/11 09:55:05] [ERROR] kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction - Error occured while execute action 
[errorCode : NICE]# [errorMessage : MOD_CYNICE  ]# [errorModule : MOD_CY  ]# [exception : ] 
==============================================================================================================

- 106�� �������� (�ֹι�ȣ: *) 
���̹�â�� --> ���� -> ���/��ຯ�� -> ���׺�����ȸ/�ݵ庯�� 
Ŭ���� �ϸ� �� ���� ���� ������ ���ϴ�. 
==============================================================================================================

- �ݵ�(�ɼ�)���� ��� ó�� 
PM112UMCall.java ����... 
=== PM112UM �Է°� Ȯ�� ============================== 
PM112FS_I_PRCS_CAT1( ���� ) : 2 
PM112FS_I_PSN_GRP_CAT( ���δ�ü ) :  
PM112FS_I_RCV_EMPL_NO( ��� ) : 00000009 
PM112FS_O_RCV_NO( ������ȣ ) : 2008091110010 
PM112UM MSG_CODE : D0100090 
MESSAGE : ��ȸ ���ǿ� �����ϴ� �����Ͱ� �����ϴ�. 
������Ұ� ���������� �̷������ �ʾҽ��ϴ�.  
[09/11 20:43:18] [ERROR] kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction - Error occured while execute action 
[errorCode : D0100090^]# [errorMessage : ��ȸ ���ǿ� �����ϴ� �����Ͱ� �����ϴ�. 
[09/11 14:56:53] [ERROR] kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction - Error occured while execute action 
]# [errorModule : MOD_CY^]# [exception : ] 
at kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.service(CYPIICVI_varamtAction.java:777) 
����: PM650FS_I_MODF_MOD_SEQNO;  // �����Ϸù�ȣ_5 
==============================================================================================================

������������������� 2008.09.12(��) �۾� �����������������
---> 09:00 ~ 05:00   --> ö�� 

- ���� Ȩ ������ Prj
- �ݵ庯�� ����, �ݵ�(�ɼ�)���� ��� ó�� Host �׽�Ʈ(��� SM: ȫ���� ����) 

 - �ݵ庯��[���κ���>������ȸ/����>���賻����ȸ] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_change_ins.jsp ======> ó���Ϸ� 
  
- �ݵ庯�� ó���Ϸ�[���κ���>������ȸ/����>���賻����ȸ] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_change_completion.jsp ======>  ó���Ϸ� 
------------------------------------------------------------------------------------------------------------- 
  
-  �ݵ�(�ɼ�)���� ���[���κ���>������ȸ/����>���賻����ȸ] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_change_cancel.jsp ======>   
CYINCM_varamtUpd_viw.jsp(���׺��� �ݵ庯���û ����� ��ȸ) 

- �ݵ�(�ɼ�)���� ��� ó��[���κ���>������ȸ/����>���賻����ȸ] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java  
PM650UMCall.java, PM650FS_W00_PARAM.java  ==> �ݵ庯����� 
(PM600UMCall.java, PM600UM_W00_PARAM.java  ==> �ݵ庯�� ó��)   
==============================================================================================================

- ��¥ ��ȯ  
cypiicvi_varamtVO.setLst_Mo(CMStringUtil.stringToDate6((String)hm.get("VL117UM_S01_O_LST_MO"), ".")); //�������Կ�(6�ڸ�) 
sh.put("sinchung_date2", CY_commonUtil.stringToDateForm(COM_O_GJ_DATE, "."));  //��¥��ȯ(.���� ��ȯ) 
String insuPolicyNew = CY_commonUtil.getNumberStar(EW76_JG_NO, 7, 4); //���ǹ�ȣ(* �տ��� 5�ڸ����� 3�ڸ��� * ó��) 
- trim()�Լ� 
COM_O_CUR_COUNT = COM_O_CUR_COUNT.trim(); 
==============================================================================================================

- DB ���� ����   
DB2 SQL Error: SQLCODE=-204, SQLSTATE=42704, SQLERRMC=KYOBOWWW.TB_CYCML033, DRIVER=3.51.90 
[09/13 03:23:17] [ERROR] kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction - Error occured while execute action 
[errorCode : CYM03902^]# [errorMessage : CYM03902^]# [errorModule : null^]# [exception :  
com.ibm.db2.jcc.a.bn: DB2 SQL Error: SQLCODE=-204, SQLSTATE=42704,  
SQLERRMC=KYOBOWWW.TB_CYCML033, DRIVER=3.51.90] 
at kblcm.cy.pi.ic.vi.dao.CYPIICVI_varamtDAO.insertVaramtRate(CYPIICVI_varamtDAO.java:156) 
���ð�:  
[/CYPIICVI_varamtDAO.java] [insertVaramtRate()]=> [getAccessDate]20080913032316 
[getInsuPolicyNum]208017022729[getProcNo]20080913032316 
[FundType]00[FundCode]E001[FundRate]0  
==============================================================================================================

������������������� 2008.09.15(��) �۾� �����������������
---> 07:00 ~ 20:00   --> �߼� ���� 

- ���� Ȩ ������ Prj
- SVN ���� 
����:  
 Attempted to lock an already-locked dir 
org.tigris.subversion.javahl.ClientException: Attempted to lock an already-locked dir 
svn: Working copy 'C:\DevEnv\Projects\KBLCM\src\kblcm\cy\pi\ic\vi' locked 
����: �����ϴ� ���������� �ٽ� ������ ���� ���� �������� ������(���� ���� ���� ����)  
��ġ: Team -> Cleanup  
�۾� ī�Ǹ� ������ ���� �α׸� �����ϰ� ���μ����� ����� ���۴ϴ�.  
---------------------------------------------------------------------------------------------------------- 

- SVN���� ���ϴ� ���� import 
SVN Repository Eploring -> ����(���콺 ������ Ŭ��) -> import -> import Folder  
URL of repository: svn://10.33.165.172/kyobo/KBLCM/src/kblcm/cy/pi/ic/vi/action  ==> SVN�� ���� 
brose: C:\DevEnv\Projects\KBLCM\src\kblcm\cy\pi\ic\vi\action ���� 
OK Ŭ�� 
==============================================================================================================

- ��� �����ŷ� �� �α��� 
http://localhost:8090/KBLCM/cm/CMLCCCCustomerViwAction.do  
(/jsp/cm/lc/cc/CMLCCC_customer_viw.jsp)  
 - ���� �����ŷ� �� �α��� 
http://localhost:8090/KBLCM/cm/CMLCPCCustomerViwAction.do  
(/jsp/cm/lc/pc/CMLCPC_customer_viw.jsp)  
 - ���׺�����ȸ/�ݵ庯�� 
http://localhost:8080/KBLCM/cy/CYPIICVI_varamt.do 
==============================================================================================================

������������������� 2008.09.16(ȭ) �۾� �����������������
---> 07:20 ~ 22:00  --> ����(�����(�츮������ ��), �̰���(�㿡 ������ ��ȭ��: ������ �ִٰ� �ϴ� ����)) 

- ���� Ȩ ������ Prj
-  �ݵ�(�ɼ�)���� ���[���κ���>������ȸ/����>���賻����ȸ] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_change_cancel.jsp ======>   
CYINCM_varamtUpd_viw.jsp(���׺��� �ݵ庯���û ����� ��ȸ) 

- �ݵ�(�ɼ�)���� ��� ó��[���κ���>������ȸ/����>���賻����ȸ] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java  
PM650UMCall.java, PM650FS_W00_PARAM.java  ==> �ݵ庯����� 
(PM600UMCall.java, PM600UM_W00_PARAM.java  ==> �ݵ庯�� ó��)   
������ �븮(02-721-6225, ����: 8-100-6225) 
==============================================================================================================

- Publishing to Tomcat v6.0 Server at localhost 
1. refresh �����ϰ� Publishing �� �� 
2. Tomcat v6.0 Server(���콺 ������ Ŭ��) -> Clean �� �� 
3. Tomcat v6.0 Server(���� Ŭ��) -> Auto Publishing 
 user default publishing settings üũ -> Server timeout delay: normal ���� 
==============================================================================================================

- RSS 
�ٷ� �� �� ����Ʈ�� ��� ������ ���� ������� �����ϴ� ��Ŀ������ RSS (Rich Site Summary,  
RDF Site Summary �Ǵ� Really Simple Syndication)  
==============================================================================================================

- ��¥ ��ȯ  
// �������Կ�(200309  ==> 2003.09) 
cypiicvi_varamtVO.setLst_Mo(CMStringUtil.stringToDate6((String)hm.get("VL117UM_S01_O_LST_MO"), ".")); 
//������(20030903  ==> 2003-09-09) 
call.setPM650FS_I_RCV_DT(CY_commonUtil.stringToDateForm8(chContrNo_DT, "-"));    
==============================================================================================================

������������������� 2008.09.17(��) �۾� �����������������
---> 07:20 ~ 23:00 

- ���� Ȩ ������ Prj
-  �ݵ�(�ɼ�)���� ���[���κ���>������ȸ/����>���賻����ȸ] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_change_cancel.jsp ======>   
CYINCM_varamtUpd_viw.jsp(���׺��� �ݵ庯���û ����� ��ȸ) 

- �ݵ�(�ɼ�)���� ��� ó��[���κ���>������ȸ/����>���賻����ȸ] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java  
PM650UMCall.java, PM650FS_W00_PARAM.java  ==> �ݵ庯����� 
(PM600UMCall.java, PM600UM_W00_PARAM.java  ==> �ݵ庯�� ó��)   
������ �븮(02-721-6225, ����: 8-100-6225) 
==============================================================================================================

if (!pm112um.getMSG_CODE().equals("Z01030I0")) { 
System.out.println("[/CYPIICVI_varamtServiceImpl.java]: �ݵ庯�� ���� ���� ���� :" + hostMsg);  
throw new KBLCMSysException("CYM03904");   //���� �޼��� ������ 
throw new KBLCMSysException(hostMessage);  //HOST ���� ������ �߻� 
} 
==============================================================================================================

- Tab�� �Ǽ� ���̱� 
<ul class="lst_tab1" style="margin-top:20px;"> 
	<li tabGroup="tab1" tabSeq="1" contentType="singleIframe" contentId="content1" contentSrc="/KBLCM/cy/
	CYCIRISP_notProcess.do" activeTab="true" class="lst_tab1_active" style="width:160px"> 
	<div id="tab1_subtitle_on"><span>ó������ ����</span></div> 
	</li> 
	<li tabGroup="tab1" tabSeq="1" contentType="singleIframe" contentId="content1" contentSrc="/KBLCM/cy/
	CYCIRISP_notProcess.do" activeTab="false" style="width:160px"> 
	<div id="tab1_subtitle_off"><span>ó������ ����</span></div> 
	</li> 
	<li tabGroup="tab1" tabSeq="2" contentType="singleIframe" contentId="content1" contentSrc="/KBLCM/cy/
	CYCIRISP_businessProcess.do" activeTab="true" class="lst_tab1_active" style="width:160px"> 
	<div id="tab2_subtitle_on"><span>�������� ����</span></div> 
	</li> 
	<li tabGroup="tab1" tabSeq="2" contentType="singleIframe" contentId="content1" contentSrc="/KBLCM/cy/
	CYCIRISP_businessProcess.do" activeTab="false" style="width:160px"> 
	<div id="tab2_subtitle_off"><span>�������� ����</span></div>  
	</li> 
</ul> 

<script language="javascript"> 
	/ /Tab�� �Ǽ� ���̱� 
	parent.document.getElementById('tab1_subtitle_on').innerHTML = "<span>ó������ ����(<s:property 
	value="resultMap.recv_data.recv_data.size"/>��)</span>"; 
	//parent.document.getElementById('tab1_subtitle_off').innerHTML = "<span>ó������ ����(<s:property 
	value="resultMap.recv_data.recv_data.size"/>��)</span>";  
</script> 
==============================================================================================================

������������������� 2008.09.18(��) �۾� �����������������
---> 06:50 ~ 23:00  --> �ý��� ���� �׽�Ʈ(19 ~ 21��), �������� e-Ŭ�� ���� �߱� 

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

- ��Ŷ���Ǽ�-�߰����ϰ�����.xls 
�߰�� �ϰ����� ��������(EU00W180_PARAM.java), �߰�� �ϰ����� ������ ��ȸ(EU00W181_PARAM.java),  
�߰�� �ϰ����� �����û(EU00W182_PARAM.java), �߰�� �ϰ����� ��ܴٿ�ε�(EU00W183_PARAM.java)  

 - �������� �ϰ�û��(�����û��) 
http://127.0.0.1:8080/KBLCM/cy/cyciriisInsuReqMain.do 
==============================================================================================================

//�����ȣ ��ȸ VO  
CYCIRISP_returnAddrService returnAddr = (CYCIRISP_returnAddrService)ContextLoader.
getCurrentWebApplicationContext().getBean("CYCIRISP_returnAddrServiceBean"); 
String addr = returnAddr.returnAddr(contractVO.getCOM_O_POST_NO());   //�����ȣ���� ã�� �ּ�  
System.out.println("[/CYCIRIIS_generalContractAction.java]:[service()]:[getCOM_O_POST_NO()]"+ contractVO.getCOM_O_POST_NO() +"[addr]"+ addr); 

//resultMap 
resultMap.put("recv_data", contractVO); 
resultMap.put("POST_ADDR", addr); //�ּ� 
resultMap.put("POST_NO", CMStringUtil.stringToDate6(contractVO.getCOM_O_POST_NO(), "-"));  //�����ȣ 
==============================================================================================================

������������������� 2008.09.19(��) �۾� ����������������� \
---> 06:50 ~ 23:00 

- ���� Ȩ ������ Prj
- ��������  ��� ���� Host �׽�Ʈ(��� SM: �̼�ȣ ����)
1-1) �������� �ϰ� ����[�������>��������>������ ��ȸ/����>��������>��������  ��� ����]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSend_ins.jsp  ======>   

2) ���۰�� Ȯ��/����[�������>��������>������ ��ȸ/����>��������>��������  ��� ����]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSendOK_viw.jsp  ======> 

3) �����û[�������>��������>������ ��ȸ/����>��������>��������  ��� ����] 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotalSendApprvAction 
CYCIRIIS_insuredPersonTotalSendApproval_view.jsp  ======> 

- ��Ŷ���Ǽ�-�߰����ϰ�����.xls 
�߰�� �ϰ����� ��������(EU00W180_PARAM.java), �߰�� �ϰ����� ������ ��ȸ(EU00W181_PARAM.java),  
�߰�� �ϰ����� �����û(EU00W182_PARAM.java), �߰�� �ϰ����� ��ܴٿ�ε�(EU00W183_PARAM.java) 

 - �������� �ϰ�û��(�����û��) 
http://127.0.0.1:8080/KBLCM/cy/cyciriisInsuReqMain.do  
CYCIRIIS_bundleSendAction.java(������ �ϰ�û��) 
==============================================================================================================

- �ʵ� ���� 
1. �߰�׺��� �̸�(�Ʒ� �ʵ� ����) 
COM-IO-IS-YMD(�Ի�����) 
COM-IO-JGJS-YMD(�߰���������) 
COM-IO-BGH-GGY(���ر޿�)  
==============================================================================================================

������������������� 2008.09.20(��) �۾� �����������������
---> 08:30 ~ 23:00   --> ��� �ٹ� 

- ���� Ȩ ������ Prj
- ��������  ��� ���� Host �׽�Ʈ  
1-1) �������� �ϰ� ����[�������>��������>������ ��ȸ/����>��������>��������  ��� ����]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSend_ins.jsp  ======>   

2) ���۰�� Ȯ��/����[�������>��������>������ ��ȸ/����>��������>��������  ��� ����]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSendOK_viw.jsp  ======> 

3) �����û[�������>��������>������ ��ȸ/����>��������>��������  ��� ����] 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotalSendApprvAction 
CYCIRIIS_insuredPersonTotalSendApproval_view.jsp  ======> 
  
- ��Ŷ���Ǽ�-�߰����ϰ�����.xls 
�߰�� �ϰ����� ��������(EU00W180_PARAM.java), �߰�� �ϰ����� ������ ��ȸ(EU00W181_PARAM.java),  
�߰�� �ϰ����� �����û(EU00W182_PARAM.java), �߰�� �ϰ����� ��ܴٿ�ε�(EU00W183_PARAM.java) 

 - �������� �ϰ�û��(�����û��) 
http://127.0.0.1:8080/KBLCM/cy/cyciriisInsuReqMain.do  
CYCIRIIS_bundleSendAction.java(������ �ϰ�û��) 
==============================================================================================================

������������������� 2008.09.21(��) �۾� �����������������
---> 07:30 ~ 23:00  --> �Ͽ� �ٹ� 

- ���� Ȩ ������ Prj
- ���豸��(insuDitc)���� �б� 
cyinam_varamtVO.setInsuDitc(para.getParameter("p_insuDitc")); // ���豸�� 
---------------------------------------------------------------------------------------------------------- 

1. ���׺�����ȸ JSP  
���׺�����ȸ CYINCM_varamt_lst  

2. ���׺��躯�� JSP  
���׺��躯��1 CYINCM_varamtPension1_upd  
���׺��躯��2 CYINCM_varamtPension2_upd  

3. ���׺������ȸ JSP  
���׺��躯���� YINCM_varamtUpd_viw  

�������ź����Ϲ���ȸ CYINCM_varamt01_viw  
���׿��ݺ����Ϲ���ȸ CYINCM_varamt02_viw  
���׺���Ʈ�÷��Ϲ���ȸ CYINCM_varamt03_viw  
����VUL�������Ϲ���ȸ CYINCM_varamt04_viw  
����VUL�������Ϲ���ȸ CYINCM_varamt05_viw 
  
- �ݵ� ���� �б� 
- 01, 02, 03 05, 06, 07(CYINCM_varamtPension1_upd.jsp) 
������� �Է� (��������/����Ʈ�÷���������/VUL������) 
- ��Ÿ(CYINCM_varamtPension2_upd.jsp)  ===> ����  
���豸��(01:��������, 02:���׿���, 03:����Ʈ�÷�����, 04:VUL����, 05:VUL����) 

 - ���� �����(CYPIICVI_varamtAction.java �ҽ�����) 
//                if (insuDitc.equals("01")  insuDitc.equals("03")  insuDitc.equals("05")  insuDitc.equals("07")) 
//                    forwardPage = cmd + "1"; 
//                else 
//                    forwardPage = cmd + "2";  
cmdTag = (cmdTag.equals("06") ? "02" : cmdTag); // ���׿���II (06)�� ���� �ӽ� ��ġ  
cmdTag = (cmdTag.equals("07") ? "03" : cmdTag); // ��ȯVUL (07)�� ���� �ӽ� ��ġ 2006-03-03   
  
  
�������ź����Ϲ���ȸ CYINCM_varamtDet01_viw 
���׿��ݺ����Ϲ���ȸ CYINCM_varamtDet02_viw 
���׺���Ʈ�÷��Ϲ���ȸ CYINCM_varamtDet03_viw 
����VUL�������Ϲ���ȸ CYINCM_varamtDet04_viw 
����VUL�������Ϲ���ȸ CYINCM_varamtDet05_viw 
   
�ۺ�������(CYINCM_varamtDet01_viw) 
* * * * 
�ۺ��׿���(CYINCM_varamtDet02_viw) 
* * * * 
�ۺ���Ʈ�÷�����(CYINCM_varamtDet03_viw)  --> ok 
* * * * 
��VUL����(CYINCM_varamtDet04_viw)  --> ok 
* * * *   
��VUL���� (CYINCM_varamtDet05_viw) 
* * * *   
==============================================================================================================

������������������� 2008.09.22(��) �۾� �����������������
---> 07:50 ~ 01:00   --> �ý�Ž(�����뿪) 

- ���� Ȩ ������ Prj
- ���豸��(insuDitc)���� �б� ���� ����(5��), �ݵ� ���� ���� 
cyinam_varamtVO.setInsuDitc(para.getParameter("p_insuDitc")); // ���豸�� 
==============================================================================================================

- ������ �븮(�ݵ� ��ȸ ���) 
����: 8-100-6228 ȸ����ȭ: 02-721-6228 
==============================================================================================================

������������������� 2008.09.23(ȭ) �۾� �����������������
---> 07:50 ~ 22:30  --> ����(�����, �̰���)  

- ���� Ȩ ������ Prj
- ���� ��ġ ���� ó��(�������) 
1. ������ ���޴� ��������� ��ȭ��ȣ ���� ��û 
��������: 365-1803/1804/1811 
��������: 393-9202/3 
�������: 365-1825/1684 
--------------------------------------------------------- 
2. �̹��� ���� ��û 
KBLCM/images/common/btn_re_transmission.gif(������)  
--> /btn_add_transmission(�߰������) 
==============================================================================================================

- �����ȣ ã�� 
http://10.33.3.19/KBLCM/cm/CMLCWJInformationInsViwAction.do 
<img src="/KBLCM/images/common/btn_zipcodeSearch2.gif" onclick="zipPop('homeZipNo1', 'homeZipNo2', 
'homeAddr1', 'homeAddr2',  'CYCIRIIS_generalContract_viw');"/> <!-- �����ȣ ã�� pop up --><br/>   
==============================================================================================================

- �������� ����Ȯ�μ� �߱� �μ�(/jsp/cy/icert/beans/genBeans.jsp) 
public class genBeans{ 
  private String      certutilsPath   = "/KBLCM/cdoc/inicert/js/certutils.js"; 
  //private String      configFile      = "/was_svr/iniCert/properties/cabcrypt.properties";  //�� ���� ��� 
  private String      configFile      = "C:/DevEnv/Tools/inicert/properties/cabcrypt.properties";  //���� ���� ��� 
} 
==============================================================================================================

- �α����� ���ǹ�ȣ ������ ����ó��(���� ����): COCYRIIS_session.java --> CYCIRISP_main01Action.java 
sessionVO.setRiUserType(szUserType); //����ڱ���(�ǹ���,������) 
sessionVO.setUser_auth(uType);  //����� ����(1: �ǹ���, 2: ������, 3: ��ȸ ������) 

 - �������� ���Ѱ� �ҷ����� getUser_auth()�� ��������� �α����� ���յǸ鼭 getRiUserType() �� ���� 
--------------------------------------------------------------------------------------------------------- 

<!-- ����༱�� sessionó�� -->  
<action path="/company/cocyriis_session"  type="com.kyobo.kblcm.company.cy.ri.is.action.COCYRIIS_sessionAction"  
validate="false">   
<forward name="session"  path="COCYRIYU_notProcess_lst" />  
<forward name="contract" path="COCYRIIS_contract" />   <!-- ��ȸ �������� ���  -->   
<forward name="userInfo" path="COCYRIIS_userInfo_viw" />  <!-- ����༱���� �������ȸ �߰� 2006-07-18 -->  
</action> 

<!--// ����������� ����[�������>��������>�����������] //--> 
<definition name="cy.CYCIRISP_main01" extends="cy.base_ci"> 
<put-attribute name="ScriptPath" value="/js/service/cy/ci"></put-attribute> 
<put-attribute name="ScriptName" value="CYCIRISP_main"></put-attribute> 
<put-attribute name="titleImage" type="string" value="/KBLCM/images/service/cy/title_business_progress01.gif"></put-attribute> 
<put-attribute name="content" value="/WEB-INF/jsp/cy/ci/ri/sp/CYCIRISP_main01.jsp"></put-attribute>  
</definition> 

<definition name="COCYRIYU_notProcess_lst" extends="company-cocyritc"> 
<put name="body" value="/jsp/kblcm/company/cy/ri/yu/COCYRIYU_notProcess_lst.jsp" /> 
</definition> 

<!-- ��ȸ �������� ���  -->   
<definition name="COCYRIIS_contract" extends="company-cocyritc"> 
<put name="body" value="/jsp/kblcm/company/cy/ri/is/COCYRIIS_generalContract_viw.jsp" /> 
</definition> 

<!-- ����༱���� �������ȸ �߰� 2006-07-18 -->  
<definition name="COCYRIIS_userInfo_viw" extends="company-cocyritc"> 
<put name="body" value="/jsp/kblcm/company/cy/ri/is/COCYRIIS_userInfo_viw.jsp" /> 
</definition> 
==============================================================================================================

������������������� 2008.09.24(��) �۾� �����������������
---> 07:00 ~ 22:30   --> ����ȭ ���� ���� ����� �븮(�������)�� �ο� 

- ���� Ȩ ������ Prj
- ���� ��ġ ���� ó��(�������)  
   
 2) �����û[�������>��������>������ ��ȸ/����>�������� ��������] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_insuredAltSelectAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltSelectAction 
CYCIRIIS_insuredAltSelect_lst.jsp ======>    
==============================================================================================================

������������������� 2008.09.25(��) �۾� �����������������
---> 07:00 ~ 04:00   --> ö��(�����: ���, ������) 

- ���� Ȩ ������ Prj
- ���� ��ġ ���� ó��(�������)  
   
1. �����������[�������>��������] 
 1) ó������ ���� 
http://127.0.0.1:8080/KBLCM/cy/CYCIRISP_notProcess.action    
com.kyobo.kblcm.company.cy.ri.yu.action.COCYRIYU_notProcessAction  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_notProcessAction 
CYCIRISP_main01.jsp, CYCIRISP_notProcess_lst.jsp  

- �������� Error : java.lang.ArrayIndexOutOfBoundsException: 4112 
����: Array�� 40�� �̻��� ���� 
----------------------------------------------------------------------------------------------------- 

if (urlcode == "31"  urlcode ==  "  ") { //�����û�� �����Ȳ ��ȸ(�����Ͻñ�) 
//2007.05.10 û�����μ��� ������ ����� ���常 �Ұ�� û�� ������ ���� ���� �����Ƿ� �߰�  
url_link = "/cy/cyciriisInsuReqMain.do?from=processSt";  
} 
else if (urlcode == "32") {  // �����û�� �����Ȳ ��ȸ(�߰�����)  
url_link = "/cy/CYCIRISP_insuReqRslt_lst.do"; 
} 
else if (urlcode == "33") { // �����û �����Ȳ ��ȸ(����û��) 
url_link = "/cy/CYCIRISP_transferReqApproval_lst.do"; 
} 
else if (urlcode == "21") {  // ����Ϲݻ��� ���� �����Ȳ ��ȸ(����û��)  
url_link = "/cy/CYCIRISP_generalContractRslt_viw.do"; 
}  
else if (urlcode == "41") {  // ����Ϲݻ��� ���� �����Ȳ ��ȸ(��ü�Ϲ�����)  
url_link = "/cy/CYCIRISP_generalContract.do"; 
}  
else if (urlcode == "51"  urlcode == "52") {  // ���޺����� �����Ȳ ��ȸ(���޺�����) 
url_link = "/cy/CYCIRISP_unpaidRetireSelected.do";  
} 
else if (urlcode == "53"  urlcode == "54") { // �������� ���� �� ���系��(�������߰��)  
url_link = "/cy/CYCIRISP_insuredAltSelect.do";  
}  
==============================================================================================================

1. �����������[�������>��������] 
 1) �������� ���� 
http://127.0.0.1:8080/KBLCM/cy/CYCIRISP_businessProcessAction.action 
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_businessProcessAction  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_businessProcessAction 
CYCIRISP_businessProcess_lst.jsp 
if (code == "21") { // ����Ϲݻ��� ���� �����Ȳ ��ȸ(����û��) 
url_link = "/cy/CYCIRISP_generalContractRslt_viw.do"; 
} else if (code == "31") { // �����û�� �����Ȳ ��ȸ(�����Ͻñ�)  
url_link = "/cy/CYCIRISP_insuReqRslt_lst.do"; 
} else if (code == "32") { // �����û�� �����Ȳ ��ȸ(�߰�����) 
url_link = "/cy/CYCIRISP_insuReqRslt_lst.do"; 
} else if (code == "33") { // �����û �����Ȳ ��ȸ(����û��)  
url_link = "/cy/CYCIRISP_transferReqApproval_lst.do"; 
} else if (code == "41") { // ����Ϲݻ��� ���� �����Ȳ ��ȸ(��ü�Ϲ�����) 
url_link = "/cy/CYCIRISP_generalContractRslt_viw.do"; 
} else if (code == "51") { // ���޺����� �����Ȳ ��ȸ(���޺�����) 
url_link = "/cy/CYCIRISP_unpaidRetireRslt.do"; 
} else if (code == "52") { // ������� �����Ȳ ��ȸ(�������) 
url_link = "/cy/CYCIRISP_joinCancelRslt.do"; 
} else if (code == "53") { // �������� ���� �� ���系��(�Ǻ����ں���) ===> �߰� 
url_link = "/cy/CYCIRISP_insuredAltRslt_lst.do"; 
} else if (code == "54") { // �������� ���� �� ���系��(�������߰��) ===> �߰� 
url_link = "/cy/CYCIRISP_insuredAltRslt_lst.do"; 
} else if (code == "71") { // ����� ���� �����Ȳ ��ȸ(����� ����) 
url_link = "/cy/CYCIRISP_userChangeRslt_viw.do"; 
} else if (code == "72") { // ����� ���� �����Ȳ ��ȸ(����� ����) 
url_link = "/cy/CYCIRISP_userChangeRslt_viw.do"; 
}   
==============================================================================================================

- �׽�Ʈ ����Ÿ ��û(ó������ ����, �������� ����)   
����������ȣ: 0002759,  ��ü��: ������Ư������)����  

if (code == "21") { // ����Ϲݻ��� ���� �����Ȳ ��ȸ  
} else if (code == "31") { // �����û�� �����Ȳ ��ȸ    
} else if (code == "33") { // �����û �����Ȳ ��ȸ  
} else if (code == "41") { // ����Ϲݻ��� ���� �����Ȳ ��ȸ  
} else if (code == "51") { // ���޺����� �����Ȳ ��ȸ  
} else if (code == "52") { // ������� �����Ȳ ��ȸ  
} else if (code == "53") { // �������� ���� �� ���系��  
} else if (code == "54") { // �������� ���� �� ���系��  
} else if (code == "71") { // ����� ���� �����Ȳ ��ȸ  
}  
==============================================================================================================

- ���� �Է»���[�������>��������>�����������>�������� ����]  
com.kyobo.kblcm.company.cy.ri.ap.action.COCYRIAP_varamtAction.java 
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_transferDetailApprovalAction 
CYCIRISP_transferDetailApproval_lst.jsp ======> �Ϸ�   
==============================================================================================================

1-2) �����û�� �����Ȳ ��ȸ[�������>��������>�����������>�������� ����] 
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_insuReqRsltAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_insuReqRsltAction.java --> EW10EW23odCall  
CYCIRISP_insuReqRslt_lst.jsp(����:CYCIRIIS_indivReqPrint_viw.jsp)      ======> �Ϸ�(����ϱ�) 
==============================================================================================================

- ó������ ���� ó������ ������ �߰����� û���� Ŭ���ϸ� ������ �� ==>  
���ϸ� : CYCIRISP_insuReqRslt_lst.jsp(ȭ��ID: UI_CY_9120)  ==> �����û�� �����Ȳ ��ȸ 
==> �����Ͻñ� û���� ���� ��Ŷ���� ���� �� 
 if (urlcode == "32") {  // �����û�� �����Ȳ ��ȸ(�߰�����)    
url_link = "/cy/cyciriisInsuReqMain.do?from=processSt"; 
} 
=============  EW10EW23 [ECW023OD] �Է°� Ȯ�� ============= 
EW10EW23_IN : COM_K_SMSC_DATE [1111-11-11] 
EW10EW23_IN : COM_K_SMSC_GB [32] 
EW10EW23_IN : COM_K_SMSC_SEQ [0000] 
EW10EW23_IN : COM_K_CUR_PAGE [000001] 
>> Communication is null, CTG Communication settimg.( EU10EW23 : 100.1.131.106:2006 ) 
CICS ECI Call Result value : 0 
MSG_CODE = [E70001] 
DUMMY : 000000100   
[/CYCIRISP_insuReqRsltAction.java]:[service()]:[code]32[szDate]1111-11-11[sSPage]000001[sPPage] 
1[sSPage]000001[szTotal_no]000000[getHEAD_MSG_CODE()]E70001 
[errorCode : EU10EW23E70001^]# [errorMessage : EU10EW23E70001^]# [errorModule : null^]# [exception : ] 
==============================================================================================================

������������������� 2008.09.26(��) �۾� ����������������� \
---> 09:00 ~ 19:00   --> ����(�ޱ�����, ������, �뷡��), ����(�̰���: 2��°) 

- ���� Ȩ ������ Prj
- ���� ��ġ ���� ó��(�������)
1. �����������[�������>��������] 
 1) ó������ ���� 
http://127.0.0.1:8080/KBLCM/cy/CYCIRISP_notProcess.action    
com.kyobo.kblcm.company.cy.ri.yu.action.COCYRIYU_notProcessAction  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_notProcessAction 
CYCIRISP_main01.jsp, CYCIRISP_notProcess_lst.jsp   
==============================================================================================================

- ���� û�� ���� 
http://localhost:8080/KBLCM/cy/CYCIRISP_transferReqApproval_lst.do  
==============================================================================================================

- innerHTML ���̺� ����� 
<script language="javascript"> 
frm.document.getElementById('vtab1_subtitle_on').innerHTML = "<table><% if (cypiicvi_varamtVO.getBasicFund().size()>0 ) 
for(int i = 0; i < cypiicvi_varamtVO.getBasicFund().size(); i++){ HashMap map = (HashMap)cypiicvi_varamtVO.getBasicFund().
get(i); %><tr><td class="center"><%=map.get("investRate")%>%</td></tr><% } else { %><tr><td class="center">%</td></tr><% } %>
</table>"; 
frm.document.getElementById('vtab2_subtitle_on').innerHTML = "<table><% if (cypiicvi_varamtVO.getAddFund().size()>0 
) for(int i = 0; i < cypiicvi_varamtVO.getAddFund().size(); i++){ HashMap map = (HashMap)cypiicvi_varamtVO.getAddFund().get(i); %>
<tr><td class="center"><%=map.get("investRate")%>%</td></tr><% } else { %><tr><td class="center">%</td></tr><% } %></table>"; 
</script> 
==============================================================================================================

������������������� 2008.09.27(��) �۾� �����������������
---> 09:30 ~ 21:00  --> ���ٹ� 

- ���� Ȩ ������ Prj
- ������ ��ȸ[���κ���>������ȸ/����>���賻����ȸ] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java -->   
CYPIICVI_reserve_viw.jsp ======> �Ϸ� 
--> ���׺��� ����ȸ (�������ź���) CYINCM_varamt01_viw.jsp  
==============================================================================================================

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

- ��� �����ŷ� �� �α���(���̹� â��) --> (�α��� ���̵� ����) 
http://localhost:8090/KBLCM/cm/CMLCCCCustomerViwAction.do  
(/WEB-INF/jsp/cm/lc/cc/CMLCCC_customer_viw.jsp) 

- ����ȸ�� �α���(���̹� â��) --> (�α��� ���̵� ����) 
http://localhost:8080/KBLCM/cm/CMLCPC_DevLogin.do 
(/WEB-INF/jsp/cm/lc/pc/CMLCPC_DevLogin.jsp) 
==============================================================================================================

<!--// 1.1. �������� - ���� �ٿ�ε�[�������>��������>������ ��ȸ/����>��������]  //--> 
<action name="CYCIRIIS_insuredXls" class="kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredXlsAction"> 
	<interceptor-ref name="cloginCheckStack" /> 
</action> 

<!--// 1. �������� �ϰ� ����[�������>��������>������ ��ȸ/����>��������>�������� ��� ����] //-->  
<action name="CYCIRIIS_insuredPersonTotSend" class="kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction">        
	<result name="init">/WEB-INF/jsp/cy/ci/ri/is/CYCIRIIS_insuredPersonTotSend_ins.jsp</result> 
	<result name="SendOK" type="tiles">cy.CYCIRIIS_insuredPersonTotSendOK</result> 
	<result name="SendFail">/WEB-INF/jsp/cy/ci/CYCI_appIframe_wrk.jsp</result> <!-- ���� -->  
	<interceptor-ref name="cloginCheckStack" /> 
</action> 
==============================================================================================================

������������������� 2008.09.28(��) �۾� �����������������
---> 07:50 ~ 20:00  --> �Ͽ�ٹ�, ���¿� ���� ö�� ����, ���� 1���� ���� 

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

- ������� ����� ���� 
szUserType = sessionVO.getRiUserType(); // ����� ����(1:�ǹ���, 2:������, 3:��ȸ ������, 4:������) 
//String uType = sessionVO.getUser_auth();  //����� ����(1: �ǹ���, 2: ������, 3: ��ȸ ������) 

�� �����ư ���� ���  
�ǹ��ڰ� ��û�� ==> �����û (�����ڻ��)  
�����ڰ� ��û�� ===>����ó�� (��������) 
�����ڰ� ��û�� ==> ����ó�� (��������)  
==============================================================================================================

 - ������ ��ȸ[���κ���>������ȸ/����>���賻����ȸ] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java -->   

MESSAGE : ����� �̳����� �Դϴ� ó���� �� �����ϴ�. 
PM400UM_I_INAG_INAG_NO( ���ǹ�ȣ ) : 205032004264 
MSG_CODE : PH0013E1 
D/��й�ȣ 651114 �Դϴ�.  
==============================================================================================================

������������������� 2008.09.29(��) �۾� �����������������
---> 07:00 ~ 19:00 --> ����� �μ��ΰ� ����, ����� ȯ��ȸ(����, ����, �뷡��, ��, ���帶��, ���) 

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

- ������ ȭ��(���̹� â��) 
http://10.33.3.19/KBLCM/cm/ad/admin_login.do 
==============================================================================================================

������������������� 2008.09.30(ȭ) �۾� �����������������
---> 07:20 ~ 23:00   --> Ȳ���� ���� ������� PL�� ��, ����� ö�� 

- ���� Ȩ ������ Prj
- �����ݵ庯�� Array ���� 
ArrayList arrayListTotal = new ArrayList(); //�����ݵ庯�� Array 

for (int i = 0; i < pm400um.getFundList().size(); i++) { 
HashMap map = new HashMap(); 

HashMap hm = (HashMap) pm400um.getFundList().get(i); 
map.put("fundName", (String) hm.get("PM400UM_FUND_NM")); //�ݵ�� 
map.put("fundCode", (String) hm.get("PM400UM_FUND_CAT")); //�ݵ��ڵ� 
map.put("investRate", (String) hm.get("PM400UM_FUND_RT")); //���ں��� 
System.out.println("[/CYPIICVI_varamtAction.java] [������(����)] ===> [PM400UM_FUND_NM]"+  
(String) hm.get("PM400UM_FUND_NM") +"[PM400UM_FUND_NM()]"+ (String) hm.get("PM400UM_FUND_NM")  
+"[PM400UM_FUND_RT()]"+ (String) hm.get("PM400UM_FUND_RT")); 

HashMap hm01 = (HashMap) pm400um.getBasicFundList().get(i); 
map.put("fundName01", (String) hm01.get("PM400UM_FUND_NM01")); //�ݵ�� 
map.put("fundCode01", (String) hm01.get("PM400UM_FUND_CAT01")); //�ݵ��ڵ� 
map.put("investRate01", (String) hm01.get("PM400UM_FUND_RT01")); //���ں��� 
System.out.println("[/CYPIICVI_varamtAction.java] [�⺻(����)] ===> [PM400UM_FUND_NM01]"+  
(String) hm01.get("PM400UM_FUND_NM01") +"[PM400UM_FUND_NM()]"+ (String) hm01.get("PM400UM_FUND_NM01")  
+"[PM400UM_FUND_RT()]"+ (String) hm01.get("PM400UM_FUND_RT01")); 
  
HashMap hm98 = (HashMap) pm400um.getAddFundList().get(i);   
map.put("fundName98", (String) hm98.get("PM400UM_FUND_NM98")); //�ݵ�� 
map.put("fundCode98", (String) hm98.get("PM400UM_FUND_CAT98")); //�ݵ��ڵ� 
map.put("investRate98", (String) hm98.get("PM400UM_FUND_RT98")); //���ں��� 
System.out.println("[/CYPIICVI_varamtAction.java] [�߰�(����)] ===> [PM400UM_FUND_NM98]"+  
(String) hm98.get("PM400UM_FUND_NM98") +"[PM400UM_FUND_NM()]"+ (String) hm98.get("PM400UM_FUND_NM98")  
+"[PM400UM_FUND_RT()]"+ (String) hm98.get("PM400UM_FUND_RT98")); 
  
arrayListTotal.add(map); 
}  

cypiicvi_varamtVO.setTotalFund(arrayListTotal); 
==============================================================================================================

- �ݵ庯��
202012637647 ä��/ȥ�� �ݵ庯�� ������ ��ǰ�ε�  
���氡���Ѵ���̾��ٰ� ������.. 
==============================================================================================================

�ȳ��ϼ���.. ���� ��������ȸȭ�� �� ���׿��ݻ�ǰ�� ���ͷ� ��ȸ �ȵǴ°�... �����ƴ�����?  
430915 �Դϴ�. 
==============================================================================================================

- �̹��� ���� ��û 
�ݵ�(�ɼ�)�����ϱ�  ==>  <img src="/KBLCM/images/common/btn_fundOptionChange.gif"/> 
�����̳ʿ��� ���ؼ� �̹��� ���� /KBLCM/images/common ������ �־��ֱ� �ٶ� 
==============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������