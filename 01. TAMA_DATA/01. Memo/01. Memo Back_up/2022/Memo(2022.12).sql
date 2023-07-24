

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2022.12) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2022.12.01(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==> 한파(영하 9도)., 커피샵(09:30, 오가다 구로디지털점: 개발팀, 이상영 팀장, 하지연 부장)
								, 중식(11:30,  지하 베트남 퍼 365 거리(소고기 쌀국지): 김책임, 하지연 부장, 이상영 팀장[쏨])

- 효성 PMS Prj[★]
- 태스크 추가/수정 화면(/ProjectWbsTaskCU.form.jsp) 종료일 수정
=============================================================================================================

- [Oracle] 오라클 MERGE INTO 문으로 있으면 UPDATE 없으면 INSERT 한번에 수행하기
https://offbyone.tistory.com/253

 /* [@_TM] 캘린더 유형 수정(프로젝트 WBS 코드) ==> [/TbPrjctWbsTmplatMapper.xml.update()] [22.12.01, by 진태만] */
	<![CDATA[
		MERGE INTO TB_COM_WBS_CD A
		USING DUAL
			ON (A.WBS_TMPL_VER_ID = #{tbPrjctWbsTmplat.wbsTmplatVerId})      /* WBS 템플릿 버전 ID */
		WHEN MATCHED THEN
			UPDATE
			SET CND_TY = #{tbPrjctWbsTmplat.cndTy}       /* 캘린더 유형 */
				 , UPDT_USER_ID    = #{$var.loginUser.personId}
				 , UPDT_DT              = #{$var.systemDate}
	]]>
;
=============================================================================================================

- VPN 사용 기간 만료 에러(월 초 항상 발생[08:30 ~ 10:30])
1. 현상:VPN 사용 권한이 없거나 사용 기간이 만료 되었습니다.
https://vpn.hyosung.com/logon/LogonPoint/tmindex.html
2. 조치: 김빌리 책임이 효성에 연락해서 해결함
=============================================================================================================

- 2022년 미국 공휴일 (연휴, 국경일, 대체휴무일) 정리
https://gomcineusa.tistory.com/205
=============================================================================================================

- WBS 회의(10:20  회의실)
1. 이상영 팀장, 하지연 부장, 김빌리 책임
 1) 추가 요구 사항, 개선 사항 논의
=============================================================================================================

- 와우 멤버십 해지
https://loyalty.coupang.com/loyalty/management/home
1. 월 회비(4,990원) 돌려 받음
=============================================================================================================

■■■■■■■■■■■■■■■■■■ 2022.12.02(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==>

- 효성 PMS Prj[★]
- PROJ-BD-120-결함관리대장_v1.0_20221201 수정
1. WBS 코드 관리 Tree, Grid 리스트 점검(/ProjectWbsCodeMgtListR.form.jsp] ==> 완료[♥♡]
2. WBS 등록 화면(/rojectWbsCodeMgtC.script.jsp) 수정
 1) 스테이지 등록시 표시, 숨김 처리
=============================================================================================================

- MS Project-like format of task dependencies
https://docs.dhtmlx.com/gantt/samples/07_grid/12_inline_edit_key_nav.html
=============================================================================================================

- 포항행[★] 
16:30 (구로 대륭1차 빌딩: 자전거)
16:40 귀가
16:50 석식
17:12 집출발(백팩(큰 거: 반찬통, 쓰레기 2개[생선 뼈])
17:24 643번 탑승(남서울중 정류장)
18:10 강남 고속버스터미널 하차  
18:12 도보
18:40 포항행 고속버스 승차
18:40 서울 축발
23:04 포항 고속버스 터미널 도착
23:05 포항 고속버스 터미널 출발(도보)
23:52 포항집 도착(수종 자고 있음)
24:00 2022 카타르 월드컵 조별리그 H조 3차전, 한국 2:1 포르투갈(24시) ==> 한국 H조 2위로 12년 만에 16강 진출 
02:20 가나 0:2 우루과이(우루과이 H조조 3위)
02:33 취침(수종)
=============================================================================================================

■■■■■■■■■■■■■■■■■■ 2022.12.03(토) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:00 ~ 17:30 ==> 

- 주말[★] 
08:03 기상
08:30 조식(수종)
09:00 도보(영일대 해수욕장)
10:10 종료
10:40 김장(배추[12포기[큰 것, 개당 4천원] 숨죽이기)
11:00 노트북 하드 장착 여부 확인(노트북 뒷북 열어 봄): SSD 장착 가능할 것을 추정됨
11:10 수종 노트북 패스워드 걸려 있음 ==> 포맷해야할 것으로 추정됨 
12:20 중식
13:10 도보(집 => 창포사거리 => 마장지 => 작은굴 우회 도로 => 포항 철길숲 => 우창동 주민센터 => 집)
14:10 다이소 포항 두호점 ==> 프린팅 디자인 변기 시트(포항집, 2천원) 구입
14:20 귀가
15:15 김장(배추 헹구기)
16:20 종료
17:34 석식 
17:56 집출발(수종)
18:15 다이소 포항 우현점 ==> 오리온 달지않아 깔끔한 더 자일리톨(62g, 2천원), 다용도 유리 저장 용기(100ml, 천원) 구입
18:30 꾀꼬리 미용실 도착(큰누나)
19:00 이발(수종)
19:35 미용실 출발(큰누나 차)
19:45 파리바게뜨 포항 두호점 방문 ==> 2호) 우유 듬뿍 생크림 케이크(블라샘, 3만원) 구입
19:55 귀가
20:00 혈압 측정: 123 83
20:30 엄마 생신 파티 ==> 케이크 절단(케이크 2개, 과자 2개 먹고 다음날 아침 혈당 220으로 올라감: 주의할 것)
		==> 큰누나가 엄마 용돈 10만원 줌, 내가 엄마 용돈 20만원 줌
20:50 큰누나 귀가 
22:20 샤워(수종)
23:10 취침(수종)
=============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2022.12.04(일) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:30 ~ 18:00 ==> 

- 주말2[★]
07:19 기상
08:50 조식(수종)
09:20 도보(영일대 해수욕장)
09:50 종료 
10:00 김장(양념 버무르기)
12:30 중식(버너에 삽겹살 굽기)
12:50 도보(집 => 창포사거리 => 마장지 => 작은굴 우회 도로 => 포항 철길숲 => 우창동 주민센터 => 집)
14:00 다이소 포항 두호점 ==> 프린팅 디자인 변기 시트(포항집, 2천원) 구입
14:10 귀가
14:15 TV 시청
17:30 석식(수종)
18:00 집출발(백팩: 김치통(큰 거)), 반찬 2통, 도보)
18:50 포항 고속버스터미널 도착
19:10 포항 출발
22:55 서울 강남터미널 도착
23:10 고속 터미널 정류장(643번 버스 탑승)
23:40 남부초 정류장 하차
23:45 귀가
24:10 청소 
01:30 취침
=============================================================================================================

■■■■■■■■■■■■■■■■■■ 2022.12.05(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==> 등기 찾기(17:45, 관악 우체국 4층[경매 관련 우편 2개])

- 효성 PMS Prj[★]
- PROJ-BD-120-결함관리대장_v1.0_20221201 수정
- 기간 계산 함수
<div any-text id="planBeginDeText" element-style="text-align:center;" readOnly2 require></div>   <!--// 시작일 text //-->
<script ${AI}>
	$(this).on("onChange keyup", function() {
		  console.log("\n\n\n\n [@_T] ■■■ [/ProjectWbsTaskCU.form.jsp] [planBeginDeText_onChange] ==> [T_01] [시작일 text 변경 이벤트]
		  ■■■ [$(this).val()]"+ $(this).val() );

		 // fnCalDuration();    // 기간 계산 함수 호출
	 });
</script>
=============================================================================================================

 - 표준 작업 소스 반영(08:30) ==> 완료[♥♡]
1. SVN에 등록
=============================================================================================================

■■■■■■■■■■■■■■■■■■ 2022.12.06(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==> 한국 1:4 브라질(12.06(화) 04시, 카타르): 16강전(집에서 실내 도보하면서 시청)

- 효성 PMS Prj[★]
- 저장(WBS Tab 화면) 처리
 tbPrjctWbsMapper.create(tbPrjctWbs);    // 등록(프로젝트 - WBS)
ap<String, String> wbsIdMap = new HashMap<String, String>();
 String wbsPlanId = wbsGanttTask.getWbsPlanId();    // WBS 계획 ID■
 wbsIdMap.put(wbsPlanId, tbPrjctWbs.newId().getWbsPlanId());   // WBS 코드 ID wbsIdMap에 셋팅(신규 WBS 계획 ID 셋팅)  ■■■
 
if(StringUtils.isNotEmpty(wbsGanttTask.getParent()) && !"0".equals(wbsGanttTask.getParent())) {   // Parent 존재하면
	logger.debug("\n[@_TM] ■■■ [/PrjctMgtTabServiceImpl.java] [update()] ==> [T_52_2] [상위 WBS 계획 ID가 존재 안하면] [getUpperWbsPlanId]"+
	wbsGanttTask.getUpperWbsPlanId() +"[0. WBS 계획 ID]"+ tbPrjctWbs.getWbsPlanId() +"[1. WBS 계획 ID]"+ wbsPlanId
	+"[2. 신규_WbsPlanId()■]"+ tbPrjctWbs.newId().getWbsPlanId() +"[3. tbPrjctWbs.getUpperWbsPlanId()■]"+ tbPrjctWbs.getUpperWbsPlanId() );
	tbPrjctWbs.setUpperWbsPlanId(wbsIdMap.get(tbPrjctWbs.getUpperWbsPlanId()));    // 상위 WBS ID 셋팅(생성된 상위 WBS 계획 ID 셋팅) ■■■
}
=============================================================================================================

- [Java] 자바 HashMap 사용법 & 예제 총정리
https://coding-factory.tistory.com/556
=============================================================================================================

 - [Eclipse - 이클립스] 북마크 기능 "Add Bookmark"
 https://whitekeyboard.tistory.com/731
 =============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2022.12.07(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==> 도시가스 검침(18:40, 아줌마 방문: 이상 없다고 함, 12월에 난방 안한다고 대단하고 하고 감)

- 효성 PMS Prj[★]
- 저장(WBS Tab 화면) 처리
1. tbPrjctWbsMapper.create(tbPrjctWbs);    // 등록(프로젝트 - WBS)
  1) TB_PJT_WBS_PLAN TB에서 / WBS 계획 이전 ID  (WBS_PLAN_ID_BEFORE 추가 ==> 처리 실패)
=============================================================================================================

- 선행, 후행 ACTIVITY가 존재하는 건 시작일 수정
1. WBS 코드 수정 화면(/ProjectWbsCodeMgtUD.script.jsp)
 1) TB_COM_WBS_CD TB에서 WBS 시작 일자(WBS_BGN_DT), WBS 종료 일자(WBS_END_DT) 추가
=============================================================================================================

■■■■■■■■■■■■■■■■■■ 2022.12.08(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==>

- 효성 PMS Prj[★]

- 선행, 후행 ACTIVITY가 존재하는 건 시작일 수정
1. WBS 코드 수정 화면(/ProjectWbsCodeMgtUD.script.jsp)
 1) TB_COM_WBS_CD TB에서 WBS 시작 일자(WBS_BGN_DT), WBS 종료 일자(WBS_END_DT) 추가
=============================================================================================================

■■■■■■■■■■■■■■■■■■ 2022.12.09(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==>

- 효성 PMS Prj[★]
- 선행, 후행 ACTIVITY가 존재하는 건 시작일 수정 ==> 완료[♥♡]
1. WBS 코드 수정 화면(/ProjectWbsCodeMgtUD.script.jsp)
 1) TB_COM_WBS_CD TB에서 WBS 시작 일자(WBS_BGN_DT), WBS 종료 일자(WBS_END_DT) 추가
=============================================================================================================

- 저장(WBS Tab 화면) 처리
1. tbPrjctWbsMapper.create(tbPrjctWbs);    // 등록(프로젝트 - WBS)
  1) TB_PJT_WBS_PLAN TB에서 / WBS 계획 이전 ID(WBS_PLAN_ID_BEFORE) 추가 ==> 처리 완료[♥♡]
  2) 이중 for문 사용하여 처리  
=============================================================================================================

- WBS 회의(16:20  회의실)
1. 김빌리 책임
 1) 수요일날 개발 대책 회의(임종수 팀장, 이상영 팀장, 편영수 상무) 개최 했다고 함
  ==> 내가 간트 챠트 개발 늦게해서 능력 없는 개발자로 찍힘(엄청 열받음)
 2) 내가 앞으로 간트 챠트 개발 안하고 쉬운 것으로 개발하겠다고 이야기 함 ==> 현실적으로 그렇수 없다고 함
  가. 01. 단계별 프로젝트 일정표 개발 하라고 함(동적 Grid)
=============================================================================================================

■■■■■■■■■■■■■■■■■■ 2022.12.10(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==> 휴일 근무(07 ~ 17:30), 건강 검진(10:30, 최희정 내과)

- 효성 PMS Prj[★]
- 태스크 추가/수정 화면(/ProjectWbsTaskCU.form.jsp) 종료일 수정
1.
=============================================================================================================

- 주말[★]
04:40 기상
05:00 조식(못 함: 공복 유지)
05:30 출근(자전거)
05:45 도보(대륭1차 12층 복도)
07:00 종료
07:10 업무 ==> 태스크 추가/수정 화면 개발
10:00 출발(자전거)
10:24 최희정 내과 방문 ==> 건강 검진 설문지 작성
10:47 진료: 김민아 원장(당뇨약 3개월치 처방 받음: 8,500원)
11:10 검강 검진(신체검사, 피 검사, 오줌 검사)
11:50 내시경 검사(수면 내시경 검사비: 본인 부담금)
12:30 내시경 검사 결과 상담(김민아 원장: 결과 양호 하다고 함)
12:57 종료
12:15 5층엔 약국 방문 ==> 당뇨약 3개월치 조제: 46.900원
13:24 종료
13:47 귀사
13:40 중식(컵라면, 과자, 감)
14:05 도보(도림천 => 보라매공원 ==> 대림역 ==> 도림천)
15:10 종료
15:20 업무
17:30 퇴근
17:45 귀가
17:55 석식
18:20 실내 도보
19:40 종료 
20:30 인터넷 서핑
22:00 취침
==============================================================================================================

- 최희정 내과 
https://kidneydr.modoo.at
==============================================================================================================

 - QCY T13 블루투스 이어폰 ANC 노이즈 캔슬링, 색상: 블랙, 가격: 22,190원
1. [스마일페이 결제] Smile Cash(이벤트성): 22,190원
 http://item.gmarket.co.kr/Item?goodscode=2661999474
 ==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2022.12.11(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==> 휴일 근무(07:30 ~ 17:00): 9일차

- 효성 PMS Prj[★]
- 선행, 후행 ACTIVITY가 존재하는 건 시작일 수정  ==> 완료[♥♡]
1. WBS 계획 조회 수정
- 이중 for 문(DB 태이블을 2개로 쪼개서 생각할 것 :변경하려는 필드 기준(왼쪽))
public ProjectWbsMainModel read(String pjtMstId, String tmplTy, CommandData commandData) {
        logger.debug("\n\n [@_TM] ■■■ [/PrjctMgtTabServiceImpl.java] [read()] ==> [T_01] [조회(WBS Tab 화면) START @@@] [프로젝트마스터 ID]"+
		pjtMstId +"[템플릿 타입 ID]"+ tmplTy +"[조회 조건]"+ commandData.getAnyData("cond") );

	  List<TbPrjctWbs> tbPrjctWbsTmplList = tbPrjctWbsMapper.readTmlTyList(tmplTy, dfPjtBgnDe, commandData.getAnyData("cond"));
	  // WBS 템플릿 유형 조회(프로젝트 - WBS) [T_88] [★]
	  
	for(TbPrjctWbs tbPrjctWbs : tbPrjctWbsTmplList) {     // WBS 템플릿 유형 조회 결과 for() 처리
	wbsGanttTask = new WbsGanttTask();
	logger.debug("\n [@_TM] ■■■ [/PrjctMgtTabServiceImpl.java] [read()] ==> [T_23_1] [목록 조회(프로젝트 WBS 실적) 결과] [조회 건수(:clubs:)]"+ tbPrjctWbsList.size() );

	 if (tbPrjctWbsList.size() == 0) {
		wbsGanttTask.setStart_date(tbPrjctMaster.getString("pjtBgnDe"));    // 시작일(프로젝트 시작일 셋팅) ■■
	 }
	 else
	 {
		wbsGanttTask.setStart_date(DateFormatUtils.format(tbPrjctWbs.getPlanBgnDe(), WbsGanttData.DATETIME_PATTERN));
		// 시작일 셋팅(계획 시작 일자) ■■
	 }
	 logger.debug("\n [@_TM] ■■■ [/ProjectWbsMainServiceImpl.java] [read()] ==> [T_74] [i_번째]"+ forId
	 +"[제목]■"+ tbPrjctWbs.getWbsNm() +"[시작일]"+ wbsGanttTask.getStart_date()
	 +"[종료일]"+ wbsGanttTask.getEnd_date() +"[기간]"+ wbsGanttTask.getDuration() );
	 // =================================================================================================
	 >

	 for(int j=0; j < tbPrjctWbsTmplList.size(); j++) {      // WBS 템플릿 유형 조회 결과 for() 처리[★★]
		String jEscActivity = tbPrjctWbsTmplList.get(j).getEscActivity();     // J_후행 Activity
		String planBgnDeNew2 = DateFormatUtils.format(tbPrjctWbsTmplList.get(j).getPlanBgnDe(), "yyyy-MM-dd 00:00:00"); 	// J_계획 시작 일자

		String jEndDe = calActivityBgnDe(tbPrjctWbs.getCndTy(), tbPrjctWbsTmplList.get(j).getDuration(), planBgnDeNew2,  "");   // 종료일 날짜 계산 조회 호출 ■
		jEndDe = jEndDe.substring(0, 4) +"-"+ jEndDe.substring(5, 7)  +"-"+  jEndDe.substring(8, 10);     // J_종료 일자
		logger.debug("\n [@_TM] ■■■ [/ProjectWbsMainServiceImpl.java] [read()] ==> [T_95_2] [i_번째]"+ forId +"[j_번째]"+ j
		+"[제목]■"+ tbPrjctWbsTmplList.get(j).getWbsNm()
		+"[제목]"+ tbPrjctWbsTmplList.get(j).getWbsNm() +"[WBS 계획 ID]"+ tbPrjctWbs.getWbsPlanId() +"[J_후행 Activity]"+ jEscActivity +"[J_종료일]"+ jEndDe );

		if(StringUtils.isNotEmpty(jEscActivity) && jEscActivity.equals(tbPrjctWbs.getWbsPlanId())) {  // WBS 계획 ID가 
			J후행 ACT와 같으면(J 종료일에 시작일 업데이트) ■■■■■■■■
			logger.debug("\n [@_TM] ■■■ [/ProjectWbsMainServiceImpl.java] [read()] ==> [T_95_4] [i_번째]"+forId +"[j_번째]"+ j
			+"[제목]■"+ tbPrjctWbsTmplList.get(j).getWbsNm()
			+"[제목]"+ tbPrjctWbsTmplList.get(j).getWbsNm() +"[WBS 계획 ID]"+ tbPrjctWbs.getWbsPlanId() +"[J_후행 Activity]"+ jEscActivity +"[J_종료일]"+ jEndDe );

			 wbsGanttTask.setStart_date(jEndDe);    // 시작일(J 종료일에 시작일 업데이트) ■■■■■■■■
		 }
	 } // end of for() --> j
	 
	String rtnEndDe = calActivityBgnDe(tbPrjctWbs.getCndTy(), tbPrjctWbs.getDuration(), wbsGanttTask.getStart_date(),  "");
	// 종료일 날짜 계산 조회 호출 ■
	rtnEndDe = rtnEndDe.substring(0, 4) +"-"+ rtnEndDe.substring(5, 7)  +"-"+  rtnEndDe.substring(8, 10); 	// 시작일(8자리)

	wbsGanttTask.setEnd_date(rtnEndDe);    // 종료 셋팅
	logger.debug("\n [@_TM] ■■■ [/ProjectWbsMainServiceImpl.java] [read()] ==> [T_75_2] [종료일]"+ wbsGanttTask.getEnd_date() );
 }
=============================================================================================================

- 주말2[★] 
05:13 기상
05:30 조식
06:10 출근(자전거)
06:15 도보(12층 복도)
07:30 종료
07:30 업무
11:20 중식(컵라면, 과자)
11:30 도보(도림천 => 보라매공원 ==> 도림천)
11:37 다이소 구로디지털2호점 방문 ==> 보우맥스 알카라인 건전지(LR03) 4P(천원: 노트북 마우스용) 구입
12:40 종료
12:50 업무
17:00 퇴근(자전거)
17:10 남구로 시장 방문 ==> 파래김(2개: 만원) 구입
17:55 석식
18:20 실내 도보
19:40 종료
20:00 청소(청소기, 밀대)
20:30 샤워: 체중: 72kg ==> BMI: 24.88[표준 체중]
20:50 인터넷 서핑
21:10 작은 누나와 통화 ==> 수종이 지역 아동 센터에 지원하라고 추천해줌, 작은 누나 암 의심(12월 말에 정밀 검사 예정)
22:10 취침
==============================================================================================================

 ■■■■■■■■■■■■■■■■■■ 2022.12.12(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==> 커피(15:40, 정우진 과장: 아아, [오가다 커피샵] 6천 8백원[내가 쏨]), 퇴근할 때 비(17:30, 자전거 & 우산)

- 효성 PMS Prj[★]
- WBS 계획 조회 수정(후행 Activity ==> 선행 Activity) ==> 완료[♥♡]
// 1. WBS 계획 ID가 J 후행 ACT와 같으면(J 종료일에 시작일 업데이트) ■■■■■■
// 2. WBS 계획 ID에서 선행 Activity가 J 후행 Activity와 같면(J 종료일에 시작일 업데이트) ■■■■■■
=============================================================================================================

- WBS 계획 조회 수정(Link 에러: 2개 중복됨)
if(StringUtils.isNotEmpty(tbPrjctWbs.getPreActivity()) && StringUtils.isNotEmpty(tbPrjctWbs.getEscActivity()) ) {
// 선행, 후행 activity가 존재하면(Link 설정) ■■■■■■

	wbsGanttLink.setId(tbPrjctWbs.getWbsPlanId());      // WBS 계획 ID(WBS 코드 ID) 셋팅 추가[22.11.26, by 진태만)
	wbsGanttLink.setSource(tbPrjctWbs.getPreActivity());   // 의존관계가 시작되는 작업 ID(선행 ACTIVITY) 셋팅 추가[22.11.26, by 진태만]
	wbsGanttLink.setTarget(tbPrjctWbs.getEscActivity());   // 의존관계가 끝나는 태스크의 ID(후행 ACTIVITY) 셋팅 추가[22.11.26, by 진태만]
	wbsGanttLink.setType("0");       // 링크 연결 셋팅 추가[22.11.26, by 진태만]
	wbsGantt.addLinks(wbsGanttLink);     // wbs Gantt Link를 wbsGantt에 Data 셋팅 ■■■
	logger.debug("\n [@_TM] ■■■ [/ProjectWbsMainServiceImpl.java] [read()] ==> [T_77■] [간트 Link 셋팅] [setId]"+ wbsGanttLink.getId()
	+"[Source(선행 ACTIVITY)]"+ wbsGanttLink.getSource() +"[Target(후행 ACTIVITY)]"+ wbsGanttLink.getTarget() );
}
=============================================================================================================

- TNS Legacy 시스템 장비 접근 권한 신청
https://tnssac.hyosung.com/frame?domain=resources%2Fextjs%2Fhiware%2Fgarnet%2F&app=frame&locale=KO-KR&jsessionid=F4D0BA257249B998D0675DD2120D87DA
=============================================================================================================

- 표준 작업 소스 반영(08:50)  ==> 완료[♥♡]
1. SVN에 등록
=============================================================================================================

- 안방 책상 구입
https://myg.gmarket.co.kr
http://www.enuri.com/detail.jsp?modelno=9189863
1. 소프시스 H형책상 1460, (티/화)H형, 가격: 94,600원
 1) 캐시충전결제(현금) 
=============================================================================================================
 
- 삼성전자 830 시리즈 노트북 패키지 중고 [256G], 가격: 37,500원(포항집 노트북용)
http://itempage3.auction.co.kr/DetailView.aspx?ItemNo=B459823723&frm3=V2
http://www.enuri.com/detail.jsp?modelno=62573418
1) 결제수단 : 캐시충전결제(현금): 37,130원
=============================================================================================================

- 검은 콩 구입
1. 한끼농산 국산 서리태 2kg [2개], 가격: 30,480원
 1) Smile Pay 캐시 충전 결제(현금성): 16,070원
http://itempage3.auction.co.kr/DetailView.aspx?ItemNo=B826631862&frm3=V2
http://www.enuri.com/detail.jsp?modelno=50822096
==============================================================================================================
 
- 나누담 직사각 4칸 1500ml(하늘색) 반찬통 칸칸이 칸막이 정리 소분 밀폐용기, 가격: 5,970원
1. 종류: 하늘색 반찬통 / 칸수/용량: 8.직사각 4칸 1500ml(하늘색) (+1,100원)
https://smartstore.naver.com/xeonic/products/4864931402?
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2022.12.13(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==>

- 효성 PMS Prj[★]
- WBS 계획 조회 수정(Link 에러: 2개 중복됨) ==> 완료[:hearts:♡]
WbsGantt wbsGantt = new WbsGantt().init();     // Wbs Gantt 초기화
WbsGanttTask wbsGanttTask = null;
WbsGanttLink wbsGanttLink = null;	// Wbs GanttLink 정의 ■

 for(TbPrjctWbs tbPrjctWbs : tbPrjctWbsTmplList) {     // WBS 템플릿 유형 조회 결과 for() 처리[★]
	wbsGanttTask = new WbsGanttTask();
	wbsGanttLink = new WbsGanttLink();	// Wbs GanttLink 생성 ■
 }  // end of for()
=============================================================================================================

- 71. 간트(샘플_2■)
https://docs.dhtmlx.com/gantt/samples/07_grid/12_inline_edit_key_nav.html
=============================================================================================================

- Tab 01. 개발 개요 Tab 화면[프로젝트 > 프로젝트 관리] 수정 ==> 완료[:hearts:♡]
localhost:8080/tnspms/prjct/projectprjct/prjctmgttab/viewDetail?pjtMstId=10000001
1. /PrjctMgtRUD.form.form.jsp
=============================================================================================================

- 로젝트마스터ID  채번 수정프로젝트 등록시 ==> 완료[:hearts:♡]
1. 등록일수 + No 채번 ==> 난수 채번
 public String create(PrjctMasterModel prjctMasterModel)
    {
        logger.debug("\n\n [@_T] ■■■ [/PrjctmgtServiceImpl.java] [create()] ==> [T_01] [프로젝트 등록/수정(프로젝트 생성 목록 조회)]" );

            if(tbPrjctMaster.getPjtMstId() == null || "".equals(tbPrjctMaster.getPjtMstId())) {	// 프로젝트 마스터 ID가 없으면(등록)
                tbPrjctMasterMapper.create(tbPrjctMaster.newId());     // 프로젝트 마스터 정보 생성(프로젝트 생성 목록 조회)

                pjtMstId = tbPrjctMaster.getPrjctMastrId();  // 새로 생성된 프로젝트마스터ID 셋팅
            }
            else    // 프로젝트 마스터 ID가 존재하면(수정)
            {

                tbPrjctMaster.setPjtMstId(tbPrjctMaster.getPjtMstId() );   // 프로젝트마스터ID

                tbPrjctMasterMapper.update(tbPrjctMaster);      // 프로젝트 마스터 정보 수정(프로젝트 생성 목록 조회)
                logger.debug("[@_T] ■■■ [/PrjctmgtServiceImpl.java] [create()] ==> [T_61]  [마스터 정보 수정]" );

                pjtMstId = tbPrjctMaster.getPjtMstId();  // 프로젝트마스터ID 셋팅
            }
            logger.debug("[@_T] ■■■ [/PrjctmgtServiceImpl.java] [create()] ==> [T_91]  [프로젝트마스터ID]"+ pjtMstId );

            tbPjtMappProdUnitListEdit(prjctMasterModel.getTbPjtMappProdUnitList(), pjtMstId);   // Model/Unit 리스트 처리
        }
}
=============================================================================================================

- Valid 체크(pjtNm(프로젝트명 필수 체크)) ==> 완료[:hearts:♡]
 function fnSave(pjtStatCd)
    {
        console.log("\n\n\n\n [@_T] ■■■ [/PrjctMgtRUD.form.jsp] [fnSave()] ==> [T_01] [저장 버튼 클릭 이벤트] ■■■ [
		프로젝트 상태]"+ pjtStatCd +"[프로젝트 리더]"+ $('#pjtLdrId').val() +"[개발 팀(부서ID)]"+ $('#deptId').val() );

        if(pjtStatCd == "11") {     // 프로젝트 상태가 '작성 완료'이면
             if (!cfCheckValid()) return;     // Valid 체크
            pjtStatCd = PMS_GLOBAL.PJT_STAT.RCPT.STAT_04;    // 개발개요 작성완료(3013)
            if (!confirm("<n:message code="msg.saveNoRewr.confirm" text="작성 완료를 클릭하시면 수정 할수 없습니다.\n계속 진행하시겠습니까?"
			escape="js" />")) return;
       } else {  // 프로젝트 상태가 '임시저장'이면
           if (!cfCheckValid("#pjtNm")) return;     // Valid 체크(pjtNm(프로젝트명 필수 체크))
           pjtStatCd = PMS_GLOBAL.PJT_STAT.RCPT.STAT_03;    // 개발개요 임시저장(3012)
          if (!confirm("<n:message code="msg.save.confirm" text="저장하시겠습니까?" escape="js" />")) return;
        }
}
=============================================================================================================

-- 프로젝트_매핑_제품_UNIT 조회 @@@
SELECT A.MAPP_ID "매핑ID★", REL_ID "관련ID(PJT 마스터 ID)■",  A.MODEL "모델", PROD_UNIT_ID "제품유닛ID", A.UNIT "유닛"
			, A.MAPP_SE "매핑구분(D:상품기획,J:프로젝트)", CREAT_DT "생성일■", UPDT_DT "수정일■", A.*
FROM TB_PJT_MAPP_PROD_UNIT A		    /* 프로젝트_매핑_제품_UNIT  TB */
WHERE 1=1
    -- AND A.PJ	T_NO = 'R20034'	  	-- 프로젝트코드
ORDER BY A.CREAT_DT DESC
;
=============================================================================================================
 
- 안방 모니터 구입
1. 크로스오버 34LGD77 IPS 커브드 PREMIUM 멀티스탠드(모니터), 가격: 392,000원
https://www.coupang.com/vp/products/6530646296
http://www.enuri.com/detail.jsp?modelno=85356270 
=============================================================================================================

■■■■■■■■■■■■■■■■■■ 2022.12.14(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==> 수종 감기(08:30, 선생님께 전화해서 하루 결석 요청)

- 효성 PMS Prj[★]
- 프로젝트 접수 등록 화면(/ProjectRecC.form.jsp)  수정 ==> 완료[:hearts:♡]
1. 등록일수 + No 채번 ==> 난수 채번
2. Model, 일정 조회 추가
prjctMasterModel.setTbPjtMappProdUnitList(tbPjtMappProdUnitMapper.readByRelId(pjtMstId));     // Model/Unit 조회
logger.debug("[@_T] ■■■ [/ProjectRecServiceImpl.java] [read()] ==> [T_61] [Model/Unit 조회_결과] [getTbPjtMappProdUnitList]"+
 prjctMasterModel.getTbPjtMappProdUnitList()  );

List<TbPrdMappGm> tbPrdMappGmList = tbPrdMappGmMapper.readByRelId(pjtMstId);       // 조회(상품 기획 맵핑 : 상품 기획 ID 기준)
	prjctMasterModel.setTbPrdMappGmGateList(tbPrdMappGmList.stream().filter(x -> x.getGmSe().equals(TbPrdMappGm.GmSeType.GATE.
	etValue())).collect(Collectors.toList()));    	// TB_PRD_MAPP_GM : GATE 추가
prjctMasterModel.setTbPrdMappGmMilestoneList(tbPrdMappGmList.stream().filter(x -> x.getGmSe().equals(TbPrdMappGm.GmSeType.
MILESTONE.getValue())).collect(Collectors.toList()));     // TB_PRD_MAPP_GM : MILESTONE 추가

3.  초기 표시 안되는 항목 있음(개발분류, 모델, 요구QCD)
=============================================================================================================

- 표준 작업 소스 반영(07:30) ==> 완료[:hearts:♡]
1. SVN에 등록
=============================================================================================================

- 프로젝트 등록/수정 화면(/PrjctMgtC.form.jsp) 수정 ==>
1. 상품기획서 팝업
2. 개발내용 :  TestArea -> WebEditor로 변경
<script type="text/javascript">let tbPrjctMaster_xfe_ex = pmsCfInitXfree("tbPrjctMaster_xfe_ex");</script> <!-- 입력(수정) -->
=============================================================================================================
 
- 오라클 데이터베이스 SQL 강의 34강 - INNER 조인(JOIN) [뉴렉처]
https://youtu.be/BZPX-arrwHI
1. INNER 조인(참조 관계: 관계있는 것[부모, 자식]), OUTER 조인: 관계 없는 것
=============================================================================================================

- 오라클 SQL 조인, 내부 조인, 외부 조인, ANSI SQL 조인 방식(오라클 자바 커뮤니티)
https://youtu.be/LEEyBd4n_50
=============================================================================================================

■■■■■■■■■■■■■■■■■■ 2022.12.15(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==> 중식(11:540, 닭백숙[지하 1층 식당], 개발팀, 이상영 팀장, 하지연 부장), 12시부터 눈 옴

- 효성 PMS Prj[★]
- 프로젝트 접수 등록 화면(/ProjectRecC.form.jsp) 수정==> 완료[:hearts:♡]
1. 초기 표시 안되는 항목 있음(개발분류, 모델, 요구QCD)
=============================================================================================================

- Gate 현황 개발 시작
1. 메뉴 관리 화면에 Gate 현황 메뉴 추가
1. 동적 Grid
=============================================================================================================

- WBS 템플릿 등록 화면(팝업)(/ProjectWbsTemplateMgtC.form.jsp) 화면  수정
1. unload Page 처리 에러 처리
=============================================================================================================

 ■■■■■■■■■■■■■■■■■■ 2022.12.16(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==> 당뇨혈색소: 6.8 나옴(2022.12.10(토) 검사)

- 효성 PMS Prj[★]
- Gate 현황([/PrjctMgtGateListR.form.jsp) 개발
- IB SHEET 동적 칼럼
1. colspan, rowspan 기능 사용
 1) colspan: ColSpan RowSpan n개 처리 + Header를 한 줄 추가, rowspan: Header RowSpan n개 처리
 2) colspan: Header 이름 n개 | 처리 + Header를 한 줄 추가해서 | 처리,  owspan: Header 이름 n개 | 처리
2. 가로 폰트 ==> 세로 폰트 사용
3. DB 조회(가로 형식 출력 --> 세로 형식 출력)
=============================================================================================================

- IB SHEET 동적 칼럼(샘플) 셋팅
- 81. 동적 칼럼(샘플■)
http://localhost:8080/tnspms/common/ibsheet/mkDynColmn/index.html
=============================================================================================================

- IB SHEET에서 동적 Grid 문의_03 글 작성
https://www.ibsheet.com/service.html
============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2022.12.17(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==> 휴일 근무(07 ~ 17:30)

- 효성 PMS Prj[★]
- Gate 현황([/PrjctMgtGateListR.form.jsp) 개발
1. Gate 현황 목록 조회
  /* [@_T] Gate 현황 목록 조회 ==> [/TbPrjctMasterMapper.xml.readGateList()] [22.12.17, by 진태만] */
SELECT A.WBS_CODE_ID
			, A.UPPER_WBS_CODE_ID
			 , A.WBS_NM               /* WBS명 */
			, A.WBS_BGN_DT        /* 개발일정(기본) */
			, A.WBS_END_DT        /* 개발일정(변경1일자) */
			, A.WBS_LEVEL
			, A.SORT_ORDR
			, (SELECT CASE WHEN COUNT(1) > 0 THEN 'FOLDER' ELSE 'FILE' END
				FROM  TB_COM_WBS_CD
				WHERE  UPPER_WBS_CODE_ID = A.WBS_CODE_ID
				) AS NODE_TYPE_NM
FROM TB_COM_WBS_CD A      /* 01. 공통_WBS_코드 TB */
	WHERE 1=1
		AND A.WBS_TMPL_VER_ID = #{cond.wbsTmplatVerId}  /* WBS 템플릿 버전 ID */
	ORDER BY WBS_LEVEL, SORT_ORDR
;
----------------------------------------------------------------------------------------------------------------------------------

 /* [@_T] Gate 현황 목록 조회 ==> [/TbPrjctMasterMapper.xml.readGateList()] [22.12.17, by 진태만] */
SELECT *
FROM (
	SELECT  A.WBS_NM
	          --  , A.UPPER_WBS_CODE_ID
	       --      , A.WBS_NM "WBS명■"	 /* 기본일" */
	            , (FN_FORMAT_DATE(A.WBS_BGN_DT, 'MM/DD')) AS DEV_DE_BASS	  /* 개발일정(기본) */
	           , (FN_FORMAT_DATE(A.WBS_END_DT, 'MM/DD')) AS DEV_DE_CHG_1  	 /* 개발일정(변경1일자) */
	            , (FN_FORMAT_DATE(A.WBS_END_DT, 'MM/DD')) AS DEV_DE_PERF  	 /* 개발일정(실적) */
 				, TO_CHAR(A.WBS_LEVEL) AS WBS_LEVEL
	       --     , A.SORT_ORDR
	          --     , (SELECT CASE WHEN COUNT(1) > 0 THEN 'FOLDER' ELSE 'FILE' END
	        --       FROM  TB_COM_WBS_CD    /* 01. 공통_WBS_코드 TB */
	        --       WHERE  UPPER_WBS_CODE_ID = A.WBS_CODE_ID
	        --       ) AS NODE_TYPE_NM
	FROM TB_COM_WBS_CD A      /* 01. 공통_WBS_코드 TB */
	WHERE 1=1
	    AND A.WBS_TMPL_VER_ID = '761HYJYLZ00001B340'      /* WBS 템플릿 버전 ID */
	ORDER BY WBS_LEVEL, SORT_ORDR
)
UNPIVOT (
     M_VALUE FOR M_INFO IN (WBS_NM, WBS_LEVEL, DEV_DE_BASS, DEV_DE_CHG_1, DEV_DE_PERF)
)
ORDER BY M_INFO DESC, M_VALUE
;
=============================================================================================================

- [Oracle] 오라클 가로 데이터를 세로로 출력하는 방법 UNPIVOT()
https://javabuilders.tistory.com/94
=============================================================================================================

- 주말[★]
04:30 기상(영하 12도)
05:00 조식
05:20 집출발(자전거)
05:40 출근
05:45 도보(12층 복도)
07:00 업무
11:30 중식
11:40 도보(도림천)
12:40 다이소 디지털 2호점 방문 ==> 나이텍스 방한장갑L(3천원), JS나무손잡이 모종삽(1,250원[인트: 250원 할인]) 구입
13:00 종료
13:50 업무
17:00 퇴근
17:10 대림 종합 자전거 방문 ==> 자전거 앞 브레이크 AS 요청(앞 바퀴에 끌리는 소리 없어짐, 주행 속도 개선: 만족)
17:20 도림천(모종삽으로 흙 퍼옴)
17:40 귀가(화분에 흙 넣어서 고르기)
17:50 석식
18:20 안방 장롱 옮기기(1. 장롱이 장롱끼리 상,중,하로 나사로 결합되어 있어서 풀기 힘듬[찾는데 고생함], 2. 장롱을 이불에 얹어서 옴겨서 덜 힘듬
		 3. 작은 방 문으로 장롱 넣을 때 안들어 가서 세로로 넣음)
20:00 책상 조립(나무 받침대 드라이버로 넣는다고 힘듬: 하나 해보고 퍼시스에서 준 조립용 도구를 사용해서 조립하니 쉬움)
20:30 LG 모니터 조립
21:50 종료
21:55 청소(청소기, 밀대)
22:10 샤워(찬물: 체중: 70.3kg ==> BMI: 22.73[표준 체중])
22:20 취침
==============================================================================================================

 ■■■■■■■■■■■■■■■■■■ 2022.12.18(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==> 휴일 근무(07:30 ~ 17:00): 11일차

- 효성 PMS Prj[★]
- Gate 현황([/PrjctMgtGateListR.form.jsp) 개발
=============================================================================================================

- [Oracle] 오라클 피벗(2) - PIVOT, UNPIVOT, (행을 열로, 열을 행으로) [Oracle 11g부터 제공]
https://goddaehee.tistory.com/58
1. PIVOT(행 => 열): 행을 열로 변환할 때 사용하는 방법으로 기존 GROUP BY 와 집계함수(MAX, SUM 등), DECODE를 사용하는 방법을 대체한다.
2. UNPIVOT(열 => 행): PIVOT 의 반대 개념으로 열을 행으로 변환할 때 사용하는 방법으로 기존 복제용 집합과의 CROSS JOIN 을 통한 행복제 방법과
DECODE를 조합하는 방법을 대체합니다.
----------------------------------------------------------------------------------------------------------------------------------------

- #10 [Oracle] Converting Rows to Columns | 함수 - pivot | 로우값을 행으로 변경
https://youtu.be/y6vAAA1EMYs
----------------------------------------------------------------------------------------------------------------------------------------

-- PIVOT 사용법 @@@
SELECT *
FROM ( 피벗 대상 쿼리문 )
PIVOT ( 그룹합수(집계 컬럼) FOR 피벗 컬럼 IN ( 피벗컬럼 값 AS 별칭 ... )
;
-------------------------------------------------------------------------------------------------------------------

-- PIVOT 사용 예제 @@@
WITH CAR AS (
  SELECT MAKER, MODEL, TO_CHAR(SALE_DATE, 'MM') AS M_MONTH, CNT FROM SALE_CAR
)
  SELECT * FROM CAR
  PIVOT (   // 행을 열로 변환  ■■■
		SUM(CNT)
		FOR M_MONTH IN (		// MONTH 기준
		  '01, '02', '03', '04', '05'		  
    )
	ORDER BY 1'
;
 -------------------------------------------------------------------------------------------------------------------

-- PIVOT과 유사 @@@
WITH TEST AS (
    SELECT LEVEL NO  FROM DUAL
 CONNECT BY LEVEL <= 10
)
SELECT DECODE(MOD(NO,2),1,'ODD','EVEN') GR
			, MAX(DECODE(ROUND(NO/2),1,NO)) G1
			, MAX(DECODE(ROUND(NO/2),2,NO)) G2
			, MAX(DECODE(ROUND(NO/2),3,NO)) G3
			, MAX(DECODE(ROUND(NO/2),4,NO)) G4
			, MAX(DECODE(ROUND(NO/2),5,NO)) G5
FROM TEST
GROUP BY DECODE(MOD(NO,2),1,'ODD','EVEN');
;
=============================================================================================================

- 자바스크립트 2. 콘솔에 출력, script async 와 defer의 차이점[드림코딩]
https://youtu.be/tJieVCgGzhs
1. console API
2. 자바스크립트 공식 사이트: https://developer.mozilla.org/ko/docs/Web/API
 1) www.w3schools.com
 -------------------------------------------------------------------------------------------------------------------

- Gate 현황([/PrjctMgtGateListR.form.jsp) 화면에서(크롬 > F12 > console)
 > $('#wbsTmplatVerId').val()
'761HYJYLZ00001B340'

 > document.getElementById("wbsTmplatVerId");
<div any-hidden="" id="wbsTmplatVerId" bind="cond" style="display:none"></div>
Document.getElementById(): 주어진 문자열과 일치하는 id 속성을 가진 요소를 찾고, 이를 나타내는 Element 객체를 반환
 ----------------------------------------------------------------------------------------------------------------------------------------------

- 콘솔 로그 제대로 쓰고 있을까? [드림코딩]
https://youtu.be/KxsVV5jbJe4
=============================================================================================================

- 주말2[★]
05:10 기상(영하 13도)
05:18 조식
05:30 집출발(자전거)
05:50 출근
06:00 도보(12층 복도)
07:30 업무
11:30 중식(컵라면(2개), 과자)
11:40 도보(도림천)
13:40 종료
13:50 업무
16:00 퇴근(자전거)
16:10 아미트 구로점 방문 ==> 러빙홈 개별 6구 3m(22,720원[80원 포인트 사용]) 구입
16:40 퇴근(자전거)
16:48 석식
17:10 안방 정리(PC 옮기기 & 모니터 셋팅)
18:20 종료
18:25 실내도보
18:50 종료
19:20 취침
----------------------------------------------------------------------------------------------------------------------------------------------
11:50 기상
00:00 카타르 월드컵 결승전 시청(12.19(월) 00시, 카타르): 핸드폰으로 시청(2시간 후 핸드폰 열나서 종료, 연장전은 갤럭시 탭으로 시청)
		==> 아르헨티나 3(4): (2) 3 프랑스 --> 아르헨티나 우승(메시 축구신으로 등극(골든 볼): 역대급 흥미 진진한 경기)
03:00 종료
03:10 취침
05:17 기상
05:24 조식
05:50 출근
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2022.12.19(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==>

- 효성 PMS Prj[★]
- Gate 현황([/PrjctMgtGateListR.form.jsp) 개발
-- Gate 현황 분석(세로 데이터를 가로로 표시)
|WBS명■      	|	기본일자■    |	변경1일자■    |
|---------------|----------------|----------------|
|프로젝트등록  	|2000-01-01		|2000-01-11		|
|Desi Rn 확정 	|2000-01-02		|2000-01-12		|


|분류       			|	프로젝트등록 |	Desi Rn 확정 |
|---------------|----------------|----------------|
|기본일자■   	|2000-01-01		|2000-01-02		|
|변경1일자■   	|2000-01-11		|2000-01-12		|    ===>  개발일정(기본: 프로젝트 종료일)
=============================================================================================================

/* [@_T] Wbs 정보 수정(프로젝트 관리) ==> [/TbPrjctMasterMapper.xml.updateWbs()] [22.11.24, by 진태만] */
SELECT A.WBS_PLAN_ID WBS_PLAN_ID,  A.UPPER_WBS_PLAN_ID "상위 WBS 계획 ID■", A.WBS_NM "WBS이름", A.PJT_MST_ID "PJT 마스터 ID:clubs:"
			, A.WBS_NM  /* WBS명■ */  -- , 'DEV_DE_BASS ' AS DEV_DE_BASS
			, (SELECT(FN_FORMAT_DATE(PJT_END_DE, 'YYYY-MM-DD')) FROM TB_PJT_MST WHERE PJT_MST_ID = A.PJT_MST_ID) AS DEV_DE_BASS		  
			/* 개발일정(기본) */
			, (FN_FORMAT_DATE(A.PLAN_END_DE, 'YYYY-MM-DD')) AS DEV_DE_CHG_1      /* 개발일정(변경1일자) */
FROM TB_PJT_WBS_PLAN A		    /* 12. 프로젝트_WBS_계획 TB ★★★ */
WHERE 1=1
  AND A.PJT_MST_ID = '10000002' 	-- PJT 마스터 ID
 ;
=============================================================================================================

- 쿼리 질문
1. 데이터베이스 사랑넷  ==> http://database.sarang.net., tamario2/as**12**!!ftt, 이메일: tamario@naver.com
2. DBA 커뮤니티 구루비 ==> http://www.gurubee.net, tamario3/as**12**!!(10자 이하), 이메일: tamario@daum.net
==============================================================================================================

- 가변적인 세로 데이타를 가로로 변환?
https://database.sarang.net/?inc=read&aid=38917&criteria=oracle&subcrit=&id=0&limit=20&keyword=PIVOT&page=3

- 세로를 가로로..
https://database.sarang.net/?inc=read&aid=32610&criteria=oracle&subcrit=&id=0&limit=20&keyword=PIVOT&page=3

- 세로형태 가로(일자 가변)형태로 만들기 도움 요청합니다.
https://database.sarang.net/?inc=read&aid=41532&criteria=oracle&subcrit=&id=0&limit=20&keyword=%EC%84%B8%EB%A1%9C&page=1
SQL 만으로는 가변열을 표현 할 수 없습니다.
프로그램에서 동적 SQL 을 구성하셔야 합니다.
===> 프로시져로 쿼리를 동적으로 구성하여 실행시켜 커서 형태로 반환하기 ■■■■
==============================================================================================================

- 가로 데이터 세로 표현 질문드립니다.
https://database.sarang.net/?inc=read&aid=41649&criteria=oracle&subcrit=&id=0&limit=20&keyword=PIVOT&page=1
WITH t AS
(
	SELECT 'A' loc, '금속1' cust, 'LF/BALL STUD' item, 120 t1, 480 t2 FROM dual
	UNION ALL SELECT 'A', 'MST'  , 'CS DT OTR SOCKET', 120, 480 FROM dual
	UNION ALL SELECT 'B', '금속1', 'LF/BALL STUD'    , 120, 480 FROM dual
	UNION ALL SELECT 'B', '금속1', 'LF/BALL STUD'    , 120, 480 FROM dual
	UNION ALL SELECT 'B', '금속3', 'LF/BALL STUD'    , 120, 480 FROM dual
	UNION ALL SELECT 'C', '오대1', 'LF/BALL STUD'    , 120, 480 FROM dual
)
SELECT *
  FROM (SELECT loc, cust, item
             , TO_CHAR(t1) t1
             , TO_CHAR(t2) t2
             , ROW_NUMBER() OVER(PARTITION BY loc ORDER BY 1) 순번
          FROM t
        )
 UNPIVOT (v FOR 구분 IN ( cust AS '거래처'		-- UNPIVOT(세로) ■■■
                        , item AS '품명'
                        , t1   AS '테스트시간1'
                        , t2   AS '테스트시간2'))
 PIVOT (MIN(v) FOR loc IN ('A' a, 'B' b, 'C' c))		-- PIVOT(가로) ■■■
 ORDER BY 순번, INSTR('거래처,품명,테스트시간1,테스트시간2', 구분)
;
=============================================================================================================

- 수종 의자 구입
[베스트어워즈] 일루일루 라이트 G-지타이탄 게이밍 체어, 04.블랙(발받침O), 67,120원 
http://www.tmon.co.kr/deal/5649134806?isHistory=Y
http://www.enuri.com/detail.jsp?modelno=49550178 
============================================================================================================= 

■■■■■■■■■■■■■■■■■■ 2022.12.20(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==>

- 효성 PMS Prj[★]
- Gate 현황([/PrjctMgtGateListR.form.jsp) 개발
-- Gate 현황 분석(세로 데이터를 가로로 표시)
/* [@_T] [T_66] Gate 현황 목록 조회 ==> [/TbPrjctMasterMapper.xml.readGateList()] [22.12.17, by 진태만] */
WITH TMP AS
(
	SELECT  'A' AS loc
					, (SELECT WBS_NM FROM TB_PJT_WBS_PLAN
					WHERE PJT_MST_ID = '10000002' AND WBS_PLAN_ID = A.UPPER_WBS_PLAN_ID
					AND UPPER_WBS_PLAN_ID IS NULL) AS stage
					, A.WBS_NM AS wbsNm, A.WBS_CODE_ID AS wbsCodeId
					, (SELECT(FN_FORMAT_DATE(PJT_END_DE, 'YYYY-MM-DD')) FROM TB_PJT_MST
					WHERE PJT_MST_ID = A.PJT_MST_ID) AS devDeBass      /* 개발일정(기본) */
					, (FN_FORMAT_DATE(A.PLAN_END_DE, 'YYYY-MM-DD')) AS devDeChg1      /* 개발일정(변경1일자) */
	FROM TB_PJT_WBS_PLAN A          /* 12. 프로젝트_WBS_계획 TB ★★★ */
	WHERE A.PJT_MST_ID = #{cond.pjtMstId}      /* 프로젝트마스터 ID */
	 AND A.UPPER_WBS_PLAN_ID IS NOT NULL    /* 상위 WBS 계획 ID */
)
SELECT *
FROM (SELECT loc, stage, wbsNm, wbsCodeId
						, TO_CHAR(devDeBass) devDeBass     /* 개발일정(기본) */
						, TO_CHAR(devDeChg1) devDeChg1     /* 개발일정(변경1일자) */
						, ROW_NUMBER() OVER(PARTITION BY loc ORDER BY 1) SEQ_NO
			FROM TMP
)
	UNPIVOT (v FOR GUBUN_NM IN ( 		-- UNPIVOT(세로) ■■■
						wbsCodeId AS '00. WBS코드ID■'            /* 00. WBS코드ID */
						, stage AS '01. STAGE_NM'                       /* 01. 스테이지명*/
						, wbsNm AS '02. WBS_NM'                      /* 02. WBS 명 */
						, devDeBass AS '03. DEV_DE_BASS'        /* 03. 개발일정(기본) */
						, devDeChg1 AS '04. DEV_DE_CHG_1'       /* 04. 개발일정(변경1일자) */
						))
	PIVOT (MIN(v) FOR loc IN ('A' AS GUBUN_VALUE))        -- PIVOT(가로) ■■■
ORDER BY SEQ_NO, INSTR('01. STAGE_NM, 02. WBS_NM, 03. DEV_DE_BASS, 04. DEV_DE_CHG_1', GUBUN_NM)
;
-------------------------------------------------------------------------------------------------------------------------

-- TMP(임시) 테이블 조회 결과 @@@
|LOC|STAGE  			|WBSNM      			|WBSCODEID         		|DEVDEBASS |DEVDECHG1 |
|---|-------------- --|---------------------|-----------------------|-------------|--------------|
|A  |상품기획   		 	|Desi Rn 확정 			|761HYKEGY00001B590|2022-12-31|2022-10-01|
|A  |상품기획   			|상품기획심의회    	|761HYKEHW00001B5A0|2022-12-31|2022-10-02|
|A  |개발기획(DP)		|프로젝트등록     		|761HYKEMR00001B5C0|2022-12-31|2022-10-03|
|A  |개발기획(DP)		|개발CFT구성(보고)	|761HYKEP200001B5D0|2022-12-31|2022-10-04|
-------------------------------------------------------------------------------------------------------------------------

-- Gate 현황 목록 조회 결과 @@@
 |SEQ_NO|	GUBUN_NM	|	GUBUN_VALUE  |
|---------|-----------------|------------------|
|1     |00. WBS코드ID■    |761HYKEGY00001B590|
|1     |01. STAGE_NM    |상품기획              |
|1     |02. WBS_NM      |Desi Rn 확정        |
|1     |03. DEV_DE_BASS |2022-12-31        |
|1     |04. DEV_DE_CHG_1|2022-10-01        |
|2     |00. WBS코드ID■    |761HYKEHW00001B5A0|
|2     |01. STAGE_NM    |상품기획              |
|2     |02. WBS_NM      |상품기획심의회    	|
|2     |03. DEV_DE_BASS |2022-12-31        |
|2     |04. DEV_DE_CHG_1|2022-10-02        |
|3     |00. WBS코드ID■    |761HYKEMR00001B5C0|
|3     |01. STAGE_NM    |개발기획(DP)         |
|3     |02. WBS_NM      |프로젝트등록          |
|3     |03. DEV_DE_BASS |2022-12-31        |
|3     |04. DEV_DE_CHG_1|2022-10-03        |
|4     |00. WBS코드ID■    |761HYKEP200001B5D0|
|4     |01. STAGE_NM    |개발기획(DP)         |
|4     |02. WBS_NM      |개발CFT구성(보고) |
|4     |03. DEV_DE_BASS |2022-12-31        |
|4     |04. DEV_DE_CHG_1|2022-10-04        |
----------------------------------------------------------------------------------------------'

rtnAnyDtList.add(rstAnyDt);     // 조회 결과값 Any Data를 결과값 Any Data List에 Data 셋팅 ■■■
logger.debug("\n [@_TM] ■■■ [/PrjctmgtServiceImpl.java] [readGateList()] ==> [T_88] [i_번째]"+ i +"[01. WBS 명]"+
tbPrjctWbsTmplList.get(i).getWbsNm() +"[02. WBS 명_02]"+ tbPrjctWbsTmplList.get(i).getWbsNm_02()
+"[03. WBS 명_03]"+ tbPrjctWbsTmplList.get(i).getWbsNm_03() +"[04. WBS 명_04]"+ tbPrjctWbsTmplList.get(i).getWbsNm_04());
WbsNm "상품기획"
WbsNm_02: "상품기획"
WbsNm_03: "개발기획(DP)"
WbsNm_04: "개발기획(DP)"

'WbsNm: "Desi Rn 확정"
WbsNm_02: "상품기획심의회"
WbsNm_03: "프로젝트등록"
WbsNm_04: "개발CFT구성(보고)"
=============================================================================================================

- PROJ-BD-120-결함관리대장_v1.0_20221220.xlsx 결함 처리
1. WBS 발개요: "작성완료를 하면 프로젝트 관리 List에서  진행상태가 ""로젝트 작성완료""로 표시하고 이후 프로젝트명을 클릭해도 동작안함
프로젝트관리 메뉴를 재클릭하면 이후 정상동작함" ==>
2. 수정 내용
var win = any.viewer(true);
win.url("/prjct/projectprjct/prjctmgttab/viewTab");   // Tab 01. 개발 개요 Tab 화면(프로젝트 관리 Tab)으로 이동
win.param("pjtMstId", rowData.pjtMstId);       // 프로젝트마스터 ID 셋팅
win.param("pjtPrgRt", rowData.pjtPrgRt);     // 프로젝트 진척률 셋팅
console.log("\n [@_T] ■■■ [/PrjctMgtListR.form.jsp] [mySheet_OnClick()] ==> [T_52] [간트 차트 보기@@@ ==> [프로젝트마스터ID]"+ rowData.pjtMstId );

win.on("onReload", function() {   // 처리 완료이면
	console.log("[@_T] ■■■ [/PrjctMgtListR.form.jsp] [mySheet_OnClick()] ==> [T_51] [처리 완료 후 처리 이벤트] ■■■");

	fnReadList("onReload");
});
----------------------------------------------------------------------------------------------------------------------------

prx.on("onSuccess", function() {     // 저장 성공 이면
	any.dialog(true).alert("<n:message code="msg.saveSuccess" text="저장되었습니다." escape="js" />").ok(function() {
		console.log("[@_T] ■■■ [/PrjctMgtRUD.form.jsp] [fnSave()] ==> [T_51]" );

		window.parent.fnReloadPage();      // 프로젝트 관리(Tab) 화면 fnReloadPage 함수 호출
		// any.unloadPage();  // 팝업 창이 닫히면서 unload Page 처리
//                 var loc = any.location();
//                 loc.url("/prjct/projectprjct/prjctmgt/viewList");     // 프로젝트 목록 화면으로 이동 URL 셋팅
//                 loc.replace();
	});
});
=============================================================================================================

- 2023년 설 기차표 예매(KTX, 9시, 사업장)
1. 접속 대기: 89명
2. 포항행 2023.01.21(토) KTX-산천 9235 서울(08:10) -> 포항(10:39), 470(4호차 3A, 3B), 80,400원(53,600원, 26,800원)
 1) 설날 전에 수종이꺼 취소할 것
3. 서울행 2023.01.24(화) KTX-산천 294 포항(18:56) -> 서울(21:30), 470(4호차 3A, 3B), 80,400원(53,600원, 26,800원)
==> 결제기간: 2022.12.22.(목) 15:00 ~ 2022.12.25.(일) 24:00
=============================================================================================================

■■■■■■■■■■■■■■■■■■ 2022.12.21(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==> 출근할 떄 눈(05:25, 자전거타고 가다가 오토바이 때문에 미끄러져 넘어져 약간 다침: 우측 갈비뼈 통증)

- 효성 PMS Prj[★]
- Gate 현황([/PrjctMgtGateListR.form.jsp) 개발
http://localhost:8080/tnspms/prjct/projectprjct/prjctmgt/viewGateList
=============================================================================================================

- 위젯 관리(/UsefulSiteMgtListR.script.jsp)
http://localhost:8080/tnspms/admin/appmgt/usefulsitemgt/UsefulSiteMgt/viewList

- 평가표 관리(/EvaluationTableMgtRD.script.jsp)
http://localhost:8080/tnspms/admin/appmgt/evlmgt/EvaluationTableMgt/viewList?evlTableVerId=222

- 평가표 상세(/EvaluationTableMgtRD.script.jsp)
http://localhost:8080/tnspms/admin/appmgt/evlmgt/EvaluationTableMgt/viewDetail?evlTableVerId=75SB15IRVFADA6F410
=============================================================================================================

- 서울 아리수 수도물 자가검침
1. 2022년 12월지침[2022.12.21(수)]: 0640 / 사용량 2 ㎥  --> 2022년 12월분 예상요금	3,660원
=============================================================================================================

- 퇴근 후 의자 조립
[베스트어워즈] 일루일루 라이트 G-지타이탄 게이밍 체어, 04.블랙(발받침O), 67,120원 
http://www.tmon.co.kr/deal/5649134806?isHistory=Y
1. 등받이가 뒤로 저쳐져서 열받음 ==> 아랫 부분에 조절 레버가 있어서 조절 가능함, 그냥 사용하기로 함
=============================================================================================================

■■■■■■■■■■■■■■■■■■ 2022.12.22(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==> 나눔 서울 동기 모임(19시, 합정동 돈화, 어시장 삼대: 더치 페이: 59,000원 송금)

- 효성 PMS Prj[★]
- Gate 현황([/PrjctMgtGateListR.form.jsp) 개발
http://localhost:8080/tnspms/prjct/projectprjct/prjctmgt/viewGateList\
=============================================================================================================

- /anyworks.js 파일에서 Model 안됨
1..현상:
function fnReadList()
{
	console.log("\n\n\n\n [@_T] ■■■ [/PrjctMgtGateListR.form.jsp] [fnReadList()] ==> [T_01] [목록 조회] ■■■");

	var prx = any.proxy();
   //  prx.url("/prjct/projectprjct/prjctmgtgate/readList");     // 목록 조회(Gate 현황 목록 조회) URL 셋팅
   ==> 에러 발생(M\jQuery 타입이 array로 생성되어 Model이 생성 안됨) ■■■");
    console.log("\n\n[@@_7TM] ★★★ [/anyworks.js] [success()] ==> [T_51] [jQuery 타입이 array 이면] @@ [조회 결과 데이타(array)] (
	"+ f.url() +")] [data_조회 건수(:clubs:)]", data.length +", [data]", data );

	prx.url("/prjct/exc/wbs/main/ProjectWbsMain/readGateList");     // 목록 조회(Gate 현황 목록 조회) URL 셋팅
}

2. PrjctmgtController.java] [viewGateList를 rojectWbsMainController.java] [viewGateList에서 다시 생성
    @RequestMapping(value = "/readGateList", method = RequestMethod.POST)
    public String readGateList(CommandData commandData, Model model) {
        logger.debug("\n\n [@_T] ■■■ [/ProjectWbsMainController.java] [readGateList()] ==> [T_01] [Gate 현황 목록 조회] [model])"+ model );

        model.addAttribute(prjctmgtServiceImpl.readGateList(commandData));    // Gate 현황 목록 조회
        logger.debug("[@_T] ■■■ [/ProjectWbsMainController.java] [readGateList()] ==> [T_51] [Gate 현황 목록 조회_결과] [readGateList())"+
		prjctmgtServiceImpl.readGateList(commandData) );

        return Views.JACKSON_VIEW;
    }
=============================================================================================================

- 2023년 설 기차표 예매(KTX, 9시, 사업장) ==> 발권 완료(2022.12.22(목) 17시)
1. 어머니 코레일 회원카드로 로그인:  네이버 페이로 결제(현대카드 연계: 편리)
2. 포항행 2023.01.21(토) KTX-산천 9235 서울(08:10) -> 포항(10:39), 470(4호차 3A, 3B), 80,400원(53,600원, 26,800원)
 1) 설날 전에 수종이꺼 취소할 것
3. 서울행 2023.01.24(화) KTX-산천 294 포항(18:56) -> 서울(21:30), 470(4호차 3A, 3B), 80,400원(53,600원, 26,800원)
=============================================================================================================

■■■■■■■■■■■■■■■■■■ 2022.12.23(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==> 어묵 무침 9kg[9개: 순수 부산 볼 어묵 1kg 5개, 알뜰 어묵 사각 1kg 4개) 무침: 어묵 뜨거운 물에 넣고 찬물에 식힌 후 버무림

- 효성 PMS Prj[★]
- Gate 현황([/PrjctMgtGateListR.form.jsp) 개발
http://localhost:8080/tnspms/prjct/projectprjct/prjctmgt/viewGateList
=============================================================================================================

-JavaScript HashMap 사용 put get 예제 (값 가져오기)
https://codingcoding.tistory.com/1006
=============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2022.12.24(토) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:00 ~ 17:30 ==> 

- 주말[★] 
04:30 기상
04:40 조식
05:21 집출발(백팩: 큰  가방): 추움(패딩, 장갑)
05:30 5413번 승차(남서울중 정류장)
06:07 고속버스터미널 호남선 하차  
06:40 포항행 고속버스 출발
10:24 포항 도착
10:30 다이소 포항 해도점 방문 ==> 이동식 라운드 MDF 상(포항집[밥상], 5천원), 분리형 4칸 나눔 용기(약1.4L, 3천원) 구입
10:45 출발(밥상 들고 걸어서 온다고 힘듬)
11:35 포항집 도착 
11:50 중식
12:30 집출발(수종)
13:20 꾀꼬리 미용실 도착(큰누나)
13:30 이발(수종, 나)
14:00 미용실 출발(수종, 도보) 
14:15 CU 포항 두호점 방문 ==> 수종 교통 카드 발급(3천원), 충전(2만원)
15:00 수종 노트북 OS 설치 ==> 부딩 디스크 인식 못해서 고생함(D 드라이브 포맷 후 OS 설치)
17:00 완료
17:30 석식 
18:25 실내 도보
19:50 종료
20:00 델 노트북에 HD 디스크 교체 ==> 중고로 구입한 삼성 SSD 설치: 부팅 옵션(F12)에서 USB를 인식 못해서 OS 설치 못 함 
20:40 인터넷 서핑
21:00 수종이 엄마한테서 파리바게뜨 케익(스노우 딸기 요거트 생크림(16cm): 33,300원) 배달되어 옴
21:20 수종이와 케익 절단 ==> 케익 1조각 먹고 아침 혈당 엄청 올라감
22:30 수종 샤워 시킴
22:45 염색, 샤워
23:30 취침(수종)
=============================================================================================================

■■■■■■■■■■■■■■■■■■ 2022.12.25(일) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:30 ~ 18:00 ==> 성탄절

- 주말2[★]
06:30 기상
08:50 조식(수종)
07:10 도보(영일대 해수욕장): 너울성 파도로 도로 엉망이 됨
08:35 귀가
09:46 델 노트북 점검 ==> 부팅 USB 바꿔 키우니깐 인식이 되어서 OS 설치함(속도 괜찮게 나옴: 만족)
11:52 중식
12:35 도보(집 => 창포사거리 => 마장지 => 작은굴 우회 도로 => 포항 철길숲 => 우창동 주민센터 => 집)
14:02 종료 
14:10 어묵 볶음 견학(엄마가 하는 거 지켜 봄): 1. 간장을 넣고 후라이팬에 끓임, 2. 어묵 넣어서 무치기, 3. 고추장 넣어서 무치기
15:00 수종 노트북 점검 ==> 그래픽 드라이버 설치해서 모니터랑 연결시킴
16:22 종료
17:30 석식(수종)
18:00 집출발(백팩: 김치통, 반찬 4통, 도보): 엄청 무거움
18:53 포항 고속버스터미널 도착
19:10 포항 출발
23:05 서울 강남터미널 도착
23:15 고속 터미널 정류장(643번 버스 탑승)
23:43 남부초 정류장 하차
23:51 귀가
24:20 청소 
02:00 취침
=============================================================================================================

■■■■■■■■■■■■■■■■■■ 2022.12.26(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==>

- 효성 PMS Prj[★]
- Gate 현황([/PrjctMgtGateListR.form.jsp) 개발 ==> 완료[:hearts:♡]
http://localhost:8080/tnspms/prjct/projectprjct/prjctmgt/viewGateList
=============================================================================================================

- [Javascript] Excel 다운로드 기능 구현하기
https://royzero.tistory.com/38
=============================================================================================================

- 표준 작업 소스 반영(11:22) ==> 완료[:hearts:♡]
1. SVN에 등록
=============================================================================================================

- 상품기획 현황([/PrdPlnSttuListR.form.jsp) 개발
http://localhost:8080/tnspms/prjct/dashboard/prdPlnSttu/viewList
=============================================================================================================

- 회의(13:20  회의실)
1. 김빌리 책임에게 향후 개발할 업무 요청
  1) dashboard에 있는 상품기획 현황 개발하라고 함
=============================================================================================================

■■■■■■■■■■■■■■■■■■ 2022.12.27(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==> 커피샵(09:30, 오가다 구로디지털점: 개발팀: 다음달에 중간보고회 한다고 함)

- 효성 PMS Prj[★]
- 상품기획 현황([/PrdPlnSttuListR.form.jsp) 개발
http://localhost:8080/tnspms/prjct/dashboard/prdPlnSttu/viewList
=============================================================================================================

- 말소 목록 작성
- 말소 등기의 표시
■등기의 목적	■접수 일자	■번수 번호	■비고
1.  압류 등기		2021-05-03	2(갑4)		말소기준등기
2.  가압류 등기	2021-07-06	3(갑5)		2021카단810972
3.  강제 경매		2021-11-16	4(갑6)		2021타경110333
3.  압류 등기		2022-08-02	5(갑7)	
=============================================================================================================

- 경매 내역	 @@@
	■내역						■일자			■금액				■비고
1. 전세 보증금			2021-01-30	285,000,000	 
2. 경매 보증금			2022-11-10	24,160,000	 
3. 경매 낙찰 금액		2022-11-10	280,000,000	 
4. 잔금 납부				2022-12-28	255,840,000	납부해야할 잔금
5. 상계 금액				2022-12-28	29,160,000	 
6. 실제 전세 배당금	2022-12-28	280,000,000	 
7. 실제 전세 배당금	2022-12-28	24,160,000	실제 받을 잔금■■■
=============================================================================================================

1. 인터넷 등기소
http://www.iros.go.kr/PMainJ.jsp, tamnrrio, asas12**!!
1. 사업장에서 부동산 등기부 등본 출력 불가 ==> 결제로 안 넘어감(프린터가 사용 불가능한 것으로 추정됨)
11:50 구로3동 주민센터 방문 ==> 등기부 등본 발급(자동화기: 천원),  인감 증명서 발급(2통: 1,600원)
=============================================================================================================

- 대금 지급 및 배당기일(14:30, 경매2계)
0. 주소: 서울시 관악구 신림동 470-21, 현아드빌 404호
A. 준비물
1. 인감 증명서 2통, 인감 도장[★] 
1) 본인서명 사실확인서(인감 증명서 대신 사용 가능)
https://www.mois.go.kr/frt/bbs/type010/commonSelectBoardArticle.do?bbsId=BBSMSTR_000000000008&nttId=57169
2. 주민등록 등본(과거 주소 변동 사항 포함) ■
3. 임대차 계약서 원본[★]
==================================================================================================================

- 셀프 등기
0. 사전 준비물 @@@
1. 부동산 등기부 등본(=등기사항 증명서)[★], 2. 토지대장(대지권 등록부)■, 3. 건축물대장(집합건물 전유부)■, 4. 주민등록등본, 초본■
5. 가족관계증명서(매수자 기준/상세본) ■
6. 말소목록 작성(4부 복사) ■, 8. 국민주택 채권 매입금액 확인(인터넷 확인 가능)
11:50 구로3동 주민센터 방문 ==> 등기부 등본 발급(자동화기: 천원),  인감 증명서 발급(2통: 1,600원)
-------------------------------------------------------------------------------------------------------------

A. 법원 업무 @@@
1. 대금완납증명 신청서 작성 ==> 수입 인지(500원: 은행) ==> 매각대금완납증명원(부동산의 표시: 4부 복사)
 1) 등기소 이름 요청 ==> 필요 없음

B. 구청 업무(물건지가 있는 구청: 관악구청) @@@
1. 취득세 신고서 작성
2. 등록 면허세 신고서 작성(말소 목록 개당: 7,200원):  총 4건: 28,800원

C. 은행에서 납부할 것 @@@
1. 취득세, 2. 등록 면허세(말소 건당 7,200원), 3. 등기 신청 수수료(아파트 15,00원 + 말소 건당 3,000원), 4. 국민주택 채권 매입

D. 우체국 업무 @@@ ==> 필요 없음
1. 우표 구입(5,500원)

E. 법원 업무 @@@
1. 모든 서류 제출
==================================================================================================================

- 국민주택채권매입비용 및 절차를 안내해드립니다.
https://youtu.be/Ryhnz4qANnI
-------------------------------------------------------------------------------------------------------------

- 국민주택채권 - 제대로 알고 내시나요??
https://youtu.be/U8KJozsXbrE
1. 시가 표준액: 
2. 개별 공시지가 열람
http://kras.seoul.go.kr/land_info/info/landprice/landprice.do?service=landPriceInfo&landcode=1162010200104700021&scale=0
-------------------------------------------------------------------------------------------------------------

- 국민 주택도시기금:  
https://nhuf.molit.go.kr/FP/FP07/FP0705/FP070504.jsp

1. 매입대상 금액 조회
1) 현아트빌 404호 ==> 전용면적(㎡): 28.66, 	공동주택가격(원): 172,000,000원
가. 채권매입금액: 3,956,000원
나. 매입기준: 서울특별시 및 광역시 시가표준액 1억6천만원 이상 2억6천만원 미만 : 시가표준액의 23/1,000
2. 고객부담금조회
1) 발행금액: 3,956,000원 ==> 3,960,000원
가. 고객부담금 확인
가) 매도금액: 3,438,072원
	나) 즉시매도시 본인부담금: 531,988원 ■■■ 
3. 국민주택채권매입
1) 발행금액: 3,956,000원
=============================================================================================================

■■■■■■■■■■■■■■■■■■ 2022.12.28(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 13:00 ==>

- 효성 PMS Prj[★]
- 상품기획 현황([/PrdPlnSttuListR.form.jsp) 개발
http://localhost:8080/tnspms/prjct/dashboard/prdPlnSttu/viewList
=============================================================================================================

- 배당[★]
11:40 중식(김밥)
12:00 근무
13:00 퇴근
13:05 사업장(대륭1차) 출발(자전거) => 보라매 공원 => 신대방3거리역 => 노량진역 => 노들역 => 한강 => 동작대교 =>  동작역
		=> 반포교 => 반포 종합 운동장 => 가톨릭대학교 서울성모병원 => 삼호가든사거리 =>  서울법원종합청사4별관
14:18 회생 법원 도착
14:25 제4별관 3층7호 법정 입장
14:30 배당 시작 ==>  배당 내용에 동의함
14:30 배당 신청서 작성 ==> 은행에 가서 매당 받음 => 20,978,628원, 9,420원 입금됨
		A. 관련 서류: 인감 증명서 2통, 주민등록 등본(과거 주소 변동 사항 포함), 임대차 계약서 원본 제출
15:00 대금완납증명 신청서 작성 ==> 수입 인지(500원: 신한은행) ==> 메각대금완납증명원 4부 복사(부동산의 표시 포함: 총 8장)
15:30 종료
15:32 법원 출발(자전거) => 교대역 => 서초역 => 서리풀 터널 => 내방역 => 이수역 => 사당역 => 까치고개 => 낙성대역 => 서울대입구역 
16:10 관악구청 도착 ==> 재산. 취득세과(2층)
16:20 1. 취득세 신고서 작성,  취득세 신고서 상세 내역 작성 ==> 눈이 잘 안 보여서 구청 직원이 많이 도와줌
		==> 주민등록 등본 주민번호 다 안 보여서 1층 무인 발급기에서 다시 출력(무료)
		2. 등록 면허세 신고서 작성(말소 목록 개당: 7,200원): 총 4건: 28,800원
16:57 종료
17:00 구청 출발(자전거) => 봉천역 => 신림역
17:21 귀가 
17:40 조식
18:10 실내도보
19:30 종료 
20:00 인터넷 서핑
21:00 취침(많이 피곤함) 
=============================================================================================================

■■■■■■■■■■■■■■■■■■ 2022.12.29(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 13:00 ==>

- 효성 PMS Prj[★]
- 상품기획 현황([/PrdPlnSttuListR.form.jsp) 개발
http://localhost:8080/tnspms/prjct/dashboard/prdPlnSttu/viewList
=============================================================================================================

- 등기[★]
11:40 중식(김밥)
12:00 근무
13:00 퇴근
13:06 신한은행 구로디지털금융센터 방문 ==> 1. 취득세(3,080,000원), 2. 등록 면허세(말소 건당 7,200원:총 4건: 28,800원) 납부
13:15 사업장(대륭1차) 출발(자전거) => 보라매 공원 => 신대방3거리역 => 노량진역 => 노들역 => 한강 => 동작대교 => 동작역
		=> 반포교 => 반포 종합 운동장 => 가톨릭대학교 서울성모병원 => 삼호가든사거리 => 서울법원종합청사4별관
14:10 회생 법원 도착
14:25 신한은행(회생 법원 내) 방문 ==> 국민주택 채권(532,000원) 구입
14:35 소유권 이전 촉탁 신청서 작성 및 제출
		A. 관련 서류: 부동산 등기부 등본, 2. 토지대장, 3.. 건축물대장, 4. 주민등록등본, 5. 가족관계증명서(매수자 기준/상세본)
		, 6.국민주택 채권 매입금액 영수증, 7. 취득세 영수증, 8. 등록 면허세 영수증
14:55 종료 
15:00 법원 출발(자전거) => 반포교 => 동작역 => 동작대교 => 노들역 => 노량진역 => 신대방3거리역 => 신림역 
16:00 헌혈카페 신림점 도착
  1. 사전 상담 및 검사 
   1) 혈액 검사(헤모글로빈 정상). 콜레스테롤 수치: 212
   2) 혈압 측정: 158/ 80(높음: 자전거 2시간 탐)
  2. 헌혈 
   1) 종류: 전혈 320mL
  3. 헌혈 사은품
   1) 롯데 시네마 영화권 4장), 석수(500ml) 
16:40 종료 
16:45 다이소 신림 3호점 방문 ==> 쿠션 주방 매트(약37x70 cm, 5천원), 팬톤_마우스패드(장패드, 5천원: 수종방), 극세사 파스텔 행주
			(약25X25: 2매입, 천원) 구입
17:40 종료  
17:21 귀가 
17:50 조식
18:20 실내도보
19:40 종료 
20:10 인터넷 서핑
22:00 취침
=============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2022.12.30(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==> 중식(11:20: (타오[반점]: 짜장면,탕수육, 팔보채: 개발팀[김빌리 책임이 쏨]:)

- 효성 PMS Prj[★]
- 상품기획 현황([/PrdPlnSttuListR.form.jsp) 개발
http://localhost:8080/tnspms/prjct/dashboard/prdPlnSttu/viewList
=============================================================================================================

- IBSheet header에서 colspan, rowspan 처리 문의글 작성
https://www.ibsheet.com/service.html
=============================================================================================================

- 김빌리 책임 면담(13:20  내자리)
1. 상품기획 현황 상세 List 조회(readPrdPlnSttuDtList) A. 실적, B. 변경:, B. 계획으로 Group화해서 조회하라고 함(무조건 최소 3줄)
=============================================================================================================

- 경매 2계에서 전화 옴(13:10)
1. 등기 신청서에 미제출 자료가 있다고 함 ==> 다시 와서 제출하라고 함: 화냄
=============================================================================================================

- 연말(종무식 없이 퇴근)
16:00 개발자 모두 퇴근
16:50 퇴근(자전거)
17:05 이마트 구로점 방문 ==> 고밀도 패션 아령 5호(5kg, 34,900원) 구입
17:35 귀가
=============================================================================================================

- [풀버전] 게으른 사람은 행운을 놓치기 마련! 김미경이 실행력을 강조하는 이유
https://youtu.be/cVWZQT7CcTc
 =============================================================================================================

 ■■■■■■■■■■■■■■■■■■ 2022.12.31(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==> 휴일 근무(07시 효성 PMS Prj): 12일차, 가계부 월말 결산(22시, 집)

- 효성 PMS Prj[★]
- 상품기획 현황([/PrdPlnSttuListR.form.jsp) 개발
http://localhost:8080/tnspms/prjct/dashboard/prdPlnSttu/viewList
=============================================================================================================

/* [@_T] [T_02] 상품기획 현황 상세 List 조회 ==> [/TbPrdPlnSttuMapper.xml.readPrdPlnSttuDtList()] [22.12.28, by 진태만] */
SELECT X.SE , X.PRD_PLN_RQST_ID
FROM
(
	SELECT  '11. 실적' AS SE, A.PRD_PLN_ID, B.PRD_PLN_RQST_ID
		,		 A.RCPT_DE  		/*  01. 개발요청 접수 일자 */
	UNION ALL
	SELECT  '20. 변경' AS SE, '' AS PRD_PLN_ID, '' AS PRD_PLN_RQST_ID
				,'' AS RCPT_DE  	/*  01. 개발요청 접수 일자 */
	UNION ALL
	SELECT  '21. 변경' AS SE, A.PRD_PLN_ID, B.PRD_PLN_RQST_ID
				, A.RCPT_DE  		/*  01. 개발요청 접수 일자 */
	UNION ALL
	SELECT  '30. 계획' AS SE, '' AS PRD_PLN_ID, '' AS PRD_PLN_RQST_ID
				,'' AS RCPT_DE  	/*  01. 개발요청 접수 일자 */
	UNION ALL
	SELECT  '31. 계획' AS SE, A.PRD_PLN_ID, B.PRD_PLN_RQST_ID
				, A.RCPT_DE  		/*  01. 개발요청 접수 일자 */
	) X
ORDER BY X.PRD_PLN_ID DESC. X.SE
;
=============================================================================================================

- 애니 프레임 교육 동영상 시청(13:20)
1. any works 공통 합수 분석
- anyworks.js 파일에서
/**
     * any 데이타 셋 설정
     *
     * @author 진태만
	 * @param id: 데이타 셋
	 * @param scope: 범위
     * @return ==> any.ds("tbPrjctWbsTmplatCode").value(0, "upperWbsCodeId", any.arg("upperWbsCodeId"));
     */
any.ds(): any 데이타 셋 설정 ■
any.arg(): opener에서 전달된 파라미터 처리
any.param(): 화면에 전달된 파라미터 처리■
any.location(); 화면 위치 전달
var win = any.window(true); 화면 팝업으로 이동■
var win = any.viewer(true); 화면 보기로 이동■
any.viewer.onReload(): viewer 이후 함수 재실행

any.unloadPage();	// un load Page 설정
any.proxy().	// proxy 설정
=============================================================================================================

- any-select DB 조회
- /ApprovalBoxProcListR.form.jsp 파일에서
<tr>
	<th><n:message code="common.domain.tbComApprManage.apprNm" text="결재 이름" escape="html" /></th>
	<td>
		<div any-select id="apprNm" bind="cond" codeData="common.apprManageId" firstName="all"></div>
	</td>
</tr>
---------------------------------------------------------------------------------------------------------------------------

- /CommonCodeDataMapper.xml파일에서
<!-- 결재 관리 ID -->
<select id="apprManageId" resultType="com.anyfive.framework.core.support.collection.AnyData">
	<![CDATA[
	SELECT CAM.APPR_MANAGE_ID AS CODE
		 , CAM.APPR_NM AS NAME
	FROM   TB_COM_APPR_MANAGE CAM
	WHERE  CAM.USE_YN = '1'
	ORDER BY NAME
	]]>
</select>
=============================================================================================================

- 현미 쌀 20kg 구입
- 가가호호종합미곡처리장 2020 농사꾼 양심쌀 현미 20kg[1개], 가격: 41,230원
http://www.tmon.co.kr/deal/6107677662?isHistory=Y
http://www.enuri.com/detail.jsp?modelno=55784927
=============================================================================================================

-  한 해 결산(22년) ■■■
1. 건강 회복
 1) 당뇨 완치
 
1-1. 결과: 실패
 1) 악화는 아니지만 사업장에서 과자를 많이 먹음
 2) 꾸준히 운동[걷기, 아령, 스쿼트(200개)]을 많이 해서 건강 유지함
 ------------------------------------------------------------------------------------------------
 
2. 업무 전문성 향상
 1) 고객 감동
 2) 인맥 관리(년 2명 사귀기)
 
2-1. 결과: 실패
 1) 노력(휴일 근무 12일)은 많이 했지만 업무 난이도가 높아서 고객에 어필 실패
 2) 인맥: 노기수 과장, 권승기 부장 사귐 
------------------------------------------------------------------------------------------------

3. 가족 사랑
  1) 아들 사랑
   
3-1. 결과: 양호
 1) 수종이 만나러 매달 포항 방문
------------------------------------------------------------------------------------------------

4. 주식 공부

4-1. 결과: 실패
 1) 주식은 매일 1시간씩 주식의 정식 시청하는 것으로 대체: 주식 투자 포기 결정
------------------------------------------------------------------------------------------------

5. 경매 분석(현아트빌 404호 구입 시도)

5-1. 결과: 성공
 1) 현아트빌 404호 경매 낙찰로 구입
============================================================================================================

- 22년 결산 ■■■  
1. 총 수입: 8,691,585원
2. 저축: 41,065,780원 ==>  2022.12.29(목)" 빌라(현아트빌 404호) 경매로 낙찰 받아서 구입으로 계산 부정확할 수 있음
============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //----------------------------------------------------------+ 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■  
 