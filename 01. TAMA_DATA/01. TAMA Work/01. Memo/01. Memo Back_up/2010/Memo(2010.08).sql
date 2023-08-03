

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2010.08) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2010.08.01(일) 작업 ■■■■■■■■■■■■■■■■
---> 06:00 ~ 00:00 

- 누나, 은아 방문2
06:10 기상 
06:20 버스(641번)   
	==> 461(낙성대 입구) --> 5002(뱅뱅사거리) --> 캐리비안베이(차비 2천원)  --> 1A주차장 ==> 비추천(서서 가야 함) 
06:50 버스(5002(뱅뱅사거리): 서서 감) 
07:40 에버랜드 주차장 
07:50 표 끊기(자유 이용권: 어른 2(KB카드 20% DC: 52,000원), 어른 1(일반: 65,000원)) 
08:00 김밥 
08:05 캐리비안베이 입장 
08:10 코인 구매(3만원), 라카키(6천원), 구명조끼(KB 카드 결제로 무료)
08:20 탈의실(수영복, 수영모 착용) 
08:30 구명조끼 렌트 
08:40 놀이기구 탐(작은누나, 은아) 
08:40 놀이기구 탐2(은아): 4시간 기다림 
13:00 중식(돈까스) 
15:00 파도 타기 
17:00 종료 
18:00 버스(1500-2번 버스(캐리비안베이) --> 5435번 버스(오산당병원: 사당역 근처)) 
19:40 석식(놀부보쌈: 누나가 쏨) 
20:40 귀가
23:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.08.02(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:50 ~ 19:00 

- SK FLA365 운영
- 웹취약성 점검 확인 요청 ==> 도관호 과장 
http://www.fla365.com/WEB_INF/web.xml 
http://www.fla365.com/shop/shopping/product_detail.do?shop=3734' or 1=1 -- 
http://www.fla365.com/WEB_INF/web.xml 
http://bos.fla365.com/common/inc/pop_orgAdd.do?fname=img1&msection=0&imgfname=underfined 
http://bos.fla365.com/common/product/cate_l_list.do?mode=getXML&depth=2&cateCode=0020000000000 
   
- XSS(Cross Site Scripting) 취약성 제거(/shop/lifeinkorea/free_write.jsp ) 
test<script>alert("[test]");</sctipt>  ==> test&lt;script&gt;alert(&quot;[test]&quot;);&lt;/sctipt&gt; 
- 어드민 계정관리 
http://bos.fla365.com/adminnew/manage/manage_account_master.do 

- 게시판 등록 
http://bos.fla365.com//fla365/WebContent/WEB-INF/shop/lifeinkorea/free_write.jsp 
1. /fla365/WebContent/adminnew/common/js/general_bbs_list.js파일에서 
function bbsSave(){ 
$('title').value = XSSEncode($('title').value);  //제목 --> XSS 취약성 제거(특수 문자 치환)  
} 

2. /fla365/WebContent/common/js/common/Base.js 파일에서 
function XSSEncode(text){  //XSS 취약성 제거 함수(특수 문자 치환)  
if ( !text ) 
return '' ;  
text = text.replace( /&/g, '&amp;' ) ; 
text = text.replace( /</g, '&lt;' ) ; 
text = text.replace( />/g, '&gt;' ) ; 
//alert("[/Base.js] [XSSEncode()] [text]" + text); 

return text ; 
} 
==============================================================================================================

- 주문현황 상태 에러(http://211.39.40.58:7003/adminnew/order/summary.do) 
1. /fla365/src/utils/SwFunct.java 파일에서 
public String getCartStageStr(String stage){ 
int state = -1; 

  switch(state){ 
case 3:  str = "배송전";  break; //=======> 에러 발생(추정) 
case 34:  str = "배송준비중";  break; 
case 10:  str = "판매거부";  break; 
case 4:  str = "배송중";  break; 
case 8:  str = "구매확정";  break; 
case 5:  str = "반품요청";  break; 
case 7:  str = "반품확정";  break; 
case 12:  str = "반품거부확정"; break; 
case 6:  str = "교환중";  break; 
case 14:  str = "교환확정";  break; 
case 13:  str = "교환거부확정"; break; 
case 0: 
case 9: 
case 11:  str = "취소된건";  break; 
} 

return str; 
} 
==============================================================================================================

- 다국어 선택시 첫 페이지 이동 변경(http://211.39.40.58:7003/shop/flamenual/flamenual1_1.do) 
1. /fla365/WebContent/common/js/common/Base.js 파일에서 
function changeLocale(locale){ 
if(myLink.indexOf('/flamenual') > 0){ //쇼핑몰 이용안내 이면(새창 띄기) 
myLink = "flamenual1_1.do"; 
} 
} 
==============================================================================================================

- SVN 사용법 
1. Eclipse 실행 
2. SVN Repositry 클릭 
3. Checkout 클릭(skd1/skd1) 
4. 받기 완료  
==> 주의: 파일 작업 전 Team --> Synchronzie withh Repositry 클릭 
        파일 작업 후 Team --> Commit 클릭 
==============================================================================================================

- 메인 이미지 수정 
http://211.39.40.58:7003/upfile/2010-06-17/2f805503-739d-4165-96f7-3acdb6181fc7.jpg 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.08.03(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:10 ~ 21:00  --> 자리 이동(14층 --> 16층), 중식(김성식 대리가 쏨), 야근(석식) 

- SK FLA365 운영
- 변경된 파일 
D:/workspaces/default/fla365/WebContent/images/button/btn_buynow.gif 
D:/workspaces/default/fla365/WebContent/images/icon/ico_lang_kr4.gif  ---> 여러개 
D:/workspaces/default/fla365/WEB-INF/common/inc/header.jsp  
D:/workspaces/default/fla36/WebContent/WEB-INF/shop/login/join.jsp   
D:/workspaces/default/fla365/WebContent/WEB-INF/adminnew/giftcard/pin_view_no.jsp 
D:/workspaces/default/fla365/WebContent/WEB-INF/adminnew/giftcard/sbcode.jsp 
D:/workspaces/default/fla365/WebContent/WEB-INF/adminnew/giftcard/gcnum_searchview.jsp 
D:/workspaces/default/fla365/WebContent/WEB-INF/adminnew/giftcard/sbcode_modifylist.jsp 
D:/workspaces/default/fla365/WebContent/WEB-INF/adminnew/order/summary.jsp 
D:/workspaces/default/fla365/WebContent/WEB-INF/adminnew/product/product_joint.jsp 
==============================================================================================================

- 국적 수정(회원 가입시) 
http://211.39.40.58:7003/shop/login/join.do?locale=ko 
영어(message_en), 중국어(message_zh), 몽골어(message_mn), 태국어(message_th), 인도네시아(message_in), 베트남어(message_vi)   
common.js.member.checkid.nationality_info = 국적이 선택되지 않았습니다.\\n 본인 국적에 맞는 국기를 선택하여 주십시오. 
join.msg.check_success 
<jsp:include page='<%="/WEB-INF/common/inc/script_var_set.jsp"%>' /> 
checkid.nationality_info="<spring:message code="common.js.member.checkid.nationality_info"/>"; 

- 사용가능 아이디 다국어(회원 가입시) 
join.msg.check_success = 사용가능한 아이디 입니다. 사용하시겠습니까? 
==============================================================================================================

- 전화상담 수정 기능 추가(하루 지나면 수정 불가) 
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
<prop key="/customer/operate/phone_modify.do">modify</prop><!--// 새로 추가// -->              
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

- 서버 재시작 이후 에러 
원인: ShopSchedulerDaoImpl.class 파일 용량 0KB 
Bean class [dao.adminnew.goods.ShopSchedulerDaoImpl] not found; nested exception is java.lang.ClassNotFoundException:  
dao.adminnew.goods.ShopSchedulerDaoImpl. 
==============================================================================================================

- Shoplinker 인수인계(양민헌 대리) 
1. 네모커머스(주)  김윤상 과장(HP: *, T: 2175-8645, 개발) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.08.04(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:10 ~ 20:00  --> 양민헌 대리 휴가(일본), 이승재 대리 파견, 이마트(용산점)에서 쇼핑(족구 상품권), 거실 커텐 달기, 야근 

- SK FLA365 운영
- 1:1 이메일 상담 관리 수정 기능 추가(하루 지나면 수정 불가)   
http://localhost:7001/customer/operate/email_modify.do?num=77&page=1&searchField=&searchText=&searchStage=&muid= 
==============================================================================================================

- FTP 패스워드 변경  ===> 실서버: 211.39.40.53, weblogic/webflajdrhd(webfla성공) 
[weblogic@sktlwas2 ~]$passwd 
(current) UNIX password:  
New UNIX password:  
Retype new UNIX password: 
passwd: all authentication tokens updated successfully.  
==============================================================================================================

- 개발 서버(flash 파일 적용: 메인) 
개발서버: /fla365/WebContent/common/xml/flashxml/mainEvent.xml  ===> 메인 이벤트 flash 파일 
실서버: /nas_data/fla365/WEB-INF/common/xml/flashxml 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.08.05(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:10 ~ 22:00  --> 야근(석식) 

- SK FLA365 운영
- 프로모션 관리자 기능 고도화 
1. 프로모션 상품권 관리(/프로모션 상품권 운영) 
http://localhost:7001/adminnew/giftcard/gcnumpin_list.do 
/WEB-INF/secondadmin.xml  ==> 관리자 카테고리 관리(/WEB-INF/adminnew/common/inc/lnb.jsp)  
일련번호에서 K***-D9-******-***** ==> 프로모션 코드  
  
2. 프로모션  
/controller/adminnew/point/PointRegController.java 파일에서  ===> /shop/mypage/fpoint.jsp 
public ModelAndView handleRequest() { 
//프로모션 PIN번호면 해당 promotionindex그룹에는  한회원당 그룹별 한번의 적립만 가능 
if (this.giftCardDao.getGiftCardCount(paramMap) > 0){ 
msg = message.getMessage("common.msg.pin_number_err2"); //프로모션 적립인 한 아이디에 한번만 됩니다. 
} 
}  
==============================================================================================================

- 변경 요청 파일 
build/classes/controller/adminnew/board/ManToManController.class 
build/classes/dao/adminnew/goods/ShopSchedulerDaoImpl.class 

- 최근주문현황(http://bos.fla365.com/adminnew/order/summary.do)  ===> 6건 조회됨 
SELECT * FROM SWS_SHOPBANK A, SWS_CART_OK B  
where a.cartkey=b.cartkey and a.mref=3 and a.stage<>'8' and b.stage='8' and b.bigo='자동구매승인'  
--;  
   
SELECT * FROM SWS_SHOPBANK   ===> 0건 조회됨 
where A.cartkey IN ('100725184009vDyVV_6180', '100726112128GWGQC_415', '100727185919cFYi7_205',  
'100726173507mhiYl_3022', '100726173507mhiYl_3021', '100726173507mhiYl_3020' ) 
--; 

update SWS_SHOPBANK set calculate_flag='N', d_day='2010-07-31', stage='8'  ==> 0건 처리 
where A.cartkey IN ('100725184009vDyVV_6180', '100726112128GWGQC_415', '100727185919cFYi7_205',  
'100726173507mhiYl_3022', '100726173507mhiYl_3021', '100726173507mhiYl_3020' ) 
--; 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.08.06(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:20 ~ 21:00  --> 야근, 나눔 동기 모임 

- SK FLA365 운영
- 프로모션 관리자 기능 고도화 
1. 프로모션 상품권 관리(/프로모션 상품권 운영) 
http://localhost:7001/adminnew/giftcard/promotion.do 
/WEB-INF/secondadmin.xml  ==> 관리자 카테고리 관리(/WEB-INF/adminnew/common/inc/lnb.jsp)  
일련번호에서 K***-D9-******-***** ==> 프로모션 코드  

2. 프로모션  
/controller/adminnew/point/PointRegController.java 파일에서  ===> /shop/mypage/fpoint.jsp 
public ModelAndView handleRequest() { 
//프로모션 PIN번호면 해당 promotionindex그룹에는  한회원당 그룹별 한번의 적립만 가능 
if (this.giftCardDao.getGiftCardCount(paramMap) > 0){ 
msg = message.getMessage("common.msg.pin_number_err2"); //프로모션 적립인 한 아이디에 한번만 됩니다. 
}  
) 
==============================================================================================================

- 카테고리 정보 수정(카테고리 Best) 
http://localhost:7001/shop/shopping/category_list.do?searchCateCode=002001000000 
/ShopMakerTag.java 파일에서 
if(strCateCode.equals("002001")){  //카테고리별 조회  =======> //CATE(베트남)  
    whereQue += " AND A.NUM IN (22667, 22666, 21282, 21266, 21263)  ";  
} else if(strCateCode.equals("003002")){     //CATE(베트남) 
    whereQue += " AND A.NUM IN (25096, 25086, 25122, 25106, 25151)  ";  
} else if(strCateCode.equals("003003")){     //CATE(인도네시아) 
    whereQue += " AND A.NUM IN (25274, 25238, 25226, 25269, 25222)  "; 
} else if(strCateCode.equals("003001")){     //CATE(태국) 
    whereQue += " AND A.NUM IN (25338, 25371, 25379, 25419, 25396)  ";  
} else if(strCateCode.equals("003005")){     //CATE(필리핀) 
    whereQue += " AND A.NUM IN (25454, 25456, 25459, 25480, 25458)  ";   
} 
==============================================================================================================

- Weblogic App 문제 발생시 
배포 --> fla365 --> 중지(강제 중지) --> 시작 
https://211.39.40.53:7002/console/console.portal?_nfpb=true&_pageLabel=AppDeploymentsControlPage 
==============================================================================================================

- 변경 파일 
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

- 나눔90 동기회  
21:00 업무 종료(기획전 실서버 등록으로 인해 늦어짐) 
21:40 순대국집(상환, 현용, 호수, 태용 불참) 
23:00 당구장(쿠션볼 짐, 팀게임 이김(현용, 내: 상환, 호수) 
01:00 술집(일식) 
02:00 맥주집 
03:30 종료 
03:50 귀가(상환이 자고 감) 
04:00 취침 
==============================================================================================================

- STOCKS 
월(4,100), 화(4,115), 수(4,510), 목(4,515), 금(4,600) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.08.07(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:50 ~ 20:00  --> 토요근무(석식): 기획전 관련해서 SMS 문자 발송 관련 대기 요청(김성식 대리: 중식 제공) 

- SK FLA365 운영
- 카테고리 정보 수정(카테고리 Best) 
http://localhost:7001/shop/shopping/category_list.do?searchCateCode=002001000000 
/ShopMakerTag.java 파일에서 
if(strCateCode.equals("003002")){  //카테고리별 조회  =======> //CATE(베트남)  
    whereQue += " AND A.NUM IN (25096, 25086, 25122, 25106, 25151)  ";  
} else if(strCateCode.equals("003003")){     //CATE(인도네시아) 
    whereQue += " AND A.NUM IN (25274, 25238, 25226, 25269, 25222)  "; 
}  

--- 칼럼 추가  ------  
ALTER TABLE SWS_SHOP_ADD ADD (  
    CATE_DISPLAY    CHAR (2)        --카테고리 전시 순서 
) 

--카테고리 정보  수정    @@@@@@@@@@@@@   ===> SWS_SHOP_MV가 MATERIALIZED VIEW여서 UPDATE 불가 
UPDATE SWS_SHOP_MV_2 A 
SET A.CATE_DISPLAY = '1'   -- 카테고리 전시 순서 
WHERE 1=1 
    AND SUBSTR(A.CATE1,1,6) = '002001'         
    AND A.NUM IN (25096)     --상품번호          
--;   
==============================================================================================================

- 프로모션 관리자 기능 고도화 
1. 프로모션 상품권 관리(/프로모션 상품권 운영) 
http://localhost:7001/adminnew/giftcard/promotion.do 
/WEB-INF/secondadmin.xml  ==> 관리자 카테고리 관리(/WEB-INF/adminnew/common/inc/lnb.jsp)  

--상품권관리 정보  수정    @@@@@@@@@@@@@   
UPDATE SWS_GIFT_CERTIFICATE A 
SET A.PROMOTION_SAVE_YN = 'N'   -- PIN 중복 등록  여부(N:단일, Y:중복) 
WHERE A.DIST_CODE = 'D9'   --총판코드 (D1 ~ D9)  
    A 
    ND SUBSTR(A.SEQ_REGDATE, 0, 10) = '2010-07-14'    -- 일련번호 생성일('2010-07-14'  , ''2010-06-15' ) 
    AND A.SEQ_REG_MUID ='admin'    --일련번호 생성자 
--;  

- 상품권 PIN 활성화 목록_상세화면(http://localhost:7001/adminnew/giftcard/promotion.do) 
http://bos.fla365.com/adminnew/giftcard/pop_gclist.do 
==============================================================================================================

- 주간업무 보고 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.08.08(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 00:00 

▦조기축구 
07:00 기상 
07:40 신구초등학교 
08:00 게임(5:2 패) 
09:00 게임(0:2 패) 
09:40 게임(2:0 승) 
09:50 종료 
10:30 점심(상설이형집 근처 식당: 흥국이형이 쏨) 
12:30 당구(호승이형 한테 짐: 3,600원) 
14:00 노래방(상설이형하고 치근형하고 싸움): 이치근(T)017-227-3729, 법무법인 해승 실장) 
16:40 종료 
18:00 귀가 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.08.09(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:10 ~ 19:00  --> hp 자화수 컵(김성식 대리가 줌) 

- SK FLA365 운영
- WebLogic 서버 에러(개발서버)  
The domain edit lock is owned by another session - this deployment operation requires exclusive access to the edit lock and hence cannot proceed. 
You can release the lock in Administration Console by first disabling "Automatically Acquire Lock and Activate Changes" in Preference, 
then clicking the Release Configuration button.   
원인 및 조치: 웹로직에서 이 에러가 나면 console에서 환경을 바꾸고 나서 반영을 안해서 locking이 되어 있는 상태.  
간단하게console에가서 'release Configuration' 버튼을 눌러주면 간단히 해결됨 

- 정상 에러(개발서버)  
Error(s) found in module 'fla365'. Publish was cancelled. See "Problems" view for details. 
  This project needs to migrate WTP metadata at fla365  
==============================================================================================================

- Eclipse 설정 
1. Eclipse --> New Server 
1) Directory Domain: C:\bea\user_projects\domains\fla365     ===> startWebLogic.cmd 

2. WebLogic 서버 설치(개발서버는 안해 줘도 됨 --> JDBC만 설치함) 
1) 서버 설치 --> 환경 ==> 서버(http://localhost:7001/console/console.portal?_nfpb=true&_pageLabel=CoreServerServerTablePage): 새로 만들기(클릭)  
Server Name: sktM11, 수신 주소 : localhost, 수신 주소: 수신 포트: 7003  
2) Deployments ==> Install 
path: d:\workspaces\default\fla365\WebContent, Name: fla365 
3) http://localhost:7003 
   
3. JDBC Connection 설정 ---> SID:ORA10G, flamall/fla365 
http://localhost:7001/console/console.portal?_nfpb=true&_pageLabel=GlobalJDBCDataSourceTablePage 
1) Data Soruce 이름: flamall 
2) Application에서 호출할 JNDI 이름: flamall 
3) Data Base 종류: jdbc:oracle:thin:@211.39.40.58:1521:ora10g 
4) JDBC 드라이버 종류: oracle.jdbc.OracleDriver 

- Eclipse 설정 에러(Error 404--Not Found) 
The server has not found anything matching the Request-URI 
==> fla365-servlet.xml 파일일 Refresh 함 
==============================================================================================================

- 최근주문현황(주문관리) 수정 ====> refresh 문제로 추정  
1. CartStageStr 얻기 
1) http://bos.fla365.com/adminnew/order/summary.do ===> 주문조회(관리자 화면) 
2) src/logic/adminnew/OrderBean.java 파일에서 
public String getCartStageStr(){ 
return swFunct.getCartStageStr(this.getCartStage()); 
} 

3) src/utils/SwFunct.java 파일에서 
public String getCartStageStr(String stage){ 
int state = -1; 

  switch(state){ 
case 3:  str = "배송전";  break; 
case 34:  str = "배송준비중";  break; 
case 10:  str = "판매거부";  break; 
case 4:  str = "배송중";  break; 
case 8:  str = "구매확정";  break; 
case 5:  str = "반품요청";  break; 
case 7:  str = "반품확정";  break; 
case 12:  str = "반품거부확정"; break; 
case 6:  str = "교환중";  break; 
case 14:  str = "교환확정";  break; 
case 13:  str = "교환거부확정"; break; 
case 0: 
case 9: 
case 11:  str = "취소된건";  break; 
} 

return str; 
} 

2. CartStageStr 세팅 
1) http://www.fla365.com/shop/main/main.do ===> 메인 화면 
2) src/controller/user/shop/ShopMainController.java 파일에서 
public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception { 
//스케쥴 프로그램 처리   
this.shopSchedulerDao.setTodayScheduler(request); 
} 

3) src/dao/adminnew/goods/ShopSchedulerDao.java 파일에서 
public interface ShopSchedulerDao { 
//금일 스케쥴  작동 
void setTodayScheduler(HttpServletRequest request); 
} 

4) /ibatis/adminnew/Order.xml 파일에서 
<!--  cart주문정보 stage값 변경  --> 
<update id="setCartStageChange" parameterClass="map" > 
UPDATE sws_cart_ok SET $cartField$   ===> stage=8, moddate=TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS'),  bigo='자동구매승인' 
<dynamic>         
    <isNotEmpty property="where" prepend="where"> 
$where$       ===> where", "cartkey= 
    </isNotEmpty>            
</dynamic> 
</update>  
==============================================================================================================

- 실서버 변경 처리 파일(도과장) 
1. 소스 수정 부분은 고객센터에서 1:1이메일 상담관리 답변을 한 후, 리스트 페이지로 경로를 변경 
build/classes/controller/adminnew/board/ManToManController.class 
2. 로그인 후 검색이 안되는 부분 수정 
Build/classes/controller/user/shop/ShopSearchController.class   
3. 최근주문현황(주문관리)  ===> 적용 안됨 
build/classes/dao/adminnew/goods/ShopSchedulerDaoImpl.class  
build/classes/ibatis/adminnews/Scheduler.xml 
==============================================================================================================

- flash 파일 실서버 적용(메인) 
/fla365/WebContent/common/xml/flashxml/mainEvent.xml(WEB-INF/common/xml/flashxml)  ===> 메인 이벤트 flash 파일 
/fla365/WebContent/common/xml/flashxml/mainTheme.xml(WEB-INF/common/xml/flashxml)  ===> 가운데 flash 파일  
/fla365/WebContent/common/xml/flashxml/newProduct.xml(WEB-INF/common/xml/flashxml)  ===> 오른쪽 flash 파일 
==============================================================================================================

- SK Telink 보안 관련  
이재용 *@*.*, T) 070-7432-1608 
1. 프런트 : http://www.fla365.com, howmen/a111111, tamario/ssjtm881 
2. 관리자: http://bos.fla365.com, admin /flatjdrhd(fla성공) 
==============================================================================================================

- 나눔90 동기회 결산 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.08.10(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:10 ~ 19:30 

- SK FLA365 운영
- 시스템 서버 계정  
211.39.40.61 Oracle Linux 5.3  WEB1 root /sktl웹1 
211.39.40.62 Oracle Linux 5.3  WEB2 root/sktl웹2  
211.39.40.63 Oracle Linux 5.3  RUEL서버 root/sktl루이 
211.39.40.64 Oracle Linux 5.3  AD4J서버 root/sktl에이  
211.39.40.55 Windows Ent 2008 NAS1 Administrator/HP10invent$           
211.39.40.56 Windows Ent 2008 NAS2 Administrator/HP10invent$    
http://bos.fla365.com:443 관리자 ID/Passwd 정보) ==> admin/flatjdrhd(fla성공)  

[시스템] 
211.39.40.53          Oracle Linux 5.3         WAS1  weblogic/webflajdrhd(webfla성공) 
211.39.40.54          Oracle Linux 5.3         WAS2 weblogic/webflajdrhd(webfla성공) 
211.39.40.57          Oracle Linux 5.3         BackOffice root/sktl웹1 
211.39.40.58          Oracle Linux 5.3         개발서버 weblogic/weblogic 
211.39.40.59          Oracle Linux 5.3         I/F 서버 webadm/flatjdrhd(fla성공) 
[WAS] 
weblogic           211.39.40.53    7001 flaadmin/flapassw0rd 
weblogic           211.39.40.54    7001 flaadmin/flapassw0rd 
==============================================================================================================

- 패션밀 연동 분석 
김재남 실장(070-7018-7022 / *), *@*.* 
==============================================================================================================

- 상품 등록 수정 에러 
http://localhost:7001/adminnew/product/reg_mody.do?shop_num=24252 
<CENTER><BR><IFRAME id=descFrame src="http://shop.cowon.com/spec/v5/v5.php?from=out&event=no&review=yes&aslink=yes" 
frameBorder=0 width=680 height=27000></IFRAME>  
<CENTER></CENTER></CENTER> 
==============================================================================================================

- 상품권 정산관리 실서버 등록 
유통총판 출고내역: http://211.39.40.58:7003/adminnew/calculate/distribution.do 
SB 출고내역: http://211.39.40.58:7003/adminnew/calculate/SBCalculate.do 
구매확정 정산통계: http://localhost:7001/adminnew/calculate/orderComplete.do 
<prop key="/adminnew/calculate/distribution.do">accountController</prop>  <!--// 유통총판 출고내역  //--> 
<prop key="/adminnew/calculate/SBCalculate.do">accountController</prop>  <!--// SB 출고내역  //--> 
<prop key="/adminnew/calculate/orderComplete.do">accountController</prop>  <!--// 구매확정 정산통계  //--> 

<prop key="/adminnew/calculate/distribution.do">distributionList</prop>  <!--// 유통총판 출고내역  //--> 
<prop key="/adminnew/calculate/SBCalculate.do">getSBCalculateList</prop>  <!--// SB 출고내역  //--> 
<prop key="/adminnew/calculate/orderComplete.do">orderComplete</prop>  <!--// 구매확정 정산통계  //--> 

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

- 송윤정(*, *) (주)신진 NTS 디자이너 
2010.08.19(목) 대학로 1번 출구, 19: 30 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.08.11(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:10 ~ 19:30  --> 맥주(사당동 호프집: 문선일 팀장이 쏨) 

- SK FLA365 운영
- 실서버 적용 파일 
/fla365/src/controller/adminnew/giftcard/GiftCardController.java 
/fla365/src/controller/adminnew/point/PointRegController.java 
/fla365/src/controller/adminnew/account/AccountController.java 
/fla365/src/dao/adminnew/account/AccountDao.java 
/fla365/src/dao/adminnew/giftcard/GiftCardDao.java  
/fla365/src/ibatis/adminnew/Account.xml  
/fla365/src/ibatis/adminnew/GiftCard.xml 
/fla365/src/ibatis/adminnew/Stat.xml  --> 도과장 
/fla365/src/logic/adminnew/DistributionBean.java 
/fla365/src/logic/adminnew/GiftCardBean.java  
/adminnew/statistics/stat_member_detail.jsp  --> 도과장(미처리) 
/adminnew/statistics/member_current.jsp    --> 도과장 
/fla365/WebContent/WEB-INF/adminnew/calculate/distribution.jsp 
/fla365/WebContent/WEB-INF/adminnew/giftcard/promotion.jsp  
==============================================================================================================

- 프로모션 관리자 기능 고도화 
1. 프로모션 상품권 관리(/프로모션 상품권 운영)(http://localhost:7001/adminnew/giftcard/promotion.do) 
/WEB-INF/secondadmin.xml  ==> 관리자 카테고리 관리(/WEB-INF/adminnew/common/inc/lnb.jsp)  
  
2. 프로모션 POINT 내역(적립된 F-POINT/발급된 F-Point)(http://localhost:7001/adminnew/giftcard/promotion_pop.do) 
<prop key="/adminnew/giftcard/promotion_pop.do">giftCardPromotionFPPoint</prop> 
<prop key="/adminnew/giftcard/promotio_excel_down.do">giftCardPromotionFPPointExcelDown</prop> <!--// 프로모션 POINT 내역(엑셀 다운로드)  //-->   

- 상품권 PIN 활성화 목록_상세화면(http://bos.fla365.com/adminnew/giftcard/gcpin_approvelist_view.do)  
1. 상품권 PIN 활성화 목록_상세화면(새창) (http://bos.fla365.com/adminnew/giftcard/pop_gclist.do) 
==============================================================================================================

- SB 회원모집 데이터 추출  
사용자 아이디가  --> 게시판/방명록/구인,구직/중고장터 (코리아 in Life)에 게시물을 올린 날짜와 시간을 넣어주시면됩니다.  
(중복으로 게시판에 글을 올렸을 경우에는 최종 게시물을 기준으로 넣어 주십시오.) 

-- 사업부 회원정보 TB 생성 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
CREATE TABLE T_TEMP_TEST (   
SEQ_NO NUMBER, /* SEQ_NO */    
MEM_ID VARCHAR2(30) /* 회원ID */  
); 

--자유 게시판  정보 확인 TEST 테이블  조회   @@@@@@@@@@@@@  
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

- 한국오라클 Diagnostic for WebLogic 관련 교육 
1. AD4J 교육(오라클)  ==> 시스템 모니터링 툴 
2. 솔트 황인용 팀장, 문일선 팀장 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.08.12(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:40 ~ 19:30 

- SK FLA365 운영
- SSL 적용 
/shop/login/login.jsp 파일에서 
public ModelAndView memberLogin( 
//DB 조회 및 처리 후  
return getReturnModel(null, "http://www.fla365.com/shop/main/main.do?locale="+amemberBean.getNation());  // main으로 이동 
} 

로그인: http://www.fla365.com/shop/login/login.do 
회원가입: http://www.fla365.com/shop/login/join.do 
회원수정: http://www.fla365.com/shop/mypage/modify_acc.do  
아이디 찾기: http://www.fla365.com/shop/login/pop_findid.do 
비밀번호 찾기: http://www.fla365.com/shop/login/pop_findpw_mobile.do  
==============================================================================================================

- 구매확정 처리 기능 제거 
벤더가 배송중 화면에서(http://bos.fla365.com/adminnew/order/delivery.do) 
/OrderBean.java 파일에서  
public String getShopShipCommon_V(String stageStr, String cartkey, String orderCode) { 
} 
==============================================================================================================

- 신용카드 결제 막기 
/fla365/WebContent/WEB-INF/shop/shoppingbag/shoppingbag_payment.jsp 
<!--// <input type="radio" name="payment" onclick="javascript:change_payType('CARD');" /> 
<spring:message code="shoppingbag.shoppingbag_payment.text.paymentcard" /></label> 
==============================================================================================================

- 구매확정 정산통계(http://localhost:7001/adminnew/calculate/orderComplete.do) 수정 
<prop key="/adminnew/calculate/orderComplete.do">orderComplete</prop>  <!--// 구매확정 정산통계  //--> 

<!-- 구매확정 정산통계 리스트수  --> 
<select id="getOrderCount" parameterClass="map" resultClass="int">  
<!-- 구매확정 주문서 리스트 수 --> 
<select id="getOrderCount2" parameterClass="map" resultClass="int"> 

springframework 버전 문제로 추정됨 ===>  
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

- 파라미터 변조 
주문결제(http://211.39.40.58:7003/shop/shoppingbag/shoppingbag_payment.do) 
http://blog.naver.com/sungil108?Redirect=Log&logNo=150083361558 
http://blog.pages.kr/167 
- Paros가 동작 하지 않을 경우 조치 방법 
1) 먼저 자바의 경로 확인 
C:\Program Files\Java\jre1.5.0_06\bin 에서 java.exe가 존재하는지 확인 ==> C:\Program Files (x86)\Java\jre6\bin\java.exe 
2) 바탕화면-> 내컴퓨터->마우스 오른쪽 등록정보(속성) =>고급-> '환경변수' 버튼=> 시스템 변수 => path 더블클릭 
변수 값의 제일 마지막 부분에 
;C:\Program Files\Java\jre1.5.0_06\bin; 추가 
3)탐색기로 C:\Program Files\Paros\paros.jar 더블클릭하시면 됩니다.  
--------------------------------------------------------------------------------------------------------------------- 

- 윈도우7 환경변수 설정 
제어판 ==> 시스템 및 보안 ==> 시스템 ==>고급 시스템 설정: 고급 --> 환경변수 --> 시스템 변수 --> path 더블클릭 
(C:\Program Files (x86)\Java\jre6\bin 추가) 
C:\Users\tama> path  --> cmd 
==============================================================================================================

01. 웹서버세팅(ODH(오라클 계열)) 
===> FTP를 열어주는 보안 관련 문제이므로 시스템 관리팀에서 작업을 해야 될 것으로 추정됨 
웹서버: 211.39.40.61, root /sktl웹1  ==> 
웹서버: 211.39.40.61  Port:22, wiselog/fhrmqnstjr 
폴더 생성: /data/logs/ 

1. 리눅스 계정 생성 명령어 
[weblogic@sktlwas2 ~] useradd -d /data/logs wiselog -->  계정 생성 
[weblogic@sktlwas2 ~] passwd fhrmqnstjr 
[weblogic@sktlwas2 ~] tail /etc/passwd 
[weblogic@sktlwas2 ~] LANG=C    --> 글자 깨짐 해결 
[weblogic@sktlwas2 ~] passwd wiselog ->  FTP 패스워드 변경(root에서) 
[weblogic@sktlwas2 ~]$ passwd    -->  FTP 패스워드 변경  
(current) UNIX password:  
New UNIX password:  
Retype new UNIX password: 
[weblogic@sktlwas2 ~] ps -ef grep sample.m 
  
 2.1. Cronolog Install 
웹로그를 일별로 남기기 위해서 많은 프로그램이 있지만 cronolog를 사용합니다.  
해당 프로그램은 아래 사이트에서 최신 버전을 다운 받을 수 있습니다.( 현재 1.6.2 버전이 최신 버전입니다. ) 

http://www.cronolog.org  
Linux, Unix 계열 시스템에서 cronolog를 설치하는 방법을 다음과 같습니다. 

$) tar xvzf cronolog-1.6.2.tar.gz 
$) cd cronolog-1.6.2 
$) ./configure 
$) make 
$) cp src/cronolog /ora_web/Oracle_WT1/bin  

- 웹서버 기동(211.39.40.61, webadm/webadm) 
/[webadm@sktlweb1 ~]$ /ora_web/startOHS.sh 
/[webadm@sktlweb1 ~]$ /ora_web/stopOHS.sh  
- 웹서버 설정파일 
/ora_web/Oracle_WT1/instances/instance1/config/OHS/ohs1/httpd.conf 


$> useradd -u [유저ID] -g [그룹ID or 그룹명] -s [사용되는 SHELL] -d [유저 Home 디렉토리] 계정이름 
$> passwd 계정이름  
$> useradd -u 501 -g 500 -s /bin/ksh -d /home/oracle oracle 
$> passwd oracle 
------------------------------------------------------------------------------------------------------- 

- 웹서버세팅(ODH(오라클 계열)) 설치 파일 
/ora_web/Oracle_WT1/instances/instance1/bin/opmnctl startall 
==============================================================================================================

- 운영서버 소스 적용 요청 
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

■■■■■■■■■■■■■■■■■■ 2010.08.13(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 19:30 

- SK FLA365 운영
- 파라미터 변조 
주문결제(http://211.39.40.58:7003/shop/shoppingbag/shoppingbag_payment.do) 
==============================================================================================================

-  메인 화면 flash 파일 등록 문제 발생(17 ~ 23시)  
원인: 퍼블러셔가 관리자 화면에 플래쉬 파일 등록 기능이 있다는 것을 모름(김성식 대리 때문에 더 열받음) 

- 메인 화면 flash 파일 Display 
/main.jsp에서 
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

1. /src/shopmaker/Banner.java 파일에서 
public int doEndTag() throws JspException{ 
ExhProductBean exhProductBean = this.exhDao.getFrontBanner(exhBean); 
} 

-- 전시 이미지 정보  조회 @@@@ 
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
월(4,585), 화(4,745), 수(4,740), 목(4,620), 금(4,520) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.08.14(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 22:0  --> 글빛 도서관(07:50 ~ 17:00) 

- KCISA Study
07:00 기상 
07:50 글빛 도서관 도착 
08:00 핵심 요약  
17:30 귀가 
01:20 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.08.15(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:10 ~ 00:00 

▦조기축구 
06:10 기상  
07:00 신구초등학교 
07:40 게임(0:2 패) 
08:50 게임(2:1 승) 
10:20 종료 
11:20 이발 
11:50 귀가 
21:00 신진 NTS 이순복 사장에게 메일 발송(SK FLA365 SM 문제점) 
00:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.08.16(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:10 ~ 18:00 --> 철수 결정(이종환 이사, 문일선 팀장): 업무 과중과 김성식 대리 때문에 철수한다고 함 

- SK FLA365 운영
- 웹서버 세팅(OHS(오라클 계열))  ===> 웹로그 설치 
===> FTP를 열어주는 보안 관련 문제이므로 시스템 관리팀에서 작업을 해야 될 것으로 추정됨 
웹서버: 211.39.40.61, root /sktl웹1  ==> Port:22, wiselog/fhrmqnstjr  
OracleHome = '/ora_web/Oracle_WT1'; 
OracleInstance = '/ora_web/Oracle_WT1/instances/instance1'; 
 2.1. Cronolog Install 
웹로그를 일별로 남기기 위해서 많은 프로그램이 있지만 cronolog를 사용합니다.  
해당 프로그램은 아래 사이트에서 최신 버전을 다운 받을 수 있습니다.( 현재 1.6.2 버전이 최신 버전입니다. ) 
http://www.cronolog.org 
Linux, Unix 계열 시스템에서 cronolog를 설치하는 방법을 다음과 같습니다.  
$) tar xvzf cronolog-1.6.2.tar.gz 
$) cd cronolog-1.6.2 
$) ./configure 
$) make 
$) cp src/cronolog /ora_web/Oracle_WT1/ohs/bin  ==> /ora_web/Oracle_WT1/ohs/bin   ===> cronolog 생성 
$) cd /ora_web/Oracle_WT1/instances/instance1/diagnostics/logs/weblog  
$) more access.20100816 

/ora_web/Oracle_WT1/instances/instance1/diagnostics/logs/weblog ===> access.20100816(로그 파일) 
/ora_web/Oracle_WT1/instances/instance1/config/OHS/ohs1 ===> httpd.conf 파일 변경 
LogFormat "%h %l %u %t \"%r\" %>s %b \"%{Referer}i\" \"%{User-Agent}i\" \"%{Cookie}i\"" combined 
CustomLog "${ORACLE_HOME}/ohs/bin /data/logs/access.%Y%m%d" combined 
----------------------------------------------------------------------------------------- 
- 웹서버 기동(211.39.40.61, webadm/webadm) 
/[webadm@sktlweb1 ~]$ /ora_web/stopOHS.sh 
/[webadm@sktlweb1 ~]$ /ora_web/startOHS.sh 
==============================================================================================================

- 정산 데이터 수정 및 오류 사항 
1) 정산관리 > 판매대급 지급 대상  
데이터 정산 기준일 변경 (정산 대상은 구매확정된 날짜 와 금액 기준 입니다.)  
-  데이터 확인 날짜를 위한 축출일 개발에서 정하시면 됩니다. 
2) 정산관리 > 상품권 정산관리 > 유통총판 출고내역 / SB 출고 내역 / 구매확정 정산통계  
- 하단 3개의 메뉴 모두 검색이 되지 않습니다. 
3) 정산관리 > 상품권 정산관리 > 구매확정 정산 통계 
-   엑셀 저장을 선택하면 화면에 보이는 것만 엑셀로 저장 됩니다. 
 기본 화면에서는 엑셀로 저장을 선택하면 모든 내용이 엑셀로 저장됩니다. 
 검색 결과 화면 (측 상단의 검색을 이용)에서는 검색 결과 내용이 모두 엑셀로 저장됩니다. 
-  엑셀로 해당 데이터를 저장 하기 쉬어야 합니다. (기본-전체 / 검색 했을 때에는 결과만 ) 
==============================================================================================================

- 파라미터 변조 
주문결제(http://211.39.40.58:7003/shop/shoppingbag/shoppingbag_payment.do) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.08.17(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

- SK FLA365 운영
- SSL 적용 
(한국전자인증 글로벌 인증팀 : 02-3019-5555), *@*.*, Homepage : www.crosscert.com 
로그인: http://www.fla365.com/shop/login/login.do  --> 처리 
/controller/common/LoginController.java 파일에서 
public ModelAndView memberLogin( 
return getReturnModel(null, "http://www.fla365.com/shop/main/main.do?locale="+amemberBean.getNation());  // main으로 이동 
}  
회원가입: http://www.fla365.com/shop/login/join.do  --> 처리 
/fla365/WebContent/WEB-INF/shop/login/join_done.jsp  
회원수정: http://www.fla365.com/shop/mypage/modify_acc.do  
아이디 찾기: http://www.fla365.com/shop/login/pop_findid.do      --> 처리 
비밀번호 찾기: http://www.fla365.com/shop/login/pop_findpw_mobile.do  
비밀번호 변경: https://www.fla365.com/shop/mypage/changepw.do 
public ModelAndView memberList(HttpServletRequest request, 
HttpServletResponse response) throws Exception { 
model.put("returnUrl", "http://www.fla365.com/shop/login/login_out.do"); 
//model.put("returnUrl", request.getContextPath()+"/shop/login/login_out.do"); 
} 

F- POINT 충전:https://www.fla365.com/shop/mypage/fpoint.do  --> 처리 
/controller/adminnew/point/PointRegController.java 파일에서 
public ModelAndView handleRequest() { 
model.put("location", "http://www.fla365.com/shop/mypage/fpoint.do"); 
} 
==============================================================================================================

- 웹로그 설치 
넷스루 배민경 Tel: 070-4027-7451 
==============================================================================================================

- VB.NET(www.frelec.co.kr) 동영상 강의 결제(5천원: 한달) 및 강의 수강 시작 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.08.18(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00  ---> 짐 철수 

- SK FLA365 운영
- SSL 적용 
한국전자인증 글로벌 인증팀: 3019-5555, *@*.* 
로그인: http://www.fla365.com/shop/login/login.do  --> 적용  
회원가입: http://www.fla365.com/shop/login/join.do  --> 적용 
/fla365/WebContent/WEB-INF/shop/login/join_done.jsp 
회원수정: http://www.fla365.com/shop/mypage/modify_acc.do  --> 적용 
아이디 찾기: http://www.fla365.com/shop/login/pop_findid.do --> 적용 
비밀번호 찾기: http://www.fla365.com/shop/login/pop_findpw_mobile.do --> 적용 
비밀번호 변경: https://www.fla365.com/shop/mypage/changepw.do  --> 적용(ajax --> actoin으로 변경) 
F- POINT 충전:https://www.fla365.com/shop/mypage/fpoint.do  --> 적용  
==============================================================================================================

- 업무보고 
1. 완료된 업무 
1) SSL 적용(실서버 적용 완료) 
로그인: http://www.fla365.com/shop/login/login.do 
회원가입: http://www.fla365.com/shop/login/join.do 
회원수정: http://www.fla365.com/shop/mypage/modify_acc.do 
아이디 찾기: http://www.fla365.com/shop/login/pop_findid.do 
비밀번호 찾기: http://www.fla365.com/shop/login/pop_findpw_mobile.do 
비밀번호 변경: https://www.fla365.com/shop/mypage/changepw.do 
F- POINT 충전:https://www.fla365.com/shop/mypage/fpoint.do 
 가. 업무 협의할 업체 
 - 한국전자인증 글로벌 인증팀: 02-3019-5555, *@*.*, www.crosscert.com 
--------------------------------------------------------------------------------------------------------- 

2)  카테고리 Best 상품 올리기(http://www.fla365.com/shop/shopping/category_list.do?searchCateCode=001004000000) 
- 기존 관리자 화면에 이 기능이 존재하지 않아서 SQL문으로 카테고리별 Best 상품 지정하여 올림 
--------------------------------------------------------------------------------------------------------- 

3) [고객센터] 상담 수정 기능 추가(하루 지나면 수정 불가) 
- 전화상담 수정 화면 개발(http://angle.fla365.com/customer/operate/phone_view.do?page=1&searchField= &searchText=
&num=212&searchStage=&muid=) 
- 1:1 이메일 상담 수정 화면 개발(http://angle.fla365.com/customer/operate/email_view.do?page=1&searchField= 
&searchText=&num=582&searchStage=&reply_yn=&searchNation=) 
--------------------------------------------------------------------------------------------------------- 

4) [관리자] 구매확정 처리 기능 제거 
- 벤더가 배송중 화면에서 구매확정 처리 기능 처리 불가능하게 처리 
========================================================================================================= 

2. 미완료된 업무 
1) 웹로그 분석  
==> 실서버에 모두 적용 완료 되어 있고 (주)넷스루 배민경 과장이 실서버에서 테스트 하고 있음 
01. 웹서버 세팅 
웹서버명/웹서버 IP:  211.39.40.61(.62)  ==> .62번 웹서버는 .61번 웹서버 모든 환경이 같음 
FTP 접속용 아이디/패스워드: wiselog/fhrmqnstjr  
FTP 접속 포트 : 22  
로그가 적재되는 디렉토리 : /ora_web/Oracle_WT1/instances/instance1/diagnostics/logs/weblog 
로그파일명 : access.20100816 

02. 웹페이지수정  
  1. 영구 쿠키 적용(실서버 적용 완료) 
===> 아래 처럼 header.jsp에 적용을 하고 팝업같이 공통으로 사용하지 않는 부분은 일일히 찾아가면서 적용함 
<scriptlanguage=’javascript’ src='/common/js/makePCookie.js'></script>  <!--// 웹로그 설치(영구 쿠키 적용) //--> 

 2. 쿠키에 “로그인 사용자 아이디” 정보 남기기(실서버 적용 완료) 
===> /LoginController.java 파일에서 로그인 후 반환되는 getMuid을 이용해서 쿠키에 적용 
Cookie cookie = new Cookie("UID", amemberBean.getMuid()); 
cookie.setPath("/"); 
response.addCookie(cookie); 

03. DB세팅(실DB에 적용 완료) 
1. 회원 View 생성 
  ===> 1) 대부분의 고객사에서 회원id;성별;연령대;지역 정도로 View 생성을 하고 있음 
CREATE OR REPLACE FORCE VIEW FLAMALL.SWM_MEMBER_WLOG 
(  ID,   SEX,   AGE,   ARE ) 
AS 
   SELECT M.MUID AS id, 
          DECODE (M.SEX,  '1', '남',  '2', '여') AS sex, 
          TO_NUMBER ( SUBSTR ( TO_CHAR (SYSDATE, 'YYYY') - 1899 - 100 * (CEIL (SUBSTR (M.IDB, 0, 1) / 2) - 1) - SUBSTR (M.IDA, 1, 2), 0, 1)) * 10  '대' age, 
          SUBSTR (M.ADDRESS, 0, 2) AS are  
     FROM SWM_MEMBER M 
--; 
;  
          2) 별도로 추가할 View(상품 DB, 제품 카테고리DB)는 (주)SK 텔링크 김성식 대리님과 협의해야 될 것 같음  
   가. 업무 협의할 업체 
 - (주)넷스루 배민경 Tel: 070-4027-7451 
--------------------------------------------------------------------------------------------------------- 

2) 웹취약성(보안) 결과 처리 
- 2010.08.11 결과 수령한 이후로 처리 못함 
- 관련 파일 첨부(SKT정기원_체크리스트_외국인전용쇼핑몰(APP)_v1.0.xls) 
- SSL 적용했기 때문에 처리해야 할 업무가 상당수 줄어 들거라 추정됨 
--------------------------------------------------------------------------------------------------------- 

3) [관리자] 프로모션 상품권 관리 개발(http://bos.fla365.com/adminnew/giftcard/promotion.do) 
- 80% 이상 개발 완료 
- 기존 프로프션을 관리하는 List 화면 개발 
- 리스트 화면에서 PIN 활성화 및 PIN 중복 등록 가능하게 수정 
- 프로모션 POINT 내역 List 화면(새창) 개발 ==> 미처리 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.08.19(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:10 ~ 18:00  ---> SK FLA365 운영 철수 

- SK FLA365 운영
- 업무 인수 인계 
1. 개발서버 인수 인계 데이터 생성(211.39.40.58, weblogic/weblogic) 
1) 경로: /ora_was/00. fla365_BackUp_Data 
2. 기존 업무 관련 메일 발송 
양민헌 대리: *@*.* 
3. 인수 인계 회의(15:00 ~ 15:40) 
이종환 이사, 문 일선 팀장, 양민헌 대리 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.08.20(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:10 ~ 18:00 

- TAMA_HouseK_Book
- VB.NET 인터넷 강의 수강 
==============================================================================================================

- 함 팔기(호수 결혼)   
삼각지역(4호선) --> 110B(전쟁기념관) --> 한남듕 주민센터 도착 
김도연씨 집: 서울 용산구 한남동 684-63 (대사관9길 25) 

19:00 한남듕 주민센터 도착 
19:10 임모, 임모 막내 동생 만남 
19:20 커피숍
20:10 태용, 현용 도착 
20:15 함 팔기 
20:20 도연씨집에서 저녁 
22:00 종료 
22:20 당구(80놓고 현용한테 이김)2010-08-23 
23:20 술집(임모, 현용, 태용) 
02:40 당구 
03:30 임모 동생 차(마티즈)로 태용이가 신도림역(1번 출구) 근처 우성 1차 아파트에 태워줌 
04:00 택시 
05:00 귀가(태용) 
==============================================================================================================

- 필기시험 합격자 발표 
01. 감리및사업관리(13),02. SE(15), 03. DB(16), 04. SF(11), 05. 보안(8) ==> 총점: 63점(평균: 52.5점) 
18 17 18 10 15  ===> 78(현용 점수  ====> 커트라인 83점(추정) 
==============================================================================================================

- STOCKS 
월(4,595), 화(4,640), 수(4,550), 목(4,490), 금(4,600) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.08.22(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:10 ~ 00:00 

▦조기축구 
06:10 기상  
07:00 신구초등학교 
07:40 게임(0:2 승) 
08:50 게임(2:3 패): 30대: 40대 
09:40 종료  
10:20 귀가 
12:20 수아비아 예식장(신사역 6번 출구): 임호수 결혼식: 정근이형, 일남, 종환, 근진, 후남(딸 서현) 
13:20 중식(부페) 
15:00 호프집 
16:00 W 호텔 아침 레스토랑(임모, 김도연씨(친구 2명), 태용, 현용, 종환, 후남(딸 서현)) 
19:40 종료 
19:40 신천역 호프집(태용, 현용) 
23:00 종료 
23:50 귀가 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.08.23(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:10 ~ 23:00 

- TAMA_HouseK_Book
- VB.NET 인터넷 강의 수강 
==============================================================================================================

- 태용 송금 
하나 은행 581-910048-19907  호수 웨딩카 14만원(계약금 5만원은 호수가 냄)  ===> 나눔계비에서 처리할 것 
==============================================================================================================

- 냉장고 
1. LG전자 R-B247GV --> 318,750원(소비전력:34.1kwh(월): 5등급)  
http://itempage.auction.co.kr/detailview.aspx?itemNo=A527646638  
2. LG전자 R-B247QV --> 280,360원(소비전력:37.5kwh(월)) 
http://itempage.auction.co.kr/detailview.aspx?itemNo=A541928003 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.08.24(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:10 ~ 23:00 

- TAMA_HouseK_Book
- TAMA_HouseK_Book(VB.NET 이용)  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.08.25(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:10 ~ 23:00 

- TAMA_HouseK_Book
- TAMA_HouseK_Book(VB.NET 이용)  
==============================================================================================================

- 구직 활동 
(주) Made in Heaven ITO 사업부 이종우 부장 T)011-1724-4565, *@*.* 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.08.26(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:10 ~ 23:00  

- TAMA_HouseK_Book
- TAMA_HouseK_Book(VB.NET 이용)  
REGSVR32 D:\TAMA_DATA\02_My_DOCUMENT\02_My_Project\Project_VB\OCX\cc_cExcelPrint.dll 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.08.27(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:10 ~ 23:00  

- TAMA_HouseK_Book
- TAMA_HouseK_Book(VB.NET 이용) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.08.28(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:10 ~ 00:00  

- TAMA_HouseK_Book
- 모래시계(1 ~25) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.08.30(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:10 ~ 00:00  

- TAMA_HouseK_Book
- TAMA_HouseK_Book(VB.NET 이용)  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.08.31(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:10 ~ 00:00  

- TAMA_HouseK_Book
- TAMA_HouseK_Book(VB.NET 이용) 
==============================================================================================================

- 네이버 검색 등록 
검색등록은 한 번의 등록으로 사이트 검색과 지도 검색에 모두 등록 됨 
https://submit.naver.com/regist.nhn ===> 지역 업체 정보 등록 
전화상담(ARS) 번호 안내 1588-3820 + 1번 + 1번, FAX: 02-3469-3906 
네이버 유지역 정보 센터(1544-9876): ===> 3개월 2,178,000원 
==============================================================================================================

- 면접 
1. 현대카드 국회의사당역 1번 출구 엄경일 수석  H.P) *, 08.31(화) 14시 30분 
============================================================================================================== 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //----------------------------------------------------------+ 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 