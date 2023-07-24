

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2010.11) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2010.11.01(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:30

- 현대해상 SM
- P20101029-0025[장기보상상담자 변경] 이행 완료
- 보상상담(1:1 전문가 상담) 변경(김병구(/307576/HDMF) 과장 ==> 안재진(/305642/HDMF) 차장)
http://thome.hi.co.kr/amends/counsel/expert/amendsoneconselSelectView.jsp 
1. 1:1 전문가상담: http://thome.hi.co.kr/amends/counsel/expert/amendsoneconselWriteView.jsp?cate=5
2. 담당자 변경: /hi/amends/servlet/OnetoOneWriteServlet.java
3. 추가이미지: /images/newimages/service/img_counsel15.jpg  ===> 이미지 배포 서버에 등록할 것
4. 홈페이지 관리자 권한 변경
 가) 관리자 검색: http://homeadmin.hi.co.kr/manager/management/search_admin.jsp
 나) 관리자 등록: http://homeadmin.hi.co.kr/manager/management/add_admin.jsp
 다) 관리자 정보 변경: http://homeadmin.hi.co.kr/servlet/hi.manager.admin.servlet.ModAdmin_Inf?id=305642&keyfield=2&key=305642&issearch=1
 - 홈페이지 --> 보상상담(보상지원부)(1074 )
5. 안재광 차장 이행 요청 작업: /hi/cybercenter/motor/dao/CarSignMgr.java
==============================================================================================================

- 보상상담 수정(향후 처리: DB 테이블 추가, 상담 전문가 테이블 필요)
/amends/counsel/expert/amendsoneconselWriteView.jsp
/hi/amends/servlet/OnetoOneWriteServlet.java, /hi/amends/dao/OnetoOneMgr.java

/onetoone_list.jsp 파일에서
<%@ include file= "/manager/home/counsel/conselorArray.jsp" %>   <!--// include file 설정  ///-->
/conselorArray.jsp 파일에서
<%!
public String[] getGroupArray() {  // 1:1 전문가상담 상담사 함수()
	String[] strGrupArr = new String[7];
	strGrupArr[0] = "임지훈";
	strGrupArr[1] = "민운기";
	strGrupArr[2] = "석옥승";
	strGrupArr[3] = "이기석";
	strGrupArr[4] = "안재진";
	strGrupArr[5] = "김덕성";
	strGrupArr[6] = "이정환";
	
	return strGrupArr;
}

	String[] strGrupArr;
	strGrupArr = getGroupArray();
%>

	<select name="select_cate"> 
		<option value="A">전 체</option>
	<%	for(int i = 1; i<= strGrupArr.length; i++) {		%>
		<option value="<%=i%>" <%=strCate.equals("1") ? " selected" : "" %>><%=strGrupArr[i-1]%></option>
	<%	}	%>
	</select>
==============================================================================================================

- P20101022-0010[장기보험 보상조회 프로세스 개선] 
1. 사고접수(상해/질병보상 --> 사고접수)
 가) 사고접수(수정): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView.jsp)
 나) 처리절차(수정): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView02.jsp)
 다) 보험금 청구대행 서비스 안내(수정): (http://thome.hi.co.kr/amends/damage/care/DirectOneDetailView.jsp)

2. 접수내역 확인(상해/질병보상 --> 사고접수)
 가) 접수내역 조회(신규): (http://thome.hi.co.kr/amends/damage/care/ViewAccidentList.jsp, tabView_Detail.jsp) 
 나) 접수내역 상세 조회(신규): (http://thome.hi.co.kr/amends/damage/care/ViewAccident.jsp)
 다) 구비서류접수(수정): (http://thome.hi.co.kr/amends/damage/care/accident_take_process_17.jsp)
 라) 구비서류접수(새창)(수정): (http://thome.hi.co.kr/amends/damage/care/accident_take_process_17_popup.jsp)
 마) 파일 업로드 함수(신규): 
  - /amends/common/Progress.java, ErrorManager.java, HIUploadException.java
 바) 접수내역 조회(수정):  /hi/amends/dao/JubsuMgr.java

3. 관리자 기능 수정
 가) 장기보험 사고가접수 조회(관리자) (수정): (http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.JubsuList)
   - /manager/home/care/ViewAccidentList.jsp  ==> 추가서류 업데이트(IMGUPLOAD_UP_DT)필드 추가
 나) 장기보험 사고가접수 엑셀다운로드(관리자) (수정):(http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.Jubsu)
   - /manager/home/care/ViewAccidentList_excel.jsp
 다) /manager/home/care/servlet/JubsuList.java, /dao/JubsuAdminMgr.java
==============================================================================================================
 					 
■■■■■■■■■■■■■■■■■■ 2010.11.02(화) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:00 ~ 18:30   --> 주간보고 작성

- 현대해상 SM
- P20101029-0025[장기보상상담자 변경] 추가 이행 요청 
1. 1:1 보상 상담 리스트: /manager/home/counsel/onetoone_list.jsp
2. 1:1 보상 상담 상세 조회: /manager/home/counsel/onetoone_view.jsp 
3. ERMS 상담등록: http://tmgr.hi.co.kr/manager/home/counsel/onetoone_erms.jsp
4. 1:1 전문가상담 상담사 include file 설정: /manager/home/counsel/conselorArray.jsp
==============================================================================================================

 - 보안 점검 사항 수정(현대해상 모의해킹 결과 보고서 참조)
1. /hi/blog/dao/BlogCommunityMgr.java 파일에서
sbQuery.append(" content = '"+(RHanguel.toHanguel(decode(box.getString("k2cody_src"))).replaceAll("'", "").replaceAll("\"", ""))+"' ");

- XSS(Cross Site Scripting) 취약성 제거(/shop/lifeinkorea/free_write.jsp )
test<script>alert("[test]");</sctipt>  ==> test&lt;script&gt;alert(&quot;[test]&quot;);&lt;/sctipt&gt;
='1' onerror='alert("123");'>  <<>>
보상사례:	http://thome.hi.co.kr/amends/case/amends/amendsknowView01.jsp
판례:		http://thome.hi.co.kr/amends/case/law/amendsknowView03.jsp

2. /amends/case/amends/amendsknowView01.jsp 파일에서
String searchWord = (CommonUtil.getParameter(request, "searchWord", "")== null)? "": CommonUtil.getParameter(request, "searchWord", "");
searchWord = searchWord.replaceAll(">","&gt;");	 //XSS 취약성 제거(특수 문자 치환) 
searchWord = searchWord.replaceAll(">","&gt;");; 

<script language='javascript'>
<!-- 
function search() {
	document.frmSearch.searchWord.value = XSSEncode( document.frmSearch.searchWord.value);  //XSS 취약성 제거 함수 호출
}

function XSSEncode(text){  //XSS 취약성 제거 함수(특수 문자 치환) 
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

- DB 테이블 추가, 수정 요청 절차
1. 1.44.모델변경요청서.xll 작성
2. HD메타시스템(http://meta.hi-portal.co.kr)에서 DA(데이터아키텍쳐) > Non-CIS 모델 > 모델관리 화면에서 
 - DB명: 통합RAC1 시스템명: 홈페이지, 기업보험(B2B), 테이블영문명: SAGO_JUBSU --> 검색(클릭) ==> 
    테이블명 확인
3. PMS 신청서 현황 --> 신청서 --> 신규등록 --> 신청서등록(화면)
 - 수행위치: NON_CIS, 신청서종류: 모델변경요청서(HI-DC), 신청서제목: 보상사고 접수 테이블 변경, 
    관련근거: 조회(클릭) --> SDLC 조회(새창)이 뜸(단계가 5. 구현 및 단위테스트가 되어야 자동 조회가 됨)
    환경구분: Web, 범위: test, Prod(운영계)
    내용: 보상사고 접수 테이블 변경 요청, 양식 파일 첨부(1.44.모델변경요청서.xls0) ==> 저장(클릭)
    ==> 상신(클릭) --> 처리(결재완료 후 약 하루가 걸림)
4. 추가 요청 필드(운영계)
추가업로드일자	IMGUPLOAD_UP_DT	VARCHAR2(35)
첨부서류URL4	IMGURL4		VARCHAR2(50)
첨부서류URL5	IMGURL5		VARCHAR2(50)
첨부서류URL6	IMGURL6		VARCHAR2(50)
이미지업로드4	IMGUPLOAD4	VARCHAR2(100)
이미지업로드5	IMGUPLOAD5	VARCHAR2(100)
이미지업로드6	IMGUPLOAD6	VARCHAR2(100)
==============================================================================================================

- 스카이 IM-U660K(휴대폰)
http://shopping.naver.com/detail/detail.nhn?cat_id=00110104&nv_mid=5639307915&frm=nv_model&tc=3
==============================================================================================================
 					 
■■■■■■■■■■■■■■■■■■ 2010.11.03(수) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:00 ~ 18:30  --> CS 회의

- 현대해상 SM
- EDMS 연동 수정(EDMS에서 이미지 파일 불러 옴) --> 2010.11.03(수) 이행완료할 것(조영우 사원(보상손사팀): T)721-0256) 
1. 보상창구/자동차보상 --> 사진보기(새창) ==> 무궁화삼천리(6804211031327), 접수번호: 1006004509-대물-001
    ==> 홍석운(7306251068725), 접수번호: 접수번호 1004066429 -자차-001  ==> 이행 요청(2010_11.03)(TO 정일영 대리)
http://thome.hi.co.kr/servlet/hi.amends.servlet.RII0AAGServlet?q=7F000001189E00FA8379DB0546E50F6CE5C32A2D600C1F#detailIFrmL
/cybercenter/bosangcenter/viewSagoImage.jsp 파일에서
if(dcmId!=null && !dcmId.equals("")) { 
	//if(formCd.equals("0123") && (lctgCd.equals("CM") && mctgCd.equals("05"))) { // 서식코드가 사진이고, 대분류 : 자동차 보상(CM), 중분류 : 피해자(물)관리(05) 이면
	//if(formCd.equals("0123") && lctgCd.equals("CM")) {	// 서식코드(formCd)가 사진(0123)이고, 대분류((lctgCd): 자동차 보상(CM) 이면	
	if( (formCd.equals("0123") && lctgCd.equals("CM") && lctgCd.equals("02")) 		// 서식코드가 사진(0123)이고, 대분류가 자동차 보상(CM), 현장출동(02)
		|| (formCd.equals("0123") && lctgCd.equals("CM") && lctgCd.equals("13"))	// 서식코드가 사진(0123)이고, 대분류가 자동차 보상(CM), 피해자(13)
		|| (formCd.equals("3084") && lctgCd.equals("CM") && lctgCd.equals("04"))	// 서식코드가 중간입회(3084)이고, 대분류가 자동차 보상(CM), 피해물조사(04)
		|| (formCd.equals("3094") && lctgCd.equals("CM") && lctgCd.equals("04"))	// 서식코드가 최종입회(3094)이고, 대분류가 자동차 보상(CM), 피해물조사(04)
		|| (formCd.equals("3095") && lctgCd.equals("CM") && lctgCd.equals("04")) ) {	 / /서식코드가 최초입회(3095)이고, 대분류가 자동차 보상(CM), 피해물조사(04)

	filepath=edmclient.requestDocument("CM", dcmId, imgPath+"/"+dcmId+"."+fileForm);  // 파일 전송

	if(filepath!=null) {
		System.out.println("조회 성공 : "+dcmId);
	} else {
		System.out.println("조회 실패 : "+dcmId);
	}
} 
1) 문제 파일 안보이게 수정: 243889.JPG, 243888.JPG
==============================================================================================================

- P20101022-0010[장기보험 보상조회 프로세스 개선]
- 보상 사고 접수내역 조회 조건
1. 사고구분(02: 상해, 03: 질병)
2. 접수일(3개월 이내)
3. 상태값(C: 접수완료, A2: 인증완료) ==> C: 접수완료
4. 접수번호가 존재하는 것  ===> 빼기
5. 통보자가 피보험자이거나 통보자가 계약자일 경우

- 회원기본정보(common/util/SessionEtt.java)
private String strRsn_No		= "";		//주민번호
private String strNm                   	= "";		//성명
private String strZip1                 	= "";		//우편번호1
private String strZip2                 	= "";		//우편번호2
private String strAddr1                	= "";		//주소1
private String strAddr2                	= "";		//주소2
private String strTel1                	= "";		//직장전화번호1
private String strTel2                	= "";		//직장전화번호2
private String strTel3                	= "";		//직장전화번호3
private String strEmail			= "";		//이메일
private String strEmail_Seq		= "";		//e-mail seq
private String strCret_Dt		= "";		//가입일
==============================================================================================================

- 이광목 사원(DA팀): T)721-0188
==============================================================================================================

- 청구서 발행
/Appl/hib2c/docs/report
/Appl/hib2c/hib2c.ear/hib2cWeb.war/common/report_act.jsp
==============================================================================================================

- R홈 테스트 로그 보기
[SC3-devwas02:hidev01] tail -f //Logs/rhib2c/WAS/rhib2cSvr/SystemOut.log
#Image Upload Path
#b2c.upload.path=/upload2/hib2c
b2c.upload.path=/Appl/upload2/hib2c  ===> 변경 처리(개발(thome)서버로 같게 처리)

- 개발(thome)서버 로그 보기
#Image Upload Path
b2c.upload.path=/Appl/upload2/hib2c 
==============================================================================================================

- TrustForm 순수 Presentation
- 업체명 : (주)컴스퀘어
- 제품명 : TrustForm 순수
  (TrustForm4.0 XRW Source를 표준 HTML로 변환)
- 일시 : 11월 3일(수요일) 오후 1시 30분(1시간 예정)
- 장소 : 교육장
- 담당 : 김기용 사원(솔루션팀)
==============================================================================================================

- CS 회의 다음주 발표
1. NHN 웹디자인툴 공개(Eclipse와 유사)
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.11.04(목) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:00 ~ 18:30

- 현대해상 SM
- P20101022-0010[장기보험 보상조회 프로세스 개선] 
1. 사고접수(상해/질병보상 --> 사고접수)
 1) 사고접수(수정): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView.jsp)
 2) 처리절차(수정): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView02.jsp)
 3) 보험금 청구대행 서비스 안내(수정): (http://thome.hi.co.kr/amends/damage/care/DirectOneDetailView.jsp)
 4) 사고접수(수정): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView.jsp)

2. 접수내역 확인(상해/질병보상 --> 사고접수)
 1) 접수내역 조회(신규): (http://thome.hi.co.kr/amends/damage/care/ViewAccidentList.jsp, tabView_Detail.jsp) 
 2) 접수내역 상세 조회(신규): (http://thome.hi.co.kr/amends/damage/care/ViewAccident.jsp)
 3) 구비서류접수(수정): (http://thome.hi.co.kr/amends/damage/care/accident_take_process_17.jsp)
 4) 구비서류접수(새창)(수정): (http://thome.hi.co.kr/amends/damage/care/accident_take_process_17_popup.jsp)
 5) 파일 업로드 함수(신규): 
  - /amends/common/Progress.java, ErrorManager.java, HIUploadException.java
 6) 접수내역 조회(수정):  /hi/amends/dao/JubsuMgr.java

3. 관리자 기능 수정
 1) 장기보험 사고가접수 조회(관리자) (수정): (http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.JubsuList)
   - /manager/home/care/ViewAccidentList.jsp  ==> 추가서류 업데이트(IMGUPLOAD_UP_DT)필드 추가
 2) 장기보험 사고가접수 엑셀다운로드(관리자) (수정):(http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.Jubsu)
   - /manager/home/care/ViewAccidentList_excel.jsp
 3) /manager/home/care/servlet/JubsuList.java, /dao/JubsuAdminMgr.java
 4) 장기보험 사고가접수 상세조회(관리자) (수정): /manager/home/care/dao/JubsuAdminMgr.java
==============================================================================================================

1. 조회조건 : 11/6일 이후 접수건 부터 조회 가능토록 변경  ===> 미완료(완료)
    * 조회 조건은 내일 반영할때 변경해주시고
       테스트 때문에 일단 현재 기준으로 유지해주세요.
2. 사고접수시 사고사항입력 페이지의 직업란 삭제.
   (추후 반영예정으로 따로 보관 필요)
3. 관리자 화면에 처리여부 구분값 
   확인 추가 / 처리-> 배당 변경
   상세화면에서도 처리(배당)-> 배당 변경
==============================================================================================================

- ViewAccident.jsp 파일에서(URL값 안보이기  ==> Post 방식 절충)
<script type="text/JavaScript">
<!--
function checkRadio(obj, indexs) {  //접수하기 함수()
	var frm = document.search;
	var temp = indexs;
	var arrTemp = new Array();
	 
	if(temp!="") {
		arrTemp = temp.split("|"); 
		frm.req_req_no.value = arrTemp[0];	//계약번호
		frm.contract_id.value = arrTemp[1];	//신청번호
		  	 
		frm.action = '/amends/damage/care/ViewAccident.jsp';
		frm.submit();	 
	} 
} 
//-->
</script>

<div onmousedown="javascript:checkRadio(document.search.viewSago, '<%=req_req_no_tot%>');" style="cursor:hand">
<%=req_agmt_num%></div>
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.11.05(금) 작업 ■■■■■■■■■■■■■■■■■■  
---> 06:40 ~ 18:30

- 현대해상 SM
- P20101022-0010[장기보험 보상조회 프로세스 개선] 이행 연기
1. 사고접수(상해/질병보상 --> 사고접수)
 1) 사고접수(수정): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView.jsp)
 2) 처리절차(수정): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView02.jsp)
 3) 보험금 청구대행 서비스 안내(수정): (http://thome.hi.co.kr/amends/damage/care/DirectOneDetailView.jsp)
 4) 사고접수(수정): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView.jsp)

2. 접수내역 확인(상해/질병보상 --> 사고접수)
 1) 접수내역 조회(신규): (http://thome.hi.co.kr/amends/damage/care/ViewAccidentList.jsp, tabView_Detail.jsp) 
 2) 접수내역 상세 조회(신규): (http://thome.hi.co.kr/amends/damage/care/ViewAccident.jsp)
 3) 구비서류접수(수정): (http://thome.hi.co.kr/amends/damage/care/accident_take_process_17.jsp)
 4) 구비서류접수(새창)(수정): (http://thome.hi.co.kr/amends/damage/care/accident_take_process_17_popup.jsp)
 5) 파일 업로드 함수(신규): 
  - /amends/common/Progress.java, ErrorManager.java, HIUploadException.java
 6) 접수내역 조회(수정):  /hi/amends/dao/JubsuMgr.java

3. 관리자 기능 수정
 1) 장기보험 사고가접수 조회(관리자) (수정): (http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.JubsuList)
   - /manager/home/care/ViewAccidentList.jsp  ==> 추가서류 업데이트(IMGUPLOAD_UP_DT)필드 추가
 2) 장기보험 사고가접수 엑셀다운로드(관리자) (수정):(http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.Jubsu)
   - /manager/home/care/ViewAccidentList_excel.jsp
 3) /manager/home/care/servlet/JubsuList.java, /dao/JubsuAdminMgr.java
 4) 장기보험 사고가접수 상세조회(관리자) (수정): /manager/home/care/dao/JubsuAdminMgr.java
==============================================================================================================

 - 사고처리내용(상해/질병)
부지급심의대상여부:( Y: 부지급심의대상건, N: 아님)
금감원감사 대비용으로 부지급심의대상건 조회를 요청(감사기간 11/8 ~ 11/26) 
01. 사고접수 목록조회(자동차보상): /cybercenter/bosangcenter/bosangListView.jsp
01. 사고접수 목록조회(상해/질병보상): /cybercenter/bosangcenter/bosangListView2.jsp
02. 사고접수내용 및 피해사항조회(상해/질병보상): /cybercenter/bosangcenter/bosangLongTermIlbanView.jsp
(/cis/cisbean/amends/CLFQ0011M01LBean.java, /cis/vo/amends/CLFQ0032VO.java)
 1) 부지급심의대상여부:(Y: 부지급심의대상건, N: 아님) 추가 
     ==> 부지급심의대상여부 컬럼 REQ_FRCR_YN  = 1 일때 Y , 0 일때 N
System.out.println("[/CLMQ9200M01LBean.java] [getTraAccident()] ====> [ifId]"+ ifId +"[acdtList.length]"+ acdtList.length +"[AcdtRcpNo]"+ acdtList[i].getAcdtRcpNo());

 2) 응답 전문(IR_HI-HOME_0091(사고사항기본조회).txt에서)
<reqFrcrYn/> 또는 <reqFrcrYn>0</reqFrcrYn> 또는<reqFrcrYn>1</reqFrcrYn>
==============================================================================================================

- 자원 등록 오류 처리(자원위치 틀린 것)
1. 자원 --> Application 현황에서 조회범위: 자원별, 자원ID: Jubsu.java ==> 검색(클릭)
프로그램ID: Jubsu.java(클릭)  ==> 신규자원 등록(새창이 뜸)에서 SVN 경로 변경 처리 ==> 수정(클릭)
==============================================================================================================

- 자동차 운전면허 재발급: 11월 19일(금) 이후
1. 관악경찰서: T) 874-0112, 본관 Desk 안내실
==============================================================================================================
 						
■■■■■■■■■■■■■■■■■■ 2010.11.08(토) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:30 ~ 00:00
 
- SFR(5째주)
07:30 기상 
10:30 myLG070 인터넷 전화기 해지 처리
12:00 중식
13:10 Super Fast-Reading 학원
14:10 강의 ==> 속법, 시상(읽지 말고 읽어라(소리 끊기))
17:30 저녁(컵라면 밥)
18:00 강의(흐뭇 --> 느긋)(1': 3.3P)
19:30 종료
20:00 귀가
00:30 홍상환 방문
00:40 훌랄라 호프집(내가 쏨)
02:00 종료
02:10 귀가
==============================================================================================================
	
■■■■■■■■■■■■■■■■■■ 2010.11.07(일) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:30 ~ 00:00 

▦창립기념일 행사
 
07:00 기상
07:40 신구초등학교(신사조기회 창립 30주년 행사)
07:50 게임(4;3 승)
09:30 원정팀(평원 조기회) 도착
10:20 평원 조기회(4:0 승)
12:20 평원 조기회(0:0 무)
13:20 학원 간다고 빠져 나옴
13:50 Super Fast-Reading 학원
14:10 강의
17:30 저녁(컵라면 밥)
18:00 강의(1': 4.1P)
19:30 종료
20:00 귀가
==============================================================================================================
 					 
■■■■■■■■■■■■■■■■■■ 2010.11.08(월) 작업 ■■■■■■■■■■■■■■■■■■  
---> 06:50 ~ 18:30  --> 아침 시스템 당번

- 현대해상 SM
- P20101022-0010[장기보험 보상조회 프로세스 개선] 이행 연기
1. 사고접수(상해/질병보상 --> 사고접수)
 1) 사고접수(수정): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView.jsp)
 2) 처리절차(수정): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView02.jsp)
 3) 보험금 청구대행 서비스 안내(수정): (http://thome.hi.co.kr/amends/damage/care/DirectOneDetailView.jsp)
 4) 사고접수(수정): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView.jsp)

2. 접수내역 확인(상해/질병보상 --> 사고접수)
 1) 접수내역 조회(신규): (http://thome.hi.co.kr/amends/damage/care/ViewAccidentList.jsp, tabView_Detail.jsp) 
 2) 접수내역 상세 조회(신규): (http://thome.hi.co.kr/amends/damage/care/ViewAccident.jsp)
 3) 구비서류접수(수정): (http://thome.hi.co.kr/amends/damage/care/accident_take_process_17.jsp)
 4) 구비서류접수(새창)(수정): (http://thome.hi.co.kr/amends/damage/care/accident_take_process_17_popup.jsp)
 5) 파일 업로드 함수(신규): 
  - /amends/common/Progress.java, ErrorManager.java, HIUploadException.java
 6) 접수내역 조회(수정):  /hi/amends/dao/JubsuMgr.java

3. 관리자 기능 수정
 1) 장기보험 사고가접수 조회(관리자) (수정): (http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.JubsuList)
   - /manager/home/care/ViewAccidentList.jsp  ==> 추가서류 업데이트(IMGUPLOAD_UP_DT)필드 추가
 2) 장기보험 사고가접수 엑셀다운로드(관리자) (수정):(http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.Jubsu)
   - /manager/home/care/ViewAccidentList_excel.jsp
 3) /manager/home/care/servlet/JubsuList.java, /dao/JubsuAdminMgr.java
 4) 장기보험 사고가접수 상세조회(관리자) (수정): /manager/home/care/dao/JubsuAdminMgr.java
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.11.09(화) 작업 ■■■■■■■■■■■■■■■■■■  
---> 06:10 ~ 18:30  --> 주간보고서 작성

- 현대해상 SM
- EDMS 연동 수정(EDMS에서 이미지 파일 불러 옴) 이행 완료
1. 보상창구/자동차보상 --> 사진보기(새창) ==> 홍석운(7306251068725), 접수번호: 접수번호 1004066429 -자차-001 ==> 이행 요청(2010_11.03)(TO 정일영 대리)
http://thome.hi.co.kr/servlet/hi.amends.servlet.RII0AAGServlet?q=7F000001189E00FA8379DB0546E50F6CE5C32A2D600C1F#detailIFrmL
/cybercenter/bosangcenter/viewSagoImage.jsp 파일에서
if(dcmId!=null && !dcmId.equals("")) { 
	//if(formCd.equals("0123") && (lctgCd.equals("CM") && mctgCd.equals("05"))) { // 서식코드가 사진이고, 대분류 : 자동차 보상(CM), 중분류 : 피해자(물)관리(05) 이면
	//if(formCd.equals("0123") && lctgCd.equals("CM")) {	// 서식코드(formCd)가 사진(0123)이고, 대분류((lctgCd): 자동차 보상(CM) 이면	
	if( (formCd.equals("0123") && lctgCd.equals("CM") && lctgCd.equals("02")) 		// 서식코드가 사진(0123)이고, 대분류가 자동차 보상(CM), 현장출동(02)
		|| (formCd.equals("0123") && lctgCd.equals("CM") && lctgCd.equals("13"))	// 서식코드가 사진(0123)이고, 대분류가 자동차 보상(CM), 피해자(13)
		|| (formCd.equals("3084") && lctgCd.equals("CM") && lctgCd.equals("04"))	// 서식코드가 중간입회(3084)이고, 대분류가 자동차 보상(CM), 피해물조사(04)
		|| (formCd.equals("3094") && lctgCd.equals("CM") && lctgCd.equals("04"))	// 서식코드가 최종입회(3094)이고, 대분류가 자동차 보상(CM), 피해물조사(04)
		|| (formCd.equals("3095") && lctgCd.equals("CM") && lctgCd.equals("04")) ) {	 / /서식코드가 최초입회(3095)이고, 대분류가 자동차 보상(CM), 피해물조사(04)

	filepath=edmclient.requestDocument("CM", dcmId, imgPath+"/"+dcmId+"."+fileForm);  // 파일 전송

	if(filepath!=null) {
		System.out.println("조회 성공 : "+dcmId);
	} else {
		System.out.println("조회 실패 : "+dcmId);
	}
} 
1) 문제 파일 안보이게 수정: 243889.JPG, 243888.JPG
==============================================================================================================

 - 사고처리내용(상해/질병) 이행 완료
금감원감사 대비용으로 부지급심의대상건 조회를 요청(감사기간 11/8 ~ 11/26)  
주민번호: 6212282631723/사고번호: 1011000145, 주민번호: 6402151810723/사고번호: 1010000111 
02. 사고접수내용 및 피해사항조회(상해/질병보상): /cybercenter/bosangcenter/bosangLongTermIlbanView.jsp
(/cis/cisbean/amends/CLFQ0011M01LBean.java, /cis/vo/amends/CLFQ0018VO.java)
System.out.println("[/CLMQ9200M01LBean.java] [getTraAccident()] ====> [ifId]"+ ifId +"[acdtList.length]"+ acdtList.length +"[AcdtRcpNo]"+ acdtList[i].getAcdtRcpNo());
02. 사고접수내용 및 피해사항조회(상해/질병보상): /cybercenter/bosangcenter/bosangLongTermIlbanView.jsp
(/cis/cisbean/amends/CLFQ0011M01LBean.java, /cis/vo/amends/CLFQ0032VO.java)
 1) 부지급심의대상여부:(Y: 부지급심의대상건, N: 아님) 추가 
     ==> 부지급심의대상여부 컬럼 REQ_FRCR_YN  = 1 일때 Y , 0 일때 N
System.out.println("[/CLMQ9200M01LBean.java] [getTraAccident()] ====> [ifId]"+ ifId +"[acdtList.length]"+ acdtList.length +"[AcdtRcpNo]"+ acdtList[i].getAcdtRcpNo());
 2) 응답 전문(IR_HI-HOME_0091(사고사항기본조회).txt에서)
<reqFrcrYn/> 또는 <reqFrcrYn>0</reqFrcrYn> 또는<reqFrcrYn>1</reqFrcrYn>
==============================================================================================================

- P20101029-0025[장기보상상담자 변경] 이행 완료
1. 1:1 보상 상담 리스트: /manager/home/counsel/onetoone_list.jsp
2. 1:1 보상 상담 상세 조회: /manager/home/counsel/onetoone_view.jsp 
3. ERMS 상담등록: http://tmgr.hi.co.kr/manager/home/counsel/onetoone_erms.jsp
4. 1:1 전문가상담 상담사 include file 설정: /manager/home/counsel/conselorArray.jsp
==============================================================================================================

- 보안 점검 사항 수정(XSS 취약성 제거) 이행 완료
보상사례:	http://thome.hi.co.kr/amends/case/amends/amendsknowView01.jsp
판례:		http://thome.hi.co.kr/amends/case/law/amendsknowView03.jsp
==============================================================================================================

- P20101022-0010[장기보험 보상조회 프로세스 개선] 이행 연기
1. 사고접수(상해/질병보상 --> 사고접수)
 1) 상해/질병 보험 사고접수(수정): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView.jsp)
 2) 처리절차(수정): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView02.jsp)
 3) 보험금 청구대행 서비스 안내(수정): (http://thome.hi.co.kr/amends/damage/care/DirectOneDetailView.jsp) 
 4) 왼쪽 메뉴 이미지 수정: /xml/newxml/HI_NAV_XML.xml파일 수정(/Appl/hib2c/docs/xml/newxml)
 - 상해/질병 인터넷 사고접수 "제목변경": http://thome.hi.co.kr/amends/damage/care/accident_takeInfoView.jsp)
 - 보험청구서출력 링크변경: http://thome.hi.co.kr/amends/damage/care/insuranceBenefitForm.jsp
 5) 사고접수가능계약조회: 장기보험: /amends/damage/care/accident_takeJubsuList.jsp
 - 피보험자사항: 장기보험: /amends/damage/care/accident_takePiboList.jsp
 6) 사고접수가능계약조회: 일반보험: /amends/damage/care/accident_takeJubsuList_i.jsp
 - 피보험자사항: 일반보험: /amends/damage/care/accident_takePiboList_i.jsp
==============================================================================================================

- URL 링크 없애기
<a style="cursor:hand" onclick="go_jubsu('<%=strSeq%>');">계약번호</a>
<div onmousedown="javascript:checkRadio('<%=strAgmt_no[i]%>');" style="cursor:hand">계약번호</div>
==============================================================================================================

- (2010-11-10)NHN의 차세대 웹플랫폼 구상_진태만.ppa 작성
Ⅰ. NHN의 차세대 웹플랫폼 구상
  가. NHN 웹플랫폼의 정의
   - NHN이 개발한 웹기반의 USF(UI Server Framework)플랫폼을 사용한 차세대 웹플랫폼
  나. NHN 웹플랫폼의 특징
    - 다양한 오픈 소스(오픈소스: 15개, 오픈 프로젝트: 2352개(2010.8.18 기준))
    - 신속하고 정확한 XSS Filter 제공(XSS 코드의 위험 방지)
    - 자바 웹 플랫폼 개발을 도와주는 Eclipse Plug-in(nClipse) 제공
    - 사용자에게 HTML을 제공하기 위해 사용하는 컴포넌트 기반의 자바 웹 애플리케이션 개발 프레임워크
      (USF(UI Server Framework)) 제공
Ⅱ. NHN 웹플랫폼의 구성도 및 구성요소
  가. NHN 웹플랫폼의 구성도
  나. NHN 웹플랫폼의 구성요소
Ⅲ. NHN 웹플랫폼의 발전 방향
  가. NHN 웹플랫폼의 문제점
    - 기존 개발 플랫폼과의 차별성(eclipse의 편리성 극복)
    - 웹플랫폼의 한계 극복(사용자 폭주에 대책 마련)
    - 웹플랫폼의 수익성 고려(차별적 유료화 고민)
  나. NHN 웹플랫폼의 향후 전망
    - 기존 개발 플랫폼과의 현격한 차별성과 편리성이 없다면 성공하기 힘들다고 판단됨
    - 보다 다양한 차별화 요소가 추가되어야 한다고 판단됨
==============================================================================================================

 * 하이방카 테스트 서버 정보 *
서버 IP : 10.18.12.37(10.10.3.42 아님)
서버 계정: hidev01/hidev01
WEB : /Appl/hibancaCis/docs/
WAS : /Appl/hibancaCis/hibancaCis.ear/hibanca.war/
http://ts.hi-banca.co.kr ===> http://ts.hi-banca.co.kr/error_tip

- 채널서비스팀 캘린더 개발
1. 당번 현황(시스템점검토 출력)
2. 일정 캘린더(calendar)
3. 기타
 가) 달력 소스 ==> ew_web_diary.zip(http://www.okjsp.pe.kr/seq/37249) 
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.11.10(수) 작업 ■■■■■■■■■■■■■■■■■■  
---> 06:20 ~ 18:30  --> CS 회의

- 현대해상 SM
- P20101022-0010[장기보험 보상조회 프로세스 개선]
1. 사고접수(상해/질병보상 --> 사고접수)
 1) 상해/질병 보험 사고접수(수정): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView.jsp)
 2) 처리절차(수정): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView02.jsp)
 3) 보험금 청구대행 서비스 안내(수정): (http://thome.hi.co.kr/amends/damage/care/DirectOneDetailView.jsp) 
 4) 왼쪽 메뉴 이미지 수정: /xml/newxml/HI_NAV_XML.xml파일 수정(/Appl/hib2c/docs/xml/newxml)
 - 상해/질병 인터넷 사고접수 "제목변경": http://thome.hi.co.kr/amends/damage/care/accident_takeInfoView.jsp)
 - 보험청구서출력 링크변경: http://thome.hi.co.kr/amends/damage/care/insuranceBenefitForm.jsp
 5) 사고접수가능계약조회: 장기보험: /amends/damage/care/accident_takeJubsuList.jsp
 - 피보험자사항: 장기보험: /amends/damage/care/accident_takePiboList.jsp
 6) 사고접수가능계약조회: 일반보험: /amends/damage/care/accident_takeJubsuList_i.jsp
 - 피보험자사항: 일반보험: /amends/damage/care/accident_takePiboList_i.jsp
 7) 사고사항 입력: /amends/damage/care/accident_takeJubsuView.jsp
 - SAGO_JUBSU 테이블에서 INSURED_JOB(피보험자 직업), VARCHAR2(200)
 - 피보험자 직업 저장: /amends/dao/JubsuMgr.java

3. 관리자 기능 수정
 1) 장기보험 사고가접수 조회(관리자) (수정): (http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.JubsuList)
   - /manager/home/care/ViewAccidentList.jsp  ==> 추가서류 업데이트(IMGUPLOAD_UP_DT)필드 추가 
 2) /manager/home/care/servlet/JubsuList.java, /dao/JubsuAdminMgr.java 
  - 조회 ORDER 설정
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

 - 청구서 발행
/Appl/hib2c/hib2c.ear/hib2cWeb.war/common/report_popup.jsp, report_act.jsp
/Appl/hib2c/docs/report/BosangCar.mrd --> 청구서발행 파일명(01:교통상해, 02: 일반),  BosangDisease.mrd 
--> 청구서발행 파일명(03:질병) 
1. Report Designer 5.0 프로그램 열어서 수정 ==> 
1) 데이터베이스(B) --> 파일접속(F) --> 필드 정의 Tab에서
추가: 필드이름: a16(자동생성), 확인(클릭)
2) 추가를 원하는 필드를 마우스를 끌어서 선택(마우스 오른쪽 클릭) --> 데이터셋 연결(W)에서
필드 리스트: 선택, 확인(클릭)
==============================================================================================================

- CS 회의 발표
1. NHN의 차세대 웹플랫폼
http://deview.naver.com/2010/courses.nhn
==============================================================================================================

- 업로드 컴포넌트 도입 필요성
1. 개발시 문제점
 1) 업로드 컴포넌트 특화 기술 개발의 어려움(난이도 중상으로 판단됨)
 2) 컴포넌트 원천 소스 미공개(참조 API 부족)
 3) 우수한 개발 인력의 확보의 어려움(시장이 좁아서 유사 개발 경험자 부족)
2. 컴포넌트 미보유
 1) 현재 현대해상 홈페이지는 JAVA기반으로 일반 업로드를 개발하여 사용하고 있음
 2) 일반 업로드 사용으로 인해 업로드 속도 및 기능이 저하되어 고객 불만이 많음
 3) 동업사는 업로드 컴포넌트를 사용하여 속도 및 기능 개선이 이루어진 것으로 파악됨
3. 결론  
 1) 업로드 컴포넌트 특화 기능이 포함된 컴포넌트 구매가 필요함
 2) 업로드 컴포넌트 개발보다 ROI(Return On Investment) 관점에서 컴포넌트 구매가 적절하다고 판단됨
 3) 업로드 컴포넌트 구매 후 유사 업로드 기능에 추가로 적용 한다면 효율적이고 안정된 시스템 업그레이드가 
    될 것으로 판단됨
==============================================================================================================

- 강남구 재활용 센터 소스 전송(51. reusecenter 메일 전송)
1. 오상규: T)010-8609-3905, sg831201@nate.com
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.11.11(목) 작업 ■■■■■■■■■■■■■■■■■■  
---> 06:30 ~ 18:30  --> G20 서울 정상회의(11(목) ~ 12(금))

- 현대해상 SM
- P20101022-0010[장기보험 보상조회 프로세스 개선] 
1. 사고접수(상해/질병보상 --> 사고접수)
 1) 상해/질병 보험 사고접수(수정): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView.jsp)
 2) 처리절차(수정): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView02.jsp)
 3) 보험금 청구대행 서비스 안내(수정): (http://thome.hi.co.kr/amends/damage/care/DirectOneDetailView.jsp) 
 4) 왼쪽 메뉴 이미지 수정: /xml/newxml/HI_NAV_XML.xml파일 수정(/Appl/hib2c/docs/xml/newxml)
 - 상해/질병 인터넷 사고접수 "제목변경": http://thome.hi.co.kr/amends/damage/care/accident_takeInfoView.jsp)
 - 보험청구서출력 링크변경: http://thome.hi.co.kr/amends/damage/care/insuranceBenefitForm.jsp
 5) 사고접수가능계약조회(장기보험): /amends/damage/care/accident_takeJubsuList.jsp 
 6) 사고접수가능계약조회(일반보험): /amends/damage/care/accident_takeJubsuList_i.jsp
 6) 피보험자사항(장기보험): /amends/damage/care/accident_takePiboList.jsp  
 6) 피보험자사항(일반보험): /amends/damage/care/accident_takePiboList_i.jsp
 8) 사고사항 입력: /amends/damage/care/accident_takeJubsuView.jsp
 9) 사고사항 입력: /amends/dao/JubsuMgr.java  ===>  피보험자 직업 저장 
 10) 구비서류 업로드(상태바): http://thome.hi.co.kr/amends/damage/care/ProgressBar.jsp 
 11) 구비서류 업로드(처리): http://thome.hi.co.kr/amends/damage/care/ProgressProcess.jsp
 12) 설문내용 입력 : /amends/damage/care/accident_take_process_28.jsp
3. 관리자 기능 수정
 1) 장기보험 사고가접수 조회(관리자) (수정): (http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.JubsuList)
   - /manager/home/care/ViewAccidentList.jsp  ==> 추가서류 업데이트(IMGUPLOAD_UP_DT)필드 추가 
 2) /manager/home/care/servlet/JubsuList.java, /dao/JubsuAdminMgr.java  
==============================================================================================================

- 엑셀(excel)에서 jsp가 js네로 변경 안되게 수정하는 방법
1. 도구(T) --> 옵션(O) --> 맞춤법 검사 --> 자동고침 옵션(P) --> 예외 항목(E)
자동 고침 예외 --> 아래 단어 다음에 대문자 사용 안 함(O): jsp, 추가(A), 확인(클릭)
==============================================================================================================
						 
■■■■■■■■■■■■■■■■■■ 2010.11.12(금) 작업 ■■■■■■■■■■■■■■■■■■  
---> 06:10 ~ 18:30  --> 이행, 공수 입력

- 현대해상 SM
- P20101022-0010[장기보험 보상조회 프로세스 개선] 이행 완료
1. 사고접수(상해/질병보상 --> 사고접수)
 1) 상해/질병 보험 사고접수(수정): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView.jsp)
 2) 처리절차(수정): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView02.jsp)
 3) 보험금 청구대행 서비스 안내(수정): (http://thome.hi.co.kr/amends/damage/care/DirectOneDetailView.jsp) 
 4) 왼쪽 메뉴 이미지 수정: /xml/newxml/HI_NAV_XML.xml파일 수정(/Appl/hib2c/docs/xml/newxml)
 - 상해/질병 인터넷 사고접수 "제목변경": http://thome.hi.co.kr/amends/damage/care/accident_takeInfoView.jsp)
 - 보험청구서출력 링크변경: http://thome.hi.co.kr/amends/damage/care/insuranceBenefitForm.jsp
 5) 사고접수가능계약조회(장기보험): /amends/damage/care/accident_takeJubsuList.jsp 
 6) 사고접수가능계약조회(일반보험): /amends/damage/care/accident_takeJubsuList_i.jsp
 6) 피보험자사항(장기보험): /amends/damage/care/accident_takePiboList.jsp  
 6) 피보험자사항(일반보험): /amends/damage/care/accident_takePiboList_i.jsp
 8) 사고사항 입력: /amends/damage/care/accident_takeJubsuView.jsp
 9) 사고사항 입력: /amends/dao/JubsuMgr.java  ===>  피보험자 직업 저장 
 10) 구비서류 업로드(상태바): http://thome.hi.co.kr/amends/damage/care/ProgressBar.jsp 
 11) 구비서류 업로드(처리): http://thome.hi.co.kr/amends/damage/care/ProgressProcess.jsp
 12) 설문내용 입력 : /amends/damage/care/accident_take_process_28.jsp
 13. 보험금청구 구비서류(교통상해): http://thome.hi.co.kr/amends/guide/documentsView.jsp
C:\svnroot\hi-home\HI-HOME\ONLINE\hib2c.ear\hib2cWeb.war\amends\guide/documentsView.jsp
\HI-HOME\source\ONLINE\B2C\Appl\hib2c\hib2c.ear\hib2cWeb.war\amends\damage\guide\
14. 보험금청구 구비서류(일반상해): http://thome.hi.co.kr/amends/guide/documentsView02.jsp
C:\svnroot\hi-home\HI-HOME\ONLINE\hib2c.ear\hib2cWeb.war\amends\guide/documentsView02.jsp
15. 보험금청구 구비서류(질병): http://thome.hi.co.kr/amends/guide/documentsView03.jsp
C:\svnroot\hi-home\HI-HOME\ONLINE\hib2c.ear\hib2cWeb.war\amends\guide/documentsView03.jsp
16. 보험금청구 구비서류(배상책임): http://thome.hi.co.kr/amends/guide/documentsView04.jsp
C:\svnroot\hi-home\HI-HOME\ONLINE\hib2c.ear\hib2cWeb.war\amends\guide/documentsView04.jsp
17. 보험금청구 구비서류(홀인원): http://thome.hi.co.kr/amends/guide/documentsView05.jsp
C:\svnroot\hi-home\HI-HOME\ONLINE\hib2c.ear\hib2cWeb.war\amends\guide/documentsView05.jsp
양식출력 링크 변경요망 : http://thome.hi.co.kr/data/amends/amends02.pdf
===> T서버: /Appl/upload2/hib2c/data/amends
3. 관리자 기능 수정
 1) 장기보험 사고가접수 조회(관리자) (수정): (http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.JubsuList)
   - /manager/home/care/ViewAccidentList.jsp  ==> 추가서류 업데이트(IMGUPLOAD_UP_DT)필드 추가 
 2) /manager/home/care/servlet/JubsuList.java, /dao/JubsuAdminMgr.java  
==============================================================================================================

- MRD 파일(/Appl/hib2c/docs/report) =====> @@@@@@@@@ 
1. BosangCar.mrd --> 청구서발행 파일명(01:교통상해, 02: 일반)
2. BosangDisease.mrd  --> 청구서발행 파일명(03:질병)

- Report Designer 5.0 파일 확인 방법
1. 출력된 http://thome.hi.co.kr/common/report_act.jsp] 파일에서
System.out.println의 print_data 부분 복사 하기 --> 
print_data:/rdata [무궁화삼천리화려강산^8004121012715^L20076883259^무궁화삼천리화려강산^2010년 11월 11일  
(19시 49분경)^142-793 서울 강북구 우이동 103-1번지 대우아파트 106-512^테스트입니다.^자동차보험처리 □NO ■YES  
(보험사:삼성)^33거2323^조숫석의 뒷자석^국민은행^036210887621^무궁화삼천리화려강산^2010년 11월 11일^무궁화
삼천리화려강산^2010. 11. 12^010-0000-0000^회사원(보험사무)] /rnl [||] /rmultipage /rcdforeword [현대해상] /rnpu)
2. Report Designer 5.0 실행하여 BosangCar.mrd 파일 불러 오기
3. 파일(F) --> 파라미터 값입력에 붙어넣기, 확인(클릭)
4. 뷰어로 미리보기(클릭)
==============================================================================================================

- XML 파일(/Appl/hib2c/docs/xml/newxml) =====> @@@@@@@@@
배포서버: /B2C/upload2/hib2c/data/amends
HI_NAV_XML.xml
==============================================================================================================

- Trusted Orange Client 설치 
1. 통합 테스트 DB
IP: 10.18.12.38, PORT:1588 --> SERVICE_NAME: home_test, dpebizdba/hdvdba06 ==> DBA 권한
IP: 10.18.12.38, PORT:1588 --> SERVICE_NAME: home_test, dpezweb/dpezweb, SERVICE_NAME=INTRAC1 
2. 하이방카 테스트 DB
IP: 10.18.12.38, PORT:1588 --> SERVICE_NAME: INTRAC2, dphicybnc/dphicybnc, SERVICE_NAME=INTRAC2 
==============================================================================================================

- 이노릭스 파일 업로드 테스트
http://thome.hi.co.kr/amends/damage/care/accident_take_process_17_T.jsp 
==============================================================================================================
						
■■■■■■■■■■■■■■■■■■ 2010.11.13(토) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:30 ~ 00:00
 
- SFR(5째주)
07:00 기상 
08:00 Super Fast-Reading 연습
09:30 종료
12:00 중식
13:30 Super Fast-Reading 학원
14:10 강의(수강생 혼자) ==> 속법, 시상
16:30 독법반 2명 같이 강의 받음
17:30 저녁(컵라면 밥)
18:00 강의(흐뭇 --> 느긋)(1': 6.58P)
19:45 종료
20:00 귀가
==============================================================================================================

- 윤준호 결혼
1. 11.13(토) 12시 군산 리버힐 호텔 ===> 2시간 30분소요
==============================================================================================================

- 차표 예매
서울 --> 포항(우등고속): 18:20
포항 --> 서울(일반고속): 17:40 ==> 20,500원(일반고속), 30,400원(우등고속), 33,400원(심야우등)
포항에서 신경주역 가는 방법: http://designqueen.kr/130096581549
==============================================================================================================
	
■■■■■■■■■■■■■■■■■■ 2010.11.14(일) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:30 ~ 00:00 

▦조기축구
07:00 기상
07:40 신구초등학교
07:50 숏게임(3;1 패)
08:50 게임(4:3 승) 
11:00 유명국 해장국(회비 만원 냄)
12:50 방배역(남권이 형이 때워줌)
12:50 Super Fast-Reading 학원
14:00 강의(신뢰, 짧게 보는 것이 잔상이 오래 남음) ==> View
15:00 독법반 수강생이 왕만두 선물 함(3개 정도 먹음)
17:30 저녁(컵라면 밥)
18:00 강의(1': 8.59P)
19:30 종료
20:00 귀가
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.11.15(월) 작업 ■■■■■■■■■■■■■■■■■■  
---> 06:40 ~ 18:30

- 현대해상 SM
- 통보자 확인(양하준: 7503141041637)
/amends/servlet/JubSuListServlet.java 파일에서 
public void performTask(HttpServletRequest request, HttpServletResponse response) throws Exception  {
	String ifId = "IR_HI-HOME_0950";  //사고조회
	LTMU4001M01LBean insuCheck = new LTMU4001M01LBean();  //장기실효계약조회
	bizVo = insuCheck.getLapCont2(request, ifId, "03", "1",strBasDate);  //피보험자
	boolean trState   = bizVo.getService().getTRState();  // EAI 성공여부 상태
	if (trState) {
		ltmuList = ltmu4001Vo.getLtmu4005VOList();
		loopSize = ltmuList.length;	 		
	}
	strPTRQ_NAME_T ="2"; //통보자가 피보험자 
	 
	if( loopSize==0 ) { //EAI 성공여부이고 조회된 값이 존재하지 않으면
		LTMU4001M01LBean insuCheck2 = new LTMU4001M01LBean();  //장기실효계약조회		 
		bizVo2 = insuCheck.getLapCont2(request, ifId, "01", "1",strBasDate);  //계약자
		ltmu4001Vo2 = (LTMU4001VO)bizVo2.getBusinessVo();

		strPTRQ_NAME_T ="1"; //통보자가 계약자 
	}
	request.setAttribute("ptrq_name_t",strPTRQ_NAME_T);  //통보자
}

/cis/cisbean/longterm/LTMU4001M01LBean.java 파일에서 CIS 연결
public CisResultObjVO getLapCont2(HttpServletRequest request, String ifId, String strSrchTgtCat,String strGubun, String strBasDate)throws Exception{ 
	LTMU4005VO[] ltmuContList = longVo.getLtmu4005VOList();  //실효계약조회
	for(int i=0; i<ltmuContList.length; i++){ //vo개체의  null값을 ""로 치환
	    HiUtil.nullToEmp(ltmuContList[i].getClass(), ltmuContList[i]); 
	} 
}
==============================================================================================================

- 장기 접수내역 확인(추가접수) 권한
/amends/dao/JubsuMgr.java 수정
현재 : 사고 통보자로 한정
개선 : 로그인 정보의 주민번호를 조회하여
         그 주민번호가 사고를 접수한 계약 내용의
         계약자 & 피보험자에 포함될 경우에는 조회되도록 권한 변경
1) 로그인 조회자가 피보험자일 경우
2) 로그인 조회자가 계약자일 경우
==============================================================================================================

- 진행상황명이 null 이면 담당자 배정중으로 처리
bosangLongTermIlbanView.jsp
==============================================================================================================

3. 관리자 기능 수정
 가) 장기보험 사고가접수 조회(관리자) (수정): (http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.JubsuList)  
 나) /manager/home/care/servlet/JubsuList.java, dao/JubsuAdminMgr.java

- 정렬기준(관리자 수정)
1. 추가서류 업데이트 된건&처리상태가 배당이 아닌건(최상위)
2. 접수일시순 정렬
   (추가서류 업데이트 된건&처리상태가 배당인건 포함)
- 수정해야할 사항
1. 처리상태 배당된 이후 값 변동 안되는 문제
2. 메모 입력후 값이 저장안되는 문제 (null값) 문제
3. 정렬기준
==============================================================================================================

- 자동차보험가입증명서(증명서발급 창구)
1. cybercenter/motor/servlet/MIC01AGServlet.java 파일에서 호출
1) ifid: IR_HI-HOME_0081
==============================================================================================================

- P20101115-0052[장기 사고접수 프로세스 개선](긴급) 이행
1. 장기 사고접수 일반 상해담보 링크 변경: /amends/damage/care/accident_take_process_28.jsp
1) 금일: 16:30에 적용됨
==============================================================================================================

- 품질관리팀(이행 관련)  ===> image 이행 안된 것 노준홍 대리에게 처리 요청(배포 프로세스 재 수행됨)
1) 노준홍 대리: T)3701-0360
2) 오원경 대리: T)3701-0361
3) 양해주 대리: T)3701-0362
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.11.16(화) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:00 ~ 18:30  --> 아침 시스템 당번, 주간보고서 작성

- 현대해상 SM
- P20101115-0042[접수내역 조회] 이행 완료
1. 자원: 8개(JSP: 2, JAVA: 3, XML: 1, MRD: 2) => (JSP: 4, JAVA: 6, XML: 2, MRD: 4, CLASS: 3)(산출물 포함) => 총 19개

- MRD 파일(/Appl/hib2c/docs/report) 이행 완료
1. BosangCar.mrd --> 청구서발행 파일명(01:교통상해, 02: 일반)
2. BosangDisease.mrd  --> 청구서발행 파일명(03:질병) 
---------------------------------------------------------------------------------------------------------

- XML 파일(/Appl/hib2c/docs/xml/newxml) 이행 완료
배포서버: /B2C/upload2/hib2c/data/amends
HI_NAV_XML.xml
==============================================================================================================

- 파일 환경 설정(/WEB-INF/classes/db.properties)
b2c.sagojupsu.img.path=/data/sagojupsu
# B2C/B2B/MGR domain
b2c.domain=thome.hi.co.kr
b2cr.domain=rhome.hi.co.kr   # //===> 추가(R홈서버)
b2b.domain=tb2b.hi.co.kr
mgr.domain=tmgr.hi.co.kr
# 사고접수 업로드 File Path
b2c.sagojupsu.img.path=/data/sagojupsu   # // ====> /Appl/upload2/hib2c/data/sagojupsu
==============================================================================================================

- 이노릭스 파일 업로드 테스트 및 적용
http://thome.hi.co.kr/amends/damage/care/accident_take_process_17_T.jsp
==============================================================================================================

- 주간업무 폴더
\\10.81.17.33\homepage_svr\01_홈페이지\인터넷\11    보고_주간업무  ==> IA1308/HOMEPAGE01 
==============================================================================================================

- CMMI 내재화 진단 위한 설문 조사 작성
M:\공유함_new\02_주고받기문서\CMMI 설문서취합/
HDS_설문서_조직문화 분석_10.xll, HDS_설문서_프로세스 적용성 분석_10 분석_10.xll
==============================================================================================================
						 
■■■■■■■■■■■■■■■■■■ 2010.11.17(수) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:00 ~ 18:30  --> CS회의

- 현대해상 SM
- 이노릭스 파일 업로드 테스트 및 적용
1. 구비서류접수(접수): http://thome.hi.co.kr/amends/damage/care/accident_take_process_17.jsp
2. 보상 사고 접수내역 상세 조회(추가 접수): http://thome.hi.co.kr/amends/damage/care/ViewAccident.jsp
3. PU 브라우저(팝업): /amends/damage/care/InnoPU/InnoPU.jsp
4. PU 브라우저 처리: /amends/damage/care/InnoPU/uploadProc.jsp
5. js 파일: /Appl/hib2c/docs/js/newjs/InnoPU/InnoPU.js, InnoPU_embed.js, InnoPU_AP.js, InnoPU5.cab
 1) /InnoPU.js 파일에서(라이센스 키 설정, 업로드 파일 갯수 설정)
// 한번에 업로드를 허용할 용량과 파일의 개수를 설정
var ip_TotalUploadSize = 15000; // 업로드가 가능한 최대 용량. 단위는 KB(51200KB: 50M, 15000KB: 15M) 
===> (현재: 1500KB, 수정: 15000KB)
var ip_UnitUploadSize = 1000; // 파일 하나의 최대 크기. 단위는 KB(10240KB: 10M) 
===>  (현재: 500KB, 수정: 1000KB)
var ip_MaxFileCount = 15; // 한번에 업로드가 가능한 파일의 개수를 지정(15개) 
===> 접수(현재: 3개, 수정: 15개), 추가 접수(현재: 3개, 수정: 5개)

6. image 정보: /images/newimages/InnoPU 
설명서(PU): http://www.innorix.com/resource/manual/pu_jsp.html
설명서(AP): http://www.innorix.com/resource/manual/ap_jsp.html
Tel. 557-2757 | Cel. 010-2422-0335 | 황문선(mshwang@innorix.com)
==============================================================================================================

- 하루웰 식권 구매
1. 천과장, 정대리, 권대리 ===> 총 24장(108,000원)
==============================================================================================================

- 프린터 설정
1. HP Color LaserJet 4700 PCL 6(IP: 10.81.17.120)  ==> 실제 프린터: HP Color LaserJet 4700dn
2. Samsung ML-4050 Series PCL 6(IP: 10.81.17.67)
==============================================================================================================
						 
■■■■■■■■■■■■■■■■■■ 2010.11.18(목) 작업 ■■■■■■■■■■■■■■■■■■  
---> 06:30 ~ 18:30

- 현대해상 SM
- 이노릭스 파일 업로드 테스트 및 적용  ===> 테스트 요청
1. 구비서류접수(접수): http://thome.hi.co.kr/amends/damage/care/accident_take_process_17.jsp
2. 보상 사고 접수내역 상세 조회(추가 접수): http://thome.hi.co.kr/amends/damage/care/ViewAccident.jsp
3. PU 브라우저(팝업): /amends/damage/care/InnoPU/InnoPU.jsp
4. PU 브라우저 처리: /amends/damage/care/InnoPU/uploadProc.jsp
5. js 파일: /Appl/hib2c/docs/js/newjs/InnoPU/InnoPU.js, InnoPU_embed.js, InnoPU_AP.js, InnoPU5.cab 
==============================================================================================================

- ID 등록 요청
http://homeadmin.hi.co.kr/auth/loginView.jsp  ===> IA1308/ssj****1
http://tmgr.hi.co.kr/auth/loginView.jsp  ===> IA1308/IA1308
==============================================================================================================

- 모델변경요청서(test) 신청서 등록
1. 업로드 필드 10개 추가(총 20개 파일 업로드)
==============================================================================================================

- 국민연금 재가입
1. 2011년 1월 부터 결제됨(월 89,100원) ===> 지역연금공단 관악지사(T: 6934-2180)
==============================================================================================================
						 
■■■■■■■■■■■■■■■■■■ 2010.11.19(금) 작업 ■■■■■■■■■■■■■■■■■■  
---> 06:50 ~ 18:30  --> 공수 등록

- 현대해상 SM
- P20101118-0031[업로드 컴포넌트 변경]
1. 구비서류접수(접수): http://thome.hi.co.kr/amends/damage/care/accident_take_process_17.jsp
2. 보상 사고 접수내역 상세 조회(추가 접수): http://thome.hi.co.kr/amends/damage/care/ViewAccident.jsp
3. PU 브라우저(팝업): /amends/damage/care/InnoPU/InnoPU.jsp
4. PU 브라우저 처리: /amends/damage/care/InnoPU/uploadProc.jsp
5. js 파일: /Appl/hib2c/docs/js/newjs/InnoPU/InnoPU.js, InnoPU_chu.js, InnoPU_embed.js, InnoPU_AP.js, InnoPU5.cab
6. 접수내역 상세 조회: /amends/dao/JubsuMgr.java
7. 접수내역 상세 조회(관리자): /manager/home/care/ViewAccidentList.jsp
8. 접수내역 상세 조회(관리자): /manager/home/care/dao/JubsuAdminMgr.java
==============================================================================================================

- 사고접수 저장 에러(XecureHttpJspPage 때문)
/cis/cisbean/amends/CLRF0100M01IBean.java 파일에서
public CisResultObjVO getTraAccident(HttpServletRequest request, String ifId)throws Exception{
	ifId ="IR_HI-HOME_0089";  // 가접수저장

	// 1. 요청/응답 업무객체 생성 및 데이터 설정
	amendVo.setClrf0111vo(accVo);

	// 2. 서비스 호출	
	OutboundProcess service = new OutboundProcess();
	service.setUserId(HiUtil.getCisUserId());
	//service.setLoopback(true, "CLRF0100M01I");
	service.call(ifId, amendVo, amendVo);
	System.out.println("[/CLFQ0010M01LBean.java] [getTraAccident()] ====> [ifId]"+ ifId +"[amendVo]"+ amendVo );

	// 3. 결과 확인
	if ( service.getTRState() ) {
		System.out.println("<br>================================");
		System.out.println("<br>CIS 호출 성공");
		System.out.println("<br>================================");

		CLRF0110VO[] RecInfoList = amendVo.getClrf0110voList();
		for(int i=0; i<RecInfoList.length; i++){
			HiUtil.nullToEmp(RecInfoList[i].getClass(), RecInfoList[i]);
			System.out.println("<br>청구VO 리스트---------------------------");
			System.out.println("<br>업무그룹코드     : " + RecInfoList[i].getReqBzGrpCd());			
			System.out.println("<br>보종군코드         : " + RecInfoList[i].getReqProdCdGrpCd());		
			System.out.println("[/CLFQ0010M01LBean.java] [getTraAccident()] ====> [ifId]"+ ifId +"[acdtInfo.length]"+ acdtInfo.length 
			+"[사고번호(접수번호)]"+ acdtInfo[i].getEvntAcdtRcpNo() );
		}
	}
}
==============================================================================================================

 - 파일 업로드 사이즈 변경
1. 원하는 사이즈로 변환은 불가
2. 추천 사이즈(해상도): 80,60 - 160,120 - 240,180 - 320,240 - 480,360 - 640,480 - 800,600 (4:3비율 기준)
var ip_SaveThumbnailSize = new Array();
ip_SaveThumbnailSize[0] = new Array(320, 240);  //조정된 이미지 생성
==============================================================================================================

- 업로드 이미지 확인
http://www.hi.co.kr/data/sagojupsu/201011/newimage111.jpg
--> /Appl/upload2/hib2c/data/sagojupsu/201008/newimage111.jpg
http://thome.hi.co.kr/data/sagojupsu/201011/B_1_allcancel.png
--> /Appl/upload2/hib2c/data/sagojupsu/201011/B_1_allcancel.png
http://www.hi.co.kr/data/sagojupsu/201008/2010115167.jpg   ==> 이미지 미존재 
==============================================================================================================

- 자동차보험가입증명서(사이버창구 --> 교통사고사항 및 지급결의확인서)
http://thome.hi.co.kr/servlet/hi.cybercenter.motor.servlet.MIC01AGServlet?q=7F000001
1. /cybercenter/motor/servlet/MIC01AGServlet.java 파일에서 호출
현재는 종결시에 피해자에게 발송되는 발행물을
향후에는 종결시에 피해자, 피보험자에게 각각 발행물이 발송되도록 해달라는 내용 입니다.(피보험자 추가)
IR_HI-HOME_0070(교통사고사항리스트)

1) ifid: IR_HI-HOME_0081  --> 아님
하상웅 과장(자동차계약팀): T)721-0287
장아름 사원(자동차계약팀): T)721-0291  ==> 발행물 담당
==============================================================================================================

- 하이손사 홈페이지 사고접수 업무처리화면 하이포탈 이전 요청
1. 사고접수 저장시 CIS 미처리 데이타 확인 요청
2. 작성자: 정세영(손사기획팀) 과장
3. 김희수 과장(개발팀): T)721-0314 
==============================================================================================================

- 모델변경요청서(Prod) 신청서 등록
1. 업로드 필드 14개 추가(총 20개 파일 업로드)
==============================================================================================================
						
■■■■■■■■■■■■■■■■■■ 2010.11.20(토) 작업 ■■■■■■■■■■■■■■■■■■  
---> 08:30 ~ 00:00
 
- SFR(6째주)
08:30 기상 
08:00 Super Fast-Reading 연습
09:30 종료
12:00 중식
13:30 Super Fast-Reading 학원
14:10 강의 ==> 속법, 시상 
17:30 종료
17:50 7호선 내방역
18:00 강남고속버스터미널
18:20 서울 출발
22:40 포항고속터미널(4시간 20분 걸림)
22:50 창포사거리(102번 버스)
23:20 포항집
23:30 석식
24:00 취침
==============================================================================================================
		
■■■■■■■■■■■■■■■■■■ 2010.11.21(일) 작업 ■■■■■■■■■■■■■■■■■■  
---> 08:00 ~ 00:00 

▦묘사
08:00 기상
08:30 염색(샤워)
10:50 묘사 준비(작은 아버지)
12:20 묘사(중욱(중협), 종근 아제, 병오, 병일 아제, 고모 3명)
13:00 종료 
13:30 중식
14:30 종료
16:30 포항집 출발
17:00 포항고속터미널(101번 버스)
17:40 포항 출발
23:40 강남고속버스터미널(6시간 소요)
23:50 버스(643번)
24:20 포항집 
01:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.11.22(월) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:05 ~ 18:30

- 현대해상 SM
- P20101118-0031[업로드 컴포넌트 변경]
1. 구비서류접수(접수): http://thome.hi.co.kr/amends/damage/care/accident_take_process_17.jsp
2. 보상 사고 접수내역 상세 조회(추가 접수): http://thome.hi.co.kr/amends/damage/care/ViewAccident.jsp
3. PU 브라우저(팝업): /amends/damage/care/InnoPU/InnoPU.jsp
4. PU 브라우저 처리: /amends/damage/care/InnoPU/uploadProc.jsp
5. js 파일: /Appl/hib2c/docs/js/newjs/InnoPU/InnoPU.js, InnoPU_chu.js, InnoPU_embed.js, InnoPU_AP.js, InnoPU5.cab
6. 접수내역 상세 조회: /amends/dao/JubsuMgr.java
7. 접수내역 상세 조회(관리자): /manager/home/care/ViewAccidentList.jsp
8. 접수내역 상세 조회(관리자): /manager/home/care/dao/JubsuAdminMgr.java
---------------------------------------------------------------------------------------------------------

- javascript trim() 함수 처리
/amends/damage/care/accident_take_process_17.jsp 파일에서(
function fn_trim(chk_str) {   /* 좌우 공백 제거 함수() */	 
    return chk_str.replace(/(^\s*)|(\s*$)/g, "");
}

function OnInnoPUComplete() {   // 전송 완료 후 수행되는 콜백 함수()	
	var ResponseData = document.InnoPU.ResponseData; // Action 파일에서 Response 된 데이터 
	var ResponseData_2 = fn_trim(ResponseData);   //좌우 공백 제거 함수 호출() 
	 
	if(ResponseData_2 == "1") {  //업로드 성공이면
		 alert("업로드가 성공 했습니다.");
	} else {
		alert("업로드 처리중 오류가 발생 하였습니다.");
	}
}
==============================================================================================================

- 사고접수 flow(흐름도)
상해/질병 보험 사고접수: /amends/damage/care/accident_takeDetailView.jsp
01. 사고접수가능계약조회(장기보험): /amends/damage/care/accident_takeJubsuList.jsp
 - 피보험자사항: 장기보험: /amends/damage/care/accident_takePiboList.jsp
01. 사고접수가능계약조회(일반보험): /amends/damage/care/accident_takeJubsuList_i.jsp
 - 피보험자사항: 일반보험: /amends/damage/care/accident_takePiboList_i.jsp
02. 사고사항 입력(1. 기본사고사항, 2. 보험금 수령은행): /amends/damage/care/accident_takeJubsuView.jsp
03. 설문내용입력/구비서류접수, 설문내용작성(01:자동차): /amends/damage/care/accident_take_process_15.jsp
03. 설문내용입력/구비서류접수, 설문내용작성(02:일반): /amends/damage/care/accident_take_process_28.jsp
03. 설문내용입력/구비서류접수, 설문내용작성(03:질병): /amends/damage/care/accident_take_process_16.jsp
03. 설문내용입력/구비서류접수, 구비서류접수: /amends/damage/care/accident_take_process_17.jsp
04. 사고접수사항확인: /amends/damage/care/accident_takeJubsuSave.jsp
05. 본인인증: /cybercenter/elecinsu/elecinsuCertifyView.jsp
06. 사고접수완료: /amends/damage/care/accident_take_process_06.jsp 
==============================================================================================================

- 진행상황명이 null 이면 담당자 배정중으로 처리
02. 사고접수내용 및 피해사항조회: /cybercenter/bosangcenter/bosangLongTermIlbanView.jsp
if(acdInfo.getReqClosNm().trim().equals("")) {  //진행상황명이 null 이면
	out.println("담당자 배정중");
} else {
	out.println(acdInfo.getReqClosNm());
}
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.11.23(화) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:10 ~ 18:30   --> 주간보고서 작성

- 현대해상 SM
- P20101118-0031[업로드 컴포넌트 변경] 이행 완료
1. 구비서류접수(접수): http://thome.hi.co.kr/amends/damage/care/accident_take_process_17.jsp
2. 보상 사고 접수내역 상세 조회(추가 접수): http://thome.hi.co.kr/amends/damage/care/ViewAccident.jsp
3. PU 브라우저(팝업): /amends/damage/care/InnoPU/InnoPU.jsp
4. PU 브라우저 처리: /amends/damage/care/InnoPU/uploadProc.jsp
5. js 파일: /Appl/hib2c/docs/js/newjs/InnoPU/InnoPU.js, InnoPU_chu.js, InnoPU_embed.js, InnoPU_AP.js, InnoPU5.cab
6. 접수내역 상세 조회: /amends/dao/JubsuMgr.java
7. 접수내역 상세 조회(관리자): /manager/home/care/ViewAccidentList.jsp
8. 접수내역 상세 조회(관리자): /manager/home/care/dao/JubsuAdminMgr.java
==============================================================================================================

- 02. R홈 서버 테스트 에러
1. cos.jar ---> import com.oreilly.servlet.MultipartRequest; 에러
2. C:\projects\cis-hi-b2c\docroot\WEB-INF\lib에 파일 등록
==============================================================================================================

- 하이손사 홈페이지 사고접수 업무처리화면 하이포탈 이전 요청
1. 사고접수 저장시 CIS 미처리 데이타 확인 요청
2. 사고접수 저장시 CIS 미처리 데이타 처리(CIS 전문 완료된 이후 작업할 계획)
2. 작성자: 정세영(손사기획팀) 과장
3. 김희수 과장(개발팀): T)721-0314 
지난주에 협의드렸던 홈페이지 장기손사 사고접수 관련하여, 
인테페이스 추가 항목 정의는 완료되셨나요?
==============================================================================================================

- 개선활동 양식 작성(개선활동 양식.xll)
1. 업로드 컴포넌트 변경
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.11.24(수) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:10 ~ 18:30   --> 아침시스템 당번, CS회의

- 현대해상 SM
- 추가 이행 요청(정일영 대리에게 요청)
1. 구비서류접수(이미지 변경): /amends/damage/care/accident_take_process_17.jsp
2. PU 업로드 처리(추가업로드일자 수정): /amends/damage/care/InnoPU/uploadProc.jsp
==============================================================================================================

- PU CAB 파일 다운로드
1. 상해/질병 보험 사고접수: http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView.jsp
==============================================================================================================

- 처리 프로세스 수정(확인(S)) 수정
1. 장기보험 사고가접수 상세조회: /manager/home/care/ViewAccident.jsp
/manager/home/care/dao/JubsuAdminMgr.java, Jubsu.java
==============================================================================================================

- 하이손사 홈페이지 사고접수 업무처리화면 하이포탈 이전 요청
1. 사고접수 저장시 CIS 미처리 데이타 확인 요청
2. 사고접수 저장시 CIS 미처리 데이타 처리(CIS 전문 완료된 이후 작업할 계획)
2. 작성자: 정세영(손사기획팀) 과장
3. 김희수 과장(개발팀): T)721-0314 
상해질병 사고접수 -> 윤종규 사원(보상손사팀): T)721-0265
--------------------------------------------------------------------------------------------------------

1. 빠진 부분: QUESTION1: 설문1, QUESTION2: 설문2, QUESTION3: 설문3, QUESTION4: 설문4
2. 신규: ractInsrdJob: 피보험자 직업
3. 파일 업로드(신규): IMGUPLOAD_UP_DT: 추가업로드일자, IMGURL4: 첨부서류URL4, IMGUPLOAD4: 이미지업로드4, 
  IMGURL20: 첨부서류URL20, IMGUPLOAD20: 이미지업로드20, ADMIN_TRAN_ID: 확인자사번 
--------------------------------------------------------------------------------------------------------

1. 보험금 수령은행에 관한 정보에서 아래값 확인 부탁드립니다.
 - 예금주주민번호(매핑?) ====>  미반영된 것으로 추정됨
 - 피보험자와의 관계(허용값은?) ====> (P:부모, Y:본인) 
2. 설문에서 아래정보 확인 부탁드립니다,
 - 설문1(허용값?): String --> VARCHAR2(25)
 - 설문2(허용값?): String --> VARCHAR2(25)
 - 설문4(허용값?): String --> VARCHAR2(25)
3. "의료정보및 개인정보 활용 동의여부"는 꼭 확인해야만 홈페이지에서 접수가 되는지요? 아니면 동의여부를 데이터로 관리해야 하는지요?
===> 의료정보및 개인정보 활용 동의는 필수(동의 없으면 등록 자체가 불가능)이고 동의여부 데이터는 관리하지 않습니다.
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.11.25(목) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:00 ~ 18:30

- 현대해상 SM
- EDMS 이미지 전송
1. 임시 파일 서버에 파일 업로드
2. 파일 전송(CIS 처리)  ===> 관리자에게 배당 처리시
3. 임시 파일 서버에서 전송된 파일 삭제(1달 보관 후)
4. 관련 담당자
 1) 조영우 사원(보상손사팀): T)721-0256 
 2) 이규희 사원(솔루션팀): T)721-0181)  ===> 담당
전송가능 파일: jpg, gif, png, bmp, tif, pdf 
--------------------------------------------------------------------------------------------------------

EDMS개발가이드_EDMS_임길섭_20090512_v1.0.doo
9.	EDMS 전자문서등록,문서조회 화면 연계
9.3.	기간계 solution.js 메서드를 이용한 연계
//saveEdms(lctg_cd, mctg_cd , ret_prd_expdt , send_dt , meta_list );
//saveEdms("GI", "01" , "99991231" , "20081028" , "ZZ01:S20080005677;ZZ02:1234567" ); // 전자문서등록 
saveEdms("CM", "01" , "99991231" , "20101125" , "ZZ01:L20085720292;ZZ02:1234567" ); // 전자문서등록 
//계약번호가  S20080005677이고 조사번호가 1234567 이고 
// meta_list : 검색번호목록 -> 업무조회에서 사용하는 검색번호(구분자 ; 사용하여 여러검색번호처리가능)

lctg_cd :  대분류 코드                 -> 업무별 대분류(자동차보상: CM)
mctg_cd : 중분류 코드                -> 업무 중분류(접수: 01)
ret_prd_expdt : 보존기간만료일	-> 보존기간만료일 (예:99991231)
send_dt :  업무발생일                 -> 업무발생일을 지정합니다.(예:20081028)
meta_list : 검색번호목록              -> 업무조회에서 사용하는 검색번호(구분자 ; 사용하여 여러검색번호처리가능)

1. 서식코드가 사진(0123)이
- 서식코드 확인: http://dev-edms.cis.co.kr:50401/jsp/edmadm/eCmForm0001m0.jsp 
- 검색번호 코드확인: http://dev-edms.cis.co.kr:50401/jsp/edmadm/eCmMetaNo0001m0.jsp
- 업무중분류 확인: http://dev-edms.cis.co.kr:50401/jsp/edmadm/eCmMapng0000m0.jsp
- 전자문서 등록(화면): http://dev-edms.cis.co.kr:50401/jsp/edmapp/eCmReg0001m0.jsp
------------------------------------------------------------------------------------------------------

//listEdms(img_ky , img_det_seq_no , lctg_cd , mctg_cd , meta_list , form_list, wmtext)
listEdms("" , "" , "" , "" , "ZZ01:S20080005677;ZZ02:1234567" , "");	// 이미지조회
------------------------------------------------------------------------------------------------------

10.1.2.	문서조회 연계
15.	EDMS 관련 ActiveX 사용 가이드- edmRegView

//이미지전송
function sendEDMS(objid){
	var objRegView=document.getElementById(objid);
}
==============================================================================================================

/ViewAccident.jsp 파일에서
<input type="button"  name="btnSearch32" value=" 배당 "  onclick="javascript:saveEdms('<%=lctg_cd%>', '<%=mctg_cd%>
', '<%=ret_prd_expdt%>', '<%=send_dt%>', '<%=meta_list%>')"   style="cursor:hand"/>

/solution.js 파일에서
function saveEdms(lctg_cd, mctg_cd, ret_prd_expdt, send_dt, meta_list) {  /*** @desc   : 전자문서 등록(EDMS)  **/

	//saveEdms("CM", "01" , "99991231" , "20101125" , "ZZ01:L20085720292;ZZ02:5401" ); // 전자문서등록 ==> (자동차보상: CM, 접수: 01)
	// meta_list : 검색번호목록 -> 업무조회에서 사용하는 검색번호 ==>  계약번호가 L20085720292이고 신청번호가 5401

	if( lctg_cd == null ) lctg_cd = "";
	if( mctg_cd == null ) mctg_cd = "";
	if( ret_prd_expdt == null ) ret_prd_expdt = "";
	if( send_dt == null ) send_dt = "";
	if( meta_list == null ) meta_list = "";
	 
	var gotourl = edmsRoot+"jsp/edmapp/eCmReg0001m0.jsp?lctg_cd="+lctg_cd+"&mctg_cd="+mctg_cd+"&ret_prd_expdt=" + 
	ret_prd_expdt + "&send_dt=" +send_dt+"&meta_list="+meta_list;    
	 //=====>  edmsRoot 에서 에러가 남(정의가 안되어 있음), edmsRoot가 어떻게 되죠?
	
	try{
		htmldocument.Script.openListEdms(gotourl);  //=====>  htmldocument 에서 에러가 남(정의가 안되어 있음), 
		htmldocument 어떻게 처리 하죠?
	}
	catch(e) {
		var edmsPopUp = htmlwindow.open(gotourl,"edmsPopUpId","fullscreen=0,toolbar=0,scrollbars=0,location=0,
		status=0,menubar=0,resizable=1");
		edmsPopUp.focus();
	}
}
==============================================================================================================

- 가상FAX 번호 생성 
 1) 사고접수시 구비서류접수 FAX 전송(FAX 번호가 1개라서 혼란스러움)
    ==> 수정: 접수번호를 기준으로 가상FAX번호 생성(관리자화면에서 가상FAX번호로 사고접수 처리)
2. 담당: 상해질병 사고접수 -> 윤종규 사원(보상손사팀): T)721-0265
    협업담당: 정세영(손사기획팀) 과장
 1) "Y".equals(clrf0100vo.getBzFlag() ===> 가상FAX번호 신청 --> 수신서비스ID(TRANID): CLRF0100M01I
==============================================================================================================

- 채널서비스팀 일정 캘린더 개발
http://thome.hi.co.kr/calendar/calendar.jsp
==============================================================================================================
						 
■■■■■■■■■■■■■■■■■■ 2010.11.26(금) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:00 ~ 18:30

- 현대해상 SM
- P20101125-0025[장기사고접수 메인화면 변경 및 라이센스 등록 작업]
1. 자원: 7개(JSP: 2, JS: 2, exe: 1, JAVA: 2) ==> (JSP: 4, JS: 4, exe: 2, JAVA: 4, CLASS: 2)(산출물 포함) ==> 총 16개
==============================================================================================================

- 사고접수 가능계약조회 확인 요청(유성철 대리) 
1. 사고접수 화면(보상창구 => 상해/질병보상)
2. 사고접수 가능계약조회(7605032798613(김정자))
- 조회 된 데이타 없음(해지는 오늘 함)
3. 상해질병 사고접수 -> 윤종규 사원(보상손사팀): T)721-0265
  조도익 사원(장기보험팀): T)721-0374, 고상희 팀장(장기보험팀): T)721-0402
  이태용 과장(장기보험팀): T)721-0374,
  - 현재: 유지(1)로 설정(<agmtStatL>1</agmtStatL>) ===> 전체(0)로 설정하면 조회 가능 함

# 계약상태조건 (agmtStatL)
0:전체, 1:유지, 2:미납해지, 3:종결, 5:전체(종결제외)
==============================================================================================================

- EDMS 이미지 전송
1. 장기보험 사고가접수 상세조회: /manager/home/care/ViewAccident.jsp  ===> 파일 전송(CIS 처리)
2. 장기보험 사고가접수 처리 프로세스: /manager/home/care/servlet/servlet/Jubsu.java
==============================================================================================================

- WCC피씨
1. 공용피씨(WCC피씨 포함) 암호는 hdmf0082(vnc도 마찬가지)
==============================================================================================================

- 자동차 운전면허 재발급: 찾아옴
1. 관악경찰서: T) 874-0112, 본관 Desk 안내실
==============================================================================================================

- 에어컨
1. LG LP-H0608D LG 휘센 15평 히트펌프 냉난방기, 가격: 1,350,000원  ===> 지방전문설치
http://item.gmarket.co.kr/challenge/neo_goods/goods.asp?goodscode=199008537&pos_shop_cd=SH&pos_class_cd=111111111
&pos_class_kind=T&search_keyword=
==============================================================================================================
					
■■■■■■■■■■■■■■■■■■ 2010.11.27(토) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:30 ~ 00:00
 
- SFR(7째주)
08:30 기상
12:00 중식
13:10 Super Fast-Reading 학원
14:00 자습(정성락 전도사가 결혼식 참석으로 17시에 옴)
14:20 개인 연습(50': 721P) ==> 마리아(중3, 유학(뉴저지)) 
17:30 저녁(컵라면 밥)
18:00 강의(흐뭇 --> 느긋)(1': 14.17P)  ==> 자신감(정성락 전도사가 진도 빠르다고 칭찬함) 
19:50 종료
20:30 귀가
==============================================================================================================
	
■■■■■■■■■■■■■■■■■■ 2010.11.28(일) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:30 ~ 00:00 

▦조기축구
07:40 기상
08:30 신구초등학교
08:50 게임(4:1 승) 
10:00 게임(5:1 승)
11:00 종료
11:10 유명국 해장국 가져와서 끓여 먹음
12:00 종료
12:30 Super Fast-Reading 학원
14:00 강의 ==> 종이 한 장 차이(자신감), 마음의 문
17:30 저녁(컵라면 밥)
18:00 강의(1': 18P)
19:00 종료
19:30 귀가
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.11.29(월) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:00 ~ 18:30

- 현대해상 SM
- P20101125-0025[장기사고접수 메인화면 변경 및 라이센스 등록 작업] 이행 완료
1. 자원: 7개(JSP: 2, JS: 2, exe: 1, JAVA: 2) ==> (JSP: 4, JS: 4, exe: 2, JAVA: 4, CLASS: 2)(산출물 포함) ==> 총 16개
==============================================================================================================

- EDMS 이미지 전송
1. 장기보험 사고가접수 상세조회: /manager/home/care/ViewAccident.jsp  ===> 파일 전송(CIS 처리)
2. 장기보험 사고가접수 처리 프로세스: /manager/home/care/servlet/servlet/Jubsu.java
/manager/home/care/dao/JubsuAdminMgr.java 파일에서 
String imgKy = new EdmsClient().registDocument( EdmsRegType.DOC, "CM", "308703", "090200", "IA1308", "090200",
		"20101129", "99991231", "10.81.17.78",
		new EdmsFileSpec[]{	new EdmsFileSpec( "CM01", "0123", "사진", "c:\\temp\\132.gif", "1", ""
		, "ZZ01:123456789;ZZ02:34567890", "132.gif")}	// 파일정보 
	 );

/*
public String registDocument(EdmsRegType regDivType // 등록구분 --> EdmsRegType.DOC
            , String businessCode // 대분류코드 --> CM(자동차 보상)
            , String affairsID // 업무담당자 사번 --> 308703
            , String affairsBranchCode // 업무담당자 부서 --> 090200
            , String scanUserID // 등록자 사번 --> IA1308
            , String scanBranchCode // 등록부서코드 --> 090200
            , String sendDate // 업무발생일(yyyymmdd) --> 20101129
            , String expireDate // 보존기간만료일 --> 99991231
            , String iPAddress // ip주소 --> 10.81.17.78
            , EdmsFileSpec[] filespec // 파일정보리스트
    ) 
// 파일정보클래스배열 new EdmsFileSpec( "CM01" //대분류+중분류(4) ,"0123" //서식코드
// ,"사진" //서식표기명 ,"c:\\temp\\132.gif" //전송파일위치 ,"1" //사용자보안등급
// ,"" //주석 ,"ZZ01:123456789;ZZ02:34567890" //검색번호,
//"132.gif"//원파일명 )
*/
==============================================================================================================

 1. EDMS 파일 전송 처리 일정
-------------------------------------  
설계 : 12/01  ~ 12/03 24시간
구현 : 12/06  ~ 12/10 40시간
테스트 :12/13  ~ 12/16 40시간
이행 :12/17 4시간
==============================================================================================================

- 도시가스 검침: 2010.11.29(월) 19시 30분
서울도시가스 검침원 HP) 011-74219-1949
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.11.30(화) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:15 ~ 18:30

- 현대해상 SM
- EDMS 이미지 전송
1. 장기보험 사고가접수 상세조회: /manager/home/care/ViewAccident.jsp  ===> 파일 전송(CIS 처리)
2. 장기보험 사고가접수 처리 프로세스: /manager/home/care/servlet/servlet/Jubsu.java  
- 업로드 이미지 확인
http://thome.hi.co.kr/data/sagojupsu/201011/132.gif 
--> /Appl/upload2/hib2c/data/sagojupsu/201011/132.gif
==============================================================================================================

- 현대자동차 프로모션
http://thome.hi.co.kr/events/hd_promtion/promtion_main.jsp
/happyplus/joinsale/servlet/ContractSearchSvt.java 파일에서
public String isAnyContractExist(String rsn_no) throws Exception {
}
---------------------------------------------------------------------------------------------------------

김희진 사원:  ==> 이행일자: 12.07(화), 오픈일자: 12.08(수) 
무궁화삼천리(680817-1348411) ===> C1201-0000001
현대차프로모션 테이블(EVENT_HD_CAR_PR)
→ 쿠폰 출력한 고객명 / 주민번호 / 쿠폰번호 DB저장
==============================================================================================================

 - 담당자 연락처 틀림(CIS 전문(IR_HI-HOME_0091)에서 받아 옴) ===> 이행 요청(정일영 대리)
- 02. 사고접수내용 및 피해사항조회: /cybercenter/bosangcenter/bosangLongTermIlbanView.jsp
String ifId = "IR_HI-HOME_0091";  //사고사항기본조회 --> 김하나(8102142018918)/ 사고번호 1011172368  

/CLFQ0032VO.java 파일에서
<chwkTelAraNo>02</chwkTelAraNo>	--> 담당자 연락처1
<chwkTelTxNo>2129</chwkTelTxNo>	--> 담당자 연락처2
<chwkTelSeqNo>5225</chwkTelSeqNo> --> 담당자 연락처3 
<chwkTelNo>02-2166-1981</chwkTelNo> --> 담당자 연락처(신규)

담당자 연락처:(<%=acdInfo.getChwkTelAraNo()%>-<%=acdInfo.getChwkTelTxNo()%>-<%=acdInfo.getChwkTelSeqNo()%>)
==> 담당자 연락처:(<%=acdInfo.getChwkTelNo()%>)
============================================================================================================== 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //----------------------------------------------------------+ 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 