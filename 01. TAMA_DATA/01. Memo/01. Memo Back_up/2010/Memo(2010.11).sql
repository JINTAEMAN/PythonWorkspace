

�����������������������������������������������������������
+---------------------------------------------// Memo(2010.11) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2010.11.01(��) �۾� �����������������
---> 07:00 ~ 18:30

- �����ػ� SM
- P20101029-0025[��⺸������ ����] ���� �Ϸ�
- ������(1:1 ������ ���) ����(�躴��(/307576/HDMF) ���� ==> ������(/305642/HDMF) ����)
http://thome.hi.co.kr/amends/counsel/expert/amendsoneconselSelectView.jsp 
1. 1:1 ���������: http://thome.hi.co.kr/amends/counsel/expert/amendsoneconselWriteView.jsp?cate=5
2. ����� ����: /hi/amends/servlet/OnetoOneWriteServlet.java
3. �߰��̹���: /images/newimages/service/img_counsel15.jpg  ===> �̹��� ���� ������ ����� ��
4. Ȩ������ ������ ���� ����
 ��) ������ �˻�: http://homeadmin.hi.co.kr/manager/management/search_admin.jsp
 ��) ������ ���: http://homeadmin.hi.co.kr/manager/management/add_admin.jsp
 ��) ������ ���� ����: http://homeadmin.hi.co.kr/servlet/hi.manager.admin.servlet.ModAdmin_Inf?id=305642&keyfield=2&key=305642&issearch=1
 - Ȩ������ --> ������(����������)(1074 )
5. ���籤 ���� ���� ��û �۾�: /hi/cybercenter/motor/dao/CarSignMgr.java
==============================================================================================================

- ������ ����(���� ó��: DB ���̺� �߰�, ��� ������ ���̺� �ʿ�)
/amends/counsel/expert/amendsoneconselWriteView.jsp
/hi/amends/servlet/OnetoOneWriteServlet.java, /hi/amends/dao/OnetoOneMgr.java

/onetoone_list.jsp ���Ͽ���
<%@ include file= "/manager/home/counsel/conselorArray.jsp" %>   <!--// include file ����  ///-->
/conselorArray.jsp ���Ͽ���
<%!
public String[] getGroupArray() {  // 1:1 ��������� ���� �Լ�()
	String[] strGrupArr = new String[7];
	strGrupArr[0] = "������";
	strGrupArr[1] = "�ο��";
	strGrupArr[2] = "������";
	strGrupArr[3] = "�̱⼮";
	strGrupArr[4] = "������";
	strGrupArr[5] = "�����";
	strGrupArr[6] = "����ȯ";
	
	return strGrupArr;
}

	String[] strGrupArr;
	strGrupArr = getGroupArray();
%>

	<select name="select_cate"> 
		<option value="A">�� ü</option>
	<%	for(int i = 1; i<= strGrupArr.length; i++) {		%>
		<option value="<%=i%>" <%=strCate.equals("1") ? " selected" : "" %>><%=strGrupArr[i-1]%></option>
	<%	}	%>
	</select>
==============================================================================================================

- P20101022-0010[��⺸�� ������ȸ ���μ��� ����] 
1. �������(����/�������� --> �������)
 ��) �������(����): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView.jsp)
 ��) ó������(����): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView02.jsp)
 ��) ����� û������ ���� �ȳ�(����): (http://thome.hi.co.kr/amends/damage/care/DirectOneDetailView.jsp)

2. �������� Ȯ��(����/�������� --> �������)
 ��) �������� ��ȸ(�ű�): (http://thome.hi.co.kr/amends/damage/care/ViewAccidentList.jsp, tabView_Detail.jsp) 
 ��) �������� �� ��ȸ(�ű�): (http://thome.hi.co.kr/amends/damage/care/ViewAccident.jsp)
 ��) ���񼭷�����(����): (http://thome.hi.co.kr/amends/damage/care/accident_take_process_17.jsp)
 ��) ���񼭷�����(��â)(����): (http://thome.hi.co.kr/amends/damage/care/accident_take_process_17_popup.jsp)
 ��) ���� ���ε� �Լ�(�ű�): 
  - /amends/common/Progress.java, ErrorManager.java, HIUploadException.java
 ��) �������� ��ȸ(����):  /hi/amends/dao/JubsuMgr.java

3. ������ ��� ����
 ��) ��⺸�� ������� ��ȸ(������) (����): (http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.JubsuList)
   - /manager/home/care/ViewAccidentList.jsp  ==> �߰����� ������Ʈ(IMGUPLOAD_UP_DT)�ʵ� �߰�
 ��) ��⺸�� ������� �����ٿ�ε�(������) (����):(http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.Jubsu)
   - /manager/home/care/ViewAccidentList_excel.jsp
 ��) /manager/home/care/servlet/JubsuList.java, /dao/JubsuAdminMgr.java
==============================================================================================================
 					 
������������������� 2010.11.02(ȭ) �۾� �������������������  
---> 07:00 ~ 18:30   --> �ְ����� �ۼ�

- �����ػ� SM
- P20101029-0025[��⺸������ ����] �߰� ���� ��û 
1. 1:1 ���� ��� ����Ʈ: /manager/home/counsel/onetoone_list.jsp
2. 1:1 ���� ��� �� ��ȸ: /manager/home/counsel/onetoone_view.jsp 
3. ERMS �����: http://tmgr.hi.co.kr/manager/home/counsel/onetoone_erms.jsp
4. 1:1 ��������� ���� include file ����: /manager/home/counsel/conselorArray.jsp
==============================================================================================================

 - ���� ���� ���� ����(�����ػ� ������ŷ ��� ���� ����)
1. /hi/blog/dao/BlogCommunityMgr.java ���Ͽ���
sbQuery.append(" content = '"+(RHanguel.toHanguel(decode(box.getString("k2cody_src"))).replaceAll("'", "").replaceAll("\"", ""))+"' ");

- XSS(Cross Site Scripting) ��༺ ����(/shop/lifeinkorea/free_write.jsp )
test<script>alert("[test]");</sctipt>  ==> test&lt;script&gt;alert(&quot;[test]&quot;);&lt;/sctipt&gt;
='1' onerror='alert("123");'>  <<>>
������:	http://thome.hi.co.kr/amends/case/amends/amendsknowView01.jsp
�Ƿ�:		http://thome.hi.co.kr/amends/case/law/amendsknowView03.jsp

2. /amends/case/amends/amendsknowView01.jsp ���Ͽ���
String searchWord = (CommonUtil.getParameter(request, "searchWord", "")== null)? "": CommonUtil.getParameter(request, "searchWord", "");
searchWord = searchWord.replaceAll(">","&gt;");	 //XSS ��༺ ����(Ư�� ���� ġȯ) 
searchWord = searchWord.replaceAll(">","&gt;");; 

<script language='javascript'>
<!-- 
function search() {
	document.frmSearch.searchWord.value = XSSEncode( document.frmSearch.searchWord.value);  //XSS ��༺ ���� �Լ� ȣ��
}

function XSSEncode(text){  //XSS ��༺ ���� �Լ�(Ư�� ���� ġȯ) 
	if ( !text )
		return '' ; 
	text = text.replace( /&/g, '&amp;' ) ;
	text = text.replace( /</g, '&lt;' ) ;
	text = text.replace( />/g, '&gt;' ) ;
	//alert("[/Base.js] [XSSEncode()] [text]" + text);
	
	return text ;
} 
//-->
</script> 							  
==============================================================================================================

- DB ���̺� �߰�, ���� ��û ����
1. 1.44.�𵨺����û��.xll �ۼ�
2. HD��Ÿ�ý���(http://meta.hi-portal.co.kr)���� DA(�����;�Ű����) > Non-CIS �� > �𵨰��� ȭ�鿡�� 
 - DB��: ����RAC1 �ý��۸�: Ȩ������, �������(B2B), ���̺�����: SAGO_JUBSU --> �˻�(Ŭ��) ==> 
    ���̺�� Ȯ��
3. PMS ��û�� ��Ȳ --> ��û�� --> �űԵ�� --> ��û�����(ȭ��)
 - ������ġ: NON_CIS, ��û������: �𵨺����û��(HI-DC), ��û������: ������ ���� ���̺� ����, 
    ���ñٰ�: ��ȸ(Ŭ��) --> SDLC ��ȸ(��â)�� ��(�ܰ谡 5. ���� �� �����׽�Ʈ�� �Ǿ�� �ڵ� ��ȸ�� ��)
    ȯ�汸��: Web, ����: test, Prod(���)
    ����: ������ ���� ���̺� ���� ��û, ��� ���� ÷��(1.44.�𵨺����û��.xls0) ==> ����(Ŭ��)
    ==> ���(Ŭ��) --> ó��(����Ϸ� �� �� �Ϸ簡 �ɸ�)
4. �߰� ��û �ʵ�(���)
�߰����ε�����	IMGUPLOAD_UP_DT	VARCHAR2(35)
÷�μ���URL4	IMGURL4		VARCHAR2(50)
÷�μ���URL5	IMGURL5		VARCHAR2(50)
÷�μ���URL6	IMGURL6		VARCHAR2(50)
�̹������ε�4	IMGUPLOAD4	VARCHAR2(100)
�̹������ε�5	IMGUPLOAD5	VARCHAR2(100)
�̹������ε�6	IMGUPLOAD6	VARCHAR2(100)
==============================================================================================================

- ��ī�� IM-U660K(�޴���)
http://shopping.naver.com/detail/detail.nhn?cat_id=00110104&nv_mid=5639307915&frm=nv_model&tc=3
==============================================================================================================
 					 
������������������� 2010.11.03(��) �۾� �������������������  
---> 07:00 ~ 18:30  --> CS ȸ��

- �����ػ� SM
- EDMS ���� ����(EDMS���� �̹��� ���� �ҷ� ��) --> 2010.11.03(��) ����Ϸ��� ��(������ ���(����ջ���): T)721-0256) 
1. ����â��/�ڵ������� --> ��������(��â) ==> ����ȭ��õ��(6804211031327), ������ȣ: 1006004509-�빰-001
    ==> ȫ����(7306251068725), ������ȣ: ������ȣ 1004066429 -����-001  ==> ���� ��û(2010_11.03)(TO ���Ͽ� �븮)
http://thome.hi.co.kr/servlet/hi.amends.servlet.RII0AAGServlet?q=7F000001189E00FA8379DB0546E50F6CE5C32A2D600C1F#detailIFrmL
/cybercenter/bosangcenter/viewSagoImage.jsp ���Ͽ���
if(dcmId!=null && !dcmId.equals("")) { 
	//if(formCd.equals("0123") && (lctgCd.equals("CM") && mctgCd.equals("05"))) { // �����ڵ尡 �����̰�, ��з� : �ڵ��� ����(CM), �ߺз� : ������(��)����(05) �̸�
	//if(formCd.equals("0123") && lctgCd.equals("CM")) {	// �����ڵ�(formCd)�� ����(0123)�̰�, ��з�((lctgCd): �ڵ��� ����(CM) �̸�	
	if( (formCd.equals("0123") && lctgCd.equals("CM") && lctgCd.equals("02")) 		// �����ڵ尡 ����(0123)�̰�, ��з��� �ڵ��� ����(CM), �����⵿(02)
		|| (formCd.equals("0123") && lctgCd.equals("CM") && lctgCd.equals("13"))	// �����ڵ尡 ����(0123)�̰�, ��з��� �ڵ��� ����(CM), ������(13)
		|| (formCd.equals("3084") && lctgCd.equals("CM") && lctgCd.equals("04"))	// �����ڵ尡 �߰���ȸ(3084)�̰�, ��з��� �ڵ��� ����(CM), ���ع�����(04)
		|| (formCd.equals("3094") && lctgCd.equals("CM") && lctgCd.equals("04"))	// �����ڵ尡 ������ȸ(3094)�̰�, ��з��� �ڵ��� ����(CM), ���ع�����(04)
		|| (formCd.equals("3095") && lctgCd.equals("CM") && lctgCd.equals("04")) ) {	 / /�����ڵ尡 ������ȸ(3095)�̰�, ��з��� �ڵ��� ����(CM), ���ع�����(04)

	filepath=edmclient.requestDocument("CM", dcmId, imgPath+"/"+dcmId+"."+fileForm);  // ���� ����

	if(filepath!=null) {
		System.out.println("��ȸ ���� : "+dcmId);
	} else {
		System.out.println("��ȸ ���� : "+dcmId);
	}
} 
1) ���� ���� �Ⱥ��̰� ����: 243889.JPG, 243888.JPG
==============================================================================================================

- P20101022-0010[��⺸�� ������ȸ ���μ��� ����]
- ���� ��� �������� ��ȸ ����
1. �����(02: ����, 03: ����)
2. ������(3���� �̳�)
3. ���°�(C: �����Ϸ�, A2: �����Ϸ�) ==> C: �����Ϸ�
4. ������ȣ�� �����ϴ� ��  ===> ����
5. �뺸�ڰ� �Ǻ������̰ų� �뺸�ڰ� ������� ���

- ȸ���⺻����(common/util/SessionEtt.java)
private String strRsn_No		= "";		//�ֹι�ȣ
private String strNm                   	= "";		//����
private String strZip1                 	= "";		//�����ȣ1
private String strZip2                 	= "";		//�����ȣ2
private String strAddr1                	= "";		//�ּ�1
private String strAddr2                	= "";		//�ּ�2
private String strTel1                	= "";		//������ȭ��ȣ1
private String strTel2                	= "";		//������ȭ��ȣ2
private String strTel3                	= "";		//������ȭ��ȣ3
private String strEmail			= "";		//�̸���
private String strEmail_Seq		= "";		//e-mail seq
private String strCret_Dt		= "";		//������
==============================================================================================================

- �̱��� ���(DA��): T)721-0188
==============================================================================================================

- û���� ����
/Appl/hib2c/docs/report
/Appl/hib2c/hib2c.ear/hib2cWeb.war/common/report_act.jsp
==============================================================================================================

- RȨ �׽�Ʈ �α� ����
[SC3-devwas02:hidev01] tail -f //Logs/rhib2c/WAS/rhib2cSvr/SystemOut.log
#Image Upload Path
#b2c.upload.path=/upload2/hib2c
b2c.upload.path=/Appl/upload2/hib2c  ===> ���� ó��(����(thome)������ ���� ó��)

- ����(thome)���� �α� ����
#Image Upload Path
b2c.upload.path=/Appl/upload2/hib2c 
==============================================================================================================

- TrustForm ���� Presentation
- ��ü�� : (��)�Ľ�����
- ��ǰ�� : TrustForm ����
  (TrustForm4.0 XRW Source�� ǥ�� HTML�� ��ȯ)
- �Ͻ� : 11�� 3��(������) ���� 1�� 30��(1�ð� ����)
- ��� : ������
- ��� : ���� ���(�ַ����)
==============================================================================================================

- CS ȸ�� ������ ��ǥ
1. NHN ���������� ����(Eclipse�� ����)
==============================================================================================================
					 
������������������� 2010.11.04(��) �۾� �������������������  
---> 07:00 ~ 18:30

- �����ػ� SM
- P20101022-0010[��⺸�� ������ȸ ���μ��� ����] 
1. �������(����/�������� --> �������)
 1) �������(����): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView.jsp)
 2) ó������(����): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView02.jsp)
 3) ����� û������ ���� �ȳ�(����): (http://thome.hi.co.kr/amends/damage/care/DirectOneDetailView.jsp)
 4) �������(����): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView.jsp)

2. �������� Ȯ��(����/�������� --> �������)
 1) �������� ��ȸ(�ű�): (http://thome.hi.co.kr/amends/damage/care/ViewAccidentList.jsp, tabView_Detail.jsp) 
 2) �������� �� ��ȸ(�ű�): (http://thome.hi.co.kr/amends/damage/care/ViewAccident.jsp)
 3) ���񼭷�����(����): (http://thome.hi.co.kr/amends/damage/care/accident_take_process_17.jsp)
 4) ���񼭷�����(��â)(����): (http://thome.hi.co.kr/amends/damage/care/accident_take_process_17_popup.jsp)
 5) ���� ���ε� �Լ�(�ű�): 
  - /amends/common/Progress.java, ErrorManager.java, HIUploadException.java
 6) �������� ��ȸ(����):  /hi/amends/dao/JubsuMgr.java

3. ������ ��� ����
 1) ��⺸�� ������� ��ȸ(������) (����): (http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.JubsuList)
   - /manager/home/care/ViewAccidentList.jsp  ==> �߰����� ������Ʈ(IMGUPLOAD_UP_DT)�ʵ� �߰�
 2) ��⺸�� ������� �����ٿ�ε�(������) (����):(http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.Jubsu)
   - /manager/home/care/ViewAccidentList_excel.jsp
 3) /manager/home/care/servlet/JubsuList.java, /dao/JubsuAdminMgr.java
 4) ��⺸�� ������� ����ȸ(������) (����): /manager/home/care/dao/JubsuAdminMgr.java
==============================================================================================================

1. ��ȸ���� : 11/6�� ���� ������ ���� ��ȸ ������� ����  ===> �̿Ϸ�(�Ϸ�)
    * ��ȸ ������ ���� �ݿ��Ҷ� �������ֽð�
       �׽�Ʈ ������ �ϴ� ���� �������� �������ּ���.
2. ��������� �������Է� �������� ������ ����.
   (���� �ݿ��������� ���� ���� �ʿ�)
3. ������ ȭ�鿡 ó������ ���а� 
   Ȯ�� �߰� / ó��-> ��� ����
   ��ȭ�鿡���� ó��(���)-> ��� ����
==============================================================================================================

- ViewAccident.jsp ���Ͽ���(URL�� �Ⱥ��̱�  ==> Post ��� ����)
<script type="text/JavaScript">
<!--
function checkRadio(obj, indexs) {  //�����ϱ� �Լ�()
	var frm = document.search;
	var temp = indexs;
	var arrTemp = new Array();
	 
	if(temp!="") {
		arrTemp = temp.split("|"); 
		frm.req_req_no.value = arrTemp[0];	//����ȣ
		frm.contract_id.value = arrTemp[1];	//��û��ȣ
		  	 
		frm.action = '/amends/damage/care/ViewAccident.jsp';
		frm.submit();	 
	} 
} 
//-->
</script>

<div onmousedown="javascript:checkRadio(document.search.viewSago, '<%=req_req_no_tot%>');" style="cursor:hand">
<%=req_agmt_num%></div>
==============================================================================================================
					 
������������������� 2010.11.05(��) �۾� �������������������  
---> 06:40 ~ 18:30

- �����ػ� SM
- P20101022-0010[��⺸�� ������ȸ ���μ��� ����] ���� ����
1. �������(����/�������� --> �������)
 1) �������(����): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView.jsp)
 2) ó������(����): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView02.jsp)
 3) ����� û������ ���� �ȳ�(����): (http://thome.hi.co.kr/amends/damage/care/DirectOneDetailView.jsp)
 4) �������(����): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView.jsp)

2. �������� Ȯ��(����/�������� --> �������)
 1) �������� ��ȸ(�ű�): (http://thome.hi.co.kr/amends/damage/care/ViewAccidentList.jsp, tabView_Detail.jsp) 
 2) �������� �� ��ȸ(�ű�): (http://thome.hi.co.kr/amends/damage/care/ViewAccident.jsp)
 3) ���񼭷�����(����): (http://thome.hi.co.kr/amends/damage/care/accident_take_process_17.jsp)
 4) ���񼭷�����(��â)(����): (http://thome.hi.co.kr/amends/damage/care/accident_take_process_17_popup.jsp)
 5) ���� ���ε� �Լ�(�ű�): 
  - /amends/common/Progress.java, ErrorManager.java, HIUploadException.java
 6) �������� ��ȸ(����):  /hi/amends/dao/JubsuMgr.java

3. ������ ��� ����
 1) ��⺸�� ������� ��ȸ(������) (����): (http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.JubsuList)
   - /manager/home/care/ViewAccidentList.jsp  ==> �߰����� ������Ʈ(IMGUPLOAD_UP_DT)�ʵ� �߰�
 2) ��⺸�� ������� �����ٿ�ε�(������) (����):(http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.Jubsu)
   - /manager/home/care/ViewAccidentList_excel.jsp
 3) /manager/home/care/servlet/JubsuList.java, /dao/JubsuAdminMgr.java
 4) ��⺸�� ������� ����ȸ(������) (����): /manager/home/care/dao/JubsuAdminMgr.java
==============================================================================================================

 - ���ó������(����/����)
�����޽��Ǵ�󿩺�:( Y: �����޽��Ǵ���, N: �ƴ�)
�ݰ������� �������� �����޽��Ǵ��� ��ȸ�� ��û(����Ⱓ 11/8 ~ 11/26) 
01. ������� �����ȸ(�ڵ�������): /cybercenter/bosangcenter/bosangListView.jsp
01. ������� �����ȸ(����/��������): /cybercenter/bosangcenter/bosangListView2.jsp
02. ����������� �� ���ػ�����ȸ(����/��������): /cybercenter/bosangcenter/bosangLongTermIlbanView.jsp
(/cis/cisbean/amends/CLFQ0011M01LBean.java, /cis/vo/amends/CLFQ0032VO.java)
 1) �����޽��Ǵ�󿩺�:(Y: �����޽��Ǵ���, N: �ƴ�) �߰� 
     ==> �����޽��Ǵ�󿩺� �÷� REQ_FRCR_YN  = 1 �϶� Y , 0 �϶� N
System.out.println("[/CLMQ9200M01LBean.java] [getTraAccident()] ====> [ifId]"+ ifId +"[acdtList.length]"+ acdtList.length +"[AcdtRcpNo]"+ acdtList[i].getAcdtRcpNo());

 2) ���� ����(IR_HI-HOME_0091(�����ױ⺻��ȸ).txt����)
<reqFrcrYn/> �Ǵ� <reqFrcrYn>0</reqFrcrYn> �Ǵ�<reqFrcrYn>1</reqFrcrYn>
==============================================================================================================

- �ڿ� ��� ���� ó��(�ڿ���ġ Ʋ�� ��)
1. �ڿ� --> Application ��Ȳ���� ��ȸ����: �ڿ���, �ڿ�ID: Jubsu.java ==> �˻�(Ŭ��)
���α׷�ID: Jubsu.java(Ŭ��)  ==> �ű��ڿ� ���(��â�� ��)���� SVN ��� ���� ó�� ==> ����(Ŭ��)
==============================================================================================================

- �ڵ��� �������� ��߱�: 11�� 19��(��) ����
1. ���ǰ�����: T) 874-0112, ���� Desk �ȳ���
==============================================================================================================
 						
������������������� 2010.11.08(��) �۾� �������������������  
---> 07:30 ~ 00:00
 
- SFR(5°��)
07:30 ��� 
10:30 myLG070 ���ͳ� ��ȭ�� ���� ó��
12:00 �߽�
13:10 Super Fast-Reading �п�
14:10 ���� ==> �ӹ�, �û�(���� ���� �о��(�Ҹ� ����))
17:30 ����(�Ŷ�� ��)
18:00 ����(�幵 --> ����)(1': 3.3P)
19:30 ����
20:00 �Ͱ�
00:30 ȫ��ȯ �湮
00:40 �Ƕ��� ȣ����(���� ��)
02:00 ����
02:10 �Ͱ�
==============================================================================================================
	
������������������� 2010.11.07(��) �۾� �������������������  
---> 07:30 ~ 00:00 

��â������� ���
 
07:00 ���
07:40 �ű��ʵ��б�(�Ż�����ȸ â�� 30�ֳ� ���)
07:50 ����(4;3 ��)
09:30 ������(��� ����ȸ) ����
10:20 ��� ����ȸ(4:0 ��)
12:20 ��� ����ȸ(0:0 ��)
13:20 �п� ���ٰ� ���� ����
13:50 Super Fast-Reading �п�
14:10 ����
17:30 ����(�Ŷ�� ��)
18:00 ����(1': 4.1P)
19:30 ����
20:00 �Ͱ�
==============================================================================================================
 					 
������������������� 2010.11.08(��) �۾� �������������������  
---> 06:50 ~ 18:30  --> ��ħ �ý��� ���

- �����ػ� SM
- P20101022-0010[��⺸�� ������ȸ ���μ��� ����] ���� ����
1. �������(����/�������� --> �������)
 1) �������(����): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView.jsp)
 2) ó������(����): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView02.jsp)
 3) ����� û������ ���� �ȳ�(����): (http://thome.hi.co.kr/amends/damage/care/DirectOneDetailView.jsp)
 4) �������(����): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView.jsp)

2. �������� Ȯ��(����/�������� --> �������)
 1) �������� ��ȸ(�ű�): (http://thome.hi.co.kr/amends/damage/care/ViewAccidentList.jsp, tabView_Detail.jsp) 
 2) �������� �� ��ȸ(�ű�): (http://thome.hi.co.kr/amends/damage/care/ViewAccident.jsp)
 3) ���񼭷�����(����): (http://thome.hi.co.kr/amends/damage/care/accident_take_process_17.jsp)
 4) ���񼭷�����(��â)(����): (http://thome.hi.co.kr/amends/damage/care/accident_take_process_17_popup.jsp)
 5) ���� ���ε� �Լ�(�ű�): 
  - /amends/common/Progress.java, ErrorManager.java, HIUploadException.java
 6) �������� ��ȸ(����):  /hi/amends/dao/JubsuMgr.java

3. ������ ��� ����
 1) ��⺸�� ������� ��ȸ(������) (����): (http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.JubsuList)
   - /manager/home/care/ViewAccidentList.jsp  ==> �߰����� ������Ʈ(IMGUPLOAD_UP_DT)�ʵ� �߰�
 2) ��⺸�� ������� �����ٿ�ε�(������) (����):(http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.Jubsu)
   - /manager/home/care/ViewAccidentList_excel.jsp
 3) /manager/home/care/servlet/JubsuList.java, /dao/JubsuAdminMgr.java
 4) ��⺸�� ������� ����ȸ(������) (����): /manager/home/care/dao/JubsuAdminMgr.java
==============================================================================================================
					 
������������������� 2010.11.09(ȭ) �۾� �������������������  
---> 06:10 ~ 18:30  --> �ְ����� �ۼ�

- �����ػ� SM
- EDMS ���� ����(EDMS���� �̹��� ���� �ҷ� ��) ���� �Ϸ�
1. ����â��/�ڵ������� --> ��������(��â) ==> ȫ����(7306251068725), ������ȣ: ������ȣ 1004066429 -����-001 ==> ���� ��û(2010_11.03)(TO ���Ͽ� �븮)
http://thome.hi.co.kr/servlet/hi.amends.servlet.RII0AAGServlet?q=7F000001189E00FA8379DB0546E50F6CE5C32A2D600C1F#detailIFrmL
/cybercenter/bosangcenter/viewSagoImage.jsp ���Ͽ���
if(dcmId!=null && !dcmId.equals("")) { 
	//if(formCd.equals("0123") && (lctgCd.equals("CM") && mctgCd.equals("05"))) { // �����ڵ尡 �����̰�, ��з� : �ڵ��� ����(CM), �ߺз� : ������(��)����(05) �̸�
	//if(formCd.equals("0123") && lctgCd.equals("CM")) {	// �����ڵ�(formCd)�� ����(0123)�̰�, ��з�((lctgCd): �ڵ��� ����(CM) �̸�	
	if( (formCd.equals("0123") && lctgCd.equals("CM") && lctgCd.equals("02")) 		// �����ڵ尡 ����(0123)�̰�, ��з��� �ڵ��� ����(CM), �����⵿(02)
		|| (formCd.equals("0123") && lctgCd.equals("CM") && lctgCd.equals("13"))	// �����ڵ尡 ����(0123)�̰�, ��з��� �ڵ��� ����(CM), ������(13)
		|| (formCd.equals("3084") && lctgCd.equals("CM") && lctgCd.equals("04"))	// �����ڵ尡 �߰���ȸ(3084)�̰�, ��з��� �ڵ��� ����(CM), ���ع�����(04)
		|| (formCd.equals("3094") && lctgCd.equals("CM") && lctgCd.equals("04"))	// �����ڵ尡 ������ȸ(3094)�̰�, ��з��� �ڵ��� ����(CM), ���ع�����(04)
		|| (formCd.equals("3095") && lctgCd.equals("CM") && lctgCd.equals("04")) ) {	 / /�����ڵ尡 ������ȸ(3095)�̰�, ��з��� �ڵ��� ����(CM), ���ع�����(04)

	filepath=edmclient.requestDocument("CM", dcmId, imgPath+"/"+dcmId+"."+fileForm);  // ���� ����

	if(filepath!=null) {
		System.out.println("��ȸ ���� : "+dcmId);
	} else {
		System.out.println("��ȸ ���� : "+dcmId);
	}
} 
1) ���� ���� �Ⱥ��̰� ����: 243889.JPG, 243888.JPG
==============================================================================================================

 - ���ó������(����/����) ���� �Ϸ�
�ݰ������� �������� �����޽��Ǵ��� ��ȸ�� ��û(����Ⱓ 11/8 ~ 11/26)  
�ֹι�ȣ: 6212282631723/����ȣ: 1011000145, �ֹι�ȣ: 6402151810723/����ȣ: 1010000111 
02. ����������� �� ���ػ�����ȸ(����/��������): /cybercenter/bosangcenter/bosangLongTermIlbanView.jsp
(/cis/cisbean/amends/CLFQ0011M01LBean.java, /cis/vo/amends/CLFQ0018VO.java)
System.out.println("[/CLMQ9200M01LBean.java] [getTraAccident()] ====> [ifId]"+ ifId +"[acdtList.length]"+ acdtList.length +"[AcdtRcpNo]"+ acdtList[i].getAcdtRcpNo());
02. ����������� �� ���ػ�����ȸ(����/��������): /cybercenter/bosangcenter/bosangLongTermIlbanView.jsp
(/cis/cisbean/amends/CLFQ0011M01LBean.java, /cis/vo/amends/CLFQ0032VO.java)
 1) �����޽��Ǵ�󿩺�:(Y: �����޽��Ǵ���, N: �ƴ�) �߰� 
     ==> �����޽��Ǵ�󿩺� �÷� REQ_FRCR_YN  = 1 �϶� Y , 0 �϶� N
System.out.println("[/CLMQ9200M01LBean.java] [getTraAccident()] ====> [ifId]"+ ifId +"[acdtList.length]"+ acdtList.length +"[AcdtRcpNo]"+ acdtList[i].getAcdtRcpNo());
 2) ���� ����(IR_HI-HOME_0091(�����ױ⺻��ȸ).txt����)
<reqFrcrYn/> �Ǵ� <reqFrcrYn>0</reqFrcrYn> �Ǵ�<reqFrcrYn>1</reqFrcrYn>
==============================================================================================================

- P20101029-0025[��⺸������ ����] ���� �Ϸ�
1. 1:1 ���� ��� ����Ʈ: /manager/home/counsel/onetoone_list.jsp
2. 1:1 ���� ��� �� ��ȸ: /manager/home/counsel/onetoone_view.jsp 
3. ERMS �����: http://tmgr.hi.co.kr/manager/home/counsel/onetoone_erms.jsp
4. 1:1 ��������� ���� include file ����: /manager/home/counsel/conselorArray.jsp
==============================================================================================================

- ���� ���� ���� ����(XSS ��༺ ����) ���� �Ϸ�
������:	http://thome.hi.co.kr/amends/case/amends/amendsknowView01.jsp
�Ƿ�:		http://thome.hi.co.kr/amends/case/law/amendsknowView03.jsp
==============================================================================================================

- P20101022-0010[��⺸�� ������ȸ ���μ��� ����] ���� ����
1. �������(����/�������� --> �������)
 1) ����/���� ���� �������(����): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView.jsp)
 2) ó������(����): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView02.jsp)
 3) ����� û������ ���� �ȳ�(����): (http://thome.hi.co.kr/amends/damage/care/DirectOneDetailView.jsp) 
 4) ���� �޴� �̹��� ����: /xml/newxml/HI_NAV_XML.xml���� ����(/Appl/hib2c/docs/xml/newxml)
 - ����/���� ���ͳ� ������� "���񺯰�": http://thome.hi.co.kr/amends/damage/care/accident_takeInfoView.jsp)
 - ����û������� ��ũ����: http://thome.hi.co.kr/amends/damage/care/insuranceBenefitForm.jsp
 5) ����������ɰ����ȸ: ��⺸��: /amends/damage/care/accident_takeJubsuList.jsp
 - �Ǻ����ڻ���: ��⺸��: /amends/damage/care/accident_takePiboList.jsp
 6) ����������ɰ����ȸ: �Ϲݺ���: /amends/damage/care/accident_takeJubsuList_i.jsp
 - �Ǻ����ڻ���: �Ϲݺ���: /amends/damage/care/accident_takePiboList_i.jsp
==============================================================================================================

- URL ��ũ ���ֱ�
<a style="cursor:hand" onclick="go_jubsu('<%=strSeq%>');">����ȣ</a>
<div onmousedown="javascript:checkRadio('<%=strAgmt_no[i]%>');" style="cursor:hand">����ȣ</div>
==============================================================================================================

- (2010-11-10)NHN�� ������ ���÷��� ����_���¸�.ppa �ۼ�
��. NHN�� ������ ���÷��� ����
  ��. NHN ���÷����� ����
   - NHN�� ������ ������� USF(UI Server Framework)�÷����� ����� ������ ���÷���
  ��. NHN ���÷����� Ư¡
    - �پ��� ���� �ҽ�(���¼ҽ�: 15��, ���� ������Ʈ: 2352��(2010.8.18 ����))
    - �ż��ϰ� ��Ȯ�� XSS Filter ����(XSS �ڵ��� ���� ����)
    - �ڹ� �� �÷��� ������ �����ִ� Eclipse Plug-in(nClipse) ����
    - ����ڿ��� HTML�� �����ϱ� ���� ����ϴ� ������Ʈ ����� �ڹ� �� ���ø����̼� ���� �����ӿ�ũ
      (USF(UI Server Framework)) ����
��. NHN ���÷����� ������ �� �������
  ��. NHN ���÷����� ������
  ��. NHN ���÷����� �������
��. NHN ���÷����� ���� ����
  ��. NHN ���÷����� ������
    - ���� ���� �÷������� ������(eclipse�� ���� �غ�)
    - ���÷����� �Ѱ� �غ�(����� ���ֿ� ��å ����)
    - ���÷����� ���ͼ� ���(������ ����ȭ ���)
  ��. NHN ���÷����� ���� ����
    - ���� ���� �÷������� ������ �������� ������ ���ٸ� �����ϱ� ����ٰ� �Ǵܵ�
    - ���� �پ��� ����ȭ ��Ұ� �߰��Ǿ�� �Ѵٰ� �Ǵܵ�
==============================================================================================================

 * ���̹�ī �׽�Ʈ ���� ���� *
���� IP : 10.18.12.37(10.10.3.42 �ƴ�)
���� ����: hidev01/hidev01
WEB : /Appl/hibancaCis/docs/
WAS : /Appl/hibancaCis/hibancaCis.ear/hibanca.war/
http://ts.hi-banca.co.kr ===> http://ts.hi-banca.co.kr/error_tip

- ä�μ����� Ķ���� ����
1. ��� ��Ȳ(�ý��������� ���)
2. ���� Ķ����(calendar)
3. ��Ÿ
 ��) �޷� �ҽ� ==> ew_web_diary.zip(http://www.okjsp.pe.kr/seq/37249) 
==============================================================================================================
					 
������������������� 2010.11.10(��) �۾� �������������������  
---> 06:20 ~ 18:30  --> CS ȸ��

- �����ػ� SM
- P20101022-0010[��⺸�� ������ȸ ���μ��� ����]
1. �������(����/�������� --> �������)
 1) ����/���� ���� �������(����): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView.jsp)
 2) ó������(����): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView02.jsp)
 3) ����� û������ ���� �ȳ�(����): (http://thome.hi.co.kr/amends/damage/care/DirectOneDetailView.jsp) 
 4) ���� �޴� �̹��� ����: /xml/newxml/HI_NAV_XML.xml���� ����(/Appl/hib2c/docs/xml/newxml)
 - ����/���� ���ͳ� ������� "���񺯰�": http://thome.hi.co.kr/amends/damage/care/accident_takeInfoView.jsp)
 - ����û������� ��ũ����: http://thome.hi.co.kr/amends/damage/care/insuranceBenefitForm.jsp
 5) ����������ɰ����ȸ: ��⺸��: /amends/damage/care/accident_takeJubsuList.jsp
 - �Ǻ����ڻ���: ��⺸��: /amends/damage/care/accident_takePiboList.jsp
 6) ����������ɰ����ȸ: �Ϲݺ���: /amends/damage/care/accident_takeJubsuList_i.jsp
 - �Ǻ����ڻ���: �Ϲݺ���: /amends/damage/care/accident_takePiboList_i.jsp
 7) ������ �Է�: /amends/damage/care/accident_takeJubsuView.jsp
 - SAGO_JUBSU ���̺��� INSURED_JOB(�Ǻ����� ����), VARCHAR2(200)
 - �Ǻ����� ���� ����: /amends/dao/JubsuMgr.java

3. ������ ��� ����
 1) ��⺸�� ������� ��ȸ(������) (����): (http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.JubsuList)
   - /manager/home/care/ViewAccidentList.jsp  ==> �߰����� ������Ʈ(IMGUPLOAD_UP_DT)�ʵ� �߰� 
 2) /manager/home/care/servlet/JubsuList.java, /dao/JubsuAdminMgr.java 
  - ��ȸ ORDER ����
SELECT distinct A.CONTRACT_ID, 
	 (CASE WHEN (A.TRAN_CD ='Y' AND NVL(A.IMGUPLOAD_UP_DT,'0') <>'0')  THEN '0'
			      WHEN (A.TRAN_CD ='Y' AND NVL(A.IMGUPLOAD_UP_DT,'0') ='0')  THEN '0' 
			      WHEN ( NVL(A.TRAN_CD,'0') ='0' AND NVL(A.IMGUPLOAD_UP_DT,'0') <>'0') THEN A.IMGUPLOAD_UP_DT  
			      WHEN ( NVL(A.TRAN_CD,'0') ='0' AND NVL(A.IMGUPLOAD_UP_DT,'0') ='0') THEN '0'
		  ELSE A.IMGUPLOAD_UP_DT   END) AS UP_TRAN,  
FROM SAGO_JUBSU A  
WHERE to_char(A.CRET_DT, 'YYYYMMDD') BETWEEN '20101011' AND '20101110'  AND A.PROC_FLAG IN ('C','A2')
ORDER BY UP_TRAN DESC, A.CONTRACT_ID DESC
;
==============================================================================================================

 - û���� ����
/Appl/hib2c/hib2c.ear/hib2cWeb.war/common/report_popup.jsp, report_act.jsp
/Appl/hib2c/docs/report/BosangCar.mrd --> û�������� ���ϸ�(01:�������, 02: �Ϲ�),  BosangDisease.mrd 
--> û�������� ���ϸ�(03:����) 
1. Report Designer 5.0 ���α׷� ��� ���� ==> 
1) �����ͺ��̽�(B) --> ��������(F) --> �ʵ� ���� Tab����
�߰�: �ʵ��̸�: a16(�ڵ�����), Ȯ��(Ŭ��)
2) �߰��� ���ϴ� �ʵ带 ���콺�� ��� ����(���콺 ������ Ŭ��) --> �����ͼ� ����(W)����
�ʵ� ����Ʈ: ����, Ȯ��(Ŭ��)
==============================================================================================================

- CS ȸ�� ��ǥ
1. NHN�� ������ ���÷���
http://deview.naver.com/2010/courses.nhn
==============================================================================================================

- ���ε� ������Ʈ ���� �ʿ伺
1. ���߽� ������
 1) ���ε� ������Ʈ Ưȭ ��� ������ �����(���̵� �߻����� �Ǵܵ�)
 2) ������Ʈ ��õ �ҽ� �̰���(���� API ����)
 3) ����� ���� �η��� Ȯ���� �����(������ ���Ƽ� ���� ���� ������ ����)
2. ������Ʈ �̺���
 1) ���� �����ػ� Ȩ�������� JAVA������� �Ϲ� ���ε带 �����Ͽ� ����ϰ� ����
 2) �Ϲ� ���ε� ������� ���� ���ε� �ӵ� �� ����� ���ϵǾ� �� �Ҹ��� ����
 3) ������� ���ε� ������Ʈ�� ����Ͽ� �ӵ� �� ��� ������ �̷���� ������ �ľǵ�
3. ���  
 1) ���ε� ������Ʈ Ưȭ ����� ���Ե� ������Ʈ ���Ű� �ʿ���
 2) ���ε� ������Ʈ ���ߺ��� ROI(Return On Investment) �������� ������Ʈ ���Ű� �����ϴٰ� �Ǵܵ�
 3) ���ε� ������Ʈ ���� �� ���� ���ε� ��ɿ� �߰��� ���� �Ѵٸ� ȿ�����̰� ������ �ý��� ���׷��̵尡 
    �� ������ �Ǵܵ�
==============================================================================================================

- ������ ��Ȱ�� ���� �ҽ� ����(51. reusecenter ���� ����)
1. �����: T)010-8609-3905, sg831201@nate.com
==============================================================================================================
					 
������������������� 2010.11.11(��) �۾� �������������������  
---> 06:30 ~ 18:30  --> G20 ���� ����ȸ��(11(��) ~ 12(��))

- �����ػ� SM
- P20101022-0010[��⺸�� ������ȸ ���μ��� ����] 
1. �������(����/�������� --> �������)
 1) ����/���� ���� �������(����): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView.jsp)
 2) ó������(����): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView02.jsp)
 3) ����� û������ ���� �ȳ�(����): (http://thome.hi.co.kr/amends/damage/care/DirectOneDetailView.jsp) 
 4) ���� �޴� �̹��� ����: /xml/newxml/HI_NAV_XML.xml���� ����(/Appl/hib2c/docs/xml/newxml)
 - ����/���� ���ͳ� ������� "���񺯰�": http://thome.hi.co.kr/amends/damage/care/accident_takeInfoView.jsp)
 - ����û������� ��ũ����: http://thome.hi.co.kr/amends/damage/care/insuranceBenefitForm.jsp
 5) ����������ɰ����ȸ(��⺸��): /amends/damage/care/accident_takeJubsuList.jsp 
 6) ����������ɰ����ȸ(�Ϲݺ���): /amends/damage/care/accident_takeJubsuList_i.jsp
 6) �Ǻ����ڻ���(��⺸��): /amends/damage/care/accident_takePiboList.jsp  
 6) �Ǻ����ڻ���(�Ϲݺ���): /amends/damage/care/accident_takePiboList_i.jsp
 8) ������ �Է�: /amends/damage/care/accident_takeJubsuView.jsp
 9) ������ �Է�: /amends/dao/JubsuMgr.java  ===>  �Ǻ����� ���� ���� 
 10) ���񼭷� ���ε�(���¹�): http://thome.hi.co.kr/amends/damage/care/ProgressBar.jsp 
 11) ���񼭷� ���ε�(ó��): http://thome.hi.co.kr/amends/damage/care/ProgressProcess.jsp
 12) �������� �Է� : /amends/damage/care/accident_take_process_28.jsp
3. ������ ��� ����
 1) ��⺸�� ������� ��ȸ(������) (����): (http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.JubsuList)
   - /manager/home/care/ViewAccidentList.jsp  ==> �߰����� ������Ʈ(IMGUPLOAD_UP_DT)�ʵ� �߰� 
 2) /manager/home/care/servlet/JubsuList.java, /dao/JubsuAdminMgr.java  
==============================================================================================================

- ����(excel)���� jsp�� js�׷� ���� �ȵǰ� �����ϴ� ���
1. ����(T) --> �ɼ�(O) --> ����� �˻� --> �ڵ���ħ �ɼ�(P) --> ���� �׸�(E)
�ڵ� ��ħ ���� --> �Ʒ� �ܾ� ������ �빮�� ��� �� ��(O): jsp, �߰�(A), Ȯ��(Ŭ��)
==============================================================================================================
						 
������������������� 2010.11.12(��) �۾� �������������������  
---> 06:10 ~ 18:30  --> ����, ���� �Է�

- �����ػ� SM
- P20101022-0010[��⺸�� ������ȸ ���μ��� ����] ���� �Ϸ�
1. �������(����/�������� --> �������)
 1) ����/���� ���� �������(����): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView.jsp)
 2) ó������(����): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView02.jsp)
 3) ����� û������ ���� �ȳ�(����): (http://thome.hi.co.kr/amends/damage/care/DirectOneDetailView.jsp) 
 4) ���� �޴� �̹��� ����: /xml/newxml/HI_NAV_XML.xml���� ����(/Appl/hib2c/docs/xml/newxml)
 - ����/���� ���ͳ� ������� "���񺯰�": http://thome.hi.co.kr/amends/damage/care/accident_takeInfoView.jsp)
 - ����û������� ��ũ����: http://thome.hi.co.kr/amends/damage/care/insuranceBenefitForm.jsp
 5) ����������ɰ����ȸ(��⺸��): /amends/damage/care/accident_takeJubsuList.jsp 
 6) ����������ɰ����ȸ(�Ϲݺ���): /amends/damage/care/accident_takeJubsuList_i.jsp
 6) �Ǻ����ڻ���(��⺸��): /amends/damage/care/accident_takePiboList.jsp  
 6) �Ǻ����ڻ���(�Ϲݺ���): /amends/damage/care/accident_takePiboList_i.jsp
 8) ������ �Է�: /amends/damage/care/accident_takeJubsuView.jsp
 9) ������ �Է�: /amends/dao/JubsuMgr.java  ===>  �Ǻ����� ���� ���� 
 10) ���񼭷� ���ε�(���¹�): http://thome.hi.co.kr/amends/damage/care/ProgressBar.jsp 
 11) ���񼭷� ���ε�(ó��): http://thome.hi.co.kr/amends/damage/care/ProgressProcess.jsp
 12) �������� �Է� : /amends/damage/care/accident_take_process_28.jsp
 13. �����û�� ���񼭷�(�������): http://thome.hi.co.kr/amends/guide/documentsView.jsp
C:\svnroot\hi-home\HI-HOME\ONLINE\hib2c.ear\hib2cWeb.war\amends\guide/documentsView.jsp
\HI-HOME\source\ONLINE\B2C\Appl\hib2c\hib2c.ear\hib2cWeb.war\amends\damage\guide\
14. �����û�� ���񼭷�(�Ϲݻ���): http://thome.hi.co.kr/amends/guide/documentsView02.jsp
C:\svnroot\hi-home\HI-HOME\ONLINE\hib2c.ear\hib2cWeb.war\amends\guide/documentsView02.jsp
15. �����û�� ���񼭷�(����): http://thome.hi.co.kr/amends/guide/documentsView03.jsp
C:\svnroot\hi-home\HI-HOME\ONLINE\hib2c.ear\hib2cWeb.war\amends\guide/documentsView03.jsp
16. �����û�� ���񼭷�(���å��): http://thome.hi.co.kr/amends/guide/documentsView04.jsp
C:\svnroot\hi-home\HI-HOME\ONLINE\hib2c.ear\hib2cWeb.war\amends\guide/documentsView04.jsp
17. �����û�� ���񼭷�(Ȧ�ο�): http://thome.hi.co.kr/amends/guide/documentsView05.jsp
C:\svnroot\hi-home\HI-HOME\ONLINE\hib2c.ear\hib2cWeb.war\amends\guide/documentsView05.jsp
������ ��ũ ������ : http://thome.hi.co.kr/data/amends/amends02.pdf
===> T����: /Appl/upload2/hib2c/data/amends
3. ������ ��� ����
 1) ��⺸�� ������� ��ȸ(������) (����): (http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.JubsuList)
   - /manager/home/care/ViewAccidentList.jsp  ==> �߰����� ������Ʈ(IMGUPLOAD_UP_DT)�ʵ� �߰� 
 2) /manager/home/care/servlet/JubsuList.java, /dao/JubsuAdminMgr.java  
==============================================================================================================

- MRD ����(/Appl/hib2c/docs/report) =====> @@@@@@@@@ 
1. BosangCar.mrd --> û�������� ���ϸ�(01:�������, 02: �Ϲ�)
2. BosangDisease.mrd  --> û�������� ���ϸ�(03:����)

- Report Designer 5.0 ���� Ȯ�� ���
1. ��µ� http://thome.hi.co.kr/common/report_act.jsp] ���Ͽ���
System.out.println�� print_data �κ� ���� �ϱ� --> 
print_data:/rdata [����ȭ��õ��ȭ������^8004121012715^L20076883259^����ȭ��õ��ȭ������^2010�� 11�� 11��  
(19�� 49�а�)^142-793 ���� ���ϱ� ���̵� 103-1���� ������Ʈ 106-512^�׽�Ʈ�Դϴ�.^�ڵ�������ó�� ��NO ��YES  
(�����:�Ｚ)^33��2323^�������� ���ڼ�^��������^036210887621^����ȭ��õ��ȭ������^2010�� 11�� 11��^����ȭ
��õ��ȭ������^2010. 11. 12^010-0000-0000^ȸ���(����繫)] /rnl [||] /rmultipage /rcdforeword [�����ػ�] /rnpu)
2. Report Designer 5.0 �����Ͽ� BosangCar.mrd ���� �ҷ� ����
3. ����(F) --> �Ķ���� ���Է¿� �پ�ֱ�, Ȯ��(Ŭ��)
4. ���� �̸�����(Ŭ��)
==============================================================================================================

- XML ����(/Appl/hib2c/docs/xml/newxml) =====> @@@@@@@@@
��������: /B2C/upload2/hib2c/data/amends
HI_NAV_XML.xml
==============================================================================================================

- Trusted Orange Client ��ġ 
1. ���� �׽�Ʈ DB
IP: 10.18.12.38, PORT:1588 --> SERVICE_NAME: home_test, dpebizdba/hdvdba06 ==> DBA ����
IP: 10.18.12.38, PORT:1588 --> SERVICE_NAME: home_test, dpezweb/dpezweb, SERVICE_NAME=INTRAC1 
2. ���̹�ī �׽�Ʈ DB
IP: 10.18.12.38, PORT:1588 --> SERVICE_NAME: INTRAC2, dphicybnc/dphicybnc, SERVICE_NAME=INTRAC2 
==============================================================================================================

- �̳븯�� ���� ���ε� �׽�Ʈ
http://thome.hi.co.kr/amends/damage/care/accident_take_process_17_T.jsp 
==============================================================================================================
						
������������������� 2010.11.13(��) �۾� �������������������  
---> 07:30 ~ 00:00
 
- SFR(5°��)
07:00 ��� 
08:00 Super Fast-Reading ����
09:30 ����
12:00 �߽�
13:30 Super Fast-Reading �п�
14:10 ����(������ ȥ��) ==> �ӹ�, �û�
16:30 ������ 2�� ���� ���� ����
17:30 ����(�Ŷ�� ��)
18:00 ����(�幵 --> ����)(1': 6.58P)
19:45 ����
20:00 �Ͱ�
==============================================================================================================

- ����ȣ ��ȥ
1. 11.13(��) 12�� ���� ������ ȣ�� ===> 2�ð� 30�мҿ�
==============================================================================================================

- ��ǥ ����
���� --> ����(�����): 18:20
���� --> ����(�Ϲݰ��): 17:40 ==> 20,500��(�Ϲݰ��), 30,400��(�����), 33,400��(�ɾ߿��)
���׿��� �Ű��ֿ� ���� ���: http://designqueen.kr/130096581549
==============================================================================================================
	
������������������� 2010.11.14(��) �۾� �������������������  
---> 07:30 ~ 00:00 

�������౸
07:00 ���
07:40 �ű��ʵ��б�
07:50 ������(3;1 ��)
08:50 ����(4:3 ��) 
11:00 ���� ���屹(ȸ�� ���� ��)
12:50 ��迪(������ ���� ������)
12:50 Super Fast-Reading �п�
14:00 ����(�ŷ�, ª�� ���� ���� �ܻ��� ���� ����) ==> View
15:00 ������ �������� �ո��� ���� ��(3�� ���� ����)
17:30 ����(�Ŷ�� ��)
18:00 ����(1': 8.59P)
19:30 ����
20:00 �Ͱ�
==============================================================================================================
					 
������������������� 2010.11.15(��) �۾� �������������������  
---> 06:40 ~ 18:30

- �����ػ� SM
- �뺸�� Ȯ��(������: 7503141041637)
/amends/servlet/JubSuListServlet.java ���Ͽ��� 
public void performTask(HttpServletRequest request, HttpServletResponse response) throws Exception  {
	String ifId = "IR_HI-HOME_0950";  //�����ȸ
	LTMU4001M01LBean insuCheck = new LTMU4001M01LBean();  //����ȿ�����ȸ
	bizVo = insuCheck.getLapCont2(request, ifId, "03", "1",strBasDate);  //�Ǻ�����
	boolean trState   = bizVo.getService().getTRState();  // EAI �������� ����
	if (trState) {
		ltmuList = ltmu4001Vo.getLtmu4005VOList();
		loopSize = ltmuList.length;	 		
	}
	strPTRQ_NAME_T ="2"; //�뺸�ڰ� �Ǻ����� 
	 
	if( loopSize==0 ) { //EAI ���������̰� ��ȸ�� ���� �������� ������
		LTMU4001M01LBean insuCheck2 = new LTMU4001M01LBean();  //����ȿ�����ȸ		 
		bizVo2 = insuCheck.getLapCont2(request, ifId, "01", "1",strBasDate);  //�����
		ltmu4001Vo2 = (LTMU4001VO)bizVo2.getBusinessVo();

		strPTRQ_NAME_T ="1"; //�뺸�ڰ� ����� 
	}
	request.setAttribute("ptrq_name_t",strPTRQ_NAME_T);  //�뺸��
}

/cis/cisbean/longterm/LTMU4001M01LBean.java ���Ͽ��� CIS ����
public CisResultObjVO getLapCont2(HttpServletRequest request, String ifId, String strSrchTgtCat,String strGubun, String strBasDate)throws Exception{ 
	LTMU4005VO[] ltmuContList = longVo.getLtmu4005VOList();  //��ȿ�����ȸ
	for(int i=0; i<ltmuContList.length; i++){ //vo��ü��  null���� ""�� ġȯ
	    HiUtil.nullToEmp(ltmuContList[i].getClass(), ltmuContList[i]); 
	} 
}
==============================================================================================================

- ��� �������� Ȯ��(�߰�����) ����
/amends/dao/JubsuMgr.java ����
���� : ��� �뺸�ڷ� ����
���� : �α��� ������ �ֹι�ȣ�� ��ȸ�Ͽ�
         �� �ֹι�ȣ�� ��� ������ ��� ������
         ����� & �Ǻ����ڿ� ���Ե� ��쿡�� ��ȸ�ǵ��� ���� ����
1) �α��� ��ȸ�ڰ� �Ǻ������� ���
2) �α��� ��ȸ�ڰ� ������� ���
==============================================================================================================

- �����Ȳ���� null �̸� ����� ���������� ó��
bosangLongTermIlbanView.jsp
==============================================================================================================

3. ������ ��� ����
 ��) ��⺸�� ������� ��ȸ(������) (����): (http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.JubsuList)  
 ��) /manager/home/care/servlet/JubsuList.java, dao/JubsuAdminMgr.java

- ���ı���(������ ����)
1. �߰����� ������Ʈ �Ȱ�&ó�����°� ����� �ƴѰ�(�ֻ���)
2. �����Ͻü� ����
   (�߰����� ������Ʈ �Ȱ�&ó�����°� ����ΰ� ����)
- �����ؾ��� ����
1. ó������ ���� ���� �� ���� �ȵǴ� ����
2. �޸� �Է��� ���� ����ȵǴ� ���� (null��) ����
3. ���ı���
==============================================================================================================

- �ڵ������谡������(�����߱� â��)
1. cybercenter/motor/servlet/MIC01AGServlet.java ���Ͽ��� ȣ��
1) ifid: IR_HI-HOME_0081
==============================================================================================================

- P20101115-0052[��� ������� ���μ��� ����](���) ����
1. ��� ������� �Ϲ� ���ش㺸 ��ũ ����: /amends/damage/care/accident_take_process_28.jsp
1) ����: 16:30�� �����
==============================================================================================================

- ǰ��������(���� ����)  ===> image ���� �ȵ� �� ����ȫ �븮���� ó�� ��û(���� ���μ��� �� �����)
1) ����ȫ �븮: T)3701-0360
2) ������ �븮: T)3701-0361
3) ������ �븮: T)3701-0362
==============================================================================================================
					 
������������������� 2010.11.16(ȭ) �۾� �������������������  
---> 07:00 ~ 18:30  --> ��ħ �ý��� ���, �ְ����� �ۼ�

- �����ػ� SM
- P20101115-0042[�������� ��ȸ] ���� �Ϸ�
1. �ڿ�: 8��(JSP: 2, JAVA: 3, XML: 1, MRD: 2) => (JSP: 4, JAVA: 6, XML: 2, MRD: 4, CLASS: 3)(���⹰ ����) => �� 19��

- MRD ����(/Appl/hib2c/docs/report) ���� �Ϸ�
1. BosangCar.mrd --> û�������� ���ϸ�(01:�������, 02: �Ϲ�)
2. BosangDisease.mrd  --> û�������� ���ϸ�(03:����) 
---------------------------------------------------------------------------------------------------------

- XML ����(/Appl/hib2c/docs/xml/newxml) ���� �Ϸ�
��������: /B2C/upload2/hib2c/data/amends
HI_NAV_XML.xml
==============================================================================================================

- ���� ȯ�� ����(/WEB-INF/classes/db.properties)
b2c.sagojupsu.img.path=/data/sagojupsu
# B2C/B2B/MGR domain
b2c.domain=thome.hi.co.kr
b2cr.domain=rhome.hi.co.kr   # //===> �߰�(RȨ����)
b2b.domain=tb2b.hi.co.kr
mgr.domain=tmgr.hi.co.kr
# ������� ���ε� File Path
b2c.sagojupsu.img.path=/data/sagojupsu   # // ====> /Appl/upload2/hib2c/data/sagojupsu
==============================================================================================================

- �̳븯�� ���� ���ε� �׽�Ʈ �� ����
http://thome.hi.co.kr/amends/damage/care/accident_take_process_17_T.jsp
==============================================================================================================

- �ְ����� ����
\\10.81.17.33\homepage_svr\01_Ȩ������\���ͳ�\11    ����_�ְ�����  ==> IA1308/HOMEPAGE01 
==============================================================================================================

- CMMI ����ȭ ���� ���� ���� ���� �ۼ�
M:\������_new\02_�ְ�ޱ⹮��\CMMI ����������/
HDS_������_������ȭ �м�_10.xll, HDS_������_���μ��� ���뼺 �м�_10 �м�_10.xll
==============================================================================================================
						 
������������������� 2010.11.17(��) �۾� �������������������  
---> 07:00 ~ 18:30  --> CSȸ��

- �����ػ� SM
- �̳븯�� ���� ���ε� �׽�Ʈ �� ����
1. ���񼭷�����(����): http://thome.hi.co.kr/amends/damage/care/accident_take_process_17.jsp
2. ���� ��� �������� �� ��ȸ(�߰� ����): http://thome.hi.co.kr/amends/damage/care/ViewAccident.jsp
3. PU ������(�˾�): /amends/damage/care/InnoPU/InnoPU.jsp
4. PU ������ ó��: /amends/damage/care/InnoPU/uploadProc.jsp
5. js ����: /Appl/hib2c/docs/js/newjs/InnoPU/InnoPU.js, InnoPU_embed.js, InnoPU_AP.js, InnoPU5.cab
 1) /InnoPU.js ���Ͽ���(���̼��� Ű ����, ���ε� ���� ���� ����)
// �ѹ��� ���ε带 ����� �뷮�� ������ ������ ����
var ip_TotalUploadSize = 15000; // ���ε尡 ������ �ִ� �뷮. ������ KB(51200KB: 50M, 15000KB: 15M) 
===> (����: 1500KB, ����: 15000KB)
var ip_UnitUploadSize = 1000; // ���� �ϳ��� �ִ� ũ��. ������ KB(10240KB: 10M) 
===>  (����: 500KB, ����: 1000KB)
var ip_MaxFileCount = 15; // �ѹ��� ���ε尡 ������ ������ ������ ����(15��) 
===> ����(����: 3��, ����: 15��), �߰� ����(����: 3��, ����: 5��)

6. image ����: /images/newimages/InnoPU 
����(PU): http://www.innorix.com/resource/manual/pu_jsp.html
����(AP): http://www.innorix.com/resource/manual/ap_jsp.html
Tel. 557-2757 | Cel. 010-2422-0335 | Ȳ����(mshwang@innorix.com)
==============================================================================================================

- �Ϸ��� �ı� ����
1. õ����, ���븮, �Ǵ븮 ===> �� 24��(108,000��)
==============================================================================================================

- ������ ����
1. HP Color LaserJet 4700 PCL 6(IP: 10.81.17.120)  ==> ���� ������: HP Color LaserJet 4700dn
2. Samsung ML-4050 Series PCL 6(IP: 10.81.17.67)
==============================================================================================================
						 
������������������� 2010.11.18(��) �۾� �������������������  
---> 06:30 ~ 18:30

- �����ػ� SM
- �̳븯�� ���� ���ε� �׽�Ʈ �� ����  ===> �׽�Ʈ ��û
1. ���񼭷�����(����): http://thome.hi.co.kr/amends/damage/care/accident_take_process_17.jsp
2. ���� ��� �������� �� ��ȸ(�߰� ����): http://thome.hi.co.kr/amends/damage/care/ViewAccident.jsp
3. PU ������(�˾�): /amends/damage/care/InnoPU/InnoPU.jsp
4. PU ������ ó��: /amends/damage/care/InnoPU/uploadProc.jsp
5. js ����: /Appl/hib2c/docs/js/newjs/InnoPU/InnoPU.js, InnoPU_embed.js, InnoPU_AP.js, InnoPU5.cab 
==============================================================================================================

- ID ��� ��û
http://homeadmin.hi.co.kr/auth/loginView.jsp  ===> IA1308/ssj****1
http://tmgr.hi.co.kr/auth/loginView.jsp  ===> IA1308/IA1308
==============================================================================================================

- �𵨺����û��(test) ��û�� ���
1. ���ε� �ʵ� 10�� �߰�(�� 20�� ���� ���ε�)
==============================================================================================================

- ���ο��� �簡��
1. 2011�� 1�� ���� ������(�� 89,100��) ===> �������ݰ��� ��������(T: 6934-2180)
==============================================================================================================
						 
������������������� 2010.11.19(��) �۾� �������������������  
---> 06:50 ~ 18:30  --> ���� ���

- �����ػ� SM
- P20101118-0031[���ε� ������Ʈ ����]
1. ���񼭷�����(����): http://thome.hi.co.kr/amends/damage/care/accident_take_process_17.jsp
2. ���� ��� �������� �� ��ȸ(�߰� ����): http://thome.hi.co.kr/amends/damage/care/ViewAccident.jsp
3. PU ������(�˾�): /amends/damage/care/InnoPU/InnoPU.jsp
4. PU ������ ó��: /amends/damage/care/InnoPU/uploadProc.jsp
5. js ����: /Appl/hib2c/docs/js/newjs/InnoPU/InnoPU.js, InnoPU_chu.js, InnoPU_embed.js, InnoPU_AP.js, InnoPU5.cab
6. �������� �� ��ȸ: /amends/dao/JubsuMgr.java
7. �������� �� ��ȸ(������): /manager/home/care/ViewAccidentList.jsp
8. �������� �� ��ȸ(������): /manager/home/care/dao/JubsuAdminMgr.java
==============================================================================================================

- ������� ���� ����(XecureHttpJspPage ����)
/cis/cisbean/amends/CLRF0100M01IBean.java ���Ͽ���
public CisResultObjVO getTraAccident(HttpServletRequest request, String ifId)throws Exception{
	ifId ="IR_HI-HOME_0089";  // ����������

	// 1. ��û/���� ������ü ���� �� ������ ����
	amendVo.setClrf0111vo(accVo);

	// 2. ���� ȣ��	
	OutboundProcess service = new OutboundProcess();
	service.setUserId(HiUtil.getCisUserId());
	//service.setLoopback(true, "CLRF0100M01I");
	service.call(ifId, amendVo, amendVo);
	System.out.println("[/CLFQ0010M01LBean.java] [getTraAccident()] ====> [ifId]"+ ifId +"[amendVo]"+ amendVo );

	// 3. ��� Ȯ��
	if ( service.getTRState() ) {
		System.out.println("<br>================================");
		System.out.println("<br>CIS ȣ�� ����");
		System.out.println("<br>================================");

		CLRF0110VO[] RecInfoList = amendVo.getClrf0110voList();
		for(int i=0; i<RecInfoList.length; i++){
			HiUtil.nullToEmp(RecInfoList[i].getClass(), RecInfoList[i]);
			System.out.println("<br>û��VO ����Ʈ---------------------------");
			System.out.println("<br>�����׷��ڵ�     : " + RecInfoList[i].getReqBzGrpCd());			
			System.out.println("<br>�������ڵ�         : " + RecInfoList[i].getReqProdCdGrpCd());		
			System.out.println("[/CLFQ0010M01LBean.java] [getTraAccident()] ====> [ifId]"+ ifId +"[acdtInfo.length]"+ acdtInfo.length 
			+"[����ȣ(������ȣ)]"+ acdtInfo[i].getEvntAcdtRcpNo() );
		}
	}
}
==============================================================================================================

 - ���� ���ε� ������ ����
1. ���ϴ� ������� ��ȯ�� �Ұ�
2. ��õ ������(�ػ�): 80,60 - 160,120 - 240,180 - 320,240 - 480,360 - 640,480 - 800,600 (4:3���� ����)
var ip_SaveThumbnailSize = new Array();
ip_SaveThumbnailSize[0] = new Array(320, 240);  //������ �̹��� ����
==============================================================================================================

- ���ε� �̹��� Ȯ��
http://www.hi.co.kr/data/sagojupsu/201011/newimage111.jpg
--> /Appl/upload2/hib2c/data/sagojupsu/201008/newimage111.jpg
http://thome.hi.co.kr/data/sagojupsu/201011/B_1_allcancel.png
--> /Appl/upload2/hib2c/data/sagojupsu/201011/B_1_allcancel.png
http://www.hi.co.kr/data/sagojupsu/201008/2010115167.jpg   ==> �̹��� ������ 
==============================================================================================================

- �ڵ������谡������(���̹�â�� --> ��������� �� ���ް���Ȯ�μ�)
http://thome.hi.co.kr/servlet/hi.cybercenter.motor.servlet.MIC01AGServlet?q=7F000001
1. /cybercenter/motor/servlet/MIC01AGServlet.java ���Ͽ��� ȣ��
����� ����ÿ� �����ڿ��� �߼۵Ǵ� ���๰��
���Ŀ��� ����ÿ� ������, �Ǻ����ڿ��� ���� ���๰�� �߼۵ǵ��� �ش޶�� ���� �Դϴ�.(�Ǻ����� �߰�)
IR_HI-HOME_0070(��������׸���Ʈ)

1) ifid: IR_HI-HOME_0081  --> �ƴ�
�ϻ�� ����(�ڵ��������): T)721-0287
��Ƹ� ���(�ڵ��������): T)721-0291  ==> ���๰ ���
==============================================================================================================

- ���̼ջ� Ȩ������ ������� ����ó��ȭ�� ������Ż ���� ��û
1. ������� ����� CIS ��ó�� ����Ÿ Ȯ�� ��û
2. �ۼ���: ������(�ջ��ȹ��) ����
3. ����� ����(������): T)721-0314 
==============================================================================================================

- �𵨺����û��(Prod) ��û�� ���
1. ���ε� �ʵ� 14�� �߰�(�� 20�� ���� ���ε�)
==============================================================================================================
						
������������������� 2010.11.20(��) �۾� �������������������  
---> 08:30 ~ 00:00
 
- SFR(6°��)
08:30 ��� 
08:00 Super Fast-Reading ����
09:30 ����
12:00 �߽�
13:30 Super Fast-Reading �п�
14:10 ���� ==> �ӹ�, �û� 
17:30 ����
17:50 7ȣ�� ���濪
18:00 ������ӹ����͹̳�
18:20 ���� ���
22:40 ���װ���͹̳�(4�ð� 20�� �ɸ�)
22:50 â����Ÿ�(102�� ����)
23:20 ������
23:30 ����
24:00 ��ħ
==============================================================================================================
		
������������������� 2010.11.21(��) �۾� �������������������  
---> 08:00 ~ 00:00 

�˹���
08:00 ���
08:30 ����(����)
10:50 ���� �غ�(���� �ƹ���)
12:20 ����(�߿�(����), ���� ����, ����, ���� ����, ��� 3��)
13:00 ���� 
13:30 �߽�
14:30 ����
16:30 ������ ���
17:00 ���װ���͹̳�(101�� ����)
17:40 ���� ���
23:40 ������ӹ����͹̳�(6�ð� �ҿ�)
23:50 ����(643��)
24:20 ������ 
01:00 ��ħ
==============================================================================================================

������������������� 2010.11.22(��) �۾� �������������������  
---> 07:05 ~ 18:30

- �����ػ� SM
- P20101118-0031[���ε� ������Ʈ ����]
1. ���񼭷�����(����): http://thome.hi.co.kr/amends/damage/care/accident_take_process_17.jsp
2. ���� ��� �������� �� ��ȸ(�߰� ����): http://thome.hi.co.kr/amends/damage/care/ViewAccident.jsp
3. PU ������(�˾�): /amends/damage/care/InnoPU/InnoPU.jsp
4. PU ������ ó��: /amends/damage/care/InnoPU/uploadProc.jsp
5. js ����: /Appl/hib2c/docs/js/newjs/InnoPU/InnoPU.js, InnoPU_chu.js, InnoPU_embed.js, InnoPU_AP.js, InnoPU5.cab
6. �������� �� ��ȸ: /amends/dao/JubsuMgr.java
7. �������� �� ��ȸ(������): /manager/home/care/ViewAccidentList.jsp
8. �������� �� ��ȸ(������): /manager/home/care/dao/JubsuAdminMgr.java
---------------------------------------------------------------------------------------------------------

- javascript trim() �Լ� ó��
/amends/damage/care/accident_take_process_17.jsp ���Ͽ���(
function fn_trim(chk_str) {   /* �¿� ���� ���� �Լ�() */	 
    return chk_str.replace(/(^\s*)|(\s*$)/g, "");
}

function OnInnoPUComplete() {   // ���� �Ϸ� �� ����Ǵ� �ݹ� �Լ�()	
	var ResponseData = document.InnoPU.ResponseData; // Action ���Ͽ��� Response �� ������ 
	var ResponseData_2 = fn_trim(ResponseData);   //�¿� ���� ���� �Լ� ȣ��() 
	 
	if(ResponseData_2 == "1") {  //���ε� �����̸�
		 alert("���ε尡 ���� �߽��ϴ�.");
	} else {
		alert("���ε� ó���� ������ �߻� �Ͽ����ϴ�.");
	}
}
==============================================================================================================

- ������� flow(�帧��)
����/���� ���� �������: /amends/damage/care/accident_takeDetailView.jsp
01. ����������ɰ����ȸ(��⺸��): /amends/damage/care/accident_takeJubsuList.jsp
 - �Ǻ����ڻ���: ��⺸��: /amends/damage/care/accident_takePiboList.jsp
01. ����������ɰ����ȸ(�Ϲݺ���): /amends/damage/care/accident_takeJubsuList_i.jsp
 - �Ǻ����ڻ���: �Ϲݺ���: /amends/damage/care/accident_takePiboList_i.jsp
02. ������ �Է�(1. �⺻������, 2. ����� ��������): /amends/damage/care/accident_takeJubsuView.jsp
03. ���������Է�/���񼭷�����, ���������ۼ�(01:�ڵ���): /amends/damage/care/accident_take_process_15.jsp
03. ���������Է�/���񼭷�����, ���������ۼ�(02:�Ϲ�): /amends/damage/care/accident_take_process_28.jsp
03. ���������Է�/���񼭷�����, ���������ۼ�(03:����): /amends/damage/care/accident_take_process_16.jsp
03. ���������Է�/���񼭷�����, ���񼭷�����: /amends/damage/care/accident_take_process_17.jsp
04. �����������Ȯ��: /amends/damage/care/accident_takeJubsuSave.jsp
05. ��������: /cybercenter/elecinsu/elecinsuCertifyView.jsp
06. ��������Ϸ�: /amends/damage/care/accident_take_process_06.jsp 
==============================================================================================================

- �����Ȳ���� null �̸� ����� ���������� ó��
02. ����������� �� ���ػ�����ȸ: /cybercenter/bosangcenter/bosangLongTermIlbanView.jsp
if(acdInfo.getReqClosNm().trim().equals("")) {  //�����Ȳ���� null �̸�
	out.println("����� ������");
} else {
	out.println(acdInfo.getReqClosNm());
}
==============================================================================================================
					 
������������������� 2010.11.23(ȭ) �۾� �������������������  
---> 07:10 ~ 18:30   --> �ְ����� �ۼ�

- �����ػ� SM
- P20101118-0031[���ε� ������Ʈ ����] ���� �Ϸ�
1. ���񼭷�����(����): http://thome.hi.co.kr/amends/damage/care/accident_take_process_17.jsp
2. ���� ��� �������� �� ��ȸ(�߰� ����): http://thome.hi.co.kr/amends/damage/care/ViewAccident.jsp
3. PU ������(�˾�): /amends/damage/care/InnoPU/InnoPU.jsp
4. PU ������ ó��: /amends/damage/care/InnoPU/uploadProc.jsp
5. js ����: /Appl/hib2c/docs/js/newjs/InnoPU/InnoPU.js, InnoPU_chu.js, InnoPU_embed.js, InnoPU_AP.js, InnoPU5.cab
6. �������� �� ��ȸ: /amends/dao/JubsuMgr.java
7. �������� �� ��ȸ(������): /manager/home/care/ViewAccidentList.jsp
8. �������� �� ��ȸ(������): /manager/home/care/dao/JubsuAdminMgr.java
==============================================================================================================

- 02. RȨ ���� �׽�Ʈ ����
1. cos.jar ---> import com.oreilly.servlet.MultipartRequest; ����
2. C:\projects\cis-hi-b2c\docroot\WEB-INF\lib�� ���� ���
==============================================================================================================

- ���̼ջ� Ȩ������ ������� ����ó��ȭ�� ������Ż ���� ��û
1. ������� ����� CIS ��ó�� ����Ÿ Ȯ�� ��û
2. ������� ����� CIS ��ó�� ����Ÿ ó��(CIS ���� �Ϸ�� ���� �۾��� ��ȹ)
2. �ۼ���: ������(�ջ��ȹ��) ����
3. ����� ����(������): T)721-0314 
�����ֿ� ���ǵ�ȴ� Ȩ������ ���ջ� ������� �����Ͽ�, 
�������̽� �߰� �׸� ���Ǵ� �Ϸ�Ǽ̳���?
==============================================================================================================

- ����Ȱ�� ��� �ۼ�(����Ȱ�� ���.xll)
1. ���ε� ������Ʈ ����
==============================================================================================================
					 
������������������� 2010.11.24(��) �۾� �������������������  
---> 07:10 ~ 18:30   --> ��ħ�ý��� ���, CSȸ��

- �����ػ� SM
- �߰� ���� ��û(���Ͽ� �븮���� ��û)
1. ���񼭷�����(�̹��� ����): /amends/damage/care/accident_take_process_17.jsp
2. PU ���ε� ó��(�߰����ε����� ����): /amends/damage/care/InnoPU/uploadProc.jsp
==============================================================================================================

- PU CAB ���� �ٿ�ε�
1. ����/���� ���� �������: http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView.jsp
==============================================================================================================

- ó�� ���μ��� ����(Ȯ��(S)) ����
1. ��⺸�� ������� ����ȸ: /manager/home/care/ViewAccident.jsp
/manager/home/care/dao/JubsuAdminMgr.java, Jubsu.java
==============================================================================================================

- ���̼ջ� Ȩ������ ������� ����ó��ȭ�� ������Ż ���� ��û
1. ������� ����� CIS ��ó�� ����Ÿ Ȯ�� ��û
2. ������� ����� CIS ��ó�� ����Ÿ ó��(CIS ���� �Ϸ�� ���� �۾��� ��ȹ)
2. �ۼ���: ������(�ջ��ȹ��) ����
3. ����� ����(������): T)721-0314 
�������� ������� -> ������ ���(����ջ���): T)721-0265
--------------------------------------------------------------------------------------------------------

1. ���� �κ�: QUESTION1: ����1, QUESTION2: ����2, QUESTION3: ����3, QUESTION4: ����4
2. �ű�: ractInsrdJob: �Ǻ����� ����
3. ���� ���ε�(�ű�): IMGUPLOAD_UP_DT: �߰����ε�����, IMGURL4: ÷�μ���URL4, IMGUPLOAD4: �̹������ε�4, 
  IMGURL20: ÷�μ���URL20, IMGUPLOAD20: �̹������ε�20, ADMIN_TRAN_ID: Ȯ���ڻ�� 
--------------------------------------------------------------------------------------------------------

1. ����� �������࿡ ���� �������� �Ʒ��� Ȯ�� ��Ź�帳�ϴ�.
 - �������ֹι�ȣ(����?) ====>  �̹ݿ��� ������ ������
 - �Ǻ����ڿ��� ����(��밪��?) ====> (P:�θ�, Y:����) 
2. �������� �Ʒ����� Ȯ�� ��Ź�帳�ϴ�,
 - ����1(��밪?): String --> VARCHAR2(25)
 - ����2(��밪?): String --> VARCHAR2(25)
 - ����4(��밪?): String --> VARCHAR2(25)
3. "�Ƿ������� �������� Ȱ�� ���ǿ���"�� �� Ȯ���ؾ߸� Ȩ���������� ������ �Ǵ�����? �ƴϸ� ���ǿ��θ� �����ͷ� �����ؾ� �ϴ�����?
===> �Ƿ������� �������� Ȱ�� ���Ǵ� �ʼ�(���� ������ ��� ��ü�� �Ұ���)�̰� ���ǿ��� �����ʹ� �������� �ʽ��ϴ�.
==============================================================================================================
					 
������������������� 2010.11.25(��) �۾� �������������������  
---> 07:00 ~ 18:30

- �����ػ� SM
- EDMS �̹��� ����
1. �ӽ� ���� ������ ���� ���ε�
2. ���� ����(CIS ó��)  ===> �����ڿ��� ��� ó����
3. �ӽ� ���� �������� ���۵� ���� ����(1�� ���� ��)
4. ���� �����
 1) ������ ���(����ջ���): T)721-0256 
 2) �̱��� ���(�ַ����): T)721-0181)  ===> ���
���۰��� ����: jpg, gif, png, bmp, tif, pdf 
--------------------------------------------------------------------------------------------------------

EDMS���߰��̵�_EDMS_�ӱ漷_20090512_v1.0.doo
9.	EDMS ���ڹ������,������ȸ ȭ�� ����
9.3.	�Ⱓ�� solution.js �޼��带 �̿��� ����
//saveEdms(lctg_cd, mctg_cd , ret_prd_expdt , send_dt , meta_list );
//saveEdms("GI", "01" , "99991231" , "20081028" , "ZZ01:S20080005677;ZZ02:1234567" ); // ���ڹ������ 
saveEdms("CM", "01" , "99991231" , "20101125" , "ZZ01:L20085720292;ZZ02:1234567" ); // ���ڹ������ 
//����ȣ��  S20080005677�̰� �����ȣ�� 1234567 �̰� 
// meta_list : �˻���ȣ��� -> ������ȸ���� ����ϴ� �˻���ȣ(������ ; ����Ͽ� �����˻���ȣó������)

lctg_cd :  ��з� �ڵ�                 -> ������ ��з�(�ڵ�������: CM)
mctg_cd : �ߺз� �ڵ�                -> ���� �ߺз�(����: 01)
ret_prd_expdt : �����Ⱓ������	-> �����Ⱓ������ (��:99991231)
send_dt :  �����߻���                 -> �����߻����� �����մϴ�.(��:20081028)
meta_list : �˻���ȣ���              -> ������ȸ���� ����ϴ� �˻���ȣ(������ ; ����Ͽ� �����˻���ȣó������)

1. �����ڵ尡 ����(0123)��
- �����ڵ� Ȯ��: http://dev-edms.cis.co.kr:50401/jsp/edmadm/eCmForm0001m0.jsp 
- �˻���ȣ �ڵ�Ȯ��: http://dev-edms.cis.co.kr:50401/jsp/edmadm/eCmMetaNo0001m0.jsp
- �����ߺз� Ȯ��: http://dev-edms.cis.co.kr:50401/jsp/edmadm/eCmMapng0000m0.jsp
- ���ڹ��� ���(ȭ��): http://dev-edms.cis.co.kr:50401/jsp/edmapp/eCmReg0001m0.jsp
------------------------------------------------------------------------------------------------------

//listEdms(img_ky , img_det_seq_no , lctg_cd , mctg_cd , meta_list , form_list, wmtext)
listEdms("" , "" , "" , "" , "ZZ01:S20080005677;ZZ02:1234567" , "");	// �̹�����ȸ
------------------------------------------------------------------------------------------------------

10.1.2.	������ȸ ����
15.	EDMS ���� ActiveX ��� ���̵�- edmRegView

//�̹�������
function sendEDMS(objid){
	var objRegView=document.getElementById(objid);
}
==============================================================================================================

/ViewAccident.jsp ���Ͽ���
<input type="button"  name="btnSearch32" value=" ��� "  onclick="javascript:saveEdms('<%=lctg_cd%>', '<%=mctg_cd%>
', '<%=ret_prd_expdt%>', '<%=send_dt%>', '<%=meta_list%>')"   style="cursor:hand"/>

/solution.js ���Ͽ���
function saveEdms(lctg_cd, mctg_cd, ret_prd_expdt, send_dt, meta_list) {  /*** @desc   : ���ڹ��� ���(EDMS)  **/

	//saveEdms("CM", "01" , "99991231" , "20101125" , "ZZ01:L20085720292;ZZ02:5401" ); // ���ڹ������ ==> (�ڵ�������: CM, ����: 01)
	// meta_list : �˻���ȣ��� -> ������ȸ���� ����ϴ� �˻���ȣ ==>  ����ȣ�� L20085720292�̰� ��û��ȣ�� 5401

	if( lctg_cd == null ) lctg_cd = "";
	if( mctg_cd == null ) mctg_cd = "";
	if( ret_prd_expdt == null ) ret_prd_expdt = "";
	if( send_dt == null ) send_dt = "";
	if( meta_list == null ) meta_list = "";
	 
	var gotourl = edmsRoot+"jsp/edmapp/eCmReg0001m0.jsp?lctg_cd="+lctg_cd+"&mctg_cd="+mctg_cd+"&ret_prd_expdt=" + 
	ret_prd_expdt + "&send_dt=" +send_dt+"&meta_list="+meta_list;    
	 //=====>  edmsRoot ���� ������ ��(���ǰ� �ȵǾ� ����), edmsRoot�� ��� ����?
	
	try{
		htmldocument.Script.openListEdms(gotourl);  //=====>  htmldocument ���� ������ ��(���ǰ� �ȵǾ� ����), 
		htmldocument ��� ó�� ����?
	}
	catch(e) {
		var edmsPopUp = htmlwindow.open(gotourl,"edmsPopUpId","fullscreen=0,toolbar=0,scrollbars=0,location=0,
		status=0,menubar=0,resizable=1");
		edmsPopUp.focus();
	}
}
==============================================================================================================

- ����FAX ��ȣ ���� 
 1) ��������� ���񼭷����� FAX ����(FAX ��ȣ�� 1���� ȥ��������)
    ==> ����: ������ȣ�� �������� ����FAX��ȣ ����(������ȭ�鿡�� ����FAX��ȣ�� ������� ó��)
2. ���: �������� ������� -> ������ ���(����ջ���): T)721-0265
    �������: ������(�ջ��ȹ��) ����
 1) "Y".equals(clrf0100vo.getBzFlag() ===> ����FAX��ȣ ��û --> ���ż���ID(TRANID): CLRF0100M01I
==============================================================================================================

- ä�μ����� ���� Ķ���� ����
http://thome.hi.co.kr/calendar/calendar.jsp
==============================================================================================================
						 
������������������� 2010.11.26(��) �۾� �������������������  
---> 07:00 ~ 18:30

- �����ػ� SM
- P20101125-0025[��������� ����ȭ�� ���� �� ���̼��� ��� �۾�]
1. �ڿ�: 7��(JSP: 2, JS: 2, exe: 1, JAVA: 2) ==> (JSP: 4, JS: 4, exe: 2, JAVA: 4, CLASS: 2)(���⹰ ����) ==> �� 16��
==============================================================================================================

- ������� ���ɰ����ȸ Ȯ�� ��û(����ö �븮) 
1. ������� ȭ��(����â�� => ����/��������)
2. ������� ���ɰ����ȸ(7605032798613(������))
- ��ȸ �� ����Ÿ ����(������ ���� ��)
3. �������� ������� -> ������ ���(����ջ���): T)721-0265
  ������ ���(��⺸����): T)721-0374, ����� ����(��⺸����): T)721-0402
  ���¿� ����(��⺸����): T)721-0374,
  - ����: ����(1)�� ����(<agmtStatL>1</agmtStatL>) ===> ��ü(0)�� �����ϸ� ��ȸ ���� ��

# ���������� (agmtStatL)
0:��ü, 1:����, 2:�̳�����, 3:����, 5:��ü(��������)
==============================================================================================================

- EDMS �̹��� ����
1. ��⺸�� ������� ����ȸ: /manager/home/care/ViewAccident.jsp  ===> ���� ����(CIS ó��)
2. ��⺸�� ������� ó�� ���μ���: /manager/home/care/servlet/servlet/Jubsu.java
==============================================================================================================

- WCC�Ǿ�
1. �����Ǿ�(WCC�Ǿ� ����) ��ȣ�� hdmf0082(vnc�� ��������)
==============================================================================================================

- �ڵ��� �������� ��߱�: ã�ƿ�
1. ���ǰ�����: T) 874-0112, ���� Desk �ȳ���
==============================================================================================================

- ������
1. LG LP-H0608D LG �ּ� 15�� ��Ʈ���� �ó����, ����: 1,350,000��  ===> ����������ġ
http://item.gmarket.co.kr/challenge/neo_goods/goods.asp?goodscode=199008537&pos_shop_cd=SH&pos_class_cd=111111111
&pos_class_kind=T&search_keyword=
==============================================================================================================
					
������������������� 2010.11.27(��) �۾� �������������������  
---> 07:30 ~ 00:00
 
- SFR(7°��)
08:30 ���
12:00 �߽�
13:10 Super Fast-Reading �п�
14:00 �ڽ�(������ �����簡 ��ȥ�� �������� 17�ÿ� ��)
14:20 ���� ����(50': 721P) ==> ������(��3, ����(������)) 
17:30 ����(�Ŷ�� ��)
18:00 ����(�幵 --> ����)(1': 14.17P)  ==> �ڽŰ�(������ �����簡 ���� �����ٰ� Ī����) 
19:50 ����
20:30 �Ͱ�
==============================================================================================================
	
������������������� 2010.11.28(��) �۾� �������������������  
---> 07:30 ~ 00:00 

�������౸
07:40 ���
08:30 �ű��ʵ��б�
08:50 ����(4:1 ��) 
10:00 ����(5:1 ��)
11:00 ����
11:10 ���� ���屹 �����ͼ� ���� ����
12:00 ����
12:30 Super Fast-Reading �п�
14:00 ���� ==> ���� �� �� ����(�ڽŰ�), ������ ��
17:30 ����(�Ŷ�� ��)
18:00 ����(1': 18P)
19:00 ����
19:30 �Ͱ�
==============================================================================================================
					 
������������������� 2010.11.29(��) �۾� �������������������  
---> 07:00 ~ 18:30

- �����ػ� SM
- P20101125-0025[��������� ����ȭ�� ���� �� ���̼��� ��� �۾�] ���� �Ϸ�
1. �ڿ�: 7��(JSP: 2, JS: 2, exe: 1, JAVA: 2) ==> (JSP: 4, JS: 4, exe: 2, JAVA: 4, CLASS: 2)(���⹰ ����) ==> �� 16��
==============================================================================================================

- EDMS �̹��� ����
1. ��⺸�� ������� ����ȸ: /manager/home/care/ViewAccident.jsp  ===> ���� ����(CIS ó��)
2. ��⺸�� ������� ó�� ���μ���: /manager/home/care/servlet/servlet/Jubsu.java
/manager/home/care/dao/JubsuAdminMgr.java ���Ͽ��� 
String imgKy = new EdmsClient().registDocument( EdmsRegType.DOC, "CM", "308703", "090200", "IA1308", "090200",
		"20101129", "99991231", "10.81.17.78",
		new EdmsFileSpec[]{	new EdmsFileSpec( "CM01", "0123", "����", "c:\\temp\\132.gif", "1", ""
		, "ZZ01:123456789;ZZ02:34567890", "132.gif")}	// �������� 
	 );

/*
public String registDocument(EdmsRegType regDivType // ��ϱ��� --> EdmsRegType.DOC
            , String businessCode // ��з��ڵ� --> CM(�ڵ��� ����)
            , String affairsID // ��������� ��� --> 308703
            , String affairsBranchCode // ��������� �μ� --> 090200
            , String scanUserID // ����� ��� --> IA1308
            , String scanBranchCode // ��Ϻμ��ڵ� --> 090200
            , String sendDate // �����߻���(yyyymmdd) --> 20101129
            , String expireDate // �����Ⱓ������ --> 99991231
            , String iPAddress // ip�ּ� --> 10.81.17.78
            , EdmsFileSpec[] filespec // ������������Ʈ
    ) 
// ��������Ŭ�����迭 new EdmsFileSpec( "CM01" //��з�+�ߺз�(4) ,"0123" //�����ڵ�
// ,"����" //����ǥ��� ,"c:\\temp\\132.gif" //����������ġ ,"1" //����ں��ȵ��
// ,"" //�ּ� ,"ZZ01:123456789;ZZ02:34567890" //�˻���ȣ,
//"132.gif"//�����ϸ� )
*/
==============================================================================================================

 1. EDMS ���� ���� ó�� ����
-------------------------------------  
���� : 12/01  ~ 12/03 24�ð�
���� : 12/06  ~ 12/10 40�ð�
�׽�Ʈ :12/13  ~ 12/16 40�ð�
���� :12/17 4�ð�
==============================================================================================================

- ���ð��� ��ħ: 2010.11.29(��) 19�� 30��
���ﵵ�ð��� ��ħ�� HP) 011-74219-1949
==============================================================================================================
					 
������������������� 2010.11.30(ȭ) �۾� �������������������  
---> 07:15 ~ 18:30

- �����ػ� SM
- EDMS �̹��� ����
1. ��⺸�� ������� ����ȸ: /manager/home/care/ViewAccident.jsp  ===> ���� ����(CIS ó��)
2. ��⺸�� ������� ó�� ���μ���: /manager/home/care/servlet/servlet/Jubsu.java  
- ���ε� �̹��� Ȯ��
http://thome.hi.co.kr/data/sagojupsu/201011/132.gif 
--> /Appl/upload2/hib2c/data/sagojupsu/201011/132.gif
==============================================================================================================

- �����ڵ��� ���θ��
http://thome.hi.co.kr/events/hd_promtion/promtion_main.jsp
/happyplus/joinsale/servlet/ContractSearchSvt.java ���Ͽ���
public String isAnyContractExist(String rsn_no) throws Exception {
}
---------------------------------------------------------------------------------------------------------

������ ���:  ==> ��������: 12.07(ȭ), ��������: 12.08(��) 
����ȭ��õ��(680817-1348411) ===> C1201-0000001
���������θ�� ���̺�(EVENT_HD_CAR_PR)
�� ���� ����� ���� / �ֹι�ȣ / ������ȣ DB����
==============================================================================================================

 - ����� ����ó Ʋ��(CIS ����(IR_HI-HOME_0091)���� �޾� ��) ===> ���� ��û(���Ͽ� �븮)
- 02. ����������� �� ���ػ�����ȸ: /cybercenter/bosangcenter/bosangLongTermIlbanView.jsp
String ifId = "IR_HI-HOME_0091";  //�����ױ⺻��ȸ --> ���ϳ�(8102142018918)/ ����ȣ 1011172368  

/CLFQ0032VO.java ���Ͽ���
<chwkTelAraNo>02</chwkTelAraNo>	--> ����� ����ó1
<chwkTelTxNo>2129</chwkTelTxNo>	--> ����� ����ó2
<chwkTelSeqNo>5225</chwkTelSeqNo> --> ����� ����ó3 
<chwkTelNo>02-2166-1981</chwkTelNo> --> ����� ����ó(�ű�)

����� ����ó:(<%=acdInfo.getChwkTelAraNo()%>-<%=acdInfo.getChwkTelTxNo()%>-<%=acdInfo.getChwkTelSeqNo()%>)
==> ����� ����ó:(<%=acdInfo.getChwkTelNo()%>)
============================================================================================================== 
�����������������������������������������������������������
+--------------------------------------------------------// End //----------------------------------------------------------+ 
����������������������������������������������������������� 