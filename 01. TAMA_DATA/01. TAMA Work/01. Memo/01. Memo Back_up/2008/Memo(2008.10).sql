

�����������������������������������������������������������
+---------------------------------------------// Memo(2008.10) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2008.10.01(��) �۾� �����������������
----> 07:50 ~ 00:40  --> �ý�Ÿ�� ���(û��) 

- ���� Ȩ ������ Prj
- �Ǻ����ں���/�߰�׺��� ����ȸ ���� 
- ���޺�����, ������� �׸� ���� ����ȸ    ���� 
---------------------------------------------------------------------------------------------------------- 

<!--// 1.1. �������� - ���� �ٿ�ε�[�������>��������>������ ��ȸ/����>��������]  //--> 
<action name="CYCIRIIS_insuredXls" class="kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredXlsAction"> 
<interceptor-ref name="cloginCheckStack" /> 
</action>  
==============================================================================================================

- �ݵ�(�ɼ�)���� ó�� 
1. �� �����(�θ�â���� ����, layer ����, get ���)
6412131205436  
202012637647 ä��/ȥ�� �ݵ庯�� ������ ��ǰ�ε�  
���氡���Ѵ���̾��ٰ� ������.. 
==============================================================================================================

�ȳ��ϼ���.. ���� ��������ȸȭ�� �� ���׿��ݻ�ǰ�� ���ͷ� ��ȸ �ȵǴ°�... �����ƴ�����?  
430915 �Դϴ�. 
==============================================================================================================

- ���� ��� ���� 
IE 70 �̻󿡼� ������ �� 
L=document 
==============================================================================================================

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

�ۺ�������(CYINCM_varamtDet01_viw) 
* * * * 
�ۺ��׿���(CYINCM_varamtDet02_viw) 
* * * * 
�ۺ���Ʈ�÷�����(CYINCM_varamtDet03_viw)  --> ok 
* * * * 
��VUL����(CYINCM_varamtDet04_viw)  --> ok 
* * * *   
��VUL���� (*) 
* * * *   
==============================================================================================================

������������������� 2008.10.02(��) �۾� �����������������
----> 07:20 ~ 01:00  --> �ý�Ž(û��) 

- ���� Ȩ ������ Prj
1-1) �������� �ϰ� ����[�������>��������>������ ��ȸ/����>��������>�������� �������]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSend_ins.jsp  ======>   

2) ���۰�� Ȯ��/����[�������>��������>������ ��ȸ/����>��������>�������� �������]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSendOK_viw.jsp  ======> 

3) �����û[�������>��������>������ ��ȸ/����>��������>�������� �������] 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotalSendApprvAction 
CYCIRIIS_insuredPersonTotalSendApproval_view.jsp  ======>    
-------------------------------------------------------------------------------------------------------- 

- ���� ���� �ٿ�ε� ���� 
���� ����: jxl.read.biff.BiffException: The input file was not found 
����: 01_PersonTotSend.xls ���� ������ Ʋ���� ����(���̸����� ������ ��) 

- ���� ���� �ٿ�ε� ����2 
����: CYCIRIIS_insuredPersonTotSendDownAction.java ���Ͽ��� 
return SUCCESS;  --> return null;  �� ���ľ� �� 
1538 �忹�� * 7349782 282567 2007-12-26   3595005 2006-07-18   
Error 500: Error including path &#39;/WEB-INF/jsp/cm/common/tilesLayout/mainErrLayout.jsp&#39;. SRVE0199E: OutputStreamt t?U?  

- �������� ���� �ٿ�ε� 
frm.action = "/KBLCM/cy/CYCIRIIS_insuredXls.do"; 
CYCIRIIS_insuredPerson 
==============================================================================================================

- ���� Ȯ�� ȸ��(14:20 ~ 14:50): ���� PM(����), Ȳ���� ����, ����ȭ ����(�����ϴٰ� ȭ��: ����) 
1. ������� ������(�������): 18:00 
2. �ݵ����(���κ���):  19:00 ~ 
3. 10.3(��), 4(��), 5(��): ��� 
==============================================================================================================

������������������� 2008.10.03(��) �۾� �����������������
----> 08:50 ~ 22:40  --> ��õ��, ����� �μ��ΰ��� ��� 

- ���� Ȩ ������ Prj
 - �ݵ庯�� ����
- ����� �̳����� ���� 
MSG_CODE : PH0013E1 
>> Communication is null, TRS Communication settimg.( 10.33.3.17:2006 )CICSK5T1 
MESSAGE : ����� �̳����� �Դϴ� ó���� �� �����ϴ�. 
����: PM400UMCall���� ������ �� 
��ġ: �ٸ� Host�� ��û�ؾ� �� ������ ������ 

PM400UMCall pm400um = new PM400UMCall();  
pm400um.setPM400UM_I_INAG_INAG_NO(insuPolicyNum); //���ǹ�ȣ 
String msg = pm400um.callHost();   =========> ���� ���� �Ǵ� ���� 
==============================================================================================================

- ��������ȸ 
Ư���������Աݾ״���(��)���� 
���׿��� �� �������Ϲ���(������/10���̻�����������)���� ��ǰ 
�����ǰ����(02:���׿���, 04:VUL����, 06:���׿���II) 
==============================================================================================================

- �ݵ� ���� �б� 
- 01, 02, 03 05, 06, 07(CYINCM_varamtPension1_upd.jsp)  
�����ǰ����(01:��������, 02:���׿���, 03:����Ʈ�÷�����, 04:VUL����, 05:VUL����, 06:���׿���II, 07:��ȯVUL)  
cmdTag = (cmdTag.equals("06") ? "02" : cmdTag); // ���׿���II (06)�� ���� �ӽ� ��ġ  
cmdTag = (cmdTag.equals("07") ? "03" : cmdTag); // ��ȯVUL (07)�� ���� �ӽ� ��ġ 2006-03-03   
==============================================================================================================

������������������� 2008.10.04(��) �۾� �����������������
----> 08:10 ~ 23:00  --> ��� �ٹ�, ������� confirm �׽�Ʈ(����� �븮) 

- ���� Ȩ ������ Prj
- �������(�߰�����) 
(û������)(1:�߰�׺���,2:�߰�����): ���� ���ķ� �ϱ�� �� 
==============================================================================================================

- ����Ȯ�μ� �߱� 
<!--// �����߱�[�������>��������>������ ��ȸ/����>����Ϲݻ���] //--> 
<action name="CYCIRIIS_appJoinConfirm_prn" class="kblcm.cy.ci.ri.is.action.CYCIRIIS_appJoinConfirmAction"> 
<result>/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_appJoinConfirm_prn.jsp</result>  
<interceptor-ref name="cloginCheckStack" /> 
</action>   
http://localhost:8080/KBLCM/cy/CYCIRIIS_appJoinConfirm_viw.do 

- Xecure ���� 
HTTP Status 404 - /XecureObject/xecure_error.html 
==============================================================================================================

- �������� ���� �� ���系��  
http://localhost:8080/KBLCM/cy/CYCIRISP_insuredAltRslt.do 
==============================================================================================================

- ����û�� 
if (urlcode == "33") { //�����û �����Ȳ ��ȸ(����û��)  
url_link = "/cy/cyciriisTransferInserted.do?from=processSt";  //��������>�����û��>�������� ����â��> ���� ���� �Է� 
}  
http://localhost:8080/KBLCM/cy/cyciriisTransferReqSelected.do?q=7F000001189E00D88DE5B00C8D2B13097F28794BCB1EE5&charset=utf-8 
==============================================================================================================

- �� �ϴ� ������ ��ȣ Ŭ���� �ȵ�(�������� ����) 
PC ������ Ÿ�� ������ ������   
==============================================================================================================

������������������� 2008.10.05(��) �۾� �����������������
----> 08:50 ~ 21:00  --> �Ͽ� �ٹ�, �ݵ� confirm �׽�Ʈ(�輺�� ���, �̺��� ���), ���(�����:������ ���) 

- ���� Ȩ ������ Prj
- �� �ϴ� ������ ��ȣ Ŭ���� �ȵ�(�������� ����) 
IE 6.5 ���Ͽ��� ��Ÿ���� �Ʒ��� ���� �ҽ� ����(/common/paging.jsp) 
<a href="javascript:<c:out value="${param.scriptname}"/>('<c:out value="${pageNo}"/>');"><c:out value="${pageNo}"/></a>  ===> 
<a href="#none" onclick="<c:out value="${param.scriptname}"/>('<c:out value="${pageNo}"/>');"><c:out value="${pageNo}"/></a> 
==============================================================================================================

- Ư���������Աݾ״��� ���� ��ǰ(������ ��ȸ����) 
�����ǰ����(02:���׿���, 04:VUL����, 06:���׿���II) 

- ���ͷ���ȸ ���� ��ǰ 
�����ǰ����(02:���׿���, 06:���׿���II) 
--------------------------------------------------------------------------------------------------------- 
�����ǰ����(01:��������, 02:���׿���, 03:����Ʈ�÷�����, 04:VUL����, 05:VUL����, 06:���׿���II, 07:��ȯVUL)  
========================================================================================================= 

- �ɼǺ��� ���� ��ǰ�ڵ�  
if( prodCode.equals("1000423")  prodCode.equals("1000424")  prodCode.equals("1000435")  prodCode.equals("1000450")  prodCode.equals("1000451")  
 prodCode.equals("1000453")  prodCode.equals("1000482")  prodCode.equals("1000472")  prodCode.equals("1000479")  prodCode.equals("1000480")  
 prodCode.equals("1000483")  prodCode.equals("1000485")  prodCode.equals("1000491")  prodCode.equals("1000492")  
 prodCode.equals("1000378")  prodCode.equals("1000396")   
) {  //�ɼǺ��� ���� ��ǰ�ڵ� 
--------------------------------------------------------------------------------------------------------- 

- DCA ���� ����  ��ǰ�ڵ�  
if( prodCode.equals("1000450")  prodCode.equals("1000451")  prodCode.equals("1000479")  prodCode.equals("1000480")  prodCode.equals("1000485") 
 prodCode.equals("1000491")  prodCode.equals("1000492")  
 ((prodCode.equals("1000378")  prodCode.equals("1000396")) && CMStringUtil.parseInt(cypiicvi_varamtVO.getContractDate()) >= 20050930)  
) { //DCA ���� ����  ��ǰ�ڵ�  
==============================================================================================================

- ���׺��� ��ȸ(��ȸ���� 1���� �ֹι�ȣ: *) 
http://10.33.165.88:8080/KBLCM/cm/CMLCPC_DevLogin.do 
http://10.33.165.88:8080/KBLCM/cy/CYPIICVI_varamt.do 
==============================================================================================================

- ��Ʈ�� ��ġ�е� ��� ���� ��� 
Fn + F10 ���� 
==============================================================================================================

������������������� 2008.10.06(��) �۾� �����������������
----> 07:30 ~ 20:30  --> �ݵ� confirm �׽�Ʈ(�輺�� ���), ����, �츮��(����ȭ ����(ȭ����): 3��°) 

- ���� Ȩ ������ Prj
- �ݵ庯�� ����
���׺�����ȸ���� �Ʒ��� ���� ��ȸ�� �Ǵµ�... 
������� �Ǵ� �ִ� ����Ÿ�� �ź��迡���� �ڱ��������̶�� �մϴ�. 
Ȯ�� ��Ź�帳�ϴ�.   
- �α��� �ֹι�ȣ: * 
���ǹ�ȣ: 205127069976 
  
4 205127069976 ����米�����׿��ݺ��� ( �Ͻó� ) 200,000,000 2005.12 1 ���� 200,000,000   ===> �ڱ������� ��ǰ�̶�� ��  
205127069976  - �̰� �ڱ������� �ƴմϴ�  
���� �ݵ庯���Ѱ� ������... 
==============================================================================================================

- �������࿡�� �����û���� ��ũ ���� 
1. ��������, �߰�����(������ ���� ���) 
/KBLCM/cy/cyciriisInsuReqMain.do?depth_1_seq=1&depth_2_seq=3  
2. ����â�� 3�ܰ� 
/KBLCM/cy/cyciriisInsuReqMain.do?depth_1_seq=3&depth_2_seq=3 
==============================================================================================================

������������������� 2008.10.07(ȭ) �۾� �����������������
----> 06:30 ~ 22:20  --> �ݵ� confirm �׽�Ʈ(�輺�� ���), �ý�(����ȭ ����: �����뿪 -> ��ȭ��) 

- ���� Ȩ ������ Prj
- ���� ���� 
- ��ຯ���û ó�������� �������� ���� 
- ������ ȭ��(���̹� â��) 
http://203.233.85.71/KBLCM/cm/ad/admin_login.do 
==============================================================================================================

- ��ຯ���û(�������� ����/���) 
http://203.233.85.71/KBLCM/cy/ad/cyadcoraAppbusinessList.do 
==============================================================================================================

- �ݵ庯�� 
�ݵ庯�� ó�� ����, ���� ���� 
==============================================================================================================

������������������� 2008.10.08(��) �۾� �����������������
----> 08:30 ~ 23:00  --> ���� ����, ����(��������: ������� ��) 

- ���� Ȩ ������ Prj
- ������� ���� 
1. ������ 
�������߰��  --> ����������� --> �����������(���̹� â�� ������ ȭ��) 
2. �ǹ��� 
�������߰��  --> ����������(�������� ���������� �޴�): ����ó�� --> �����������(���̹� â�� ������ ȭ��)  
==============================================================================================================

- �������� ���� 
��û�Ͻ� �繫���� ������ �����Ǽ� �������  
2008.10.02  �߰����� 2008.10.02 1 �ݼ�    ===> �ݼ� �� ���� �� 
2008.10.02  �����Ͻñ�  2008.10.02 7 �ݼ�    ===> �ݼ� �� ���� �� 
2008.10.02 21:42 ����û��  2008.10.03 2 �ݼ�    ===> �ݼ� �� ���� �� 
==============================================================================================================

- 19�� ����(jsp�� ���� ��) 
http://10.33.3.19(wassvr/wassvr1)  
/kblcm/kblcmsys/KBLCM_war.ear/KBLCM.war/WEB-INF/jsp 
==============================================================================================================

- ����ӽ� ��ġ(VMware) 
Internet Explorer  6.0 ��ġ 
(IE 7.0�� ����Ʈ�� ��ġ �Ǿ� ������ IE 6.0 ��ġ �Ұ� -> ����ӽ� ��ġ�ؾ� ��) 
==============================================================================================================

// ���� Sync ��� ȣ�� 
if (fileupload_list.size() > 0) { 
//���� Sync�� ���ÿ����� ���� ���� ������ ���������� �ϵ��� ��.  
if(!isTestServer()) 
CMFileSyncUtil.doFileSync(config.getString("AttFile.Common.UploadPath"), "/cy/ug/co/gi/", fileupload_list); 
} 
==============================================================================================================

- �⺻ȣ��� ���� ���ϰ� ����(�����ֱⰡ �Ͻó��� ��) 
PM400UM_DCPA_PAY_FREQ_I: ������('99': �Ͻó�) 
==============================================================================================================

������������������� 2008.10.09(��) �۾� �����������������
----> 07:20 ~ 23:00  --> ���� ���� 

- ���� Ȩ ������ Prj
- Xecure ���̱� 
1. XecureSubmit() 
frm.action = "/KBLCM/cy/CYCIRISP_businessProcess.do";  
frm.method = "POST"; 
XecureSubmit(frm); 
//frm.submit(); 

2. XecureLink() 
<div style="text-align:right;margin-top:15px;">  
<a href="/KBLCM/cy/CYCIRISP_businessProcess.do?p_page=1" onClick="return XecureLink(this)";> 
<img src="/KBLCM/images/common/btn_list01.gif"/></a><!--//[��Ϻ���]//--> 
</div> 

3. XecureNavigate() 
boolean XecureNavigate( url, target, feature)  
url : �̵��� URL 
target : ��� ȭ���� ��µ� frame�� 
feature : ���ο� â�� ���� ����( â ũ�� ���) - �ɼ� 

<script language=javascript>  
XecureNavigate( ��/hello.jsp��, ��body�� ) ;  
</script> 
  
4. SubmitToTab, SubmitToLayer ���� XecureSubmit ���� ���   
submitToLayer({formId:frm.id, layerId:'layer1', width:'755', Xecure:'true'});   //Layer �ٿ�� 
submitToTab({formId:frm.id, tabGroup:'insuredAltTab', tabSeq:3, Xecure:'true'});  //TAB���� ������  
   
5. GNB ���� 
/KBLCM/WebContent/flash/common/menulink_cy.xml 
<depth code="15_211"> 
<title><![CDATA[����༱��]]></title> 
<url><![CDATA[/KBLCM/cy/CYCIRITC_selTrgCon.do]]></url> 
<fun_value>xecure</fun_value>  
<!-- <fun_value>0</fun_value> --> 
</depth> 

http://localhost:8080/KBLCM/cy/CYCIRITC_selTrgCon.do?q=7F000001189E005CC8BF2CDE3655F36C42BCB86660A07F&charset=utf-8 
==> /CYCIRITC_selTrgCon.do?q=7F0000....Ȯ��  
==============================================================================================================

1) jsp �������� <%@ page language="java" extends="xecure.servlet.jsp.XecureHttpJspPage" %> ����   ==> �ʼ� 
2) GNB���� ������ �ҽ� ����� �ؼ� �ش� �ҽ��� �����ϸ� ���� �ؾ��� 
<script type="text/javascript" src="/KBLCM/js/XecureObject/xecureweb.js"></script>  
<script language='javascript'>  
PrintObjectTag();  
</script>  
<form name='xecure'><input type=hidden name='p'></form>  
==============================================================================================================

- Xecure ���� 
���� ����: 1. HTTP Status 404 - /XecureObject/xecure_error.html 
2. �� ������ Ž���� ��ҵǾ����ϴ� 
����: XecureHttpJspPage.init : conf file [C:\Documents and Settings\Administrator\XecureConf\xecure_servlet.conf] 
����: ��ť� ����� �� ����( /CYCIRITC_selTrgCon.do?q=7F0000....q�� �� ������ ���� ���� ) 
==============================================================================================================

- ���� tab 
<div id="content"> 
<!-- TILES : CONTENT --> 
<!-- �� --> 
<ul class="lst_tab1" style="margin-top:20px;"> 
	<li Xecure="true" tabGroup="tab1" tabSeq="1" contentType="singleIframe" contentId="content1" contentSrc="/KBLCM/cy/
	CYCIRISP_notProcess.do" activeTab="true" class="lst_tab1_active" style="width:200px"> 
	<div id="tab1_subtitle_on"><span>ó������ ����</span></div> 
	</li> 
	<li Xecure="true" tabGroup="tab1" tabSeq="1" contentType="singleIframe" contentId="content1" contentSrc="/KBLCM/cy/
	CYCIRISP_notProcess.do" activeTab="false" style="width:200px"> 
	<div id="tab1_subtitle_off"><span>ó������ ����</span></div> 
	</li> 
	<li Xecure="true" tabGroup="tab1" tabSeq="2" contentType="singleIframe" contentId="content1" contentSrc="/KBLCM/cy/
	CYCIRISP_businessProcess.do" activeTab="true" class="lst_tab1_active" style="width:200px"> 
	<div id="tab2_subtitle_on"><span>�������� ����</span></div> 
	</li> 
	<li Xecure="true" tabGroup="tab1" tabSeq="2" contentType="singleIframe" contentId="content1" contentSrc="/KBLCM/cy/
	CYCIRISP_businessProcess.do" activeTab="false" style="width:200px"> 
	<div id="tab2_subtitle_off"><span>�������� ����</span></div>  
	</li> 
</ul> 
<div id="content1"></div>  
<!-- // TILES : CONTENT --> 
</div>  
==============================================================================================================

- ��ȣȭ(�ش� �κ��� ��ȣȭ ��) 
O Ŭ���̾�Ʈ������ ��ȣȭ�� xecureweb.js�� document.write(BlockDec(s) �� ȣ���� �Ǹ鼭 �ڵ����� ��ȣȭ�� �Ͼ��. 

<!---BEGIN_ENC---> 
<p align='center'><big><strong>��ȣȭ�� Ŭ���̾�Ʈ Request ��ȣȭ ����Դϴ�. </strong></big></p>�� 
<table border='1' width='100%'><tr> 
    <td width='17%'><strong>Decrypted QueryString :</strong></td> 
</table>�� 
<!---END_ENC--->  

kbl.cy.ci.CYCIRITC_selTrgCon_lst.go_CYCIRISP_notProcess(0, 22);  
CYCIRISP_notProcess  
cipher = document.XecureWeb.BlockEnc(xgate_addr, path, XecureEscape(qs),"GET");  
==============================================================================================================

- ���޺�����, ������� ���� ��ġ: �Ϸ� 
���޺� ���� ���濡�� "��û ���� ����" �ϸ� ����Ÿ �̻��ϰ� ���� 
==============================================================================================================

- ���(�μ�) ����(2��) 
<!--// 2.1. �����û�Ϸ�(���)[�������>��������>������ ��ȸ/����>����Ϲݻ�>�������� ��ǥ��� �� ��ǥ�� ����] //--> 
<action name="CYCIRIIS_represent_upd_print" class="kblcm.cy.ci.ri.is.action.CYCIRIIS_representAction"> 
<result name="print">/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_bossUpdPrint.jsp</result>  
<interceptor-ref name="cloginCheckStack" /> 
</action>  

<!--// �����߱�(���)[�������>��������>������ ��ȸ/����>����Ϲݻ���] //-->   
frm.action = "/KBLCM/cy/cyciricrAppJoinConfirm.do";  ===> ���� ��� 
<!-- <action name="CYCIRIIS_appJoinConfirm_prn" class="kblcm.cy.ci.ri.is.action.CYCIRIIS_appJoinConfirmAction"> 
<result>/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_appJoinConfirm_prn.jsp</result>  
<interceptor-ref name="cloginCheckStack" /> 
</action> --> 
==============================================================================================================

- �ݵ庯�� ���� ��ġ 
207084002644(*) ����� �̰� �ɼǼ����̶� �ݵ� ���� �����ϸ� ���� ó���� �ȵǿ� ..�� 
�׸��� 601107-2965532(208050004789) �и�� �� ���� �����ϸ� �ԷµǾ���ϴµ� �������� ����ȴٴ� �˾��߱���  
* �ϸ� ������  
*  
--------------------------------------------------------------------------------------------------------- 
- �������� ���� 
�ش� �ֹι�ȣ: *  
����������ȣ:204117052631  
PM112UM MSG_CODE : Z00100E1 
>> Communication is null, TRS Communication settimg.( 10.33.3.17:2006 )CICSK5T1 
MESSAGE : ���������� �����ϴ�. 
[/CYPIICVI_varamtServiceImpl.java]: �ݵ庯�� ���� ���� ���� :���������� �����ϴ� 
==============================================================================================================

- ��ť�� ����
==============================================================================================================

������������������� 2008.10.10(��) �۾� �����������������
----> 07:40 ~ 19:30  --> ���� ���� 

- ���� Ȩ ������ Prj
- Xecure ���̱� 
1. XecureSubmit() 
frm.action = "/KBLCM/cy/CYCIRISP_businessProcess.do";  
frm.method = "POST"; 
XecureSubmit(frm); 

2. XecureLink() 
<div style="text-align:right;margin-top:15px;">  
<a href="/KBLCM/cy/CYCIRISP_businessProcess.do?p_page=1" onClick="return XecureLink(this)";> 
<img src="/KBLCM/images/common/btn_list01.gif"/></a><!--//[��Ϻ���]//--> 
</div> 

- SubmitToTab, SubmitToLayer ���� XecureSubmit ���� ���   
submitToLayer({formId:frm.id, layerId:'layer1', width:'755', Xecure:'true'});  

submitToTab({formId:frm.id, tabGroup:'insuredAltTab', tabSeq:3, Xecure:'true'});  //TAB���� ������  
==============================================================================================================

- ������� ���� 
1. �������ں���(������) 
2. �������ں���(���޺�����/�������: ó���Ϸ� 
==============================================================================================================

- ������ ��ȸ 
������ȸ�� �ؼ�.. ��ȸ�Ⱓ�� 2008-4-10�� ~ 2008-10-09�Ϸ� �ϴϱ�..  
�����ʰ��� �������󱸿�.  ===> ���� 
==============================================================================================================

- �κ��� ��ġ(�α��� ���� ���, �ڵ� �α���): Robo Form 
http://www.download.com/1770-2001_4-0.html?query=roboform&tag=srch&searchtype=downloads 
==============================================================================================================

- �������� ���������󿡼� �״�� ���� 
//response.setHeader("Content-disposition", "filename=insured[" + EW00EW07.getHEAD_SECU_NUM() + "].csv"); 
==> response.setHeader("Content-disposition", "attachment; filename=insured[" + EW00EW07.getHEAD_SECU_NUM() + "].csv");  
==============================================================================================================

- ������ Ŭ�� ���� 
<body oncontextmenu="return false" ondragstart="return false" onselectstart="return false"> 
==============================================================================================================

������������������� 2008.10.11(��) �۾� �����������������
----> 06:10 ~ 23:00  --> ���� ���� 

- ���� Ȩ ������ Prj
- Xecure ���̱� 
/KBLCM/WebContent/flash/common/menulink_cy.xml 
==============================================================================================================

- Xecure 
import kblcm.common.util.xecure.XecureCertHelper; //Xecure 
import xecure.servlet.XecureServlet; //Xecure 

XecureCertHelper helper = new XecureCertHelper(ServletActionContext.getRequest(), 
ServletActionContext.getResponse());  
XecureServlet xservlet = helper.getXservlet();  
HttpServletRequest request = null;  
request = xservlet.request;  //Xecure request �ޱ� 
========================================================================================================= 

<!---BEGIN_ENC---> 
<input type="hidden" name="procType"> 
<input type="hidden" name="CUR_PAGE"> 
<input type="hidden" name="COM_IO_CUR_COUNT" value="<%=COM_IO_CUR_COUNT%>"> 
<!---END_ENC---> 
==============================================================================================================

- �ȯ�� ������(IP) 
������ : 203.233.85.11, 203.233.85.12 
was     : 10.33.2.1,   10.33.2.3 
DB : 10.33.1.102 
==============================================================================================================

- TEST DB ����(/KBLCM/WebContent/WEB-INF/conf/kblcm-property.xml) 
<jdbc> 
<driverClassName>com.ibm.db2.jcc.DB2Driver</driverClassName> 
<url>jdbc:db2://10.33.3.17:50000/KYOBOWWW</url>    
<username>devadmin</username> 
<password>devadm1</password> 
</jdbc>  
---------------------------------------------------------------------------------------- 

 - DB2 ���� 
IP: 10.33.3.17 �����ͺ��̽���: DEVADMIN 
ID/PWD: devadmin/devadm1 CATALOG TCPIP NODE: p570 
REMOTE: 10.33.3.17 SERVER PORT: 50000 
REMOTE_INSTANCE: inst01 OSTYPE AIX;   
CATALOG DATABASE KYOBOWWW AS WWW 
  AT NODE: renewde AUTHENTICATION: SERVER; 
==============================================================================================================

- ��ť�� ��ũ 
<a href="/KBLCM/cy/CYPIICVI_varamt.do" onClick="return XecureLink(this)";>[���׺�����ȸ/�ݵ庯������ �̵�]</a>  
- �Ϲ� ��ũ 
<a href="/KBLCM/cy/CYPIICVI_varamt.do">[���׺�����ȸ/�ݵ庯������ �̵�]</a> 
==============================================================================================================

������������������� 2008.10.12(��) �۾� �����������������
----> 07:20 ~ 02:00  --> ���� ����, ���� ��ĵ(������: �̰���) 

- ���� Ȩ ������ Prj
- Xecure ���̱�: �Ϸ� 
==============================================================================================================

1. �������� ��ȸ(CYCIRIIS_insuredPerson_lst.jsp) 
��ȸ���� ����(��ü/������/������ ���� ��ȸ �ȵ�): ó�� �Ϸ� 
2. ���޺�����/������� ���� �ȵ�: ó�� �Ϸ� 
3. ó������ ����: ó�� �Ϸ� 
4. �����û�� �����Ȳ ��ȸ(CYCIRISP_insuReqRslt_lst.jsp): ó�� �Ϸ� 
if (code == "31"  code == "32") { //�����û�� �����Ȳ ��ȸ(�����Ͻñ�, �߰�����)  
url_link = "/cy/CYCIRISP_insuReqRslt_lst.do"; 
} 
============================================================================================================== 

- /KBLCM/src/kblcm/cy/pi/ic/vi/action/CYPIICVI_varamtAction.java ���Ͽ���  
protected String service() throws Exception { 
if (cmd.equals("detail")  cmd.equals("detailupd")) {  //���׺��� ������ ����ȸ  
if (call.getMSG_CODE().equals("0000")) {   //host ��� ���� �̸� 
call.setVaramtOperOutValue(); 
cypiicvi_varamtVO = call.getCypiicvi_varamtVO();  
} 
} 
} 
---------------------------------------------------------------------------------------- 

- /KBLCM/src/kblcm/hostif/od/call/V2020803odCall.java ���Ͽ���(������ ��ȸ)   
public void setVaramtOperOutValue() {  //��°� ���� 
cypiicvi_varamtVO.setCancelRefundAmt_2(CMStringUtil.replace(VL115UM_S02_O_RETURN_PAYMENT,",","")); //�ؾ�ȯ�ޱ�2 
cypiicvi_varamtVO.setProvLoanAmt_2(CMStringUtil.replace(VL115UM_S02_O_LOAN_REMN_AMT,",","")); //��������2 

for (int i = 0; i < cnt; i++) { 
if (i == 0) 
preminumArrayList = new ArrayList();  
HashMap map = new HashMap(); 
map.put("payPeriod", VL115UM_S02_O_PAY_FREQ); 
}  
} 
==============================================================================================================

- �̿�ð� ��ȸ 
SELECT * FROM TB_CYCMD113 
- �̿�ð� ���� 
-- update TB_CYCMD113 set trgt_gb='U' 
where BIZ_GB = 'C'  
and PROG_STAT_GB = 'I' 
============================================================================================================== 

- ���α׷� ���� ��û(\\10.33.165.170\kyobo\05.�� ��Ȳ�ǿ\00. ��û����ó��\�����û��)  
1. ���̹�â��(����) 
������ ���� ��� 
/KBLCM/WebContent/js/cy/pi/ic/vi/fund.js 
  
�ͽ����� ���� ��� 
/KBLCM/src/kblcm/cy/pi/ic/vi/action/CYPIICVI_varamtAction.java 
/KBLCM/WebContent/WEB-INF/jsp/cy/pi/ic/vi/CYPIICVI_fund_mainViw.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/pi/ic/vi/CYPIICVI_varamtReserve_viw.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/pi/ic/vi/CYPIICVI_varamtEarnRt_viw.jsp  
/KBLCM/WebContent/WEB-INF/jsp/cy/pi/ic/vi/CYPIICVI_varamtPension_upd.jsp  
----------------------------------------------------------------------------------------  

2. ���̹�â��(���) 
������ ���� ��� 
/KBLCM/WebContent/js/service/cy/ci/CYCIRITC_selTrgCon_lst.js 

�ͽ����� ���� ��� 
/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_insuredPerson_lst.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_apprvlok_viw.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ci/ri/sp/CYCIRISP_main01.jsp  
/KBLCM/src/kblcm/cy/ci/ri/sp/action/CYCIRISP_main01Action.java  
  
/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_unpaidRetireMain.jsp 
============================================================================================================== 

2. ���̹�â��(���)  
������ ���� ��� 
/KBLCM/WebContent/js/service/cy/ci/CYCIRITC_selTrgCon_lst.js 
/KBLCM/WebContent/js/service/cy/ci/CYCIRISP_businessProcess_lst.js 

�ͽ����� ���� ��� 
/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_represent_upd.jsp  
/KBLCM/src/kblcm/cy/ci/ri/sp/action/CYCIRISP_insuReqRsltAction.java 
/KBLCM/src/kblcm/cy/ug/co/gi/action/CYCIRIIS_generalContractAction.java  
============================================================================================================== 

- ���α׷� ���� ��û 
/KBLCM/WebContent/js/service/cy/ci/CYCIRITC_selTrgCon_lst.js 

/KBLCM/WebContent/WEB-INF/jsp/cy/pi/ic/vi/CYPIICVI_fund_mainViw.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/pi/ic/vi/CYPIICVI_change_completion.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/pi/ic/vi/CYPIICVI_varamtReserve_viw.jsp  
/KBLCM/WebContent/WEB-INF/jsp/cy/ci/ri/sp/CYCIRISP_main01.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_insuredPerson_lst.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_insuredAltSelect_lst.jsp 
KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_unpaidRetireSelected_lst.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ci/CYCI_appIframe_wrk.jsp 
/KBLCM/src/kblcm/cy/ug/co/gi/action/CYCIRIIS_unpaidRetireSelectedAction.java 
/KBLCM/src/kblcm/cy/pi/ic/vi/action/CYPIICVI_varamtAction.java 
============================================================================================================== 

- �Ǽ���(11�� ����) ����� 
10.33.2.1(port:23) 
wassvr/wassvr19 
============================================================================================================== 

������������������� 2008.10.13(��) �۾� �����������������
----> 07:20 ~ 22:00  --> �������� Ȩ ����, ����(�̰���(4��°): ���� �簨(���ڷ�), �̾ƻ�Ÿ���:172�� ����) 

- ���� Ȩ ������ Prj
- �ݵ� ���� ����(CYPIICVI_varamtPension_upd.jsp) --> �ɼ� ���� ���� 
�輺��(*/471800) ==> kyb/a537443, */131313  
ȫ����(*/a537443) 
�����.. ���־�ϰ� ����ߴ�,,,�ݵ庯�� �Է���ҽÿ� �ɼǺ�����Ҵ� �Է¾ȵǴ°Ŷ�,, 
���̷̹����׺���/������ȯ��ǰ �ݵ庯���� �������°� ��ġ�Ǿ�����?? 
==============================================================================================================

- ���������Ȳ  ����ȸ(�����Ͻñ�) ���� 
����: CYCIRISP_insuReqRsltAction.java ������ ���� �������� 
==============================================================================================================

- û���� �Է°��(��â) ���� 
CYCIRISP_insuReqDetail_viw_pop.jsp ����(��ť�� ����) 
==============================================================================================================

- ���α׷� ���� ��û 
/KBLCM/WebContent/js/service/cy/ci/CYCIRISP_businessProcess_lst_su.js 

/KBLCM/WebContent/WEB-INF/jsp/cy/ci/ri/sp/CYCIRISP_main01.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/pi/ic/vi/CYPIICVI_varamtPension_upd.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/pi/ic/vi/CYPIICVI_varamtEarnRt_viw.jsp 
KBLCM/WebContent/WEB-INF/jsp/cy/pi/ic/vi/CYPIICVI_change_completion.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_insuredAltSelect_lst.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_unpaidRetireSelected_lst.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_insuredPerson_lst.jsp 
/KBLCM/src/kblcm/cy/ci/ri/sp/action/CYCIRISP_insuredAltRsltAction.java 
/KBLCM/src/kblcm/cy/ci/ri/sp/action/CYCIRISP_transferReqApprovalAction.java 
/KBLCM/src/kblcm/cy/ci/ri/sp/action/CYCIRISP_generalContractRsltAction.java 
/KBLCM/src/kblcm/cy/ci/ri/sp/action/CYCIRISP_unpaidRetireRsltAction.java 
/KBLCM/src/kblcm/cy/ci/ri/sp/action/CYCIRISP_userChangeRsltAction.java 
/KBLCM/src/kblcm/cy/ci/ri/sp/action/CYCIRISP_insuReqRsltAction.java  
----------------------------------------------------------------------------------------  
/KBLCM/src/kblcm/cy/pi/ic/vi/action/CYPIICVI_varamtAction.java 
/KBLCM/WebContent/WEB-INF/jsp/cy/pi/ic/vi/CYPIICVI_varamtEarnRt_viw.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/pi/ic/vi/CYPIICVI_varamtPension_upd.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ci/ri/sp/CYCIRISP_insuReqRslt_lst.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ci/ri/sp/CYCIRISP_insuReqDetail_viw_pop.jsp 
/KBLCM/src/kblcm/cy/ci/ri/sp/action/CYCIRISP_insuReqRsltAction.java   
==============================================================================================================

- Ȩ������ ������ ���� ���� �������� �ָ� �ٹ� 
1. �����  13:00 ���� ���  
(10/11��)  13:20 ~ 16:20 ���̱� ���� 
18:00 ~ 23:00 Application ����, ����ǥ �ۼ� �� ������ �Ͱ� 

2. �Ͽ���  09:00 ���� ��� 
(10/12��) 09:00 ~ 14:00  I/F  ���� 
14:00 ~ 23:00 �������� �� �����ġ 
24:00  ~        OPEN   

10/11(��) 00:00 ~ 10/12(��) 24:00���� Ȩ������ ������ ���Թݿ� �۾��� �����Ǿ�  ������, 
��������� �е��� 10/12(��) ���� 9:00���� ���� 14:00���� �� �ι��� �׽�Ʈ �����Դϴ�.  
==============================================================================================================

- Xecure �α��� ����(17�� �׽�Ʈ ����) 
�����ڵ�: -110 
��ȣ ���� ������ ��� �Ǿ����ϴ�. 
����: Xecure ��ġ ���� 
��ġ: �������� Xecure �ٽ� ��ġ  

- /KBLCM/WebContent/js/XecureObject/xecureweb.js ���Ͽ��� ���� 
//var xgate_addr = window.location.hostname + ":8881:8080"; 
==> var xgate_addr = window.location.hostname + ":8889:8080";  //TEST(���ÿ� ����) 
==============================================================================================================

������������������� 2008.10.14(ȭ) �۾� �����������������
----> 08:20 ~ 23:00  --> ���������� ����(�Ǽ������� ������ ���� ����ħ: ���� �ں��� role) 

- ���� Ȩ ������ Prj
- �ݵ� ���� ����(CYPIICVI_varamtPension_upd.jsp) --> �ɼ� ���� ���� 
�輺��(8508032784015/471800) ==> kyb/a537443, */131313  
ȫ����(*/a537443) 
�����.. ���־�ϰ� ����ߴ�,,,�ݵ庯�� �Է���ҽÿ� �ɼǺ�����Ҵ� �Է¾ȵǴ°Ŷ�,, 
���̷̹����׺���/������ȯ��ǰ �ݵ庯���� �������°� ��ġ�Ǿ�����?? 
---------------------------------------------------------------------------------------- 

* --> 17�� �������� ���� 
�⺻������ݵ�� ����ȵǴ°� �ݿ��Ȱ� �´µ���.. ������/�߰�������� �ݵ尡 ������ �ݵ� ���õǸ�..  
�ڵ����� �ɼǼ��õǾ��ִ� ���� ����Ǹ�ǰŵ��..  
==============================================================================================================

- ���������Ȳ���� �������� �μ� ��ư��  ����� ������ �Ⱥ��̰�� , ���������⵵ �������׿� 
: ó���Ϸ� 
==============================================================================================================

- ���α׷� ���� ��û 
/KBLCM/WebContent/js/service/cy/ci/CYCIRISP_businessProcess_lst_su.js 
 /KBLCM/WebContent/WEB-INF/jsp/cy/ci/ri/sp/CYCIRISP_businessProcess_lst.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ci/ri/sp/CYCIRISP_appUnpaidRetire_lst.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ci/ri/sp/CYCIRISP_insuredAltSelected_lst.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ci/ri/sp/CYCIRISP_transferReqApproval_lst.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ci/ri/sp/CYCIRISP_unpaidRetireSelected_lst.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/pi/ic/vi/CYPIICVI_varamtPension_upd.jsp 
/KBLCM/src/kblcm/cy/ci/ri/sp/action/CYCIRISP_insuReqDetailAction.java 
/KBLCM/src/kblcm/cy/ug/co/gi/action/CYCIRIIS_insuredPersonAction.java 
==============================================================================================================

������������������� 2008.10.15(��) �۾� �����������������
----> 07:20 ~ 19:00  --> ����ȭ ���� ö��(������ LCD �����), ����, ����(�̰���(5��°): �̾ƻ�Ÿ���:172�� ����) 

- ���� Ȩ ������ Prj
- �ݵ� ���� ����(CYPIICVI_varamtPension_upd.jsp)  
�ڵ������� ���õ� ��� ó��(*) 
1. �Ͻó� �̸� --> �������ݵ� �������� = �߰��ݵ� �������� 
2. �Ͻó� �ƴϸ� --> �������ݵ� �������� = �߰��ݵ� ��������, �������ݵ� �������� = �⺻�ݵ� �������� 

���� ����: 
PM105UM MSG_CODE : PH0011E1 
>> Communication is null, TRS Communication settimg.( 10.33.3.17:2006 )CICSK5T1 
MESSAGE : ���׺��� ���Լ����� OR �Ϲ���ȯ ������ �� �����ϴ�. 
��ġ: PMZZAFS_W00_PARAM.java ���� ����(Host ����ڿ��� ��û�ؼ� �ٽ� ����) 
==============================================================================================================

- KBLCMSysException ���� ó�� 
- /KBLCM/src/kblcm/cy/pi/ic/vi/service/CYPIICVI_varamtServiceImpl.java  ���Ͽ��� 
if (pm105um.getMSG_CODE().equals("PH0011E1")) { 
throw new KBLCMSysException(pm105um.getMSG_CODE());  //���� �޼��� ������ 
} else { 
throw new KBLCMSysException("CYM10001");   //���� �޼��� ������ 
} 
-------------------------------------------------------------------------------- 

- /KBLCM/msgMap/message/kblcm-msg-cy.xml ���Ͽ��� 
<!--==================// ci. �������(���¸�)  //==================--> 
<message id="CYM10001" type="error"><![CDATA[ 
�ݵ庯�� ����� ��� ���� �� ������ �߻��߽��ϴ�. 
]]></message>  
==============================================================================================================

- ���α׷� ���� ��û  ===> ���� ��û�� ��  
/KBLCM/msgMap/message/kblcm-msg-cy.xml  ===> ���� ��û�� �� 
/KBLCM/src/kblcm/cy/pi/ic/vi/action/CYPIICVI_varamtAction.java 
/KBLCM/src/kblcm/cy/pi/ic/vi/service/CYPIICVI_varamtServiceImpl.java  ===> ���� ��û�� �� 
/KBLCM/src/kblcm/hostif/us/commarea/PMZZAFS_W00_PARAM.java  ===> ���� ��û�� �� 
/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_insuredPerson_lst.jsp  ===> ���� ��û�� �� 
==============================================================================================================

- ���� Ȯ�� ȸ��(11:30 ~ 14:30): ������ ����(����), ����� �븮(����), Ȳ���� ����, �赿�� ���� 
1. �̰���� ó�� ��û(10.24(��)���� �Ϸ��ϱ�� ��) 
 1) �������� �ٿ�ε�(IE 6���� ���������� �������� �󿡼� �״�� ����) 
 2) �������� ������� 
 3) ó������ ����, �������� ����(��û���� ǥ��)  
    ���������� ������°� 2������ ���� 
2. �ݵ����(���κ���):  19:00 ~  
==============================================================================================================

- ���⹰ �۾� ����(17:00 ~ 17:50): SK ǰ�� ����� 
1. ���� ���⹰ �ۼ� 
==============================================================================================================

������������������� 2008.10.16(��) �۾� �����������������
----> 12:20 ~ 21:00  --> �ʰ� ���(Lee), C9 ������ ����(���� ��ȹ��) �Ѱ� PL�� �� 

- ���� Ȩ ������ Prj
- �ݵ� ���� ����(CYPIICVI_varamtPension_upd.jsp)  
�ڵ������� ���õ� ��� ó��(*): ó���Ϸ� 
==============================================================================================================

- ������ üũ�κ� ����(����ȭ ���� ����) 
/KBLCM/WebContent/js/cy/ug/co/gi/CYCIRIIS_indivReqRsltFormControl.js 
�׽�Ʈ�� 17��������  ������ Ȯ���� �׳�ó���ϴ� �ɷ� �ϸ� �˴ϴ�.  
if (frm.inspect_cd.value == "Y") {  
// ������ üũ�� ��ŵ�Ҳ��� ���� Ȯ�� 
//frm.ownercheck.value ="true";//TODO test server�����   ===> �Ǽ����� �ø����� �ּ�(//) �ޱ� 
if (frm.ownercheck.value == "false"  frm.ownercheck.value == "") { 
tmpVal = "\n������ Ȯ�ΰ�� : [" + document.form1.CKResult.value + "]�Դϴ�." 
   + "\n\n������üũ����� ������ �ƴϸ� �ӽ����常 �˴ϴ�." 
   + "\n\n������üũ�� Skip�ϰ� û������ ��� ������ �ӽ������Ͻðڽ��ϱ�?"; 
} 
} 
==============================================================================================================

- �ϰ�û�� 3�ܰ� ���� ���� �̰� ���(���÷��� ��û) 
/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_bundleReqSelect_lst.jsp 
/KBLCM/src/kblcm/hostif/od/call/EW10EWA2odCall.java 
/KBLCM/src/kblcm/hostif/od/commarea/EW10EWA2_PARAM.java 
==============================================================================================================

������������������� 2008.10.17(��) �۾� �����������������
----> 07:10 ~ 19:30  --> �ݵ� ���κ������� �̰�(����ȯ �̻�), �̰��� ȯ��ȸ(����, �뷡��, ����, ����(�̰���(6��°))) 

- ���� Ȩ ������ Prj
1-1) �������� �ϰ� ����[�������>��������>������ ��ȸ/����>��������>�������� �������]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSend_ins.jsp  ======>   

2) ���۰�� Ȯ��/����[�������>��������>������ ��ȸ/����>��������>�������� �������]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSendOK_viw.jsp  ======> 

3) �����û[�������>��������>������ ��ȸ/����>��������>�������� �������] 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotalSendApprvAction 
CYCIRIIS_insuredPersonTotalSendApproval_view.jsp  ======>    
==============================================================================================================

- ����û�� ������ üũ�κ�: �Ǽ����� ���� Ȯ�οϷ� 
- �ϰ�û�� 3�ܰ�: �Ǽ����� ���� Ȯ�οϷ� 
==============================================================================================================

- �ϰ�û�� 3�ܰ� ���� ���� �̰� ���(���÷��� ��û) 
/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_generalContract_viw.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_insuredPerson_lst.jsp 
==============================================================================================================

-  �׽�Ʈ ���� Ȯ��(/KBLCM/WebContent/WEB-INF/conf/kblcm-property.xml) 
<CommSvrGatewayURL>10.33.3.17</CommSvrGatewayURL> 
<CommSvrGatewayPORT>2006</CommSvrGatewayPORT> 
<CommSvrName>CICSK5RG</CommSvrName>    ==> K5�� Ȯ�� �� 
==============================================================================================================

- 5. ��������� �ٿ�ε尡 �ȵǰ� ��ȭ���� ������ ���(company_manual05.pdf) 
�� ����ȭ���� �� �� ��ǻ�͡��� �����Ų �� ������>�����ɼǡ� �޴��� ���� 
�� �����ɼ�>��������>Ȯ��� XLS ���� Ȱ��ȭ> ��޹�ư Ŭ�� 
�� �������� ���� â���� Open �� ���� ���ٿ�ε� �� ���� Ȯ�Ρ� üũ 

����: ������ ��ġ���� �ʴ� PC�� ȭ���� �� ������ ���� ������ ���� �ǵ��� ������ 
==============================================================================================================

- ���� ���⹰ �۾� 
\\10.33.165.170\kyobo\03.�����׽�Ʈ\88.����\���� ���� ���⹰ ������� 
----------------------------------------------------------------------------------------------- 

- JavaDoc ���� ���� 
�ڹٿ� ���� ��ħ��(����)��� ���ø� �˴ϴ�. �ڹٿ��� �����ϴ� ��� ��ü�鿡 ���� ������ ��� �ֽ��ϴ�. 
http://blog.naver.com/dreamy_alice/100051912790 
http://blog.naver.com/yeejuni?Redirect=Log&logNo=50026990860 
http://blog.naver.com/xkorn03?Redirect=Log&logNo=30034967599 
==============================================================================================================

������������������� 2008.10.18(��) �۾� �����������������
----> 12:30 ~ 16:00  --> ��� �ٹ� 

- ���� Ȩ ������ Prj
- ���� ���ε� ��û(/upload/uploadfile/common/cy/ci/ri/is) 
/kblcm/kblcmsys/AttFile/commonAttFile/cy/ci/ri/is 
/KBLCM/AttFile/commonAttFile/cy/ug/co/gi/00_Sample_Send.xls 
/KBLCM/AttFile/commonAttFile/cy/ug/co/gi/00_Sample_Send2.xls 
/KBLCM/AttFile/commonAttFile/cy/ug/co/gi/00_Sample_PersonTotSend.xls 
/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_bundleSend_ins.jsp 
==============================================================================================================

- �������� ����û��>���޿����� ����(CYCIRIIS_indivReqReserve_viw.jsp)  
/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_indivReqReserve_viw.jsp   
==============================================================================================================

������������������� 2008.10.20(��) �۾� �����������������
----> 07:10 ~ 19:00  --> �ĳ� �湮(����, �꽺, û��õ: �������), ����, ����(�̰���(7��°): �̾ƻ�Ÿ���:����) 

- ���� Ȩ ������ Prj
1-1) �������� �ϰ� ����[�������>��������>������ ��ȸ/����>��������>�������� �������]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSend_ins.jsp  ======>   

2) ���۰�� Ȯ��/����[�������>��������>������ ��ȸ/����>��������>�������� �������]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSendOK_viw.jsp  ======> 

3) �����û[�������>��������>������ ��ȸ/����>��������>�������� �������] 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendApprvAction 
CYCIRIIS_insuredPersonTotSendApprv_viw.jsp  ======>     
==============================================================================================================

(��)C9 �ż��� ����
==============================================================================================================

������������������� 2008.10.21(ȭ) �۾� �����������������
----> 12:40 ~ 22:00 

- ���� Ȩ ������ Prj
1-1) �������� �ϰ� ����[�������>��������>������ ��ȸ/����>��������>�������� �������]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSend_ins.jsp  ======>   

2) ���۰�� Ȯ��/����[�������>��������>������ ��ȸ/����>��������>�������� �������]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSendOK_viw.jsp  ======> 

3) �����û[�������>��������>������ ��ȸ/����>��������>�������� �������] 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendApprvAction 
CYCIRIIS_insuredPersonTotSendApprv_viw.jsp  ======>     

- 2�� ��� ���� ==> �����û(�����ܰ�� �̵�)�� ���� �߻� 
forwardPage = "approval_result"; ���� �̵��ϴ� CYCI_appIframe_wrk.jsp ���Ͽ� xecure ����(xecure ������ ��) 
<%//@ page language="java" extends="xecure.servlet.jsp.XecureHttpJspPage" %> 
==============================================================================================================

- �۾����� 
frm.proc_type.value = "P"; //�۾�����(P:�Է�(����, ����, ����), S:��ȸ) 
String ProcType = ut.getDefault(request.getParameter("procType"), "S"); 
==============================================================================================================

- ��ť�� ��Ʈ ������ ������ 
1. /KBLCM/WebContent/js/XecureObject/xecureweb.js ���Ͽ��� ���� 
//var xgate_addr = window.location.hostname + ":8881:8080"; 
==> var xgate_addr = window.location.hostname + ":8889:8080";  //TEST(���ÿ� ����) 
2. C:\DevEnv\Tools\XecureWeb\xecureweb_ver7\xgate\conf ���Ͽ��� 
directPort="443" ==>  directPort="8889"  
3. ��Ŭ���� Servers(���� Ŭ��) 
��Ʈ����(HTTP/1.1) ==> 8090 
http://localhost:8090/KBLCM/cm/CMLCCCCustomerViwAction.do 
==============================================================================================================

- �׽�Ʈ ���� �α� ���� ��� 
> 10.33.3.17(wassvr/wassvr17)  ==> Directory: /kblcm/kblcmsys/KBLCM_war.ear/KBLCM.war/WEB-INF/jsp 
> tlog 
==============================================================================================================

 - ���α׷� ���� ��û(�غ���) 
/KBLCM/src/conf/struts2/struts-cy-ci.xml 

/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_insuredPerson_lst.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ci/CYCI_appIframe_wrk_noX.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_insuredPersonTotSendApprv_viw.jsp 
/KBLCM/src/kblcm/cy/ug/co/gi/action/CYCIRIIS_insuredPersonTotSendAction.java 
/KBLCM/src/kblcm/cy/ug/co/gi/action/CYCIRIIS_insuredPersonTotSendApprvAction.java 
==============================================================================================================

 - ���α׷� ���� ��û 
/KBLCM/src/kblcm/cy/ci/ri/sp/action/CYCIRISP_insuReqRsltAction.java 
==============================================================================================================

������������������� 2008.10.22(��) �۾� �����������������
----> 07:10 ~ 18:40  --> ����(ȥ��) 

- ���� Ȩ ������ Prj
- JavaDoc ���� ���� 
�ڹٿ� ���� ��ħ��(����)��� ���ø� �˴ϴ�. �ڹٿ��� �����ϴ� ��� ��ü�鿡 ���� ������ ��� �ֽ��ϴ�. 
http://blog.naver.com/yeejuni?Redirect=Log&logNo=50026990860 
---------------------------------------------------------------------------------- 
- JavaDoc �ѱ� ���� 
-locale ko_KR 
-encoding UTF-8 
-charset UTF-8 
-docencoding UTF-8 
==============================================================================================================

- ���⹰ �۾� 
1. �������̽� ���(SI-20080305-DS-DEV-07) 
2. �������̽� ����(SI-20080305-DS-DEV-08) 
3. ���α׷� ���(SI-20080305-DS-DEV-11): ������ �ۼ� �Ǿ� ���� 
(SI-20080305-DS-DEV-15-���α׷����-���̹�â��(����)-ver.5.0.xls) 
4. ���α׷� ��缭(SI-20080305-DS-DEV-12) 
5. Source Code(App/Design)(SI-20080305-IM-DEV-01): ����(?) 
6. Source Code Comment (JavaDoc)(SI-20080305-VER-01): 80% �ϼ� 
7. Inspection ��ȹ �� �����(SI-20080305-VER-01) 
8. �䱸���� ���� ��Ʈ����(SI-20080305-REQM-01): ����(?) 
--------------------------------------------------------------------------------------- 
- EW10W156odCall.java ���Ͽ��� 
setLAW_TRANID("EW10"); 
setLAW_WORK_CODE("W156"); 
setLAW_PROGRAM_ID("ECW156OD"); 
PROGRAM_ID: ECW156OD TRAN_ID: EW10 WORK_CODE: W156   
==============================================================================================================

- ���¿� �ֹμ�(2008�ⰳ�αյ��� �����) 
���ڳ��ι�ȣ: 41360-1-1008-0437811 
�ݾ�: 4,530�� 
- ��꼼(����): ���α���: 2008.10.31 
�����ȣ ��  �� ��������� ������ȣ  
7406106 50105005 2008071 0029422 
�ݾ�: 741,980�� 
- ��Ģ��(�ڵ���) 
�������� 561-926-40044210 ���Ｚ�������� 
�ݾ�: 15,000�� 
���¿� �̸���: *@*.* 
==============================================================================================================

������������������� 2008.10.23(��) �۾� �����������������
----> 07:10 ~ 22:00   --> ���� ���÷��� ���(���� �ո�) 

- ���� Ȩ ������ Prj
- ���⹰ �۾� 
1. �������̽� ���(SI-20080305-DS-DEV-07): �Ϸ� 
2. �������̽� ����(SI-20080305-DS-DEV-08): �Ϸ� 
3. ���α׷� ���(SI-20080305-DS-DEV-11): ������ �ۼ� �Ǿ� ���� 
(SI-20080305-DS-DEV-15-���α׷����-���̹�â��(����)-ver.5.0.xls) 
4. ���α׷� ��缭(SI-20080305-DS-DEV-12) 
5. Source Code(App/Design)(SI-20080305-IM-DEV-01): ����(?) 
6. Source Code Comment (JavaDoc)(SI-20080305-VER-01): 80% �ϼ� 
7. Inspection ��ȹ �� �����(SI-20080305-VER-01) 
8. �䱸���� ���� ��Ʈ����(SI-20080305-REQM-01): ����(?)  
http://localhost:8090/KBLCM/images/common/btn_payment02.gif   ==> �����û �̹��� 
==============================================================================================================

- HOST ���� ���� ��û 
1. ECW140OD: ó�����ξ���(�����������) 
2. ECW141OD: ������������ȸ(������ ��ȸ/����>������������ȸ) 
3. ECW159OD: �������� ���� ���� �� ���系��(�������ξ���) 
4. ECW002OD: å���غ�� ��ȸ, ���(������ ��ȸ/����>å���غ��) 
5. ECW009OD: ��������޳��� �����ٿ�ε�(������ ��ȸ/����>��������޳���) 
==============================================================================================================

- CYCIRITC_selTrgConAction.java ���� ����(javaDoc ǥ�� �۾�) 
/** 
* 1. �� �� : ����������ȣ�� �ش��ϴ� ������� �����Ѵ�.(�ݵ�� �ϳ��� ���� �ؾ� ��)  
* ȣ��Ʈ �������̽� : EW00EW76odCall  
* ���� ���� : 

* 2. p_cmd���� ���� ������ �̵� ��� 
* print : ���ȭ������ �̵� 
* list  : ���ȭ������ �̵� 
* iframe: ó�����ȭ������ �̵� 

* 3. parameter 
* @param int cost   �ǸŴܰ� 
   * @param String productId   �ǸŻ�ǰ �ڵ� 
* @param errorVO �̿�ð����� ������ ��Ÿ���� value object 
* @return String ��Ȳ�� ���� msg code  �Ǵ� void 
  
* 4. ��Ÿ 
* @throws KBLCMSysException 
* @see com.kyobo.kblcm.cyber.ad.mo.vo.CYADMO_errorVO 

  * @author ���¸� 
  * @since jdk 131 
*/ 
----------------------------------------------------------------------------- 

/**<pre> 
* �� �� : ����������ȣ�� �ش��ϴ� ������� �����Ѵ�.(�ݵ�� �ϳ��� ���� �ؾ� ��)  

* @return void              
  * @throws KBLCMSysException  
*/  
protected String service() throws Exception { 
} 
==============================================================================================================

 - EW10EW11odCall.java ���� ���� 
 /*********************************************************  
  @���α׷���   : EW10EW11odCall.java 
  @TRIN ID      : EW10  
  @���α׷����� : ��������� ����û��(�����û��>�������� ����û��) 
  @�����Ͻ�     : 2008.10.09   
  @�����丮���� : 
      ������         ������       ���� 
   ------------------------------------------------------ 
      2008/09/06     ����ȭ       ������  
**********************************************************/ 
 
      ������      ������ �����ڸ�  ������ ����  
      2008/08/19  ���¸�         ������ 
**********************************************************/ 
==============================================================================================================

- VO.java ���� ���� 
/**<pre> 
* �� �� : �系�Ǹ� ����ڴ� ���系 �Ǹ� �η¡� ���α׷��� �̿��Ͽ� �޿�����  
                   ������ �系�Ǹ� ��ǰ�ڷḦ �Է��Ѵ�. 
* ó������(��ȸ/����/����/��Ÿ) : ��ȸ 

* @param int cost   �ǸŴܰ� 
* @param String productId   �ǸŻ�ǰ �ڵ� 
* @param errorVO �̿�ð����� ������ ��Ÿ���� value object 
* @return void 
* @throws KBLCMSysException 
* @see com.kyobo.kblcm.cyber.ad.mo.vo.CYADMO_errorVO 
*/ 
==============================================================================================================

- ������� ���� 
sh.put("annae_name", getChupsu(COM_O_SMSC_GB));  //�繫���� 
private String getChupsu(String code)  { 
 if (code.equals("55")) { 
    return "�������(�߰��)"; 
} 
} 
==============================================================================================================

������������������� 2008.10.24(��) �۾� �����������������
----> 08:00 ~ 18:00  --> ����(�λ絿 ��ó), ����(�̰���(8��°)): �̺� ������ �ο� 

- ���� Ȩ ������ Prj
- ���⹰ �۾� 
1. �������̽� ���(SI-20080305-DS-DEV-07): �Ϸ� 
2. �������̽� ����(SI-20080305-DS-DEV-08): �Ϸ� 
3. ���α׷� ���(SI-20080305-DS-DEV-11): ������ �ۼ� �Ǿ� ���� 
(SI-20080305-DS-DEV-15-���α׷����-���̹�â��(����)-ver.5.0.xls) 
4. ���α׷� ��缭(SI-20080305-DS-DEV-12) 
5. Source Code(App/Design)(SI-20080305-IM-DEV-01): ����(?) 
6. Source Code Comment (JavaDoc)(SI-20080305-VER-01): 80% �ϼ� 
7. Inspection ��ȹ �� �����(SI-20080305-VER-01) 
8. �䱸���� ���� ��Ʈ����(SI-20080305-REQM-01): ����(?)  
==============================================================================================================

- ���̹�â�� �̿�ȳ� 
�������_�������� ��ü��û(UI_CY_8565) 
������ û���ȳ� �˾�(��������)(UI_CY_8565_10) ==> �� 6�� 
  
- �̿�ȳ� GNB(/KBLCM/WebContent/flash/common/menulink_cy.xml) 
-���̹�â�� �̿�ȳ� 
-���� �̿�ȳ� 
-���� DEMO 
-������ û������ �ȳ�( --> ��ü���غ��� û�������ȳ�) 
<url><![CDATA[/KBLCM/cy/CYUGCOGI_acdtInsuRequestProcess.do]]></url>  
------------------------------------------------------------------------------------------------------ 

<!--// ug.co.gi �̿�ȳ�>�������>������ û�������ȳ� //--> 
<action name="CYUGCOGI_acdtInsuRequestProcess"> 
<result type="tiles">cy.CYUGCOGI_acdtInsuRequestProcess</result> 
</action> 
   
<!--// ug.co.gi �̿�ȳ�>�������>������ û�������ȳ� //--> 
<definition name="cy.CYUGCOGI_accdtInsuReqProcess" extends="cy.base_pi">  
	<put-attribute name="backgroundUrl" value="/KBLCM/images/common/background/bg_title.gif"></put-attribute> 
	<put-attribute name="titleImage" value="/KBLCM/images/service/cy/title_groupBohumProgress.gif"></put-attribute> 
	<put-attribute name="ScriptPath" value=""></put-attribute> 
	<put-attribute name="ScriptName" value=""></put-attribute>  
	<put-attribute name="content" value="/WEB-INF/jsp/cy/ug/co/gi/CYUGCOGI_acdtInsuRequestProcess_viw.jsp"></put-attribute>  
</definition>   
==============================================================================================================

- ���ο��� ���� �ȳ� ���� 
2008�� 12�� ����(���ο��� Ȩ���� �ڵ���ü ��û�� ��) 
���αݾ�(��): 89,100�� 
==============================================================================================================

- �ְ� ������(������ ���� ��õ �ֽ�) 
��������Ƽ��(036180)   ���簡 : 2,280�� 
==============================================================================================================

������������������� 2008.10.25(��) �۾� �����������������
----> 12:40 ~ 19:00  -->  ��� �ٹ� 

- ���� Ȩ ������ Prj
- ���⹰ �۾� 
1. �������̽� ���(SI-20080305-DS-DEV-07): �Ϸ� 
2. �������̽� ����(SI-20080305-DS-DEV-08): �Ϸ� 
3. ���α׷� ���(SI-20080305-DS-DEV-11): ������ �ۼ� �Ǿ� ���� 
(SI-20080305-DS-DEV-15-���α׷����-���̹�â��(����)-ver.5.0.xls) 
4. ���α׷� ��缭(SI-20080305-DS-DEV-12) 
5. Source Code(App/Design)(SI-20080305-IM-DEV-01): ����(?) 
6. Source Code Comment (JavaDoc)(SI-20080305-VER-01): 80% �ϼ� 
7. Inspection ��ȹ �� �����(SI-20080305-VER-01) 
8. �䱸���� ���� ��Ʈ����(SI-20080305-REQM-01): ����(?)  
==============================================================================================================

- �μ��ΰ� ���� �۾� 
���¸� �����μ��ΰ� ����.doc 
==============================================================================================================

-  ����PC ���� 
����PC ȸ�翡 ����(�Ŀ� �� ����(�������� ��� ����): �̽¹ξ����� ���� �Ƿ�): �Ŀ����� 
����������ġ ����(12,000��)�Ͽ� ���� ��ü -> �����(�̰���) 
==============================================================================================================

- ���⺻���׺��� ����(���� �İ� ���� �� ���� �̹��� �Ⱥ��̰� ����) 
/KBLCM/WebContent/WEB-INF/jsp/cy/ci/ri/is/CYCIRIIS_generalContract_upd.jsp 
/KBLCM/src/kblcm/cy/ci/ri/is/action/CYCIRIIS_generalContractChAction.java 
==============================================================================================================

������������������� 2008.10.27(��) �۾� �����������������
----> 06:50 ~ 22:40 

- ���� Ȩ ������ Prj
- ���⹰ �۾� 
1. �������̽� ���(SI-20080305-DS-DEV-07): �Ϸ� 
2. �������̽� ����(SI-20080305-DS-DEV-08): �Ϸ� 
3. ���α׷� ���(SI-20080305-DS-DEV-11): ������ �ۼ� �Ǿ� ���� 
(SI-20080305-DS-DEV-15-���α׷����-���̹�â��(����)-ver.5.0.xls) 
4. ���α׷� ��缭(SI-20080305-DS-DEV-12) 
5. Source Code(App/Design)(SI-20080305-IM-DEV-01): ����(?) 
6. Source Code Comment (JavaDoc)(SI-20080305-VER-01): 80% �ϼ� 
7. Inspection ��ȹ �� �����(SI-20080305-VER-01) 
8. �䱸���� ���� ��Ʈ����(SI-20080305-REQM-01): ����(?) 
==============================================================================================================

-  pdf ���� ���ε� ���� 
<div class="MT10 MR05" style="float:left;width:105px;"> 
<a href="/KBLCM/pdf/cy/ug/co/gi/insuReq_Paper.pdf" target="_new"> 
<img src="/KBLCM/images/service/cy/btn_desk_01.gif" align="absmiddle"/></a> <!-- ������ û���� --> 
</div> 
<div class="MT10" style="width:110px;"> 
<a href="/KBLCM/pdf/cy/ug/co/gi/acdtInsuReqPaper_Intro.pdf" target="_new"> 
<img src="/KBLCM/images/service/cy/btn_desk_02.gif" align="absmiddle"/></a> <!-- ������ û������ �ȳ� -->   
</div>  
==============================================================================================================

- mainLayout.jsp ���� ����(jpg -> flash) 
<put-attribute name="backgroundUrl" value="/KBLCM/flash/common/sub_visual_cy.swf"></put-attribute> 
/KBLCM/WebContent/WEB-INF/jsp/cy/tiles/tilesLayout/mainLayout.jsp 
==============================================================================================================

- Action.java ���� ���� 
�ּ� ���� 
==============================================================================================================

- IE6 ���� ȭ���� �̻��ϰ� ���̴� �� ���� 
����: Tab ���� �� �������� ��ũ��Ʈ�� ��� 
/KBLCM/WebContent/WEB-INF/jsp/cy/ci/ri/is/CYCIRIIS_main01.jsp   
==============================================================================================================

- �����������(��) �̷¼� ����: *@*.* 
��ȭ ��(�Ｚ����, ��Ʈ������ ���� ���� ��û) 
==============================================================================================================

������������������� 2008.10.28(ȭ) �۾� �����������������
----> 07:00 ~ 22:30 

- ���� Ȩ ������ Prj
- ���⹰ �۾� 
1. �������̽� ���(SI-20080305-DS-DEV-07): �Ϸ� 
2. �������̽� ����(SI-20080305-DS-DEV-08): �Ϸ� 
3. ���α׷� ���(SI-20080305-DS-DEV-11): �Ϸ�(��������κ� ����) 
(SI-20080305-DS-DEV-15-���α׷����-���̹�â��(����)-ver.5.0.xls) 
4. ���α׷� ��缭(SI-20080305-DS-DEV-12) 
5. Source Code(App/Design)(SI-20080305-IM-DEV-01): ����(?) 
6. Source Code Comment (JavaDoc)(SI-20080305-VER-01): �Ϸ� 
7. Inspection ��ȹ �� �����(SI-20080305-VER-01) 
8. �䱸���� ���� ��Ʈ����(SI-20080305-REQM-01): ����(?) 
==============================================================================================================

 - ���α׷� ���� ��û(�غ���) 
/KBLCM/src/conf/struts2/struts-cy.xml 
/KBLCM/src/conf/struts2/struts-cy-ci.xml 
/KBLCM/WebContent/WEB-INF/conf/context/cyContext.xml 
  
/KBLCM/src/kblcm/cy/ad/cy/cs/service/CYADCYCS_csServiceImpl.java --> ���� 
/KBLCM/src/kblcm/cy/ad/cy/ra/service/CYADCYRA_accidentServiceImpl.java --> ���� 
==============================================================================================================

 - �̿�ð� ���� 
"������ �ش� ������ �̿�ð��� �ƴմϴ�." 
��ȸ���� : 365�� 24�ð� ��ȸ ����  
ó������ : 08:00 ~ 22:00  
����: ���� �����ڿ��� �̿�ð��� �����ؾ� �� 
http://10.33.3.17/KBLCM/cm/ad/admin_title.do ==> Ȩ������ ���� -> �̿�ð����� -> ����������� 
��ȸ(R) ����(N) 00:00:00 23:59:00 ���  ===> ����: �Ͻ����� ->������� ���� 
==============================================================================================================

 - ����༱���� �ߴ��� ����üũ 
 1. CYCIRISP_main01Action.java ���Ͽ��� 
 //1.��ȸ(R),�����(I)    2.����(01),�������(02)  3.���ϴ� cmd   
String redirect = isUsePossible(request,"R","01","checkNoOk");   //����༱���� �ߴ��� ����üũ 
(���ð� ���ÿ� ��ȸ�� ���� �ؾ� ��)   

if(redirect != null) //����༱�� �� ������ 
{ 
return redirect; 

} else if(p_secu_num.trim().length()==0 && PolicyNo.length()==0){ //���ǹ�ȣ�� ������   ===> �߰� 
request.getSession().setAttribute("_SEL_CON_NEXT_URL_KEY_", request.getRequestURI() + "?" + request.getQueryString()); 
redirect = "ir_con_sel_redirect"; 
return redirect; 
} else { 
//===> ���� 
} 
 2. CYCIRIIS_main01Action.java ���Ͽ��� 
String redirect = isUsePossible(request, "I","01","");  //����༱���� �ߴ��� ����üũ 
if(redirect != null) //����༱�� �� ������ 
{ 
return redirect;  
} else { 
//===> ���� 
} 
==============================================================================================================

- ��������(��) �̷¼� ����: *@*.* 
==============================================================================================================

������������������� 2008.10.29(��) �۾� �����������������
----> 07:00 ~ 18:00   --> ��Ʈ������ Prj ����(SK ������ ����), ���� Ȳ���� ������ �� 

- ���� Ȩ ������ Prj
- ���⹰ �۾� 
1. �������̽� ���(SI-20080305-DS-DEV-07): �Ϸ� 
2. �������̽� ����(SI-20080305-DS-DEV-08): �Ϸ� 
3. ���α׷� ���(SI-20080305-DS-DEV-11): ������ 
(SI-20080305-DS-DEV-15-���α׷����-���̹�â��(����)-ver.5.0.xls) 
4. ���α׷� ��缭(SI-20080305-DS-DEV-12):  �Ϸ�(JavaDoc ���� ��ü) 
5. Source Code Comment (JavaDoc)(SI-20080305-VER-01): �Ϸ� 
6. Inspection ��ȹ �� �����(SI-20080305-VER-01) : ����� �ۼ� �ؾ� �� 
7. �䱸���� ���� ��Ʈ����(SI-20080305-REQM-01): ���� 
==============================================================================================================

- ���α׷� ��� ���� �۾�: ������ 
01. ���� ���α׷� ���(���̹�â��_�������).xls 
==============================================================================================================

- �̿�ð� ����(/KBLCM/src/kblcm/cy/util/CY_commonUtil.java ���Ͽ� 68��° ��) 
/**<pre> * �̿�ð� üũ : ���� �̿�ð����� �ƴ����� üũ�Ѵ�. **/ 
public static boolean checkUseTime(String accessType, String serviceType) throws KBLCMSysException { 
CYADMO_errorVO errorVO = getUseTime(accessType, serviceType); 
String sTime = errorVO.getStartTime().substring(0, 2) + errorVO.getStartTime().substring(3, 5)  
+ errorVO.getStartTime().substring(6, 8); 
} 
==============================================================================================================

- ��Ʈ���������� NFSS ������Ʈ  
- �ι� : �踮 ��������  
- �Ⱓ : 2008.11 ~ 2009.09  
SK C&C ������� ������ ����(���¿� ���� ��õ) 
��� : ������ 8���ⱸ ��������(��Ʈ���������� ����) 3�� 
�ִ��� ���� ���� ��û�ϸ� �ϰ� �ĵ� �����մϴ�.  
��� �� ��ȭ���� ���ֱ� �ٶ��ϴ�. (*) 
�踮[ͪ��]: ����Ͽ� ������    
==============================================================================================================

- 1. ������(���Ÿ), ��Ʈ�� ��������(3M), ü���� 
==============================================================================================================

������������������� 2008.10.30(��) �۾� �����������������
----> 07:00 ~ 22:00  --> ���� ���缺 PM�� �� 

- ���� Ȩ ������ Prj
- ���⹰ �۾� 
1. �������̽� ���(SI-20080305-DS-DEV-07): �Ϸ� 
2. �������̽� ����(SI-20080305-DS-DEV-08): �Ϸ� 
3. ���α׷� ���(SI-20080305-DS-DEV-11): �Ϸ� 
(SI-20080305-DS-DEV-15-���α׷����-���̹�â��(����)-ver.5.0.xls) 
4. ���α׷� ��缭(SI-20080305-DS-DEV-12):  �Ϸ�(JavaDoc ���� ��ü) 
5. Source Code Comment (JavaDoc)(SI-20080305-VER-01): �Ϸ� 
6. Inspection ��ȹ �� �����(SI-20080305-VER-01) : ����� �ۼ� �ؾ� �� 
7. �䱸���� ���� ��Ʈ����(SI-20080305-REQM-01): ���� 
==============================================================================================================

- �����ڵ� Ȯ�� 
11�� 01�Ϻ��� 2�ڸ����� 3�ڸ��� �ٲ�  ===> Host ����� ��(�ҽ��ڵ� ����) 
/CYCIRIIS_depositorRslt_viw.jsp, /CYCIRIIS_depositorAction.java(���� Ȯ��)  
==============================================================================================================

- �������� ������� ����   
���������  û������(1:����, 2:�߰�����)�� ������� HOST DB���� �ֹι�ȣ, �̸����� ��ȸ�Ͽ� ����Ÿ�� 
�����ϸ� �̹� ��û �� �ڷ� ó����(���ǹ�ȣ: 0000739, ��Ʈ�����༭������) 
==============================================================================================================

- �μ��ΰ�(�Ϸ�) 
�μ���: ������ �븮(SM) 
���¸� �����μ��ΰ� ����.doc 
==============================================================================================================

- ���̾ �˾����� ����(�������� �˾����� �Ǿ� ����)  
������� �Է�: CYCIRIIS_generalContract_upd.jsp 
������ üũ(�˾�): CYCIRIIS_depositor_pop.jsp 
���� Ȯ��(�˾�): CYCIRIIS_depositorRslt_viw.jsp 
==============================================================================================================

- ���α׷� ���� ��û 
�ͽ����� ���� ��� 
/KBLCM/src/kblcm/cy/ci/ri/is/action/CYCIRIIS_insuredPersonTotSendMainAction.java 
/KBLCM/src/kblcm/cy/ci/ri/is/action/CYCIRIIS_insuredPersonTotSendAction.java 
/KBLCM/src/kblcm/cy/ci/ri/is/action/CYCIRIIS_insuredPersonTotSendApprvAction.java 
/KBLCM/src/kblcm/cy/ci/ri/is/action/CYCIRIIS_insuredPersonTotSendDownAction.java 

/WEB-INF/jsp/cy/ci/ri/is/CYCIRIIS_insuredPerson_lst.jsp   ===> ���� ��û�� �� 
/WEB-INF/jsp/cy/ci/ri/is/CYCIRIIS_insuredPersonTotSendMain.jsp 
/WEB-INF/jsp/cy/ci/ri/is/CYCIRIIS_insuredPersonTotSend_ins.jsp 
/WEB-INF/jsp/cy/ci/ri/is/CYCIRIIS_insuredPersonTotSendOK_viw.jsp 
/WEB-INF/jsp/cy/ci/ri/is/CYCIRIIS_insuredPersonTotSendApprv_viw.jsp 
/WEB-INF/jsp/cy/ci/CYCI_appIframe_wrk_noX.jsp 
==============================================================================================================

- ������ ����(*) -> ���缺PM �Ұ�, �̷¼� ����: *@*.* 
==============================================================================================================

������������������� 2008.10.31(��) �۾� �����������������
----> 06:50 ~ 18:00  --> ����(����), �̰��� ����(�������� ��),  ����(�̰���(9��°): �̾ƻ�Ÿ��� 

- ���� Ȩ ������ Prj
- ���⹰ �۾� ���� �Ϸ�(����)
==============================================================================================================

- �������� û���� ���� 
1. �������� û���� ���������� �ǰ� ���� 
2. ���� �߸��ϰ� �ְų�, �� �������� Ư���Ѱ� ������ ��Ȯ�� ��Ȳ�� �������� �ذ� ������ ������ ���� 
(���� ������ ������ ȭ�� ��� ���, ������ ���� ȭ�� ĸ�� �߼� �����ְų� �� ���� ���) 
3. ���� Ư�� ���̽� �ΰ� ������ ������ �ϴµ����� �ش� ���� PC ���������ؼ� �����߻��ϴ� �κ� ���ڵ� 
�ش޶�� �ؼ� �м��ϼ���. (PC ���, ��������, ������ ����) 
��ġ ����: MS �ͽ��÷η� 7.0 ��ġ �� �ٽ� ó�� 
==============================================================================================================

- Ư������ üũ 
/KBLCM/WebContent/WEB-INF/jsp/sv/op/SVOP_opinion_ins.jsp 
/KBLCM/WebContent/js/service/sv/op/SVOP_opinion.js 
do_insert: function() {  //���� �Ҹ� ���   
if (frm.qstTtl.value == "") { 
alert("�ʼ��׸��Դϴ�.\n������ �Է��Ͻʽÿ�."); 
frm.qstTtl.focus(); 
return; 
} else if(inputCheckSpecial(frm.qstTtl.value)){ //Ư������ üũ(����) 
alert("Ư�����ڴ� �Է��ϽǼ� �����ϴ�."); 
frm.qstTtl.focus(); 
return; 
} 
}(); 

function inputCheckSpecial(validate_data) { // Ư������ üũ �Լ� 
	//alert("[] [inputCheckSpecial()] [validate_data]"+ validate_data); 
	var nonchar = '~`!@#$%^&*()=+\<>?,./;:"';  //Ư������ 

	var i ; 
	for ( i=0; i < validate_data.length; i++ )  { 
	if( nonchar.indexOf(validate_data.substring(i,i+1)) > 0) {  //Ư�����ڰ� �����ϸ� 
	return true; 
	} 
	}  
	return false;   
}   
==============================================================================================================
     
- 10�� ������Ǽ� ����(����) 
�ѱݾ�: 179,420�� 
==============================================================================================================

- ������ ���� ���� 
(��)3rdinfo (*) ==> (�Ｚȭ�� 5���̼� 7���� 470) 
��Ʈ���������� NFSS ������Ʈ���� ��ȭ �� ����  ==> �Ｚȭ��� ����� Ȯ��(�ڰ�� �븮) 
==============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������