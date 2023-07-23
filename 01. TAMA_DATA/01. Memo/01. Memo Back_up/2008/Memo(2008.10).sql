

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2008.10) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2008.10.01(수) 작업 ■■■■■■■■■■■■■■■■
----> 07:50 ~ 00:40  --> 택시타고 퇴근(청구) 

- 교보 홈 리뉴얼 Prj
- 피보험자변경/추계액변경 상세조회 수정 
- 무급부퇴직, 가입취소 항목에 대한 상세조회    수정 
---------------------------------------------------------------------------------------------------------- 

<!--// 1.1. 보험대상자 - 엑셀 다운로드[기업보험>퇴직보험>계약사항 조회/변경>보험대상자]  //--> 
<action name="CYCIRIIS_insuredXls" class="kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredXlsAction"> 
<interceptor-ref name="cloginCheckStack" /> 
</action>  
==============================================================================================================

- 펀드(옵션)변경 처리 
1. 탭 만들기(부모창에서 생성, layer 수정, get 방식)
6412131205436  
202012637647 채권/혼합 펀드변경 가능한 상품인데  
변경가능한대상이없다고 떠서요.. 
==============================================================================================================

안녕하세요.. 현재 적립금조회화면 및 변액연금상품의 수익률 조회 안되는거... 수정됐는지요?  
430915 입니다. 
==============================================================================================================

- 엑셀 출력 에러 
IE 70 이상에서 에러가 남 
L=document 
==============================================================================================================

- 사이버창구 로그인 아이디 
송옥(*)  
String name = "송옥"; 
//String juminNo = "*"; //=> (*): 송옥  //주민번호 
//Strinp_jumin = "*";    //=> 펀드 관련 내용 많음(*) 
//String juminNo = "*"; //=> (*) 
String juminNo = "*";  //=> (*) 
//String juminNo = "*";    //=> (*) 
- 주민번호 
p_jumin = "*";    //=> 2.  
p_jumin = "*";     //=> 3. 
p_jumin = "*";    //=> 4. 
p_jumin = "*";    //=> 5. 
최현진 과장(* - 2352035), choi3252/kyobo01 
==============================================================================================================

○변액종신(CYINCM_varamtDet01_viw) 
* * * * 
○변액연금(CYINCM_varamtDet02_viw) 
* * * * 
○베스트플랜종신(CYINCM_varamtDet03_viw)  --> ok 
* * * * 
○VUL가산(CYINCM_varamtDet04_viw)  --> ok 
* * * *   
○VUL보장 (*) 
* * * *   
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.10.02(목) 작업 ■■■■■■■■■■■■■■■■
----> 07:20 ~ 01:00  --> 택시탐(청구) 

- 교보 홈 리뉴얼 Prj
1-1) 엑셀파일 일괄 전송[기업보험>퇴직보험>계약사항 조회/변경>보험대상자>보험대상자 명부정리]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSend_ins.jsp  ======>   

2) 전송결과 확인/수정[기업보험>퇴직보험>계약사항 조회/변경>보험대상자>보험대상자 명부정리]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSendOK_viw.jsp  ======> 

3) 결재신청[기업보험>퇴직보험>계약사항 조회/변경>보험대상자>보험대상자 명부정리] 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotalSendApprvAction 
CYCIRIIS_insuredPersonTotalSendApproval_view.jsp  ======>    
-------------------------------------------------------------------------------------------------------- 

- 엑셀 파일 다운로드 에러 
에러 내용: jxl.read.biff.BiffException: The input file was not found 
원인: 01_PersonTotSend.xls 파일 형식이 틀려져 나옴(새이름으로 저장할 것) 

- 엑셀 파일 다운로드 에러2 
원인: CYCIRIIS_insuredPersonTotSendDownAction.java 파일에서 
return SUCCESS;  --> return null;  로 고쳐야 함 
1538 장예진 * 7349782 282567 2007-12-26   3595005 2006-07-18   
Error 500: Error including path &#39;/WEB-INF/jsp/cm/common/tilesLayout/mainErrLayout.jsp&#39;. SRVE0199E: OutputStreamt t?U?  

- 보험대상자 파일 다운로드 
frm.action = "/KBLCM/cy/CYCIRIIS_insuredXls.do"; 
CYCIRIIS_insuredPerson 
==============================================================================================================

- 업무 확인 회의(14:20 ~ 14:50): 명석재 PM(교보), 황광엽 부장, 이은화 과장(뻔뻔하다고 화냄: 삐짐) 
1. 명부정리 마무리(기업보험): 18:00 
2. 펀드수정(개인보험):  19:00 ~ 
3. 10.3(금), 4(토), 5(일): 출근 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.10.03(금) 작업 ■■■■■■■■■■■■■■■■
----> 08:50 ~ 22:40  --> 개천절, 배과장 인수인계자 출근 

- 교보 홈 리뉴얼 Prj
 - 펀드변경 수정
- 보험료 미납상태 에러 
MSG_CODE : PH0013E1 
>> Communication is null, TRS Communication settimg.( 10.33.3.17:2006 )CICSK5T1 
MESSAGE : 보험료 미납상태 입니다 처리할 수 없습니다. 
원인: PM400UMCall에서 에러가 남 
조치: 다른 Host를 요청해야 될 것으로 추정됨 

PM400UMCall pm400um = new PM400UMCall();  
pm400um.setPM400UM_I_INAG_INAG_NO(insuPolicyNum); //증권번호 
String msg = pm400um.callHost();   =========> 에러 추정 되는 구문 
==============================================================================================================

- 적립금조회 
특별계정투입금액누계(원)에서 
변액연금 및 변액유니버셜(가산형/10년이상적립투자형)관련 상품 
보험상품구분(02:변액연금, 04:VUL가산, 06:변액연금II) 
==============================================================================================================

- 펀드 변경 분기 
- 01, 02, 03 05, 06, 07(CYINCM_varamtPension1_upd.jsp)  
보험상품구분(01:변액종신, 02:변액연금, 03:베스트플랜종신, 04:VUL가산, 05:VUL보장, 06:변액연금II, 07:전환VUL)  
cmdTag = (cmdTag.equals("06") ? "02" : cmdTag); // 변액연금II (06)를 위한 임시 조치  
cmdTag = (cmdTag.equals("07") ? "03" : cmdTag); // 전환VUL (07)을 위한 임시 조치 2006-03-03   
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.10.04(토) 작업 ■■■■■■■■■■■■■■■■
----> 08:10 ~ 23:00  --> 토요 근무, 기업보험 confirm 테스트(정재상 대리) 

- 교보 홈 리뉴얼 Prj
- 명부정리(추가가입) 
(청구사유)(1:추계액변경,2:추가가입): 오픈 이후로 하기로 함 
==============================================================================================================

- 가입확인서 발급 
<!--// 증명서발급[기업보험>퇴직보험>계약사항 조회/변경>계약일반사항] //--> 
<action name="CYCIRIIS_appJoinConfirm_prn" class="kblcm.cy.ci.ri.is.action.CYCIRIIS_appJoinConfirmAction"> 
<result>/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_appJoinConfirm_prn.jsp</result>  
<interceptor-ref name="cloginCheckStack" /> 
</action>   
http://localhost:8080/KBLCM/cy/CYCIRIIS_appJoinConfirm_viw.do 

- Xecure 에러 
HTTP Status 404 - /XecureObject/xecure_error.html 
==============================================================================================================

- 보험대상자 변경 상세 결재내역  
http://localhost:8080/KBLCM/cy/CYCIRISP_insuredAltRslt.do 
==============================================================================================================

- 전출청구 
if (urlcode == "33") { //전출신청 진행상황 조회(전출청구)  
url_link = "/cy/cyciriisTransferInserted.do?from=processSt";  //퇴직보험>보험금청구>퇴직보험 전출창구> 전출 사항 입력 
}  
http://localhost:8080/KBLCM/cy/cyciriisTransferReqSelected.do?q=7F000001189E00D88DE5B00C8D2B13097F28794BCB1EE5&charset=utf-8 
==============================================================================================================

- 맨 하단 페이지 번호 클릭이 안됨(보험대상자 변경) 
PC 버전을 타는 것으로 추정됨   
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.10.05(일) 작업 ■■■■■■■■■■■■■■■■
----> 08:50 ~ 21:00  --> 일요 근무, 펀드 confirm 테스트(김성희 사원, 이보람 사원), 용산(배과장:마지막 출근) 

- 교보 홈 리뉴얼 Prj
- 맨 하단 페이지 번호 클릭이 안됨(보험대상자 변경) 
IE 6.5 이하에서 나타나서 아래와 같이 소스 수정(/common/paging.jsp) 
<a href="javascript:<c:out value="${param.scriptname}"/>('<c:out value="${pageNo}"/>');"><c:out value="${pageNo}"/></a>  ===> 
<a href="#none" onclick="<c:out value="${param.scriptname}"/>('<c:out value="${pageNo}"/>');"><c:out value="${pageNo}"/></a> 
==============================================================================================================

- 특별계정투입금액누계 가능 상품(적립금 조회에서) 
보험상품구분(02:변액연금, 04:VUL가산, 06:변액연금II) 

- 수익률조회 가능 상품 
보험상품구분(02:변액연금, 06:변액연금II) 
--------------------------------------------------------------------------------------------------------- 
보험상품구분(01:변액종신, 02:변액연금, 03:베스트플랜종신, 04:VUL가산, 05:VUL보장, 06:변액연금II, 07:전환VUL)  
========================================================================================================= 

- 옵션변경 가능 상품코드  
if( prodCode.equals("1000423")  prodCode.equals("1000424")  prodCode.equals("1000435")  prodCode.equals("1000450")  prodCode.equals("1000451")  
 prodCode.equals("1000453")  prodCode.equals("1000482")  prodCode.equals("1000472")  prodCode.equals("1000479")  prodCode.equals("1000480")  
 prodCode.equals("1000483")  prodCode.equals("1000485")  prodCode.equals("1000491")  prodCode.equals("1000492")  
 prodCode.equals("1000378")  prodCode.equals("1000396")   
) {  //옵션변경 가능 상품코드 
--------------------------------------------------------------------------------------------------------- 

- DCA 선택 가능  상품코드  
if( prodCode.equals("1000450")  prodCode.equals("1000451")  prodCode.equals("1000479")  prodCode.equals("1000480")  prodCode.equals("1000485") 
 prodCode.equals("1000491")  prodCode.equals("1000492")  
 ((prodCode.equals("1000378")  prodCode.equals("1000396")) && CMStringUtil.parseInt(cypiicvi_varamtVO.getContractDate()) >= 20050930)  
) { //DCA 선택 가능  상품코드  
==============================================================================================================

- 변액보험 조회(조회수가 1개인 주민번호: *) 
http://10.33.165.88:8080/KBLCM/cm/CMLCPC_DevLogin.do 
http://10.33.165.88:8080/KBLCM/cy/CYPIICVI_varamt.do 
==============================================================================================================

- 노트북 터치패드 사용 중지 방법 
Fn + F10 누름 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.10.06(월) 작업 ■■■■■■■■■■■■■■■■
----> 07:30 ~ 20:30  --> 펀드 confirm 테스트(김성희 사원), 맥주, 우리집(이은화 과장(화해함): 3번째) 

- 교보 홈 리뉴얼 Prj
- 펀드변경 수정
변액보험조회에서 아래와 같이 조회가 되는데... 
유지라고 되는 있는 데이타가 신보험에서는 자금이전중이라고 합니다. 
확인 부탁드립니다.   
- 로그인 주민번호: * 
증권번호: 205127069976 
  
4 205127069976 무배당교보변액연금보험 ( 일시납 ) 200,000,000 2005.12 1 유지 200,000,000   ===> 자금이전중 상품이라고 함  
205127069976  - 이건 자금이전중 아닙니다  
오늘 펀드변경한것 같은데... 
==============================================================================================================

- 업무진행에서 보험금청구쪽 링크 관련 
1. 퇴직정산, 중간정산(기존것 변경 요망) 
/KBLCM/cy/cyciriisInsuReqMain.do?depth_1_seq=1&depth_2_seq=3  
2. 전출창구 3단계 
/KBLCM/cy/cyciriisInsuReqMain.do?depth_1_seq=3&depth_2_seq=3 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.10.07(화) 작업 ■■■■■■■■■■■■■■■■
----> 06:30 ~ 22:20  --> 펀드 confirm 테스트(김성희 사원), 택시(이은화 과장: 낙성대역 -> 광화문) 

- 교보 홈 리뉴얼 Prj
- 최종 수정 
- 계약변경신청 처리대상건이 이중으로 나옴 
- 관리자 화면(사이버 창구) 
http://203.233.85.71/KBLCM/cm/ad/admin_login.do 
==============================================================================================================

- 계약변경신청(퇴직보험 결재/등록) 
http://203.233.85.71/KBLCM/cy/ad/cyadcoraAppbusinessList.do 
==============================================================================================================

- 펀드변경 
펀드변경 처리 제거, 문서 수정 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.10.08(수) 작업 ■■■■■■■■■■■■■■■■
----> 08:30 ~ 23:00  --> 최종 수정, 점심(고려삼계탕: 명과장이 쏨) 

- 교보 홈 리뉴얼 Prj
- 기업보험 수정 
1. 관리자 
퇴직금추계액  --> 보험사접수중 --> 보험사접수중(사이버 창구 관리자 화면) 
2. 실무자 
퇴직금추계액  --> 결재접수중(퇴직보험 관리자전용 메뉴): 결재처리 --> 보험사접수중(사이버 창구 관리자 화면)  
==============================================================================================================

- 진행중인 업무 
신청일시 사무내용 접수일 접수건수 진행상태  
2008.10.02  중간정산 2008.10.02 1 반송    ===> 반송 후 삭제 됨 
2008.10.02  퇴직일시금  2008.10.02 7 반송    ===> 반송 후 삭제 됨 
2008.10.02 21:42 전출청구  2008.10.03 2 반송    ===> 반송 후 삭제 됨 
==============================================================================================================

- 19번 서버(jsp가 적용 됨) 
http://10.33.3.19(wassvr/wassvr1)  
/kblcm/kblcmsys/KBLCM_war.ear/KBLCM.war/WEB-INF/jsp 
==============================================================================================================

- 가상머신 설치(VMware) 
Internet Explorer  6.0 설치 
(IE 7.0이 디폴트로 설치 되어 있으면 IE 6.0 설치 불가 -> 가상머신 설치해야 됨) 
==============================================================================================================

// 파일 Sync 모듈 호출 
if (fileupload_list.size() > 0) { 
//파일 Sync는 로컬에서는 접근 문제 때문에 서버에서만 하도록 함.  
if(!isTestServer()) 
CMFileSyncUtil.doFileSync(config.getString("AttFile.Common.UploadPath"), "/cy/ug/co/gi/", fileupload_list); 
} 
==============================================================================================================

- 기본호험료 수정 안하게 수정(납입주기가 일시납인 것) 
PM400UM_DCPA_PAY_FREQ_I: 납입주('99': 일시납) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.10.09(목) 작업 ■■■■■■■■■■■■■■■■
----> 07:20 ~ 23:00  --> 최종 수정 

- 교보 홈 리뉴얼 Prj
- Xecure 붙이기 
1. XecureSubmit() 
frm.action = "/KBLCM/cy/CYCIRISP_businessProcess.do";  
frm.method = "POST"; 
XecureSubmit(frm); 
//frm.submit(); 

2. XecureLink() 
<div style="text-align:right;margin-top:15px;">  
<a href="/KBLCM/cy/CYCIRISP_businessProcess.do?p_page=1" onClick="return XecureLink(this)";> 
<img src="/KBLCM/images/common/btn_list01.gif"/></a><!--//[목록보기]//--> 
</div> 

3. XecureNavigate() 
boolean XecureNavigate( url, target, feature)  
url : 이동할 URL 
target : 결과 화면이 출력될 frame명 
feature : 새로운 창에 대한 성질( 창 크기 등등) - 옵션 

<script language=javascript>  
XecureNavigate( “/hello.jsp”, “body” ) ;  
</script> 
  
4. SubmitToTab, SubmitToLayer 사용시 XecureSubmit 적용 방식   
submitToLayer({formId:frm.id, layerId:'layer1', width:'755', Xecure:'true'});   //Layer 뛰우기 
submitToTab({formId:frm.id, tabGroup:'insuredAltTab', tabSeq:3, Xecure:'true'});  //TAB으로 보내기  
   
5. GNB 설정 
/KBLCM/WebContent/flash/common/menulink_cy.xml 
<depth code="15_211"> 
<title><![CDATA[대상계약선택]]></title> 
<url><![CDATA[/KBLCM/cy/CYCIRITC_selTrgCon.do]]></url> 
<fun_value>xecure</fun_value>  
<!-- <fun_value>0</fun_value> --> 
</depth> 

http://localhost:8080/KBLCM/cy/CYCIRITC_selTrgCon.do?q=7F000001189E005CC8BF2CDE3655F36C42BCB86660A07F&charset=utf-8 
==> /CYCIRITC_selTrgCon.do?q=7F0000....확인  
==============================================================================================================

1) jsp 페이지에 <%@ page language="java" extends="xecure.servlet.jsp.XecureHttpJspPage" %> 삽입   ==> 필수 
2) GNB에서 있으면 소스 보기로 해서 해당 소스가 존재하면 제외 해야함 
<script type="text/javascript" src="/KBLCM/js/XecureObject/xecureweb.js"></script>  
<script language='javascript'>  
PrintObjectTag();  
</script>  
<form name='xecure'><input type=hidden name='p'></form>  
==============================================================================================================

- Xecure 에러 
에러 내용: 1. HTTP Status 404 - /XecureObject/xecure_error.html 
2. 웹 페이지 탐색이 취소되었습니다 
정보: XecureHttpJspPage.init : conf file [C:\Documents and Settings\Administrator\XecureConf\xecure_servlet.conf] 
원인: 제큐어가 제대로 안 먹음( /CYCIRITC_selTrgCon.do?q=7F0000....q가 안 붙으면 나는 에러 ) 
==============================================================================================================

- 가로 tab 
<div id="content"> 
<!-- TILES : CONTENT --> 
<!-- 탭 --> 
<ul class="lst_tab1" style="margin-top:20px;"> 
	<li Xecure="true" tabGroup="tab1" tabSeq="1" contentType="singleIframe" contentId="content1" contentSrc="/KBLCM/cy/
	CYCIRISP_notProcess.do" activeTab="true" class="lst_tab1_active" style="width:200px"> 
	<div id="tab1_subtitle_on"><span>처리중인 업무</span></div> 
	</li> 
	<li Xecure="true" tabGroup="tab1" tabSeq="1" contentType="singleIframe" contentId="content1" contentSrc="/KBLCM/cy/
	CYCIRISP_notProcess.do" activeTab="false" style="width:200px"> 
	<div id="tab1_subtitle_off"><span>처리중인 업무</span></div> 
	</li> 
	<li Xecure="true" tabGroup="tab1" tabSeq="2" contentType="singleIframe" contentId="content1" contentSrc="/KBLCM/cy/
	CYCIRISP_businessProcess.do" activeTab="true" class="lst_tab1_active" style="width:200px"> 
	<div id="tab2_subtitle_on"><span>진행중인 업무</span></div> 
	</li> 
	<li Xecure="true" tabGroup="tab1" tabSeq="2" contentType="singleIframe" contentId="content1" contentSrc="/KBLCM/cy/
	CYCIRISP_businessProcess.do" activeTab="false" style="width:200px"> 
	<div id="tab2_subtitle_off"><span>진행중인 업무</span></div>  
	</li> 
</ul> 
<div id="content1"></div>  
<!-- // TILES : CONTENT --> 
</div>  
==============================================================================================================

- 암호화(해당 부분을 암호화 함) 
O 클라이언트에서의 복호화는 xecureweb.js의 document.write(BlockDec(s) 가 호출이 되면서 자동으로 복호화가 일어난다. 

<!---BEGIN_ENC---> 
<p align='center'><big><strong>암호화된 클라이언트 Request 복호화 결과입니다. </strong></big></p>… 
<table border='1' width='100%'><tr> 
    <td width='17%'><strong>Decrypted QueryString :</strong></td> 
</table>… 
<!---END_ENC--->  

kbl.cy.ci.CYCIRITC_selTrgCon_lst.go_CYCIRISP_notProcess(0, 22);  
CYCIRISP_notProcess  
cipher = document.XecureWeb.BlockEnc(xgate_addr, path, XecureEscape(qs),"GET");  
==============================================================================================================

- 무급부퇴직, 가입취소 결함 조치: 완료 
무급부 퇴직 변경에서 "신청 내용 저장" 하면 데이타 이상하게 나옴 
==============================================================================================================

- 출력(인쇄) 관련(2건) 
<!--// 2.1. 결재신청완료(출력)[기업보험>퇴직보험>계약사항 조회/변경>계약일반사>보험대상자 대표기관 및 대표자 변경] //--> 
<action name="CYCIRIIS_represent_upd_print" class="kblcm.cy.ci.ri.is.action.CYCIRIIS_representAction"> 
<result name="print">/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_bossUpdPrint.jsp</result>  
<interceptor-ref name="cloginCheckStack" /> 
</action>  

<!--// 증명서발급(출력)[기업보험>퇴직보험>계약사항 조회/변경>계약일반사항] //-->   
frm.action = "/KBLCM/cy/cyciricrAppJoinConfirm.do";  ===> 실제 사용 
<!-- <action name="CYCIRIIS_appJoinConfirm_prn" class="kblcm.cy.ci.ri.is.action.CYCIRIIS_appJoinConfirmAction"> 
<result>/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_appJoinConfirm_prn.jsp</result>  
<interceptor-ref name="cloginCheckStack" /> 
</action> --> 
==============================================================================================================

- 펀드변경 결함 조치 
207084002644(*) 차장님 이건 옵션선택이랑 펀드 같이 변경하면 진행 처리가 안되요 ..ㅠ 
그리고 601107-2965532(208050004789) 분리운영 다 각자 접수하면 입력되어야하는데 같을때만 진행된다는 팝업뜨구요  
* 하면 에러남  
*  
--------------------------------------------------------------------------------------------------------- 
- 접수권한 에러 
해당 주민번호: *  
가입증서번호:204117052631  
PM112UM MSG_CODE : Z00100E1 
>> Communication is null, TRS Communication settimg.( 10.33.3.17:2006 )CICSK5T1 
MESSAGE : 접수권한이 없습니다. 
[/CYPIICVI_varamtServiceImpl.java]: 펀드변경 변경 접수 오류 :접수권한이 없습니다 
==============================================================================================================

- 제큐어 관련
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.10.10(금) 작업 ■■■■■■■■■■■■■■■■
----> 07:40 ~ 19:30  --> 최종 수정 

- 교보 홈 리뉴얼 Prj
- Xecure 붙이기 
1. XecureSubmit() 
frm.action = "/KBLCM/cy/CYCIRISP_businessProcess.do";  
frm.method = "POST"; 
XecureSubmit(frm); 

2. XecureLink() 
<div style="text-align:right;margin-top:15px;">  
<a href="/KBLCM/cy/CYCIRISP_businessProcess.do?p_page=1" onClick="return XecureLink(this)";> 
<img src="/KBLCM/images/common/btn_list01.gif"/></a><!--//[목록보기]//--> 
</div> 

- SubmitToTab, SubmitToLayer 사용시 XecureSubmit 적용 방식   
submitToLayer({formId:frm.id, layerId:'layer1', width:'755', Xecure:'true'});  

submitToTab({formId:frm.id, tabGroup:'insuredAltTab', tabSeq:3, Xecure:'true'});  //TAB으로 보내기  
==============================================================================================================

- 기업보험 수정 
1. 보험대상자변경(성명변경) 
2. 보험대상자변경(무급부퇴직/가입취소: 처리완료 
==============================================================================================================

- 적립금 조회 
월별조회로 해서.. 조회기간을 2008-4-10일 ~ 2008-10-09일로 하니깐..  
범위초과로 나오더라구요.  ===> 수정 
==============================================================================================================

- 로보폼 설치(로그인 정보 등록, 자동 로그인): Robo Form 
http://www.download.com/1770-2001_4-0.html?query=roboform&tag=srch&searchtype=downloads 
==============================================================================================================

- 엑셀파일 웹브라우저상에서 그대로 나옴 
//response.setHeader("Content-disposition", "filename=insured[" + EW00EW07.getHEAD_SECU_NUM() + "].csv"); 
==> response.setHeader("Content-disposition", "attachment; filename=insured[" + EW00EW07.getHEAD_SECU_NUM() + "].csv");  
==============================================================================================================

- 오른쪽 클릭 방지 
<body oncontextmenu="return false" ondragstart="return false" onselectstart="return false"> 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.10.11(토) 작업 ■■■■■■■■■■■■■■■■
----> 06:10 ~ 23:00  --> 최종 수정 

- 교보 홈 리뉴얼 Prj
- Xecure 붙이기 
/KBLCM/WebContent/flash/common/menulink_cy.xml 
==============================================================================================================

- Xecure 
import kblcm.common.util.xecure.XecureCertHelper; //Xecure 
import xecure.servlet.XecureServlet; //Xecure 

XecureCertHelper helper = new XecureCertHelper(ServletActionContext.getRequest(), 
ServletActionContext.getResponse());  
XecureServlet xservlet = helper.getXservlet();  
HttpServletRequest request = null;  
request = xservlet.request;  //Xecure request 받기 
========================================================================================================= 

<!---BEGIN_ENC---> 
<input type="hidden" name="procType"> 
<input type="hidden" name="CUR_PAGE"> 
<input type="hidden" name="COM_IO_CUR_COUNT" value="<%=COM_IO_CUR_COUNT%>"> 
<!---END_ENC---> 
==============================================================================================================

- 운영환경 아이피(IP) 
웹서버 : 203.233.85.11, 203.233.85.12 
was     : 10.33.2.1,   10.33.2.3 
DB : 10.33.1.102 
==============================================================================================================

- TEST DB 변경(/KBLCM/WebContent/WEB-INF/conf/kblcm-property.xml) 
<jdbc> 
<driverClassName>com.ibm.db2.jcc.DB2Driver</driverClassName> 
<url>jdbc:db2://10.33.3.17:50000/KYOBOWWW</url>    
<username>devadmin</username> 
<password>devadm1</password> 
</jdbc>  
---------------------------------------------------------------------------------------- 

 - DB2 연결 
IP: 10.33.3.17 데이터베이스명: DEVADMIN 
ID/PWD: devadmin/devadm1 CATALOG TCPIP NODE: p570 
REMOTE: 10.33.3.17 SERVER PORT: 50000 
REMOTE_INSTANCE: inst01 OSTYPE AIX;   
CATALOG DATABASE KYOBOWWW AS WWW 
  AT NODE: renewde AUTHENTICATION: SERVER; 
==============================================================================================================

- 제큐어 링크 
<a href="/KBLCM/cy/CYPIICVI_varamt.do" onClick="return XecureLink(this)";>[변액보험조회/펀드변경으로 이동]</a>  
- 일반 링크 
<a href="/KBLCM/cy/CYPIICVI_varamt.do">[변액보험조회/펀드변경으로 이동]</a> 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.10.12(일) 작업 ■■■■■■■■■■■■■■■■
----> 07:20 ~ 02:00  --> 최종 수정, 맥주 한캔(편의점: 이과장) 

- 교보 홈 리뉴얼 Prj
- Xecure 붙이기: 완료 
==============================================================================================================

1. 보험대상자 조회(CYCIRIIS_insuredPerson_lst.jsp) 
조회구분 에러(전체/재직자/퇴직자 구분 조회 안됨): 처리 완료 
2. 무급부퇴직/가입취소 삭제 안됨: 처리 완료 
3. 처리중인 업무: 처리 완료 
4. 보험금청구 진행상황 조회(CYCIRISP_insuReqRslt_lst.jsp): 처리 완료 
if (code == "31"  code == "32") { //보험금청구 진행상황 조회(퇴직일시금, 중간정산)  
url_link = "/cy/CYCIRISP_insuReqRslt_lst.do"; 
} 
============================================================================================================== 

- /KBLCM/src/kblcm/cy/pi/ic/vi/action/CYPIICVI_varamtAction.java 파일에서  
protected String service() throws Exception { 
if (cmd.equals("detail")  cmd.equals("detailupd")) {  //변액보험 계약사항 상세조회  
if (call.getMSG_CODE().equals("0000")) {   //host 통신 성공 이면 
call.setVaramtOperOutValue(); 
cypiicvi_varamtVO = call.getCypiicvi_varamtVO();  
} 
} 
} 
---------------------------------------------------------------------------------------- 

- /KBLCM/src/kblcm/hostif/od/call/V2020803odCall.java 파일에서(적립식 조회)   
public void setVaramtOperOutValue() {  //출력값 설정 
cypiicvi_varamtVO.setCancelRefundAmt_2(CMStringUtil.replace(VL115UM_S02_O_RETURN_PAYMENT,",","")); //해약환급금2 
cypiicvi_varamtVO.setProvLoanAmt_2(CMStringUtil.replace(VL115UM_S02_O_LOAN_REMN_AMT,",","")); //약관대출금2 

for (int i = 0; i < cnt; i++) { 
if (i == 0) 
preminumArrayList = new ArrayList();  
HashMap map = new HashMap(); 
map.put("payPeriod", VL115UM_S02_O_PAY_FREQ); 
}  
} 
==============================================================================================================

- 이용시간 조회 
SELECT * FROM TB_CYCMD113 
- 이용시간 수정 
-- update TB_CYCMD113 set trgt_gb='U' 
where BIZ_GB = 'C'  
and PROG_STAT_GB = 'I' 
============================================================================================================== 

- 프로그램 배포 요청(\\10.33.165.170\kyobo\05.■ 상황실운영\00. 요청사항처리\변경요청서)  
1. 사이버창구(개인) 
웹서버 배포 목록 
/KBLCM/WebContent/js/cy/pi/ic/vi/fund.js 
  
와스서버 배포 목록 
/KBLCM/src/kblcm/cy/pi/ic/vi/action/CYPIICVI_varamtAction.java 
/KBLCM/WebContent/WEB-INF/jsp/cy/pi/ic/vi/CYPIICVI_fund_mainViw.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/pi/ic/vi/CYPIICVI_varamtReserve_viw.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/pi/ic/vi/CYPIICVI_varamtEarnRt_viw.jsp  
/KBLCM/WebContent/WEB-INF/jsp/cy/pi/ic/vi/CYPIICVI_varamtPension_upd.jsp  
----------------------------------------------------------------------------------------  

2. 사이버창구(기업) 
웹서버 배포 목록 
/KBLCM/WebContent/js/service/cy/ci/CYCIRITC_selTrgCon_lst.js 

와스서버 배포 목록 
/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_insuredPerson_lst.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_apprvlok_viw.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ci/ri/sp/CYCIRISP_main01.jsp  
/KBLCM/src/kblcm/cy/ci/ri/sp/action/CYCIRISP_main01Action.java  
  
/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_unpaidRetireMain.jsp 
============================================================================================================== 

2. 사이버창구(기업)  
웹서버 배포 목록 
/KBLCM/WebContent/js/service/cy/ci/CYCIRITC_selTrgCon_lst.js 
/KBLCM/WebContent/js/service/cy/ci/CYCIRISP_businessProcess_lst.js 

와스서버 배포 목록 
/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_represent_upd.jsp  
/KBLCM/src/kblcm/cy/ci/ri/sp/action/CYCIRISP_insuReqRsltAction.java 
/KBLCM/src/kblcm/cy/ug/co/gi/action/CYCIRIIS_generalContractAction.java  
============================================================================================================== 

- 프로그램 배포 요청 
/KBLCM/WebContent/js/service/cy/ci/CYCIRITC_selTrgCon_lst.js 

/KBLCM/WebContent/WEB-INF/jsp/cy/pi/ic/vi/CYPIICVI_fund_mainViw.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/pi/ic/vi/CYPIICVI_change_completion.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/pi/ic/vi/CYPIICVI_varamtReserve_viw.jsp  
/KBLCM/WebContent/WEB-INF/jsp/cy/ci/ri/sp/CYCIRISP_main01.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_insuredPerson_lst.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_insuredAltSelect_lst.jsp 
KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_unpaidRetireSelected_lst.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ci/CYCI_appIframe_wrk.jsp 
/KBLCM/src/kblcm/cy/ug/co/gi/action/CYCIRIIS_unpaidRetireSelectedAction.java 
/KBLCM/src/kblcm/cy/pi/ic/vi/action/CYPIICVI_varamtAction.java 
============================================================================================================== 

- 실서버(11번 서버) 디버깅 
10.33.2.1(port:23) 
wassvr/wassvr19 
============================================================================================================== 

■■■■■■■■■■■■■■■■■■ 2008.10.13(월) 작업 ■■■■■■■■■■■■■■■■
----> 07:20 ~ 22:00  --> 교보생명 홈 오픈, 여관(이과장(4번째): 맥주 사감(초코렛), 미아삼거리역:172번 버스) 

- 교보 홈 리뉴얼 Prj
- 펀드 변경 수정(CYPIICVI_varamtPension_upd.jsp) --> 옵션 변경 에러 
김성희(*/471800) ==> kyb/a537443, */131313  
홍영애(*/a537443) 
차장님.. 영애언니가 얘기했던,,,펀드변경 입력취소시에 옵션변경취소는 입력안되는거랑,, 
아이미래변액보험/연금전환상품 펀드변경후 에러나는거 조치되었나요?? 
==============================================================================================================

- 업무진행상황  상세조회(퇴직일시금) 에러 
원인: CYCIRISP_insuReqRsltAction.java 파일을 누가 엎어쳐짐 
==============================================================================================================

- 청구서 입력결과(새창) 에러 
CYCIRISP_insuReqDetail_viw_pop.jsp 수정(제큐어 적용) 
==============================================================================================================

- 프로그램 배포 요청 
/KBLCM/WebContent/js/service/cy/ci/CYCIRISP_businessProcess_lst_su.js 

/KBLCM/WebContent/WEB-INF/jsp/cy/ci/ri/sp/CYCIRISP_main01.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/pi/ic/vi/CYPIICVI_varamtPension_upd.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/pi/ic/vi/CYPIICVI_varamtEarnRt_viw.jsp 
KBLCM/WebContent/WEB-INF/jsp/cy/pi/ic/vi/CYPIICVI_change_completion.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_insuredAltSelect_lst.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_unpaidRetireSelected_lst.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_insuredPerson_lst.jsp 
/KBLCM/src/kblcm/cy/ci/ri/sp/action/CYCIRISP_insuredAltRsltAction.java 
/KBLCM/src/kblcm/cy/ci/ri/sp/action/CYCIRISP_transferReqApprovalAction.java 
/KBLCM/src/kblcm/cy/ci/ri/sp/action/CYCIRISP_generalContractRsltAction.java 
/KBLCM/src/kblcm/cy/ci/ri/sp/action/CYCIRISP_unpaidRetireRsltAction.java 
/KBLCM/src/kblcm/cy/ci/ri/sp/action/CYCIRISP_userChangeRsltAction.java 
/KBLCM/src/kblcm/cy/ci/ri/sp/action/CYCIRISP_insuReqRsltAction.java  
----------------------------------------------------------------------------------------  
/KBLCM/src/kblcm/cy/pi/ic/vi/action/CYPIICVI_varamtAction.java 
/KBLCM/WebContent/WEB-INF/jsp/cy/pi/ic/vi/CYPIICVI_varamtEarnRt_viw.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/pi/ic/vi/CYPIICVI_varamtPension_upd.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ci/ri/sp/CYCIRISP_insuReqRslt_lst.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ci/ri/sp/CYCIRISP_insuReqDetail_viw_pop.jsp 
/KBLCM/src/kblcm/cy/ci/ri/sp/action/CYCIRISP_insuReqRsltAction.java   
==============================================================================================================

- 홈페이지 리뉴얼 오픈 관련 웹개발팀 주말 근무 
1. 토요일  13:00 까지 출근  
(10/11일)  13:20 ~ 16:20 마이그 점검 
18:00 ~ 23:00 Application 점검, 점검표 작성 및 제출후 귀가 

2. 일요일  09:00 까지 출근 
(10/12일) 09:00 ~ 14:00  I/F  점검 
14:00 ~ 23:00 업무점검 및 긴급조치 
24:00  ~        OPEN   

10/11(土) 00:00 ~ 10/12(日) 24:00까지 홈페이지 리뉴얼 정규반영 작업이 예정되어  있으며, 
현업담당자 분들이 10/12(日) 오전 9:00부터 오후 14:00까지 각 부문별 테스트 예정입니다.  
==============================================================================================================

- Xecure 로그인 에러(17번 테스트 서버) 
에러코드: -110 
암호 세션 연결이 취소 되었습니다. 
원인: Xecure 설치 에러 
조치: 서버에서 Xecure 다시 설치  

- /KBLCM/WebContent/js/XecureObject/xecureweb.js 파일에서 수정 
//var xgate_addr = window.location.hostname + ":8881:8080"; 
==> var xgate_addr = window.location.hostname + ":8889:8080";  //TEST(로컬에 적용) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.10.14(화) 작업 ■■■■■■■■■■■■■■■■
----> 08:20 ~ 23:00  --> 공인인증서 에러(실서버에서 에러가 나서 난리침: 공통 박부장 role) 

- 교보 홈 리뉴얼 Prj
- 펀드 변경 수정(CYPIICVI_varamtPension_upd.jsp) --> 옵션 변경 에러 
김성희(8508032784015/471800) ==> kyb/a537443, */131313  
홍영애(*/a537443) 
차장님.. 영애언니가 얘기했던,,,펀드변경 입력취소시에 옵션변경취소는 입력안되는거랑,, 
아이미래변액보험/연금전환상품 펀드변경후 에러나는거 조치되었나요?? 
---------------------------------------------------------------------------------------- 

* --> 17번 서버에서 가능 
기본보험료펀드는 변경안되는거 반영된건 맞는데요.. 적립금/추가납보험료 펀드가 동일한 펀드 선택되면..  
자동재배분 옵션선택되어있는 계약건 진행되면되거든요..  
==============================================================================================================

- 업무진행상황에서 보험금출력 인쇄 버튼이  대상이 많을때 안보이고요 , 페이지보기도 없어졌네요 
: 처리완료 
==============================================================================================================

- 프로그램 배포 요청 
/KBLCM/WebContent/js/service/cy/ci/CYCIRISP_businessProcess_lst_su.js 
 /KBLCM/WebContent/WEB-INF/jsp/cy/ci/ri/sp/CYCIRISP_businessProcess_lst.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ci/ri/sp/CYCIRISP_appUnpaidRetire_lst.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ci/ri/sp/CYCIRISP_insuredAltSelected_lst.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ci/ri/sp/CYCIRISP_transferReqApproval_lst.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ci/ri/sp/CYCIRISP_unpaidRetireSelected_lst.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/pi/ic/vi/CYPIICVI_varamtPension_upd.jsp 
/KBLCM/src/kblcm/cy/ci/ri/sp/action/CYCIRISP_insuReqDetailAction.java 
/KBLCM/src/kblcm/cy/ug/co/gi/action/CYCIRIIS_insuredPersonAction.java 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.10.15(수) 작업 ■■■■■■■■■■■■■■■■
----> 07:20 ~ 19:00  --> 이은화 과장 철수(집까지 LCD 들어줌), 맥주, 여관(이과장(5번째): 미아삼거리역:172번 버스) 

- 교보 홈 리뉴얼 Prj
- 펀드 변경 수정(CYPIICVI_varamtPension_upd.jsp)  
자동재배분이 선택된 계약 처리(*) 
1. 일시납 이면 --> 적립식펀드 적립비율 = 추가펀드 적립비율 
2. 일시납 아니면 --> 적립식펀드 적립비율 = 추가펀드 적립비율, 적립식펀드 적립비율 = 기본펀드 적립비율 

에러 내용: 
PM105UM MSG_CODE : PH0011E1 
>> Communication is null, TRS Communication settimg.( 10.33.3.17:2006 )CICSK5T1 
MESSAGE : 변액보험 투입수익율 OR 일반전환 변경할 수 없습니다. 
조치: PMZZAFS_W00_PARAM.java 파일 변경(Host 담당자에게 요청해서 다시 받음) 
==============================================================================================================

- KBLCMSysException 에러 처리 
- /KBLCM/src/kblcm/cy/pi/ic/vi/service/CYPIICVI_varamtServiceImpl.java  파일에서 
if (pm105um.getMSG_CODE().equals("PH0011E1")) { 
throw new KBLCMSysException(pm105um.getMSG_CODE());  //에러 메세지 보내기 
} else { 
throw new KBLCMSysException("CYM10001");   //에러 메세지 보내기 
} 
-------------------------------------------------------------------------------- 

- /KBLCM/msgMap/message/kblcm-msg-cy.xml 파일에서 
<!--==================// ci. 기업보험(진태만)  //==================--> 
<message id="CYM10001" type="error"><![CDATA[ 
펀드변경 보험료 계산 오류 중 오류가 발생했습니다. 
]]></message>  
==============================================================================================================

- 프로그램 배포 요청  ===> 추후 요청할 것  
/KBLCM/msgMap/message/kblcm-msg-cy.xml  ===> 추후 요청할 것 
/KBLCM/src/kblcm/cy/pi/ic/vi/action/CYPIICVI_varamtAction.java 
/KBLCM/src/kblcm/cy/pi/ic/vi/service/CYPIICVI_varamtServiceImpl.java  ===> 추후 요청할 것 
/KBLCM/src/kblcm/hostif/us/commarea/PMZZAFS_W00_PARAM.java  ===> 추후 요청할 것 
/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_insuredPerson_lst.jsp  ===> 추후 요청할 것 
==============================================================================================================

- 업무 확인 회의(11:30 ~ 14:30): 임형성 과장(교보), 정재상 대리(교보), 황광엽 부장, 김동규 부장 
1. 미결업무 처리 요청(10.24(금)까지 완료하기로 함) 
 1) 보험대상자 다운로드(IE 6에서 엑셀파일이 웹브라우저 상에서 그대로 나옴) 
 2) 보험대상자 명부정리 
 3) 처리중인 업무, 진행중인 업무(신청일자 표기)  
    같은내용인 진행상태가 2중으로 나옴 
2. 펀드수정(개인보험):  19:00 ~  
==============================================================================================================

- 산출물 작업 교육(17:00 ~ 17:50): SK 품질 담당자 
1. 개발 산출물 작성 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.10.16(목) 작업 ■■■■■■■■■■■■■■■■
----> 12:20 ~ 21:00  --> 늦게 출근(Lee), C9 문국필 차장(전략 기획팀) 총괄 PL로 옴 

- 교보 홈 리뉴얼 Prj
- 펀드 변경 수정(CYPIICVI_varamtPension_upd.jsp)  
자동재배분이 선택된 계약 처리(*): 처리완료 
==============================================================================================================

- 예금주 체크부분 수정(이은화 과장 업무) 
/KBLCM/WebContent/js/cy/ug/co/gi/CYCIRIIS_indivReqRsltFormControl.js 
테스트쪽 17번에서는  예금주 확인은 그냥처리하는 걸로 하면 됩니다.  
if (frm.inspect_cd.value == "Y") {  
// 예금주 체크를 스킵할껀지 여부 확인 
//frm.ownercheck.value ="true";//TODO test server진행시   ===> 실서버에 올릴때는 주석(//) 달기 
if (frm.ownercheck.value == "false"  frm.ownercheck.value == "") { 
tmpVal = "\n예금주 확인결과 : [" + document.form1.CKResult.value + "]입니다." 
   + "\n\n예금주체크결과가 정상이 아니면 임시저장만 됩니다." 
   + "\n\n예금주체크는 Skip하고 청구내역 결과 내역을 임시저장하시겠습니까?"; 
} 
} 
==============================================================================================================

- 일괄청구 3단계 오류 수정 이관 목록(디플로이 요청) 
/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_bundleReqSelect_lst.jsp 
/KBLCM/src/kblcm/hostif/od/call/EW10EWA2odCall.java 
/KBLCM/src/kblcm/hostif/od/commarea/EW10EWA2_PARAM.java 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.10.17(금) 작업 ■■■■■■■■■■■■■■■■
----> 07:10 ~ 19:30  --> 펀드 개인보험으로 이관(정경환 이사), 이과장 환송회(맥주, 노래방, 맥주, 여관(이과장(6번째))) 

- 교보 홈 리뉴얼 Prj
1-1) 엑셀파일 일괄 전송[기업보험>퇴직보험>계약사항 조회/변경>보험대상자>보험대상자 명부정리]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSend_ins.jsp  ======>   

2) 전송결과 확인/수정[기업보험>퇴직보험>계약사항 조회/변경>보험대상자>보험대상자 명부정리]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSendOK_viw.jsp  ======> 

3) 결재신청[기업보험>퇴직보험>계약사항 조회/변경>보험대상자>보험대상자 명부정리] 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotalSendApprvAction 
CYCIRIIS_insuredPersonTotalSendApproval_view.jsp  ======>    
==============================================================================================================

- 개별청구 예금주 체크부분: 실서버에 적용 확인완료 
- 일괄청구 3단계: 실서버에 적용 확인완료 
==============================================================================================================

- 일괄청구 3단계 오류 수정 이관 목록(디플로이 요청) 
/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_generalContract_viw.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_insuredPerson_lst.jsp 
==============================================================================================================

-  테스트 서버 확인(/KBLCM/WebContent/WEB-INF/conf/kblcm-property.xml) 
<CommSvrGatewayURL>10.33.3.17</CommSvrGatewayURL> 
<CommSvrGatewayPORT>2006</CommSvrGatewayPORT> 
<CommSvrName>CICSK5RG</CommSvrName>    ==> K5로 확인 됨 
==============================================================================================================

- 5. 엑셀양식이 다운로드가 안되고 웹화면이 열리는 경우(company_manual05.pdf) 
① 바탕화면의 ‘ 내 컴퓨터’를 실행시킨 후 ‘도구>폴더옵션’ 메뉴를 선택 
② 폴더옵션>파일형식>확장명 XLS 선택 활성화> 고급버튼 클릭 
③ 파일형식 편집 창에서 Open 을 선택 ‘다운로드 후 열기 확인’ 체크 

참고: 엑셀이 설치되지 않는 PC는 화면이 안 열리고 엑셀 파일이 저장 되도록 설정됨 
==============================================================================================================

- 개발 산출물 작업 
\\10.33.165.170\kyobo\03.통합테스트\88.공통\■■■ 최종 산출물 ■■■■■■ 
----------------------------------------------------------------------------------------------- 

- JavaDoc 관련 문서 
자바에 대한 지침서(설명서)라고 보시면 됩니다. 자바에서 제공하는 모든 객체들에 대한 설명을 담고 있습니다. 
http://blog.naver.com/dreamy_alice/100051912790 
http://blog.naver.com/yeejuni?Redirect=Log&logNo=50026990860 
http://blog.naver.com/xkorn03?Redirect=Log&logNo=30034967599 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.10.18(토) 작업 ■■■■■■■■■■■■■■■■
----> 12:30 ~ 16:00  --> 토요 근무 

- 교보 홈 리뉴얼 Prj
- 파일 업로드 요청(/upload/uploadfile/common/cy/ci/ri/is) 
/kblcm/kblcmsys/AttFile/commonAttFile/cy/ci/ri/is 
/KBLCM/AttFile/commonAttFile/cy/ug/co/gi/00_Sample_Send.xls 
/KBLCM/AttFile/commonAttFile/cy/ug/co/gi/00_Sample_Send2.xls 
/KBLCM/AttFile/commonAttFile/cy/ug/co/gi/00_Sample_PersonTotSend.xls 
/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_bundleSend_ins.jsp 
==============================================================================================================

- 퇴직보험 개별청구>지급예정일 수정(CYCIRIIS_indivReqReserve_viw.jsp)  
/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_indivReqReserve_viw.jsp   
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.10.20(월) 작업 ■■■■■■■■■■■■■■■■
----> 07:10 ~ 19:00  --> 후남 방문(보쌈, 쥬스, 청계천: 연예상담), 맥주, 여관(이과장(7번째): 미아삼거리역:코피) 

- 교보 홈 리뉴얼 Prj
1-1) 엑셀파일 일괄 전송[기업보험>퇴직보험>계약사항 조회/변경>보험대상자>보험대상자 명부정리]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSend_ins.jsp  ======>   

2) 전송결과 확인/수정[기업보험>퇴직보험>계약사항 조회/변경>보험대상자>보험대상자 명부정리]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSendOK_viw.jsp  ======> 

3) 결재신청[기업보험>퇴직보험>계약사항 조회/변경>보험대상자>보험대상자 명부정리] 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendApprvAction 
CYCIRIIS_insuredPersonTotSendApprv_viw.jsp  ======>     
==============================================================================================================

(주)C9 신성원 사장
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.10.21(화) 작업 ■■■■■■■■■■■■■■■■
----> 12:40 ~ 22:00 

- 교보 홈 리뉴얼 Prj
1-1) 엑셀파일 일괄 전송[기업보험>퇴직보험>계약사항 조회/변경>보험대상자>보험대상자 명부정리]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSend_ins.jsp  ======>   

2) 전송결과 확인/수정[기업보험>퇴직보험>계약사항 조회/변경>보험대상자>보험대상자 명부정리]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSendOK_viw.jsp  ======> 

3) 결재신청[기업보험>퇴직보험>계약사항 조회/변경>보험대상자>보험대상자 명부정리] 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendApprvAction 
CYCIRIIS_insuredPersonTotSendApprv_viw.jsp  ======>     

- 2중 등록 문제 ==> 결재신청(다음단계로 이동)시 에러 발생 
forwardPage = "approval_result"; 에서 이동하는 CYCI_appIframe_wrk.jsp 파일에 xecure 존재(xecure 제거할 것) 
<%//@ page language="java" extends="xecure.servlet.jsp.XecureHttpJspPage" %> 
==============================================================================================================

- 작업구분 
frm.proc_type.value = "P"; //작업구분(P:입력(저장, 수정, 삭제), S:조회) 
String ProcType = ut.getDefault(request.getParameter("procType"), "S"); 
==============================================================================================================

- 제큐어 포트 상이한 문제점 
1. /KBLCM/WebContent/js/XecureObject/xecureweb.js 파일에서 수정 
//var xgate_addr = window.location.hostname + ":8881:8080"; 
==> var xgate_addr = window.location.hostname + ":8889:8080";  //TEST(로컬에 적용) 
2. C:\DevEnv\Tools\XecureWeb\xecureweb_ver7\xgate\conf 파일에서 
directPort="443" ==>  directPort="8889"  
3. 이클립스 Servers(더블 클릭) 
포트네임(HTTP/1.1) ==> 8090 
http://localhost:8090/KBLCM/cm/CMLCCCCustomerViwAction.do 
==============================================================================================================

- 테스트 서버 로그 보는 방법 
> 10.33.3.17(wassvr/wassvr17)  ==> Directory: /kblcm/kblcmsys/KBLCM_war.ear/KBLCM.war/WEB-INF/jsp 
> tlog 
==============================================================================================================

 - 프로그램 배포 요청(준비중) 
/KBLCM/src/conf/struts2/struts-cy-ci.xml 

/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_insuredPerson_lst.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ci/CYCI_appIframe_wrk_noX.jsp 
/KBLCM/WebContent/WEB-INF/jsp/cy/ug/co/gi/CYCIRIIS_insuredPersonTotSendApprv_viw.jsp 
/KBLCM/src/kblcm/cy/ug/co/gi/action/CYCIRIIS_insuredPersonTotSendAction.java 
/KBLCM/src/kblcm/cy/ug/co/gi/action/CYCIRIIS_insuredPersonTotSendApprvAction.java 
==============================================================================================================

 - 프로그램 배포 요청 
/KBLCM/src/kblcm/cy/ci/ri/sp/action/CYCIRISP_insuReqRsltAction.java 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.10.22(수) 작업 ■■■■■■■■■■■■■■■■
----> 07:10 ~ 18:40  --> 염색(혼자) 

- 교보 홈 리뉴얼 Prj
- JavaDoc 관련 문서 
자바에 대한 지침서(설명서)라고 보시면 됩니다. 자바에서 제공하는 모든 객체들에 대한 설명을 담고 있습니다. 
http://blog.naver.com/yeejuni?Redirect=Log&logNo=50026990860 
---------------------------------------------------------------------------------- 
- JavaDoc 한글 설정 
-locale ko_KR 
-encoding UTF-8 
-charset UTF-8 
-docencoding UTF-8 
==============================================================================================================

- 산출물 작업 
1. 인터페이스 목록(SI-20080305-DS-DEV-07) 
2. 인터페이스 명세서(SI-20080305-DS-DEV-08) 
3. 프로그램 목록(SI-20080305-DS-DEV-11): 이전에 작성 되어 있음 
(SI-20080305-DS-DEV-15-프로그램목록-사이버창구(통합)-ver.5.0.xls) 
4. 프로그램 사양서(SI-20080305-DS-DEV-12) 
5. Source Code(App/Design)(SI-20080305-IM-DEV-01): 문의(?) 
6. Source Code Comment (JavaDoc)(SI-20080305-VER-01): 80% 완성 
7. Inspection 계획 및 결과서(SI-20080305-VER-01) 
8. 요구사항 추적 매트릭스(SI-20080305-REQM-01): 문의(?) 
--------------------------------------------------------------------------------------- 
- EW10W156odCall.java 파일에서 
setLAW_TRANID("EW10"); 
setLAW_WORK_CODE("W156"); 
setLAW_PROGRAM_ID("ECW156OD"); 
PROGRAM_ID: ECW156OD TRAN_ID: EW10 WORK_CODE: W156   
==============================================================================================================

- 문태용 주민세(2008년개인균등할 정기분) 
전자납부번호: 41360-1-1008-0437811 
금액: 4,530원 
- 재산세(주택): 납부기한: 2008.10.31 
기관번호 세  목 납세년월기 과세번호  
7406106 50105005 2008071 0029422 
금액: 741,980원 
- 법칙금(자동차) 
신한은행 561-926-40044210 서울성동경찰서 
금액: 15,000원 
문태용 이메일: *@*.* 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.10.23(목) 작업 ■■■■■■■■■■■■■■■■
----> 07:10 ~ 22:00   --> 서버 디플로이 사고(보안 뚫림) 

- 교보 홈 리뉴얼 Prj
- 산출물 작업 
1. 인터페이스 목록(SI-20080305-DS-DEV-07): 완료 
2. 인터페이스 명세서(SI-20080305-DS-DEV-08): 완료 
3. 프로그램 목록(SI-20080305-DS-DEV-11): 이전에 작성 되어 있음 
(SI-20080305-DS-DEV-15-프로그램목록-사이버창구(통합)-ver.5.0.xls) 
4. 프로그램 사양서(SI-20080305-DS-DEV-12) 
5. Source Code(App/Design)(SI-20080305-IM-DEV-01): 문의(?) 
6. Source Code Comment (JavaDoc)(SI-20080305-VER-01): 80% 완성 
7. Inspection 계획 및 결과서(SI-20080305-VER-01) 
8. 요구사항 추적 매트릭스(SI-20080305-REQM-01): 문의(?)  
http://localhost:8090/KBLCM/images/common/btn_payment02.gif   ==> 결재신청 이미지 
==============================================================================================================

- HOST 엑셀 파일 요청 
1. ECW140OD: 처리중인업무(업무진행사항) 
2. ECW141OD: 지급중지건조회(계약사항 조회/변경>지급중지건조회) 
3. ECW159OD: 보험대상자 정보 변경 상세 결재내역(진행중인업무) 
4. ECW002OD: 책임준비금 조회, 출력(계약사항 조회/변경>책임준비금) 
5. ECW009OD: 보험금지급내역 엑셀다운로드(계약사항 조회/변경>보험금지급내역) 
==============================================================================================================

- CYCIRITC_selTrgConAction.java 파일 샘플(javaDoc 표준 작업) 
/** 
* 1. 설 명 : 가입증서번호에 해당하는 대상계약을 선택한다.(반드시 하나를 선택 해야 함)  
* 호스트 인터페이스 : EW00EW76odCall  
* 관련 파일 : 

* 2. p_cmd값에 따른 페이지 이동 경로 
* print : 출력화면으로 이동 
* list  : 목록화면으로 이동 
* iframe: 처리결과화면으로 이동 

* 3. parameter 
* @param int cost   판매단가 
   * @param String productId   판매상품 코드 
* @param errorVO 이용시간통제 업무를 나타내는 value object 
* @return String 상황에 따른 msg code  또는 void 
  
* 4. 기타 
* @throws KBLCMSysException 
* @see com.kyobo.kblcm.cyber.ad.mo.vo.CYADMO_errorVO 

  * @author 진태만 
  * @since jdk 131 
*/ 
----------------------------------------------------------------------------- 

/**<pre> 
* 설 명 : 가입증서번호에 해당하는 대상계약을 선택한다.(반드시 하나를 선택 해야 함)  

* @return void              
  * @throws KBLCMSysException  
*/  
protected String service() throws Exception { 
} 
==============================================================================================================

 - EW10EW11odCall.java 파일 샘플 
 /*********************************************************  
  @프로그램명   : EW10EW11odCall.java 
  @TRIN ID      : EW10  
  @프로그램목적 : 퇴직보험금 개별청구(보험금청구>퇴직보험 개별청구) 
  @적용일시     : 2008.10.09   
  @히스토리관리 : 
      수정일         변경자       내용 
   ------------------------------------------------------ 
      2008/09/06     이은화       리뉴얼  
**********************************************************/ 
 
      수정일      변경한 개발자명  변경한 내용  
      2008/08/19  진태만         리뉴얼 
**********************************************************/ 
==============================================================================================================

- VO.java 파일 샘플 
/**<pre> 
* 설 명 : 사내판매 담당자는 “사내 판매 인력” 프로그램을 이용하여 급여에서  
                   공제될 사내판매 상품자료를 입력한다. 
* 처리내용(조회/수정/삭제/기타) : 조회 

* @param int cost   판매단가 
* @param String productId   판매상품 코드 
* @param errorVO 이용시간통제 업무를 나타내는 value object 
* @return void 
* @throws KBLCMSysException 
* @see com.kyobo.kblcm.cyber.ad.mo.vo.CYADMO_errorVO 
*/ 
==============================================================================================================

- 명부정리 수정 
sh.put("annae_name", getChupsu(COM_O_SMSC_GB));  //사무내용 
private String getChupsu(String code)  { 
 if (code.equals("55")) { 
    return "명부정리(추계액)"; 
} 
} 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.10.24(금) 작업 ■■■■■■■■■■■■■■■■
----> 08:00 ~ 18:00  --> 맥주(인사동 근처), 여관(이과장(8번째)): 이별 문제로 싸움 

- 교보 홈 리뉴얼 Prj
- 산출물 작업 
1. 인터페이스 목록(SI-20080305-DS-DEV-07): 완료 
2. 인터페이스 명세서(SI-20080305-DS-DEV-08): 완료 
3. 프로그램 목록(SI-20080305-DS-DEV-11): 이전에 작성 되어 있음 
(SI-20080305-DS-DEV-15-프로그램목록-사이버창구(통합)-ver.5.0.xls) 
4. 프로그램 사양서(SI-20080305-DS-DEV-12) 
5. Source Code(App/Design)(SI-20080305-IM-DEV-01): 문의(?) 
6. Source Code Comment (JavaDoc)(SI-20080305-VER-01): 80% 완성 
7. Inspection 계획 및 결과서(SI-20080305-VER-01) 
8. 요구사항 추적 매트릭스(SI-20080305-REQM-01): 문의(?)  
==============================================================================================================

- 사이버창구 이용안내 
기업복지_보험대상자 교체신청(UI_CY_8565) 
사고보험금 청구안내 팝업(사망보험금)(UI_CY_8565_10) ==> 총 6개 
  
- 이용안내 GNB(/KBLCM/WebContent/flash/common/menulink_cy.xml) 
-사이버창구 이용안내 
-서비스 이용안내 
-서비스 DEMO 
-사고보험금 청구절차 안내( --> 단체상해보험 청구절차안내) 
<url><![CDATA[/KBLCM/cy/CYUGCOGI_acdtInsuRequestProcess.do]]></url>  
------------------------------------------------------------------------------------------------------ 

<!--// ug.co.gi 이용안내>기업보험>사고보험금 청구절차안내 //--> 
<action name="CYUGCOGI_acdtInsuRequestProcess"> 
<result type="tiles">cy.CYUGCOGI_acdtInsuRequestProcess</result> 
</action> 
   
<!--// ug.co.gi 이용안내>기업보험>사고보험금 청구절차안내 //--> 
<definition name="cy.CYUGCOGI_accdtInsuReqProcess" extends="cy.base_pi">  
	<put-attribute name="backgroundUrl" value="/KBLCM/images/common/background/bg_title.gif"></put-attribute> 
	<put-attribute name="titleImage" value="/KBLCM/images/service/cy/title_groupBohumProgress.gif"></put-attribute> 
	<put-attribute name="ScriptPath" value=""></put-attribute> 
	<put-attribute name="ScriptName" value=""></put-attribute>  
	<put-attribute name="content" value="/WEB-INF/jsp/cy/ug/co/gi/CYUGCOGI_acdtInsuRequestProcess_viw.jsp"></put-attribute>  
</definition>   
==============================================================================================================

- 국민연금 납부 안내 받음 
2008년 12월 부터(국민연금 홈에서 자동이체 신청할 것) 
납부금액(월): 89,100원 
==============================================================================================================

- 주가 대폭락(종욱이 아제 추천 주식) 
영인프런티어(036180)   현재가 : 2,280원 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.10.25(토) 작업 ■■■■■■■■■■■■■■■■
----> 12:40 ~ 19:00  -->  토요 근무 

- 교보 홈 리뉴얼 Prj
- 산출물 작업 
1. 인터페이스 목록(SI-20080305-DS-DEV-07): 완료 
2. 인터페이스 명세서(SI-20080305-DS-DEV-08): 완료 
3. 프로그램 목록(SI-20080305-DS-DEV-11): 이전에 작성 되어 있음 
(SI-20080305-DS-DEV-15-프로그램목록-사이버창구(통합)-ver.5.0.xls) 
4. 프로그램 사양서(SI-20080305-DS-DEV-12) 
5. Source Code(App/Design)(SI-20080305-IM-DEV-01): 문의(?) 
6. Source Code Comment (JavaDoc)(SI-20080305-VER-01): 80% 완성 
7. Inspection 계획 및 결과서(SI-20080305-VER-01) 
8. 요구사항 추적 매트릭스(SI-20080305-REQM-01): 문의(?)  
==============================================================================================================

- 인수인계 문서 작업 
진태만 업무인수인계 관련.doc 
==============================================================================================================

-  개인PC 고장 
개인PC 회사에 들고옴(파워 안 켜짐(오래동안 사용 안함): 이승민씨에게 수리 의뢰): 파워문제 
전원공급장치 구입(12,000원)하여 새로 교체 -> 세운상가(이과장) 
==============================================================================================================

- 계약기본사항변경 수정(변경 후가 없을 때 삭제 이미지 안보이게 수정) 
/KBLCM/WebContent/WEB-INF/jsp/cy/ci/ri/is/CYCIRIIS_generalContract_upd.jsp 
/KBLCM/src/kblcm/cy/ci/ri/is/action/CYCIRIIS_generalContractChAction.java 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.10.27(월) 작업 ■■■■■■■■■■■■■■■■
----> 06:50 ~ 22:40 

- 교보 홈 리뉴얼 Prj
- 산출물 작업 
1. 인터페이스 목록(SI-20080305-DS-DEV-07): 완료 
2. 인터페이스 명세서(SI-20080305-DS-DEV-08): 완료 
3. 프로그램 목록(SI-20080305-DS-DEV-11): 이전에 작성 되어 있음 
(SI-20080305-DS-DEV-15-프로그램목록-사이버창구(통합)-ver.5.0.xls) 
4. 프로그램 사양서(SI-20080305-DS-DEV-12) 
5. Source Code(App/Design)(SI-20080305-IM-DEV-01): 문의(?) 
6. Source Code Comment (JavaDoc)(SI-20080305-VER-01): 80% 완성 
7. Inspection 계획 및 결과서(SI-20080305-VER-01) 
8. 요구사항 추적 매트릭스(SI-20080305-REQM-01): 문의(?) 
==============================================================================================================

-  pdf 파일 업로드 수정 
<div class="MT10 MR05" style="float:left;width:105px;"> 
<a href="/KBLCM/pdf/cy/ug/co/gi/insuReq_Paper.pdf" target="_new"> 
<img src="/KBLCM/images/service/cy/btn_desk_01.gif" align="absmiddle"/></a> <!-- 사고보험금 청구서 --> 
</div> 
<div class="MT10" style="width:110px;"> 
<a href="/KBLCM/pdf/cy/ug/co/gi/acdtInsuReqPaper_Intro.pdf" target="_new"> 
<img src="/KBLCM/images/service/cy/btn_desk_02.gif" align="absmiddle"/></a> <!-- 사고보험금 청구서류 안내 -->   
</div>  
==============================================================================================================

- mainLayout.jsp 파일 수정(jpg -> flash) 
<put-attribute name="backgroundUrl" value="/KBLCM/flash/common/sub_visual_cy.swf"></put-attribute> 
/KBLCM/WebContent/WEB-INF/jsp/cy/tiles/tilesLayout/mainLayout.jsp 
==============================================================================================================

- Action.java 파일 수정 
주석 수정 
==============================================================================================================

- IE6 에서 화면이 이상하게 보이는 거 수정 
원인: Tab 만들 때 이중으로 스크립트를 사용 
/KBLCM/WebContent/WEB-INF/jsp/cy/ci/ri/is/CYCIRIIS_main01.jsp   
==============================================================================================================

- 보람정보기술(주) 이력서 제출: *@*.* 
전화 옴(삼성생명, 메트라이프 생명 투입 요청) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.10.28(화) 작업 ■■■■■■■■■■■■■■■■
----> 07:00 ~ 22:30 

- 교보 홈 리뉴얼 Prj
- 산출물 작업 
1. 인터페이스 목록(SI-20080305-DS-DEV-07): 완료 
2. 인터페이스 명세서(SI-20080305-DS-DEV-08): 완료 
3. 프로그램 목록(SI-20080305-DS-DEV-11): 완료(명부정리부분 수정) 
(SI-20080305-DS-DEV-15-프로그램목록-사이버창구(통합)-ver.5.0.xls) 
4. 프로그램 사양서(SI-20080305-DS-DEV-12) 
5. Source Code(App/Design)(SI-20080305-IM-DEV-01): 문의(?) 
6. Source Code Comment (JavaDoc)(SI-20080305-VER-01): 완료 
7. Inspection 계획 및 결과서(SI-20080305-VER-01) 
8. 요구사항 추적 매트릭스(SI-20080305-REQM-01): 문의(?) 
==============================================================================================================

 - 프로그램 배포 요청(준비중) 
/KBLCM/src/conf/struts2/struts-cy.xml 
/KBLCM/src/conf/struts2/struts-cy-ci.xml 
/KBLCM/WebContent/WEB-INF/conf/context/cyContext.xml 
  
/KBLCM/src/kblcm/cy/ad/cy/cs/service/CYADCYCS_csServiceImpl.java --> 안함 
/KBLCM/src/kblcm/cy/ad/cy/ra/service/CYADCYRA_accidentServiceImpl.java --> 안함 
==============================================================================================================

 - 이용시간 에러 
"지금은 해당 업무의 이용시간이 아닙니다." 
조회업무 : 365일 24시간 조회 가능  
처리업무 : 08:00 ~ 22:00  
원인: 공통 관리자에서 이용시간을 변경해야 함 
http://10.33.3.17/KBLCM/cm/ad/admin_title.do ==> 홈페이지 관리 -> 이용시간관리 -> 기업관리에서 
조회(R) 평일(N) 00:00:00 23:59:00 사용  ===> 상태: 일시정지 ->사용으로 변경 
==============================================================================================================

 - 대상계약선택을 했는지 여부체크 
 1. CYCIRISP_main01Action.java 파일에서 
 //1.조회(R),입출금(I)    2.퇴직(01),기업복지(02)  3.원하는 cmd   
String redirect = isUsePossible(request,"R","01","checkNoOk");   //대상계약선택을 했는지 여부체크 
(선택과 동시에 조회도 가능 해야 함)   

if(redirect != null) //대상계약선택 안 했으면 
{ 
return redirect; 

} else if(p_secu_num.trim().length()==0 && PolicyNo.length()==0){ //증권번호가 없으면   ===> 추가 
request.getSession().setAttribute("_SEL_CON_NEXT_URL_KEY_", request.getRequestURI() + "?" + request.getQueryString()); 
redirect = "ir_con_sel_redirect"; 
return redirect; 
} else { 
//===> 성공 
} 
 2. CYCIRIIS_main01Action.java 파일에서 
String redirect = isUsePossible(request, "I","01","");  //대상계약선택을 했는지 여부체크 
if(redirect != null) //대상계약선택 안 했으면 
{ 
return redirect;  
} else { 
//===> 성공 
} 
==============================================================================================================

- 마루정보(주) 이력서 제출: *@*.* 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.10.29(수) 작업 ■■■■■■■■■■■■■■■■
----> 07:00 ~ 18:00   --> 메트라이프 Prj 면접(SK 최형근 차장), 점심 황광엽 부장이 쏨 

- 교보 홈 리뉴얼 Prj
- 산출물 작업 
1. 인터페이스 목록(SI-20080305-DS-DEV-07): 완료 
2. 인터페이스 명세서(SI-20080305-DS-DEV-08): 완료 
3. 프로그램 목록(SI-20080305-DS-DEV-11): 진행중 
(SI-20080305-DS-DEV-15-프로그램목록-사이버창구(통합)-ver.5.0.xls) 
4. 프로그램 사양서(SI-20080305-DS-DEV-12):  완료(JavaDoc 으로 대체) 
5. Source Code Comment (JavaDoc)(SI-20080305-VER-01): 완료 
6. Inspection 계획 및 결과서(SI-20080305-VER-01) : 결과서 작성 해야 함 
7. 요구사항 추적 매트릭스(SI-20080305-REQM-01): 안함 
==============================================================================================================

- 프로그램 목록 수정 작업: 진행중 
01. 개발 프로그램 목록(사이버창구_기업보험).xls 
==============================================================================================================

- 이용시간 에러(/KBLCM/src/kblcm/cy/util/CY_commonUtil.java 파일에 68번째 줄) 
/**<pre> * 이용시간 체크 : 현재 이용시간인지 아닌지를 체크한다. **/ 
public static boolean checkUseTime(String accessType, String serviceType) throws KBLCMSysException { 
CYADMO_errorVO errorVO = getUseTime(accessType, serviceType); 
String sTime = errorVO.getStartTime().substring(0, 2) + errorVO.getStartTime().substring(3, 5)  
+ errorVO.getStartTime().substring(6, 8); 
} 
==============================================================================================================

- 메트라이프생명 NFSS 프로젝트  
- 부문 : 계리 개발팀원  
- 기간 : 2008.11 ~ 2009.09  
SK C&C 사업관리 최형근 차장(김태욱 과장 추천) 
장소 : 선릉역 8번출구 성원빌딩(메트라이프생명 빌딩) 3층 
최대한 빨리 면접 요청하며 일과 후도 가능합니다.  
출발 전 전화연락 해주기 바랍니다. (*) 
계리[計理]: 계산하여 정리함    
==============================================================================================================

- 1. 가습기(노비타), 노트북 보안필터(3M), 체육복 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.10.30(목) 작업 ■■■■■■■■■■■■■■■■
----> 07:00 ~ 22:00  --> 점심 장재성 PM이 쏨 

- 교보 홈 리뉴얼 Prj
- 산출물 작업 
1. 인터페이스 목록(SI-20080305-DS-DEV-07): 완료 
2. 인터페이스 명세서(SI-20080305-DS-DEV-08): 완료 
3. 프로그램 목록(SI-20080305-DS-DEV-11): 완료 
(SI-20080305-DS-DEV-15-프로그램목록-사이버창구(통합)-ver.5.0.xls) 
4. 프로그램 사양서(SI-20080305-DS-DEV-12):  완료(JavaDoc 으로 대체) 
5. Source Code Comment (JavaDoc)(SI-20080305-VER-01): 완료 
6. Inspection 계획 및 결과서(SI-20080305-VER-01) : 결과서 작성 해야 함 
7. 요구사항 추적 매트릭스(SI-20080305-REQM-01): 안함 
==============================================================================================================

- 은행코드 확인 
11월 01일부터 2자리에서 3자리로 바뀜  ===> Host 통신을 함(소스코드 없음) 
/CYCIRIIS_depositorRslt_viw.jsp, /CYCIRIIS_depositorAction.java(계좌 확인)  
==============================================================================================================

- 보험대상자 명부정리 수정   
명부정리는  청구사유(1:변경, 2:추가가입)와 상관없이 HOST DB에서 주민번호, 이름으로 조회하여 데이타가 
존재하면 이미 신청 된 자로 처리함(증권번호: 0000739, 메트로은행서울지점) 
==============================================================================================================

- 인수인계(완료) 
인수자: 김지영 대리(SM) 
진태만 업무인수인계 관련.doc 
==============================================================================================================

- 레이어를 팝업으로 변경(원래부터 팝업으로 되어 있음)  
변경사항 입력: CYCIRIIS_generalContract_upd.jsp 
예금주 체크(팝업): CYCIRIIS_depositor_pop.jsp 
계좌 확인(팝업): CYCIRIIS_depositorRslt_viw.jsp 
==============================================================================================================

- 프로그램 배포 요청 
와스서버 배포 목록 
/KBLCM/src/kblcm/cy/ci/ri/is/action/CYCIRIIS_insuredPersonTotSendMainAction.java 
/KBLCM/src/kblcm/cy/ci/ri/is/action/CYCIRIIS_insuredPersonTotSendAction.java 
/KBLCM/src/kblcm/cy/ci/ri/is/action/CYCIRIIS_insuredPersonTotSendApprvAction.java 
/KBLCM/src/kblcm/cy/ci/ri/is/action/CYCIRIIS_insuredPersonTotSendDownAction.java 

/WEB-INF/jsp/cy/ci/ri/is/CYCIRIIS_insuredPerson_lst.jsp   ===> 추후 요청할 것 
/WEB-INF/jsp/cy/ci/ri/is/CYCIRIIS_insuredPersonTotSendMain.jsp 
/WEB-INF/jsp/cy/ci/ri/is/CYCIRIIS_insuredPersonTotSend_ins.jsp 
/WEB-INF/jsp/cy/ci/ri/is/CYCIRIIS_insuredPersonTotSendOK_viw.jsp 
/WEB-INF/jsp/cy/ci/ri/is/CYCIRIIS_insuredPersonTotSendApprv_viw.jsp 
/WEB-INF/jsp/cy/ci/CYCI_appIframe_wrk_noX.jsp 
==============================================================================================================

- 진동권 사장(*) -> 장재성PM 소개, 이력서 제출: *@*.* 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.10.31(금) 작업 ■■■■■■■■■■■■■■■■
----> 06:50 ~ 18:00  --> 저녁(현용), 이과장 만남(면접보러 옴),  여관(이과장(9번째): 미아삼거리역 

- 교보 홈 리뉴얼 Prj
- 산출물 작업 최종 완료(제출)
==============================================================================================================

- 퇴직보험 청구시 에러 
1. 퇴직보험 청구는 정상적으로 되고 있음 
2. 고객이 잘못하고 있거나, 고객 브라우저가 특이한거 같은데 정확히 상황을 봐야지만 해결 가능할 것으로 추정 
(고객이 실제로 접근한 화면 경로 기술, 에러가 나는 화면 캡쳐 뜨서 보내주거나 상세 설명 기술) 
3. 뭔가 특정 케이스 인거 같은데 고객지원 하는데에다 해당 고객의 PC 원격지원해서 문제발생하는 부분 레코딩 
해달라고 해서 분석하세요. (PC 사양, 브라우저명, 브라우저 버전) 
조치 사항: MS 익스플로러 7.0 설치 후 다시 처리 
==============================================================================================================

- 특수문자 체크 
/KBLCM/WebContent/WEB-INF/jsp/sv/op/SVOP_opinion_ins.jsp 
/KBLCM/WebContent/js/service/sv/op/SVOP_opinion.js 
do_insert: function() {  //고객의 소리 등록   
if (frm.qstTtl.value == "") { 
alert("필수항목입니다.\n제목을 입력하십시오."); 
frm.qstTtl.focus(); 
return; 
} else if(inputCheckSpecial(frm.qstTtl.value)){ //특수문자 체크(제목) 
alert("특수문자는 입력하실수 없습니다."); 
frm.qstTtl.focus(); 
return; 
} 
}(); 

function inputCheckSpecial(validate_data) { // 특수문자 체크 함수 
	//alert("[] [inputCheckSpecial()] [validate_data]"+ validate_data); 
	var nonchar = '~`!@#$%^&*()=+\<>?,./;:"';  //특수문자 

	var i ; 
	for ( i=0; i < validate_data.length; i++ )  { 
	if( nonchar.indexOf(validate_data.substring(i,i+1)) > 0) {  //특수문자가 존재하면 
	return true; 
	} 
	}  
	return false;   
}   
==============================================================================================================
     
- 10월 지출결의서 제출(현용) 
총금액: 179,420원 
==============================================================================================================

- 진동권 사장 면접 
(주)3rdinfo (*) ==> (삼성화재 5명이서 7개월 470) 
메트라이프생명 NFSS 프로젝트에서 전화 옴 거절  ==> 삼성화재로 가기로 확정(박경미 대리) 
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■