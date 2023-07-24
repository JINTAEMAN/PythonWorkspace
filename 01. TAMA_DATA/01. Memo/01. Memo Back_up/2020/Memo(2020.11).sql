

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+----------------------------------------------// Memo(2020.11) //----------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2020.11.01(일) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 08:00 ~ 21:00 ==> 하루 종일 비옴

- 주말2[★]
08:40 기상
08:50 조식
09:30 실내 자전거 타기
10:30 종료
09:40 인터넷 서핑
12:00 중식
12:30 실내 자전거 타기
13:30 종료
13:40 인터넷 서핑
15:30 Memo(2020.10) 작업 타이핑 하기
18:10 석식
18:30 루옌(수종) 귀가 
18:40 실내 자전거 타기
19:40 종료 
23:00 취침
==============================================================================================================
  
- 수종 태권도 관비 납입(10월달) ==> 완료 ■
1. 11월 관비 7만원 송금[신한은행: 110 290 040717, 예금주: 이충현] 
 1) 코로나19로 9월 2주 휴관해서 절반만 송금
==============================================================================================================

- 분명 하위권이었는데 갑자기 성적급등해서 SKY간 친구들의 공통된 특징은? (공부하는 방법)
0. 압축공부(공부법)
1. 성장형 마인드
2. 시스템적 사고
3. 의식적인 노력
 1) 적극적 사고
https://youtu.be/Z1P_FXEuGi0
-------------------------------------------------------------------------------------------------------------------------------

- Dr.Law이윤규변호사
https://www.youtube.com/channel/UCnoMoEViyPVWsKch6X-N61w
==============================================================================================================

- 돈이면 다 되는 세상속에서 “돈”에 강한 아이로 키우는 법!!
https://youtu.be/dsqvdFCjX_w
==============================================================================================================

- 네이버 키보드 앱
1. 마트폰 글자 입력 _ 쉽고 편한 네이버 스마트 보드 사용법
https://youtu.be/70XdIHPxPuM
==============================================================================================================
 
- 쌀 20kg 구입
1. [B791563661] 배동바지 쌀(미국산) 20kg 칼로스쌀 수입쌀, 가격: 40,830원
http://www.enuri.com/detail.jsp?modelno=36132094
http://itempage3.auction.co.kr/DetailView.aspx?itemNo=B791563661&frm3=V2
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.11.02(월) 작업 ■■■■■■■■■■■■■■■■■■ 
--> 07:30 ~ 21:00 ==> MS Office Lens 처음 사용(문서 촬영 혁신), 구부장과 SBank 관련 논의 (09:30, 회의실)
								, 이광철 이사와 SBank 관련 논의(13:20, 회의실, ASIS 없음: 모든 것은 기획 기준으로 개발하라고 함)

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 제주 CAR 드림 대출 (신차) PL0004) 수정
- 자식창에서 부모창으로 전문 호출
// 확인 버튼 클릭 이벤트 
scwin.btn_confirm_onclick-function(e) { 
	gcm.log(/TL001001_s1.xml] (btn_confirm_onclick()] ==> [TEST_01] [확인 버튼 클릭 이벤트] [성명]"+ ibxname.getValue() ); 
	
	var inputData = {  	// IN_META INF0 등록[전문] (서비스등록관리 화면에서) @@@  
		"sName": ibx_name.getValue(),		// 1. 성명  
		"ssn1":  ibx_jumin1.getValue(),		// 2 생년월일
		"ssn2": gcm.nshc.getData(ibx_jurmin2),					// 3. 주민번호 뒷자리 (7) 키보드 보안 처리
		"chgLnPpdKdCd": sbx_chgLnPpdKdCd.getValue(), 	// 4. 전환대출 상품
		"gitaTrankind" : chk_gitaTrankind.getValue(),  			// 5. 본인 이용 리스 렌트 차량 본인 매입
		"salary": v_salary 														// 6. 연소득
	}

	$p.parent().scwin.callCheckJum(inputData): 	// 주민번호 유효성 체크 전문 호출(부모창)
};
-------------------------------------------------------------------------------------------------------------------------------

// 주민번호 유효성 체크 전문 호출 (부모창)
scwin.callCheckJum =function(inputData) { 
	gcm.log("/TLO010_01_m.xml] [callCheckJum()] ==> [TEST 01]" ):  
	
	scwin.selfHandoInfo = inputData; 	// 본인한도 정보 Data
 
	scwin.fn_callService("TASK_TZ0010_00004", scwin.service_callback);	// 주민번호 유효성 체크 전문(TASK_TZ0010_00004.00004) 전문 호출
};

// 주민번호 유효성 체크 서비스
scwin.fn_callService = function(svID) {
	gcm.log("/TL0010_01_m.xml] [in_callService()] ==> ITEST_01] [주민번호 유효성 체크(TASK_TZ0010_00004) 전문_★★_호출] [svID]"+ svID ); 
  
	var inputData = {  	// IN_META INF0 등록[전문] (서비스등록관리 화면에서) @@@  
		"sJumin1": scwin.selfHandoInfo.ssn1,		// 1. 주민번호1(생년월일)
		"sJumin2":  scwin.selfHandoInfo.ssn2,		// 2. 주민번호2
		"sName": scwin.selfHandoInfo.sName,		// 3. 성명   
		"salary":  scwin.selfHandoInfo.salary			// 4. 연소득
	}   
	gcm. log("/TL0010_01_m.xml] [in_callService()] ==> [TEST 51] [INPUT 데이타(inputData)]"+ JSON.stringify(inputData) );
 
	com.exeService(
	{
		"ServiceID": svID,
		"URL": "_XTOUCH_INTERFACE_",
		"CryptoYN": "N",
		"mode": "",
		"NOW_TASK_INFO": com.getPopupParam().inData.p_nowTaskInfo			// 현재 실행중인 Task 정보 셋팅
	},											/ Sub Info(1. ServiceID, 2. URL: 호출할 URL, 3. CryptoYN: 암호 적용여부) ■■	
	inputData,							// 전송할 INPUT 데이타 ■■	
	scwin.service_callback			// 결과 콜백 함수 ■■	
	};	
};
 
// 전문 호출 결과
scwin.service_callback = function(rtnJSON) {
	gcm.log("[/TL0010_01_m.xml] [service_callback()] ==> [TEST_01] [콜백] [주민번호 유효성 체크(TASK_TZ0010_00004) 전문_★★_호출] 
	[ERRO_CODE]+ rtnJSON.ERRO_CODE ); 

   if(rtnJSON.ERRO_CODE == "S") {
		gcm.log("[/TL0010_01_m.xml] [service_callback()] ==> [TEST_21] [주민번호 유효성]"+ rtnJSON.OUT_DATA.VAL_SUC_YN 
		+"[JSON.stringify(rtnJSON)]"+ JSON.stringify(rtnJSON)  ); 
		
		if(rtnJSON.OUT_DATA.VAL_SUC_YN== "S") {		// 주민번호 유효성 체크가 성공이면
			gcm.log("[/TL0010_01_m.xml] [service_callback()] ==> [TEST_21] [JSON.stringify(rtnJSON)]"+ JSON.stringify(rtnJSON) ); 
		 
			if(cwin.selfHandoInfo != null) {		// 본인한도 정보 Data가 존재하면
				var inData = scwin.selfHandoInfo;
			}
			
			var inOutRefJson = {"CHK": "1"};
			scwin.nextTask(inData, {}, inOutRefJson);		// 다음 Task 함수 호출 ==> 
	   }
   }
};

scwin.nextTask = function(inData, inData, inOutRefJson) {
	gcm.log("[/TL0010_01_m.xml] [nextTask()] ==> [TEST_01] [콜백] [inData.sName]+ inData.sName +"[inData.sName]+ inData.sName+ 
	[inData.sName]+ inData.sName ); 

	var inputData = {  	// IN_META INF0 등록[전문] (서비스등록관리 화면에서) @@@  
		"sName": inData.sName,		// 1. 성명  
		"ssn1": inData.ssn1,				// 2 생년월일
		"ssn2"  inData.ssn1,				// 3. 주민번호 뒷자리 (7) 키보드 보안 처리
		"chgLnPpdKdCd":  inData.chgLnPpdKdCd	// 4. 전환대출 상품
		"gitaTrankind" :  inData.gitaTrankind  			// 5. 본인 이용 리스 렌트 차량 본인 매입
		"salary":  inData.salary									// 6. 연소득
	}
	
	var v_pdKdCd ="";		// 샹품종류 코드(대출상품코드) 
};
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.11.03(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:00 ==>  

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 제주은행 CAR 드림 대출(신차): PL0004) 수정
1. 자체 단위 TEST, 개발서버에 업데이트 처리 ==> 완료[♥♡]
==============================================================================================================

- 예금 담보 대출(PL0003) 수정
==============================================================================================================

- 04 2.전자서명 약관동의 및 확인
1. Description 5에서 취소 버튼을 누르면 다음, 이전 페이지 이동 불가
2. 전자서식 화면 (공통] 약관 화면으로 되어 있음 
 1) 인지 소프트 화면과 맞추어 퍼블 수정해야 될 것으로 판단됨. 
3. 전자서식 전문조회를 하면 31 엘리트론(직장인), (37:엘리트론(공무원), 38 엘리트론 (은행선정업체))로 조회 
 1) 공무원 18개은행 선정업체 ==> 18개, 직장인 (31) ==> 17개 > 기획 문서에는 10개 만 처리되게 되어 있음
 ==> 기획 문서에는 10개만 처리하면 되는지 문의 아래 2개 서식 거래코드 없음
  가 상품별 선택] 개인(신용)정보 수집 이용 동의서(여신. 신용대출 가계용) ==> 신규로 판단됨생성 요청 ■
  나. 상품별 선택] 개인(신용)정보 수집 이용 동의서(여신, 한마음종압통장(신용)용) 신규로 판단됨 생성 요청 ■ 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.11.04(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:00 ==>  주간보고(18주차)서 작성, 집에 LG TV 설치(23시, 모뎀에 HDMI 연결) 

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 예금 담보 대출(PL0003) 수정
scwin.onpageload = function() { 
	gcm.log("[/TL0120_01_m.xml] [onpageload()] ==> [TEST_01] [09. 대출신청 정보(TL0120) 화면 로딩...@@@]" ); 
	
	scwin.fn_callService("TASK_COMMF_2173", scwin.service_callback);		// 01. 담보예금계좌 조회(TASK_COMMF_2173) 전문 호출 
};

// 전문 호출
scwin.fn_callService(svID, callbackFn) { 
	gcm.log("[/TL0120_01_m.xml] [fn_callService()] ==> [TEST_01] [01. 담보예금계좌 조회(TASK_COMMF_2173) 전문_★★_호출]" ); 
	
	var inputData = {		// IN_META_INFO 등록[전문] (서비스 등록 관리 화면에서) @@@@
		"qqAcN": "32"		// 1. 조회 계좌번호 
	}; 
	gcm.log("[/TL0120_01_m.xml] [fn_callService()] ==> [TEST_41] [JSON.stringify(inputData)]"+ JSON.stringify(inputData) ); 
	
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
 
- 회식 (18:30, 화남 돼지삼겹살, 이석부 사장, 오태범 이사, 개발팀, 박소영 계장, SM 2명) 
1. 제주은행 모바일 뱅킹 (WEB 프로젝트 1달 연기 (확실)
 1) 내가 대출 개발하는데 고생한다고는 점 부각(구종식 부장) 
2. 장선진[제주, 중국인 아내) 과장 우리 회사 입사 요청
==============================================================================================================

- [U+tv] TV에 까만 화면만 나와요
https://youtu.be/Ans8HgazZD8
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.11.05(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:00 ==> 지출결의서 제출(13시, 9장, 박전유 대리에서 부탁), 석식(18:30 피게[국대 닭곱새], 현용 만남)

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 엘리트론(PL0001) 개발
==============================================================================================================

1. 결과 값 에러 김유이 사원이 대출계좌 보유내역 조회 (NOTASK-COMMF-1260) 전문에 칼럼(금리인하요구권신청 가능여부: IrtRdcDemPiBeF)
을 추가 안 해서 칼럼이 하나씩 뒤로 밀림 
==============================================================================================================

- 개발 관련 회의 (09:20, 회의실, 개발팀) 
1. 일정 관리 
 1) 이행 고민 ==> 구종식 부장(12월 18일 철수하고 싶어 함, (주)더케이손해보험 프로젝트에 투입되길 원함) 
2. 이광철 이사 오늘 제주은행에 업무 협의로 감 
 1) 프로젝트 1달 연기(확실) 
==============================================================================================================

- SBank 분석 
02 SBank(1. CAR 드림).txt
02. SBank(2. 예금 담보) txt
02 SBank(3. 엘리트론).txt
02. SBank(4. 대출 실행) txt
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.11.06(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:00 ==>  

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 엘리트론(PL0001) 개발
==============================================================================================================

- 전자서식 수정
scwin.onpageload = function() { 
	gcm.log("[/TL0230_01_m.xml] [onpageload()] ==> [TEST_01] [04. 전자서명 및 약관동의 및 확인(TL0230) 화면 로딩...@@@]" ); 
	
	xTouchLibUi.uiChange(scwin.nowTaskInfo, "SUB1", $p);	// 04-1. 약관동의 화면 Display
};

// 서식코드 정보(부모 화면)
scwin.callSvc_formInfo = function(inputData) { 
	gcm.log("[/TL0230_01_m.xml] [callSvc_formInfo()] ==> [TEST_01] [서식코드 정보(부모 화면)]" ); 
	
	scwin.fn_callService("TASK_TL0230_00002", scwin.service_callback);		// 서식코드 정보 조회(TASK_TL0230_00002, 3090) 전문 호출 
}; 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.11.07(토) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 21:00 ==>  

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 엘리트론(PL0001) 개발
==============================================================================================================

- 주말[★]
05:11 기상
05:40 조식
06:11 집출발
06:24 대림역(지하철)
06:50 도보  
07:30 촐근
07:40 토요 근무 
13:11 도보
14:00 토요 근무
18:11 석식(햄버거, 핫도그[CU 편의점])
18:20 도보
19:00 토요 근무
20:20 퇴근
20:30 명동역 정류장
20:40 507번 버스 탑승 ==> SBS 장길산[22회] 시청)
21:30 대동초 정류장 도착 
21:40 귀가
23:00 샤워 ==> 체중: 741kg
22:41 인슐린 약 교체(294U, 14U 남음)
23:30 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.11.08(일) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 08:00 ~ 21:00 ==>  

- 주말2[★]
09:40 기상
09:50 조식
10:00 실내 자전거 타기
11:00 종료
11:00 인터넷 서핑
12:30 중식
12:50 실내 자전거 타기
13:50 종료
13:40 인터넷 서핑
14:00 루옌(수종) 보라매 공원에 놀러감
14:10 루옌이 사용하든 아이패드(2세대) 안방에서 가지고 옴 ==> 비밀번호 설정: 0339
17:00 수종 귀가 ==> 루옌 은영이집에서 밥먹고 온다고 함
18:00 석식(수종)
18:40 실내 자전거 타기
19:40 종료
21:15 루옌 귀가
23:00 취침
==============================================================================================================

- 스마트폰 음량 사운드 조절 기능을 알려드립니다 (삼성 사운드 어시스턴트 사용 방법)
https://youtu.be/jWwVeDd7VFc
==============================================================================================================

- 도장, 서명을 문서에 깔끔하게 삽입하기(포토스케이프)
https://youtu.be/NDTU-BWb9ic
==============================================================================================================

- 필수 밑반찬, 멸치볶음! 오래 두고 먹어도 맛있어요
https://youtu.be/fm47aK3UtKM

- 반찬 순위 넘버 원! 진미채 볶음을 딱딱하지 않고 부드럽게 만드는 법
https://youtu.be/gaIlS0sLcbI
==============================================================================================================

- 스마트폰을 음성 비서 로 활용 하는 방법(구글 어시스턴트 사용법-How to Use Google Assistant)
https://youtu.be/QF-FU4iLVFQ
==============================================================================================================

- 구형 아이패드(2세대)에 넷플릭스 어플,앱 설치하는 방법
https://youtu.be/M84i6bw46A0 
==> youtube는 이 ipad와 호환되지 않습니다
https://wisconsinsdc.com/ko/ipad/1197-what-to-do-if-netflix-is-not-compatible-with-your-ipad.html
==============================================================================================================

- 당뇨 유발하는 사소한 습관 5가지! 당뇨 걱정된다면 이 습관만큼은 고쳐야 합니다!
https://youtu.be/_8qn8BfueUk
==============================================================================================================

- iPad
1. Apple ID 
tamario@naver.com/ssjtm3390A 
2. Change your security questions. 
Q: 처음 만난 유명인? 
A: jt390A 
- iCloud   ■■■ 
*@*.*/ssjtm3390A 
- iTunes Store 
*@*.*/ssjtm3390A 
- iMessage
*@*.*/ssjtm3390A 
==============================================================================================================  
   
■■■■■■■■■■■■■■■■■■ 2020.11.09(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:00 ==>  

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 엘리트론(PL0001) 개발
- 06-1. 직장인 정보 입력[신용 대출] (TL0140) 화면 개발
scwin.onpageload = function() { 
	gcm.log("[/TL0140_01_m.xml] [onpageload()] ==> [TEST_01] [직장인 정보 입력[신용 대출] (TL0140) 화면 로딩...@@@]" ); 
	
	scwin.fn_callService("TASK_COMMF_9210", scwin.service_callback);		// 01. CIF 고객정보 조회(TASK_COMMF_9210) 전문 호출 
};

scwin.fn_callService(svID, callbackFn) {
	gcm.log("[/TL0140_01_m.xml] [fn_callService()] ==> [TEST_01] [01. CIF 고객정보 조회(TASK_COMMF_9210) 전문_★★_호출] [svID]"+ svID ); 
	
	com.exeService(
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
};

scwin.service_callback = function(rtnJSON) {
	gcm.log("[/TL0140_01_m.xml] [service_callback()] ==> [TEST_01] [콜백] [01. CIF 고객정보 조회(TASK_COMMF_9210) 
	전문_★★_★★_호출 콜백] [ERRO_CODE ]+ rtnJSON.ERRO_CODE ); 

   if(rtnJSON.ERRO_CODE == "S") {
		gcm.log("[/TL0140_01_m.xml] [service_callback()] ==> [TEST_21] [JSON.stringify(rtnJSON)]"+ JSON.stringify(rtnJSON) ); 
		
		scwin.custbasicInfo = rtnJSON.OUT_DATA;		// 고객 기본 정보 DATA
   }
};
==============================================================================================================
 
- 10. 대출한도 조회 결과[신용 대출] ==> 완료[♥♡]
scwin.onpageload = function() { 
	gcm.log("[/TL0160_01_m.xml] [onpageload()] ==> [TEST_01] [08. 대출한도 조회 결과[대출] (TL0080) 화면 로딩...@@@]" ); 
	
	scwin.fn_callService("TASK_TL0160_00001", scwin.service_callback);		// (엘리트론) 예상한도 조회(정보계) 전문 호출 
};

// 전문 호출
scwin.fn_callService(svID, callbackFn) {
	gcm.log("[/TL0160_01_m.xml] [fn_callService()] ==> [TEST_01] [(엘리트론) 예상한도 조회(TASK_TL0160_00001) 전문_★★_호출]" ); 
	
	var inputData = {};
	var v_loan_kind = "3";		// 1. 대출종류
	var v_jikup_gun = "3";		// 2. 고객직업군
	var v_cust_income = "5000000";		// 12. 연간소득금액(원)
	var v_selfVerInfo = scwin.IN_DATA["TL0010"];		// 01. 본인확인[대출] 정보 TASK
	
	if(v_selfVerInfo != null) {		// 01. 본인확인[대출] 정보가 존재하면
		v_cust_income = v_selfVerInfo.annual_income;	// 연간소득금액(원)
	}
	
	var v_commonData = xTouchLibUi.getComonData();	// commonData 조회
	var v_pdKdCd = v_commonData.PDKD_CD;		// 상품종류코드(PDKD_CD) (43:카드림(신차), 35:카드림(중고차))
	gcm.log("[/TL0160_01_m.xml] [fn_callService()] ==> [TEST_20] [v_commonData]"+ JSON.stringify(v_commonData) ); 
	
	if(v_pdKdCd == "40")  v_loan_kind = "4";			// 1. 대출종류(상품종류코드가 4이면)
	if(v_pdKdCd == "40")  v_jikup_gun = "4";			// 2. 고객직업군(상품종류코드가 4이면)
	
	inputData = {		// IN_META_INFO 등록[전문] (서비스 등록 관리 화면에서) @@@@
		"loan_kind": v_loan_kind,				// 1. 대출종류[1:직장인신용대출, 2:간편대출, 3:엘리트론(공무원), 4:엘리트론(은행선정업체)]
		"cust_income": v_cust_income,	// 2. 연간소득금액(원) ==> 연소득
		"clnJobCd": v_jikup_gun,				// 3. 고객직업군
		"comInDt": ""									// 4. 입사일자
	};
	gcm.log("[/TL0160_01_m.xml] [fn_callService()] ==> [TEST_41] ■■ [2. 연간소득금액(원)]"+ sCust_income 
	+"[JSON.stringify(inputData)]"+ JSON.stringify(inputData) ); 

	com.exeService(
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
};
==============================================================================================================

- 06-1. 직장인 정보 입력[신용 대출] (TL0140) 화면 개발
1. 직군 ==> 군인, 기타 선택하면 Alert 처리(입력 불가?)
 1) 직군 콤보 박스 클릭 --> 1. 공무원 ==> 상품종류코드(37: 엘리트론(공무원), 1. 대기업, 사립학교 교직원 ==> 상품종류코드(38: 엘리트론(은행선택업체)
 2. 직장명, 직군, 부서명, 직원, 고용 현태 선택(필수 입력 필드: 5개)
  1) 대출 신청 조건 충족 여부 조회 전문 호출 ==> 신규 전문 요청(긴급하게 요청)
  2) 대출 신청 조건 충족 여부 조회 전문 호출 결과 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.11.10(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:00 ==>  

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 엘리트론(PL0001) 개발
==============================================================================================================

- (엘리트론) 신청정보[(TASK_TL0190_00001) 전문 호출 에러 발생
1. 현상:  
DEBUG ### END: TASK_TL0190_00001: ERROR : {ERROR=E, ERR_MSG=For input string: "",
OUT_DATA=, CryptoYN=, RTN_CODE=-9999, RTN_MSG=Excepton 오류, OUT_DATA_TYPE=} 
2. 원인: 연간소득금액(원)을 0월으로 던져서 나는 에러(D700) ==> 이영진 수석과 통화해서 해결함
==============================================================================================================

- 02. 대출 신청 진행현황[신용 대출] (TL0210) 조회
scwin.onpageload = function() { 
	gcm.log("[/TL0210_01_m.xml] [onpageload()] ==> [TEST_01] [02. 대출 신청 진행현황[신용 대출] (TL0210) 화면 로딩...@@@]" ); 
	
	xTouchLibUi.init(scwin.nowTaskInfo, $p);		// xTouch Task 초기화
	
	var rtnCerti = com.getCertiCheck();
	gcm.log("[/TL0210_01_m.xml] [fn_callService()] ==> [TEST_41] ■■ [2. 연간소득금액(원)]"+ sCust_income 
	+"[JSON.stringify(inputData)]"+ JSON.stringify(inputData) ); 
	
	if(rtnCerti.CELL_CERTI == true && rtnCerti.ACCT_CERIT == tru) || rtnCerti.BANK_CERTI == true)		// 로그인이 되어 있으면
	{
		scwin.fn_callService("TASK_TL0030_00002", scwin.service_callback);	// (엘리트론) 대출신청내역조회(정보계) 전문 호출  
	}
};
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.11.11(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:00 ==> 주간보고(12주차)서 작성(14시), 제주은행 김준 대리 퇴사(18시), 회식(18:20, 반가 식당[김준 대리 환송연], 고기 맛있음: 배탈)

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 엘리트론(PL0001) 개발
- 02. 대출 신청 진행현황[신용 대출] (TL0210) 조회
scwin.onpageload = function() { 
	gcm.log("[/TL0220_01_m.xml] [onpageload()] ==> [TEST_01] [03. 대출신청내역 확인/신용 대출] (TL0220) 화면 로딩...@@@]" ); 
	
	xTouchLibUi.init(scwin.nowTaskInfo, $p);		// xTouch Task 초기화
	
	scwin.fn_callService("TASK_COMMF_1760", scwin.service_callback);		// 02. 예금전계좌 조회 전문 호출 
};

// 전문 호출
scwin.fn_callService(svID, callbackFn) {   
	gcm.log("[/TL0220_01_m.xml] [fn_callService()] ==> [TEST_03] [02. 예금전계좌 조회(TASK_COMMF_1760) 전문_★★_호출]" );	
 
	com.exeService(
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
};

scwin.service_callback = function(rtnJSON) {
	gcm.log("[/TL0220_01_m.xml] [service_callback()] ==> [TEST_01] [콜백] 02. 예금전계좌 조회(TASK_COMMF_1760) 
	전문_★★_★★_호출 콜백] [ERRO_CODE ]+ rtnJSON.ERRO_CODE ); 

   if(rtnJSON.ERRO_CODE == "S") {
		gcm.log("[/TL0220_01_m.xml] [service_callback()] ==> [TEST_21] [JSON.stringify(rtnJSON)]"+ JSON.stringify(rtnJSON) ); 
		
		scwin.inOutMonyAcList = rtnJSON.OUT_DATA.mtxCnt;		// 입출금계좌 List
		
		var t_loanReglist = xTouchLibUi.getTaskData("TL0210", $p);		// 대출신청내역 Task
		
		if(t_loanReglist.decl_mth == "1") 		// 대출방식이 1이면(1:건별 대출, 2:종합대출)
		{
			xTouchLibUi.uiChange(scwin.nowTaskInfo, "SUB1", $p);	// 03-1. 대출신청내역 확인/건별 대출 화면 Display
		}
		else
		{
			xTouchLibUi.uiChange(scwin.nowTaskInfo, "SUB2", $p);	// 03-2. 대출신청내역 확인/종합 대출 화면 Display
		}
   }
};
==============================================================================================================

- (엘리트론) 대출신청내역[(TASK_TL0030_00002, 2194) 전문 호출 에러 발생
1. 현상: [E] 서버 통신 오류 발생
DEBUG ### END: TASK_TL0030_00002: ERROR : {ERROR=E, ERR_MSG=For input string: "",
OUT_DATA=, CryptoYN=, RTN_CODE=-9999, RTN_MSG=Excepton 오류, OUT_DATA_TYPE=} 
2. 원인: 전문 호출 전에 xTouch Task 초기화를 먼저 설정 해야 함
==============================================================================================================

- (엘리트론) 대출신청내역[(TASK_TL0190_00001, 2193) 전문 호출 에러 발생
1. 현상: [E] 서버 통신 오류 발생
DEBUG ### END: TASK_TL0190_00001: ERROR : {ERROR=E, ERR_MSG=For input string: "",
OUT_DATA=, CryptoYN=, RTN_CODE=-9999, RTN_MSG=Excepton 오류, OUT_DATA_TYPE=} 
2. 원인: 전문 칼럼에서 Short ==> AN이면 데이타를 null로 받으면 에러가 발생
==============================================================================================================

- (엘리트론) 대출실행(TASK_TL0230_00001, 2195) 전문 호출 에러 발생
1. 현상: [E] 서버 통신 오류 발생
DEBUG ### END: TASK_TL0190_00001: ERROR : {ERROR=E, ERR_MSG="4205 서류접수 대기 중",
OUT_DATA=, CryptoYN=, RTN_CODE=-9999, RTN_MSG=Excepton 오류, OUT_DATA_TYPE=} 
2. 원인: 대출 실행 처리 요청(박소영 계정에게 '심사완료'로 변경 요청: 원래 콜센터에서 하는 업무라고 함)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.11.12(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:00 ==> 태용이 신대방역 근처 원름으로 이사(20시)

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]  
- 06-1. 직장인 정보 입력[신용 대출] (TL0140) 화면 개발
scwin.onpageload = function() { 
	gcm.log("[/TL0140_01_m.xml] [onpageload()] ==> [TEST_01] [직장인 정보 입력[신용 대출] (TL0140) 화면 로딩...@@@]" ); 
	
	var inputData = {  	// IN_META INF0 등록[전문] (서비스등록관리 화면에서) @@@  
		"p_nowTaskInfo": $p.parent().scwin.p_nowTaskInfo
	} 
	
	com.popupList.POP_L604_01(inputData, scwin.fn_popupCallback);  		// 01-1 직장 정보 검색 PopUp 화면 호출
};
--------------------------------------------------------------------------------------------------------------------

scwin.btn_officeNmSrch_onclick = function(e) {
	gcm.log("[/POP_L604_01.xml] [btn_officeNmSrch_onclick()] ==> [TEST_01] [직장명 검색 버튼 클릭 이벤트]" ); 
	 
	// validataion
	if(com.isNull(ibx_wpNm.getValue()) {
		com.alert("직장명을 입력하세요.");
		retun;
	}
	
	scwin.fn_callService("NOTASK_COMMW_0007", scwin.service_callback);		// 직장 정보 조회 전문 호출 
};
==============================================================================================================

- 14. 신청정보 입력[신용 대출] (TL0190) 전문 조회 ==> 완료[♥♡]
scwin.onpageload = function() { 
	gcm.log("[/TL0190_01_s1.xml] [onpageload()] ==> [TEST_01] [14. 신청정보 입력[신용 대출] (TL0190) 화면 로딩...@@@]" ); 
	
	scwin.fn_callService("TASK_TL0190_00001", scwin.service_callback);	// (엘리트론) 신청정보(정보계) 전문 호출 
};

// 대출방식 radio 박스 변경 이벤트
scwin.rdo_decl_mth_onviewchange = function(e) {

	if(rdo_decl_mth.getValu == "2") {	// 신청금액이 종합통장대출 이면
		grp_ijaan.addClass("hide");		 // 대출이자납입일 선택 Group 숨기기
		sbx_ijanap_dd.setValue("0);		// 29. 대출이자납입일(01~30: 특정일, 88. 응당일(당일), 99. 말일, 0:선택 안함)
	}
	else
	{
		grp_ijaan.removeClass("hide");	 // 대출이자납입일 선택 Group 보이기
		sbx_ijanap_dd.setValue("1);		// 29. 대출이자납입일(01~30: 특정일, 88. 응당일(당일), 99. 말일, 0:선택 안함)
	}
}; 
 
// 확인 버튼 이벤트
scwin.btn_confirm_onclick = function() {

	if(com.isNull(sbx_ijanap_dd.getValue()) { 	// 29. 대출이자납입일이 널이면 
		scwin.ijanap_dd = "0";
	}
	else
	{
		scwin.ijanap_dd = sbx_ijanap_dd.getValue();
	}
	
	var inputData = {  	// IN_META INF0 등록[전문] (서비스등록관리 화면에서) @@@  
		"loan_kind": v_loan_kind,			// 1. 대출종류  
		"soduck_inputyn": v_soduck_inputyn,	// 2. 연간소득금액 고객입력 여부
		"ijanap_dd": scwin.ijanap_dd 	// 29. 대출이자납입일(01~30: 특정일, 88. 응당일(당일), 99. 말일, 0:선택 안함)
	}
	
	$p.parent.scwin.callP_loanSincgReg(inputData);	// 대출 신청 등록(부모 화면) 
}; 
==============================================================================================================
 
- 포트 사용 여부 확인 및 죽이기 
0. 현상: Several ports(9005, 9080, 9081) required by jWeb are already in use
- https://yeti.tistory.com/3
 
1. 포트(port) 확인
C:\Users\Administrator> netstat -an
활성  
  프로토콜  로컬 주소           외부 주소              상태				  PID
  TCP    0.0.0.0:135            0.0.0.0:0              LISTENING
    TCP    0.0.0.0:7680           0.0.0.0:0              LISTENING
  TCP    0.0.0.0:90081           0.0.0.0:0              LISTENING      16764  ===> @@@@
 
2. 포트(port) 삭제
C:\Users\Administrator> taskkill  -F /PID 16764
 1) 강제 종료 옵션 
간혹 권한 등의 문제로 종료가 불가능한 프로세스들이 존재 합니다. 
이런 프로세스들도 강제 종료 옵션 /f를 추가 해 주면 종료할 수 있습니다. 
taskkill /pid 3778 /fGn32-LnzzE 
 ==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2020.11.13(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:00 ==>  

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 예금 담보 대출(PL0003) 수정
1. 이전, 다음 버튼 처리 수정
2. 대출신청 저장 후 처리 
scwin.service_callback = function(rtnJSON) {
	gcm.log("[/TL0130_01_m.xml] [service_callback()] ==> [TEST_01] [콜백] [01. 대출신청 저장 및 결과 리턴(예금담보대출 
	본거래((TASK_COMMF_2171) 전문_★★_호출 콜백] [ERRO_CODE ]+ rtnJSON.ERRO_CODE ); 

   if(rtnJSON.ERRO_CODE == "S") {
		gcm.log("[/TL0130_01_m.xml] [service_callback()] ==> [TEST_21] [JSON.stringify(rtnJSON)]"+ JSON.stringify(rtnJSON) ); 
	}
	else
	{
		gcm.log("[/TL0130_01_m.xml] [service_callback()] ==> [TEST_70] [콜백] ■ [JSON.stringify(rtnJSON)]"+ JSON.stringify(rtnJSON) ); 
		
		switch(rtnJSON.ERRO_CODE )
		{
			case "E": 
				var MFTXError = com.getMFTXError(rtnJSON);
				
				if(MFTXError != null) {
					com.alert("["+ MFTXError +"]<br>"+ MFTXError.RTN_MSG);
				}
				 else
				{
					com.alert("[E] 서버 통신 오류 발생");
				} 
			}
		}
	
		var inOutRefJson = {"CHK": "1"};
		scwin.nextTask({}, {}, inOutRefJson);		// 다음 Task 함수 호출 ==>  09. 대출신청 정보(TL0120) 화면 Display
   }
};
==============================================================================================================

- (엘리트론) 대출신청[(TASK_TL0190_00001, 2193) 전문 호출 에러 발생 ==> 진태만으로 로그인 @@@@
1. 현상: [E] 서버 통신 오류 발생
DEBUG ### END: TASK_TL0190_00001: ERROR : {ERROR=E, ERR_MSG "2001 고객검색 오류 입니다.",
OUT_DATA=, CryptoYN=, RTN_CODE=-9999, RTN_MSG=Excepton 오류, OUT_DATA_TYPE=} 
2. 원인: 진태만 고객 정보가 종보계에 고객 등록 되어 있지 않음
3. 조치: 이영진 수석에서 ?펑해서 대출 고객 등록 처리함
==============================================================================================================

- (엘리트론) 대출신청내역[(TASK_TL0190_00001, 2193) 전문 호출 에러 발생
1. 현상: [E] 서버 통신 오류 발생
DEBUG ### END: TASK_TL0190_00001: ERROR : {ERROR=E, ERR_MSG=For input string: "",
OUT_DATA=, CryptoYN=, RTN_CODE=-9999, RTN_MSG=Excepton 오류, OUT_DATA_TYPE=} 
2. 원인: [AN] [상환방식] [Short24]에서 데이타를 널로 받아와서 나는 에러
3. 조치: [AN] [상환방식] [Short24]에서 데이타를 "1'로 셋팅하게 UI단에서 수정해야 함
 1) AN: 영어, 숫장 ==> Short이면서 NULL이면 ==> 에러 발생시킴
==============================================================================================================

- 마지막 Task 설정
scwin.onpageload = function() { 
	gcm.log("[/TL0200_01_m.xml] [onpageload()] ==> [TEST_01] [11-1. 대출신청 결과(승인 완료) (TL0200) 화면 로딩...@@@]" ); 
	
	var inOutRefJson = {"CHK": "1"};
	scwin.nextTask(inData, {}, inOutRefJson);		// 다음 Task 함수 호출(마지막 Task 호출)
};

// 대출실행 버튼 클릭 이벤트
scwin.onpageload = function() { 
	gcm.log("[/TL0200_01_s1.xml] [onpageload()] ==> [TEST_01] [1대출실행 버튼 클릭 이벤트]" ); 
	
	com.menulist.goXTouch("PL0009");		// 대출신청조회/실행(PL0009) 프로세스 호출
};
--------------------------------------------------------------------------------------------------------------------

- /PL0009_01_FLOW.js 파일에서[//엘리트론(PL0001) 프로세스 @@@@@
var sTaskID = "TZ0001";			// TASK ID
var sCHK = "0";

if (xTouchLibUi.isStart()) { 	//최초실행인경우
	//최초실행
	//@param : T_ID, T_SEQ, T_NO 다음 호출 TASK 정보
	xTouchLibUi.moveTask("TZ0001", "01", "01", errorCallbackFn);		// 01. [공통] 상품가입안내[대출] (TZ0001) ■■■
} 
else 
{
	var tKey = nowTaskInfo.T_ID + "-" + nowTaskInfo.T_SEQ + "-" + nowTaskInfo.T_NO;
	
	switch (tKey) {
		case "TZ0001-01-01" : 	//TASK1 화면의 경우 ==> 01. [공통] 상품가입안내[대출] (TZ0001) ■
			xTouchLibUi.moveTask("TZ0010", "01", "01", errorCallbackFn);   // moveTask 함수 호출: 02. 본인 확인[신용대출]  (TZ0010, 01) [전 Pop_2) ■■■
			break;
			
		case "TZ0010-01-01" : 	//TASK2 화면의 경우 ==> 02. 본인 확인[신용대출]  (TZ0010, 01) [전 Pop_2) ■
			xTouchLibUi.moveTask("TZ0020", "01", "01", errorCallbackFn);   // moveTask 함수 호출:  03. 만 20세 제한 여부_S(TZ0020, 01) ■■■
			break;
		
		case "TZ0140-01-01" : 	//TASK7 화면의 경우 ==> 06. 직장정보 입력[신용대출] (TZ0140, 01) ■
			if(!com.isNull(inOutRefJson.CHK)) {sCHK = inOutRefJson.CHK};
			
			if(sCHK == "PREV")   // 이전, 취소 이면 ■■■
			{
				xTouchLibUi.moveTask("TZ0010", "01", "01", errorCallbackFn);   // moveTask 함수 호출: 02. 본인 확인[신용대출] (TZ0010, 01) ■■■
				break;
			}
			else
			{
				xTouchLibUi.moveTask("TZ0150", "01", "01", errorCallbackFn);   // moveTask 함수 호출: 07. 약관 및 동의서[신용대출] (TZ0150, 01) ■■■
			}
			break;
		
		case "TZ0190-01-01" : 	//TASK14 화면의 경우 ==> 14. 신청정보 입력[신용대출]  (TZ0190, 01) ■
			xTouchLibUi.moveTask("TZ0200", "01", "01", errorCallbackFn);   // moveTask 함수 호출: 15. 신청정보 결과[신용대출] (TZ0200, 01) ■
			break;	
		
		case "TZ0200-01-01" : 	//TASK15 화면의 경우 ==> 15. 신청정보 결과[신용대출] (TZ0200, 01) ■
			xTouchLibUi.moveEndTask(fuction(rtnJSON) {   // 마지막 Task 이면
			});
			break;
	}
};  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.11.14(토) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 21:00 ==>  

- 주말[★]
07:20 기상
07:30 조식
08:00 은영이(루옌 언니) 놀러 옴
09:30 집출발(자전거: 수종)
09:40 화이트 치과(수종 윗니, 아랫니 2개 발치)
09:55 스카이 미용실(이발)
10:40 귀가
10:50 염색(혼자 함)
12:00 중식
12:20 실내 자전거 타기
13:00 루옌 은영이와 보래매 공원에 놀러감
13:20 집출발(수종)
13:50 대동초 정류장 승차(507번 버스)
14:50 광희동 정류장 하차
15:15 승진 완구 ==> 레고 스피드 챔피언 1985 아우디 스포트 콰트로 S1(76897) 장난감 구입)
15:20 석식
15:25 동묘앞 정류장 승차(142번 버스)
15:50 장충단입구 정류장 하차
16:00 남산예술원 웨딩홀(야외) ==> 명륜이(큰누나 조차) 결혼식(축의RMA 20만 원)
		--> 주례 없음, 신세대 형식의 결혼식 
16:40 석식(수종)
17:10 종료 ==> 큰누나한테 반찬 3개(진미채, 멸치볶음, 오뎅볶음), 김치(엄마) 받아옴
17:25 장충단입구 정류장 승차(142번 버스)
17:50 고속터미널 정류장 환승(6411번 버스) ==> SBS 장길산[41회] 시청)
18:30 대림역 정류장 하차 
18:40 귀가
18:50 실내 자전거 타기
19:50 종료
20:00 인터넷 서핑
21:00 루옌 귀가
22:30 인슐린 약 교체(277U, 20U 남음)
23:40 취침
==============================================================================================================

- 마트폰 인공지능 비서 빅스비 루틴 사용법[갤럭시S10빅스비 비젼 기능]
https://youtu.be/fGn32-LnzzE

- 고작 그거하려고 비싼폰 샀어?! 묵혀놓던 노트10 일시키자![빅스비 루틴]
https://youtu.be/Ic5OKsePq34
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.11.15(일) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 08:00 ~ 21:00 ==>  

- 주말2[★]
08:40 기상
08:58 조식
09:20 실내 자전거 타기
10:30 종료
10:40 인터넷 서핑
12:00 중식
12:20 루옌 귀가
12:30 실내 자전거 타기
13:30 종료
13:40 인터넷 서핑
15:20 Memo(2020.11) 작업 타이핑 하기 ==> MS 오피스 렌즈(문서 촬용) --> 구글 렌즈(글자 복사): 처음으로 시도[만족 스러움)
18:11 석식
18:40 실내 자전거 타기
19:40 종료
19:30 루옌 귀가 
23:00 취침
==============================================================================================================

- 각종 계약서, 명함, 서류, 영수증 등 을 오피스렌즈 앱으로 간단하게 스캔(How to Use Microsoft Office Lens)
https://youtu.be/Cp-MYFD4W2I
==============================================================================================================

- 구글 렌즈 이용법 을 알아두시면 이미지,서류, 문서 를 음성으로 듣고 여러모로 활용가능합니다(How to Use Google Lens)
https://youtu.be/o8LynY_XiBc
==============================================================================================================

- Google Keep 10분 만 배우세요 [구글 메모]
https://youtu.be/btOQBXrnKIA
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2020.11.16(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:00 ==>  

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 엘리트론(PL0001) [신용 대출] 개발
- 07-1. 약관 및 동의서[신용 대출] (TL0150) 화면 수정
scwin.onpageload = function() { 
	gcm.log("[/TL0150_01_s1.xml] [onpageload()] ==> [TEST_01] [07-1. 약관 및 동의서[신용 대출] (TL0150) 화면 로딩...@]" ); 
	
	// 전체 동의 toggle 처리
	com.setAgreeBox(grp_agreeBox, function(checkValue) {
		gcm.log("[/TL0150_01_s1.xml] [grp_agreeBox()] ==> [TEST_01] [전체 동의 toggle 처리] [checkValue]"+ checkValue );
		
		if(checkValue) {		// 전체 동의 체크 이면	
			scwin.fn_openPopup(["11", "24", "70", "28", "66"], "Y");		// 전체 팝업
		}
		else
		{
			chk_agreeAll.setValue(false):
			chk_agree1.setValue(false):		// 11: 전자금융거래 기본약관
			chk_agree2.setValue(false):		// 24: 은행여신거래 기본약관
			chk_agree3.setValue(false):		// 70: 개인신용정보조회 동의서
			chk_agree4.setValue(false):		// 28: 여신용 [공통필수]개인(신용) 정보수집, 이용, 제공 동의서 및 고객권리 안내문
			chk_agree5.setValue(false):		// 66: 소득/재직 서류제출 자동화(스크래핑) 서비스 이용 신청서
			btn_confirm.setDisabled(true);	// 확인 버튼 Disable 처리
		}
	});
	
	btn_confirm.setDisabled(true);	// 확인 버튼 Disable 처리	 
};
--------------------------------------------------------------------------------------------------------------------------------

// 고객 정보제공 동의 등록 전문 호출 (부모창)
scwin.callP_yackkanAgree =function() { 
	gcm.log(["/TL0150_01_m.xml] [callP_yackkanAgree()] ==> [TEST 01]" ):  
 
	scwin.fn_callService("TASK_COMMF_9214", scwin.service_callback);		// 고객 정보제공 동의 등록TASK_COMMF_9214) 전문 호출
};

// 주민번호 유효성 체크 서비스
scwin.fn_callService = function(svID) {
	gcm.log(["/TL0150_01_m.xml] [in_callService()] ==> ITEST_01] [고객 정보제공 동의 등록TASK_COMMF_9214) 전문_★★_호출] [svID]"+ svID ); 
	
	var v_pdKdCd = "37";		// 상품종류코드(37:엘리트론(공무원), 38:엘리트론(은행선정업체))
	
	var v_commonData = xTouchLibUi.getComonData();	// commonData 조회
	var v_sujCd = v_commonData.SUJ_CD;		// 과목코드
	v_pdKdCd = v_commonData.PDKD_CD;	// 상품종류코드(PDKD_CD) (43:카드림(신차), 35:카드림(중고차))
	gcm.log("[/TL0150_01_m.xml] [fn_callService()] ==> [TEST_20] [v_commonData]"+ JSON.stringify(v_commonData) ); 
 
	inputData = {		// IN_META_INFO 등록[전문] (서비스 등록 관리 화면에서) @@@@
		"sujCd": v_sujCd,							// 1. 과목코드 
		"pdKdCd": v_pdKdCd,					// 2. 상품종류코드(37:엘리트론(공무원), 38:엘리트론(은행선정업체))
		"ntLngPsnItGtrUeGeEssCd": "1",	// 3. 비여신 개인정보수집이용동의 필수코드
		"mktGeBjSitCd": "1",						// 4. 마케팅 동의 대상 선택코드
		"mktGeBjSitCd": "1",						// 5. 안내채널 문자 메시지 선택코드
		"mktGeBjSitCd": "1",						// 6. 안내채널 이메일 선택코드
		"mktGeBjSitCd": "1",						// 7. 안내채널 전화 선택코드
		"mktGeBjSitCd": "1",						// 8. 안내채널 우편 선택코드
		"mktGeBjSitCd": "1"						// 9. 상품별 동의 대상 선택코드
	};
	};
	gcm.log("[/TL0150_01_m.xml] [fn_callService()] ==> [TEST_41] ■■ [2. 연간소득금액(원)]"+ sCust_income 
	+"[JSON.stringify(inputData)]"+ JSON.stringify(inputData) ); 
	
	com.exeService(
	{
		"ServiceID": svID,
		"URL": "_XTOUCH_INTERFACE_",
		"CryptoYN": "N",
		"mode": "",
		"NOW_TASK_INFO": com.getPopupParam().inData.p_nowTaskInfo			// 현재 실행중인 Task 정보 셋팅
	},											/ Sub Info(1. ServiceID, 2. URL: 호출할 URL, 3. CryptoYN: 암호 적용여부) ■■	
	inputData,							// 전송할 INPUT 데이타 ■■	
	scwin.service_callback			// 결과 콜백 함수 ■■	
	};	
};
==============================================================================================================
 
 - 메뉴 제목 표기
 1. 구종식 부장이 화면 최상단에 프로세스명 ==> 전단계명으로 표기 해야 한다고 주장
  1) 진행단계명을 TASK명 수준으로 세분화 하라고 함(이경일 부장은 진행단계는 10단계 이상 안된다고 함)
  ==> 나는 진행단계명(Group명) --> TASK명으로 표기하는게 맞다고 주장
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2020.11.17(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:00 ==>  

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 05.전자서명[대출] (TL0050) 화면 수정
scwin.onpageload = function() { 
	gcm.log("[/TL0050_01_m.xml] [onpageload()] ==> [TEST_01] 05.전자서명[대출] (TL0050) 화면 로딩...@@@]" ); 
	
	scwin.fn_callService("TASK_COMMF_2173", scwin.service_callback);		// 01. 담보예금계좌 조회(TASK_COMMF_2173) 전문 호출 
};
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.11.18(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:00 ==>  주간보고(20주차)서 작성(14시), 오후 3시부터 비

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 엘리트론(PL0001) [신용 대출] 프로세스 분리
1. 엘리트론 STEP1(PL0001, 대출 한도 조회), 엘리트론 STEP2(PL0010, 대출 신청)으로 분리
==============================================================================================================

// 대출 한도조히 전문 호출
scwin.fn_callService = function(svID) {
	gcm.log("/TL0160_01_m.xml] [in_callService()] ==> ITEST_01] [(엘리트론) 예상한도조회(TASK_TL0160_00001, 2191) 전문_★★_호출] [svID]"+ svID ); 
};
==============================================================================================================

- 약과 내용 최종 수정
1. 07-1. 약관 및 동의서[신용 대출] (TL0150) 화면[/TL0150_01_s1.xml]
2. 04-1. 약관 및 동의서[CAR 드림 대출] (TL0040) 화면[/TL0040_01_s1.xml]
3. 08-1. 약관 및 동의서[예금 담보 대출] (TL0110) 화면[/TL0110_01_s1.xml]
==============================================================================================================
	
■■■■■■■■■■■■■■■■■■ 2020.11.19(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:00 ==> 오후 3시까지 비(많은 양), 수종 햄스터 구입(22시, 루옌이 이마트에서 사옴)

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 엘리트론(PL0001) [신용 대출] 수정
- 00.한도조회 결과 보관 여부_S(TL0001) 개발
scwin.onpageload = function() { 
	gcm.log("[/TL0001_01_m.xml] [onpageload()] ==> [TEST_01] [00.한도조회 결과 보관 여부_S(TL0001) 로딩...@@@]" ); 
	
	scwin.fn_callService("TASK_COMMF_0008", scwin.service_callback);		// 한도조회 결과 보관 여부_S(TL0001) 전문 호출 
};
==============================================================================================================

- 00.한도조회 결과 보관 여부_S 전문 호출 에러 발생
1. 현상:
TypeError: Cannot read propterty 'setValue of underfined
2. 원인: 진행단계를 0으로 설정해서 나는 에러로 추정됨
3. 조치: 진행단계를 0에서 1로 변경 
==============================================================================================================

- 예금 담보 대출(PL0003) 수정
40번: 대출금 입금 계좌 목록에 예적금계좌 목록도 나옴(입출금 입금가능 계좌만 나와야 함) ==> 수정 완료 ♥♡
scwin.onpageload = function() { 
	gcm.log("[/TL0120_01_m.xml] [onpageload()] ==> [TEST_01] [09. 대출신청 정보(TL0120) 화면 로딩...@@@]" ); 
	
	scwin.fn_callService("TASK_COMMF_2173", scwin.service_callback);		// 01. 담보예금계좌 조회(TASK_COMMF_2173) 전문 호출 
};

// 전문 호출
scwin.fn_callService(svID, callbackFn) { 
	gcm.log("[/TL0120_01_m.xml] [fn_callService()] ==> [TEST_01] [01. 담보예금계좌 조회(TASK_COMMF_2173) 전문_★★_호출]" ); 
	
	var inputData = {		// IN_META_INFO 등록[전문] (서비스 등록 관리 화면에서) @@@@
		"qqAcN": "",		// 1. 조회 계좌번호 
		"qyCcd": "B"		// 2. 조회 구분(A: 모둔 계좌, I:입금 가능 만, B:입출금 가능만) 
	}; 
	gcm.log("[/TL0120_01_m.xml] [fn_callService()] ==> [TEST_41] [JSON.stringify(inputData)]"+ JSON.stringify(inputData) );  
}; 

41번: 예금담보 대출 최종 신청 본거래(2171)에 입력 전문에 값들이 아무것도 안들어와서 오류 발생 ==> 수정 완료 ♥♡
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2020.11.20(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:00 ==>  

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 엘리트론(PL0001) [신용 대출] 수정
==============================================================================================================

- 대출신청 저장 및 결과 리턴(예금담보대출 본거래((TASK_COMMF_2171) 전문 에러  ==> 수정 완료 ♥♡
1. 현상: OP30DEL 045 --> 당행 또는 타행연체정보 보류 고객입니다.
	"[/TL0130_01_m.xml] [service_callback()] ==> [TEST_70] [콜백] ■ [JSON.stringify(rtnJSON)] {"ERR_CODE", "E"
	, "ERR_MSG", "행 또는 타행연체정보 보류 고객입니다.", "OUT_DATA": "", "CryptoYN":"", "RTN_CODE", "_MFTXERR_OP30DEL 045",
	, "RTN_MSG", "오류발생", "OUT_DATA_TYPE":""}
2. 원인:  
3. 조치: 박소영 계장이 계정계(SM)에 전화해서 처리함
==============================================================================================================

- 한도조회 결과 보관 여부 조회(NOTASK_COMMW_0008, MWEB_HANDO_0001) 전문 에러  ==> 수정 완료 ♥♡
1. 현상: 
[/TL0001_01_m.xml] [service_callback()] ==> [TEST_70] [콜백] ■ [JSON.stringify(rtnJSON)] {"ERR_CODE", "E"
, "ERR_MSG", "No bean named 'dd' available", "OUT_DATA": "", "CryptoYN":"", "RTN_CODE", "-9999",
, "RTN_MSG", "오류발생", "OUT_DATA_TYPE":""}
2. 원인: MWEB_HANDO_0001.java 파일이 존재하지 않음  
3. 조치: MWEB_HANDO_0001.java 파일을 생성해서 처리함
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.11.21(토) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 21:00 ==> 주말 근무, 중식(12시, 김치찌게, 이광철 이사가 쏨)

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 엘리트론(PL0001) [신용 대출] 수정
scwin.onpageload = function() { 
	gcm.log("[/TL0001_01_m.xml] [onpageload()] ==> [TEST_01] [00.한도조회 결과 보관 여부_S(TL0001) 로딩...@@@]" ); 
	
	scwin.fn_callService("TASK_TL0160_0002", scwin.service_callback);		// 한도조회 결과 정보 전문 호출 
};

scwin.fn_getHanddoRstList = function() { 
	gcm.log("[/TL0001_01_m.xml] [fn_getHanddoRstList()] ==> [TEST_01] [00.한도조회 결과 보관 여부]" ); 
	
	var v_handdoRstListYn = "N";		// 한도조회 결과 정보 보관 여부
	
	if(scwin.handdoRstList != null && (scwin.handdoRstList.office_name != "" && scwin.handdoRstList.cust_soduck != "")) 
	{
		scwin.office_name = scwin.handdoRstList.office_name;		// 1. 직장명
		scwin.job_group = scwin.handdoRstList.job_group;			// 2. 직군
		scwin.cust_soduck = scwin.handdoRstList.cust_soduck;	// 3. 연간소득금액
		scwin.ibsa_date = scwin.handdoRstList.ibsa_date;				// 4. 입사일자
		scwin.COM_BNCD = scwin.handdoRstList.COM_BNCD;		// 5. 지점코드
		scwin.SFFN = scwin.handdoRstList.SFFN;							// 6. 직원코드
		scwin.CON_TYPE = scwin.handdoRstList.CON_TYPE;			// 7. 접속유형
		scwin.bi_sayuycd = scwin.handdoRstList.bi_sayuycd;		/	/ 8. 정책거절 사유코드
		scwin.v_handdoRstListYn = "Y";		// 한도조회 결과 정보 보관 여부
	}
	
	var inputData = {		// IN_META_INFO 등록[전문] (서비스 등록 관리 화면에서) @@@@
		"office_name": scwin.office_name,		// 1. 직장명
		"job_group": scwin.job_group,				// 2. 직군
		"cust_soduck": scwin.cust_soduck,		// 3. 연간소득금액
		"ibsa_date": scwin.ibsa_date,				// 4. 입사일자
		"office_name": scwin.COM_BNCD,			// 5. 지점코드
		"SFFN": scwin.SFFN,								// 6. 직원코드
		"CON_TYPE": scwin.CON_TYPE,				// 7. 접속유형
	}; 
	gcm.log("[/TL0001_01_m.xml] [fn_callService()] ==> [TEST_41] [JSON.stringify(inputData)]"+ JSON.stringify(inputData) );  
};
==============================================================================================================

- 13. 예상금리 확인[신용 대출] (TL0180) 수정
scwin.onpageload = function() { 
	gcm.log("[/TL0180_01_s1.xml] [onpageload()] ==> [TEST_01] [13. 예상금리 확인[신용 대출] (TL0180) 화면 로딩...@]" ); 
	
	var expt_gmriData = $p.parent().scwin.expt_gmriData;	// 예상금리 정모 DATA
	
	scwin.calcExpt_gmri();		// 예상금리 계산 처리
};

scwin.calcExpt_gmri = function() { 
	gcm.log("[/TL0180_01_s1.xml] [calcExpt_gmri()] ==> [TEST_01] [예상금리 계산 처리]" ); 
	
	var tradRstWdtot = 0;		// 1-1. 거래실적 우대 합계
	var tradRstWdtot = 0;		// 1. 우대금리 합계
	tradRstWdtot.setValue("연 <span class='amt'>"+ parseFloat(tradRstWdtot, 2) "</span? %");		// 1-1. 거래실적 우대 합계(input box)
	// ===========================================================================================================
	
	var woodai_gmri = parseFloat(tradRstWdtot, 2);		// 1. 우대금리 합계 = 1-1. 거래실적 우대 합계
	tradRstWdtot.setValue("연 <span class='amt'>"+ parseFloat(woodai_gmri, 2) +"</span? %");		// 1. 우대금리 합계(input box) 
	var v_basic_grmri_min = (Number(scwin.gmri_gijun) + Number(scwin.gmri_gasan_min)).toFixed(2);		// 2-1. 기본금리최저 = 기준금리 + 최저가산금리
	var v_basic_grmri_max =  (Number(scwin.gmri_gijun) + Number(scwin.gmri_gasan_max)).toFixed(2);		// 2-2. 기본금리최고 = 기준금리 + 최고가산금리
	ibx_basic_gmri.setValue("연 <span class='amt'>"+ v_basic_grmri_min +" ~ "+ v_basic_grmri_max +"</span? %");		// 2. 기준금리(input box)
 
 	var v_expt_grmri_min = (Number(scwin.gmri_gijun) + Number(scwin.gmri_gasan_min)) - Number(scwin.woodai_gmri).toFixed(2);		
	// 3-1. 예상금리최저 = 기준금리 + 최저가산금리 - 우대금리
	var v_expt_grmri_max =  (Number(scwin.gmri_gijun) + Number(scwin.gmri_gasan_max) - Number(scwin.woodai_gmri)).toFixed(2);		
	// 3-2. 예상금리최고 = 기준금리 + 최고가산금리 - 우대금리
	ibx_expt_gmri.setValue("<span class='amt'>"+ v_expt_grmri_min +" ~ "+ v_expt_grmri_max +"</span? %");		// 3. 예상금리(input box)
 
	gcm.log("[/TL0180_01_s1.xml] [calcExpt_gmri()] ==> [TEST_90] [계산_시작] ■ [기준금리]"+ scwin.gmri_gijun +"[최저가산금리]"+ scwin.gmri_gasan_min
		[최고가산금리]"+ scwin.gmri_gasan_max );  
	gcm.log("[/TL0180_01_s1.xml] [calcExpt_gmri()] ==> [TEST_91] ■ [1-1. 거래실적 우대 합계]"+ tradRstWdtot +"[1. 우대금리 합계]"+ tradRstWdtot );  
	gcm.log("[/TL0180_01_s1.xml] [calcExpt_gmri()] ==> [TEST_92] ■ [2-1. 기본금리최저]"+ v_basic_grmri_min +"[ 2-2. 기본금리최]"+ v_basic_grmri_max );  
	gcm.log("[/TL0180_01_s1.xml] [calcExpt_gmri()] ==> [TEST_91] ■ [3-1. 예상금리최저]"+ v_expt_grmri_min +"[3-2. 예상금리최고]"+ v_expt_grmri_max ); 
}; 
==============================================================================================================
 
- 주말[★]
06:40 기상
06:35 조식
07:00 집출발
07:10 대림역(지하철)
08:00 을지로입구역 도착
08:00 도보 
08:30 촐근
08:30 토요 근무
11:50 중식(김치찌게: 이광철 이사): (주)인스웨이브 제주은행 인터넷 뱅킹 제안 참여 안함
13:11 도보 ==> 라면, 핫도그[CU 편의점]: 청구활 것
14:00 토요 근무
18:11 석식(돌솥밥: 원당감자탕): 청구활 것
18:20 도보
19:00 토요 근무
20:30 퇴근
20:40 명동역 정류장
20:40 507번 버스 탑승 ==> SBS 장길산[48회] 시청)
21:30 대동초 정류장 도착 
21:40 귀가 ==> 수종이 햄스트 구입(루엔이 사줌)
23:00 샤워 ==> 체중: 74.5kg
23:33 인슐린 약 교체(278U, 20U 남음)
23:30 취침 ==> 루옌(수종) 은영이집에 가서 자고 옴
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.11.22(일) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 08:00 ~ 21:00 ==>  

- 주말2[★]
07:00 기상
07:35 조식
07:50 실내 자전거 타기
08:50 종료 
08:55 인터넷 서핑
09:40 집출발(자전거)
10:00 낙원 부동산 도착 ==> 태용 만남
10:00 전세 구하기(10시, 낙원 부동산, 양남수 실장 차로 이동)
10:20 2층 빌라(전세 2억 2천: 15평, 빈집, 너무 좁음, 2층이라 창이 막혀서 답답함, 관리비 10만)
10:40 6층 빌라(전세 2억 3천: 15평, 세입자 오출, 너무 좁음, 관리비 10만)
11:10 4층 빌라(전세 2억 8천 5백: 15평, 신혼부부집, 그나마 넓은 편, 옵션 없음, 6층, 관리비 4만) 
11:40 낙원 부동산 도착 ==> 다음주 일요일날 다시 만나서 상담하기로 함
11:40 중식(뼈해장국): 태용 ==> 내가 쏨
		 --> 태용이가 노원구 상계주공 아파트 5억에 구매하라고 제안함(고민 중)
12:15 귀가
12:20 실내 자전거 타기 ==> SBS 장길산[50회, 마지막회] 시청)
13:20 종료
13:35 문영 아파트 난방 시작(보일러 난방: 부엌 싱크대 밑에서 보일러 배관 밸브 열기)
13:40 인터넷 서핑
18:11 석식
18:40 실내 자전거 타기 ==> SBS 자이언트[1회, 첫회] 시청)
19:40 종료
19:40 인터넷 서핑
23:20 취침
==============================================================================================================
  
- 이 4가지만 안먹어도 당뇨와 치매에 안걸린다 [당뇨와 치매가 낫는다] - 1편
https://youtu.be/6ZrsdZostJ0
1. 4가지 음식 금지: 밀가루, 설탕, 과일 밥
==============================================================================================================
 
- 포토스케이프사용법 풀버전 사진편집부터 gif 이미지 까지 (2020)
https://youtu.be/eSiVIxtthT4
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2020.11.23(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:00 ==> 담위테스트 2주차, 돌볼뵤실 자율 휴업일 잘못 이해 해서 수종 등교 못함(08:30, 돌봄교실에 전화해서 등교 처리함)
								, 김준 대리 출근(13시, 도너츠 사가지고 옴, 약과 수정하고 퇴근[(주)토스에 재취업함), 본격적인 겨울 추위(영하, 강한 바람)

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 05.전자서명[대출] (TL0050) 화면 수정
scwin.onpageload = function() { 
	gcm.log("[/TL0050_01_m.xml] [onpageload()] ==> [TEST_01] 05.전자서명[대출] (TL0050) 화면 로딩...@@@]" ); 
	
	scwin.call_scrapping();		// 대출한도 조회(스크래핑) Popup 화면 호출 ==> 스크래핑 처리 ■■■
};
==============================================================================================================
 
- 전자서식 수정
scwin.onpageload = function() { 
	gcm.log("[/TL0230_01_m.xml] [onpageload()] ==> [TEST_01] [04. 전자서명 및 약관동의 및 확인(TL0230) 화면 로딩...@@@]" ); 
	
	xTouchLibUi.uiChange(scwin.nowTaskInfo, "SUB1", $p);	// 04-1. 약관동의 화면 Display
};

// 서식코드 정보(부모 화면)
scwin.callSvc_formInfo = function(inputData) { 
	gcm.log("[/TL0230_01_m.xml] [callSvc_formInfo()] ==> [TEST_01] [서식코드 정보(부모 화면)]" ); 
	
	scwin.fn_callService("TASK_TL0230_00002", scwin.service_callback);		// 서식코드 정보 조회(TASK_TL0230_00002, 3090) 전문 호출 
}; 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.11.24(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:00 ==> 프로야구 NC 다이노스 창단 첫 통합 우승(NC 4:2 두산)

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 05.전자서명[대출] (TL0050) 화면 수정
scwin.onpageload = function() { 
	gcm.log("[/TL0050_01_m.xml] [onpageload()] ==> [TEST_01] 05.전자서명[대출] (TL0050) 화면 로딩...@@@]" ); 
	
	scwin.call_scrapping();		// 대출한도 조회(스크래핑) Popup 화면 호출 ==> 스크래핑 처리 ■■■
};
==============================================================================================================
 
- 10-1. 서류 자동발급/조회(스크래핑) (TL0070) 화면 수정
scwin.onpageload = function() { 
	gcm.log("[/TL0070_01_m.xml] [onpageload()] ==> [TEST_01] [0-1. 서류 자동발급/조회(스크래핑) (TL0070) 화면 로딩...@@@]" ); 
	
	scwin.fn_callService("TASK_TL0070_00001, scwin.service_callback);		// 스크랩ID 생성 정보 호출
};
==============================================================================================================
 
- 웹스퀘어 라이센스 업데이트(187일: 약 6개월[2020.11.24(화)]
1. 이광철 이사가 전달해 줌 
==============================================================================================================

- 숫자 키패드 수정(type=:tel" 추가)
<xf:group class="repeat" tagname="li">
	<xf:input style="" id="ibx_annual_income" ev:onkeydown="" refSync="true" displayFormat="#,###" dataType="number"
		maxlength="10" allowChar="0-9" ev:onkeyup="scwin.ibx_annual_income_onkeyup" mandatory="true" type="tel">  	<!--// 연소득(숫자) //-->
	</xf:input>
</xf:group>
==============================================================================================================
 
- 50~60대 은퇴자의 비참한 노후~, 3가지는 꼭 지키세요~ / 행복한 노후 보장
https://youtu.be/iKqfvEScEt8
==============================================================================================================

= 은퇴한 50~60대는 절대 하지말 것
https://youtu.be/KxxURFhZ62w
==============================================================================================================

- 걷자~ ! 걸어야 산다~! 중년의 걷기운동은 선택이 아니라 필수입니다~ ♡
https://youtu.be/MB5-riSjYS4
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.11.25(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:00 ==> 주간보고(21주차)서 작성(14시), 서식(18시, 명동 순대국, 현용): 코로나19 방역으로 개발팀 18시에 모두 퇴근

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 10-1. 서류 자동발급/조회(스크래핑) (TL0070) 화면 수정
scwin.onpageload = function() { 
	gcm.log("[/TL0070_01_s1.xml] [onpageload()] ==> [TEST_01] [0-1. 서류 자동발급/조회(스크래핑) (TL0070) 화면 로딩...@]" ); 
	
	scwin.fn_callService("TASK_TL0070_00001, scwin.service_callback);		// 스크랩ID 생성 정보 호출
};

// 전문 호출
scwin.fn_callService(svID, callbackFn) {
	gcm.log("[/TL0070_01_s1.xml] [fn_callService()] ==> [TEST_01] [전문_★★_호출]" ); 
	
	var inputData = {};
	var v_job_group = "";		// 1, 직군
	
	if(svID = "TASK_COMMF_0009")		// 스크래핑 대상문서 목록 조회 전문 호출
		gcm.log("[/TL0070_01_s1.xml] [fn_callService()] ==> [TEST_01] [스크래핑 대상문서 목록 조회 전문_★★_호출]" ); 
		
		inputData = {		// IN_META_INFO 등록[전문] (서비스 등록 관리 화면에서) @@@@
			"SCRAP_ID": scwin.SCRAP_ID		// 1. 스크랩ID
	}
	else
	{
		gcm.log("[/TL0070_01_s1.xml] [fn_callService()] ==> [TEST_21] [스크랩ID 생성 정보(TASK_TL0050_00001, MWEB_SCRAP_0001) 전문_★★_호출]" ); 
		
		if($p.parent().nowTaskInfo.P_ID == "PL0001")		// 엘리트론 STEP1(PL0001, 대출 한도 조회) 이면
		{
			var t_officeInfo = $p.parent().xTouchLibUi.getTaskData("TL0140", $p);		// 04. 직장 정보 TASK
			gcm.log("[/TL0070_01_s1.xml] [fn_callService()] ==> [TEST_32] [t_officeInfo]"+ JSON.stringify(t_officeInfo)  ); 

			if(t_officeInfo != null)  v_job_group = t_officeInfo.job_group;		// 1, 직군(1: 공우원, 2. 대기업/중소기업./공공기관, 3: 사립학교 교직원)
		}
		
		inputData = {		// IN_META_INFO 등록[전문] (서비스 등록 관리 화면에서) @@@@
			"job_group": v_job_group;		// 1. 직군
		}
	}
	gcm.log("[/TL0070_01_s1.xml] [fn_callService()] ==> [TEST_41] ■■ [JSON.stringify(inputData)]"+ JSON.stringify(inputData)  ); 

	com.exeService(
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
};
 
// 확인 버튼 클릭 이벤트
scwin.btn_confirm = function(rtnJSON) {
	gcm.log("[/TL0180_01_s1.xml] [btn_confirm()] ==> [TEST_01] [콜확인 버튼 클릭 이벤트]" ); 
	
	// 스크래핑 문서 생성 후 스크래핑 관련 공통 팝업 호출
	var inputData = {		// IN_META_INFO 등록[전문] (서비스 등록 관리 화면에서) @@@@
		"SCRAP_ID": scwin.SCRAP_ID		// 1. 스크랩ID
		, nowTaskInfo": $p.parent.scwin.nowTaskInfo
   }
   gcm.log("[/TL0070_01_s1.xml] [btn_confirm()] ==> [TEST_41] ■■ [JSON.stringify(inputData)]"+ JSON.stringify(inputData) ); 
	
	com.popupList.POP_L604_01(inputData,     // 00-1. 스크래핑 팝업 화면 호출 ==> 스크래핑 처리 ===> ■■■■
		function(rtnValue) [
			gcm.log("[/TL0070_01_s1.xml] [btn_confirm()] ==> [TEST_51] ■■ [결과값] [JSON.stringify(rtnValue)]"+
			JSON.stringify(rtnValue) +"[rtnValue.RTNCD]"+ rtnValue.RTNCD );
			
			if(rtnValue.RTNCD == "OK")		// 정상 처리 이면 
			{
				scwin.fn_callService("NOTASK_COMMW_0008, scwin.service03_callback);		// 스크래핑 정보 DB 전문 호출
			}
		}
	};
};

// 전문 호출 결과
scwin.service03_callback = function(rtnJSON) {
	gcm.log("[/TL0010_01_m.xml] [service03_callback()] ==> [TEST_01] [콜백] [스크래핑 정보 DB 전문 조회(NOTASK_COMMW_0008
	, MWEB_SCRAP_0001) 전문_★★_호출 콜백] [ERRO_CODE]+ rtnJSON.ERRO_CODE ); 

   if(rtnJSON.ERRO_CODE == "S") {
		gcm.log("[/TL0010_01_m.xml] [service03_callback()] ==> [TEST_21] [JSON.stringify(rtnJSON)]"+ JSON.stringify(rtnJSON)  ); 
		
		var v_incomeavg = "2000000";		// 01. 평균 납부보험료
		var v_qal_aqt_dt = "19990625";		// 02. 입사일(자격 취득일)
		
		if(rtnJSON.OUT_DATA!= null) {		// 스크래핑 정보 Data가 존재하면
			v_incomeavg = rtnJSON.OUT_DATA.incomeavg;	// 01. 평균 납부보험료
			v_qql_aqt_dt = rtnJSON.OUT_DATA.qal_aqt_dt;		// 02. 입사일(자격 취득일)
		}
		
		var inputData = {		// IN_META_INFO 등록[전문] (서비스 등록 관리 화면에서) @@@@
			"annaul_income": ""+ scwin.fnNHSAnnyualIncome(v_incomeavg);		// 01. 평균 납부보험료
			"ql_aqt_dt": v_qql_aqt_dt;		// 02. 입사일(자격 취득일)
	   }

		scwin.nextTask(inData, {},  {"CHK": "NEXT});		// 다음 Task 함수 호출 ==> 08. 대출한도 결과[대출] (TA0080) 화면 호출
	   }
   }
};
=============================================================================================================

- 대출신청내역[(TASK_TL0030_00002, 3040) 전문 호출 에러 발생
1. 현상: 
[/TL0030_01_m.xml] [service_callback()] ==> [TEST_70] [콜백] ■ [JSON.stringify(rtnJSON)] {"ERR_CODE", "E"
, "ERR_MSG", "4003 거래종류가 상이합니다.", "OUT_DATA": "", "CryptoYN":"", "RTN_CODE", "-9999",
, "RTN_MSG", "4003 거래종류가 상이합니다", "OUT_DATA_TYPE":""}
2. 원인: INPUT 데이타 미입력
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.11.26(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:00 ==> 진수종 감기로 조기 학교(11:40, 김진주 선생님한테 전화: 수종 혼자 하교, 루옌에게 전화: 수종이와 병원 가라고 함)
									, 유병영 부장 퇴근(15시, 아들 학교에 코로나19 확진자 발생)

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- (엘리트론) 대출실행(TASK_TL0230_00001, 2195) 전문 호출 에러 발생
1. 현상:  
[/TL0230_01_m.xml] [service_callback()] ==> [TEST_70] [콜백] ■ [JSON.stringify(rtnJSON)] {"ERR_CODE", "E"
, "ERR_MSG", "4103 입금 계좌번호를 입력하세요.", "OUT_DATA": "", "CryptoYN":"", "RTN_CODE", "_MFTXERR_00514",
, "RTN_MSG", "4103 입금 계좌번호를 입력하세요."", "OUT_DATA_TYPE":""}
2. 원인: 실제로 입금계좌번호를 입력 안 함
3. 조치: /TL0230_01_m.xml 파일에서 scwin.loanSincgInfo = xTouchLibUi.getTaskData("TL0230", $p):		// 대출 신청내역 확인 TASK 추가
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2020.11.27(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:00 ==> 신한은행 명동지점 방문(15시, ATM 한도 늘이기(일 600만원, 송금 가능, 1일 1억 송금 가능)

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★] 
- 06-1. 직장인 정보 입력[신용 대출] (TL0140) 화면 개발
scwin.onpageload = function() { 
	gcm.log("[/TL0140_01_m.xml] [onpageload()] ==> [TEST_01] [직장인 정보 입력[신용 대출] (TL0140) 화면 로딩...@@@]" ); 
	
	scwin.fn_callService("TASK_COMMF_9210", scwin.service_callback);		// 01. CIF 고객정보 조회(TASK_COMMF_9210) 전문 호출 
}; 
==============================================================================================================
  
- 03. 대출신청 내역 조회_S(TL0030) 서비스 수정
scwin.onpageload = function() { 
	gcm.log("[/TL0200_01_s1.xml] [onpageload()] ==> [TEST_01] [03. 대출신청 내역 조회_S(TL0030) 서비스 로딩...@@@]" ); 
	
	scwin.custInfo = xTouchLibUi.getTaskData("TZ0010", $p);		// 00. 본인인증 TASK
	
	if(scwin.nowTaskInfo.P_ID == "PL0001") {		// 엘리트론 이면	
		scwin.fn_callService("TASK_TL0030_00003", scwin.service2198_callback);		// 01. (엘리트론) 대출신청내역조회(정보계) 전문 호출 
	}
	else
	{
		scwin.fn_callService("TASK_TL0030_00001", scwin.service_callback);	// 02 대출신청내역조회(TASK_TL0030_00001, 3040) 전문 호출 
	} 
};
 
scwin.service2198_callback = function(rtnJSON) {
	gcm.log("[/TL0010_01_m.xml] [service03_callback()] ==> [TEST_01] [콜백] [ 01. (엘리트론) 대출신청내역조회(정보계)
	(TASK_TL0030_00003, 2198,) 전문_★★_호출 콜백] [ERRO_CODE]+ rtnJSON.ERRO_CODE ); 

   if(rtnJSON.ERRO_CODE == "S") {
		gcm.log("[/TL0010_01_m.xml] [service03_callback()] ==> [TEST_21] [JSON.stringify(rtnJSON)]"+ JSON.stringify(rtnJSON)  ); 
		
		if(rtnJSON.OUT_DATA.bulga_sayu == "0") 	// 한도 조회 불가 사유가 0 이면(0: 정상)
		{
			if((scwin.custInfo.cubCIFRgF != "Y") {		// 당행CIF 등록 여부가 아니면(비회원)
				scwin.fn_callService("TASK_COMMF_9199", scwin.service2198_callback);		// 00. 당행CIF 가등록 전문 호출 
				--> 가 채번(신고객번호 생성()
			}
			else
			{
				scwin.nextTask(inData, {},  {"CHK": "NEXT});		// 다음 Task 함수 호출 ==> 06. 약관 및 동의서(대출) 화면 호출
			}
		}
	}
};
==============================================================================================================
 
 - 직장 정보 조회 수정(이유석 과장이 메일로 요청)
 /* 직장 정보 조회 ==> [/MWEB_OFFICE_0001_mapper.xml] [selectList()] [2020.,11.12, by 진태만] */
 SELECT A.UPCHECD AS CORP_NO 			/* 1. 직장 정보 */
			. A.UPCHECD AS CORP_NO 			/* 2 직장명 */
			, A.UPCHECD AS CORP_NO 			/* 3 사업자 번호	*/
			. A.UPCHECD AS CORP_NO 			/* 4 사업자 주소 */
FROM crrdd.rr_kis_gyo@CRRLINK A  	/* 직장 정보 TB */
WHERE 1=1
	AND (LISTED NOT IN ('60', '92', '93')		/* 기업공개(60: 개입, 92. 폐업, 93: 청산) */	 
		OR TYPE NOT IN ('07'))		/* 기업형태07: 개인) */	 
	AND (A.UPCHE_KOR LIKE '%' || #{CORP_NM} || '%' OR A.BISINESS_NO LIKE '%' || #{CORP_NM} || '%')		/* 직장명 */	 
;
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.11.28(토) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 21:00 ==>  

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 10-1. 서류 자동발급/조회(스크래핑) (TL0070) 화면 수정
scwin.onpageload = function() { 
	gcm.log("[/TL0070_01_s1.xml] [onpageload()] ==> [TEST_01] [0-1. 서류 자동발급/조회(스크래핑) (TL0070) 화면 로딩...@]" ); 
	
	scwin.fn_callService("TASK_TL0070_00001, scwin.service_callback);		// 스크랩ID 생성 정보 호출
}; 
==============================================================================================================

- 주말[★]
05:11 기상
05:40 조식
06:11 집출발
06:24 대림역(지하철)
06:50 도보  
07:30 촐근
07:40 토요 근무
12:20 중식(더식당: 이광철 이사, 박소영 계장)
13:11 도보
14:00 토요 근무
18:11 석식(햄버거, 핫도그[CU 편의점])
18:20 도보
19:00 토요 근무
20:20 퇴근
20:30 명동역 정류장
20:40 507번 버스 탑승 ==> SBS 장길산[22회] 시청)
21:30 대동초 정류장 도착 
21:40 귀가
23:00 샤워 ==> 체중: 74.9kg
23:17 인슐린 약 교체(294U, 9U 남음)
23:30 취침
==============================================================================================================

- 인슐린 펌프 공기 빼기 방법
1. 인슐린 펌프  메인: S(하단 빨간색) ==> 교체: 클릭 ==> 공기: 클릭(240초 동안 실행, 보통 2방울이 떨어져야 함)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.11.29(일) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 08:00 ~ 21:00 ==>  

- 주말2[★]
07:00 기상
07:35 조식
08:20 실내 자전거 타기
09:20 종료
09:40 집출발(자전거)
10:00 낙원 부동산 도착
10:00 전세 구하기(10시, 낙원 부동산, 한태길 실장[현대차 영업 사원: 부업] 차로 이동)
10:20 6층 빌라(전세 3억 2천: 20평(방 3개), 독산동, 지하철이랑 너무 멈)
10:40 4층 빌라(전세 2억 8천: 20평, 세입자 혼자, 너무 좁음)
11:10 7층 빌라(전세 3억 7천: 20평(방 3개),  독산동, 지하철이랑 너무 멈)
11:20 4층 빌라(전세 2억 8천 5백: 15평, 신혼부부집, 그나마 넓은 편, 옵션 없음, 6층, 관리비 4만) 현아트빌 404호 재방문 
11:40 낙원 부동산 도착 ==> 현아트빌 404호와 2억 8천 5백에 계약하기로 함
12:00 LG 부동산(문영 아파트 1806호)에게 전화해서 20201년 1월 30일(토) 이사 한다도 통보함
12:20 현아트빌 404호 주인 도착, 박선호(대표, 태용, 낙원 부동산) 도착
12:30 계약서 작성 ==> 전세보증금:2억 8천 5백 만원(2억 6천 5백 만원 남음) 계약금: 2천 만원, 관리비 4만원
		, 중계 수수료: 855,000원(2억 8천 5백 * 0.3)
		, 이사일: 20201년 1월 30일(토) 이사, 베란다 선반 놓고 간다고 함, 에어컨 놓고 간다고 함, 인덕션 사용(가스레인지 사용 못함)
		, 주인이 대출금(1억 천 만원)은 내가 이사하는 날 전세금 받아서 갚는다고 함(입금 내역 확인할 것), 주인이 현재의 집 팔고
		이사를 간다고 함(계약은 임대인 명의의 계약이며 추후 매도시 매수인 명의로 자동승계됨)
		, 주소: 서울시 관악구 신림동 470-21 현아트빌 제4층 제 404호[서울 관악구 조원로 159-1 (현아트빌)]
		, 임대인: 우리은행 1002-2426-56219 문현철(87년 생)	--> 계약 만기일 2개 전 퇴실 통보, 미통보시 자동연장
		--> 신한은행 쏠(SOL) 앱으로 OTP 보안카드 없이 백 만원 초과 송금 불가): 신한은행가서 송금 가능 금액 3억으로 늘릴 것
12:40 종료
12:50 귀가
13:00 계약금 천 9백만원(쏠(SOL) 앱으로 OTP 보안카드 사용) 송금 ==> 총 2천 만원
13:10 중식
13:20 실내 자전거 타기
14:00 루옌(수종) 놀러감
14:20 종료 
13:40 인터넷 서핑
18:11 석식
18:40 실내 자전거 타기 ==> SBS 자이언트[1회, 첫회] 시청)
19:40 종료
19:40 인터넷 서핑
22:13 루옌(수종) 귀가
23:20 취침
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2020.11.30(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:00 ==>  

- 제주은행 모바일 뱅킹(jWEB) 프로젝트[★]
- 09. 대출신청 정보(TL0120) 화면 수정
scwin.onpageload = function() { 
	gcm.log("[/TL0120_01_m.xml] [onpageload()] ==> [TEST_01] [09. 대출신청 정보(TL0120) 화면 로딩...@@@]" ); 
	
	scwin.fn_callService("TASK_COMMF_2173", scwin.service_callback);		// 01. 담보예금계좌 조회(TASK_COMMF_2173) 전문 호출 
};
-------------------------------------------------------------------------------------------------------------------------------

- 09-1. 대출신청 정보(TL0120) 입력 화면 수정
scwin.onpageload = function() { 
	gcm.log("[/TL0120_01_s1.xml] [onpageload()] ==> [TEST_01] [09-1. 대출신청 정보(TL0120) 입력 화면 로딩...@]" );
	
	var savAcList = $p.parent.scwin.savAcList;		// 02. 예금 전계좌 List ==> 02. 예금 전계좌조회(TASK_COMMF_21769) 전문
	
	dlt_saveAllAcList.removeALL();
	dlt_saveAllAcList.setJSON(savAcList);		// 02. 예금 계좌 List 셋팅
	
	for(var i=0; i < dlt_saveAllAcList.lenth; i++)
	{
		var acNknmNm = "";
		
		if(com.trim(dlt_saveAllAcList.getCellData(i,"acNknmNm"))	 != "")    // 계좌별칭명이 존재하면
			acNknmNm = " ("+ com.trim(dlt_saveAllAcList.getCellData(i,"acNknmNm")) +")";	
		}
		
		var acNFullNmSav = "["+ com.trim(dlt_saveAllAcList.getCellData(i,"sujNm")) +"] "+ com.transAcn("1", dlt_saveAllAcList.getCellData(i,"acN")) 
			+ acNknmNm;		// 계좌번호(출력용): [과목명] 예금계좌번호 (계좌별칭명)
			
		dlt_saveAllAcList.setCellData(i,"acNFormat",  acNFullNmSav);		// 계좌번호(출력용) 셋팅
		gcm.log("[/TL0120_01_s1.xml] [onpageload()] ==> [TEST_61] [i_번째]"+ i +"[예금 계좌_조회수(1760)]"+ dlt_saveAllAcList.getTotalRow() 
			 +"] @ ==> [과목명]"+ com.trim(dlt_saveAllAcList.getCellData(i,"sujNm")) 
			 +"[계좌번호]"+ com.transAcn("1", dlt_saveAllAcList.getCellData(i,"acN")) +"[계좌별칭명]"+ acNknmNm );
	}  // end of for()
	
};
==============================================================================================================
 
- 국민연금
1. 만 60세까지 납부(356개월)...매월 1,057,000원 수령 ==> 만 65세 수령 가능(2037년 06월 신청: 다음달 25일부터 평생 수령)
=============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 
+----------------------------------------------------// End //----------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
