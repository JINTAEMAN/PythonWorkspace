

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2008.09) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2008.09.01(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 23:00 

- 교보 홈 리뉴얼 Prj
- EW10W157odCall.java, EW10EW18odCall.java SM팀과 협의해서 대부분 해결
//Property COM_I_PBHJ_NO = new Property("I", "COM_I_PBHJ_NO", 6, "C", 0);   //조회 텍스트 값(보험대상자 번호) -> 제외 
//Property COM_O_TY_AMT = new Property("O", "COM_O_TY_AMT", 12, "N", 0); //특약보험료 -> 제외 
Property COM_I_PBHJ_NM = new Property("I", "COM_I_PBHJ_NM", 100, "C", 2); //조회 텍스트 값(이름) -> 변경(10 ->100) 

- HOST 에러 코드 
EW10W156_MSGCODE : [A00001] ==> 가압류자는 신청할 수 없습니다.  
EW10EW17_MSGCODE : [A00003] ==> 기 신청건이 존재합니다 
EW10EW17_MSGCODE : [A00002] ==> 이미.. 결재신청된 가입취소건이 존재합니다. 
--------------------------------------------------------------------------------------------------------- 

- 시스템 이관 
일요일 18시 이후(추정) 
매 월요일 마다 시스템이 복원되므로.. 10시 이후부터 테스트   
==============================================================================================================

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
CYCIRIIS_insuredAltSelect_lst.jsp ======>   
   
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

 2) 결재신청[기업보험>퇴직보험>계약사항 조회/변경>무급부퇴직/가입취소] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_unpaidRetireSelectedAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_unpaidRetireSelectedAction 
CYCIRIIS_unpaidRetireSelected_lst.jsp 
  
 3) 결재신청완료[기업보험>퇴직보험>계약사항 조회/변경>무급부퇴직/가입취소] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_unpaidRetireSelectedAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_unpaidRetireSelectedAction 
CYCIRIIS_unpaidRetireDone_viw.jsp 
==============================================================================================================

- 웹회원 로그인 
http://localhost:8090/KBLCM/cm/CMLCWMListViwAction.do 

- 기업 금융거래 고객 로그인 
http://localhost:8090/KBLCM/cm/CMLCCCCustomerViwAction.do  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.09.02(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 19:30  --> 나눔 동기 만남(태용, 현용, 호수 -> 태용 부산 발령): 삼겹살, 당구(50: 2등), 맥주 

- 교보 홈 리뉴얼 Prj
- EW10W157odCall.java, EW10EW18odCall.java 저장 부분 해결 해야 됨 
- 무급부퇴직/가입취소는 피보험자를 빼는 업무라서 이미 결재신청된 가입취소건이 하나라도 존재하면 
다시 신청내용저장을 할 수 없음  
--------------------------------------------------------------------------------------------------------- 

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

 1) 변경사항 입력[기업보험>퇴직보험>계약사항 조회/변경>무급부퇴직/가입취소] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_unpaidRetireAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_unpaidRetireAction 
CYCIRIIS_unpaidRetire_lst.jsp ======> 완료 
http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_unpaidRetire.do 

 2) 결재신청[기업보험>퇴직보험>계약사항 조회/변경>무급부퇴직/가입취소] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_unpaidRetireSelectedAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_unpaidRetireSelectedAction 
CYCIRIIS_unpaidRetireSelected_lst.jsp ======> 완료 
  
 3) 결재신청완료[기업보험>퇴직보험>계약사항 조회/변경>무급부퇴직/가입취소] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_unpaidRetireSelectedAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_unpaidRetireSelectedAction 
CYCIRIIS_unpaidRetireDone_viw.jsp ======> 완료 
==============================================================================================================

- HOST 에러 
에러 내용: 
=============  EW10EW18 [ECW018OD] 출력값 확인 ============= 
EW10EW18_OUT [0]: COM_O_CR_GB  [Y] 
EW10EW18_OUT [0]: C_TG_GB  [52] 
EW10EW18_OUT [0]: C_PBHJ_NO  [null  ] 
EW10EW18_OUT [0]: C_PBHJ_NM  [     ] 
EW10EW18_OUT [0]: C_JUMIN_NO [             ]  
[errorCode : EU10EW18E41201^]# [errorMessage : EU10EW18E41201^]# [errorModule : null^]# [exception : ] 
원인: C_PBHJ_NO 값을 제대로 못 넣어줌 
조치:  
<input type="hidden" name="name<s:property value="%{#inq_stat.count-1}"/>" value="<s:property value="%{#row.name}"/>"> 
==============================================================================================================

- replace 함수  
altVO.setTJ_AMT(CMStringUtil.replace(request.getParameterValues("TJ_AMT_ALT")[i],  ",", ""));  //퇴직금추계액(변경후)  
--------------------------------------------------------------------------------------------------------- 

// replace 함수 
public static String replace(String target, String old, String newer) 
{  
	System.out.println("[/CMStringUtil.java]:[replace()]:[target]"+ target +"[old]"+ old +"[newer]"+ newer); 
				
	int i = target.indexOf(old); 
	if (i == -1) 
	{ 
	    return target; 
	} 

	StringBuffer buf = new StringBuffer(); 
	buf.append(target.substring(0, i) + newer); 

	if (i + old.length() < target.length()) 
	{ 
	    buf.append( 
	replace( target.substring(i + old.length(), target.length()), old, newer)); 
	} 

	return buf.toString(); 
} 
==============================================================================================================

- 공통달력 
공통달력 사용하려면 아래 방식으로 날짜항목 input을 작성하면 됩니다.  
<input type="text" name="xxx" class="calendar"/>  
참고 사이트 : http://10.33.165.191/KBLCM/cssGuide/etc2.html 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.09.03(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 23:00 

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

- 공인인증서 수정 
xecure가 나와야 수정할 수 있음 
==============================================================================================================

- replace 함수(날짜 치환: 2008-09-03 --> 20080903)  ===> 자바 스크립트 
var in_fdate_new = frm.in_fdate.value.split("-").join("");   //날짜 치환(replace)  
==============================================================================================================

- 보험대상자 변경 상세 결재내역[기업보험>퇴직보험>업무진행사항>진행중인 업무] ==> 테스트 불가(UI_CY_9148) 
http://127.0.0.1:8080/KBLCM/cy/CYCIRISP_insuredAltRslt_lst.do 
========================================================================================================= 

- 계약일반사항 변경 진행상황 조회[기업보험>퇴직보험>업무진행사항>진행중인 업무]  
http://127.0.0.1:8080/KBLCM/cy/CYCIRISP_generalContractRslt_viw.do 

=============  EW10EW24 [ECW024OD] 입력값 확인 ============= 
EW10EW24_HEAD : LOGIN [kyobo01] 
EW10EW24_HEAD : PASSWORD [kyobo01] 
EW10EW24_HEAD : USER_TYPE [1] 
EW10EW24_HEAD : PROC_TYPE [S] 
EW10EW24_HEAD : SECU_NUM [0001390] 
EW10EW24_HEAD : COMPANY_NAME [（주）로지시스　　　　　　　　　　　　　] 
EW10EW24_HEAD : STATUS_CODE [] 
EW10EW24_IN : COM_I_SC_DATE [1111-11-11] ==> 접수일자(필수 입력 사항) 
EW10EW24_IN : COM_I_SMSC_SEQ    [0000] ==> 사무처리 Seq(필수 입력 사항) 
>> Communication is null, CTG Communication settimg.( EU10EW24 : 100.1.131.106:2006 ) 
CICS ECI Call Result value : 0 
EW10EW24_MSGCODE : [E20001] 
DUMMY :              
==============================================================================================================

=============  EW10W156 [kblcm.hostif.od.base.Property@1d4b9ff] 입력값 확인 ============= 
EW10W156_HEAD : LOGIN [kyobo01] 
EW10W156_HEAD : PASSWORD [kyobo01] 
EW10W156_HEAD : USER_TYPE [1] 
EW10W156_HEAD : PROC_TYPE [P] 
EW10W156_HEAD : SECU_NUM [0001390] 
EW10W156_HEAD : COMPANY_NAME [] 
EW10W156_HEAD : STATUS_CODE [] 
EW10W156_IN : COM_I_DATE      [2008-09-03] 
EW10W156_IN : COM_I_TIME      [22:31:16] 
EW10W156_IN : COM_I_PBHJ_NM   [김원기] 
EW10W156_IN : COM_K_CUR_PAGE  [000001] 
EW10W156_IN : COM_O_TOT_COUNT [000001] 
EW10W156_IN : COM_O_CUR_COUNT [1] 
EW10W156_IN [0]: COM_O_CR_GB ===> [1] 
EW10W156_IN [0]: COM_O_PBHJ_NM  [김원기] 
EW10W156_IN [0]: COM_O_JUMIN_NO [7202281041917] 
EW10W156_IN [0]: COM_O_PBHJ_NO  [000028] 
EW10W156_IN [0]: COM_O_BGH_GGY  [1506992] 
EW10W156_IN [0]: COM_O_JR_AMT   [1758936] 
EW10W156_IN [0]: COM_O_JD_YMD   [2000-07-22] 
EW10W156_IN [0]: COM_O_JW_IW_GB [01] 
EW10W156_IN [0]: COM_O_TJ_AMT   [3265150] 
EW10W156_IN [0]: COM_O_GJ_YMD  [2007-12-31] 
EW10W156_IN [0]: COM_O_IS_YMD   [1994-10-28] 
EW10W156_IN [0]: COM_O_JGJS_YMD [1999-10-30] 
>> Communication is null, CTG Communication settimg.( EU10W156 : 100.1.131.106:2006 ) 
CICS ECI Call Result value : 0 
EW10W156_MSGCODE : [A00001]  ==> 가압류자는 신청할 수 없습니다.  
==============================================================================================================

- 업무 분장 회의(20:00 ~ 20:30) 
1. 개인보험쪽 지원 
2. 기업보험쪽 김지영 대리에게 인수인계  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.09.04(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00   --> 저녁(뽈살집, 맥주집:김태욱 과장 저녁먹고 안 들어 왔다고 화냄(이과장 만취)), 여관(이과장:1번째) 

- 교보 홈 리뉴얼 Prj
 - 업무 변경(기업보험 --> 개인보험) 
 - 기업보험쪽 김지영 대리에게 인수인계 완료 
 - 사이버창구 통합 TEST ==> 9월 9일(화) 

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

- TAB 변경 
function onloadPage(){ 
	changeTab("tab7",2);   //TAB 변경(-> 2) 
}  
--------------------------------------------------------------------------------------------------------- 

- 해당 URL로 이동 
<a href="javascript:goLink('/KBLCM/cy/CYCIRISP_main01.do?p_url=2');" >[진행중인 업무]</a> 

function goLink(url) {   // 해당 URL로 이동 
	top.layers.hide(window.layerId);  // 레이어 닫기(창닫기) 
	top.document.location.href = url;    //해당 URL로 이동 
} 
==============================================================================================================

- js-debugger  설치 
js-debugger 안의 install.exe 와 scd10en-shinki1234.exe 를 실행하여 설치하시면 익스플로러 내장형 Javascript  
디버거가 설치됩니다. 에러가 발생되면 정확한 오류 발생 장소를 알려줍니다.  
---------------------------------------------------------------------------------------- 
- 이클립스에서 파일 찾기 
Ctr + Shift + R: Open Source 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.09.05(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 

- 교보 홈 리뉴얼 Prj
- 변액보험조회/펀드변경[개인보험>보험조회/변경>보험내역조회] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction 
--> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction 
CYPIICVI_fund_list.jsp ======> 완료 
http://100.1.131.106/cyber/cyincm_varamt.do?q=6401836A189E007E4D4993C26094CB78F7784DD200167F 

- 적립금 조회[개인보험>보험조회/변경>보험내역조회] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java -->   
CYPIICVI_reserve_viw.jsp ======> 완료 
--> 변액보험 상세조회 (변액종신보험) CYINCM_varamt01_viw.jsp 
  
- 수익률 조회[개인보험>보험조회/변경>보험내역조회] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java -->   
CYPIICVI_bound_viw.jsp ======>     

  <definition name="CYINCM_varamtPension_upd" extends="cyber"> 
  <put name="body"   value="/jsp/kblcm/cyber/in/cm/CYINCM_varamtPension_upd.jsp" /> 
  </definition> 
==============================================================================================================

- 김용길(진호형 친구)
1. 영대식당(T)054-278-8784): 경북직업전문학교 맞은편 ==> 추석 포항계 모임 장소 소개 받음
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.09.06(토) 작업 ■■■■■■■■■■■■■■■■
---> 08:30 ~ 22:30   --> 토요근무 

- 교보 홈 리뉴얼 Prj
- 수익률 조회[개인보험>보험조회/변경>보험내역조회] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_bound_viw.jsp ======> 완료 
==============================================================================================================

- 금액 설정 
VL117UM_O_IN_AMT_SUM_NEW = CMStringUtil.replace(VL117UM_O_IN_AMT_SUM,",",""); // 투입보험료누계  
Long tempIN_AMT_SUM; 
//System.out.println("[/V7030805_OUT.java]:[setOutValue()]:[VL117UM_O_IN_AMT_SUM_NEW]"+  
VL117UM_O_IN_AMT_SUM_NEW + "[VL117UM_O_IN_AMT_SUM_NEW]"+ VL117UM_O_IN_AMT_SUM_NEW); 
// 투입보험료누계 = 투입보험료누계 - 월대체보험료(월공제액)누계  
tempIN_AMT_SUM = CMStringUtil.parseLong(VL117UM_O_IN_AMT_SUM_NEW)  
- CMStringUtil.parseLong(VL117UM_O_IN_AMT_SUM_NEW);  
String strIN_AMT_SUM = CMStringUtil.stringTomoney(""+ tempIN_AMT_SUM);  //금액으로 전환   
//System.out.println("[/V7030805_OUT.java]:[setOutValue()]:[tempIN_AMT_SUM]"+ tempIN_AMT_SUM  
+ "[VL117UM_O_IN_AMT_SUM_NEW]"+ CMStringUtil.parseLong(VL117UM_O_IN_AMT_SUM_NEW)  
+ "[VL117UM_O_IN_AMT_SUM_NEW]"+ CMStringUtil.parseLong(VL117UM_O_IN_AMT_SUM_NEW)); 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.09.07(일) 작업 ■■■■■■■■■■■■■■■■
---> 08:10 ~ 21:30   --> 일요근무 

- 교보 홈 리뉴얼 Prj
- 펀드변경[개인보험>보험조회/변경>보험내역조회] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_change_ins.jsp ======>   
--> 변액연금보험 펀드변경: CYINCM_varamtPension_upd.jsp 
(CYINCM_varamtUpd_viw.jsp) 
가입증서번호: 206115002803 

- 펀드변경 처리[개인보험>보험조회/변경>보험내역조회] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_change_completion.jsp ======>     
  
-  펀드(옵션)변경 취소[개인보험>보험조회/변경>보험내역조회] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_change_cancel.jsp ======>   
CYINCM_varamtUpd_viw.jsp(변액보험 펀드변경신청 결과를 조회) 

- 펀드(옵션)변경 취소 처리[개인보험>보험조회/변경>보험내역조회] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
-------------------------------------------------------------------- 
 - 7um에 대상건 줄때 
- 계약변경 처리 중에 있을 떄 접수번호, 접수일자, 자금이전중 
- 오늘 접수일이면 취소 할 수 있으므로 
PM650UM을 콜해서 접수번호 넣어서 보내면 취소 해줌 
접수번호를 주고 
취소는 PM650UM   
==============================================================================================================

- 테스트 서버 
http://10.33.3.19/KBLCM/cy/subMain.do 
==============================================================================================================

- 포항 동기계비 
2008년 3월 ~ 9월까지: 7만원 입금(농협 통장 6만원 찾을 것) 
동양 CMA에 13만원 입금할 것(==> 입금 완료) 
============================================================================================================== 

■■■■■■■■■■■■■■■■■■ 2008.09.08(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:40  --> 통합 테스트 시작 

- 교보 홈 리뉴얼 Prj
- 펀드변경[개인보험>보험조회/변경>보험내역조회] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_change_ins.jsp ======>    
CYINCM_varamtPension_upd.jsp(변액연금보험 펀드변경) 
가입증서번호: 206115002803 

- 펀드변경 처리완료[개인보험>보험조회/변경>보험내역조회] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_change_completion.jsp ======>     
  
-  펀드(옵션)변경 취소[개인보험>보험조회/변경>보험내역조회] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_change_cancel.jsp ======>   
CYINCM_varamtUpd_viw.jsp(변액보험 펀드변경신청 결과를 조회) 

- 펀드(옵션)변경 취소 처리[개인보험>보험조회/변경>보험내역조회] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 

new CommareaString$Spec( "PM112FS_I_PRCS_CAT1" , 1) , // 2취소(1처리, 2취소) 
new CommareaString$Spec( "PM112FS_O_RCV_NO" , 15) , // 접수번호 
==============================================================================================================

- Flash 실행속도 에러 
에러내용:    
이 무비의 스크립트로 인해 Flash Player의 실행속도가 느립니다.  
계속 실행하면 컴퓨터에서 응답하지 않을 수도 있습니다. 스크립트를 중단하시겠습니까?" 
원인: 
1. swf 파일 오류 
2. 플래쉬의 for문 오류 
3. 컴퓨터 사양 문제 
해결책:  
그래서 라이브러리에 있는 것을 하나하나 체크해서 (더블클릭하면 화면에 나타납니다.)   
그런데 오류가 있는 것을 클릭하니......플래시 프로그램이 오류나서 닫기더군요...    
그래서 라이브러리에 오류된 것을 삭제하고 새롭게 제작했습니다..   
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.09.09(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 22:30  --> 이과장 인수인계 거부(출력물 5개) 

- 교보 홈 리뉴얼 Prj
- 보험료납입 일시중지 상품선택[개인보험>보험조회/변경>보험료납입 일시중지]  
kblcm.cy.pi.ic.is.action.CYPIICIS_frontUpdAction 
CYPIICIS_front_lst.jsp ======>  
- us Host 생성 
YA401GMCall.java, YA401UM_W00_PARAM.java 

- 보험료납입 일시중지 신청[개인보험>보험조회/변경>보험료납입 일시중지]  
kblcm.cy.pi.ic.is.action.CYPIICIS_frontUpdAction 
CYPIICIS_front_reg.jsp ======>      
- us Host 생성 
YA402GMCall.java, YA402UM_W00_PARAM.java 
  
-  보험료납입 일시중지 처리완료[개인보험>보험조회/변경>보험료납입 일시중지]  
kblcm.cy.pi.ic.is.action.CYPIICIS_frontUpdAction 
CYPIICIS_front_regDone_viw.jsp ======>    
- us Host 생성 
YA403GMCall.java, YA403UM_W00_PARAM.java 

- 보험료납입 일시중지 신청 내역[개인보험>보험조회/변경>보험료납입 일시중지]  
kblcm.cy.pi.ic.is.action.CYPIICIS_frontUpdAction 
CYPIICIS_front_reg_lst.jsp ======>   
- us Host 생성 
YA404GMCall.java, YA404UM_W00_PARAM.java 
==============================================================================================================

[09/09 16:30:43] [ERROR] kblcm.cy.pi.ic.is.action.CYPIICIS_frontUpdAction - Error occured while execute action 
ibus.jcon.struct.JCNoSuchNameException: 존재하지 않는 Commarea 이름입니다.(YA401UM_O_PRTY_ID) 
at ibus.jcon.struct.CommareaStruct.get(ibus/jcon/struct/CommareaStruct) 
at kblcm.hostif.us.call.YA401GMCall.<init>(YA401GMCall.java:82) 
at kblcm.cy.pi.ic.is.action.CYPIICIS_frontUpdAction.service(CYPIICIS_frontUpdAction.java:112) 
==============================================================================================================

- 개인회원 로그인(사이버 창구) 
http://localhost:8080/KBLCM/cm/CMLCPC_DevLogin.do 
(/WEB-INF/jsp/cm/lc/pc/CMLCPC_DevLogin.jsp) 

import kblcm.common.web.login.context.PrivateLoginContext;  //개인회원 로그인(사이버창구) 
import com.opensymphony.xwork2.ActionContext; 

Map<Object, Object> Session = ActionContext.getContext().getSession();   
PrivateLoginContext sessionVO = getLoginSessions().getPrivateLoginContext();   //개인고객 로그인 세션  

String szUserId = sessionVO.getLoginId(); // 아이디  
String name = sessionVO.getName(); // 이름  
String juminNo = sessionVO.getJuminNo(); // 주민번호  
String email = sessionVO.getEmail();  //Email 
String hometel = sessionVO.getHomePhone();  //집전화  

if (!chContrNo.equals("")) { 
sessionVO.setChContrNo(chContrNo);  //계약변경접수번호 로그인 세션에 세팅 
} 
==============================================================================================================

- eclipse 에러 
경고: [SetPropertiesRule]{Server/Service/Engine/Host/Context} Setting property 'source' to 
'org.eclipse.jst.jee.server:KBLCM' did not find a matching property. 
원인: web.xml(/KBLCM/WebContent/WEB-INF) 파일이 옮겨짐 
==============================================================================================================

- 톰켓 에러(이클립스 에서) 
Timeout waiting for Tomcat v6.0 Server at localhost to start. Server did not start after 45s.  
(시작하고 나서 45 가 되도록 서버 기동이 완료되지 않으면 에러가 나면서 stop 된다) 
원인: 이클립스 사용중 튕겨버리는 현상.. (스샷있음) 
조치: Window 메뉴에 preference -> Server 에 보시면 제일 아래쪽에 Server timeout delay ==> longer 선택  
==============================================================================================================

- Commarea 값 설정 
new CommareaArray$Spec( "PJ841UM_O_LOAN_RATEC" , 1 , new CommareaStruct$Spec 
("PJ841UM_O_LOAN_RATEC" , new Commarea$Spec[] { //대출이율 
new CommareaPackDecimal$Spec( "PJ841UM_O_LOAN_RATE" , 6) , // 
})), 
----------------------------------------------------------------------------------- 

HashMap hm1 = new HashMap(); 
PJ841UM_O_LOAN_RATEC = PJ841UM_O_REPT_DATA.get("PJ841UM_O_LOAN_RATEC");//대출이율 
PJ841UM_O_LOAN_RATE = PJ841UM_O_LOAN_RATEC.get("PJ841UM_O_LOAN_RATE").getString(); 
hm.put("PJ841UM_O_LOAN_RATE",PJ841UM_O_LOAN_RATE); 
==============================================================================================================

- YA401GM.java 파일에서 아래값이 입력값을 넣으니 에러가 납니다.   
입력값 확인 
getYA401UM_I_INQ_GUBUN( 조회구분 ) : 1 
getYA401UM_I_PRTY_REG_NO( 주민번호 ) : * 
getYA401UM_I_INAG_INAG_NO( 증권번호 ) :  
getYA401UM_I_PROC_GUBUN( 업무구분 ) : 1 
getYA401UM_I_SUB_BRNC_NO( 처리기관 ) : INTERNET 
ibus.jcon.cics.CICSException: ECI_ERR_TRANSACTION_ABEND(-7) 
at ibus.jcon.cics.CICSCommunication.invoke(ibus/jcon/cics/CICSCommunication) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.09.10(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:50 ~ 23:00 

- 교보 홈 리뉴얼 Prj
 - 펀드변경[개인보험>보험조회/변경>보험내역조회] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_change_ins.jsp ======>    
CYINCM_varamtPension_upd.jsp(변액연금보험 펀드변경) 

- 펀드변경 처리완료[개인보험>보험조회/변경>보험내역조회] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_change_completion.jsp ======>     
CYPIICVI_varamtDAO.java    

private CYPIICVI_varamtServiceImpl CYPIICVI_varamtServiceBean  
   = (CYPIICVI_varamtServiceImpl) ContextLoader.getCurrentWebApplicationContext().getBean("CYPIICVI_varamtServiceBean"); 

cypiicvi_varamtVO = CYPIICVI_varamtServiceBean.setVaramtFund(cypiicvi_varamtVO);   // 펀드 수정 처리  
---------------------------------------------------------------------------------------------------------- 

--  펀드변경 한건 조회 
SELECT * FROM TB_CYCML031;    --//CYQ02103 
--  펀드변경  조회 
SELECT * FROM TB_CYCML033;    --//CYQ02105  
--  계약변경 취소 내역 기록 
SELECT * FROM TB_CYCML030;    --//CYQ09910  
--------------------------------------------------------------------- 

<!-- 펀드변경 한 건 저장(DB 저장)   --> 
<query id="CYQ02103" type="pstmt" class="kblcm.cy.pi.ic.vi.dao.dao.CYPIICVI_varamtDAO"><![CDATA[ 
INSERT INTO  
   TB_CYCML031 (   
CNNCT_DM , /* 접속 일시 */ 
POLCY_NO , /* 증권 번호 */ 
PROC_NO , /* 처리 번호  */ 
NM , /* 이름  */ 
RESD_NO , /* 주민등록 번호_5  -----------> */ 
AUTO_OPT, /* 오토리발란싱 옵션  */ 
FUND_INPUT_RATE1, /* 펀드 투입 이율 1  */ 
FUND_INPUT_RATE2, /* 펀드 투입 이율 2  */ 
FUND_INPUT_RATE3, /* 펀드 투입 이율 3  */ 
FUND_INPUT_RATE4, /* 펀드 투입 이율 4 _10  ----------------------------> */ 
FUND_INPUT_RATE5, /* 펀드 투입 이율 5  */ 
FUND_INPUT_RATE6, /* 펀드 투입 이율 6  */ 
FUND_INPUT_RATE7, /* 펀드 투입 이율 7  */ 
RSV_AMT, /* 적립 금액  */ 
PROC_GB, /* 처리 구분_15   ----------->  */ 
PROC_RSLT, /* 처리 결과  */ 
PROD_GB, /* 상품 구분  */ 
CNNCT_TYP, /* 접속 유형  */ 
CNNCT_IP, /* 접속 IP  */ 
SL_CD, /* 소분류 코드 _20  ----------------------------> */ 
AVG_SPLT_INV_OPT, /* 평균 분할 투자 옵션  */ 
AVG_SPLT_INV_TRM /* 평균 분할 투자 기간  */ 
VALUES (  
?, ?, ?, ?, ?,  
?, ?, ?, ?, ?, 
?, ?, ?, ?, ?, 
?, ?, ?, ?, ?, 
?, ? 
 )    
 ]]></query> 
==============================================================================================================

- DB2 연결 
IP: 10.33.160.178 데이터베이스명: DB2ADMIN( 이전: KYOBOWWW) 
ID/PWD: inst01/inst01www CATALOG TCPIP NODE: renewdev 
REMOTE: 10.33.160.178 SERVER PORT: 50000 
REMOTE_INSTANCE: inst01 OSTYPE AIX;   
CATALOG DATABASE KYOBOWWW AS WWW 
  AT NODE: renewde AUTHENTICATION: SERVER; 
==============================================================================================================

- DB 에러 
[jcc][10145][10844][3.51.90] 유효하지 않은 매개변수 1: 매개변수 인덱스가 범위를 벗어납니다.  
ERRORCODE=-4461, SQLSTATE=42815 
[09/10 19:49:28] [ERROR] kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction - Error occured while execute action 
[errorCode : CYM03902^]# [errorMessage : CYM03902^]# [errorModule : null^]# [exception : com.ibm.db2.jcc.a.bn:  
원인: 테이블 저장시 칼럼수가 일치 하지 않음 
==============================================================================================================

-  펀드(옵션)변경 취소[개인보험>보험조회/변경>보험내역조회] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_change_cancel.jsp ======>   
CYINCM_varamtUpd_viw.jsp(변액보험 펀드변경신청 결과를 조회) 

- 펀드(옵션)변경 취소 처리[개인보험>보험조회/변경>보험내역조회] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 

new CommareaString$Spec( "PM112FS_I_PRCS_CAT1" , 1) , // 2취소(1처리, 2취소) 
new CommareaString$Spec( "PM112FS_O_RCV_NO" , 15) , // 접수번호 
==============================================================================================================

1. 대상계약선택[기업보험>퇴직보험]   
URL: http://127.0.0.1:8080/KBLCM/cy/CYCIRITC_selTrgCon.do 
액션명: kblcm.cy.ci.ri.tc.action.CYCIRITC_selTrgConAction.java 
INPUT:  
=============  EW00EW76 [ECW076OD] 입력값 확인 ============= 
EW00EW76_IN : EW76_LOGIN_GB [1]  --> 로그인 구분 
EW00EW76_IN : EW76_JU_NO [720625-1703411] --> 주민번호 
--------------------------------------------------------------------------------------- 

2) 보험대상자 조회[기업보험>퇴직보험>계약사항 조회/변경>보험대상자]  
URL: http://127.0.0.1:8080/KBLCM/cy/CYCIRIIS_insuredPerson_lst.do 
액션명: kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonAction.java 
INPUT:  
=============  EW00EW06 [ECW006OD] 입력값 확인 ============= 
EW00EW06_IN : COM_I_SEL [9]   --> 조회 콤보값(9:전체, 재직자, 퇴직자) 
EW00EW06_IN : COM_I_PBHJ []   --> 조회 콤보값(주민등록번호) 
EW00EW06_IN : COM_I_NAME []   --> 조회 콤보값(이름) 
EW00EW06_IN : COM_K_CUR_PAGE [000001]   --> 현재 페이지  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.09.11(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 21:40  --> 통합 테스트(전체), 맥주, 노래방(배과장, 이과장) 

- 교보 홈 리뉴얼 Prj
 - 펀드변경[개인보험>보험조회/변경>보험내역조회] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_change_ins.jsp ======>    
  
- 펀드변경 처리완료[개인보험>보험조회/변경>보험내역조회] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_change_completion.jsp ======>   
==============================================================================================================

혹시 예금주 체크로 CYCIRIIS_depositor_pop 을 호출하시는 분이 있으시면 참고 바랍니다.   
* get 방식 전달시 한글(예금주명)이 깨지는 관계로  
CYCIRIIS_depositor_pop 호출시 아래와 같이 호출하여야 정상적으로 동작합니다. 
   
1. 호출 스크립트 예제 
/* =================================================================== 
Function : OwnerCheck() 
Return : 
Usage : 은행 계좌 체크 
=================================================================== */ 
function OwnerCheck() 
{ 
winobj = window.open("", "remote", "width=500,height=303, scrollbars=no"); 
document.depositorFrm.target = "remote"; 
document.depositorFrm.action = "/KBLCM/cy/cyciriisDepositorCheck.do"; 
document.depositorFrm.submit(); 
} 
==============================================================================================================

- V2000801odCall.java 파일에서 
V2000801 [] 입력값 확인   ============= 
V2000801_IN : MSG_CODE [0000] 
V2000801_IN : NAME8 [박 순] 
V2000801_IN : JUMIN [*] 
>> Communication is null, CTG Communication settimg.( V7000801 : 100.1.131.106:2006 ) 
CICS ECI Call Result value : 0 
[09/11 09:55:05] [ERROR] kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction - Error occured while execute action 
[errorCode : NICE]# [errorMessage : MOD_CYNICE  ]# [errorModule : MOD_CY  ]# [exception : ] 
==============================================================================================================

- 106번 서버에서 (주민번호: *) 
사이버창구 --> 보험 -> 등록/계약변경 -> 변액보험조회/펀드변경 
클릭을 하면 좀 전과 같은 에러가 납니다. 
==============================================================================================================

- 펀드(옵션)변경 취소 처리 
PM112UMCall.java 에서... 
=== PM112UM 입력값 확인 ============================== 
PM112FS_I_PRCS_CAT1( 구분 ) : 2 
PM112FS_I_PSN_GRP_CAT( 개인단체 ) :  
PM112FS_I_RCV_EMPL_NO( 사번 ) : 00000009 
PM112FS_O_RCV_NO( 접수번호 ) : 2008091110010 
PM112UM MSG_CODE : D0100090 
MESSAGE : 조회 조건에 만족하는 데이터가 없습니다. 
접수취소가 정상적으로 이루어지지 않았습니다.  
[09/11 20:43:18] [ERROR] kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction - Error occured while execute action 
[errorCode : D0100090^]# [errorMessage : 조회 조건에 만족하는 데이터가 없습니다. 
[09/11 14:56:53] [ERROR] kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction - Error occured while execute action 
]# [errorModule : MOD_CY^]# [exception : ] 
at kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.service(CYPIICVI_varamtAction.java:777) 
원인: PM650FS_I_MODF_MOD_SEQNO;  // 변경일련번호_5 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.09.12(금) 작업 ■■■■■■■■■■■■■■■■
---> 09:00 ~ 05:00   --> 철야 

- 교보 홈 리뉴얼 Prj
- 펀드변경 수정, 펀드(옵션)변경 취소 처리 Host 테스트(담당 SM: 홍성진 과장) 

 - 펀드변경[개인보험>보험조회/변경>보험내역조회] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_change_ins.jsp ======> 처리완료 
  
- 펀드변경 처리완료[개인보험>보험조회/변경>보험내역조회] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_change_completion.jsp ======>  처리완료 
------------------------------------------------------------------------------------------------------------- 
  
-  펀드(옵션)변경 취소[개인보험>보험조회/변경>보험내역조회] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_change_cancel.jsp ======>   
CYINCM_varamtUpd_viw.jsp(변액보험 펀드변경신청 결과를 조회) 

- 펀드(옵션)변경 취소 처리[개인보험>보험조회/변경>보험내역조회] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java  
PM650UMCall.java, PM650FS_W00_PARAM.java  ==> 펀드변경취소 
(PM600UMCall.java, PM600UM_W00_PARAM.java  ==> 펀드변경 처리)   
==============================================================================================================

- 날짜 전환  
cypiicvi_varamtVO.setLst_Mo(CMStringUtil.stringToDate6((String)hm.get("VL117UM_S01_O_LST_MO"), ".")); //최종납입월(6자리) 
sh.put("sinchung_date2", CY_commonUtil.stringToDateForm(COM_O_GJ_DATE, "."));  //날짜전환(.으로 전환) 
String insuPolicyNew = CY_commonUtil.getNumberStar(EW76_JG_NO, 7, 4); //증권번호(* 앞에서 5자리부터 3자리를 * 처리) 
- trim()함수 
COM_O_CUR_COUNT = COM_O_CUR_COUNT.trim(); 
==============================================================================================================

- DB 저장 에러   
DB2 SQL Error: SQLCODE=-204, SQLSTATE=42704, SQLERRMC=KYOBOWWW.TB_CYCML033, DRIVER=3.51.90 
[09/13 03:23:17] [ERROR] kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction - Error occured while execute action 
[errorCode : CYM03902^]# [errorMessage : CYM03902^]# [errorModule : null^]# [exception :  
com.ibm.db2.jcc.a.bn: DB2 SQL Error: SQLCODE=-204, SQLSTATE=42704,  
SQLERRMC=KYOBOWWW.TB_CYCML033, DRIVER=3.51.90] 
at kblcm.cy.pi.ic.vi.dao.CYPIICVI_varamtDAO.insertVaramtRate(CYPIICVI_varamtDAO.java:156) 
세팅값:  
[/CYPIICVI_varamtDAO.java] [insertVaramtRate()]=> [getAccessDate]20080913032316 
[getInsuPolicyNum]208017022729[getProcNo]20080913032316 
[FundType]00[FundCode]E001[FundRate]0  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.09.15(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 20:00   --> 추석 연휴 

- 교보 홈 리뉴얼 Prj
- SVN 에러 
현상:  
 Attempted to lock an already-locked dir 
org.tigris.subversion.javahl.ClientException: Attempted to lock an already-locked dir 
svn: Working copy 'C:\DevEnv\Projects\KBLCM\src\kblcm\cy\pi\ic\vi' locked 
원인: 존재하는 폴더명으로 다시 폴더를 만들어서 나는 현상으로 추정됨(기존 폴더 복사 금지)  
조치: Team -> Cleanup  
작업 카피를 뒤져서 남은 로그를 실행하고 프로세스의 잠금을 없앱니다.  
---------------------------------------------------------------------------------------------------------- 

- SVN에서 원하는 폴더 import 
SVN Repository Eploring -> 폴더(마우스 오른쪽 클릭) -> import -> import Folder  
URL of repository: svn://10.33.165.172/kyobo/KBLCM/src/kblcm/cy/pi/ic/vi/action  ==> SVN에 폴더 
brose: C:\DevEnv\Projects\KBLCM\src\kblcm\cy\pi\ic\vi\action 선택 
OK 클릭 
==============================================================================================================

- 기업 금융거래 고객 로그인 
http://localhost:8090/KBLCM/cm/CMLCCCCustomerViwAction.do  
(/jsp/cm/lc/cc/CMLCCC_customer_viw.jsp)  
 - 개인 금융거래 고객 로그인 
http://localhost:8090/KBLCM/cm/CMLCPCCustomerViwAction.do  
(/jsp/cm/lc/pc/CMLCPC_customer_viw.jsp)  
 - 변액보험조회/펀드변경 
http://localhost:8080/KBLCM/cy/CYPIICVI_varamt.do 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.09.16(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 22:00  --> 맥주(배과장(우리집에서 잠), 이과장(밤에 내한테 전화함: 배과장과 있다고 하니 끊음)) 

- 교보 홈 리뉴얼 Prj
-  펀드(옵션)변경 취소[개인보험>보험조회/변경>보험내역조회] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_change_cancel.jsp ======>   
CYINCM_varamtUpd_viw.jsp(변액보험 펀드변경신청 결과를 조회) 

- 펀드(옵션)변경 취소 처리[개인보험>보험조회/변경>보험내역조회] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java  
PM650UMCall.java, PM650FS_W00_PARAM.java  ==> 펀드변경취소 
(PM600UMCall.java, PM600UM_W00_PARAM.java  ==> 펀드변경 처리)   
김진중 대리(02-721-6225, 내선: 8-100-6225) 
==============================================================================================================

- Publishing to Tomcat v6.0 Server at localhost 
1. refresh 먼저하고 Publishing 할 것 
2. Tomcat v6.0 Server(마우스 오른쪽 클릭) -> Clean 할 것 
3. Tomcat v6.0 Server(더블 클릭) -> Auto Publishing 
 user default publishing settings 체크 -> Server timeout delay: normal 선택 
==============================================================================================================

- RSS 
바로 한 웹 사이트에 담긴 정보를 여러 사람에게 배포하는 메커니즘인 RSS (Rich Site Summary,  
RDF Site Summary 또는 Really Simple Syndication)  
==============================================================================================================

- 날짜 전환  
// 최종납입월(200309  ==> 2003.09) 
cypiicvi_varamtVO.setLst_Mo(CMStringUtil.stringToDate6((String)hm.get("VL117UM_S01_O_LST_MO"), ".")); 
//접수일(20030903  ==> 2003-09-09) 
call.setPM650FS_I_RCV_DT(CY_commonUtil.stringToDateForm8(chContrNo_DT, "-"));    
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.09.17(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 23:00 

- 교보 홈 리뉴얼 Prj
-  펀드(옵션)변경 취소[개인보험>보험조회/변경>보험내역조회] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java 
CYPIICVI_change_cancel.jsp ======>   
CYINCM_varamtUpd_viw.jsp(변액보험 펀드변경신청 결과를 조회) 

- 펀드(옵션)변경 취소 처리[개인보험>보험조회/변경>보험내역조회] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java  
PM650UMCall.java, PM650FS_W00_PARAM.java  ==> 펀드변경취소 
(PM600UMCall.java, PM600UM_W00_PARAM.java  ==> 펀드변경 처리)   
김진중 대리(02-721-6225, 내선: 8-100-6225) 
==============================================================================================================

if (!pm112um.getMSG_CODE().equals("Z01030I0")) { 
System.out.println("[/CYPIICVI_varamtServiceImpl.java]: 펀드변경 변경 접수 오류 :" + hostMsg);  
throw new KBLCMSysException("CYM03904");   //에러 메세지 보내기 
throw new KBLCMSysException(hostMessage);  //HOST 에서 에러가 발생 
} 
==============================================================================================================

- Tab에 건수 보이기 
<ul class="lst_tab1" style="margin-top:20px;"> 
	<li tabGroup="tab1" tabSeq="1" contentType="singleIframe" contentId="content1" contentSrc="/KBLCM/cy/
	CYCIRISP_notProcess.do" activeTab="true" class="lst_tab1_active" style="width:160px"> 
	<div id="tab1_subtitle_on"><span>처리중인 업무</span></div> 
	</li> 
	<li tabGroup="tab1" tabSeq="1" contentType="singleIframe" contentId="content1" contentSrc="/KBLCM/cy/
	CYCIRISP_notProcess.do" activeTab="false" style="width:160px"> 
	<div id="tab1_subtitle_off"><span>처리중인 업무</span></div> 
	</li> 
	<li tabGroup="tab1" tabSeq="2" contentType="singleIframe" contentId="content1" contentSrc="/KBLCM/cy/
	CYCIRISP_businessProcess.do" activeTab="true" class="lst_tab1_active" style="width:160px"> 
	<div id="tab2_subtitle_on"><span>진행중인 업무</span></div> 
	</li> 
	<li tabGroup="tab1" tabSeq="2" contentType="singleIframe" contentId="content1" contentSrc="/KBLCM/cy/
	CYCIRISP_businessProcess.do" activeTab="false" style="width:160px"> 
	<div id="tab2_subtitle_off"><span>진행중인 업무</span></div>  
	</li> 
</ul> 

<script language="javascript"> 
	/ /Tab에 건수 보이기 
	parent.document.getElementById('tab1_subtitle_on').innerHTML = "<span>처리중인 업무(<s:property 
	value="resultMap.recv_data.recv_data.size"/>건)</span>"; 
	//parent.document.getElementById('tab1_subtitle_off').innerHTML = "<span>처리중인 업무(<s:property 
	value="resultMap.recv_data.recv_data.size"/>건)</span>";  
</script> 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.09.18(목) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 23:00  --> 시스템 성능 테스트(19 ~ 21시), 제일은행 e-클릭 통장 발급 

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

- 패킷정의서-추개액일괄변경.xls 
추계액 일괄변경 파일전송(EU00W180_PARAM.java), 추계액 일괄변경 누락자 조회(EU00W181_PARAM.java),  
추계액 일괄변경 결재신청(EU00W182_PARAM.java), 추계액 일괄변경 명단다운로드(EU00W183_PARAM.java)  

 - 퇴직보험 일괄청구(보험금청구) 
http://127.0.0.1:8080/KBLCM/cy/cyciriisInsuReqMain.do 
==============================================================================================================

//우편번호 조회 VO  
CYCIRISP_returnAddrService returnAddr = (CYCIRISP_returnAddrService)ContextLoader.
getCurrentWebApplicationContext().getBean("CYCIRISP_returnAddrServiceBean"); 
String addr = returnAddr.returnAddr(contractVO.getCOM_O_POST_NO());   //우편번호에서 찾은 주소  
System.out.println("[/CYCIRIIS_generalContractAction.java]:[service()]:[getCOM_O_POST_NO()]"+ contractVO.getCOM_O_POST_NO() +"[addr]"+ addr); 

//resultMap 
resultMap.put("recv_data", contractVO); 
resultMap.put("POST_ADDR", addr); //주소 
resultMap.put("POST_NO", CMStringUtil.stringToDate6(contractVO.getCOM_O_POST_NO(), "-"));  //우편번호 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.09.19(금) 작업 ■■■■■■■■■■■■■■■■ \
---> 06:50 ~ 23:00 

- 교보 홈 리뉴얼 Prj
- 보험대상자  명부 정리 Host 테스트(담당 SM: 이세호 과장)
1-1) 엑셀파일 일괄 전송[기업보험>퇴직보험>계약사항 조회/변경>보험대상자>보험대상자  명부 정리]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSend_ins.jsp  ======>   

2) 전송결과 확인/수정[기업보험>퇴직보험>계약사항 조회/변경>보험대상자>보험대상자  명부 정리]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSendOK_viw.jsp  ======> 

3) 결재신청[기업보험>퇴직보험>계약사항 조회/변경>보험대상자>보험대상자  명부 정리] 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotalSendApprvAction 
CYCIRIIS_insuredPersonTotalSendApproval_view.jsp  ======> 

- 패킷정의서-추개액일괄변경.xls 
추계액 일괄변경 파일전송(EU00W180_PARAM.java), 추계액 일괄변경 누락자 조회(EU00W181_PARAM.java),  
추계액 일괄변경 결재신청(EU00W182_PARAM.java), 추계액 일괄변경 명단다운로드(EU00W183_PARAM.java) 

 - 퇴직보험 일괄청구(보험금청구) 
http://127.0.0.1:8080/KBLCM/cy/cyciriisInsuReqMain.do  
CYCIRIIS_bundleSendAction.java(퇴직금 일괄청구) 
==============================================================================================================

- 필드 제외 
1. 추계액변경 이면(아래 필드 제외) 
COM-IO-IS-YMD(입사일자) 
COM-IO-JGJS-YMD(중간정산일자) 
COM-IO-BGH-GGY(기준급여)  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.09.20(토) 작업 ■■■■■■■■■■■■■■■■
---> 08:30 ~ 23:00   --> 토요 근무 

- 교보 홈 리뉴얼 Prj
- 보험대상자  명부 정리 Host 테스트  
1-1) 엑셀파일 일괄 전송[기업보험>퇴직보험>계약사항 조회/변경>보험대상자>보험대상자  명부 정리]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSend_ins.jsp  ======>   

2) 전송결과 확인/수정[기업보험>퇴직보험>계약사항 조회/변경>보험대상자>보험대상자  명부 정리]  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction 
CYCIRIIS_insuredPersonTotalSendOK_viw.jsp  ======> 

3) 결재신청[기업보험>퇴직보험>계약사항 조회/변경>보험대상자>보험대상자  명부 정리] 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotalSendApprvAction 
CYCIRIIS_insuredPersonTotalSendApproval_view.jsp  ======> 
  
- 패킷정의서-추개액일괄변경.xls 
추계액 일괄변경 파일전송(EU00W180_PARAM.java), 추계액 일괄변경 누락자 조회(EU00W181_PARAM.java),  
추계액 일괄변경 결재신청(EU00W182_PARAM.java), 추계액 일괄변경 명단다운로드(EU00W183_PARAM.java) 

 - 퇴직보험 일괄청구(보험금청구) 
http://127.0.0.1:8080/KBLCM/cy/cyciriisInsuReqMain.do  
CYCIRIIS_bundleSendAction.java(퇴직금 일괄청구) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.09.21(일) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 23:00  --> 일요 근무 

- 교보 홈 리뉴얼 Prj
- 보험구분(insuDitc)으로 분기 
cyinam_varamtVO.setInsuDitc(para.getParameter("p_insuDitc")); // 보험구분 
---------------------------------------------------------------------------------------------------------- 

1. 변액보험조회 JSP  
변액보험조회 CYINCM_varamt_lst  

2. 변액보험변경 JSP  
변액보험변경1 CYINCM_varamtPension1_upd  
변액보험변경2 CYINCM_varamtPension2_upd  

3. 변액보험상세조회 JSP  
변액보험변경결과 YINCM_varamtUpd_viw  

변액종신보험일반조회 CYINCM_varamt01_viw  
변액연금보험일반조회 CYINCM_varamt02_viw  
변액베스트플랜일반조회 CYINCM_varamt03_viw  
변액VUL가산형일반조회 CYINCM_varamt04_viw  
변액VUL보장형일반조회 CYINCM_varamt05_viw 
  
- 펀드 변경 분기 
- 01, 02, 03 05, 06, 07(CYINCM_varamtPension1_upd.jsp) 
변경사항 입력 (변액종신/베스트플랜변액종신/VUL보장형) 
- 기타(CYINCM_varamtPension2_upd.jsp)  ===> 정상  
보험구분(01:변액종신, 02:변액연금, 03:베스트플랜종신, 04:VUL가산, 05:VUL보장) 

 - 변드 변경시(CYPIICVI_varamtAction.java 소스에서) 
//                if (insuDitc.equals("01")  insuDitc.equals("03")  insuDitc.equals("05")  insuDitc.equals("07")) 
//                    forwardPage = cmd + "1"; 
//                else 
//                    forwardPage = cmd + "2";  
cmdTag = (cmdTag.equals("06") ? "02" : cmdTag); // 변액연금II (06)를 위한 임시 조치  
cmdTag = (cmdTag.equals("07") ? "03" : cmdTag); // 전환VUL (07)을 위한 임시 조치 2006-03-03   
  
  
변액종신보험일반조회 CYINCM_varamtDet01_viw 
변액연금보험일반조회 CYINCM_varamtDet02_viw 
변액베스트플랜일반조회 CYINCM_varamtDet03_viw 
변액VUL가산형일반조회 CYINCM_varamtDet04_viw 
변액VUL보장형일반조회 CYINCM_varamtDet05_viw 
   
○변액종신(CYINCM_varamtDet01_viw) 
* * * * 
○변액연금(CYINCM_varamtDet02_viw) 
* * * * 
○베스트플랜종신(CYINCM_varamtDet03_viw)  --> ok 
* * * * 
○VUL가산(CYINCM_varamtDet04_viw)  --> ok 
* * * *   
○VUL보장 (CYINCM_varamtDet05_viw) 
* * * *   
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.09.22(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:50 ~ 01:00   --> 택시탐(낙성대역) 

- 교보 홈 리뉴얼 Prj
- 보험구분(insuDitc)으로 분기 파일 생성(5개), 펀드 변경 수정 
cyinam_varamtVO.setInsuDitc(para.getParameter("p_insuDitc")); // 보험구분 
==============================================================================================================

- 임정훈 대리(펀드 조회 담당) 
내선: 8-100-6228 회사전화: 02-721-6228 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.09.23(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:50 ~ 22:30  --> 전어(배과장, 이과장)  

- 교보 홈 리뉴얼 Prj
- 결함 조치 사항 처리(기업보험) 
1. 오른쪽 퀵메뉴 기업보험상담 전화번호 변경 요청 
퇴직보험: 365-1803/1804/1811 
퇴직연금: 393-9202/3 
기업복지: 365-1825/1684 
--------------------------------------------------------- 
2. 이미지 변경 요청 
KBLCM/images/common/btn_re_transmission.gif(재전송)  
--> /btn_add_transmission(추가대상자) 
==============================================================================================================

- 우편번호 찾기 
http://10.33.3.19/KBLCM/cm/CMLCWJInformationInsViwAction.do 
<img src="/KBLCM/images/common/btn_zipcodeSearch2.gif" onclick="zipPop('homeZipNo1', 'homeZipNo2', 
'homeAddr1', 'homeAddr2',  'CYCIRIIS_generalContract_viw');"/> <!-- 우편번호 찾기 pop up --><br/>   
==============================================================================================================

- 퇴직보험 가입확인서 발급 인쇄(/jsp/cy/icert/beans/genBeans.jsp) 
public class genBeans{ 
  private String      certutilsPath   = "/KBLCM/cdoc/inicert/js/certutils.js"; 
  //private String      configFile      = "/was_svr/iniCert/properties/cabcrypt.properties";  //실 서버 경로 
  private String      configFile      = "C:/DevEnv/Tools/inicert/properties/cabcrypt.properties";  //로컬 서버 경로 
} 
==============================================================================================================

- 로그인후 증권번호 선택후 세션처리(세션 설정): COCYRIIS_session.java --> CYCIRISP_main01Action.java 
sessionVO.setRiUserType(szUserType); //사용자구분(실무자,관리자) 
sessionVO.setUser_auth(uType);  //사용자 권한(1: 실무자, 2: 관리자, 3: 조회 권한자) 

 - 퇴직보험 권한값 불러오는 getUser_auth()가 기업복지와 로그인이 통합되면서 getRiUserType() 로 변경 
--------------------------------------------------------------------------------------------------------- 

<!-- 대상계약선택 session처리 -->  
<action path="/company/cocyriis_session"  type="com.kyobo.kblcm.company.cy.ri.is.action.COCYRIIS_sessionAction"  
validate="false">   
<forward name="session"  path="COCYRIYU_notProcess_lst" />  
<forward name="contract" path="COCYRIIS_contract" />   <!-- 조회 권한자인 경우  -->   
<forward name="userInfo" path="COCYRIIS_userInfo_viw" />  <!-- 대상계약선택후 사용자조회 추가 2006-07-18 -->  
</action> 

<!--// 업무진행사항 메인[기업보험>퇴직보험>업무진행사항] //--> 
<definition name="cy.CYCIRISP_main01" extends="cy.base_ci"> 
<put-attribute name="ScriptPath" value="/js/service/cy/ci"></put-attribute> 
<put-attribute name="ScriptName" value="CYCIRISP_main"></put-attribute> 
<put-attribute name="titleImage" type="string" value="/KBLCM/images/service/cy/title_business_progress01.gif"></put-attribute> 
<put-attribute name="content" value="/WEB-INF/jsp/cy/ci/ri/sp/CYCIRISP_main01.jsp"></put-attribute>  
</definition> 

<definition name="COCYRIYU_notProcess_lst" extends="company-cocyritc"> 
<put name="body" value="/jsp/kblcm/company/cy/ri/yu/COCYRIYU_notProcess_lst.jsp" /> 
</definition> 

<!-- 조회 권한자인 경우  -->   
<definition name="COCYRIIS_contract" extends="company-cocyritc"> 
<put name="body" value="/jsp/kblcm/company/cy/ri/is/COCYRIIS_generalContract_viw.jsp" /> 
</definition> 

<!-- 대상계약선택후 사용자조회 추가 2006-07-18 -->  
<definition name="COCYRIIS_userInfo_viw" extends="company-cocyritc"> 
<put name="body" value="/jsp/kblcm/company/cy/ri/is/COCYRIIS_userInfo_viw.jsp" /> 
</definition> 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.09.24(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:30   --> 이은화 과장 현업 정재상 대리(기업보험)와 싸움 

- 교보 홈 리뉴얼 Prj
- 결함 조치 사항 처리(기업보험)  
   
 2) 결재신청[기업보험>퇴직보험>계약사항 조회/변경>보험대상자 정보변경] 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_insuredAltSelectAction 
--> kkblcm.cy.ci.ri.is.action.CYCIRIIS_insuredAltSelectAction 
CYCIRIIS_insuredAltSelect_lst.jsp ======>    
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.09.25(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 04:00   --> 철야(배과장: 통닭, 찜질방) 

- 교보 홈 리뉴얼 Prj
- 결함 조치 사항 처리(기업보험)  
   
1. 업무진행사항[기업보험>퇴직보험] 
 1) 처리중인 업무 
http://127.0.0.1:8080/KBLCM/cy/CYCIRISP_notProcess.action    
com.kyobo.kblcm.company.cy.ri.yu.action.COCYRIYU_notProcessAction  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_notProcessAction 
CYCIRISP_main01.jsp, CYCIRISP_notProcess_lst.jsp  

- 에러내용 Error : java.lang.ArrayIndexOutOfBoundsException: 4112 
원인: Array에 40개 이상을 넣음 
----------------------------------------------------------------------------------------------------- 

if (urlcode == "31"  urlcode ==  "  ") { //보험금청구 진행상황 조회(퇴직일시금) 
//2007.05.10 청구프로세스 변경중 대상자 저장만 할경우 청구 사유에 관한 값이 없으므로 추가  
url_link = "/cy/cyciriisInsuReqMain.do?from=processSt";  
} 
else if (urlcode == "32") {  // 보험금청구 진행상황 조회(중간정산)  
url_link = "/cy/CYCIRISP_insuReqRslt_lst.do"; 
} 
else if (urlcode == "33") { // 전출신청 진행상황 조회(전출청구) 
url_link = "/cy/CYCIRISP_transferReqApproval_lst.do"; 
} 
else if (urlcode == "21") {  // 계약일반사항 변경 진행상황 조회(연금청구)  
url_link = "/cy/CYCIRISP_generalContractRslt_viw.do"; 
}  
else if (urlcode == "41") {  // 계약일반사항 변경 진행상황 조회(단체일반정정)  
url_link = "/cy/CYCIRISP_generalContract.do"; 
}  
else if (urlcode == "51"  urlcode == "52") {  // 무급부퇴직 진행상황 조회(무급부퇴직) 
url_link = "/cy/CYCIRISP_unpaidRetireSelected.do";  
} 
else if (urlcode == "53"  urlcode == "54") { // 보험대상자 변경 상세 결재내역(퇴직금추계액)  
url_link = "/cy/CYCIRISP_insuredAltSelect.do";  
}  
==============================================================================================================

1. 업무진행사항[기업보험>퇴직보험] 
 1) 진행중인 업무 
http://127.0.0.1:8080/KBLCM/cy/CYCIRISP_businessProcessAction.action 
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_businessProcessAction  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_businessProcessAction 
CYCIRISP_businessProcess_lst.jsp 
if (code == "21") { // 계약일반사항 변경 진행상황 조회(연금청구) 
url_link = "/cy/CYCIRISP_generalContractRslt_viw.do"; 
} else if (code == "31") { // 보험금청구 진행상황 조회(퇴직일시금)  
url_link = "/cy/CYCIRISP_insuReqRslt_lst.do"; 
} else if (code == "32") { // 보험금청구 진행상황 조회(중간정산) 
url_link = "/cy/CYCIRISP_insuReqRslt_lst.do"; 
} else if (code == "33") { // 전출신청 진행상황 조회(전출청구)  
url_link = "/cy/CYCIRISP_transferReqApproval_lst.do"; 
} else if (code == "41") { // 계약일반사항 변경 진행상황 조회(단체일반정정) 
url_link = "/cy/CYCIRISP_generalContractRslt_viw.do"; 
} else if (code == "51") { // 무급부퇴직 진행상황 조회(무급부퇴직) 
url_link = "/cy/CYCIRISP_unpaidRetireRslt.do"; 
} else if (code == "52") { // 가입취소 진행상황 조회(가입취소) 
url_link = "/cy/CYCIRISP_joinCancelRslt.do"; 
} else if (code == "53") { // 보험대상자 변경 상세 결재내역(피보험자변경) ===> 추가 
url_link = "/cy/CYCIRISP_insuredAltRslt_lst.do"; 
} else if (code == "54") { // 보험대상자 변경 상세 결재내역(퇴직금추계액) ===> 추가 
url_link = "/cy/CYCIRISP_insuredAltRslt_lst.do"; 
} else if (code == "71") { // 사용자 변경 진행상황 조회(담당자 변경) 
url_link = "/cy/CYCIRISP_userChangeRslt_viw.do"; 
} else if (code == "72") { // 사용자 변경 진행상황 조회(담당자 해지) 
url_link = "/cy/CYCIRISP_userChangeRslt_viw.do"; 
}   
==============================================================================================================

- 테스트 데이타 요청(처리중인 업무, 진행중인 업무)   
가입증서번호: 0002759,  단체명: 포스코특수강주)　　  

if (code == "21") { // 계약일반사항 변경 진행상황 조회  
} else if (code == "31") { // 보험금청구 진행상황 조회    
} else if (code == "33") { // 전출신청 진행상황 조회  
} else if (code == "41") { // 계약일반사항 변경 진행상황 조회  
} else if (code == "51") { // 무급부퇴직 진행상황 조회  
} else if (code == "52") { // 가입취소 진행상황 조회  
} else if (code == "53") { // 보험대상자 변경 상세 결재내역  
} else if (code == "54") { // 보험대상자 변경 상세 결재내역  
} else if (code == "71") { // 사용자 변경 진행상황 조회  
}  
==============================================================================================================

- 전출 입력사항[기업보험>퇴직보험>업무진행사항>진행중인 업무]  
com.kyobo.kblcm.company.cy.ri.ap.action.COCYRIAP_varamtAction.java 
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_transferDetailApprovalAction 
CYCIRISP_transferDetailApproval_lst.jsp ======> 완료   
==============================================================================================================

1-2) 보험금청구 진행상황 조회[기업보험>퇴직보험>업무진행사항>진행중인 업무] 
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_insuReqRsltAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_insuReqRsltAction.java --> EW10EW23odCall  
CYCIRISP_insuReqRslt_lst.jsp(참조:CYCIRIIS_indivReqPrint_viw.jsp)      ======> 완료(출력하기) 
==============================================================================================================

- 처리중인 업무 처리에서 퇴직금 중간정산 청구를 클릭하면 에러가 남 ==>  
파일명 : CYCIRISP_insuReqRslt_lst.jsp(화면ID: UI_CY_9120)  ==> 보험금청구 진행상황 조회 
==> 퇴직일시금 청구와 같은 패킷으로 가면 됨 
 if (urlcode == "32") {  // 보험금청구 진행상황 조회(중간정산)    
url_link = "/cy/cyciriisInsuReqMain.do?from=processSt"; 
} 
=============  EW10EW23 [ECW023OD] 입력값 확인 ============= 
EW10EW23_IN : COM_K_SMSC_DATE [1111-11-11] 
EW10EW23_IN : COM_K_SMSC_GB [32] 
EW10EW23_IN : COM_K_SMSC_SEQ [0000] 
EW10EW23_IN : COM_K_CUR_PAGE [000001] 
>> Communication is null, CTG Communication settimg.( EU10EW23 : 100.1.131.106:2006 ) 
CICS ECI Call Result value : 0 
MSG_CODE = [E70001] 
DUMMY : 000000100   
[/CYCIRISP_insuReqRsltAction.java]:[service()]:[code]32[szDate]1111-11-11[sSPage]000001[sPPage] 
1[sSPage]000001[szTotal_no]000000[getHEAD_MSG_CODE()]E70001 
[errorCode : EU10EW23E70001^]# [errorMessage : EU10EW23E70001^]# [errorModule : null^]# [exception : ] 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.09.26(금) 작업 ■■■■■■■■■■■■■■■■ \
---> 09:00 ~ 19:00   --> 저녁(쭈구미집, 맥주집, 노래방), 여관(이과장: 2번째) 

- 교보 홈 리뉴얼 Prj
- 결함 조치 사항 처리(기업보험)
1. 업무진행사항[기업보험>퇴직보험] 
 1) 처리중인 업무 
http://127.0.0.1:8080/KBLCM/cy/CYCIRISP_notProcess.action    
com.kyobo.kblcm.company.cy.ri.yu.action.COCYRIYU_notProcessAction  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_notProcessAction 
CYCIRISP_main01.jsp, CYCIRISP_notProcess_lst.jsp   
==============================================================================================================

- 전출 청구 수정 
http://localhost:8080/KBLCM/cy/CYCIRISP_transferReqApproval_lst.do  
==============================================================================================================

- innerHTML 테이블 만들기 
<script language="javascript"> 
frm.document.getElementById('vtab1_subtitle_on').innerHTML = "<table><% if (cypiicvi_varamtVO.getBasicFund().size()>0 ) 
for(int i = 0; i < cypiicvi_varamtVO.getBasicFund().size(); i++){ HashMap map = (HashMap)cypiicvi_varamtVO.getBasicFund().
get(i); %><tr><td class="center"><%=map.get("investRate")%>%</td></tr><% } else { %><tr><td class="center">%</td></tr><% } %>
</table>"; 
frm.document.getElementById('vtab2_subtitle_on').innerHTML = "<table><% if (cypiicvi_varamtVO.getAddFund().size()>0 
) for(int i = 0; i < cypiicvi_varamtVO.getAddFund().size(); i++){ HashMap map = (HashMap)cypiicvi_varamtVO.getAddFund().get(i); %>
<tr><td class="center"><%=map.get("investRate")%>%</td></tr><% } else { %><tr><td class="center">%</td></tr><% } %></table>"; 
</script> 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.09.27(토) 작업 ■■■■■■■■■■■■■■■■
---> 09:30 ~ 21:00  --> 토요근무 

- 교보 홈 리뉴얼 Prj
- 적립금 조회[개인보험>보험조회/변경>보험내역조회] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java -->   
CYPIICVI_reserve_viw.jsp ======> 완료 
--> 변액보험 상세조회 (변액종신보험) CYINCM_varamt01_viw.jsp  
==============================================================================================================

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

- 기업 금융거래 고객 로그인(사이버 창구) --> (로그인 아이디 설정) 
http://localhost:8090/KBLCM/cm/CMLCCCCustomerViwAction.do  
(/WEB-INF/jsp/cm/lc/cc/CMLCCC_customer_viw.jsp) 

- 개인회원 로그인(사이버 창구) --> (로그인 아이디 설정) 
http://localhost:8080/KBLCM/cm/CMLCPC_DevLogin.do 
(/WEB-INF/jsp/cm/lc/pc/CMLCPC_DevLogin.jsp) 
==============================================================================================================

<!--// 1.1. 보험대상자 - 엑셀 다운로드[기업보험>퇴직보험>계약사항 조회/변경>보험대상자]  //--> 
<action name="CYCIRIIS_insuredXls" class="kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredXlsAction"> 
	<interceptor-ref name="cloginCheckStack" /> 
</action> 

<!--// 1. 엑셀파일 일괄 전송[기업보험>퇴직보험>계약사항 조회/변경>보험대상자>보험대상자 명부 정리] //-->  
<action name="CYCIRIIS_insuredPersonTotSend" class="kblcm.cy.ci.ri.is.action.CYCIRIIS_insuredPersonTotSendAction">        
	<result name="init">/WEB-INF/jsp/cy/ci/ri/is/CYCIRIIS_insuredPersonTotSend_ins.jsp</result> 
	<result name="SendOK" type="tiles">cy.CYCIRIIS_insuredPersonTotSendOK</result> 
	<result name="SendFail">/WEB-INF/jsp/cy/ci/CYCI_appIframe_wrk.jsp</result> <!-- 실패 -->  
	<interceptor-ref name="cloginCheckStack" /> 
</action> 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.09.28(일) 작업 ■■■■■■■■■■■■■■■■
---> 07:50 ~ 20:00  --> 일요근무, 김태욱 과장 철수 결정, 오픈 1주일 연기 

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

- 기업보험 사용자 권한 
szUserType = sessionVO.getRiUserType(); // 사용자 권한(1:실무자, 2:관리자, 3:조회 권한자, 4:승인자) 
//String uType = sessionVO.getUser_auth();  //사용자 권한(1: 실무자, 2: 관리자, 3: 조회 권한자) 

○ 결재버튼 구분 요망  
실무자가 신청시 ==> 결재신청 (관리자상신)  
관리자가 신청시 ===>결재처리 (결재종결) 
승인자가 신청시 ==> 결재처리 (결재종결)  
==============================================================================================================

 - 적립금 조회[개인보험>보험조회/변경>보험내역조회] 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_varamtAction.java 
--> --> kblcm.cy.pi.ic.vi.action.CYPIICVI_varamtAction.java -->   

MESSAGE : 보험료 미납상태 입니다 처리할 수 없습니다. 
PM400UM_I_INAG_INAG_NO( 증권번호 ) : 205032004264 
MSG_CODE : PH0013E1 
D/비밀번호 651114 입니다.  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.09.29(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 19:00 --> 배과장 인수인계 협의, 배과장 환송회(맥주, 맥주, 노래방, 바, 포장마차, 용산) 

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

- 관리자 화면(사이버 창구) 
http://10.33.3.19/KBLCM/cm/ad/admin_login.do 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.09.30(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 23:00   --> 황광엽 부장 기업보험 PL로 옴, 배과장 철수 

- 교보 홈 리뉴얼 Prj
- 통합펀드변경 Array 생성 
ArrayList arrayListTotal = new ArrayList(); //통합펀드변경 Array 

for (int i = 0; i < pm400um.getFundList().size(); i++) { 
HashMap map = new HashMap(); 

HashMap hm = (HashMap) pm400um.getFundList().get(i); 
map.put("fundName", (String) hm.get("PM400UM_FUND_NM")); //펀드명 
map.put("fundCode", (String) hm.get("PM400UM_FUND_CAT")); //펀드코드 
map.put("investRate", (String) hm.get("PM400UM_FUND_RT")); //투자비율 
System.out.println("[/CYPIICVI_varamtAction.java] [적립금(통합)] ===> [PM400UM_FUND_NM]"+  
(String) hm.get("PM400UM_FUND_NM") +"[PM400UM_FUND_NM()]"+ (String) hm.get("PM400UM_FUND_NM")  
+"[PM400UM_FUND_RT()]"+ (String) hm.get("PM400UM_FUND_RT")); 

HashMap hm01 = (HashMap) pm400um.getBasicFundList().get(i); 
map.put("fundName01", (String) hm01.get("PM400UM_FUND_NM01")); //펀드명 
map.put("fundCode01", (String) hm01.get("PM400UM_FUND_CAT01")); //펀드코드 
map.put("investRate01", (String) hm01.get("PM400UM_FUND_RT01")); //투자비율 
System.out.println("[/CYPIICVI_varamtAction.java] [기본(통합)] ===> [PM400UM_FUND_NM01]"+  
(String) hm01.get("PM400UM_FUND_NM01") +"[PM400UM_FUND_NM()]"+ (String) hm01.get("PM400UM_FUND_NM01")  
+"[PM400UM_FUND_RT()]"+ (String) hm01.get("PM400UM_FUND_RT01")); 
  
HashMap hm98 = (HashMap) pm400um.getAddFundList().get(i);   
map.put("fundName98", (String) hm98.get("PM400UM_FUND_NM98")); //펀드명 
map.put("fundCode98", (String) hm98.get("PM400UM_FUND_CAT98")); //펀드코드 
map.put("investRate98", (String) hm98.get("PM400UM_FUND_RT98")); //투자비율 
System.out.println("[/CYPIICVI_varamtAction.java] [추가(통합)] ===> [PM400UM_FUND_NM98]"+  
(String) hm98.get("PM400UM_FUND_NM98") +"[PM400UM_FUND_NM()]"+ (String) hm98.get("PM400UM_FUND_NM98")  
+"[PM400UM_FUND_RT()]"+ (String) hm98.get("PM400UM_FUND_RT98")); 
  
arrayListTotal.add(map); 
}  

cypiicvi_varamtVO.setTotalFund(arrayListTotal); 
==============================================================================================================

- 펀드변경
202012637647 채권/혼합 펀드변경 가능한 상품인데  
변경가능한대상이없다고 떠서요.. 
==============================================================================================================

안녕하세요.. 현재 적립금조회화면 및 변액연금상품의 수익률 조회 안되는거... 수정됐는지요?  
430915 입니다. 
==============================================================================================================

- 이미지 생성 요청 
펀드(옵션)변경하기  ==>  <img src="/KBLCM/images/common/btn_fundOptionChange.gif"/> 
디자이너에게 말해서 이미지 만들어서 /KBLCM/images/common 폴더에 넣어주기 바람 
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■