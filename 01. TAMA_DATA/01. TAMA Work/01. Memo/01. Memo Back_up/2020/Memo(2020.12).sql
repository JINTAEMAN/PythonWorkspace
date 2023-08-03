

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+----------------------------------------------// Memo(2020.12) //----------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2020.12.01(화) 작업 ■■■■■■■■■■■■■■■■■■ 	 
---> 07:30 ~ 18:00 ==>

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 예금 담보 대출(PL0003) 수정 
- 09. 대출신청 정보(TL0120) 화면 수정
==============================================================================================================

- 엘리트론(PLO001) 신용 대출 테스트
==============================================================================================================

- (엘리트론) 예상한도조회(TASK_TL0160_00001, 2191) 전문_☆☆ 호출 에러  
1. 현상 MFTXERR_00783
[/TL0160_01_m.xml] [service_callback()] ==> [TEST_70_2] [콜백] ■ [에러 코드]_METXERR_00783 에러 메세지 kcb interface 에러 발생 !
2. 원인: 정보계 테스트 서버는 테스트를 위해 데이타 샛팅을 해줘야 하는데 이영진 수석 휴가라서 데이타를 셋팅 안 해줘서 나는 에러로  
추정이 됨(17시 15분 다시 테스트하니 없어짐) 
3. 조치: 이영진 수석 휴가라서 연락 안 받음(이유석 과장도 휴가)
==============================================================================================================

- (엘리트론) 예상금리조회 (TASK_TL0180_00001, 2192) 전문_☆☆ 호출 에러
1. 현상: _MFTXERR_01038 
[/TL0180 01_m.xml] [service_callback()] ==> [TEST_70] [콜백] ■ [SON.stringify(rtnJSON)}{"ERR_CODE""E 
"ERR_MSG" : "6306 (PREPARE)?", "OUT_DATA":"", "CryptoYN":""
"RTN_CODE" : "_MFTXERR_01038", "RTN_MSG": "6306 ?[PREPARE", "OUT_DATA_TYPE": ""}
==============================================================================================================

- 대출 신청 내역 조회(TASK_TL0030_00001, 3040) 전문_☆☆ 호출 에러
1. 현상: _MFTXERR_00463 
[/TL0030_01_m.xml] [service_callback()] ==> [TEST_70]] [콜백] ■ [JSON.stringify(rtnJSON)} {
"ERR_CODE": "E","ERR_MSG": "4121 고객검색 오류입니다.", "OUT_DATA": "", "CryptoYN": ""
"RTN_CODE": "_MFTXERR_00463","RTN_MSG": "44121 고객검색 오류입니다.", "OUT_DATA_TYPE": ""}
2. 원인: 박소영 계장 고객번호가 문제가 생김
3. 조치: 박소영 계장이 고유진 계장 고객번호로 로그인 하라고 함 
==============================================================================================================

- 대출 한도조회 (TASK_TL0080_00001, 3010) 전문_☆☆ 호출 에러(고유진 계장 고객번호로 로그인) 
1. 현상: _METER_00959 
[/TL0030_01_m.xml] [service_callback()] ==> [TEST_70] [콜백] ■ [JSON.stringify(rtnJSON)} {
"ERR_CODE": "","ERR_MSG": "서울보증보험[주민번호 검증 오류]", "OUT_DATA": "", "CryptoYN": ""  
"RTN_CODE": "_METER_00959","RTN_MSG": "서울보증보험[주민번호 검증 오류].", "OUT_DATA_TYPE": ""}
==============================================================================================================

- 개발 관련 회의 (10:20, 개발팀) 
1. xTouch Close  ==> 완료[♥♡] 
scwin btnXtouchClose_onclick = function(e) {
	$p.parent().xTouchLibUi.xTouchClose($p.parent().scwin.nowTaskInfo);
};
==============================================================================================================

2. focus 후 스크립트 제어 ==> 완료[♥♡] 
if(s_Salary.length == 10) { 
	com.alert("대출 받으실 금액을 낳을 수 있는 최대 자리 수 입니다.", function()) {  
		ibx_InPtAt.focus();
		com.scrollCenter(ibx_InPtAt);		// focus 후 스크롤 제어  
	)};
	return;
}

3. fixed 추가(Input Box가 없으면)  ==> 완료[♥♡] 
<body ev:onoageload="scwin.onpageload" ev:anpageunload="scwin.onpageunload"> 
 <xf: group id="" style="" tagname="" tabIndex="" class="contents_wrap fixed"> 
 
<xf:group class="btn_area bottom fixed" id="" style="">
	<w2:anchor class="btn btn_lg gray" clickEventElement="" disabled="" id="btn_cancel" outerDiv="false" style="" ev:onclick="scwin.btn_cancel_onclick">
		<xf:label><![CDATA[취소]]</xf:label>
	</w2:anchor> 
<w2:anchor class="btn btn_lg black" clickEventElement="" disabled="false" id="btn_confirm" outerDiv="false" style="" ev:onclick="scwin.btn_confirm_onclick">
  <xf:label><![CDATA[확인]]</xf:label>
	</w2:anchor>  
</d group>
 
4. 전단계 체크  ==> 완료[♥♡]  
// getXTouchSessionCheck  ==> XTouch 세션 체크(/TASK_TU0030_00001.java]  @@@
@Override 
public Map start() throws Exception { 
	log.debug("[/TASK_TL0080_00001.java] [start()] ==> [TEST_01] [대출 한도 조회](TASK_TL0080_00001) 처리  START] ■■■ [TelelD]"+ this.TelelD() );
 
	Map nextInData = new HashMap();

	if("MFSV_9003".equals(this.getTelelD()) {	 // 정보계 연결 거래 관리(01. 정보계 호출 전 호출) 
		log.debug("[/TASK_TL0080_00001.java] [start()] ==> [TEST_51] [정보계 연결 거래 관리(01. 정보계 호출 전 호출)]"+ this.TelelD() );
  
		String CHK_SCRAPING = this.getSessionData(Config.XTOUCH_SESSION_CHK_SCRAPING); 	// 스크래핑 완료 여부 ■■■ 
		log.debug("[/TASK_TL0080_00001.java] [start()] ==> [TEST_52] [스크래핑 완료 여부]"+ CHK_SCRAPING );
  
		if("T".equals(CHK_SCRAPING)) { 	// 스크래핑 전단계 체크가 존재 안하면 ■■■ 
			throw new ResultException("스크래평이 미완료 되었습니다."); 
		}
		nextInData.put("tXSvld", this.txSvID);
	}
};
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2020.12.02(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:00 ==> 스크래핑 전용선 뚫림(13시, 이윤석 차장), 주간보고서(22주차) 작성(14시)

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 엘리트론(PLO001) [신용 대출] 테스트
==============================================================================================================

- 10-1 서류 자동발급/조회(스크래핑) 화면 수정  
scwin.btn_confirm_onclick = function() {
	gcm.log("[/TL0070_01 s1.xml] (btn_confirm_onclick()] ==> [TEST_01] [서류 제출 버튼 클릭 이벤트]");
	
	// 스크래핑 문서 생성 후 스크래핑 관련 공통 팝업 호출 
	var inputData = {  
		SCRAP_ID: scwin.SCRAP_ID, 	// 스크랩 ID
		nowTaskInfo: $p.parent().scwin.nowTaskInfo
	} 
	gcm.log("/TL0070_01_s1.xml) [btn_confirm_onclick()] ==> [TEST_02] [JSON.stringify(inputData)]"+ JSON.stringify(inputData) );
 
	com.popupList.POP_LO03_01(inputData, 		// 00-1. 스크래핑 팝업 화면 호출 ==> 스크래핑 처리 ■■■
		function(rtnValue) {
			gcm.log("/TL0070_01_sl.xml] [btn_confirm_onclick()] ==> [TEST_51] [팝업 닫기] ■■ [결과값]"+ JSON.stringify(rtnValue) 
			+"[rtnValue.RTNCD]"+ rtnValue.RTNCD);
	  
			if(rtnValue.RTNCD == "OK") (	 // 정상 처리 성공 이면
				gcm.log("/TL0070_01_sl.xml] [btn_confirm_onclick()] ==> [TEST_52] [스크래핑 정보 DB 조회 전문 호출] ===> TEST @@@ ");
				
				// scwin.fn_scrapping();	// 스크래핑 결과 TEST  ■■■ ===> TEST @@@ ===> 
				
				scwin.fn_callService("NOTASK_COMMW_0008", scwin.serviceSCDB_callback);		
				// 스크래핑 정보 DB 조회 전문 호출[R] ===> TEST @@@ ===> 
			}  
		}
	};
};

scwin.fn_callService = function(svID, callbackFn) { 
	gcm.log("/TL0070_01_s1.xml] [fn_callService()] ==> [TEST_01] [ 전문 호출] [svID]"+ svID );

	scwin.SCRAP_ID = "28B851773AFD49CBBBA4E5A0F02AFCAA";	// 스크랩 ID ===> TEST @@@ ===>
	commStartDt = "201911";	// 3  조회 시작 년월 ===> TEST @@@ ===> 
	commEdnDt = "202010";	// 4. 조회 종료 년월 ===> TEST @@@ ===>  
 
	inputData = { 	// IN-META-INFO 등록[전문] (서비스등록관리 화면에서) @@@
		"SCRAP ID": scwin.SCRAP_ID 	// 스크랩 ID
		// , "SCRAP_KEY": ""					// 2 스크랩서버 KEY 
		, "COMM_START_DATE": commStartDt 		// 3. 조회 시작 년월
		, "COMM END DATE": commEdnDt 			// 4. 조회 종료 년월 
	}
	
	com exeService {
		{ 
			"ServiceID" 	: svID,
			"URL"			: "_XTOUCH_INTERFACE_",
			"CryptoYN" 	: "N",
			"mode"   		: "",
			"NOW_TASK_INFO" $p.parent() scwin.nowTasklnfo 
		},		// Sub Info(1. ServiceID 서비스 ID, 2. URL: 호출할 URL, 3. CryptoYN: 암호 적용 여부) ■■
		inputData,	 // 전송할 INPUT 데이터 ■■
		callbackFn	 // 결과 콜백 함수 ■■
	};
};

// 전문 호출 결과 콜백 
scwin.serviceSCDB_callback = function(rtnJSON) {
	gcm.log("/TL0070_01_s1.xml] [serviceSCDB_callback()] ==> [TEST_01] [콜백] [스크래핑 정보 DB 조회(NOTASK_COMMW_0008, MWEB_SCRAPDB)]" );
 
	if(rtnJSON.ERR_CODE == "S") { 	// 스크래핑 문서 생성 후 스크래핑 관련 공통 팝업 호출
		gcm.log("/TL0070_01_s1.xml] [serviceSCDB_callback()] ==> [TEST_51] [JSON.stringify(rtnJSON.OUT_DATA)]"+ JSON.stringify(rtnJSON.OUT_DATA) );
		
		var v_incomeavg = "";	// 01. 평균 납부보험료 ===> TEST @@@ ===> ■■■
		var v_gal_aqt_dt = "";	// 02. 입사일 자격득실 확인서 취득일) ===> TEST @@@ ===> ■■■ 
		
		if(rtnJSON.OUT_DATA != null) 	// 스크래핑 결과가 존재하면
		{
			v_incomeavg = rtnJSON.OUT_DATA.HEPAY_AVG_AMT;			// 01. 평균 납부보험료 ■■■
			v_gal_aqt_dt = rtnJSON.OUT_DATA.COMM_START_DATE;		// 02. 입사일(자격취득일) ■■■
		]
		
		var inData = {
			"annual_income" : ""+ scwin.fnNHISAnnuallncome(v_incomeavg). 	// 01. 연간소득금액
			, "gal_aqt_dt" : v_gal_aqt_dt 		// 02. 입사일 (자격득실 확인서 취득일)
		};

		$p.parent().scwin.nextTask(inData, {}, "CHK": "NEXT"});		// 다음 Task 함수 호출 ==> 08. 대출한도 조회 결과(대출) (TL0080, 01) 화면 호출
	}
};
=============================================================================================================

- (엘리트론) 예상금리조회(TASK_TL0180_00001, 2192) 전문_☆☆ 호출 에러  
1. 현상: _MFTXERR_01038 
[/TL0180_01_m.xml] [service_callback()] ==> [TEST_70] [콜백] ■ [JSON.stringify(rtnJSON)]{"ERR CODE":"E",
"ERR_MSG": "6306 아파트관리비 자동이체 여부 검색 (PREPARE) 오류가 발생하였", "OUT_DATA": "", "CryptoYN", "", "RTN_CODE", "_MFTXERR_01038"
"RTN_MSG": "6106 아파트관리비 자동이체 여부 검색 (PREPARE오류가 발생하였", "OUT_DATA_TYPE": ""} 
2. 원인: 제주은행 내부 시스템 에러(원장 생성해야 한다고 함) 
3. 조치: 박소영 계장이 ICT에 연락해서 처리
=============================================================================================================

- 대출 한도 조회(/TASK_TL0080_00001, 3010) 전문_☆☆ 호출 에러 
1. 현상: _MFTXERR_00959
[/TL008O_01_m.xml] [service_callback() ==> [TEST_70] [콜백] ■ [JSON.stringify(rtnJSON)]{"ERR CODE":"E",
"ERR_MSG": "서울보증보험 (주채무차 주민번호 또는 각종 고객정보 취득 오류", "OUT_DATA": "", "CryptoYN", "", "RTN_CODE", "_MFTXERR_00959"
"RTN_MSG": ""서울보증보험 (주채무차 주민번호 또는 각종 고객정보 취득 오류"", "OUT_DATA TYPE": ""} 
2. 원인: 박소영 주민번호가 11111로 나와서 나는 에러 발생
3. 조치: /TL0080_00001.java 파일에서 박소영 실제 주민번호 강제 셋팅

@Override 
public Map start() throws Exception { 
	log.debug(""[/TASK_TL0080_00001.java] [star()] ==> [TEST_01] [대출 한도 조회(TASK_TL0080_00001) (전문_☆☆) 처리 START] ■■■ [TeleID]"+ TeleID );
	
	String sSsn = "";
	String USER_INFO = this.getSessionData(Contig.XTOUCH_SESSION_LOAN_USER_NO);		// 여신 세션에서 주민번호 가져오기
	
	if(USER_INFO != null) {
		String USE_INFO_2 = USER_INFO.$plif("@"); 	// 주민번호 만 가져오기   
		sSsn = USE_INFO_2[0].substring(0, 13);		// 주민번호
	}
	
	if("박소영".equals(this.userIno.USER_NAME)) {	// 성명이 박소영 이면 ===> TEST @@@ ===>
	  sSsn = "1504212951811";		// 박소명 주민번호 셋팅
	}	 
	log.debug(""[/TASK_TL0080_00001.java] [star()] ==> [TEST_51] [이용자 이름]"+ this.useInfo.USER_NAME +"[주민번호]"+ sSsn );
	
	nextInData.put("cifno", sSsn); 	// 주민번호 추가[2020.10.16, by 진태만]
 }
==============================================================================================================

- 대출신청조회/실행(PLO009} [신용 대출] 프로세스에서 심사완료 처리  
1. 신청 진행현황[신용 대출] (TL0210) 화면에서 서류확인 중 ==> 심사완료(박소영 계장에게 처리 요청할 것) 
scwin.service_callback = function(rtnJSON) { 
	gcm.log("[/TL0210_01_m.xml] [service_callback() ==> [TEST_01] [02. (엘리트론) 대출신청내역조회(TASK_TL0030_00002, 2194) 전문_☆☆ 호출 콜백]" );
	
	if(rtnJSON.ERR_CODE == "S") {	 
		gcm.log("[/TL0210_01_m.xml] [service_callback()] ==> [TEST 21] [진행상태]"+ rtnJSON.OUT_DATA.stat_cd +"[서류확인]"+ rtnJSON.OUT_DATA.doc_cd );

		scwin.loanSincgData = rtnJSON.OUT_DATA;		// 대출신청내역 정보 DATA
		scwin.stat_nmData = {});  // 신청상태 정보 DATA	  
		var v_stat_nm= "";  	 // 진행상태명
		gcm.log("[/TL0210_01_m.xml] [service_callback()] ==> [TEST_22] [rtnJSON.OUT_DATA]"+ rtnJSON.OUT_DATA );
		
		if(rtnJSON.OUT_DATA == null || com.isNull(rtnJSON.OUT_DATA.stat_cd)) 		// 신청내역 미존재 
		{
			com alert("대출신청한 상품이 존재하지 않습니다."); 
			scwin.loanInfoYnfo = "N";		/// 대출신청 상품 미존재 
			xTouchLibUi.uiChange(swin.nowTaskInfo, "SUB2", $p); 	// 02-2. 대출신청 목록 상세/승인거절 화면 Display
			return;
		} 
	  
		if(rtnJSON OUTL_DATA.start_cd == "2") 	// 진행상태(stat_cd)가 대출승인 이면 ==> 진행상태(star_cd) (1: 상담사와 민중, 2: 대출승인, 3: 대출예약실행)
		{
			if(rtn JSON. OUT_DATA.dacu_cd == "0") 	// 서류확인중 ==> 서류확인(docu_cd) (0: 서류대기, 1: 서류확인, 2: 대상아님)
			{
				v_stat_nm = "서류확인 중";	// 대출 실험 처리 요청(정보계 전화해서 '심사완료'로 변경 요청: 원래 콜센터에서 하는 업무라고 함)
			}
			else
			{
				v_stat_nm = "심사완료";
			}
			scwin.stat_nmData = {"stat_nm": v_stat_nm};		// 신청상태 정보 DATA 
			gcm.log("[/TL0210_01_m.xml] [service_callback()] ==> [TEST_51] [INPUT 데이타(rnJSON.OUT_DATA]"+ JSON.stringify(rtnJSON.OUT_DATA) );
			
			xTouchLibUi.uiChange(swin.nowTaskInfo, "SUB1", $p); 	// 11-1 대출신청 결과[신용대출] (TL0200, 01) 화면 Display
	}
	else if(rtnJSON.OUT_DATA.stat_cd == "7")		// 진행상태(sat_cd)가 '승인 거절' 이면
	{
		v_stat_nm = "승인거절";
		scwin.stat_nmData = {"stat_nm": v_stat nm};
		xTouchLibUi.uiChange(swin.nowTaskInfo, "SUB2", $p); 	// 02-2 대출신청 목록, 상세.승인 거절 화면 Display
	}
	else
	{
		v_stat_nm = "대출승인";
		scwin.stat_nmData = ("stat_nm": v_stat nm);
		xTouchLibUi.uiChange(swin.nowTaskInfo, "SUB2", $p); 	// 11-1 대출신청 결과[신용대출] (TL0200, 01) 화면 Display
	}
};		
==============================================================================================================

- 예금보 대출(PL0003) 전자서명 개발
1. 예금담보 대출 전자서명 원문 요청(이광철 이사에게 요청)
 1) 전자서명 표시 내용
  가. 공통필수 + 입금계좌(rcpAcN), 고객명(clnNm), 대출구본(lnCcd), 대출이율(lnPrf), 다음이자납입일자(nxtlrGpmD)
 2) 원리금 상환(/TE0090_01_s1.xml) 파일 창조
==============================================================================================================
 
- 전자서명 표시 내용
0. 공통필수 + 입금계좌번호(rcpAcN), 고객명(clnNm), 대출구분(lnCcd), 대출이율(lnPrf), 다음이자납입일자(nxtlrGpmD)
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2020.12.03(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:00 ==> 수학능력 평가(8시, 태용이 아들 시험에 응시), 지출결의서 제출(13시, 박건유 대리에게 전달)

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 엘리트론(PLO001) [신용 대출] 테스트
==============================================================================================================
 
- 예금담보 대출(PLO003) 전자서명 개발
scwin btn_savillnPt_oncick = function(e) {
	gcm.log("[/TL12001_01_s1.xml] [btn_savillnPt_oncick()] [TEST_O1] [예금담보 대출신청 버튼 클릭 이벤트] [대출가능 한도금액]"+ 
		ibx_unBeLm.getValue() +"[대출 받으실 금액]"+ ibx_lnPtAt.getValue() +"[담보예금 비밀번호]"+ ibx_llAcPin.getValue() );
	
	inputData = {		 // IN META_INFO 등록(전문) (서비스등록관리 화면에서)  
		"llSavAcN" ; com.trim(sbx_llSavAc.getvalue()), 	// 1. 담보예금계좌 번호
		"llAcPin": gcm.nshc.getDatat(ibx_llAcPin), 		// 2. 담보계좌비밀변호(키보드 보안 처리) 
		"lnPtAt": com.trim(ibx_lnPtAt.getvalue()),			// 3. 대출신청금액
		"rcpAcN": com.trim(sbx_rcpAcN.getvalue(),		// 4. 입금계좌번 
		"cvgSffN": ""														// 5. 권유직원번호
	};
	$p.parent().scwin.callSvc_llSavAcInfo(inputData);	 	// 예금담보 예비 정보(부모 화면)
};

scwin.callSvc_llSavAcInfo = function(inputData) {
	gcm.log("[/TL0120_01_m.xml] [callSvc_llSavAcInfo()] ==> [TEST_01] [예금담보 예비 정보(부모 화면)]" );
 
	scwin.llSavAcData = inputData;	// 받아온 담보예금계좌 Data
	gcm.log("[/TL0120_01_m.xml] [callSvc_llSavAcInfo()] ==> [TEST_41] [INPUT 데이타(scwin.llSavAcData)]"+ JSON.stringify(scwin.llSavAcData) );
 
	scwin.fn_callService("TASK_TL0120_00001", scwin.service2170_callback);		// 04.이자납입일 조회(예금담보대출 예비거래) 전문 호출(저장)
};

// 전문 호출 결과 콜백
scwin.service2170_callback = function(rtnJSON) {
	gcm.log("[/TL0120_01_m.xml] [service2170_callback()] ==> ITEST_01] [04.이자납입일 조회(예금담보대출 예비거래) (TASK_TL0120_00001, 2170) 전문 호출"] );
  
	if(rtnJSON.ERR_CODE == "S") {  
		scwin.llSavPreTrdRstData = rtnJSON.OUT_DATA;		// 담보예금대출 예비거래 결과 Data
		gcm.log("[/TL0120_01_m.xml] [service2170_callback()] ==> ITEST_61] [JSON.stringify(scwin.llSavPreTrdRstData)]"+ 
			JSON.stringify(scwin.llSavPreTrdRstData) );
  
		xTouchLibUi.uiChange(scwin.nowTaskInfo, "SUB2", $p); 	// 09-2 대출신청 정보(TL0120, 01) 확인 화면 Display
	}
};
--------------------------------------------------------------------------------------------------------------------

scwin.btn_confirm_onclick = function() {  
	gcm.log("[/TL0120_01_s2.xml] [btn_confirm_onclick()] ==> [TEST_01] [확인 버튼 클릭 이벤트]");
	
	inputData = {	// IN META_INFO 등록(전문) (서비스등록관리 화면에서)  
		"llSavAcN" ; com.trim(sbx_llSavAc.getvalue()), 	// 1. 담보예금계좌 번호
		"llAcPin": "", 														// 2. 담보계좌비밀변호(키보드 보안 처리) 
		"lnPtAt": com trim(ibx_lnPtAt.getvalue()),			// 3. 대출신청금액
		"rcpAcN": com trim(sbx_rcpAcN.getvalue()),		// 4. 입금계좌번 
		"cvgSffN":""														// 5. 권유직원번호
	};
	gcm.log("[/TL0120_01_s2.xml] [btn_confirm_onclick()] ==> [TEST_51] [INPUT 데이타(inputData)]"+ JSON.stringify(inputData) );
	
	$p.parent().scwin.callSvc_llSavAcMainInfo(inputData);	 	// 예금담보 예비 정보(본거래) (부모 화면) 
};

scwin.callSvc_llSavAcMainInfo = tunction(inputData) {  
	gcm.log("[/TL0120_01_m.xml] [callSvc_llSavAcMainInfo()] ==> [TEST_01] [예금담보 예비 정보(본거래) (부모 화면)]");

	scwin.llSavAcMainData = inputData; 	// 받아온 예금담보 정보(본거래) Data 
	gcm.log("[/TL0120_01_m.xml] [callSvc_llSavAcMainInfo()] ==> [TEST_42] [예금담보대출 예비거래_Data]"+JSON.stringify(scwin.llSavAcMainData) );
	
	scwin.fn_callService("TASK_TL0120_0003", scwin.fn_calback_certSign);	// 52 전자서명 원문 생성(전자서명 팝업) [R]
	// scwin.fn_callService("TASK_COMME 2171", scwin.service2171_calback);	// 예금담보 정보(본거래) 전문 호출(저장) (전자서명 제외하고 테스트)
};

// 전자서명 원문 생성 callback
scwin.fn_callback_certSign = tunction(rtnJSON) {
	gcm.log("[/TL0120_01_m.xml] [fn_callback_certSign()] ==> [TEST_01] [52. 전자서명 원문 생성(TASK_TL0120_00003, MWEB_01_BYPASS) 전문_호출]" );
 
	if(rtnJSON.ERR_CODE == "S") { 
		gcm.log("[/TL0120_01_m.xml] [fn_callback_certSign()] ==> [TEST_61] [콜백] [JSON.stringily(rtnJSON.OUT_DATA])"+ JSON.stringily(rtnJSON.OUT_DATA) );
  
		var SIGN_TK = rtnjSON.OUT_DATA_SIGN_TK; 	// 서명원본 생성 완료 후 TK 생성된 경우  	
 
		scwin.getSignData(SIGN_TK);	// 전자서명 DATA를 생성
	}
};

scwin getSignData = function(SIGN_TK) { 
	gcm.log("[/TL0120_01_m.xml] [getSignData()] ==> [TEST_01] [전자서명값 생성(서비스에서 받은 서명 원문) 콜백] [SIGN_TK]"+ SIGN_TK )
  
	var signType = "99";	// 전자서명 타입(99: 기타) 	

	com.signData(SIGN_TK, scwin.nowTaskInfo, signType, function(rtnJSON)  {	  // 전자서명값 생성 모듈 호출 ==> PC에서 에러 발생 @@@ ===>
		gcm.log("'/TL0120_01_m.xml] [getSignData()] ==> [TEST_21]"+  nJSON ERR_CODET rtnJSON. ERR_CODE )
  
		if(rtn_JSON.ERR CODE == "S") {
			gcm.log("'/TL0120_01_m.xml] [getSignData()] ==> [TEST_31] [콜백] [JSON.stringify(rtnJSON.OUT_DATA]"+ JSON.stringify(rtnJSON.OUT_DATA) );

			scwin.cert_sign_info = rtnJSON.OUT_DATA:	// 전자서명값
			gcm.log("'/TL0120_01_m.xml] [getSignData()] ==> [TEST_321) [콜백] [scwin.cert_sign_info]"+ JSON.stringify(scwin.cert_sign_info) );
			
			scwin.fn_callservce("TASK.TL0120_00002", scwin.service2171_calback);	// 04. 이자납입일 조회(예금담보 정보(본거래)) 전문 호출(저장)
		}
	});
};

scwin.fn_callService = function(svID, calbackFn) {
	gcm.log("[/TL_0120_01_m_xml] [fn_callService()] ==> [TEST_01] [전문_호출] [svID]"+ svID);
 
	var inputData = {}; 	

	if(svID == "TASK_TL0120_00001")		// 51. 예금담보대출 예비거래 전문 호출이면
	{
		gcm.log("[/TL_0120_01_m_xml] [fn_callService()] ==> [TEST_51] [51. 이자납입일 조회(예금담보 대출 예비 거래(TASK_TL0120_00001, 2170) 전문_호출]" );
	
		inputData = scwin.llSavAcData; 	// 받아온 담보예금계좌 Data
	}
	else if(svID == "TASK_TL0120_00003")	// 52. 전자서명 원은 생성R] 전문 호출 이면
	{ 
		gcm.log("[/TL_0120_01_m_xml] [fn_callService()] ==> [TEST_52] [52. 전자서명값 원문 생성[R] (TASK_TL0120_00003) 전문_호출]" );
		
		var nxtlrGpmD = com.trim(scwin.llSaPreTraRstDat.nxtlrGpmD);
		var nxtlrGpmDt =nxtlrGpmD.substring(0.4) +"-"+ nxtlrGpmD.substring(4, 6) +"-"+ nxtlrGpmD.substring(6, 8);		// 05. 다음이자납일일자

		// 전자서명 만들 값  
		var inputData = {
			"repAcN" : com.transAcn("1", com.trim(scwin.llSavPreTrdRstData.repAcN)), 	// 01. 입금계좌번호   
.			"clnNm" : com trim(scwin.llSavPreTrdRstData.clnNm), 		// 02.고객형  
			"InCcd" : com.trim(scwin llSavPreTrdRstData.InCcd), 			// 03. 대출구분코드  
			"InPrf" : com.trim(scwin.llSavPreTrdRstData.inPrf) +"%",		 // 04. 대출이율  
			"nxtlrGpmD" : nxtlrGpmDt														// 05. 다음이자납입일자  
		}
	}		
	ese if(svD == "TASK_TL0120_00002") 	// 53. 예금담보대출 본거래 전문 호출 이면
	{
		gcm.log("[/TL_0120_01_m_xml] [fn_callService()] ==> [TEST_53] [53. 대출신청 저장 및 결과 리턴(예금담보대출 본거래) {TASK_TL0120_00002, 2171) 전문호출]");
 
		inputData = scwin.llSavAcMainData;		// 받아온 예금담보 정보(본거래) Data
		
		inputData = {		// IN META_INFO 등록(전문) (서비스등록관리 화면에서)  
			"CERT_SIGN_INFO": scwin.cert_sign_info 			// 00. 전자서명값
			,"llSacAcN": com trim(inputData.llSacAcN)			// 01. 담보예금 계좌번호
			, llAcPin": com trim(scwin.llSavAcData.llAcPin)	// 02. 담보계좌비밀변호(키보드 보안 처리) 
			,"lnPtAt": com trim(inputData.InPtAt),					// 03. 대출신청금액
			, "rcpAcN": com trim(inputData.rcpAcN),				// 04. 입금계좌번호
			, "cvgSffN":""															// 05 권유직원번호
			, "dcdcNStuApF": ""		// 06 설명서/약관수행여부
			, "emArt": ""					// 07. 이메일주소
		}; 
	}		  
	gcm.log("[/TL_0120_01_m_xml] [fn_callService()] ==> [TEST_41] [INPUT 데이타(inputData)]"+ JSON.stringify(inputData) );
 
	com.exeService (
			{
				"ServiceID": svID,
				"URL": "_XTOUCH_INTERFACE_",
				"CryptoYN": "N",
				"mode": "",
				"NOW_TASK_INFO": scwin.nowTaskInfo	
			},						/ Sub Info(1. ServiceID, 2. URL: 호출할 URL, 3. CryptoYN: 암호 적용여부) ■■	
			inputData,		// 전송할 INPUT 데이타 ■■	
			callbackFn		// 결과 콜백 함수 ■■
		};
	);
};
--------------------------------------------------------------------------------------------------------------------
 
@verride
public Map end throws Exception {
	log.debug("[/TASK_TL0120_00003.java] [end()] ==> [TEST_01] [전자서명(TASK_TL0120_00003)] [전문_결과값] [TelelD]"+ this.getTelelD() ); 

	Map returnMap = new HashMap();	// 출력값
 
	if("MWEB_01_BYPASS".equals(this.getTelelD()) {
	{
		String curTm = DtUtil.petCurTm();
 
		String SIGN_DATA =			// 전자서명 원문
			"거래명 : 예금담보 대출"   			+"\n" +
			"성명 : "+ this.USE_INFO.USER_NAME 		+"\n" +
			"고객번호 "+ this.userInfo.USER_NEW_CODE 	+"\n" +
			"거래일자 :  "+ DtUtil.getCurrentDate("yyyy.MM.dd") 	+"\n" +
			"거래시간 : "+ curTm substring(0, 2) +":"+ curTm.substring(2, 4) +":"+ curTm.substring(4)  +"\n" +
			"입금계좌번호 : "+ (String) this.signAddInfo.get("rcpAcN") 	+"\n" +	 		// 01. 입금계좌번호
			"고객명 : "+ (String) this.signAddInfo.get("clnNm") 		+"\n" +	 				// 02. 고객명
			"대출이율 : "+ (String) this.signAddInfo.get("\nPrt")	 	+"\n" +					// 04. 대출이율
			"다음이자납입일자 : "+ (String) this.signAddInfo.get("nxtlrGpmD")  +"\n";	// 05. 다음이자납입일자  
		log.debug("[/TASK_TL0120_00003.java] [end()] ==> [TEST_51] [결과값_■■] [SIGN_DATA]"+ SIGN_DATA );

		String SIGN_TK = this.getSignTk(SIGN_DATA);

		returnMap.put("SIGN_TK", SIGN_TK);

		this.setNextTelelD("END");
	}
	
	return returnMap;
}
	
@verride
public Map end() throws Exception { 
	Map rtnMap = new HashMap();

	switch (this.getTeleID()) { 
		case "MWEB_01_BYPASS":
			String CERT_SIGN_INFO = (String)this.firstMap.get("CERT_SIGN_INFO"); 
			log.debug("##################### - MWEB BY PASS CHECK VERIFYSIGNDATA ---- ################");
			log.debug("[/TASK_TL0120_00002.java] [end()] ==> [TEST_21) [CERT_SIGN_INFO]"+ this.veritySignData(CERT_SIGN_INFO) );
	
			if(this.verifySignData[CERT_SIGN_INFO)) {
				this.setNextTelelD("MFSV_2171"); 
			} else (
				throw new ResultException("서명데이타 검증 오류");
			}
			break;

	case "MFSV_2171":
		Map OUT_DATA = this.getOutData();
		this.setNextTeleID("END");
		log.debug("/TASK_TL0120_00002.java] [end()] ==> [TEST_91] [예금담보대출 본거래 결과값_■■] [OUT_DATA]"+ OUT_DATA );
		break;

		default:
		throw new ResultException("NEXT TASK ID 값설정 오류"); 
	}
  
	return rtnMap;
} 
==============================================================================================================

- 대출신청 저장 및 결과 리턴(예금담보대출 본거래(TASK_TL0120_00002, 2171)) 전문 에러
1. 현상:
"URLDecoder": Ilegal hex characters in escape (%) pattern - For input string: &quot:  
&quoter
  
2. 원인: 대출이율에 '%'넣어서 나는 에러 
scwin.fn_callService = function(svID, calbackFn) {
	gcm.log("'[/TL0120_01_m.xml] (fn_callService)==> [TEST 52] [52. 전자서명 원문 생성[R] (TASK_TL0120_00003) 전문_호출] [svID]"+ svID );
	
	// 전자서명 만들기 값
	var inputData = { 	  
		"repAcN" : com.transAcn("1", com.trim(scwin.llSavPreTrdRstData.repAcN)), 	// 01. 입금계좌번호   
.			"clnNm" : com trim(scwin.llSavPreTrdRstData.clnNm), 		// 02.고객형  
		"InCcd" : com.trim(scwin llSavPreTrdRstData.InCcd), 			// 03. 대출구분코드  
		"InPrf" : com.trim(scwin.llSavPreTrdRstData.inPrf) +"%",		 // 04. 대출이율  
	//	"InPrf" : com.trim(scwin.llSavPreTrdRstData.inPrf),				 // 04. 대출이율  ===> TEST @@@ ===>
		"nxtlrGpmD" : nxtlrGpmDt														// 05. 다음이자납입일자  
	}
 
	com.exeService (
			{
				"ServiceID": svID,,
				"URL": "_XTOUCH_INTERFACE_",
				"CryptoYN": "N",
				"mode": "",
				"NOW_TASK_INFO": scwin.nowTaskInfo	
			},						/ Sub Info(1. ServiceID, 2. URL: 호출할 URL, 3. CryptoYN: 암호 적용여부) ■■	
			inputData,		// 전송할 INPUT 데이타 ■■	
			callbackFn		// 결과 콜백 함수 ■■
		};
	);
 
3. 조치: 이경일 부장이 서버단에서 수정 저리함
==============================================================================================================

- 제주은행 금융인증서 등록  
1. 테스트 폰으로 등록 ==> 로그인시에 휴대번호 유효성 오류 발생
==============================================================================================================

- 예금담보 대출(PLO03) 에서 9003번 전문 호출 문제
1. 이유석 과장이 골드윈 PC 에 9003번 전문 4번 호출을 결함으로 등록
 1) 박건우 대리가 상품가입안내(/T20001_01_PL0003_01.xml) 파일에서 금리조회 등 대출 관련 전문 호출 
  가.9000번 전문: 정보계 연결할 때 반드시 호출해야 하는 전문(정보계연결거래관리)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.12.04(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 22:20 ==> 충주 당의원 입원 2주년, 토요일(내일) 11시에 빌딩 바닥 청소한다고 근무 못 하게 함 

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★] 
- 만 19세 이상 확인 전문(TASK_COMMF_9223) 전문_☆☆ 호출 에러
1. 현상: "String index out of range 13"  
[/TL0020_01_m.xml] [service_callback()] ==> [TEST_70] [콜백] ■ [JSON stringify(rtnJSON)]["ERR_CODE": "E"
"ERR_MSG": "String index out of range 13", "OUT_DATA": "", "CyptoYN":"", "RTN_CODE": "-9999",
"RTN_MSG":"오류발생", "OUT_DATA_TYPE": "}
2. 원인: 금융인증서 로그인(TZ0010)에서 주민번호를 못 받아 와서 나는 에러
--------------------------------------------------------------------------------------------------------------------

- 만 19세 이상 확인 전문(TASK_COMMF_9223) 전문_☆ 호출 에러
1. 현상: MFTXERR_OPMS923040
[/TL0020_01_m.xml] [service_callback()] ==> [TEST_70] [콜백] ■ [JSON stringify(rtnJSON)]["ERR_CODE": "E" 
"ERR_MSG": "에러메세지 미등록,전산부로 연락하세요.", "OUT_DATA": "", "CyptoYN":"", "RTN_CODE": "MFTXERR_OPMS923040",
"RTN_MSG": "에러메세지 미등록,전산부로 연락하세요." 
2. 원인: 잘못된 주민번호를 넣어서 나는 에러(9504210000000 입력)
3. 조치:
@Override
public Map start() throws Exception {
	log.debug(/TASK_COMM_9223.java] [start()] ==> [TEST_01] [만 19세 이상 확인 전문(TASK_COMMF_9223) 전문_☆☆ 처리 START] [TelelD]"+ TelelD );
	
	if("MFSV_9223".equas(this.street) {		// 고객 기타 정보 조회(만나이 확인) 
		String sSsn = "";
		String USE_INFO.= this.getSessionData(Config.XTOUCH_SESSION_LOAN_USER_NO);	// 여신 세션에서 주민번호 가져오기
		log.debug("[/TASKCOMMF_9223.java] [start()] ==> [TEST_02] [여신 세션에서 주민번호]"+ USER_INFO);
  
		if(USE_INFO != null &&!"".equas(USERINFO) [	 // 여신 세션에서 주민번호가 존재하면
			String USERINFO_2 = USE_INFO.$plit("@"); 	// 주민번호만 가져오기 
			sSsn = USERINFO_2.substring(0, 13);	// 주민번호 
 
			nextInData.put("ssn", sSsn);		// 주민번호 재설정 
		}
		else
		{ 
			nextInData.put("ssn", useInfo.getUSER_NO());		// 주변 재설정 추가(금융인증서 로그인 후) ■■
			log.debug(/TASK_COMM_9223.java] [start()] ==> [TEST_41] [주민번호]"+ useInfo.getUSER_NO() );
		} 
		log.debug(/TASK_COMM_9223.java] [start()] ==> [TEST_91) [전송할 INPUT 데이타_■■] [nextInData]"+ nextInData );
	}
	
	return nextInData;
}
==============================================================================================================

- 결함 확인(Gold Win 내부망 PC에서)
1. 현주경 계장(김준 대리 후임)
 1) 대부분[공통] 상품가입안내(/TZ0001_01_P10001_01.xml) 문제
==============================================================================================================

- 04. 전자서명 약관동의 및 확인(신용 대출) (TL0230) 화면 수정 
scwin.onoageload = function() {  
	gcm.log("/TL0230_01_m.xml] [onoageload()] ==> [TEST_01] [04. 전자서명 약관동의 및 확인(신용 대출) (TL00220, 01) 화면 로딩....@@@]" );
	
	scwin.fn_callService("TASK_TL0230_00001", scwin.service2195_calback);		// (엘리트론) (TASK_TL0230_00001, 2195) 전문 호출 
	scwin.loanSincglnfo = xTouchLibUi.getTaskData("TL0210", $p);		// 신용 대출 내역 확인 TASK
	xTouchLibUi.uiChange(scwin.nowTaskInfo, "SUB1", $p);		// 04-1. 약관동의 화면 셋팅[R]
}

/** .ES fnSetFillData 1. 대출거래약정서(가계용) **/ 
scwin.fn_SetFilData3300007 = tunction() {   
	gcm.log("/TL0230_01_m.xml] [fn_SetFilData3300007()] ==> [TEST_01] [1. 대출거래약정서(가계용) SetFilData 처리]" );
	
	var v신청금액한글 = "";  
	var v신청금액숫자 = "";    
	var loanSincglnfo_신청금액 = com trim(scwin.loanSincglnfo.sincg_amt);   // 04. 신청금액

	if(!com.isNull(loanSincglnfo_신청금액)I { 
		v신청금액한글 = scwin.tranAmtTokor(Number(lloanSincginfo_신청금액));
	}

	if(com isNull(loanSincolnto_신청금액) {
		v신청금액숫자 = com.tranComma(Number(lloanSincginfo_신청금액));
	}
};
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.12.05(토) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 21:30 ==>  

- 주말[★]
07:40 기상
08:11 조식
08:30 실내 자전거 타기
09:30 종료
09:40 인터넷 서핑
12:00 중식
12:20 루옌(수종) 놀러감
12:30 실내 자전거 타기
13:30 종료
13:40 인터넷 서핑
18:11 석식
22:20 루옌(수종) 귀가
23:00 샤워 ==> 체중: 74.1kg
23:45 인슐린 약 교체(276U, 19U 남음)
23:30 취침
==============================================================================================================
 
- 아이패드2 업그레이드 안됨
1. 아이패드2(KCC-CMM-APA-A1416)에서 업그레이드가 최종 버전: iOS 9.3.5로 중단됨 ==> 최종 버전: iOS 9.3.5
2. 조치: OS 6.1.3나 OS 6.1.3나 iOS 8.4.1 다운그레이드 해야 함
=============================================================================================================
  
- 훨씬 쉬워진! iOS13/iPad OS 업데이트 방법 [침팬치도 가능한 방법]
https://youtu.be/e31izLEsAWA
1. http://www.3u.com/ 접속 및 다운로드
2. 3uTools 실행
3. 상단 메뉴 중 Flash & JB 선택
4. 하단 "Retain User's Data While Flashing" 체크박스 체크
5. 13beta 체크
6. 하단 Flash 클릭
7. 자동 다운 & 설치  
==============================================================================================================
 
- Apple ID(ipad: 아이패드2) 비밀번호 재설정
1. 아이패드 계정 ==> tamario@naver.com / tama3390A

- 아이패드 비밀번호 분실 시 암호 재설정하는 방법
==> http://hwsecter.tistory.com/1034
============================================================================================================== 

■■■■■■■■■■■■■■■■■■ 2020.12.06(일) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 08:00 ~ 21:30 ==>  

- 주말2[★]
07:40 기상
08:11 조식
08:30 실내 자전거 타기
09:30 종료
09:40 인터넷 서핑
12:00 중식
12:30 실내 자전거 타기
13:30 종료
13:40 인터넷 서핑 ==> Memo(2020.11, 16 ~ 30) 타이핑
14:20 루옌(수종) 보라매 공원에 놀러감
18:11 석식
18:40 실내 자전거 타기
19:40 종료
20:20 루옌(수종) 귀가 
23:00 취침
==============================================================================================================
 
- 당뇨환자, 실명 막으려면 이렇게 해라![당뇨 망막병증, 라이프]
https://youtu.be/9CfzlgxEakQ
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.12.07(월) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 21:30 ==> jWEB 통합 테스트 2주차), 코로나 19 사회적 거리두기 2.5 단계 (9시)
								, 중식(11:50, GS25 영동점(QR 코드 인증, 취식 금지), 김밥 구입해서 공원에서 먹음)

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 엘리트론PLO001) (신용대출) 테스트
1. 아이폰에서 성명 입력 안됨
<input id = "ib_name" ev:onfocus="" adustMalength="false" style="" inirvalue ="" class="wqp_ipt name"
	allowChar="가-? a-z A-Z" maxBytelLength="40° mandatory="true"> 
</xf input> ==> 수정 처리 @@@ 
<input id="idx_name" adustMaxLength="fase" style =""inirvalue ="" class="wqp_ipt name"
	allowChar= "-@ ㅏ-ㅣ 가-? a-z A-Z" maxBytelLength="40° mandatory="true" ev:onfocus="scwin.ibx_name_onfocus"> 
</xf input>> 
==============================================================================================================
 
- 금액 ,포함하여 입력 
1. 09-1. 대출신청 정보(TL0120, 01) 입력 화면에서 대출 받으실 금액(ibx_InPtAt)도 같이 방식으로 수정 
<xf: input id="ibx_sincgAmt" ev:onfocus="" neatTabID="" adiustMaxLength="fase" style=""
	class="wa_ipt" initvalue=" di$piayformat="" datalype="number" maxlength="11" allowChar="0-9" placeholder="100만원 ~ 1,000만원" type="tel" 
	ev:onblur="scwin.ibx_sincpAmt_onblur" ev:onkeyup="scwin.ibx_sincpAmt_onkeyup"> 	<!--// 신청금액(숫자) //-->  
</xf input>
==============================================================================================================
 
// 신청금액 금액 bur 처리 이벤트
scwin.ibx_sincgAmt_onblur = ftunction(e) ( 
	gcm.log("[/TL0190_01_s1.xm] [ibx_sincgAmt_onblur()] ==> [TEST_01] [신청금액 금액 blur 처리 이벤트]");

	var sSalary_03 = ""; 
	var sSalary = ibx_sincgAmt.getValue().replaceAll(',', "");	// 신청금액

	if(sSalary.length > 0 && Number(sSalary) ==  0) { 
		ibx_sincgAmt.setValue("");	// 신청금액 
		return;
	}

	if(Number(sSalary) > 100000) { 		// 10만원 초과 이면 
		sSalary_03 = sSalary.substring(0, sSalary.length - 4) +"0000";	// 대출 받으실 금액  ==> 10만원 단위로 강제 입력 처리	  
		ibx_sincgAmt.setValue(sSalary_03);	// 신청금액
	}
	// gcm.log("[/TL0190_01_s1.xm] [ibx_sincgAmt_onblur()] ==> [TEST_41] [신청금액]"+ sSalary +"[신청금액_길이]"+ sSalary.length );
	
	if(sSalary == "") {  
		ibx_sincgAmt.setValue("");	// 신청금액 
		return;
	}
	 
	if(sSalary.length > 3) {  	// 3자리 이상 이면 
		ibx_sincgAmt.setValue(scwin.setComma(sSalary));		// 금액 콤마 삽입
	} 
	gcm.log("[/TL0190_01_s1.xm] [ibx_sincgAmt_onblur()] ==> [TEST_91] [신청금액]"+ ibx_sincgAmt.getValue() );
}; 

// 신청금액 금액 입력 이벤트
scwin.ibx_sincgAmt_onkeyup = function(e) { 
	gcm.log("[/TL0190_01_s1.xm] [ibx_sincgAmt_onkeyup()] ==> [TEST_01] [신청금액 금액 입력 이벤트]");

	scwin.checkMoney();	 // 신청금액 체크
};

// 신청금액 체크
swin.checkMoney = function() {
 	gcm.log("[/TL0190_01_s1.xm] [checkMoney()] ==> [TEST_01] [신청금액 체크] [신청 가능 금액(대출한도)]+" swin.sincgPosibAmt 
		+"[신청금액]+" ibx_sincgAmt.getValue() +"[신청금액_길이]"+ ibx_sincgAmt.getValue().length );
	
	var sSalary = ibx_sincgAmt.getValue();		// 신청금액
	
	if(sSalary.length > 0 &&Number(sSalary) == 0) {
		ibx_sincgAmt.setValue("");	// 신청금액 
		return;
	}
	
	var sSalary_02 = sSalary.replaceAll(',', "");		// 금액 콤마 삭제
	var sSalary_04 = sSalary.replaceAll(',', "");
	gcm.log("[/TL0190_01_s1.xm] [checkMoney()] ==> [TEST_02] [신청금액]+" sSalary_02 +"[신청금액_길이]"+ sSalary_02.length );
	
	if(Number(sSalary.replaceAll(',', "")) > 100000) {     // 10만원 초과이면 
		sSalary_04 = sSalary_02.substring(0, sSalary_02.length - 4) +"0000";	// 대출 받으실 금액 ==> 10만원 단위로 강제 입력 처리
		ibx_sincgAmt.setValue(sSalary_04);		// 신청금액
	}
	gcm.log("[/TL0190_01_s1.xm] [checkMoney()] ==> [TEST_53] [신청금액]+" sSalary_02 +"[신청금액_길이]"+ sSalary_02.length );
	
	if(sSalary_04.length > 3) { 	// 3자리 이상이면
		ibx_sincgAmt.setValue(scwin.setComma(sSalary_04));		// 금액 콤마 삽입
	}
	gcm.log("[/TL0190_01_s1.xm] [checkMoney()] ==> [TEST_91] [ibx_sincgAmt]"+ ibx_sincgAmt.getValue() ); 
};

scwin.setComma = function(val, txt) {
	gcm.log("[/TL0190_01_s1.xm] [setComma()] ==> [TEST_01] [금액 콤마 삽입] [val]+" val +"[val.length]"+ val.length );
	
	var rtnValue = ""; 
	var regexp = /(-?[0-9]+)([0-9]{3})/;
	var num = String(val).replace(/\[^\d]/g, "");
	num = num.replaceAll(',', "");		// 금액 콤마 삭제
	var cvtNum = Number(num);
	num = String(cvtNum);
	
	whie(regexp.test(num)) { 
		num = num.replace(regexp, "$1$2");		// 금액 콤마 삽입 처리 
	}
	
	rtnValue = num;
	if(txt != nul) rtnValue = num +""+ txt; 
	gcm.log("[/TL0190_01_s1.xm] [setComma()] ==> [TEST_91] [rtnValue]"+ rtnValue );
	
	return rtnValue;
};
=============================================================================================================
 
- (엘리트론) 대출신청(TASK_TL0190_00001, 2193) 전문_★★_호출  ==> 박소영 계장 계정으로 로그인
1. 현상:
[/TL0190_01_s1.xm] [(service_callback()] ==> [TEST_70] [콜백] ■ [JSON.stringify(rtnJSON)] {"ERR_CODE":"E"
, "ERR_MSG":"4304 모바일대출 기신청건이 있어 추가신청이 불가합니다.", "OUT_DATAT":"", "CryptoYN":"","RTN_CODE":"_METXERR_0P52"
, "RTN_MSG":"4304 모바일대출 기신청건이 있어 추가신청이 불가합니다.", "OUT_DATA_TYPE":""}
2. 원인: 기 신청건 존재
3. 조치: 현업에 요청함
=============================================================================================================
 
- (엘리트론) 대출신청(TASK_TL0190_00001, 2193) 전문_★★_호출 ==> 고유진 과장 계정으로 로그인
1. 현상:
[/TL0190_01_s1.xm] [(service_callback()] ==> [TEST_51] [대출진행상태] [기대출 거절코드] ■ [JSON.stringify(t_loanRegist)] {"since_no":"0712000382"
,"stat_cd":"0", "loan_max":"0","loan_amt":"0","gmri_kind":"금융채6개월","gmri_jeokyg":"0","bi_sayucd":"D999","sincg_amt":"1000000","loan_gigan":"",
"ibx_deci_mth":"", "sanghw_mth":"0"}	
2. 원인:  
3. 조치: 현업에 요청함
=============================================================================================================

- 스크래핑 관련 회의(16:00, 회의실, (주)codef 담당자) ==> (주)희남[코드에프] 
1. (주)codeF 개발 담당자와 협의
 1) 우리 서버에서 ID 생성하여 codef 서버에 덤짐 ==> 0.5초 이내에 실행
 2) codeF 서버에서 우리 서버로 데이타 일괄로 던짐
 3) 우리 서버에서 codeF 서버에 건별로 스크래핑 요청 데이타 셋팅해서 던짐 ==> 2분 이내에 실행
=============================================================================================================

- 결함 처리(Gold Win 내부망 PC에서) ==> 완료[♥♡]   
1. 현주경 계장(김준 대리 후임) 
 1) 대부분[공통) 상품가입안내(/T20001_01_PL0001_01.xml) 문제
=============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.12.08(화) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 21:00 ==> jWEB 소스 프리징(10시, 1차), 중식(11:40, 파이 2개 (혈당 59: 저혈당, 어지러움)

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 엘리트론(PLO001) [신용 대출] 테스트 
==============================================================================================================

- alert 팝업 화면 높이 설정
var opt = {"width": "350", "height": "210"); 
gcm.log("[/TL0001_01_m.xml] [onoageloado()] ==> [TEST_41] [JSON.stringify(inputData)]"+ JSON.stringify(inputData) ); 

com.confirm("현재 고객님은 이미 대출 신청 중인 상품이 있어 한도조회/대출실이 불가합니다. <br/> 상품명 모바일 열리트로 <br/>
신청중인 대출 신청내용을 확인하시겠습니까?", scwin.fn_confirm_calback, opt);
return;
==============================================================================================================

- 09. 대출신청 정보(TL0120, 01) 화면 수정 
1. 전자서명 에러 수정
scwin.onpageload = function() {  
	gcm.log("[/TL0120_01_m.xml] [onpageload()] ==> [TEST_01] [09. 대출신청 정보(TL0120) 화면 로딩...@@@]" );
  
	xTouchLibUi.init(scwin.nowTaskInfo, $p);	 // xTouch Task 초기화 및 현재 TASK 정보 셋팅
	
	scwin svID = "TASK_COMME_2173";
	scwin.fn_callService("TASK_COMMF_2173", scwin.service_callback);		// 01. 담보예금계좌 조회(TASK_COMMF_2173) 전문 호출(R)
};

// 예금담보 정보(본거래) (부모 화면)
scw.callSvc_llSavAcMainInto = function(inputData) (
	gcm.log("[/TL0120_01_m.xml] [callSvc_llSavAcMainInto() ==> [TEST_01]" );
	
	scwin.llSavAcMainData = inputData ;	// 받아온 예금담보 정보(본거래) Data
	gcm.log("[/TL0120_01_m.xml] [callSvc_llSavAcMainInto() ==> [TEST_42] (받아온 예금담보 정보(본거래) Data]"+ JSON.stringify(scwin.llSavAcMainData) );
	
	scwin.fn_callService("TASK_TL0120_00003", scwin fn_callback.certSign);		// 52. 전자서명 원운 생성 전자서명 잡업) [R)  
	// scwin.fn_callService("TASK_COMMF_2171".x scwin.service2171_callback);	 // 예금보 정보(본거래) 전문 호출(저장): (전자서명 제외하고 테스트)
};

// 전문 호출 
scwin.fn_callService = function(svID, callbackFn) { 
 
	if(svID == "TASK_TL0120_00002") 	// 53. 예금담보대출 본거래 전문 호출 이면
	{ 
		gcm.log("[/TL0120_01_m.xml] [fn_callService() ==> [TEST_53] [53. 담보담보대출 본거래(TASK_TL0120_00002, 2171) 전문_★★_호출] [svID]"+ svID );
		
		var inputData = {  	// IN_META INF0 등록[전문] (서비스등록관리 화면에서) @@@ 
			"CERT_SIGN_INFO": scwin.cert_sign_info,		// 00. 전자서명값
			"llSavAcN": com.trim(scwin.llSaveAcMainData.llSavAcN),	// 01. 담보예금계좌번호
			"llAcPin": com.trim(scwin.llSaveAcMainData.llAcPin),		// 02. 담보계좌비밀번호(키보드 보안 처리)
			"lnPtAt": com.trim(scwin.llSaveAcMainData.lnPtAt),			// 03. 대출신청금액
			"rcpAcN": com.trim(scwin.llSaveAcMainData.rcpAcN),		// 04. 입금계좌번호
			"cvgSffN": "",				// 05. 권유직원번호
			"dcdcNStuApF":  "",	// 06. 설명서/약관수령여부
			"emAr": "",					// 07. 이메일 주소
		}
	}
};
==============================================================================================================

- 제주은행 금융인증서 재등록 
1. 로그인시에 휴대폰번호 유효성 오류 발생(원인: SBank(앱)에서 회원 가입해서 핸드폰번호 입력 안 함) 
 1) 조치: : 금융인증서 등록 정보 삭제(이경일 부장) ==> 금융인증서 재가입(비대면인증[면허증], 계좌등록)
==============================================================================================================

- 제주은행 보안성 심사 결과 나옴
1. 결함 건수 959건: 비상 걸림
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.12.09(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:30 ==> 주간보고(23주차)서 작성(14시)

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 엘리트론(PL0001) 신용 대출 테스트
- 04 전자서명 약관동의 잇 확인[신용대출] (TL0230, 01) 화면 수정
scwin onpageload = function() { 
	gcm.log("[/TL0230.xml] [onpageload()] ==> [TEST_01] [04. 전자서명 약관동의 및 확인[신용대출] (TL0230) 화면 로딩...@@@]" ); 
  
	xTouchLibUi.init(scwin.nowTaskInfo, $p);	 // xTouch Task 초기화 및 현재 TASK 정보 셋팅
 
	scwin.loanSincglnfo = xTouchLibUi.getTaskData("TL0220", $p);		// 01. 대출신청 내역 확인 TASK
	
	// 01. 대출신청 내역 확인 dma 셋팅 
	dma_0210.set("sinco_no", scwin.loanSincalnto sincg_no);	// 1. 신청번호 
	dma_0210.set("ib_acctno", scwin.loanSincolnto.ib_acetno);	 // 2. 신청번호 	
	dma_0210 set("inji_mth", scwin.loanSincglnto.inji_mth); 		// 3. 인지세납부 방식
	gcm.log("[/TL0230.xml] [onpageload()] ==> [TEST_13] [04. 전자서명 약관동의 및 확인[신용대출] (TL0230) 화면]
		[대출신청 내역 확인 TASK] "+ JSON.stringify(scwin.loanSincglnfo) );
		
	xTouchLibUi.uiChange(scwin.nowTaskInfo, "SUB1", $p);	// 04-1. 약관동의 화면 세팅[R]
};

// 전문 호출 서비스
swin fn_callService = function(svID, callbackFn) { 
	gcm.log("[/TL0230_01_m.xml] [fn_callService()] ==> [TEST_01] [02. (엘리트론) 대출실행(TASK_TL0230_0001, 2195) 전문_★★_호출] [svID]"+ svID );
	
	var inputData = {  	// IN_META INF0 등록[전문] (서비스등록관리 화면에서) @@@ 
		"since_no": dma_0210 get("since no");		// 1. 신정번호
		"ib_acctno": dma_0210.get("ib_acctno"), 	// 2. 입금계좌번호
		 "inji_mth": dma_0210 get("inji_mth");		// 3. 인지세납부 방식
	}
	
	com.exeService (
			{
				"ServiceID": svID,
				"URL": "_XTOUCH_INTERFACE_",
				"CryptoYN": "N",
				"mode": "",
				"NOW_TASK_INFO": scwin.nowTaskInfo	
			},						/ Sub Info(1. ServiceID, 2. URL: 호출할 URL, 3. CryptoYN: 암호 적용여부) ■■	
			inputData,		// 전송할 INPUT 데이타 ■■	
			callbackFn		// 결과 콜백 함수 ■■
		};
	);
};  
==============================================================================================================

<w2:dataCollection baseNode="map">  
	<--// 01. 대출신청 내역 확인 dma //-->  
	<w2:dataMap baseNode="map" id="dma_0210">   
		<w2:keyInfo> 
			<w2:key id="ib_acctno" name="신청번호" dataType="text"></w2:key>
			<w2:key id="ib_acctno" name="입금계좌번호" dataType="text"></w2:key>
			<w2:key id="inji_mth" name="인지세납부 방식" dataType="text"></w2:key>
		 </w2:keyInfo>
	</w2:dataMap>  
 </ww2:dataCollection> 
==============================================================================================================

- 대출신청 정보(TL012001) 화면 수정 
scwin onpageload = function() {
	gcm.log("[/TL0120_01_m.xml] [onpageload()] ==> [TEST_01] [09. 대출신청 정보(TL0120) 화면 로딩...@@@]" ); 		 
	
	xTouchLibUi.init(scwin.nowTaskInfo, $p);	 // xTouch Task 초기화 및 현재 TASK 정보 셋팅 
	scwin.fn_callService("TASK_COMMF_2173", scwin.service_callback);		// 01. 담보예금계좌 조회(TASK_COMMF_2173) 전문 호출[R]
 };
 
// 예금담보 예비 정보(부모 화면)
scwin.callSvc_llSavAcInfo = function(inputData) {
	gcm.log("[/TL0120_01_m.xml] [callSvc_llSavAcInfo()] ==> [TEST_01]" );
 
	scwin.IISavAcData = inputData; 	// 받아온 정보예금계좌 Data(예비 정보) 
	dma_2171.setJSON(inputData); 	// 02. 예금담보대출 본거래 dma 데이타 셋팅 ■■■
	gcm.log("[/TL0120_01_m.xml] [callSvc_llSavAcInfo()] ==> [TEST_41] [INPUT데이타]"+ SON.stringify(scwin.IISavAcData) );
	
	scwin.fn_callService("TASK_TL0120_0001", scwin.service2170_callback);		// 04. 이자납입일 조회(예금담보대출 예비 거래) 전문 호출[저장] 
 };
 
// 예금담보 정보(본 거래) (부모 화면)
scwin.callSvc_llSavAcMainInfo = function(inputData) {
	gcm.log("[/TL0120_01_m.xml] [callSvc_llSavAcMainInfo()] ==> [TEST_01]" );
	
	scwin.llSavAcMainData = inputData;	 // 받아온 예금담보 정보 Data(본거래)  
	gcm.log("[/TL0120_01_m.xml] [callSvc_llSavAcMainInfo()] ==> [TEST_41] [받아온 예금담보 정보(본 거래) Data)]"+ SON.stringify(scwin.llSavAcMainData) );
	 
	scwin.fn_callService("fn_callService("TASK_TL0120_00003", scwin.service_callback);		// 52. 전자서명 원문 생성(전자서명 팝업) [R]
	// scwin.fn_callService("fn_callService("TASK_COMMF_2171", scwin.service2171_callback);	// 예금담보대출 예비 거래) 전문 호출[저장] (전자서명 제외하고 테스트)	
 };
 
// 전문 호출 서비스
swin fn_callService = function(svID, callbackFn) { 
	gcm.log("[/TL0230_01_m.xml] [fn_callService()] ==> [TEST_01] [02. (엘리트론) 대출실행(TASK_TL0230_0001, 2195) 전문_★★_호출] [svID]"+ svID );
	
	var inputData = {  	// IN_META INF0 등록[전문] (서비스등록관리 화면에서) @@@ 
			"CERT_SIGN_INFO": scwin.cert_sign_info,		// 00. 전자서명값
			"llSavAcN": dma_2171.get("llSavAcN"),		// 01. 담보예금계좌번호
			"llAcPin": dma_2171.get("llAcPin"),			// 02. 담보계좌비밀번호(키보드 보안 처리)
			"lnPtAt": dma_2171.get(".lnPtAt"),				// 03. 대출신청금액
			"rcpAcN": dma_2171.get("rcpAcN"),			// 04. 입금계좌번호
			"cvgSffN": "",				// 05. 권유직원번호
			"dcdcNStuApF":  "",	// 06. 설명서/약관수령여부
			"emAr": "",					// 07. 이메일 주소
		}
	}	
	com.exeService (
			{
				"ServiceID": svID,
				"URL": "_XTOUCH_INTERFACE_",
				"CryptoYN": "N",
				"mode": "",
				"NOW_TASK_INFO": scwin.nowTaskInfo
			},						/ Sub Info(1. ServiceID, 2. URL: 호출할 URL, 3. CryptoYN: 암호 적용여부) ■■	
			inputData,		// 전송할 INPUT 데이타 ■■	
			callbackFn		// 결과 콜백 함수 ■■
		};
	);
};
==============================================================================================================

<w2:dataCollection baseNode="map">  
	<--// 02. 예금담보대출 본거래 dma(받아온 담보예금계좌 Data(예비 정보)) //--> 
	<w2:dataMap baseNode="map" id="dma_2171">   
		<w2:keyInfo> 
			<w2:key id="llSavAcN" name="담보예금계좌번호" dataType="text"></w2:key>
			<w2:key id="llAcPin" name="담보계좌비밀번호" dataType="text"></w2:key>
			<w2:key id="lnPtAt" name="대출신청금액" dataType="text"></w2:key>
			<w2:key id="rcpAcN" name="입금계좌번호" dataType="text"></w2:key>
			<w2:key id="cvgSffN" name="권유직원번호" dataType="text"></w2:key>
		 </w2:keyInfo>
	</w2:dataMap>  
 </ww2:dataCollection> 
==============================================================================================================

- /TASK_TL0120_00002 java 파일에서
1. 전자서명은 MFSV_2171에서 INPUT 데이타(nextInData)를 다시 입력 해줘야 nul 에러가 안 뜸
public class TASK_TL0120_00002 extends CommoninterfaceServiceAbstract ( 
	@Override
	public Map start() throws Exception {
		log.debug("[/TASK_TL0120_00002.java(start()] ==> [TEST_01] [신청 저장 및 결과 리턴(예금담보대출 본거래) 처리(TASK_TL0120_00002) 
			(전문_★★) 처리 START)] ■■■ [getTelelD]"+ this.getTelelD) );
	  
		Map nextInData = null; 		// start 서비스로 전송할 감
	  
		Map IN_DATA = this.getInputData();		// 입력 값 조회
	  
		this tempinData = this.getInputData();		// 최초 화면에서 넘어온 값 보관
	  
		switch(this.getTeleID) ( 
			case "MWEB_01_8YPASS":
				this.firstMap = IN DATA;
				nextInData = new HashMap();
				break; 
				
			case "MFSV 2171":
				nextInData = this.templnData;				
				nextInData = new HashMap();
				nextInData.put("CERT SIGN_INFO", this.firstMap.get("CERT_SIGN_INFO"));	// 00. 전자서명값
				nextInData.put("savAcN", this.firstMap.get("SavAcN"));	// 01. 담보예금계좌번호 
				nextInData.put("AcPin", this.firstMap.get("AcPin"));		// 02 담보계좌비밀번호(키보드 보안 처리) 
				nextInData.put("InPtAt", this.firstMap.get("InPtAt")); 	// 03. 대출신청금액  
				nextInData.put("rcpAcN", this.firstMao.get("'rcpAcN)");	// 04. 입금계좌번호
				nextInData.put("cvgSffN" this tirstMap.get("cvgSffN")); 	// 05. 권유직원번호 
				nextInData.put("dcdcNStuApF", this.firstMap..get("dcdcNStuApF")); // 06. 설명서/약관수령여부
				nextInData.put("emAr", this.firstMap..get("temAr"));		// 07. 이메일주소 
				break; 
 
			delault : throw new ResultException("NEXT TASK ID 값 설정 오류");
		}
		log.debug("[/TASK_TL0120_00002.java(start()] ==> [TEST_91] [전송할 INPUT 데이타] [nextInData]"+ nextInData );
		
		return nextInData; 
	}
}
==============================================================================================================

- 로그인 테스트
if(com getCertiCheck() == null &8 (com.getCertiCheck().USER_HP == "01030720898" || com.getCertiCheck().USER_HP == "01099014247")) {
// 핸드폰 번호가 진태만, 박소영 이면 
	gcm.log("[/TL0120_01_m.xml] [fn_callService() ==> [TEST_53] [성명]"+ com.getCertiCheck().USER_NAME +"[핸드폰 번호]"+ com.getCertiCheck().USER_HP );
	alert("[/TL0120_01_m.xml] [fn_callService() ==> [TEST_53] [성명]"+ com.getCertiCheck().USER_NAME +"[핸드폰 번호]"+ com.getCertiCheck().USER_HP );
}
==============================================================================================================

- 담보예금계좌 조회(TASK_COMM2173) 전문_★★_호출] [svID] TASK_COMMF_2173 전문 호출 에러 ==> 진태만 계정으로 로그인
1. 현상: 
[/TL0120_01_m.xml] [service_callback()] ==> [TEST_70] [콜백] ■ [JSON.stringify(rtnJSON)]{"ERR CODE":"E",
"ERR_MSG": null, "OUT_DATA": "", "CryptoYN", "", "RTN_CODE", "-9999", "RTN_MSG": "오류발생", "OUT_DATA TYPE": ""}  
1. 현상2:  java단에서  [/CommoninterfaceServiceController.java 파일에서)
Caused by java lang NumberFormatException For input string "   "
	at java lang Number FormatException forinputString(NumberFormatException java 65)

	// 기간 서비스 접근을 위한 서비스 호출 서비스 
	@Request Mapping(value = "/commoninterfaceService.do", method = RequestMethod.POST) 
	public @Re$ponseBody Map commoninterfaceService(@RequestBody Map inMap, HitpServletRequest request, HttpServietRe$ponse re$ponse)
  
	method = cis.getMethod("setMFSV_ID", String class);	 
	method.invoke(obj, teleIntoMap.get("TELE_ID"));
	
	method = cis.getMethod("startService");	// 02 startService*/MFSV SAMPLE java) 함수 호출 
	==> 2. 전문 보내기 ■■■ // 에러발생 지점 @
	Resutl MFSV_Reslut =  (Reslut)method.invoke(ojb);
}

2. 원인: 받아온 전문이 한 간씩 앞으로 나와서 SNALU번호(COM-SNA_LU)를 널로 셋팅되어서 에러 발생
- 진태만 로그 000000	 ■■■
debug(" I luchkMap gE , 0166202012091530509143832020021730000000   X0019853  JT2101030720898 KAO046661438P20
INFO: (Sent[0166202012091530509143832020021730000000  		X0019853 		JT2101030720898 KA0046661438P202012090002043
==============================================================================================================

- 받아온 데이타 분석(3개 로그인 결과 분석) ■
1234567890123456789012345678901234567890123456789★123456789012345678901 2345678901234567890123456789★
1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890
M6TX 36692020120917442391442450210217300000 		SYOUNG42					JJT2101030720898 SADO05901057P202012090002778
M6TX 88862020120918024091A42700210176000000		ECONKO00				JJT2101030720898 SA0005345277P202012090002838
M6TX 36692020120915305091438320210217300000 		X0019853				JT2101030720898 KA0046661438P202012090002043
--> 진태만 로그인 에러(JT2101030720898 전문을 한칸 앞에서 받아옴) ■■■	
==============================================================================================================
 
- 제주은행 금융인증서 재등록2
1. 금융인증서 서버가 변경 되었다고 함 ==> 금융인증서 재가입 비대면인증[면허증], 계좌등록) ==> 오늘 만 2번 등록함
==============================================================================================================
 
- 개발자 관련 회의(09:50, 회의실, 개발팀)
1. 포커스 이동 
2. 제주은행 보안성 심사 결과: 결함 건수 959건
3. 스크래핑(건강보험): 이번주까지 개발 완료
 1) 건강보험공단 납부확인서(NHIS_SCRAP_01), 자격득실확인서(NHIS_SCRAP_02)
==============================================================================================================

- 정장 바지 구입
1. (현대Hmall)[하프클럽/프랭키뉴욕]COOL없는스판슬랙스정장바지RI8$pA17, 가격: 15,420원
 1) 작음, 싼 티가 남, 마음에 안듬
http://www.enuri.com/detail.j$p?modelno=28140971
http://item.gmarket.co.kr/detailview/item.a$p?goodscode=1411733203
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.12.10(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:30 ==> 금융인증서 시행(9시, 금융결제원)

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★] 
- 0. 모바일웹뱅킹_단위테스트 1._2차_답변 사항 처리 
13-1. 예상금리 확인[신용 대출] (TL0180) 화면 확인
1. 김준 대리가 기존 기획 문서 수정하고 이영진 수석이 변경 후 나한테 통보 안 해줌
scwin.onpageload = function() {
	gcm.log("[/TL0180_01_m.xml] [onpageload()] ==> [TEST_01] [13-1. 예상금리 확인[신용 대출] (TL0180, 01) 화면 로딩...@@@]" ); 
	
	var exptGmriData = $p.parent().scwin.exptGmriData;	 // 예상 금리 정보 DATA 
	gcm.log("[/TL0180_01_m.xml] [onpageload()] ==> [TEST_02] [예상 금리 정보 DATA]"+ JSON.stringify(exptGmriData) );
	
	if(exptGmriData != null) {
		gcm.log("[/TL0180_01_m.xml] [onpageload()] ==> [TEST_11] [11. 전문 호출 결과 받아오기 ■■■■ ==> ]" ); 
		scwin gmri_gijun = exptGmriData gmri_gijun;	// 기준금리
		scwin.gmeigasan_min = experiData.gmri_gasan_min; 		// 최저가산금리
		scwin.gmri_gasan_max = exptGmriData.gmri_gasan_max:	// 최대가산금리
		scwin.gmripm_yn1 = exptGmriData.gmripm_yn1;		// 2. 우대여부1(급여이체 또는 연금수급이체 실적보유) ■■
		scwin.gmripm_yn1_rate = exptGmriData.gmripm_yn1_rate;		// 2. 우대여부1 감면금리(급여이체 또는 연금수급이체 실적보유) 
		scwin.gmripm_yn2 = exptGmriData.gmripm_yn2;		// 3. 우대여부2(아파트관리비 또는 공과금 자동이체) ■■
		scwin.gmripm_yn2_rate = exptGmriData.gmripm_yn2_rate;		// 3. 우대여부2 감면금리(아파트관리비 또는 공과금 자동이체)  
		scwin.gmripm_yn3 = exptGmriData.gmripm_yn3;		// 4. 우대여부3(최근3개월 신용카드 사용실적 50만원 이상) ■■
		scwin.gmripm_yn3_rate = exptGmriData.gmripm_yn3_rate;		// 4. 우대여부3 감면금리(최근3개월 신용카드 사용실적 50만원 이상)
		scwin.gmripm_yn4 = exptGmriData.gmripm_yn4;		// 5. 우대여부4(1년제 이상 거치식예금 또는 적립식예금) ■■
		scwin.gmripm_yn4_rate = exptGmriData.gmripm_yn4_rate;		//  5. 우대여부4 감면금리(1년제 이상 거치식예금 또는 적립식예금) 
	}
};
==============================================================================================================

- 04. 전자서명 약관동의 및 확인[신용 대출] (TL0230) 화면 수정
1. 가계대출 상품설명서 서명이 안되고 있음
scwin fnSetFillData5300036 = function(tillData) { 
	gcm.log("[/TL0230_01_m.xml] [fnSetFillData5300036()] ==> [TEST_01] [2. 가계대출 상품설명서 SetFilData 처리]" ); 
};
==============================================================================================================

-(엘리트온)예상한도조회 (TASK-TL0160 00001) 전문 에러 
1. 현상: 
[/TL0160_01_m.xml] [service_callback()] ==> [TEST_01] [콜백] ■ [JSON.stringify(rtnJSON)]{"ERR CODE":"E",
"ERR_MSG": "4001 rclips 조회오류!!!", "OUT_DATA": "", "CryptoYN", "", "RTN_CODE", "_METXERR_00817"
, "RTN_MSG": "4001 rclips 조회오류!!!"", "OUT_DATA TYPE": ""}  
2. 원인: 정보계에서 대외계로 나가는 데이타가 잘못 되어 나는 에러 
3 조치: 정보계에서 데이타를 수정해줘야 한다고 함(이영진 수석 휴가: 처리 못함)
==============================================================================================================

- 서버 재시작 안됨
1. wbst wbwn 명령어를 쳤는데 "process is already running !!!"가 나타날  ==> 서버가 안 죽음(박소영 계장에게 처리 요정해야 함) 
(weblogic@ijmbtsad1a ~]$ wbst
Startup Error "webbank1_1" process is already running !!!
==============================================================================================================

- Websquare eclipse에서 화면 확대, 축소 단축키
1. 화면 확대: Ctrl ++, 화면 축소: Ctrl --
==============================================================================================================

- 금융인증서 발급(21시, 핸드폰으로 제주은행 앱(JBank)에서 발급)
1. 제주은행 입출금 계좌: 50-01-326658, 예금주: 진태만, PW: 03*9*0
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.12.11(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:30 ==> 중식(11:30, 보쌈 정식[반가 식당], 개발팀: 이광철 이사가 쏨), 송하은 부장(퍼블 팀장) 철수(15시)

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 스크래핑 처리 ==> 테스트 폰에서 진태만 금융인증서로 스크래핑 처리 완료 ==> 완료[♥♡] 
1. 스크래핑 DB 조회(기존 이력 존재 여부 체크)
 1) 한 달 이전 이면: DB에서 스크래핑 정보 가지고 옴(AS IS: 최근 1개월은 유예기간으로 지정) ==> 기능 구현 안함
2. 스크래핑 조회 기간 1년으로 설정 후 조회
 1) 12건이 아니면 ==> 조회 기간 재설정 후 다시 조회(AS IS) ==> 기능 구현 안함 
 2) 조회 기간 최근 6개월으로 설정하라고 이유석 과장이 요청항
==============================================================================================================
 
- 10-1. 서류 자동발급/조회 (스크래핑) 화면 수정 
scwin.onpageload = function() { 
	gcm.log("[/TL0170_01_s1.xml] [onpageload()] ==> [TEST_01] [10-1. 서류 자동발급/조회 (스크래핑) 화면 로딩...@]" ); 
	
	var nowDt = com.date.getCurrentServerDate().substring(0, 4) + com.date.getCurrentServerDate().substring(4, 6) 
		com.date.getCurrentServerDate().substring(6, 8);	// 오늘
	var addedMMDate = com.date getAddedMMDate(nowDt, -6);	// 현재 날짜로부터 입력한 숫자의 과거 또는 미래일자를 계산
	scwin.srchStartDt = addedMMDate.substring(0, 4) + addedMMDate.substring(4, 6);	// 조회 시작 년월(6개월 전)
 
	var addedDDDate = com.date getAddedMMDate(nowDt, -30);	// 현재 날짜로부터 입력한 숫자의 과거 또는 미래일자를 계산
	scwin.srchEdnDt = addedDDDate.substring(0, 4) + addedDDDate.substring(4, 6);	// 조회 종료 년월(1달 전)
	
	if(com.getCertiCheck() != null && (com.getCertiCheck().USER_HP == "01030720898"
	  || com.getCertiCheck().USER_HP == "01099014247) { 	// 핸드폰 번호가 진태만, 박소영 이면  
		alert("[/TL0170_01_s1.xml] [onpageload()] ==> [TEST_31_21] [01. 스크랩ID 생성 정보 호출[R]] -->
			[성명]"+ com.getCertiCheck().USER_NAME +"[조회 시작 년월]"+ scwin.srchStartDt +"[조회 종료 년월]"+ scwin.srchEdnDt ); 
		
		scwin.fn_callService("TASK_TL0070_00001", scwin.service_callback);	// 01.스크랩 ID 생성 정보 호출[R]  
		==> com. popupList. POP_SCRAP_01();	// 00-1. 스크래핑 팝업 화면 호출
	}
	else
	{  
		// scwin.fn_scracping();		// 스크래핑 결과 TEST ■■■■■ ===> TEST @@@ ===>
		scwin.fn_callService("TASK_TL0070_00001", scwin.service_callback);		// 01.스크랩 ID 생성 정보 호출[R]  
		==> com. popupList. POP_SCRAP_01();	// 00-1. 스크래핑 팝업 화면 호출 
	}
};

scwin.btn_confirm_onclick = function() {  
	gcm.log("[/TL0170_01_s1.xml] [btn_confirm_onclick()] ==> [TEST_01] [서류 제출 버튼 클릭 이벤트]" ); 
	
	// 스크래핑 문서 생성 후 스크래핑 관련 공동 팝업 호출 
	var inputData = {
		SCRAP_ID : scwin.SCRAP_ID,	// 스크랩서버ID 
		nowTaskInfo :  $p.parent().scwin.nowTaskInfo
	}
	gcm.log("[/TL0170_01_s1.xml] [btn_confirm_onclick()] ==> [TEST_02] [JSON.stringify(inputData)]"+ JSON.stringify(inputData) ); 
	
	com.popupList.POP_SCRAP_01(inputData, 		// 00-1. 스크래핑 팝업 화면 호출 ==> 스크래핑 처리 ■■■■
		function(rtnValue) {	  
			gcm.log("[/TL0170_01_s1.xml] [btn_confirm_onclick()] ==> [TEST_51] [팝업 닫기] [결과값] "+ JSON.stringify(rtnValue) ); 
		
			if(rtnvalue.RTNCD =="OK") {	 	// 정상 처리 성공 이면
				gcm.log("[/TL0170_01_s1.xml] [btn_confirm_onclick()] ==> [TEST_52] [스크래핑 정보 DB 조회 전문 호출] ==> TEST @@@ ==>] @@@ "  ); 
				
				// scwin.fn_scracping();		// 스크래핑 결과 TEST ■■■■■ ==> TEST @@@ ==>
				scwin.fn_callService("NOTASK_COMMW_0008", scwin.serviceSCDB_callback);		// 스크래핑 DB 조회 전문 호출[R]  ==> TEST @@@ ==>
			}
		}
	};
};

// 전문 호출
scwin.fn_callService(svID, callbackFn) {  
	gcm.log("[/TL0070_01_s1.xml] [fn_callService() ==> [TEST_11] [스크래핑 정보 DB 조회(NOTASK_COMMW_0008) 전문_★★_호출] [svID]"+ svID );
 
	var inputData = {		// IN_META_INFO 등록[전문] (서비스 등록 관리 화면에서) @@@@
		"SCRAP_ID": scwin.SCRAP ID 					// 1. 스크랩 ID
		, "COMM_START_DATE": scwin.srchStartDt 	// 2. 조회 시작 년월
		, "COMM_ENDT_DATE": scwin.srchEdnDt		// 3. 조회 종료 년월
		, "job_group": scwin.job_group 	 	/	/ 4. 직군(1:공무원, 2:대기업, 3:사립학교 교직원, 4:군인, 5:기타) 
	}	
	
	com.exeService (
		{
			"ServiceID": svID,
			"URL": "_XTOUCH_INTERFACE_",
			"CryptoYN": "N",
			"mode": "",
			"NOW_TASK_INFO": scwin.nowTaskInfo	
		},						// Sub Info(1. ServiceID, 2. URL: 호출할 URL, 3. CryptoYN: 암호 적용여부) ■■
		inputData,		// 전송할 INPUT 데이타 ■■	
		callbackFn		// 결과 콜백 함수 ■■
	}; 
}; 
 
// 전문 호출 결과 콜백
scwin.service_callback = function(rtnJSON) {
	gcm.log("[/TL0170_01_s1.xml] [service_callback()] ==> [TEST_01] [콜백] [스크래핑 정보 DB 조회(NOTASK_COMMW_0008) 
	전문_★★_호출] [ERRO_CODE]+ rtnJSON.ERRO_CODE ); 

   if(rtnJSON.ERRO_CODE == "S") {	// 스크래핑 문서 생성 후 스크래핑 관련공통 팝업 호출 
		gcm.log("[/TL0170_01_s1.xml] [service_callback()] ==> [TEST_51] [JSON.stringify(rtnJSON.OUT_DATA)]"+ JSON.stringify(rtnJSON.OUT_DATA) ); 
		
		if(scwin.job_group != "" && scwin.job_group == "1") avgCnt = 6: else   avgCnt = 12;		// 직군이 공무원 이면(avgCnt = 6)
		
		var v_gal_aqt_dt = "";	// 02. 입사일(자격득실 확인서 취득일) ===> TEST @@@ ===> ■■■
		
		if(rtnJSON.OUT_DATA != null) {  	// 스크래핑 결과가 존재하면	
			v_incomeavg = rtnJSON.OUT_DATA.HEPAY_AVG_AMT;	  		// 01. 평균 납부보험료 ■■■
			v_gal_aqt_dt = rtnJSON.OUT_DATA.COMM_START_DATE;		// 02. 입사일(자격득실 확인서 취득일) ■■■	  
		}
 
		var incomeavg = parseInt(v_incomeavg);		// 01. 평균 납부보험료
		
		var incomeavg = parseInt(v_incomeavg) / avgCnt;		// 01. 평균 납부보험료
		
		if(com.getCertiCheck() != null && (com.getCertiCheck().USER_HP == "01030720898"
		  || com.getCertiCheck().USER_HP == "01099014247) { 	// 핸드폰 번호가 진태만, 박소영 이면  
			alert("[/TL0170_01_s1.xml] [service_callback()] ==> [TEST_54] [01. 스크랩ID 생성 정보 호출 콜백[R]] -->
				[01. 평균 납부보험료]"+ v_incomeavg +"[ 02. 자격득실 확인서 취득일]"+ v_gal_aqt_dt +"[직군]"+ scwin.job_group
				+"[평균 수량]"+ avgCnt +"[평균 평균 납부보험료]"+ incomeavg+"[01. 연간소득금액"+ scwin.fnNHISAnnualncomel(v_incomeavg) );  
		}
		
		var inData = {	 
			"annual_income":  ""+ scwin.fnNHISAnnualncomel(v_incomeavg) 		// 01. 연간소득금액
			, "gal_aqt_dt" : v_gal_aqt_dt;		// 02. 입사일(자격득실 확인서 취득일)
		}
		
		scwin.nextTask(inData, {}, {"CHK":"NEXT"});	// 다음 Task 함수 호출 ==> 08, 대출한도 조회 결과[대출] (TL0080, 01) 화면 호출 
	}
};
============================================================================================================

- 포커스 이동 처리 
1. 샘플 /TU002001_sl xml 파일에서
scwin.onpageload = function) { 
	gcm.log("[/TL0190_01_s1.xml] [onpageload()] ==> [TEST_01] [14-1. 신청정보 입력 (신용 대출] (TL0190) 화면 로딩...@]" ); 
	
	// 포커스 이동 처리 
	var enterList = {
		[
			bx_sinceAmt,			// 컴포넌트(신청금액)
			0,							 	//	컴포넌트의 길이 0이면 blur 1이상이면 keyup 
			function(evt) {  		// 콜백 함수
				com.scrollCenter(ibx_loan_gigan)	// 필수 (대출기간) 
				setTimeout(function() {ibx_loan_gigan, focus();},100) 	// 필수(대출기간)
			}
		]
	}
	com enterMove(enterList);
	
	gcm.log("[/TL0190_01_s1.xml] [onpageload()] ==> [TEST_91] [서버일자]"+ scwin.nowSystemDtDD ); 
};
============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.12.12(토) 작업 ■■■■■■■■■■■■■■■■■■
--->07:30 ~ 20:00 ==> 주말 출근(07:30), 르카프 운동화 깔창(왼쪽 발)이 구멍남(다이소에서 천원짜리 깔창 구입(운동화에 깔창 총 3개 설치])

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 엘리트론 STEP1(PLO001) [신용 대출] 수정
==============================================================================================================
 
- 스크래핑 수정
--스크래핑 요청 상세 정보 조회 @@@
SELECT M SCRAP_KEY, M.*
FROM MW_SCRAPING_REQ_DETAIL M 	/* 스크래핑 요청 상세 TB */  
WHERE 1=1
	AND M.SCRAP_ID = '6A1907C9D9864D9BA16010246DE16A65'  	/* 스크팹 ID */
	AND M.SERVICE ID = 'NHIS SCRAP_01'		/* 서비스ID */
;
----------------------------------------------------------------------------------------------

-- 건강보험공단 납부확인서 정보 조회 6@@@
SELECT A.RES_USER_IDENTITY_NO AS 주민번오, A.RES_USER_NM AS 성명
			(CASE WHEN A.RES_JOIN_USER_TYPE ='1' THEN E '지역세대주' 
					WHEN A.RES_JOIN_USER_TYPE ='2' THEN E '지역세대원' 
			ELSE '직장가입자'
			END) AS 가입자구분 
			, B.RES_RE_HENO AMT AS '건강보험료 고지금액'
			, B.RES_RE_LTCNO_AMT AS '장기요양보 고지금액 
			, B.RES PAY_MONTH AS 부원 1 B.RES_RE HEPAY ANT AS '건강보험료 납부금액'   
			, B.RES_RE LTC PAY AMT AS "장기요양보험료 납부금액 
			, A.CRES_JOIN USER TYPE AS 가입자구분 A.RES_COMPANY_NM AS '사업장명(상호)"
FROM scrap.TB_NHS CONFIRM A 	/* 건강보험공단 납부확인서 TB */
		scrae.TB_NHIS.CONFIRM CONTENTA 	/* 건강보험공단 납부확인서 상세 TB */
WHERE 1=1
	AND A SN = B.SN
	AND A SN = '9939AACE4DC642648431812C666AEOCF'
	AND A COMM_START_DATE >= '201912' 	/*조회 시작 년월 */
	AND A COMM_END_DATE <= '202011'		/*조회 종료 년월 */
	AND B RES_RE_HEPAY_AMT > 0 		/* 건강보험료 납부금액이 존재하는 것 */
ORDER BY REG_DT DESC
;
----------------------------------------------------------------------------------------------

-- 건강보험공단 자격득실확인서 정보 조회 @@@ 
SELECT A.RES_USER_IDENTITY NOT AS 주민번호. A.RES_USER_NM AS 성명
		, A.COMM_START_DATE AS "자격취득일", SUBSTR(A.COMM_START_DATE, O, 8) AS "자격취득_R ■"
		, A.COMM_END_DATE AS 자격상실일, A.REAL_ISSUE_DATE AS 발급일자 
		, A.RES_JOIN_USER_TYPE AS 가입자구분, A.RES COMPANY_NM AS "사업장명(상호)"  
FROM scrap.NHIS RIGHT  A		/* 건강보험공단 자격득실확인 TB */
WHERE 1=1
	AND A SN = (SELECT MAX(M SCRAP KEY) 
						FROM MW SCRAPING REQ_DETAIL M 	/* 건강보험공단 납부확인서 상세 TB */
							AND M.SCRAP_ID = '6A1907C9D9864D9BA16010246DE16A65'  	/* 스크팹 ID */
							AND M.SERVICE ID = 'NHIS_SCRAP_02' 	/* 서비스ID(NHIS_SCRAP_02: 건강보험공단 자격득실확인서) */
					}	/* 일런번호(=스크랩서버KEY) */ 
;
----------------------------------------------------------------------------------------------

/* 스크래핑 정보 DB 조회  ==> [/WEB_SCRAPDB_0001_mapper.xml] (selectList()] [2020.11.25, by 진태만] */ 
SELECT MAX(M.HEPAY_AMT) AS HEPAY_AMT 	/* 건강보험료 납부금액 */
			MAX(M. HEPAY_AMT) / DECODE(MAX(M. HEPAY_CNT), 0, NULL, MAX(M HEPAY_cNT)) AS HEPAY AVG AMT 
			 /* 평균 납부보험료 */
			, MAX(M.COMM_START_DATE) AS COMM_START_DATE  /* 자격취득일 */ 
FROM 
	SELECT SUM(B.RES_RE_HEPAY_AMT B.RES_RE_LTCPAY_AMT) AS HEPAY_AMT   /* 건강보험료 납부금액  ■ */ 
				. O AS HEPAY_CNT 	/*  납부 횟수*/ 
				"AS COMM_START_DATE . /* 자격취득일 */ 
FROM scrap.TB_NHIS CONFIRM A 		/* 건강보험공단 납부확인서 TB */ 
scrap TB NHIS_CONFIRM_CONTENT B ay M 4 TB 
WHERE 1=1 AND A.SN = B.SN
AND A.SN =  (SELECT MAX(M SCRAP_KEY)
FROM MW_SCRAPING_REQ_DETAIL M AwaY A TB / 
	AND A SN = (SELECT MAX(M SCRAP KEY) 
					FROM MW SCRAPING REQ_DETAIL M 	/* 건강보험공단 납부확인서 상세 TB */  
						AND M.SCRAP_ID = '6A1907C9D9864D9BA16010246DE16A65'  	/* 스크팹 ID */
						AND M.SERVICE ID = 'NHIS_SCRAP_01' 	/* 서비스ID(NHIS_SCRAP_01: 건강보험공단 납부확인서) */
						}	/* 일런번호(=스크랩서버KEY) */ 
	AND B.RES = RE HEPAY-AMT > 0 /* 건강보험료 납부금액이 존재하는 것 */ 
UNION ALL    ■■■■ 
SELECT O AS HEPAY_AMT /* 건강보험료 납부금액 */    
COUNTI) AS HE PAY CNT AS COMM /* 자격취득일 */  
START DATE 
 FROM scrap.TB NHIS CONFIRM A 1. 건강보험공단 납부확인서 TB 
	scrap.TB_NHIS_CONFIRM_CONTENT B 32a 041 444 TB  
 WHERE 1=1
   AND A SN = B.SN 
 AND A SN = (SELECT MAX(M SCRAP_KEY) 
FROM MW_SCRAPING_REQ_DETAIL M  
	AND A SN = (SELECT MAX(M SCRAP KEY) 
						FROM MW SCRAPING REQ_DETAIL M 	/* 건강보험공단 납부확인서 상세 TB */ 	 
							AND M.SCRAP_ID = '6A1907C9D9864D9BA16010246DE16A65'  	/* 스크팹 ID */	  
							AND M.SERVICE ID = 'NHIS_SCRAP_01' 	/* 서비스ID(NHIS_SCRAP_01: 건강보험공단 납부확인서) */
							}	/* 일런번호(=스크랩서버KEY) */ 
		AND B.RES = RE HEPAY-AMT > 0 	/* 건강보험료 납부금액이 존재하는 것 */  
UNION ALL 	■■■■
SELECT DISTINCT O AS HEPAY_AMT /* 건강보료 납부금역 */
			, O AS HEPAY CNT /* 납부 횟수 */ 
			, A COMM_START_DATE AS COMM_START_DATE  
FROM scrap TB_NHIS_RIGHT A /^.건강보험공단 자격득실확인서TB */
WHERE 1=1
	ND A SN = (SELECT MAX(M SCRAP KEY) 
					FROM MW SCRAPING REQ_DETAIL M 	/* 건강보험공단 납부확인서 상세 TB */  
						AND M.SCRAP_ID = '6A1907C9D9864D9BA16010246DE16A65'  	/*스크팹 ID */
						AND M.SERVICE ID = 'NHIS_SCRAP_02' 	/* 서비스ID(NHIS_SCRAP_02: 건강보험공단 자격득실확인서) */
				}	/* 일런번호(=스크랩서버KEY) */  
;
==============================================================================================================
 	
- 주말[★]
07:40 기상
08:11 조식
08:30 실내 자전거 타기
09:30 종료
09:40 인터넷 서핑
12:00 중식
12:20 루옌(수종) 놀러감
12:30 실내 자전거 타기
13:30 종료
13:40 인터넷 서핑
18:11 석식
22:20 루옌(수종) 귀가
23:00 샤워 ==> 체중: 73.4kg
23:35 인슐린 약 교체(275U, 16U 남음)
23:30 취침
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2020.12.13(일) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 08:00 ~ 21:30 ==> 첫눈(새벽부터 내려서 쌓임)

- 주말2[★]
07:40 기상
08:11 조식
08:30 실내 자전거 타기
09:30 종료
09:40 인터넷 서핑
12:00 중식
12:30 실내 자전거 타기
13:30 종료
14:20 루옌 언니집에 놀러감
13:40 인터넷 서핑
14:30 집출발(자전거: 수종) 
14:30 스카이 미용실(이발, 수종)
15:00 다이소 대림2호점 ==> 컬러 육각 아령(2kg) 구입, 수종 과자 구입
15:20 모닝 아트(대동초 후문 앞) ==> 수종 장난감 구입
15:30 귀가
15:40 인터넷 서핑 ==> Memo(2020.12, 01 ~ 13) 타이핑
18:11 석식
18:40 실내 자전거 타기 ==> 아령 운동 시작(1시간 동안 양쪽 팔 차례로 운동)
19:40 종료
20:00 루옌 귀가
23:00 취침
==============================================================================================================

- 장롱 12자 구입[2015.01.13(화)]
1. 가구스토리/2015신상품/12자장롱, S-다이아(웬지화이트, +14만), 총 가격: 771,500원 ==> http://auction.kr/iAgWy8j
http://itempage3.auction.co.kr/DetailView.a$px?ItemNo=A542846755&frm3=V2
규빅손잡이/즐보석장식/180도 경첩/일체형북박이(서랍형), 제품사이즈: W3440*D640*H2100mm(실제 측정 --> W4000*D600mm)
==> 현아트빌 404호 장롱 크기(추정) ==> W4500*D1000mm)
==> S-다이아(웬지화이트) 선택 ==> 541,500원(기본), 140,000(웬지화이트), 90,000(택배비), 771,500원(총 가격)
========================================================================================================= 
 
- Notepad++에서 줄번호를 표시하지 않도록 설정 
1. 상단의 설정 메뉴에서 환경설정을 클릭합니다.
2. 환경 설정 창에서 편집탭으로 이동합니다.
3. 편집탭 하단에 보면 "줄 번호 표시"라는 부분의 체크를 해제하고 닫기 버튼을 클릭하면 됩니다.
==============================================================================================================

- 오프라인 Memo 파일 타이핑하여 옮기는 방법
1. 오프라인 PC에서 Memo(2020.12).txt 파일에 텍스트 작업
 1) 줄 번호 표시 제거
 2) 책깔피 설정하고
2. MS 오피스 렌즈(어플)로 문서 촬영(문서 ==> 확인 ==> Done ==> 저장)
3. 핸드폰에서 다음메일(어플)로 제목: 12.01, 이미지를 첨부하여 내게쓰기로 보내기
4. 집에 있는 PC에서 다음메일로 접속하여 제목: 12.01의 이미지(12.01.zip)를 내려받기
5. 집에 있는 PC에서 01. 제주은행P_캡처[★] 폴더 아래에(12.01)에 압축풀기
C:\Users\Administrator\Desktop\01. 이미지 편집[★]\01. 제주은행P_캡처[★]\12.01
6. 집에 있는 PC에서 포토스케이프(프로그램) 실행
 1) 메인 ==> 일괄편집(Tab)에 12.01 폴더의 파일을 끌어서 사진추가
 2) 크기조절 ==> 가로 조절(선택); 900 ==> 모든 사진 저장(변환); 클릭
 3) 아래 폴더에 output와 파일들이 생성됨(용량, 크기 조절됨)
 4) output 폴더에 있는 파일들을 모두 이름 변경(2020_12_01 오전 7_49 Office Lens.jpg -- >  12.01_01.jpg)
 5) output 폴더에 있는 파일들을 복사하여 OneDrive - 서울대동초등학교에 붙여넣기
  ==> C:\Users\Administrator\OneDrive - 서울대동초등학교\90. 이미지 편집[★]\01. 제주은행P_캡처[★]\12.01\
7. 핸드폰에서 구글 렌즈 열기(텍스트: 클릭 ==> 이미지: 클릭)
 1) 다음에서 열기 ==> OneDrive: 클릭[포토 밑에 위치] ==> 파일: 클릭
 2) 90. 이미지 편집[★]\01. 제주은행P_캡처[★]\12.01\12.01_04: 클릭
 3) 텍스트 --> 전체 선택: 클릭 ==> 텍스트 복사: 클릭
8. 핸드폰에서 네이버 메모(어플) 열기 
 1) 붙여넣기: 클릭 ==> 저장됨
9. 집에 있는 PC에서 네이버 메모(프로그램) 열기 
 1) 메모 내용: 복사 ==> Memo(2020.12).txt 파일에 붙여넣기 
=============================================================================================================

- 건강보험 본인부담금 환급급 신청
1. 건강보험공단 홈페이지에서 신청 ==> https://www.nhis.or.kr/nhis/minwon/insertHwangubMain.do
환급번호: 2020105100298301342
처리번호: 11729761
처리일자: 2020.12.13
본인부담금 환급급: 47,730원
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.12.14(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:30 ==> 강추위 (영하 10도), WEB 소스 프리징(구종식 부장이 일요일에 출근해서 처리 (2차) -> 3차 (12시)) 
								, 코로나 19 비상(확진자 하루 천명 대, 돌봄교실에서 돌봄 신청 다시 하라고 문자 옴: 겨우 다시 신청함)

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 스크래핑 완료 여부 전단계 처리 
1. 불가능(이경일 부장 확인)L내용 제거
public Map start() throws Exception { 
	log.debug(""[/TASK_TL0080_00001java] [star()] ==> [TEST_01] [대출 한도 조회(TASK_TL0080_00001) (전문_☆☆) 처리 START] ■■■ [TeleID]"+ TeleID );
 
	String CHK_SCRAPING = this.getSessionData(Config.XTOUCH_SESSION_CHK_SCRAPING); 		// 스크래핑 완료 여부
	CHK_SCRAPING = "T";		// 스크래핑 완료 여부  ==> TEST @@@ ==>
  
	if(!"T".equals(CHK_SCRAPING)) { 	// 스크래핑 전단계 체크가 존재 안하면 
		throw new ResultException("스크래핑이 미완료 되었습니다 .");
	}
}
==============================================================================================================

- jWEB 운영 서버 오픈
1. URL: https://mweb.e-jeiubank.com:5443
==============================================================================================================

- 09-1. 대출신청 정보(TL0120, 01) 입력 화면 수정
scwin.onpageload = function() {
	gcm.log("[/TL0120_01_s1.xml] [onpageload()] ==> [TEST_01] [[09-1. 대출신청 정보(TL0120, 01) 입력 화면 로딩...@]" ); 
	
	var llSavAcList = $p.parent().scwin.llSavAcList;	// 01. 담보예금계좌 List(담보예금계좌 조회(TASK_COMMF_2173) 전문)
	
	dlt_llSavAcList.removeAll();
	dlt_llSavAcList.setJSON(dlt_llSavAcList); 		// 01. 담보예금계좌 List 셋팅 ==> 01. 담보예금계좌 조회(TASK_COMME_2173) 전문

	for(var i= 0: i < dlt_llSavAcList.getTotalRow(); i++)
	{
		var nlnBelm = parselnt(dlt_llSavAcList.getCellData(0, "nlnBelm"));		// 대출가능 한도금액(형변환) 
		var nlnBelmkor = com.numberKor(parselnt(dlt_llSavAcList.getCellData(i, "InBeLm")).replace("만원, " 만원");	
		// 대출가능 한도금액(금액 한글 표기 포맷 처리)		
		if(nlnBelmKor == "원") nlnBelmkor = "0원";

		var acNFullNm = "["+ com.trim(dlt_llSavAcList.getCellData(i, "savSujNm")) +"] "
			+" "+ com.transAcn("1", dlt_llSavAcList.getCellData(i, "savAcN")) +"("+ nlnBelmKor +")";
		// 예금계좌번호(출력용): [과목명] 예금계좌번호 [대출가능 한도금액]

		dlt_llSavAcList.setCellData(i, "savAcNFormat", acNFullNm); 	// 예금계좌번호(출력용): [과목명] 예금계좌번호 		
		gcm.log("/TL0120_01_s1.xml] [onpageload()] ==> [TEST_51] [i_번째]"+ i +"[담보예금계좌_조회수(2173)]"+ dlt_llSavAcList.getTotalRow() +"] @
			==> [과목명]"+ com.transAcn("1", dlt_llSavAcList.getCellData(i, "savSujNm") 
			==> [예금계좌번호]"+ com.transAcn("1", dlt_llSavAcList.getCellData(i, "savAcN")) +"[대출가능 한도금액]"+ dlt_llSavAcList.getCellData(i, "nlnBelm") ); 
	} 	// end of for()

	ibx_inBelm.setValue(nlnBelm); 	// 대출가능 한도금액 셋팅
};

// 담보예금 계좌 콤보 변경 이벤트
scwin.sbx_llSavAc_onviewchange = function(info) { 
	gcm.log("[/TL0120_01_s1.xml] [sbx_llSavAc_onviewchange()] ==> [TEST_01] [담보예금 계좌 콤보 변경 이벤트] [선택한 예금 계좌]"+
		com.trim(info newValue) +"[dlt_llSavAcList.getTotalRow()]"+ dlt_llSavAcList.getTotalRow() );
	
	for(var i = 0; i < dlt_llSavAcList.getTotalRow(); i++)
	{
		// gcm.log("[/TL0120_01_s1.xml] [sbx_llSavAc_onviewchange()] ==> [TEST_40] [i_번째]"+ i +"[선택한 예금계좌번호]"+
			com.trim(info.newValue) +"[예금계좌번호]"+ com.trim(dlt_llSavAcList.getCellData(i, "savAcN")) );

		if(com.trim(info.newValue) == com.trim(dlt_llSavAcList.getCellData(i, "savAcN")))
		// 선택한 예금계좌번호와 담보예금계좌 List에서 예금계좌번호가 같으면
		{
			var nlnBelm = parselnt(dlt_llSavAcList.getCellData(i, "nlnBelm"); 	// 대출가능 한도금액(형변환)
			ibx_inBeLm.setValue(nlnBelm), 	// 대출가능 한도금액 셋팅 
			gcm.log("[/TL0120_01_s1.xml] [sbx_llSavAc_onviewchange()] ==> [TEST_41] @@@ [i_번째]"+ i +"[예금계좌번호]"+
			dlt_llSavAcList.getCellData(i, "savAcN") +"[대출가능 한도금액]"+ dlt_llSavAcList.getCellData(i, "InBelm") );
		}
	} // end of for()
};
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.12.15(화) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 21:30 ==> 

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 운영 반영 결함 처리 
- 예금 담보 대출[담보 대출)(PL0003) 수정
1. 여신 거래약정서 고객용 삭제 요청  ==> 완료[♥♡] 
 1) 22: 은행여신거래기본약관(가계용) 삭제
==============================================================================================================

- 소득 종류 필수 처리(CAR 드림 대출) ==> 완료[♥♡]  
1-1. 본인확인 [대출] (TL0010) 입력 화면 수정
==============================================================================================================

- 09-1. 대출신청 정보(TL0120, 01) 입력 화면 수정 ==> 완료[♥♡
1. 담보예금 계좌 팝업 처리 추가 (누구나 환전(/TE0060_01_sl xml] 화면 참조)
scwin.sbx_llSavAc_onclick function {
	gcm.log("[/TL0120_01_m.xml] [sbx_llSavAc_onclick()] ==> [TEST_01] [담보예금 계좌 팝업 이벤트]" ); 
 
	var inputData = { 		//	IN_META_INFO 등록[전문] (서비스등록관리 화면에서) @@@ 
		"p_nowTaskInfo": $p.parent().scwin.nowTaskInfo 
	}
	gcm.log("[/TL0120_01_m.xml] [sbx_llSavAc_onclick()] ==> [TEST_41] [JSON.stringify(inputData)]+ JSON.stringify(inputData) );

	com.popupList_POP_LO07_01(inputData, scwin.fn_popupCallback(); 	// 담보예금계좌 팝업
};

scwin.onpageload = function() {
	gcm.log("[/POP_LO07_01.xml] [onpageload()] ==> [TEST_01] [담보예금계좌 화면 로딩 .....@]" ); 
	
	scwin.fn_callService("TASK_COMMF_2173", scwin.service_callback()); 		// 01. 담보예금 계좌(TASK_COMMF_2173) 전문 호출[R] 
};  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.12.16(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 20:30 ==> 주간보고 (24주차), 무선 콤보 마우스 밧데리 교체(11:30, AA), 이광철 이사 제주행(10시, jWEB 오픈 다음주 화요일로 연기)

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 신청정보 입력(/TTL0190_01_m.xml)에서 BPR 입고 처리  
scwin.service_callback = function(rtnJSON) { 
	gcm.log("[/TL0190_01_m.xml] [service_callback()] ==> [TEST_01] [콜백] [(엘리트론) 대출신청(TTL0190_0001, 2193) 전문_★★_호출] [rtnJSON]"+ rtnJSON ); 
	
	if(rtnJSON.ERR_CODE = "S") {
		scwin.loanReglistRst = rtnJSON.OUT_DATA;	// 대출 신청 내역 결과 정보 DATA
		gcm.log("[/TL0190_01_m.xml] [service_callback()] ==> [TEST_33] [콜백] [scwin.loanReglistRst]"+ JSON.stringifyfscwin.loanReglistRst) );

		scwin.fn_callService("TASK_TL0190_00002", scwin.service1902_callback);		// BPR 입고 처리 전문 호출 추가[2020.12.16, by 진태만]
	}
};

scwin.fn_callService = function(svID, callbackFn) {
	gcm.log("[/TL0190_01_m.xml] [fn_callService()] ==> [TEST_01] [전문_★★_호출] [svID]"+ svID ); 
	
	var inputData = {};	
	gcm.log("[/TL0190_01_m.xml] [fn_callService()] ==> [TEST_31] [02. BPR 입고 처리(TASK_TL0190_00002) 전문_★★_호출] [svID]"+ svID ); 

	scwin.handoRstList = xTouchLibUi.getTaskData("TL0001", $p);		 // 00. 한도조회 결과 TASK

	inputData = {
		"scrap_id": scwin.handoRstList.scrap_id		// 01. 스크랩 ID 
		, "bor_id" - scwin.handoRstList.sincg_no 	// 02. BPR ID(대출 신청번호)
	}
};

// 전문 호출 결과 콜백
scwin.service1902_callback = function(rtnJSON) { 
	gcm.log("[/TL0190_01_m.xml] [service1902_callback()] ==> [TEST_01] [02. BPR 입고 처리(TTL0190_00002) 전문_★★_호출 콜백] [rtnJSON]"+ rtnJSON ); 

	if (rin JSON ERR_CODE == "S") {
		if(com.getCertiCheck() != null && (com.getCertiCheck().USER_HP == "01030720898"
		  || com.getCertiCheck().USER_HP == "01099014247) { 	// 핸드폰 번호가 진태만, 박소영 이면  
			alert("[/TL0190_01_m.xml] [service1902_callback()] ==> [TEST_01] [BPR 입고 처리(TASK_TL0190_00002)] 전문_★★_호출 콜백]
			[rtnJSON.ERR_CODE]"+ rtnJSON.ERR_CODE +"[스크랩 성공 여부]"+ rtnJSON.scrap_suc_yn );  
		}
		
		var inputData = {
			"sincg_no": scwin.loanReglistRst.sincg_no				// 1. 대출신청번호
			"stat_code": scwin.loanReglistRst.stat_code			// 2. 대출진영상태
			"docu_cd": scwin.loanReglistRst.docu_cd				// 3. 서류확인
			"loan_max": scwin.loanReglistRst.loan_max				// 4. 대출최대가능 공액(승인금액)
			"loan_arnt": scwin.loanReglistRst.loan_art				// 5. 대출승인금액  ---------->
			"gmri kind": scwin.loanReglistRst.gmri_kind			// 6. 금리 종류
			"gmri_jeokyg": scwin.loanReglistRst.gmri_jeokyg 		// 7. 승인금리
			"bl_sayucd": scwin.loanReglistRst.bl_sayucd 			// 8. 대출거절코드
			"sincg_amt": scwin.loanReglistRst.sing_amt   			// 9. 신청금액
			"loan_gigan": scwin.loanReglistRst.loan_gigan			// 10 대출기간
			"gigan_deci_mth": scwin.loanReglistRst.decl_mthn	// 11. 대출방식
			"sanghw_mth": scwin.loanReglistRst.sanghw_mth	// 12. 상환방식
		} 
		gcm.log("[/TL0190_01_m.xml] [service1902_callback()] ==> [TEST_33] [콜백] [JSON.stringify(inputData)]"+ JSON.stringify(inputData) );

		scwin.nextTask(inputData, (). ("CHK NEXT"});	 	// 다음 Task 함수 호출
		return;
	}
};
-----------------------------------------------------------------------------------------------------------

- TL0001(한도조회 결과 보관 여부) TASK 수정
1. "scrap_id": "스크랩 ID" 추가 ==> // META_DATA
- TL0070(서류 자동발급조회) TASK 수정 
1. "scrap_id": "스크랩 ID" 추가 ==> // META_DATA

- TASK_TL0160_00001 전문
1. "scrap_id": "스크랩 ID" 추가 ==> // IN_META_INFO
- TASK_TL0160_00002 전문
1. "Scrap_id": "스크랩 ID" 추가 ==> // OUT_META_INFO
- TASK_TL0160_00003 전문
1 "crap_id": "스크랩 ID" 추가 ==> // OUT_META_INFO
-  TASK TL0190_00002(BPR 입고 처리) 전문
1. "scrap_id": "스크랩 ID", "bpr_id": "BPR ID" 추가 ==> // OUT_META_INFO
==============================================================================================================

- BPR 입고 처리(TASK_TL0190.00002) 전문_★★ 호출 에러
1. 현상:
[/TL0190_01_m.xml] [service1902_callback()] ==> [TEST_01] [콜백] [BPR 입고 처리(TTL0190_00002) 전문_★★_호출 콜백] [rtnJSON.ERR_CODE]E\
[/TL0190_01_m.xml] [service1902_callback()] ==> [TEST_71] [콜백] ■ [JSON.stringifytren JSON)]{"ERR_CODE": "E"
"ERRMSG "서비스 목록이 존재하지 않습니다 .."OUT_DATA":"",  "CryptorYN":"",  "RTN_CODE":"-9999"
"RTN MSG"서비스 목록이 존재하지 않습니다." : "OUT_DATA_TYPE":""}
2. 원인: xTouch 관리자 ==> 서비스등록관리 화면에서 TASK_TL0190_00002 전문 생성 안함
3. 조치: TASK_TL0190_00002 전문 생성 처리
==============================================================================================================

- 접속 ID: 628FA053E7574EB09EE7E5535385EDA6 xTouch 관리자 화면 ==> 접속정보 화면
1. TL0070: 서류 자동발급조회 ==> CONSED 제출서류 보기
33DB348886294BD6A0DBE4D91A4EE9BB 	/* 스크랩 ID */
E7D38A0789CC407AB3542488944610ED  	/* 일련번호(=스크랩서버 KEY) */ ==> 건강보험공단 납부확인서 (NHIS_SCRAP_01)
397E07AC6047AF2EACE7796C42585802 	/* 일련번호(=스크랩서버 KEY) */ ==> 건강보험공단 자격득실확인서 (NHIS_SCRAP_02)
==============================================================================================================

- 건강보험공단 자격득실확인서 조회 @@@
/* 스크래핑 정보 DB 조회 ===> [/MWEB_SCRAPDB_0001_mapper.xml] [selectList()] [2020.11.25, by 진태만] */
SELECT DISTINCT O AS HEPAY_AMT 	/* 건강보험료 납부금액 */
			O AS HEPAY CNT 		/* 납부 횟수 */
			C.COMM_START_DATE AS COMM_START_DATE 	/* 자격 취득일(02. 입사일) gal_aqt_dt) */
FROM scrap.TB_NHIS_RIGHT_CONTENT C 	/* 건강보험공단 자격득실확인서 상세목록 TB */
WHERE 1=1
	AND C.SN = (SELECT MAX(M.SCRAP_KEY)
						FROM MW_SCRAPING_REQ_DETAIL M 	/* 스크래핑 요청 상세 TB */
						WHERE M.SCRAP_ID = '33DB348886294BD6AODBEAD91A4EE9BB' 		/* 스크랩 ID */
							AND M.SERVICE_ID = 'NHIS_SCRAP_02' 		/* 서비스 ID(NHIS_SCRAP_01: 건강보험공단 자격득실확인서) */
							/* 일련번호(*스크랩서버 KEY) */
	AND C.COMM_END_DATE IS NULL 	/* 자격상실일이 널인 것 NHIS_SCRAP_02 */
;
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.12.17(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:00 ==> 돌봄교실 확진자 발생(16:30, 당분간 시설 폐쇄, 수종이 집에서 온라인 교육), 운영서버에서 스크래핑 정상 가동(16시)

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 신청정보 입력(/TL0190_01_m.xml) 화면에서 BPR 입고 처리(개발 서버 반영) ==> 운영 서버 반영
1. 개발 서버에서 .class 파일, .xml 파일 반영 ==> 서버 재시작 ==> 테스트
 1) 운영서버에서 스크래핑 에러로 고생함
==============================================================================================================

- 지점코드, 지점코드 처리
1. 공동에서 가지고옴
scwin fn_getHandoRstList = function() {
	gcm.log("[/TL0001_01_m.xml] [fn_getHandoRstList()] ==> [TEST_01] [P_ID]"+ scwin.nowTaskInfo.P_ID
		+"[00, 한도조회 결과 보관 여부_S[★]_한도조회 결과 정보]"+ JSON.stringify(scwin.handoRstList) );
 
	var commonData = {
		"CON_TYPE"			: scwin.CON_TYPE 		// 접속유형
		, "BNCD" 				: scwin.COM_BNCD 		// 지점코드
		, "SFFN" 				: scwin.SFFN				// 직원번호
		, "JOIN_CODE"		: scwin.JOIN_CODE 		// 제휴서비스
		, "JOIN_USERID" 	: scwin.JOIN_USERID	// 제휴서비스 사용자식별코드
		, "PROD_CODE" 	: scwin.PROD_CODE 	// 상품코드(홈페이지관리)
		, "SUJ_CD 			: "32"							// 과목코드(32: 대출) ===> 추가
		, "PDKD_CD" 		: scwin.pdKdCd			// 상품종류코드(39: 엘리트론(공무원), 40: 엘리트론(은행선정)) ===> 추가
	}
	gcm.log("[/TL0001_01_m.xml] [fn_getHandoRstList()] ==> [TEST_52] [JSON.stringify(commonData)]"+ JSON.stringify(commonData) );

	scwin.nextTask(inData, commonData, {"CHK": "NEXT"}); 		// 다음 Task 함수 호출
};
---------------------------------------------------------------------------------------------------------------------

- 확인 버튼 클릭 이벤트
scwin.btn_confirm_onclick = function() { 
	gcm.log("[/TL0190_01_s1.xml] [btn_confirm_onclick()] ==> [TEST_01] [확인 버튼 클릭 이벤트]" ); 
	
	var v_handoRstList = $p.parent().xTouchLibUi getTaskData("TL0001", $p); 	// 00. 한도조회 결과 TASK AZH[2020.12.17, by 진태만]
	
	var inputData = {
		"loan_kind" : v_loan_kind 		// 1, 대출종류[1: 직장인신용대출, 2: 간편대출 , 3: 엘리트론(공무원), 4: 엘리트론(은행선정업체)]
		, "soduck_inputyn" : v_soduck_inputyn 						// 2. 연간소득금액 고객입력여부
		", income_amt" : scwin.handoRstList.cust_soduck 		// 3. 연간소득금액(원) ■■■
		", ibsa_date" : scwin.handoRstList.ibsa_date 		// 4. 입사일자(자격딕실 확인서 취득일) ■■
		, "sincg_amt": ""+ sincgAmt  									// 5. 신청금액
		, "loan_gigan" : ibx_loan_gigan.getValue() 				// 6. 대출기간
		, "decl_mth" : rdo_decl_mth.getValue()					// 7 대출방식(1:건별대출, 2 종합통장대출 (마이너스통장))
		, "sanghw_mth" : scwin.sanghw_mth					// 8. 상환방식(0: 만기일시상환, 1: 원금균등분할상환, 2: 원리금균등분할상환) 
		, "sanghw_cod": sbx_sanghw_cod.getValue()			// 9 상환자금 코드		
		, "jageum_ete" : ibx_sanghw_etc.getValue()			// 10. 상환자금 직접입력
		, "jageum_cod" : sbx_sanghw_cod.getValue()		// 11. 자금용도 코드
		, "jageum_etc" : ibx_sanghw_etc.getValue()			// 12. 자금용도 직접입력		
		, "office_name" : scwin.handoRstList.office_name	// 13. 직장명	■■
		, "openbr": v_handoRstList.COM_BNCD				// 14 대출관리점(지점코드) 수정[2020 12. 17, by 진태만] ■■■■
		, "jikno_gun": v_handoRstList.SFFN						// 15. 권유직원(직원코드) 수정[2020 12.17, by 진태만]		
		, "ikup_gun": "0" 			// 28. 직업군[1: 공공기관, 2: 금융기관(신한그룹사), 3: 의료기관(제주지역), 4: 은행지정업체] ==> 0으로 넘김 
		, "ijanap_dd" : scwin.ijanap_dd		// 29. 대출이자납입일 (01~30 특정일, 88: 응당일[오늘], 99: 말일, '' : 선택 안함)
	}
	ggcm.log("[/TL0190_01_s1.xml] [btn_confirm_onclick()] ==> [TEST__52) [INPUT 데이타(inputData)]"+ JSON.stringify(inputData) );
	
	$p.parent().scwin.callP_loanSincgReg(inputData); 	// 대출 신청 등록(부모 화면)	 
}; 
==============================================================================================================

- 운영 반영 결함 처리
==============================================================================================================

- 본인부담상한액 초과금 지급신청서 만들기
1. 엄마, 누나들 도장 받아서 포토스케이프로 작업
01. 본인부담상한액 초과금 지급신청서.jpg, 02. 본인부담상한액 사후환급금 상속대표 신청 동의서.jpg
04. 가족관계증명서(진덕근).jpg
-------------------------------------------------------------------------------------------------------------------------

- 도장, 서명을 문서에 깔끔하게 삽입하기
https://youtu.be/NDTU-BWb9ic 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.12.18(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21 00 ==> 함박 눈(5시, 조금 옴), 유병영 부장(국가대표 농띠), 장성진 과장, 김경명 차장 철수(16시) 

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 운영 반영 결항 처리
==============================================================================================================
 
- 주민등록번호 유효성 체크
scwin.btn_confirm_onclick= function(e) { 
	gcm.log("[/TL0190_01_s1.xml] [btn_confirm_onclick()] ==> [TEST_01] [확인 버튼 클릭 이벤트]" ); 
	
	if(ibx_jumin1.getValue().length < 6) {
		com.alert("주민등록번호 앞자리 6자리를 입력하세요.", function() {
			ibx jumin1.focus(); 
			com.scrollCenter(ibx_jumin1); 		// focus 후 스크를 제어
		});
		return;
	}
};
==============================================================================================================

- 예상 금리(최저, 최대) 추가
scwin.btn_confirm_onclick = function() { 
	gcm.log("[/TL0150_01_s1.xml] [btn_confirm_onclick()] ==> [TEST_01] [확인 버튼 클릭 이벤트]" ); 
	
	var inData - {
		"exptGmri": scwin.expt_gmri 					// 1. 예상금리
		, "exptGmri_N": ibx_expt_gmri.getValue() 	// 1 예상금리_2  
		, "gmriprn_ynt":  scwin.gmripm_yn1;		// 2. 우대여부1(급여이체 또는 연금수급이체 실적보유)
		, "ramripm_yn2" : scwin.gmripm_yn2;		// 3. 우대여부2(아파트관리비 또는 공과금 자동이체) 
		, "gmripm_yn3": scwin.gmripm_yn3;			//4. 우대여부3(최근3개월 신용카드 사용실적 50만원 이상)
		, "gmripm_yn4": scwin.gmripm_yn4;			// 5. 우대여부4(1년제 이상 거치식예금 또는 적립식예금 가입자)
		, "gmripm_yn5": scwin.gmripm_yn5;			// 6. 우대여부5  
		, "gmripm_yn6": scwin.gmripm_yn6 			// 7. 우대여부6
		, "gmripm_yn7": scwin.gmripm_yn7			// 8. 우대여부7 감면금리(TOP5 고객)
		, "gmripm_yn8": scwin.gmripm_yn8			// 9. 우대여부8(우량고객 감면금리)
		, "gmripm_yn9": scwin.expt_gmri_min 		// 12. 예상 금리(최저) 추가[2020.12.18, by 진태만]
		, "exptGmri" : scwin.expt_gmri_max			// 13. 예상 금리(최대) 추가[2020.12.18, by 진태만]
	};	
	gcm.log("[/TL0150_01_s1.xml] [btn_confirm_onclick()] ==> [TEST_41)  [inData]"+ JSON.stringify(inData) );
	
	$p.parent().scwin.nextTask(inData, {}, {"CHK": "NEXT"}); 	// 다음 Task 함수 호출 ==> 14. 신청정보 입력[신용 대출] (TL0190, 01) 화면 호출 
};
==============================================================================================================
 
- 대출 신청금액 체크 추가 
scwin.btn_confirm_onclick = function() { 
	gcm.log("[/TL0190_01_s1.xml] [btn_confirm_onclick()] ==> [TEST_01] [확인 버튼 클릭 이벤트] [1. 대출방식]"+
		rdo_decl_mth.getValue() +"[0. 신청금액]"+ ibx_sincgAmt.getValue() +"[2. 신청 가능 금액(대출한도)]" + scwin sincgPosibArnt );
	
	var sincgAmt = scwin.check_sincgAmt(); 	// 대출 신청금액 체크 추가[2020.12.18, by 진태만]

	if(com.isNull(sincgAmt))
	{
		return;
	}
	
	if(com.isNull(sincgAmt)) 		// 대출 신청금액 null 체크 추가[2020.12.18. by 진태만]
	{
		return.
	}
};

// 상환방식 radio 박스 변경 이벤트
scwin.rdo_sanghw_mth_onviewchange = function(e) {
	gcm.log("[/TL0190_01_s1.xml] [rdo_sanghw_mth_onviewchange()] ==> [TEST_01] [상환방식 radio 박스 변경 이벤트]
		[rdo_sanghw_mth]"+ rdo_sanghw_mth.getValue() );
	
	scwin.chg_sanghw_mth(); 	// 상환방식 변경 처리 추가[2020.12.18, by 진태만]
};

// 상환방식 변경 처리 추가 [2020.12.18, by 진태만]
scwin.cho sanghw_mth function) { 
	gcm.log("[/TL0190_01_s1.xml] [sanghw_mth()] ==> [TEST_01] [상환방식 변경 처리] @@@ [상환방식]"+ rdo_sanghw_mth.getValue()
		[상환방식_2]"+ rdo_sanghw_mth_2.getValue() );
 	
	if(rdo_decal_mth.getValue() == "1")	// 대출방식이 건별 대출 이면
	{
		rdo_sanghw_mth_2.setValue("0");		// 만기일시상환(대출기간: 12개월) (02. 종합통장대출)

		if(rdo_sanghw_mth.getValuet) =="1") 	// 만기일시상환(대출기간: 12개월) (01. 건별 대출) 이면
		{
			ibx_loan_gigan.setValue("12개월");		// 대출기간 
			ibx_loan_gigan.setDisabled(true); 	// 대출기간 Disabled 처리 
			scwin.sanghw_mth = "0";		 // 8. 상환방식(0: 만기일시상환, 1: 원금군등분할상완, 2: 원리금균등분할상환)
		}
		else if(rdo_sanghw_mth.getValue() == "2")		// 원금균등분할상환(대출기간 : 12~60개월) (01. 건별 대출) 이면
		{
			ibx_loan_gigan.setValue(""); 		// 대출기간 
			ibx_loan_gigan setDisabled(false); 	// 대출기간 Disabled false 처리 
			scwin.sanghw_mth = "1";		 // 8. 상환방식(0: 만기일시상환, 1: 원금군등분할상완, 2: 원리금균등분할상환)
		}
	} 
	else 	// 대출방식이 종합통장 대출 이면
	{
		if(rdo_sanghw_inth_2.getValuet) =="1") 	// 만기일시상환(대출기간: 12개월) (02. 종합통장대출 이면
		{ 
			rdo_sanghw_mth.setValue("0");		// 만기일시상환(대출기간: 12개월) (01. 전별 대출)
			
			ibx_loan_gigan.setValue("12개월");	// 대출기간 
			ibx_loan_gigan.setDisabled(true); 	// 대출기간 Disabled 처리 
			scwin.sanghw_mth = "1";		 // 8. 상환방식(0: 만기일시상환, 1: 원금군등분할상완, 2: 원리금균등분할상환)
		}
	}
};
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.12.19(토) 작업 ■■■■■■■■■■■■■■■■■■ 
--->07:30 ~ 20:00 ==> 주말 출근(07:40), 자리 이동(07:40, 처음 자리(유병영 부장)로 옮김), 다이소에서 메모리 리폼 방석 구입(10시)

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 제주은행 통합 로그인(TEST) 연결 안됨(07:50)
1. PC 옮기고 PC 켜니깐 제주은행 통합 로그인(TEST) 부분이 연결할 수 없다고 나옴
 1) 박소영 계장에게 전화(14:20 박소영 계장 출근해서 점검) 
  가. 12월 18일 계약 종료 후 계약 갱신 과정에서 새로 승인하면서 차질이 생김: 방화벽 문제라고 함 
 2) 제주은행 직원이 출근해서 처리항(16:40) ==> 모든 시스템 정상 가동
==============================================================================================================

- 여신 개인신용정보동의 등록(엘리트약관 동의) (TASK_COMMF_2002) 전문 개발  
scwin.onpageload = function() {
	gcm.log("[/TL0150_01_m.xml] [onpageload()] ==> [TEST_01] [07. 약관 및 동의서[신용 대출] (TL0150, 01) 화면 로딩...@@@]" ); 

	xTouchLibUi.uiChange(scwin.nowTaskInfo, "SUB1", $p); 	// 최초 화면 셋팅
};

// 고객 정보제공동의 등록 전문 호출(부모창)
scwin.callP_yackkanAgree = function() { 
	gcm.log("[/TL0150_01_m.xml] [callP_yackkanAgree()] ==> [TEST_01]" ); 
	
	scwin.fn_callService("TASK_COMMF_9214}, scwin.service_callback); 	// 고객 정보제공동의 등록(TASK_COMMF_9214)
};

sscwin.fn_callService = function(svID) { 
	gcm.log("[/TL0150_01_m.xml] [fn_callService()] ==> [TEST_01] [전문_★★_호출] [svID]"+ svID ); 
	
	var inputData = {};
	var v_commonData = xTouchLibUi.getCommonData(); 	// commonData 조회 
	var v_sujCd = v_commonData.SU_CD: 	// 과목코드
	var v_pdKdCd = v_commonData.PDKD_CD: 	// 상품종류코드(PDKD_CD) (39: 엘리트론(공무원), 40: 엘리트론(은행 선정) 수정
	// 박소영 계장 확인) [2020.12.18, by 진태만] 
	var v_pdkdcd2 = "37";	// 상품종류코드 2(37: 엘리트론(공무원), 38: 엘리트론(은행 선정업체) ) 추가[2020.12.20, by 진태만]

	if(v_pdKdcd == "38") v_pdKdcd2 = "40": 		// 상품종류코드2(37: 엘리트론(공무원), 38: 엘리트론(은 선정업체)) 추가[2020.12 20. by 진태만]

	scwin.custInfo = xTouchLibUi.getTaskData(l TZ0010," $p);		// 00. 본인인증 TASK
	gcm.log("[/TL0150_01_m.xml] [fn_callService()] ==> [TEST_21] [과목코드]"+ v_sujCd +"[상품종류코드}"+ v_pdKdCd ),

	if(vlD3 == "TASK_COMMF_9214") 		// 01. 고객 정보제공동의 등록 이면
	{
		gcm.log("[/TL0150_01_m.xml] [fn_callService()] ==> [TEST_01] [01. 고객 정보제공동의 등록(TASK_COMMF_9214) 전문
			_★★_호출 콜백] [rtn_JSON.ERR_CODE]"+ rtn_JSON.ERR_CODE );

		inputData = { 
			"sujcd" : v_sujCd,		// 1. 과목코드(32: 대출)
			"pdKdCd" : v_pdKdCd2, 		// 2. 상품종류코드2(37: 엘리트론(공무원) 38: 엘리트론(은행선정업체) 추가 [2020.12.20, by 진태만]
			"ntLngPsnlfGtrUeGeEssCd: "1",   	//3. 비여신개인정보수집이용동의 필수코드
			"mktGeBjSItcd":"1",  				// 4. 마케팅동의대상선택코드
			"guaChiChaMsgSitCd":"1",  	// 5. 안내채널 문자 메시지선택코드  
			"quaChIEmSitcd":"1",  			// 6. 안내채널 이메일 선택코  
			"guaChiZpSitCd":"1",  			// 7. 안내채널 전화 선택코드 
			"guaChiZpSitCd":"1", " 			// 8. 안내채널 우편 선택코드
			"pdpeGeBjSitCd":"1"  				// 9. 상품별 동의대상선택코드
	}
	else
	{
		ggcm.log("[/TL0150_01_m.xml] [fn_callService()] ==> [TEST_02] [02. 여신개인신용정보동의 등록(TASK_COMME 2002) 
		_★★_호출 콜백] [rtn_JSON.ERR_CODE]"+ rtn_JSON.ERR_CODE );
		
		var hdpN = scwin.custinto.hdpN;	 				// 12. NICE인증에서 입력한 휴대폰번호
		var clnNm = scwin.custinfo.NICE_clnNm;	 	// 13. NICE인증에서 입력한 고객명
		var ssn = scwin.custinfo.NICE_bdy + scwin.custinfo.NICE_sex;		// 14. 주민번호
		
		inputData = { 
			"sujcd" : v_sujCd,		// 1. 과목코드(32: 대출)
			"pdKdCd" : v_pdKdCd2, 		// 2. 상품종류코드2(37: 엘리트론(공무원) 38: 엘리트론(은행선정업체) 추가 [2020.12.20, by 진태만]
			"ntLngPsnlfGtrUeGeEssCd:"1",   //3. 비여신개인정보수집이용동의 필수코드
			"mktGeBjSItcd":"1",  				// 4. 마케팅동의대상선택코드
			"guaChiChaMsgSitCd":"1",  	// 5. 안내채널 문자 메시지선택코드  
			"quaChIEmSitcd":"1",  			// 6. 안내채널 이메일 선택코  
			"guaChiZpSitCd":"1",  			// 7. 안내채널 전화 선택코드 
			"guaChiZpSitCd":"1", " 			// 8. 안내채널 우편 선택코드
			"pdpeGeBjSitCd":"1",   			// 9. 상품별 동의대상선택코드
			"hdpN":hdpN,  						// 12. NICE인증에서 입력한 휴대폰번호
			"clnNm":clnNm,  					// 13. NICE인증에서 입력한 고객명
			"ssn":ssn,  							// 14. 주민번호
			"cubCIFRgF": scwin.custinfo.cubCIFRgF  		// 15. 당행고객여부
	}  
	gcm.log("[/TL0150_01_m.xml] [fn_callService()] ==> [TEST_51] [INPUT 데이타(stringifylinputData)]"+ JSON.stringify(stringifylinputData) );
	
	com.exeService (
			{
				"ServiceID": svID,
				"URL": "_XTOUCH_INTERFACE_",
				"CryptoYN": "N",
				"mode": "",
				"NOW_TASK_INFO": scwin.nowTaskInfo	
			},						/ Sub Info(1. ServiceID, 2. URL: 호출할 URL, 3. CryptoYN: 암호 적용여부) ■■	
			inputData,		// 전송할 INPUT 데이타 ■■	
			callbackFn		// 결과 콜백 함수 ■■
		};
	);
};

// 전문 호출 결과 콜백
scwin.service_callback = function(rtnJSON) { 
	gcm.log("[/TL0150_01_m.xml] [service_callback()] ==> [TEST_01] [01. 고객 정보제공동의 등록(TASK_COMME_9214) 전문 롤백]
	[rtn_JSON.ERR_CODE]"+ rtn_JSON.ERR_CODE );

	if(rtn_JSON.ERR_CODE == "S") {
	{
		gcm.log("[/TL0150_01_m.xml] [service_callback()] ==> [TEST_21] [JSON.stringify(rtnJSON)]"+JSON.stringify(rtnJSON) );

		scwin.fn_callService("TASK_COMMF_2002", scwin.service2002_callback(); 	// 여신개인신용정보동의 등록(TASK_COMMF_2002)
	}
};
==============================================================================================================

- 여신 개인신용정보동의 등록(TASK-COMMF_2002) 전문_☆ 호출 에러
1. 현상:
[/TL0150_01_m.xml] [service_callback()] ==> [TEST_70] [JSON.stringify(rtnJSON)} {"ERR CODE" : "E 
"ERR_MSG" : "비로그인 거래토큰없음 콜센터로 연락하세요. \u0000", "OUT_DATA" : "", "CryptoYN":"", "RTN_COOE": "_METXERR_OPM5COMM 320",
2. 원인:
3. 조치: : 박소영 계장이 ICT에 전화해서 해결함
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.12.20(일) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 21 10 ==> 주말근무, 운영 오픈 점검, 개발팀 출근(10시), 유병영 부장 수신 업무(메일) 마무리 못해서 개발자들이 나누어서 처리

- 주말2[★]
- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★] 
- 여신개인신용정보동의 등록(TASK_COMMF_2002) 전문_☆☆ 호출 에러
1. 현상:
[/TL0150_01_m.xml] (service2002_callback()] ==> [TEST_70] [콜백] ■ [JSON.stringify(rtnJSON) {"ERR_CODE": "E"
"ERR_MSG"": " 품종류코드 오류 콜센터로 연락하세요. /00000", "OUT_DATA": "", "CryptoYN" : "", "RTN_CODE" : "_METXERR_OP M52002040"
"RTN_MSG" : "상품종류코드 오류 콜센터로 연락하세요 \u0000","OUT_DATA_TYPE": ""}
2. 원인: 상품종류코드(37: 엘리트론(공무원), 38: 엘리트론(은행선정업체))에서 39, 40으로 변경 되었는데 반영이 안됨
3. 조치:
inputData = {
	"pdKdCd" : v_pdKdcd2, 	// 2. 상품종류코드(PDKD_CD) (39: 엘리트론 (공무원), 40: 엘리트론(은행선정) 수정(박소영 계장 확인) [2020.12.18, by 진태만]
}
==============================================================================================================

- 서버 접속 기기 확인
scwin.onpageload = function() { [ 
	gcm.log("[/TL0070_01_s1.xml] [onpageload()] ==> [TEST_01] [10-1. 서류 자동발급/조회(스크래핑) 화면 로딩...@@@]" ); 
	
	var s_platformNm = scwin.serch_platform(); 		// 서버 접속 기기 확인 추가[2020 12.20. by 진태만]
 
	if(com getCertiCheck() == null &8 (com.getCertiCheck().USER_NAME == "진태만" || com.getCertiCheck().USER_NAME == "박소영")) {	
	// 성명이 진태만, 박소영 이면 
	 	alert("[/TL0070_01_s1.xml] [fn_callService() ==> [TEST_31] [01. 스크랩 ID 생성 정보 호출[R] [성명]"+ com.getCertiCheck().USER_NAME 
			+"[ 플랫폼]"+ s_platformNm );
	}
	
	if(s_platformNm == "PC")	 // 플랫폼이 PC 이면
	{
		scwinfm_scrapping(); 	// 스크래핑 결과 TEST ■■■ 
	}
	else	 // 플랫폼이 mobile 이면
	{
		scwin.fn_callService("TASK_TL0070_00001", scwin.service_callback);		// 01. 스크랩 ID 생성 정보 호출[R]
	}
};

// 서버 접속 기기 확인 추가[2020 12.20. by 진태만]
scwin.serch_platform = function(s_sincgPos_max) 
	gcm.log("[/TL0070_01_s1.xml] [serch_platform()] ==> [TEST_01] [서버 접속 기기 확인]" ); 

	var rtnValue ="";
	var filter = "winl6|win32|win64|mac|macintel": 		// PC 유형 filter
	
	if(navigator.platform) 	// 플랫폼이 존재하면
	{
		gcm.log("[/TL0070_01_s1.xml] [serch_platform()] ==> [TEST_21] [플랫폼]"+ navigator.platform +"[유형 플랫폼 번호]"+
			filter.indexOf{navigator.platform.toLowerCase() );
		
		if(filter.indexOf(navigator.platform.toLowerCase()) < 0)  	// 플랫폼이 없으면
		{
			rtnValue = "mobile";
		}
		else
		{
			rtnValue = "PC";
		}
	}
	
	return rtnValue.
};
==============================================================================================================

- 은행여신거래 기본약관(가계용) 밑 아래로 위치 변경
scwin.onpageload function() { 
	gcm.log("[/TL0050_01_s1.xml] [onpageload()] ==> [TEST_01] [07-1 약관 및 동의서[신용 대출 (TL0150) 화면 로딩...@]" ); 
	
	// 전체동의 toggle 처리
	com setAgreeBox(grp_agreeBox, function(checkValue)
	{
		if(checkValue ) {	 // 전체 동의 체크 이면
			scwin.fn_openPopup(["22", "18", "19", "27", "64"], "Y"); 		// 전체 팝업
		} 
		else
		{ 
			chk_agreeAll.setValue(false);
			chk_agree1.setValue(false); 	// 22: 은행여신거래기본약관(가계용) ==> 밑 아래로 위치 변경[2020.12.20, by 진태만] 
			chk_agree2.setValue(false); 	// 18: 개인(신용) 정보조회동의서
			chk_agree3.setValue(false);	// 19: (공통필수) 개인정보 수집 이용 동의서(여신금융거래)
			chk_agree4.setValue(false); 	// 27: 개인(신용)정보 수집. 이용 및 제공 관련 고객 권리안내문
			chk_agree5.setValue(false);	// 64: 소득 /재직 서류제출 자동화(스크래핑) 서비스 이용 신청서
			btn_confirm.setDisabled(true);	 // 확인 버튼  Disabled 처리
		}
	)};
};
==============================================================================================================
 
- 귤 10kg 주문
1. [나영이네농장] 맛좋은 감귤7kg 10kg산지, 옵션: 나영이네 맛좋은 감귤10kg(S~M)-로얄과, 가격: 12,900원
http://www.enuri.com/detail.j$p?modelno=56516595
https://buy.11st.co.kr/pay/newOrderResult.tmall?orderNo=20201220055463030
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2020.12.21(월) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 18:00 ==> 오픈 12월 28일(월)로 오픈 연기, 피곤해서 석식(유가네 닭갈비, 개발팀)하고 청개천 보도(1시간) 후 퇴근

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 로그인 후 주민등록번호 뒷자리 포커스 처리 ==> 완료[♥♡] 
scwin onpageload = function() { 
	gcm.log("[/TL0010_01_s1.xml] [onpageload()] ==> [TEST_01] [01-1. 본인확인대출 (TL0010, 01) 입력 화면 로딩...@]" ); 
	
	var key2callbackFn = function(compobject, key Data ) {
		gcm.log("[/TL0010_01_s1.xml] [onpageload()] ==> [TEST_01] [보안키 패드 콜백2] [keyData]"+ keyData );
 
		var certiChk = com.getCertiCheck();

		if(com.getCertiCheck().IS_LOGIN) {	 // 로그인한 경우
			ibxJumin1.setValue(certichk.USER_BIRTH_DAY); 	// 생년월일 설정 
			ibx_name.setValue(certiChk.USER_NAME);		//  이름 설정
			ibx_jumin2.focus();	 // 주민등록번호 뒷자리 포커스 처리 추가[2020.12.21, by 진태만]

			ibx_name.setDisabled(true);
			ibxjumin1.setDisabled(true);
			// gcm.log("[/TL0010_01_s1.xml] [onpageload()] ==> [TEST_0511 [로그인한 경우] @@@ [로그인 여부]"+
			// com.getCertiCheck) IS_LOGIN +"[성명]"+ ibx_name.gerValue() +"[주민번호 뒷자리]"+ ibx_jurnin2.getValue() );
		}
	}
	
	gcm.nshc.init(keyComObj, keyCallbackFn, key2CallbackFn); 	// 키보드 보안 설정 ==> 보안키 때드 콜백2 추가[2020 12.21, by 진태만]
};
==============================================================================================================

- 09-1 대출신청 정보TL0120, 01) 입력 화면 수정  ==> 완료[♥♡] 
1. 담보예금 비밀번호 ==> 담보예금계좌 비밀번호
==============================================================================================================

- 2008.02 기준 용어 삭제  ==> 완료[♥♡] 
1. 금융채 6개월 2008.02 기준) ==> (금융채 6개월)
==============================================================================================================

- 건강보험료 납부금액 로직 수정
SELECT SUM(B RES RE_HEPAY_AMT) AS HEPAY_AMT		/* 건강보험료 납부금액 ■ */
			/* ==> 장기요양보험료 납부금액(RES_RE_LICPAY_AMT) 제외 */
			, O AS HEPAY_CNT		/* 납부 횟수 */
			, "" AS COMM_START_DATE	 /* 자격취득일 */
FROM scrap.TB_NHIS_CONFIRM A	/* 건강보험공단 납부확인서 TB */
	scrap.TB_NHIS_CONFIRM_CONTENT B 	/* 건강보험공단 납부확인서 상제 TB */
;	
==============================================================================================================
 
-" TASK META 정보를 입력하세요" 에러
1. 현상 운영 서버에서 신청정보 입력 (TL0190) 화면 아래 에러 발생(개발 서버에서는 정상 등록됨)
// 다음 TASK 실행
xTouchLibUi__.nextTask = function(nowTaskInfo, IN_DATA, commonDATA, inOutRefJson, errorcallbackFn) {

	if(__xTouchLibUi_isEnd()) {
		alert("이미 최종 실행이 완료되었습니다.");
		return;
	}
	
	var tInfo = null: 
	var taskMetalnfo = null;
		
	if (nowTaskInfo.T_ID "START") {
		taskMetalnfo = __XTouchLibinfo.P_META_INFO:

		if(com.isNulL(taskMetaInfo)) {
			taskMetalnto) {
			taskMetalnfo = {};
		} else {
			try ( 
				taskMetalnfo = JSON.parse(taskMetalnfo);
			} catch(e) {
				alert("TASK META 정보를 입력하세요");
				return;
			}
		}
	}
};

2. 원인: 대출방식(ibx_decl_mth) 칼럼명을 잘못 기입해서 나는 에러
scwin.service1902_callback = function(rtnJSON) {
	gcm.log("[/TL0190_01_m.xml] [service1902_callback()] ==> [TEST_01] [콜백] [01. BPR 입고 처리(TASK_TL0190_00002) 전문
		_★★_호출] [rtnJSON.ERR_CODE]"+ rtnJSON.ERR_CODE );
 
	if(rtnJSON.ERR_CODE == "S") {
		var inputData = { 
			"sincg_no": scwin.loanReglistRst.sincg_no 		// 1. 대출신청번호
			, "stat_code": scwin.loanReglistRst.stat_code 		// 2. 대출진행상태
			, "ibx_decl_mth" : scwin.loanReglistRst.ibx_decl_mth	 // 11. 대출방식 ==> ibx_decl_mth에서
			dec_mth로 변경 되었는데 운영 xTouch 관리자 화면 TASK 관리 화면 ==> TL0190에서는 반영이 안되어서 나는 에러 ■■ 
			, "sanghw_mth" : scwin.loanReglistRst.sanghw_mth	// 12. 상환방식  
		}
		gcm.log("[/TL0190_01_m.xml] [service1902_callback()] ==> [TEST_33] [콜백] [JSON.stringify(inputData)}"+ JSON.stringify(inputData) );
	
		scwin.nextTask(inData, {}, "CHK": "NEXT"});		// 다음 Task 함수 호출 
		return;
	}
};

3. 초치: 운영 xTouch 관리자 화면 TASK 관리 화면에서 대출방식(decl_mth) 칼럼명 수정
==============================================================================================================
 
- 본인부담상한액 초과금 지급신청서 팩스 발송
1. 건강보험공단 강남 서부지사 팩스: 02-3275-8321(02-3275-8328: 콜센터에서 잘못 가르쳐 준것으로 추정됨)
2. 발송 번호: 0504-177-0898(진태만 팩스)
3. 팩스 발송 결과 조회
 1) 건강보험공단(http://www.nhis.or.kr) ==> 민원여기요 > 개인민원 > 팩스발송결과조회
   --> https://www.nhis.or.kr/nhis/minwon/jpCda00101.do
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.12.22(화) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 20:30 ==>  

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 전자명함 테스트
http://localhost:9080/ecard.do?ID=20201222000421

scwin.onpageload = function() {
	gcm.log("[/CARD-01_s1.xml] [onpageload()] ==> [TEST_01] [01-1.  전자명함 화면 로딩...@@@]" );
};

scwin.btn_ecard_onclick = function() {
	gcm.log("[/CARD-01_s1.xml] [btn_ecard_onclick()] ==> [TEST_01] [상품가입하기 버튼 클릭 이벤트]");
};
----------------------------------------------------------------------------------------------------------------

- /websquare.jsp 파일에서
<script language="JavaScript" type="text/javascript">
	WebSquareExternal.ECARD_BNCD = "<%=Util.nullToEmpty((String)request getAttribute("ECARD_BNCD"))%>";	// 01. 지점 ■■
	WebSquareExternal.ECARD_SFFN = "<%=Util.nullToEmpty((String)request.getAttribute( ECARD_SFFN"))%>";	// 02 권유 직원 ■■
</script>
----------------------------------------------------------------------------------------------------------------

scwin.fn_getHandoRstList = function() {
	gcm.log("[/TL0190_01_m.xml] [fn_getHandoRstList()] ==> [TEST_01] [P_ID]"+ scwin.nowTaskInfo.P_ID +"[00. 
		한도조회 결과 보관 여부_S[★] _한도조회 결과 정보]"+ JSON.stringify(scwin.handoRstList) );
	
	if(v_handoRstListYn == "Y") 	 // 한도조회 결과 정보가 존재하면
	{
		var commonData = { 
			"CON_TYPE" : scwin CON_TYPE 	// 접속 유형
			,"BNCD" : scwin.COM_BNCD 		// 지점코드■■ ==> 기본 지점코드: 060, 직원번호 000000
			, "SFN" : scwin SFFN					// 직원번호 ■■
		}
		gcm.log("[/TL0190_01_m.xml] [fn_getHandoRstList()] ==> [TEST_ 52] [JSON.stringify(commonData)]"+JSON.stringify(commonData) );
		
		if(com getCertiCheck() == null &8 (com.getCertiCheck().USER_NAME == "진태만" || com.getCertiCheck().USER_NAME == "박소영")) {	
		// 성명이 진태만, 박소영 이면 
			alert("[/TL0190_01_m.xml] [fn_getHandoRstList() ==> [TEST_77] [01. 한도조회 결과 보관 여부_S] [성명]"+ com.getCertiCheck().USER_NAME 
				+"[지점코드]"+ scwin.COM_BNCD +"[직원번호]"+ scwin.SFFN );
		}
		
		scwin.nextTask(inData, {}, "CHK": "NEXT"});		// 다음 Task 함수 호출 
	}
I;
----------------------------------------------------------------------------------------------------------------------

scwin.btn_confirm_onclick= function() {
	gcm.log("[/TL0190_01_m.xml] [btn_confirm_onclick()] ==> [TEST_01] [확인 버튼 클릭 이벤트] [1. 대출방식]"+ rdo_decl_mth.getValue() 
		+"[0. 신청금액]"+ ibx_sincgAmt.getValue() +"[2. 신청 가능 금액]"+ ibx_sincgAmt.sincgPosibAmt  );
	
	if(com getCertiCheck() == null &8 (com.getCertiCheck().USER_NAME == "진태만" || com.getCertiCheck().USER_NAME == "박소영")) {	
		// 성명이 진태만, 박소영 이면 
		alert("[/TL0190_01_m.xml] [btn_confirm_onclick() ==> [TEST_77] [대출 신청 등록] [성명]"+ com.getCertiCheck().USER_NAME 
			+"[01. 지점코드]"+ v_handoRstList.COM_BNCD +"[02. 직원번호]"+ v_handoRstList.SFFN );
	}
	
	var inputData = {
		"loan_kind": v_loan_kind		// 1. 대출종류(1 직장인신용대출, 2 간편대출, 3 엘리트론(공무원), 4 엘리트론(은행선정업체)]
		, "soduck_inputyn": v_soduck inputyn 		// 2  연간소득금액 고객입력여부 . 
		, "openbr": v_handoRstList.COM_BNCD 	// 14. 대출관리점(지점코드) 수정[2020.12.17, by 진태만] ■■ 기본 지점코드: 060(77로 넘어움)
		, "jikno": v_handoRstList.SFFN 				// 15. 권유직원(직원코드) 수정[2020.12.17, by 진태만] ■■
	} 	// --> ▶ 12.14, No. 16 [▶]
	  
	gcm.log("[/TL0190_01_m.xml] [btn_confirm_onclick()] ==> [TEST_52] [INPUT 데이타{inputData)]"+ JSON.stringify(inputData) );

	$p.parent().scwin.callP_loanSincgReg(inputData);	 // 대출 신청 등록(부모 화면) ==> (엘리트론) 대출신청(TASK_TL010_00001, 2193) 전문_☆ 호출
};
==============================================================================================================

- 전자서명 문구 수정 완료 ==> 완료[♥♡] 
scwin.onpageload = function() {
	gcm.log("[/TL0050_01_s1.xml] [onpageload()] ==> [TEST_01] [05-1. 전자서명 [대출] (TL0050, 01) 화면 로딩...@]" ); 
		
	if($p.parent().scwin.nowTaskInfo.P_ID == "PLO001") 	// 모바일 엘리트론 이면 ==> 수정[2020.12.18, by 진태만]
	{
		v_agree_content_tite = '모바일 엘리트론 대출 보증한도 조회를 신청합니다.';
		v_agree_content = "다음 사항을 충분히 이해하고 본인 신용정보의 제공 및 건강보험공단 정보 조회 및 수집에 동의합니다."		// 문구 수정[2020.12.22, by 진태만]
		v_approval_content = "개인신용정보 조회 동의 승인함</br> 건강보험공단정보 수집 및 이용 동의 승인 함";		// 문구 수정[2020.12.22, by 진태만]
	}
	else 		// CAR 드림 대출 이면
	{
		v_agree_content_tite = '제주 CAR 드림 모바일 대출 보증한도 조회를 신청압니다.';
		v_agree_content = "다음 사항을 충분히 이해하고 정보 조회 및 제공 동의합니다.";		// 문구 수정[2020.12.23, by 진태만] 
		v_approval_content = "개인신용정보 조회 동의 승인함</br> 서울보증보험정보 조회 동의 승인함/br> 건강보험공단정보 수집 및 이용 동의 승인함";
		// 1 문구 수정[2020.12.23, by 진태만]
	}
};
==============================================================================================================

- 전자서명 수정
public Map end throws Exception {
	log.debug("[/TASK_TL0120_00003.java] [end()] ==> [TEST_01] [전자서명(TASK_TL0120_00003) (전문_★★) 결과값] ■■ [TelelD]"+ this.getTelelD() );
	
	if("MWEB_01_BYPASS".equals(this.getTeleD()) {
		String curTm = DtUtil.getCurTm(); 
		String SIGN_DATA  =// 전자서명 원문  
			"거래명 : 예금담보 대출"							"\n" +
			"성명 : " + this.userIno.USER_NAME  	"\n" + 
			"생년월일 : " + this.userIno.USER_BIRTH_DAY 		"\n" +		// 생년월일 추가[2020.12.22. by 진태만] | 
			// "고객번호 : " + this.userIno.USER_NEW_CODE 	"\n" + 	// 고객번호 제거[2020.12.22. by 진태만]
		log.debug("[/TASK_TL0120_00003.java] [end()] ==> [TEST_51] [결과값_■■] [SIGN_DATA"]+ SIGN_DATA );

		String SIGN_TK = this.getSignTk{SIGN_DATA);

		returnMap.put("SIGN_TK", SIGN_TK);

		this.setNextTelelD("END");
	}
T
==============================================================================================================

- 작은 폰에서 직장명 팝업 화면 짤려서 나오는 현상 처리 ==> 완료[♥♡] 
1. 원인: 직장명 포커스 설정 ==> 포커스 제거
scwin.onpageload = function() (  
	gcm.log("[/POP_L6040_01_m.xml] [onpageload()] ==> [TEST_01] [01-1. 직장명 검색 팝업 화면 로딩.....@]" ); 
	
	// ibx_wpNm.focus(); 		// 직장명 포커스 설정  ==> 포커스 제거[2020.12.22, by 진태만]
};
==============================================================================================================

- confirm 하위 버튼 명 추가 ==> 완료[♥♡] 
scwin fn_getHandoRstList = function() {
	gcm.log("[/TL0000_01_m.xml] [fn_getHandoRstList()] ==> [TEST_01] [P_ID]"+ scwin.nowTaskInfo.P_ID +"[00. 
		한도조회 결과 보관 여부_S[★] _한도조회 결과 정보]"+ JSON.stringify(scwin.handoRstList) );
 
	if(scwin.nowTaskInfo.P_ID == "PLO001) 	// 엘리트론 STEP1(PL0010. 대출 한도 조회) 이면
	{		
		if(v_handoRstListYn == "Y") 		// 한도조회 결과 정보가 존재하면
		{
			var opt = {"leftBtnLabel": "처음부터 다시하기", "rightBtnLabel" : "이어서 진행하기", width ":"350", "height": "230"}; 
			// 팝업창 정보 설정(넓이, 높이, 하위 버튼 명 설정)  ==> // 팝업창 정보 설정 추가[2020.12.21, by 진태만]

			com.confirm("<br/>고객님은 이미 엘리트론 대출한도를 조회 한 기록이 존재 합니다. <br/>한도 조회를 한 결과값으로 대출 신청을
			진행하시겠습니까?", scwin.fn_confirm_callback, opt);
			return;
		}
		else
		{
			scwin.nextTask(inData, {}, {"CH" : "NEXT"});	 // 다음 Task 함수 호출 => 01. [공통] 상품가입안내[대출] (TZ0001, 01) ■■■
		};
	}
};

scwin.fn_confirm_callback = function(rtnValue) {
	gcm.log("[/TL0001_01_m.xml] [fn_confirm_callback()] ==> [TEST_01] [confrim 창 콜백] [rtnValue]"+ rtnValue );
	
	if(rtnValue)		// '이어서 진행하기' 버튼 클릭이면(엘리트론 STEP2 진행 처리)
	{
		gcm.log("[/TL0001_01_m.xml] [fn_confirm_callback()] ==> [TEST_11] [confrim 창 콜백] [엘리트론 STEP2(PLO010) 프로세스 호출]" ); 
		com.menulist.goXTouch("PL0010", "", "", ""	); 		// 엘리트론 STEP2(PL0010, 대출 신청) [신용 대출] 프로세스 호출	
	}
	else 		// 처음부터 다시하기 버튼 릭이면(한도조회 결과 삭제 처리)
	{
		gcm.log("[/TL0001_01_m.xml] [fn_confirm_callback()] ==> [TEST_21] [confrim 창 콜백] [한도조회 결과 삭제 전문 호출] [rtnValue]"+ rtnValue );
		scwin.fn_callService("TASK_TL0160 00003', scwin.service03_callback(); 	// 한도조회 결과 삭제 전문 호출
	}
};
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2020.12.23(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 20:30 ==> 타이핑 할 것(★★] 처리(19:30)	 ==> 집 PC에서 작업

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 전자명함 테스트 ==> 완료[♥♡] 
1. 지점코드(v_handoRstList.COM_BNCD)가 77로 넘어옴(기본 지점코드 060) ==> 개발 서버에서 확인
==============================================================================================================
 
- 만기일시상환 radio(상환방식) 체크 처리로 수정 ==> 완료[♥♡]  
scwin.rdo_decl_mth_onviewchange function(e) { 
	gcm.log("[/TL0190_01_s1.xml] [rdo_decl_mth_onviewchange()] ==> [TEST_01] [대출방식 radio 박스 변경 이벤트]" );
	
	if(rdo_decl_mth.getValue() == "2") 	// 대출방식이 종합통장대출(마이너스통장) 이면
	{
		rdo_sanghw_mth_2.setValue("1");		// 만기일시상환 radio(상환방식) 체크 처리로 수정[2020.12.23, by 진태만]
	}
};
==============================================================================================================

- (엘리트로) 대출신청(TASK_TL0190_00001, 2193) 전문 중 호출 에러 - ==> 완료[♥♡]  
1.. 현상 _METXERR_01211
[/TL0190_01_m.xml] [service_callback()] ===> [TEST 70] ■ [JSON.stringify(rtnJSON)]{"ERR_CODE" : "E"
, "ERR_MSG": ".","OUT_DATA": "", "CryptoYN" :"", "RTN_CODE": "_MFTXERR_01211"
, "RTN_MSG": "","OUT_DATA TYPE": ""}
2. 원인: 개발 서버 Disk가 가득 차서 나는 에러라고 함 
3. 조치: 이영진 수석에서 전화해서 해결함
==============================================================================================================
 
- 고객 정보제공동의 등록(TASK-COMMF -9214) 전문 호출 에러 
1. 현상 _MFTXERR-OP90149Y 105(현주경 계장이 엘리트론 약정 등록시 에러 남)
[/TL0150_01_m.xml] [service_callback0()] ===> [TEST 70] ■ [JSON.stringify(rtnJSON)]{"ERR_CODE" : "E"
, "ERR_MSG": "에러메세지 미등록, 전산부로 연락하세요.","OUT_DATA": "", "CryptoYN" :"", "RTN_CODE": "_MFTXERR_OP90149Y105"
, "RTN_MSG": "에러메세지 미등록, 전산부로 연락하세요.","OUT_DATA TYPE": ""} 
2. 원인: 현주경 계장 개인 정보 데이타가 문제인 것으로 추정됨
3. 조치: 박소영 계장이 ICT에 연락해서 처리
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.12.24(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 20:30 ==> Elegator Company 백팩 구입(15 :40, 3만 5천원(검정, 파란 무늬, 용량↑), 남대문 시장) 

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- jWEB Grand 오픈 대비 점검
==============================================================================================================
 
- 회의 (09 00, 회의실, 개발팀)
1. 일정 공지
 1) 12월 28일 (월) Grand 오픈
  가. 오늘 17시에 운영 서버 배포 후 프리징
  나. 개발 미 완료 ==-> 신용카드 개발(박찬영 대리)만 남아 있음 
 2) 12월 31일(금) 정상 필수
  가 구종식 부장 오늘 필수(11시, 다음주에 더케이 손해보험 출근 후 추후 프로젝트 일정 알려 준다고 함) 
 3) 2021년 1월 4일(월) ~ 6일(수) 휴가
==============================================================================================================
 
- 01.jWEB 소스 분석 ==> 완료[♥♡] 
01. jWEB 소스 분석.txt 파일 생성
==============================================================================================================
 
- 02. jWEB 샘플 소스 분석 ==> 완료[♥♡] 
02. jWEB 샘플 소스 분석.txt 파일 생성
==============================================================================================================
 
- 50. jWEB 전문 분석 ==> 완료[♥♡]  
53. jWEB 전문 분석(MW_IWEB) 파일 생성
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2020.12.25(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:30 ==> 성탄절(출근), 타이핑

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- Memo(2020.12, 02 ~ 23) 텍스트 촬영, 편집
1. 구글 렌즈(전체 선택  ==> 컴퓨에로 복사 ==> TAMA_NB_CO_GID
 1) TAMA_NB_CO_GID 노트북에서 편집기(Notepad ++) SW에서 ==> Ctrl + V
==============================================================================================================

- 공휴일[★]
05:00 기상
05:40 조식
06:15 집출발(노트북 가지고 감)
06:25 대림역(지하철)
06:53 을지로입구역(하차)
06:54 도보(을지로입구역 --> 서울패션타운 --> 제주은행 ICT 지원부 6층 사무실)
07:35 출근
08:00 텍스트 촬영, 편집 작업
11:30 중식(CU 편의점)
12:00 도보
13:00 텍스트 촬영, 편집 작업
18:11 석식
18:30 도보(청계천 --> 오간수교(청계6가 교차로, 동대문) --> 명동)
2);20 퇴근
2);40 명동역(지하철)
21;30 대림역
22;40 귀가
23:00 취침
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2020.12.26(토) 작업 ■■■■■■■■■■■■■■■■■■ 
--->07:30 ~ 20:00 ==> 주말 출근(07:30)

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- jWEB 전문 텍스트 촬영, 편집
11. jWEB 전문3(jWEB) 파일 생성 ==> 00. 전문3.txt
==============================================================================================================

- TAMA 회사 노트북명(컴퓨터 이름(C)) 변경
1. TAMA_HOME ==> TAMA_NB_CO_GID --> (주)지아이데이타 회사에서 지급 받음 노트북
==============================================================================================================

- TAMA 개인 노트북명(컴퓨터 이름(C)) 변경
1. TAMA_HOME ==> TAMA_NB_HOME
==============================================================================================================

- 스프링 AOP(A$pect Oriented Programming 
1. 관점 지향은 쉽게 말해 어떤 로직을 기준으로 핵심적인 관점, 부가적인 관점으로 나누어서 보고 그 관점을 기준으로 각각 모듈화하
겠다는 것이다. 여기서 모듈화란 어떤 공통된 로직이나 기능을 하나의 단위로 묶는 것을 말한다.  
1. https://engkimbs.tistory.com/746 
2. https://www.youtube.com/results?search_query=AOP
==============================================================================================================

- 주말[★]
05:00 기상
05:40 조식
06:15 집출발
06:25 대림역(지하철)
06:53 을지로입구역(하차)
06:54 도보(을지로입구역 --> 서울패션타운 --> 제주은행 ICT 지원부 6층 사무실)
07:35 출근
08:00 텍스트 촬영, 편집 작업
11:30 중식(CU 편의점)
12:00 도보
13:00 텍스트 촬영, 편집 작업
18:11 석식 
18:30 도보(청계천 --> 오간수교(청계6가 교차로, 동대문) --> 명동)
2);20 퇴근
2);40 명동역 정류장(507번 버스 승차)
21;30 대동초 정류장
22;40 귀가
22:30 샤워 ==> 체중: 74.1kg
22:45 인슐린 약 교체(276U, 19U 남음)
23:00 취침
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2020.12.27(일) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 08:00 ~ 21:30 ==> 출근

- 텍스트 촬영, 편집
01. jWEB 분석 파일 생성 ==> 01. jWEB.txt
02. jWEB 샘플 분석 파일 생성 ==> 01. 샘플.txt
==> 너무 시간이 많이 걸림: 구글 렌즈에서 텍스트 인식율 높이는 방법 고민, XPlatform 일괄 편집 방법 고민할 것
==============================================================================================================
 
- 주말2[★] 
05:00 기상
05:40 조식
06:15 집출발
06:25 대림역(지하철)
06:53 을지로입구역(하차)
06:54 도보(을지로입구역 --> 서울패션타운 --> 제주은행 ICT 지원부 6층 사무실)
07:35 출근
08:00 텍스트 촬영, 편집 작업
11:30 중식(CU 편의점)
12:00 도보
13:00 텍스트 촬영, 편집 작업
18:11 석식 
18:30 도보(청계천 --> 오간수교(청계6가 교차로, 동대문) --> 명동)
2);20 퇴근(노트북 가지고 감)
2);40 명동역 정류장(507번 버스 승차)
21;30 대동초 정류장
22;40 귀가
22:30  인터넷 서핑
23:00 취침
==============================================================================================================
 
- 아이패드2 다운 그레이드
1. 020.01.12 아이폰 4S, 아이패드 2 iOS 6 다운그레이드 하는 법 ==> https://m.blog.naver.com/6984htu1/221774654740
2. 8년된 아이패드의 심폐소생술 성공기 ==> https://ianseo.tistory.com/32
3. https://m.blog.naver.com/PostView.nhn?blogId=burton1&logNo=221619274687&proxyReferer=https:%2F%2Fwww.google.com%2F
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2020.12.28(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 20 30 ==> 제주은행 Prj Grand 오픈(9시, 명동)

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 운영 서버 점검
==============================================================================================================

- PUTTY에서 복사한 텍스트 ?지는 문제 처리  ==> 완료[♥♡] 
1. 하이탬(HI-TAM) 5.0[접근통제시스템] => jmbisad1a[172.16 190 120]: 마우스 우 클릭 --> SSH  --> PUTTY: 클릭 
2. PUTTY(새창): 마우스 우 클릭 ==> Change Settings: 클릭 ==> jmbisad1a[172.16 190 120] (새창)
 1) 01. 개발 서버(jWEB): 선택 ==> Save 버튼: 클릭
7. Window ==> Apperance ==> Font Settings ==> Change: 클릭
  ===> 글꼴(F): 돋움체, 크기(S) : 10, 스크립트(R); 한글 ==> Applay: 클릭
3. 하이탬(HI-TAM)을 시작할 때 마다 설정(Change Settings)을 다시 잡아야 함
-----------------------------------------------------------------------------------------------------------------------

- 라인 수 수정
1 Window ==> Lines of scrollback
1) 200(디폴트) ==> 100000(10만)으로 변경)
==============================================================================================================

- 하이탐에서 신규 터미널 추가 ==> 완료[♥♡] 
1. 환경 설정(새창) 
 1) 실행 터미널 설정: 글릭 ==>  추가
  가. 실행 터미널 설정(Xshell 4)
  가) 터미널 이름: Xshell 4
   나) 파일 경로: C\Program Files (x86)\NetSarang\Xshell 4\Xshell.exe 
   다) 터미널 타입: Window 
   라) 실행 옵션: /url telnet://<ip><port> -newtab <dev_nm>
-------------------------------------------------------------------------------------------------------------------

 2) 외부 터미널 설정 %3 SSH(맵> 추가 클릭
  가 실행 터미널 선택 (새창) 
   가) Xshell 4(추가한 Xshell 4 선택): 클릭 ==> 확인
==============================================================================================================

- 금융인증서 로그인 에러 (개발 서버에서)
1. 현상: 스크래핑 후 금융인증서 로그인시에 "휴대폰번호 유효성 오류 발생"라는 에러가 뜸(엘리트론 테스트)
2. 원인: 진태만 개인 정보에서 핸드폰번호 입력 안 되어 있다고 함 
3. 조치:
 1) 박소영 계장에게 진태만 개인 정보에서 핸드폰번호 입력해 달라고 요청 --> 처리 안됨
 2) 이전 조치: 금융인증서 등록 정보 삭제(이경일 부장) ==> 금융인증서 재가입(비대면인증[면허증], 계좌등록)
==============================================================================================================

- jWEB 전문 분석
51. 전문(XTOUCH) ==> 01. 담보예금계좌 조회(TASK_COMMF-2173) 전문 호출 
51. 전문(XTOUCH)_정보계 ==> 예금담보 대출 신청 전문 호출
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.12.29(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 8:000 ==> 비 조금 (16시), 석식(18시, 용호동 낙지(종각점), 맥주, 현용[임플란트:110만 원) 현용이가 쏨)

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
1. jWEB Grand 오픈 점검
==============================================================================================================
  
- 제주은행 콜센터에서 전화(10:30)
1.WEB(운영)에서 엘리트론 테스트 ==> 스크래핑은 되었는데 BPR 입고가 안되어서 건강보험공단 자료를 못 받아서 전화 옴 
==> 일단 테스트 자료 취소 요청, BPR 담당자인 이윤석 차장에게 동보
==============================================================================================================
  
- WEB 서버(문영) 에러
1. 도메인 바뀌면서 방화벽 세팅을 안 해줘서 404 에러가 뜬다고 함 ==> weblogic 엔지니어 방문(14시)
 1) ICT 지원부에서 해결함(16:45)
==============================================================================================================
  
- WEB 전문 분석
51 전문(XTOUCH) ==> 01. 담보예금계좌 조회TASK_COMMF_2173) 전문 호출 
51. 전문(XTOUCH)_정보계 ==> 예금담보 대출 신청 전문 호출
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.12.30(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:30 ==> 강추위 (영하 10도), 델 모니터(회사 꺼) 오태범 이사가 차로 수거해 감(10시), 중식(11:40, 명동 순대국, 태훈형)
								, jWEB Prj 필수(18:30)

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
1. jWEB Grand 오픈 점검
==============================================================================================================
  
- WEB 전문 분석
51 전문(XTOUCH) ==> 01. 담보예금계좌 조회TASK_COMMF_2173) 전문 호출 
51. 전문(XTOUCH)_정보계 ==> 예금담보 대출 신청 전문 호출
==============================================================================================================

- DB Aspect 사용 
1. 로컬 서버를 개발 서버 DB로 연결 시킴
DEBUG(" [ com xtouch xtouchlib dao WPE 50 GET SERVICE INFO Dao 1- com xtouch.init DaoA$pect 
DEBUG(" [ DaoAspect WFE 50 GET SERVICE_INFO_Dao inserTL0gDetail boolean ] - com xtouch init Dao Aspect
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.12.31(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 20 30 ==> 휴가1

- 휴가1[★]
1. 집에서 휴식
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 
+----------------------------------------------------// End //----------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
