

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2010.05) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2010.05.01(토) 작업 ■■■■■■■■■■■■■■■■
---> 06:00 ~ 01:00 

- KCISA12 SE(1,2)
1. 수업: SE(1,2) --> 유지호 기술사 
2. 약식모의고사[6회]: 68점(공동 15등) ==> (합산 평균: 72점) 
 1) 보안 문제 9문제 중 6문제 틀림(예상 못 함) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.05.02(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:00 ~ 24:00  --> 공휴일 근무(석식: 청구할 것) 

- KCISA13 보안(2)
06:00 기상(차가지고 감) 
06:10 조식 
07:10 신구초등학교 
07:30 숏게임(1:1 무)(수비 하다가 박원장한테 정강이 까임) 
07:30 게임(4:2 승) 
08:40 종료 
08:55 강남역 서초 골프장 근처에 주차 
09:10 학원 도착 
10:00 수업(보안(2) --> 김은아 기술사) 
13:00 수업종료(점심: 초코파일 2개) 
13:30 회사 출근(임영두 부장, 장기석 차장 일하러 나옴) 
13:50 drag and drop 프로그램 개발(개발 완료) 
17:40 종료 
17:50 석식(논두렁 비빕밥) 
19:30 이마트(라면, 사탕 등 사옴) 
20:40 귀가 
00:00 취침 
==============================================================================================================

- 삼성닷컴 리뉴얼
- Image Drag and Drop 작업 
<li>를 사용하여 Drag 수정(sctipt 수정) ==> 1차 완료 
<li id="thumbnail_list"> 
<ul id="index_list" style="display:block"> 
 <fieldset id="Demo0">   
<div id="DragContainer8"  style="height:40px;"> 
<div id="indexN_${noColorDataNum}" class="miniDragBox" onmousedown="mouseDown('indexN_${noColorDataNum}')" 
onmousemove="mouseMove('indexN_${noColorDataNum}', event)">    
 <li id="index_${noColorDataNum}" onmousedown="viewShowroom('index_${noColorDataNum}_large'
 , 'index_${noColorDataNum}_medium');" onclick="chBorderColor('index', this, '#666666');selectThumbnailId(this.id);" style="cursor:pointer;"> 
 <!--//THUMBNAIL image  [${idx}]//--><img src="${imageUrl}" alt="image_${idx}" width="26" height="26"></img>  
    <input type="hidden" name="index_${noColorDataNum}_gallerySeq" id="index_${noColorDataNum}_gallerySeq" value="${idx}" /> 
    <input type="hidden" name="index_${noColorDataNum}_prd_mdi_typ_cd" id="index_${noColorDataNum}_prd_mdi_typ_cd" value="${main.prd_mdi_typ_cd}" /> 
    <input type="hidden" name="index_${noColorDataNum}_file_seq" id="index_${noColorDataNum}_file_seq" value="${main.file_seq}" /> 
    <input type="hidden" name="index_${noColorDataNum}_file_place" id="index_${noColorDataNum}_file_place" value="${galleryResource}" /> 
    <input type="hidden" name="index_${noColorDataNum}_print_order" id="index_${noColorDataNum}_print_order" value="${noColorDataNum+1}" /> 
</li> 
</div>  

<!--// Display image 들어갈 공간(DB 데이타 제외)  //-->  
<input type="hidden" name="index_data_count" id="index_data_count" value="${noColorDataNum}" /> 
<c:if test="${noColorDataNum!=10}"> 
<c:forEach var="i" begin="${noColorDataNum}" end="9"> 
    <div id="indexN_${i}" class="miniDragBox" onmousedown="mouseDown('indexN_${i}')" onmousemove="mouseMove('indexN_${i}', event)">    
<li id="index_${i}" class="miniDragBox" onmousedown="mouseDown('index_${i}')" onmousemove="mouseMove('index_${i}', event)">[${i}]</li> 
    </div>  
    <input type="hidden" name="index_${i}_print_order" id="index_${i}_print_order" value="${i+1}" /> 
    <script language="javascript">setNoThumbnailArr('index_${i}');</script> 
</c:forEach> 
</c:if> 
<script language="javascript">setThumbnailParentArr('index_list');</script> 
</div>  
</fieldset> 
</ul> 
</li> 
------------------------------------------------------------------------------------------------------------------------------- 

- 더블 클릭(자바 스크립트에서) 
function data_check(){ 
	alert("[/feature_main.jsp] ======> [data_check()]:[terst]"); 
}  

<div id="indexN_${noColorDataNum}" class="miniDragBox" ondblclick="data_check()"><div>  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.05.03(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 01:00  --> 야근(석식: 청구할 것) 

- 삼성닷컴 리뉴얼
- Image Drag and Drop 작업  
1. Image 더블 클릭 후의 이미지 3개 Drag 되는 것 해결 
function addThumbnail(image_search_root, largeUrl, largeSeq, largeTyp, thumbUrl, thumbSeq, thumbTyp, mediumUrl,  
	mediumSeq, mediumTyp, largeWidth, largeHeight, mediumWidth, mediumHeight){ 
  
	if(!nodeCheck(thumbnailParentArr[i].childs[j].obj)){ 
		//addImageEl(objId, objId+"_large_size", "cur_img", largeUrl, largeWidth+"px", largeHeight+"px"); 
		//addImageEl(objId, objId+"_medium_size", "cur_img", mediumUrl, mediumWidth+"px", mediumHeight+"px");  
		addInputEl("hidden", objId, objId+"_large_size", "cur_img", largeUrl, largeWidth+"px", largeHeight+"px");   //수정 
		addInputEl("hidden", objId, objId+"_medium_size", "cur_img", mediumUrl, mediumWidth+"px", mediumHeight+"px");  //수정 
	} 
} 

2. Drag 박스 세팅(빈 것 처리) 
==============================================================================================================

- 예금 만기 인출 및 재예금(삼화 저축 은행(3016-2330~4) 
서울시 강남구 삼성동 157-36 화진빌딩 10층(버스 4428: 역삼초교 근처)  
A. 만기 해약 
1. 상품명: 보통예금, 예금주: 진덕근  
 1) 생계형(비과세) 정기예금복리  018-01-24-2778659 원금: 3천 
실수령액: 34,425,657원, 이자율: 연7.37%, 예치기간: 2년  
 2) 세금우대 정기예금복리  018-01-24-2778659  원금: 천 5백  
실수령액: 17,002,618원, 이자율: 연7.37%, 예치기간: 2년  
==> 총실수령액: 51,445,117원(이자 6,445,117원) 
------------------------------------------------------------------------------------------------------

B. 삼화 저축은행 예금 가입 
1. 상품명: 보통예금, 예금주: 진덕근  
 1) 생계형(비과세) 정기예금복리(018-01-43-1532249 원금: 3천) 
실수령액: 31,495,862원, 이자율: 연4.98%, 예치기간: 13개월 
만기일자: 2011/06/03 
 2) 세금우대 정기예금복리(018-01-43-1532281 원금: 천 5백) 
실수령액: 15,676,891원, 이자율: 연4.98%, 예치기간: 13개월 
만기일자: 2011/06/03 
==> 총실수령액: 47,172,753원(이자 2,172,753원) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.05.04(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:10 ~ 01:00 

- 삼성닷컴 리뉴얼
- Image Drag and Drop 작업  
1. Drag 박스 세팅(fieldset에서 빈 데이타에 Drag 안되게 처리) 
<fieldset id="Demo0" style="width:320px;">  ===> 조절 필요 

- 배경색 설정(bgcolor 아님) 
<fieldset id="Demo0" style="width:310px; background-color:#CCFFCC"> 
==============================================================================================================

- OP 내부 회의(10:30 ~ 11:30) 
1. Framework 표준 작업 
 1) javascript(fn..) 함수명, DB 호출 필드명 수정 
 2) learning 조회 부분(다음주 화요일까지 완료할 것) 
==============================================================================================================

- Framework 표준 작업(learning) 
/op/2_5/main/PM_ProductMain_MR.jsp(전체 팝업 메인) 
/op/2_5/learning/LR_Content_MR.jsp(learning 메인) 
http://localhost:8080/iw-sec/op/2_5/product/ProductMain.do?method=doSearch 

1. /WEB-INF//conf/struts/op/2.5/struts-config-learning.xml 파일에서  ===> 이전 화면 
<action path="/2.5/learning/frontMain" type="com.sec.dotcomop1_6.learning.front.action.FrontMainAction">  
<forward name="success" path="/WEB-INF/jsps/op/2.5/learning/learning_main.jsp" /> 
</action> 
  
2. /com/sec/dotcomop1_6/learning/front/action/FrontMainAction.java 파일에서  
public class FrontMainAction extends OpBaseAction { 
public ActionForward doSearch (....) { 
LearningFrontDAO frontDAO = (LearningFrontDAO) DAOManager.getDAO("sqlmap-config-op-learning-1.6.xml", LearningFrontDAO.class); 
LearningFrontDAO frontDAOPvi = (LearningFrontDAO) DAOManager.getDAO("sqlmap-config-op-learning-pvi-1.6.xml", LearningFrontDAO.class); 

frontDAO.startTransaction();  
boolean mode = false; 
mode = main.doSaveMain(formMap); // Main Info Save 
if (mode) 
mode = learning.doSaveLearning(formMap); // Learning Resource Info 저장 
} 
frontDAO.commitTransaction(); 

try {  
ist<LearningFrontTO> listData = null;  

if (!CommonUtil.toString(formMap.get("site_cd")).equals("pvi")) { 
// opv 일시 learning 정보와 main image 정보 추출 
if (CommonUtil.toString(formMap.get("site_cd")).equals("opv")  "N".equals(copyLearning)) { 
    listData = frontDAO.getSelectList(formMap); 
    learningimageTo = frontDAO.opvMainFileInfo(formMap); 

} else { 
    // wcms 일시 learning 정보와 main image 정보 추출 
    listData = frontDAO.getWcmsSelectList(formMap); 
    learningimageTo = frontDAO.wcmsMainFileInfo(formMap); 
    learningResource = "wcms"; 
} 
    } else { 
// pvi 일시 이미지 정보 
conts_id = frontDAOPvi.pviMainFileContsId(formMap); 
learningimageTo = frontDAO.pviMainFileInfo(conts_id); 
learningResource = "pvi"; 
    } 
} 

request.setAttribute("FrontTO", listData); 
} 
} 

2. /com/sec/dotcomop1_6/learning/front/dao/LearningFrontDAO.java 파일에서  
    public List<LearningFrontTO> getSelectList(HashMap<Object, Object> map) throws SQLException {  
        return (List<LearningFrontTO>) sqlMapClient.queryForList("learning.front.selectList", map); 
    } 

4. /WEB-INF/conf/sqlmap/1.6/sqlmap-config-op-learning-1.6.xml 파일에서 
<sqlMapConfig>   
<!-- Contents Pool Popup 관련 쿼리 --> 
<sqlMap resource="com/sec/dotcomop1_6/learning/text/dao/learning_text_sql.xml" />  
<!-- Image Pool Popup 관련 쿼리 --> 
<sqlMap resource="com/sec/dotcomop1_6/learning/image/dao/learning_image_sql.xml" />  
<!-- Front Page 관련 쿼리 --> 
<sqlMap resource="com/sec/dotcomop1_6/learning/front/dao/learning_front_sql.xml" />  
</sqlMapConfig> 
  
5. /com/sec/dotcomop1_6/learning/front/dao/learning_front_sql.xml 파일에서 
<sqlMap namespace="learning.front"> 
<typeAlias alias="LearningFrontTO" type="com.sec.dotcomop1_6.learning.front.to.LearningFrontTO"/> 
<!-- online preview에서 검색된 데이터 리스트  --> 
<select id="selectList" parameterClass="java.util.HashMap" resultClass="LearningFrontTO"> 
<![CDATA[ 
SELECT   C.SITE_CD 
        ,A.REL_RES_SEQ 
        ,REL_RES_STYLE_TYP_CD 
        ,A.REL_RES_TITLE 
        ,A.REL_RES_CONT 
        ,A.REL_RES_LINK_URL 
        ,A.REL_RES_LINK_TYP_CD 
        ,A.REL_RES_PRINT_ORDER 
        ,B.FILE_SEQ 
        ,B.FILE_PATH 
        ,B.FILE_NAME 
        ,DECODE(B.FILE_PATH, '', '', B.FILE_PATH  '/'  B.FILE_NAME) FILE_URL 
        ,B.REG_DT 
        ,DECODE(B.FILE_SIZE, '', 0, B.FILE_SIZE) FILE_SIZE 
        ,B.SRC_FILE_NAME 
        ,B.FILE_EXT_NAME 
        ,C.PRD_MDL_NAME 
        ,C.PRD_MDL_CD 
    FROM WSOP_SPRD_REL_RES_INF A 
        ,WSOP_FILE_INF B 
        ,WSOP_SPRD_MDL_CD C 
   WHERE A.REL_RES_IMG_FILE = B.FILE_SEQ(+) 
     AND A.PRD_MDL_CD = C.PRD_MDL_CD 
     AND A.SITE_CD = C.SITE_CD 
     AND A.SITE_CD = #op_site_cd# 
     AND C.PRD_MDL_CD = #op_prd_mdl_cd# 
ORDER BY A.REL_RES_PRINT_ORDER ASC 
]]> 
</select> 
</sqlMap> 

6. /op/2.5/learning/learning_main.jsp 파일에서  
<div id="wrap">   
<jsp:include page="/2.5/main/frontMainTop.do" flush="true"/>  
<jsp:include page="/2.5/main/frontMain.do" flush="true"/>   
<div class="consumer_pci" style="width: 920px; background-color: #fff; margin-left: 6px; float: left;">  
<jsp:include page="frontDetailMain.jsp" flush="true"/></div>   <!--// 상세 화면 //-->  
<jsp:include page="../main/frontMainBottom.jsp" flush="true"/> <!-- bottom -->  
<jsp:include page="../features/frontFunction.jsp" flush="true"/> <!-- footer edit box   -->  
</div> 

7. /op/2.5/learning/frontDetailMain.jsp 파일에서 
<c:forEach items="${FrontTO}" var="frontTO"> 
<c:set var="seq" value="${frontTO.rel_res_seq}" />  
<c:if test="${not empty(frontTO.rel_res_title)}">   <!--// 제목 //-->  
    <c:set var="title" value = "${frontTO.rel_res_title}"/> 
    <c:set var="titleRe" value = "${dotcomop:escapeHtmlString(frontTO.rel_res_title)}"/> 
</c:if> 
  
<c:if test="${not empty(frontTO.rel_res_cont)}"> 
    <c:set var="desc" value = "${frontTO.rel_res_cont}"/>  <!--// 상세화면 //-->  
    <c:set var="descRe" value = "${dotcomop:escapeHtmlString(frontTO.rel_res_cont)}"/> 
</c:if>  
</c:forEach> 
-------------------------------------------------------------------------------------------------------------------------------- 

1. /WEB-INF/conf/struts/op/2_5/struts-config-op-product.xml 파일에서 
<!-- description --> 
<action path="/op/2_5/product/ProductMain" scope="request" parameter="method" 
type="com.sec.dotcomop2_5.product.main.action.ProductMainAction"> 
    <forward name="forward" path="/WEB-INF/jsps/op/2_5/main/PM_ProductMain_MR.jsp" /> 
    <forward name="error" path="" /> 
</action> 

  
2. /src/com/sec/dotcomop2_5/product/main/action/ProductMainAction.java 파일에서  
public class ProductMainAction extends OpBaseDispatchAction { 
public ActionForward doSearch (....) { 
try { 
if (targetContentTyp.equals("LD")) {  //Learning Resource 
contentMap = ldBiz.searchLandingContentInfo(formMap);  
    } else if (targetContentTyp.equals("LR")) {   
contentMap = lrBiz.searchLearnigContentInfo(formMap);  
    } 
} 
} 
} 

3. /src/com/sec/dotcomop2_5/product/content/biz/LearningBiz.java 파일에서  
public HashMap<Object, Object> searchLearnigContentInfo(HashMap<Object, Object> hash) throws Exception{ 
        HashMap<Object, Object> returnValue = new HashMap<Object, Object>(); 

        try { 
            logger.debug("LearningBiz.searchLearnigContentInfo"); 
        } catch(Exception e) { 
             
        } 
        return returnValue; 
} 

/op/2_5/main/PM_ProductMain_MR.jsp 파일에서 ===> LR 파라미터이면 LR_Content_MR.jsp로 변경됨 
- 왼쪽 메뉴 
<div id="navMenuDiv"> 
<ul class="navMenu"> 
    <li class="top"><a href="javascript:fnMoveTab('FT');"><dotcom:msg site="${site_cd}" id="consumerproduct.detail.features.title" /></a></li> 
    <c:if test="${basicInfo.ftrs_cont_html_use_fl eq 'Y'}"> 
<li class="mid"><a href="javascript:fnMoveTab('FH');"><dotcom:msg site="${site_cd}" id="consumerproduct.detail.features.title" /> html</a></li> 
    </c:if> 
    <li class="mid"><a href="javascript:fnMoveTab('SP');"><dotcom:msg site="${site_cd}" id="consumerproduct.detail.specifications.title" /></a></li> 
    <li class="mid"><a href="javascript:fnMoveTab('AD');"><dotcom:msg site="${site_cd}" id="consumerproduct.detail.awards.title" /></a></li> 
    <li class="mid"><a href="javascript:fnMoveTab('LR');"><dotcom:msg site="${site_cd}" id="consumerproduct.common.learning_resources" /></a></li> 
    <li class="dbColumn btm"><a href="javascript:fnMoveTab('GR');"><dotcom:msg site="${site_cd}" id="consumerproduct.detail.gallery.title" /></a></li> 
</ul> 
</div> 

- learning 메인 화면 
<c:when test="${save_content_typ eq 'LR'}"> 
   <jsp:include page="../learning/LR_Content_MR.jsp" flush="true" /> 
</c:when>  
==============================================================================================================

- 카드 자동이체 계좌 변경 처리(국민은행 방문): 국민 --> 제일 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.05.05(수) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 06:30 ~ 01:00  --> 공휴일(도서관 휴관으로 집에서 공부) 

- KCISA Study
- KCISA Review & 문제풀이 과정 
 1. 2차반 
1) 이론(주말): 2010. 6.12 ~ 6. 20(토/일) --> 토: 14:30 ~ 17:30, 18:30 ~ 21:30, 일: 10:00 ~ 1:00 
2) 실전모의고사(일): 6.13(일), 20(일), 27(일) --> 일: 14:00 ~ 16:00, 16:30 ~ 20:30 
 2, 라이지움 연락처 
1) 과정문의: 02)5377-144, *@*.*  
2) 계좌이체(하나은행, 예금주 : (주)라이지움, 계좌번호:448-910001-08804) 
3) 수강료: 495,000원(KCISA 정규반 수강생은 260,000원) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.05.06(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:20 ~ 01:00  --> 야근(석식: 청구할 것) 

- 삼성닷컴 리뉴얼
- Framework 표준 작업(Learning Resource) 
/op/2_5/main/PM_ProductMain_MR.jsp(전체 팝업 메인) 
/op/2_5/learning/LR_Content_MR.jsp(learning 메인) 
http://localhost:8080/iw-sec/op/2_5/product/ProductMain.do?method=doSearch 

 1. DB 연결 
1. /src/com/sec/dotcomop2_5/product/content/biz/LearningBiz.java 파일에서  
public HashMap<Object, Object> searchLearnigContentInfo(HashMap<Object, Object> hash) throws Exception{ 
        HashMap<Object, Object> returnValue = new HashMap<Object, Object>(); 

        try { 
            logger.debug("LearningBiz.searchLearnigContentInfo"); 
        } catch(Exception e) { 
             
        } 
        return returnValue; 
}  

2. /com/sec/dotcomop2_5/product/content/biz/LearningBiz.java 파일에서 
 public HashMap<Object, Object> searchLearnigContentInfo(HashMap<Object, Object> hash) {  
LearningContentDAO cdDao = (LearningContentDAO) DAOManager.getDAO("sqlmap-config-op-product-2_5.xml" 
                                                                                 ,LearningContentDAO.class);  
listData = (List<LearningContentTO>)cdDao.searchSprdList(doMap);  //Learning Resource 데이타 조회  
learningimageTo = cdDao.opvMainFileInfo(doMap);  //opv 일시 메인 이미지 추출 
} 

3. /com/sec/dotcomop2_5/product/content/dao/LearningContentDAO.java 파일에서  
public List<LearningContentTO> searchSprdList(HashMap<Object, Object> hash) throws SQLException { 

List<LearningContentTO> toList = null; 
try { 
    toList = sqlMapClient.queryForList(sqlMapId + ".searchSprdLRCdlist_OP",hash); 
  
} catch(SQLException ex) { 
    throw ex; 
} 
return toList; 
} 

4. /com/sec/dotcomop2_5/product/content/sql/LearningContentSql.xml 파일에서 
sqlMap namespace="LearningContent">      
    <typeAlias alias="LearningContentTO" type="com.sec.dotcomop2_5.product.content.to.LearningContentTO" /> 
  
    <!-- description --> 
    <select id="searchSprdLRCdlist_OP" resultClass="LearningContentTO" 
            parameterClass="java.util.HashMap"> 
        <![CDATA[  
        SELECT   C.SITE_CD, ..... 
                ,C.PRD_MDL_CD 
            FROM WSOP_SPRD_REL_RES_INF A 
                ,WSOP_FILE_INF B 
                ,WSOP_SPRD_MDL_CD C 
           WHERE A.REL_RES_IMG_FILE = B.FILE_SEQ(+) 
             AND A.PRD_MDL_CD = C.PRD_MDL_CD 
             AND A.SITE_CD = C.SITE_CD 
             AND A.SITE_CD = #site_cd# 
             AND C.PRD_MDL_CD = #prd_mdl_cd# 
        ORDER BY A.REL_RES_PRINT_ORDER ASC 
        ]]> 
    </select> 
</sqlMap>  

5. /WEB-INF/jsps/op/2_5/learning/LR_Content_MR.jsp 파일에서 
<c:forEach items="${FrontTO}" var="frontTO"> 
<c:set var="seq" value="${frontTO.rel_res_seq}" />  
<c:if test="${not empty(frontTO.rel_res_title)}">   <!--// 제목 //-->  
    <c:set var="title" value = "${frontTO.rel_res_title}"/> 
    <c:set var="titleRe" value = "${dotcomop:escapeHtmlString(frontTO.rel_res_title)}"/> 
</c:if> 
  
<c:if test="${not empty(frontTO.rel_res_cont)}"> 
    <c:set var="desc" value = "${frontTO.rel_res_cont}"/>  <!--// 상세화면 //-->  
    <c:set var="descRe" value = "${dotcomop:escapeHtmlString(frontTO.rel_res_cont)}"/> 
</c:if>  
</c:forEach>   

- 사용 안함 
<input type="hidden" name="noneSave" value="T" />   <!--// saveGubun true = 저장하고 이동, false = 저장안하고 이동(T:저장 안함) //--> 
<input type="hidden" name="copyPart" value="" />  <!--// copyPart // --> 
==============================================================================================================

- 보안 
1. 정보보호개론(한국정보보호센터) 
2. 정보보호 핵심지식(김종필) 
3. 현대암호학(원동호) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.05.07(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:20 ~ 02:00  --> 어버이날 송금(20만원) 

- 삼성닷컴 리뉴얼
- Framework 표준 작업(Learning Resource) 
/op/2_5/learning/LR_Content_MR.jsp(learning 메인) 

1. db 연결 에러 
현상: sqlmap-config-op-product-2_5.xml 파일 못 찾음 
try { 
SprdMdlCdDAO cdDao = (SprdMdlCdDAO) DAOManager.getDAO("sqlmap-config-op-product-2_5.xml" 
                                                                 ,SprdMdlCdDAO.class); 
} 

Caused by: java.lang.Exception: [DAOManager] No such sqlmap config 'sqlmap-config-op-product-2_5.xml'. 
원인: AwardContentSql.xml 파일이 내용이 ibatis 문법에 안 맞음 => Start tomcat에서 로딩시 Console에서 디버깅 분석 

2. PVI info db 연결 
/WebContent/WEB-INF/web.xml 파일에서 
 , /WEB-INF/conf/sqlmap/sqlmap-config-op-product-pvi-2_5.xml  --> 추가 

/WebContent/WEB-INF/conf/sqlmap/sqlmap-config-op-product-pvi-2_5.xml 파일에서  
<!-- DataSource 정보 --> 
<transactionManager type="JDBC"> 
<dataSource type="JNDI"> 
    <property name="DataSource" value="${jndi.datasource.admin}" /> 
</dataSource> 
</transactionManager>  

<!-- // Learning Resource  // --> 
<sqlMap resource="com/sec/dotcomop2_5/product/content/sql/LearningContentSql.xml" /> 
==============================================================================================================

- STOCKS 
월(4,070), 화(4,150), 수(공휴일), 목(4,100), 금(4,030) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.05.08(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:20 ~ 23:00   --> KCISA Review & 문제풀이 과정 등록(라이지움 프런트) 

- KCISA14 SE(3,4)
1. 수업: SE(3,4) --> 유지호 기술사 
2. 약식모의고사[7회]: 60점(공동 26등) ==> (합산 평균: 70점) 
 1) SE 공부 잘못 함(반성): 심각한 상태로 인식(비상상태) 
==============================================================================================================

- 종합소득세 신고(2009년 귀속 종합소득세) ==> 진행중 
1. (68) 소득공제명세(부모님 인적공제 입력) 
2. 근무처별 소득명세 작성 
(주)한우리신스템(206-81-17525): 1,833,333원 
다른정보기술(주(120-81-78460)): 6,500,000원 
(주)마루정보(119-02-86096): 25,800,000원  
진태만님의 2009년 귀속 종합소득세 수입금액은 38,615,800원 입니다.  
계산상: 37,466,666원 ===> 1,149,134원 차이가 남 
--------------------------------------------------------------------------------------------------------------- 

- 종합소득세 신고 결과 
합계: -754,919원(종합소득세: -686,290원  주민세: -68,629원)을 환급 받음 
인적 공제 2명(아버지:70세 이상이고 장애인, 어머니) 
  
[신고유형 : D 유형]  
　- 국민연금 납입액은 975,370 원  
　- 연금저축 납입액은 2,400,000 원   
귀하의 기장의무는 "간편장부의무자" 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.05.09(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:00 ~ 24:00 

- KCISA15 보안(3) 
06:00 기상(차가지고 감) 
06:10 조식(만두) 
07:20 신구초등학교 
07:20 숏게임(2:0 숭) 
07:40 게임(0:0 무): 래프트윙(패스 잘 해서  칭찬 받음) 
08:20 종료 
08:40 강남역 서초 골프장 근처에 주차 
08:50 학원 도착 
10:00 수업(보안(3) --> 김은아 기술사) 
13:00 수업종료(점심: 초코파일 2개) 
13:10 9층 랩실(SE 문제 풀이집 공부) 
17:50 종료  
18:40 귀가 
00:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.05.10(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:50 ~ 23:30 

- 삼성닷컴 리뉴얼
- Framework 표준 작업(Learning Resource) 
/op/2_5/learning/LR_Content_MR.jsp(learning 메인) 
1. DB 수정(하나의 함수로 호출) 
2. LR_Content_MR.jsp 파일 스크립트 수정 
========================================================================================================= 

- script 에러 
- /op/2_5/learning/frontFunction.jsp 파일에서 에러 
objById('edit_form_cont_file_list').innerHTML = objById('ieFileAddType').innerHTML;  //---> 에러 줄 
<div class="con"> 
<select id="work_due_dt" name="work_due_dt"  style="width:300px;" disabled="true"> 
</select> 
</div>   

- RequestPriority.js 파일에서 에러 발생 
function getDueDateList() { 

if(selectSiteCd != ""){ 
if(priorityObj.value == '') { 
clearSelectBox(duedateObj); 

duedateObj.disabled = true; 
duedateObj.options.add(new Option("-- Due Date --", "")); 
} else { 
duedateObj.disabled = false; 
CommonReqPriorityDWR.getDueDateList( priorityObj.value,selectSiteCd, callbackDueDateList); 
} 
} 
else{ 
priorityObj.selectedIndex = 0; 
alert("Please Select Site!!");   //---> 에러 줄 

} 
} 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.05.11(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:10 ~ 23:30 

- 삼성닷컴 리뉴얼
- Framework 표준 작업(Learning Resource) 
/op/2_5/learning/LR_Content_MR.jsp(learning 메인) 
1. LR_Content_MR.jsp 파일 스크립트 수정 
param.op_site_cd  --> param.site_cd 
LearningContentDAO frontDao = (LearningContentDAO) DAOManager.getDAO("sqlmap-config-op-product-2_5.xml",LearningContentDAO.class); 
LearningContentDAO frontDAOPvi = (LearningContentDAO) DAOManager.getDAO("sqlmap-config-op-product-pvi-2_5.xml", LearningContentDAO.class); 
========================================================================================================= 

- CVS 설정(password 변경) 
Host: 192.168.37.28, Host: /home01/users/cvs --> timeage1/asdf1234 
==============================================================================================================

- OP 내부 회의(14:30 ~ 17:50) 
1. Framework 표준 작업 
 1) learning 조회 부분 리뷰(스크립트 에러 때문에 갈굼 당함: 열받음) 
 2) learning 저장(Save, CopySave) 부분(이번주 금요일까지 완료할 것) 
 3) Right menu script 붙이기 
 4) Feature KeyVisual view(25일까지) 
 5) Pop up(award/learning)(28일까지) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.05.12(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 05:50 ~ 01:00  --> 야근(석식: 6천원) 

- 삼성닷컴 리뉴얼
- Framework 표준 작업(Learning Resource) 
1. learning 저장(Save, CopySave) --> LR_Content_MR.jsp 파일 
site_cd   --> String searchSiteCd = CommonUtil.toString(hash.get("search_site_cd")); 

/op/2.5/main/rontMainTop.jsp 파일에서  ===> 현재 사용 안함 
<input type="hidden" id="noneSave" name="noneSave" value="${param.noneSave}"> 
<input type="hidden" id="saveGubun" name="saveGubun"> 
<input type="hidden" id="op_site_cd" name="op_site_cd" value="${param.op_site_cd }"> 
<input type="hidden" id="op_prd_mdl_cd" name="op_prd_mdl_cd" value="${param.op_prd_mdl_cd }"> 
<input type="hidden" id="pathgubun" name="pathgubun" value="${param.mainmidGubun }"> 
<input type="hidden" id="prd_mdl_name" name="prd_mdl_name" value="${prd_mdl_name}"> 
<input type="hidden" id="copyPart" name="copyPart" value="${copyPart}" /> 
<input type="hidden" id="mainCopyPart" name="mainCopyPart"/> 
========================================================================================================= 

/com/sec/dotcomop2_5/product/content/biz/LearningBiz.java 파일에서 
public boolean saveLearningContentInfo(HashMap<Object, Object> hash) throws Exception{ 
try { 
frontDao.doDeleteLearning(map);  // OP 서비스 제품 관련 리소스 정보 삭제  
this.learningMainImgSave(formMap);  // 메인 이미지 저장 
  
if (idxs != null) {   //Learning Seq가 존재하면 
frontDao.doAddObjDeleteLearning(map); // 저장 하기 전에 추가되는 object 가 좀전에도 저장이 되었다면 삭제 
  
selectFileTo = frontDao.getWcmsFileInfo(file_seq);  // WCMS 파일 정보 조회 

===> // 이미지 파일이 WCMS 에서 가져온 경우만 OP 에 이미지 파일 및 DB data 복사를 한다  
if (selectFileTo != null) {  // WCMS 파일이 존재하면 
 // OP 저장 영역으로 파일 카피 
FileUtil.onlyCopyFile(fileTo.getFile_path() + "/" + fileTo.getFile_name(), file_path + "/" + fileTo.getFile_name()); 

// OP File Path 로 변경     
fileTo.setFile_path(file_path); 
mode = frontDao.doInsertFileInfo(fileTo);  // OP 저장 
} 

} else if ((!CommonUtil.toString(hash.get("search_site_cd")).equals("OP")  opExistFl.equals("N"))) { //OP가 아닐 때 
returnValue = this.doLearningSaveOther(hash);  
} 
} 
}  
==============================================================================================================

/com/sec/dotcomop2_5/product/content/biz/LearningBiz.java 파일에서 
public boolean saveLearningContentInfo(HashMap<Object, Object> hash) throws Exception{ 
try { 
frontDao.doDeleteLearning(map);  // OP 서비스 제품 관련 리소스 정보 삭제  
this.learningMainImgSave(formMap);  // 메인 이미지 저장 
  
if (idxs != null) {   //Learning Seq가 존재하면 
frontDao.doAddObjDeleteLearning(map); // 저장 하기 전에 추가되는 object 가 좀전에도 저장이 되었다면 삭제 
  
selectFileTo = frontDao.getWcmsFileInfo(file_seq);  // WCMS 파일 정보 조회 

===> // 이미지 파일이 WCMS 에서 가져온 경우만 OP 에 이미지 파일 및 DB data 복사를 한다  
if (selectFileTo != null) {  // WCMS 파일이 존재하면 
 // OP 저장 영역으로 파일 카피 
FileUtil.onlyCopyFile(fileTo.getFile_path() + "/" + fileTo.getFile_name(), file_path + "/" + fileTo.getFile_name()); 

// OP File Path 로 변경     
fileTo.setFile_path(file_path); 
mode = frontDao.doInsertFileInfo(fileTo);  // OP 저장 
} 

} else if ((!CommonUtil.toString(hash.get("search_site_cd")).equals("OP")  opExistFl.equals("N"))) { //OP가 아닐 때 
returnValue = this.doLearningSaveOther(hash);  
} 
} 
}  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.05.13(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:10 ~ 01:00  --> 중식((주)엠디씨티 사장이 사줌), 야근(석식: 6천원) 

- 삼성닷컴 리뉴얼
- Framework 표준 작업(Learning Resource) 
1. learning 저장(Save, CopySave) --> LR_Content_MR.jsp 파일 
site_cd --> String searchSiteCd = CommonUtil.toString(hash.get("search_site_cd")); 
if (frm.opExistFl.value != "N"){ // OP에 모델이 존재 할 경우 
==============================================================================================================

- FileInfoTO 변경 
import com.sec.dotcomop2_5.product.content.to.FileInfoTO; 
--> import com.sec.dotcomop2_5.common.to.FileInfoTO;  
- 형전환(.java에서) 
fileTo.setFile_seq(Integer.parseInt(file_seq));   //String --> int 
learning_main_img_file_seq = "" + fileInfoTo.getFile_seq();   //int --> String 

- FileInfoTO 에러 
원인: 1. FileInfTO.java 파일을 eclipse에서 잡고 있음,  2. FileInfTO.class 파일다시 작성, 3. FileInfoTO 실제 이름 정확히 확인 
조치: FileInfTO.java 파일 삭제 후 다시 등록 
java.lang.NoClassDefFoundError: com/sec/dotcomop2_5/common/to/fileInfoTO  
(wrong name: com/sec/dotcomop2_5/common/to/FileInfoTO)  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.05.14(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:20 ~ 20:00  --> 삼성닷컴 리뉴얼 철수(치욕을 평생 기억하자) 

- 삼성닷컴 리뉴얼
- Framework 표준 작업(Learning Resource) 
1. learning 저장(Save, CopySave) --> LR_Content_MR.jsp 파일 
- product.main.to.SprdMdlMdiInfTO.java 파일에 정의 되어 있음 
private String File_src_typ_cd; 
private String Prd_mdl_cd; 
private int prd_mdl_mdi_file; 
private String Prd_mdi_typ_cd; 
==============================================================================================================

- eclipse에서 Sychronize에서 데이타 못 받아 올때 
현상: Incomming Mode, Outgoing Mode에서 데이타 못 받아옴 
조치: Sychronize에서 Remove Current Sychronization하여 삭제하고 다시 받아옴 
==============================================================================================================

11:30 최수용 과장과 TO.java 문제로 갈구 당함(조치 요청) 
13:00 최과장이 PM 데리고 옴(최과장과 일 못한다고 함) 
15:00 이기수 사장에게 전화해서 철수 통보 
16:30 커피숍에서 차장 만남(과일주소, 최우석 과장은 최수용 과장 편 듬) 
18:00 귀가 
20:00 취침 
==============================================================================================================

- STOCKS 
월(4,045), 화(4,300), 수(4,300), 목(4,290), 금(4,265) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.05.15(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 05:30 ~ 01:00 

- KCISA16 SE(5,6)
1. 수업: SE(5,6) --> 유지호 기술사 
2. 약식모의고사[8회]: 60점(등수 발표 안함) ==> (합산 평균: 72점) 
 1) 테스트 문제, 다른 문제도 어려웠음(좌절) 
==============================================================================================================

- 기술경력확인 작성, 취업 
1. 프로젝트명: 삼성닷컴 PHASE2.5 리뉴얼 개발 프로젝트 
2. (주)엠디씨티 이기수(H)010-5527-4361), T) 02-868-0597, F) 02-868-0595, 사업자번호: 113-86-28050 
3. 현재 주소: 서울시 금천구 가산동 327-27 이앤씨드림타워 8차 305호  
예전 주소: 서울 구로구 구로동 235 한신IT타워 1206호 
==============================================================================================================

- 종합 소득세 신고, 노트북 포맷(비디오 카드) 
==============================================================================================================

- 도서 구매 
데이터베이스론 - 전산직 수험서의 Bible, 7급 전산직 시험대비, 조상진.오재우 지음(탑스팟) 
성공을 위한 독서 키워드 속독법,박인수 지음(성안당) 
정보보호학개론, 이준택 지음(생능출판사) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.05.16(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 24:00 

- KCISA17 보안(4,5)
06:30 기상(차가지고 감) 
06:40 조식(만두) 
07:20 신구초등학교 
07:30 게임(1:0 승) 
08:50 종료 
09:10 강남역 서초 골프장 근처에 주차 
09:20 학원 도착 
10:00 수업(보안(4,5) --> 김은아 기술사) 
13:00 점심(초코파일 2개) 
17:20 종료 
18:00 귀가 
18:10 주차 문제로 옆집 주인과 싸움(주차 자리 빼았김) 
00:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.05.17(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:00 ~ 01:00  

- KCISA Study
- SE 정리, 보안 정리 
==============================================================================================================

- 종합소득세 신고(2009년 귀속 종합소득세) ====> 완료 
1. (68) 소득공제명세(부모님 인적공제 입력) 
2. 근무처별 소득명세 작성(사업소득) 
(주)한우리신스템(206-81-17525:  02-2205-0354) --> 소득: 650만원, 소득세: 195,000, 주민세: 19,500  ===> 214,500원 
다른정보기술(주(120-81-78460: 02-825-4838) ---> 소득: 5,025,800원,  주민세: 150,770원  ===> 165,840원 
(주)마루정보(119-02-86096: 02-761-0659) ---> 소득: 2709 0000원,  소득세: 812,700원, 주민세: 81,270원  ===> 893,970원 
총합 ---> 소득: 38,615,800원,  소득세: 115,847원, 주민세: 115,847원  ===> 1,274,317원  
===> 1) 사업소득 대상자로 홈텍스 쪽지에서 보내준 총 소득(38,615,800원)만 입력면 자동으로 불러 오기가 가능함  
2) 동작세무서(02-840-9200)에서 전화해서 처리함  
3) 홈텍스에서 받은 쪽지 내용 
 - 진태만님의 2009년 귀속 종합소득세 수입금액은 38,615,800원 입니다.  
 - 국민연금 납입액은 975,370원, 연금저축 납입액은 2,400,000원 
 - 귀하의 기장의무는 "간편장부의무자"([신고유형 : D 유형]) 
-------------------------------------------------------------------------------------------------------------------------------

- 종합소득세 신고 결과 
합계: -61,998원(종합소득세: -56,360원  주민세: -5,638원)을 환급 받음 
인적 공제 2명(아버지:70세 이상이고 장애인, 어머니) 
==============================================================================================================

- SW기술자 신고 업무 
10:20 출발(차로 감) 
11:00 (주)엠디씨티 방문(서울시 금천구 가산동 327-27 이앤씨드림타워) 
11:20 SW기술자 경력서 서류 처리 
11:30 종료 
11:59 귀가 
- SW기술자 신고 우편 접수(등기) 
주소: 서울시 강남구 삼성동 9-1 대영상호저축은행 빌딩 5층 SW기술자 신고 접수 담당자 앞 
==============================================================================================================

- 비밀번호 변경(모든 사이트) 
ssj**88*  --> sspe**88*, ssj**52**(PKI) --> sspe**52**(PKI) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.05.18(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:20 ~ 22:00   --> 글빛 도서관 

- KCISA Study
- SE 정리, 보안 정리 
==============================================================================================================

- 삼성 노트북 비디오 드라이버 잡기(setup.exe 파일 폴더 위치 변경하여 설치) 
- TAMA_HouseK_Book 수정(Ⅲ-3. 자산검증.xls 파일 생성) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.05.19(수) 작업 ■■■■■■■■■■■■■■■■■
---> 07:20 ~ 01:00  --> 글빛 도서관 

- KCISA Study
- SE 정리, DB 정리 
==============================================================================================================

- 김진협 자살 
진협 회비: 2007년 1월 ~ 2009년 6월 ==> 45만원 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.05.20(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:20 ~ 01:00  --> 글빛 도서관, 진협 조문 

- KCISA Study
- 시스템구조 정리, 사업관리 및 감리 정리 
==============================================================================================================

- 진협 조문
07:30 글빛도서관 
12:00 귀가 
15:00 국민은행(부의금 인출) 
15:30 서울 신천역(4번 출구): 임모(배웅 나옴), 태용차, 현용 
19:00 경대병원 영안실(정근이형, 창환이형과  만남) 
19:10 진협 조문(부의금 150만원, 개별 10만원 ==> 총 200만원, 이후남 부의금(10만원) 전달) 
20:00 나눔 후배들 옴(일남, 종환, 부열) 
23:00 송재욱 도착, 김문정 도착(부의금 5만원)  
01:00 나눔 88 새끼하고 다툼 
02:30 여관(여관비 나눔 회비로 처리) 
03:00 취침 
==============================================================================================================

- 김진협 조문(대구 경대 병원 조문) 
1. 부의금: 110만원(국민은행으로 송금해서 찾을 것), 후남 10만원(대납) 
==============================================================================================================

- 2010 신사조기회 회비 송금(3~6월: 8만원 송금) 
신한은행: 110-289-623439, 예금주: 이승열(*)       
==============================================================================================================

- STOCKS 
월(4,150), 화(4,080), 수(4,280), 목(,200), 금(공휴일) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.05.21(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:20 ~ 01:00  --> 석가탄신일 

- 진협 조문2
06:30 기상 
07:30 조식(영대병원 영안실) 
08:30 출상(태용이차 탐: 태용, 현용, 상환, 정근이형, 창환이형, 일남, 종환, 재욱, 승본) 
09:00 대구 명복공원(만촌 네거리 근처, 남부 구치소옆) 
09:30 화장 시작 
11:00 화장 종료(종환, 제욱 귀가) 
11:20 포항 출발(고속도로) 
13:10 포항 연일 중명회관 도착(경북 포항시 남구 연일읍 중명리) 
14:00 진협 할머니 묘 도착 
14:20 중식(도시락) 
14:30 수목장(이름 틀려서 비석 다음에서 세우기로 함) 
14:40 제사 
15:00 종료 
16:00 포항 죽도시장(회) 
17:00 종료 
17:30 귀가(포항집) 
==============================================================================================================

- 나눔 90 동기회 안건 
1. 동기회를 매년 3월, 9월 2번 하기로 명시 함(3월, 9월은 조정 가능) 
2. 2010년 9월은 8월말에 가기로 합의 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.05.22(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:20 ~ 01:00 

- 진협 조문3
06:30 기상 
07:30 조식  
09:00 PC방(고속버스 예약) 
09:40 종료 
10:00 포항 옛 기찻길(공원화 공사로 나무 심어짐): 철로 없어짐, 작은 굴 폐쇄됨 
13:00 중식 
14:30 포항집 출발(반찬 가지고 옴) 
14:40 101번 버스 
15:00 포항 고속터미널 도착 
15:30 포항 출발 
20:30 강남터미널 도착 
21:00 귀가(서울집) 
22:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.05.23(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:20 ~ 01:00 

- KCISA Study
07:30 기상 
08:88 조식  
09:30 라이지움 랩실 
09:50 소공6 테이프 대여(프런트) 
13:00 중식(초코파이 2개) 
17:30 종료(현용 안 옴) 
18:00 귀가(서울집) 
20:00 나눔90동기계 회계 정리(작업 중) 
00:00 취침 
==============================================================================================================

- 문태용 송금 
하나은행: 581 910048 19907 예금주: 문태용  --> 60만원 송금 
고속버스 터미널 ARS 예약:1588-6900 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.05.24(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:00  --> 글빛 도서관 

- KCISA Study
- 시스템구조 정리 
==============================================================================================================

- 속독법 공부1(Day 01 ~ 03) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.05.25(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 01:00  --> 글빛 도서관 

- KCISA Study
- UML 공부(UML 이해와 실제: 한국 소프트웨어 컴포넌트 컨소시엄) 
==============================================================================================================

- 포항집에 가져 가야 할 것(2010.09.19(일 추석) 
반찬통, 교통카드, 속옷(빨래 요청) 
- 포항집에서 가져 올 것 
반찬(김치, 진미채볶음) 
==============================================================================================================

- TAMA_HouseK_Book 수정(TAMA 독서 기록장 수정) 
BOOK_STATE(cboBook_State): 책 상태(01: 보유, 02:대여, 03:대출, 04:분실, 05:버림, 99:기타) 
BOOK_STATE_DETAIL(txtBook_state_detail): 책 상태 상세 내용 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.05.26(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 01:00  --> 글빛 도서관 

- KCISA Study
- UML 공부(UML 이해와 실제: 한국 소프트웨어 컴포넌트 컨소시엄) 
==============================================================================================================

- 오버로딩 문제 문의 
약식모의고사(8회) 2번 문제 ==> 라이지움 유지호 강사(*@*.*) 
==============================================================================================================

- 방 열쇠 교체 
열쇠점 방문하여 구매후 직접 설치(현대 도어락: 9천원) 
==============================================================================================================

- TAMA_HouseK_Book 수정(TAMA 독서 기록장 수정) 
BOOK_STATE(cboBook_State): 책 상태(01: 보유, 02:대여, 03:대출, 04:분실, 05:버림, 99:기타) 
BOOK_STATE_DETAIL(txtBook_state_detail): 책 상태 상세 내용  
BOOK_PRICE: 정가  
BOOK_REAL_PRICE: 실제 가격  
Const SS1_BOOK_PRICE = 8        '<Name> 정가 
Const SS1_BOOK_REAL_PRICE = 9   '<Name> 실제 가격 
Const SS1_BOOK_MARGIN = 10      '<Name> 할인율 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.05.27(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 00:10  --> 글빛 도서관 

- KCISA Study
- 테스트 공부(개발조도 알아야할 테스트 테스팅 실무) 
==============================================================================================================

- TAMA_HouseK_Book 수정(TAMA 독서 기록장 수정) 
1. 출력, 2, 조회, 3, 등록 완료 
-------------------------------------------------------------------------------------------------------------------------- 

- 문자 자르기 함수(split)  
Dim strLNnameALL, strLNname_TimeALL, strLNname_TimeALL2 
Dim i As Integer, j As Integer 

strNewAlert = "웹 개발자를 위한 스프링 2.5 프로그래밍(최범균 ^ 가메)"  
strLNname_TimeALL = Split(strNewAlert, "(")      '배열 분리(서명, 나머지 배열) 
      
For i = 0 To UBound(strLNname_TimeALL) - 1 
txtBook_nm.Text = strLNname_TimeALL(0)  '서명 
i = i + 1 
Next 

strLNname_TimeALL2 = Split(strLNname_TimeALL(1), "^")      '배열 분리(저자, 나머지 배열) 
For j = 0 To UBound(strLNname_TimeALL2) - 1 
txtBook_author.Text = strLNname_TimeALL2(0)  '저자 
txtPublication.Text = strLNname_TimeALL2(1)  '출판사 
txtPublication.Text = Replace(txtPublication.Text, ")", "")  '출판사(")" 제거) 
j = j + 1 
Next 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.05.28(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:40 ~ 01:00 

- KCISA Study
- TAMA_HouseK_Book 수정(TAMA 독서 기록장 수정) 
==============================================================================================================

- StarUML 사용법 
http://staruml.sourceforge.net/ko/documentations.php 
http://staruml.sourceforge.net/docs/user-guide(ko)/toc.html 
==============================================================================================================

- STOCKS 
월(4,130), 화(4,060), 수(4,055), 목(4,080), 금(4,100) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.05.29(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:20 ~ 01:00   --> 라이지움 랩실 

- KCISA Study
07:20 기상 
08:000 조식 
09:00 라이지움 랩실 
09:10 소공 정리 
11:30 현용 도착(프로젝트 때문에 새벽에 자고 왔다고 함) 
11:40 소공 점프업 과정 공부(비디오 Tape1 대여) 
12:40 중식(칼국수: 내가 쏨): 현용 
14:00 소공 점프업 과정 공부 
16:00 소공 점프업 과정 공부(비디오 Tape2 대여) 
16:10 버스(4321번) 
17:10 압구정동 미성APT 상요형 가계에서 비디오 얻음 
19:00 현용 소공 시험(8회 분) 76점 받음(내기에서 짐) 
19:30 석식(뼈다귀 해장국: 현용이 쏨) 
20:00 소공 점프업 과정 공부(비디오 Tape2) 
21:30 종료 
22:30 귀가 
22:30 비디오 연결 안되어서 고생 함 
00:30 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.05.30(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 05:40  ~ 03:00 

- KCISA Study
05:40 기상(차가지고 감)  
05:20 신구초등학교 
07:40 게임(4:1 승): 윙백에서 오버래핑 후 센터링(영태형 헤딩이 빗나감) 
08:00 게임(0:0 무) 
08:10 게임(3:1 승) 
09:30 게임(4:1 승) 
10:40 종료(상요형 한테 비디오 연결 방법 배움) 
11:30 학원 도착 
11:40 중식(우거지국: 내가 쏨): 현용 
13:00 소공 점프업 과정 공부(비디오 Tape4 대여) 
    -소프트웨어 공학 8판(Ian Sommerville ^ 피어슨에듀) 중고책 현용이한테 만 5천원에 구입 
19:00 현용 소공 시험(2회 분) PMP 56점 받음  
19:10 종료 
19:30 삼겹살집(임모가 쏨) 
21:00 맥주집(한국: 벨라루스(0:1 패) 현용이가 내가에서 맞춤) 
00:00 당구장(내가 꼴치: 당구비 냄) 
02:00 독산역 임모집까지 태워다 줌 
03:00 귀가 
03:30 취침 
==============================================================================================================

- 비디오 연결(비디오 상요형한테 얻었음) 
1. 연결잭을 해당 색깔별 구명에 꽃는다(비디오: 2개 구멍(노란, 하얀), LCD: 3개 구멍(빨간, 노란, 하얀) 
2. 비디오 테이프를 넣고 재생을 누름 
2. 리모콘으로 AV를 선택하면 화면이 나옴 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.05.31(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 09:30 ~ 01:00 

- KCISA Study
- TAMA_HouseK_Book 수정(TAMA 독서 기록장 수정) 
 ======================================================================================================== 
 
- TAMA_HouseK_Book 수정(TAMA 독서 기록장 수정) 
1. OR 조건 사용(1=2 OR) 
SELECT A.SEQ_NO,   A.BOOK_STATE,  B.LRG_BOOK_GUBUN_NM,     B.BOOK_GUBUN_NM,        
A.BOOK_SEQ_NO,     A.BOOK_NM,     A.BOOK_AUTHOR,       
A.BOOK_PUBLISHING_CO,     A.BOOK_PUBLICATION,     A.BOOK_PRICE,     A.BOOK_REAL_PRICE,      
(100-(A.BOOK_REAL_PRICE/A.BOOK_PRICE)*100) AS BOOK_MARGIN ,     A.BOOK_BUY_DT 
FROM T_READING A, T_READING_GROUP B          
WHERE A.LRG_BOOK_GUBUN = B.LRG_BOOK_GUBUN    
AND A.BOOK_GUBUN  = B.BOOK_GUBUN         
AND ( 1=2 OR A.BOOK_STATE = '01' OR A.BOOK_STATE = '02'  OR A.BOOK_STATE = '03' OR A.BOOK_STATE = '04'   
OR A.BOOK_STATE = '05' OR A.BOOK_STATE = '99') 
ORDER BY A.BOOK_READING_DT  DESC  
==============================================================================================================

- KCISA Review & 문제풀이 과정 3차로 변경  
1) 이론(주말): 2010. 6. 19 ~ 6. 20(토), 7. 3(토) --> 토: 9:30 ~ 12:30, 13:30 ~ 16:30 
2) 실전모의고사(일): 6. 27(일), 7. 4(일), 7. 11(일) --> 일: 9:00 ~ 11:00, 12:00 ~ 16:00 
============================================================================================================== 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //----------------------------------------------------------+ 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 