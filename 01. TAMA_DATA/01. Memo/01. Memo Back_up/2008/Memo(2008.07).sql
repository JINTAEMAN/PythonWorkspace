

�����������������������������������������������������������
+---------------------------------------------// Memo(2008.07) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2008.07.01(ȭ) �۾� �����������������
---> 06:50 ~ 22:00   --> ��� ����B/D �湮(�����, �� ����) 

- ���� Ȩ ������ Prj
- ������ȸ 
����(�α��� ȭ��) 
http://127.0.0.1:8080/KBLCM/cy/SI_login.action 

1. ��������ȸ 
 1) ���������  
http://127.0.0.1:8080/KBLCM/cy/SI_account.action 
com.kyobo.kblcm.cyber.in.cm.action.CYINAM_accountAction.java 
kblcm.cy.si.ii.action.CYSIII_accountAction.java --> YC122usCall 
CYSIII_main01.jsp, CYSIII_account_tab01.jsp 
import kblcm.cy.in.cm.vo.CYINCM_securityVO 
--> kblcm.cy.pi.ti.ti.vo.CYPITITI_securityVO 
 2) ���ɻ���ȸ  
http://127.0.0.1:8080/KBLCM/cy/S_newcontract.do 
kblcm.cy.si.ii.action.CYSIII_newcontractAction.java --> YC122usCall 
CYSIII_newcontract_tab02.jsp 
 3) �޸麸�����ȸ  
http://127.0.0.1:8080/KBLCM/cy/SI_cancelDorm.do  
kblcm.cy.si.ii.action.CYSIII_cancelDormAction.java --> YC122usCall 
CYSIII_cancelDorm_tab03.jsp    
==============================================================================================================

1. ���� ���� ���� 
1) import com.kyobo.kblcm.cyber.action.CMStringUtil; 
==> import kblcm.common.util.CMStringUtil;   //   
2) import com.kyobo.kblcm.cyber.action.CY_baseAction; 
==> import kblcm.common.base.action.CyberBaseAction;   //���̹�â�� master action 
3) import com.kyobo.kblcm.common.util.CMDateCheck;  //CMDateUtil�� ���� ��(CMDateCheck ����) 
CMDateCheck.checkHoliday() -> CMDateUtil.checkHoliday() 
4) import com.kyobo.kblcm.common.util.CMDateUtil;  
==> import kblcm.common.util.CMDateUtil;    //��¥(���� �Լ�) 
4-1) import com.kyobo.kblcm.common.utill.CMMoneyUtil; 
==> import kblcm.common.util.CMMoneyUtil;  //��ȭ(���� �Լ�) 
5) import kblcm.common.util.CMUmsUtil;   //NO  
==> import kblcm.common.service.CommonServiceImpl; 
CMUmsUtil umsUtil = new CMUmsUtil(); -> CommonServiceImpl umsUtil = new CommonServiceImpl(); 
6) import kblcm.common.util.CMCommonCodeHandler; 
==> import kblcm.common.util.CMEtcUtil;  
resultVO.setBankName(CMCommonCodeHandler.getSmallCdNm("CY","BANK",result_call.getYC105US_O_BANK_CODE()));//���������� 
-> resultVO.setBankName(CMEtcUtil.getCode("CY","BANK",bankCode).getName());//���������� 

7) import kblcm.framework.util.PropertyUtil; 
==> import kblcm.common.util.CMConfig; 
if(PropertyUtil.getString("SERVER_TYPE").equals("DEVELOP")) {} 
-> CMConfig config = CMConfig.instance();  
if(config.getString("Property.SERVER_TYPE").equals("DEVELOP")) {)  
- KBLCM/WebContent/WEB-INF/conf/kblcm-property.xml ���� 
<config>   
<Property> 
<SERVER_TYPE>TEST</SERVER_TYPE>  
  </Property> 
</config> 

8) import com.kyobo.kblcm.cyber.util; 
==> import kblcm.cy.util; 
9) 
import kblcm.company.util.CO_Util;  
==>import kblcm.cy.ci.util.CO_Util;   ---> ������� util 

99) ��Ÿ  
- Action���� �ޱ�(request���� �� ���) 
String isChg  = CMStringUtil.strTrim(para.getParameter("isChg"));    // Y : ���� ��ü N : ��� ���� 
-> String isChg  = CMStringUtil.strTrim(request.getParameter("isChg"));  

- Action���� �ޱ�(VO���� �� ���) 
private CYPITITI_cancelDormAmtVO cancelDormAmtVO = new CYPITITI_cancelDormAmtVO();  
String payDdate =  cancelDormAmtVO.setPayDDate(cancelDormAmtVO.getPayDDate() + 10); 
    if(payDdate.length()>=10) { 
payDdate = CMStringUtil.replace(payDdate,"-","."); 
   }   
    
 - location ��ü �޴� �����(jsp���Ͽ���)  ==> ��� �� �� 
<%@ page import="com.kyobo.kblcm.common.util.CMLocationFactory" %> 

- radio �ڽ� ���� 
<td><input type="radio" name="p_account_state" value="00" <s:if test="%{resultMap.accountState.equals('00')}">checked</s:if>>��ü</td> 

<a href="/KBLCM/cy/CYSIII_dormantInsu_ins.do?p_cmd=ins">[�޸麸��� �ޱ��û]</a>   

- ������ȣ  * �տ��� 6�ڸ����� 4�ڸ��� * ó�� 
cysiii_accountVO.setInsuPolicy(call.getSEC_NUMBER());       // ���ǹ�ȣ 
--> cysiii_accountVO.setInsuPolicyNew(CY_commonUtil.getInsuNumberForFront(call.getSEC_NUMBER()));  // ���ǹ�ȣ 

- DB ���� 
//import kblcm.framework.util.DBUtil; 
//import kblcm.framework.util.KBLCMSysException; 
//import kblcm.framework.util.QueryFactory;  
//import kblcm.framework.util.MessageFactory; 
import kblcm.common.util.DBUtil; 
import kblcm.common.util.QueryFactory; 
import kblcm.common.exception.KBLCMSysException;   
import kblcm.common.message.MessageFactory;  

- �ű� Project�� �������� �ʴ� Ŭ���� 
import kblcm.framework.util.LogUtil;  
===>  private static Logger LOG = Logger.getLogger(BaseDAO.class); 
import org.apache.xmlrpc.*;   ===> NO  
package com.kyobo.kblcm.framework.util.PropertyUtil  ===> NO  

import kblcm.common.util.CMParameter; ==> ���� 
String szProcType = ut.getDefault(para.getParameter("proc_type"), "S"); 
-> String szProcType = ut.getDefault(request.getParameter("proc_type"), "S"); 
------------------------------------------------------------------------------------------------ 

2. VO ���� 
1) import kblcm.cy.in.cm.vo.CYINCM_accountVO; 
==> import kblcm.cy.si.ii.vo.CYSIII_accountVO; //������ VO 
CYINCM_specialVO --> CYSIII_specialVO //Ư�೻�� VO 
CYMYNC_retractVO --> CYSIII_retractVO //���öȸ VO 

2) import com.kyobo.kblcm.cyber.in.dm.vo.CYINDM_accidentVO;   
==> import kblcm.cy.pi.ti.ti.vo.CYPITITI_accidentVO;   //������ VO 
CYINDM_addInsuFeeVO --> CYPITITI_addInsuFeeVO //�߰����Ժ���� VO 
CYINDM_bankVO --> CYPITITI_bankVO //���� VO 
CYINDM_cancelDormAmtVO --> CYPITITI_cancelDormAmtVO //�ؾ�ȯ�ޱ�,�޸麸��� VO 
CYINDM_depositVO --> CYPITITI_depositVO //����ݼ��� VO  
CYADMA_searchVO --> CYPITITI_searchVO //�˻� VO   
CYINDM_diviInsuAmtVO --> CYPITITI_diviInsuAmtVO //���Ҹ��⺸��� VO 
CYINDM_insuVO --> CYPITITI_insuVO //���� VO  
CYINDM_lapseAllotVO --> CYPITITI_lapseAllotVO //�Ҹ��ڻ����򰡹��� VO 
CYINDM_mailContentVO --> CYPITITI_mailContentVO // ����� ���� ���� ���� ����� VO 
CYINDM_nonLoginDepositLogVO  --> CYPITITI_nonLoginDepositLogVO //��α��� ����� ��ûLog VO  
CYINDM_premiumVO --> CYPITITI_premiumVO //������Ա� VO 
CYINDM_resultVO --> CYPITITI_resultVO //����� ��� VO 
CYINDM_shareVO --> CYPITITI_shareVO //���� VO  
CYINDM_premiumVO --> CYPITITI_premiumVO //������ VO 
CYINDM_resultVO --> CYPITITI_resultVO //����� ��� VO 

3) import com.kyobo.kblcm.common.ad.mo.vo.CYADMO_statVO;  
==> import kblcm.cy.ad.as.vo.CYADAS_statVO;    //���������� VO 

4) import kblcm.ir.ko.ku.vo.IRKOKU_reportViewFileVO;  
==> import kblcm.ir.common.IR_irFileVO; 
IRKOKU_reportViewFileVO  fileVO = new IRKOKU_reportViewFileVO();   
-> IR_irFileVO  fileVO = new IR_irFileVO();  

5)  import com.kyobo.kblcm.common.util.CMListVO; 
==> import kblcm.common.vo.CMListVO; 

6)  import com.kyobo.kblcm.cyber.in.cm.vo.CYINCM_accountVO; 
==> import kblcm.cy.si.ii.vo.CYSIII_varamtVO;  //���׺��� VO  
  
7)  import com.kyobo.kblcm.company.cy.wf.is.vo.COCYWFIS_theInsuredVO; 
==> import kblcm.cy.ci.ri.is.vo.CYCIRIIS_theInsuredVO;  //�Ǻ�������ȸ VO 

8)  import com.kyobo.kblcm.company.cy.wf.is.vo.COCYWFIS_comComItemPopVO; 
==> import kblcm.cy.ci.ri.is.vo.CYCIRIIS_comComItemPopVO;  //�����μ����� VO(������)  

9)  import com.kyobo.kblcm.company.vo.CO_loginVO; 
==> import kblcm.common.web.login.context.CorpLoginContext;  //����� �α��� ���� 
 //CYCI_loginVO sessionVO = this.getSession(request, CO_ssNm); 
-> CorpLoginContext sessionVO = getCyberSessionContext2();   //����� �α��� ����  
10) import com.kyobo.kblcm.cyber.co.lo.vo.CYCOLO_loginVO; 
==> import kblcm.cy.co.lo.vo.CYCOLO_loginVO; //�α��� VO 
CYCOLO_loginVO cyberSession = getCyberSession();   
getSession(request.getJuminNo() -->  cyberSession.getJuminNo()  //�α��� VO   
(CYCOLO_loginVO)request.getSession().getAttribute("cybersession"); 
==============================================================================================================

 - struts tags �м�(��Ʈ���� �±�) 
<s:if test="%{resultMap.simpleLoginYn.equals('Y')}"> <!-- ������ȸ �̸� --> 
<td height="27" valign="bottom" align="right" class="navi"></td> 
</s:if> 
<s:else> 
<td height="27" valign="bottom" align="right" class="navi"></td><!-- ������ȸ --> 
</s:else> 

<!-- LIST ��ȸ --> 
<s:iterator id="row" value="%{resultMap.cancelDormAmtVO.getBankList}" status="inq_stat"> 
<input type="Hidden" name="bankName" value="<s:property value="%{#row.bankName}"/>"> 
<input type="Hidden" name="depositor" value="<s:property value="%{#row.depositor}"/>">  
</s:iterator>   

<td class="table_text02"><input type="checkbox" name="ck_box"  
onclick="javascript:checkAmt(<s:property value="%{#inq_stat.count+1}"/>); 
checkMaxCnt(<s:property value="%{#inq_stat.count}"/>);"></td>  
<td><s:property value="resultMap.bankbookList2"/><!-- ����ȣ --> -</td> 
- �� ���ڿ� �Ӽ��� �̽������� ��ȣ "%{}"�� ����ϸ� �� ��ȣ�� ���õǰ� ���븸�� ó�� 
<s:if test = "%{age>19}">...</s:if> 
------------------------------------------------------------------------------------ 

- value ��, �����  
<input type="hidden" name="p_insuName" value="<s:property value='%{resultMap.cysiii_accountVO.insuName}'/>"><!--// �����ǰ�� //--> 
<input type="hidden" name="p_varamtYn" value="<s:property value='%{resultMap.varamtYn}'/>"><!--// ���׺��迩�� //--> 

- include 
<s:include value="/WEB-INF/jsp/cy/CY_progress_viw.jsp" />   
==============================================================================================================

- ������ȸ 
���� ���� ��ȸ 
http://100.1.131.106/cyber/cyincm_account.do 
���ɻ���ȸ 
http://100.1.131.106/cyber/cymync_newcontract.do 
������Ȳ��ȸ 
http://100.1.131.106/loan/lnmspt_payed.do 
�޸麸�����ȸ 
http://100.1.131.106/cyber/cyindm_cancelDorm.do  
==============================================================================================================

- layer �׽�Ʈ 
http://127.0.0.1:8080/KBLCM/cy/login.action 
http://127.0.0.1:8080/KBLCM/pilot/login.action   
http://127.0.0.1:8080/KBLCM/ir/configure.action ==> �̻�ȸ 
http://127.0.0.1:8080/KBLCM/ci/main.action ===> ������ 
http://127.0.0.1:8080/KBLCM/html/codingTest/layer/layer.jsp ==>�ڵ� �׽�Ʈ(���̾�) 
C:\DevEnv\Projects\KBLCM\WebContent\html\codingTest\layer 
http://127.0.0.1:8080/KBLCM/html/codingTest/tab/tab.jsp ==>�ڵ� �׽�Ʈ(��)  
C:\DevEnv\Projects\KBLCM\WebContent\html\codingTest\tab 
==============================================================================================================

- ������ȸ �α���(�׽�Ʈ ����)(http://100.1.131.106) 
�ֹε�Ϲ�ȣ 670503 - 20  --> ������ȸ  
------------------------------------------------------------------------------ 
- ���̹�â�� �α���(�׽�Ʈ ����) 
http://100.1.131.106/cyber/cy_index.do  
==============================================================================================================

 <a href="javascript:kbl.main.go.funcGoPage('1')">[���ɻ���ȸ]</a> 
  
<script>  
	// Ajax ȣ�� ��ũ��Ʈ �Լ�(���󼼳��� ��ȸ) 
	kbl.extJS.initializeApplication(kbl.main.go.do_requestAggrementList, kbl.main.go);   
</script> 
 
<a href="javascript:kbl.main.go.do_requestAggrementList('1')">[���������]</a> 
<a href="javascript:kbl.main.go.do_requestAggrementList('2')">[���ɻ���ȸ]</a> 
<a href="javascript:kbl.main.go.do_requestAggrementList('3')">[�޸麸�����ȸ]</a> 

<div id="main01Div"></div> 
------------------------------------------------------------ 

[kblcm.cy.si.ii.action.CYSIII_newcontractAction 

<div> 
	<span tabGroup="1" tabSeq="1" contentType="singleIframe" contentId="ifrm_content" contentSrc="/KBLCM/cy/SI_account.action" 
	activeTab="true" class="activeTab"><b>[���� ���� ��ȸ(<span><s:property value="%{resultMap.accountList.totalCnt}"/></span>��)]</b></span> 
	<span tabGroup="1" tabSeq="1" contentType="singleIframe" contentId="ifrm_content" contentSrc="/KBLCM/cy/SI_account.action" 
	activeTab="false">[���� ���� ��ȸ]</span> 
	<span tabGroup="1" tabSeq="2" contentType="singleIframe" contentId="ifrm_content" contentSrc="/KBLCM/cy/LayerMain01.action" 
	activeTab="true" class="activeTab">[���ɻ���ȸ]</span> 
	<span tabGroup="1" tabSeq="2" contentType="singleIframe" contentId="ifrm_content" contentSrc="/KBLCM/cy/LayerMain01.action" 
	activeTab="false">[���ɻ���ȸ]</span> 
	<span tabGroup="1" tabSeq="3" contentType="singleIframe" contentId="ifrm_content" contentSrc="/KBLCM/cy/SI_account.action" 
	activeTab="true" class="activeTab">[�޸麸�����ȸ]</span> 
	<span tabGroup="1" tabSeq="3" contentType="singleIframe" contentId="ifrm_content" contentSrc="/KBLCM/cy/SI_account.action" 
	activeTab="false">[�޸麸�����ȸ]</span> 
</div> 

<div> 
	<iframe id="ifrm_content"></iframe> 
</div>   
==============================================================================================================

������������������� 2008.07.02(��) �۾� �����������������
---> 06:50 ~ 22:30 

- ���� Ȩ ������ Prj
- DB ����(DB ����(ejb -> spring���� ����)  
1) kblcm.cy.si.ii.action.CYSIII_newContractAction.java ���� 
//import kblcm.cyber.my.nc.ejb.CYMYNC_newContractCtl;  //ejb 
//import kblcm.cyber.my.nc.ejb.CYMYNC_newContractCtlHome; //ejb  
import kblcm.cy.si.ii.service.CYSIII_newContractService;   //service 

//CYSIII_newContractCtl ctl = getRemoteObejct(); 
//CYPITITI_retractVO cymync_retractVO = new CYPITITI_retractVO();  
CYSIII_newContractService ctl = (CYSIII_newContractService)ContextLoader.getCurrentWebApplicationContext().getBean("CYSIII_newContractServiceBean"); 
CYPITITI_retractVO cypititi_retractVO = new CYPITITI_retractVO(); 

ctl.setRetract(cypititi_retractVO);  // DB ����(ejb -> spring���� ����) 

2) kblcm.cy.si.ii.service.CYSIII_newContractService.java ���� 
public interface CYSIII_newContractService {  
public void setRetract(CYPITITI_retractVO serviceVO) throws KBLCMSysException;   
} 

3) kblcm.cy.si.ii.service.CYSIII_newContractServicelmpl.java ���� 
public void setRetract(CYPITITI_retractVO serviceVO) throws KBLCMSysException {  
Connection con = null; 
try { 
con = DBUtil.getConnection(); 
CYSIII_newContractDAO.setRetract(con, serviceVO);   //DB ���� 
} 
catch (KBLCMSysException kble) { 
throw kble; 
} 
catch (Exception e) { 
throw new KBLCMSysException(e, "SVM00003"); 
} 
finally { 
DBUtil.close(con); 
} 
}   

4) kblcm.cy.si.ii.service.CYSIII_newContractDAO.java ���� 
public void setRetract(Connection con, CYPITITI_retractVO cymync_retractVO) throws KBLCMSysException {  
PreparedStatement pstmt = null; 
CYPITITI_retractVO serviceVO2 = null; 

try { 
pstmt = new LoggablePreparedStatement(con, QueryFactory.getInstance().getQuery("CYPITITI_001")); 
String dateTime = CMDateUtil.currentDateTime(); 
pstmt.setString(1, dateTime); 
pstmt.setString(2, cymync_retractVO.getInsuPolicy()); 
pstmt.setString(3, cymync_retractVO.getName()); 
pstmt.setString(4, cymync_retractVO.getJuminNo()); 
pstmt.setString(5, cymync_retractVO.getBankName()); 
pstmt.setString(6, cymync_retractVO.getAccount()); 
pstmt.setDouble(7, CMStringUtil.parseDouble(CMStringUtil.replace(cymync_retractVO.getPreminum(), ",", ""))); 
pstmt.setString(8, cymync_retractVO.getDivSmlCd()); 
pstmt.setString(9, cymync_retractVO.getProcCd()); 
pstmt.setString(10, cymync_retractVO.getAccessType()); 
pstmt.setString(11, cymync_retractVO.getAccessIp());  

if (pstmt.executeUpdate() != 1)  //���� �����̸� 
{ 
throw new KBLCMSysException("CYM00001"); 
}  

 } 
catch (KBLCMSysException kble) 
{ 
    throw kble; 
} 
catch (Exception e) 
{ 
    throw new KBLCMSysException(e, "CYM00001"); 
} 
finally //[�ʼ�] 
    { 
    DBUtil.close(pstmt); 
} 
}  
} 

5) KBLCM/WebContent/WEB-INF/conf/context/cyContext.xml ���� 
<bean id="CYSIII_newContractServiceBean" class="kblcm.cy.si.ii.service.CYSIII_newContractServicelmpl"> 
<property name="CYSIII_newContractDAO" ref="CYSIII_newContractDAO"/> 
</bean>  
<bean id="CYSIII_newContractDAO" class="kblcm.cy.si.ii.dao.CYSIII_newContractDAO"> 
</bean>  
6) /KBLCM/sqlMap/queries-db2/kblcm-query-cy.xml ���� 
<!-- û��öȸ ���� --> 
<query id="CYPITITI_001" type="pstmt" class="com.kyobo.kblcm.cyber.my.nc.dao.CYMYNC_newContractDAO"><![CDATA[ 
INSERT INTO TB_CYCML100 
(ACCESS_DM, POLICY_NO, NAME, RESD_NO, BANK_NM, ACCOUNT_NO, AMT, DIV_SML_CD, PROC_CD,  
ACCESS_TYP, ACCESS_IP) 
VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) 
]]></query>  
---------------------------------------------------------------------------------------------- 

1. ��������ȸ 
 1) ���������  
http://127.0.0.1:8080/KBLCM/cy/SI_account.action 
com.kyobo.kblcm.cyber.in.cm.action.CYINAM_accountAction.java 
--> kblcm.cy.si.ii.action.CYSIII_accountAction.java(I/F: YC122usCall)  
CYSIII_main01.jsp, CYSIII_account_tab01.jsp 
import kblcm.cy.in.cm.vo.CYINCM_securityVO 
--> kblcm.cy.pi.ti.ti.vo.CYPITITI_securityVO  

 2) ���ɻ���ȸ  
http://127.0.0.1:8080/KBLCM/cy/S_newcontract.do 
kblcm.cy.si.ii.action.CYSIII_newcontractAction.java 
--> kblcm.cy.si.ii.action.CYSIII_newcontractAction.java(I/F: N205A009odCall) 
CYSIII_newcontract_tab02.jsp 

- DB ���� 
//import kblcm.framework.util.DBUtil; 
//import kblcm.framework.util.KBLCMSysException; 
//import kblcm.framework.util.QueryFactory;  
//import kblcm.framework.util.MessageFactory; 
import kblcm.common.util.DBUtil; 
import kblcm.common.util.QueryFactory; 
import kblcm.common.exception.KBLCMSysException;   
import kblcm.common.message.MessageFactory;  

- �ű�Project�� �������� �ʴ� Ŭ���� 
import kblcm.framework.util.LogUtil;  
===>  private static Logger LOG = Logger.getLogger(BaseDAO.class); 
import org.apache.xmlrpc.*;   ===> NO  
package com.kyobo.kblcm.framework.util.PropertyUtil  ===> NO 
-->   
---------------------------------------------------------------------------------------------- 

 - ������ȸ 
���� ���� ��ȸ 
http://100.1.131.106/cyber/cyincm_account.do 
���ɻ���ȸ 
http://100.1.131.106/cyber/cymync_newcontract.do 
������Ȳ��ȸ 
http://100.1.131.106/loan/lnmspt_payed.do 
�޸麸�����ȸ 
http://100.1.131.106/cyber/cyindm_cancelDorm.do  
==============================================================================================================

- [�ְ����� 2008�� 7�� 1°��] 
�� ���� ���� ����(06.30 ~ 07.04) 
1. ��������ȸ 
 1) ���������  
 2) ���ɻ���ȸ  
 3) �޸麸�����ȸ 
------------------------------------------------------------------------------------------ 

�� ���� ���� ��ȹ07.07 ~ 07.114) 
1. �ݵ������Ȳ��ȸ  
2. �����߱� 
3. �����ü���� 
==============================================================================================================

������������������� 2008.07.03(��) �۾� �����������������
---> 06:50 ~ 22:20  --> ����(�޹й���: ����ȯ, ������, ������, �ֺ���, �̳���, ����, �ֹ���) 

- ���� Ȩ ������ Prj
 2) ���ɻ���ȸ  
http://127.0.0.1:8080/KBLCM/cy/S_newcontract.do 
kblcm.cyber.my.nc.action.CYSIII_newcontractAction.java 
--> kblcm.cy.si.ii.action.CYSIII_newcontractAction.java(I/F: N205A009odCall) 
CYSIII_newcontract_tab02.jsp 

String cmd =(request.getParameter("p_cmd")== null)? "": request.getParameter("p_cmd"); 
System.out.println("[/CYMYNC_newContractAction.java]:[service()]:[simpleLoginYn]"+ simpleLoginYn);  
  
[07/03 11:39:20] [ERROR] - Could not find action or result 
No result defined for action kblcm.cy.si.ii.action.CYSIII_newContractAction and result error - action 

��������: Struts has detected an unhandled exception:  
����: java�ҽ� ����� ���� 

YC122usCall call = new YC122usCall(); 

[07/03 11:06:52] [DEBUG] - Entering getProperty (ognl.OgnlContext@839aa387,{tsInd=393675875, hostMessage=���������� 
ó���� �Ϸ�Ǿ����ϴ�., accountList=kblcm.common.vo.CMListVO@179688d[ 
  resultList=[kblcm.cy.pi.ti.ti.vo.CYPITITI_accountVO@1bf404f, kblcm.cy.pi.ti.ti.vo.CYPITITI_accountVO@11733a5, 
  kblcm.cy.pi.ti.ti.vo.CYPITITI_accountVO@3f983f, kblcm.cy.pi.ti.ti.vo.CYPITITI_accountVO@1246bec,
  kblcm.cy.pi.ti.ti.vo.CYPITITI_accountVO@2957a4] 
  totalCnt=11 
  values=<null> 
  map=<null> 
  cpage=1 
  pageSize=5 
  link=<null> 
  result=<null> 
  cpage=0 
  pageSize=0 
], focus=null},accountList) 
---------------------------------------------------------------------------------- 
    
 3) �޸麸�����ȸ  
http://127.0.0.1:8080/KBLCM/cy/SI_cancelDorm.do  
com.kyobo.kblcm.cyber.in.dm.action.CYINDM_cancelDormAction.java 
--> kblcm.cy.si.ii.action.CYSIII_cancelDormAction.java(I/F: P2200216odCall) 
CYSIII_cancelDorm_tab03.jsp   
==============================================================================================================

- ��Ŭ���� ���� ���� �ϱ� 
1. ��Ŭ���� ���� �����ܿ� ������ ���콺 ������ �ٷΰ��� ������ ���� 
2. �ٷΰ��� �����ܿ� ���� ������ ���콺�� ������ �Ӽ��� Ŭ�� 
���(T)==> D:\eclipse\eclipse.exe -vmargs -Xverify:none -XX:+UseParallelGC -XX:PermSize=128M -XX:MaxNewSize=64M
-XX:NewSize=64M -Xmx512m -Xms512m 
���(T)==> C:\DevEnv\Tools\eclipse\eclipse.exe -vmargs -Xverify:none -XX:+UseParallelGC -XX:PermSize=64M
-XX:MaxNewSize=64M -XX:NewSize=32M -Xmx512m -Xms512m 
==============================================================================================================

������������������� 2008.07.04(��) �۾� �����������������
---> 06:50 ~ 18:00  --> ����(û��(T:734-4774):����,����,��ȯ,����,����) => ��, ��ǿ�-> �Ѱ�,����(�����־�)   

- ���� Ȩ ������ Prj
 3) �޸麸�����ȸ  
http://127.0.0.1:8080/KBLCM/cy/SI_cancelDorm.do  
com.kyobo.kblcm.cyber.in.dm.action.CYINDM_cancelDormAction.java 
--> kblcm.cy.si.ii.action.CYSIII_cancelDormAction.java(I/F: P2200216odCall) 
CYSIII_cancelDorm_tab03.jsp   
==============================================================================================================

- ���� �������̽� ȸ��(16:00 ~ 17:30, ����B/D 2�� ȸ�ǽ�) 
1. ������ 
�������� ����� ����, ������ SM 
����ö ����, ������ ���� 
2. ���� 
 1) �ڵ���ü ����, ���� �и�  
 2) ��ȯȮ���� 
 3) �α� ��Ŷ ����(1��) -> ���忡 ���ؼ� ���� 
 4) �޼��� �ڵ� ����(������ �޴�����) 
==============================================================================================================

 - �� ������Ʈ �� ������ ���� 
��ġ: ���÷��� ��� ���� -> ���� -> ���⼭ 2�� ����� ���� -> �� Windows�� �� ����Ϳ� �°� Ȯ��(Ŭ��) 
Fn + F4 --> ������Ʈ ���� ��  
=----------------------------------------------------------------------------------------------------------------------

 - �� ������Ʈ �����  ����(S)�� �����ϴ� ��� 
��ġ: ���÷��� ��� ���� -> ���� ->  ���⼭ 2�� ����� ���� -> ���(V) 
-> �÷��� �� �÷��� ����� �� NVIDA GeForce 8400M G ��� ���� 
GeForce 8400M G(Tab) --> NVIDA ������ ����(S) --> ���÷��� -> ���� ���÷��� ����  
1. ����ϴ� nView ���÷��� ��� ���� -> ����(S) üũ 
==============================================================================================================

- ��Ʈ�� �� �߰� ���� 
RAM: 2GB(�Ｚ �� DDR2 2G PC2-5300S) --> 3GB 
2G �����ϰ� 1G �Ǹ�(�� 3G�� ��, ����: 30,000��)     
1. �Ｚ DDR 2G PC2-6400  ����: 48,000�� 
 1) ������: ���� 19�� 3�� 316ȣ  T) 6733-3266 
http://iseohyun.com/product/productView.php?nProdCode=641713&service_id=pcdn  
 2) �극����: ���� 19�� 3�� �� 326ȣ  T) 6733-1327 
 3) �����: ���� 18�� 3�� �� Ư1-2(300ȣ)  T) 6733-0720 
 4) e-pc: ���� 21�� 4�� 104ȣ  T) 2120-2778  
==============================================================================================================

������������������� 2008.07.05(��) �۾� �����������������
---> 08:40 ~ 19:00  --> �����౸, ����� ��ü 

- ���� Ȩ ������ Prj
- �޴��������� �ۼ�(jsp, action, vo) 
(�޴���������_080630.xls) 
==============================================================================================================

������������������� 2008.07.07(��) �۾� �����������������
---> 07:00 ~ 18:00  --> ������ ȸ��(1��: �����, 2��: ������, 3��:������(���� ��)) 

- ���� Ȩ ������ Prj
 3) �޸麸�����ȸ  
http://127.0.0.1:8080/KBLCM/cy/CYSIII_dormantInsu_lst.do  
com.kyobo.kblcm.cyber.in.dm.action.CYSIII_dormantInsuAction.java 
--> kblcm.cy.si.ii.action.CYSIII_cancelDormAction.java(I/F: P2200216odCall) 
CYSIII_cancelDorm_tab03.jsp 
 msg_code : 1004 
------------------------------------------------------------------------------------------------ 

- �������� ��ȸ(������) 
http://localhost:8080/KBLCM/mm/mmlnMain.do  
- �������� ��ȸ(������2) 
http://localhost:8080/KBLCM/htmlCode/mm/ln/UI_ML_3002.html 
- �׽�Ʈ(�α���, xecure) 
http://127.0.0.1:8080/KBLCM/examples/certLogin.do 
==============================================================================================================

- ȣ��Ʈ ��� 
N205A009odCall call = new N205A009odCall(); 
call.getMSG_CODE()  
0000 : �������� 
0001 : �ֹι�ȣ�� �Էµ��� �ʾҽ��ϴ�. 
0002 : �Ѵ��� ���� �����Դϴ�. 
0003 : ������ �����ϴ�. 
0004 : ���Ǻ����ڰ� �����ϴ� 
==============================================================================================================

������������������� 2008.07.08(ȭ) �۾� �����������������
---> 07:00 ~ 22:20  --> ����(���븮, ����: �߱���(������)) 

- ���� Ȩ ������ Prj
 3) �޸麸��� ���ɽ�û 
http://127.0.0.1:8080/KBLCM/cy/CYSIII_dormantInsu_ins.do 
com.kyobo.kblcm.cyber.in.dm.action.CYSIII_dormantInsuAction.java 
--> kblcm.cy.si.ii.action.CYSIII_cancelDormAction.java(I/F: YC122usCall) 
CYSIII_cancelDorm_tab03.jsp  
http://127.0.0.1:8080/KBLCM/examples/certLogin.do 
------------------------------------------------------------------------------------ 

- ��ȸ��(���� ����) 
<td class="table_text02"><input type="checkbox" name="ck_box"  
onclick="javascript:checkAmt(<s:property value="%{#inq_stat.count-1}"/>); 
checkMaxCnt(<s:property value="%{#inq_stat.count}"/>);"></td>  
==============================================================================================================

������������������� 2008.07.09(��) �۾� �����������������
---> 07:00 ~ 21:50 

- ���� Ȩ ������ Prj
 3) �޸麸��� ���ɽ�û 
http://127.0.0.1:8080/KBLCM/cy/CYSIII_dormantInsu_ins.do 
com.kyobo.kblcm.cyber.in.dm.action.CYSIII_dormantInsuAction.java 
--> kblcm.cy.si.ii.action.CYSIII_cancelDormAction.java(I/F: YC122usCall) 
CYSIII_cancelDorm_tab03.jsp  
   
logger.debug("[/CYSIII_dormantInsu_lst_tab03.jsp]:[START] ================> "); 
----------------------------------------------------------------------------------------------------------------- 

 - struts tags �м�(��Ʈ���� �±�) 
<s:if test="%{resultMap.simpleLoginYn.equals('Y')}"> <!-- ������ȸ �̸� --> 
<td height="27" valign="bottom" align="right" class="navi"></td> 
</s:if> 
<s:else> 
<td height="27" valign="bottom" align="right" class="navi"></td><!-- ������ȸ --> 
</s:else> 

<!-- LIST ��ȸ --> 
<s:iterator id="row" value="%{resultMap.cancelDormAmtVO.getBankList}" status="inq_stat"> 
<input type="Hidden" name="bankName" value="<s:property value="%{#row.bankName}"/>"> 
<input type="Hidden" name="depositor" value="<s:property value="%{#row.depositor}"/>">  
</s:iterator>   

<td class="table_text02"><input type="checkbox" name="ck_box"  
onclick="javascript:checkAmt(<s:property value="%{#inq_stat.count+1}"/>); 
checkMaxCnt(<s:property value="%{#inq_stat.count}"/>);"></td>   
==============================================================================================================

- [�ְ����� 2008�� 7�� 2°��]  
�� ���� ���� ����(07.07 ~ 07.14)  
1. ������ȸ 
 1) ��������ȸ 
   ��. ��������� 
   ��. ���ɻ���ȸ 
   ��. �޸麸�����ȸ 
 2) �ݵ������Ȳ��ȸ 
------------------------------------------------------------------------------------------ 

�� ���� ���� ��ȹ(07.14 ~ 07.18)  
1. �������(��������) 
 1) ����༱�� 
 2) ����������� 
   ��. ó������ ����  
   ��. �������� ���� 
    ��) ����Ϲݻ��� ���� �����Ȳ��ȸ 
==============================================================================================================

������������������� 2008.07.10(��) �۾� �����������������
---> 07:00 ~ 22:10 

- ���� Ȩ ������ Prj
 3) �޸麸��� ���ɽ�û 
http://127.0.0.1:8080/KBLCM/cy/CYSIII_dormantInsu_ins.do 
com.kyobo.kblcm.cyber.in.dm.action.CYSIII_dormantInsuAction.java 
--> kblcm.cy.si.ii.action.CYSIII_cancelDormAction.java(I/F: YC122usCall) 
CYSIII_cancelDorm_tab03.jsp  
==============================================================================================================

http://127.0.0.1:8080/cy/CYSIFI_rest_lst.do 

1. �ݵ������Ȳ��ȸ 
 1) �ܰ���ȸ   
http://127.0.0.1:8080/KBLCM/cy/CYSIFI_rest_lst.do 
com.kyobo.kblcm.cyber.fu.action.CYFU_fundAction.java 
--> kblcm.cy.si.fi.action.CYSIFI_fundAction.java(KBFMCallCenterServletl) 
CYSIFI_rest_lst.jsp 

- arary -> string ����(���(array) ����ȯ) 
String[] insuPolicyNumFront = CY_commonUtil.getInsuNumberForFront(request.getParameterValues("insuPolicyNum")); 
--> String[] test = request.getParameterValues("insuPolicyNum"); 
String[] insuPolicyNumFront = new String [100]; 
for (int i=0; i<test.length;i++) { 
insuPolicyNumFront[i] = CY_commonUtil.getInsuNumberForFront(test[i]); 
} 
------------------------------------------------------------------------------------------ 
  
- radio �ڽ� ���� 
<td><input type="radio" name="p_account_state" value="00" <s:if test="%{resultMap.accountState.equals('00')}">checked</s:if>>��ü</td> 

<form name="form1" method="post" action="/KBLCM/cy/CYSIFI_rest_lst.do" onsubmit="javascript:goSearch();return false;"> 
<td align="right"><input type="Image" src="/images/kblcm/all/btn/search04.gif">[��ȸ]</td> 
</form> 
<a href="/KBLCM/cy/CYSIII_dormantInsu_ins.do?p_cmd=ins">[�޸麸��� �ޱ��û]</a>   
------------------------------------------------------------------------------------------ 
  
 2) �ŷ�������ȸ 
http://127.0.0.1:8080/KBLCM/cy/CYSIFI_myTrade_lst.do 
com.kyobo.kblcm.cyber.fu.action.CYFU_fundAction.java 
--> kblcm.cy.si.fi.action.CYSIFI_fundAction.java(KBFMCallCenterServletl) 
CYSIFI_myTrade_lst.jsp 
  
 3) ���ͷ���ȸ 
 http://127.0.0.1:8080/KBLCM/cy/CYSIFI_priceEarnings_lst.do 
com.kyobo.kblcm.cyber.fu.action.CYFU_fundAction.java 
--> kblcm.cy.si.fi.action.CYSIFI_fundAction.java(KBFMCallCenterServlet) 
CYSIFI_priceEarnings_lst.jsp  

logger.debug("[/CYSIFI_dormantInsu_lst_tab03.jsp]:[START] ================> ");  
==============================================================================================================

- �������� ������ 
����ö ����(���̹�â��) H) * 
���� ����(���̹�â��) H) * 
�ֺ��� �븮(���̹�â��) H) * 
���ø��� �븮(������ǰ) H) * 
������(������ǰ) H) *   
������(������ǰ) H) *    
�ֹ��� ����(ȸ��Ұ�) H) * 
����ȯ �븮(ȸ��Ұ�) H) * 
�̳���(ȸ��Ұ�) H) *  
���ΰ� �븮(DBA) H)  
������ ����(����) H)  * 
����ȣ ����(PL) H) * 
�ֵ��� ����(PM) H) * 
Ȳ���� ����(�������) H) * 
==============================================================================================================

������������������� 2008.07.11(��) �۾� �����������������
---> 06:50 ~ 21:10  --> ����(����: ������(SK PM�� ��)), ����(����, �Ӹ�) 

- ���� Ȩ ������ Prj
1. �ݵ������Ȳ��ȸ 
 2) �ŷ�������ȸ 
http://127.0.0.1:8080/KBLCM/cy/CYSIFI_myTrade_lst.do 
com.kyobo.kblcm.cyber.fu.action.CYFU_fundAction.java 
--> kblcm.cy.si.fi.action.CYSIFI_fundAction.java(I/F: YC122usCall) 
CYSIFI_myTrade_lst.jsp 

logger.debug("[/CYSIFI_fundAction.java]:[service()]:[bankHM]"+ bankHM);   //Hash map ����Ÿ 
--> [/CYSIFI_fundAction.java]:[service()]:[bankHM]{CUST_NO=2000008, bankBookList=[{NO=001}, {NO=002}] 

- include  ���� 
<%@ include file="/jsp/kblcm/common/CM_page_bottom_lst.jsp" %> 
--> <s:include value="/WEB-INF/jsp/kblcm/common/CM_page_bottom_lst.jsp" />  
    cf) <s:include value="/js/include.jsp" /> 
   
<a href="/KBLCM/cy/CYSIFI_myTrade_lst.do?p_cmd=myTrade_prelst">  [�޸麸��� �ޱ��û]</a>    
==============================================================================================================

 - HashMap 
HashMap�� Ű�� ���� Null�� ��� �մϴ�.  
HashMap ��¹���� ���� �Ѱ��� �̳׿�.(Enumeration ���� ����)  

<% 
HashMap hashmap = new HashMap();  

hashmap.put("park77", "�ڼ���");  
hashmap.put("chanTexas", "����ȣ");  
hashmap.put("kim123", "�躴��");  

Set set = hashmap.entrySet();  
Iterator keys = set.iterator(); 

while (keys.hasNext()) {  
   key = (String)keys.next();  
   System.out.println(hashmap.get(key));  
}  
%> 

���: 
�ڼ��� 
����ȣ 
�躴�� 

���̵� pak77�� ���: <%=hashmap.get("pakr77")%>�� ��� 
==============================================================================================================

������������������� 2008.07.12(��) �۾� �����������������
---> 07:20 ~ 20:00  --> �����౸(��ͼ� ���ϰ� ���ƿ�), ��� �ٹ� 

- ���� Ȩ ������ Prj
1. ��������ȸ[���̹�â��>������ȸ] 
 1) ���������  
http://127.0.0.1:8080/KBLCM/cy/CYSIII_account.action 
com.kyobo.kblcm.cyber.in.cm.action.CYINAM_accountAction.java 
kblcm.cy.si.ii.action.CYSIII_accountAction.java --> YC122usCall  
CYSIII_main01.jsp, CYSIII_account_tab01.jsp 
  
 1-1) ���󼼳��� 
http://127.0.0.1:8080/KBLCM/cy/CYSIII_account_viw.action 
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.si.ii.action.CYSIII_accountAction.java --> Y2010102odCall 
CYSIII_account_viw_pop.jsp 
  
 1-2) ����Ư����ȸ 
http://127.0.0.1:8080/KBLCM/cy/CYSIII_accountSpec_viw.action 
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.si.ii.action.CYSIII_accountAction.java --> Y224A005odCall 
CYSIII_accountSpec_viw_pop.jsp 
  
 1-3) ���峻����ȸ  ==> (jsp�� Hash Map ���) 
http://127.0.0.1:8080/KBLCM/cy/CYSIII_accSecurity_viw.action 
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.si.ii.action.CYSIII_accountAction.java --> NF640UMCall 
CYSIII_accSecurity_viw_pop.jsp 

 1-4) ���Գ�����ȸ 
http://127.0.0.1:8080/KBLCM/cy/CYSIII_accPayment_viw.action 
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.si.ii.action.CYSIII_accountAction.java --> YC120usCall 
CYSIII_accPayment_viw_pop.jsp 
  
 1-5) ��������⳻�� 
http://127.0.0.1:8080/KBLCM/cy/CYSIII_applyLoan_viw.action 
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.si.ii.action.CYSIII_accountAction.java --> PJ451usCall 
CYSIII_applyLoan_viw_pop.jsp 

 1-6) ��������ȸ(���׺��������ȸ) ======> CYSIII_varamtDet_viw.jsp 
http://127.0.0.1:8080/KBLCM/cy/CYSIII_varamtDet_viw.action 
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.si.ii.action.CYSIII_varamtAction.java -->   
CYSIII_varamtDet_viw_pop.jsp 

 1-7) ���ͷ���ȸ(���׺��������ȸ) 
http://127.0.0.1:8080/KBLCM/cy/CYSIII_varamtEarnRt_viw.action 
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.si.ii.action.CYSIII_varamtAction.java -->   
CYSIII_varamtEarnRt_viw_pop.jsp 
  
 1-8) ����������ȸ(���׺��������ȸ)  -->  varamt_death, Det04_viw.jsp 
http://127.0.0.1:8080/KBLCM/cy/CYSIII_varamtMort_viw.action 
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.si.ii.action.CYSIII_varamtAction.java -->   
CYSIII_varamtMort_viw._pop.jsp  
==============================================================================================================

- ���� ���� 
[07/12 10:35:07] [DEBUG] - Error while retrieving generic property class for property=resultMap 
java.lang.NullPointerException 
����: resultMap�� �߸� �����༭ ���� 
��ġ: resultMap�� Null���� ���� �ʵ��� ������ ������ �� 
resultMap.put("accountList", "NO DATA");   // ������ ����Ʈ 
==============================================================================================================

������������������� 2008.07.14(��) �۾� �����������������
---> 06:50 ~ 20:00  --> ������ ���(������ ���� ������ ����) 

- ���� Ȩ ������ Prj
1. ����༱��[�������>��������] 
http://127.0.0.1:8080/KBLCM/cy/CYCIRITC_selTrgCon.action 
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.ci.ri.tc.action.CYCIRITC_selTrgConAction.java --> YC122usCall 
CYCIRITC_selTrgCon_lst.jsp 
==============================================================================================================

1. �����������[�������>��������] 
 1) ó������ ���� 
http://127.0.0.1:8080/KBLCM/cy/CYCIRISP_notProcess.action    
com.kyobo.kblcm.company.cy.ri.yu.action.COCYRIYU_notProcessAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_notProcessAction.java --> EW00W140odCall  
CYCIRISP_main01.jsp, CYCIRISP_notProcess_lst.jsp  
==============================================================================================================

1. �����������[�������>��������] 
 1) �������� ���� 
http://127.0.0.1:8080/KBLCM/cy/CYCIRISP_businessProcessAction.action 
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_businessProcessAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_businessProcessAction.java --> EW10EW22odCall 
CYCIRISP_businessProcess_lst.jsp 
------------------------------------------------------------------------------------------ 

1. �����������[�������>��������] 
 1) �������� ���� 
  1-1) ����Ϲݻ��� ���� �����Ȳ ��ȸ 
 http://127.0.0.1:8080/KBLCM/cy/CYCIRISP_generalContractRslt.action 
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_generalContractRsltAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_generalContractRsltAction.java --> EW10EW24odCall 
CYCIRISP_generalContractRslt.jsp 
==============================================================================================================

- ������ ����(�������� ������ Proj) 
01. ��������� 
�� 20050705102745015_ML-2550S_Print_Common.exe�� ��ġ  
1. 20050705102745015_ML-2550S_Print_Common.exe ���α׷� ��ġ 
2. ������ �� �ѽ� 
   Samsung ML-2550S Series ������ ��ư Ŭ�� -> �Ӽ� -> ��Ʈ  
   ��Ʈ�߰� -> Standard TCP/IP -> ����Ʈ  
3. ������ �̸� �Ǵ� IP�ּ� : 10.33.160.135 -> ���� 
------------------------------------------------------------------------------------------------------ 
 02. �÷�������(Xerox 8400DP)  
1. "������ �� �ѽ�" --> ������ �߰� 
2. "����ǻ�Ϳ� ����� ����������" 
   "�÷��� �� �����������͸� �ڵ����� �˻� �� ��ġ" --> äũ ����  
3. "����Ʈ �����" --> "Standard TCP/IP Port" ���� 
4. "������ �̸� �Ǵ� IP�ּ�" : 10.33.160.134 -> ���� 
5. "��ũ ����" -> 8400winxp_2kpcl --> "Xerox Phaser 8400DP PCL 5C" 
   --> ���� --> �⺻ ������ ��� "�ƴϿ�" --> "��������" --> �׽�Ʈ�μ� 
==============================================================================================================

������������������� 2008.07.15(ȭ) �۾� �����������������
---> 06:50 ~ 22:30 

- ���� Ȩ ������ Prj
 1-6) ��������ȸ(���׺��������ȸ) ==> (jsp�� Hash Map ���) 
action name="CYSIII_varamt", p_cmd: detail 
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.si.ii.action.CYSIII_varamtAction.java -> V2020803odCall 
   
 1-7) ���ͷ���ȸ(���׺��������ȸ) ==> (jsp�� Hash Map ���) 
action name="CYSIII_varamt", p_cmd: earnrate 
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.si.ii.action.CYSIII_varamtAction.java -> V7030805odCall 

 1-8) ����������ȸ(���׺��������ȸ) ==> (jsp�� Hash Map ���) 
action name="CYSIII_varamt", p_cmd: death 
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.si.ii.action.CYSIII_varamtAction.java -> V2010802odCall  
CYSIII_varamtMort_viw_pop.jsp 
==============================================================================================================

- DB2 ���� 
IP: 10.33.160.178 �����ͺ��̽���: KYOBOWWW 
ID/PWD: inst01/inst01www CATALOG TCPIP NODE: renewdev 
REMOTE: 10.33.160.178 SERVER PORT: 50000 
REMOTE_INSTANCE: inst01 OSTYPE AIX;  

CATALOG DATABASE KYOBOWWW AS WWW 
  AT NODE: renewde AUTHENTICATION: SERVER; 
==============================================================================================================

������������������� 2008.07.16(��) �۾� �����������������
---> 07:00 ~ 22:10 

- ���� Ȩ ������ Prj
1. �����������[�������>��������] 
 1) �������� ���� 
  1-1) �����û�� �����Ȳ ��ȸ 
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_insuReqRsltAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_insuReqRsltAction.java --> EW10EW23odCall  
CYCIRISP_insuReqRslt_lst.jsp 
  
 1. �����������[�������>��������] 
 1) �������� ���� 
  1-1) û���� �Է°��(��â) 
action name="CYSIII_varamt", p_cmd: detail 
com.kyobo.kblcm.company.cy.ri.ap.action.COCYRIAP_insuReqDetailAction.java 
--> kblcm.cy.si.ii.action.CYCIRISP_insuReqDetailAction.java -> EW10EWA1odCall 
CYCIRISP_insuReqDetail_viw_pop.jsp 

1. �����������[�������>��������] 
 1) �������� ���� 
  1-2) ���޺����� �����Ȳ ��ȸ 
com.kyobo.kblcm.company.ad.cy.ri.ra.action.COADCYRIRA_appUnpaidRetireAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_appUnpaidRetireAction.java -->   EW30EW36odCall 
CYCIRISP_appUnpaidRetire_lst.jsp 

1. �����������[�������>��������] 
 1) �������� ���� 
  1-3) ������� �����Ȳ ��ȸ 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_unpaidRetireAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_unpaidRetireAction.java --> EW10EW17odCall 
CYCIRISP_unpaidRetire_lst.jsp 
  
1. �����������[�������>��������] 
 1) �������� ���� 
  1-4) ����� ���� �����Ȳ ��ȸ 
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_userChangeRsltAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_userChangeRsltAction.java --> EW10EWA4odCall 
COCYRISP_userChangeRslt_viw.jsp 

1. �����������[�������>��������] 
 1) �������� ���� 
  1-5) �����û �����Ȳ ��ȸ 
com.kyobo.kblcm.company.cy.ri.ap.action.COCYRIAP_transferReqApprovalAction.java 
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_transferReqApprovalAction.java --> EW10EW154odCall 
CYCIRISP_transferReqApproval_lst.jsp 
==============================================================================================================

1. ��������ȸ(IS)[�������>��������] 
 1) ����Ϲݻ���(Tab) 
  1-1) �⺻������ 
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_insuReqRsltAction.java  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_comComItemAction.java --> EW10EW16odCall 
CYCIRIIS_insuReqRslt_lst.jsp 

1. ��������ȸ(IS)[�������>��������] 
 1) ����Ϲݻ��� 
  1-2) ������� �Է� 
action name="CYSIII_varamt", p_cmd: detail 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_generalContractAction.java  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_generalContractAction.java --> EW10EW16odCall 
CYCIRIIS_generalContract_upd.jsp 
  
1. ��������ȸ(IS)[�������>��������] 
 1) ����Ϲݻ��� 
  1-2) �����û�Ϸ�(Layer) 
action name="CYSIII_varamt", p_cmd: detail 
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_insuReqRsltAction.java  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_generalContractAction.java --> EW10EW16odCall 
CYCIRIIS_apprvlok_viw.jsp 
---------------------------------------------------------------------------------------- 

1. ��������ȸ(IS)[�������>��������] 
 1) ����Ϲݻ��� 
  2-1) �������ڴ�ǥ�ں���-��������Է� 
action name="CYSIII_varamt", p_cmd: detail 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_representAction.java  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_representActionAction.java --> EW10EW16odCall 
CYCIRIIS_generalContract_upd.jsp 

1. ��������ȸ(IS)[�������>��������] 
 1) ����Ϲݻ��� 
  2-2) �������ڴ�ǥ�ں���-�����û�Ϸ�(Layer) 
action name="CYSIII_varamt", p_cmd: detail 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_representAction.java  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_representActionAction.java --> EW10EW16odCall 
CYCIRIIS_apprvlok_viw.jsp   
==============================================================================================================

1. ��������ȸ(IS)[�������>��������] 
 1) �������� ��ȸ  
action name="CYSIII_varamt", p_cmd: detail 
com.kyobo.kblcm.company.cy.wf.is.action.COCYWFIS_theInsuredAction.java 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_theInsuredAction.java --> NU415usCall 
CYCIRIIS_theInsured_lst.jsp 
  
 1) �������� 
 1-1) �������� ��������-������� �Է�(Layer) 
action name="CYSIII_varamt", p_cmd: detail 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_representAction.java 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_representActionAction.java --> EW10EW16odCall 
CYCIRIIS_apprvlok_viw.jsp   
  
 1) �������� 
 1-2) �������� ��������-������� �Է�(Layer) 
action name="CYSIII_varamt", p_cmd: detail 
com.kyobo.kblcm.company.ad.cy.ri.ra.action.COADCYRIRA_appInsuredAltAction.java 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_representActionAction.java --> EW10EW16odCall 
CYCIRIIS_apprvlok_viw.jsp   
  
 1) �������� 
 1-3) �������� ��������-��������-�����û�Ϸ�(Layer) 
action name="CYSIII_varamt", p_cmd: detail 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_representAction.java 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_representActionAction.java --> EW10EW16odCall 
CYCIRIIS_apprvlok_viw.jsp   
 -------------------------------------------------------------------------------- 

 1) �������� 
 1-4) ���޺�����/������� ���� �Է�(Layer)  
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_unpaidRetireAction.java 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_unpaidRetireAction.java --> EW10EW17odCall 
CYCIRIIS_unpaidRetire_lst_pop.jsp   
  
 1) �������� 
 1-5) ���޺�����/������� �����û(Layer)  
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_unpaidRetireAction.java 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_unpaidRetireAction.java --> EW10EW17odCall 
CYCIRIIS_unpaidRetire_viw_pop.jsp   

 1) �������� 
 1-6) ���޺�����/������� �����û�Ϸ�(Layer)  
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_representAction.java 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_representActionAction.java --> EW10EW16odCall 
CYCIRIIS_apprvlok_viw.jsp   
 -------------------------------------------------------------------------------- 

 1) �������� 
 1-1) å���غ��(Layer)  
com.kyobo.kblcm.company.cy.ri.cr.action.COCYRICR_dutyPrepareAction.java 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_dutyPrepareAction.java --> EW00EW02odCall 
CYCIRIIS_dutyPrepare_lst_pop.jsp   
 -------------------------------------------------------------------------------- 

 1) �������� 
 1-1) ��������������ȸ(Layer)  
com.kyobo.kblcm.company.cy.ri.is.action.COCYRIIS_appSectionAction.java 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_dutyPrepareAction.java --> EU00W148odCall   
CYCIRIIS_appSection_viw_pop.jsp   
   
 1) �������� 
 1-1) ����� ���Գ���(Layer)  
com.kyobo.kblcm.company.cy.ri.is.action.COCYRIIS_paidParticularAction.java 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_dutyPrepareAction.java --> EW00EW03odCall   
CYCIRIIS_paymentParticular_lst_pop.jsp   
  
  1) �������� 
 1-1) ����� ���޳���(Layer)  
com.kyobo.kblcm.company.cy.ri.is.action.COCYRIIS_paymentParticularAction.java 
--> kblcm.cy.ci.ri.is.action.COCYRIIS_paymentParticularAction.java --> EW00EW04odCall 
CYCIRIIS_paymentParticular_lst_pop.jsp   

  1) �������� 
 1-1) ���޼��γ��� ��ȸ(Layer)  
"com.kyobo.kblcm.company.cy.ri.is.action.COCYRIIS_paymentParticularActio.java 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_paymentParticularActio.java --> EW00EW04odCall 
COCYRIIS_paymentParticular_lst.jsp  

  1) �������� 
 1-1) ���������� ��ȸ(Layer)  
com.kyobo.kblcm.company.cy.ri.is.action.COCYRIIS_attachmmentAction.java 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_attachmmentAction.java --> EW00W141odCall 
CYCIRIIS_attachmment_lst_pop.jsp   
==============================================================================================================

- [�ְ����� 2008�� 7�� 3°��]
�� ���� ���� ����(07.14 ~ 07.18)
1. HOST �������̽� ���� 
 1) ������ȸ  
 2) �������(��������) 
------------------------------------------------------------------------------------------ 

�� ���� ���� ��ȹ(07.21 ~ 07.25)
1. �����۾�(ȭ��) 
 1) ������ȸ 
 2) �������(��������) 
   ��. ����༱�� 
==============================================================================================================

������������������� 2008.07.17(��) �۾� �����������������
---> 06:50 ~ 22:10  --> �ֵ��� ���� ����, ���� ��ȹ�� ���� 

- ���� Ȩ ������ Prj
1. ����� û��(RS)[�������>��������] 
 1)  �������谳��û��(Tab) 
 1-1) û������� �߰� 
com.kyobo.kblcm.company.cy.ri.rs.action.COCYRIRS_indivInsuReqAction.java 
--> kblcm.cy.ci.ri.rs.action.CYCIRIRS_indivInsuReqAction.java --> EW10EW11odCall    
CYCIRIRS_indivInsuReq_lst.jsp 

 1)  �������谳��û��(Tab) 
 1-2) û�����Է� 
com.kyobo.kblcm.company.cy.ri.rs.action.COCYRIRS_indivReqRsltAction.java 
--> kblcm.cy.ci.ri.rs.action.CYCIRIRS_indivReqRsltAction.java --> EW10EW15odCall 
COCYRIRS_indivReqRslt_viw.jsp 

 1)  �������谳��û��(Tab) 
 1-1) û������ Ȯ��  
com.kyobo.kblcm.company.cy.ri.is.action.COCYRIIS_paidParticularAction.java 
--> kblcm.cy.ci.ri.rs.action.CYCIRIIS_insuReqDetailAction.java -->   
CYCIRIRS_insuReqDetail_viw.jsp 
  
 1)  �������谳��û��(Tab) 
 1-1) ���޿����� 
com.kyobo.kblcm.company.cy.ri.rs.action.COCYRIRS_indivReqReserveAction.java 
--> kblcm.cy.ci.ri.rs.action.CYCIRIIS_indivReqReserveAction.java -->   
CYCIRIRS_indivReqReserve_viw.jsp 

 1)  �������谳��û��(Tab) 
 1-1) ���� ������ ����  
com.kyobo.kblcm.company.cy.ri.rs.action.COCYRIRS_indivReqSelectAction.java 
--> kblcm.cy.ci.ri.rs.action.CYCIRIIS_indivReqSelectAction.java --> EW10EW13odCall 
CYCIRIRS_indivReqSelect_lst.jsp 

 1)  �������谳��û��(Tab) 
 1-1) ���� ������ ����  
com.kyobo.kblcm.company.cy.ri.rs.action.COCYRIRS_indivReqRsltAction.java 
--> kblcm.cy.ci.ri.rs.action.CYCIRIIS_indivReqSelectAction.java --> EW10EW13odCall 
CYCIRIRS_indivReqSelect_lst.jsp 

 1)  �������谳��û��(Tab) 
 1-1) û���� ��� 
com.kyobo.kblcm.company.cy.ri.rs.action.COCYRIRS_indivReqPrintAction.java 
--> kblcm.cy.ci.ri.rs.action.CYCIRIIS_indivReqPrintAction.java --> EW10EW14odCall 
CYCIRIRS_indivPrint_pop.jsp 
------------------------------------------------------------------------------------------ 
  
 1)  ���������ϰ�û��(Tab) 
 2-1) �ϰ�û�� ����� �������� ���� 
com.kyobo.kblcm.company.cy.ri.rs.action.COCYRIRS_bundleSendInitAction.java 
--> kblcm.cy.ci.ri.rs.action.CYCIRIRS_bundleSendInitAction.java -->   
CYCIRIRS_bundleSend_ins.jsp 

 2-2) ���۰�� Ȯ��/���� 
com.kyobo.kblcm.company.cy.ri.rs.action.COCYRIRS_bundleSendAction.java 
--> kblcm.cy.ci.ri.rs.action.CYCIRIRS_bundleSendAction.java --> EW10EW15odCall 
CYCIRIRS_bundleSendOK_viw.jsp 

 2-3) û������Ȯ�� �� �ϰ���� 
com.kyobo.kblcm.company.cy.ri.rs.action.COCYRIRS_bundleSendAction.java 
--> kblcm.cy.ci.ri.rs.action.CYCIRIRS_bundleSendAction.java --> EW10EW15odCall 
CYCIRIRS_bundleSendOK_viw.jsp 

 2-4) ���� ������ ���� 
com.kyobo.kblcm.company.cy.ri.rs.action.COCYRIRS_bundleSendAction.java 
--> kblcm.cy.ci.ri.rs.action.CYCIRIRS_bundleSendAction.java -->   
CYCIRIRS_bundleSendOK_viw.jsp 

 2-5) û���� ��� 
com.kyobo.kblcm.company.cy.ri.rs.action.COCYRIRS_bundleSendAction.java 
--> kblcm.cy.ci.ri.rs.action.CYCIRIRS_bundleSendAction.java -->   
CYCIRIRS_bundleSendOK_viw.jsp  
------------------------------------------------------------------------------------------ 

 1)  �����û(Tab) 
 2-1) û������� �߰� 
com.kyobo.kblcm.company.cy.ri.rs.action.COCYRIRS_transferReqAction.java 
--> kblcm.cy.ci.ri.rs.action.CYCIRIRS_bundleReqSelectAction.java --> EW10EW150odCall  
CYCIRIRS_transferReq_lst.jsp 
  
 2-2) �����û����Ʈ Ȯ�� 
com.kyobo.kblcm.company.cy.ri.rs.action.COCYRIRS_transferReqSelectedAction.java 
--> kblcm.cy.ci.ri.rs.action.CYCIRIRS_transferReqSelectedAction.java --> EW10EW151odCall   
CYCIRIRS_transferReqSelected_lst.jsp 

 2-3) ������� �Է� 
com.kyobo.kblcm.company.cy.ri.rs.action.COCYRIRS_transferInsertedAction.java 
--> kblcm.cy.ci.ri.rs.action.CYCIRIRS_transferInsertedAction.java --> EW10EW152odCall  
CYCIRIRS_transferInserted_ins.jsp 

 2-4) ������ ���� 
com.kyobo.kblcm.company.cy.ri.rs.action.COCYRIRS_bundleSendAction.java 
--> kblcm.cy.ci.ri.rs.action.CYCIRIRS_bundleSendAction.java -->   
CYCIRIRS_bundleSendOK_viw.jsp 
==============================================================================================================

- ERWIN ���� 
���̹�â��_���(���¸�).erwin 
���������� ���� 
==============================================================================================================

������������������� 2008.07.18(��) �۾� �����������������
---> 06:50 ~ 20:50  --> ����, �¿� ����(���� ������ 1, 2��) 

- ���� Ȩ ������ Prj
1. ��������ȸ(II)[������ȸ] 
 1) ���������(Tab)   
com.kyobo.kblcm.cyber.in.cm.action.CYINAM_accountAction.java 
kblcm.cy.si.ii.action.CYSIII_accountAction.java --> YC122usCall 
CYSIII_main01.jsp, CYSIII_account_tab01.jsp 

 1-1) ���󼼳���  
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.si.ii.action.CYSIII_accountAction.java --> Y2010102odCall 
CYSIII_account_viw_pop.jsp 
  
 1-2) ����Ư����ȸ 
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.si.ii.action.CYSIII_accountAction.java --> Y224A005odCall 
CYSIII_accountSpec_viw_pop.jsp 
------------------------------------------------------------------------------------------ 

- �ڹ� ��ũ��Ʈ ���� 
���� ����: ��ü�� �ʿ��մϴ�.(��ġ: 1�� ��) 
����: �������� ��ũ��Ʈ ȣ���� �� ��(���� ȣ���� �Լ��� �ҽ� ���⿡�� �� ����) 
==============================================================================================================

- myLG070 ��ȭ ��� ��ȸ 
http://hi.lgdacom.net 
����ȣ: 9002461346 
==============================================================================================================

- �������� �������̽� ȸ��(15:30 ~ 16:20) 
1. �������� �������̽� ���� ���� ���� 
 1) �ű� ���� �� 
�������� �������(���� ���ε�, �ٿ�ε�) 
 2) ����(�߰�) �� 
  ��. �������� ���� ��� 
   - �߰�� ���� 
  ��. ����� ��� 
   - �޴��� ��ȣ �߰� 
  ��. ������� ���γ��� 
   -  �߰��������� ��� ������ڸ� �ź����� �������ڷ� ������ �� 
2. ���� ���� ���� 
 1) K-ONE ��â�� ������� �������̽� ���� ������ �ľ��ϰ�  
     �ű� ������ ���ؼ��� ��ȣ ����� ���Ǹ� ���ؼ� ����   
==============================================================================================================

������������������� 2008.07.19(��) �۾� ����������������
---> 08:50 ~ 12:00  --> ��� �ٹ�, ��Ծ� ����ġ(���� ������)

- ���� Ȩ ������ Prj
1. ��������ȸ(II)[������ȸ] 
 1) ���������(Tab)   
com.kyobo.kblcm.cyber.in.cm.action.CYINAM_accountAction.java 
kblcm.cy.si.ii.action.CYSIII_accountAction.java --> YC122usCall 
CYSIII_main01.jsp, CYSIII_account_tab01.jsp 
  
<a href="javascript:account_view('<s:property value="%{#inq_stat.count+1}"/>', '<s:property value="%{#row.varamtYn}"/>')"> 
<a href="javascript:" onclick="top.layers.create({id:'layer_apply', src:'/KBLCM/cy/CYSIII_account.do',width:600});">[��â ����_iframe TEST]</a> 
  
 1-1) ���󼼳���  
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.si.ii.action.CYSIII_accountAction.java --> Y2010102odCall 
CYSIII_account_viw_pop.jsp 

 - CYSIII_accountAction.java ���Ͽ��� 
hostMessage = "N"; 
varamtYn = "N"; 
contractDate = ""; 

//������ ����ȸ(resultMap) 
//resultMap.put("cysiii_accountVO", "NO DATA");   // ������ ����Ʈ 
resultMap.put("cysiii_accountVO", cysiii_accountVO);   // �����׻� 
resultMap.put("hostMessage", hostMessage);              // �����޽��� 
resultMap.put("varamtYn", varamtYn);      // ���׺��迩�� 
resultMap.put("contractDate", contractDate);   // �������  

- ���� ���� ���� 
if (call.getMSG_CODE().equals("0000")) { 
} else { 
throw new KBLCMSysException("SVM00003");  
} 

 1-2) ����Ư����ȸ 
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.si.ii.action.CYSIII_accountAction.java --> Y224A005odCall 
CYSIII_accountSpec_viw_pop.jsp  
==============================================================================================================

- �ڵ��� ���� �˻�(�¿��� ���� ��Ŵ ==>55,000��) 
1. �Ⱓ: 2008.07.16 ~ 09.12  
2. ���񼭷�: �ڵ��������(��û�� ����) 
å�Ӻ��迵����(�˻縦 �޴� ���ϱ��� ��ȿ�� ����) 
3. ��������: 50,800��(��: 53,000��)   
-> ����˻�(20,000��), ���ϰ˻�(33,000��)  
4. �˻��: �����ڵ�������������(02-877-0024): ��õ�� ��ó  
5. ����: �����������(http://www.ts2020.kr 
�˻���ȿ�Ⱓ: 2�� 
------------------------------------------------------------------------ 
- ���а˻� ���ǥ 
������ȣ: �� A019-20080719-0020 ȣ 
����Ÿ�: 100.981 km 
��������: ���� 
��ȿ�Ⱓ: 2008-08-14 ~ 2010-08-13 
����������(��) 
�˻��: 
 1) ���� �� ���(�Ǽ���) 
 2) ���Ⱑ��(������) 
 3) å����(�ۿ���)  
==============================================================================================================

������������������� 2008.07.20(��) �۾� �����������������
---> 10:40 ~ 19:40  --> �Ͽ� �ٹ� 

- ���� Ȩ ������ Prj
1. ��������ȸ(II)[������ȸ] 
 1) ���������(Tab)   
com.kyobo.kblcm.cyber.in.cm.action.CYINAM_accountAction.java 
kblcm.cy.si.ii.action.CYSIII_accountAction.java --> YC122usCall 
CYSIII_main01.jsp, CYSIII_account_tab01.jsp 
  
 YC122usCall call = new YC122usCall(); 
  
 1-1) ���󼼳���  
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.si.ii.action.CYSIII_accountAction.java --> Y2010102odCall 
CYSIII_account_viw_pop.jsp 

Y2010102odCall call = new Y2010102odCall();  ==> ����  
==============================================================================================================

1. �ݵ������Ȳ��ȸ 
 2) �ŷ�������ȸ 
http://127.0.0.1:8080/KBLCM/cy/CYSIFI_myTrade_lst.do 
com.kyobo.kblcm.cyber.fu.action.CYFU_fundAction.java 
--> kblcm.cy.si.fi.action.CYSIFI_fundAction.java(KBFMCallCenterServletl) 
CYSIFI_myTrade_lst.jsp 
  
  - �޺� �ڽ� ����� ���� 
:[mapCourseEx2]{C2=Spring, C3=iBatis, C1=Struts2, C4=Acegi} 
:[bankHM_H]{bankBookList=[{NO=001}, {NO=002}]} 
==============================================================================================================

- ���, �ֽ�(LG����, �츮����) 
- ��(��� ó(*)) 
���ҿ� H.P) * 
==============================================================================================================

������������������� 2008.07.21(��) �۾� �����������������
---> 07:00 ~ 22:00   --> ������ ���� ����(���̹� â��) 

- ���� Ȩ ������ Prj
1. �ݵ������Ȳ��ȸ 
 2) �ŷ�������ȸ 
http://127.0.0.1:8080/KBLCM/cy/CYSIFI_myTrade_lst.do 
com.kyobo.kblcm.cyber.fu.action.CYFU_fundAction.java 
--> kblcm.cy.si.fi.action.CYSIFI_fundAction.java(KBFMCallCenterServletl) 
CYSIFI_myTrade_lst.jsp 
  
  - �޺� �ڽ� ����� ���� 
:[mapCourseEx2]{C2=Spring, C3=iBatis, C1=Struts2, C4=Acegi} 
:[bankHM_H]{bankBookList=[{NO=001}, {NO=002}]} 
:[bankHM_hm]{NO2=002, NO1=001} 

[bankbookList2][2000008] 
==============================================================================================================

 //��������ȸ(resultMap) 
resultMap.put("tsInd", tsInd);               // CWAG-MICROSEC 
resultMap.put("focus", focus);               // ������ �̵��� ȭ���� ��Ŀ�� ���� 
resultMap.put("accountList", cmlistvo);      // ������ ����Ʈ VO 
resultMap.put("hostMessage", hostMessage);   // �����޽���  
==============================================================================================================

 - ���� SKY IM-U300K (��ȣ�̵�-�ű�)  
http://www.hmall.com/front/shItemDetailR.do?ReferCode=250&ItemCode=2008j40981&service_id=elecdn  
 - ���� SKY IM-U300K (��ȣ�̵�-����)  
WCDMA(3G) / ������DMB / ������ / 2.2�� / 26���÷� / 200��ȭ�� / MP3 / ���ڻ������ / SKY Icon / �۷ι��ι�  
/ ������� / �׿»�����<...   135,000�� ~ 180,538�� 
http://www.gmarket.co.kr/challenge/neo_goods/goods.asp?goodscode=133830277&GoodsSale=Y&jaehuid=200002657&service_id=elecdn  
==============================================================================================================

������������������� 2008.07.22(ȭ) �۾� �����������������
---> 07:00 ~ 18:00  --> ����ȣ ���� ö��, ������ ȸ�� 

- ���� Ȩ ������ Prj
1. �ݵ������Ȳ��ȸ 
 2) �ŷ�������ȸ 
http://127.0.0.1:8080/KBLCM/cy/CYSIFI_myTrade_lst.do 
com.kyobo.kblcm.cyber.fu.action.CYFU_fundAction.java 
--> kblcm.cy.si.fi.action.CYSIFI_fundAction.java(KBFMCallCenterServletl) 
CYSIFI_myTrade_lst.jsp 

  //������ȸ 
HashMap bankHM = getBankBook(url, "6909301041614"); --> ������ 
bankHM_H = new HashMap<String,String>(); 
bankHM_H = getBankBook_H(url, "6909301041614");  //������ȸ(resultMap)  --> combox �� 

 - �޺� �ڽ� ����� ���� 
:[mapCourseEx2]{C2=Spring, C3=iBatis, C1=Struts2, C4=Acegi} 
:[bankHM_H]{bankBookList=[{NO=001}, {NO=002}]} 
:[bankHM_hm]{NO2=002, NO1=001}  
[bankHM_New]{NO2=002, NO1=001} 
==============================================================================================================

- �������� ���߻��� 
http://127.0.0.1:8080/KBLCM/examples/certLogin.do  
http://127.0.0.1:8080/KBLCM/examples/ajaxSample.do   
http://127.0.0.1:8080/KBLCM/ir/subMain.do  
http://127.0.0.1:8080/KBLCM/ir/irkokuauAuditReport.do?docDiv=0 
==============================================================================================================

 - �������� �α��� ���� ȸ��(14:00 ~ 14:50): ������ ����, ������, ������ ���� 
1. ��������, ������� ==> ����� �α��� 
2. ��ü���� ==> ����? -> ���� ���� 
==============================================================================================================

- ���ּ��� ȸ��(14:00 ~ 14:50) 
1. ����ȣ ���� ������� ���� 
==============================================================================================================

������������������� 2008.07.23(��) �۾� �����������������
---> 07:00 ~ 22:00 

- ���� Ȩ ������ Prj
1. ����༱��[�������>��������] 
http://127.0.0.1:8080/KBLCM/cy/CYCIRITC_selTrgCon.action 
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.ci.ri.tc.action.CYCIRITC_selTrgConAction.java --> YC122usCall 
CYCIRITC_selTrgCon_lst.jsp 

- import com.kyobo.kblcm.company.vo.CO_loginVO; 
==> import kblcm.common.web.login.context.CorpLoginContext;  //����� �α��� ���� 
 //CYCI_loginVO sessionVO = this.getSession(request, CO_ssNm); 
-> CorpLoginContext sessionVO = getCyberSessionContext2();   //����� �α��� ����  
==============================================================================================================

 - �������(���̹�â��) 
http://127.0.0.1:8080/KBLCM/cy/CYCOLO_login.do 
 - ������ȸ(���̹�â��) 
http://127.0.0.1:8080/KBLCM/cy/CYCOLO_simple_login.do 
 - CEO ���ô��� 
http://127.0.0.1:8080/KBLCM/in/ceoNewslist.do 
==============================================================================================================

 - Į���� ���� 
 1. TB_COWFM001������� ���� ������Ȳ() 
��ü(CORP_NM --> ORG_NM) 
����(STTL  --> APPLV)  
���� ���� �ڵ�(RCT_TYP_CD --> RCT_GB_CD)  
---------------------------------------------------------- 
settlement: ����(�ſ�ī�� ����) 
approval: ����(����) 
==============================================================================================================

- [�ְ����� 2008�� 7�� 4°��]  
�� ���� ���� ����(07.21 ~ 07.25)
1. HOST �������̽� �۾� 
 1) ������ȸ  
 2) �������(��������) 
------------------------------------------------------------------------------------------ 

�� ���� ���� ��ȹ(07.28 ~ 08.01)
1. �����۾�(ȭ��) 
 1) ������ȸ 
==============================================================================================================

 ������������������� 2008.07.24(��) �۾� �����������������
---> 07:00 ~ 21:00  ---> ����(������: ����ȯ �븮 <-> ������ ����) 

- ���� Ȩ ������ Prj
1. �ݵ������Ȳ��ȸ 
 2) �ŷ�������ȸ 
http://127.0.0.1:8080/KBLCM/cy/CYSIFI_myTrade_lst.do 
com.kyobo.kblcm.cyber.fu.action.CYFU_fundAction.java 
--> kblcm.cy.si.fi.action.CYSIFI_fundAction.java(KBFMCallCenterServletl) 
CYSIFI_myTrade_lst.jsp 
==============================================================================================================

http://127.0.0.1:8080/KBLCM/cy/cypifufiFundRestLst.do 
http://127.0.0.1:8080/KBLCM/ir/irkokuauAuditReport.do?docDiv=0 
==============================================================================================================

- JCF taglib ����(struts) 
http://ammoguy.springnote.com/pages/1113614#toc_16 
http://struts.apache.org/2.x/docs/tag-reference.html 
==============================================================================================================

- ������� ��ȹ�� ���� 
���¿� ���� *   ����: *@*.* 
==============================================================================================================

������������������� 2008.07.25(��) �۾� �����������������
---> 07:40 ~ 21:00   --> ����, �Ӹ� ����(�� �̻� ����) 

- ���� Ȩ ������ Prj
1. �ݵ������Ȳ��ȸ 
 2) �ŷ�������ȸ 
http://127.0.0.1:8080/KBLCM/cy/CYSIFI_myTrade_lst.do 
com.kyobo.kblcm.cyber.fu.action.CYFU_fundAction.java 
--> kblcm.cy.si.fi.action.CYSIFI_fundAction.java(KBFMCallCenterServletl) 
CYSIFI_myTrade_lst.jsp 
------------------------------------------------------------------------------------------------------------------ 

- �޺��ڽ� ����(���¹�ȣ) 
<tr> 
	<td background="/images/kblcm/common/search_boxbg02.gif"><b>���¹�ȣ7</b>&nbsp;&nbsp;  
	<s:property value="resultMap.bankbookList2"/><!-- ����ȣ --> -</td> 
	<td><s:select onchange="javascript:getAccountNo(this);" headerKey="" headerValue="- ���� -"  
	name="checkedEx2" list="bankHM_H"/><!-- ���¹�ȣ --> </td> 
	<td><s:select headerKey="" headerValue="- ����2 -"  
	name="checkedEx3" list="bankHM_H"/><!-- ���¹�ȣ2 --> </td> 
</tr>   
------------------------------------------------------------------------------------------------------------------ 

[JSON]{"code":null,"message":null,"outputMessage":{"codelist":[{"NO":"00","NO_NM":"(1000) ������"}, 
{"NO":"01","NO_NM":"(8012) �ѱ��Ｚ�׷�.."},{"NO":"02","NO_NM":"(8019) �̷����� ��.."}, 
{"NO":"03","NO_NM":"(8020) �ϳ�UBS��.."},{"NO":"04","NO_NM":"(9003) ����Morn.."}, 
{"NO":"05","NO_NM":"(3013) ����Tomo.."},{"NO":"06","NO_NM":"(8020) �ϳ�UBS��.."} 
,{"NO":"07","NO_NM":"(5018) KTB������.."}],"bankHM_H":{"NO2":"002","NO1":"001"}}}  
==============================================================================================================

������������������� 2008.07.28(��) �۾� �����������������
---> 07:00 ~ 22:10   --> ��(����, �հ���), �뷡��, (��)��� ö�� ����(�ֺ���) 

- ���� Ȩ ������ Prj
1. �ݵ������Ȳ��ȸ 
 2) �ŷ�������ȸ 
http://127.0.0.1:8080/KBLCM/cy/CYSIFI_myTrade_lst.do 
com.kyobo.kblcm.cyber.fu.action.CYFU_fundAction.java 
--> kblcm.cy.si.fi.action.CYSIFI_fundAction.java(KBFMCallCenterServletl) 
CYSIFI_myTrade_lst.jsp 
--------------------------------------------------------------------------------------------------------- 

<script type="text/javascript" src="/KBLCM/js/service/cy/ajaxCombo.js"></script> 
&nbsp;<script defer="true" language="javascript">   
// Ajax ȣ�� ��ũ��Ʈ �Լ� 
kbl.extJS.initializeApplication(kbl.ajaxCombo.list.do_change_AccountNo, kbl.ajaxCombo.list); 
</script> 

- �޺��ڽ� ����(���¹�ȣ) 
<tr> 
<td background="/images/kblcm/common/search_boxbg02.gif"><b>���¹�ȣ</b>&nbsp;&nbsp;  
<s:property value="resultMap.str_CUST_NO"/><!-- ����ȣ --> -</td>   
<td><select name="cmbAccountNo" style="width:180" onChange="kbl.ajaxCombo.list.do_change_lar();"> 
<!-- ���¹�ȣ -->   
<option value="">- ���� -</option> 
</select> -</td>  
<td><select name="cmbAccountNo2" style="width:180"><!-- ���¹�ȣ2 -->   
<option value="">- ���� -</option> 
</select></td> 
</tr> 
------------------------------------------------------------------------------ 
  
[JSON]{"code":null,"message":null,"outputMessage": 
{"str_CUST_NO":"2000008","codelist":[{"NO":"001","NO_NM":""},{"NO":"002","NO_NM":""}]}}  

[JSON]{"code":null,"message":null,"outputMessage":{"codelist":[{"NO":"00","NO_NM":"(1000) ������"}, 
{"NO":"01","NO_NM":"(8012) �ѱ��Ｚ�׷�.."},{"NO":"02","NO_NM":"(8019) �̷����� ��.."}, 
{"NO":"03","NO_NM":"(8020) �ϳ�UBS��.."},{"NO":"04","NO_NM":"(9003) ����Morn.."}, 
{"NO":"05","NO_NM":"(3013) ����Tomo.."},{"NO":"06","NO_NM":"(8020) �ϳ�UBS��.."} 
,{"NO":"07","NO_NM":"(5018) KTB������.."}],"bankHM_H":{"NO2":"002","NO1":"001"}}}   
==============================================================================================================

-- ���̺� Į�� ���� ��ȸ(DB2) 
SELECT a.colno, a.tabname, b.remarks, a.colname, a.remarks,  
a.typename'('rtrim(char(a.length))')' AS DATA_TYPE   
FROM syscat.columns a, syscat.tables b                                                          
WHERE a.tabschema='INST01'  
  and a.tabname=b.tabname 
  and a.tabname like 'TB_CO%' 
ORDER BY 2,1 
==============================================================================================================

\\10.33.165.171\01.����\�������̽� ����\�������̽� ����_���̹�â��.xls 
==============================================================================================================

- ���� ���� ��� 
SK ���ö ����(ǰ������:QAO) ==> �� 44�� 
==============================================================================================================

������������������� 2008.07.29(ȭ) �۾� �����������������
---> 07:00 ~ 20:50   --> ����ȭ ���� ����(���̹�â��), ����(��ȹ��, ����, ����ȭ ����) 

- ���� Ȩ ������ Prj
1. �������̽� ����_���̹�â��.xls �۾� 
2. ���̹�â��_���(���¸�).erwin ���� 
==============================================================================================================

- GPass ����(���� �޽��� ���α׷�) 
GPass.zip ������ Ǯ�� --> GPass-3.4.4.exe ���� Ŭ��  --> GPass â�� �� 
��â�� ���콺 ������ Ŭ�� --> Add Application to GPass 
Application name: 01. ����Ʈ�� 
Program Path: C:\Program Files\NATEON\BIN\NATEON.exe 
Working Directory: C:\Program Files\NATEON 
-----------------------------------------------------------------------  
������ �� �ɽ�.. 
u.exe ���� �� �ٽ� ���� �ϸ� �� 
==============================================================================================================

������������������� 2008.07.30(��) �۾� �����������������
---> 07:00 ~ 22:10   --> 1�� ����, 2�� ������, 3�� Ƚ��(���� ����:�¿�, �Ӹ�, ���̻�) 

- ���� Ȩ ������ Prj
1. �ݵ������Ȳ��ȸ
 2) �ŷ�������ȸ 
http://127.0.0.1:8080/KBLCM/cy/CYSIFI_myTrade_lst.do 
com.kyobo.kblcm.cyber.fu.action.CYFU_fundAction.java 
--> kblcm.cy.si.fi.action.CYSIFI_fundAction.java(KBFMCallCenterServletl) 
CYSIFI_myTrade_lst.jsp   

<kbl:formatDate value="%{resultMap.outdata}" outfmt="yyyy.MM"/> </k:codeSelect>   
  
- /Servers/Tomcat v6.0 Server at localhost-config/server.xml ���Ͽ��� 
<Connector connectionTimeout="20000" port="8080" protocol="HTTP/1.1" redirectPort="8443" URIEncoding="UTF-8"/> 

http://127.0.0.1:8080/KBLCM/htmlCode/���̹�â��/01������ȸ/UI_CY_0001_home_���̹�â��_������ȸ_��������ȸ_container.html 
http://10.33.165.191/KBLCM/  

http://10.33.165.191/KBLCM/0_%ec%82%ac%ec%9d%b4%eb%b2%84%ec%b0%bd%ea%b5%ac_cy/01%ea%b0%84%ed%8e%b8%ec%a1%b0%ed%9a%8c/ 
==============================================================================================================

- ���̹�â�� HTML ����(15:00) 
1. ���� ������ ���� 
==============================================================================================================

- tiles-cy.xml �߰� 
/KBLCM/WebContent/WEB-INF/web.xml ���Ͽ��� �߰� �� 
<context-param> 
<param-name> 
org.apache.tiles.impl.BasicTilesContainer.DEFINITIONS_CONFIG 
</param-name> 
<param-value> 
/WEB-INF/conf/tiles/tiles.xml,   
/WEB-INF/conf/tiles/tiles-cy.xml,    ========>  tiles-cy.xml ���� �߰� 
/WEB-INF/conf/tiles/tiles-rm.xml 
</param-value> 
</context-param> 
==============================================================================================================

- ������ �޴���(��ī): ��ȯ�� ���׼� ����(24���� �Һ�) 
�ڵ���ü ����: (����)632-02-044472 ������: ������ 
�ּ�: ���� ������ �е� �ŵ��� �Ĺи��� 107�� 405ȣ 
�����ȣ: * 
����: 2�� ���� 
�����: û�ҳ� ���(�� 7õ��) 
------------------------------------------------------------------------------ 
�� 50,000��(���Ժ� �г��� ���� ��� 20,000��)m 
���Ժ� �۱� ����: (��������)459-13-034957 ȫ��ȯ(���Ժ� 5���� �۱�) 
�ѽ���ȣ: 055-754-1183~4 
------------------------------------------------------------------------------ 
 - ���� SKY IM-U300K (�ű�) 
http://www.hmall.com/front/shItemDetailR.do?ReferCode=250&ItemCode=2008j40981&service_id=elecdn 
==============================================================================================================

- ���� ���� ��� 
���̻�, SK ���ö ����(ǰ������:QAO) ==> 8�� 28��(��) ���� 
������ 13�� ���� ���� 
==============================================================================================================

������������������� 2008.07.31(��) �۾� �����������������
---> 07:10 ~ 22:30   --> ���� Ȩ ������ Proj ��ü ȸ��(�����, �뷡��, ��) 

- ���� Ȩ ������ Prj
1. ��������ȸ(II)[������ȸ] 
 1) ���������(Tab)   
com.kyobo.kblcm.cyber.in.cm.action.CYINAM_accountAction.java 
kblcm.cy.si.ii.action.CYSIII_accountAction.java --> YC122usCall 
CYSIII_main01.jsp, CYSIII_account_tab01.jsp  
==============================================================================================================

- java script ���� 
���� ����: "kbl"��(��) ���ǵ��� �ʾҽ��ϴ�. 
����:  
1. ���� js �ױ� ��θ� �� ã��(���� ��� Ȯ��) 
2. ���� �߰� 
<s:include value="/js/include.jsp" /> 
<script type="text/javascript" src="/KBLCM/js/service/cy/CYSIII_account_lst.js"></script> 
3. kbl �ױ� �߰� 
<%@ taglib prefix="kbl" uri="/kbl-tag" %> 
4. include �� ��� �� ����(���� ��� �ϰų� �ν��ϴ� ���� Ȯ���� ��) 
<s:include value="/js/include.jsp"/> 
<script type="text/javascript" src="/KBLCM/js/service/cy/CYSIII_account_lst.js"></script> 
==============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������
