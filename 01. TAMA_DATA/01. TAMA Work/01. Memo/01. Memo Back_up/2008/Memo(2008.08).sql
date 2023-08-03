

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2008.08) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2008.08.01(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 22:00 --> 김태욱 차장 투입(사이버창구 PL:SK), 김재정 과장 교체 

- 교보 홈 리뉴얼 Prj
1. 보험계약조회(II)[간편조회] 
 1) 보험계약사항(Tab)   
com.kyobo.kblcm.cyber.in.cm.action.CYINAM_accountAction.java 
kblcm.cy.si.ii.action.CYSIII_accountAction.java --> YC122usCall 
CYSIII_main01.jsp, CYSIII_account_tab01.jsp  

- 광화문글판_응모 
http://127.0.0.1:8080/KBLCM/in/gwmyAppliIntro.do  
==============================================================================================================

- 상품코드(현존하는 것 / 판매중지 된 것) 
퇴직보험(1000126),  
비젼플러스상해보험(1000428 / 1000317) ,  
교보단체보장보험(1000392 / 1000417),  
교보직장인복지보험(1000409) 
교보한마음복지보험(1000447) 
==============================================================================================================

- 개인보험 업체 인사 
(주) IT KUDOS 정경환 이사  HP) * 
IT KUDOS 개발자 2명에게 사이버창구 설명 
==============================================================================================================

<form id="form1" action="UI_CY_0001_home_사이버창구_간편조회_보험계약조회_container.html" method="post"> 
<a style="text-decoration:underline;" href="javascript:" onclick="submitToLayer({formId:'form1', layerId:'sample1', width:'750'});">12313**34345</a> 
</form>  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.08.02(토) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00  --> 오소연씨(샤브샤브, 아이스티) 

- 교보 홈 리뉴얼 Prj
1. 보험계약조회(II)[간편조회] 
 1) 보험계약사항(Tab)   
com.kyobo.kblcm.cyber.in.cm.action.CYINAM_accountAction.java 
kblcm.cy.si.ii.action.CYSIII_accountAction.java --> YC122usCall 
CYSIII_main01.jsp, CYSIII_account_tab01.jsp  

- 광화문글판_응모 
http://127.0.0.1:8080/KBLCM/in/gwmyAppliIntro.do  
==============================================================================================================

 - 에러 
현상: [DEBUG] - Error while retrieving generic property class for property=resultMap 
java.lang.NullPointerException 
원인: jsp 파일에서 resultMap 함수를 받지 못 하는  파일이 존재( Action java 단에서 resultMap 만들어 줄 것) 
var ajax = new kbl.Ajax('resultDiv', true, true); //===> 확인할 것 
-------------------------------------------------------------------------------------------- 

- 에러 
현상: ibus.jcon.cics.CICSException: ECI_ERR_RESOURCE_SHORTAGE(-16) 
원인: Host interface 에러(신보험 네트웍 에러로 추정) 
조치: 최현진 과장에서 연락해서 조치를 받아야 함 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.08.03(일) 작업 ■■■■■■■■■■■■■■■■
---> 11:30 ~ 20:30   --> 조기 축구 

- 교보 홈 리뉴얼 Prj
1. 간편조회 인수인계 정리 
보험계약조회(탭 확인, 새창 띄우기 확인) 
펀드계좌현황조회(거래내역조회: 콤보박스 확인(ajax 이용)  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.08.04(월) 작업 ■■■■■■■■■■■■■■■■
---> 06:30 ~ 22:30   --> (주) IT KUDOS 투입(3명) 

- 교보 홈 리뉴얼 Prj
1. 사이버 창구 교육 자료 만들기(사이버창구 인터페이스 샘플 작업-v4.0.doc) 
- EJB -> SPRING으로 변경 
- 기타(에러 내용 분석) 
============================================================================================================== 

- 투자정보 IR 
http://127.0.0.1:8080/KBLCM/ir/subMain.do 
http://127.0.0.1:8080/KBLCM/ir/irkokuopOperationReport.do?docGbCd=08 
- 공개채용  
http://127.0.0.1:8080/KBLCM/rm/rmMain.do 
==============================================================================================================

- 사이버 창구 
김지영 대리(기업보험: 교보)   
이은화 과장(기업보험): * 
김성배 대리(개인보험: 교보) 
황성환 과장(개인보험): * 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.08.05(화) 작업 ■■■■■■■■■■■■■■■■
---> 06:10 ~ 01:00   --> 철야(야식: 라면(현용 쏨)) 

- 교보 홈 리뉴얼 Prj
1. 대상계약선택[기업보험>퇴직보험]   ===> 디자인, HTML 나옴(11시) 
http://127.0.0.1:8080/KBLCM/cy/CYCIRITC_selTrgCon.do 
kblcm.company.cy.ri.tc.action.COCYRITC_selTrgConAction  
--> kblcm.cy.ci.ri.tc.action.CYCIRITC_selTrgConAction.java --> YC122usCall 
CYCIRITC_selTrgCon_lst.jsp 
  
- 퇴직보험 로그인(http://100.1.131.106) ===> 실서버(K1), 테스트 서버(K5, K9) 
http://100.1.131.106/company/cocy_submain.do?p_cmd=list&layer=01  
==============================================================================================================

- DB ServiceBean 연결 에러 
에러 내용: 
[08/05 16:52:01] [ERROR] - Context initialization failed 
org.springframework.beans.factory.BeanCreationException: Error creating bean with name  
'CYCIRITC_loginServiceBean' defined in ServletContext resource  
[/WEB-INF/conf/context/cyContext.xml]: Error setting property values; nested exception 
is org.springframework.beans.NotWritablePropertyException: Invalid property 'CYCIRITC_loginDAO'  
of bean class [kblcm.cy.ci.ri.tc.service.CYCIRITC_loginServicelmpl]:  
Bean property 'CYCIRITC_loginDAO' is not writable or has an invalid setter method.  
Does the parameter type of the setter match the return type of the getter? 

조치1: CYCIRITC_loginServicelmpl.java 파일에서 CYCIRITC_loginDAO를 소문자 처리 
CYCIRITC_loginDAO --> cyciritc_loginDAO  
조치2: CYCIRITC_loginServicelmpl.java 파일에서 get, set 처리 
public CYCIRITC_loginDAO getCyciritc_loginDAO() {  
return cyciritc_loginDAO; 
}  
public void setCyciritc_loginDAO(CYCIRITC_loginDAO cyciritc_loginDAO) {  
this.cyciritc_loginDAO = cyciritc_loginDAO; 
}   
==============================================================================================================

<!-- // ID-비밀번호 로그인 처리 DAO --> 
<bean id="CYCIRITC_loginServiceBean" class="kblcm.cy.ci.ri.tc.service.CYCIRITC_loginServicelmpl"> 
<property name="CYCIRITC_loginDAO" ref="CYCIRITC_loginDAO"/> 
</bean>  

Error creating bean with name 'CYCIRITC_loginServiceBean' defined in ServletContext resource 
==============================================================================================================

- 로그인(기업보험) 
http://127.0.0.1:8080/KBLCM/cy/CYCOLO_login.do 

1. 세션 설정 
CorpLoginContext SessionVO = new CorpLoginContext();   //기업고객 로그인 세션  
                       
SessionVO.setLoginId(sUserId); 
SessionVO.setLoginPassword(sUserPasswd); 
SessionVO.setResd_no(sJuNo); // 주민등록번호 ==> 추가 
SessionVO.setLogin_gb(sLoginGb);    // 로그인 구분 ==> 추가  
SessionVO.setUser_type(sUseGb);    // 사용자구분(실무자,관리자): 미존재 
SessionVO.setNice_grade(loginVO.getCorp_grade()); // 기업등급 ==> 추가 
SessionVO.setWork_gb("2");     // 업무구분 ==> 추가 
SessionVO.setPolicyNo(policyNo);    //증권번호  
SessionVO.setUser_auth(loginVO.getUser_auth()); 

Map<Object, Object> Session = ActionContext.getContext().getSession(); 
Session.put("corpContext", SessionVO);  // 세션 세팅  
 -------------------------------------------------------------------------------------------- 

2. 세션 받기 
Map<Object, Object> Session = ActionContext.getContext().getSession();  
CorpLoginContext sessionVO = (CorpLoginContext)Session.get("corpContext");  //기업고객 로그인 세션  

String szUserId = sessionVO.getLoginId(); // 웹회원아이디 
String szUserPasswd = sessionVO.getLoginPassword();   // 비밀번호 
String ju_no = sessionVO.getResd_no();   //주민번호  
String szUserType = sessionVO.getUser_type();  //사용자구분(실무자,관리자)  
String login_gb = sessionVO.getLogin_gb();  //로그인 구분 
String szSecuNo = sessionVO.getPolicyNo();  //증권번호  
-------------------------------------------------------------------------------------------- 

=============  EW00EW74 [ECW074OD] 입력값 ============= 
EW00EW74_I : EW00_USER_ID [tama] 
EW00EW74_I : EW00_USER_PSWD [kyobo01] 
EW00EW74_I : EW00_SYJ_GB [1] 
EW00EW74_I : EW00_LOGIN_GB [2] 
EW00EW74_I : EW00_JU_NO [7201102352035] 
>> Communication is null, CTG Communication settimg.( EU00EW74 : 100.1.131.106:2006 ) 
CICS ECI Call Result value : 0 
EW00EW74_M : MSG_CODE [S00001]   ===> // 등록된 아이디 아님 
-------------------------------------------------------------------------------------------- 

-- 로그인 정보기록  
select PASSWD_CNT, ACCESS_DT, ACCESS_TIME 
 from TB_COCYM001 
 where ID = ? order by ID fetch FIRST 1 ROWS ONLY 
--; 
==============================================================================================================

- 개발 표준 교육(13:00 ~ 14:10) 
사이버창구 소스 위주로 설명(교보정보통신 대리 2명, (주) IT KUDOS 직원 4명) 
==============================================================================================================

-  회의(16:00 ~ 16:40) 
1. 서버 Deploy(당분간 담당 PL급이 할 것) 
2. catch SQLEXception 사용 
3. @Transaction(Reader =true) 사용 
4. DAO 호출시 Spring 사용 --> 기존 소스로 가기로 함 
- 개발서버(Deploy) 
https://10.33.3.19:9049/console/logon.jsp  
- 간편조회(사이버창구): 개발서버 
http://10.33.3.19:9080/KBLCM/cy/CYCOLO_simple_login.do 
==============================================================================================================

- 인수인계(김형철 차장) 
1. 보험대상자 명부정리(기업보험>퇴직보험) 
2. 전자청약(구부장이 전자청약 파트와 협의하여 다음주 수요일까지 만들어 준다고 함) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.08.06(수) 작업 ■■■■■■■■■■■■■■■■
---> 05:00 ~ 20:40 --> (주) IT KUDOS 철수(2명), 맥주(사이버창구: 김PL, 배과장, 이과장) 

- 교보 홈 리뉴얼 Prj
1. 대상계약선택[기업보험>퇴직보험>업무진행사항] 
http://127.0.0.1:8080/KBLCM/cy/CYCIRITC_selTrgCon.do 
kblcm.company.cy.ri.tc.action.COCYRITC_selTrgConAction 
--> kblcm.cy.ci.ri.tc.action.CYCIRITC_selTrgConAction.java --> YC122usCall 
CYCIRITC_selTrgCon_lst.jsp 
  
최현진 과장: 주민번호: 720110 - 20 choi3252/kyobo01 
김지영 대리(09919161/c919161) 
==============================================================================================================

1. 업무진행사항[기업보험>퇴직보험] 
 1) 처리중인 업무 
http://127.0.0.1:8080/KBLCM/cy/CYCIRISP_notProcess.do    
com.kyobo.kblcm.company.cy.ri.yu.action.COCYRIYU_notProcessAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_notProcessAction.java --> EW00W140odCall  
CYCIRISP_main01.jsp, CYCIRISP_notProcess_lst.jsp  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.08.07(목) 작업 ■■■■■■■■■■■■■■■■
---> 06:30 ~ 23:00  --> 슬리퍼 교체(교보생명 B/D 10층 매점), 재계약(C9: 10월 31일, 450) 

- 교보 홈 리뉴얼 Prj
1. 처리중인 업무[기업보험>퇴직보험>업무진행사항] 
http://127.0.0.1:8080/KBLCM/cy/CYCIRISP_notProcess.do    
com.kyobo.kblcm.company.cy.ri.yu.action.COCYRIYU_notProcessAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_notProcessAction.java --> EW00W140odCall  
CYCIRISP_main01.jsp, CYCIRISP_notProcess_lst.jsp  
==============================================================================================================

1. 진행중인 업무[기업보험>퇴직보험>업무진행사항] 
http://127.0.0.1:8080/KBLCM/cy/CYCIRISP_businessProcessAction.do 
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_businessProcessAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_businessProcessAction.java --> EW10EW22odCall 
CYCIRISP_businessProcess_lst.jsp 
------------------------------------------------------------------------------------------ 

1. 계약일반사항 변경 진행상황 조회[기업보험>퇴직보험>업무진행사항>진행중인 업무]  
  1-1) 계약일반사항 변경 진행상황 조회 
 http://127.0.0.1:8080/KBLCM/cy/CYCIRISP_generalContractRslt.do 
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_generalContractRsltAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_generalContractRsltAction.java --> EW10EW24odCall 
CYCIRISP_generalContractRslt.jsp 
==============================================================================================================

- 자바스크립트 에러 
현상: kbl.cy.ci을 찾을 수 없습니다. 
원인:  javascript가 2중으로 되어 있으면 이런 에러가 남 
조치: CYCIRITC_selTrgCon_lst.jsp 파일에서 javascript 부분 삭제 
<script type="text/javascript" src="/KBLCM/js/common/common.js"></script> 
------------------------------------------------------------------------------------------ 
- 소스 에러 
현상: Struts Problem Report 
Struts has detected an unhandled exception:   
원인: Action.java 파일에서 에러가 남 
==============================================================================================================

 - trim() 함수(/EW00EW76odCall.java에서) 
String EW76_JG_NAME2 = CY_commonUtil.strTrim(EW76_JG_NAME); 
EW76_JG_NAME2 = CY_commonUtil.replace(EW76_JG_NAME2, "　", ""); 
==============================================================================================================

- 회사 소개 
http://127.0.0.1:8080/KBLCM/in/ceoNewslist.do 
- 회사 소개(ceo관련소식 / 뉴스) 
http://10.33.3.19:9080/KBLCM/in/ceoNewslist.do 
==============================================================================================================

- 파일 다운로드 
<!-- 다운로드 및 윈도우플레이어로 보기 버튼 영역 --> 
<img src="/KBLCM/images/common/btn_movieDown.gif" style="cursor:hand;" onclick="kbl.in1.TvCf.doDownload();" /> 

// 동영상 다운받기 
doDownload: function() { 
	var frm = $("boardForm"); 
	//alert("fileName = " + frm.fileName.value); 
	var url = kbl.APPLICATION_CONTEXT_ROOT + "/in/fileDownload.do"; 
	frm.fileName.value = "master.mpg"; 

	frm.action = url;  
	frm.method = "POST"; 
	frm.submit(); 
}, 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.08.08(금) 작업 ■■■■■■■■■■■■■■■■
---> 06:40 ~ 23:00  --> 베이징 올림픽 개막, 김형철, 김윤상 차장 철수 

- 교보 홈 리뉴얼 Prj
1. 진행중인 업무[기업보험>퇴직보험>업무진행사항] 
http://127.0.0.1:8080/KBLCM/cy/CYCIRISP_businessProcessAction.do 
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_businessProcessAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_businessProcessAction.java --> EW10EW22odCall 
CYCIRISP_businessProcess_lst.jsp 
==============================================================================================================

- 세션 추가 세팅 
Map<Object, Object> Session = ActionContext.getContext().getSession(); 
CorpLoginContext SessionVO = (CorpLoginContext)Session.get("corpContext");  //기업고객 로그인 세션  

SessionVO.setPolicyNo(secu_num);    //증권번호 
Session.put("corpContext", SessionVO);  // 세션 세팅  
==============================================================================================================

- 광화문글판_응모 
http://127.0.0.1:8080/KBLCM/in/gwmyAppliIntro.do  
<action name="goMyAppliList" class="kblcm.in.in.ko.ng.gw.ap.action.ININKONGGWAP_DefaultAction"> 
    <result type="tiles">in.ng.gw.gwmyAppliView</result> 
</action> 
<!-- 광화문글판_응모 내역 조회하기 --> 
<definition name="in.ng.gw.gwmyAppliView" extends="in.tabMain"> 
<put-attribute name="ScriptPath" value="/KBLCM/js/service/in/in/ko/ng/gw/ap"></put-attribute> 
<put-attribute name="ScriptName" value="ININKONGGWAP_gwmyAppli"></put-attribute> 
<put-attribute name="tabContent" value="/WEB-INF/jsp/in/in/ko/ng/gw/ap/ININKONGGWAP_gwmyAppli_lst_frm.jsp" ></put-attribute> 
</definition> 
------------------------------------------------------------------------------------------ 

/ININKONGGWAP_gwmyAppli_lst_frm.jsp 파일에서  
 <script> 
// 리스트 조회 화면 개별 사용 스크립트 함수 
//kbl.extJS.initializeApplication(kbl.in1.gulsamo.do_list, kbl.in1.gulsamo); 
kbl.extJS.initializeApplication(kbl.in1.gwmyAppli.do_list, kbl.in1.gwmyAppli); 
kbl.PAGE_SIZE = 10; 
</script> 
------------------------------------------------------------------------------------------ 

/ININKONGGWAP_gwmyAppli_lst.js 파일에서  
<div class="cnt_paging" style="margin-top:10px"> 
<s:if test="%{resultMap.boardList.size != null}">    
<!--  페이지 처리  --> 
<s:include value="/WEB-INF/jsp/common/paging.jsp"> 
<s:param name="currPage"> <s:property value="inputMap.condVO.cpage" /></s:param> 
<s:param name="totalCount"> <s:property value="resultMap.totalCount" /></s:param> 
<s:param name="blockSize"><s:property value="inputMap.condVO.pageSize" /></s:param> 
<s:param name="maxLinkedPages" value="10" /> 
<s:param name="scriptname">kbl.in1.gwmyAppli.do_Page</s:param> 
</s:include> 
</s:if> 
</div> 
------------------------------------------------------------------------------------------ 

/ININKONGGWAP_gwmyAppli_lst.js 파일에서  
do_Page: function(page) { 
var frm = $("boardForm"); 
frm.cpage.value = page; 
frm.pageSize.value = kbl.PAGE_SIZE; 
var url = kbl.APPLICATION_CONTEXT_ROOT + "/in/myAppliList.do"; 
var kblAjax = new kbl.Ajax('resultDiv', false, true); 
kblAjax.ajaxCommSubmit(url, frm); 
} 

<action name="myAppliList" class="kblcm.in.in.ko.ng.gw.ap.action.ININKONGGWAP_ListAction"> 
    <result>/WEB-INF/jsp/in/in/ko/ng/gw/ap/ININKONGGWAP_gwmyAppli_lst.jsp</result> 
</action>  
==============================================================================================================

  - json 게시판(div형태로 탭을 가져감) 
<!-- TV광고 --> 
<action name="CfIntro"> 
    <result type="tiles">in.kc.ad.CfListIntro</result> 
</action> 
<action name="tvCflist" class="kblcm.in.in.ko.kc.ad.action.ININKOKCAD_TvCfListAction"> 
    <result type="json" name="success"></result> 
</action> 

<!-- TV/인쇄광고 INTRO --> 
<definition name="in.kc.ad.CfListIntro" extends="in.main" > 
<put-attribute name="ScriptPath" value="/KBLCM/js/service/in/in/ko/kc/ad"></put-attribute> 
<put-attribute name="ScriptName" value="ININKOKCAD_tvCf"></put-attribute> 
<put-attribute name="content" value="/WEB-INF/jsp/in/in/ko/kc/ad/ININKOKCAD_cf_intro.jsp" ></put-attribute> 
<put-attribute name="titleImage" value="/KBLCM/images/service/in/title_tvPrintAd.gif"></put-attribute> 
</definition> 
  
<script type="text/javascript" src="/KBLCM/js/service/in/in/ko/kc/ad/ININKOKCAD_tvCf.js"></script> 
==============================================================================================================

- 7월 지출결의서 작성, 제출 
메일 전송: 황찬호 팀장(*@*.*) 
결제 영수증: 황현용 팀장에게 제출 
==============================================================================================================

- 보험대상자 일괄 청구 관련 회의(13:00 ~ 13:30) 
1. 담당자를 김지영 대리에게 맡길려다 포기(내가 다시 맡기로 함) 
2. 정재상 대리: * 
==============================================================================================================

- 보험대상자(퇴직보험) 개발일정 
1. 개발기간(8월 18일 ~ 22일) 
2. 요청 데이타 
 1) 보험대상자 추계액변경 
INPUT: 퇴직금추계액 
추계액기준일자(요청) 
기준급여(요청)  
 2) 보험대상자>가입취소 
OUTPUT: 퇴직일자 <= 제도가입일자(요청) 
==============================================================================================================

- 서버 Deploy 방법 
1. jar 파일 먼저 ANT에 등록(commons-net-1.4.1.jar, jakarta-oro-2.0.8.jar) 
Windows --> Preference --> Ant  --> Runtime --> Add External Jars: 2개 파일 업로드: Apply  ==> OK 

2. 파일 전체 Update 

3. 소스 파일 빌드 
Project --> Build Automatically 

4. bulid.xml(마우스 오른쪽 클릭) --> Run As --> 2. Ant Build  --> 실행됨(2번 할 것) 
BUILD SUCCESSFUL 
Total time: 64 minutes 55 seconds 
  
5. 교보 개발 서버에 접속  
 1) url: https://10.33.3.19:9049/ibm/console/logon.jsp(wasadm00/wasadm00 ) 
 2) 서버 --> Application Server  -->  
 CMProdApp1, CMProdApp2, CMProdApp3, CMProdApp4(체크): 중지 클릭 ==> 확인(enable됨) 
  메시지 
   - 서버가 중지 되었다는 메세지가 나옴 

 3) CMProdApp1, CMProdApp2, CMProdApp3, CMProdApp4(체크): 시작 클릭 
   메시지  
- CMNode01/CMDevApp 서버가 시작되었습니다. JVM 로그 보기 추가 세부사항의 경우    
- CMNode02/CMDevApp 서버가 시작되었습니다. JVM 로그 보기 추가 세부사항의 경우  
- CMNode03/CMDevApp 서버가 시작되었습니다. JVM 로그 보기 추가 세부사항의 경우  
- CMNode04/CMDevApp 서버가 시작되었습니다. JVM 로그 보기 추가 세부사항의 경우  

5. 교보 개발 서버 확인 
http://10.33.3.19:9080/KBLCM/cy/CYCOLO_login.do ==> 기업보험 
http://10.33.3.19:9080/KBLCM/cy/CYCOLO_simple_login.do ==> 간편조회 
==============================================================================================================

- HTML 테스트 
http://10.33.165.191/KBLCM 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.08.09(토) 작업 ■■■■■■■■■■■■■■■■
---> 08:20 ~ 20:00   --> 조기축구, 2회의실 없애기(공간 확보) 

- 교보 홈 리뉴얼 Prj
1-1) 계약일반사항 변경 진행상황 조회[기업보험>퇴직보험>업무진행사항>진행중인 업무]    
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_generalContractRsltAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_generalContractRsltAction.java --> EW10EW24odCall 
CYCIRISP_generalContractRslt_viw.jsp   ======> 완료  
1-2) 보험금청구 진행상황 조회[기업보험>퇴직보험>업무진행사항>진행중인 업무]  
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_insuReqRsltAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_insuReqRsltAction.java --> EW10EW23odCall  
CYCIRISP_insuReqRslt_lst.jsp         ======>  완료 
1-2-1) 청구서 입력결과[기업보험>퇴직보험>업무진행사항>진행중인 업무]  
com.kyobo.kblcm.company.cy.ri.ap.action.COCYRIAP_insuReqDetailAction.java 
--> kblcm.cy.si.ii.action.CYCIRISP_insuReqDetailAction.java -> EW10EWA1odCall 
CYCIRISP_insuReqDetail_viw_pop.jsp   ======>  완료 
1-3) 무급부퇴직 진행상황 조회[기업보험>퇴직보험>업무진행사항>진행중인 업무] 
com.kyobo.kblcm.company.ad.cy.ri.ra.action.COADCYRIRA_appUnpaidRetireAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_unpaidRetireAction.java -->   EW30EW36odCall 
CYCIRISP_appUnpaidRetire_lst.jsp   
1-4) 가입취소 진행상황 조회[기업보험>퇴직보험>업무진행사항>진행중인 업무] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_unpaidRetireAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_unpaidRetireAction.java --> EW10EW17odCall 
CYCIRISP_unpaidRetire_lst.jsp   ======>  완료 
1-5) 사용자 변경 진행상황 조회[기업보험>퇴직보험>업무진행사항>진행중인 업무] 
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_userChangeRsltAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_userChangeRsltAction.java --> EW10EWA4odCall 
COCYRISP_userChangeRslt_viw.jsp  ======>  완료 
1-6) 전출신청 진행상황 조회[기업보험>퇴직보험>업무진행사항>진행중인 업무] 
com.kyobo.kblcm.company.cy.ri.ap.action.COCYRIAP_transferReqApprovalAction.java 
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_transferReqApprovalAction.java --> EW10EW154odCall 
CYCIRISP_transferReqApproval_lst.jsp  ======>  완료 
==============================================================================================================

- recv_data 값 
[recv_data]{ 
param_data={status=01, company_nm=（주）동명기술공단종합건축사사무소, COM_O_CUR_COUNT=25, secu_no=0001930},  
recv_data=[{COM_O_SC_GB_CODE=31, COM_O_SC_YMD=2008-08-06, COM_O_SC_AMT=1,057,969, COM_O_SMSC_SEQ=68,  
  COM_O_SC_CNT=1, STATUS=관리자결재중, COM_O_SC_GB=퇴직일시금, COM_REG_DT=2008-08-06, IN_SEL=2,  
  COM_O_CR_NAME= 퇴직일시금 청구, COM_O_SC_YMD_GB=N, COM_O_SC_NAME=김지영 , COM_O_JH_ST=10},  
{COM_O_SC_GB_CODE=31, COM_O_SC_YMD=2008-08-09, COM_O_SC_AMT=5,188,777, COM_O_SMSC_SEQ=92,  
  COM_O_SC_CNT=2, STATUS=관리자결재중, COM_O_SC_GB=퇴직일시금, COM_REG_DT=2008-08-09, IN_SEL=2,  
  COM_O_CR_NAME= 퇴직일시금 청구, COM_O_SC_YMD_GB=N, COM_O_SC_NAME=김지영  , COM_O_JH_ST=10}]} 
- 조회수:[<s:property value='resultMap.recv_data.recv_data.size'/>] 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.08.10(일) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00  --> 맥주(현용, 정이사:전략적 제휴) 

- 교보 홈 리뉴얼 Prj
1-1) 계약일반사항 변경 진행상황 조회[기업보험>퇴직보험>업무진행사항>진행중인 업무]    
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_generalContractRsltAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_generalContractRsltAction.java --> EW10EW24odCall 
CYCIRISP_generalContractRslt_viw.jsp 
1-2) 보험금청구 진행상황 조회[기업보험>퇴직보험>업무진행사항>진행중인 업무]  
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_insuReqRsltAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_insuReqRsltAction.java --> EW10EW23odCall  
CYCIRISP_insuReqRslt_lst.jsp 
1-2-1) 청구서 입력결과[기업보험>퇴직보험>업무진행사항>진행중인 업무]  
com.kyobo.kblcm.company.cy.ri.ap.action.COCYRIAP_insuReqDetailAction.java 
--> kblcm.cy.si.ii.action.CYCIRISP_insuReqDetailAction.java -> EW10EWA1odCall 
CYCIRISP_insuReqDetail_viw_pop.jsp 
1-3) 무급부퇴직 진행상황 조회[기업보험>퇴직보험>업무진행사항>진행중인 업무] 
com.kyobo.kblcm.company.ad.cy.ri.ra.action.COADCYRIRA_appUnpaidRetireAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_unpaidRetireAction.java -->   EW30EW36odCall 
CYCIRISP_appUnpaidRetire_lst.jsp   
1-4) 가입취소 진행상황 조회[기업보험>퇴직보험>업무진행사항>진행중인 업무] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_unpaidRetireAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_unpaidRetireAction.java --> EW10EW17odCall 
CYCIRISP_unpaidRetire_lst.jsp 
1-5) 사용자 변경 진행상황 조회[기업보험>퇴직보험>업무진행사항>진행중인 업무] 
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_userChangeRsltAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_userChangeRsltAction.java --> EW10EWA4odCall 
CYCIRISP_userChangeRslt_viw.jsp 
1-6) 전출신청 진행상황 조회[기업보험>퇴직보험>업무진행사항>진행중인 업무] 
com.kyobo.kblcm.company.cy.ri.ap.action.COCYRIAP_transferReqApprovalAction.java 
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_transferReqApprovalAction.java --> EW10EW154odCall 
CYCIRISP_transferReqApproval_lst.jsp 
==============================================================================================================

- 날짜 전환  
sh.put("sinchung_date2", CY_commonUtil.stringToDateForm(COM_O_GJ_DATE, "."));  //날짜전환(.으로 전환) 
String insuPolicyNew = CY_commonUtil.getNumberStar(EW76_JG_NO, 7, 4); // 증권번호(* 앞에서 5자리부터 3자리를 * 처리) 
- trim()함수 
COM_O_CUR_COUNT = COM_O_CUR_COUNT.trim(); 
==============================================================================================================

- 게시판 페이징 달기 
<!-- 페이징 --> 
<div class="cnt_paging MT10">   
	<s:include value="/WEB-INF/jsp/common/paging.jsp"> 
	<s:param name="currPage"><s:property value="inputMap.condVO.cPage" /></s:param> 
	<s:param name="totalCount"><s:property value="resultMap.recv_data.param_data.rcount" /></s:param> 
	<s:param name="blockSize" value="5" /> 
	<s:param name="maxLinkedPages" value="10" /> 
	<s:param name="scriptname">kbl.cy.si.CYSIII_account_lst.do_page</s:param> 
	</s:include>  
</div>  
==============================================================================================================

=============  EW10EW22 [ECW022OD] 입력값 확인 ============= 
EW10EW22_IN : COM_I_SC_DATE_FR [2008-08-01] //날짜 
EW10EW22_IN : COM_I_SC_DATE_TO [2008-08-10] //날짜2 
EW10EW22_IN : COM_K_CUR_PAGE [000001]   //페이지  
EW10EW22_IN : COM_O_TOT_COUNT [null] 
EW10EW22_IN : COM_O_CUR_COUNT [null] 
>> Communication is null, CTG Communication settimg.( EU10EW22 : 100.1.131.106:2006 ) 
CICS ECI Call Result value : 0 
MSG_CODE = [000000] 

=============  EW10EW22 [ECW022OD] 입력값 확인 ============= 
EW10EW22_IN : COM_I_SC_DATE_FR [2008-08-01] 
EW10EW22_IN : COM_I_SC_DATE_TO [2008-08-11] 
EW10EW22_IN : COM_K_CUR_PAGE [000002]   //페이지  
EW10EW22_IN : COM_O_TOT_COUNT [null] 
EW10EW22_IN : COM_O_CUR_COUNT [null] 
>> Communication is null, CTG Communication settimg.( EU10EW22 : 100.1.131.106:2006 ) 
CICS ECI Call Result value : 0 
MSG_CODE = [E61001] 
DUMMY : 000000100   
------------------------------------------------------------------------------------------ 

=============  EW10EW23 [ECW023OD] 입력값 확인 ============= 
EW10EW23_IN : COM_K_SMSC_DATE [2008-08-11]  //날짜 
EW10EW23_IN : COM_K_SMSC_GB [21]   //코드 
EW10EW23_IN : COM_K_SMSC_SEQ [9]  //SEQ 
EW10EW23_IN : COM_K_CUR_PAGE [000001]   //페이지  
>> Communication is null, CTG Communication settimg.( EU10EW23 : 100.1.131.106:2006 ) 
CICS ECI Call Result value : 0 
MSG_CODE = [E70001]  => // 에러 메세지(호스트 통신 리턴 메시지 체크) 
DUMMY : 000000100   

- EW10EW23odCall.java 파일에서 
 =============  EW10EW23 [ECW023OD] 입력값 확인 ============= 
EW10EW23_IN : COM_K_SMSC_DATE [2008-08-06]  //날짜 
EW10EW23_IN : COM_K_SMSC_GB [21]  //코드 
EW10EW23_IN : COM_K_SMSC_SEQ [68]  //SEQ 
EW10EW23_IN : COM_K_CUR_PAGE [000001]  //페이지  
>> Communication is null, CTG Communication settimg.( EU10EW23 : 100.1.131.106:2006 ) 
CICS ECI Call Result value : 0 
MSG_CODE = [E70001]  ==> // 에러 메세지(호스트 통신 리턴 메시지 체크) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.08.11(월) 작업 ■■■■■■■■■■■■■■■■
---> 06:30 ~ 21:00  --> 맥주(배과장, 이과장): 일정, 댓가 

- 교보 홈 리뉴얼 Prj
1) 기본계약사항[기업보험>퇴직보험>계약사항 조회/변경>계약일반사항]     
com.kyobo.kblcm.company.cy.ri.is.action.COCYRIIS_generalContractAction.java 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_generalContractAction.java --> YC122usCall 
CYCIRIIS_main01.jsp, CYCIRIIS_generalContract_viw.jsp 

1-1) 변경사항 입력[기업보험>퇴직보험>계약사항 조회/변경>계약일반사항]     
com.kyobo.kblcm.cyber.in.cm.action.CYINAM_accountAction.java 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_generalContractAction --> YC122usCall 
CYCIRIIS_generalContract_upd.jsp 
   
1-2) 결재신청완료 [기업보험>퇴직보험>계약사항 조회/변경>계약일반사항]     
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_insuredAltAction 
--> kblcm.cy.ci.ri.is.action.CYSIII_insuredAltAction  --> YC122usCall 
CYCIRIIS_insuredAlt_lst.jsp 
==============================================================================================================

1) 보험대상자 조회[기업보험>퇴직보험>계약사항 조회/변경>보험대상자]  
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIIS_insuredPersonAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonAction --> YC122usCall 
CYCIRIIS_insuredPerson_lst.jsp 

1-1) 보험대상자 조회- 엑셀 다운로드[기업보험>퇴직보험>계약사항 조회/변경>보험대상자]  
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIIS_insuredXlsAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredXlsAction 

2) 보험대상자 정보변경[기업보험>퇴직보험>계약사항 조회/변경>보험대상자] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIIS_generalContractAction.java 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltAction --> YC122usCall 
CYCIRIIS_insuredAlt_lst.jsp  
==============================================================================================================

 - Eclipse CVS 설정 
1. CVS Repository -> New -> Repository Location 
2. Add CVS Repository 
 1) Host: 10.33.165.171   
 2) Repository path: /kyobo 
 3) Authorization: dev02/dev02  
3. Head --> check out(오른쪽 클릭) 
==============================================================================================================

-  //보험금청구 진행상황 조회(연금청구) 
 jsp\company\cy\ri\sp\COCYRISP_insuReqRslt_lst.jsp   
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.08.12(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00  --> 태용 자고감(부산 배행기), (주) IT KUDOS 재투입(6명) 

- 교보 홈 리뉴얼 Prj
1-1) 계약일반사항 변경 진행상황 조회[기업보험>퇴직보험>업무진행사항>진행중인 업무]    
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_generalContractRsltAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_generalContractRsltAction.java --> EW10EW24odCall 
CYCIRISP_generalContractRslt_viw.jsp   ======> 완료 
[I/F IN 세팅] [szDate]2008-08-12[szTableSeq]0001[infdate]2008-08-01[intdate]2008-08-12 
=============  EW10EW24 [ECW024OD] 입력값 확인 ============= 
EW10EW24_HEAD : LOGIN [kyobo01] 
EW10EW24_HEAD : PASSWORD [kyobo01] 
EW10EW24_HEAD : USER_TYPE [1] 
EW10EW24_HEAD : PROC_TYPE [S] 
EW10EW24_HEAD : SECU_NUM [0003302] 
EW10EW24_HEAD : COMPANY_NAME [태진여객（주）　　　　　　　　　　　　　] 
EW10EW24_HEAD : STATUS_CODE [] 
EW10EW24_IN : COM_I_SC_DATE [2008-08-12] 
EW10EW24_IN : COM_I_SMSC_SEQ    [0001] 
>> Communication is null, CTG Communication settimg.( EU10EW24 : 100.1.131.106:2006 ) 
CICS ECI Call Result value : 0 
   
1-2) 보험금청구 진행상황 조회[기업보험>퇴직보험>업무진행사항>진행중인 업무]  
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_insuReqRsltAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_insuReqRsltAction.java --> EW10EW23odCall  
CYCIRISP_insuReqRslt_lst.jsp   ======> 완료   
1-2-1) 청구서 입력결과[기업보험>퇴직보험>업무진행사항>진행중인 업무]  
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_unpaidRetireRsltAction 
--> kblcm.cy.si.ii.action.CYCIRISP_insuReqDetailAction.java -> EW10EWA1odCall 
CYCIRISP_insuReqDetail_viw_pop.jsp  ======> 완료(더 작업 필요)  
1-3) 무급부퇴직 진행상황 조회[기업보험>퇴직보험>업무진행사항>진행중인 업무] 
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_unpaidRetireRsltAction 
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_unpaidRetireRsltAction -->   EW30EW36odCall  
CYCIRISP_appUnpaidRetire_lst.jsp  ======> 완료 
1-4) 가입취소 진행상황 조회[기업보험>퇴직보험>업무진행사항>진행중인 업무] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRISP_unpaidRetireRsltAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_unpaidRetireRsltAction--> EW10EW17odCall 
COCYRISP_joinCancelRslt_lst.jsp  ======> 완료   

1-5) 사용자 변경 진행상황 조회[기업보험>퇴직보험>업무진행사항>진행중인 업무] 
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_userChangeRsltAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_userChangeRsltAction.java --> EW10EWA4odCall 
CYCIRISP_userChangeRslt_viw.jsp  ======>  

1-6) 전출신청 진행상황 조회[기업보험>퇴직보험>업무진행사항>진행중인 업무] 
com.kyobo.kblcm.company.cy.ri.ap.action.COCYRIAP_transferReqApprovalAction.java 
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_transferReqApprovalAction.java --> EW10EW154odCall 
CYCIRISP_transferReqApproval_lst.jsp  ======> 완료 
=============  EW10EW154 [ECW154OD] 입력값 확인 ============= 
EW10EW154_HEAD : LOGIN [kyobo01] 
EW10EW154_HEAD : PASSWORD [kyobo01] 
EW10EW154_HEAD : USER_TYPE [1] 
EW10EW154_HEAD : PROC_TYPE [S] 
EW10EW154_HEAD : SECU_NUM [0003302] 
EW10EW154_HEAD : COMPANY_NAME [] 
EW10EW154_HEAD : STATUS_CODE [] 
EW10EW154_IN : COM_I_SC_YMD     [2008-08-13] 
EW10EW154_IN : COM_I_SMSC_SEQ   [0001] 
EW10EW154_IN : COM_K_CUR_PAGE   [000001] 
EW10EW154_IN : COM_O_SIL_JR_YUL [null] 
EW10EW154_IN : COM_O_TOT_COUNT  [null] 
EW10EW154_IN : COM_O_CUR_COUNT  [null] 
EW10EW154_IN : COM_O_SC_GB      [null] 
EW10EW154_IN : COM_O_PBHJ_NO    [null] 
EW10EW154_IN : COM_O_PBHJ_NM    [null] 
EW10EW154_IN : COM_O_JU_NO      [null] 
EW10EW154_IN : COM_O_GJ_GYE     [null] 
EW10EW154_IN : COM_O_DND_TJ_AMT [null] 
EW10EW154_IN : COM_O_JR_AMT     [null] 
EW10EW154_IN : COM_O_IS_YMD     [null] 
EW10EW154_IN : COM_O_JGJS_YMD   [null] 
>> Communication is null, CTG Communication settimg.( EU10W154 : 100.1.131.106:2006 ) 
CICS ECI Call Result value : 0 
EW10EW154_MSGCODE = [000000] 

1-7) 보험대상자 변경 상세 결재내역[기업보험>퇴직보험>업무진행사항>진행중인 업무] 
kblcm.company.cy.ri.sp.action.COCYRISP_insuredAltRsltAction 
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_insuredAltRsltAction --> EW10EW154odCall 
CYCIRISP_insuredAltRslt_lst.jsp  ======> 완료(디자인 나오면 새로 작업할 것) 
==============================================================================================================

- 자바 스크립트 
var url; 
var tb_seq = "<s:property value='resultMap.param_data.tb_seq'/>"; 
var send_date = "<s:property value='resultMap.param_data.send_date'/>"; 
var proc_gb = "<s:property value='resultMap.param_data.proc_gb'/>"; 
var page = fc.getFldVal("page_print", "", frm); 
==============================================================================================================

- 테스트 서버 접근 방법(106번 서버) 
> cd /was_svr/AppServer/logs/kblcm1  
> tail -f SystemOut.log 
PC: jun8876 
50001188/wldud77 

* secureCRT 접속방법 *  
>100.1.131.106 접속 (50001258/ss******)(김지영 대리:50001188/wldud77) 
> su - root 
kyobolife  
> clog  kyobolife 
> sna -d s  ===> K5/K9확인방법 
컴 다시 켤때 ==> 바탕화면 > genuine-hacksmw.reg  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.08.13(수) 작업 ■■■■■■■■■■■■■■■■
---> 06:40 ~ 22:40 

- 교보 홈 리뉴얼 Prj
1) 기본계약사항[기업보험>퇴직보험>계약사항 조회/변경>계약일반사항] 
com.kyobo.kblcm.company.cy.ri.is.action.COCYRIIS_generalContractAction.java 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_generalContractAction 
CYCIRIIS_generalContract_viw.jsp  ======> 완료 
1-1) 변경사항 입력[기업보험>퇴직보험>계약사항 조회/변경>계약일반사항] 
kblcm.company.cy.ri.ms.action.COCYRIMS_generalContractAction 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_generalContractChAction --> EW10EW16odCall 
CYCIRIIS_generalContract_upd.jsp ======> 
1-2) 결재신청완료[기업보험>퇴직보험>계약사항 조회/변경>계약일반사항] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_insuredAltAction 
--> kblcm.cy.ci.ri.is.action.CYSIII_insuredAltAction  --> YC122usCall 
CYCIRIIS_insuredAlt_lst.jsp ======> 
  
2-1) 변경사항 입력[기업보험>퇴직보험>계약사항 조회/변경>계약일반사항>보험대상자 대표기관 및 대표자 변경] 
kblcm.company.cy.ri.ms.action.COCYRIMS_representAction 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_representAction --> YC122usCall 
CYCIRIIS_represent_upd.jsp  ======> 
2-2) 결재신청완료[기업보험>퇴직보험>계약사항 조회/변경>계약일반사항>보험대상자 대표기관 및 대표자 변경] 
kblcm.company.cy.ri.ms.action.COCYRIMS_representAction 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_representAction --> YC122usCall 
CYCIRIIS_apprvlok_viw.jsp 
  
3) 가입확인서 발급[기업보험>퇴직보험>계약사항 조회/변경>계약일반사항] 
kblcm.company.cy.ri.cr.action.COCYRICR_appJoinConfirmAction 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_appJoinConfirmAction 
CYCIRIIS_appJoinConfirm_viw.jsp  ======>   
==============================================================================================================

-  주민번호(* 앞에서 6자리부터 6자리를 * 처리) 
String juminNo_star = CY_commonUtil.getNumberStar(COM_O_PBHJ_DPJ_NO, 13, 6, "*******"); 
contractVO.setCOM_O_PBHJ_DPJ_NO(CO_Util.SeperateCorpNum(juminNo_star));    //주민번호  
==============================================================================================================

- 맥 어드레스(Mac address) 
> ipconfig /all 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.08.14(목) 작업 ■■■■■■■■■■■■■■■■
---> 06:40 ~ 22:50   --> 탁상용 선풍기 받음(교보생명 Prj) 

- 교보 홈 리뉴얼 Prj
1) 기본계약사항[기업보험>퇴직보험>계약사항 조회/변경>계약일반사항>기본계약사항] 
com.kyobo.kblcm.company.cy.ri.is.action.COCYRIIS_generalContractAction.java 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_generalContractAction 
CYCIRIIS_generalContract_viw.jsp  ======> 완료 
1-1) 변경사항 입력[기업보험>퇴직보험>계약사항 조회/변경>계약일반사항>기본계약사항] 
kblcm.company.cy.ri.ms.action.COCYRIMS_generalContractAction 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_generalContractChAction --> EW10EW16odCall 
CYCIRIIS_generalContract_upd.jsp ======> 완료  
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_generalContract_upd.do 

1-1-1)  예금주 체크[기업보험>퇴직보험>계약사항 조회/변경>계약일반사항>기본계약사항]  
CYCIRIIS_depositor_pop.jsp ======> 완료  
1-1-2) 계좌 확인[기업보험>퇴직보험>계약사항 조회/변경>계약일반사항>기본계약사항] 
kblcm.company.cy.ri.ms.action.CYCIRIIS_depositorAction 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_depositorAction  
CYCIRIIS_depositorRslt_viw.jsp ======> 완료  
1-2) 결재신청완료[기업보험>퇴직보험>계약사항 조회/변경>계약일반사항>기본계약사항] 
kblcm.company.cy.ri.ms.action.COCYRIMS_generalContractAction 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_generalContractAction 
CYCIRIIS_apprvlok_viw.jsp ======>  

1-2-1) 변경사무 구비서류 안내 
COCYRIMS_reqDoc_pop.jsp 
--> CYCIRIIS_reqDoc_pop.jsp 
==============================================================================================================

- 자바스크립트 js 파일 
<script src="/KBLCM/js/CN_FormControl.js"></script>  
<script src="/KBLCM/js/CO_Util.js"></script> 
<script src="/KBLCM/js/CN_StringUtil.js"></script> 
<script src="/KBLCM/js/CN_Common.js"></script> 
------------------------------------------------------------------------- 

 - layer 닫기 
<a href="javascript:" onclick="top.layers.hide(window.layerId);"> 
 <img src="/KBLCM/images/common/btn_layerClose.gif" class="cnt_layer_close" /></a>[닫기] 
- 일반 창 닫기  
<a href="javascript:self.close();">[닫기]</a> 
- 도움말 링크 
<img helpId ="CYCIRISP_insuReqRslt_lst" src="/KBLCM/images/common/btn_help01.gif"/><!--// 도움말 //-->  
==============================================================================================================

- 우편번호 찾기 
 SELECT SIDO  GUGUN  DONG 
 FROM TB_CN00M100 
 WHERE ZIP_CD = '616090' GROUP BY SIDO, GUGUN, DONG    
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.08.15(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:41 ~ 18:00   --> 휴일 근무, 행주산성(오리집, 노래방): 사이버창구팀(개인보험:7, 기업보험:4) 

- 교보 홈 리뉴얼 Prj
2-1) 변경사항 입력[기업보험>퇴직보험>계약사항 조회/변경>계약일반사항>보험대상자 대표기관 및 대표자 변경] 
kblcm.company.cy.ri.ms.action.COCYRIMS_representAction 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_representAction --> YC122usCall 
CYCIRIIS_represent_upd.jsp  ======> 완료 
 http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_represent_upd.do 

2-2) 결재신청완료[기업보험>퇴직보험>계약사항 조회/변경>계약일반사항>보험대상자 대표기관 및 대표자 변경] 
kblcm.company.cy.ri.ms.action.COCYRIMS_representAction 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_representAction --> YC122usCall 
CYCIRIIS_apprvlok_viw.jsp  ======> 
CYCIRIIS_represent_viw 

3) 가입확인서 발급[기업보험>퇴직보험>계약사항 조회/변경>계약일반사항] 
kblcm.company.cy.ri.cr.action.COCYRICR_appJoinConfirmAction 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_appJoinConfirmAction 
CYCIRIIS_appJoinConfirm_viw.jsp  ======> 완료 
3-1) 증명서발급[기업보험>퇴직보험>계약사항 조회/변경>계약일반사항] 
kblcm.company.cy.ri.cr.action.COCYRICR_appJoinConfirmAction 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_appJoinConfirmAction 
CYCIRIIS_appJoinConfirm_prn.jsp  ======> 완료 
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_appJoinConfirm_viw.do 
==============================================================================================================

- 개발 표준 교육(13:00 ~ 14:20): 3차 
가입확인서 발급(기업보험) 소스 위주로 설명((주) IT KUDOS 직원 6명) 
==============================================================================================================

- select 선택값 처리 
<select name="COM_I_PBHJ_DPJ_GB" style="width:234px"> 
<option value="">&nbsp;</option> 
<option value="01" <s:if test="%{resultMap.contractVO.getCOM_I_PBHJ_DPJ_GB().equals('01')}">selected</s:if>>전종업원</option> 
<option value="02"<s:if test="%{resultMap.contractVO.getCOM_I_PBHJ_DPJ_GB().equals('02')}">selected</s:if>>노사협의회</option> 
<option value="03"<s:if test="%{resultMap.contractVO.getCOM_I_PBHJ_DPJ_GB().equals('03')}">selected</s:if>>노동조합</option> 
</select> 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.08.16(토) 작업 ■■■■■■■■■■■■■■■■
---> 08:30 ~ 21:00  --> 토요 근무(비) 

- 교보 홈 리뉴얼 Prj
2-1) 변경사항 입력[기업보험>퇴직보험>계약사항 조회/변경>계약일반사항>보험대상자 대표기관 및 대표자 변경] 
kblcm.company.cy.ri.ms.action.COCYRIMS_representAction 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_representAction 
CYCIRIIS_represent_upd.jsp  ======> 완료 
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_represent_upd.do 

2-1-1) 변경사무 구비서류 안내[기업보험>퇴직보험>계약사항 조회/변경>계약일반사항>보험대상자 대표기관 및 대표자 변경] 
COCYRIMS_reqDoc_pop.jsp   
--> CYCIRIIS_reqDoc_pop.jsp   

2-1-2) 공인 인증서 처리[기업보험>퇴직보험>계약사항 조회/변경>계약일반사항>보험대상자 대표기관 및 대표자 변경] 
/jsp/company/cyCO_certProcessp.jsp   
--> /jsp/cy/ci/CYCI_certProcess.jsp 
  
2-2) 결재신청완료[기업보험>퇴직보험>계약사항 조회/변경>계약일반사항>보험대상자 대표기관 및 대표자 변경] 
kblcm.company.cy.ri.ms.action.COCYRIMS_representAction 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_representAction 
CYCIRIIS_apprvlok_viw.jsp  ======> 완료 
   
2-2-1) 보험대상자 계약일반사항 변경 출력[기업보험>퇴직보험>계약사항 조회/변경>계약일반사항>보험대상자 대표기관 및 대표자 변경] 
kblcm.company.cy.ri.ms.action.COCYRIMS_representAction 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_representAction 
CYCIRIIS_bossUpdPrint.jsp  ======> 완료  
==============================================================================================================

- 테스트 서버(19번 서버) 
http://10.33.3.19/KBLCM/cy/CYCOLO_login.do 
- 교육자료 
\\10.33.165.170\kyobo\88.공통\04.개발팀\기타\01. 교육자료 
==============================================================================================================

- include 설정 
<%--20070319 공인 인증서 관련 추가 --%>   
<s:include value="/WEB-INF/jsp/cy/ci/CYCI_certProcessInclude.jsp"> 
<s:param name="uType" value="<s:property value='resultMap.uType'/>"/> <!-- 사용자 권한 --> 
<s:param name="resdNo" value="<s:property value='resultMap.resdNo'/>"/>  <!-- 인증서번호(1:주민번호, 2:법인번호) -->  
</s:include>  

 - include 설정2 
<s:include value="/WEB-INF/jsp/cy/ci/CYCI_certProcessInclude.jsp" />   
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.08.17(일) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 20:30  --> 휴일 근무 

- 교보 홈 리뉴얼 Prj
2-1) 변경사항 입력[기업보험>퇴직보험>계약사항 조회/변경>계약일반사항>보험대상자 대표기관 및 대표자 변경] 
kblcm.company.cy.ri.ms.action.COCYRIMS_representAction 

- 공통 CSS 가이드(자바 스크립트) 
http://10.33.165.191/KBLCM/cssGuide/list_tab_js.html 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.08.18(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 

- 교보 홈 리뉴얼 Prj
1) 엑셀파일 일괄 전송[기업보험>퇴직보험>계약사항 조회/변경>보험대상자>보험대상자  명부 정리] 
kblcm.company.cy.ri.ms.action.COCYRIMS_representAction 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_representAction 
CYCIRIIS_insuredPersonAllSend.jsp  ======>  
<!-- 보험금청구 > 퇴직보험금일괄청구 -->     
==============================================================================================================

 - 2008년 주민세(개인균등할) 납부 
세목: 주민세, 지방교육세(6,000원) 
기관: 6205707, 세목: 10104001, 과세번호: 0012590  
==============================================================================================================

- 19번 서버 텔넷 접속  
> wassvr/wassvr 
>  /applog/cmwas/CMProdApp1/SystemErr.log 
>  /applog/cmwas/CMProdApp2/SystemErr.log 
------------------------------------------------------------------------------------------------- 

- 106번 서버 텔넷 접속 
> telnet 100.1.131.106   
> 50001188/ansgur23 
> su -  
> kyobolife  
> clog   
==============================================================================================================

- 개발 표준 교육(20:00 ~ 21:20): 4차 
계약사항 조회(기업보험) 소스 위주로 설명(개발자 6명:사이버창구 관리자) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.08.19(화) 작업 ■■■■■■■■■■■■■■■■
---> 06:40 ~ 23:00  --> CVS 서버 고장(데이타 깨짐), 정전(변압기 증설) 

- 교보 홈 리뉴얼 Prj
1-1) 엑셀파일 일괄 전송[기업보험>퇴직보험>계약사항 조회/변경>보험대상자>보험대상자  명부 정리]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSend_ins.jsp  ======>   

2) 전송결과 확인/수정[기업보험>퇴직보험>계약사항 조회/변경>보험대상자>보험대상자  명부 정리]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSendOK_viw.jsp  ======> 

3) 결재신청[기업보험>퇴직보험>계약사항 조회/변경>보험대상자>보험대상자  명부 정리] 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotalSendApprvAction 
CYCIRIIS_insuredPersonTotalSendApproval_view.jsp  ======> 

 - 퇴직보험 일괄청구(보험금청구) 
http://127.0.0.1:8080/KBLCM/cy/cyciriisInsuReqMain.do 
------------------------------------------------------------------------------------------------- 

<!--// ci.ri.is 사이버창구>기업보험>퇴직보험>보험금청구>퇴직보험 일괄청구> //--> 
<action name="cyciriisBundleSendInit" class="kblcm.cy.ci.ri.is.action.CYCIRIIS_bundleSendInitAction" >        
<result name="init" >/WEB-INF/jsp/cy/ci/ri/is/CYCIRIIS_bundleSend_ins.jsp</result> 
</action> 

<!--// ci.ri.is 사이버창구>기업보험>퇴직보험>보험금청구>퇴직보험 일괄청구> 일괄청구 //--> 
<action name="cyciriisBundleSend" class="kblcm.cy.ci.ri.is.action.CYCIRIIS_bundleSendAction" >        
<result name="init" >/WEB-INF/jsp/cy/ci/ri/is/CYCIRIIS_bundleSend_ins.jsp</result> 
<result name="SendOK" type="tiles">cy.cyciriisBundleSendOK</result>        
</action> 

<definition name="cy.CYCIRIIS_insuredAllSendOK" extends="cy.tabMain"> 
<put-attribute name="titleImage" value="/KBLCM/images/service/cy/title_ins_demand.gif"></put-attribute>     
<put-attribute name="ScriptPath" value="/KBLCM/js/cy/ci/ri/is"></put-attribute> 
<put-attribute name="ScriptName" value="CYCIRIIS_indivReqRsltFormControl.js"></put-attribute>     
<put-attribute name="tabContent" value="/WEB-INF/jsp/cy/ci/ri/is/CYCIRIIS_bundleSendOK_viw.jsp"></put-attribute>  
</definition> 


<!--// ci.ri.is 사이버창구>기업보험>보험료>일괄청구> 대상자조회//--> 
<definition name="cy.cyciriisBundleReqSelect" extends="cy.tabMain"> 
<put-attribute name="titleImage" value="/KBLCM/images/service/cy/title_ins_demand.gif"></put-attribute>     
<put-attribute name="ScriptPath" value="/KBLCM/js/cy/ci/ri/is"></put-attribute> 
<put-attribute name="ScriptName" value="CYCIRIIS_indivReqRsltFormControl.js"></put-attribute>  
<put-attribute name="tabContent" value="/WEB-INF/jsp/cy/ci/ri/is/CYCIRIIS_bundleReqSelect_lst.jsp"></put-attribute>  
 </definition>  
==============================================================================================================

- 무선 네트워크 연결 
miraeasset 
1234567890/1234567890 
==============================================================================================================

- eclipse 시작 에러(신규로 받을 때) 
applicationContext.xml 에러 
원인: cvs에 Context.xml을 잘못 올렸다고 판단됨 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.08.20(수) 작업 ■■■■■■■■■■■■■■■■
---> 06:40 ~ 23:00   --> 저녁(삼겹살: 기업보험: 장PM이 쏨) 

- 교보 홈 리뉴얼 Prj
- 로그인 에러(DB 연결 에러) 
[errorCode : COM00003^]# [errorMessage : COM00003^]# [errorModule : null^]#  
[exception : org.springframework.jdbc.CannotGetJdbcConnectionException:  
Could not get JDBC Connection; nested exception is org.apache.commons.dbcp.SQLNestedException:  
Cannot create PoolableConnectionFactory ([jcc][t4][2043][11550][3.51.90] 예외 java.net.ConnectException:  
다음 메시지와 함께 /10.33.160.178 서버에 대한 소켓을 50,000 포트에서 열기 오류:  
Connection refused: connect. ERRORCODE=-4499, SQLSTATE=08001)] 
원인: DB 연결 안됨(178번 DB 서버로 세팅됨) 
조치: DB 서버 변경(15번 DB 서버로 세팅함) 
/WEB-INF/conf/kblcm-property.xml 파일에서 
<jdbc> 
<driverClassName>com.ibm.db2.jcc.DB2Driver</driverClassName> 
<url>jdbc:db2://10.33.3.15:50010/KYOBOWWW</url> 
<username>kyobowww</username> 
<password>kyobo01</password> 
<maxActive>1</maxActive> 
</jdbc> 
==============================================================================================================

- CVS 사용시 타임아웃 현상이 발생 
[Window]-[Preferences]-[Team]-[CVS]의 ConnectionTimeout을 60에서 360으로 변경 
==============================================================================================================

- 노트북 성능 향상 시키는 방법 
1. 전원: 항상 켜기 
디스플레이 등록정보 -> 전원구성표: 항상켜기 
2. 시스템 복원 사용 안함 설정 
내컴퓨터 -> 장치관리자 -> 시스템 복원: 모든 드라이브에 시스템 복원 사용 안함(T): 체크 
3. 스왑 메모리 최소화 
내컴퓨터 -> 장치관리자 -> 고급 -> 성능: 변경(C) -> 가상메모리: 변경(C) 
-> 사용자 지정 크기(S): 512M ~ 1024M 
4. 칩셋 설치 
intel PM 965 chipset(삼성 Sends Q70용) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.08.21(목) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 23:00 

- 교보 홈 리뉴얼 Prj
1-1) 엑셀파일 일괄 전송[기업보험>퇴직보험>계약사항 조회/변경>보험대상자>보험대상자  명부 정리]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSend_ins.jsp  ======>    
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_insuredAllSend_ins.do 

2) 전송결과 확인/수정[기업보험>퇴직보험>계약사항 조회/변경>보험대상자>보험대상자  명부 정리]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSendOK_viw.jsp  ======> 

3) 결재신청[기업보험>퇴직보험>계약사항 조회/변경>보험대상자>보험대상자  명부 정리] 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotalSendApprvAction 
CYCIRIIS_insuredPersonTotalSendApproval_view.jsp  ======>  
 - 퇴직보험 일괄청구(보험금청구) 
http://127.0.0.1:8080/KBLCM/cy/cyciriisInsuReqMain.do   

- C:\DevEnv\Projects\KBLCM\src\struts.properties 파일에서(파일 업로드 경로 설정) 
struts.multipart.maxSize=1073741824 
struts.multipart.saveDir=C:/DevEnv/AttFile/tmp 
#struts.multipart.saveDir=D:/workspace/KYOBO/KBLCM/AttFile/tmp 

- 레이어 벗어 나기(target 주기) 
<a href="/KBLCM/cy/CYCIRITC_selTrgCon.do" target="_top"> 
-----------------------------------------------------------------------------------  
 - 보험대상자 조회(페이징 처리) 
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_insuredPerson_lst.do  
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_insuredPerson_lst.do   
==============================================================================================================

- 반 범진씨 조언 
1-1) 계약변경가능조회[개인보험>보험조회/변경>계약사항] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_accountUpdAction 
--> kblcm.cy pi.ic.cc.action.CYPIICCC_accountUpdAction   

<action name="CYPIICCC_accountUpd" class="kblcm.cy.pi.ic.cc.action.CYPIICCC_accountUpdAction"> 
<result type="tiles">cy.CYPIICCC_accountUpd</result> <!--//  계약변경가능조회  //--> 
<result name="checkItem">/WEB-INF/jsp/cy/pi/ic/cc/CYPIICCC_accountUpdCheckItem_frm.jsp</result> <!--//  계약변경가능 여부 메세지 처리  //--> 
</action>   
==============================================================================================================

- 줄번호, 줄선택(EditPlus)  
1. 도구(T) -> 기본설정(P) -> 일반 -> 설정 -> 줄 번호 
바탕색(설정): 141, 171, 191 
2. 도구(T) -> 기본설정(P) -> 일반 -> 설정 -> 현재 줄 
바탕색(설정): 141, 171, 191 
- 색상설정(EditPlus) 
폰트: 돋음 10  
색상: 76 채도: 78  명도: 194 
==============================================================================================================

- 크린 토피아(세탁 전문점) 
http://cleantopia.com 
Y셔츠: 900원 
==============================================================================================================

- 주식 투자(kosdaq) 
(주)영인프런티어((주)유젠텍 합병한 회사) 
동양종금 계좌에 15,500,000원 입금(계좌번호: 710-01-029063) 
현재가: 3,045원 거래량: 5,000주  거래액: 15,225,000원) 
첫날 순이익: +4.26,  총순익: +648,862원 
http://stock.naver.com/item/main.nhn?code=036180 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.08.22(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:00 

- 교보 홈 리뉴얼 Prj
1-1) 엑셀파일 일괄 전송[기업보험>퇴직보험>계약사항 조회/변경>보험대상자>보험대상자  명부 정리]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSend_ins.jsp  ======> 완료 
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_insuredAllSend_ins.do 

2) 전송결과 확인/수정[기업보험>퇴직보험>계약사항 조회/변경>보험대상자>보험대상자  명부 정리]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSendOK_viw.jsp  ======> 

3) 결재신청[기업보험>퇴직보험>계약사항 조회/변경>보험대상자>보험대상자  명부 정리] 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotalSendApprvAction 
CYCIRIIS_insuredPersonTotalSendApproval_view.jsp  ======> 

 - 퇴직보험 일괄청구(보험금청구) 
http://127.0.0.1:8080/KBLCM/cy/cyciriisInsuReqMain.do 
==============================================================================================================

- SVN 설치(프로젝트 파일 버전 관리) 
1. 설치 
http://subclipse.tigris.org/install.html 참조  
(Subclipse 1.4.x (Eclipse 3.2+) 로 해야 합니다.)  
mylyn required 에러시 integrations 제외  
2. 설정 
Windows - Open Perspective - Other - SVN Repository  
마우스 우측버튼 - New - Repository Location  
svn://10.33.165.172/kyobo(dev302/dev302)  
3. 이관 
0 .개인 소스를 각자 백업 
1. 기존 KBLCM 디스커넥트(이때 메타데이터도 모두 삭제한다): 기존 CVS 연결 부분 삭제 
 KBLCM[10.33.165.171] 폴더(오른쪽 클릭) -> Team -> Disconnect: 클릭(메타데이터 포함 삭제) 
2. KBLCM 위 마우스 우측버튼 - Team - Share Project - SVN - (기설정한 svn주소 선택) - Finish 
------------------------------------------------------------------------ 

- SVN 특성 
1. 디렉토리, 이름 수정 지원 
2. Change Set : 파일 단위(rcs) 
3. 속도 향상(DB 관리)  
4. Auto Commit 
5. Unicode 

- SVN 사용법 
1. Commit 전 Update 
2. 작업 단위(Change Set) Commit 
3. Comment  ==> 진태만: 새로 작업 
4. 작업한 파일만 선택 Commit 
------------------------------------------------------------------------------------------- 

- SVN 서버 ID(아이디) 
김태욱과장 :  dev301 
진태만차장 :  dev302  
배상범과장 :  dev303  
이은화과장 :  dev304 -------------------------> 
정경환이사 :  dev305 
김동섭사원 :  dev306 
반범진사원 :  dev307 
장방원사원 :  dev308 
이동호사원 :  dev309 
마정석사원 :  dev310 
동상호팀장 :  dev311 
김종래이사 :  dev312 
김민석사원 :  dev313 
손창우주임 :  dev314 -------------------------> 
김성배대리 :  dev315 
김지영대리 :  dev316 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.08.23(토) 작업 ■■■■■■■■■■■■■■■■
---> 08:30 ~ 00:00  --> 토요 근무, 철야(베이징 올림픽 야구 우승 -> 쿠바3:2) 

- 교보 홈 리뉴얼 Prj
 1) 변경사항 입력[기업보험>퇴직보험>계약사항 조회/변경>보험대상자 정보변경] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIIS_insuredAltAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltAction 
CYCIRIIS_insuredAlt_lst.jsp ======> 완료 
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_insuredAlt.do 
  
 2) 결재신청[기업보험>퇴직보험>계약사항 조회/변경>보험대상자 정보변경] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_insuredAltSelectAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltSelectAction 
CYCIRIIS_insuredAltSelect_lst.jsp ======> 완료 
   
 3) 결재신청완료[기업보험>퇴직보험>계약사항 조회/변경>보험대상자 정보변경] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_insuredAltSelectAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltSelectAction 
CYCIRIIS_insuredAltDone_wiw.jsp ======> 완료 
==============================================================================================================

- if 절(struts tag) 
<s:if test="#row.COM_O_SC_GB == ''  #row.COM_O_SC_GB == 0"> <!-- 변경업무 선택이 없으면 --> 
<select name="SC_GB" id="select4" class="SmlSty"> 
<option value=""></option> 
<option value="1">보험대상자이름</option> 
<option value="2">퇴직금추계액</option> 
</select> 
</s:if> 
<s:elseif test="#row.COM_O_SC_GB == 1"> <!-- 변경업무 선택이 1 이면 --> 
<input type="hidden" name="SC_GB" value="3">보험대상자이름 
</s:elseif> 
<s:else> 
<input type="hidden" name="SC_GB" value="4">퇴직금추계액 
</s:else> 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.08.24(일) 작업 ■■■■■■■■■■■■■■■■
---> 00:00 ~ 06:00  --> 철야, 맥주(교보B/D 야외 밴치: 배과장), 조기축구, 베이징 올림픽 폐막 

- 교보 홈 리뉴얼 Prj
 1) 변경사항 입력[기업보험>퇴직보험>계약사항 조회/변경>보험대상자 정보변경] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIIS_insuredAltAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltAction 
CYCIRIIS_insuredAlt_lst.jsp ======>   
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_insuredAlt.do  
==============================================================================================================

- 김경희 결혼식(고종 6촌) 
양재동 서울 교육문화회관 예식장(http://www.temf.co.kr) 
8월 24일(일) 13:30  
버스: 641(낙성대역 -> 양재역)  
-3호선 양재역 7번 출구→ 서초구민회관 앞→ 무료 셔틀버스 이용 
작은 아버지, 진대규, 선희 선주 누나, 철희 누나, 고모들 
부주 10만원 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.08.25(월) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 22:40 

- 교보 홈 리뉴얼 Prj
 1) 변경사항 입력[기업보험>퇴직보험>계약사항 조회/변경>보험대상자 정보변경] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIIS_insuredAltAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltAction 
CYCIRIIS_insuredAlt_lst.jsp ======> 완료 
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_insuredAlt.do 

1. 보험대상자 정보변경(화면 ID: UI_CY_9155_10)  
1) EW10W156odCall:  변경사항 입력[보험대상자 정보변경] 
피보험자명(변경 후), 퇴직금추계액(변경 후), 퇴직금추계액(변경 후), 
추계액기준일, 추계액기준일(변경 후) 
2) EW10W157odCall:  결재신청[보험대상자 정보변경] 
피보험자명(변경 후), 퇴직금추계액(변경 후), 퇴직금추계액(변경 후), 
추계액기준일, 추계액기준일(변경 후) 

2. 무급부퇴직/가입취소(화면 ID: UI_CY_9155_2)  
1) EW10EW17odCall:  변경사항 입력[무급부퇴직/가입취소] 
퇴직일(변경 후), 퇴직사유(변경 후), 퇴직금추계액, 추계액기준일 
2) EW10EW18odCall:  결재신청[무급부퇴직/가입취소] 
퇴직일(변경 후), 퇴직사유(변경 후), 퇴직금추계액, 추계액기준일 

- 기존 jsp 소스 Content-Type 변경 
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr"> 
==> <%@ page contentType="text/html; charset=utf-8" %>  
---------------------------------------------------------------------------------------- 
  
 2) 결재신청[기업보험>퇴직보험>계약사항 조회/변경>보험대상자 정보변경] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_insuredAltSelectAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltSelectAction 
CYCIRIIS_insuredAltSelect_lst.jsp ======> 완료 
   
 3) 결재신청완료[기업보험>퇴직보험>계약사항 조회/변경>보험대상자 정보변경] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_insuredAltSelectAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltSelectAction 
CYCIRIIS_insuredAltDone_wiw.jsp ======> 완료  
==============================================================================================================

- 기업보험 로그인 정책 
1. 로그인 화면은 하나 
2. 로그인을 하면 퇴직보험(Host IF), 기업복지(DB)를 체크해서 해당 권한 여부를 
세션을 집어 넣음(2개 권한도 가능) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.08.26(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00  --> 인수인계(배과장: 이은화 과장이 거부), 술(구자호, 현용, 임모)  

- 교보 홈 리뉴얼 Prj
 1) 변경사항 입력[기업보험>퇴직보험>계약사항 조회/변경>보험대상자 정보변경] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIIS_insuredAltAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltAction 
CYCIRIIS_insuredAlt_lst.jsp ======> 완료 
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_insuredAlt.do 
  
 2) 결재신청[기업보험>퇴직보험>계약사항 조회/변경>보험대상자 정보변경] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_insuredAltSelectAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltSelectAction 
CYCIRIIS_insuredAltSelect_lst.jsp ======> 완료 
   
 3) 결재신청완료[기업보험>퇴직보험>계약사항 조회/변경>보험대상자 정보변경] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_insuredAltSelectAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltSelectAction 
CYCIRIIS_insuredAltDone_viw.jsp ======> 완료  
==============================================================================================================

- structs, tiles 분리 
개인보험(struts-cy.xml, tiles-cy.xml), 기업보험 분리(struts-cy-ci.xml, tiles-cy-ci.xml) 
struts.xml(/KBLCM/src), web.xml(/KBLCM/WebContent/WEB-INF) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.08.27(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 22:30  --> 술집(춘하:김과장, 배과장), 양주집(키핑), 노래방: 배과장 잔류 잠정 결정 

- 교보 홈 리뉴얼 Prj
 1) 변경사항 입력[기업보험>퇴직보험>계약사항 조회/변경>보험대상자 정보변경] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIIS_insuredAltAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltAction 
CYCIRIIS_insuredAlt_lst.jsp ======> 완료 
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_insuredAlt.do 
  
퇴직금추계액(COM_O_TJ_AMT) 
추계액기준일자(COM_O_GJ_YMD): 추가할 것 
계약일(COM_O_GY_YMD)   
  
 2) 결재신청[기업보험>퇴직보험>계약사항 조회/변경>보험대상자 정보변경] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_insuredAltSelectAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltSelectAction 
CYCIRIIS_insuredAltSelect_lst.jsp ======> 완료 
   
 3) 결재신청완료[기업보험>퇴직보험>계약사항 조회/변경>보험대상자 정보변경] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_insuredAltSelectAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltSelectAction 
CYCIRIIS_insuredAltDone_viw.jsp ======> 완료  
==============================================================================================================

- 보험대상자 정보변경 관련 회의(19:30 ~ 20:00) 
1. 교보정보통신 금융사업팀 이세호 과장, 이창용 과장 
화면 패킷 건수, 고객지원센타 전화번호 
결재처리(관리자만), 결재신청(실무자) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.08.28(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:30 

- 교보 홈 리뉴얼 Prj
 1) 변경사항 입력[기업보험>퇴직보험>계약사항 조회/변경>무급부퇴직/가입취소] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_unpaidRetireAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_unpaidRetireAction 
CYCIRIIS_unpaidRetire_lst.jsp 
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_unpaidRetire.do 

 2) 결재신청[기업보험>퇴직보험>계약사항 조회/변경>무급부퇴직/가입취소] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_unpaidRetireSelectedAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_unpaidRetireSelectedAction 
CYCIRIIS_unpaidRetireSelected_lst.jsp 
  
 3) 결재신청완료[기업보험>퇴직보험>계약사항 조회/변경>무급부퇴직/가입취소] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_unpaidRetireSelectedAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_unpaidRetireSelectedAction 
CYCIRIIS_unpaidRetireDone_viw.jsp 
==============================================================================================================

- Host call 에러 
EW10W156_MSGCODE : [E80001] 
에러내용: 호스DB ERROR입니다  
---------------------------------------------------------------- 
- Host call 에러 
java.lang.NumberFormatException: For input string: "null  " 
에러내용: INPUT값이 잘못 되었을 때 나는 에러 
조치: EW10EW17_IN : COM_I_PBHJ_NM  삭제 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.08.29(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 23:10 

- 교보 홈 리뉴얼 Prj
- 보험대상자 정보변경, 무급부퇴직/가입취소 조회(EW10W156od, EW10W17od) 부분 SM팀 테스트 완료
 1) 변경사항 입력[기업보험>퇴직보험>계약사항 조회/변경>보험대상자 정보변경] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIIS_insuredAltAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltAction 
CYCIRIIS_insuredAlt_lst.jsp ======> 완료 
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_insuredAlt.do 
  
퇴직금추계액(COM_O_TJ_AMT) 
추계액기준일자(COM_O_GJ_YMD): 추가할 것  
  
 2) 결재신청[기업보험>퇴직보험>계약사항 조회/변경>보험대상자 정보변경] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_insuredAltSelectAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltSelectAction 
CYCIRIIS_insuredAltSelect_lst.jsp ======> 완료 
   
 3) 결재신청완료[기업보험>퇴직보험>계약사항 조회/변경>보험대상자 정보변경] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_insuredAltSelectAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltSelectAction 
CYCIRIIS_insuredAltDone_viw.jsp ======> 완료  
==============================================================================================================

- 로그인(기업회원) 
String szUserId = sessionVO.getId(); // 웹회원아이디 
String szUserPasswd = sessionVO.getLoginPassword();   // 비밀번호 
String ju_no = sessionVO.getResdNo();   //주민번호  
String szUserType = sessionVO.getUserType();  //사용자구분(실무자,관리자)  
String login_gb = sessionVO.getLoginGb();  //로그인 구분 
String szSecuNo = sessionVO.getPolicyNo();  //증권번호   
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.08.30(토) 작업 ■■■■■■■■■■■■■■■■
---> 08:30 ~ 20:00  --> 조기축구 

- 교보 홈 리뉴얼 Prj
- Host 인터페이스를 추가해서 문제가 생김 
조치: 인터페이스 CommArea Name을 순수대로 정리 
-------------------------------------------------------------------------------------------------------- 

 1) 변경사항 입력[기업보험>퇴직보험>계약사항 조회/변경>보험대상자 정보변경] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIIS_insuredAltAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltAction 
CYCIRIIS_insuredAlt_lst.jsp ======> 완료 
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_insuredAlt.do 
EW10W156odCall.java     
퇴직금추계액(COM_O_TJ_AMT) 
추계액기준일자(COM_O_GJ_YMD): 추가할 것 

 2) 결재신청[기업보험>퇴직보험>계약사항 조회/변경>보험대상자 정보변경] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_insuredAltSelectAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltSelectAction 
CYCIRIIS_insuredAltSelect_lst.jsp ======>   
 EW10W157odCall.java     

 3) 결재신청완료[기업보험>퇴직보험>계약사항 조회/변경>보험대상자 정보변경] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_insuredAltSelectAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltSelectAction 
CYCIRIIS_insuredAltDone_viw.jsp ======>    
==============================================================================================================

 1) 변경사항 입력[기업보험>퇴직보험>계약사항 조회/변경>무급부퇴직/가입취소] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_unpaidRetireAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_unpaidRetireAction 
CYCIRIIS_unpaidRetire_lst.jsp ======> 완료 
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_unpaidRetire.do 
EW10EW17odCall.java  

 2) 결재신청[기업보험>퇴직보험>계약사항 조회/변경>무급부퇴직/가입취소] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_unpaidRetireSelectedAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_unpaidRetireSelectedAction 
CYCIRIIS_unpaidRetireSelected_lst.jsp 
EW10EW18odCall.java  
  
 3) 결재신청완료[기업보험>퇴직보험>계약사항 조회/변경>무급부퇴직/가입취소] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_unpaidRetireSelectedAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_unpaidRetireSelectedAction 
CYCIRIIS_unpaidRetireDone_viw.jsp 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.08.31(일) 작업 ■■■■■■■■■■■■■■■■
---> 11:30 ~ 21:00  --> 조기축구 

- 교보 홈 리뉴얼 Prj
EW10W156odCall.java, EW10EW17odCall.java 완료 
EW10W157odCall.java, EW10EW18odCall.java SM팀이 내일 출근해서 협의 해야할 것 같음 
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■