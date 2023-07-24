

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2014.04) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2014.04.01(화) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 21:00

- 대우증권 인도네시아법인 홈페이지 재구축 Prj
1번. 계좌개설 은행 출력
1) My Page > Online account open(/custInfoRegC.jsp) ==> Print(/pop_printForm.jsp) 
2) ==> 기존 파일: /A11OU27.java  ==> 기존 파일 재사용
//출력화면이동
function goPrint(){
	$('#frm').attr({action:'/hmpg/myPage/onlnAcntEstbl/print.do', method:'post', target:'_blank'}).submit();
}
==============================================================================================================

33번.	Open Online Account	국적코드 AP수정(C0T028C 테이블을 읽어야함)  ==> 완료
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

28번. 회사 정보(Stock Info): J16DI010.dih
==> /QuoteController.java, /quoteMainStockInfo.jsp, /J16DI010.java
==> 기존 파일: /J11OI112.java
==============================================================================================================

- 준회원 Download application Forms 출력 에러
1. TB_CTNS 테이블에 URL 등록이 안되어 있음
2. /hmpg/myPage/onlnAcntEstbl/acntApplVisitC.do 등록 함
==============================================================================================================

- 삼성전자 게임인프라 구축 프로젝트 면접  ==> 15시에 면접 갔는데 TA 구하고 있다고 해서 취업 실패
1. 일시: 15시 30분 [(주)이노트리 이태호 부장(010-4584-2468)]
2. 장소: 서울 송파구 신천동 7-13번지 향군잠실타워 11층(잠실역 7번 출구): 3412번 버스[차병원 -> 잠실중(36분 소요)]
2. 기타: 면접 후 업체에 전화할 것
==============================================================================================================

- 구글 회원 가입(장인 어른) ==> 완료
1. https://accounts.google.com/UserSignUpIdvChallenge
2. dinhchackde@gmail.com / tamario0508
3. 휴대폰: 010-4821-8121
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.04.02(수) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 21:00

- 대우증권 인도네시아법인 홈페이지 재구축 Prj
1번. 계좌개설 은행 출력
06. Investor Account: http://117.103.37.28/hmpg/myPage/onlnAcntEstbl/onlnTrBnftRegC.do  ==> /onlnTrBnftRegC.jsp
==> 온라인 거래혜택(Online Trade Benefit Registration) 페이지  ===> 출력(새창 띄우기)
==============================================================================================================

- 준회원 Download application Forms 출력 에러
1. 운영서버에서 에러
1) 에러 내용: Password is not yet inserted.
2. 원인: /hmpg/myPage/onlnAcntEstbl/acntApplVisitC.do 타면서 a11ou27 AP가 에러가 남
==> 계좌구분(acntType) (01:Regular, 02:Day Trading, 03:Margin Trading, 04:Syariah) 
==============================================================================================================

- 운영 서버 준회원 개인 정보 저장 요청
1. 현재 상황: 개발 서버 Online account open(http://117.103.37.28/hmpg/myPage/onlnAcntEstbl/custInfoRegC.do?lnbIdx=2)에서
계좌구분(acntType)이 0인 준회원이 온라인계좌개설 방문 신청(Delivery: Visit)을 할 경우 개인 정보를 AP(A11OU27)에
담아서 개발서버로 보내는 면 Hots 서버에서 개인정보를 조회할 수 있는 프로그램 개발 ==> 2월말에 개발용 Hots 서버에서
정상 조회되는 것을 확인 함
==============================================================================================================

- 개발 서버 준회원 개인 정보 저장 Flow
1. Online account open(http://117.103.37.28/hmpg/myPage/onlnAcntEstbl/custInfoRegC.do?lnbIdx=2)에서
Delivery: Visit(체크), Download application Forms(클릭)
2. AP(A11OU27)에서 개인정보 저장해서 Hots 서버에서 보냄
3. Hots 서버에서 개인정보 조회
==============================================================================================================

- 회원 가입 Flow(개발 서버에서 수행)
1. Sing-uphttp://117.103.37.28/hmpg/membEntrc/entrc/signupStart.do): (클릭)
2. 회원 가입 후 임시 비밀번호 이메일로 자동 발송 됨 ==> 이메일 발송 에러나면 임시 비밀번호 알 수 없음
3. 로그인(http://117.103.37.28/login.do) 화면에서 ID / 임시 비밀번호로 로그인 수행
4. 로그인 변경(http://117.103.37.28/tr/loginTR-pwdChangeView.do) 화면에서 로그인 변경
5. tamario3 / 12345 --> tamario@naver.com
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.04.03(목) 작업 ■■■■■■■■■■■■■■■
---> 07:40 ~ 19:40 --> 택배 보냄(장인 중고폰): 택배비(4천 5백원)

- 대우증권 인도네시아법인 홈페이지 재구축 Prj
1번. 계좌개설 은행 출력
06. Investor Account: http://117.103.37.28/hmpg/myPage/onlnAcntEstbl/onlnTrBnftRegC.do  ==> /onlnTrBnftRegC.jsp
==> 온라인 거래혜택(Online Trade Benefit Registration) 페이지  ===> 출력(새창 띄우기)

21. Line of Business
pop_printForm.do에서 radio 박스 ==> /pop_printFormRDI.do에서 text 박스
==============================================================================================================

- choose 문(jsp파일에서)
<c:choose><c:when test="${a11ou27.cid_sect eq null or a11ou27.cid_sect eq '' or a11ou27.cid_sect eq '01'}">	 
<!--// KTP 이면 //--> 
	<p><input class="inputStyle01" type="text"  id="passport_no" name="passport_no" value="${a11ou27.passport_no}" 
	style="width: 811px;" readonly="readonly" /></p>	
	</c:when> 
	<c:when test="${ a11ou27.cid_sect eq '02'}"> 
		<input type="text" name="ststus"  value="등록" readonly></c:when>
<c:otherwise>   <!--// Paspor & KITAS 이면 //--> 
 <p><input class="inputStyle01" type="text" id="cid_no" name="cid_no" value="${a11ou27.cid_no}" style="width: 376px;" 
 readonly="readonly" /></p>
</c:otherwise>
</c:choose>    
==============================================================================================================

- checkbox를 radio 버튼 기능으로 만들기(jsp파일에서)
<script type="text/javascript"> 
<!--     
	$("document").ready(function() { 
		/** chkSex_sect checkbox 변경 이벤트 */				
		 $("input:checkbox[chkSex_sect]").change(function(){ 
			$("input:checkbox[chkSex_sect]").prop("checked", false);   // 1. 전체 해제 
			this.checked='checked';  // 2. 선택한 하나의 check box 만 선택
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
NullPointerException 예외는 객체가 생성되어 있지 않은상태에서 참조를 할때 발생합니다
==============================================================================================================

- 현용, 호수 만남
19:40 퇴근
19:50 닭꼬치집(현용과 내가 쏨(2만원 냄))
20:40 당구(3등): 당구비(5,900원)
23:00 선술집(내가 쏨:55,000원)
23:30 종료(내가 먼저 나옴)
24:00 지하철
24:30 귀가
24:50 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.04.04(금) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 --> 운영 반영(메일 URL 바꿀 것)

- 대우증권 인도네시아법인 홈페이지 재구축 Prj
1번. 계좌개설 은행 출력
06. Investor Account: http://117.103.37.28/hmpg/myPage/onlnAcntEstbl/onlnTrBnftRegC.do  ==> /onlnTrBnftRegC.jsp
==> 온라인 거래혜택(Online Trade Benefit Registration) 페이지  ===> 출력(새창 띄우기)

21. Line of Business
pop_printForm.do에서 radio 박스 ==> /pop_printFormRDI.do에서 text 박스
==============================================================================================================

- 게시판 자동추가 수정
1. /boardListR.do ==> 게시판 설명 추가
==============================================================================================================

- 메일 발송시 에러
1. A31OU02 AP 메일 발송시 Contnents 없이도 발송 되게 수정 요청 ==> 추가 요청 사항
2. Tambah komentar anda (optional) 빼고 메일 발송 불가능 합니다....Message 안 넣으면 에러가 남
==> A31OU02 AP를 수정 요청해서 처리함
--------------------------------------------------------------------------------------------------------

- 운영 서버 여부 확인
CtnsAuthInfo cai = CtnsAuthInfo.getInstance();
String dwsidSys = cai.getDwsidSys();	// D:개발, R:운영 
String sendSeverDnsNm = "http://117.103.37.28";

 if(dwsidSys.equals("R")){	// 운영 서버 이면
	 sendSeverDnsNm = "http://www.dwsec-id.com";
 }
==============================================================================================================

- 개발 서버 file(/dwsid/wdocs/files)
[wadmin@_DEV_/usr/share/ant]: find ~/ -type f -name etrading_wts.html -exec ls -al {} \;
-rw-rw-r-- 1 wadmin wadmin 4957 Apr  4 11:20 /dwsid/wdocs/files/WTS/etrading_wts.html
1. Sample_Opening_Account.zip 파일로 개발서버에 올림
/dwsid/wdocs/files/Sample_Opening_Account.zip
==============================================================================================================

29번. 종목 발굴: J18DI001.dih	==> 2014.04.06(일) @@@@
==> /QuoteController.java, /pop_stockSearch.jsp, /J18DI001.java
==> java.lang.Exception: The user ID is not yet registered. Please check again. 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.04.05(토) 작업 ■■■■■■■■■■■■■■■
---> 09:00 ~ 18:00  

▦조기축구  
08:00 기상
08:40 조식(식빵)
09:10 혜강 도어락 고장 신고 및 수리(무료)
12:50 중식(짜장면, 알탕, 순두부): 포마토
14:30 지하철(서울대입구역 <-> 사당역)
15:00 홈플러스 남현점 방문
17:00 종료 
18:00 귀가 
18:40 쇼핑
18:50 석식(칼국수: 루옌): 생각보다 맛있는 집
19:30 귀가
19:40 택배(모유 유축기, CU 편의점): 응아에게 보냄
20:30 귀가
21:30 분유, 기저귀, 쌀 주문(인터넷)
23:00 취침 
==============================================================================================================

- 혜강 도어락 고장 신고 및 수리(09시) 
1. 혜강  도어락 S/N: H127-MS100V00874
1. 2014.04.03(목) 도어락에 비밀번호를 넣으면 반응이 없음(3~4번 정도하면 소래내면서 열림)
2. 도어락에 일련번호를 확인하고 고장 접수 ==> 토욜 09시에 와서 문 여닫는 부분 교체함
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.04.06(일) 작업 ■■■■■■■■■■■■■■■ 
---> 09:00 ~ 18:00  

▦조기축구  
06:45 기상
07:00 국민은행 봉천동지점 앞(태훈이형 차) 
07:30 신구초등학교 
10:00 게임(3:1 승)
09:00 게임(2:0 승)
10:00 게임(3:1 승)
10:30 종료
10:40 태훈이형 차
11:00 출근((주)제이트리 차병원 사거리 삼정 호텔 뒷편 회사)
12:00 중식(갈비탕, 삼우정): 현용이가 회사 카드로 쏨
13:00 근무(MGM Top Ranking 조회 9개로 가능하도록 수정)
13:50 근무(종목 발굴 개발)
18:00 석식(짜장면, 탕수육): 현용이가 회사 카드로 쏨
19:00 종료
19:30 귀가
19:50 시장(떡뽑기, 순대, 바나나)
20:00 귀가
23:00 취침 
==============================================================================================================

29번. 종목 발굴
==> /QuoteController.java, /pop_stockSearch.jsp, /J18DI001.java
==> java.lang.Exception: The user ID is not yet registered. Please check again.
// stockSearch_Gainers_Losers
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.04.07(월) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 

- 대우증권 인도네시아법인 홈페이지 재구축 Prj
29번. 종목 발굴
==> /QuoteController.java, /pop_stockSearch.jsp, /J18DI001.java
==> java.lang.Exception: The user ID is not yet registered. Please check again. 
==============================================================================================================

- 공통 함수
D:\02. TAMA Project\2008.06(교보생명 홈 리뉴얼_클라우드나인)\00. KBLCM(소스)\src\kblcm\common\util
CMDateCheck.java, CMDateUtil.java, CMNumberUtil.java, CMMoneyUtil.java
/kdbdw/src/main/java/dwsec/id/cmmn/util/CommonUtil.java
/CommonUtil.java 파일에서  @@@
public class CommonUtil {
    /* 
     * null값 '0'로 가져오기
    * @return "yyyyMMdd" 세달전 날짜
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

/MembScsnController.java 파일에서 @@@
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

		j18di001.setPrevval_flag(comUtil.getStringToNull(membScsnVo.getPrevval_flag()));	// 02. 전일거래량구분
	{
}
==============================================================================================================

28번. 회사 정보(Stock Info): J16DI010
==> /QuoteController.java, /quoteMainStockInfo.jsp, /J16DI010.java
==> 기존 파일: /J11OI112.java

model.addAttribute("j11OI112" , j11OI112);
model.addAttribute("j16DI0102", j16DI0102); 
==============================================================================================================

13번. 관심 종목 등록 
==> /QuoteController.java, /quoteMain.jsp, /J91DI50A.java(J12OI110 이전꺼)
1) 관심 종목 등록: http://117.103.37.28/hmpg/quote/quoteMain.do
==> Interest Stock에 등록됨: http://localhost:8080/hmpg/myPage/interStock/interStockListR.do?lnbIdx=1
1) 조회 조건(Select Group: 99 추가), 삭제 가능하게 처리
if(spceExptVo.getProfImgFileNm() != null && ! ("").equals ).spceExptVo.getProfImgFileNm()) {}  =	=> null값 처리
==============================================================================================================

- ajax 조회, 등록(/lnb3.jsp 파일에서 @@@)  ==> 표준 
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.form.min.js"></script>

<script type="text/javascript">
<!--      
	var boardObj = {    // 게시판 배열
		targetData : [
				<c:forEach var="board" items="${commonLeftSpceBoardList}" varStatus="status">
			{intIndexSortOrder:"${status.count}", blbdId:"${board.blbdId}", blbdNm:"${board.blbdNm}", blbdNo : "${board.blbdNo}"}
			<c:if test="${!status.last}">
			,
			</c:if>
				</c:forEach>
		 ] 
	};

	function fnSelectDivision1(strDivision1){			/** Division1 onchange 이벤트 처리 */  
		var intDivision1 = parseInt(strDivision1); // Division1 value 
		var intDivision2 = parseInt($("select[name=slctDivision2]").val()); // Division1 value 값 
	} 
		 
	// Add to My Stock 버튼 
	function btnSave() {   
		if($.trim($("#searchTitleNo").val()) == '3') {		/* 조회 제목 번호가 3 이면(03. Rebound after pullback)  */  <!-- // radio 버튼 //-->
			$('#input1').val( $("input:radio[name=rdoFluctuation]:checked").val());			// 11. 입력1[Fluctuaion for the past 5 days]   

		 else if($.trim($("#searchTitleNo").val()) == '13') {		/* 조회 제목 번호가 13이면(13. Golden Cross/Dead Cross) */    <!-- //  select 박스 //-->  
			var intDivision1 = parseInt($("select[name=slctDivision1]").val())		// Division1 value 
			var intDivision2 = parseInt($("select[name=slctDivision2]").val());		// Division2 value 
		  
			if(intDivision1> intDivision2 ) {		// Dvision1의 값이 Division2의 값보다 크면
				strSearchYN = "N";
				alert("Dvision1의 값이 Division2의 값보다 클수가 없습니다.");  
			} else { 
				$('#input1').val($("select[name=slctPeriod1]").val());			// 11. 입력1
				$('#input2').val($("select[name=slctDivision1]").val());			// 12. 입력2  
		}
	
		var totCntPrice_flag = $('input:checkbox[name=price_flag]:checked').length; 	// 04. 현재가 구분 //>   <!-- //  check 박스 //-->
		if(totCntPrice_flag> 0 ){  // price_flag 체크 되어 있으면
			$("#price_flag").val("1");	// 04. 현재가 구분 
		} else {
			$("#price_flag").val("0");	// 04. 현재가 구분 
		} 

		if($.trim($("#dragboardSortOrder").val()) == null || $.trim($("#dragboardSortOrder").val()) == '') {  // 변경이 없으면
			alert("The Order of Board is not changed.");
			return false;   // 없어도 됨  
		} else {
			fnSaveSortOrder();
			return false;
		}
	} // end of btnSave()
	
	/** 저장 이벤트 처리 */
	function fnSaveSortOrder() { 
		var sortOrderArray = new Array(); 
		var arryDragboardSortOrder = new Array();  
		$("#lnbFrm>input[name=ctnsClasCd]").val(ctnsClasCd);   // 새로운 값 POST로 보내기
 
		if("${membScsnVo.searchTitleNo}" != "0") { 		// 조회 제목 번호가 존재하면 ==> .java에서 
																			map.addAttribute("membScsnVo", membScsnVo); 로 받은 값
			var position=$('#searchResult').offset(); // 위치값
			$('html,body').animate({scrollTop:position.top},1500); // 이동
		} 
		alert("[/pop_stockSearchMain.jsp] [stockSearch()] ==> [membScsnVo.searchTitleNo]"+ "${membScsnVo.searchTitleNo}" );   
		
		if("${membScsnVo.#searchTitleNo}" ==  null || "${membScsnVo.#searchTitleNo}" == "") { //==> [searchTitleNo]"+ $("#searchTitleNo").val() );
		// 조회 제목 번호가 존재하면 ==> 	form에서 받은 값
			alert('Please enter a #searchTitleNo.');
			$("#searchTitleNo").focus();
			return false;
		}
		alert("[/pop_stockSearchMain.jsp] [stockSearch()] ===> [searchTitleNo_92]"+ $("#searchTitleNo").val() );   
		arryDragboardSortOrder = $("#dragboardSortOrder").val().split(",");  // split 구분 
		 
		$.each(boardObj.targetData, function(index, item){ 
			sortOrderArray.push(arryDragboardSortOrder[index].trim()+"||"+item.blbdId+"||"+item.blbdNm +"||"+item.blbdNo);   
			 // 게시판 배열 재 배치
		}); 
		
		$('<input>').attr({type:'hidden', id:'sortOrderArray', name:'sortOrderArray', value:sortOrderArray.toString()}).appendTo($("#lnbFrm"));			
		// 현재 변경된 상태 값 - json Object
 		 
		var form	= $("#lnbFrm"); 
		$('#lnbFrm').ajaxSubmit({ 
			url		:  '<%=request.getContextPath() %>/hmpg/stkCm/spceExpt/sortOrderSave.do',		// action URL
			type 		: 'post', 
			data 		: form.serialize(), 
			dataType 	: 'json', 
			success 	: function (data){   
				if(data.status) { // 저장 성공이면
					//alert("[/lnb3.jsp] [fnSaveSortOrder()] [success] ==> [data.strSaveOK]"+ data.strSaveOK );
					if("Y" == data.strSaveOK) {   // ID가 존재하면
						alert('Post has been registered.');	 

						var strForumId = "${spceExptVo.forumId}"; 
						var strExptId = "${spceExptVo.exptId}";   
						//$('<input>').attr({type:'hidden', id:'forumId', name:'forumId', value:strForumId}).appendTo($("#lnbFrm"));  // 포럼 ID 
						//$('<input>').attr({type:'hidden', id:'exptId', name:'exptId', value:strExptId}).appendTo($("#lnbFrm"));  		// 전문가 ID   
						
						$('#lnbFrm').attr({action:'<%=request.getContextPath() %>/hmpg/stkCm/spceExpt/spceExptMain.do', method:'post'}).submit();  
						//==> return URL(POST 방식)
  
						//	$(location).attr('href','<%=request.getContextPath() %>/hmpg/stkCm/spceExpt/spceExptMain.do?forumId=${spceExptVo.forumId}
							&exptId=${spceExptVo.exptId}');		//==> return URL(GET 방식)
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
	<input type="tex" name="searchTitleNo" id="searchTitleNo"  value="1" /> <!-- // 조회 제목 번호 //-->
	  
	<input type="image" id="btnSave" class="mt9" src="/img/hmpg/stock/expert/btn_ok.gif" alt="Save" onclick="return btnSave()" /> 
	<!--// Board Sort Save //-->   

	<input type="checkbox"  name="price_flag"  value="1" />		<!-- // 04. 현재가 구분 //-->	<!-- // chekc 박스 //-->

	<div class="select_option4">	<!--// 13. Golden Cross/Dead Cross //-->	<!-- // select 박스 //-->
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
			<li><span>Fluctuation for<br />the past 5 days</span>	<!-- // 11. 입력1[Fluctuaion for the past 5 days] //-->  <!-- // radio 버튼 //-->
			<label><input type="radio" name="rdoFluctuation" id="rdoFluctuation" value="0" checked="checked"/> 10%</label>
			<label><input type="radio" name="rdoFluctuation" id="rdoFluctuation" value="1" /> 20%</label></li> 
		</ul>
	</div>

</form>
--------------------------------------------------------------------------------------------------------

- /SpceExptController.java 파일에서 @@@
@Controller
public class SpceExptController {
	/**
	 * 
	 * 17. Space for Export  게시판 위치 순서 수정
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
		 
		if(spceExptVo.getUpdateFlag() != null && spceExptVo.getUpdateFlag().equals("Y")) { 	//수정일 경우
			String sortOrderArray = request.getParameter("sortOrderArray");
			
			String rowList[] = sortOrderArray.split(",");  // 배열 분리하기
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
			rtnBl	= spceExptService.updateSortOrder(listVo);		// 17. Space for Export  게시판 위치 순서 수정  
		} catch(Exception e){} 
		 
		if(rtnBl == true) { 
			strSaveOK	= "Y";
		}
		
		HashMap<String, Object> hmap = new HashMap<String, Object>();
		hmap.put("status", rtnBl); 
		hmap.put("strSaveOK", strSaveOK);   // 저장 성공 여부
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

■■■■■■■■■■■■■■■■■■ 2014.04.08(화) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 21:00 --> (주)제이트리 무급 휴가 직원들에게 통보

- 대우증권 인도네시아법인 홈페이지 재구축 Prj
19번. 게시판 위치 순서 변경가능하도록 수정 
==> http://localhost:8080/hmpg/stkCm/spceExpt/spceExptMain.do

01. 네이버 블로그: http://admin.blog.naver.com/AdminCategoryView.nhn?blogId=tamario
--------------------------------------------------------------------------------------------------------

- 카테고리 관리 TEST
tree.html
http://kin.naver.com/qna/detail.nhn?d1id=1&dirId=1040202&docId=105111834&qb=amF2YXNjcmlwdCDsubTthYzqs6Drpqwg
6rSA66as&enc=utf8&section=kin&rank=1&search_sort=0&spq=0&pid=R0LntspySDVsssCnMUssssssssR-143064
&sid=%2BkBsgG8GTLAaR0poBXlcyg%3D%3D

http://blueb.co.kr/blueb/

http://decafbad.com/2009/07/drag-and-drop/api-demos.html#newschool

http://corehtml5canvas.com/code-live/ch02/example-2.7/example.html

http://m.mkexdev.net/58

http://www.webreference.com/programming/javascript/mk/column2/index.html  ===> 정확

http://isocra.com/2007/07/dragging-and-dropping-table-rows-in-javascript/#demo
--------------------------------------------------------------------------------------------------------

- Ext JS 4.2 트리 드래그 & 드롭(Tree Drag & Drop) 
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

- DWS ID 로그 조회
[wadmin@_DEV_~]:  cd /usr/share/tomcat/logs          ==> 개발 서버  @@@
[wadmin@_DEV_~]:  grep 'Open.j16DI010_04/07 20:37' /usr/share/tomcat/logs/catalina.out -A90 -B60 | less       
				==> 로그 조회 @@@ --> Exception, ERROR
[wadmin@IWS01I ~]:  find ~/ -type f -name createBoardMgmt.jsp -exec ls -al {} \;               ===> 파일 찾기  @@@
==============================================================================================================

- 외국인등록증 갱신
★ 필요 서류 
0. 신청서  ==> 인터넷에서 다운(application form.doc) 받아서 작성할 것
1. 여권 원본 
2. 여권 사진(크기: 3.5 * 4.5 cm)
3. 신랑 혼인관계증명서  ==> 인터넷 출력할 것
4. 신랑 주민등록등본	 ==> 인터넷 출력할 것
5. 수수료: 40,000원
6. 자녀 있으면 갱신 기간이 2년인지 확인할 것 
==============================================================================================================

- 외국인등록증 갱신
1. 입국 1년 후 재 갱신할 것(만기되기 2개월 전부터 가능) 
2. 루옌 입국:  2013.04.13(토)
3. 루옌 외국인증 신청: 2013.04.15(월)
4. 예약: www.g4f.go.kr 
5. 외국인등록 > 외국인등록 등록시 제출서류:http://www.hikorea.go.kr/pt/InfoDetailR_kr.pt
 1) 체류 자격: 결혼이민(F-6)
6. 서울 출입국관리사무소: 서울시 양천구 목동동로 151, ☎02-2650-6212 
1) 서울대입구역 --> 신도림역--> 양천구청역(1번 출구) --> 목동 13단지 --> 양천공원 --> 서울 출입국관리사무소
==============================================================================================================

09:20 1층 업무[여권 원본, 사진, 혼인관계증명서, 주민등록등본(배우자), 신원보증서(배우자) 제출]
09:30 3층 업무[수입인지 구입(2만원), 여권, 비자 복사(200원)] 
09:40 2층 업무[외국인등록증 수수료(2만원), 택배(4천원) 신청])
09:50 1층 업무[처리 업무 확인증 제출, 신부 지문 등록] ==> 완료(2주정도 소요)
----------------------------------------------------------------------------------------

- 가족관계증명서 인터넷발급(무료)
1. http://efamily.scourt.go.kr ===> 본인 확인을 위한 추가 정보 입력에서 등록기준지를 선택할 것('기림로'로 조회) 
2. 본인 확인을 위한 추가 정보 입력(http://efamily.scourt.go.kr/pt/PtFrrpApplrInfoAddInq.do)
 1) 등록기준지(클릭) > 등록기준지 조회(새창)
 도로명 주소(Tab) >
 가. 시도: 경상북도(선택), 시군구: 포항남구(선택)
 나. 도로명: 기림로(입력) > 조회(클릭)
 다. 도로명 주소(법정동): 경북 포항시 남구 오천읍 기림로 1392번길 (오천읍)(클릭)
 라. 건물번호: 지상(선택) 138 의  ==> 확인(클릭) --> 창 닫힘
 2) 등록기준지: 경북 포항시 남구 오천읍 기림로 1392번길 138  ==> 조회(클릭)
==============================================================================================================

- 가족관계증명서 인터넷발급(무료)
1. http://efamily.scourt.go.kr ===> 본인 확인을 위한 추가 정보 입력에서 등록기준지를 선택할 것('기림로'로 조회)
 
2. 본인 확인을 위한 추가 정보 입력(http://efamily.scourt.go.kr/pt/PtFrrpApplrInfoAddInq.do)
 1) 등록기준지(클릭) > 등록기준지 조회(새창)
 도로명 주소(Tab) >
 가. 시도: 경상북도(선택), 시군구: 포항남구(선택)
 나. 도로명: 기림로(입력) > 조회(클릭)
 다. 도로명 주소(법정동): 경북 포항시 남구 오천읍 기림로 1392번길 (오천읍)(클릭)
 라. 건물번호: 지상(선택) 138 의  ==> 확인(클릭) --> 창 닫힘
 2) 등록기준지: 경북 포항시 남구 오천읍 기림로 1392번길 138  ==> 조회(클릭)

==============================================================================================================
 - 공인인증서 갱신
(1년에 한번씩(4월) SC은행 시행할 것(집에서 할 것)) ==> 1년이 경과하면(보통 5월 11일)
1. 갱신 정보
1) 갱신일: 2012.05.09(수)
2) 계좌번호: 130-20-502841(13020502841) ==> 보안카드 3, 4, 5자리: 429
3) 사용자ID: tamario/ta****9
4) 인증서 유효기간: 2012/05/09 ~ 2013/05/08
-----------------------------------------------------------------------------------------------------------
 
- 공인인증서 재발급(SC은행:http://www.standardchartered.co.kr/gw/index.html) ==> 분실시
0) 인증센터 > 공인인증서 신규 재발급 > 개인
1) 갱신일: 2012.05.09(수)
2) 계좌번호: 640-21-0052-309( 640210052309 ) ==> 보안카드 뒷4자리: 3971
3) 사용자ID: tamario/ta****9
-----------------------------------------------------------------------------------------------------------

- 공인인증서 갱신(증권)
동양증권:http://www.myasset.com/myasset/mainindex.html
1. 계좌번호: 710-01-003202 (71001003202)
2. 보안카드 일련번호: 211(2,3, 4번째 자리)
==============================================================================================================

- 브리즈 모바일뱅킹(https://www.standardchartered.co.kr/np/kr/cms/pl/wb/Breezebanking.jsp)
1. PC에 있는 공인인증서를 스마트폰으로 보내기
2. 스마트폰에 있는 공인인증서를 PC로 보내기 할 경우
-------------------------------------------------------------------------------------------------------

- 인증서 관리(공인인증서 내보내기, 가져오기) ==> email 로 전송(USB 사용 안함)
1. 브리즈 모바일뱅킹 -> 인증센터 -> 인증서 관리
https://open.standardchartered.co.kr/service/cert/CtManage?menuid=OIB05050000000000&;;langCode=KR#
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.04.09(수) 작업 ■■■■■■■■■■■■■■■ 
---> 07:15 ~ 21:00

- 대우증권 인도네시아법인 홈페이지 재구축 Prj
13번. 관심 종목 등록 
==> /QuoteController.java, /quoteMain.jsp, /J91DI50A.java 
1. 관심 종목 등록: http://117.103.37.28/hmpg/quote/quoteMain.do
2. 관심 종목 등록: http://117.103.37.28/hmpg/quote/quoteCmprn.do
3. 관심 종목 조회(J12OI110): http://117.103.37.28/hmpg/myPage/interStock/interStockListR.do?lnbIdx=1
 1) 삭제 처리 
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2014.04.10(목) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 --> 석식(삼겹살): (주)제이트리 사장님이 쏨

- 대우증권 인도네시아법인 홈페이지 재구축 Prj
16번. 스탁 커뮤니티 마이글보기
==> http://localhost:8080/hmpg/stkCm/spceExpt/spceExptMain.do
1) 스탁 커뮤니티 마이글보기: 자기가 쓴 글을 자기가 볼 수 있도록 (스탁 커뮤니티 일반, 공개용 글) 좌측에 리얼타임 쿼트, 
스탁 애널리스트 메뉴추가

- 컨텐츠 분류 코드(01401: STOCK ANALYSIS, 01402: REQUEST STOCK ANALYSIS, 01301: QUOTES/THEME, 01302: RECOMMENDATION) */
1. 01401: STOCK ANALYSIS
http://localhost:8080/hmpg/stkCm/stkAnal/stockAnalListR.do?ctnsClasCd=01401
2. 01402: REQUEST STOCK ANALYSIS
http://localhost:8080/hmpg/stkCm/stkAnal/rqstStockAnalListR.do?ctnsClasCd=01402
3. 01301: QUOTES/THEME
http://localhost:8080/hmpg/stkCm/realTimeQuot/quotThemeListR.do
4. 01302: RECOMMENDATION
http://localhost:8080/hmpg/stkCm/realTimeQuot/rcmdListR.do 
==============================================================================================================

19번. 게시판 위치 순서 변경가능하도록 수정
==> http://localhost:8080/hmpg/stkCm/spceExpt/spceExptMain.do
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.04.11(금) 작업 ■■■■■■■■■■■■■■■
---> 09:00 ~ 18:00  

- 외국인 체류기간 연장 신청
08:00 기상
08:00 조식(식빵)
08:30 집출발(최소 8시에는 출발할 것)
08:40 서울대입구역(6-2) -> 신도림역 -> 양천구청역
09:30 서울출입국관리소 도착(대기 20명)
10:30 1층 업무[여권 원본, 사진, 혼인관계증명서, 주민등록등본(배우자), 신원보증서(배우자) 제출]
10:40 1층 우리은행 업무[수입인지 구입(3만원)]
10:50 1층 업무[외국인등록증 받기 ==> 2017년 4월 13일까지 연장(자녀 존재시 3년 연장)]
10:55 종료
11:10 양천구청역 -> 용산역
11:50 포커스온엔트 도착 ==>  Micro SD 교환 받음(http://www.ppomppu.co.kr/zboard/view.php?id=phone&no=1510339)
	1) 포커스온엔트(나진 14동 전자월드 535호: 서울 용산구 청파로 109): 02-704-3885]
12:20 신용산역 -> 사당역 -> 서울대입구역
12:50 중식(유가네 철판 볶음밥)
13:20 귀가(수종 혼자 돌보기: 울어서 침대에 놔두었는데 침대에서 떨어짐 ==> 애기 침대에 끼어서 안 다침)
        --> 루옌 베트남 모임에 감
16:20 루옌 도착
17:00 삼성전자서비스 봉천점 방문(봉천역 4번 출구): 청소기 A/S(자전거로 가지고 감): 청소기 몸체 부분 필터를 열어서
	청소 해주라고 함 ==> 삼성 먼지따로 청소기 VC-CD700M, 가격: 140,000원
17:30 귀가 
17:40 짐정리(아기 포대기(힙시트) 안가지고 감)
18:40 석식
19:30 집출발
19:40 약국(멀미약 구입: 멀미 심해서 2알 먹음)
19:50 서울대입구역 -> 서울역
20:30 서울역 도착
21:00 서울역 출발(유모차, 백): 루옌, 수종 2주간 포항에서 생활한다고 짐이 많았음
23:18 신경주역 도착
23:25 큰누나 차(택시 대기소 옆 주차장에서 만남)
23:55 큰누나 집 도착
24:20 취침
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2014.04.12(토) 작업 ■■■■■■■■■■■■■■■
---> 09:00 ~ 18:00  

- 포항행
09:00 기상(큰누나집)
09:40 조식
10:00 루옌 파마(큰누나)
11:50 이발, 염색(큰누나)
13:30 중식(짜장면, 탕수육)
15:00 큰누나 집 출발(령경에게 용돈 3만원 줌) ==> 루옌 멀미약 먹음(오바이트 없었음)
16:00 포항집 도착
17:00 쇼핑
18:00 부모님 용돈(20만원 드림)
18:50 석식(김밥)
23:00 취침 
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2014.04.13(일) 작업 ■■■■■■■■■■■■■■■
---> 09:00 ~ 18:00  

- 포항행2
09:00 기상(포항집)
09:40 조식
11:00 영일대 해수욕장 구경(루옌, 수종)
11:50 쇼핑
14:30 중식(김밥)
15:00 낮잠
19:00 토와집(아기 옷 선물)
19:20 케익(루옌 입국 1주년 기념)
20:00 석식(삼계탕)
23:30 제사(증종 할아버지)
24:20 집출발
24:30 택시(두호동 주민센터)
24:40 포항 고속터미널(10분도 안 걸림)
01:00 서울행 고속버스
04:50 강남터미널
05:30 (주)제이트리 도착(신논현역 근처)
05:50 취침(의자에서)
08:00 기상
08:20 다오(베트남 언니)에게 송금 ==> 처가에서 고모(토와)에게 120만원 빌려줌(총 120만원 내 통장에서 송금: 차감할 것)
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2014.04.14(월) 작업 ■■■■■■■■■■■■■■■ 
---> 08:00 ~ 21:00 --> 고속버스로 새벽에 도착 후 바로 출근

- 대우증권 인도네시아법인 홈페이지 재구축 Prj
- 구글 온라인 광고(스크립트 추가 건)  ==> 추가 요건(완료)
1. http://localhost:8080/hmpg/main/main.do ==> /jsp/hmpg/layout/header.jsp
==============================================================================================================

- Space for Expert  ==> 추가 요건
0. Expert 권한으로 글쓰기 가능하도록 수정(현재: admin만 가능)
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

28번. 회사 정보(Company Profile): J16DI010.dih	==> 2014.04.14(월): 완료 @@@@
==> /QuoteController.java, /quoteMainStockInfo.jsp, /J16DI010.java
==> 기존 파일: /J11OI112.java 
==============================================================================================================

- 직원에게 관리자 권한 부여  ==> 추가 요건
1. 기존 등록된 ID: 1100007
2. 등록할 ID: 9000014
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2014.04.15(화) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 --> (주)제이트리에서 급여 절반만 수령(2,659,250원), 회식((주)제이트리 사장이 사줌)

- 대우증권 인도네시아법인 홈페이지 재구축 Prj
19번. 게시판 위치 순서 변경 가능 하도록 수정
==> http://localhost:8080/hmpg/stkCm/spceExpt/spceExptMain.do
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2014.04.16(수) 작업 ■■■■■■■■■■■■■■■ 
---> 07:00 ~ 21:00 --> 

- 대우증권 인도네시아법인 홈페이지 재구축 Prj
19번. 게시판 위치 순서 변경 가능 하도록 수정
==> http://localhost:8080/hmpg/stkCm/spceExpt/spceExptMain.do
==============================================================================================================

- 울트라 에디트(UltraEdit)와 에디트 플러스(EditPlus) 줄간격 서로 맞추기
(http://blog.naver.com/guile77?Redirect=Log&logNo=20008888565) 

   #)이유...작성한 소스 코드의 가독성과 단지 줄정렬때문에 특정 에디터를 쓰게 될때...
   #)두 편집기의 탭과 들여쓰기 간격 맞추는것만 정리했씀
 
(예) 둘다 탭크기를 4로 설정할때.. 
1)울트라 에디트
* 고급-설정-편집
--->     탭 크기 값 : 4
       들여쓰기 공백 : 4
2) 에디트 플러스
* 도구-기본 설정-항목-파일-설정및 구문강조-설정및 구문강조-탭/들여쓰기
--->         탭(T) : 4
       들여쓰기(I) : 4
* 확인-적용-확인
#) 자동 들여쓰기 사용(E)가 체크되있어야 함
#) 혹시 안될땐 아래와 같이 양쪽에 모두 설정을 해준다.

* 문서-탭/들여쓰기
--->          탭 : 4
       들여쓰기 : 4 
---------------------------------------------------------------------------------------------------------
 
Edit : ODC
Sample : UltraEdit-32 ver. 10.10c
             EditPlus v2.12(147)
#) 테스트 당시 글꼴 기본설정
글꼴 : 굴림체, 글꼴모양 : 보통(Regular), 크기 : 10
==============================================================================================================

- 이벤트 상세 URL 호출
1. HOTS(당사 트레이딩 시스템)내에 추가로 홈페이지 특정 페이지 링크
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
http://www.dwsec-id.com/cmmn/ctnsArea.do?ctns_url=/hmpg/myPage/mgmMgmt/pgmRank.do  ==> 안 없어짐
 - User Guide > Open account :  ctns_url=/hmpg/userGuide/acntEstblMeth.do?lnbIdx=31
http://www.dwsec-id.com/cmmn/ctnsArea.do?ctns_url=/hmpg/userGuide/acntEstblMeth.do?lnbIdx=3   ==> 안 없어짐
 - Stock cummunity > Main : ctns_url=/hmpg/stkCm/main/stkCmMain.do
http://www.dwsec-id.com/cmmn/ctnsArea.do?ctns_url=/hmpg/stkCm/main/stkCmMain.do   ==> 안 없어짐
 - Stock cummunity > Real time quote : ctns_url=/hmpg/stkCm/realTimeQuot/quotThemeListR.do
http://www.dwsec-id.com/cmmn/ctnsArea.do?ctns_url=/hmpg/stkCm/realTimeQuot/quotThemeListR.do   ==> 안 없어짐
 - Stock cummunity > Stock analysis : /hmpg/stkCm/stkAnal/stockAnalListR.do 
http://www.dwsec-id.com/cmmn/ctnsArea.do?ctns_url=/hmpg/stkCm/stkAnal/stockAnalListR.do   ==> 안 없어짐
 - Stock cummunity > Space for Expert : ctns_url=/hmpg/stkCm/spceExpt/spceExptListR.do 
http://www.dwsec-id.com/cmmn/ctnsArea.do?ctns_url=/hmpg/stkCm/spceExpt/spceExptListR.do   ==> 안 없어짐
 - Stock cummunity > Servey : ctns_url=/hmpg/stkCm/srvy/srvyDtlR.do
http://www.dwsec-id.com/cmmn/ctnsArea.do?ctns_url=/hmpg/stkCm/srvy/srvyDtlR.do   ==> 안 없어짐

2. Event 페이지의 특정 URL 정보
http://www.dwsec-id.com/hmpg/custSvc/evnt/eventDtlR.do 
http://www.dwsec-id.com/hmpg/custSvc/evnt/eventDtlR.do?currRow=1&evntSeq=6
==============================================================================================================

- 관심 종록 등록 에러
 /wsid/wapps/ROOT/WEB-INF/jsp/hmpg/quote/quoteMainTranSum.jsp ==> 종목 회사정보 추가(02. Transaction Summary)
01. 현상: Add to My Stock 버튼을 하면 action URL을 /quoteMain-addStock.do 안 타고 /quoteMain.do를 탐
02. 원인: <script type="text/javascript" src="/js/jquery.form.min.js"></script>을 안 넣어서 그렇게 됨
---------------------------------------------------------------------------------------------------------

// Add to My Stock 버튼 
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
				if(msg.msgNo == "01426") {   // 중복 저장 이면
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

- 관심 종록 등록 에러2
/wsid/wapps/ROOT/WEB-INF/jsp/hmpg/quote/quoteMainTranSum.jsp ==> 종목 회사정보 추가(02. Transaction Summary)
01. 현상: alert("Unknown exception occurred."); 에러 발생
02. 원인: <input type="image" onclick="return fnAddStock()" src="/img/hmpg/quote/btn_addMystock_eng.gif" alt="Add to My Stock"  /> 
에서 onclick="return fnAddStock()"  안해줘서 그렇게 됨 
==============================================================================================================

- /QuoteController.java 파일에서 @@@  ==> 표준
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
		j91di50a.setServiceName("J91DI50A");		/// Header 파일 정보(서비스 네임 설정) ==> 관심 종목 등록(J91DI50A)
		//j91di50a.setHeader_PgmId("J91DI50A");	// Header 파일 정보
		
		/*** Input ***/ 		
		j91di50a.setUserId(tmp_user_id);					/** 01. UserId **/
		j91di50a.setSect_cd("S");								/** 02. sect_cd(Q : 조회, S : 등록, D : 삭제) **/
		j91di50a.setGroupNo("099");							/** 03. GroupNo **/
		j91di50a.setGroupNm("HOMEPAGE");			/** 04. GroupNm **/
		j91di50a.setSeq("00");									/** 05. Seq **/
		j91di50a.setStcdType("00");							/** 06. StcdType **/
		j91di50a.setStcd("1"+ quoteVo.getStcd());		/** 07. Stcd : 1StockCode 종목코드앞에 1을 붙혀서 보내시면 됨 **/  
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
		 
		    j91di50a.printInfo("A"); // ALL  [slog로 확인가능]  
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

- AJAX 중복 호출 방지
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
 
■■■■■■■■■■■■■■■■■■ 2014.04.17(목) 작업 ■■■■■■■■■■■■■■■  
---> 07:00 ~ 21:00 --> 

- 대우증권 인도네시아법인 홈페이지 재구축 Prj
19번. 게시판 위치 순서 변경 가능 하도록 수정 ==> 완료(위치 오류)
==> http://localhost:8080/hmpg/stkCm/spceExpt/spceExptMain.do
==============================================================================================================

- 파일명 헤더 주석 달기
<%
/*
	###############################################################
	시스템명 : Home > Stock Community > Space for Expert > Space for Expert Main
	파일명	:	/wsid/wapps/ROOT/WEB-INF/jsp/hmpg/stkCm/spceExpt/spceExptMain.jsp
					(/hmpg/stkCm/spceExpt/spceExptMain.do)
	작성일	:	2014-04-17
	작성자	:	진태만
	설명		:	Space for Expert Main(List)
	------------------------------------------------------------------------
	수정일	:	2014-04-17
 	수정자	:	진태만
	수정사항   : Expert가 Board와 컨텐츠 분류 코드(01401: STOCK ANALYSIS, 01402: REQUEST STOCK ANALYSIS,  
					1301: QUOTES/THEME, 01302: RECOMMENDATION) 글쓴 것 Display
	###############################################################
*/
%>

<%
/*
	###############################################################
	시스템명 : Home > Stock Community > Space for Expert[Space for Expert Left(공통 메뉴)]
	파일명	:	/wsid/wapps/ROOT/WEB-INF/jsp/hmpg/layout/lnb3.jsp
	작성일	:	2014-04-17
	작성자	:	진태만
	설명		:	Space for Expert Left(공통 메뉴)
	------------------------------------------------------------------------
	수정일	:	2014-04-17
 	수정자	:	진태만
	수정사항   :	게시판 위치 순서 변경 추가
	###############################################################
*/
%>
==============================================================================================================

13번. 관심 종목 등록  ==> AP 2번 호출됨(AP 자체 문제로 결론 냄)
==> /QuoteController.java, /quoteMain.jsp, /J91DI50A.java
http://117.103.37.28/hmpg/quote/quoteMain.do
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2014.04.18(금) 작업 ■■■■■■■■■■■■■■■ 
---> 07:00 ~ 21:00 --> 석식(삼겹살(삼우정): (주)JTREE 사장님이 쏨)

- 대우증권 인도네시아법인 홈페이지 재구축 Prj 
29번. 종목 발굴: J18DI001.dih	==>  @@@@
==> /MembScsnController.java, /pop_stockSearch.jsp, /J18DI001.java
==============================================================================================================

- AP 로그 보기
[wadmin@_DEV_~]:   tail -f /dwsid/scs/mcicli/log/SCSJNI.log                    ==> AP 로그 보기(개발 서버)  @@@
[wadmin@_DEV_~]:  grep 'Open.j16DI010_04/07 20:37' /dwsid/scs/mcicli/log/SCSJNI.log -A90 -B60 | less       
==> 로그 조회 @@@ --> Exception, ERROR
close() Connection close START		====> 로컬 서버 @@@
Java_SCSJNI_start host[					====> 개발 서버 @@@
==============================================================================================================

- 변수명의 오류
1. 오류 메시지 : javax.el.PropertyNotFoundException: Property 'o_Volume' not found on type com.bestez.common.tr.ntr.J 
2. 원인 : 변수명의 철자 오류 또는 정의되어 있지 않을경우(첫글자가 대문자여서 오류를 발생하기도 함)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.04.19(토) 작업 ■■■■■■■■■■■■■■■
---> 09:00 ~ 18:00

- 포항행
11:55 퇴근
12:25 강남터미널 도착
12:30 서울 출발
05:00 포항 고속터미널 도착
05:05 택시(택시비: 4,500원)
05:15 귀가(포항집)
05:20 취침
10:00 기상
12:00 중식(삼계탕: 루옌, 수종)
13:30 택시(두수 형님이 태워줌: 5만원)
14:30 신경주역 도착
14:48 신경주역 출발(KTX)
17:00 서울역 도착
18:00 귀가
19:00 석식(라면)
23:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.04.20(일) 작업 ■■■■■■■■■■■■■■■
---> 09:00 ~ 18:00

▦조기축구
06:45 기상
07:00 국민은행 봉천동지점 앞(태훈이형 차)
07:30 신구초등학교
07:40 화장실
08:30 게임(8:7 승)
11:20 종료
11:50 중식(설렁탕): 만원 냄
12:30 종료
13:00 귀가
14:00 낮잠
17:00 기상
17:10 쇼핑
19:00 석식
23:00 취침
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2014.04.21(월) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 --> 일정 회의(김선경 과장이 스트레스 줘서 싸움)

- 대우증권 인도네시아법인 홈페이지 재구축 Prj
19번. 게시판 위치 순서 변경 가능 하도록 수정 ==> 완료
==> /SpceExptController.java, /spceExpertAdminbdmanagement.do 
==============================================================================================================

36번. Event 등록 에러(Thumbnail) ==> 추가 요건: 완료
http://www.dwsec-id.com/hmpg/custSvc/evnt/eventCU.do#
==============================================================================================================

1번. 계좌개설 은행 출력 ==> 완료
06. Investor Account: http://117.103.37.28/hmpg/myPage/onlnAcntEstbl/onlnTrBnftRegC.do 
1) /pop_printFormCIMB.do, /pop_printFormRDI.do
==============================================================================================================

- HTML 소스 디버거(HTML 소스 보기)
1. http://localhost:8080/hmpg/stkCm/spceExpt/spceExpertAdminbdmanagement.jsp(화면)
2. F12 누름
3. 소스 툴에서 돋보기 클릭(Elements, Netowrk, Sources...)
4. 원하는 이미지 클릭  ==> <ul class="exp_bdlist" id="boardList">
5. Styles(오른쪽 메뉴)에서 보임
.exp_container .exp_contents .exp_bdlist {
	float: left;
	background: #fff;
	border: solid 1px #cacaca;
	padding: 15px 0;
	width: 278px;
	margin: 20px 0 20px 32px;
} 
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2014.04.22(화) 작업 ■■■■■■■■■■■■■■■ 
---> 07:00 ~ 21:00 --> 정종영 이사 (주)JTREE 찾아옴(석식: 삼겹살)

- 대우증권 인도네시아법인 홈페이지 재구축 Prj 
29번. 종목 발굴(J18DI001.java)	==>  @@@@
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

■■■■■■■■■■■■■■■■■■ 2014.04.23(수) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 -->  

- 대우증권 인도네시아법인 홈페이지 재구축 Prj 
29번. 종목 발굴(J18DI001.java)	==>  @@@@
01. Gainers/Losers(%)  ==> /MembScsnController.java, /pop_stockSearch.jsp
02. Gap Up/Down	==> 완료
03. Rebound after pullback	==> 완료
04. Near today’s high		==> 완료
05. Transaction volume surge 	==> 완료		
06. High turnover 			==> 완료
07. Near limit high/ low 	 
==============================================================================================================

- Eclipse SVN을 이용해서 프로젝트 내려받기
1. URL ==> http://mobilegen.tistory.com/37
2. svn://117.103.37.28/repository --> jtree / 1234 
==============================================================================================================

- 경력기술 프로필(진태만) 작성
1. 비주얼래보러토리(주) 이승행
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.04.24(목) 작업 ■■■■■■■■■■■■■■■  
---> 07:00 ~ 21:00 --> 면접(분당 머내기업은행)

- 대우증권 인도네시아법인 홈페이지 재구축 Prj 
- 29번. 종목 발굴(J18DI001.java)	==> 완료  @@@@
01. Gainers/Losers(%)  ==> /MembScsnController.java, /pop_stockSearch.jsp
02. Gap Up/Down	==> 완료 
==============================================================================================================

- 회원가입 완료 페이지 링크 수정 ==> 추가 요건: 완료
http://117.103.37.28/hmpg/membEntrc/entrc/signupEnd.do
Go To Open Account --> http://www.dwsec-id.com/hmpg/userGuide/acntEstblMeth.do?lnbIdx=3 
G To Guide Page --> http://www.dwsec-id.com/hmpg/userGuide/userGuideMain.do?lnbIdx=1
==============================================================================================================

1번. 계좌개설 은행 출력 ==> 완료 
06. Investor Account: http://117.103.37.28/hmpg/myPage/onlnAcntEstbl/onlnTrBnftRegC.do 
1) /pop_printFormCIMB.do, /pop_printFormRDI.do
==============================================================================================================

- 면접 
가. 인터뷰 일시 : 2014.04.24 오전 11:30 (11:20분까지 도착 부탁드립니다.)
나. 인터뷰 인솔 : 디와이즈 박대선 과장 (010-7979-0815)
다. 인터뷰 장소 : 경기도 성남시 구미1동 머내기업은행 (약도 참조)
http://map.naver.com/?dlevel=12&x=127.102423&y=37.3411052&stationId=109003&enc=b64
라. 교통편: 낙성대동(641번 버스) => 뱅뱅사거리(8201번 버스) => 머내기업정류장[1시간 6분 소요]
마. 교통편: 신논현역.BSX빌딩(8201번 버스) => 뱅뱅사거리(8201번 버스) => 머내기업정류장[42분 소요]
--------------------------------------------------------------------------------------------------------

- 면접2
10:00 (주)제이트리(신논현역 근처) 출발
10:10 신논현역(8201번 버스) 출발
10:40 머내 기업 정류장 도착
10:50 머내 기업은행 1층 로비 도착(독서)
11:20 (주)디와이즈 박대선 과장 만남(010-7979-0815)
11:30 면접(13층): PM, 팀장, 담당자
11:50 종료 
12:00 중식(지하 1층 식당: 3천 5백원)
13:30 면접(1층 로비): 이혁 팀장 ==> 5월 1일 출근하기로 함 
14:00 종료
14:10 머내 기업은행(8201번 버스) 출발
14:40 신논현역 도착
15:00 귀사
16:00 주)디와이즈 본사 방문(박대선 과장에게 출입증 반납 부탁함)
16:30 귀사
==============================================================================================================

- IBK기업은행- POST 차세대(11시 30분 면접)
업무 : 자금세탁방지 - STR(혐의거래), CTR(고액현금거래) 보고
스킬 : JAVA, AnyFrame, DB2, Struts + 금융 경험
기간 : 05.01 ~ (5M/M / 6M/M)
등급 : 중급 2명
장소 : 수지
비고 : KOSA 서류 제출
-------------------------------------------------------------------------------------------

-  IBK기업은행 POST차세대 계정계시스템 재구축(13시 30분 면접) ==> 합격됨
- 업무 : 대행 - 어음관리
- 스킬 : JAVA, Oracle, Anyframe, Batch
- 기간 : 5월 1일 ~ 9월 30일(4개월)
- 등급 : 중급 5명
- 장소 : 수지IT센터
==============================================================================================================

- 개발 노트북 사양(모델) ==> 메일 발송(IBK 시스템 SI 사업본부/팀장 이혁(E hyuk@ibksystem.co.kr, 010-7105-3168)
1. 모델명: MSI GT638DX-i7, 시리얼번호(Serial Number): GT683DX-685XKRK111000258, PCID: E276CC26D2F59E4D0AFE386A23AC 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.04.25(금) 작업 ■■■■■■■■■■■■■■■
---> 07:15 ~ 19:30 --> 2. 중식[정식: (주)JTREE 2주년(사장이 쏨)], 이행

- 대우증권 인도네시아법인 홈페이지 재구축 Prj 
- 추천인 이메일 체크  ==> 추가 요건 
1. 회원 가입시 추천 email(power3j@gmail.com) 기입 ==> asdfg01010101/1234567 
2. 추천 받은 회원이 로그인 자기 아이디(예: power3j)로 로그인
MGM Mgt(http://117.103.37.28/hmpg/myPage/mgmMgmt/pgmRank.do)에서
Send rdferranl mail로 메일 발송
3. Online Account Open(http://117.103.37.28/hmpg/myPage/onlnAcntEstbl/custInfoRegC.do?lnbIdx=2) 에서 
Recommender E-MAIL Address 체크 성공하여 계속 진행됨
==============================================================================================================
 
-- 추천인 정보 조회 @@@@@@ ==> MGM Mgt에서 메일 발송시 테이블에 저장됨
SELECT *
--COUNT(1) RCMD_EMAIL_CNT 
FROM A0T117M
WHERE 1 = 1
     --AND RCMD_EMAIl = 'power3j@gmail.com'   --추천 EMAIl
ORDER BY RCMD_DATE DESC, RCMD_TIME DESC
; 
----------------------------------------------------------------   

- 회원 가입(/signupStart.do) 
/CmmnTrController.java 파일에서
@RequestMapping(value="/tr/signupTR.do")
public @ResponseBody String signup(@ModelAttribute("a11ou26Vo") A11OU26Vo a11ou26Vo
								, HttpServletRequest request
								, HttpServletResponse response
								, HttpSession session ) throws Exception { 
		a11ou26Vo = cmmnTrService.signup(a11ou26Vo);
}

/CmmnTrServiceImpl.java 파일에서
public A11OU26Vo signup(A11OU26Vo vo) throws Exception {
	A11OU26  a11ou26 = new A11OU26(); 

	/*** Input ***/ 
	a11ou26.setServiceName("A11OU26");
	a11ou26.setRcmdEmail(vo.getRcmdEmail()); /** RcmdEmail **/  
} 
==============================================================================================================

19번. 게시판 위치 순서 변경가능하도록 수정 ==> 완료
==> http://localhost:8080/hmpg/stkCm/spceExpt/spceExpertAdminbdmanagement.do
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.04.26(토) 작업 ■■■■■■■■■■■■■■■
---> 07:15 ~ 21:00 

- 주말
07:45 기상
08:00 조식(라면)
08:50 병원(수종 감기): 모태산부인과
09:30 종료
09:50 아폴로 보온병: 중앙아울렛
10:10 종료
10:20 약(수종 감기약, 신신파스 아렉스: 4장, 안티프라민S 로션: 2개, 장모): 동보당약국
10:30 귀가
11:50 중식
13:00 낮잠
16:00 기상
16:10 집출발
16:50 숙고개 -> 도림천
17:30 수종 돌잔치(첼로홀 계약): 워터플라워신림
18:10 수종 돌잔치(사진 계약): 워터플라워신림
18:30 종료
18:40 신림역 --> 서울대입구역
19:00 석식(닭갈비 철판 볶음 + 고구마사리): 유가네닭갈비
19:40 구두((주)유리구두): 루옌
20:10 귀가
23:00 취침
==============================================================================================================

- 아들 돌잔치(진수종)
1. 일시: 2014년 9월 21(일) 15시 ~ 17시 30분 
2. 장소: 워터 플라워(신림역 3번 출구) 3층 첼로홀
 1) 서울 관악구 신원로 35(관악구 신림동 1638-1 삼모타워 3층)
 2) http://cafe.naver.com/wf8822, 
     http://place.map.daum.net/17077251, 02-878-3830
3. 식대: 60명(3만원, 주류 별로(3천원)) => 100명까지 가능[4월 26일(토) 18시에 예약]
 1) 식대 정상가: 3만 6천원 --> 타임할인 E(일요일 2부: 5천원 할인), 소개  E: 천원 할인
4. 금액: 돌상(30만원[27만원]) ==> 계약금 30만원 결제함
5. 기타
 1) 커플 이벤트 성공시 할인 적용 ==> 식대: 2만 9천원, 돌상: 25만원 --> 커플 이번트 1명만 더 되면 성공함
 2) 답례품, 의상, 화장은 별도임.
------------------------------------------------------------------------------------------------------

-  워터 플라워 Check List
1. 행사 당일 준비 사항
1) 포토테이블 사진: 4*6: 8장(액자용)
                            3*5 or 명함사이즈: 10 ~ 15장(포토 트리용)
2) 이벤츠 서눔ㄹ(3 ~ 5개) 및 답례품 선물: 행사 당일 포장된 상태로 가져다 주세요,

2. 성장 동영상(데자뷰)
1) 돌잔치 한달 전에 동영상 업체에서 문자를 보내립니다.
2) 아기가 태어났을때 부터 돌사진 까지 100 ~ 200장, 동영상 5~ 6개를 웹하드에 오렬주시면 됩니다.
2) 사진은 가로로 준비해 주시는게 좋습니다.

3. 스마트폰 초대장 신청
1) 스마트폰 초대장 신청은 행사 2 ~ 3주 전에 "스마트폰 초대장 신청 방법" 공지사항을 참고해 주세요.
2) 아기 사진 4 ~ 5장을 올려주시면 직접 제작 후 바로 받으실수 있습니다.

4. 아기 돌복
1) 아기 무료 돌복은 당일 선택 가능
  2) 아기 소품들도 준비되어 있으나 양말이나 타이즈는 직접 준비해 주세요.

5. 기타
1) 행사 당일 지하 2층에 주차하고 도착 5분 전에 전화 주시면 저희 직원이 카트를 가지고 내려 갑니다.
------------------------------------------------------------------------------------------------------

- 돌잔치 의상(SU 지하 2층)
1. SU 한복: 아빠, 엄마 --> 12만원 ==> 의상은 1달 전에 예약하고 가야함[허희영 실장: 010-3758-9868]
2. SU Make up: 엄마 --> 8만원
3. Rogel Baby Studio(돌잔치 돌사진 촬영)
1) A형: 35만원(10% DC) --> 31만 5천원  -->  앨범
2) B형: 28만원(10% DC) --> 25만 2천원  -->  앨범
3) C형: 323원(10% DC) --> 20만 7천원
6. 기타
1) 돌사진 촬영 계약금 5만원 결제함  ==> 8월 21일까지 해약시 100% 환불됨
2) 돌사진 촬영은 별로도 35만원 내야함
==============================================================================================================

 ■■■■■■■■■■■■■■■■■■ 2014.04.27(일) 작업 ■■■■■■■■■■■■■■■
---> 13:40 ~ 21:00 --> 

▦조기축구
06:45 기상
07:00 국민은행 봉천동지점 앞(태훈이형 차)
07:30 신구초등학교
07:40 화장실
08:30 게임(1:1 무) ==> 도곡팀
09:30 게임(1:0 승) ==> 한상봉 회장님이랑 상설이형 싸움
10:30 게임(1:0 승): 레프트 윙
11:20 종료 
12:00 귀가
12:10 중식(라면)
13:40 출근
18:00 석식
22:30 퇴근
21:30 귀가
23:00 취침
==============================================================================================================
 
- 대우증권 인도네시아법인 홈페이지 재구축 Prj 
19번. 게시판 위치 순서 변경가능하도록 수정 ==> 완료
==> http://localhost:8080/hmpg/stkCm/spceExpt/spceExpertAdminbdmanagement.do
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.04.28(월) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 21:00 --> 4월말 철수 확정, 유지보수 계약 상호 합의하에 파기
 
- 대우증권 인도네시아법인 홈페이지 재구축 Prj
29번. 종목 발굴(J18DI001.java)	==> 완료 @@@@
01. Gainers/Losers(%)  ==> /MembScsnController.java, /pop_stockSearch.jsp 
==============================================================================================================

- 리스트 더 보기
https://www.youtu.kr/?document_srl=1026154
http://daddycat.blogspot.kr/2011/08/jquery-mobile-list.html 
댓글이나 포토 리스트에서 페이징 처리를 하지 않고 일부만 출력 후 '더 보기 (10)' 이런 식으로 남은 갯수를 표시해주고 클릭 시 
리스트를 가져오는 스크립트 참고할만한게 있을까요?
http://www.9lessons.info/2009/12/twitter-style-load-more-results-with.html
http://demos.9lessons.info/loadmore.php
==============================================================================================================

- 급여미지급확인서 발행
회사가 급여미지급확인서를 발행해주어야 할 의무는 없습니다. 
노동부에 임금체불 진정을 제기하면 노동부에서 임금체불내역을 확인해 주고 있습니다. 
문의는 경기지방중소기업청 비즈니스지원단 031-201-6805~8으로 해주시기 바랍니다.
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.04.29(화) 작업 ■■■■■■■■■■■■■■
---> 07:10 ~ 21:00 --> 인수인계서 작성
 
- 대우증권 인도네시아법인 홈페이지 재구축 Prj 
19번. 게시판 위치 순서 변경가능하도록 수정 ==> 완료
==> http://localhost:8080/hmpg/stkCm/spceExpt/spceExpertAdminbdmanagement.do
==============================================================================================================

1번. 계좌개설 은행 출력 ==> 완료
06. Investor Account: http://117.103.37.28/hmpg/myPage/onlnAcntEstbl/onlnTrBnftRegC.do 
1) /pop_printFormCIMB.do, /pop_printFormRDI.do
==============================================================================================================

- 인수인계서 문서 작성
1. 완료
==============================================================================================================

- 베트남 서류 서식(장인, 장모 초청, 체류 기간 연장)
01. Hi Korea: http://www.hikorea.go.kr/pt/main_kr.pt  
==> 민원서식: http://www.hikorea.go.kr/pt/DownLoadTemplPopupR_kr.pt
02. 베트남 대사관: http://vnm-hanoi.mofa.go.kr/korean/as/vnm-hanoi/civil_appeal/download/commom/index.jsp
03. 호치민 총영사관: http://vnm-hochiminh.mofa.go.kr/korean/as/vnm-hochiminh/civil_appeal/download/common/index.jsp
==============================================================================================================

- 부모창에서 iframe 함수 호출
01. /popup/pop_stockSearchMain.jsp 파일에서 @@@
<script type="text/javascript">
<!-- 
	function fnSearchStock(strNo) {  	/** 조회 함수() */
		var cW = document.getElementById('ifr').contentWindow;  // 부모창에서 iframe 함수 호출
		var strMoreViewLastPageNo = cW.ifrFromGetVaule();
		$("#moreViewLastPageNo").val(strMoreViewLastPageNo);	// iframe에서 받아온 strMoreViewLastPageNo 값을 
		more View Last Page No에 넣기
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
	frameborder="0"></iframe>   <!-- // 조회 결과(iframe 설정)  //-->       
	<input type="text" name="txt_view_search"  id="txt_view_search"  style="width:0px"/>  <!--// tex focus //-->

	<!--  more view -->
	 <div class="btn_center2">[${membScsnVo.moreViewPageNo}, ${membScsnVo.moreViewLastPageNo}]
		<c:choose> 
			<c:when test="${moreViewListNo != membScsnVo.moreViewLastPageNo}">  <!--// ViewList No가 마지막이 아니면 //-->  
				 <input type="image"  onclick="btnSearchStock('2')" src="/img/hmpg/quote/btn_search_results.gif" alt="Search Results" />		
				 <!--// more view //-->  
			</c:when> 
		<c:otherwise>  <!--// ViewList No가 마지막 이면 //-->
				[ViewList No가 마지막]<!--// more view //-->
		</c:otherwise>
		</c:choose> 
	 </div>     

02. /popup/pop_stockSearchMain.jsp 파일에서 @@@
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

- iframe에서 부모창에있는 함수 호출
var abc = window.open();
abc.window.함수명(); 
http://phpschool.com/gnuboard4/bbs/board.php?bo_table=qna_html&wr_id=152231&sca=&sfl=wr_subject%7C%7Cwr_content
&stx=iframe+%C1%A2%B1%D9+%B9%E6%B9%FD&sop=and
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2014.04.30(수) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 --> 이행, 철수, 사장이 급여는 다음달 15일에 모두 준다고 함
 
- 대우증권 인도네시아법인 홈페이지 재구축 Prj 
19번. 게시판 위치 순서 변경가능하도록 수정 ==> 완료
==> http://localhost:8080/hmpg/stkCm/spceExpt/spceExpertAdminbdmanagement.do
==============================================================================================================

- Online Account 수정 ==> 완료
1. Visit 선택 시 방문일시 체크 및 메시지 출력
http://localhost:8080/hmpg/myPage/onlnAcntEstbl/custInfoRegC.do?lnbIdx=2
/dwsid/wapps/ROOT/WEB-INF/jsp/hmpg/myPage/onlnAcntEstbl/custInfoRegC.jsp	==> Visit 선택 시 방문일시 체크 및 메시지 출력
==============================================================================================================
 
- MGM 수정
/hmpg/userGuide/mgmMain.do
/dwsid/wapps/ROOT/WEB-INF/classes/dwsec/id/hmpg/userGuide/web/UserGuideControlle.class ==> MGM 수정
==============================================================================================================

- 이행
1번. 계좌개설 은행 출력 ==> 추가 요건이 발생해서 재작업 해야 함(이행 못함)
13번 관심 종목 등록 ==> AP 2번 호출 문제로 이행 못함
16번 스탁 커뮤니티 마이글보기==> 이행
19번 스탁 커뮤니티 보드 위치변경 ==> 이행
29번 종목 발굴 ==> AP 2번 호출 문제로 이행 못함
==============================================================================================================

- SVN 설치
1. Window > Eclipse Marketplace > find: svn ==> Subversive SVN 설치
2. svn://117.103.37.28/repository --> jtree/1234,  tamario/1234
==============================================================================================================

- 4월 JTREE 월경비명세서 청구(10시)
1. 경리(김유희 과장)에게 영수증(93,450원)과 사용 내역 출력해서 제출
==============================================================================================================

- PCA 담당 FC 만남
1. 추임순 FC 한우리지점: 010-5096-3056, imsunch@hanmail.net
2. 점심, 커피 얻어 먹음 ==> 변액 보험 추가 납입하라고 함, 암보험과 와이프, 아들 보험 권유 받음
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■