

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2023.01) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2023.01.01(일) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:00 ~ 17:30 ==> 

 - 주말2[★] 
06:30 기상
07:00 조식
07:20 도보(집 => 도림 도보교 => 신림3교[반환점] => 서원 도보교 => 신림1교[반환점2] => 도림 도보교 => 집)
08:50 귀가
09:00 인터넷 서핑 ==>
12:00 중식
12:30 실내 도보
13:40 종료
14:00 인터넷 서핑 ==> 로그인 아이디 저장 체크 박스 처리 개발
17:10 석식
17:20 도보(집 => 도림 도보교 => 신림3교[반환점] => 서원 도보교 => 신림1교[반환점2] => 도림 도보교 => 집)
18:53 귀가
19:40 청소(청소기, 밀대)
20:10 샤워(찬물: 체중: 71.7kg ==> BMI: 24.88[표준 체중])
20:40 종료
21:00 인터넷 서핑
22:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2023.01.02(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==> 쿠쿠 밥솥 청소(20시, 집)

- 효성 PMS Prj[★]
- 상품기획 현황([/PrdPlnSttuListR.form.jsp) 개발 ==> 완료[♥♡]
http://localhost:8080/tnspms/prjct/dashboard/prdPlnSttu/viewList
==============================================================================================================

- 사번(HODPE ID) 입력 에러 (정보유출방지 솔루션에서)
1. 사번: bp0063912 조회 ==> 존재하지 않는 사용자라고 나옴 ==> 09시 30분에 PC 재시작하니 없어짐
=============================================================================================================

 - [정보 공유] 쿠쿠 밥솥 청소하기/자동 살균 세척 시 반드시 넣아야하는거 [[여기저기이쓔]] ■■■  
 https://youtu.be/ZYh78CDlPXY
 =============================================================================================================
 
 ■■■■■■■■■■■■■■■■■■ 2023.01.03(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==> 71, 부동산 목록(현아트빌 404호) 작성(21시. 집)

- 효성 PMS Prj[★]
- Gate 현황([/PrjctMgtGateListR.form.jsp) 수정
http://localhost:8080/tnspms/prjct/projectprjct/prjctmgttab/viewDetailGate?pjtMstId=761I3Y69200001H0M0
=============================================================================================================

- CDATA ( <![CDATA[..]]> )
https://java119.tistory.com/70
1. <>(부등호), &(앤드), ||(오아) 등을 닫는 부등호가 아니라 문자열로 처리하라는 뜻
<select id="getUserList" resultMap="UserVO">
    <![CDATA[
    SELECT *
    FROM USER
    WHERE ID > 3
    ]]>
</select>
=============================================================================================================

- [Oracle SQL] WITH 절(임시테이블 참조)
https://kyome.tistory.com/144

-- 사원 정보 조회 @@@
WITH TEMP_EMP AS
(
	SELECT '1001' AS EMPNO, '진태만' AS ENAME, '10' AS DEPTNO FROM DUAL
	UNION ALL
	SELECT '1002' AS EMPNO, '진수종' AS ENAME, '20' AS DEPTNO FROM DUAL
	SELECT '1005' AS EMPNO, '황현용' AS ENAME , '90' AS DEPTNO FROM DUAL
),
TEMP_DEPT AS
(
	SELECT '10' AS DEPTNO,  '판매부' AS DNAME FROM DUAL
	UNION ALL
	SELECT '20' AS DEPTNO,  '회계부' AS DNAME FROM DUAL
)
-- 메인 쿼리
SELECT A.EMPNO "사원 번호", A.ENAME "사원 명", B.DEPTNO "부서 번호", B.DNAME "부서 명"
FROM TEMP_EMP A	/* 사원 정보 TB */
		 , TEMP_DEPT B  	/* 부서 정보 TB */
WHERE 1=1
    AND A.DEPTNO = B.DEPTNO 	/* 부서 번호 */   -- 1. INNER 조인 @@@
;
=============================================================================================================

.pjtGateLeftLarge {
	width: 10px !important;
	background-color: #CCFFFF !important;
	font-weight: bold;
}
=============================================================================================================

- [CSS 기초이론] - CSS 테이블 스타일 (border-collapse, table-layout)
https://youtu.be/zOh8xWt7TZg

- [CSS 중급이론] - 가변영역 고정영역 함께 사용하는 레이아웃(calc, flex, display)
https://youtu.be/RthnACwgqr8
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2023.01.04(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==>

- 효성 PMS Prj[★]
- Gate 현황([/PrjctMgtGateListR.form.jsp) 수정
http://localhost:8080/tnspms/prjct/projectprjct/prjctmgttab/viewDetailGate?pjtMstId=761I3Y69200001H0M0
■  TEST_01(E_C) [23.01.04, by 진태만]
=============================================================================================================
 
- [SQL] WITH문을 이용한 계층형쿼리 ( With. CONNECT BY절)
https://heodolf.tistory.com/72
=============================================================================================================
 
- 아직도 console.log써서 디버깅 한다고? | 브라우저 디버깅하는 방법
https://youtu.be/C4poqiG8ulM
============================================================================================================= 

 ■■■■■■■■■■■■■■■■■■ 2023.01.05(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==>

- 효성 PMS Prj[★]
- Gate 현황([/PrjctMgtGateListR.form.jsp) 수정	==> 완료[♥♡]
http://localhost:8080/tnspms/prjct/projectprjct/prjctmgttab/viewDetailGate?pjtMstId=761I3Y69200001H0M0
=============================================================================================================

01. innerHTML 분석.sql 문서 작성
---------------------------------------------------------------------------------------------------------------------------------------

51. CSS 테이블 분석.sql 문서 작성
==> /01. TEST.html 로컬로 만들어서 테스트 함
=============================================================================================================

- IBSheet에 body에서 rowspan 처리 문의 글 작성
https://www.ibsheet.com/service.html
=============================================================================================================

- OK읏백만통장Ⅱ개설(파킹 통장) [2023.01.05(목)]
https://www.oksavingsbank.com/#/gdsDepsFrdmDtl?depsGdsSqno=98%5C
1. 계좌번호: 06461132890484 OK저축은행 진태만
2. 2천만원 입금
3. 기본 금리
1백만원 이하분 연 5.0%(세전)
1백만 원  초과 ~  5백만 원 이하분 연 4.5%(세전)
5백만 원  초과 ~  5천만 원 이하분 연 3.5%(세전) ■■■
5천만 원 초과분 연 2.5%(세전)
=============================================================================================================
  
 ■■■■■■■■■■■■■■■■■■ 2023.01.06(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==>

- 효성 PMS Prj[★]
- 상품기획 현황([/PrdPlnSttuListR.form.jsp) 수정
http://localhost:8080/tnspms/prjct/dashboard/prdPlnSttu/viewList
=============================================================================================================

- 표준 작업 소스 반영(08:50) ==> 완료[♥♡]
1. SVN에 등록
=============================================================================================================

- (JavaScript) 테이블 행 값 가져오기
https://stickode.tistory.com/605
=============================================================================================================

■■■■■■■■■■■■■■■■■■ 2023.01.07(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:00 ==> 휴일 근무(07:00 효성 PMS Prj): 13일차

- 주말[★] 
04:30 기상
05:00 조식
05:25 집출발(자전거: 쿠쿠 압력밥솥 실음): 새벽에 비 조금 옴
05:45 출근
05:45 도보(대륭1차 12층 복도)
07:00 업무
09:00 사무실 출발(자전거: 쿠쿠 압력밥솥 실음)
09:10 쿠쿠 압력밥솥 구로 대리점 도착 ==> 밥솥 코팅 벗겨짐(밥솥 교체 3만 5천원 예상, 밭솥 수리 비용 포함 10만원 내외 예상)
 		--> 대리점 직원이 새로 구입하는 게 낫다고 함: 새로 구입하기로 결심함
09:10 귀사
09:15 업무
11:25 중식(컵라면, 과자)
11:45 도보(도림천 => 보라매공원 ==> 대림역 ==> 도림천)
13:00 종료
13:10 업무
17:00 퇴근 ==> 자전거 타고 가다가 밥솥 떨어 뜨림(밥솥 안쪽 깨짐: 밥은 되는데 밥솥이 잘 안 닫힘)
17:15 귀가
17:40 석식
18:00 실내 도보
19:00 종료 
20:00 인터넷 서핑
22:00 취침
===============================================================================================================

- 효성 PMS Prj[★]
- 상품기획 현황([/PrdPlnSttuListR.form.jsp) 수정
http://localhost:8080/tnspms/prjct/dashboard/prdPlnSttu/viewList
=============================================================================================================

■■■■■■■■■■■■■■ 2023.01.08(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:00 ==> 휴일 근무(08:00 효성 PMS Prj): 14일차
 
- 주말2[★] 
05:50 기상
06:00 조식
06:25 출근(자전거)
06:45 도보(12층 복도)
08:00 종료
08:10 업무
11:30 중식(컵라면, 과자)
11:50 도보(도림천 => 보라매공원 ==> 도림천) 
13:00 종료
13:10 업무
17:00 퇴근(자전거)
17:20 다이소 구로디지털2호점 방문 ==> 핸드 크림(3천원) 구입: 반품할 것
17:40 다이소 보라매점 방문 ==> 우레아 10 풋크림(100m, 2천원l, 다용도유리저장용기(100ml, 천원 ) 구입
18:00 석식
18:20 실내 도보
19:40 종료
20:10 청소(청소기, 밀대)
20:10 샤워(찬물: 체중: 71.7kg ==> BMI: 24.88[표준 체중])
21:00 인터넷 서핑
22:10 취침
===============================================================================================================
 
- 쿠쿠 밥솥 구입
- 쿠쿠 트윈 프레셔 마스터셰프 CRP-LHTR0610FW(IH 압력 밥솥), 가격:  334,920원
http://www.enuri.com/detail.jsp?modelno=41223235
http://itempage3.auction.co.kr/DetailView.aspx?ItemNo=C793380306&frm3=V2
===============================================================================================================

- 효성 PMS Prj[★]
- 상품기획 현황([/PrdPlnSttuListR.form.jsp) 수정
http://localhost:8080/tnspms/prjct/dashboard/prdPlnSttu/viewList
=============================================================================================================

- onClick 처리
function fnReadList() {
	console.log("\n\n [@_T] ■■■ [/PrdPlnSttuListR.script.jsp] [fnReadList()] ==> [T_01] [01. 상품기획 현황 List 조회] ■■■");

	var prx = any.proxy();
	prx.url("/prjct/dashboard/prdPlnSttu/readList");   // 상품기획 현황 List 조회 URL 셋팅
	 
	if($("#excYear").val() == null || $("#excYear").val() == "") {    // 연도가 널 이면
		 any.ds("cond").value(0, "excYear", "2022");     // 연도 셋팅
	}
	prx.data("cond");   // 조회 조건 bind 셋팅(bind="cond")
	// return;  // TEST @@@ ===>

	prx.on("onSuccess", function() {    // 조회 성공 이면
		 var  list1 = prx.response.model;

		 fnCreatePrdPlnSttuList(this.response.model);    // 상품기획 현황 List 처리
	});
	prx.execute();
}

/**
 * 상품기획 현황 처리
 *
 * @author 진태만
 * @return
 */
function fnCreatePrdPlnSttuList(tbPrdPlnSttuList)
{
	console.log("\n\n\n\n [@_T] ■■■ [/PrdPlnSttuListR.script.jsp] [fnCreatePrdPlnSttuList()] ==> [T_01] [상품기획 현황 처리]");

	var $tbody = $('#prdPlnSttuListTbody').empty();     // 상품기획 현황 List tbody 정의

	for(var i = 0; i < tbPrdPlnSttuList.length; i++) {      // Gate List for() 처리[★] ==> 오른쪽 항목
		var $tr = $('<tr class="prdPlnSttuTR">').attr("id", i);
		console.log("[@_TM] ■■■ [/PrjctMgtGateListR.script.jsp] [fnCreatePrdPlnSttuList()] ==> [T_51] [PrdPlnSttuList List] [조회수(:clubs:)]"+ t
		bPrdPlnSttuList.length +"[i_번째]"+ i +"[00.개발 등급]"+ tbPrdPlnSttuList[i].devGradeNm +"[01. 개발요청 수량]"+ tbPrdPlnSttuList[i].devReqQuant );

		$('<td align="center" style="background-color:#DEEBF7; font-weight:bold; cursor:pointer;color:#blue"
		onClick="fnReadprdPlnSttuDtlList(0, \''+ tbPrdPlnSttuList[i].devGradeNm +'\', 0, \''+ [i] +'\');">').text(tbPrdPlnSttuList[i].devGradeNm).appendTo($tr);
		// 00.  개발 등급
		$('<td align="center" style="font-weight:bold; cursor:pointer;color:#blue"
		onClick="fnReadprdPlnSttuDtlList(0, \''+ tbPrdPlnSttuList[i].devGradeNm +'\', 1, \''+ [i] +'\');">').text(tbPrdPlnSttuList[i].devReqQuant).appendTo($tr);
		// 01. 개발요청 수량 ■
		$('<td align="center" style="font-weight:bold; cursor:pointer;color:#blue"
		onClick="fnReadprdPlnSttuDtlList(0, \''+ tbPrdPlnSttuList[i].devGradeNm +'\', 2, \''+ [i] +'\');">').text(tbPrdPlnSttuList[i].nomalQuant).appendTo($tr)
		// 02. 정상 수량(상품기획 진행 중) ■
		$('<td align="center" style="font-weight:bold; cursor:pointer;color:#blue"
		onClick="fnReadprdPlnSttuDtlList(0, \''+ tbPrdPlnSttuList[i].devGradeNm +'\', 3, \''+ [i] +'\');">').text(tbPrdPlnSttuList[i].delayQuant).appendTo($tr);
		// 03. 지연 수량(상품기획 진행 중) ■
		$('<td align="center" style="font-weight:bold; cursor:pointer;color:#blue"
		onClick="fnReadprdPlnSttuDtlList(0, \''+ tbPrdPlnSttuList[i].devGradeNm +'\', 4, \''+ [i] +'\');">').text(tbPrdPlnSttuList[i].deferQuant).appendTo($tr);
		// 04. 보류 수량 ■
		$('<td align="center" style="font-weight:bold; cursor:pointer;color:#blue"
		onClick="fnReadprdPlnSttuDtlList(0, \''+ tbPrdPlnSttuList[i].devGradeNm +'\', 5, \''+ [i] +'\');">').text(tbPrdPlnSttuList[i].compQuant).appendTo($tr);
		// 05. 완료 수량 ■
		$tr.appendTo($tbody);
	}   // end fo for() --> i
}

 function fnReadprdPlnSttuDtlList(type, devGradeTp, cntSort, cntSortNo) {
	 console.log("\n\n\n\n [@_T] ■■■ [/PrjctMgtListR.script.jsp] [fnPrdPlnSttuDtList()] ==> [T_01] [02. 상품기획 현황 상세 List 조회] ■■■
	 [1.타입]"+ type +"[00.개발 등급]"+ devGradeTp +"[01.수량 종류]"+ cntSort );

	 var prdPlnSttuKind = "";      // 상품기획 현황 종류(":리스트, 2:상세 List)
	 var devGradeValue = "'1'";    // 05. 개발 등급 값개(1:S, 2:A, 3:B, 4:C)
	 var progStatDtl = "";    // 6. 진행 상태(상세)

	 if(type != null  && type == 0) {    // 상품기획 현황 List에서 왔으면
		if(devGradeTp == "A/B") {
			 devGradeValue = "'2', '3'";
		}
		else if(devGradeTp == "C") {
			devGradeValue = "'4'";    // 05. 개발 등급 값
	   }
		else if(devGradeTp == "합계") {
			devGradeValue = "'1', '2', '3', '4'";
	   }
	   any.ds("cond").value(0, "devGrade", devGradeValue);     // 05. 개발 등급

	   if(cntSort == 1) {       // 01. 수량 종류가 1 이면
		   progStatDtl = "'10', '15'";      // 06. 진행 상태(상세) [01. 개발요청 수량]
	   } else if(cntSort == 2 || cntSort == 3) {    // 01. 수량 종류가 2, 3 이면
		   progStatDtl = "'30', '35', '40', '45'";      //  06. 진행 상태(상세) [03. 지연 수량(상품기획 진행 중)]
	   } else if(cntSort == 4) {       // 01. 수량 종류가 4이면
		   progStatDtl = "'60'";      //  06. 진행 상태(상세) [04. 보류 수량]
	   } else if(cntSort == 5) {    // 01. 수량 종류가 5 이면
		   progStatDtl = "'50'";      //  06. 진행 상태(상세) [05. 완료 수량]
	   }

		prdPlnSttuKind = "2";      // 상품기획 현황 종류(1:리스트, 2:상세 List)
	}
	 any.ds("cond").value(0, "prdPlnSttuKind", prdPlnSttuKind);     // 상품기획 현황 종류(1:리스트, 2:상세 List)
	 any.ds("cond").value(0, "devGradeDtl", devGradeValue);     // 05. 개발 등급(상세)
	 any.ds("cond").value(0, "progStatDtl", progStatDtl);           // 06. 진행 상태(상세)
	 any.ds("cond").value(0, "cntSort", cntSort);           // 수량 종류

	 if (type == "onReload") {
		 currentPageNo = mySheet.GetCurrentPage();
	 } else {
		 currentPageNo = 1;
	 }

	var prx = any.proxy();
	prx.url("/prjct/dashboard/prdPlnSttu/readprdPlnSttuDtlList");   // 상품기획 현황 상세 List 조회 URL 셋팅

	if($("#excYear").val() == null || $("#excYear").val() == "") {    // 연도가 널 이면
		 any.ds("cond").value(0, "excYear", "2022");     // 연도 셋팅
	}
	prx.data("cond");   // 조회 조건 bind 셋팅(bind="cond")
	console.log("[@_T] ■■■ [/PrjctMgtListR.script.jsp] [fnPrdPlnSttuDtList()] ==> [T_41] [상품기획 현황 종류]" +
	prdPlnSttuKind +"[05. 개발 등급(상세)]" + devGradeValue  +"[06. 진행 상태(상세)]" + progStatDtl );
	// return;  // TEST @@@ ===>

	prx.on("onSuccess", function() {    // 조회 성공 이면
	   console.log("[@_TM] ■■■ [/PrjctMgtListR.script.jsp] [fnprdPlnSttuDtlList()] ==>
	   [T_51] [조회 결과 @@@ [조회 건수(:clubs:)}"+ prx.response.model.length +"[건수/3@]"+ prx.response.model.length/3 );

		var  list1 = prx.response.model;

		 var total = new Object();
		 total.Data = list1;

		 mySheet.LoadSearchData(total);      // Grid에 Data 셋팅
	});

	prx.execute();
}
=============================================================================================================

- MergeSheet API 확인 @@@
MergeSheet: msHeaderOnly + msBaseColumnMerge      // 헤더 영역의 머지 + 기준 컬럼 머지 영역 범위 내에서 셀 병합  ■■■
// MergeSheet: msHeaderOnly + msFixedMerge      		// 헤더 영역의 머지 + 단위 데이터 행 구조에서 고정 셀 병합
// MergeSheet: msHeaderOnly + msPrevColumnMerge      // 헤더 영역의 머지 + 데이터영역 앞컬럼 머지
function fnInitIBSheet()
{
	console.log("[@_T] ■■■ [/PrdPlnSttuListR.script.jsp] [fnInitIBSheet()] ==> [T_01] [IB Sheet 초기화] ■■■");

	var initSheet = {
		 Cfg : {
				 SearchMode: 1,
				 Page: any.config.ibsheet.page,    // 공통
				 ToolTip:1,
				 ExportMode:2, // Excel 다운로드 설정
				 AutoFitColWidth:"init|search|resize",
				 DataRowHeight : any.config.ibsheet.dataRowHeight, //공통
				 HeaderRowHeight : any.config.ibsheet.headerRowHeight, // 공통
				MergeSheet: msHeaderOnly + msBaseColumnMerge      // 헤더 영역의 머지 + 기준 컬럼 머지 영역 범위 내에서 셀 병합
				==> (msAll, msPrevColumnMerge),
		},
		HeaderMode: any.config.ibsheet.headerMode,
		Cols: [
			{Header: "", SaveName: "seq", Type: "Seq", Align: "Center", MinWidth: 50, Width: 60},
			{Header:"<n:message code="lbl.mprdShipHopeDe" text="양산출하희망일" escape="js" />|
			<n:message code="lbl.mprdShipHopeDe" text="양산출하희망일" escape="js" />", SaveName: "mprdShipHopeDe",
			Edit:0, Type:"Text", Width:200, Align:"Center", Hidden:1, ColMerge:1 },       // ColMerge 기준점(기준 컬럼 머지일 경우) ■■■
			{Header:"<n:message code="lbl.status" text="Status" escape="js" />|<n:message code="lbl.status" text="Status" escape="js" />",
			SaveName: "nowWbsStat", Type:"Image", Width: 80, Align:"Center"},
			{Header: "<n:message code="lbl.rqstSj" text="의뢰제목" escape="js"/>|<n:message code="lbl.rqstSj" text="의뢰제목" escape="js"/>",
			SaveName: "sj", Edit:0, Type: "Text", Align: "left", Width: 530, FontColor: any.config.ibsheet.linkFontColor, Ellipsis: 1, Cursor: 'pointer'},
			{Header:"<n:message code="lbl.mprdShipHopeDe" text="양산출하희망일" escape="js" />|<n:message code="lbl.mprdShipHopeDe"
			text="양산출하희망일" escape="js" />", SaveName: "mprdShipHopeDe", Edit:0, Type:"Text", Width:200, Align:"Center"},   //.■■■
			{Header:"<n:message code="lbl.prdPln" text="상품 기획" escape="js" />|<n:message code="lbl.acmsltSe" text="구분" escape="js" />",
			SaveName: "se", Edit:0, Type:"Text", Width:60,  Align:"Center", ColMerge:0 },	// ColMerge 안함 설정
			{Header:"<n:message code="lbl.prdPln" text="상품 기획" escape="js" />|<n:message code="lbl.devReqRcpt" text="개발요청 접수" escape="js" />",
			SaveName: "rcptDe", Edit:0, Type:"Text", Width:150, Align:"Center", ColMerge:0 },
			{Header:"<n:message code="lbl.prdPln" text="상품 기획" escape="js" />|<n:message code="lbl.devGradeDcn" text="개발 등급 결정" escape="js" />",
			SaveName: "gradeDcsnDe", Edit:0, Type:"Text", Width:150, Align:"Center", ColMerge:0 },
			 {Header:"", Type: "Text",   SaveName: "prdPlnStat",    Hidden :1  },   // 상품계획상태 hidden]
		]
	};

	createIBSheet2($("#prdPlnSttuDtlList")[0], "mySheet", "100%", "284px");  // 상품기획 현황 상세 List
	IBS_InitSheet(mySheet, initSheet);
	any.config.ibsheet.setDefaultSetting(mySheet);
}
=============================================================================================================

- jsFiddle 사용법 – 프론트엔드 (html,css,javascript) 코딩 테스트 툴
https://www.hyungjoo.me/jsfiddle-%EC%82%AC%EC%9A%A9%EB%B2%95/
=============================================================================================================

- 문정 LG 노트북 분석 요청
14Z980-GP70ML, 중고 68만원
=============================================================================================================

■■■■■■■■■■■■■■ 2023.01.09(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==> 관악 우체국 방문(17:50, 경매 등기 수령)

- 효성 PMS Prj[★]
- 상품기획 현황([/PrdPlnSttuListR.form.jsp) 수정
http://localhost:8080/tnspms/prjct/dashboard/prdPlnSttu/viewList
=============================================================================================================

- 보정 명령(등기) 수령 @@@
1. 등기 신청 수수료(이전: 15,000원, 말소 1건당: 3,000원): 29,000원
2. 말소목록 사항(말소할 각 등기를 특정할 수 있도록 접수일자와 접수번호(4부 복사) 
==============================================================================================================
 
■■■■■■■■■■■■■■ 2023.01.10(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 16:00 ==>  

- 효성 PMS Prj[★]
- 상품기획 현황([/PrdPlnSttuListR.form.jsp) 수정
http://localhost:8080/tnspms/prjct/dashboard/prdPlnSttu/viewList
=============================================================================================================

- IBSheet body에서 rowspan 처리 문의_02 글 작성(집에서 작성 후 등록)
https://www.ibsheet.com/service.html
=============================================================================================================

- 등기2[★] 
16:00 퇴근
16:05 사업장(대륭1차) 출발(자전거) => 보라매 공원 => 신대방3거리역 => 노량진역 => 노들역 => 한강 => 동작대교 => 동작역
		=> 반포교 => 반포 종합 운동장 => 가톨릭대학교 서울성모병원 => 삼호가든사거리 => 서울법원종합청사4별관
16:54 회생 법원 도착
17:00 경매 2계 도착  ==> 서류 확인
17:05 보정 신청서 작성
17:10 신한은행(회생 법원 내) 방문 ==> 등기 신청 수수료(이전: 15,000원, 말소 1건당: 3,000원): 29,000원 납입
17:1 경매 2계 방문 ==> 등기 신청 수수료 영수증 제출, 말소목록 사항(4부 복사)  제출  
		-> 등기 신청 완료(10일 후 등기 필증이 나오면 직접 받으러 오라고 함)
17:17 종료 
17:20 법원 출발(자전거) => 반포교 => 동작역 => 동작대교 => 노들역 => 노량진역 => 신대방3거리역 => 롯데 백화점 ==> 도림 도보교 
18:15 귀가 
18:20 조식
18:35 실내도보
19:25 종료 
20:00 인터넷 서핑 ==> 쿠쿠 트윈 프레셔 마스터셰프 CRP-LHTR0610FW(IH 압력 밥솥) 도착
22:00 취침
=============================================================================================================

■■■■■■■■■■■■■■ 2023.01.11(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==> 중식(11:540, 보쌈 정식(종가집(한신 IT타워 지하), 개발팀, 이상영 팀장, 하지연 부장, 박상규 차장)

- 효성 PMS Prj[★]
- 상품기획 현황(/PrdPlnSttuListR.form.jsp) 수정 ==>
http://localhost:8080/tnspms/prjct/dashboard/prdPlnSttu/viewList
=============================================================================================================

- 대시보드 - 상품기획 현황 수정 사항
1. 상품기획검토일자 데이터 누락  ==> 완료[♥♡]
2. 샘플출하희망일자, 양산출하 희망일자 데이터 누락 ==> 완료[♥♡]
3. 중간 보이는 합계에는 정상에 카운트 됐는데 리스트에선 적색 신호등 표기
4. 중간 보이는 합계에 개발요청의뢰는 카운트 안되어야함==> 완료[♥♡]
5. 번호는 3로우(계획, 변경, 실적) 당 하나의 번호로 표기 ==> 완료[♥♡]
6. 제품명 데이터 오류: (EX: MX6200 이 나타나야 함) ==> 완료[♥♡]
7. 2023년으로 검색하면 오류 ==> 완료[♥♡]
8. Final DR 추가  ==> 완료[♥♡]
9. 의뢰 제목 클릭: 상품 기획 상세 화면이 팝업 ==> 완료[♥♡]
10. SEQ NO colspan된 수 대로 표기  ==> 완료[♥♡]
=============================================================================================================

- 표준 작업 소스 반영(16:15) ==> 완료[♥♡]
1. SVN에 등록
=============================================================================================================

- slack 삭제 후 재설치
- 윈도우10 레지스트리 추가, 삭제하기(.reg파일) - 네이버블로그
https://blog.naver.com/siwoo9999/221137858391

1. 레지스트리 에디터 실행하기
 1) 윈도우키+R을 눌러서 실행창을 켜시고 입력창에 regedit 를 입력 후 확인
2. 레지스트리 삭제하기 (- reg )
 1) 레지스트리에서 slack 삭제 ==> 찾기: slack
  가. 컴퓨터\HKEY_CLASSES_ROOT\slack
2. Microsoft Store에서 다운로드 및 재설치
=============================================================================================================

- 우리 은행 주택청약 종합 저축 해지(13시, 우리은행 서울디티절 지점)
1. 계좌번호: 1073-909-029310
2. 결산
1) 현재 잔액: 1,900,000원, 2) 이자세: 23,820원
3) 이자금액: 264,710원, 4) 농특세: 1,320원
5) 수입액 합계: 2,164,710원, 6) 공제액 합계: 25,140원 ==> 7)받 으실 금액: 2,139,540원
=============================================================================================================

- 오케이저축은행 예금 가입 
□ 출금 계좌: 64-61-13-2890484
□ 상품명 : OK e-안심정기예금(복리)
□ 신규금액 : 삼천만원
□ 자동이체계좌 : 해당사항 없음
□ 기본이율 : 연5.4%(세전) [5,262,989원: 세전]
□ 과세구분 : 개인과세
□ 계약일자 : 2023-01-11
□ 계약기간 : 36개월(2026-01-11)
□ 계약만기시 : 만기해지후송금
□ 연결계좌 : (신한은행) 110437783130
=============================================================================================================

■■■■■■■■■■■■■■ 2023.01.12(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==>

- 효성 PMS Prj[★]
- 상품기획 현황(/PrdPlnSttuListR.form.jsp) 수정 ==> 완료[♥♡]
http://localhost:8080/tnspms/prjct/dashboard/prdPlnSttu/viewList
=============================================================================================================

- 대시보드 - 상품기획 현황 수정 사항
3. 중간 보이는 합계에는 정상에 카운트 됐는데 리스트에선 적색 신호등 표기 ==> 완료[♥♡]
=============================================================================================================
 
- LG 모니터 해상도
1. 3440 * 1440(권장): 글자 너무 작음
2. 2560 * 1080(실제 사용) ■
=============================================================================================================

- 쿠쿠 트윈프레셔 청소,세척하는 방법!
https://youtu.be/L7ltIHmqSlY
=============================================================================================================

■■■■■■■■■■■■■■ 2023.01.13(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==> 출근할 때 비 많이 옴(05:30, 자전거[비옷 착용])

- 효성 PMS Prj[★]
- 프로젝트/과제 현황(/PrdPlnSttuListR.form.jsp) 개발
http://localhost:8080/tnspms/prjct/dashboard/prjctTaskSttu/viewList
=============================================================================================================

- 김빌리 책임 면담(10:10, 회의실): 하지연 부장
1. 상품기획 현황 화면 수정, Gate 현황 화면 수정
=============================================================================================================

- 상품기획 현황(/PrdPlnSttuListR.form.jsp) 수정 ==> 완료[♥♡]
http://localhost:8080/tnspms/prjct/dashboard/prdPlnSttu/viewList
=============================================================================================================

- 의뢰담당: 조민제 조회 수정  ==> 완료[♥♡]
1. 조회 조건에 AND A.DEV_GRADE IN (${cond.devGradeDtl})       /* 05. 개발 등급(상세) */
=============================================================================================================

- 2023년 80만원 이하 가성비 자급제 스마트폰 추천 BEST 5ㅣ아이폰se3 홍미노트11 PRO 갤럭시 A33 A53 A52s S22
https://youtu.be/x9soype4lCY
1. 홍미노트11 PRO: 35만원대
=============================================================================================================

■■■■■■■■■■■■■■ 2023.01.14(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==> 휴일 근무(07:00 효성 PMS Prj): 15일차

- 주말[★] 
04:57 기상
05:00 조식
05:25 집출발(자전거): 새벽에 비 조금 옴(비옷 상의 착용)
05:45 출근
05:45 도보(대륭1차 12층 복도)
07:00 업무
11:25 중식(컵라면, 과자)
11:45 도보(도림천 => 보라매공원 ==> 대림역 ==> 도림천): 비 약간 옴(비옷 상의 착용)
13:00 종료
13:10 업무
17:00 퇴근
17:20 귀가
17:40 석식
17:50 실내 도보
19:00 종료 
19:40 인터넷 서핑
22:00 취침
===============================================================================================================

- 효성 PMS Prj[★]
- Gate 현황([/PrjctMgtGateListR.form.jsp) 수정
http://localhost:8080/tnspms/prjct/projectprjct/prjctmgttab/viewDetailGate?pjtMstId=761I3Y69200001H0M0
1. 필수여부 수량 수정
for(var i = 0; i < tbGateList.length; i++) {   // Gate List for() 처리[★]
	 necYnCnt = tbGateList[i].necYnCnt + necYnCnt;
}
$('<td align="center" style="background-color:#CCFFFF; font-weight:bold">').text(necYnCntNm).appendTo($tr6);
// 06. 필수여부(1: 필수, 2:옵션, 3: 미실행)
=============================================================================================================

2. Gate 현황 대일정 순서 수정
/* [@_T] [T_73] Gate 항목 조회 ==> [/TbPrjctMasterMapper.xml.readGateList()] [22.12.21, by 진태만] */
WITH  TEMP_WBS_ST AS     /* TEMP_WBS_ST TB */
(
	SELECT WBS_ID, WBS_LEVEL, SORT_ORDR, UPPER_WBS_ID
				, (SELECT SORT_ORDR FROM TB_PJT_WBS_PLAN
				WHERE WBS_ID = A.UPPER_WBS_ID AND PJT_MST_ID = '10000001'      /* 프로젝트 마스터 ID */
					AND UPPER_WBS_ID IS NOT NULL) AS UPPER_SORT_ORDR      /* 상위 정렬 순서 */
	FROM TB_PJT_WBS_PLAN A /* 12. 프로젝트_WBS_계획 TB */
	WHERE A.PJT_MST_ID = '10000001'      /* 프로젝트 마스터 ID */
)
, TEMP_WBS AS   /* TEMP_WBS TB */
(
	SELECT A.WBS_ID , A.UPPER_WBS_ID, A.WBS_NM, UPPER_SORT_ORDR
			, A.WBS_NM "WBS 명■"
			, (SELECT WBS_NM FROM TB_PJT_WBS_PLAN
			WHERE WBS_ID = A.UPPER_WBS_ID AND PJT_MST_ID = '765L30BUO00001Z4V0'      /* 프로젝트 마스터 ID */
			 AND UPPER_WBS_ID IS NOT NULL) AS "스테이지 명■"      /* 01. 대일정(스테이지 명) */
			  , A.WBS_LEVEL "레벨 번호", B.UPPER_SORT_ORDR "UP_정렬 순서_B", A.SORT_ORDR "정렬 순서", A.WBS_TY"WBS 타입"
			, (CASE WHEN A.WBS_TY = 'ST' THEN B.SORT_ORDR || LPAD('0', 3, '0')
						 WHEN A.WBS_TY <> 'ST' THEN  B.UPPER_SORT_ORDR || LPAD(A.SORT_ORDR, 3, '0') END) AS SORT_ORDR_R
			  /* 정렬 순서_R */			
			 , A.WBS_LEVEL, A.SORT_ORDR, A.WBS_TY
	FROM TB_PJT_WBS_PLAN A, TEMP_WBS_ST B /* 12. 프로젝트_WBS_계획 TB */
	WHERE A.PJT_MST_ID = '765L30BUO00001Z4V0'      /* 프로젝트 마스터 ID */
		AND A.WBS_ID = B.WBS_ID
	ORDER BY A.SORT_ORDR
)
SELECT S.WBS_ID,  S.WBS_NM "WBS 명■"
			, (SELECT WBS_NM FROM TB_PJT_WBS_PLAN
			WHERE WBS_ID = S.UPPER_WBS_ID AND PJT_MST_ID = '765L30BUO00001Z4V0'      /* 프로젝트 마스터 ID */
			 AND UPPER_WBS_ID IS NOT NULL) AS "스테이지 명■"      /* 01. 대일정(스테이지 명) */
		   , S.SORT_ORDR_R "정렬 순서_R■", S.UPPER_SORT_ORDR "UP_정렬 순서_B", S.SORT_ORDR "정렬 순서", S.WBS_LEVEL
FROM  TB_PJT_WBS_PLAN A, TEMP_WBS S  	/* 부서 정보 TB */
WHERE A.PJT_MST_ID = '765L30BUO00001Z4V0'      /* 프로젝트 마스터 ID */
	AND A.WBS_ID = S.WBS_ID
 	-- AND S.WBS_TY NOT IN ('ST')      /* WBS 타입이 ST가 아닌 것  */
-- ORDER BY TO_NUMBER(S.SORT_ORDR_R)
ORDER BY S.SORT_ORDR_R
;
 =============================================================================================================

- 프로젝트/과제 현황(/PrdPlnSttuListR.form.jsp) 개발
http://localhost:8080/tnspms/prjct/dashboard/prjctTaskSttu/viewList
=============================================================================================================

- (주) 예술과 기술에서 추석 선물 택배로 보냄
- 대상 청정원 종합2호 [1세트], 가격: 22,540원
http://www.enuri.com/detail.jsp?modelno=11552527
=============================================================================================================

■■■■■■■■■■■■■■ 2023.01.15(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==> 휴일 근무(08:00 효성 PMS Prj): 16일차

- 주말[★] 
05:50 기상
06:00 조식
06:25 출근(자전거): 새벽에 비 조금 옴(비옷 상의 착용)
06:45 도보(12층 복도)
08:00 종료
08:10 업무
11:30 중식(컵라면, 과자)
11:50 도보(도림천 => 보라매공원 ==> 도림천) 
13:00 종료
13:10 업무
17:00 퇴근(자전거)
17:20 귀가
17:30 르카프 운동화 끈 교체(많이 낡음: 조만간 버려야 함)
17:40 석식
18:20 실내 도보
19:40 종료
20:50 청소(청소기, 밀대)
21:20 샤워(찬물: 체중: 71.7kg ==> BMI: 24.88[표준 체중])
21:30 인터넷 서핑
22:30 취침
===============================================================================================================

- 효성 PMS Prj[★]
- 프로젝트/과제 현황(/PrdPlnSttuListR.form.jsp) 개발 ==> 완료[♥♡],
http://localhost:8080/tnspms/prjct/dashboard/prjctTaskSttu/viewList
1.
any.ready(function() {
	console.log("\n\n\n\n [@_T] ■■■ [/PrjctTaskSttuListR.script.jsp] [ready()] ==> [T_01]
	[프로젝트/과제 현황(Dashboard)] ■■■");

	fnReadList();   // 프로젝트/과제 현황 List 조회
	fnReadprjctTaskSttuDtlList();  // 프로젝트/과제 현황 상세 List 조회

   // fnInitIBSheet();   // 01. IB Sheet 초기화
   fnInitIBSheetlPrjct();  // 02. IB Sheet 프로젝트 초기화
   //fnInitIBSheetTask();    // 03. IB Sheet 과제 초기화

  // $('#prjctTaskSttuDtlList').hide();    // 01. 프로젝트/과제 현황 상세 List 숨김 처리
  // $('#prjctTaskSttuDtlPrjList').hide();    // 02. 프로젝트/과제 현황 프로젝트 상세 List 숨김 처리
  // $('#prjctTaskSttuDtlTaskList').hide();    // 03. 프로젝트/과제 현황 과제 상세 List 숨김 처리
});
=============================================================================================================

/* [@_T] [T_73] Gate 항목 조회 ==> [/TbPrjctMasterMapper.xml.readGateList()] [22.12.21, by 진태만] */
, TEMP_WBS AS   /* TEMP_WBS TB */
(
	SELECT A.WBS_ID , A.UPPER_WBS_ID, A.WBS_NM
			   , (CASE WHEN A.WBS_TY = 'ST' THEN  '1' || LPAD(B.SORT_ORDR, 2, '0') || LPAD('0', 3, '0')
			 WHEN A.WBS_TY <> 'ST' THEN '1' || LPAD(B.UPPER_SORT_ORDR, 2, '0') || LPAD(A.SORT_ORDR, 3, '0') END) AS SORT_ORDR_R   
			 /* 정렬 순서_R */	
)
=============================================================================================================

- 믹스커피 먹는 방법 딱! 정해 드립니다 l 커피믹스의 진실 l 닥터딩요
https://youtu.be/lFzB0Wo3oZY
=============================================================================================================

■■■■■■■■■■■■■■ 2023.01.16(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==>

- 효성 PMS Prj[★]
- 프로젝트/과제 현황(/PrdPlnSttuListR.form.jsp) 수정  ==> 완료[♥♡]
http://localhost:8080/tnspms/prjct/dashboard/prjctTaskSttu/viewList
1. 개발등급 D/RC 추가
=============================================================================================================

- 김빌리 책임 면담(10:10, 회의실)]
1. 프로그램 현황 설명
1) 프로그램 부분 간트 차트로 할지 THML로 할지 고민
=============================================================================================================

- 프로그램 현황(/PrgmSttuListR.form.jsp) 개발
http://localhost:8080/tnspms/prjct/dashboard/prgmSttu/viewList
=============================================================================================================

- 상품기획 현황(/PrdPlnSttuListR.form.jsp) 수정  ==> 완료[♥♡]
http://localhost:8080/tnspms/prjct/dashboard/prdPlnSttu/viewList
1. 01. 개발등급 결정 일자(02. 정상) , 지연 수정
AND ((A.DEV_GRADE_DCSN_DE IS NOT NULL AND C.GRADE_DCSN_DE IS NOT NULL AND A.CNCL_DE IS NOT NULL AND A.FINAL_DR_DE IS NOT NULL)
	AND (TO_DATE(TO_CHAR(SYSDATE,'YYYY-MM-DD')) - TO_DATE(A.DEV_GRADE_DCSN_DE, 'YYYY-MM-DD') <= 0
	/* 01. 개발등급 결정 일자(02. 정상) */
		AND TO_DATE(TO_CHAR(SYSDATE,'YYYY-MM-DD')) - TO_DATE(C.PRD_PLN_DE, 'YYYY-MM-DD') <= 0       /* 02. 상품 기획 검토 일자 */
		AND TO_DATE(TO_CHAR(SYSDATE,'YYYY-MM-DD')) - TO_DATE(A.FINAL_DR_DE, 'YYYY-MM-DD') <= 0      /* 03. Final DR 일자 */
		AND TO_DATE(TO_CHAR(SYSDATE,'YYYY-MM-DD')) - TO_DATE(A.CNCL_DE, 'YYYY-MM-DD') <= 0              /* 04. 심의회 일자 */
	))
=============================================================================================================

- "적금 왜 들어?"…인뱅·저축은행, 연 5.5% 파킹통장 인기
https://n.news.naver.com/article/421/0006577737?cds=news_media_pc
=============================================================================================================

■■■■■■■■■■■■■■ 2023.01.17(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:11 ==> 지연 수량  땨문에 야근함(22:11 퇴근, 과자로 석식 대신함)

- 효성 PMS Prj[★]
- 프로젝트/과제 현황(/PrdPlnSttuListR.form.jsp) 수정
http://localhost:8080/tnspms/prjct/dashboard/prjctTaskSttu/viewList
=============================================================================================================

- 상품기획 현황(/PrdPlnSttuListR.form.jsp) 수정
http://localhost:8080/tnspms/prjct/dashboard/prdPlnSttu/viewList
1. 03. 지연 수량 수정
=============================================================================================================

- KBS시사직격
https://www.youtube.com/watch?v=yFMlN-ifPFo&list=PLUDlUe6m2XQZ6sPp9Zf10mGGBX_jL_HRu
 =============================================================================================================

- 예순 한살, 정규직의 끝은 하청의 시작이었다
https://n.news.naver.com/article/028/0002623673?cds=news_media_pc
=============================================================================================================

 ■■■■■■■■■■■■■■ 2023.01.18(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 05:00 ~ 17:30 ==> 중간 보고회(15:00, 효성 PMS Prj)

- 효성 PMS Prj[★]
- 상품기획 현황(/PrdPlnSttuListR.form.jsp) 수정 ==> 완료[♥♡]
http://localhost:8080/tnspms/prjct/dashboard/prdPlnSttu/viewList
1. 03. 지연 수량 수정
=============================================================================================================

- 프로젝트/과제 현황(/PrdPlnSttuListR.form.jsp) 수정
http://localhost:8080/tnspms/prjct/dashboard/prjctTaskSttu/viewList
=============================================================================================================

 ■■■■■■■■■■■■■■ 2023.01.19(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==>

- 효성 PMS Prj[★]
- 상품기획 현황(/PrdPlnSttuListR.form.jsp) 수정 ==> 완료[♥♡]
http://localhost:8080/tnspms/prjct/dashboard/prdPlnSttu/viewList
1. 03. 지연 수량 수정 ==> 완료[♥♡]
SELECT 	'실적_T' AS SE   ------------- ■■ 태스트   @@@ ===?
				, TO_CHAR(TO_DATE(C.GRADE_DCSN_DE, 'YYYY-MM-DD')) " 1. 개발등급 결정[계획] "
				, TO_CHAR(TO_DATE(A.DEV_GRADE_DCSN_DE, 'YYYY-MM-DD')) " 1. 개발등급 결정▲ "
				,  TO_CHAR(TO_DATE(C.PRD_PLN_DE, 'YYYY-MM-DD')) "2. 상품기획▲_C"
				, TO_CHAR(TO_DATE(C.PRD_PLN_DE, 'YYYY-MM-DD')) " 3. Final DR[계획] "
				, TO_CHAR(TO_DATE(A.FINAL_DR_DE, 'YYYY-MM-DD')) " 3. Final DR ▲ "
				, TO_DATE(TO_CHAR(SYSDATE, 'YYYY-MM-DD')) - TO_DATE(T.FINAL_DR_DE, 'YYYY-MM-DD') "3. Final DR_C■ "
				, TO_CHAR(TO_DATE(C.CNCL_DE, 'YYYY-MM-DD')) "4. 심의회[계획] "
				, TO_CHAR(TO_DATE(A.CNCL_DE, 'YYYY-MM-DD')) "4. 심의회 ▲"
				, TO_DATE(TO_CHAR(SYSDATE, 'YYYY-MM-DD')) - TO_DATE(T.CNCL_DE, 'YYYY-MM-DD') "4. 심의회_C■ "
TB_PRD_PLN A
WHERE 1 = 1
	AND (1 = 1
		AND (A.DEV_GRADE_DCSN_DE IS NOT NULL OR(A.DEV_GRADE_DCSN_DE IS NULL
			AND TO_DATE(TO_CHAR(SYSDATE, 'YYYY-MM-DD')) - TO_DATE(T.GRADE_DCSN_DE, 'YYYY-MM-DD') <= 0))		
		/* 01. 개발등급 결정 일자(02. 정상) */
		AND (A.FINAL_DR_DE IS NOT NULL OR(A.CNCL_DE IS NULL
			AND TO_DATE(TO_CHAR(SYSDATE, 'YYYY-MM-DD')) - TO_DATE(T.FINAL_DR_DE, 'YYYY-MM-DD') > 0))
			/* 03. Final DR 일자 */
		-- ■■  03. Final DR 일자(A.FINAL_DR_DE)가 널이 아니거나 03. Final DR 일자(T.FINAL_DR_DE)가 오늘 보다 크거나 같으면
		=== > 정상 수량으로 처리 ■■■■ --> 총 5건 --> 정상 3건, 지연 2건
		 -- ■■ 이재륭 과장에게 개발등급 결정 일자(FINAL_DR_DE IS NOT NULL OR FINAL_DR_DE IS NULL) 개념 문의 ==> 개망신 ■■
		AND (A.CNCL_DE IS NOT NULL OR(A.CNCL_DE IS NULL
			AND TO_DATE(TO_CHAR(SYSDATE, 'YYYY-MM-DD')) - TO_DATE(T.CNCL_DE, 'YYYY-MM-DD') > 0))
			/* 04. 심의회 일자 */
	)
	-- AND (1 = 1
	--	AND (A.DEV_GRADE_DCSN_DE IS NOT NULL OR(A.DEV_GRADE_DCSN_DE IS NULL
	--	AND TO_DATE(TO_CHAR(SYSDATE, 'YYYY-MM-DD')) - TO_DATE(T.GRADE_DCSN_DE, 'YYYY-MM-DD') > 0))		
	--	/* 01. 개발등급 결정 일자03. 지연) */
	)
;
------------------------------------------------------------------------------------------------------------------------------------------

-  상품기획 현황 조회 결과 @@@
 |SE  |1. 개발등급 결정[계획]|1. 개발등급 결정▲|2. 상품기획▲_C|3. Final DR[계획]|3. Final DR ▲|3. Final DR_C■|4. 심의회[계획]|4. 심의회 ▲|4. 심의회_C■|
|----|--------------|-----------|----------|---------------|-------------|--------------|----------|--------|---------|
|실적_T|23/01/09      |23/01/09   |23/01/10  |23/01/10       |             |8             |23/01/12  |        |8        |   ==> 지연 ■■■■
|실적_T|23/01/13      |23/01/13   |23/01/25  |23/01/25       |23/01/13     |-6            |23/01/27  |        |-7       |  ==> 정상 ■■■■
|실적_T|23/01/09      |23/01/09   |23/01/17  |23/01/17       |23/01/11     |-4            |23/01/25  |        |-5       |	=> 정상 ■■■■
|실적_T|23/01/05      |23/01/05   |23/01/06  |23/01/06       |             |12            |23/01/10  |        |10       |	 ==> 지연 ■■■■
|실적_T|23/01/24      |23/01/24   |23/01/25  |23/01/25       |23/01/23     |-11           |23/01/31  |        |-11	=> 정상 ■■■■
=============================================================================================================

- 프로젝트/과제 현황(/PrdPlnSttuListR.form.jsp) 수정
http://localhost:8080/tnspms/prjct/dashboard/prjctTaskSttu/viewList
=============================================================================================================

■■■■■■■■■■■■■■ 2023.01.20(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:00 ==> 중식(11:30, 안심 치즈 돈가스(은보 가츠(지하 1층), 개발팀): 김도현 과장 무단 결근,. 15:50: 모두 퇴근

- 효성 PMS Prj[★]
- 프로젝트/과제 현황(/PrdPlnSttuListR.form.jsp) 수정
http://localhost:8080/tnspms/prjct/dashboard/prjctTaskSttu/viewList
=============================================================================================================

- 이클립스 시작 에러
1. 현상:
Error starting ApplicationContext. To display the auto-configuration report re-run your application with 'debug' enabled.
2023-01-20 09:32:26.041 ERROR 23804 --- [           main] o.springframework.boot.SpringApplication : Application startup failed
org.springframework.beans.factory.BeanDefinitionStoreException: IOException parsing XML document from class path resource
[META-INF/cxf/cxf.xml]; nested exception is java.io.FileNotFoundException: class path resource [META-INF/cxf/cxf.xml]
cannot be opened because it does not exist
	at org.springframework.beans.factory.xml.XmlBeanDefinitionReader.loadBeanDefinitions(XmlBeanDefinitionReader.java:344)
2. 원인: /CxfWebServiceConfig.java에서 cxf.xml 파일이 없음
@Configuration
@ImportResource({"classpath:META-INF/cxf/cxf.xml"})
public class CxfWebServiceConfig {
    private @Autowired Bus bus;
    @Bean
    public Endpoint endpoint(Bus bus) {
        EndpointImpl endpoint = new EndpointImpl(bus, new TNSPMS00270SOService());
        endpoint.publish("/ApprovalWSProvider");

        return endpoint;
    }
}
3. 조치:  WEB_INF > lib: 마우스 우 클릭 ==> Team ==> update  To Revision[수정] ==> Update To Revision(새창)
 1) Revision: Browse: 클릭 ==> Select Revision(새창)
Revision: 1394,  01월 17일 11:39 --> 선택
 가. update Revision: 로컬(Client)에서 작업한 내용을 취소하고 저장소의 소스로 되돌림
 2) 에러 발생:
svn: E155004: There are unfinished work items in 'X:\tnsPms\workspace\JavaEE\tnspms'; run 'svn cleanup' first.
=============================================================================================================

- [SVN] svn some of selected resources were not cleane 에러
https://gunu91.tistory.com/45
svn 사용 중 갑자기 lock이 걸리는 경우가 있다. 방금은 update나 commit 도중에 cancle하면서 발생했다.
몇번 처리했던 에러라 금방 처리 했다

방법은 3가지가 있는데 문제 발생 시 다음 단계를 실행해보면 된다(보통은 2번째 방법으로 해결이 가능)
0. tnsPms 백업 폴더(X:\tnsPms(01.20))를 미리 만들어 놓았닥 tnsPms가 문제가 생기면 tnsPms를 교체하고 SVN 업데이트 받기
 ==> 강추 ■■■
1. team-cleanup 실행
2. sqlite 설치 후 프로젝트경로 - .svn - wc.db를 열고
   select * from wc_lock; (lock 위치 확인)
   delete from wc_lock; (lock 제거)
   delete from work_queue; (큐에 잘 못된 값이 있을때도 문제발생하기 때문에 제거)
변경사항 저장하기 버튼을 꼭 해줘야 적용이 된다
sqlitebrowser 다운로드 - https://sqlitebrowser.org/
3. 위 방법들로 안되면 프로젝트 다시 check out
=============================================================================================================

- 서울시 지역아동센터 안내
http://sosc.or.kr/?page_id=11

1. 신청서, 2. 가족관계증명,3. 건강보험 납입확인서(은천 지역아동센터 FAX 전송)
- 개인 팩스(FAX: 0504-177-0898)
1. 은천 지역아동센터 FAX: 02 6080 1405
=============================================================================================================

- 건강보험 납입확인서 조회(출력, 팩스 전송): 은천 지역아동센터로 팩스 전송 처리함
https://www.nhis.or.kr/nhis/minwon/jpAea00101.do
=============================================================================================================
 
- 수종 돌봄서비스제공신청서 작성 및 출력
1. 2021년 돌봄서비스제공신청서.hwp
=============================================================================================================

■■■■■■■■■■■■■■■■■■ 2023.01.21(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:00 ==> 설날 전날

- 주말[★] 
04:30 기상
04:35 조식
05:05 집출발(도보, 백팩: 반찬통 3개, 헌 달력) => 보라매 공원 => 신대방3거리역 => 노량진역 => 노들역 => 한강대교 => 신용산역
		=> 숙대입구역
07:10 서울역 도착(2시간 소요)
07:11 TV 시청(서울역 대합실)
08:10 서울역 출발(TKX- 산청 9235호, 2호차 2D)
10:45 포항역 도착
10:50 포항역 출발(도보) => 롯데렌터카(우회전) => 소티재 => 포항해양경창서 => 영신고 => 우현사거리 
12:00 귀가
12:10 중식(수종)
12:30 집출발(수종)
12:50 꾀꼬리 미용실 도착
13:00 이발(수종, 나), 염식(나)
13:50 꾀꼬리 미용실 출발(큰누나 차, 수종)
14:00 귀가
14:30 델 노트북에 SW 설치
17:10 집춟잘(도보) => 장성초교 => 두산위브 APT => 롯데 캐슬 APT => 성진 횟집 도착
18:00 성표 만남 ==> 포항계 모임(계비 6만원, 모임비 2만원 송금)
		=> 주남이형, 정철이, 봉춘이 도착(스페셜 모듬: 12만원)
23:20 종료
21:32 커피 명가 도착(환여동) ==> 주유, 빵 3개: 주남이형이 쏨(빵먹고 혈당 많이 올라감)
20:54 종료
21:13 귀가(성표)
21:30 졸기
23:20 취침(수종)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2023.01.22(일) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:30 ~ 18:00 ==> 설날

- 설날 연휴[★]
06:30 기상
07:10 조식
07:30 도보(영일대 해수역장): 운동화 때문에 오른쪽 뒷꿈가 까져서 걸으면 통증이 느껴짐
09:20 종료  
09:30 인터넷 서핑  
11:55 중식(수종)
12:24 도보(영일대 해수역장)
13:55 귀가
16:10 집출발(큰누나 차: 매형, 령경, 수종, 나)
17:00 경주 누나 앞(령경 하차)
17:10 롯데 시네마 경주 황성관 도착
17:20 아바타2 관람(큰누나, 매형, 수종, 나: 큰누나가 쏨)
20:29 종료
20:35 롯데 시네마 출발(큰누나 차: 매형, 수종, 나)  
21:10 귀가
21:11 석식
21:20 실내 도보
22:30 종료
23:00 샤워(수종)
23:30 종료(오꼬시 먹고 혈당 많이 올라감)
23:30 취침(수종)
=================================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2023.01.23(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:00 ==>  

- 설날 연휴[★] 
06:40 기상
06:47 조식
07:10 도보(영일대 해수역장)
09:50 종료
10:00 인터넷 서핑  
11:11 집출발(큰누나 차; 매형, 수종, 나)
11:30 폰값 똥값 포항항 본점 방문 ==> 갤럭시 S22(번호 이동 2년 약정: 10만원, 6개월 10만원 요금제 사용), 갤럭시 S22 ULTR(45만원)
11:30 롯데 하이 마트 우현점 방문 ==> 갤럭시 S22 ULTR(60만원)
13:20 귀가
12:40 큰누나 KT 멤버쉽 카드 회원 가입 및 복사
12:45 중식 ==> 델 노트북 큰누나에게 다시 선물함
13:54 집출발(큰누나 차; 매형, 수종, 나)  
14:00 폰값 똥값 포항항 본점 방문 ==> 큰누나 갤럭시 S22 ULTR(45만원) 가계약(매형 카드 맡김)
14:15 종료
14:50 다이소 포항 두호점 방문 ==> 원형 화분 받침 3호(2천원), 심플 디자인 욕실화(3천원) 구입
15:00 귀가
15:10 TV 시청
17:58 석식
18:18 실내 도보
20:00 종료
20:20 TV 시청(오꼬시 먹고 혈당 많이 올라감)
22:30 취침(수종)
================================================================================================================ 

■■■■■■■■■■■■■■■■■■ 2023.01.24(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:00 ==> 대체 공휴일(설날)

- 대체 공휴일(설날) [★] 
06:30 기상
06:47 조식
07:05 실내 도보(뒷꿈치 통증): 영하 12도(한파)
08:20 종료
08:30 TV 시청
10:40 집출발(도보)
10:55 폰값 똥값 포항항 본점 방문 ==> 수종 핸드폰 가계약(갤럭시 S22(12만원)
		--> 6개월 동안 10만 5천원,  요금제: 4만 5천원(청소년) [무제한 월: 8G, 이후 1Mbps 사용)
12:00 종료(누나폰[갤럭시 S22 ULTR] 개통해서 가지고 옴)
12:16 귀가
12:30 중식(떡국)
12:49 집출발(도보) 
13:15 미용실 도착 ==> 큰누나에게 갤럭시 S22 ULTR 전달
13:33 미용실 츨발
14:10 폰값 똥값 포항항 본점 방문 ==> 수종 핸드폰(갤럭시 S22(12만원)) 개통
		--> 국민카드 발금(30만원 이상 사용시 만7 천원 할인): LGU＋ 심플 라이트 카드 발급 신첟됨
14:29 종료 
14:43 귀가 
15:00 TV 시청
16:30 KT 플라자 방문 ==> 집 전화 명의자(아버지) 변경 요청: 전화국 가라고 함(집 전화 취소하기고 함)
16:40 수종 방 책상 안방으로 옮기기 ==> 수종방 엄마가 사용
17:20 석식
18:03 집출발(수종: 케리어 큰 거 1개, 중간 1개, 작은 거 1개, 백팩)
18:56 포항역 출발(수종)
21:50 서울역 도착(고장으로 20분 연착)
22:05 504번 버스 탑승
23:00 남부초 도착
23:10 귀가
23:30 취침(수종)
================================================================================================================ 

- 수종 핸드폰 가입(13시, 포항 폰값 똥값 본점) [2023.01.24(화)]
1. 단말기 명: 삼성 갤럭시 S22(그린)
 1)   단말기 비영 선납: 119,990원
2. 요금제: 5G 프리미어 플러스(105.000원) 6개월 사용 ==> 5G 라이트 청소년(45,000원)
 1) 8GB: +다 쓰면 최대 1Mbps
 2) 집/이동전화 무제한
 3)  문자메시지:기본제공
https://www.lguplus.com/plan/mplan/5g-all/5g-youth/LPZ0000417
3.  KB 국민카드: LGU+ 심플 라이트 카드 발급 신첟됨(연회비: 만 5천원: 30만원 이상 사용시 월 만 7천원 할인)
4. 주요 서비스
 1) 전월 슬인 실적  30만원 이상 사용시 월 만 2천원 할인, 70만원 이상 사용시 월 만 7천원 할인
 2) 연회비: 만 5천원: 3
5. 단말기 분실/파손 보험: 월 3,900원
6. 유심 비용: 7,700원(다음달 요금에 포함)
================================================================================================================ 

■■■■■■■■■■■■■■■■■■ 2023.01.25(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:00 ==>

- 휴가[★] 
04:59 기상
05:20 조식
05:44 실내 도보(영하 18도(한파)) 
07:10 종료
08:10 조식(수종)
09:00 집출발(도보, 수종)
09:10 신사동 주민센터(수종 전입 신고) ==> 공무원 여자 2명이 직접 현아트빌 404호를 방문하여 수종이가 사는 지 확인
09:20 남부초교로 전학 학교 결정 ==> 교무실에 전화: 3월 2일에 등교해서 전학 신청서를 작성하면 반 편성을 해준다고 함
09:30 남부초교로 방문(수종이와 학교만 들러 봄)
09:40 은천 지역 아동센터 방문(수종) ==> 신청 서류 제출, 내일부터 수종이 다녀라고 함, 매주 2회 수영
10:25 귀가 
11:45 중식(수)
12:39 집출발(자전거, 수종: 도보)
13:10 대림 종합 자전거점 방문 ==> 사장이 없어서 2시간 이후에 오라고 함
13:40 다이소 대림2호점 방문 ==> 어린이용 단색 수영모(2천원, 수종),  어린이용 물고기 수영모(3천원, 수종) 구입
13:50 종료
14:10 수종 엄마집에 맡기고 자전거로 출발
15:18 회생 법원 도착
15:20 경매 2계 도착 ==> 등기 필증 받음
14:26 밥원 출발
17:10 대림 종합 자전거점 방문 ==> 자전거 교체(현용이 선물한 자전거 버리고 중고 자전거로 교체(브레이크 고장, 자전거 낡아서
		제대로 안 나가서 결정: 4만원)
18:04 귀가 
18:08 석식
18:27 집출발(도보)
18:55 대림 종합 자전거점 방문 ==> 수종 자전거 중고 구입(7만원, 자물쇠(5천원) 포함: 8만 5천원인데 만 5천원 할인 받음)
19:10 종료
19:30 귀가
20:23 집출발(자전거)
20:30 신대방역 1번 출구(수종 만남) ==> 수종 자전거 연습(운전 미숙: 수종이 한테 자전거가 약간 큼)
20:40 귀가
22:30 취침
================================================================================================================ 

■■■■■■■■■■■■■■ 2023.01.26(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 17:30 ==> 출근할 때 눈 옴(06:00 ~ 11:00), 수종 은천 지역 아동 센터 첫 등교(11시), 보일러 틀리(18시, 난방: 외출 모드 설정)

- 효성 PMS Prj[★]
- 프로젝트/과제 현황(/PrdPlnSttuListR.form.jsp) 수정 ==> 완료[♥♡]
http://localhost:8080/tnspms/prjct/dashboard/prjctTaskSttu/viewList
=============================================================================================================

- 프로그램 현황(/PrgmSttuListR.form.jsp) 개발
http://localhost:8080/tnspms/prjct/dashboard/prgmSttu/viewList
=============================================================================================================

- 상품기획 현황 결함 수정(4건)
1. PROJ-BD-120-결함관리대장_v1.0_20230126(진태만).xlsx
=============================================================================================================

- 오른쪽 머리 뒷통수 혹 제거(12시, 대륭1차 2층)
1. 레이저 시술(뒷통수 마취[안 아픔), 30분 소요): 머리 테이프 1주일 후 제거할 것
- 구로 청담 맥의원
http://www.guromac.co.kr/
=============================================================================================================

- 나눔 서울 동기 모임(19시, 강남역 자매 수산 본점)
17:30 퇴근
17:50 귀가 
18:05 집출발(도보)
18:20 신림역 ==> 강남역
18:40 수종 목 장갑 구입(8천원: 강남역 지하 매장)
18:50 자매 수산 본점 도착 ==> 호수, 현용 만남: 호수 막내 동생 베트남 결혼 했다고 함, 현용 수종이 보러 집 방문한다고 함
		--> 호수가 01월 30일(월)부터 나주 본사로 발령 나서 내려 간다고 함 ==> 방어회, 매운탕
21:50 종료
22:01 삼거리 포차 ==> DJ
22:23 종료(호수 술 취함): 술값 더치 메일(87,000원 나옴)
22:40 강남역
24:20 신림역
24:30 귀가
24:40 취침
 =============================================================================================================
 
- 닥스 가죽 장갑 GPS701X 구입 고민
https://prod.danawa.com/info/?pcode=15782885
 =============================================================================================================

■■■■■■ 2023.01.27(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 17:30 ==>

- 효성 PMS Prj[★]
- 프로그램 현황(/PrgmSttuListR.form.jsp) 개발
http://localhost:8080/tnspms/prjct/dashboard/prgmSttu/viewList
=============================================================================================================

- 상품기획 현황 결함 수정(4건) ==> 완료[♥♡]
1. PROJ-BD-120-결함관리대장_v1.0_20230126(진태만).xlsx
=============================================================================================================

/* 조회(프로젝트 매핑 제품 UNIT : REL_ID 기준) ==> [TbPjtMappProdUnitMapper.xml.readByRelId()] */
SELECT MODEL_NM,  tpmpu.*   ==> MX6200
FROM TB_PJT_MAPP_PROD_UNIT tpmpu
WHERE REL_ID = '765LAQZZT00002BKN0'
;

SELECT FN_MODEL_NAME(tppr.MODEL)  AS MODEL_NM  ==> MX6000
, tppr.*
             , FN_CODE_NAME('COUNTRY_CD', tppr.COUNTRY_CD, 'ko_KR', 'ko_KR') AS COUNTRY_NM
             , FN_CUST_NAME(tppr.CUST_CD)                                                             AS CUST_NM
             , FN_MODEL_NAME(tppr.MODEL)                                                              AS MODEL_NM
        FROM TB_PRD_PLN_RQST tppr
        WHERE PRD_PLN_RQST_ID = '765LAQZZT00002BKO0'      ;
;
=============================================================================================================

- 개발자 전체 회의(10시, 회의실)
1. 개발 종료일: 02월 10일(금) ==> 통합 테스트: 02월 13일(월) ==> 오픈: 02월 20일(월)  ==> 철수: 02월 28일(화)
 1) 결재 개발 진행중, 인터페이스 이번주까지 완료
=============================================================================================================

- 폰값 똥값 FAX 서류 팩스 전송(20시, 집)
1. 퍼스트 통신 본점(TEL: 054-253-7011, FAX: 054-254-7011)
 1) 가족관계증명서
 2) 수종 기본 증명서(상세)
=============================================================================================================

- 엄마집 인터넷 취소 
1. 수종이가 주로 사용
 1) 포항집 현대HCN 인터넷 약정 가입[2021.01.21(목)] 
2) 큰누나가 대신 해줌
 1) 포항집 인터냇 해지 위약금:  287,000원 납부(큰누나에게 송금해줌)
 2) 2년간 인터넷 요금(월 만 4천 3백원)은 엄마 계좌에서 출금되었다고 함
==============================================================================================================

■■■■■■■■■■■■■■ 2023.01.28(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:00 ==> 휴일 근무(07:00 효성 PMS Prj): 17일차

- 주말[★] 
04:30 기상
05:00 조식
05:25 집출발(자전거)
05:45 출근
05:45 도보(대륭1차 12층 복도)
07:00 업무
11:25 중식(컵라면, 과자)
11:45 도보(도림천 => 보라매공원 ==> 대림역 ==> 도림천)
13:00 종료
13:10 업무 ==> 수종 공부방에서 중식 후 귀가: 엄마 집에 간다고 해서 허락함
17:00 퇴근
17:15 귀가 ==> 밥하기
18:20 석식
18:30 실내 도보
19:40 종료 
20:00 인터넷 서핑
22:40 취침
===============================================================================================================

- 효성 PMS Prj[★]
- 상품기획 현황(/PrdPlnSttuListR.form.jsp) 개발 ==> 완료[♥♡]
http://localhost:8080/tnspms/prjct/dashboard/prdPlnSttu/viewList

1. 진행 상태 공통 코드화 처리
function fnProgStat()  {
console.log("\n\n\n\n [@_T] ■■■ [/PrjctTaskSttuListR.script.jsp] [fnProgStat()] ==> [T_01] [진행 상태 처리]");

	var pjtDevReq = "'"+ PMS_GLOBAL.PJT_STAT_GROUP.DLBRT_MTG_COMP    // 10: 심의회완료(승인)
		+"', '"+ PMS_GLOBAL.PJT_STAT_GROUP.DEV_CNS_COMP         // 20: 개발협의완료(승인)
		+"', '"+ PMS_GLOBAL.PJT_STAT_GROUP.RCPT          // 30:접수
		+"', '"+ PMS_GLOBAL.PJT_STAT_GROUP.RTN         // 40: 반려
		+"', '"+ PMS_GLOBAL.PJT_STAT_GROUP.PRJCT_REGIST          // 50:프로젝트등록
		+ "'";     //  2. 진행 상태(01. 개발요청)
	any.ds("cond").value(0, "pjtDevReq", pjtDevReq);      // 2. 진행 상태(01. 개발요청)

	var pjtProg = "'"+ PMS_GLOBAL.PJT_STAT_GROUP.PROG + "'";     //  2. 진행 상태(60:. 진행중)
	any.ds("cond").value(0, "pjtProg", pjtProg);      // 2. 진행 상태(02. 진행중)
}
=============================================================================================================

- 프로그램 현황(/PrgmSttuListR.form.jsp) 개발
http://localhost:8080/tnspms/prjct/dashboard/prgmSttu/viewList
=============================================================================================================

- 혼자 개발해서 부자되는, 1인 개발의 세계
https://youtu.be/Kp1j2zVNhYA
=============================================================================================================

- 1인 개발로 경제적 자유 달성하고 건물주 생활하는 개발자 인터뷰
https://youtu.be/L6TNhTNHRIA
=============================================================================================================

■■■■■■■■■■■■■■ 2023.01.29(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 17:00 ==> 휴일 근무(08:00 효성 PMS Prj): 18일차

- 주말2[★] 
05:50 기상
06:00 조식
06:25 출근(자전거)
06:45 도보(12층 복도)
08:00 종료
08:10 업무
11:30 중식(컵라면, 과자)
11:50 도보(도림천 => 보라매공원 ==> 도림천) 
13:00 종료
13:10 업무
17:00 퇴근(자전거)
17:20 다이소 구로디지털2호점 방문 ==> 키즈 3단계 베리 믹스(70g, 치약: 천원), 키즈 3단계 소다 버블(70g, 천원) 구입
17:30 귀가
17:40 석식
18:00 실내 도보
19:20 종료
20:10 집 출발(자전거)
20:30 신대방역 1번 출구 ==> 수종 만남
20:45 귀가
21:00 청소(청소기, 밀대)
21:30 샤워(온수[처음 사용]: 체중: 71.4kg ==> BMI: 24.88[표준 체중])
21:50 인터넷 서핑
22:30 취침
===============================================================================================================
 
- 효성 PMS Prj[★]
- 프로그램 현황(/PrgmSttuListR.form.jsp) 개발
http://localhost:8080/tnspms/prjct/dashboard/prjctTaskSttu/viewListPrgmSttu
=============================================================================================================

- 프리랜서 개발자로 일하는 방법
https://youtu.be/aP_gfTx7744
1. 이력서, 스킬 인벤토리
2. 추천 사이트(jobs 메뉴)
1) okky.kr ==> tamario4/asas12**!!
 https://okky.kr/jobs/contract?jobType=CONTRACT&filter.minCareer=5&workTypes=SI
=============================================================================================================

■■■■■■■■■■■■■■ 2023.01.30(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==> 실내 마스크 착용 해제(대중 교통 제외), KB 국민카드 수령(16:20, 사업장)
 
- 효성 PMS Prj[★]
- 프로그램 현황(/PrgmSttuListR.form.jsp) 개발
http://localhost:8080/tnspms/prjct/dashboard/prjctTaskSttu/viewListPrgmSttu
1. 화면 그리기, DB 쿼리 생성 ==> 김빌리 책임이 수요일까지 개발해서 보여 달라고 함
=============================================================================================================

- KB 국민카드 발급 및 수령(2023.01.30(월))
1. 카드명: LGU+ 심플 라이트 카드
2. 카드 번호: 5570 4242 0412 1009,  VALID THRU: 12/27, 993, 52**
3. KB 카드(간편 로그인: 0339**)
https://m.kbcard.com/MKB/DVIEW/MMBMCXHIAMKC0003
4. 주요 서비스
 1) 전월 슬인 실적  30만원 이상 사용시 월 만 2천원 할인, 70만원 이상 사용시 월 만 7천원 할인
 2) 연회비: 만 5천원:
=============================================================================================================

- 수종 스키 캠프(09시, 은천C)
1. 01월 30일(월) ~ 2월 01일(수)
2. 장소: 지산 포레스트 리조트(경기 이천시 마장면 지산로 267)
https://www.jisanresort.co.kr/w/
=============================================================================================================

■■■■■■■■■■■■■■ 2023.01.31(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==> 유지현 대리 사업장 방문(09시), 가계부 월말 결산(20시, 집) 

- 효성 PMS Prj[★]
- 프로그램 현황(/PrgmSttuListR.form.jsp) 개발
http://localhost:8080/tnspms/prjct/dashboard/prjctTaskSttu/viewListPrgmSttu
1. 프로그램 ==> 단계 처리(6개의 Stage)
2. 년월 처리(월별 3단계 구분)
=============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //----------------------------------------------------------+ 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■  
  
