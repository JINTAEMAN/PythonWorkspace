

�����������������������������������������������������������
+---------------------------------------------// Memo(2010.08) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2010.08.01(��) �۾� �����������������
---> 06:00 ~ 00:00 

- ����, ���� �湮2
06:10 ��� 
06:20 ����(641��)   
	==> 461(������ �Ա�) --> 5002(����Ÿ�) --> ĳ����Ⱥ���(���� 2õ��)  --> 1A������ ==> ����õ(���� ���� ��) 
06:50 ����(5002(����Ÿ�): ���� ��) 
07:40 �������� ������ 
07:50 ǥ ����(���� �̿��: � 2(KBī�� 20% DC: 52,000��), � 1(�Ϲ�: 65,000��)) 
08:00 ��� 
08:05 ĳ����Ⱥ��� ���� 
08:10 ���� ����(3����), ��īŰ(6õ��), ��������(KB ī�� ������ ����)
08:20 Ż�ǽ�(������, ������ ����) 
08:30 �������� ��Ʈ 
08:40 ���̱ⱸ Ž(��������, ����) 
08:40 ���̱ⱸ Ž2(����): 4�ð� ��ٸ� 
13:00 �߽�(���) 
15:00 �ĵ� Ÿ�� 
17:00 ���� 
18:00 ����(1500-2�� ����(ĳ����Ⱥ���) --> 5435�� ����(����纴��: ��翪 ��ó)) 
19:40 ����(��κ���: ������ ��) 
20:40 �Ͱ�
23:00 ��ħ 
==============================================================================================================

������������������� 2010.08.02(��) �۾� �������������������
---> 07:50 ~ 19:00 

- SK FLA365 �
- ����༺ ���� Ȯ�� ��û ==> ����ȣ ���� 
http://www.fla365.com/WEB_INF/web.xml 
http://www.fla365.com/shop/shopping/product_detail.do?shop=3734' or 1=1 -- 
http://www.fla365.com/WEB_INF/web.xml 
http://bos.fla365.com/common/inc/pop_orgAdd.do?fname=img1&msection=0&imgfname=underfined 
http://bos.fla365.com/common/product/cate_l_list.do?mode=getXML&depth=2&cateCode=0020000000000 
   
- XSS(Cross Site Scripting) ��༺ ����(/shop/lifeinkorea/free_write.jsp ) 
test<script>alert("[test]");</sctipt>  ==> test&lt;script&gt;alert(&quot;[test]&quot;);&lt;/sctipt&gt; 
- ���� �������� 
http://bos.fla365.com/adminnew/manage/manage_account_master.do 

- �Խ��� ��� 
http://bos.fla365.com//fla365/WebContent/WEB-INF/shop/lifeinkorea/free_write.jsp 
1. /fla365/WebContent/adminnew/common/js/general_bbs_list.js���Ͽ��� 
function bbsSave(){ 
$('title').value = XSSEncode($('title').value);  //���� --> XSS ��༺ ����(Ư�� ���� ġȯ)  
} 

2. /fla365/WebContent/common/js/common/Base.js ���Ͽ��� 
function XSSEncode(text){  //XSS ��༺ ���� �Լ�(Ư�� ���� ġȯ)  
if ( !text ) 
return '' ;  
text = text.replace( /&/g, '&amp;' ) ; 
text = text.replace( /</g, '&lt;' ) ; 
text = text.replace( />/g, '&gt;' ) ; 
//alert("[/Base.js] [XSSEncode()] [text]" + text); 

return text ; 
} 
==============================================================================================================

- �ֹ���Ȳ ���� ����(http://211.39.40.58:7003/adminnew/order/summary.do) 
1. /fla365/src/utils/SwFunct.java ���Ͽ��� 
public String getCartStageStr(String stage){ 
int state = -1; 

  switch(state){ 
case 3:  str = "�����";  break; //=======> ���� �߻�(����) 
case 34:  str = "����غ���";  break; 
case 10:  str = "�ǸŰź�";  break; 
case 4:  str = "�����";  break; 
case 8:  str = "����Ȯ��";  break; 
case 5:  str = "��ǰ��û";  break; 
case 7:  str = "��ǰȮ��";  break; 
case 12:  str = "��ǰ�ź�Ȯ��"; break; 
case 6:  str = "��ȯ��";  break; 
case 14:  str = "��ȯȮ��";  break; 
case 13:  str = "��ȯ�ź�Ȯ��"; break; 
case 0: 
case 9: 
case 11:  str = "��ҵȰ�";  break; 
} 

return str; 
} 
==============================================================================================================

- �ٱ��� ���ý� ù ������ �̵� ����(http://211.39.40.58:7003/shop/flamenual/flamenual1_1.do) 
1. /fla365/WebContent/common/js/common/Base.js ���Ͽ��� 
function changeLocale(locale){ 
if(myLink.indexOf('/flamenual') > 0){ //���θ� �̿�ȳ� �̸�(��â ���) 
myLink = "flamenual1_1.do"; 
} 
} 
==============================================================================================================

- SVN ���� 
1. Eclipse ���� 
2. SVN Repositry Ŭ�� 
3. Checkout Ŭ��(skd1/skd1) 
4. �ޱ� �Ϸ�  
==> ����: ���� �۾� �� Team --> Synchronzie withh Repositry Ŭ�� 
        ���� �۾� �� Team --> Commit Ŭ�� 
==============================================================================================================

- ���� �̹��� ���� 
http://211.39.40.58:7003/upfile/2010-06-17/2f805503-739d-4165-96f7-3acdb6181fc7.jpg 
==============================================================================================================

������������������� 2010.08.03(ȭ) �۾� �������������������
---> 07:10 ~ 21:00  --> �ڸ� �̵�(14�� --> 16��), �߽�(�輺�� �븮�� ��), �߱�(����) 

- SK FLA365 �
- ����� ���� 
D:/workspaces/default/fla365/WebContent/images/button/btn_buynow.gif 
D:/workspaces/default/fla365/WebContent/images/icon/ico_lang_kr4.gif  ---> ������ 
D:/workspaces/default/fla365/WEB-INF/common/inc/header.jsp  
D:/workspaces/default/fla36/WebContent/WEB-INF/shop/login/join.jsp   
D:/workspaces/default/fla365/WebContent/WEB-INF/adminnew/giftcard/pin_view_no.jsp 
D:/workspaces/default/fla365/WebContent/WEB-INF/adminnew/giftcard/sbcode.jsp 
D:/workspaces/default/fla365/WebContent/WEB-INF/adminnew/giftcard/gcnum_searchview.jsp 
D:/workspaces/default/fla365/WebContent/WEB-INF/adminnew/giftcard/sbcode_modifylist.jsp 
D:/workspaces/default/fla365/WebContent/WEB-INF/adminnew/order/summary.jsp 
D:/workspaces/default/fla365/WebContent/WEB-INF/adminnew/product/product_joint.jsp 
==============================================================================================================

- ���� ����(ȸ�� ���Խ�) 
http://211.39.40.58:7003/shop/login/join.do?locale=ko 
����(message_en), �߱���(message_zh), �����(message_mn), �±���(message_th), �ε��׽þ�(message_in), ��Ʈ����(message_vi)   
common.js.member.checkid.nationality_info = ������ ���õ��� �ʾҽ��ϴ�.\\n ���� ������ �´� ���⸦ �����Ͽ� �ֽʽÿ�. 
join.msg.check_success 
<jsp:include page='<%="/WEB-INF/common/inc/script_var_set.jsp"%>' /> 
checkid.nationality_info="<spring:message code="common.js.member.checkid.nationality_info"/>"; 

- ��밡�� ���̵� �ٱ���(ȸ�� ���Խ�) 
join.msg.check_success = ��밡���� ���̵� �Դϴ�. ����Ͻðڽ��ϱ�? 
==============================================================================================================

- ��ȭ��� ���� ��� �߰�(�Ϸ� ������ ���� �Ұ�) 
<!-- mantomanController --> 
<bean id="consultationController" class="controller.adminnew.board.ConsultationController" > 
<property name="methodNameResolver"><ref bean="consultationNameResolver" /></property> 
<property name="consultationDao"><ref bean="consultationDao" /></property> 
</bean>  

<!-- mantomanNameResolver --> 
<bean id="consultationNameResolver" class="org.springframework.web.servlet.mvc.multiaction.PropertiesMethodNameResolver"> 
<property name="mappings"> 
    <props> 
<prop key="/customer/operate/phone_list.do">list</prop> 
<prop key="/customer/operate/phone_view.do">read</prop>                 
<prop key="/customer/operate/phone_write.do">write</prop>   
<prop key="/customer/operate/phone_modify.do">modify</prop><!--// ���� �߰�// -->              
<prop key="/customer/member/pop_phone.do">list</prop> 
<prop key="/customer/member/pop_phone_view.do">read</prop> 
<prop key="/customer/member/pop_phone_write.do">write</prop>       
    </props> 
</property> 
</bean>   

<update id="setFaqUpdate" parameterClass="faqBean"> 
UPDATE swc_faq SET  
 stage=#stage# 
,title=#title# 
,writer=#writer#  
,mname=#mname#  
,email=#email#  
,contents=#contents# 
,ip=#ip# 
WHERE num=#num# 
</update>  
==============================================================================================================

- ���� ����� ���� ���� 
����: ShopSchedulerDaoImpl.class ���� �뷮 0KB 
Bean class [dao.adminnew.goods.ShopSchedulerDaoImpl] not found; nested exception is java.lang.ClassNotFoundException:  
dao.adminnew.goods.ShopSchedulerDaoImpl. 
==============================================================================================================

- Shoplinker �μ��ΰ�(����� �븮) 
1. �׸�Ŀ�ӽ�(��)  ������ ����(HP: *, T: 2175-8645, ����) 
==============================================================================================================

������������������� 2010.08.04(��) �۾� �������������������
---> 07:10 ~ 20:00  --> ����� �븮 �ް�(�Ϻ�), �̽��� �븮 �İ�, �̸�Ʈ(�����)���� ����(���� ��ǰ��), �Ž� Ŀ�� �ޱ�, �߱� 

- SK FLA365 �
- 1:1 �̸��� ��� ���� ���� ��� �߰�(�Ϸ� ������ ���� �Ұ�)   
http://localhost:7001/customer/operate/email_modify.do?num=77&page=1&searchField=&searchText=&searchStage=&muid= 
==============================================================================================================

- FTP �н����� ����  ===> �Ǽ���: 211.39.40.53, weblogic/webflajdrhd(webfla����) 
[weblogic@sktlwas2 ~]$passwd 
(current) UNIX password:  
New UNIX password:  
Retype new UNIX password: 
passwd: all authentication tokens updated successfully.  
==============================================================================================================

- ���� ����(flash ���� ����: ����) 
���߼���: /fla365/WebContent/common/xml/flashxml/mainEvent.xml  ===> ���� �̺�Ʈ flash ���� 
�Ǽ���: /nas_data/fla365/WEB-INF/common/xml/flashxml 
==============================================================================================================

������������������� 2010.08.05(��) �۾� �������������������
---> 07:10 ~ 22:00  --> �߱�(����) 

- SK FLA365 �
- ���θ�� ������ ��� ��ȭ 
1. ���θ�� ��ǰ�� ����(/���θ�� ��ǰ�� �) 
http://localhost:7001/adminnew/giftcard/gcnumpin_list.do 
/WEB-INF/secondadmin.xml  ==> ������ ī�װ� ����(/WEB-INF/adminnew/common/inc/lnb.jsp)  
�Ϸù�ȣ���� K***-D9-******-***** ==> ���θ�� �ڵ�  
  
2. ���θ��  
/controller/adminnew/point/PointRegController.java ���Ͽ���  ===> /shop/mypage/fpoint.jsp 
public ModelAndView handleRequest() { 
//���θ�� PIN��ȣ�� �ش� promotionindex�׷쿡��  ��ȸ���� �׷캰 �ѹ��� ������ ���� 
if (this.giftCardDao.getGiftCardCount(paramMap) > 0){ 
msg = message.getMessage("common.msg.pin_number_err2"); //���θ�� ������ �� ���̵� �ѹ��� �˴ϴ�. 
} 
}  
==============================================================================================================

- ���� ��û ���� 
build/classes/controller/adminnew/board/ManToManController.class 
build/classes/dao/adminnew/goods/ShopSchedulerDaoImpl.class 

- �ֱ��ֹ���Ȳ(http://bos.fla365.com/adminnew/order/summary.do)  ===> 6�� ��ȸ�� 
SELECT * FROM SWS_SHOPBANK A, SWS_CART_OK B  
where a.cartkey=b.cartkey and a.mref=3 and a.stage<>'8' and b.stage='8' and b.bigo='�ڵ����Ž���'  
--;  
   
SELECT * FROM SWS_SHOPBANK   ===> 0�� ��ȸ�� 
where A.cartkey IN ('100725184009vDyVV_6180', '100726112128GWGQC_415', '100727185919cFYi7_205',  
'100726173507mhiYl_3022', '100726173507mhiYl_3021', '100726173507mhiYl_3020' ) 
--; 

update SWS_SHOPBANK set calculate_flag='N', d_day='2010-07-31', stage='8'  ==> 0�� ó�� 
where A.cartkey IN ('100725184009vDyVV_6180', '100726112128GWGQC_415', '100727185919cFYi7_205',  
'100726173507mhiYl_3022', '100726173507mhiYl_3021', '100726173507mhiYl_3020' ) 
--; 
==============================================================================================================

������������������� 2010.08.06(��) �۾� �������������������
---> 07:20 ~ 21:00  --> �߱�, ���� ���� ���� 

- SK FLA365 �
- ���θ�� ������ ��� ��ȭ 
1. ���θ�� ��ǰ�� ����(/���θ�� ��ǰ�� �) 
http://localhost:7001/adminnew/giftcard/promotion.do 
/WEB-INF/secondadmin.xml  ==> ������ ī�װ� ����(/WEB-INF/adminnew/common/inc/lnb.jsp)  
�Ϸù�ȣ���� K***-D9-******-***** ==> ���θ�� �ڵ�  

2. ���θ��  
/controller/adminnew/point/PointRegController.java ���Ͽ���  ===> /shop/mypage/fpoint.jsp 
public ModelAndView handleRequest() { 
//���θ�� PIN��ȣ�� �ش� promotionindex�׷쿡��  ��ȸ���� �׷캰 �ѹ��� ������ ���� 
if (this.giftCardDao.getGiftCardCount(paramMap) > 0){ 
msg = message.getMessage("common.msg.pin_number_err2"); //���θ�� ������ �� ���̵� �ѹ��� �˴ϴ�. 
}  
) 
==============================================================================================================

- ī�װ� ���� ����(ī�װ� Best) 
http://localhost:7001/shop/shopping/category_list.do?searchCateCode=002001000000 
/ShopMakerTag.java ���Ͽ��� 
if(strCateCode.equals("002001")){  //ī�װ��� ��ȸ  =======> //CATE(��Ʈ��)  
    whereQue += " AND A.NUM IN (22667, 22666, 21282, 21266, 21263)  ";  
} else if(strCateCode.equals("003002")){     //CATE(��Ʈ��) 
    whereQue += " AND A.NUM IN (25096, 25086, 25122, 25106, 25151)  ";  
} else if(strCateCode.equals("003003")){     //CATE(�ε��׽þ�) 
    whereQue += " AND A.NUM IN (25274, 25238, 25226, 25269, 25222)  "; 
} else if(strCateCode.equals("003001")){     //CATE(�±�) 
    whereQue += " AND A.NUM IN (25338, 25371, 25379, 25419, 25396)  ";  
} else if(strCateCode.equals("003005")){     //CATE(�ʸ���) 
    whereQue += " AND A.NUM IN (25454, 25456, 25459, 25480, 25458)  ";   
} 
==============================================================================================================

- Weblogic App ���� �߻��� 
���� --> fla365 --> ����(���� ����) --> ���� 
https://211.39.40.53:7002/console/console.portal?_nfpb=true&_pageLabel=AppDeploymentsControlPage 
==============================================================================================================

- ���� ���� 
D:/workspaces/default/fla365/src/message/message_mn.properties 
D:/workspaces/default/fla365/src/message/message.properties 
D:/workspaces/default/fla365/src/message/message_ko.properties 
D:/workspaces/default/fla365/src/message/message_in.properties  
D:/workspaces/default/fla365/WebContent/common/css/mypage.css 
D:/workspaces/default/fla365/WebContent/common/css/detail.css  
D:/workspaces/default/fla365/WebContent/WEB-INF/data/xml/categoryList.jsp 
D:/workspaces/default/fla365/WebContent/WEB-INF/data/xml/orderXmlList.jsp 
D:/workspaces/default/fla365/WebContent/WEB-INF/data/xml/cancel.jsp 
D:/workspaces/default/fla365/WebContent/WEB-INF/shop/shopping/product_detail.jsp 
------------------------------------------------------------------------------------------------- 
D:/workspaces/default/fla365/src/com/fla365/interfaces/shoplinker/controller/LinkerController.java 
D:/workspaces/default/fla365/src/com/fla365/interfaces/shoplinker/controller/ProductController.java  
D:/workspaces/default/fla365/src/com/fla365/interfaces/shoplinker/ibatis/Linker.xml 
D:/workspaces/default/fla365/src/com/fla365/interfaces/shoplinker/ibatis/OrderXml.xml 
==============================================================================================================

- ����90 ����ȸ  
21:00 ���� ����(��ȹ�� �Ǽ��� ������� ���� �ʾ���) 
21:40 ���뱹��(��ȯ, ����, ȣ��, �¿� ����) 
23:00 �籸��(��Ǻ� ��, ������ �̱�(����, ��: ��ȯ, ȣ��) 
01:00 ����(�Ͻ�) 
02:00 ������ 
03:30 ���� 
03:50 �Ͱ�(��ȯ�� �ڰ� ��) 
04:00 ��ħ 
==============================================================================================================

- STOCKS 
��(4,100), ȭ(4,115), ��(4,510), ��(4,515), ��(4,600) 
==============================================================================================================

������������������� 2010.08.07(��) �۾� �������������������
---> 08:50 ~ 20:00  --> ���ٹ�(����): ��ȹ�� �����ؼ� SMS ���� �߼� ���� ��� ��û(�輺�� �븮: �߽� ����) 

- SK FLA365 �
- ī�װ� ���� ����(ī�װ� Best) 
http://localhost:7001/shop/shopping/category_list.do?searchCateCode=002001000000 
/ShopMakerTag.java ���Ͽ��� 
if(strCateCode.equals("003002")){  //ī�װ��� ��ȸ  =======> //CATE(��Ʈ��)  
    whereQue += " AND A.NUM IN (25096, 25086, 25122, 25106, 25151)  ";  
} else if(strCateCode.equals("003003")){     //CATE(�ε��׽þ�) 
    whereQue += " AND A.NUM IN (25274, 25238, 25226, 25269, 25222)  "; 
}  

--- Į�� �߰�  ------  
ALTER TABLE SWS_SHOP_ADD ADD (  
    CATE_DISPLAY    CHAR (2)        --ī�װ� ���� ���� 
) 

--ī�װ� ����  ����    @@@@@@@@@@@@@   ===> SWS_SHOP_MV�� MATERIALIZED VIEW���� UPDATE �Ұ� 
UPDATE SWS_SHOP_MV_2 A 
SET A.CATE_DISPLAY = '1'   -- ī�װ� ���� ���� 
WHERE 1=1 
    AND SUBSTR(A.CATE1,1,6) = '002001'         
    AND A.NUM IN (25096)     --��ǰ��ȣ          
--;   
==============================================================================================================

- ���θ�� ������ ��� ��ȭ 
1. ���θ�� ��ǰ�� ����(/���θ�� ��ǰ�� �) 
http://localhost:7001/adminnew/giftcard/promotion.do 
/WEB-INF/secondadmin.xml  ==> ������ ī�װ� ����(/WEB-INF/adminnew/common/inc/lnb.jsp)  

--��ǰ�ǰ��� ����  ����    @@@@@@@@@@@@@   
UPDATE SWS_GIFT_CERTIFICATE A 
SET A.PROMOTION_SAVE_YN = 'N'   -- PIN �ߺ� ���  ����(N:����, Y:�ߺ�) 
WHERE A.DIST_CODE = 'D9'   --�����ڵ� (D1 ~ D9)  
    A 
    ND SUBSTR(A.SEQ_REGDATE, 0, 10) = '2010-07-14'    -- �Ϸù�ȣ ������('2010-07-14'  , ''2010-06-15' ) 
    AND A.SEQ_REG_MUID ='admin'    --�Ϸù�ȣ ������ 
--;  

- ��ǰ�� PIN Ȱ��ȭ ���_��ȭ��(http://localhost:7001/adminnew/giftcard/promotion.do) 
http://bos.fla365.com/adminnew/giftcard/pop_gclist.do 
==============================================================================================================

- �ְ����� ���� 
==============================================================================================================

������������������� 2010.08.08(��) �۾� �������������������
---> 07:00 ~ 00:00 

�������౸ 
07:00 ��� 
07:40 �ű��ʵ��б� 
08:00 ����(5:2 ��) 
09:00 ����(0:2 ��) 
09:40 ����(2:0 ��) 
09:50 ���� 
10:30 ����(�������� ��ó �Ĵ�: �ﱹ������ ��) 
12:30 �籸(ȣ������ ���� ��: 3,600��) 
14:00 �뷡��(�������ϰ� ġ�����ϰ� �ο�): ��ġ��(T)017-227-3729, �������� �ؽ� ����) 
16:40 ���� 
18:00 �Ͱ� 
==============================================================================================================

������������������� 2010.08.09(��) �۾� �������������������
---> 07:10 ~ 19:00  --> hp ��ȭ�� ��(�輺�� �븮�� ��) 

- SK FLA365 �
- WebLogic ���� ����(���߼���)  
The domain edit lock is owned by another session - this deployment operation requires exclusive access to the edit lock and hence cannot proceed. 
You can release the lock in Administration Console by first disabling "Automatically Acquire Lock and Activate Changes" in Preference, 
then clicking the Release Configuration button.   
���� �� ��ġ: ���������� �� ������ ���� console���� ȯ���� �ٲٰ� ���� �ݿ��� ���ؼ� locking�� �Ǿ� �ִ� ����.  
�����ϰ�console������ 'release Configuration' ��ư�� �����ָ� ������ �ذ�� 

- ���� ����(���߼���)  
Error(s) found in module 'fla365'. Publish was cancelled. See "Problems" view for details. 
  This project needs to migrate WTP metadata at fla365  
==============================================================================================================

- Eclipse ���� 
1. Eclipse --> New Server 
1) Directory Domain: C:\bea\user_projects\domains\fla365     ===> startWebLogic.cmd 

2. WebLogic ���� ��ġ(���߼����� ���� �൵ �� --> JDBC�� ��ġ��) 
1) ���� ��ġ --> ȯ�� ==> ����(http://localhost:7001/console/console.portal?_nfpb=true&_pageLabel=CoreServerServerTablePage): ���� �����(Ŭ��)  
Server Name: sktM11, ���� �ּ� : localhost, ���� �ּ�: ���� ��Ʈ: 7003  
2) Deployments ==> Install 
path: d:\workspaces\default\fla365\WebContent, Name: fla365 
3) http://localhost:7003 
   
3. JDBC Connection ���� ---> SID:ORA10G, flamall/fla365 
http://localhost:7001/console/console.portal?_nfpb=true&_pageLabel=GlobalJDBCDataSourceTablePage 
1) Data Soruce �̸�: flamall 
2) Application���� ȣ���� JNDI �̸�: flamall 
3) Data Base ����: jdbc:oracle:thin:@211.39.40.58:1521:ora10g 
4) JDBC ����̹� ����: oracle.jdbc.OracleDriver 

- Eclipse ���� ����(Error 404--Not Found) 
The server has not found anything matching the Request-URI 
==> fla365-servlet.xml ������ Refresh �� 
==============================================================================================================

- �ֱ��ֹ���Ȳ(�ֹ�����) ���� ====> refresh ������ ����  
1. CartStageStr ��� 
1) http://bos.fla365.com/adminnew/order/summary.do ===> �ֹ���ȸ(������ ȭ��) 
2) src/logic/adminnew/OrderBean.java ���Ͽ��� 
public String getCartStageStr(){ 
return swFunct.getCartStageStr(this.getCartStage()); 
} 

3) src/utils/SwFunct.java ���Ͽ��� 
public String getCartStageStr(String stage){ 
int state = -1; 

  switch(state){ 
case 3:  str = "�����";  break; 
case 34:  str = "����غ���";  break; 
case 10:  str = "�ǸŰź�";  break; 
case 4:  str = "�����";  break; 
case 8:  str = "����Ȯ��";  break; 
case 5:  str = "��ǰ��û";  break; 
case 7:  str = "��ǰȮ��";  break; 
case 12:  str = "��ǰ�ź�Ȯ��"; break; 
case 6:  str = "��ȯ��";  break; 
case 14:  str = "��ȯȮ��";  break; 
case 13:  str = "��ȯ�ź�Ȯ��"; break; 
case 0: 
case 9: 
case 11:  str = "��ҵȰ�";  break; 
} 

return str; 
} 

2. CartStageStr ���� 
1) http://www.fla365.com/shop/main/main.do ===> ���� ȭ�� 
2) src/controller/user/shop/ShopMainController.java ���Ͽ��� 
public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception { 
//������ ���α׷� ó��   
this.shopSchedulerDao.setTodayScheduler(request); 
} 

3) src/dao/adminnew/goods/ShopSchedulerDao.java ���Ͽ��� 
public interface ShopSchedulerDao { 
//���� ������  �۵� 
void setTodayScheduler(HttpServletRequest request); 
} 

4) /ibatis/adminnew/Order.xml ���Ͽ��� 
<!--  cart�ֹ����� stage�� ����  --> 
<update id="setCartStageChange" parameterClass="map" > 
UPDATE sws_cart_ok SET $cartField$   ===> stage=8, moddate=TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS'),  bigo='�ڵ����Ž���' 
<dynamic>         
    <isNotEmpty property="where" prepend="where"> 
$where$       ===> where", "cartkey= 
    </isNotEmpty>            
</dynamic> 
</update>  
==============================================================================================================

- �Ǽ��� ���� ó�� ����(������) 
1. �ҽ� ���� �κ��� �����Ϳ��� 1:1�̸��� ������ �亯�� �� ��, ����Ʈ �������� ��θ� ���� 
build/classes/controller/adminnew/board/ManToManController.class 
2. �α��� �� �˻��� �ȵǴ� �κ� ���� 
Build/classes/controller/user/shop/ShopSearchController.class   
3. �ֱ��ֹ���Ȳ(�ֹ�����)  ===> ���� �ȵ� 
build/classes/dao/adminnew/goods/ShopSchedulerDaoImpl.class  
build/classes/ibatis/adminnews/Scheduler.xml 
==============================================================================================================

- flash ���� �Ǽ��� ����(����) 
/fla365/WebContent/common/xml/flashxml/mainEvent.xml(WEB-INF/common/xml/flashxml)  ===> ���� �̺�Ʈ flash ���� 
/fla365/WebContent/common/xml/flashxml/mainTheme.xml(WEB-INF/common/xml/flashxml)  ===> ��� flash ����  
/fla365/WebContent/common/xml/flashxml/newProduct.xml(WEB-INF/common/xml/flashxml)  ===> ������ flash ���� 
==============================================================================================================

- SK Telink ���� ����  
����� *@*.*, T) 070-7432-1608 
1. ����Ʈ : http://www.fla365.com, howmen/a111111, tamario/ssjtm881 
2. ������: http://bos.fla365.com, admin /flatjdrhd(fla����) 
==============================================================================================================

- ����90 ����ȸ ��� 
==============================================================================================================

������������������� 2010.08.10(ȭ) �۾� �������������������
---> 07:10 ~ 19:30 

- SK FLA365 �
- �ý��� ���� ����  
211.39.40.61 Oracle Linux 5.3  WEB1 root /sktl��1 
211.39.40.62 Oracle Linux 5.3  WEB2 root/sktl��2  
211.39.40.63 Oracle Linux 5.3  RUEL���� root/sktl���� 
211.39.40.64 Oracle Linux 5.3  AD4J���� root/sktl����  
211.39.40.55 Windows Ent 2008 NAS1 Administrator/HP10invent$           
211.39.40.56 Windows Ent 2008 NAS2 Administrator/HP10invent$    
http://bos.fla365.com:443 ������ ID/Passwd ����) ==> admin/flatjdrhd(fla����)  

[�ý���] 
211.39.40.53          Oracle Linux 5.3         WAS1  weblogic/webflajdrhd(webfla����) 
211.39.40.54          Oracle Linux 5.3         WAS2 weblogic/webflajdrhd(webfla����) 
211.39.40.57          Oracle Linux 5.3         BackOffice root/sktl��1 
211.39.40.58          Oracle Linux 5.3         ���߼��� weblogic/weblogic 
211.39.40.59          Oracle Linux 5.3         I/F ���� webadm/flatjdrhd(fla����) 
[WAS] 
weblogic           211.39.40.53    7001 flaadmin/flapassw0rd 
weblogic           211.39.40.54    7001 flaadmin/flapassw0rd 
==============================================================================================================

- �мǹ� ���� �м� 
���糲 ����(070-7018-7022 / *), *@*.* 
==============================================================================================================

- ��ǰ ��� ���� ���� 
http://localhost:7001/adminnew/product/reg_mody.do?shop_num=24252 
<CENTER><BR><IFRAME id=descFrame src="http://shop.cowon.com/spec/v5/v5.php?from=out&event=no&review=yes&aslink=yes" 
frameBorder=0 width=680 height=27000></IFRAME>  
<CENTER></CENTER></CENTER> 
==============================================================================================================

- ��ǰ�� ������� �Ǽ��� ��� 
�������� �����: http://211.39.40.58:7003/adminnew/calculate/distribution.do 
SB �����: http://211.39.40.58:7003/adminnew/calculate/SBCalculate.do 
����Ȯ�� �������: http://localhost:7001/adminnew/calculate/orderComplete.do 
<prop key="/adminnew/calculate/distribution.do">accountController</prop>  <!--// �������� �����  //--> 
<prop key="/adminnew/calculate/SBCalculate.do">accountController</prop>  <!--// SB �����  //--> 
<prop key="/adminnew/calculate/orderComplete.do">accountController</prop>  <!--// ����Ȯ�� �������  //--> 

<prop key="/adminnew/calculate/distribution.do">distributionList</prop>  <!--// �������� �����  //--> 
<prop key="/adminnew/calculate/SBCalculate.do">getSBCalculateList</prop>  <!--// SB �����  //--> 
<prop key="/adminnew/calculate/orderComplete.do">orderComplete</prop>  <!--// ����Ȯ�� �������  //--> 

String dist_code = RequestUtils.getStringParameter(request, "dist_code", ""); 
String seq_num = RequestUtils.getStringParameter(request, "seq_num", ""); 
String termSearch = RequestUtils.getStringParameter(request, "termSearch", ""); 
String startDate = RequestUtils.getStringParameter(request, "startDate", ""); 
String endDate = RequestUtils.getStringParameter(request, "endDate", ""); 


if ( swFunct.isNotZeroEmpty(seq_num) ){ 
whereQuery += " AND TO_NUMBER("+seq_num+") BETWEEN TO_NUMBER(SUBSTR(seq_num_st, 15, 5)) AND TO_NUMBER(SUBSTR(seq_num_end, 15, 5)) "; 
} 

if ( swFunct.isNotZeroEmpty(dist_code) ){ 
whereQuery += " AND dist_code='"+dist_code+"' "; 
} 

if ( swFunct.isNotZeroEmpty(startDate) && swFunct.isNotZeroEmpty(endDate) ){ 
whereQuery += " AND SUBSTR(dlv_date, 1, 10) BETWEEN '"+startDate+"' AND '"+endDate+"' "; 
} 

<prop key="/adminnew/giftcard/gcpin_approvelist.do">giftCardPinApprove</prop> 
K010D9-100714-00056 ~ 
if ( swFunct.isNotZeroEmpty(seq_reg_muid) ){ 
whereQuery += " AND seq_reg_muid='"+seq_reg_muid+"' "; 
}  
==============================================================================================================

- ������(*, *) (��)���� NTS �����̳� 
2010.08.19(��) ���з� 1�� �ⱸ, 19: 30 
==============================================================================================================

������������������� 2010.08.11(��) �۾� �������������������
---> 07:10 ~ 19:30  --> ����(��絿 ȣ����: ������ ������ ��) 

- SK FLA365 �
- �Ǽ��� ���� ���� 
/fla365/src/controller/adminnew/giftcard/GiftCardController.java 
/fla365/src/controller/adminnew/point/PointRegController.java 
/fla365/src/controller/adminnew/account/AccountController.java 
/fla365/src/dao/adminnew/account/AccountDao.java 
/fla365/src/dao/adminnew/giftcard/GiftCardDao.java  
/fla365/src/ibatis/adminnew/Account.xml  
/fla365/src/ibatis/adminnew/GiftCard.xml 
/fla365/src/ibatis/adminnew/Stat.xml  --> ������ 
/fla365/src/logic/adminnew/DistributionBean.java 
/fla365/src/logic/adminnew/GiftCardBean.java  
/adminnew/statistics/stat_member_detail.jsp  --> ������(��ó��) 
/adminnew/statistics/member_current.jsp    --> ������ 
/fla365/WebContent/WEB-INF/adminnew/calculate/distribution.jsp 
/fla365/WebContent/WEB-INF/adminnew/giftcard/promotion.jsp  
==============================================================================================================

- ���θ�� ������ ��� ��ȭ 
1. ���θ�� ��ǰ�� ����(/���θ�� ��ǰ�� �)(http://localhost:7001/adminnew/giftcard/promotion.do) 
/WEB-INF/secondadmin.xml  ==> ������ ī�װ� ����(/WEB-INF/adminnew/common/inc/lnb.jsp)  
  
2. ���θ�� POINT ����(������ F-POINT/�߱޵� F-Point)(http://localhost:7001/adminnew/giftcard/promotion_pop.do) 
<prop key="/adminnew/giftcard/promotion_pop.do">giftCardPromotionFPPoint</prop> 
<prop key="/adminnew/giftcard/promotio_excel_down.do">giftCardPromotionFPPointExcelDown</prop> <!--// ���θ�� POINT ����(���� �ٿ�ε�)  //-->   

- ��ǰ�� PIN Ȱ��ȭ ���_��ȭ��(http://bos.fla365.com/adminnew/giftcard/gcpin_approvelist_view.do)  
1. ��ǰ�� PIN Ȱ��ȭ ���_��ȭ��(��â) (http://bos.fla365.com/adminnew/giftcard/pop_gclist.do) 
==============================================================================================================

- SB ȸ������ ������ ����  
����� ���̵�  --> �Խ���/����/����,����/�߰����� (�ڸ��� in Life)�� �Խù��� �ø� ��¥�� �ð��� �־��ֽø�˴ϴ�.  
(�ߺ����� �Խ��ǿ� ���� �÷��� ��쿡�� ���� �Խù��� �������� �־� �ֽʽÿ�.) 

-- ����� ȸ������ TB ���� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
CREATE TABLE T_TEMP_TEST (   
SEQ_NO NUMBER, /* SEQ_NO */    
MEM_ID VARCHAR2(30) /* ȸ��ID */  
); 

--���� �Խ���  ���� Ȯ�� TEST ���̺�  ��ȸ   @@@@@@@@@@@@@  
SELECT  Z.SEQ_NO, Z.MEM_ID, 
       (  
        SELECT  MAX(B.REGDATE) REGDATE 
            FROM  SWC_BBS B 
            WHERE  TRIM(B.WRITER) = TRIM(Z.MEM_ID) 
            GROUP BY B.WRITER 
            )  REGDATE 
FROM T_TEMP_TEST Z 
ORDER BY Z.SEQ_NO 
--; 
==============================================================================================================

- �ѱ�����Ŭ Diagnostic for WebLogic ���� ���� 
1. AD4J ����(����Ŭ)  ==> �ý��� ����͸� �� 
2. ��Ʈ Ȳ�ο� ����, ���ϼ� ���� 
==============================================================================================================

������������������� 2010.08.12(��) �۾� �������������������
---> 06:40 ~ 19:30 

- SK FLA365 �
- SSL ���� 
/shop/login/login.jsp ���Ͽ��� 
public ModelAndView memberLogin( 
//DB ��ȸ �� ó�� ��  
return getReturnModel(null, "http://www.fla365.com/shop/main/main.do?locale="+amemberBean.getNation());  // main���� �̵� 
} 

�α���: http://www.fla365.com/shop/login/login.do 
ȸ������: http://www.fla365.com/shop/login/join.do 
ȸ������: http://www.fla365.com/shop/mypage/modify_acc.do  
���̵� ã��: http://www.fla365.com/shop/login/pop_findid.do 
��й�ȣ ã��: http://www.fla365.com/shop/login/pop_findpw_mobile.do  
==============================================================================================================

- ����Ȯ�� ó�� ��� ���� 
������ ����� ȭ�鿡��(http://bos.fla365.com/adminnew/order/delivery.do) 
/OrderBean.java ���Ͽ���  
public String getShopShipCommon_V(String stageStr, String cartkey, String orderCode) { 
} 
==============================================================================================================

- �ſ�ī�� ���� ���� 
/fla365/WebContent/WEB-INF/shop/shoppingbag/shoppingbag_payment.jsp 
<!--// <input type="radio" name="payment" onclick="javascript:change_payType('CARD');" /> 
<spring:message code="shoppingbag.shoppingbag_payment.text.paymentcard" /></label> 
==============================================================================================================

- ����Ȯ�� �������(http://localhost:7001/adminnew/calculate/orderComplete.do) ���� 
<prop key="/adminnew/calculate/orderComplete.do">orderComplete</prop>  <!--// ����Ȯ�� �������  //--> 

<!-- ����Ȯ�� ������� ����Ʈ��  --> 
<select id="getOrderCount" parameterClass="map" resultClass="int">  
<!-- ����Ȯ�� �ֹ��� ����Ʈ �� --> 
<select id="getOrderCount2" parameterClass="map" resultClass="int"> 

springframework ���� ������ ������ ===>  
org.springframework.dao.DataIntegrityViolationException: (SqlMapClient operation): data integrity violated by SQL '';  
nested exception is com.ibatis.common.jdbc.exception.NestedSQLException:    
--- The error occurred while applying a parameter map.   
--- Check the account.getOrderCount-InlineParameterMap.   
--- Check the statement (query failed).   
--- Cause: java.sql.SQLDataException: ORA-01861: literal does not match format string 

com.ibatis.common.jdbc.exception.NestedSQLException:    
--- The error occurred while applying a parameter map.   
--- Check the account.getOrderCount-InlineParameterMap.   
--- Check the statement (query failed).   
--- Cause: java.sql.SQLDataException: ORA-01861: literal does not match format string 
==============================================================================================================

- �Ķ���� ���� 
�ֹ�����(http://211.39.40.58:7003/shop/shoppingbag/shoppingbag_payment.do) 
http://blog.naver.com/sungil108?Redirect=Log&logNo=150083361558 
http://blog.pages.kr/167 
- Paros�� ���� ���� ���� ��� ��ġ ��� 
1) ���� �ڹ��� ��� Ȯ�� 
C:\Program Files\Java\jre1.5.0_06\bin ���� java.exe�� �����ϴ��� Ȯ�� ==> C:\Program Files (x86)\Java\jre6\bin\java.exe 
2) ����ȭ��-> ����ǻ��->���콺 ������ �������(�Ӽ�) =>���-> 'ȯ�溯��' ��ư=> �ý��� ���� => path ����Ŭ�� 
���� ���� ���� ������ �κп� 
;C:\Program Files\Java\jre1.5.0_06\bin; �߰� 
3)Ž����� C:\Program Files\Paros\paros.jar ����Ŭ���Ͻø� �˴ϴ�.  
--------------------------------------------------------------------------------------------------------------------- 

- ������7 ȯ�溯�� ���� 
������ ==> �ý��� �� ���� ==> �ý��� ==>��� �ý��� ����: ��� --> ȯ�溯�� --> �ý��� ���� --> path ����Ŭ�� 
(C:\Program Files (x86)\Java\jre6\bin �߰�) 
C:\Users\tama> path  --> cmd 
==============================================================================================================

01. ����������(ODH(����Ŭ �迭)) 
===> FTP�� �����ִ� ���� ���� �����̹Ƿ� �ý��� ���������� �۾��� �ؾ� �� ������ ������ 
������: 211.39.40.61, root /sktl��1  ==> 
������: 211.39.40.61  Port:22, wiselog/fhrmqnstjr 
���� ����: /data/logs/ 

1. ������ ���� ���� ��ɾ� 
[weblogic@sktlwas2 ~] useradd -d /data/logs wiselog -->  ���� ���� 
[weblogic@sktlwas2 ~] passwd fhrmqnstjr 
[weblogic@sktlwas2 ~] tail /etc/passwd 
[weblogic@sktlwas2 ~] LANG=C    --> ���� ���� �ذ� 
[weblogic@sktlwas2 ~] passwd wiselog ->  FTP �н����� ����(root����) 
[weblogic@sktlwas2 ~]$ passwd    -->  FTP �н����� ����  
(current) UNIX password:  
New UNIX password:  
Retype new UNIX password: 
[weblogic@sktlwas2 ~] ps -ef grep sample.m 
  
 2.1. Cronolog Install 
���α׸� �Ϻ��� ����� ���ؼ� ���� ���α׷��� ������ cronolog�� ����մϴ�.  
�ش� ���α׷��� �Ʒ� ����Ʈ���� �ֽ� ������ �ٿ� ���� �� �ֽ��ϴ�.( ���� 1.6.2 ������ �ֽ� �����Դϴ�. ) 

http://www.cronolog.org  
Linux, Unix �迭 �ý��ۿ��� cronolog�� ��ġ�ϴ� ����� ������ �����ϴ�. 

$) tar xvzf cronolog-1.6.2.tar.gz 
$) cd cronolog-1.6.2 
$) ./configure 
$) make 
$) cp src/cronolog /ora_web/Oracle_WT1/bin  

- ������ �⵿(211.39.40.61, webadm/webadm) 
/[webadm@sktlweb1 ~]$ /ora_web/startOHS.sh 
/[webadm@sktlweb1 ~]$ /ora_web/stopOHS.sh  
- ������ �������� 
/ora_web/Oracle_WT1/instances/instance1/config/OHS/ohs1/httpd.conf 


$> useradd -u [����ID] -g [�׷�ID or �׷��] -s [���Ǵ� SHELL] -d [���� Home ���丮] �����̸� 
$> passwd �����̸�  
$> useradd -u 501 -g 500 -s /bin/ksh -d /home/oracle oracle 
$> passwd oracle 
------------------------------------------------------------------------------------------------------- 

- ����������(ODH(����Ŭ �迭)) ��ġ ���� 
/ora_web/Oracle_WT1/instances/instance1/bin/opmnctl startall 
==============================================================================================================

- ����� �ҽ� ���� ��û 
/WEB-INF/classes/controller/adminnew/stat/StatController.class  
/WEB-INF/classes/ibatis/adminnew/Stat.xml  
/WebContent/WEB-INF/adminnew/statistics/category_statistics.jsp 
/WebContent/WEB-INF/adminnew/statistics/member_current.jsp 
/WebContent/WEB-INF/adminnew/statistics/order_item.jsp 
/WebContent/WEB-INF/adminnew/statistics/order_price.jsp 
/WebContent/WEB-INF/adminnew/statistics/order_product.jsp 
/WebContent/WEB-INF/adminnew/statistics/sales_statistics.jsp 
/WebContent/WEB-INF/adminnew/statistics/sales_vender.jsp 
/WebContent/WEB-INF/adminnew/statistics/stat_member.jsp 
/WebContent/WEB-INF/adminnew/statistics/stat_ord_member.jsp 
/WebContent/WEB-INF/adminnew/statistics/statistics.jsp 
==============================================================================================================

������������������� 2010.08.13(��) �۾� �������������������
---> 07:00 ~ 19:30 

- SK FLA365 �
- �Ķ���� ���� 
�ֹ�����(http://211.39.40.58:7003/shop/shoppingbag/shoppingbag_payment.do) 
==============================================================================================================

-  ���� ȭ�� flash ���� ��� ���� �߻�(17 ~ 23��)  
����: �ۺ��Ű� ������ ȭ�鿡 �÷��� ���� ��� ����� �ִٴ� ���� ��(�輺�� �븮 ������ �� ������) 

- ���� ȭ�� flash ���� Display 
/main.jsp���� 
<sws:getBanner exhibition_cd="034001" exp_1depth_cd="029001" exp_2depth_cd="031001"> 
<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/ 
cabs/flash/swflash.cab#version=7,0,0,0" width="330" height="374"> 
<param name="movie" value=":IMG:" /> 
<param name="wmode" value="opaque" />  
<object type="application/x-shockwave-flash" data=":IMG:" width="330" height="374"> 
<param name="wmode" value="opaque" /> 
</object>  
</object> 
</sws:getBanner> 

1. /src/shopmaker/Banner.java ���Ͽ��� 
public int doEndTag() throws JspException{ 
ExhProductBean exhProductBean = this.exhDao.getFrontBanner(exhBean); 
} 

-- ���� �̹��� ����  ��ȸ @@@@ 
SELECT * FROM SWS_SHOP_EXH_PRODUCT  
WHERE USE_YN = 'Y'  
    AND EXH_NUM = ( SELECT NUM FROM SWS_SHOP_EXH 
                                WHERE EXHIBITION_CD = '034001'    
                                    AND  EXP_1DEPTH_CD = '029001'                    
                                    AND EXP_2DEPTH_CD  = '031001' 
                               )       
 --; 
==============================================================================================================

- STOCKS 
��(4,585), ȭ(4,745), ��(4,740), ��(4,620), ��(4,520) 
==============================================================================================================

������������������� 2010.08.14(��) �۾� �������������������
---> 06:30 ~ 22:0  --> �ۺ� ������(07:50 ~ 17:00) 

- KCISA Study
07:00 ��� 
07:50 �ۺ� ������ ���� 
08:00 �ٽ� ���  
17:30 �Ͱ� 
01:20 ��ħ 
==============================================================================================================

������������������� 2010.08.15(��) �۾� �������������������
---> 06:10 ~ 00:00 

�������౸ 
06:10 ���  
07:00 �ű��ʵ��б� 
07:40 ����(0:2 ��) 
08:50 ����(2:1 ��) 
10:20 ���� 
11:20 �̹� 
11:50 �Ͱ� 
21:00 ���� NTS �̼��� ���忡�� ���� �߼�(SK FLA365 SM ������) 
00:00 ��ħ 
==============================================================================================================

������������������� 2010.08.16(��) �۾� �������������������
---> 07:10 ~ 18:00 --> ö�� ����(����ȯ �̻�, ���ϼ� ����): ���� ���߰� �輺�� �븮 ������ ö���Ѵٰ� �� 

- SK FLA365 �
- ������ ����(OHS(����Ŭ �迭))  ===> ���α� ��ġ 
===> FTP�� �����ִ� ���� ���� �����̹Ƿ� �ý��� ���������� �۾��� �ؾ� �� ������ ������ 
������: 211.39.40.61, root /sktl��1  ==> Port:22, wiselog/fhrmqnstjr  
OracleHome = '/ora_web/Oracle_WT1'; 
OracleInstance = '/ora_web/Oracle_WT1/instances/instance1'; 
 2.1. Cronolog Install 
���α׸� �Ϻ��� ����� ���ؼ� ���� ���α׷��� ������ cronolog�� ����մϴ�.  
�ش� ���α׷��� �Ʒ� ����Ʈ���� �ֽ� ������ �ٿ� ���� �� �ֽ��ϴ�.( ���� 1.6.2 ������ �ֽ� �����Դϴ�. ) 
http://www.cronolog.org 
Linux, Unix �迭 �ý��ۿ��� cronolog�� ��ġ�ϴ� ����� ������ �����ϴ�.  
$) tar xvzf cronolog-1.6.2.tar.gz 
$) cd cronolog-1.6.2 
$) ./configure 
$) make 
$) cp src/cronolog /ora_web/Oracle_WT1/ohs/bin  ==> /ora_web/Oracle_WT1/ohs/bin   ===> cronolog ���� 
$) cd /ora_web/Oracle_WT1/instances/instance1/diagnostics/logs/weblog  
$) more access.20100816 

/ora_web/Oracle_WT1/instances/instance1/diagnostics/logs/weblog ===> access.20100816(�α� ����) 
/ora_web/Oracle_WT1/instances/instance1/config/OHS/ohs1 ===> httpd.conf ���� ���� 
LogFormat "%h %l %u %t \"%r\" %>s %b \"%{Referer}i\" \"%{User-Agent}i\" \"%{Cookie}i\"" combined 
CustomLog "${ORACLE_HOME}/ohs/bin /data/logs/access.%Y%m%d" combined 
----------------------------------------------------------------------------------------- 
- ������ �⵿(211.39.40.61, webadm/webadm) 
/[webadm@sktlweb1 ~]$ /ora_web/stopOHS.sh 
/[webadm@sktlweb1 ~]$ /ora_web/startOHS.sh 
==============================================================================================================

- ���� ������ ���� �� ���� ���� 
1) ������� > �ǸŴ�� ���� ���  
������ ���� ������ ���� (���� ����� ����Ȯ���� ��¥ �� �ݾ� ���� �Դϴ�.)  
-  ������ Ȯ�� ��¥�� ���� ������ ���߿��� ���Ͻø� �˴ϴ�. 
2) ������� > ��ǰ�� ������� > �������� ����� / SB ��� ���� / ����Ȯ�� �������  
- �ϴ� 3���� �޴� ��� �˻��� ���� �ʽ��ϴ�. 
3) ������� > ��ǰ�� ������� > ����Ȯ�� ���� ��� 
-   ���� ������ �����ϸ� ȭ�鿡 ���̴� �͸� ������ ���� �˴ϴ�. 
 �⺻ ȭ�鿡���� ������ ������ �����ϸ� ��� ������ ������ ����˴ϴ�. 
 �˻� ��� ȭ�� (�� ����� �˻��� �̿�)������ �˻� ��� ������ ��� ������ ����˴ϴ�. 
-  ������ �ش� �����͸� ���� �ϱ� ����� �մϴ�. (�⺻-��ü / �˻� ���� ������ ����� ) 
==============================================================================================================

- �Ķ���� ���� 
�ֹ�����(http://211.39.40.58:7003/shop/shoppingbag/shoppingbag_payment.do) 
==============================================================================================================

������������������� 2010.08.17(ȭ) �۾� �������������������
---> 07:00 ~ 18:00 

- SK FLA365 �
- SSL ���� 
(�ѱ��������� �۷ι� ������ : 02-3019-5555), *@*.*, Homepage : www.crosscert.com 
�α���: http://www.fla365.com/shop/login/login.do  --> ó�� 
/controller/common/LoginController.java ���Ͽ��� 
public ModelAndView memberLogin( 
return getReturnModel(null, "http://www.fla365.com/shop/main/main.do?locale="+amemberBean.getNation());  // main���� �̵� 
}  
ȸ������: http://www.fla365.com/shop/login/join.do  --> ó�� 
/fla365/WebContent/WEB-INF/shop/login/join_done.jsp  
ȸ������: http://www.fla365.com/shop/mypage/modify_acc.do  
���̵� ã��: http://www.fla365.com/shop/login/pop_findid.do      --> ó�� 
��й�ȣ ã��: http://www.fla365.com/shop/login/pop_findpw_mobile.do  
��й�ȣ ����: https://www.fla365.com/shop/mypage/changepw.do 
public ModelAndView memberList(HttpServletRequest request, 
HttpServletResponse response) throws Exception { 
model.put("returnUrl", "http://www.fla365.com/shop/login/login_out.do"); 
//model.put("returnUrl", request.getContextPath()+"/shop/login/login_out.do"); 
} 

F- POINT ����:https://www.fla365.com/shop/mypage/fpoint.do  --> ó�� 
/controller/adminnew/point/PointRegController.java ���Ͽ��� 
public ModelAndView handleRequest() { 
model.put("location", "http://www.fla365.com/shop/mypage/fpoint.do"); 
} 
==============================================================================================================

- ���α� ��ġ 
�ݽ��� ��ΰ� Tel: 070-4027-7451 
==============================================================================================================

- VB.NET(www.frelec.co.kr) ������ ���� ����(5õ��: �Ѵ�) �� ���� ���� ���� 
==============================================================================================================

������������������� 2010.08.18(��) �۾� �������������������
---> 07:00 ~ 18:00  ---> �� ö�� 

- SK FLA365 �
- SSL ���� 
�ѱ��������� �۷ι� ������: 3019-5555, *@*.* 
�α���: http://www.fla365.com/shop/login/login.do  --> ����  
ȸ������: http://www.fla365.com/shop/login/join.do  --> ���� 
/fla365/WebContent/WEB-INF/shop/login/join_done.jsp 
ȸ������: http://www.fla365.com/shop/mypage/modify_acc.do  --> ���� 
���̵� ã��: http://www.fla365.com/shop/login/pop_findid.do --> ���� 
��й�ȣ ã��: http://www.fla365.com/shop/login/pop_findpw_mobile.do --> ���� 
��й�ȣ ����: https://www.fla365.com/shop/mypage/changepw.do  --> ����(ajax --> actoin���� ����) 
F- POINT ����:https://www.fla365.com/shop/mypage/fpoint.do  --> ����  
==============================================================================================================

- �������� 
1. �Ϸ�� ���� 
1) SSL ����(�Ǽ��� ���� �Ϸ�) 
�α���: http://www.fla365.com/shop/login/login.do 
ȸ������: http://www.fla365.com/shop/login/join.do 
ȸ������: http://www.fla365.com/shop/mypage/modify_acc.do 
���̵� ã��: http://www.fla365.com/shop/login/pop_findid.do 
��й�ȣ ã��: http://www.fla365.com/shop/login/pop_findpw_mobile.do 
��й�ȣ ����: https://www.fla365.com/shop/mypage/changepw.do 
F- POINT ����:https://www.fla365.com/shop/mypage/fpoint.do 
 ��. ���� ������ ��ü 
 - �ѱ��������� �۷ι� ������: 02-3019-5555, *@*.*, www.crosscert.com 
--------------------------------------------------------------------------------------------------------- 

2)  ī�װ� Best ��ǰ �ø���(http://www.fla365.com/shop/shopping/category_list.do?searchCateCode=001004000000) 
- ���� ������ ȭ�鿡 �� ����� �������� �ʾƼ� SQL������ ī�װ��� Best ��ǰ �����Ͽ� �ø� 
--------------------------------------------------------------------------------------------------------- 

3) [������] ��� ���� ��� �߰�(�Ϸ� ������ ���� �Ұ�) 
- ��ȭ��� ���� ȭ�� ����(http://angle.fla365.com/customer/operate/phone_view.do?page=1&searchField= &searchText=
&num=212&searchStage=&muid=) 
- 1:1 �̸��� ��� ���� ȭ�� ����(http://angle.fla365.com/customer/operate/email_view.do?page=1&searchField= 
&searchText=&num=582&searchStage=&reply_yn=&searchNation=) 
--------------------------------------------------------------------------------------------------------- 

4) [������] ����Ȯ�� ó�� ��� ���� 
- ������ ����� ȭ�鿡�� ����Ȯ�� ó�� ��� ó�� �Ұ����ϰ� ó�� 
========================================================================================================= 

2. �̿Ϸ�� ���� 
1) ���α� �м�  
==> �Ǽ����� ��� ���� �Ϸ� �Ǿ� �ְ� (��)�ݽ��� ��ΰ� ������ �Ǽ������� �׽�Ʈ �ϰ� ���� 
01. ������ ���� 
��������/������ IP:  211.39.40.61(.62)  ==> .62�� �������� .61�� ������ ��� ȯ���� ���� 
FTP ���ӿ� ���̵�/�н�����: wiselog/fhrmqnstjr  
FTP ���� ��Ʈ : 22  
�αװ� ����Ǵ� ���丮 : /ora_web/Oracle_WT1/instances/instance1/diagnostics/logs/weblog 
�α����ϸ� : access.20100816 

02. ������������  
  1. ���� ��Ű ����(�Ǽ��� ���� �Ϸ�) 
===> �Ʒ� ó�� header.jsp�� ������ �ϰ� �˾����� �������� ������� �ʴ� �κ��� ������ ã�ư��鼭 ������ 
<scriptlanguage=��javascript�� src='/common/js/makePCookie.js'></script>  <!--// ���α� ��ġ(���� ��Ű ����) //--> 

 2. ��Ű�� ���α��� ����� ���̵� ���� �����(�Ǽ��� ���� �Ϸ�) 
===> /LoginController.java ���Ͽ��� �α��� �� ��ȯ�Ǵ� getMuid�� �̿��ؼ� ��Ű�� ���� 
Cookie cookie = new Cookie("UID", amemberBean.getMuid()); 
cookie.setPath("/"); 
response.addCookie(cookie); 

03. DB����(��DB�� ���� �Ϸ�) 
1. ȸ�� View ���� 
  ===> 1) ��κ��� ���翡�� ȸ��id;����;���ɴ�;���� ������ View ������ �ϰ� ���� 
CREATE OR REPLACE FORCE VIEW FLAMALL.SWM_MEMBER_WLOG 
(  ID,   SEX,   AGE,   ARE ) 
AS 
   SELECT M.MUID AS id, 
          DECODE (M.SEX,  '1', '��',  '2', '��') AS sex, 
          TO_NUMBER ( SUBSTR ( TO_CHAR (SYSDATE, 'YYYY') - 1899 - 100 * (CEIL (SUBSTR (M.IDB, 0, 1) / 2) - 1) - SUBSTR (M.IDA, 1, 2), 0, 1)) * 10  '��' age, 
          SUBSTR (M.ADDRESS, 0, 2) AS are  
     FROM SWM_MEMBER M 
--; 
;  
          2) ������ �߰��� View(��ǰ DB, ��ǰ ī�װ�DB)�� (��)SK �ڸ�ũ �輺�� �븮�԰� �����ؾ� �� �� ����  
   ��. ���� ������ ��ü 
 - (��)�ݽ��� ��ΰ� Tel: 070-4027-7451 
--------------------------------------------------------------------------------------------------------- 

2) ����༺(����) ��� ó�� 
- 2010.08.11 ��� ������ ���ķ� ó�� ���� 
- ���� ���� ÷��(SKT�����_üũ����Ʈ_�ܱ���������θ�(APP)_v1.0.xls) 
- SSL �����߱� ������ ó���ؾ� �� ������ ���� �پ� ��Ŷ� ������ 
--------------------------------------------------------------------------------------------------------- 

3) [������] ���θ�� ��ǰ�� ���� ����(http://bos.fla365.com/adminnew/giftcard/promotion.do) 
- 80% �̻� ���� �Ϸ� 
- ���� ���������� �����ϴ� List ȭ�� ���� 
- ����Ʈ ȭ�鿡�� PIN Ȱ��ȭ �� PIN �ߺ� ��� �����ϰ� ���� 
- ���θ�� POINT ���� List ȭ��(��â) ���� ==> ��ó�� 
==============================================================================================================

������������������� 2010.08.19(��) �۾� �������������������
---> 07:10 ~ 18:00  ---> SK FLA365 � ö�� 

- SK FLA365 �
- ���� �μ� �ΰ� 
1. ���߼��� �μ� �ΰ� ������ ����(211.39.40.58, weblogic/weblogic) 
1) ���: /ora_was/00. fla365_BackUp_Data 
2. ���� ���� ���� ���� �߼� 
����� �븮: *@*.* 
3. �μ� �ΰ� ȸ��(15:00 ~ 15:40) 
����ȯ �̻�, �� �ϼ� ����, ����� �븮 
==============================================================================================================

������������������� 2010.08.20(��) �۾� �������������������
---> 07:10 ~ 18:00 

- TAMA_HouseK_Book
- VB.NET ���ͳ� ���� ���� 
==============================================================================================================

- �� �ȱ�(ȣ�� ��ȥ)   
�ﰢ����(4ȣ��) --> 110B(�������) --> �ѳ��� �ֹμ��� ���� 
�赵���� ��: ���� ��걸 �ѳ��� 684-63 (����9�� 25) 

19:00 �ѳ��� �ֹμ��� ���� 
19:10 �Ӹ�, �Ӹ� ���� ���� ���� 
19:20 Ŀ�Ǽ�
20:10 �¿�, ���� ���� 
20:15 �� �ȱ� 
20:20 ������������ ���� 
22:00 ���� 
22:20 �籸(80���� �������� �̱�)2010-08-23 
23:20 ����(�Ӹ�, ����, �¿�) 
02:40 �籸 
03:30 �Ӹ� ���� ��(��Ƽ��)�� �¿��̰� �ŵ�����(1�� �ⱸ) ��ó �켺 1�� ����Ʈ�� �¿��� 
04:00 �ý� 
05:00 �Ͱ�(�¿�) 
==============================================================================================================

- �ʱ���� �հ��� ��ǥ 
01. �����׻������(13),02. SE(15), 03. DB(16), 04. SF(11), 05. ����(8) ==> ����: 63��(���: 52.5��) 
18 17 18 10 15  ===> 78(���� ����  ====> ĿƮ���� 83��(����) 
==============================================================================================================

- STOCKS 
��(4,595), ȭ(4,640), ��(4,550), ��(4,490), ��(4,600) 
==============================================================================================================

������������������� 2010.08.22(��) �۾� �������������������
---> 06:10 ~ 00:00 

�������౸ 
06:10 ���  
07:00 �ű��ʵ��б� 
07:40 ����(0:2 ��) 
08:50 ����(2:3 ��): 30��: 40�� 
09:40 ����  
10:20 �Ͱ� 
12:20 ���ƺ�� ������(�Ż翪 6�� �ⱸ): ��ȣ�� ��ȥ��: ��������, �ϳ�, ��ȯ, ����, �ĳ�(�� ����) 
13:20 �߽�(����) 
15:00 ȣ���� 
16:00 W ȣ�� ��ħ �������(�Ӹ�, �赵����(ģ�� 2��), �¿�, ����, ��ȯ, �ĳ�(�� ����)) 
19:40 ���� 
19:40 ��õ�� ȣ����(�¿�, ����) 
23:00 ���� 
23:50 �Ͱ� 
==============================================================================================================

������������������� 2010.08.23(��) �۾� �������������������
---> 08:10 ~ 23:00 

- TAMA_HouseK_Book
- VB.NET ���ͳ� ���� ���� 
==============================================================================================================

- �¿� �۱� 
�ϳ� ���� 581-910048-19907  ȣ�� ����ī 14����(���� 5������ ȣ���� ��)  ===> ������񿡼� ó���� �� 
==============================================================================================================

- ����� 
1. LG���� R-B247GV --> 318,750��(�Һ�����:34.1kwh(��): 5���)  
http://itempage.auction.co.kr/detailview.aspx?itemNo=A527646638  
2. LG���� R-B247QV --> 280,360��(�Һ�����:37.5kwh(��)) 
http://itempage.auction.co.kr/detailview.aspx?itemNo=A541928003 
==============================================================================================================

������������������� 2010.08.24(ȭ) �۾� �������������������
---> 08:10 ~ 23:00 

- TAMA_HouseK_Book
- TAMA_HouseK_Book(VB.NET �̿�)  
==============================================================================================================

������������������� 2010.08.25(��) �۾� �������������������
---> 08:10 ~ 23:00 

- TAMA_HouseK_Book
- TAMA_HouseK_Book(VB.NET �̿�)  
==============================================================================================================

- ���� Ȱ�� 
(��) Made in Heaven ITO ����� ������ ���� T)011-1724-4565, *@*.* 
==============================================================================================================

������������������� 2010.08.26(��) �۾� �������������������
---> 08:10 ~ 23:00  

- TAMA_HouseK_Book
- TAMA_HouseK_Book(VB.NET �̿�)  
REGSVR32 D:\TAMA_DATA\02_My_DOCUMENT\02_My_Project\Project_VB\OCX\cc_cExcelPrint.dll 
==============================================================================================================

������������������� 2010.08.27(��) �۾� �������������������
---> 08:10 ~ 23:00  

- TAMA_HouseK_Book
- TAMA_HouseK_Book(VB.NET �̿�) 
==============================================================================================================

������������������� 2010.08.28(��) �۾� �������������������
---> 08:10 ~ 00:00  

- TAMA_HouseK_Book
- �𷡽ð�(1 ~25) 
==============================================================================================================

������������������� 2010.08.30(��) �۾� �������������������
---> 08:10 ~ 00:00  

- TAMA_HouseK_Book
- TAMA_HouseK_Book(VB.NET �̿�)  
==============================================================================================================

������������������� 2010.08.31(ȭ) �۾� �������������������
---> 08:10 ~ 00:00  

- TAMA_HouseK_Book
- TAMA_HouseK_Book(VB.NET �̿�) 
==============================================================================================================

- ���̹� �˻� ��� 
�˻������ �� ���� ������� ����Ʈ �˻��� ���� �˻��� ��� ��� �� 
https://submit.naver.com/regist.nhn ===> ���� ��ü ���� ��� 
��ȭ���(ARS) ��ȣ �ȳ� 1588-3820 + 1�� + 1��, FAX: 02-3469-3906 
���̹� ������ ���� ����(1544-9876): ===> 3���� 2,178,000�� 
==============================================================================================================

- ���� 
1. ����ī�� ��ȸ�ǻ�翪 1�� �ⱸ ������ ����  H.P) *, 08.31(ȭ) 14�� 30�� 
============================================================================================================== 
�����������������������������������������������������������
+--------------------------------------------------------// End //----------------------------------------------------------+ 
����������������������������������������������������������� 