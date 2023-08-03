

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2010.04) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■  2010.04.01(목) 작업 ■■■■■■■■■■■■■■■■
---> 06:00 ~ 01:00  --> 삽겹살집(현용: 내가 쏨, 소주 2병: 밤에 공부 못 함) 

- 삼성닷컴 리뉴얼
- JSP FUNCTION 정리 
1. 주요업무 
Landing Page 
Feature Page 
Feature Html Page 
2. 일정: 03/31(수) ~ 04/07(수) 

[/FeatureScript.jsp] ======> [TEST]<br> 
alert("[/feature_main.jsp] ======> [selectContentMenu()]:[url]"+ url); 
<jsp:include page="../../2_5/common/FeatureScript.jsp" flush="true"/><!--// JSP FUNCTION 정리 include(진태만_추가) --> 
-------------------------------------------------------------------------------------------------------- 

▣ features 소스 분석 
1. /op/2.5/main/frontMain.jsp 파일에서 
 왼쪽 메뉴바에서 features 이미지 클릭 ==> /iw-sec/2.5/features/feature_main.do 

2. /op/2.5/struts-config-features.xml 파일에서 
<action path="/2.5/features/feature_main" scope="request"  
parameter="method" type="com.sec.dotcomop1_6.features.front.action.FeatureFrontAction" > 
<forward name="success" path="/WEB-INF/jsps/op/2.5/features/feature_main.jsp" /> 
</action> 
  
3. /op/2.5/features/feature_main.jsp 파일에서  
<jsp:include page="frontFeatures.jsp" flush="true" /> 
<!-- footer edit box start --> <jsp:include page="frontFunction.jsp"  flush="true" /><!-- footer edit box end --> 
  
4. /op/2.5/features/frontFeatures.jsp 파일에서  
 1) 등록되는 Style(image, title) 정보 Display 

5. /op/2.5/features/frontFunction.jsp 파일에서 
 1) Basic Info 정보 Display 
========================================================================================================= 
  
▣ feature_html 소스 분석 
1. /op/2.5/main/frontMain.jsp 파일에서 
 왼쪽 메뉴바에서 features 이미지 클릭 ==> /iw-sec/2.5/features/feature_html.do 

2. /op/2.5/struts-config-features.xml 파일에서 
<action path="/2.5/features/feature_html" scope="request"  
parameter="method" type="com.sec.dotcomop1_6.features.front.action.FeatureFrontHtmlAction" > 
<forward name="success" path="/WEB-INF/jsps/op/2.5/features/feature_html.jsp" /> 
</action>  
  
3. /op/2.5/features/feature_html.jsp 파일에서  
<jsp:include page="frontHTML.jsp" flush="true" /> 

4./op/2.5/features/frontHTML.jsp 파일에서 
 1) 등록되는 Style(image, title) 정보 Display 

5. /op/2.5/features/frontFunction.jsp 파일에서 
 1) Basic Info 정보 Display 
==============================================================================================================

 - OP 1차(UK) 오픈 테스트 
1. WCMS ADMIN 사이트 로그인, URL: http://210.118.57.80/iw-sec/ektzja2009.do, am_lom/asdf1234    
2. OP 개발서버 테스트 URL 호출, URL: http://210.118.57.80/iw-sec/1.6/op_mainDoc.do 
3. Online Preview 화면 호출 
 1) 기존화면 -> 노출국가 선택 : UK 이외 
-> system 선택 : WCMS 
-> Online Preview 버튼 클릭 
-> 화면 기능 테스트 예 : 첨부파일 참조 
 2) 신규화면 
-> 노출국가 선택 : UK 
-> system 선택 : WCMS 
-> Online Preview 버튼 클릭 
---------------------------------------------------------------------------------------------------------------------------------

1. OP BUG LIST  
 화면  기능  상세내용   확인자   
 feature  라디오 버튼 클릭  Image Pool POPUP 팝업창에서 System 라디오 버튼 WCMS에서 PVI로 변경하면 스크립트 에러가 남  진태만 
 feature  select 이미지 버튼 클릭  Image Preview Contents Pool에서 select 이미지 선택시 스크립트 에러가 남  진태만 
 feature  이미지 버튼 클릭  Gallery Popup Main에서 이미지 조회 후 이미지 더블 클릭을 하면 스크립트 에러가 발생  진태만 
 specifications  이미지 버튼 클릭  Online Preview Image Pool에서 이미지 조회 후 이미지 더블 클릭을 하면 스크립트 에러가 발생  진태만  
==============================================================================================================

- 바른글씨 연습(11주 63회) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.04.02(금) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 06:40 ~ 01:00 

- 삼성닷컴 리뉴얼
 - OP BUG LIST  
 화면  기능  상세내용   확인자   
 feature  라디오 버튼 클릭  Image Pool POPUP 팝업창에서 System 라디오 버튼 WCMS에서 PVI로 변경하면 스크립트 에러가 남  진태만 
 award  Insert Text 편집창 편집  Add Group ==> Style(Image + Title) 선택 ==> Insert Text 편집창에서 한글을 작성하면 글자 윗부분이 미세하게 깨져 보임  진태만 
 learning resource  Insert Text 편집창 편집  Insert Text 편집창을 클릭을 하면 글자선 테두리가 깨어짐  진태만 
==============================================================================================================

1. VMware 6.5 설치 
2. IE Tester 0.2.3 업그레이드 요망(http://www.my-debugbar.com/wiki/IETester/HomePage)  
3. IE 8.0의 호환성 보기 
말그대로 웹 사이트를 호환해서 보는 방식 
웹 사이트를 만든자가 IE 8.0 이전을 기반으로 만든 홈페이지라면 IE 8.0에서 그 사이트를 방문하게 되면 페이지 오류가  
뜨고 페이지가 보이지 않을 때가 있습니다. 그럴때 호환성 보기를 누르게 되면 그 만든자가 처음에 기반으로 만든 IE 체 
계로 자동 호환되어 오류가 뜨지 않고 페이지를 볼 수 있게 됩니다. 
또한 작고 작은 오류들이 생기는것을 막아주어 로딩 속도 또한 향상되는 것을 볼 수 있습니다. 
1. 조치 
1) IE(마우스 오른쪽 클릭) --> 호환성 보기 단추(V): 체크 
2) 도구 --> 호환성 보기 설정(B) 
==============================================================================================================

- 자바 스크립트 디버깅 
1. /op/2.5/awards/frontDDMain.jsp 파일에서  
<script language="javascript"> 
//부모창을 찾을 때 
parent.document.getElementById('inner_test_1').innerHTML  
= "<[FeatureScript.jsp] ===> [buildContent()][img_src]"+ img_src +"[t_2]"+ t_2"; 
//정상 innerHTML 
document.getElementById('inner_test_1').innerHTML = "[/FeatureScript.jsp] ===> [buildContent()][test]>"; 
</script> 

<div id="inner_test_1"></div> 
==============================================================================================================

- STOCKS 
월(3,520), 화(3,465), 수(3,450), 목(3,380), 금(3,405) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.04.03(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:40 ~ 00:00 

- KCISA5 DB(1),IT(1) 
1. 수업: DB(1) --> 정성삼 감리사), IT(1) --> 유지호 기술사 
2. 약식모의고사[2회]: 64점(16등) ==> (합산 평균: 68점) 
==============================================================================================================

- 감리사 과목별 대응 방안 및 참고 도서(유지호 기술사) 
1. 감리 및 사업관리 
 1) 법령(기준 + 해설서), S/W 사업대가, 웹접근성, 참조모델 
 2) PM+P 개정4판 
2. SE 
 1) 공무원 7급 수험서, SW공학(8판)-흥롱과학출판사(박현철 지음) 
 2) UML 이해와 실제 - 한국소프트웨어컴포넌트컨소시엄(박현철 지음) 
3. DB 
 1) 공무원 7급 수험서, 데이터베이스 시스템(이석호)   
4. 시스템 구조 및 보안 
 1) SIS(www.sis.or.kr) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.04.04(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:00 ~ 00:00 

- KCISA6 IT(2,3)
06:30 기상(차가지고 감) 
07:10 신구초등학교 
07:30 숏게임(3:1 승) 
08:30 게임(3:2 승) 
09:30 종료 
09:40 강남역 우성 5차 APT 근처에 주차 
09:50 학원 도착(교재 안 들고 옴: 프런트에서 교재 빌림, 2회 약식모의고사 문제 현용에게 줌) 
10:00 수업(IT(2, 3) --> 유지호 기술사) 
13:20 중식(된장찌게: 현용이 쏨) 
16:50 수업 종료  
17:40 귀가  
00:00 취침 
==============================================================================================================

- 바른글씨 연습(11주 66회 ===> 11주차 첨삭지도 올림) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.04.05(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:40 ~ 01:00 

- 삼성닷컴 리뉴얼
- JSP FUNCTION 정리 
1. Feature Page 
alert("[/FeatureScript.jsp] ======> [buildContent()]:[img_url]"+ img_url); 
==============================================================================================================

- OP 1차(UK) 오픈 관련 수정 
/op/2.5/main/frontMain.jsp 파일에서 
1. Short Description 줄수 제한(3줄 이상 못 입력하게 수정) 
function LineLF_Check(){  //Short Description 줄수 체크 함수(진태만_추가) 
if(maintextObj){ 
            var tx = maingetTxtObject(maintextObj); 
            var str = tx.value; 
            var totLineCnt = 0; 
             
            LineCnt = str.split('\n').length;  //줄 수  
             
            if (LineCnt > 3) { 
                alert("Short Description Input can't beyond 3 lines."); 
                event.returnValue=false; 
             } 
        }   
} 

/** 선택한 object 의 textarea 객체 반환 ==> div 데이타도 값(value)을 받아 오게 하는 함수(input text처럼 처리) 
* obj : 선택 object 
*/ 
function maingetTxtObject(mainobj) { 
	for(var i in mainobj.childNodes){ 
	    if(mainobj.childNodes[i].tagName=="TEXTAREA") { 
	return mainobj.childNodes[i]; 
	    } 
	} 
} 

<div class="copy" id="prd_mdl_short_desc" style="margin-top: 20px; clear: both;" if(event.keyCode==13){return false;}  
onmousedown="mainselectMenu('prd_mdl_short_desc', null, event);" onkeypress="LineLF_Check('prd_mdl_short_desc');"> 
<c:out value="${maintopshortdesc}" escapeXml="false" /> <!--// Short Description --> 
</div> 
==============================================================================================================

- 아이핀 발급(i-pin) 
발급기관: 한국신용평가정보 
tamario/ssp***8*1@ 
==============================================================================================================

- 바른글씨 연습(12주 67회) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.04.06(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 01:00  --> UK Launch  

- 삼성닷컴 리뉴얼
- JSP FUNCTION 정리 
1. Landing Page 
/op/2.5/main/flagshipMain.jsp, flagshipLanding.jsp 
2. Feature Page 
/op/2.5/features/feature_main.jsp, frontFeatures.jsp, frontFunction.jsp, layerMenu.jsp, contentsSearch.jsp 
, imagePopupList.jsp, imagePopupSearch.jsp 
3. Feature Html Page 
/op/2.5/features/feature_html.jsp, frontHTML.jsp, frontFeatures_sam.jsp 
==============================================================================================================

▣ Key Visual Image(features) 팝업 소스 분석 
1. /op/2.5/main/frontMain.jsp 파일에서  
function keyvisual_popup(){ 
	if(objById("op_count").value != "0"){   // 최초 저장 후 key_vi와 gallery 팝업 띄우기 위한 변수 ==> key visual 팝업 호출 
	var url="/iw-sec/2.5/main/keyviPopupMain.do?"; 
	} 
} 

<a href="javascript:keyvisual_popup();" class="btn_visual_img"> 
<img src="/iw-sec/common/images/op/consumer/detail/btn_visual_image.gif" alt="Visual Image" /></a> 
<!--// Key Visual Image 이미지 클릭 //--> 

2. /op/2.5/struts-config-main.xml 파일에서 
<action path="/2.5/main/keyviPopupMain" type="com.sec.dotcomop1_6.main.front.action.KeyViPopupMainAction"> 
<forward name="success" path="/WEB-INF/jsps/op/2.5/main/keyviPopupMain.jsp" /> 
</action> 

3. /op/2.5/main/keyviPopupMain.jsp 파일에서(팝업) 
 1) Gallery Popup Main Display 
==============================================================================================================

▣ Visual Image(features) 팝업 소스 분석 
1. /op/2.5/main/frontMain.jsp 파일에서  
function galleryPopup(){   //==> Gallery 팝업 호출 
        if(objById("op_count").value != "0"){   // 최초 저장 후 key_vi와 gallery 팝업 띄우기 위한 변수 
var url="/iw-sec/2.5/gallery/galleryPopupMain.do?"; 
} 
} 

<a href="javascript:galleryPopup();" class="btn_gallery"> 
<img src="/iw-sec/common/images/op/consumer/detail/btn_gallery.gif" alt="Visual Image" /></a> 
<!--// Visual Image 이미지 클릭 //--> 

2. /op/2.5/struts-config-gallery.xml 파일에서 
<action path="/2.5/gallery/galleryPopupMain" type="com.sec.dotcomop1_6.gallery.action.GalleryPopupMainAction"> 
<forward name="success" path="/WEB-INF/jsps/op/2.5/gallery/galleryPopupMain.jsp" /> 
</action> 

3. /op/2.5/gallery/galleryPopupMain.jsp 파일에서(팝업)  
 1) Gallery Popup Main Display 
==============================================================================================================

- 5회_필기시험문제 
89. 365일 24시간 서비스를 제공하는 시스템에서 장애발생으로 8시간의 
서비스 중단이 발생한 경우 서비스 가용성은 몇 %인가?(소수점 3자리 이하는 절사) 
①99.50% ②99.90% ③99.95% ④ 99.99%  
----------------------------------------------------------------------------  
- 5회_필기시험문제 풀이 
MTTF(Mean Time To Failures, 고장까지의 평균 시간), MTTR(Mean TIme To Repair, 평균 수리 시간) 
MTBF(Mean TIme Between Failure, 평균 무 고장 시간) 
MTBF = MTTF + MTTR 
가용성 = MTTF / MTBF = (MTBF - MTTR) / MTBF, 효율성 = MTBF   
MTTF = 8760-8 = 8752, MTTR = 8 
MTBF = 24시간 * 365 = 8760시간   
가용성 = MTTF/MTBF = 8752/8760 = 99.908675.... = 99.90%  
==============================================================================================================

- 태용 생일  
19:00 태용 만남(교대역 5번 출구) 
19:10 감자탕집(현용 도착) 
20:10 당구장(임모 도착): 수지 100 놓고 쳐서 아쉽게 꼴찌함 
21:00 오징어 브라더스(내가 쏨: 만원)(도경씨(운전 서약서 공증) 도착: 사실상 상견례 했다고 함) 
22:30 아사히 맥주집 
01:30 택시(9,800원 나옴)  
01:50 귀가 
02:10 바른글씨 연습 
03:00 취침 
==============================================================================================================

- 바른글씨 연습(12주 68회) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.04.07(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:10 ~ 01:00 

- 삼성닷컴 리뉴얼
- JSP FUNCTION 정리 
1. Landing Page 
2. Feature Page 
==============================================================================================================

- 바른글씨 연습(12주 69회) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.04.08(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:40 ~ 01:00  --> OP, Admin 회식(삼겹살: 임영두 부장 주관) 

- 삼성닷컴 리뉴얼
- JSP FUNCTION 정리(완료) 
1. Landing Page 
2. Feature Page 
3. Feature Html Page  
==============================================================================================================

- OP 내부 회의 
1. 김보경 과장 교체(이유: 정직원 채용) 
2. 일정 
 1) UK 오픈 완료(2010.04.06(화)) 
 2) 확장 작업 
  가. 아랍 사이트(Arabic site: 4 ~ 5월) 
 3) Rewal 작업 
  가. 4월 말 
   가) 프레임워크 
   나) javascript 
   다) java function 
   라) SQL 
   마) 화면 기획(최수용 PL) 
  나. 5월 말 
   가) 재개발(추가 기능 반영) 
  다. 6월 중순 ~ 7월 초(오픈 예정) 
   가) 단위 테스트, 통합 테스트 
3. 기타 
 1) 4월 13일 오픈 대비 일정 
  가. 9일(금) ~ 12일(월): 테스트 
  나. 13일(화): 오픈 대기 
  다. 수정 부분 
   가) 이미지 새창에서 PVI 제외 됨 
   나) Basic Info에서 Request Info 추가됨 
  라. FR, SEC Launch(2010년 05 25일(화)) 
==============================================================================================================

- VM Ware 7.0 설치 
1. vmware-workstation-full-7.0.0-203739.exe 
 1) XP Pro 설치(CD-KEY: W63C7-3TXX3-M6MRR-89D47-PF66D) 
==============================================================================================================

- 바른글씨 연습(12주 70회) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.04.09(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:20 ~ 01:00 

- 삼성닷컴 리뉴얼
- OP 오픈 관련 테스트(새창 띄우기) 
1. Key Visual Image 
http://localhost:8080/iw-sec/2.5/main/keyviPopupMain.do?&op_site_cd=uk&site_cd=opv&prd_mdl_name=LE40B650T2W 
&prd_mdl_cd=LE40B650T2WXXH&op_prd_mdl_cd=LE40B650T2WXXH&prd_ia_cd=02011500&system_cd=WCMS  
2. Visual Image 
http://localhost:8080/iw-sec/2.5/gallery/galleryPopupMain.do?&op_site_cd=uk&site_cd=opv&prd_mdl_name=LE40B650T2W 
&prd_mdl_cd=LE40B650T2WXXH&op_prd_mdl_cd=LE40B650T2WXXH&prd_ia_cd=02011500&system_cd=WCMS 
&showImageType=main&tempParam 
3. Gallery Image Search & Upload 
http://localhost:8080/iw-sec/2.5/main/keyviImage.jsp?op_site_cd=uk&site_cd=opv&op_prd_mdl_cd=LE40B650T2WXXH 
&prd_mdl_cd=LE40B650T2WXXH&prd_mdl_name=LE40B650T2W&prd_ia_cd=02011500 
==============================================================================================================

- /op/2.5/main/keyviimageSearch.jsp 파일(이미지 조회)에서  
alert("[/feature_main.jsp] ======> [selectContentMenu()]:[url]"+ url);  
==============================================================================================================

- Struts에서 URL 자동 debug log 찍기 하기(URL 확인) 
1. /WebContent/WEB-INF/web.xml 파일에서 
<!-- ## FILTER --> 
<filter> 
<filter-name>RequestFilter</filter-name> 
<filter-class>filter.RequestFilter</filter-class> 
</filter> 
<!-- ## FILTER MAPPING --> 
<filter-mapping> 
<filter-name>RequestFilter</filter-name> 
<url-pattern>*.do</url-pattern> 
<dispatcher>REQUEST</dispatcher> 
</filter-mapping> 
<filter-mapping> 
<filter-name>RequestFilter</filter-name> 
<url-pattern>*.jsp</url-pattern> 
<dispatcher>REQUEST</dispatcher> 
</filter-mapping> 

2. /src2/filter/RequestFilter.java 파일에서 
public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException { 
	HttpServletRequest req = (HttpServletRequest) request; 
	HttpServletResponse rep = (HttpServletResponse) response; 

	String url = req.getContextPath() + req.getServletPath(); 

	logger.debug("===========[REQUEST] start " + url + "?" + req.getQueryString()); //요청한 URL(.do) 
} 
==============================================================================================================

- CVS에서 모든 파일 새로 내려 받기 후 처리 해야할 것 
1. jdk1.5 다시 설정 
 1) com.sec.dotcomop.phase2.5(마우스 오른쪽 클릭) ==> Properties ==> Libraries ==> Add Library  
    ==> Alterante JRE: jdk1.5.0_19(선택) ==> Finish 
 2) JRE Sytem Library[jdk1.5.0_11] 제거 
  
2. /src/com/sec/dotcomop1_6/main/struts/OpBaseAction.java 파일에서 ==> 로컬 서버 WCMS 접속 가능 처리(로그인 처리) 
if (temp_system_cd.equals("WCMS") // WCMS 에서 접근했을 경우 세션 체크 
	&& session.getAttribute(PropertyHandler.getProperty("WCMS.USER.SESSION_KEY_OBJECT")) == null) { 
	request.setAttribute("message", PropertyHandler.getProperty("OP.USER.LOGIN.MSG.000_2")); 
	request.setAttribute("target", "opener"); 
	request.setAttribute("close", "true"); 
	//return mapping.findForward("result"); //TEST를 위해 주석 처리 
} 

3. /op/1.6/main/op1_6.jsp 파일에서 ==> 로컬 서버 WCMS 접속 가능 처리(로그인 처리) 
if(system_cd == "WCMS") { // WCMS 
	//var wcms_session = '<%= wcms_user_id%>';  //TEST를 위해 주석 처리 
	//var session = '<%= op_user_id %>'; //TEST를 위해 주석 처리 
	var wcms_session = 'am_lom'; //TEST를 위해처리 
	var session = 'am_lom'; //TEST를 위해처리 
} 

4. /op/1.6/op.jsp 파일에서  ===> 바탕색 처리 
<tr align="center" bgcolor="#CCFFFF"> 
<td>2</td> 
<td>LE40B650T2WXXH</td> 
<td>&nbsp;</td> 
<td>&nbsp;</td> 
<td>&nbsp;</td> 
<td><input type="button" value="Online Preview" onclick="javascript:goPreview('LE40B650T2WXXH','N');"></td> 
</tr> 
==============================================================================================================

- STOCKS 
월(3,350), 화(3,350), 수(3,415), 목(3,420), 금(3,420) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.04.10(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:40 ~ 22:00 

- KCISA7 DB(2,3) 
1. 수업: DB(2,3) --> 정성삼 감리사 
2. 약식모의고사[3회]: 76점(공동 1등) ==> (합산 평균: 71점) 
 1) 공동 1등하고도 합산 평균이 낮아서 상품 못 받음 
 2) KCISA14기 약식모의고사[3회] 24번에 문제에 대해 라이지움 게시판의 항의(이것 맞았으면 80점으로 1등) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.04.11(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:20 ~ 00:00 

- KCISA8 DB(4) 
06:20 기상(차가지고 감) 
07:10 신구초등학교 
07:10 숏게임(1:1 무) 
07:30 게임(4:2 승) 
08:50 종료 
09:40 강남역 우성 5차 APT 근처에 주차 
09:50 학원 도착 
10:00 수업(DB(4) --> 정성삼 감리사) 
13:00 수업종료(점심: 초코파일 2개) 
13:40 랩실(DB 복습) 
18:00 종료 
18:10 주차 위반 과태료 딱지 붙여 졌는 것 확인 
18:40 귀가 
00:00 취침 
==============================================================================================================

- 주차 위반 과태료 
1. 서초구청 주차관리과: http://traffic.seocho.go.kr, T) 2155-7397~9 
2. 위반장소: 사랑4길(강남역 우성 5차 APT 근처에 주차) 
3. 위반일시: 2010.04.11 10:42 
4. 단속조: 김윤두, 최영근(민원신고) 
5. 기타 
 1) 주정차위반 의견진술 기간은 단속일자로부터 20일이내또는 사실통보서에 기재된 의견진술 기간이내 
 2) 의견진술기한 이내에 과태료를 자진납부시 20%감경 받을 수 있습니다.(질서위반행위규제법 제18조 
 3) 과태료: 3만 2천원(20% DC) 
==============================================================================================================

- 바른글씨 연습(12주 71회 ===> 12주차 첨삭지도 올림)(마지막회) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.04.12(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:20 ~ 01:00  ---> 대체휴가(김보경 과장) 

- 삼성닷컴 리뉴얼
- OP 오픈 관련 테스트 
==============================================================================================================

- Loading 분석 
1. /op/2.5/main/flagshipMain.jsp 파일에서 
function loading() { 
    document.getElementById("loading").style.display = "none"; 
} 

<div id="loading"> 
<div class=loading-indicator> 
    <img style="WIDTH:16px; HEIGHT:16px" src="${contextPath}/common/images/op/loading.gif"> Loading...  
</div> 
</div> 
==============================================================================================================

- 공인인증서 갱신(1년에 한번씩(4월) 국민은행에서 시행할 것) 
http://bank.kbstar.com/quics?asfilecode=5023&_nextPage=page=B007118&weblog=l_quick_A3 
1. 갱신일: 2010.04.12(월) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.04.13(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:00 ~ 01:00  ---> 전체 회식, 과일쥬스(양석봉 부장, 최과장) 

- 삼성닷컴 리뉴얼
- OP 오픈 관련 테스트(리버깅) 
[/frontMain.jsp] ======>[maintopprdname]${maintopprdname}<br>  
==============================================================================================================

- loading 창 설정(로딩 창 설정) ==>  progress bar(상태바)  
/op/2.5/main/keyviimageList.jsp 파일에서 
var modalWin = null; 
var modallessChk = 0; 
var modallessExcute = 0; 
var param_p_page = "";      // pageList 수 

function goPage(page) {  
	var f = document.frmPage; 
	var url = f.action + "?"; 
	url += "&select_category1="+parent.objById("select_category1").value; 
	url += "&select_category2="+parent.objById("select_category2").value; 
	url += "&select_category3="+parent.objById("select_category3").value; 

	f.action = url; 
	f.page.value = page; 

	f.submit(); 
	search_complate();  //조회시 loading 완료 후 초기화 함수 호출 
} 

/** 
* 조회시 loading창 표시 함수 
*/  
  
if( modallessExcute++ == 0 ) { 
    var features = 'dialogWidth:300px; dialogHeight:50px; edig:sunken; resizable:No; status:no; scroll:no; center:Yes; title:No'; 
    modalWin = window.showModelessDialog("${contextPath}/common/html/modal_pop.html",window,features); 
    param_p_page = p_page; 
      
    stopShow = setInterval("waiting_searchDataSet()",1000);   //시간 인터벌 설정 
} 
//return false;        
} 

/** 
* modal 수에 따라 실제 조회 함수 호출 함수 
*/ 
function waiting_searchDataSet() {     
	if( modallessChk++ == 1 ) { 
	    goPage(param_p_page);  //실제 조회 함수 호출 
	    modallessChk = 0; 
	    clearInterval(stopShow); 
	} 
} 

/** 
* 조회시 loading 완료 후 초기화 함수 
*/ 
function search_complate() { 
	if( modalWin && modalWin != null ) { 
	    modalWin.close(); 
	    modalWin = null; 
	    modallessExcute = 0; 
	} 
} 

<dotcom:page style_id="op" page="${fileBrowserTO.page}" 
lines_per_page="${fileBrowserTO.lines_per_page}" 
total_rows="${fileBrowserTO.total_file_count}" 
script_function="wait_searchDataSet" />  <!--// 페이지 번호(클릭하면 다음 페이지로 이동됨) //---> 
==============================================================================================================

- KCISA 기출문제 양면 출력(삼성닷컴 리뉴얼 Proj 프린터) 
- 인터넷 예/적금 분석 
1. 솔로몬저축은행 서초점  정기예금: 4.90%  ==> 4,500(500은 청약저축에 입금할 것) 
2. 현대스위스저축은행 강남역  정기예금: 4.80%(정기적금: 6.00%) ==> 1,300(제일은행에서 출금) 
3. 동부저축은행  정기적금   6.00% ==> 50만원(2년) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.04.14(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:20 ~ 00:00 --> 대체 휴가(삼성닷컴 리뉴얼 Proj), 글빛도서관(휴관일) 

- KCISA Study
- DB 문제 풀이(라이지움 문제집) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.04.15(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:20 ~ 01:00 --> 대체 휴가(최우석 과장) 

- 삼성닷컴 리뉴얼
- 게시판 페이지 보여주는 빈 공간 줄이기(gallery_list height 줄이기) 
1. /common/css/op1_6.css 파일에서 
ul#gallery_list_n {width:600px; height:150px; margin-top:10px;} 
ul#gallery_list_n li.list {clear:both;} 
ul#gallery_list_n li.list ul li {float:left; padding-right:8px; width:102px; height:80px; padding:8px; text-align:center; margin-bottom:10px;} 
ul#gallery_list_n li.list ul li p {padding:0; margin:0;} 
ul#gallery_list_n li.list ul li p.img {} 
ul#gallery_list_n li.list ul li p.tit {width:97px; color:#555; text-align:left; padding-left:3px; word-wrap:break-word;  
word-break:break-all; -moz-binding: url('wordwrap.xml#wordwrap');} 
ul#gallery_list_n li.list ul li p.date {color:#7a7a7a; font-size:10px; text-align:left; padding-left:3px; line-height:100%;} 
ul#gallery_list_n li.list ul li.gallery_list_n_over {border:2px solid #db9870; width:98px; padding:6px 8px;} 

2. /op/2.5/gallery/imageList.jsp 파일에서 
<div style="overflow-x:hidden;overflow-y:auto;height:320px;width:610px;"> 
<ul id="gallery_list_n"> 
</ul> 
</div> 
<dotcom:page style_id="op" page="${fileBrowserTO.page}" lines_per_page="${fileBrowserTO.lines_per_page}" 
total_rows="${fileBrowserTO.total_file_count}"  script_function="goPage" />  <!--// 페이지 보이기 //--> 
==============================================================================================================

- jQuery 분석 
1. 정의: 자바스크립트와 HTML 사이의 상호작용을 강조하는 경량화된 웹 애플리케이션 프레임워크 
2. 기능 
 1) DOM 엘리먼트 선택, 2) DOM 트래버설 및 수정 (CSS 1-3 지원. 기본적인 XPath를 플러그인 형태로 지원)  
 3) 이벤트, 4) CSS 조작 
 5) 특수효과 및 애니메이션, 6) Ajax  
 7) 확장성, 8) 유틸리티 - 브라우저 버전, "each" 함수  
 9) 자바스크립트 플러그인  
$("div.test").add("p.quote").addClass("blue").slideDown("slow"); 

1. /op_leftNav.js 파일에서 
$(document).ready(function() { 
	$(this).addClass(tempClass); 
} 
2. /op_leftNav.css 파일에서 
tempClass 
==============================================================================================================

- 자바 환경에서 XQuery 사용하기 
http://www.ibm.com/developerworks/kr/library/x-xjavaxquery/index.html 
쿼리는 1981년부터 US label에서 녹음된 모든 CD를 선택해 발매일 순서로 정렬  
그리고 반환하는 각 CD의 제목과 발매일을 포함한 XML을 반환함 
1. cd_catalog.xml 파일 
<?xml version="1.0" encoding="ISO-8859-1"?> 
<CATALOG> 
        <CD> 
                <TITLE>Empire Burlesque</TITLE> <!--// TITLE(제목) //--> 
                <ARTIST>Bob Dylan</ARTIST> 
                <COUNTRY>USA</COUNTRY> 
                <COMPANY>Columbia</COMPANY> 
                <PRICE>10.90</PRICE> 
                <YEAR>1985</YEAR> <!--// YEAR(연도) //--> 
        </CD> 
        <CD> 
                <TITLE>Hide your heart</TITLE> <!--// TITLE(제목) //--> 
                <ARTIST>Bonnie Tyler</ARTIST> 
                <COUNTRY>UK</COUNTRY> 
                <COMPANY>CBS Records</COMPANY> 
                <PRICE>9.90</PRICE> 
                <YEAR>1988</YEAR> <!--// YEAR(연도) //--> 
        </CD> 
</CATALOG> 

2. XQueryTester.java 파일에서 
package ibm.dw.xqj; 
import javax.xml.namespace.QName; 
import java.util.Properties; 
import com.ddtek.xquery3.XQConnection; 
import com.ddtek.xquery3.XQException; 
import com.ddtek.xquery3.XQExpression; 
import com.ddtek.xquery3.XQItemType; 
import com.ddtek.xquery3.XQSequence; 
import com.ddtek.xquery3.xqj.DDXQDataSource; 

public class XQueryTester { 
public String query(String queryString) throws XQException { 
XQExpression expression = conn.createExpression(); 
expression.bindString(new QName("docName"), filename, 
conn.createAtomicType(XQItemType.XQBASETYPE_STRING)); 
XQSequence results = expression.executeQuery(queryString); 
return results.getSequenceAsString(new Properties()); 
} 

public static void main(String[] args) { 
if (args.length != 1) { 
System.err.println("Usage: java ibm.dw.xqj.XQueryTester [XML filename]"); 
System.exit(-1); 
} 

try { 
String xmlFilename = args[0]; 
XQueryTester tester = new XQueryTester(xmlFilename); 
tester.init(); 

final String sep = System.getProperty("line.separator"); 
String queryString = 
"declare variable $docName as xs:string external;" + sep + 
"      for $cd in doc($docName)/CATALOG/CD " + 
"    where $cd/YEAR > 1980 " + 
"      and $cd/COUNTRY = 'USA' " + 
" order by $cd/YEAR " +     //노드 순서 지정하기 
"   return " + //쿼리 완성하기  
"<cd><title>{$cd/TITLE/text()}</title>" +   //결과 집합으로 XML 문자열을 반환할 때, 변수를 중괄호({ })로 감싸야 함 
" <year>{$cd/YEAR/text()}</year></cd>"; 

System.out.println(tester.query(queryString)); 

} catch (Exception e) { 
e.printStackTrace(System.err); 
System.err.println(e.getMessage()); 
} 
} 
} 

3. 컴파일하고 실행(결과물) 
[bdm0509:~/Documents/developerworks/java_xquery] 
   java ibm.dw.xqj.XQueryTester cd_catalog.xml  

<cd><title>Greatest Hits</title><year>1982</year></cd> 
<cd><title>Empire Burlesque</title><year>1985</year></cd> 
<cd><title>When a man loves a woman</title><year>1987</year></cd> 
<cd><title>The dock of the bay</title><year>1987</year></cd> 
<cd><title>Unchain my heart</title><year>1987</year></cd> 
<cd><title>Big Willie style</title><year>1997</year></cd> 
<cd><title>1999 Grammy Nominees</title><year>1999</year></cd> 
==============================================================================================================

- 자바 핵심 개념 
1. 오버로딩(overloading): 이름이 같고 매개 변수의 타입 혹은 개수가 다른 함수들의 정의를 허용하는 것 
그리고 그 조건은, 함수의 이름은 같지만 매개 변수의 타입이나 개수가 달라야 한다는 것 
class Calc {   
	int add(int a, int b); // 정수형 변수를 처리하는 메소드 
	double add(double a, double b); // 실수형 변수를 처리하는 메소드 
} 

2. 오버라이딩(overriding): 부모 Class에 선언된 형태의 함수를 자식 Class에서 다시 선언하는 현상 
class TV {         // TV기본 형태를 정의. 부모 클래스   
String state() {    // 현재 TV 상태를 출력해주는 메서드 담당  
return "Channel : " + Channel;  
}  
} 

class TVMMX extends TV {    // 자식 클래스 
String state() {    // 모델명 MMX인 TV에는 시간표시까지 추가로 해준다  
return "Channel : " + Channel + "Timer" + timer;  // 이것이 오버라이딩 
}  
} 

3. 다형성(polymorphism): 하나로 여러 가지 일을 하는 것 
class Work4 { 
	public static void main(String args[]) { 
		Account acc0 = new Account("500-010-090-5", "Rosaria", 120300); 
		Account acc1 = new PointAccount("234-56-1341-856", "Rosaria", 523000, 1234); 
		Account acc2 = new CheckingAccount("385-23423-142-6", "Rosaria", 43230, "55-77"); 
		Account acc3 = new MinusAccount("23096-342-121-13", "Rosaria", 34230, 5000); 

		printInfo(acc0); 
		printInfo(acc1); 
		printInfo(acc2); 
		printInfo(acc3); 
		} 
		   
		public static void printInfo(Account acc) { 
		System.out.println("계좌번호 : " + acc.getAccountNo()); 
		System.out.println("이    름 : " + acc.getOwnerName()); 
		System.out.println("잔    액 : " + acc.getBalance()); 
		System.out.println("-------------------------------------"); 
	} 
} 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.04.16(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:00 ~ 01:00 --> 대체 휴가(김기선 과장) 

- 삼성닷컴 리뉴얼
- Insert Text 편집창을 클릭을 하면 글자선 테두리가 깨어지는 현상 수정(learning resource) 
/frontDetailMain.jsp 파일에서 
function arrangePosLearning(){   /** Object Position 정렬*/ 
	learningDivArr[i].obj.style.height=getHeight(learningDivArr[i].obj)-2+"px";   //style Height 조정(진태만_수정(2020.04.15)) 
} 
==============================================================================================================

- DB Query 분석 
1. Key Visual Image 정보 조회 분석 
 1) WSBC_SPRD_MDL_MDI_INF(서비스제품모델미디어정보 Table), WSBC_SPRD_MDL_CD(서비스제품모델코드 Table), 
WSBC_SPRD_IA_MAP(서비스제품IA매핑 Table)  

2. 소수점 자리수 조절 
SELECT TO_CHAR(1423.12304, 'fm999,999,999.99') FROM DUAL;   --3째 자리에 금액표시, 소숫점 2째 자리에서 끊기  
==============================================================================================================

- STOCKS 
월(3,400), 화(3,630), 수(3,700), 목(3,710), 금(3,800) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.04.17(토) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 06:40 ~ 22:00 

- KCISA9 DB(5,6)
1. 수업: DB(5,6) --> 정성삼 감리사 
2. 약식모의고사[4회]: 68점(공동 22등) ==> (합산 평균: 71점) 
 1) 쉬운 문제 많이 틀림 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.04.18(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:20 ~ 00:00  --> 학원 휴강 

▦조기축구 
06:20 기상(차가지고 감) 
06:50 주유(SK대농 남태령 주유소(29.499L:1,695원) 
07:30 게임(2:3 패): 골 넣음 
09:10 게임(5:4 패) 
11:00 종료 
12:00 점심(놀부 식당: 조기축구회) 
12:50 중고 유리, 책꽃이 다이 (강남 재활용 센터: 상요형 가게) 
14:00 유리 배치(크기가 가로 너무 컴: 가로 10cm, 세로 20cm 줄어야 함) ==> 110*60cm(두께 8mm) 
       - 진성유리(행운동 주민센터 근처, T) 871-0, H) 011-219-0 
00:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.04.19(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:20 ~ 23:00 --> 대체 휴가(최수용 과장), 책상용 유리 절단(진성유리: 만원) 

- 삼성닷컴 리뉴얼
-  image drag and drop 
1. 이미지 클릭 했을 때 --> 무브 상태로 변경 
2. 이미지를 드랍 했을 때 --> 편집 상태로 변경 
==============================================================================================================

- Move Group 클릭 분석(awards) 
1. /op/2.5/awards/frontDDMain.jsp 파일에서 
function selectMenu(_id, type, evt){ /** Mouse Down 선택시 */  
evt = getEvent(evt); 
var btn = evt.button; 
if(parentObj==null) initAward('awardBody', 29, '${contentWidth}'); 
arrangePos();   //Object Position 정렬 

mainselectMenu('body', _id, evt); 
  
if(type!=null&&type==null&&selectType=="2"){ 
    selectType = type; 
    editText(_id, true, btn, evt); 
} 

if(type!=null&&type=="2"){ 
    selectType = type; 
    editText(_id, true, btn, evt); 
}else{ 
    selectType = null; 
    hiddenContextMenu(); 
    if(btn==2){ 
if(textObj!=null){ 
    if(textObj.parentNode.parentNode.id != "awardBody"){ 
textObj.parentNode.parentNode.style.border=borderStyleNone; 
    }else  { 
 textObj.parentNode.style.border=borderStyleNone; 
    } 
} 
textResize(); 

viewContextMenu(_id, evt); 
    }else{ 
editText(_id, null, btn, evt); 
    } 
} 

return false; 
} 

function arrangePos(){ /** Object Position 정렬 */  
flagMainObj = objById('frontMainDiv'); 
var frontMainDivHeightGap = flagMainObj!=null ? getHeight(flagMainObj) - flagMainDivHeight : 0; 
parentObj = objById('awardBody');  
startRightPos = Number(contentWidth)+Number(startLeftPos)+Number(divPadding*2); 
startTopPos = getPosY(parentObj)+1; 
startTopPos=startTopPos-frontMainDivHeightGap; 
  
var useragent = navigator.userAgent;  // IE7 IE6 비교 
var topGab = site_cd == "${arabicSite_cd}" ? 225 : 225; 
var leftGab = 50; 

if ((useragent.indexOf('MSIE 6')>0) && (useragent.indexOf('MSIE 7')==-1)){ 
    leftGab = site_cd == "${arabicSite_cd}"? -200 :40; // IE 6 
    topGab = site_cd == "${arabicSite_cd}"? 390 :363; // IE 6 
} 

var startTop = startTopPos; 
var startLeft = startLeftPos -leftGab; 
   
if(moveDivArr!=null&&moveDivArr.length!=null) { 
    for (var i = 0; i < moveDivArr.length; i++) { 
var div = moveDivArr[i].obj; 
checkTextClass(div); // desc text가 insert text일 경우 폰트스타일 변경 

if(i==0) { 
    startTop = startTopPos + frontMainDivHeightGap - topGab; 
    startTop = startTop-50;  //   Top 조절(진태만_수정) 
}else if (moveDivArr[i - 1] != null) { 
    var tempDiv = moveDivArr[i - 1]; 
    left += getWidth(tempDiv.obj); 
    left += divPadding;//divPadding; 

    if ((left + getWidth(tempDiv.obj)) > maxRight) { 
left = startLeft; 
tempPos = getNextTopPos(sIndex, i-1); 
startTop = tempPos[0]+10 - topGab; 
startTop = startTop-50;  //Top 조절(진태만_수정)  ==> 왼쪽 Style(image, title) 조정 

if ((useragent.indexOf('MSIE 6')>0) && (useragent.indexOf('MSIE 7')==-1)){ 
    startTop += 15; 
} 

sIndex = i; 
    } 
} 

moveDivArr[i].obj.style.position = "absolute"; 
moveDivArr[i].obj.style.height = ""; 
moveDivArr[i].obj.style.top = startTop + "px"; 
moveDivArr[i].obj.style.left = left + "px"; 
moveDivArr[i].obj.style.height = getHeight(moveDivArr[i].obj) + "px"; 
moveDivArr[i].top = getPosY(moveDivArr[i].obj)-15 + "px";  //  Top 위치 조절(진태만_수정)  
moveDivArr[i].left = getPosX(moveDivArr[i].obj) + "px"; 
moveDivArr[i].height = getHeight(moveDivArr[i].obj) + "px"; 
  
objById(moveDivArr[i].id+"_ftrs_print_order").value = i; 
    } 
} 

if (moveDivArr==null  moveDivArr.length == 0) { 
    maxHeight = 200; 
    objById('awardBody').innerHTML = "<image src='${contextPath}/common/images/op/award_bg_2_5.jpg' style='width:920px;height:205px'>"; 
}else 
    getMaxHeight(); 

reSize(parentObj, null, maxHeight+"px"); 
} 

<body id="consumer" style="background: none;" onmousedown="selectMenu('body', null, event);arrangePos();"> 
<c:when test="${not empty(awardList.award_large_img_file)}"> 
<!-- 이미지 타이틀 컨텐츠 D1 스타일 --> 
    <div id="${awardList.award_id }" style="width:${contentWidth }px" onmousedown="selectMenu('${awardList.award_id}', null, event)"  
    style="float:<c:choose><c:when test="${param.op_site_cd eq arabicSite_cd}">right</c:when> <c:otherwise>left</c:otherwise> </c:choose>; "> 
<div class="awards_img_p" onmousedown="selectMenu('icon', null, event)"> 
    <img id="${awardList.award_id }_img" onmousedown="selectMenu('${awardList.award_id}_img', null, event)" style="cursor: pointer"  
    src="${url}" width="120px" height="120px" alt="${awardList.award_large_img_desc}" /> 
</div> 
<div class="content_text"  > 
    <div class="title_para" id="${awardList.award_id}_title" onmousedown="selectMenu('${awardList.award_id}_title', null, event)"> 
<c:out value="${title}" escapeXml="false" /> 
    </div> 
    <div class="awards_thum_txt" id="${awardList.award_id}_content" onmousedown="selectMenu('${awardList.award_id}_content', null, event)"> 
<c:out value="${desc}" escapeXml="false" /> 
    </div> 
</div> 
</c:when> 
</body> 

2. /op/2.5/main/frontMain.jsp 파일에서  
function mainselectMenu(_id, type, evt){   /** Mouse Down 선택시 */ 
var btn = evt.button; 
maineditText(_id, btn, evt); 
return false; 
} 

/** id 에 textarea 객체 추가함 */ 
function maineditText(_id, btn, evt){ 
var main_mid_gubun = "<%=main_mid_gubun%>"; 
if(btn!=2 && _id!=null){  //오른쪽 마우스 클릭이 아닐 때  
    mainobj = document.getElementById(_id); 
   
    if(mainIdCheck(_id)){    
if(main_mid_gubun != 'gallery'){ // gallery 에서는 사용하지 않음 
    if(textObj!=null&&textObj.parentNode!=null) { 
if(objById(textObj.id.replaceAll("_title","").replaceAll("_content",""))!=null){ 
    objById(textObj.id.replaceAll("_title","").replaceAll("_content","")).style.border=""; 
} arentNode.style.border=""; 
textResize(); 
    } 
} 
if(mainobj!=maintextObj){  
    mainobj.style.border= borderStyle; 
    mainobj.style.overflow = "hidden"; 
    var height=getHeight(mainobj); 
    var tempObj = document.getElementById('maintempTx'); 
    tempObj.style.width = (getWidth(mainobj)-8)+"px"; 
    var orgStr = mainobj.innerHTML; 
    mainobj.innerHTML = getOuterHtml(tempObj); 
    var tx = maingetTxtObject(mainobj); 
    tx.className = mainobj.className; 
  
    if(_id=="prd_mdl_price" _id=="prd_mdl_price_desc") { 
tx.style.color = '#000'; 
tx.style.right = '0px'; 
    } 

    if(FF){ 
tx.value = orgStr.replaceAll('&amp;', '').replaceAll('amp;', ''); 
    }else{ 
tx.value = orgStr.replaceAll('<BR>', '\n'); //wordChecker(orgStr, false); 
    } 

    if(mainobj.id=="main_content"){ 
tx.style.width = (getWidth(mainobj)-68)+"px"; 
    }else{ 
tx.style.width = (getWidth(mainobj)-8)+"px"; 
    } 
    var heightMargin = FF?-10:-5; 
    tx.style.height=(height+heightMargin)+"px"; 
    tx.style.display="block"; 
    maincheckTextValue(tx, tx.value); 

    if(maintextObj){ 
maintextResize(); 
if(mainparentObj!=null) arrangePos(); 
    }  
    tx.onmouseover=function(){this.focus()}; 

    if(maintextObj!=null&&mainobj!=maintextObj) maintextResize(); 
    maintextObj=mainobj; 
}else{ 
} 
    }else if(mainobj==null&&maintextObj!=null){  
maintextObj.style.border=""; 
maintextResize(); 
if(mainparentObj!=null) arrangePos(); 
    }else if(maintextObj!=null){  
maintextObj.style.border=""; 
maintextResize(); 
if(mainparentObj!=null) arrangePos(); 
    } 
      
    stopEvent(evt); 
} 
  
return false; 
} 

3. /op/2.5/awards/layerMenu.jsp 파일에서 
function moveContent(){ //Move Group 클릭시 수행하는 함수 
var obj = objById(contextMenuSelectId); 
var msg = "<%=PropertyHandler.getProperty("OP.MSG.029")%>"; 

if(obj!=null){ 
    selectIdAs =  contextMenuSelectId; 
    selectArrObject(); 

    // move 시 moveImg 보여줄 부분 
    var sId = selectIdAs.replaceAll("_img", "").replaceAll("_content","").replaceAll("_title","").replaceAll("_date", ""); 
    var selObj = objById(sId); 
    var corverObj = objById('moveImg'); 
    corverObj.style.display="block"; 
    corverObj.style.zIndex=999999; 
    corverObj.style.left=selObj.style.left; 
    corverObj.style.top=selObj.style.top; 
    corverObj.style.height=(posInt(selObj.style.height)-18)+"px"; 
    corverObj.style.width=selObj.style.width; 
}else alert(msg); 
}  

<div id="contextMenuDiv" > 
<div> 
    <ol> 
<li id="contextMenuMove" onmousedown="moveContent();">Move Group</li><!--//Move Group --> 
    </ol> 
</div> 
</div> 
  
4. /op/2.5/awards/frontDDMain.jsp 파일에서 
function selectArrObject(evt){ 
var sId = selectIdAs.replaceAll("_img", "").replaceAll("_content", "").replaceAll("_title", "").replaceAll("_date", ""); 
moveObjectSelected = true; 
pointMove(objById(sId), evt); 
} 

function pointMove(obj, evt) { /** Object 이동 시점 등록 */ 
if ((!editMode && pointMoveMode && moveObjectSelected)  (absoluteMoveMode && pointMoveMode && moveObjectSelected)) { 
    if(obj=="new") { 
moveObjectSelected = false; 
selectedIdx = null; 
var corverObj = objById('moveImg'); 
corverObj.style.display="none"; 
    }else{ 
var objArea = getObjectArea(obj); 
if (selectedIdx == null) 
    selectedIdx = objArea; 

if (selectedIdx[0] != "F") { 
    if (selectedIdx[3] != objArea[3]) { 
if (borderMode && !editMode) { 
    changeColor(selectedIdx[3], 'white', 100); 
} 

if (obj == "left") { 
    objArea = getObjectArea(getPosIndex(false)); 
    if (selectedIdx[0] == "W" && objArea[0] == "F") { 
var temp = selectedIdx[2]; 
temp = temp[temp.length - 1].obj; 
objArea = getObjectArea(temp); 
    } 

    if (selectedIdx[0] == "W") 
changeDivArr(true, selectedIdx, objArea); 
    else 
changeDivArr(false, selectedIdx, objArea); 
} 
else 
    if (obj == "right") { 
objArea = getObjectArea(getPosIndex(true)); 
if (selectedIdx[0] == "E" && objArea[0] == "F") { 
    var temp = selectedIdx[2]; 
    temp = temp[temp.length - 1].obj; 
    objArea = getObjectArea(temp); 
} 

if (selectedIdx[0] == "E") 
    changeDivArr(true, selectedIdx, objArea); 
else 
    changeDivArr(false, selectedIdx, objArea); 
    } 
    else 
if (selectedIdx[0] != objArea[0]) { 
    changeDivArr(false, selectedIdx, objArea); 
} 
else { 
    changeDivArr(true, selectedIdx, objArea); 
} 
moveObjectSelected = false; 
  
selectedIdx = null; 
arrangePos(); 

var corverObj = objById('moveImg'); 
corverObj.style.display="none"; 
    } 
    else { 
if (borderMode && !editMode) { 
    changeColor(obj, '#FFFFFF', 30); 
} 
    } 
} else selectedIdx = null; 
    } 
} 
return false; 
} 

function changeDivArr(mode, selectedIdx, objArea) {  //실질적인 변경 부분 
 if (mode) { 
    var chDivArr = selectedIdx[2]; 
    var idx = selectedIdx[1]; 
    var newIdx = objArea[1]; 
    var orgObj = chDivArr[idx]; 
    chDivArr.remove(idx); 
    var len = chDivArr.length - 1; 
    chDivArr[len + 1] = chDivArr[len]; 
    len = chDivArr.length - 1; 
     
    for (var i = len; i > newIdx; i--) { 
chDivArr[i] = chDivArr[i - 1];   
    }  
    chDivArr[newIdx] = orgObj; 
} 
       } 

len = remDivArr.length - 1; 
idx = selectedIdx[1]; 
remDivArr.remove(idx); 
 } 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.04.20(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:20 ~ 01:00 

- 삼성닷컴 리뉴얼
- Image Drag and Drop  
http://localhost:8080/iw-sec/common/html/modal_pop.html  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.04.21(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:20 ~ 01:00 

- 삼성닷컴 리뉴얼
- Image Drag and Drop 
- gallery - Eternity 
/op/2.5/gallery/galleryPopupMain.jsp 
http://www.stylebag.co.kr/test/test2.html 
http://localhost:8080/iw-sec/common/html/TEST_Stock.html 
http://localhost:8080/iw-sec/common/html/test_dragImagebar.html  
==============================================================================================================

- 예금 만기 인출 확인(삼화 저축 은행(3016-2330~4): 서울시 강남구 삼성동 157-36 화진빌딩:버스 4428) 
- 이자율 계산(5%) 
- 선풍기(보국 BKF-0706T) 청소(드라이버로 볼트 풀고 화장실에서 젖은 종이로 씻어줌)  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.04.22(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:20 ~ 22:30 

- 삼성닷컴 리뉴얼 Prj
- Gallery Popup Main(drag and drop) 
/op/2.5/gallery/galleryPopupMain.jsp  
==============================================================================================================

- 쇼핑몰 상품 이미지 drag and drop  ===> <li> 태그에 싸여 있어서 사용 불가 
http://localhost:8080/iw-sec/common/html/TEST_Stock.html 
- 이미지 drag and drop 
http://localhost:8080/iw-sec/common/html/test_dragImagebar.html 
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2010.04.23(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:20 ~ 01:00   --> 퍼블러셔 면접(다음주 수욜 출근 예정) 

- 삼성닷컴 리뉴얼
- Gallery Popup Main(drag and drop) 
/op/2.5/gallery/galleryPopupMain.jsp  

/op/2.5/gallery/imageList.jsp 파일에서 
<li ondblClick="setThumbnailImage('OPV', 'imageView.do?site_cd=opv&image_search_root=opv&file_seq=176782', '176782', '',  
'9_thumb_url', '9_thumb_seq', '9_thumb_typ', '9_medium_url', '9_medium_seq', '9_medium_typ', '9');" 
onmouseover="this.className='gallery_list_over'" onmouseout="this.className=''"> 
<p class="img"><img src="imageView.do?site_cd=opv&image_search_root=opv&file_seq=176782" width="89" height="67"/></p> 
<p class="tit">_MG_0906.JPG</p> 
<p class="date">2010.04.15(1,423.12kb)</p> 
</li> 


function setThumbnailImage(image_search_root, largeUrl, largeSeq, largeTyp, thumbUrl, thumbSeq, thumbTyp, mediumUrl, mediumSeq, mediumTyp, num){ 
if(objById(thumbUrl) != null) var thumbUrlVal = objById(thumbUrl).value; 
if(objById(thumbSeq) != null) var thumbSeqVal = objById(thumbSeq).value; 
if(objById(thumbTyp) != null) var thumbTypVal = objById(thumbTyp).value; 
if(objById(mediumUrl) != null) var mediumUrlVal = objById(mediumUrl).value; 
if(objById(mediumSeq) != null) var mediumSeqVal = objById(mediumSeq).value; 
if(objById(mediumTyp) != null) var mediumTypVal = objById(mediumTyp).value; 

if(objById(num+"_largeSize") != null){ 
    largeWidth = getWidth(objById(num+"_largeSize")); 
    largeHeight = getHeight(objById(num+"_largeSize")); 
} 

if(objById(num+"_mediumSize") != null){ 
    mediumWidth = getWidth(objById(num+"_mediumSize")); 
    mediumHeight = getHeight(objById(num+"_mediumSize")); 
} 

parent.parent.addThumbnail(image_search_root, largeUrl, largeSeq, ....) 

/galleryPopupMain.jsp 파일에서 
<li id="thumbnail_list"> 
<ul id="index_list" style="display:block"> 

<ul id="index_list" style="display:block"> 
 <li id="index_0" onmousedown="viewShowroom('index_0_large', 'index_0_medium');> 
    <img src="imageView.do?site_cd=opv&image_search_root=opv&file_seq=174614" alt="" style="width:26px;height:26px;"/> 
    <input type="hidden" name="index_0_gallerySeq" id="index_0_gallerySeq" value="739" /> 
    <input type="hidden" name="index_0_prd_mdi_typ_cd" id="index_0_prd_mdi_typ_cd" value="VI-BT" /> 
    <input type="hidden" name="index_0_file_seq" id="index_0_file_seq" value="174614" /> 
    <input type="hidden" name="index_0_file_place" id="index_0_file_place" value="opv" /> 
    <input type="hidden" name="index_0_print_order" id="index_0_print_order" value="1" /> 
</li> 
<script language="javascript">setThumbnailArr('index_0');</script>  
==============================================================================================================

- 비정규직 교육(현용) 
 http://www.hrd.go.kr/jsp/common/hrdhPopup/jtnet02_02/jtnet02_02_801.jsp 
==============================================================================================================

- 상환 방문 
19:20 퇴근 
22:20 공부 
23:30 술집(임모, 임모 애인, 상환) 
02:00 당구(100놓고 쳐서 꼴찌 함) 
03:40 귀가(상환이 우리집에서 자고 감) 
04:00 취침 
==============================================================================================================

- STOCKS 
월(3,850), 화(3,850), 수(4,300), 목(3,850), 금(3,850) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.04.24(토) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 06:40 ~ 20:00 

- KCISA10 IT(4,5) 
1. 수업: IT(4,5)) --> 유지호 기술사 
2. 약식모의고사[5회]: 84점(공동 4등) ==> (합산 평균: 73점) 
 1) 쉬운 문제 아직도 실수 함(속독의 정확성 키울 것) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.04.25(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:00 ~ 00:00 

- KCISA11 보안(1) 
06:00 기상(차가지고 감) 
06:10 조식 
07:10 신구초등학교 
07:30 숏게임(1:1 무)  
08:20 종료 
08:40 강남역 서초 골프장 근처에 주차 
09:00 학원 도착 
10:00 수업(D보안(1) --> 김은아 기술사) 
13:00 수업종료(점심: 초코파일 1개, 김밥 1개) 
13:30 회사 출근 
13:50 drag and drop 프로그램 개발 
17:50 석식(돈가스: 청구할 것(6천원)) 
22:00 종료 
22:30 귀가(차가 별로 없어서 일찍 도착) 
00:00 취침 
==============================================================================================================

- 삼성닷컴 리뉴얼 Prj --> 일요 근무(13:30 ~ 22:00) 
- Gallery Popup Main(drag and drop) 
/op/2.5/gallery/galleryPopupMain.jsp   
------------------------------------------------------------------------------------------------------- 

- iso-8859-1에러 
이클립스에서 jsp, js등을 저장시에 iso-8859-1에러가 나는 경우가 가끔 있다.  
처리 방법은 Window -> Preference -> General -> Appearance -> Content Type -> Text 및   
하위에 Default encoding이 iso-8859-1로 되어있는 것을 euc-kr로 바꾸고 Update 후 OK   
UTF-8 --> euc-kr 
==> 그래도 안되면 윈도우 탐색기에서 파일 저장해서 이클립스에서 불러 오기 하면 됨 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.04.26(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:00 ~ 22:00  --> 열쇠 분실(회사에 다시 와서 찾아 감: 비상 열쇠 화장실 창문틈에 놓아둠) 

- 삼성닷컴 리뉴얼 Prj
- Image Drag and Drop 
arrangePos() { }  //최초 정렬  
selectMenu(_id, type, evt){   //이미지 클릭시 
makeMoveDiv(true, objById(_id)) { } 
fnOnmousemove() { }  // 마우스 움직임  함수 
pointMove() { } //포인트 움직임 함수 
   
function addId(_id, flag){   //DB값 세팅 함수 
moveArray[moveArray.length] = _id; 

if(parentObj==null){  
contentWidth = '435';   //'${contentWidth}'; 
initAward('gallery', 10, contentWidth);  //gallery 
}  
makeMoveDiv(true, objById(_id)); 
}   
==============================================================================================================
 
- OP 내부 회의(14:30 ~ 16:00) 
1. Image Drag and Drop 시연 
 1) 완료 못 해서 개망신 당함(신뢰 추락) 
 2) 최우석 과장은 완료 잘 함 
2. 프레임워크 수정 부분 설명(최PL) 
==============================================================================================================

- KB굿쇼핑(Good Shopping)카드 발급 
카드번호: 9445 4201 6664 5014   2015/03, 723 ===> 결제일: 27일, 결제은행: SC제일은행  
연회비: 5천원(연간 100만원 이상 이용하면 기본 연회비 면제) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.04.27(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:00 ~ 22:00 

- 삼성닷컴 리뉴얼 Prj
- Image Drag and Drop 
1. test_dragImagebar.html 사용 문제점 
1) <fieldset id="Demo0"> 영역 문제 --> div로 묶을 것 
2) 이미지 못 끌어 옴 
3) <body onload="init('color_area', 'thumbnail_list');"> 문제 ===> 해결 
----------------------------------------------------------------------------------------------------------------------- 

ev = ev  window.event; 
var target   = ev.target  ev.srcElement; 
var mousePos = mouseCoords(ev);  
var clickedID = (target.id  '');    //클릭한 li ID  
document.getElementById('inner_t_52').innerHTML = "[/TEST_Stock.html][inner_t_52]===> [mouseMove()][clickedID]"+ clickedID;  
==============================================================================================================

- 공인 인증서 발급/재발급(증권(개인)): 동양종금 사이트에서 재발급 받음 
http://www.myasset.com/myasset/mainindex.html 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.04.28(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:00 ~ 01:00  --> 퍼블러셔(이인수 과장) 첫 출근 

- 삼성닷컴 리뉴얼 Prj
- Image Drag and Drop 
1. li tag에서 이미지 못 끌어 옴  ===> jquery 소스 사용하여 처리  
1) <fieldset id="Demo0"> 영역 문제 --> div로 묶을 것  ===> 어느 정도 해결 
2) Image Drag 아래와 다운시 에러 발생 --> 아래로 나가는 소스라서 문제(다른 소스 적용해야 함) 

/WebContent/common/scripts/drag_drop.js 파일 위치 
config.js, idrag.js, idrop.js, isortables.js, iutil.js, jquery.js 

<script src="${contextPath}/common/scripts/jquery-1.3.2.min.js" type="text/javascript"></script> 
<!--// jquery 선언(사용 안해도 됨) --> 
<script type="text/javascript" language="javascript" src="${contextPath}/common/scripts/jquery.js"></script> 
<script type="text/javascript" language="javascript" src="${contextPath}/common/scripts/iutil.js"></script> 
<script type="text/javascript" language="javascript" src="${contextPath}/common/scripts/idrag.js"></script> 
<script type="text/javascript" language="javascript" src="${contextPath}/common/scripts/idrop.js"></script> 
<script type="text/javascript" language="javascript" src="${contextPath}/common/scripts/drag_drop.js"></script> 
<script type="text/javascript" language="javascript" src="${contextPath}/common/scripts/isortables.js"></script> 
<script type="text/javascript" language="javascript" src="${contextPath}/common/scripts/config.js"></script>  
----------------------------------------------------------------------------------------------------------- 

/WebContent/common/scripts/op_gallery.js 파일에서(아래 소스 제거할 것) 
Array.prototype.remove = function(idx){ 
   var temp = new Array(); 
   var i = this.length; 

   while(i > idx){ 
       var kk = this.pop(); 
       temp.push(kk);  
       i--; 
   } 

   for(var i=temp.length - 2; i>=0; i--){ 
       this.push(temp[i]); 
   } 
} 
==============================================================================================================
 
- Image Drag and Drop 소스 모음 
http://host.sonspring.com/dragdrop/ ==> 샘플 선정 
http://docs.jquery.com/UI/API/1.7/Draggable 
http://interface.eyecon.ro/demos/drag.html 
http://dev.iceburg.net/jquery/jqDnR/ 
==============================================================================================================

- 국민카드 결제 계좌 변경(국민은행 --> 제일은행) 
국민은행(1588-1688): 1번 -> 9번 -> 9번 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.04.29(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:00 ~ 01:00  --> 야근(석식 식대 청구할 것: 21시 퇴근) 

- 삼성닷컴 리뉴얼 Prj
- Image Drag and Drop 
1. Image Drag 시 아래와 내려 감(세로 Drag --> 가로 Drag로 수정) ==> 이미지 넣기 가운데 불가(jquery 소스 자체 문제) 
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2010.04.30(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:20 ~ 01:00  --> 퍼블러셔(김보영 과장) 철수 

- 삼성닷컴 리뉴얼 Prj
- Image Drag and Drop 
1. /op/2.5/gallery/galleryPopupMain.jsp 파일 수정 
 1) Image Drag 수정(최우석 과장이 jquery없이 수정 --> li 부분 수정해야 함) 
2. /op/2.5/main/frontMain.jsp 파일 수정 ==> 완료 
<script type="text/javascript" language="javascript" src="${contextPath}/common/scripts/drag_drop.js"></script>   
<!--//image Drag & Drop //--> 

- 배경색 설정(bgcolor 아님) 
<div class="showroom_list" style="height:40px; background-color:#ffccff"> 
<ul id="index_list" style="background-color:#ffff00"> 
<li class="sortable_1 sortable_2" style="background-color:#6666FF">[01]<img src="tes.jpg"/></li> 
</ul> 
</div> 

- 디버깅 
document.getElementById('inner_t_1').innerHTML = "[/FeatureScript.jsp] ===> [init()][thumbnailParentObj]"+ thumbnailParentObj ; 
<jsp:include page="../../2_5/common/TEST.jsp" flush="true"/><!--// TEST include  -->  
==============================================================================================================
 
- 가족관계 증명서 발급(역삼 1동 주민센터 방문(수수료:천원))  
==============================================================================================================
 
- STOCKS 
월(3,830), 화(3,885), 수(3,930), 목(4,170), 금(4,165) 
============================================================================================================== 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //----------------------------------------------------------+ 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■  