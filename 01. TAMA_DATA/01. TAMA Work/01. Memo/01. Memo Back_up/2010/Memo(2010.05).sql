

�����������������������������������������������������������
+---------------------------------------------// Memo(2010.05) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2010.05.01(��) �۾� �����������������
---> 06:00 ~ 01:00 

- KCISA12 SE(1,2)
1. ����: SE(1,2) --> ����ȣ ����� 
2. ��ĸ��ǰ��[6ȸ]: 68��(���� 15��) ==> (�ջ� ���: 72��) 
 1) ���� ���� 9���� �� 6���� Ʋ��(���� �� ��) 
==============================================================================================================

������������������� 2010.05.02(��) �۾� �������������������
---> 06:00 ~ 24:00  --> ������ �ٹ�(����: û���� ��) 

- KCISA13 ����(2)
06:00 ���(�������� ��) 
06:10 ���� 
07:10 �ű��ʵ��б� 
07:30 ������(1:1 ��)(���� �ϴٰ� �ڿ������� ������ ����) 
07:30 ����(4:2 ��) 
08:40 ���� 
08:55 ������ ���� ������ ��ó�� ���� 
09:10 �п� ���� 
10:00 ����(����(2) --> ������ �����) 
13:00 ��������(����: �������� 2��) 
13:30 ȸ�� ���(�ӿ��� ����, ��⼮ ���� ���Ϸ� ����) 
13:50 drag and drop ���α׷� ����(���� �Ϸ�) 
17:40 ���� 
17:50 ����(��η� �����) 
19:30 �̸�Ʈ(���, ���� �� ���) 
20:40 �Ͱ� 
00:00 ��ħ 
==============================================================================================================

- �Ｚ���� ������
- Image Drag and Drop �۾� 
<li>�� ����Ͽ� Drag ����(sctipt ����) ==> 1�� �Ϸ� 
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

<!--// Display image �� ����(DB ����Ÿ ����)  //-->  
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

- ���� Ŭ��(�ڹ� ��ũ��Ʈ����) 
function data_check(){ 
	alert("[/feature_main.jsp] ======> [data_check()]:[terst]"); 
}  

<div id="indexN_${noColorDataNum}" class="miniDragBox" ondblclick="data_check()"><div>  
==============================================================================================================

������������������� 2010.05.03(��) �۾� �������������������
---> 06:30 ~ 01:00  --> �߱�(����: û���� ��) 

- �Ｚ���� ������
- Image Drag and Drop �۾�  
1. Image ���� Ŭ�� ���� �̹��� 3�� Drag �Ǵ� �� �ذ� 
function addThumbnail(image_search_root, largeUrl, largeSeq, largeTyp, thumbUrl, thumbSeq, thumbTyp, mediumUrl,  
	mediumSeq, mediumTyp, largeWidth, largeHeight, mediumWidth, mediumHeight){ 
  
	if(!nodeCheck(thumbnailParentArr[i].childs[j].obj)){ 
		//addImageEl(objId, objId+"_large_size", "cur_img", largeUrl, largeWidth+"px", largeHeight+"px"); 
		//addImageEl(objId, objId+"_medium_size", "cur_img", mediumUrl, mediumWidth+"px", mediumHeight+"px");  
		addInputEl("hidden", objId, objId+"_large_size", "cur_img", largeUrl, largeWidth+"px", largeHeight+"px");   //���� 
		addInputEl("hidden", objId, objId+"_medium_size", "cur_img", mediumUrl, mediumWidth+"px", mediumHeight+"px");  //���� 
	} 
} 

2. Drag �ڽ� ����(�� �� ó��) 
==============================================================================================================

- ���� ���� ���� �� �翹��(��ȭ ���� ����(3016-2330~4) 
����� ������ �Ｚ�� 157-36 ȭ������ 10��(���� 4428: �����ʱ� ��ó)  
A. ���� �ؾ� 
1. ��ǰ��: ���뿹��, ������: ������  
 1) ������(�����) ���⿹�ݺ���  018-01-24-2778659 ����: 3õ 
�Ǽ��ɾ�: 34,425,657��, ������: ��7.37%, ��ġ�Ⱓ: 2��  
 2) ���ݿ�� ���⿹�ݺ���  018-01-24-2778659  ����: õ 5��  
�Ǽ��ɾ�: 17,002,618��, ������: ��7.37%, ��ġ�Ⱓ: 2��  
==> �ѽǼ��ɾ�: 51,445,117��(���� 6,445,117��) 
------------------------------------------------------------------------------------------------------

B. ��ȭ �������� ���� ���� 
1. ��ǰ��: ���뿹��, ������: ������  
 1) ������(�����) ���⿹�ݺ���(018-01-43-1532249 ����: 3õ) 
�Ǽ��ɾ�: 31,495,862��, ������: ��4.98%, ��ġ�Ⱓ: 13���� 
��������: 2011/06/03 
 2) ���ݿ�� ���⿹�ݺ���(018-01-43-1532281 ����: õ 5��) 
�Ǽ��ɾ�: 15,676,891��, ������: ��4.98%, ��ġ�Ⱓ: 13���� 
��������: 2011/06/03 
==> �ѽǼ��ɾ�: 47,172,753��(���� 2,172,753��) 
==============================================================================================================

������������������� 2010.05.04(ȭ) �۾� �������������������
---> 06:10 ~ 01:00 

- �Ｚ���� ������
- Image Drag and Drop �۾�  
1. Drag �ڽ� ����(fieldset���� �� ����Ÿ�� Drag �ȵǰ� ó��) 
<fieldset id="Demo0" style="width:320px;">  ===> ���� �ʿ� 

- ���� ����(bgcolor �ƴ�) 
<fieldset id="Demo0" style="width:310px; background-color:#CCFFCC"> 
==============================================================================================================

- OP ���� ȸ��(10:30 ~ 11:30) 
1. Framework ǥ�� �۾� 
 1) javascript(fn..) �Լ���, DB ȣ�� �ʵ�� ���� 
 2) learning ��ȸ �κ�(������ ȭ���ϱ��� �Ϸ��� ��) 
==============================================================================================================

- Framework ǥ�� �۾�(learning) 
/op/2_5/main/PM_ProductMain_MR.jsp(��ü �˾� ����) 
/op/2_5/learning/LR_Content_MR.jsp(learning ����) 
http://localhost:8080/iw-sec/op/2_5/product/ProductMain.do?method=doSearch 

1. /WEB-INF//conf/struts/op/2.5/struts-config-learning.xml ���Ͽ���  ===> ���� ȭ�� 
<action path="/2.5/learning/frontMain" type="com.sec.dotcomop1_6.learning.front.action.FrontMainAction">  
<forward name="success" path="/WEB-INF/jsps/op/2.5/learning/learning_main.jsp" /> 
</action> 
  
2. /com/sec/dotcomop1_6/learning/front/action/FrontMainAction.java ���Ͽ���  
public class FrontMainAction extends OpBaseAction { 
public ActionForward doSearch (....) { 
LearningFrontDAO frontDAO = (LearningFrontDAO) DAOManager.getDAO("sqlmap-config-op-learning-1.6.xml", LearningFrontDAO.class); 
LearningFrontDAO frontDAOPvi = (LearningFrontDAO) DAOManager.getDAO("sqlmap-config-op-learning-pvi-1.6.xml", LearningFrontDAO.class); 

frontDAO.startTransaction();  
boolean mode = false; 
mode = main.doSaveMain(formMap); // Main Info Save 
if (mode) 
mode = learning.doSaveLearning(formMap); // Learning Resource Info ���� 
} 
frontDAO.commitTransaction(); 

try {  
ist<LearningFrontTO> listData = null;  

if (!CommonUtil.toString(formMap.get("site_cd")).equals("pvi")) { 
// opv �Ͻ� learning ������ main image ���� ���� 
if (CommonUtil.toString(formMap.get("site_cd")).equals("opv")  "N".equals(copyLearning)) { 
    listData = frontDAO.getSelectList(formMap); 
    learningimageTo = frontDAO.opvMainFileInfo(formMap); 

} else { 
    // wcms �Ͻ� learning ������ main image ���� ���� 
    listData = frontDAO.getWcmsSelectList(formMap); 
    learningimageTo = frontDAO.wcmsMainFileInfo(formMap); 
    learningResource = "wcms"; 
} 
    } else { 
// pvi �Ͻ� �̹��� ���� 
conts_id = frontDAOPvi.pviMainFileContsId(formMap); 
learningimageTo = frontDAO.pviMainFileInfo(conts_id); 
learningResource = "pvi"; 
    } 
} 

request.setAttribute("FrontTO", listData); 
} 
} 

2. /com/sec/dotcomop1_6/learning/front/dao/LearningFrontDAO.java ���Ͽ���  
    public List<LearningFrontTO> getSelectList(HashMap<Object, Object> map) throws SQLException {  
        return (List<LearningFrontTO>) sqlMapClient.queryForList("learning.front.selectList", map); 
    } 

4. /WEB-INF/conf/sqlmap/1.6/sqlmap-config-op-learning-1.6.xml ���Ͽ��� 
<sqlMapConfig>   
<!-- Contents Pool Popup ���� ���� --> 
<sqlMap resource="com/sec/dotcomop1_6/learning/text/dao/learning_text_sql.xml" />  
<!-- Image Pool Popup ���� ���� --> 
<sqlMap resource="com/sec/dotcomop1_6/learning/image/dao/learning_image_sql.xml" />  
<!-- Front Page ���� ���� --> 
<sqlMap resource="com/sec/dotcomop1_6/learning/front/dao/learning_front_sql.xml" />  
</sqlMapConfig> 
  
5. /com/sec/dotcomop1_6/learning/front/dao/learning_front_sql.xml ���Ͽ��� 
<sqlMap namespace="learning.front"> 
<typeAlias alias="LearningFrontTO" type="com.sec.dotcomop1_6.learning.front.to.LearningFrontTO"/> 
<!-- online preview���� �˻��� ������ ����Ʈ  --> 
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

6. /op/2.5/learning/learning_main.jsp ���Ͽ���  
<div id="wrap">   
<jsp:include page="/2.5/main/frontMainTop.do" flush="true"/>  
<jsp:include page="/2.5/main/frontMain.do" flush="true"/>   
<div class="consumer_pci" style="width: 920px; background-color: #fff; margin-left: 6px; float: left;">  
<jsp:include page="frontDetailMain.jsp" flush="true"/></div>   <!--// �� ȭ�� //-->  
<jsp:include page="../main/frontMainBottom.jsp" flush="true"/> <!-- bottom -->  
<jsp:include page="../features/frontFunction.jsp" flush="true"/> <!-- footer edit box   -->  
</div> 

7. /op/2.5/learning/frontDetailMain.jsp ���Ͽ��� 
<c:forEach items="${FrontTO}" var="frontTO"> 
<c:set var="seq" value="${frontTO.rel_res_seq}" />  
<c:if test="${not empty(frontTO.rel_res_title)}">   <!--// ���� //-->  
    <c:set var="title" value = "${frontTO.rel_res_title}"/> 
    <c:set var="titleRe" value = "${dotcomop:escapeHtmlString(frontTO.rel_res_title)}"/> 
</c:if> 
  
<c:if test="${not empty(frontTO.rel_res_cont)}"> 
    <c:set var="desc" value = "${frontTO.rel_res_cont}"/>  <!--// ��ȭ�� //-->  
    <c:set var="descRe" value = "${dotcomop:escapeHtmlString(frontTO.rel_res_cont)}"/> 
</c:if>  
</c:forEach> 
-------------------------------------------------------------------------------------------------------------------------------- 

1. /WEB-INF/conf/struts/op/2_5/struts-config-op-product.xml ���Ͽ��� 
<!-- description --> 
<action path="/op/2_5/product/ProductMain" scope="request" parameter="method" 
type="com.sec.dotcomop2_5.product.main.action.ProductMainAction"> 
    <forward name="forward" path="/WEB-INF/jsps/op/2_5/main/PM_ProductMain_MR.jsp" /> 
    <forward name="error" path="" /> 
</action> 

  
2. /src/com/sec/dotcomop2_5/product/main/action/ProductMainAction.java ���Ͽ���  
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

3. /src/com/sec/dotcomop2_5/product/content/biz/LearningBiz.java ���Ͽ���  
public HashMap<Object, Object> searchLearnigContentInfo(HashMap<Object, Object> hash) throws Exception{ 
        HashMap<Object, Object> returnValue = new HashMap<Object, Object>(); 

        try { 
            logger.debug("LearningBiz.searchLearnigContentInfo"); 
        } catch(Exception e) { 
             
        } 
        return returnValue; 
} 

/op/2_5/main/PM_ProductMain_MR.jsp ���Ͽ��� ===> LR �Ķ�����̸� LR_Content_MR.jsp�� ����� 
- ���� �޴� 
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

- learning ���� ȭ�� 
<c:when test="${save_content_typ eq 'LR'}"> 
   <jsp:include page="../learning/LR_Content_MR.jsp" flush="true" /> 
</c:when>  
==============================================================================================================

- ī�� �ڵ���ü ���� ���� ó��(�������� �湮): ���� --> ���� 
==============================================================================================================

������������������� 2010.05.05(��) �۾� ������������������� 
---> 06:30 ~ 01:00  --> ������(������ �ް����� ������ ����) 

- KCISA Study
- KCISA Review & ����Ǯ�� ���� 
 1. 2���� 
1) �̷�(�ָ�): 2010. 6.12 ~ 6. 20(��/��) --> ��: 14:30 ~ 17:30, 18:30 ~ 21:30, ��: 10:00 ~ 1:00 
2) �������ǰ��(��): 6.13(��), 20(��), 27(��) --> ��: 14:00 ~ 16:00, 16:30 ~ 20:30 
 2, �������� ����ó 
1) ��������: 02)5377-144, *@*.*  
2) ������ü(�ϳ�����, ������ : (��)��������, ���¹�ȣ:448-910001-08804) 
3) ������: 495,000��(KCISA ���Թ� �������� 260,000��) 
==============================================================================================================

������������������� 2010.05.06(��) �۾� �������������������
---> 06:20 ~ 01:00  --> �߱�(����: û���� ��) 

- �Ｚ���� ������
- Framework ǥ�� �۾�(Learning Resource) 
/op/2_5/main/PM_ProductMain_MR.jsp(��ü �˾� ����) 
/op/2_5/learning/LR_Content_MR.jsp(learning ����) 
http://localhost:8080/iw-sec/op/2_5/product/ProductMain.do?method=doSearch 

 1. DB ���� 
1. /src/com/sec/dotcomop2_5/product/content/biz/LearningBiz.java ���Ͽ���  
public HashMap<Object, Object> searchLearnigContentInfo(HashMap<Object, Object> hash) throws Exception{ 
        HashMap<Object, Object> returnValue = new HashMap<Object, Object>(); 

        try { 
            logger.debug("LearningBiz.searchLearnigContentInfo"); 
        } catch(Exception e) { 
             
        } 
        return returnValue; 
}  

2. /com/sec/dotcomop2_5/product/content/biz/LearningBiz.java ���Ͽ��� 
 public HashMap<Object, Object> searchLearnigContentInfo(HashMap<Object, Object> hash) {  
LearningContentDAO cdDao = (LearningContentDAO) DAOManager.getDAO("sqlmap-config-op-product-2_5.xml" 
                                                                                 ,LearningContentDAO.class);  
listData = (List<LearningContentTO>)cdDao.searchSprdList(doMap);  //Learning Resource ����Ÿ ��ȸ  
learningimageTo = cdDao.opvMainFileInfo(doMap);  //opv �Ͻ� ���� �̹��� ���� 
} 

3. /com/sec/dotcomop2_5/product/content/dao/LearningContentDAO.java ���Ͽ���  
public List<LearningContentTO> searchSprdList(HashMap<Object, Object> hash) throws SQLException { 

List<LearningContentTO> toList = null; 
try { 
    toList = sqlMapClient.queryForList(sqlMapId + ".searchSprdLRCdlist_OP",hash); 
  
} catch(SQLException ex) { 
    throw ex; 
} 
return toList; 
} 

4. /com/sec/dotcomop2_5/product/content/sql/LearningContentSql.xml ���Ͽ��� 
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

5. /WEB-INF/jsps/op/2_5/learning/LR_Content_MR.jsp ���Ͽ��� 
<c:forEach items="${FrontTO}" var="frontTO"> 
<c:set var="seq" value="${frontTO.rel_res_seq}" />  
<c:if test="${not empty(frontTO.rel_res_title)}">   <!--// ���� //-->  
    <c:set var="title" value = "${frontTO.rel_res_title}"/> 
    <c:set var="titleRe" value = "${dotcomop:escapeHtmlString(frontTO.rel_res_title)}"/> 
</c:if> 
  
<c:if test="${not empty(frontTO.rel_res_cont)}"> 
    <c:set var="desc" value = "${frontTO.rel_res_cont}"/>  <!--// ��ȭ�� //-->  
    <c:set var="descRe" value = "${dotcomop:escapeHtmlString(frontTO.rel_res_cont)}"/> 
</c:if>  
</c:forEach>   

- ��� ���� 
<input type="hidden" name="noneSave" value="T" />   <!--// saveGubun true = �����ϰ� �̵�, false = ������ϰ� �̵�(T:���� ����) //--> 
<input type="hidden" name="copyPart" value="" />  <!--// copyPart // --> 
==============================================================================================================

- ���� 
1. ������ȣ����(�ѱ�������ȣ����) 
2. ������ȣ �ٽ�����(������) 
3. �����ȣ��(����ȣ) 
==============================================================================================================

������������������� 2010.05.07(��) �۾� �������������������
---> 06:20 ~ 02:00  --> ����̳� �۱�(20����) 

- �Ｚ���� ������
- Framework ǥ�� �۾�(Learning Resource) 
/op/2_5/learning/LR_Content_MR.jsp(learning ����) 

1. db ���� ���� 
����: sqlmap-config-op-product-2_5.xml ���� �� ã�� 
try { 
SprdMdlCdDAO cdDao = (SprdMdlCdDAO) DAOManager.getDAO("sqlmap-config-op-product-2_5.xml" 
                                                                 ,SprdMdlCdDAO.class); 
} 

Caused by: java.lang.Exception: [DAOManager] No such sqlmap config 'sqlmap-config-op-product-2_5.xml'. 
����: AwardContentSql.xml ������ ������ ibatis ������ �� ���� => Start tomcat���� �ε��� Console���� ����� �м� 

2. PVI info db ���� 
/WebContent/WEB-INF/web.xml ���Ͽ��� 
 , /WEB-INF/conf/sqlmap/sqlmap-config-op-product-pvi-2_5.xml  --> �߰� 

/WebContent/WEB-INF/conf/sqlmap/sqlmap-config-op-product-pvi-2_5.xml ���Ͽ���  
<!-- DataSource ���� --> 
<transactionManager type="JDBC"> 
<dataSource type="JNDI"> 
    <property name="DataSource" value="${jndi.datasource.admin}" /> 
</dataSource> 
</transactionManager>  

<!-- // Learning Resource  // --> 
<sqlMap resource="com/sec/dotcomop2_5/product/content/sql/LearningContentSql.xml" /> 
==============================================================================================================

- STOCKS 
��(4,070), ȭ(4,150), ��(������), ��(4,100), ��(4,030) 
==============================================================================================================

������������������� 2010.05.08(��) �۾� �������������������
---> 06:20 ~ 23:00   --> KCISA Review & ����Ǯ�� ���� ���(�������� ����Ʈ) 

- KCISA14 SE(3,4)
1. ����: SE(3,4) --> ����ȣ ����� 
2. ��ĸ��ǰ��[7ȸ]: 60��(���� 26��) ==> (�ջ� ���: 70��) 
 1) SE ���� �߸� ��(�ݼ�): �ɰ��� ���·� �ν�(������) 
==============================================================================================================

- ���ռҵ漼 �Ű�(2009�� �ͼ� ���ռҵ漼) ==> ������ 
1. (68) �ҵ������(�θ�� �������� �Է�) 
2. �ٹ�ó�� �ҵ�� �ۼ� 
(��)�ѿ츮�Ž���(206-81-17525): 1,833,333�� 
�ٸ��������(��(120-81-78460)): 6,500,000�� 
(��)��������(119-02-86096): 25,800,000��  
���¸����� 2009�� �ͼ� ���ռҵ漼 ���Աݾ��� 38,615,800�� �Դϴ�.  
����: 37,466,666�� ===> 1,149,134�� ���̰� �� 
--------------------------------------------------------------------------------------------------------------- 

- ���ռҵ漼 �Ű� ��� 
�հ�: -754,919��(���ռҵ漼: -686,290��  �ֹμ�: -68,629��)�� ȯ�� ���� 
���� ���� 2��(�ƹ���:70�� �̻��̰� �����, ��Ӵ�) 
  
[�Ű����� : D ����]  
��- ���ο��� ���Ծ��� 975,370 ��  
��- �������� ���Ծ��� 2,400,000 ��   
������ �����ǹ��� "��������ǹ���" 
==============================================================================================================

������������������� 2010.05.09(��) �۾� �������������������
---> 06:00 ~ 24:00 

- KCISA15 ����(3) 
06:00 ���(�������� ��) 
06:10 ����(����) 
07:20 �ű��ʵ��б� 
07:20 ������(2:0 ��) 
07:40 ����(0:0 ��): ����Ʈ��(�н� �� �ؼ�  Ī�� ����) 
08:20 ���� 
08:40 ������ ���� ������ ��ó�� ���� 
08:50 �п� ���� 
10:00 ����(����(3) --> ������ �����) 
13:00 ��������(����: �������� 2��) 
13:10 9�� ����(SE ���� Ǯ���� ����) 
17:50 ����  
18:40 �Ͱ� 
00:00 ��ħ 
==============================================================================================================

������������������� 2010.05.10(��) �۾� �������������������
---> 06:50 ~ 23:30 

- �Ｚ���� ������
- Framework ǥ�� �۾�(Learning Resource) 
/op/2_5/learning/LR_Content_MR.jsp(learning ����) 
1. DB ����(�ϳ��� �Լ��� ȣ��) 
2. LR_Content_MR.jsp ���� ��ũ��Ʈ ���� 
========================================================================================================= 

- script ���� 
- /op/2_5/learning/frontFunction.jsp ���Ͽ��� ���� 
objById('edit_form_cont_file_list').innerHTML = objById('ieFileAddType').innerHTML;  //---> ���� �� 
<div class="con"> 
<select id="work_due_dt" name="work_due_dt"  style="width:300px;" disabled="true"> 
</select> 
</div>   

- RequestPriority.js ���Ͽ��� ���� �߻� 
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
alert("Please Select Site!!");   //---> ���� �� 

} 
} 
==============================================================================================================

������������������� 2010.05.11(ȭ) �۾� �������������������
---> 06:10 ~ 23:30 

- �Ｚ���� ������
- Framework ǥ�� �۾�(Learning Resource) 
/op/2_5/learning/LR_Content_MR.jsp(learning ����) 
1. LR_Content_MR.jsp ���� ��ũ��Ʈ ���� 
param.op_site_cd  --> param.site_cd 
LearningContentDAO frontDao = (LearningContentDAO) DAOManager.getDAO("sqlmap-config-op-product-2_5.xml",LearningContentDAO.class); 
LearningContentDAO frontDAOPvi = (LearningContentDAO) DAOManager.getDAO("sqlmap-config-op-product-pvi-2_5.xml", LearningContentDAO.class); 
========================================================================================================= 

- CVS ����(password ����) 
Host: 192.168.37.28, Host: /home01/users/cvs --> timeage1/asdf1234 
==============================================================================================================

- OP ���� ȸ��(14:30 ~ 17:50) 
1. Framework ǥ�� �۾� 
 1) learning ��ȸ �κ� ����(��ũ��Ʈ ���� ������ ���� ����: ������) 
 2) learning ����(Save, CopySave) �κ�(�̹��� �ݿ��ϱ��� �Ϸ��� ��) 
 3) Right menu script ���̱� 
 4) Feature KeyVisual view(25�ϱ���) 
 5) Pop up(award/learning)(28�ϱ���) 
==============================================================================================================

������������������� 2010.05.12(��) �۾� �������������������
---> 05:50 ~ 01:00  --> �߱�(����: 6õ��) 

- �Ｚ���� ������
- Framework ǥ�� �۾�(Learning Resource) 
1. learning ����(Save, CopySave) --> LR_Content_MR.jsp ���� 
site_cd   --> String searchSiteCd = CommonUtil.toString(hash.get("search_site_cd")); 

/op/2.5/main/rontMainTop.jsp ���Ͽ���  ===> ���� ��� ���� 
<input type="hidden" id="noneSave" name="noneSave" value="${param.noneSave}"> 
<input type="hidden" id="saveGubun" name="saveGubun"> 
<input type="hidden" id="op_site_cd" name="op_site_cd" value="${param.op_site_cd }"> 
<input type="hidden" id="op_prd_mdl_cd" name="op_prd_mdl_cd" value="${param.op_prd_mdl_cd }"> 
<input type="hidden" id="pathgubun" name="pathgubun" value="${param.mainmidGubun }"> 
<input type="hidden" id="prd_mdl_name" name="prd_mdl_name" value="${prd_mdl_name}"> 
<input type="hidden" id="copyPart" name="copyPart" value="${copyPart}" /> 
<input type="hidden" id="mainCopyPart" name="mainCopyPart"/> 
========================================================================================================= 

/com/sec/dotcomop2_5/product/content/biz/LearningBiz.java ���Ͽ��� 
public boolean saveLearningContentInfo(HashMap<Object, Object> hash) throws Exception{ 
try { 
frontDao.doDeleteLearning(map);  // OP ���� ��ǰ ���� ���ҽ� ���� ����  
this.learningMainImgSave(formMap);  // ���� �̹��� ���� 
  
if (idxs != null) {   //Learning Seq�� �����ϸ� 
frontDao.doAddObjDeleteLearning(map); // ���� �ϱ� ���� �߰��Ǵ� object �� �������� ������ �Ǿ��ٸ� ���� 
  
selectFileTo = frontDao.getWcmsFileInfo(file_seq);  // WCMS ���� ���� ��ȸ 

===> // �̹��� ������ WCMS ���� ������ ��츸 OP �� �̹��� ���� �� DB data ���縦 �Ѵ�  
if (selectFileTo != null) {  // WCMS ������ �����ϸ� 
 // OP ���� �������� ���� ī�� 
FileUtil.onlyCopyFile(fileTo.getFile_path() + "/" + fileTo.getFile_name(), file_path + "/" + fileTo.getFile_name()); 

// OP File Path �� ����     
fileTo.setFile_path(file_path); 
mode = frontDao.doInsertFileInfo(fileTo);  // OP ���� 
} 

} else if ((!CommonUtil.toString(hash.get("search_site_cd")).equals("OP")  opExistFl.equals("N"))) { //OP�� �ƴ� �� 
returnValue = this.doLearningSaveOther(hash);  
} 
} 
}  
==============================================================================================================

/com/sec/dotcomop2_5/product/content/biz/LearningBiz.java ���Ͽ��� 
public boolean saveLearningContentInfo(HashMap<Object, Object> hash) throws Exception{ 
try { 
frontDao.doDeleteLearning(map);  // OP ���� ��ǰ ���� ���ҽ� ���� ����  
this.learningMainImgSave(formMap);  // ���� �̹��� ���� 
  
if (idxs != null) {   //Learning Seq�� �����ϸ� 
frontDao.doAddObjDeleteLearning(map); // ���� �ϱ� ���� �߰��Ǵ� object �� �������� ������ �Ǿ��ٸ� ���� 
  
selectFileTo = frontDao.getWcmsFileInfo(file_seq);  // WCMS ���� ���� ��ȸ 

===> // �̹��� ������ WCMS ���� ������ ��츸 OP �� �̹��� ���� �� DB data ���縦 �Ѵ�  
if (selectFileTo != null) {  // WCMS ������ �����ϸ� 
 // OP ���� �������� ���� ī�� 
FileUtil.onlyCopyFile(fileTo.getFile_path() + "/" + fileTo.getFile_name(), file_path + "/" + fileTo.getFile_name()); 

// OP File Path �� ����     
fileTo.setFile_path(file_path); 
mode = frontDao.doInsertFileInfo(fileTo);  // OP ���� 
} 

} else if ((!CommonUtil.toString(hash.get("search_site_cd")).equals("OP")  opExistFl.equals("N"))) { //OP�� �ƴ� �� 
returnValue = this.doLearningSaveOther(hash);  
} 
} 
}  
==============================================================================================================

������������������� 2010.05.13(��) �۾� �������������������
---> 06:10 ~ 01:00  --> �߽�((��)����Ƽ ������ ����), �߱�(����: 6õ��) 

- �Ｚ���� ������
- Framework ǥ�� �۾�(Learning Resource) 
1. learning ����(Save, CopySave) --> LR_Content_MR.jsp ���� 
site_cd --> String searchSiteCd = CommonUtil.toString(hash.get("search_site_cd")); 
if (frm.opExistFl.value != "N"){ // OP�� ���� ���� �� ��� 
==============================================================================================================

- FileInfoTO ���� 
import com.sec.dotcomop2_5.product.content.to.FileInfoTO; 
--> import com.sec.dotcomop2_5.common.to.FileInfoTO;  
- ����ȯ(.java����) 
fileTo.setFile_seq(Integer.parseInt(file_seq));   //String --> int 
learning_main_img_file_seq = "" + fileInfoTo.getFile_seq();   //int --> String 

- FileInfoTO ���� 
����: 1. FileInfTO.java ������ eclipse���� ��� ����,  2. FileInfTO.class ���ϴٽ� �ۼ�, 3. FileInfoTO ���� �̸� ��Ȯ�� Ȯ�� 
��ġ: FileInfTO.java ���� ���� �� �ٽ� ��� 
java.lang.NoClassDefFoundError: com/sec/dotcomop2_5/common/to/fileInfoTO  
(wrong name: com/sec/dotcomop2_5/common/to/FileInfoTO)  
==============================================================================================================

������������������� 2010.05.14(��) �۾� �������������������
---> 06:20 ~ 20:00  --> �Ｚ���� ������ ö��(ġ���� ��� �������) 

- �Ｚ���� ������
- Framework ǥ�� �۾�(Learning Resource) 
1. learning ����(Save, CopySave) --> LR_Content_MR.jsp ���� 
- product.main.to.SprdMdlMdiInfTO.java ���Ͽ� ���� �Ǿ� ���� 
private String File_src_typ_cd; 
private String Prd_mdl_cd; 
private int prd_mdl_mdi_file; 
private String Prd_mdi_typ_cd; 
==============================================================================================================

- eclipse���� Sychronize���� ����Ÿ �� �޾� �ö� 
����: Incomming Mode, Outgoing Mode���� ����Ÿ �� �޾ƿ� 
��ġ: Sychronize���� Remove Current Sychronization�Ͽ� �����ϰ� �ٽ� �޾ƿ� 
==============================================================================================================

11:30 �ּ��� ����� TO.java ������ ���� ����(��ġ ��û) 
13:00 �ְ����� PM ������ ��(�ְ���� �� ���Ѵٰ� ��) 
15:00 �̱�� ���忡�� ��ȭ�ؼ� ö�� �뺸 
16:30 Ŀ�Ǽ󿡼� ���� ����(�����ּ�, �ֿ켮 ������ �ּ��� ���� �� ��) 
18:00 �Ͱ� 
20:00 ��ħ 
==============================================================================================================

- STOCKS 
��(4,045), ȭ(4,300), ��(4,300), ��(4,290), ��(4,265) 
==============================================================================================================

������������������� 2010.05.15(��) �۾� �������������������
---> 05:30 ~ 01:00 

- KCISA16 SE(5,6)
1. ����: SE(5,6) --> ����ȣ ����� 
2. ��ĸ��ǰ��[8ȸ]: 60��(��� ��ǥ ����) ==> (�ջ� ���: 72��) 
 1) �׽�Ʈ ����, �ٸ� ������ �������(����) 
==============================================================================================================

- ������Ȯ�� �ۼ�, ��� 
1. ������Ʈ��: �Ｚ���� PHASE2.5 ������ ���� ������Ʈ 
2. (��)����Ƽ �̱��(H)010-5527-4361), T) 02-868-0597, F) 02-868-0595, ����ڹ�ȣ: 113-86-28050 
3. ���� �ּ�: ����� ��õ�� ���굿 327-27 �̾ؾ��帲Ÿ�� 8�� 305ȣ  
���� �ּ�: ���� ���α� ���ε� 235 �ѽ�ITŸ�� 1206ȣ 
==============================================================================================================

- ���� �ҵ漼 �Ű�, ��Ʈ�� ����(���� ī��) 
==============================================================================================================

- ���� ���� 
�����ͺ��̽��� - ������ ���輭�� Bible, 7�� ������ ������, ������.����� ����(ž����) 
������ ���� ���� Ű���� �ӵ���,���μ� ����(���ȴ�) 
������ȣ�а���, ������ ����(�������ǻ�) 
==============================================================================================================

������������������� 2010.05.16(��) �۾� �������������������
---> 06:30 ~ 24:00 

- KCISA17 ����(4,5)
06:30 ���(�������� ��) 
06:40 ����(����) 
07:20 �ű��ʵ��б� 
07:30 ����(1:0 ��) 
08:50 ���� 
09:10 ������ ���� ������ ��ó�� ���� 
09:20 �п� ���� 
10:00 ����(����(4,5) --> ������ �����) 
13:00 ����(�������� 2��) 
17:20 ���� 
18:00 �Ͱ� 
18:10 ���� ������ ���� ���ΰ� �ο�(���� �ڸ� ���ұ�) 
00:00 ��ħ 
==============================================================================================================

������������������� 2010.05.17(��) �۾� �������������������
---> 06:00 ~ 01:00  

- KCISA Study
- SE ����, ���� ���� 
==============================================================================================================

- ���ռҵ漼 �Ű�(2009�� �ͼ� ���ռҵ漼) ====> �Ϸ� 
1. (68) �ҵ������(�θ�� �������� �Է�) 
2. �ٹ�ó�� �ҵ�� �ۼ�(����ҵ�) 
(��)�ѿ츮�Ž���(206-81-17525:  02-2205-0354) --> �ҵ�: 650����, �ҵ漼: 195,000, �ֹμ�: 19,500  ===> 214,500�� 
�ٸ��������(��(120-81-78460: 02-825-4838) ---> �ҵ�: 5,025,800��,  �ֹμ�: 150,770��  ===> 165,840�� 
(��)��������(119-02-86096: 02-761-0659) ---> �ҵ�: 2709 0000��,  �ҵ漼: 812,700��, �ֹμ�: 81,270��  ===> 893,970�� 
���� ---> �ҵ�: 38,615,800��,  �ҵ漼: 115,847��, �ֹμ�: 115,847��  ===> 1,274,317��  
===> 1) ����ҵ� ����ڷ� Ȩ�ؽ� �������� ������ �� �ҵ�(38,615,800��)�� �Է¸� �ڵ����� �ҷ� ���Ⱑ ������  
2) ���ۼ�����(02-840-9200)���� ��ȭ�ؼ� ó����  
3) Ȩ�ؽ����� ���� ���� ���� 
 - ���¸����� 2009�� �ͼ� ���ռҵ漼 ���Աݾ��� 38,615,800�� �Դϴ�.  
 - ���ο��� ���Ծ��� 975,370��, �������� ���Ծ��� 2,400,000�� 
 - ������ �����ǹ��� "��������ǹ���"([�Ű����� : D ����]) 
-------------------------------------------------------------------------------------------------------------------------------

- ���ռҵ漼 �Ű� ��� 
�հ�: -61,998��(���ռҵ漼: -56,360��  �ֹμ�: -5,638��)�� ȯ�� ���� 
���� ���� 2��(�ƹ���:70�� �̻��̰� �����, ��Ӵ�) 
==============================================================================================================

- SW����� �Ű� ���� 
10:20 ���(���� ��) 
11:00 (��)����Ƽ �湮(����� ��õ�� ���굿 327-27 �̾ؾ��帲Ÿ��) 
11:20 SW����� ��¼� ���� ó�� 
11:30 ���� 
11:59 �Ͱ� 
- SW����� �Ű� ���� ����(���) 
�ּ�: ����� ������ �Ｚ�� 9-1 �뿵��ȣ�������� ���� 5�� SW����� �Ű� ���� ����� �� 
==============================================================================================================

- ��й�ȣ ����(��� ����Ʈ) 
ssj**88*  --> sspe**88*, ssj**52**(PKI) --> sspe**52**(PKI) 
==============================================================================================================

������������������� 2010.05.18(ȭ) �۾� �������������������
---> 06:20 ~ 22:00   --> �ۺ� ������ 

- KCISA Study
- SE ����, ���� ���� 
==============================================================================================================

- �Ｚ ��Ʈ�� ���� ����̹� ���(setup.exe ���� ���� ��ġ �����Ͽ� ��ġ) 
- TAMA_HouseK_Book ����(��-3. �ڻ����.xls ���� ����) 
==============================================================================================================

������������������� 2010.05.19(��) �۾� ������������������
---> 07:20 ~ 01:00  --> �ۺ� ������ 

- KCISA Study
- SE ����, DB ���� 
==============================================================================================================

- ������ �ڻ� 
���� ȸ��: 2007�� 1�� ~ 2009�� 6�� ==> 45���� 
==============================================================================================================

������������������� 2010.05.20(��) �۾� �������������������
---> 07:20 ~ 01:00  --> �ۺ� ������, ���� ���� 

- KCISA Study
- �ý��۱��� ����, ������� �� ���� ���� 
==============================================================================================================

- ���� ����
07:30 �ۺ������� 
12:00 �Ͱ� 
15:00 ��������(���Ǳ� ����) 
15:30 ���� ��õ��(4�� �ⱸ): �Ӹ�(��� ����), �¿���, ���� 
19:00 ��뺴�� ���Ƚ�(��������, âȯ������  ����) 
19:10 ���� ����(���Ǳ� 150����, ���� 10���� ==> �� 200����, ���ĳ� ���Ǳ�(10����) ����) 
20:00 ���� �Ĺ�� ��(�ϳ�, ��ȯ, �ο�) 
23:00 ����� ����, �蹮�� ����(���Ǳ� 5����)  
01:00 ���� 88 �����ϰ� ���� 
02:30 ����(������ ���� ȸ��� ó��) 
03:00 ��ħ 
==============================================================================================================

- ������ ����(�뱸 ��� ���� ����) 
1. ���Ǳ�: 110����(������������ �۱��ؼ� ã�� ��), �ĳ� 10����(�볳) 
==============================================================================================================

- 2010 �Ż�����ȸ ȸ�� �۱�(3~6��: 8���� �۱�) 
��������: 110-289-623439, ������: �̽¿�(*)       
==============================================================================================================

- STOCKS 
��(4,150), ȭ(4,080), ��(4,280), ��(,200), ��(������) 
==============================================================================================================

������������������� 2010.05.21(��) �۾� �������������������
---> 07:20 ~ 01:00  --> ����ź���� 

- ���� ����2
06:30 ��� 
07:30 ����(���뺴�� ���Ƚ�) 
08:30 ���(�¿����� Ž: �¿�, ����, ��ȯ, ��������, âȯ����, �ϳ�, ��ȯ, ���, �º�) 
09:00 �뱸 ������(���� �װŸ� ��ó, ���� ��ġ�ҿ�) 
09:30 ȭ�� ���� 
11:00 ȭ�� ����(��ȯ, ���� �Ͱ�) 
11:20 ���� ���(��ӵ���) 
13:10 ���� ���� �߸�ȸ�� ����(��� ���׽� ���� ������ �߸�) 
14:00 ���� �ҸӴ� �� ���� 
14:20 �߽�(���ö�) 
14:30 ������(�̸� Ʋ���� �� �������� ������ ��) 
14:40 ���� 
15:00 ���� 
16:00 ���� �׵�����(ȸ) 
17:00 ���� 
17:30 �Ͱ�(������) 
==============================================================================================================

- ���� 90 ����ȸ �Ȱ� 
1. ����ȸ�� �ų� 3��, 9�� 2�� �ϱ�� ��� ��(3��, 9���� ���� ����) 
2. 2010�� 9���� 8������ ����� ���� 
==============================================================================================================

������������������� 2010.05.22(��) �۾� �������������������
---> 07:20 ~ 01:00 

- ���� ����3
06:30 ��� 
07:30 ����  
09:00 PC��(��ӹ��� ����) 
09:40 ���� 
10:00 ���� �� ������(����ȭ ����� ���� �ɾ���): ö�� ������, ���� �� ���� 
13:00 �߽� 
14:30 ������ ���(���� ������ ��) 
14:40 101�� ���� 
15:00 ���� ����͹̳� ���� 
15:30 ���� ��� 
20:30 �����͹̳� ���� 
21:00 �Ͱ�(������) 
22:00 ��ħ 
==============================================================================================================

������������������� 2010.05.23(��) �۾� �������������������
---> 07:20 ~ 01:00 

- KCISA Study
07:30 ��� 
08:88 ����  
09:30 �������� ���� 
09:50 �Ұ�6 ������ �뿩(����Ʈ) 
13:00 �߽�(�������� 2��) 
17:30 ����(���� �� ��) 
18:00 �Ͱ�(������) 
20:00 ����90����� ȸ�� ����(�۾� ��) 
00:00 ��ħ 
==============================================================================================================

- ���¿� �۱� 
�ϳ�����: 581 910048 19907 ������: ���¿�  --> 60���� �۱� 
��ӹ��� �͹̳� ARS ����:1588-6900 
==============================================================================================================

������������������� 2010.05.24(��) �۾� �������������������
---> 07:00 ~ 22:00  --> �ۺ� ������ 

- KCISA Study
- �ý��۱��� ���� 
==============================================================================================================

- �ӵ��� ����1(Day 01 ~ 03) 
==============================================================================================================

������������������� 2010.05.25(ȭ) �۾� �������������������
---> 07:00 ~ 01:00  --> �ۺ� ������ 

- KCISA Study
- UML ����(UML ���ؿ� ����: �ѱ� ����Ʈ���� ������Ʈ ���ҽþ�) 
==============================================================================================================

- �������� ���� ���� �� ��(2010.09.19(�� �߼�) 
������, ����ī��, �ӿ�(���� ��û) 
- ���������� ���� �� �� 
����(��ġ, ����ä����) 
==============================================================================================================

- TAMA_HouseK_Book ����(TAMA ���� ����� ����) 
BOOK_STATE(cboBook_State): å ����(01: ����, 02:�뿩, 03:����, 04:�н�, 05:����, 99:��Ÿ) 
BOOK_STATE_DETAIL(txtBook_state_detail): å ���� �� ���� 
==============================================================================================================

������������������� 2010.05.26(��) �۾� �������������������
---> 07:00 ~ 01:00  --> �ۺ� ������ 

- KCISA Study
- UML ����(UML ���ؿ� ����: �ѱ� ����Ʈ���� ������Ʈ ���ҽþ�) 
==============================================================================================================

- �����ε� ���� ���� 
��ĸ��ǰ��(8ȸ) 2�� ���� ==> �������� ����ȣ ����(*@*.*) 
==============================================================================================================

- �� ���� ��ü 
������ �湮�Ͽ� ������ ���� ��ġ(���� �����: 9õ��) 
==============================================================================================================

- TAMA_HouseK_Book ����(TAMA ���� ����� ����) 
BOOK_STATE(cboBook_State): å ����(01: ����, 02:�뿩, 03:����, 04:�н�, 05:����, 99:��Ÿ) 
BOOK_STATE_DETAIL(txtBook_state_detail): å ���� �� ����  
BOOK_PRICE: ����  
BOOK_REAL_PRICE: ���� ����  
Const SS1_BOOK_PRICE = 8        '<Name> ���� 
Const SS1_BOOK_REAL_PRICE = 9   '<Name> ���� ���� 
Const SS1_BOOK_MARGIN = 10      '<Name> ������ 
==============================================================================================================

������������������� 2010.05.27(��) �۾� �������������������
---> 08:00 ~ 00:10  --> �ۺ� ������ 

- KCISA Study
- �׽�Ʈ ����(�������� �˾ƾ��� �׽�Ʈ �׽��� �ǹ�) 
==============================================================================================================

- TAMA_HouseK_Book ����(TAMA ���� ����� ����) 
1. ���, 2, ��ȸ, 3, ��� �Ϸ� 
-------------------------------------------------------------------------------------------------------------------------- 

- ���� �ڸ��� �Լ�(split)  
Dim strLNnameALL, strLNname_TimeALL, strLNname_TimeALL2 
Dim i As Integer, j As Integer 

strNewAlert = "�� �����ڸ� ���� ������ 2.5 ���α׷���(�ֹ��� ^ ����)"  
strLNname_TimeALL = Split(strNewAlert, "(")      '�迭 �и�(����, ������ �迭) 
      
For i = 0 To UBound(strLNname_TimeALL) - 1 
txtBook_nm.Text = strLNname_TimeALL(0)  '���� 
i = i + 1 
Next 

strLNname_TimeALL2 = Split(strLNname_TimeALL(1), "^")      '�迭 �и�(����, ������ �迭) 
For j = 0 To UBound(strLNname_TimeALL2) - 1 
txtBook_author.Text = strLNname_TimeALL2(0)  '���� 
txtPublication.Text = strLNname_TimeALL2(1)  '���ǻ� 
txtPublication.Text = Replace(txtPublication.Text, ")", "")  '���ǻ�(")" ����) 
j = j + 1 
Next 
==============================================================================================================

������������������� 2010.05.28(��) �۾� �������������������
---> 08:40 ~ 01:00 

- KCISA Study
- TAMA_HouseK_Book ����(TAMA ���� ����� ����) 
==============================================================================================================

- StarUML ���� 
http://staruml.sourceforge.net/ko/documentations.php 
http://staruml.sourceforge.net/docs/user-guide(ko)/toc.html 
==============================================================================================================

- STOCKS 
��(4,130), ȭ(4,060), ��(4,055), ��(4,080), ��(4,100) 
==============================================================================================================

������������������� 2010.05.29(��) �۾� �������������������
---> 07:20 ~ 01:00   --> �������� ���� 

- KCISA Study
07:20 ��� 
08:000 ���� 
09:00 �������� ���� 
09:10 �Ұ� ���� 
11:30 ���� ����(������Ʈ ������ ������ �ڰ� �Դٰ� ��) 
11:40 �Ұ� ������ ���� ����(���� Tape1 �뿩) 
12:40 �߽�(Į����: ���� ��): ���� 
14:00 �Ұ� ������ ���� ���� 
16:00 �Ұ� ������ ���� ����(���� Tape2 �뿩) 
16:10 ����(4321��) 
17:10 �б����� �̼�APT ����� ���迡�� ���� ���� 
19:00 ���� �Ұ� ����(8ȸ ��) 76�� ����(���⿡�� ��) 
19:30 ����(���ٱ� ���屹: ������ ��) 
20:00 �Ұ� ������ ���� ����(���� Tape2) 
21:30 ���� 
22:30 �Ͱ� 
22:30 ���� ���� �ȵǾ ��� �� 
00:30 ��ħ 
==============================================================================================================

������������������� 2010.05.30(��) �۾� �������������������
---> 05:40  ~ 03:00 

- KCISA Study
05:40 ���(�������� ��)  
05:20 �ű��ʵ��б� 
07:40 ����(4:1 ��): ���鿡�� �������� �� ���͸�(������ ����� ������) 
08:00 ����(0:0 ��) 
08:10 ����(3:1 ��) 
09:30 ����(4:1 ��) 
10:40 ����(����� ���� ���� ���� ��� ���) 
11:30 �п� ���� 
11:40 �߽�(�������: ���� ��): ���� 
13:00 �Ұ� ������ ���� ����(���� Tape4 �뿩) 
    -����Ʈ���� ���� 8��(Ian Sommerville ^ �Ǿ����) �߰�å ���������� �� 5õ���� ���� 
19:00 ���� �Ұ� ����(2ȸ ��) PMP 56�� ����  
19:10 ���� 
19:30 ������(�Ӹ� ��) 
21:00 ������(�ѱ�: ����罺(0:1 ��) �����̰� �������� ����) 
00:00 �籸��(���� ��ġ: �籸�� ��) 
02:00 ���꿪 �Ӹ������� �¿��� �� 
03:00 �Ͱ� 
03:30 ��ħ 
==============================================================================================================

- ���� ����(���� ��������� �����) 
1. �������� �ش� ���� ���� �ɴ´�(����: 2�� ����(���, �Ͼ�), LCD: 3�� ����(����, ���, �Ͼ�) 
2. ���� �������� �ְ� ����� ���� 
2. ���������� AV�� �����ϸ� ȭ���� ���� 
==============================================================================================================

������������������� 2010.05.31(��) �۾� �������������������
---> 09:30 ~ 01:00 

- KCISA Study
- TAMA_HouseK_Book ����(TAMA ���� ����� ����) 
 ======================================================================================================== 
 
- TAMA_HouseK_Book ����(TAMA ���� ����� ����) 
1. OR ���� ���(1=2 OR) 
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

- KCISA Review & ����Ǯ�� ���� 3���� ����  
1) �̷�(�ָ�): 2010. 6. 19 ~ 6. 20(��), 7. 3(��) --> ��: 9:30 ~ 12:30, 13:30 ~ 16:30 
2) �������ǰ��(��): 6. 27(��), 7. 4(��), 7. 11(��) --> ��: 9:00 ~ 11:00, 12:00 ~ 16:00 
============================================================================================================== 
�����������������������������������������������������������
+--------------------------------------------------------// End //----------------------------------------------------------+ 
����������������������������������������������������������� 