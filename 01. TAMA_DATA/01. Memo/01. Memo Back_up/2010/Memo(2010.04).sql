

�����������������������������������������������������������
+---------------------------------------------// Memo(2010.04) //----------------------------------------------------------+
�����������������������������������������������������������


�������������������  2010.04.01(��) �۾� �����������������
---> 06:00 ~ 01:00  --> ������(����: ���� ��, ���� 2��: �㿡 ���� �� ��) 

- �Ｚ���� ������
- JSP FUNCTION ���� 
1. �ֿ���� 
Landing Page 
Feature Page 
Feature Html Page 
2. ����: 03/31(��) ~ 04/07(��) 

[/FeatureScript.jsp] ======> [TEST]<br> 
alert("[/feature_main.jsp] ======> [selectContentMenu()]:[url]"+ url); 
<jsp:include page="../../2_5/common/FeatureScript.jsp" flush="true"/><!--// JSP FUNCTION ���� include(���¸�_�߰�) --> 
-------------------------------------------------------------------------------------------------------- 

�� features �ҽ� �м� 
1. /op/2.5/main/frontMain.jsp ���Ͽ��� 
 ���� �޴��ٿ��� features �̹��� Ŭ�� ==> /iw-sec/2.5/features/feature_main.do 

2. /op/2.5/struts-config-features.xml ���Ͽ��� 
<action path="/2.5/features/feature_main" scope="request"  
parameter="method" type="com.sec.dotcomop1_6.features.front.action.FeatureFrontAction" > 
<forward name="success" path="/WEB-INF/jsps/op/2.5/features/feature_main.jsp" /> 
</action> 
  
3. /op/2.5/features/feature_main.jsp ���Ͽ���  
<jsp:include page="frontFeatures.jsp" flush="true" /> 
<!-- footer edit box start --> <jsp:include page="frontFunction.jsp"  flush="true" /><!-- footer edit box end --> 
  
4. /op/2.5/features/frontFeatures.jsp ���Ͽ���  
 1) ��ϵǴ� Style(image, title) ���� Display 

5. /op/2.5/features/frontFunction.jsp ���Ͽ��� 
 1) Basic Info ���� Display 
========================================================================================================= 
  
�� feature_html �ҽ� �м� 
1. /op/2.5/main/frontMain.jsp ���Ͽ��� 
 ���� �޴��ٿ��� features �̹��� Ŭ�� ==> /iw-sec/2.5/features/feature_html.do 

2. /op/2.5/struts-config-features.xml ���Ͽ��� 
<action path="/2.5/features/feature_html" scope="request"  
parameter="method" type="com.sec.dotcomop1_6.features.front.action.FeatureFrontHtmlAction" > 
<forward name="success" path="/WEB-INF/jsps/op/2.5/features/feature_html.jsp" /> 
</action>  
  
3. /op/2.5/features/feature_html.jsp ���Ͽ���  
<jsp:include page="frontHTML.jsp" flush="true" /> 

4./op/2.5/features/frontHTML.jsp ���Ͽ��� 
 1) ��ϵǴ� Style(image, title) ���� Display 

5. /op/2.5/features/frontFunction.jsp ���Ͽ��� 
 1) Basic Info ���� Display 
==============================================================================================================

 - OP 1��(UK) ���� �׽�Ʈ 
1. WCMS ADMIN ����Ʈ �α���, URL: http://210.118.57.80/iw-sec/ektzja2009.do, am_lom/asdf1234    
2. OP ���߼��� �׽�Ʈ URL ȣ��, URL: http://210.118.57.80/iw-sec/1.6/op_mainDoc.do 
3. Online Preview ȭ�� ȣ�� 
 1) ����ȭ�� -> ���ⱹ�� ���� : UK �̿� 
-> system ���� : WCMS 
-> Online Preview ��ư Ŭ�� 
-> ȭ�� ��� �׽�Ʈ �� : ÷������ ���� 
 2) �ű�ȭ�� 
-> ���ⱹ�� ���� : UK 
-> system ���� : WCMS 
-> Online Preview ��ư Ŭ�� 
---------------------------------------------------------------------------------------------------------------------------------

1. OP BUG LIST  
 ȭ��  ���  �󼼳���   Ȯ����   
 feature  ���� ��ư Ŭ��  Image Pool POPUP �˾�â���� System ���� ��ư WCMS���� PVI�� �����ϸ� ��ũ��Ʈ ������ ��  ���¸� 
 feature  select �̹��� ��ư Ŭ��  Image Preview Contents Pool���� select �̹��� ���ý� ��ũ��Ʈ ������ ��  ���¸� 
 feature  �̹��� ��ư Ŭ��  Gallery Popup Main���� �̹��� ��ȸ �� �̹��� ���� Ŭ���� �ϸ� ��ũ��Ʈ ������ �߻�  ���¸� 
 specifications  �̹��� ��ư Ŭ��  Online Preview Image Pool���� �̹��� ��ȸ �� �̹��� ���� Ŭ���� �ϸ� ��ũ��Ʈ ������ �߻�  ���¸�  
==============================================================================================================

- �ٸ��۾� ����(11�� 63ȸ) 
==============================================================================================================

������������������� 2010.04.02(��) �۾� ������������������� 
---> 06:40 ~ 01:00 

- �Ｚ���� ������
 - OP BUG LIST  
 ȭ��  ���  �󼼳���   Ȯ����   
 feature  ���� ��ư Ŭ��  Image Pool POPUP �˾�â���� System ���� ��ư WCMS���� PVI�� �����ϸ� ��ũ��Ʈ ������ ��  ���¸� 
 award  Insert Text ����â ����  Add Group ==> Style(Image + Title) ���� ==> Insert Text ����â���� �ѱ��� �ۼ��ϸ� ���� ���κ��� �̼��ϰ� ���� ����  ���¸� 
 learning resource  Insert Text ����â ����  Insert Text ����â�� Ŭ���� �ϸ� ���ڼ� �׵θ��� ������  ���¸� 
==============================================================================================================

1. VMware 6.5 ��ġ 
2. IE Tester 0.2.3 ���׷��̵� ���(http://www.my-debugbar.com/wiki/IETester/HomePage)  
3. IE 8.0�� ȣȯ�� ���� 
���״�� �� ����Ʈ�� ȣȯ�ؼ� ���� ��� 
�� ����Ʈ�� �����ڰ� IE 8.0 ������ ������� ���� Ȩ��������� IE 8.0���� �� ����Ʈ�� �湮�ϰ� �Ǹ� ������ ������  
�߰� �������� ������ ���� ���� �ֽ��ϴ�. �׷��� ȣȯ�� ���⸦ ������ �Ǹ� �� �����ڰ� ó���� ������� ���� IE ü 
��� �ڵ� ȣȯ�Ǿ� ������ ���� �ʰ� �������� �� �� �ְ� �˴ϴ�. 
���� �۰� ���� �������� ����°��� �����־� �ε� �ӵ� ���� ���Ǵ� ���� �� �� �ֽ��ϴ�. 
1. ��ġ 
1) IE(���콺 ������ Ŭ��) --> ȣȯ�� ���� ����(V): üũ 
2) ���� --> ȣȯ�� ���� ����(B) 
==============================================================================================================

- �ڹ� ��ũ��Ʈ ����� 
1. /op/2.5/awards/frontDDMain.jsp ���Ͽ���  
<script language="javascript"> 
//�θ�â�� ã�� �� 
parent.document.getElementById('inner_test_1').innerHTML  
= "<[FeatureScript.jsp] ===> [buildContent()][img_src]"+ img_src +"[t_2]"+ t_2"; 
//���� innerHTML 
document.getElementById('inner_test_1').innerHTML = "[/FeatureScript.jsp] ===> [buildContent()][test]>"; 
</script> 

<div id="inner_test_1"></div> 
==============================================================================================================

- STOCKS 
��(3,520), ȭ(3,465), ��(3,450), ��(3,380), ��(3,405) 
==============================================================================================================

������������������� 2010.04.03(��) �۾� �������������������
---> 06:40 ~ 00:00 

- KCISA5 DB(1),IT(1) 
1. ����: DB(1) --> ������ ������), IT(1) --> ����ȣ ����� 
2. ��ĸ��ǰ��[2ȸ]: 64��(16��) ==> (�ջ� ���: 68��) 
==============================================================================================================

- ������ ���� ���� ��� �� ���� ����(����ȣ �����) 
1. ���� �� ������� 
 1) ����(���� + �ؼ���), S/W ����밡, �����ټ�, ������ 
 2) PM+P ����4�� 
2. SE 
 1) ������ 7�� ���輭, SW����(8��)-��հ������ǻ�(����ö ����) 
 2) UML ���ؿ� ���� - �ѱ�����Ʈ����������Ʈ���ҽþ�(����ö ����) 
3. DB 
 1) ������ 7�� ���輭, �����ͺ��̽� �ý���(�̼�ȣ)   
4. �ý��� ���� �� ���� 
 1) SIS(www.sis.or.kr) 
==============================================================================================================

������������������� 2010.04.04(��) �۾� �������������������
---> 06:00 ~ 00:00 

- KCISA6 IT(2,3)
06:30 ���(�������� ��) 
07:10 �ű��ʵ��б� 
07:30 ������(3:1 ��) 
08:30 ����(3:2 ��) 
09:30 ���� 
09:40 ������ �켺 5�� APT ��ó�� ���� 
09:50 �п� ����(���� �� ��� ��: ����Ʈ���� ���� ����, 2ȸ ��ĸ��ǰ�� ���� ���뿡�� ��) 
10:00 ����(IT(2, 3) --> ����ȣ �����) 
13:20 �߽�(�������: ������ ��) 
16:50 ���� ����  
17:40 �Ͱ�  
00:00 ��ħ 
==============================================================================================================

- �ٸ��۾� ����(11�� 66ȸ ===> 11���� ÷������ �ø�) 
==============================================================================================================

������������������� 2010.04.05(��) �۾� �������������������
---> 06:40 ~ 01:00 

- �Ｚ���� ������
- JSP FUNCTION ���� 
1. Feature Page 
alert("[/FeatureScript.jsp] ======> [buildContent()]:[img_url]"+ img_url); 
==============================================================================================================

- OP 1��(UK) ���� ���� ���� 
/op/2.5/main/frontMain.jsp ���Ͽ��� 
1. Short Description �ټ� ����(3�� �̻� �� �Է��ϰ� ����) 
function LineLF_Check(){  //Short Description �ټ� üũ �Լ�(���¸�_�߰�) 
if(maintextObj){ 
            var tx = maingetTxtObject(maintextObj); 
            var str = tx.value; 
            var totLineCnt = 0; 
             
            LineCnt = str.split('\n').length;  //�� ��  
             
            if (LineCnt > 3) { 
                alert("Short Description Input can't beyond 3 lines."); 
                event.returnValue=false; 
             } 
        }   
} 

/** ������ object �� textarea ��ü ��ȯ ==> div ����Ÿ�� ��(value)�� �޾� ���� �ϴ� �Լ�(input textó�� ó��) 
* obj : ���� object 
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

- ������ �߱�(i-pin) 
�߱ޱ��: �ѱ��ſ������� 
tamario/ssp***8*1@ 
==============================================================================================================

- �ٸ��۾� ����(12�� 67ȸ) 
==============================================================================================================

������������������� 2010.04.06(ȭ) �۾� �������������������
---> 06:30 ~ 01:00  --> UK Launch  

- �Ｚ���� ������
- JSP FUNCTION ���� 
1. Landing Page 
/op/2.5/main/flagshipMain.jsp, flagshipLanding.jsp 
2. Feature Page 
/op/2.5/features/feature_main.jsp, frontFeatures.jsp, frontFunction.jsp, layerMenu.jsp, contentsSearch.jsp 
, imagePopupList.jsp, imagePopupSearch.jsp 
3. Feature Html Page 
/op/2.5/features/feature_html.jsp, frontHTML.jsp, frontFeatures_sam.jsp 
==============================================================================================================

�� Key Visual Image(features) �˾� �ҽ� �м� 
1. /op/2.5/main/frontMain.jsp ���Ͽ���  
function keyvisual_popup(){ 
	if(objById("op_count").value != "0"){   // ���� ���� �� key_vi�� gallery �˾� ���� ���� ���� ==> key visual �˾� ȣ�� 
	var url="/iw-sec/2.5/main/keyviPopupMain.do?"; 
	} 
} 

<a href="javascript:keyvisual_popup();" class="btn_visual_img"> 
<img src="/iw-sec/common/images/op/consumer/detail/btn_visual_image.gif" alt="Visual Image" /></a> 
<!--// Key Visual Image �̹��� Ŭ�� //--> 

2. /op/2.5/struts-config-main.xml ���Ͽ��� 
<action path="/2.5/main/keyviPopupMain" type="com.sec.dotcomop1_6.main.front.action.KeyViPopupMainAction"> 
<forward name="success" path="/WEB-INF/jsps/op/2.5/main/keyviPopupMain.jsp" /> 
</action> 

3. /op/2.5/main/keyviPopupMain.jsp ���Ͽ���(�˾�) 
 1) Gallery Popup Main Display 
==============================================================================================================

�� Visual Image(features) �˾� �ҽ� �м� 
1. /op/2.5/main/frontMain.jsp ���Ͽ���  
function galleryPopup(){   //==> Gallery �˾� ȣ�� 
        if(objById("op_count").value != "0"){   // ���� ���� �� key_vi�� gallery �˾� ���� ���� ���� 
var url="/iw-sec/2.5/gallery/galleryPopupMain.do?"; 
} 
} 

<a href="javascript:galleryPopup();" class="btn_gallery"> 
<img src="/iw-sec/common/images/op/consumer/detail/btn_gallery.gif" alt="Visual Image" /></a> 
<!--// Visual Image �̹��� Ŭ�� //--> 

2. /op/2.5/struts-config-gallery.xml ���Ͽ��� 
<action path="/2.5/gallery/galleryPopupMain" type="com.sec.dotcomop1_6.gallery.action.GalleryPopupMainAction"> 
<forward name="success" path="/WEB-INF/jsps/op/2.5/gallery/galleryPopupMain.jsp" /> 
</action> 

3. /op/2.5/gallery/galleryPopupMain.jsp ���Ͽ���(�˾�)  
 1) Gallery Popup Main Display 
==============================================================================================================

- 5ȸ_�ʱ���蹮�� 
89. 365�� 24�ð� ���񽺸� �����ϴ� �ý��ۿ��� ��ֹ߻����� 8�ð��� 
���� �ߴ��� �߻��� ��� ���� ���뼺�� �� %�ΰ�?(�Ҽ��� 3�ڸ� ���ϴ� ����) 
��99.50% ��99.90% ��99.95% �� 99.99%  
----------------------------------------------------------------------------  
- 5ȸ_�ʱ���蹮�� Ǯ�� 
MTTF(Mean Time To Failures, ��������� ��� �ð�), MTTR(Mean TIme To Repair, ��� ���� �ð�) 
MTBF(Mean TIme Between Failure, ��� �� ���� �ð�) 
MTBF = MTTF + MTTR 
���뼺 = MTTF / MTBF = (MTBF - MTTR) / MTBF, ȿ���� = MTBF   
MTTF = 8760-8 = 8752, MTTR = 8 
MTBF = 24�ð� * 365 = 8760�ð�   
���뼺 = MTTF/MTBF = 8752/8760 = 99.908675.... = 99.90%  
==============================================================================================================

- �¿� ����  
19:00 �¿� ����(���뿪 5�� �ⱸ) 
19:10 ��������(���� ����) 
20:10 �籸��(�Ӹ� ����): ���� 100 ���� �ļ� �ƽ��� ������ 
21:00 ��¡�� ������(���� ��: ����)(���澾(���� ���༭ ����) ����: ��ǻ� ��߷� �ߴٰ� ��) 
22:30 �ƻ��� ������ 
01:30 �ý�(9,800�� ����)  
01:50 �Ͱ� 
02:10 �ٸ��۾� ���� 
03:00 ��ħ 
==============================================================================================================

- �ٸ��۾� ����(12�� 68ȸ) 
==============================================================================================================

������������������� 2010.04.07(��) �۾� �������������������
---> 06:10 ~ 01:00 

- �Ｚ���� ������
- JSP FUNCTION ���� 
1. Landing Page 
2. Feature Page 
==============================================================================================================

- �ٸ��۾� ����(12�� 69ȸ) 
==============================================================================================================

������������������� 2010.04.08(��) �۾� �������������������
---> 06:40 ~ 01:00  --> OP, Admin ȸ��(����: �ӿ��� ���� �ְ�) 

- �Ｚ���� ������
- JSP FUNCTION ����(�Ϸ�) 
1. Landing Page 
2. Feature Page 
3. Feature Html Page  
==============================================================================================================

- OP ���� ȸ�� 
1. �躸�� ���� ��ü(����: ������ ä��) 
2. ���� 
 1) UK ���� �Ϸ�(2010.04.06(ȭ)) 
 2) Ȯ�� �۾� 
  ��. �ƶ� ����Ʈ(Arabic site: 4 ~ 5��) 
 3) Rewal �۾� 
  ��. 4�� �� 
   ��) �����ӿ�ũ 
   ��) javascript 
   ��) java function 
   ��) SQL 
   ��) ȭ�� ��ȹ(�ּ��� PL) 
  ��. 5�� �� 
   ��) �簳��(�߰� ��� �ݿ�) 
  ��. 6�� �߼� ~ 7�� ��(���� ����) 
   ��) ���� �׽�Ʈ, ���� �׽�Ʈ 
3. ��Ÿ 
 1) 4�� 13�� ���� ��� ���� 
  ��. 9��(��) ~ 12��(��): �׽�Ʈ 
  ��. 13��(ȭ): ���� ��� 
  ��. ���� �κ� 
   ��) �̹��� ��â���� PVI ���� �� 
   ��) Basic Info���� Request Info �߰��� 
  ��. FR, SEC Launch(2010�� 05 25��(ȭ)) 
==============================================================================================================

- VM Ware 7.0 ��ġ 
1. vmware-workstation-full-7.0.0-203739.exe 
 1) XP Pro ��ġ(CD-KEY: W63C7-3TXX3-M6MRR-89D47-PF66D) 
==============================================================================================================

- �ٸ��۾� ����(12�� 70ȸ) 
==============================================================================================================

������������������� 2010.04.09(��) �۾� �������������������
---> 06:20 ~ 01:00 

- �Ｚ���� ������
- OP ���� ���� �׽�Ʈ(��â ����) 
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

- /op/2.5/main/keyviimageSearch.jsp ����(�̹��� ��ȸ)����  
alert("[/feature_main.jsp] ======> [selectContentMenu()]:[url]"+ url);  
==============================================================================================================

- Struts���� URL �ڵ� debug log ��� �ϱ�(URL Ȯ��) 
1. /WebContent/WEB-INF/web.xml ���Ͽ��� 
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

2. /src2/filter/RequestFilter.java ���Ͽ��� 
public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException { 
	HttpServletRequest req = (HttpServletRequest) request; 
	HttpServletResponse rep = (HttpServletResponse) response; 

	String url = req.getContextPath() + req.getServletPath(); 

	logger.debug("===========[REQUEST] start " + url + "?" + req.getQueryString()); //��û�� URL(.do) 
} 
==============================================================================================================

- CVS���� ��� ���� ���� ���� �ޱ� �� ó�� �ؾ��� �� 
1. jdk1.5 �ٽ� ���� 
 1) com.sec.dotcomop.phase2.5(���콺 ������ Ŭ��) ==> Properties ==> Libraries ==> Add Library  
    ==> Alterante JRE: jdk1.5.0_19(����) ==> Finish 
 2) JRE Sytem Library[jdk1.5.0_11] ���� 
  
2. /src/com/sec/dotcomop1_6/main/struts/OpBaseAction.java ���Ͽ��� ==> ���� ���� WCMS ���� ���� ó��(�α��� ó��) 
if (temp_system_cd.equals("WCMS") // WCMS ���� �������� ��� ���� üũ 
	&& session.getAttribute(PropertyHandler.getProperty("WCMS.USER.SESSION_KEY_OBJECT")) == null) { 
	request.setAttribute("message", PropertyHandler.getProperty("OP.USER.LOGIN.MSG.000_2")); 
	request.setAttribute("target", "opener"); 
	request.setAttribute("close", "true"); 
	//return mapping.findForward("result"); //TEST�� ���� �ּ� ó�� 
} 

3. /op/1.6/main/op1_6.jsp ���Ͽ��� ==> ���� ���� WCMS ���� ���� ó��(�α��� ó��) 
if(system_cd == "WCMS") { // WCMS 
	//var wcms_session = '<%= wcms_user_id%>';  //TEST�� ���� �ּ� ó�� 
	//var session = '<%= op_user_id %>'; //TEST�� ���� �ּ� ó�� 
	var wcms_session = 'am_lom'; //TEST�� ����ó�� 
	var session = 'am_lom'; //TEST�� ����ó�� 
} 

4. /op/1.6/op.jsp ���Ͽ���  ===> ������ ó�� 
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
��(3,350), ȭ(3,350), ��(3,415), ��(3,420), ��(3,420) 
==============================================================================================================

������������������� 2010.04.10(��) �۾� �������������������
---> 06:40 ~ 22:00 

- KCISA7 DB(2,3) 
1. ����: DB(2,3) --> ������ ������ 
2. ��ĸ��ǰ��[3ȸ]: 76��(���� 1��) ==> (�ջ� ���: 71��) 
 1) ���� 1���ϰ� �ջ� ����� ���Ƽ� ��ǰ �� ���� 
 2) KCISA14�� ��ĸ��ǰ��[3ȸ] 24���� ������ ���� �������� �Խ����� ����(�̰� �¾����� 80������ 1��) 
==============================================================================================================

������������������� 2010.04.11(��) �۾� �������������������
---> 06:20 ~ 00:00 

- KCISA8 DB(4) 
06:20 ���(�������� ��) 
07:10 �ű��ʵ��б� 
07:10 ������(1:1 ��) 
07:30 ����(4:2 ��) 
08:50 ���� 
09:40 ������ �켺 5�� APT ��ó�� ���� 
09:50 �п� ���� 
10:00 ����(DB(4) --> ������ ������) 
13:00 ��������(����: �������� 2��) 
13:40 ����(DB ����) 
18:00 ���� 
18:10 ���� ���� ���·� ���� �ٿ� ���� �� Ȯ�� 
18:40 �Ͱ� 
00:00 ��ħ 
==============================================================================================================

- ���� ���� ���·� 
1. ���ʱ�û ����������: http://traffic.seocho.go.kr, T) 2155-7397~9 
2. �������: ���4��(������ �켺 5�� APT ��ó�� ����) 
3. �����Ͻ�: 2010.04.11 10:42 
4. �ܼ���: ������, �ֿ���(�ο��Ű�) 
5. ��Ÿ 
 1) ���������� �ǰ����� �Ⱓ�� �ܼ����ڷκ��� 20���̳��Ǵ� ����뺸���� ����� �ǰ����� �Ⱓ�̳� 
 2) �ǰ��������� �̳��� ���·Ḧ �������ν� 20%���� ���� �� �ֽ��ϴ�.(������������������ ��18�� 
 3) ���·�: 3�� 2õ��(20% DC) 
==============================================================================================================

- �ٸ��۾� ����(12�� 71ȸ ===> 12���� ÷������ �ø�)(������ȸ) 
==============================================================================================================

������������������� 2010.04.12(��) �۾� �������������������
---> 06:20 ~ 01:00  ---> ��ü�ް�(�躸�� ����) 

- �Ｚ���� ������
- OP ���� ���� �׽�Ʈ 
==============================================================================================================

- Loading �м� 
1. /op/2.5/main/flagshipMain.jsp ���Ͽ��� 
function loading() { 
    document.getElementById("loading").style.display = "none"; 
} 

<div id="loading"> 
<div class=loading-indicator> 
    <img style="WIDTH:16px; HEIGHT:16px" src="${contextPath}/common/images/op/loading.gif"> Loading...  
</div> 
</div> 
==============================================================================================================

- ���������� ����(1�⿡ �ѹ���(4��) �������࿡�� ������ ��) 
http://bank.kbstar.com/quics?asfilecode=5023&_nextPage=page=B007118&weblog=l_quick_A3 
1. ������: 2010.04.12(��) 
==============================================================================================================

������������������� 2010.04.13(ȭ) �۾� �������������������
---> 06:00 ~ 01:00  ---> ��ü ȸ��, �����꽺(�缮�� ����, �ְ���) 

- �Ｚ���� ������
- OP ���� ���� �׽�Ʈ(������) 
[/frontMain.jsp] ======>[maintopprdname]${maintopprdname}<br>  
==============================================================================================================

- loading â ����(�ε� â ����) ==>  progress bar(���¹�)  
/op/2.5/main/keyviimageList.jsp ���Ͽ��� 
var modalWin = null; 
var modallessChk = 0; 
var modallessExcute = 0; 
var param_p_page = "";      // pageList �� 

function goPage(page) {  
	var f = document.frmPage; 
	var url = f.action + "?"; 
	url += "&select_category1="+parent.objById("select_category1").value; 
	url += "&select_category2="+parent.objById("select_category2").value; 
	url += "&select_category3="+parent.objById("select_category3").value; 

	f.action = url; 
	f.page.value = page; 

	f.submit(); 
	search_complate();  //��ȸ�� loading �Ϸ� �� �ʱ�ȭ �Լ� ȣ�� 
} 

/** 
* ��ȸ�� loadingâ ǥ�� �Լ� 
*/  
  
if( modallessExcute++ == 0 ) { 
    var features = 'dialogWidth:300px; dialogHeight:50px; edig:sunken; resizable:No; status:no; scroll:no; center:Yes; title:No'; 
    modalWin = window.showModelessDialog("${contextPath}/common/html/modal_pop.html",window,features); 
    param_p_page = p_page; 
      
    stopShow = setInterval("waiting_searchDataSet()",1000);   //�ð� ���͹� ���� 
} 
//return false;        
} 

/** 
* modal ���� ���� ���� ��ȸ �Լ� ȣ�� �Լ� 
*/ 
function waiting_searchDataSet() {     
	if( modallessChk++ == 1 ) { 
	    goPage(param_p_page);  //���� ��ȸ �Լ� ȣ�� 
	    modallessChk = 0; 
	    clearInterval(stopShow); 
	} 
} 

/** 
* ��ȸ�� loading �Ϸ� �� �ʱ�ȭ �Լ� 
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
script_function="wait_searchDataSet" />  <!--// ������ ��ȣ(Ŭ���ϸ� ���� �������� �̵���) //---> 
==============================================================================================================

- KCISA ���⹮�� ��� ���(�Ｚ���� ������ Proj ������) 
- ���ͳ� ��/���� �м� 
1. �ַθ��������� ������  ���⿹��: 4.90%  ==> 4,500(500�� û�����࿡ �Ա��� ��) 
2. ���뽺������������ ������  ���⿹��: 4.80%(��������: 6.00%) ==> 1,300(�������࿡�� ���) 
3. ������������  ��������   6.00% ==> 50����(2��) 
==============================================================================================================

������������������� 2010.04.14(��) �۾� �������������������
---> 06:20 ~ 00:00 --> ��ü �ް�(�Ｚ���� ������ Proj), �ۺ�������(�ް���) 

- KCISA Study
- DB ���� Ǯ��(�������� ������) 
==============================================================================================================

������������������� 2010.04.15(��) �۾� �������������������
---> 06:20 ~ 01:00 --> ��ü �ް�(�ֿ켮 ����) 

- �Ｚ���� ������
- �Խ��� ������ �����ִ� �� ���� ���̱�(gallery_list height ���̱�) 
1. /common/css/op1_6.css ���Ͽ��� 
ul#gallery_list_n {width:600px; height:150px; margin-top:10px;} 
ul#gallery_list_n li.list {clear:both;} 
ul#gallery_list_n li.list ul li {float:left; padding-right:8px; width:102px; height:80px; padding:8px; text-align:center; margin-bottom:10px;} 
ul#gallery_list_n li.list ul li p {padding:0; margin:0;} 
ul#gallery_list_n li.list ul li p.img {} 
ul#gallery_list_n li.list ul li p.tit {width:97px; color:#555; text-align:left; padding-left:3px; word-wrap:break-word;  
word-break:break-all; -moz-binding: url('wordwrap.xml#wordwrap');} 
ul#gallery_list_n li.list ul li p.date {color:#7a7a7a; font-size:10px; text-align:left; padding-left:3px; line-height:100%;} 
ul#gallery_list_n li.list ul li.gallery_list_n_over {border:2px solid #db9870; width:98px; padding:6px 8px;} 

2. /op/2.5/gallery/imageList.jsp ���Ͽ��� 
<div style="overflow-x:hidden;overflow-y:auto;height:320px;width:610px;"> 
<ul id="gallery_list_n"> 
</ul> 
</div> 
<dotcom:page style_id="op" page="${fileBrowserTO.page}" lines_per_page="${fileBrowserTO.lines_per_page}" 
total_rows="${fileBrowserTO.total_file_count}"  script_function="goPage" />  <!--// ������ ���̱� //--> 
==============================================================================================================

- jQuery �м� 
1. ����: �ڹٽ�ũ��Ʈ�� HTML ������ ��ȣ�ۿ��� �����ϴ� �淮ȭ�� �� ���ø����̼� �����ӿ�ũ 
2. ��� 
 1) DOM ������Ʈ ����, 2) DOM Ʈ������ �� ���� (CSS 1-3 ����. �⺻���� XPath�� �÷����� ���·� ����)  
 3) �̺�Ʈ, 4) CSS ���� 
 5) Ư��ȿ�� �� �ִϸ��̼�, 6) Ajax  
 7) Ȯ�强, 8) ��ƿ��Ƽ - ������ ����, "each" �Լ�  
 9) �ڹٽ�ũ��Ʈ �÷�����  
$("div.test").add("p.quote").addClass("blue").slideDown("slow"); 

1. /op_leftNav.js ���Ͽ��� 
$(document).ready(function() { 
	$(this).addClass(tempClass); 
} 
2. /op_leftNav.css ���Ͽ��� 
tempClass 
==============================================================================================================

- �ڹ� ȯ�濡�� XQuery ����ϱ� 
http://www.ibm.com/developerworks/kr/library/x-xjavaxquery/index.html 
������ 1981����� US label���� ������ ��� CD�� ������ �߸��� ������ ����  
�׸��� ��ȯ�ϴ� �� CD�� ����� �߸����� ������ XML�� ��ȯ�� 
1. cd_catalog.xml ���� 
<?xml version="1.0" encoding="ISO-8859-1"?> 
<CATALOG> 
        <CD> 
                <TITLE>Empire Burlesque</TITLE> <!--// TITLE(����) //--> 
                <ARTIST>Bob Dylan</ARTIST> 
                <COUNTRY>USA</COUNTRY> 
                <COMPANY>Columbia</COMPANY> 
                <PRICE>10.90</PRICE> 
                <YEAR>1985</YEAR> <!--// YEAR(����) //--> 
        </CD> 
        <CD> 
                <TITLE>Hide your heart</TITLE> <!--// TITLE(����) //--> 
                <ARTIST>Bonnie Tyler</ARTIST> 
                <COUNTRY>UK</COUNTRY> 
                <COMPANY>CBS Records</COMPANY> 
                <PRICE>9.90</PRICE> 
                <YEAR>1988</YEAR> <!--// YEAR(����) //--> 
        </CD> 
</CATALOG> 

2. XQueryTester.java ���Ͽ��� 
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
" order by $cd/YEAR " +     //��� ���� �����ϱ� 
"   return " + //���� �ϼ��ϱ�  
"<cd><title>{$cd/TITLE/text()}</title>" +   //��� �������� XML ���ڿ��� ��ȯ�� ��, ������ �߰�ȣ({ })�� ���ξ� �� 
" <year>{$cd/YEAR/text()}</year></cd>"; 

System.out.println(tester.query(queryString)); 

} catch (Exception e) { 
e.printStackTrace(System.err); 
System.err.println(e.getMessage()); 
} 
} 
} 

3. �������ϰ� ����(�����) 
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

- �ڹ� �ٽ� ���� 
1. �����ε�(overloading): �̸��� ���� �Ű� ������ Ÿ�� Ȥ�� ������ �ٸ� �Լ����� ���Ǹ� ����ϴ� �� 
�׸��� �� ������, �Լ��� �̸��� ������ �Ű� ������ Ÿ���̳� ������ �޶�� �Ѵٴ� �� 
class Calc {   
	int add(int a, int b); // ������ ������ ó���ϴ� �޼ҵ� 
	double add(double a, double b); // �Ǽ��� ������ ó���ϴ� �޼ҵ� 
} 

2. �������̵�(overriding): �θ� Class�� ����� ������ �Լ��� �ڽ� Class���� �ٽ� �����ϴ� ���� 
class TV {         // TV�⺻ ���¸� ����. �θ� Ŭ����   
String state() {    // ���� TV ���¸� ������ִ� �޼��� ���  
return "Channel : " + Channel;  
}  
} 

class TVMMX extends TV {    // �ڽ� Ŭ���� 
String state() {    // �𵨸� MMX�� TV���� �ð�ǥ�ñ��� �߰��� ���ش�  
return "Channel : " + Channel + "Timer" + timer;  // �̰��� �������̵� 
}  
} 

3. ������(polymorphism): �ϳ��� ���� ���� ���� �ϴ� �� 
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
		System.out.println("���¹�ȣ : " + acc.getAccountNo()); 
		System.out.println("��    �� : " + acc.getOwnerName()); 
		System.out.println("��    �� : " + acc.getBalance()); 
		System.out.println("-------------------------------------"); 
	} 
} 
==============================================================================================================

������������������� 2010.04.16(��) �۾� �������������������
---> 06:00 ~ 01:00 --> ��ü �ް�(��⼱ ����) 

- �Ｚ���� ������
- Insert Text ����â�� Ŭ���� �ϸ� ���ڼ� �׵θ��� �������� ���� ����(learning resource) 
/frontDetailMain.jsp ���Ͽ��� 
function arrangePosLearning(){   /** Object Position ����*/ 
	learningDivArr[i].obj.style.height=getHeight(learningDivArr[i].obj)-2+"px";   //style Height ����(���¸�_����(2020.04.15)) 
} 
==============================================================================================================

- DB Query �м� 
1. Key Visual Image ���� ��ȸ �м� 
 1) WSBC_SPRD_MDL_MDI_INF(������ǰ�𵨹̵������ Table), WSBC_SPRD_MDL_CD(������ǰ���ڵ� Table), 
WSBC_SPRD_IA_MAP(������ǰIA���� Table)  

2. �Ҽ��� �ڸ��� ���� 
SELECT TO_CHAR(1423.12304, 'fm999,999,999.99') FROM DUAL;   --3° �ڸ��� �ݾ�ǥ��, �Ҽ��� 2° �ڸ����� ����  
==============================================================================================================

- STOCKS 
��(3,400), ȭ(3,630), ��(3,700), ��(3,710), ��(3,800) 
==============================================================================================================

������������������� 2010.04.17(��) �۾� ������������������� 
---> 06:40 ~ 22:00 

- KCISA9 DB(5,6)
1. ����: DB(5,6) --> ������ ������ 
2. ��ĸ��ǰ��[4ȸ]: 68��(���� 22��) ==> (�ջ� ���: 71��) 
 1) ���� ���� ���� Ʋ�� 
==============================================================================================================

������������������� 2010.04.18(��) �۾� �������������������
---> 06:20 ~ 00:00  --> �п� �ް� 

�������౸ 
06:20 ���(�������� ��) 
06:50 ����(SK��� ���·� ������(29.499L:1,695��) 
07:30 ����(2:3 ��): �� ���� 
09:10 ����(5:4 ��) 
11:00 ���� 
12:00 ����(��� �Ĵ�: �����౸ȸ) 
12:50 �߰� ����, å���� ���� (���� ��Ȱ�� ����: ����� ����) 
14:00 ���� ��ġ(ũ�Ⱑ ���� �ʹ� ��: ���� 10cm, ���� 20cm �پ�� ��) ==> 110*60cm(�β� 8mm) 
       - ��������(�� �ֹμ��� ��ó, T) 871-0, H) 011-219-0 
00:00 ��ħ 
==============================================================================================================

������������������� 2010.04.19(��) �۾� �������������������
---> 06:20 ~ 23:00 --> ��ü �ް�(�ּ��� ����), å��� ���� ����(��������: ����) 

- �Ｚ���� ������
-  image drag and drop 
1. �̹��� Ŭ�� ���� �� --> ���� ���·� ���� 
2. �̹����� ��� ���� �� --> ���� ���·� ���� 
==============================================================================================================

- Move Group Ŭ�� �м�(awards) 
1. /op/2.5/awards/frontDDMain.jsp ���Ͽ��� 
function selectMenu(_id, type, evt){ /** Mouse Down ���ý� */  
evt = getEvent(evt); 
var btn = evt.button; 
if(parentObj==null) initAward('awardBody', 29, '${contentWidth}'); 
arrangePos();   //Object Position ���� 

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

function arrangePos(){ /** Object Position ���� */  
flagMainObj = objById('frontMainDiv'); 
var frontMainDivHeightGap = flagMainObj!=null ? getHeight(flagMainObj) - flagMainDivHeight : 0; 
parentObj = objById('awardBody');  
startRightPos = Number(contentWidth)+Number(startLeftPos)+Number(divPadding*2); 
startTopPos = getPosY(parentObj)+1; 
startTopPos=startTopPos-frontMainDivHeightGap; 
  
var useragent = navigator.userAgent;  // IE7 IE6 �� 
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
checkTextClass(div); // desc text�� insert text�� ��� ��Ʈ��Ÿ�� ���� 

if(i==0) { 
    startTop = startTopPos + frontMainDivHeightGap - topGab; 
    startTop = startTop-50;  //   Top ����(���¸�_����) 
}else if (moveDivArr[i - 1] != null) { 
    var tempDiv = moveDivArr[i - 1]; 
    left += getWidth(tempDiv.obj); 
    left += divPadding;//divPadding; 

    if ((left + getWidth(tempDiv.obj)) > maxRight) { 
left = startLeft; 
tempPos = getNextTopPos(sIndex, i-1); 
startTop = tempPos[0]+10 - topGab; 
startTop = startTop-50;  //Top ����(���¸�_����)  ==> ���� Style(image, title) ���� 

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
moveDivArr[i].top = getPosY(moveDivArr[i].obj)-15 + "px";  //  Top ��ġ ����(���¸�_����)  
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
<!-- �̹��� Ÿ��Ʋ ������ D1 ��Ÿ�� --> 
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

2. /op/2.5/main/frontMain.jsp ���Ͽ���  
function mainselectMenu(_id, type, evt){   /** Mouse Down ���ý� */ 
var btn = evt.button; 
maineditText(_id, btn, evt); 
return false; 
} 

/** id �� textarea ��ü �߰��� */ 
function maineditText(_id, btn, evt){ 
var main_mid_gubun = "<%=main_mid_gubun%>"; 
if(btn!=2 && _id!=null){  //������ ���콺 Ŭ���� �ƴ� ��  
    mainobj = document.getElementById(_id); 
   
    if(mainIdCheck(_id)){    
if(main_mid_gubun != 'gallery'){ // gallery ������ ������� ���� 
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

3. /op/2.5/awards/layerMenu.jsp ���Ͽ��� 
function moveContent(){ //Move Group Ŭ���� �����ϴ� �Լ� 
var obj = objById(contextMenuSelectId); 
var msg = "<%=PropertyHandler.getProperty("OP.MSG.029")%>"; 

if(obj!=null){ 
    selectIdAs =  contextMenuSelectId; 
    selectArrObject(); 

    // move �� moveImg ������ �κ� 
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
  
4. /op/2.5/awards/frontDDMain.jsp ���Ͽ��� 
function selectArrObject(evt){ 
var sId = selectIdAs.replaceAll("_img", "").replaceAll("_content", "").replaceAll("_title", "").replaceAll("_date", ""); 
moveObjectSelected = true; 
pointMove(objById(sId), evt); 
} 

function pointMove(obj, evt) { /** Object �̵� ���� ��� */ 
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

function changeDivArr(mode, selectedIdx, objArea) {  //�������� ���� �κ� 
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

������������������� 2010.04.20(ȭ) �۾� �������������������
---> 06:20 ~ 01:00 

- �Ｚ���� ������
- Image Drag and Drop  
http://localhost:8080/iw-sec/common/html/modal_pop.html  
==============================================================================================================

������������������� 2010.04.21(��) �۾� �������������������
---> 06:20 ~ 01:00 

- �Ｚ���� ������
- Image Drag and Drop 
- gallery - Eternity 
/op/2.5/gallery/galleryPopupMain.jsp 
http://www.stylebag.co.kr/test/test2.html 
http://localhost:8080/iw-sec/common/html/TEST_Stock.html 
http://localhost:8080/iw-sec/common/html/test_dragImagebar.html  
==============================================================================================================

- ���� ���� ���� Ȯ��(��ȭ ���� ����(3016-2330~4): ����� ������ �Ｚ�� 157-36 ȭ������:���� 4428) 
- ������ ���(5%) 
- ��ǳ��(���� BKF-0706T) û��(����̹��� ��Ʈ Ǯ�� ȭ��ǿ��� ���� ���̷� �ľ���)  
==============================================================================================================

������������������� 2010.04.22(��) �۾� �������������������
---> 06:20 ~ 22:30 

- �Ｚ���� ������ Prj
- Gallery Popup Main(drag and drop) 
/op/2.5/gallery/galleryPopupMain.jsp  
==============================================================================================================

- ���θ� ��ǰ �̹��� drag and drop  ===> <li> �±׿� �ο� �־ ��� �Ұ� 
http://localhost:8080/iw-sec/common/html/TEST_Stock.html 
- �̹��� drag and drop 
http://localhost:8080/iw-sec/common/html/test_dragImagebar.html 
==============================================================================================================
 
������������������� 2010.04.23(��) �۾� �������������������
---> 06:20 ~ 01:00   --> �ۺ��� ����(������ ���� ��� ����) 

- �Ｚ���� ������
- Gallery Popup Main(drag and drop) 
/op/2.5/gallery/galleryPopupMain.jsp  

/op/2.5/gallery/imageList.jsp ���Ͽ��� 
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

/galleryPopupMain.jsp ���Ͽ��� 
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

- �������� ����(����) 
 http://www.hrd.go.kr/jsp/common/hrdhPopup/jtnet02_02/jtnet02_02_801.jsp 
==============================================================================================================

- ��ȯ �湮 
19:20 ��� 
22:20 ���� 
23:30 ����(�Ӹ�, �Ӹ� ����, ��ȯ) 
02:00 �籸(100���� �ļ� ���� ��) 
03:40 �Ͱ�(��ȯ�� �츮������ �ڰ� ��) 
04:00 ��ħ 
==============================================================================================================

- STOCKS 
��(3,850), ȭ(3,850), ��(4,300), ��(3,850), ��(3,850) 
==============================================================================================================

������������������� 2010.04.24(��) �۾� ������������������� 
---> 06:40 ~ 20:00 

- KCISA10 IT(4,5) 
1. ����: IT(4,5)) --> ����ȣ ����� 
2. ��ĸ��ǰ��[5ȸ]: 84��(���� 4��) ==> (�ջ� ���: 73��) 
 1) ���� ���� ������ �Ǽ� ��(�ӵ��� ��Ȯ�� Ű�� ��) 
==============================================================================================================

������������������� 2010.04.25(��) �۾� �������������������
---> 06:00 ~ 00:00 

- KCISA11 ����(1) 
06:00 ���(�������� ��) 
06:10 ���� 
07:10 �ű��ʵ��б� 
07:30 ������(1:1 ��)  
08:20 ���� 
08:40 ������ ���� ������ ��ó�� ���� 
09:00 �п� ���� 
10:00 ����(D����(1) --> ������ �����) 
13:00 ��������(����: �������� 1��, ��� 1��) 
13:30 ȸ�� ��� 
13:50 drag and drop ���α׷� ���� 
17:50 ����(������: û���� ��(6õ��)) 
22:00 ���� 
22:30 �Ͱ�(���� ���� ��� ���� ����) 
00:00 ��ħ 
==============================================================================================================

- �Ｚ���� ������ Prj --> �Ͽ� �ٹ�(13:30 ~ 22:00) 
- Gallery Popup Main(drag and drop) 
/op/2.5/gallery/galleryPopupMain.jsp   
------------------------------------------------------------------------------------------------------- 

- iso-8859-1���� 
��Ŭ�������� jsp, js���� ����ÿ� iso-8859-1������ ���� ��찡 ���� �ִ�.  
ó�� ����� Window -> Preference -> General -> Appearance -> Content Type -> Text ��   
������ Default encoding�� iso-8859-1�� �Ǿ��ִ� ���� euc-kr�� �ٲٰ� Update �� OK   
UTF-8 --> euc-kr 
==> �׷��� �ȵǸ� ������ Ž���⿡�� ���� �����ؼ� ��Ŭ�������� �ҷ� ���� �ϸ� �� 
==============================================================================================================

������������������� 2010.04.26(��) �۾� �������������������
---> 06:00 ~ 22:00  --> ���� �н�(ȸ�翡 �ٽ� �ͼ� ã�� ��: ��� ���� ȭ��� â��ƴ�� ���Ƶ�) 

- �Ｚ���� ������ Prj
- Image Drag and Drop 
arrangePos() { }  //���� ����  
selectMenu(_id, type, evt){   //�̹��� Ŭ���� 
makeMoveDiv(true, objById(_id)) { } 
fnOnmousemove() { }  // ���콺 ������  �Լ� 
pointMove() { } //����Ʈ ������ �Լ� 
   
function addId(_id, flag){   //DB�� ���� �Լ� 
moveArray[moveArray.length] = _id; 

if(parentObj==null){  
contentWidth = '435';   //'${contentWidth}'; 
initAward('gallery', 10, contentWidth);  //gallery 
}  
makeMoveDiv(true, objById(_id)); 
}   
==============================================================================================================
 
- OP ���� ȸ��(14:30 ~ 16:00) 
1. Image Drag and Drop �ÿ� 
 1) �Ϸ� �� �ؼ� ������ ����(�ŷ� �߶�) 
 2) �ֿ켮 ������ �Ϸ� �� �� 
2. �����ӿ�ũ ���� �κ� ����(��PL) 
==============================================================================================================

- KB�¼���(Good Shopping)ī�� �߱� 
ī���ȣ: 9445 4201 6664 5014   2015/03, 723 ===> ������: 27��, ��������: SC��������  
��ȸ��: 5õ��(���� 100���� �̻� �̿��ϸ� �⺻ ��ȸ�� ����) 
==============================================================================================================

������������������� 2010.04.27(ȭ) �۾� �������������������
---> 06:00 ~ 22:00 

- �Ｚ���� ������ Prj
- Image Drag and Drop 
1. test_dragImagebar.html ��� ������ 
1) <fieldset id="Demo0"> ���� ���� --> div�� ���� �� 
2) �̹��� �� ���� �� 
3) <body onload="init('color_area', 'thumbnail_list');"> ���� ===> �ذ� 
----------------------------------------------------------------------------------------------------------------------- 

ev = ev  window.event; 
var target   = ev.target  ev.srcElement; 
var mousePos = mouseCoords(ev);  
var clickedID = (target.id  '');    //Ŭ���� li ID  
document.getElementById('inner_t_52').innerHTML = "[/TEST_Stock.html][inner_t_52]===> [mouseMove()][clickedID]"+ clickedID;  
==============================================================================================================

- ���� ������ �߱�/��߱�(����(����)): �������� ����Ʈ���� ��߱� ���� 
http://www.myasset.com/myasset/mainindex.html 
==============================================================================================================

������������������� 2010.04.28(��) �۾� �������������������
---> 06:00 ~ 01:00  --> �ۺ���(���μ� ����) ù ��� 

- �Ｚ���� ������ Prj
- Image Drag and Drop 
1. li tag���� �̹��� �� ���� ��  ===> jquery �ҽ� ����Ͽ� ó��  
1) <fieldset id="Demo0"> ���� ���� --> div�� ���� ��  ===> ��� ���� �ذ� 
2) Image Drag �Ʒ��� �ٿ�� ���� �߻� --> �Ʒ��� ������ �ҽ��� ����(�ٸ� �ҽ� �����ؾ� ��) 

/WebContent/common/scripts/drag_drop.js ���� ��ġ 
config.js, idrag.js, idrop.js, isortables.js, iutil.js, jquery.js 

<script src="${contextPath}/common/scripts/jquery-1.3.2.min.js" type="text/javascript"></script> 
<!--// jquery ����(��� ���ص� ��) --> 
<script type="text/javascript" language="javascript" src="${contextPath}/common/scripts/jquery.js"></script> 
<script type="text/javascript" language="javascript" src="${contextPath}/common/scripts/iutil.js"></script> 
<script type="text/javascript" language="javascript" src="${contextPath}/common/scripts/idrag.js"></script> 
<script type="text/javascript" language="javascript" src="${contextPath}/common/scripts/idrop.js"></script> 
<script type="text/javascript" language="javascript" src="${contextPath}/common/scripts/drag_drop.js"></script> 
<script type="text/javascript" language="javascript" src="${contextPath}/common/scripts/isortables.js"></script> 
<script type="text/javascript" language="javascript" src="${contextPath}/common/scripts/config.js"></script>  
----------------------------------------------------------------------------------------------------------- 

/WebContent/common/scripts/op_gallery.js ���Ͽ���(�Ʒ� �ҽ� ������ ��) 
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
 
- Image Drag and Drop �ҽ� ���� 
http://host.sonspring.com/dragdrop/ ==> ���� ���� 
http://docs.jquery.com/UI/API/1.7/Draggable 
http://interface.eyecon.ro/demos/drag.html 
http://dev.iceburg.net/jquery/jqDnR/ 
==============================================================================================================

- ����ī�� ���� ���� ����(�������� --> ��������) 
��������(1588-1688): 1�� -> 9�� -> 9�� 
==============================================================================================================

������������������� 2010.04.29(��) �۾� �������������������
---> 06:00 ~ 01:00  --> �߱�(���� �Ĵ� û���� ��: 21�� ���) 

- �Ｚ���� ������ Prj
- Image Drag and Drop 
1. Image Drag �� �Ʒ��� ���� ��(���� Drag --> ���� Drag�� ����) ==> �̹��� �ֱ� ��� �Ұ�(jquery �ҽ� ��ü ����) 
==============================================================================================================
 
������������������� 2010.04.30(��) �۾� �������������������
---> 06:20 ~ 01:00  --> �ۺ���(�躸�� ����) ö�� 

- �Ｚ���� ������ Prj
- Image Drag and Drop 
1. /op/2.5/gallery/galleryPopupMain.jsp ���� ���� 
 1) Image Drag ����(�ֿ켮 ������ jquery���� ���� --> li �κ� �����ؾ� ��) 
2. /op/2.5/main/frontMain.jsp ���� ���� ==> �Ϸ� 
<script type="text/javascript" language="javascript" src="${contextPath}/common/scripts/drag_drop.js"></script>   
<!--//image Drag & Drop //--> 

- ���� ����(bgcolor �ƴ�) 
<div class="showroom_list" style="height:40px; background-color:#ffccff"> 
<ul id="index_list" style="background-color:#ffff00"> 
<li class="sortable_1 sortable_2" style="background-color:#6666FF">[01]<img src="tes.jpg"/></li> 
</ul> 
</div> 

- ����� 
document.getElementById('inner_t_1').innerHTML = "[/FeatureScript.jsp] ===> [init()][thumbnailParentObj]"+ thumbnailParentObj ; 
<jsp:include page="../../2_5/common/TEST.jsp" flush="true"/><!--// TEST include  -->  
==============================================================================================================
 
- �������� ���� �߱�(���� 1�� �ֹμ��� �湮(������:õ��))  
==============================================================================================================
 
- STOCKS 
��(3,830), ȭ(3,885), ��(3,930), ��(4,170), ��(4,165) 
============================================================================================================== 
�����������������������������������������������������������
+--------------------------------------------------------// End //----------------------------------------------------------+ 
�����������������������������������������������������������  