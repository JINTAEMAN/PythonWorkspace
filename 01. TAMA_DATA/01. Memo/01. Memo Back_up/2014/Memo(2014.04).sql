

�����������������������������������������������������������
+---------------------------------------------// Memo(2014.04) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2014.04.01(ȭ) �۾� ����������������
---> 07:10 ~ 21:00

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj
1��. ���°��� ���� ���
1) My Page > Online account open(/custInfoRegC.jsp) ==> Print(/pop_printForm.jsp) 
2) ==> ���� ����: /A11OU27.java  ==> ���� ���� ����
//���ȭ���̵�
function goPrint(){
	$('#frm').attr({action:'/hmpg/myPage/onlnAcntEstbl/print.do', method:'post', target:'_blank'}).submit();
}
==============================================================================================================

33��.	Open Online Account	�����ڵ� AP����(C0T028C ���̺��� �о����)  ==> �Ϸ�
1. Nationality ==> 
Country[${a11ou27.cid_cntr_cd}]</label></th>

<td style="line-height:31px;">
	<select name="cid_cntr_cd" id="cid_cntr_cd" style="width:140px; height:26px; border:1px solid #999; margin:6px 0 0 0;">
		<option value="" >Nation code.</option>
		<c:forEach items="${nationInfoList}" var="list" varStatus="status">
			<option value="${list.natnCd}" <c:if test="${a11ou27.cid_cntr_cd eq list.natnCd}">
			selected="selected"</c:if>>${list.natnNm}</option>
		</c:forEach> 
	</select>
</td>
==============================================================================================================

28��. ȸ�� ����(Stock Info): J16DI010.dih
==> /QuoteController.java, /quoteMainStockInfo.jsp, /J16DI010.java
==> ���� ����: /J11OI112.java
==============================================================================================================

- ��ȸ�� Download application Forms ��� ����
1. TB_CTNS ���̺� URL ����� �ȵǾ� ����
2. /hmpg/myPage/onlnAcntEstbl/acntApplVisitC.do ��� ��
==============================================================================================================

- �Ｚ���� ���������� ���� ������Ʈ ����  ==> 15�ÿ� ���� ���µ� TA ���ϰ� �ִٰ� �ؼ� ��� ����
1. �Ͻ�: 15�� 30�� [(��)�̳�Ʈ�� ����ȣ ����(010-4584-2468)]
2. ���: ���� ���ı� ��õ�� 7-13���� �ⱺ���Ÿ�� 11��(��ǿ� 7�� �ⱸ): 3412�� ����[������ -> �����(36�� �ҿ�)]
2. ��Ÿ: ���� �� ��ü�� ��ȭ�� ��
==============================================================================================================

- ���� ȸ�� ����(���� �) ==> �Ϸ�
1. https://accounts.google.com/UserSignUpIdvChallenge
2. dinhchackde@gmail.com / tamario0508
3. �޴���: 010-4821-8121
==============================================================================================================

������������������� 2014.04.02(��) �۾� ����������������
---> 07:10 ~ 21:00

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj
1��. ���°��� ���� ���
06. Investor Account: http://117.103.37.28/hmpg/myPage/onlnAcntEstbl/onlnTrBnftRegC.do  ==> /onlnTrBnftRegC.jsp
==> �¶��� �ŷ�����(Online Trade Benefit Registration) ������  ===> ���(��â ����)
==============================================================================================================

- ��ȸ�� Download application Forms ��� ����
1. ��������� ����
1) ���� ����: Password is not yet inserted.
2. ����: /hmpg/myPage/onlnAcntEstbl/acntApplVisitC.do Ÿ�鼭 a11ou27 AP�� ������ ��
==> ���±���(acntType) (01:Regular, 02:Day Trading, 03:Margin Trading, 04:Syariah) 
==============================================================================================================

- � ���� ��ȸ�� ���� ���� ���� ��û
1. ���� ��Ȳ: ���� ���� Online account open(http://117.103.37.28/hmpg/myPage/onlnAcntEstbl/custInfoRegC.do?lnbIdx=2)����
���±���(acntType)�� 0�� ��ȸ���� �¶��ΰ��°��� �湮 ��û(Delivery: Visit)�� �� ��� ���� ������ AP(A11OU27)��
��Ƽ� ���߼����� ������ �� Hots �������� ���������� ��ȸ�� �� �ִ� ���α׷� ���� ==> 2������ ���߿� Hots ��������
���� ��ȸ�Ǵ� ���� Ȯ�� ��
==============================================================================================================

- ���� ���� ��ȸ�� ���� ���� ���� Flow
1. Online account open(http://117.103.37.28/hmpg/myPage/onlnAcntEstbl/custInfoRegC.do?lnbIdx=2)����
Delivery: Visit(üũ), Download application Forms(Ŭ��)
2. AP(A11OU27)���� �������� �����ؼ� Hots �������� ����
3. Hots �������� �������� ��ȸ
==============================================================================================================

- ȸ�� ���� Flow(���� �������� ����)
1. Sing-uphttp://117.103.37.28/hmpg/membEntrc/entrc/signupStart.do): (Ŭ��)
2. ȸ�� ���� �� �ӽ� ��й�ȣ �̸��Ϸ� �ڵ� �߼� �� ==> �̸��� �߼� �������� �ӽ� ��й�ȣ �� �� ����
3. �α���(http://117.103.37.28/login.do) ȭ�鿡�� ID / �ӽ� ��й�ȣ�� �α��� ����
4. �α��� ����(http://117.103.37.28/tr/loginTR-pwdChangeView.do) ȭ�鿡�� �α��� ����
5. tamario3 / 12345 --> tamario@naver.com
==============================================================================================================

������������������� 2014.04.03(��) �۾� ����������������
---> 07:40 ~ 19:40 --> �ù� ����(���� �߰���): �ù��(4õ 5���)

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj
1��. ���°��� ���� ���
06. Investor Account: http://117.103.37.28/hmpg/myPage/onlnAcntEstbl/onlnTrBnftRegC.do  ==> /onlnTrBnftRegC.jsp
==> �¶��� �ŷ�����(Online Trade Benefit Registration) ������  ===> ���(��â ����)

21. Line of Business
pop_printForm.do���� radio �ڽ� ==> /pop_printFormRDI.do���� text �ڽ�
==============================================================================================================

- choose ��(jsp���Ͽ���)
<c:choose><c:when test="${a11ou27.cid_sect eq null or a11ou27.cid_sect eq '' or a11ou27.cid_sect eq '01'}">	 
<!--// KTP �̸� //--> 
	<p><input class="inputStyle01" type="text"  id="passport_no" name="passport_no" value="${a11ou27.passport_no}" 
	style="width: 811px;" readonly="readonly" /></p>	
	</c:when> 
	<c:when test="${ a11ou27.cid_sect eq '02'}"> 
		<input type="text" name="ststus"  value="���" readonly></c:when>
<c:otherwise>   <!--// Paspor & KITAS �̸� //--> 
 <p><input class="inputStyle01" type="text" id="cid_no" name="cid_no" value="${a11ou27.cid_no}" style="width: 376px;" 
 readonly="readonly" /></p>
</c:otherwise>
</c:choose>    
==============================================================================================================

- checkbox�� radio ��ư ������� �����(jsp���Ͽ���)
<script type="text/javascript"> 
<!--     
	$("document").ready(function() { 
		/** chkSex_sect checkbox ���� �̺�Ʈ */				
		 $("input:checkbox[chkSex_sect]").change(function(){ 
			$("input:checkbox[chkSex_sect]").prop("checked", false);   // 1. ��ü ���� 
			this.checked='checked';  // 2. ������ �ϳ��� check box �� ����
		});   
	});   // end of ready()
//-->
</script>

<div>
	<ul>
		<li><label for="male">Pria / <em>Male</em></label><input type="checkbox"  name="chkSex_sect" 
		id="choice_gender_01" chkSex_sect="1"  value="M" /></li>
		<li><label for="female">Wanita / <em>Female</em></label><input  type="checkbox" name="chkSex_sect" 
		id="choice_gender_02"  chkSex_sect="2"  value="F" ></li></li>
	</ul>
</div>
==============================================================================================================

- NullPointerException
NullPointerException ���ܴ� ��ü�� �����Ǿ� ���� �������¿��� ������ �Ҷ� �߻��մϴ�
==============================================================================================================

- ����, ȣ�� ����
19:40 ���
19:50 �߲�ġ��(����� ���� ��(2���� ��))
20:40 �籸(3��): �籸��(5,900��)
23:00 ������(���� ��:55,000��)
23:30 ����(���� ���� ����)
24:00 ����ö
24:30 �Ͱ�
24:50 ��ħ
==============================================================================================================

������������������� 2014.04.04(��) �۾� ����������������
---> 07:00 ~ 21:00 --> � �ݿ�(���� URL �ٲ� ��)

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj
1��. ���°��� ���� ���
06. Investor Account: http://117.103.37.28/hmpg/myPage/onlnAcntEstbl/onlnTrBnftRegC.do  ==> /onlnTrBnftRegC.jsp
==> �¶��� �ŷ�����(Online Trade Benefit Registration) ������  ===> ���(��â ����)

21. Line of Business
pop_printForm.do���� radio �ڽ� ==> /pop_printFormRDI.do���� text �ڽ�
==============================================================================================================

- �Խ��� �ڵ��߰� ����
1. /boardListR.do ==> �Խ��� ���� �߰�
==============================================================================================================

- ���� �߼۽� ����
1. A31OU02 AP ���� �߼۽� Contnents ���̵� �߼� �ǰ� ���� ��û ==> �߰� ��û ����
2. Tambah komentar anda (optional) ���� ���� �߼� �Ұ��� �մϴ�....Message �� ������ ������ ��
==> A31OU02 AP�� ���� ��û�ؼ� ó����
--------------------------------------------------------------------------------------------------------

- � ���� ���� Ȯ��
CtnsAuthInfo cai = CtnsAuthInfo.getInstance();
String dwsidSys = cai.getDwsidSys();	// D:����, R:� 
String sendSeverDnsNm = "http://117.103.37.28";

 if(dwsidSys.equals("R")){	// � ���� �̸�
	 sendSeverDnsNm = "http://www.dwsec-id.com";
 }
==============================================================================================================

- ���� ���� file(/dwsid/wdocs/files)
[wadmin@_DEV_/usr/share/ant]: find ~/ -type f -name etrading_wts.html -exec ls -al {} \;
-rw-rw-r-- 1 wadmin wadmin 4957 Apr  4 11:20 /dwsid/wdocs/files/WTS/etrading_wts.html
1. Sample_Opening_Account.zip ���Ϸ� ���߼����� �ø�
/dwsid/wdocs/files/Sample_Opening_Account.zip
==============================================================================================================

29��. ���� �߱�: J18DI001.dih	==> 2014.04.06(��) @@@@
==> /QuoteController.java, /pop_stockSearch.jsp, /J18DI001.java
==> java.lang.Exception: The user ID is not yet registered. Please check again. 
==============================================================================================================

������������������� 2014.04.05(��) �۾� ����������������
---> 09:00 ~ 18:00  

�������౸  
08:00 ���
08:40 ����(�Ļ�)
09:10 ���� ����� ���� �Ű� �� ����(����)
12:50 �߽�(¥���, ����, ���κ�): ������
14:30 ����ö(������Ա��� <-> ��翪)
15:00 Ȩ�÷��� ������ �湮
17:00 ���� 
18:00 �Ͱ� 
18:40 ����
18:50 ����(Į����: �翺): �������� ���ִ� ��
19:30 �Ͱ�
19:40 �ù�(���� �����, CU ������): ���ƿ��� ����
20:30 �Ͱ�
21:30 ����, ������, �� �ֹ�(���ͳ�)
23:00 ��ħ 
==============================================================================================================

- ���� ����� ���� �Ű� �� ����(09��) 
1. ����  ����� S/N: H127-MS100V00874
1. 2014.04.03(��) ������� ��й�ȣ�� ������ ������ ����(3~4�� �����ϸ� �ҷ����鼭 ����)
2. ������� �Ϸù�ȣ�� Ȯ���ϰ� ���� ���� ==> ��� 09�ÿ� �ͼ� �� ���ݴ� �κ� ��ü��
==============================================================================================================

������������������� 2014.04.06(��) �۾� ���������������� 
---> 09:00 ~ 18:00  

�������౸  
06:45 ���
07:00 �������� ��õ������ ��(�������� ��) 
07:30 �ű��ʵ��б� 
10:00 ����(3:1 ��)
09:00 ����(2:0 ��)
10:00 ����(3:1 ��)
10:30 ����
10:40 �������� ��
11:00 ���((��)����Ʈ�� ������ ��Ÿ� ���� ȣ�� ���� ȸ��)
12:00 �߽�(������, �����): �����̰� ȸ�� ī��� ��
13:00 �ٹ�(MGM Top Ranking ��ȸ 9���� �����ϵ��� ����)
13:50 �ٹ�(���� �߱� ����)
18:00 ����(¥���, ������): �����̰� ȸ�� ī��� ��
19:00 ����
19:30 �Ͱ�
19:50 ����(���̱�, ����, �ٳ���)
20:00 �Ͱ�
23:00 ��ħ 
==============================================================================================================

29��. ���� �߱�
==> /QuoteController.java, /pop_stockSearch.jsp, /J18DI001.java
==> java.lang.Exception: The user ID is not yet registered. Please check again.
// stockSearch_Gainers_Losers
==============================================================================================================

������������������� 2014.04.07(��) �۾� ����������������
---> 07:00 ~ 21:00 

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj
29��. ���� �߱�
==> /QuoteController.java, /pop_stockSearch.jsp, /J18DI001.java
==> java.lang.Exception: The user ID is not yet registered. Please check again. 
==============================================================================================================

- ���� �Լ�
D:\02. TAMA Project\2008.06(�������� Ȩ ������_Ŭ���峪��)\00. KBLCM(�ҽ�)\src\kblcm\common\util
CMDateCheck.java, CMDateUtil.java, CMNumberUtil.java, CMMoneyUtil.java
/kdbdw/src/main/java/dwsec/id/cmmn/util/CommonUtil.java
/CommonUtil.java ���Ͽ���  @@@
public class CommonUtil {
    /* 
     * null�� '0'�� ��������
    * @return "yyyyMMdd" ������ ��¥
    **/
   public String getStringToNull(String strNull) { 
	  // logger.debug("[/CommonUtil.java] [getStringToNull()] [strNull]"+ strNull ); 
	   
	   	if(strNull  == null || "".equals(strNull)) {
	   		strNull = "0"; 
	   	}
	   //	logger.debug("[/CommonUtil.java] [getStringToNull()_END] [strNull]"+ strNull ); 
	   	
       return strNull;  
   } 
}

/MembScsnController.java ���Ͽ��� @@@
import dwsec.id.cmmn.util.CommonUtil;

public class MembScsnController {
	private CommonUtil comUtil;

	@RequestMapping(value="/cmmn/popup/pop_stockSearch.do")
	public String stockSearch(@ModelAttribute("membScsnVo") MembScsnVo membScsnVo 
								, @ModelAttribute("j18di001") J18DI001 j18di001
								, HttpServletRequest request
								, HttpServletResponse response
								, HttpSession session
								, ModelMap map) throws Exception {

		j18di001.setPrevval_flag(comUtil.getStringToNull(membScsnVo.getPrevval_flag()));	// 02. ���ϰŷ�������
	{
}
==============================================================================================================

28��. ȸ�� ����(Stock Info): J16DI010
==> /QuoteController.java, /quoteMainStockInfo.jsp, /J16DI010.java
==> ���� ����: /J11OI112.java

model.addAttribute("j11OI112" , j11OI112);
model.addAttribute("j16DI0102", j16DI0102); 
==============================================================================================================

13��. ���� ���� ��� 
==> /QuoteController.java, /quoteMain.jsp, /J91DI50A.java(J12OI110 ������)
1) ���� ���� ���: http://117.103.37.28/hmpg/quote/quoteMain.do
==> Interest Stock�� ��ϵ�: http://localhost:8080/hmpg/myPage/interStock/interStockListR.do?lnbIdx=1
1) ��ȸ ����(Select Group: 99 �߰�), ���� �����ϰ� ó��
if(spceExptVo.getProfImgFileNm() != null && ! ("").equals ).spceExptVo.getProfImgFileNm()) {}  =	=> null�� ó��
==============================================================================================================

- ajax ��ȸ, ���(/lnb3.jsp ���Ͽ��� @@@)  ==> ǥ�� 
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.form.min.js"></script>

<script type="text/javascript">
<!--      
	var boardObj = {    // �Խ��� �迭
		targetData : [
				<c:forEach var="board" items="${commonLeftSpceBoardList}" varStatus="status">
			{intIndexSortOrder:"${status.count}", blbdId:"${board.blbdId}", blbdNm:"${board.blbdNm}", blbdNo : "${board.blbdNo}"}
			<c:if test="${!status.last}">
			,
			</c:if>
				</c:forEach>
		 ] 
	};

	function fnSelectDivision1(strDivision1){			/** Division1 onchange �̺�Ʈ ó�� */  
		var intDivision1 = parseInt(strDivision1); // Division1 value 
		var intDivision2 = parseInt($("select[name=slctDivision2]").val()); // Division1 value �� 
	} 
		 
	// Add to My Stock ��ư 
	function btnSave() {   
		if($.trim($("#searchTitleNo").val()) == '3') {		/* ��ȸ ���� ��ȣ�� 3 �̸�(03. Rebound after pullback)  */  <!-- // radio ��ư //-->
			$('#input1').val( $("input:radio[name=rdoFluctuation]:checked").val());			// 11. �Է�1[Fluctuaion for the past 5 days]   

		 else if($.trim($("#searchTitleNo").val()) == '13') {		/* ��ȸ ���� ��ȣ�� 13�̸�(13. Golden Cross/Dead Cross) */    <!-- //  select �ڽ� //-->  
			var intDivision1 = parseInt($("select[name=slctDivision1]").val())		// Division1 value 
			var intDivision2 = parseInt($("select[name=slctDivision2]").val());		// Division2 value 
		  
			if(intDivision1> intDivision2 ) {		// Dvision1�� ���� Division2�� ������ ũ��
				strSearchYN = "N";
				alert("Dvision1�� ���� Division2�� ������ Ŭ���� �����ϴ�.");  
			} else { 
				$('#input1').val($("select[name=slctPeriod1]").val());			// 11. �Է�1
				$('#input2').val($("select[name=slctDivision1]").val());			// 12. �Է�2  
		}
	
		var totCntPrice_flag = $('input:checkbox[name=price_flag]:checked').length; 	// 04. ���簡 ���� //>   <!-- //  check �ڽ� //-->
		if(totCntPrice_flag> 0 ){  // price_flag üũ �Ǿ� ������
			$("#price_flag").val("1");	// 04. ���簡 ���� 
		} else {
			$("#price_flag").val("0");	// 04. ���簡 ���� 
		} 

		if($.trim($("#dragboardSortOrder").val()) == null || $.trim($("#dragboardSortOrder").val()) == '') {  // ������ ������
			alert("The Order of Board is not changed.");
			return false;   // ��� ��  
		} else {
			fnSaveSortOrder();
			return false;
		}
	} // end of btnSave()
	
	/** ���� �̺�Ʈ ó�� */
	function fnSaveSortOrder() { 
		var sortOrderArray = new Array(); 
		var arryDragboardSortOrder = new Array();  
		$("#lnbFrm>input[name=ctnsClasCd]").val(ctnsClasCd);   // ���ο� �� POST�� ������
 
		if("${membScsnVo.searchTitleNo}" != "0") { 		// ��ȸ ���� ��ȣ�� �����ϸ� ==> .java���� 
																			map.addAttribute("membScsnVo", membScsnVo); �� ���� ��
			var position=$('#searchResult').offset(); // ��ġ��
			$('html,body').animate({scrollTop:position.top},1500); // �̵�
		} 
		alert("[/pop_stockSearchMain.jsp] [stockSearch()] ==> [membScsnVo.searchTitleNo]"+ "${membScsnVo.searchTitleNo}" );   
		
		if("${membScsnVo.#searchTitleNo}" ==  null || "${membScsnVo.#searchTitleNo}" == "") { //==> [searchTitleNo]"+ $("#searchTitleNo").val() );
		// ��ȸ ���� ��ȣ�� �����ϸ� ==> 	form���� ���� ��
			alert('Please enter a #searchTitleNo.');
			$("#searchTitleNo").focus();
			return false;
		}
		alert("[/pop_stockSearchMain.jsp] [stockSearch()] ===> [searchTitleNo_92]"+ $("#searchTitleNo").val() );   
		arryDragboardSortOrder = $("#dragboardSortOrder").val().split(",");  // split ���� 
		 
		$.each(boardObj.targetData, function(index, item){ 
			sortOrderArray.push(arryDragboardSortOrder[index].trim()+"||"+item.blbdId+"||"+item.blbdNm +"||"+item.blbdNo);   
			 // �Խ��� �迭 �� ��ġ
		}); 
		
		$('<input>').attr({type:'hidden', id:'sortOrderArray', name:'sortOrderArray', value:sortOrderArray.toString()}).appendTo($("#lnbFrm"));			
		// ���� ����� ���� �� - json Object
 		 
		var form	= $("#lnbFrm"); 
		$('#lnbFrm').ajaxSubmit({ 
			url		:  '<%=request.getContextPath() %>/hmpg/stkCm/spceExpt/sortOrderSave.do',		// action URL
			type 		: 'post', 
			data 		: form.serialize(), 
			dataType 	: 'json', 
			success 	: function (data){   
				if(data.status) { // ���� �����̸�
					//alert("[/lnb3.jsp] [fnSaveSortOrder()] [success] ==> [data.strSaveOK]"+ data.strSaveOK );
					if("Y" == data.strSaveOK) {   // ID�� �����ϸ�
						alert('Post has been registered.');	 

						var strForumId = "${spceExptVo.forumId}"; 
						var strExptId = "${spceExptVo.exptId}";   
						//$('<input>').attr({type:'hidden', id:'forumId', name:'forumId', value:strForumId}).appendTo($("#lnbFrm"));  // ���� ID 
						//$('<input>').attr({type:'hidden', id:'exptId', name:'exptId', value:strExptId}).appendTo($("#lnbFrm"));  		// ������ ID   
						
						$('#lnbFrm').attr({action:'<%=request.getContextPath() %>/hmpg/stkCm/spceExpt/spceExptMain.do', method:'post'}).submit();  
						//==> return URL(POST ���)
  
						//	$(location).attr('href','<%=request.getContextPath() %>/hmpg/stkCm/spceExpt/spceExptMain.do?forumId=${spceExptVo.forumId}
							&exptId=${spceExptVo.exptId}');		//==> return URL(GET ���)
					}
				} else {
					//alert("[/quoteMain.jsp] [fnAddStock()] [success] ==> [msg.message]"+ msg.message ); 
					if(msg.message == null || msg.message == "undefined") {
						alert('Failed to change.');
					}else{
						alert(msg.message);
					}
				}
			}, 
			error : function(a,b,c){ 
				alert("Unknown exception occurred.");
			}
		}); 	// end of ajaxSubmit()

		return false; 
	} 	// end of fnSaveSortOrder()  
//-->
</script>
 
<form id="lnbFrm" name="lnbFrm" method="post">
	<input type="hidden" name="ctnsClasCd" value=""/>
	<input type="text" name="forumId" value="${spceExptVo.forumId}"/> 
	<input type="text" name="exptId" value="${spceExptVo.exptId}"/>  
	<input type="hidden" name="updateFlag" value="Y"/>  
 	<input type="text" name="dragboardSortOrder" id="dragboardSortOrder"  value=""/>
	<input type="tex" name="searchTitleNo" id="searchTitleNo"  value="1" /> <!-- // ��ȸ ���� ��ȣ //-->
	  
	<input type="image" id="btnSave" class="mt9" src="/img/hmpg/stock/expert/btn_ok.gif" alt="Save" onclick="return btnSave()" /> 
	<!--// Board Sort Save //-->   

	<input type="checkbox"  name="price_flag"  value="1" />		<!-- // 04. ���簡 ���� //-->	<!-- // chekc �ڽ� //-->

	<div class="select_option4">	<!--// 13. Golden Cross/Dead Cross //-->	<!-- // select �ڽ� //-->
		<ul>
			<li><span>Division</span> 	<!--// input2: Division1 //-->
				<select name="slctDivision1" id="slctDivision1" onchange="fnSelectDivision1(this.value)">
					<option value="0">Last</option>
					<option value="1">5MA</option>  
				</select> 
			</li> 
		</ul>
	</div> 
	<div class="select_option2">
		<ul>
			<li><span>Fluctuation for<br />the past 5 days</span>	<!-- // 11. �Է�1[Fluctuaion for the past 5 days] //-->  <!-- // radio ��ư //-->
			<label><input type="radio" name="rdoFluctuation" id="rdoFluctuation" value="0" checked="checked"/> 10%</label>
			<label><input type="radio" name="rdoFluctuation" id="rdoFluctuation" value="1" /> 20%</label></li> 
		</ul>
	</div>

</form>
--------------------------------------------------------------------------------------------------------

- /SpceExptController.java ���Ͽ��� @@@
@Controller
public class SpceExptController {
	/**
	 * 
	 * 17. Space for Export  �Խ��� ��ġ ���� ����
	 * 
	 * @param spceExptVo
	 * @param request
	 * @param response 
	 * @param session
	 */
	@RequestMapping(value="/hmpg/stkCm/spceExpt/sortOrderSave.do")
	public @ResponseBody void sortOrderSave(@ModelAttribute("spceExptVo") SpceExptVo spceExptVo
										, BindingResult bindingResult 
										, HttpServletRequest request
										, HttpServletResponse response
										, @ModelAttribute("uploadForm") CommonUtil uploadForm
										, HttpSession session
										, ModelMap map) throws Exception {  
		logger.debug("[/SpceExptController.java] [sortOrderSave()] [test]");
  
		List<SpceExptVo> listVo = new ArrayList<SpceExptVo>();
		 
		if(spceExptVo.getUpdateFlag() != null && spceExptVo.getUpdateFlag().equals("Y")) { 	//������ ���
			String sortOrderArray = request.getParameter("sortOrderArray");
			
			String rowList[] = sortOrderArray.split(",");  // �迭 �и��ϱ�
			for (String row : rowList) {
				String colList[] = row.split("\\|\\|");  
				 
				SpceExptVo rowVo = new SpceExptVo();
				rowVo.setIntIndexSortOrder(Integer.parseInt(colList[0]));
				rowVo.setBlbdId(colList[1]);
				rowVo.setBlbdNm(colList[2]);  
				rowVo.setBlbdNo(colList[3]); 
			 	
				listVo.add(rowVo);
			}
		} 
		
		try {
			rtnBl	= spceExptService.updateSortOrder(listVo);		// 17. Space for Export  �Խ��� ��ġ ���� ����  
		} catch(Exception e){} 
		 
		if(rtnBl == true) { 
			strSaveOK	= "Y";
		}
		
		HashMap<String, Object> hmap = new HashMap<String, Object>();
		hmap.put("status", rtnBl); 
		hmap.put("strSaveOK", strSaveOK);   // ���� ���� ����
		JSONObject resultJson = JSONObject.fromObject(hmap);
		logger.debug("[/SpceExptController.java] [sortOrderSave()] --> [status]"+  rtnBl 
			+"[strSaveOK]"+  strSaveOK +"[resultJson.toString()]"+ resultJson.toString() );
	 
		response.setContentType("text/html");
		PrintWriter writer = response.getWriter();
		writer.print(resultJson.toString());
		writer.flush();
		writer.close();
	}
}
==============================================================================================================

������������������� 2014.04.08(ȭ) �۾� ����������������
---> 07:10 ~ 21:00 --> (��)����Ʈ�� ���� �ް� �����鿡�� �뺸

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj
19��. �Խ��� ��ġ ���� ���氡���ϵ��� ���� 
==> http://localhost:8080/hmpg/stkCm/spceExpt/spceExptMain.do

01. ���̹� ��α�: http://admin.blog.naver.com/AdminCategoryView.nhn?blogId=tamario
--------------------------------------------------------------------------------------------------------

- ī�װ� ���� TEST
tree.html
http://kin.naver.com/qna/detail.nhn?d1id=1&dirId=1040202&docId=105111834&qb=amF2YXNjcmlwdCDsubTthYzqs6Drpqwg
6rSA66as&enc=utf8&section=kin&rank=1&search_sort=0&spq=0&pid=R0LntspySDVsssCnMUssssssssR-143064
&sid=%2BkBsgG8GTLAaR0poBXlcyg%3D%3D

http://blueb.co.kr/blueb/

http://decafbad.com/2009/07/drag-and-drop/api-demos.html#newschool

http://corehtml5canvas.com/code-live/ch02/example-2.7/example.html

http://m.mkexdev.net/58

http://www.webreference.com/programming/javascript/mk/column2/index.html  ===> ��Ȯ

http://isocra.com/2007/07/dragging-and-dropping-table-rows-in-javascript/#demo
--------------------------------------------------------------------------------------------------------

- Ext JS 4.2 Ʈ�� �巡�� & ���(Tree Drag & Drop) 
var tree = Ext.create('Ext.tree.Panel', {
    id:"gridTree",
    autoHeight:true,
    renderTo: Ext.get('dataArea'),
    useArrows: false,
    rootVisible: false,
    store: store,
    multiSelect: true,
    rowLines:true,      viewConfig: {          
    plugins: {              
	ptype: 'treeviewdragdrop',              '
	enableDrag: true,              
	enableDrop: true          
	}      },      
	multiSelect: true,
    renderTo: Ext.get('tree')
});

/js/tabledndDemo.js
==============================================================================================================

- DWS ID �α� ��ȸ
[wadmin@_DEV_~]:  cd /usr/share/tomcat/logs          ==> ���� ����  @@@
[wadmin@_DEV_~]:  grep 'Open.j16DI010_04/07 20:37' /usr/share/tomcat/logs/catalina.out -A90 -B60 | less       
				==> �α� ��ȸ @@@ --> Exception, ERROR
[wadmin@IWS01I ~]:  find ~/ -type f -name createBoardMgmt.jsp -exec ls -al {} \;               ===> ���� ã��  @@@
==============================================================================================================

- �ܱ��ε���� ����
�� �ʿ� ���� 
0. ��û��  ==> ���ͳݿ��� �ٿ�(application form.doc) �޾Ƽ� �ۼ��� ��
1. ���� ���� 
2. ���� ����(ũ��: 3.5 * 4.5 cm)
3. �Ŷ� ȥ�ΰ�������  ==> ���ͳ� ����� ��
4. �Ŷ� �ֹε�ϵ	 ==> ���ͳ� ����� ��
5. ������: 40,000��
6. �ڳ� ������ ���� �Ⱓ�� 2������ Ȯ���� �� 
==============================================================================================================

- �ܱ��ε���� ����
1. �Ա� 1�� �� �� ������ ��(����Ǳ� 2���� ������ ����) 
2. �翺 �Ա�:  2013.04.13(��)
3. �翺 �ܱ����� ��û: 2013.04.15(��)
4. ����: www.g4f.go.kr 
5. �ܱ��ε�� > �ܱ��ε�� ��Ͻ� ���⼭��:http://www.hikorea.go.kr/pt/InfoDetailR_kr.pt
 1) ü�� �ڰ�: ��ȥ�̹�(F-6)
6. ���� ���Ա������繫��: ����� ��õ�� �񵿵��� 151, ��02-2650-6212 
1) ������Ա��� --> �ŵ�����--> ��õ��û��(1�� �ⱸ) --> �� 13���� --> ��õ���� --> ���� ���Ա������繫��
==============================================================================================================

09:20 1�� ����[���� ����, ����, ȥ�ΰ�������, �ֹε�ϵ(�����), �ſ�������(�����) ����]
09:30 3�� ����[�������� ����(2����), ����, ���� ����(200��)] 
09:40 2�� ����[�ܱ��ε���� ������(2����), �ù�(4õ��) ��û])
09:50 1�� ����[ó�� ���� Ȯ���� ����, �ź� ���� ���] ==> �Ϸ�(2������ �ҿ�)
----------------------------------------------------------------------------------------

- ������������ ���ͳݹ߱�(����)
1. http://efamily.scourt.go.kr ===> ���� Ȯ���� ���� �߰� ���� �Է¿��� ��ϱ������� ������ ��('�⸲��'�� ��ȸ) 
2. ���� Ȯ���� ���� �߰� ���� �Է�(http://efamily.scourt.go.kr/pt/PtFrrpApplrInfoAddInq.do)
 1) ��ϱ�����(Ŭ��) > ��ϱ����� ��ȸ(��â)
 ���θ� �ּ�(Tab) >
 ��. �õ�: ���ϵ�(����), �ñ���: ���׳���(����)
 ��. ���θ�: �⸲��(�Է�) > ��ȸ(Ŭ��)
 ��. ���θ� �ּ�(������): ��� ���׽� ���� ��õ�� �⸲�� 1392���� (��õ��)(Ŭ��)
 ��. �ǹ���ȣ: ����(����) 138 ��  ==> Ȯ��(Ŭ��) --> â ����
 2) ��ϱ�����: ��� ���׽� ���� ��õ�� �⸲�� 1392���� 138  ==> ��ȸ(Ŭ��)
==============================================================================================================

- ������������ ���ͳݹ߱�(����)
1. http://efamily.scourt.go.kr ===> ���� Ȯ���� ���� �߰� ���� �Է¿��� ��ϱ������� ������ ��('�⸲��'�� ��ȸ)
 
2. ���� Ȯ���� ���� �߰� ���� �Է�(http://efamily.scourt.go.kr/pt/PtFrrpApplrInfoAddInq.do)
 1) ��ϱ�����(Ŭ��) > ��ϱ����� ��ȸ(��â)
 ���θ� �ּ�(Tab) >
 ��. �õ�: ���ϵ�(����), �ñ���: ���׳���(����)
 ��. ���θ�: �⸲��(�Է�) > ��ȸ(Ŭ��)
 ��. ���θ� �ּ�(������): ��� ���׽� ���� ��õ�� �⸲�� 1392���� (��õ��)(Ŭ��)
 ��. �ǹ���ȣ: ����(����) 138 ��  ==> Ȯ��(Ŭ��) --> â ����
 2) ��ϱ�����: ��� ���׽� ���� ��õ�� �⸲�� 1392���� 138  ==> ��ȸ(Ŭ��)

==============================================================================================================
 - ���������� ����
(1�⿡ �ѹ���(4��) SC���� ������ ��(������ �� ��)) ==> 1���� ����ϸ�(���� 5�� 11��)
1. ���� ����
1) ������: 2012.05.09(��)
2) ���¹�ȣ: 130-20-502841(13020502841) ==> ����ī�� 3, 4, 5�ڸ�: 429
3) �����ID: tamario/ta****9
4) ������ ��ȿ�Ⱓ: 2012/05/09 ~ 2013/05/08
-----------------------------------------------------------------------------------------------------------
 
- ���������� ��߱�(SC����:http://www.standardchartered.co.kr/gw/index.html) ==> �нǽ�
0) �������� > ���������� �ű� ��߱� > ����
1) ������: 2012.05.09(��)
2) ���¹�ȣ: 640-21-0052-309( 640210052309 ) ==> ����ī�� ��4�ڸ�: 3971
3) �����ID: tamario/ta****9
-----------------------------------------------------------------------------------------------------------

- ���������� ����(����)
��������:http://www.myasset.com/myasset/mainindex.html
1. ���¹�ȣ: 710-01-003202 (71001003202)
2. ����ī�� �Ϸù�ȣ: 211(2,3, 4��° �ڸ�)
==============================================================================================================

- �긮�� ����Ϲ�ŷ(https://www.standardchartered.co.kr/np/kr/cms/pl/wb/Breezebanking.jsp)
1. PC�� �ִ� ������������ ����Ʈ������ ������
2. ����Ʈ���� �ִ� ������������ PC�� ������ �� ���
-------------------------------------------------------------------------------------------------------

- ������ ����(���������� ��������, ��������) ==> email �� ����(USB ��� ����)
1. �긮�� ����Ϲ�ŷ -> �������� -> ������ ����
https://open.standardchartered.co.kr/service/cert/CtManage?menuid=OIB05050000000000&;;langCode=KR#
==============================================================================================================

������������������� 2014.04.09(��) �۾� ���������������� 
---> 07:15 ~ 21:00

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj
13��. ���� ���� ��� 
==> /QuoteController.java, /quoteMain.jsp, /J91DI50A.java 
1. ���� ���� ���: http://117.103.37.28/hmpg/quote/quoteMain.do
2. ���� ���� ���: http://117.103.37.28/hmpg/quote/quoteCmprn.do
3. ���� ���� ��ȸ(J12OI110): http://117.103.37.28/hmpg/myPage/interStock/interStockListR.do?lnbIdx=1
 1) ���� ó�� 
==============================================================================================================
 
������������������� 2014.04.10(��) �۾� ����������������
---> 07:00 ~ 21:00 --> ����(����): (��)����Ʈ�� ������� ��

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj
16��. ��Ź Ŀ�´�Ƽ ���̱ۺ���
==> http://localhost:8080/hmpg/stkCm/spceExpt/spceExptMain.do
1) ��Ź Ŀ�´�Ƽ ���̱ۺ���: �ڱⰡ �� ���� �ڱⰡ �� �� �ֵ��� (��Ź Ŀ�´�Ƽ �Ϲ�, ������ ��) ������ ����Ÿ�� ��Ʈ, 
��Ź �ֳθ���Ʈ �޴��߰�

- ������ �з� �ڵ�(01401: STOCK ANALYSIS, 01402: REQUEST STOCK ANALYSIS, 01301: QUOTES/THEME, 01302: RECOMMENDATION) */
1. 01401: STOCK ANALYSIS
http://localhost:8080/hmpg/stkCm/stkAnal/stockAnalListR.do?ctnsClasCd=01401
2. 01402: REQUEST STOCK ANALYSIS
http://localhost:8080/hmpg/stkCm/stkAnal/rqstStockAnalListR.do?ctnsClasCd=01402
3. 01301: QUOTES/THEME
http://localhost:8080/hmpg/stkCm/realTimeQuot/quotThemeListR.do
4. 01302: RECOMMENDATION
http://localhost:8080/hmpg/stkCm/realTimeQuot/rcmdListR.do 
==============================================================================================================

19��. �Խ��� ��ġ ���� ���氡���ϵ��� ����
==> http://localhost:8080/hmpg/stkCm/spceExpt/spceExptMain.do
==============================================================================================================

������������������� 2014.04.11(��) �۾� ����������������
---> 09:00 ~ 18:00  

- �ܱ��� ü���Ⱓ ���� ��û
08:00 ���
08:00 ����(�Ļ�)
08:30 �����(�ּ� 8�ÿ��� ����� ��)
08:40 ������Ա���(6-2) -> �ŵ����� -> ��õ��û��
09:30 �������Ա������� ����(��� 20��)
10:30 1�� ����[���� ����, ����, ȥ�ΰ�������, �ֹε�ϵ(�����), �ſ�������(�����) ����]
10:40 1�� �츮���� ����[�������� ����(3����)]
10:50 1�� ����[�ܱ��ε���� �ޱ� ==> 2017�� 4�� 13�ϱ��� ����(�ڳ� ����� 3�� ����)]
10:55 ����
11:10 ��õ��û�� -> ��꿪
11:50 ��Ŀ���¿�Ʈ ���� ==>  Micro SD ��ȯ ����(http://www.ppomppu.co.kr/zboard/view.php?id=phone&no=1510339)
	1) ��Ŀ���¿�Ʈ(���� 14�� ���ڿ��� 535ȣ: ���� ��걸 û�ķ� 109): 02-704-3885]
12:20 �ſ�꿪 -> ��翪 -> ������Ա���
12:50 �߽�(������ ö�� ������)
13:20 �Ͱ�(���� ȥ�� ������: �� ħ�뿡 ���ξ��µ� ħ�뿡�� ������ ==> �ֱ� ħ�뿡 ��� �� ��ħ)
        --> �翺 ��Ʈ�� ���ӿ� ��
16:20 �翺 ����
17:00 �Ｚ���ڼ��� ��õ�� �湮(��õ�� 4�� �ⱸ): û�ұ� A/S(�����ŷ� ������ ��): û�ұ� ��ü �κ� ���͸� ���
	û�� ���ֶ�� �� ==> �Ｚ �������� û�ұ� VC-CD700M, ����: 140,000��
17:30 �Ͱ� 
17:40 ������(�Ʊ� �����(����Ʈ) �Ȱ����� ��)
18:40 ����
19:30 �����
19:40 �౹(�ֹ̾� ����: �ֹ� ���ؼ� 2�� ����)
19:50 ������Ա��� -> ���￪
20:30 ���￪ ����
21:00 ���￪ ���(������, ��): �翺, ���� 2�ְ� ���׿��� ��Ȱ�Ѵٰ� ���� ������
23:18 �Ű��ֿ� ����
23:25 ū���� ��(�ý� ���� �� �����忡�� ����)
23:55 ū���� �� ����
24:20 ��ħ
==============================================================================================================
 
������������������� 2014.04.12(��) �۾� ����������������
---> 09:00 ~ 18:00  

- ������
09:00 ���(ū������)
09:40 ����
10:00 �翺 �ĸ�(ū����)
11:50 �̹�, ����(ū����)
13:30 �߽�(¥���, ������)
15:00 ū���� �� ���(�ɰ濡�� �뵷 3���� ��) ==> �翺 �ֹ̾� ����(������Ʈ ������)
16:00 ������ ����
17:00 ����
18:00 �θ�� �뵷(20���� �帲)
18:50 ����(���)
23:00 ��ħ 
==============================================================================================================
 
������������������� 2014.04.13(��) �۾� ����������������
---> 09:00 ~ 18:00  

- ������2
09:00 ���(������)
09:40 ����
11:00 ���ϴ� �ؼ����� ����(�翺, ����)
11:50 ����
14:30 �߽�(���)
15:00 ����
19:00 �����(�Ʊ� �� ����)
19:20 ����(�翺 �Ա� 1�ֳ� ���)
20:00 ����(�����)
23:30 ����(���� �Ҿƹ���)
24:20 �����
24:30 �ý�(��ȣ�� �ֹμ���)
24:40 ���� ����͹̳�(10�е� �� �ɸ�)
01:00 ������ ��ӹ���
04:50 �����͹̳�
05:30 (��)����Ʈ�� ����(�ų����� ��ó)
05:50 ��ħ(���ڿ���)
08:00 ���
08:20 �ٿ�(��Ʈ�� ���)���� �۱� ==> ó������ ���(���)���� 120���� ������(�� 120���� �� ���忡�� �۱�: ������ ��)
==============================================================================================================
 
������������������� 2014.04.14(��) �۾� ���������������� 
---> 08:00 ~ 21:00 --> ��ӹ����� ������ ���� �� �ٷ� ���

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj
- ���� �¶��� ����(��ũ��Ʈ �߰� ��)  ==> �߰� ���(�Ϸ�)
1. http://localhost:8080/hmpg/main/main.do ==> /jsp/hmpg/layout/header.jsp
==============================================================================================================

- Space for Expert  ==> �߰� ���
0. Expert �������� �۾��� �����ϵ��� ����(����: admin�� ����)
http://117.103.37.28/hmpg/stkCm/spceExpt/spceExpertBoardMax.do 
1. 01401: STOCK ANALYSIS
http://117.103.37.28/hmpg/stkCm/stkAnal/stockAnalListR.do?ctnsClasCd=01401
2. 01402: REQUEST STOCK ANALYSIS
http://117.103.37.28/hmpg/stkCm/stkAnal/rqstStockAnalListR.do?ctnsClasCd=01402
3. 01301: QUOTES/THEME
http://117.103.37.28/hmpg/stkCm/realTimeQuot/quotThemeListR.do
4. 01302: RECOMMENDATION
http://117.103.37.28/hmpg/stkCm/realTimeQuot/rcmdListR.do 
==============================================================================================================

28��. ȸ�� ����(Company Profile): J16DI010.dih	==> 2014.04.14(��): �Ϸ� @@@@
==> /QuoteController.java, /quoteMainStockInfo.jsp, /J16DI010.java
==> ���� ����: /J11OI112.java 
==============================================================================================================

- �������� ������ ���� �ο�  ==> �߰� ���
1. ���� ��ϵ� ID: 1100007
2. ����� ID: 9000014
==============================================================================================================
 
������������������� 2014.04.15(ȭ) �۾� ����������������
---> 07:00 ~ 21:00 --> (��)����Ʈ������ �޿� ���ݸ� ����(2,659,250��), ȸ��((��)����Ʈ�� ������ ����)

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj
19��. �Խ��� ��ġ ���� ���� ���� �ϵ��� ����
==> http://localhost:8080/hmpg/stkCm/spceExpt/spceExptMain.do
==============================================================================================================
 
������������������� 2014.04.16(��) �۾� ���������������� 
---> 07:00 ~ 21:00 --> 

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj
19��. �Խ��� ��ġ ���� ���� ���� �ϵ��� ����
==> http://localhost:8080/hmpg/stkCm/spceExpt/spceExptMain.do
==============================================================================================================

- ��Ʈ�� ����Ʈ(UltraEdit)�� ����Ʈ �÷���(EditPlus) �ٰ��� ���� ���߱�
(http://blog.naver.com/guile77?Redirect=Log&logNo=20008888565) 

   #)����...�ۼ��� �ҽ� �ڵ��� �������� ���� �����Ķ����� Ư�� �����͸� ���� �ɶ�...
   #)�� �������� �ǰ� �鿩���� ���� ���ߴ°͸� �����߾�
 
(��) �Ѵ� ��ũ�⸦ 4�� �����Ҷ�.. 
1)��Ʈ�� ����Ʈ
* ���-����-����
--->     �� ũ�� �� : 4
       �鿩���� ���� : 4
2) ����Ʈ �÷���
* ����-�⺻ ����-�׸�-����-������ ��������-������ ��������-��/�鿩����
--->         ��(T) : 4
       �鿩����(I) : 4
* Ȯ��-����-Ȯ��
#) �ڵ� �鿩���� ���(E)�� üũ���־�� ��
#) Ȥ�� �ȵɶ� �Ʒ��� ���� ���ʿ� ��� ������ ���ش�.

* ����-��/�鿩����
--->          �� : 4
       �鿩���� : 4 
---------------------------------------------------------------------------------------------------------
 
Edit : ODC
Sample : UltraEdit-32 ver. 10.10c
             EditPlus v2.12(147)
#) �׽�Ʈ ��� �۲� �⺻����
�۲� : ����ü, �۲ø�� : ����(Regular), ũ�� : 10
==============================================================================================================

- �̺�Ʈ �� URL ȣ��
1. HOTS(��� Ʈ���̵� �ý���)���� �߰��� Ȩ������ Ư�� ������ ��ũ
http://www.dwsec-id.com/cmmn/ctnsArea.do?ctns_url=/hmpg/custSvc/evnt/eventDtlR.do
 
http://www.dwsec-id.com/cmmn/ctnsArea.do?ctns_url=/hmpg/custSvc/custEduPlan/custEduPlanListR.do 	==> OK 
http://localhost:8080/cmmn/ctnsArea.do?ctns_url=/hmpg/custSvc/custEduPlan/custEduPlanListR.do			==> OK 
 
if("Y".equals(session.getAttribute("isHotsYn")))
		return "/hots/custSvc/custEduPlan/custEduPlanListR";
	else
		return "/hmpg/custSvc/custEduPlan/custEduPlanListR"; 
}

- User Guide > MGM : ctns_url=/hmpg/userGuide/mgmMain.do?lnbIdx=2
http://www.dwsec-id.com/cmmn/ctnsArea.do?ctns_url=/hmpg/userGuide/mgmMain.do  ==> OK 
http://localhost:8080/cmmn/ctnsArea.do?ctns_url=/hmpg/userGuide/mgmMain.do			==> OK 
 - Mypage > MGM : ctns_url=/hmpg/myPage/mgmMgmt/pgmRank.do
http://www.dwsec-id.com/cmmn/ctnsArea.do?ctns_url=/hmpg/myPage/mgmMgmt/pgmRank.do  ==> �� ������
 - User Guide > Open account :  ctns_url=/hmpg/userGuide/acntEstblMeth.do?lnbIdx=31
http://www.dwsec-id.com/cmmn/ctnsArea.do?ctns_url=/hmpg/userGuide/acntEstblMeth.do?lnbIdx=3   ==> �� ������
 - Stock cummunity > Main : ctns_url=/hmpg/stkCm/main/stkCmMain.do
http://www.dwsec-id.com/cmmn/ctnsArea.do?ctns_url=/hmpg/stkCm/main/stkCmMain.do   ==> �� ������
 - Stock cummunity > Real time quote : ctns_url=/hmpg/stkCm/realTimeQuot/quotThemeListR.do
http://www.dwsec-id.com/cmmn/ctnsArea.do?ctns_url=/hmpg/stkCm/realTimeQuot/quotThemeListR.do   ==> �� ������
 - Stock cummunity > Stock analysis : /hmpg/stkCm/stkAnal/stockAnalListR.do 
http://www.dwsec-id.com/cmmn/ctnsArea.do?ctns_url=/hmpg/stkCm/stkAnal/stockAnalListR.do   ==> �� ������
 - Stock cummunity > Space for Expert : ctns_url=/hmpg/stkCm/spceExpt/spceExptListR.do 
http://www.dwsec-id.com/cmmn/ctnsArea.do?ctns_url=/hmpg/stkCm/spceExpt/spceExptListR.do   ==> �� ������
 - Stock cummunity > Servey : ctns_url=/hmpg/stkCm/srvy/srvyDtlR.do
http://www.dwsec-id.com/cmmn/ctnsArea.do?ctns_url=/hmpg/stkCm/srvy/srvyDtlR.do   ==> �� ������

2. Event �������� Ư�� URL ����
http://www.dwsec-id.com/hmpg/custSvc/evnt/eventDtlR.do 
http://www.dwsec-id.com/hmpg/custSvc/evnt/eventDtlR.do?currRow=1&evntSeq=6
==============================================================================================================

- ���� ���� ��� ����
 /wsid/wapps/ROOT/WEB-INF/jsp/hmpg/quote/quoteMainTranSum.jsp ==> ���� ȸ������ �߰�(02. Transaction Summary)
01. ����: Add to My Stock ��ư�� �ϸ� action URL�� /quoteMain-addStock.do �� Ÿ�� /quoteMain.do�� Ž
02. ����: <script type="text/javascript" src="/js/jquery.form.min.js"></script>�� �� �־ �׷��� ��
---------------------------------------------------------------------------------------------------------

// Add to My Stock ��ư 
function fnAddStock(){ 
	$('#stockCode').val($('#stcd').val());

	var form	 = $("#frm");
	$('#frm').ajaxSubmit({   
		url		: '/hmpg/quote/quoteMain-addStock.do',		// action URL
		type 		: 'post', 
		data 		: form.serialize(), 
		dataType 	: 'json', 
		success 	: function (msg){     
			if(msg.status) {
				alert('Post has been registered.');
				
			} else { 
				if(msg.msgNo == "01426") {   // �ߺ� ���� �̸�
					alert("The stock is already registered."); 
				} else if(msg.message == null || msg.message == "undefined") {
					alert('Failed to save.'); 
				}else{
					alert(msg.message);
				}
			}
		}, 
		error : function(a,b,c){ 
			alert("Unknown exception occurred.");
		}
	}); 	// end of ajaxSubmit()

	return false; 
} 	// end of fnAddStock()  
==============================================================================================================

- ���� ���� ��� ����2
/wsid/wapps/ROOT/WEB-INF/jsp/hmpg/quote/quoteMainTranSum.jsp ==> ���� ȸ������ �߰�(02. Transaction Summary)
01. ����: alert("Unknown exception occurred."); ���� �߻�
02. ����: <input type="image" onclick="return fnAddStock()" src="/img/hmpg/quote/btn_addMystock_eng.gif" alt="Add to My Stock"  /> 
���� onclick="return fnAddStock()"  �����༭ �׷��� �� 
==============================================================================================================

- /QuoteController.java ���Ͽ��� @@@  ==> ǥ��
@RequestMapping(value="/hmpg/quote/quoteMain-addStock.do")
public @ResponseBody void addStock(@ModelAttribute("quoteVo") QuoteVo quoteVo
												, HttpServletRequest request
												, HttpServletResponse response
												, HttpSession session) throws Exception { 
		 
		A31OI01Vo userInfoVo = new A31OI01Vo();
		String tmp_user_id="";
		
		if(session.getAttribute("USER_INFO") != null){
			userInfoVo = (A31OI01Vo)session.getAttribute("USER_INFO");
	        tmp_user_id = userInfoVo.getUser_id();
		} 

		J91DI50A j91di50a = new J91DI50A(); 
		j91di50a.setServiceName("J91DI50A");		/// Header ���� ����(���� ���� ����) ==> ���� ���� ���(J91DI50A)
		//j91di50a.setHeader_PgmId("J91DI50A");	// Header ���� ����
		
		/*** Input ***/ 		
		j91di50a.setUserId(tmp_user_id);					/** 01. UserId **/
		j91di50a.setSect_cd("S");								/** 02. sect_cd(Q : ��ȸ, S : ���, D : ����) **/
		j91di50a.setGroupNo("099");							/** 03. GroupNo **/
		j91di50a.setGroupNm("HOMEPAGE");			/** 04. GroupNm **/
		j91di50a.setSeq("00");									/** 05. Seq **/
		j91di50a.setStcdType("00");							/** 06. StcdType **/
		j91di50a.setStcd("1"+ quoteVo.getStcd());		/** 07. Stcd : 1StockCode �����ڵ�տ� 1�� ������ �����ø� �� **/  
		logger.debug("[/QuoteController.java] [addStock()] [Input_Val] ==> [01. getUserId()]"+ j91di50a.getUserId() 
		+"[02. getSect_cd()]"+ j91di50a.getSect_cd() +"[03. getGroupNo()]"+ j91di50a.getGroupNo() ); 
		logger.debug("[/QuoteController.java] [addStock()] [Input_Val] ==> [04. getGroupNm()]"+ j91di50a.getGroupNm() 
		+"[05. getSeq()]"+ j91di50a.getSeq() +"[06. getStcdType()]"+ j91di50a.getStcdType() +"[07. getStcd()]"+ j91di50a.getStcd() );  
		logger.debug("[/QuoteController.java] [addStock()] [AP_Open] ==> [J91DI50A.doConnection()]"+ j91di50a.doConnection() );
	 
		if (j91di50a.doConnection() < 0){
			throw new Exception("J91DI50A Service : Server connection failed !");
		}else{
			isErr = j91di50a.getMsgType();
			quoteVo.setMsgType(isErr);
		        
			if(isErr.equals("E")){
				altMsg = j91di50a.getMessage();
		        quoteVo.setMessage(altMsg);
		        quoteVo.setMsgNo(j91di50a.getMsgNo());
		        quoteVo.setMsgForMsgNo(msgInfoMap.get(j91di50a.getMsgNo()));
		    }
		        
		    if(j91di50a.getAddMsgAttr()==1){
		        altMsg = j91di50a.getAddMsg();
		        quoteVo.setAddMsg(altMsg);
		    }
		    logger.debug("[/QuoteController.java] [addStock()] [Output_Val] ==> [Grid_size()]"+ 
		    j91di50a.geJ91DI50A_outdata_OUT_REC().size() +"[altMsg]"+ altMsg +"[getMsgNo()]"+ 
			quoteVo.getMsgNo() +"[getMsgForMsgNo()]"+ quoteVo.getMsgForMsgNo() +"[getAddMsg()]"+ quoteVo.getAddMsg() ); 
		 
		    j91di50a.printInfo("A"); // ALL  [slog�� Ȯ�ΰ���]  
		}
		
		boolean rtnBl = false;
		if(j91di50a.getO_Result() != null && !"0".equals(j91di50a.getO_Result())){			// 1 : success, 0 : fail
			rtnBl = true;
		}
		logger.debug("[/QuoteController.java] [addStock()] --> [rtnBl]"+ rtnBl +"[getO_reg_date()]"+
		j91di50a.getO_reg_date() +"[msg]"+ msgInfoMap.get(j91di50a.getMsgNo()) +"[j91di50a.toString()]"+ 
		j91di50a.toString() +"[j91di50a.toString()]"+ j91di50a.toString() );  
		
		HashMap<String, Object> hmap = new HashMap<String, Object>();
		hmap.put("status", rtnBl);  
		hmap.put("msg", msgInfoMap.get(j91di50a.getMsgNo()));
		hmap.put("msgNo", j91di50a.getMsgNo());
		JSONObject resultJson = JSONObject.fromObject(hmap);
		logger.debug("[/QuoteController.java] [addStock()] --> [msg]"+ msgInfoMap.get(j91di50a.getMsgNo()) 
		+"[resultJson.toString()]"+ resultJson.toString() );
		
		response.setContentType("text/html");
		PrintWriter writer				= response.getWriter();
		writer.print(resultJson.toString());
		writer.flush();
		writer.close(); 
}
==============================================================================================================

- AJAX �ߺ� ȣ�� ����
$(document).ready(function() {
    $('#foo').bind('click', function() {
        doSomething();
    });
});
 
var doSomething = function(){
    $('#foo').unbind('click');
 
    $.ajax({
        type: "POST",
        url: "some.aspx"
    }).done(function() {
        $('#foo').bind('click', function() {
            doSomething();
        });
    });
}
==============================================================================================================
 
������������������� 2014.04.17(��) �۾� ����������������  
---> 07:00 ~ 21:00 --> 

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj
19��. �Խ��� ��ġ ���� ���� ���� �ϵ��� ���� ==> �Ϸ�(��ġ ����)
==> http://localhost:8080/hmpg/stkCm/spceExpt/spceExptMain.do
==============================================================================================================

- ���ϸ� ��� �ּ� �ޱ�
<%
/*
	###############################################################
	�ý��۸� : Home > Stock Community > Space for Expert > Space for Expert Main
	���ϸ�	:	/wsid/wapps/ROOT/WEB-INF/jsp/hmpg/stkCm/spceExpt/spceExptMain.jsp
					(/hmpg/stkCm/spceExpt/spceExptMain.do)
	�ۼ���	:	2014-04-17
	�ۼ���	:	���¸�
	����		:	Space for Expert Main(List)
	------------------------------------------------------------------------
	������	:	2014-04-17
 	������	:	���¸�
	��������   : Expert�� Board�� ������ �з� �ڵ�(01401: STOCK ANALYSIS, 01402: REQUEST STOCK ANALYSIS,  
					1301: QUOTES/THEME, 01302: RECOMMENDATION) �۾� �� Display
	###############################################################
*/
%>

<%
/*
	###############################################################
	�ý��۸� : Home > Stock Community > Space for Expert[Space for Expert Left(���� �޴�)]
	���ϸ�	:	/wsid/wapps/ROOT/WEB-INF/jsp/hmpg/layout/lnb3.jsp
	�ۼ���	:	2014-04-17
	�ۼ���	:	���¸�
	����		:	Space for Expert Left(���� �޴�)
	------------------------------------------------------------------------
	������	:	2014-04-17
 	������	:	���¸�
	��������   :	�Խ��� ��ġ ���� ���� �߰�
	###############################################################
*/
%>
==============================================================================================================

13��. ���� ���� ���  ==> AP 2�� ȣ���(AP ��ü ������ ��� ��)
==> /QuoteController.java, /quoteMain.jsp, /J91DI50A.java
http://117.103.37.28/hmpg/quote/quoteMain.do
==============================================================================================================
 
������������������� 2014.04.18(��) �۾� ���������������� 
---> 07:00 ~ 21:00 --> ����(����(�����): (��)JTREE ������� ��)

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj 
29��. ���� �߱�: J18DI001.dih	==>  @@@@
==> /MembScsnController.java, /pop_stockSearch.jsp, /J18DI001.java
==============================================================================================================

- AP �α� ����
[wadmin@_DEV_~]:   tail -f /dwsid/scs/mcicli/log/SCSJNI.log                    ==> AP �α� ����(���� ����)  @@@
[wadmin@_DEV_~]:  grep 'Open.j16DI010_04/07 20:37' /dwsid/scs/mcicli/log/SCSJNI.log -A90 -B60 | less       
==> �α� ��ȸ @@@ --> Exception, ERROR
close() Connection close START		====> ���� ���� @@@
Java_SCSJNI_start host[					====> ���� ���� @@@
==============================================================================================================

- �������� ����
1. ���� �޽��� : javax.el.PropertyNotFoundException: Property 'o_Volume' not found on type com.bestez.common.tr.ntr.J 
2. ���� : �������� ö�� ���� �Ǵ� ���ǵǾ� ���� �������(ù���ڰ� �빮�ڿ��� ������ �߻��ϱ⵵ ��)
==============================================================================================================

������������������� 2014.04.19(��) �۾� ����������������
---> 09:00 ~ 18:00

- ������
11:55 ���
12:25 �����͹̳� ����
12:30 ���� ���
05:00 ���� ����͹̳� ����
05:05 �ý�(�ýú�: 4,500��)
05:15 �Ͱ�(������)
05:20 ��ħ
10:00 ���
12:00 �߽�(�����: �翺, ����)
13:30 �ý�(�μ� ������ �¿���: 5����)
14:30 �Ű��ֿ� ����
14:48 �Ű��ֿ� ���(KTX)
17:00 ���￪ ����
18:00 �Ͱ�
19:00 ����(���)
23:00 ��ħ
==============================================================================================================

������������������� 2014.04.20(��) �۾� ����������������
---> 09:00 ~ 18:00

�������౸
06:45 ���
07:00 �������� ��õ������ ��(�������� ��)
07:30 �ű��ʵ��б�
07:40 ȭ���
08:30 ����(8:7 ��)
11:20 ����
11:50 �߽�(������): ���� ��
12:30 ����
13:00 �Ͱ�
14:00 ����
17:00 ���
17:10 ����
19:00 ����
23:00 ��ħ
==============================================================================================================
 
������������������� 2014.04.21(��) �۾� ����������������
---> 07:00 ~ 21:00 --> ���� ȸ��(�輱�� ������ ��Ʈ���� �༭ �ο�)

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj
19��. �Խ��� ��ġ ���� ���� ���� �ϵ��� ���� ==> �Ϸ�
==> /SpceExptController.java, /spceExpertAdminbdmanagement.do 
==============================================================================================================

36��. Event ��� ����(Thumbnail) ==> �߰� ���: �Ϸ�
http://www.dwsec-id.com/hmpg/custSvc/evnt/eventCU.do#
==============================================================================================================

1��. ���°��� ���� ��� ==> �Ϸ�
06. Investor Account: http://117.103.37.28/hmpg/myPage/onlnAcntEstbl/onlnTrBnftRegC.do 
1) /pop_printFormCIMB.do, /pop_printFormRDI.do
==============================================================================================================

- HTML �ҽ� �����(HTML �ҽ� ����)
1. http://localhost:8080/hmpg/stkCm/spceExpt/spceExpertAdminbdmanagement.jsp(ȭ��)
2. F12 ����
3. �ҽ� ������ ������ Ŭ��(Elements, Netowrk, Sources...)
4. ���ϴ� �̹��� Ŭ��  ==> <ul class="exp_bdlist" id="boardList">
5. Styles(������ �޴�)���� ����
.exp_container .exp_contents .exp_bdlist {
	float: left;
	background: #fff;
	border: solid 1px #cacaca;
	padding: 15px 0;
	width: 278px;
	margin: 20px 0 20px 32px;
} 
==============================================================================================================
 
������������������� 2014.04.22(ȭ) �۾� ���������������� 
---> 07:00 ~ 21:00 --> ������ �̻� (��)JTREE ã�ƿ�(����: ����)

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj 
29��. ���� �߱�(J18DI001.java)	==>  @@@@
01. Gainers/Losers(%)  ==> /MembScsnController.java, /pop_stockSearch.jsp
02. Gap Up/Down
==============================================================================================================

- jquery animate
1.  http://jqueryui.com/demos/animate
2. http://viralpatel.net/blogs/2010/03/understanding-jquery-animate-function.html
3. http://blog.naver.com/lyeong13?Redirect=Log&logNo=70155570176 
4. http://117.103.37.28/cmmn/popup/pop_stockSearchMain.do  
5. http://kin.naver.com/qna/detail.nhn?d1id=1&dirId=1040202&docId=182126592&qb=aWZyYW1lIGphdmFzY3JpcHQ=
&enc=utf8&section=kin&rank=2&search_sort=0&spq=0&pid=R1TFQwpySDlssv/rnbossssssuN-349796&sid=U1WnfwpyVlgAAD-rGjc
==============================================================================================================

������������������� 2014.04.23(��) �۾� ����������������
---> 07:00 ~ 21:00 -->  

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj 
29��. ���� �߱�(J18DI001.java)	==>  @@@@
01. Gainers/Losers(%)  ==> /MembScsnController.java, /pop_stockSearch.jsp
02. Gap Up/Down	==> �Ϸ�
03. Rebound after pullback	==> �Ϸ�
04. Near today��s high		==> �Ϸ�
05. Transaction volume surge 	==> �Ϸ�		
06. High turnover 			==> �Ϸ�
07. Near limit high/ low 	 
==============================================================================================================

- Eclipse SVN�� �̿��ؼ� ������Ʈ �����ޱ�
1. URL ==> http://mobilegen.tistory.com/37
2. svn://117.103.37.28/repository --> jtree / 1234 
==============================================================================================================

- ��±�� ������(���¸�) �ۼ�
1. ���־󷡺����丮(��) �̽���
==============================================================================================================

������������������� 2014.04.24(��) �۾� ����������������  
---> 07:00 ~ 21:00 --> ����(�д� �ӳ��������)

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj 
- 29��. ���� �߱�(J18DI001.java)	==> �Ϸ�  @@@@
01. Gainers/Losers(%)  ==> /MembScsnController.java, /pop_stockSearch.jsp
02. Gap Up/Down	==> �Ϸ� 
==============================================================================================================

- ȸ������ �Ϸ� ������ ��ũ ���� ==> �߰� ���: �Ϸ�
http://117.103.37.28/hmpg/membEntrc/entrc/signupEnd.do
Go To Open Account --> http://www.dwsec-id.com/hmpg/userGuide/acntEstblMeth.do?lnbIdx=3 
G To Guide Page --> http://www.dwsec-id.com/hmpg/userGuide/userGuideMain.do?lnbIdx=1
==============================================================================================================

1��. ���°��� ���� ��� ==> �Ϸ� 
06. Investor Account: http://117.103.37.28/hmpg/myPage/onlnAcntEstbl/onlnTrBnftRegC.do 
1) /pop_printFormCIMB.do, /pop_printFormRDI.do
==============================================================================================================

- ���� 
��. ���ͺ� �Ͻ� : 2014.04.24 ���� 11:30 (11:20�б��� ���� ��Ź�帳�ϴ�.)
��. ���ͺ� �μ� : ������� �ڴ뼱 ���� (010-7979-0815)
��. ���ͺ� ��� : ��⵵ ������ ����1�� �ӳ�������� (�൵ ����)
http://map.naver.com/?dlevel=12&x=127.102423&y=37.3411052&stationId=109003&enc=b64
��. ������: �����뵿(641�� ����) => ����Ÿ�(8201�� ����) => �ӳ����������[1�ð� 6�� �ҿ�]
��. ������: �ų�����.BSX����(8201�� ����) => ����Ÿ�(8201�� ����) => �ӳ����������[42�� �ҿ�]
--------------------------------------------------------------------------------------------------------

- ����2
10:00 (��)����Ʈ��(�ų����� ��ó) ���
10:10 �ų�����(8201�� ����) ���
10:40 �ӳ� ��� ������ ����
10:50 �ӳ� ������� 1�� �κ� ����(����)
11:20 (��)������� �ڴ뼱 ���� ����(010-7979-0815)
11:30 ����(13��): PM, ����, �����
11:50 ���� 
12:00 �߽�(���� 1�� �Ĵ�: 3õ 5���)
13:30 ����(1�� �κ�): ���� ���� ==> 5�� 1�� ����ϱ�� �� 
14:00 ����
14:10 �ӳ� �������(8201�� ����) ���
14:40 �ų����� ����
15:00 �ͻ�
16:00 ��)������� ���� �湮(�ڴ뼱 ���忡�� ������ �ݳ� ��Ź��)
16:30 �ͻ�
==============================================================================================================

- IBK�������- POST ������(11�� 30�� ����)
���� : �ڱݼ�Ź���� - STR(���ǰŷ�), CTR(������ݰŷ�) ����
��ų : JAVA, AnyFrame, DB2, Struts + ���� ����
�Ⱓ : 05.01 ~ (5M/M / 6M/M)
��� : �߱� 2��
��� : ����
��� : KOSA ���� ����
-------------------------------------------------------------------------------------------

-  IBK������� POST������ ������ý��� �籸��(13�� 30�� ����) ==> �հݵ�
- ���� : ���� - ��������
- ��ų : JAVA, Oracle, Anyframe, Batch
- �Ⱓ : 5�� 1�� ~ 9�� 30��(4����)
- ��� : �߱� 5��
- ��� : ����IT����
==============================================================================================================

- ���� ��Ʈ�� ���(��) ==> ���� �߼�(IBK �ý��� SI �������/���� ����(E hyuk@ibksystem.co.kr, 010-7105-3168)
1. �𵨸�: MSI GT638DX-i7, �ø����ȣ(Serial Number): GT683DX-685XKRK111000258, PCID: E276CC26D2F59E4D0AFE386A23AC 
==============================================================================================================

������������������� 2014.04.25(��) �۾� ����������������
---> 07:15 ~ 19:30 --> 2. �߽�[����: (��)JTREE 2�ֳ�(������ ��)], ����

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj 
- ��õ�� �̸��� üũ  ==> �߰� ��� 
1. ȸ�� ���Խ� ��õ email(power3j@gmail.com) ���� ==> asdfg01010101/1234567 
2. ��õ ���� ȸ���� �α��� �ڱ� ���̵�(��: power3j)�� �α���
MGM Mgt(http://117.103.37.28/hmpg/myPage/mgmMgmt/pgmRank.do)����
Send rdferranl mail�� ���� �߼�
3. Online Account Open(http://117.103.37.28/hmpg/myPage/onlnAcntEstbl/custInfoRegC.do?lnbIdx=2) ���� 
Recommender E-MAIL Address üũ �����Ͽ� ��� �����
==============================================================================================================
 
-- ��õ�� ���� ��ȸ @@@@@@ ==> MGM Mgt���� ���� �߼۽� ���̺� �����
SELECT *
--COUNT(1) RCMD_EMAIL_CNT 
FROM A0T117M
WHERE 1 = 1
     --AND RCMD_EMAIl = 'power3j@gmail.com'   --��õ EMAIl
ORDER BY RCMD_DATE DESC, RCMD_TIME DESC
; 
----------------------------------------------------------------   

- ȸ�� ����(/signupStart.do) 
/CmmnTrController.java ���Ͽ���
@RequestMapping(value="/tr/signupTR.do")
public @ResponseBody String signup(@ModelAttribute("a11ou26Vo") A11OU26Vo a11ou26Vo
								, HttpServletRequest request
								, HttpServletResponse response
								, HttpSession session ) throws Exception { 
		a11ou26Vo = cmmnTrService.signup(a11ou26Vo);
}

/CmmnTrServiceImpl.java ���Ͽ���
public A11OU26Vo signup(A11OU26Vo vo) throws Exception {
	A11OU26  a11ou26 = new A11OU26(); 

	/*** Input ***/ 
	a11ou26.setServiceName("A11OU26");
	a11ou26.setRcmdEmail(vo.getRcmdEmail()); /** RcmdEmail **/  
} 
==============================================================================================================

19��. �Խ��� ��ġ ���� ���氡���ϵ��� ���� ==> �Ϸ�
==> http://localhost:8080/hmpg/stkCm/spceExpt/spceExpertAdminbdmanagement.do
==============================================================================================================

������������������� 2014.04.26(��) �۾� ����������������
---> 07:15 ~ 21:00 

- �ָ�
07:45 ���
08:00 ����(���)
08:50 ����(���� ����): ���»���ΰ�
09:30 ����
09:50 ������ ���º�: �߾Ӿƿ﷿
10:10 ����
10:20 ��(���� �����, �Ž��Ľ� �Ʒ���: 4��, ��Ƽ�����S �μ�: 2��, ���): ������౹
10:30 �Ͱ�
11:50 �߽�
13:00 ����
16:00 ���
16:10 �����
16:50 ���� -> ����õ
17:30 ���� ����ġ(ÿ��Ȧ ���): �����ö���Ÿ�
18:10 ���� ����ġ(���� ���): �����ö���Ÿ�
18:30 ����
18:40 �Ÿ��� --> ������Ա���
19:00 ����(�߰��� ö�� ���� + �����縮): �����״߰���
19:40 ����((��)��������): �翺
20:10 �Ͱ�
23:00 ��ħ
==============================================================================================================

- �Ƶ� ����ġ(������)
1. �Ͻ�: 2014�� 9�� 21(��) 15�� ~ 17�� 30�� 
2. ���: ���� �ö��(�Ÿ��� 3�� �ⱸ) 3�� ÿ��Ȧ
 1) ���� ���Ǳ� �ſ��� 35(���Ǳ� �Ÿ��� 1638-1 ���Ÿ�� 3��)
 2) http://cafe.naver.com/wf8822, 
     http://place.map.daum.net/17077251, 02-878-3830
3. �Ĵ�: 60��(3����, �ַ� ����(3õ��)) => 100����� ����[4�� 26��(��) 18�ÿ� ����]
 1) �Ĵ� ����: 3�� 6õ�� --> Ÿ������ E(�Ͽ��� 2��: 5õ�� ����), �Ұ�  E: õ�� ����
4. �ݾ�: ����(30����[27����]) ==> ���� 30���� ������
5. ��Ÿ
 1) Ŀ�� �̺�Ʈ ������ ���� ���� ==> �Ĵ�: 2�� 9õ��, ����: 25���� --> Ŀ�� �̹�Ʈ 1�� �� �Ǹ� ������
 2) ���ǰ, �ǻ�, ȭ���� ������.
------------------------------------------------------------------------------------------------------

-  ���� �ö�� Check List
1. ��� ���� �غ� ����
1) �������̺� ����: 4*6: 8��(���ڿ�)
                            3*5 or ���Ի�����: 10 ~ 15��(���� Ʈ����)
2) �̺��� ������(3 ~ 5��) �� ���ǰ ����: ��� ���� ����� ���·� ������ �ּ���,

2. ���� ������(���ں�)
1) ����ġ �Ѵ� ���� ������ ��ü���� ���ڸ� �������ϴ�.
2) �ƱⰡ �¾���� ���� ������ ���� 100 ~ 200��, ������ 5~ 6���� ���ϵ忡 �����ֽø� �˴ϴ�.
2) ������ ���η� �غ��� �ֽô°� �����ϴ�.

3. ����Ʈ�� �ʴ��� ��û
1) ����Ʈ�� �ʴ��� ��û�� ��� 2 ~ 3�� ���� "����Ʈ�� �ʴ��� ��û ���" ���������� ������ �ּ���.
2) �Ʊ� ���� 4 ~ 5���� �÷��ֽø� ���� ���� �� �ٷ� �����Ǽ� �ֽ��ϴ�.

4. �Ʊ� ����
1) �Ʊ� ���� ������ ���� ���� ����
  2) �Ʊ� ��ǰ�鵵 �غ�Ǿ� ������ �縻�̳� Ÿ����� ���� �غ��� �ּ���.

5. ��Ÿ
1) ��� ���� ���� 2���� �����ϰ� ���� 5�� ���� ��ȭ �ֽø� ���� ������ īƮ�� ������ ���� ���ϴ�.
------------------------------------------------------------------------------------------------------

- ����ġ �ǻ�(SU ���� 2��)
1. SU �Ѻ�: �ƺ�, ���� --> 12���� ==> �ǻ��� 1�� ���� �����ϰ� ������[���� ����: 010-3758-9868]
2. SU Make up: ���� --> 8����
3. Rogel Baby Studio(����ġ ������ �Կ�)
1) A��: 35����(10% DC) --> 31�� 5õ��  -->  �ٹ�
2) B��: 28����(10% DC) --> 25�� 2õ��  -->  �ٹ�
3) C��: 323��(10% DC) --> 20�� 7õ��
6. ��Ÿ
1) ������ �Կ� ���� 5���� ������  ==> 8�� 21�ϱ��� �ؾ�� 100% ȯ�ҵ�
2) ������ �Կ��� ���ε� 35���� ������
==============================================================================================================

 ������������������� 2014.04.27(��) �۾� ����������������
---> 13:40 ~ 21:00 --> 

�������౸
06:45 ���
07:00 �������� ��õ������ ��(�������� ��)
07:30 �ű��ʵ��б�
07:40 ȭ���
08:30 ����(1:1 ��) ==> ������
09:30 ����(1:0 ��) ==> �ѻ�� ȸ����̶� ������ �ο�
10:30 ����(1:0 ��): ����Ʈ ��
11:20 ���� 
12:00 �Ͱ�
12:10 �߽�(���)
13:40 ���
18:00 ����
22:30 ���
21:30 �Ͱ�
23:00 ��ħ
==============================================================================================================
 
- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj 
19��. �Խ��� ��ġ ���� ���氡���ϵ��� ���� ==> �Ϸ�
==> http://localhost:8080/hmpg/stkCm/spceExpt/spceExpertAdminbdmanagement.do
==============================================================================================================

������������������� 2014.04.28(��) �۾� ����������������
---> 07:10 ~ 21:00 --> 4���� ö�� Ȯ��, �������� ��� ��ȣ �����Ͽ� �ı�
 
- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj
29��. ���� �߱�(J18DI001.java)	==> �Ϸ� @@@@
01. Gainers/Losers(%)  ==> /MembScsnController.java, /pop_stockSearch.jsp 
==============================================================================================================

- ����Ʈ �� ����
https://www.youtu.kr/?document_srl=1026154
http://daddycat.blogspot.kr/2011/08/jquery-mobile-list.html 
����̳� ���� ����Ʈ���� ����¡ ó���� ���� �ʰ� �Ϻθ� ��� �� '�� ���� (10)' �̷� ������ ���� ������ ǥ�����ְ� Ŭ�� �� 
����Ʈ�� �������� ��ũ��Ʈ �����Ҹ��Ѱ� �������?
http://www.9lessons.info/2009/12/twitter-style-load-more-results-with.html
http://demos.9lessons.info/loadmore.php
==============================================================================================================

- �޿�������Ȯ�μ� ����
ȸ�簡 �޿�������Ȯ�μ��� �������־�� �� �ǹ��� �����ϴ�. 
�뵿�ο� �ӱ�ü�� ������ �����ϸ� �뵿�ο��� �ӱ�ü�ҳ����� Ȯ���� �ְ� �ֽ��ϴ�. 
���Ǵ� ��������߼ұ��û ����Ͻ������� 031-201-6805~8���� ���ֽñ� �ٶ��ϴ�.
==============================================================================================================

������������������� 2014.04.29(ȭ) �۾� ���������������
---> 07:10 ~ 21:00 --> �μ��ΰ輭 �ۼ�
 
- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj 
19��. �Խ��� ��ġ ���� ���氡���ϵ��� ���� ==> �Ϸ�
==> http://localhost:8080/hmpg/stkCm/spceExpt/spceExpertAdminbdmanagement.do
==============================================================================================================

1��. ���°��� ���� ��� ==> �Ϸ�
06. Investor Account: http://117.103.37.28/hmpg/myPage/onlnAcntEstbl/onlnTrBnftRegC.do 
1) /pop_printFormCIMB.do, /pop_printFormRDI.do
==============================================================================================================

- �μ��ΰ輭 ���� �ۼ�
1. �Ϸ�
==============================================================================================================

- ��Ʈ�� ���� ����(����, ��� ��û, ü�� �Ⱓ ����)
01. Hi Korea: http://www.hikorea.go.kr/pt/main_kr.pt  
==> �ο�����: http://www.hikorea.go.kr/pt/DownLoadTemplPopupR_kr.pt
02. ��Ʈ�� ����: http://vnm-hanoi.mofa.go.kr/korean/as/vnm-hanoi/civil_appeal/download/commom/index.jsp
03. ȣġ�� �ѿ����: http://vnm-hochiminh.mofa.go.kr/korean/as/vnm-hochiminh/civil_appeal/download/common/index.jsp
==============================================================================================================

- �θ�â���� iframe �Լ� ȣ��
01. /popup/pop_stockSearchMain.jsp ���Ͽ��� @@@
<script type="text/javascript">
<!-- 
	function fnSearchStock(strNo) {  	/** ��ȸ �Լ�() */
		var cW = document.getElementById('ifr').contentWindow;  // �θ�â���� iframe �Լ� ȣ��
		var strMoreViewLastPageNo = cW.ifrFromGetVaule();
		$("#moreViewLastPageNo").val(strMoreViewLastPageNo);	// iframe���� �޾ƿ� strMoreViewLastPageNo ���� 
		more View Last Page No�� �ֱ�
	}

	divEle.innerHTML="<input type='image' onclick='btnSearchStock(2)' src='/img/hmpg/stock/expert/btn_ok.gif' alt='Search Results' />";
//-->
</script>

<form id="frm" name="frm" method="post">
	<input type="text" name="moreViewPageNo" id="moreViewPageNo" value="${membScsnVo.moreViewPageNo}" style="width:20px"/> 
	<input type="text" name="moreViewLastPageNo" id="moreViewLastPageNo" value="${membScsnVo.moreViewLastPageNo}" style="width:20px"/> 

	<div class="btn_center2">
		 <input type="image"  onclick="btnSearchStock('1')" src="/img/hmpg/quote/btn_search_results.gif" alt="Search Results" />		
		 <!--// Search Results //--> 
	</div> <br>
</form>  

	<iframe name="ifr"  id="ifr"  src="/cmmn/popup/pop_stockSearchMain_if.do"  style="width:95%;height:400px;overflow:hidden"
	frameborder="0"></iframe>   <!-- // ��ȸ ���(iframe ����)  //-->       
	<input type="text" name="txt_view_search"  id="txt_view_search"  style="width:0px"/>  <!--// tex focus //-->

	<!--  more view -->
	 <div class="btn_center2">[${membScsnVo.moreViewPageNo}, ${membScsnVo.moreViewLastPageNo}]
		<c:choose> 
			<c:when test="${moreViewListNo != membScsnVo.moreViewLastPageNo}">  <!--// ViewList No�� �������� �ƴϸ� //-->  
				 <input type="image"  onclick="btnSearchStock('2')" src="/img/hmpg/quote/btn_search_results.gif" alt="Search Results" />		
				 <!--// more view //-->  
			</c:when> 
		<c:otherwise>  <!--// ViewList No�� ������ �̸� //-->
				[ViewList No�� ������]<!--// more view //-->
		</c:otherwise>
		</c:choose> 
	 </div>     

02. /popup/pop_stockSearchMain.jsp ���Ͽ��� @@@
<script type="text/javascript">
<!-- 
	function ifrFromGetVaule() {    
		var moreViewLastPageNo2 = "${membScsnVo.moreViewLastPageNo}";  
		return moreViewLastPageNo2;
	} 
//-->
</script>

<div id="divMoreView" class="btn_center2"></div>
==============================================================================================================

- iframe���� �θ�â���ִ� �Լ� ȣ��
var abc = window.open();
abc.window.�Լ���(); 
http://phpschool.com/gnuboard4/bbs/board.php?bo_table=qna_html&wr_id=152231&sca=&sfl=wr_subject%7C%7Cwr_content
&stx=iframe+%C1%A2%B1%D9+%B9%E6%B9%FD&sop=and
==============================================================================================================
 
������������������� 2014.04.30(��) �۾� ����������������
---> 07:00 ~ 18:00 --> ����, ö��, ������ �޿��� ������ 15�Ͽ� ��� �شٰ� ��
 
- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj 
19��. �Խ��� ��ġ ���� ���氡���ϵ��� ���� ==> �Ϸ�
==> http://localhost:8080/hmpg/stkCm/spceExpt/spceExpertAdminbdmanagement.do
==============================================================================================================

- Online Account ���� ==> �Ϸ�
1. Visit ���� �� �湮�Ͻ� üũ �� �޽��� ���
http://localhost:8080/hmpg/myPage/onlnAcntEstbl/custInfoRegC.do?lnbIdx=2
/dwsid/wapps/ROOT/WEB-INF/jsp/hmpg/myPage/onlnAcntEstbl/custInfoRegC.jsp	==> Visit ���� �� �湮�Ͻ� üũ �� �޽��� ���
==============================================================================================================
 
- MGM ����
/hmpg/userGuide/mgmMain.do
/dwsid/wapps/ROOT/WEB-INF/classes/dwsec/id/hmpg/userGuide/web/UserGuideControlle.class ==> MGM ����
==============================================================================================================

- ����
1��. ���°��� ���� ��� ==> �߰� ����� �߻��ؼ� ���۾� �ؾ� ��(���� ����)
13�� ���� ���� ��� ==> AP 2�� ȣ�� ������ ���� ����
16�� ��Ź Ŀ�´�Ƽ ���̱ۺ���==> ����
19�� ��Ź Ŀ�´�Ƽ ���� ��ġ���� ==> ����
29�� ���� �߱� ==> AP 2�� ȣ�� ������ ���� ����
==============================================================================================================

- SVN ��ġ
1. Window > Eclipse Marketplace > find: svn ==> Subversive SVN ��ġ
2. svn://117.103.37.28/repository --> jtree/1234,  tamario/1234
==============================================================================================================

- 4�� JTREE �������� û��(10��)
1. �渮(������ ����)���� ������(93,450��)�� ��� ���� ����ؼ� ����
==============================================================================================================

- PCA ��� FC ����
1. ���Ӽ� FC �ѿ츮����: 010-5096-3056, imsunch@hanmail.net
2. ����, Ŀ�� ��� ���� ==> ���� ���� �߰� �����϶�� ��, �Ϻ���� ������, �Ƶ� ���� ���� ����
==============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������