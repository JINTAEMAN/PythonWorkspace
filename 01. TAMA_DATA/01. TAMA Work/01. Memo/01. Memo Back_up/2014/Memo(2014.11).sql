

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2014.11) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2014.11.01(토) 작업 ■■■■■■■■■■■■■■■ 
---> 07:30 ~ 20:00  ==>

- 주말
08:00 기상
09:30 로리치 유모차(은천1단지 APT 503호) 구입 ==> 3만원(새 것처럼 보임)
10:00 귀가
10:10 조식 
10:30 집출발 
11:10 진료(X-RAY, 스프레이: 장모[허리, 어깨]): 강남초이스병원
11:30 장모님 외국인등록증 안 가지고 와서 집에 갔다 옴
12:00 종료
12:30 중식(해물탕(소): 3만 7천원, 공기밥(2개)): 대호아구집 ==> 총 3만 9천원
13:20 귀가
16:10 집출발
16:10 지하철(서울대입구역 <-> 동대문역사문화공원역): 루옌, 장모
17:00 동대문역사문화공원 1번 출구 ==> D동대문 디자인 플라자(DDP) D관 4층(엘리베이트타고 감): 장미꽃 전시
18:00 동대문 밀리오레 9층 셀러드 부페(인당 7천원)
20:00 장미꽃 전시(19시에 DDP(Dream Design Play)는 종료되고 야외 장미꽃 전시는 볼수 있었음)
20:20 종료
21:20 귀가
24:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.11.02(일) 작업 ■■■■■■■■■■■■■■■
---> 07:30 ~ 20:00  ==>

- ▦조기축구
06:15 기상(비 조금 옴)
07:20 국민은행 봉천동지점 앞(태훈이형 차)  
07:50 신구초등학교(비 그침)
08:20 숏게임
11:00 종료
11:40 중식(된장찌게: 미성 상가 지하 1층[기배 고문 가게): 만원 냄
13:11 종료
14:00 귀가 
14:20 염색(샤워)
14:30 낮잠 
17:20 기상
18:30 가족의 밤 행사(워터 플라워 첼로룸): 돌잔치 후기 작성해서 부페 무료로 먹음
20:00 종료
20:20 쇼핑(마트)
20:50 귀가
24:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.11.03(월) 작업 ■■■■■■■■■■■■■■■
---> 07:30 ~ 20:00  ==>  

- SMART TV App Mgt Prj- 호환성 개발
1. Comp. Assign Tester 삭제 화면 개발
==============================================================================================================

- IE 11 설치
http://windows.microsoft.com/ko-kr/internet-explorer/download-ie
1. F12 개발자 도구를 사용하여 웹 페이지를 디버그하는 방법
http://msdn.microsoft.com/ko-kr/library/gg589507(v=vs.85).aspx
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.11.04(화) 작업 ■■■■■■■■■■■■■■■
---> 07:30 ~ 20:00  ==>  

- SMART TV App Mgt Prj- 호환성 개발
1. Comp. Assign Tester 삭제 화면 개발
==============================================================================================================

- 형변환 에려
- /CompAssignServiceImpl.java에서
List<HashMap<String, Object>> prjIdList = new ArrayList<HashMap<String, Object>>();

prjIdList = compAssignDao.selectAssignTesters(paramMap);

if( prjIdList != null && prjIdList.size() > 0 ) {
	for( int i=0; i<prjIdList.size(); i++ ){
		HashMap<String, Object> prjInfo = prjIdList.get(i);

		testerIdArr = (ArrayList)prjInfo.get("TSTR_ID"); 
		logger.debug("[/CompCommCodeController.java][findAssignTesterList()] ==> [TSTR_ID]"+
		(ArrayList)prjInfo.get("TSTR_ID") +"[testerIdArr]"+ testerIdArr );
	}	// end of for()
}

GlobalControllerExceptionHandler java.lang.ClassCastException: java.lang.String cannot be cast to java.util.ArrayList
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.11.05(수) 작업 ■■■■■■■■■■■■■■■
---> 07:30 ~ 20:00  ==>  

- SMART TV App Mgt Prj- 호환성 개발
1. Comp. Assign Tester 삭제 화면 개발
1) 센터에서 tester 전부삭제되면
==> procedure에 to_status를 CP.PST.230C로 넘겨줌
2) 에러 발생
 가. 내용: Uncaught SyntaxError: Unexpected token : 
 나. 조치: JSP 파일 에러로 추정(이전 소스를 활용해서 천천히 디버깅할 것)
==============================================================================================================

- Comp. Assign Tester 삭제 화면 등록 요청
1. 메뉴명: Comp. Assign Tester 삭제 화면
2. 메뉴 URL: /Diamond/comp/assign/m_assigned_tester_view
==> 메뉴 등록화면(http://207.36.93.29/Diamond/portal/admin#)에서 Add Page 눌려서 새창에서 등록하면 됨
==============================================================================================================

- redmine 처리 내역
Resolved: 2건(1440, 1441)
Opened: 2건(1439, 1447)
1. No. 1447
Region, Project Name 필드 추가
==============================================================================================================

- Toad 설치
1. Toad for Oracle v 10.1.1.8 설치[집, 회사(수원 삼성)]
2. Toad for Oracle v 10.6.1.3  ==> 이전 버전
==============================================================================================================

- 형변환 에러
if( prjIdList != null && prjIdList.size() > 0 ) {
	for( int i=0; i<prjIdList.size(); i++ ){
		//HashMap<String, Object> prjInfo = prjIdList.get(i);
		ArrayList<String> prjInfo =  prjIdList.get(i); 
	}
}
1. 에러 내용: Type mismatch: cannot convert from HashMap<String,Object> to ArrayList<String>
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.11.06(목) 작업 ■■■■■■■■■■■■■■■
---> 07:30 ~ 19:20  ==> 배 아퍼서 퇴근(온 가족이 배탈 남)

- SMART TV App Mgt Prj- 호환성 개발
1. Comp. Assign Tester 삭제 화면 개발[No. 1439]
1) 센터에서 tester 전부 삭제되면
==> procedure에 to_status를 CP.PST.230C로 넘겨줌
2. Test Center 화면에서 Project Name, Region 필드 추가[No. 1447]
3. Loading Bar 추가
4. More Pagin 버튼 추가
5. 호환성 메세지 영문 처리
==============================================================================================================

- jquery 에러(JSP에서 DB Table 생성시 에러로 추정)
Uncaught SyntaxError: Invalid regular expression: missing
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2014.11.07(금) 작업 ■■■■■■■■■■■■■■■
---> 14:10 ~ 20:00 ==> 은행 업무(국민은행, 우리은행), 쓰레기 무단투기 확인(관악구청 청소과)

- SMART TV App Mgt Prj- 호환성 개발(검증서버에 반영)
1. Comp. Assign Tester 삭제 화면 개발[No. 1439]
1) 센터에서 tester 전부 삭제되면
==> procedure에 to_status를 CP.PST.230C로 넘겨줌
2. Test Center 화면에서 Project Name, Region 필드 추가[No. 1447]
3. Loading Bar 추가
4. More Pagin 버튼 추가
5. 호환성 메세지 영문 처리
==============================================================================================================

- 브라우저 모드 IE11 호환성 설정
1. F12 > Emulation(새창)
1) 모드 > 문서 모드: 10으로 설정(IE 10 설정됨)
http://vip125.blog.me/130179979575
http://www.devpia.com/Maeul/Contents/Detail.aspx?BoardID=35&MAEULNO=14&no=21422&page=1&ref=21422
==============================================================================================================

- 은행 업무
08:30 기상(설사로 몸 안 좋음)
09:10 조식(죽 먹음)
09:30 루옌 옷 찾기(크린토피아) 
09:40 생활비 통장 만들기(국민은행, 체크카드)
	==> 1.직불카드 발급(매월 생활비 90만원 입금 ==> 매월 100만원 입금 예정)
	==> 2. 장인, 장모님 통장 돈 천만원을 오만원권으로 바꿈(장모님이 다음주 베트남 가져갈 예정)
10:10 우리은행 적금 만기 타기(루옌, 태만) --> 총 합계: 7,458,168원(순 이자: 258,168원)
	==> 희망드림 통장 적금 재가입(루옌만 가능): 30만원 납부
	==> 주택 정약 적금 가입(태만: 월 10만원): 10만원 납부
	==> 주택 정약 통장 개설(수종: 월 적립 없음, 은행에서 만원 지원)
11:20 종료
11:20 관악구청 청소과(3층): 쓰레기 분류 수거 증거 사진 확인(과태료 8만원 11월 21일까지 납부할 것)
12:00 귀가
12:20 중식(죽 먹음)
12:40 집출발
14:00 출근(수원)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.11.08(토) 작업 ■■■■■■■■■■■■■■■
---> 07:30 ~ 20:00  ==>

- 주말
06:15 기상
06:40 국민은행 봉천동지점 앞(태훈이형 차)
06:50 신구초등학교
07:20 숏게임
08:30 종료
09:10 귀가
09:00 조식
10:15 모태산부인과(수종 설사): 자전거 탐
11:30 종료
11:40 귀가
12:00 집출발
12:20 옷 환불(라붐아울렛 3층 미소: 장모님 옷(16만원)을 환불하고 장모님에게 돈 돌려줌)
12:40 루옌 휴대폰 알아봄 ==> 통신사 3사: 노트 4 적극 추천함, LG 대리점: 아이폰 6+: 42 요금제(5만 6천원)
13:30 중식(정식, 해물된장2개: 루옌, 장모님): 풍경소리
14:00 이마트 구로점
	==> 일렉 에르고라피도 ZB(무선 청소기(20만원) => 처가 선물)
	==> 이마트 모바일 쿠폰(워터 플라워, 돌잔치 글쓰기) 3만원 사용, 이마트 앱 설치(캔커피 받음, 3천원 할인)
	==> LH 전기 밥솥RG-3305(59,000원), LH 세라믹 연질 냄비 24(28,800원), LH 세라믹 연질 냄비 20(23,800원)
	--> 총 111,600원(장모님 돈으로 구입함)
	16:30 종료
17:00 서울대입구역
17:30 루옌 휴대폰 알아봄 ==> KT 대리점: 아이폰 6+: 42 요금제(5만 8천원) -> 상환이 지인이 개통해서 택배로 받기로 함
18:20 귀가
19:00 석식
20:00 설사(과일먹은 후 설사함)
20:20 생활비 송금(루옌): 90만원
24:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.11.09(토) 작업 ■■■■■■■■■■■■■■■
---> 07:30 ~ 20:00  ==>

- ▦조기축구
06:15 기상
06:30 국민은행 봉천동지점 앞(태훈이형 차)  
07:00 신구초등학교(비 그침)
07:20 숏게임
08:30 게임(프렌즈 연예인팀): 2게임 함 ==> 최수종씨, 류담씨가 옴
	==> 마지막 게임: 레프트 윙으로 뜀(잘함)
10:30 월례회의(평일 운동장 에이스팀과 공유 문제)
11:30 종료
11:40 중식(돌솥: 문경세재): 조기회에서 쏨
13:00 종료 
13:30 귀가
13:40 공유기 고장(전원이 안 들어 옴)
14:40 버스(봉원 중 -> 종각역): 다음부터 서울역으로 갈 것
15:20 지하철(서울대입구역 <-> 동두천역): 장인 픽업
19:00 귀가 
19:30 석식
24:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.11.10(월) 작업 ■■■■■■■■■■■■■■■
---> 07:30 ~ 20:00 ==>  

- SMART TV App Mgt Prj- 호환성 개발(검증서버에 반영)
1. App Info 화면 수정
1) Platform 누르면 해당 defect이 나오는데 해당 defect을 클릭 ==> 팝업
==> /comp/integrated/app/platform/defect/m_defect => /CompAppIntegratedController.java, /modal_defect.jsp
==> /comp/integrated/app/platform/defect/m_defect/list/data.json => /CompAppIntegratedController.java 
==> /defect/common/m_defect => /DefectController.java, /portal/modal/defect/modal_defect.jsp
==> /app/defectinfo/list/data.json => /DefectController.java  
2. page view 수정
==============================================================================================================

- 메뉴 등록
1. Defect List 새창 화면(modal) 등록
1) 메뉴명: Defect List 새창 화면(modal)
2) 메뉴 URL: /Diamond/comp/integrated/app/platform/defect/m_defect
2. Defect List 조회 등록
1) 메뉴명: Defect List 조회
2) 메뉴 URL: /Diamond/comp/integrated/app/platform/defect/m_defect/list/data.json
==============================================================================================================

- SW경력증명 확인(22시)
1. 고급 판정 일자: 2008-06-22  ==>  https://www.sw.or.kr/person/p_gii.jhtml
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2014.11.11(화) 작업 ■■■■■■■■■■■■■■■
---> 07:30 ~ 18:30 ==> 빼빼로 데이(순대 사가지고 감)

- SMART TV App Mgt Prj- 호환성 통계 개발
1. Passed Comp. App Status  
 1) Passed Comp. App Status_Service Country
 2) Passed Comp. App Status_Subsidiary 
/Diamond/comp/statistics/passedCompApptStatus, /CompStatusController.java, /passed_comp_app_status.jsp
/Diamond/comp/statistics/passedCompApptStatusCountrySearch.json
/Diamond/comp/statistics/passedCompApptStatusSubsidiarySearch.json
 
2. Project Status 
/Diamond/comp/statistics/projectStatus, /CompStatusController.java, /comp_project_status.jsp  
/Diamond/comp/statistics/projectStatusSearch.json
==============================================================================================================

- KT 인터넷 고장 신고
1. 유선 인터넷이 안된다고 신고(거실, 방 다 유선 설치 요청)  ==> 02-100: KT 고객센터
2. 오늘 오후에 기사가 방문
3. 현상: 공유기 전원이 안들어 옴
4. 원인: 아답타쪽이 문제가 있을 확률이 큼
5. 조치: AS 기사가 방문해서 공유기 아답터 교체해서 공유기 정상으로 살아남
 1) 거실: 공유기(랜선 구입해서 연결할 것, 공부방: 유선 설치됨 
6. 기존 사용 기종[2013년 3월 구입해서 설치(새문빌라 301호)]: http://www.iptime.co.kr
1) ipTIME N704BCM  ==> http://shopping.naver.com/detail/detail.nhn?cat_id=50003150&nv_mid=6655022655&frm=NVSCMOD&query=iptime%20n704 

-고객님의 A/S 방문직원- 
ㅇ방문일시: 11월 11일 오후 14시
ㅇ방문직원: 박철웅(KT관악 지점) 
ㅇ연락처: 010-3476-2400 
==============================================================================================================

- 공유기(IP Time) 환경 설정 
1. http://192.168.0.1/login/login.cgi?search=1 
2. 무선 설정 
 1) SSID(네트워크 이름): 01_iptime_TAMA(Real)  ==> 01_iptime_TAMA_SAEMOON
 2) 무선 보안 설정 
  가. 암호화 알고리즘: WPA(AES) 
  나. WEP 키 입력 방법(수동 입력): 339000339(비밀키) 
------------------------------------------------------------------------------------------------------------------------------

- 공유기 구입
1. ipTIME A604 EFM네트웍스 공유기, 가격: 38,540원  ==> http://item2.gmarket.co.kr/Item/detailview/Item.aspx?goodscode=608762994&GoodsSale=Y&jaehuid=200002673
==> ip TIME A604 11AC 유무선공유기 / 5dBi안테나: G마켓 ==> 구입했다가 취소함
2. ipTIME A3004 EFM네트웍스 공유기, 가격: 109,500원 ==> http://auction.kr/iA5vBfz
3. 디링크 DIR-806A 기가 와이파이 공유기, 가격: 109,500원 ==> http://ddantgong.com/220161183756 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.11.12(수) 작업 ■■■■■■■■■■■■■■■
---> 07:30 ~ 20:00  ==>

- SMART TV App Mgt Prj- 호환성 통계 개발
1. 검색 조건 수정
==============================================================================================================

- 호환성 개발(검증서버에 반영)
1. 01. Test Center & State 화면 Display 하면서 데이타 조회로 변경
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2014.11.13(목) 작업 ■■■■■■■■■■■■■■■
---> 07:30 ~ 20:00  ==> 수능일(영하 1도)

- SMART TV App Mgt Prj- 호환성 통계 개발
1. 검색 조건 수정
==============================================================================================================

- checkbox를 radio 버튼 기능으로 만들기(jsp파일에서)
<script type="text/javascript"> 
	<!--     
	$("document").ready(function() { 
	/** chkSex_sect checkbox 변경 이벤트 */
	$("input:checkbox[chkSex_sect]").change(function(){ 
	$("input:checkbox[chkSex_sect]").prop("checked", false);   // 1. 전체 해제 
	this.checked='checked';  // 2. 선택한 하나의 check box 만 선택
	});   
	});   // end of ready()
	//-->
</script>

<div>
	<ul>
	<li><label for="male">Pria / <em>Male</em></label><input type="checkbox" name="chkSex_sect" id="choice_gender_01" 
	chkSex_sect="1" value="M" /></li>
	<li><label for="female">Wanita / <em>Female</em></label><input  type="checkbox" name="chkSex_sect"
	id="choice_gender_02"  chkSex_sect="2" value="F" ></li></li>
	</ul>
</div>
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2014.11.14(금) 작업 ■■■■■■■■■■■■■■■
---> 07:30 ~ 18:30  ==>

- SMART TV App Mgt Prj- 호환성 통계 개발
1. 검색 조건 수정
==============================================================================================================

- 호환성 통계 개발
1. #1502 : 엑셀 Export 시 목록이 일부만 추출됨 
1  ~ 50: 7초 소요
1  ~ 100: 11초 소요 
1  ~ 150: 19초 소요 
1  ~ 200: 25초 소요 
1  ~ 1228: 약 5분 소요
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.11.15(토) 작업 ■■■■■■■■■■■■■■■
---> 07:30 ~ 20:00  ==>

- 주말
06:15 기상
06:40 국민은행 봉천동지점 앞(태훈이형 차)
06:50 신구초등학교
07:20 숏게임
08:30 종료
09:10 귀가
09:30 조식(식빵)
11:20 자전거 자물쇠 구입(현대아울렛DC) ==> 열쇠번호: 4541  
11:30 루옌 핸드폰 구입(아이폰 6+ 16G)
     ==> 다함께 LTE 42 요금제(무료 통화 300분, 데이타: 750G), 24개월 약정: 월 납부액 약 6만원
     ==> 2014.11.17(월) 개통 예정 -> SKT 관악 직영점, 신진근(010-5000-7334)
     ==> 기존 폰 해지(73,940원[10월 11월 요금])하고 신규로 함
     ==> SK TB끼리 온가족 무료(3명 추가[큰누나, 매형]): 월 천원 할인(가족관계증명서 첨부)
13:10 종료
13:20 귀가
13:40 중식
13:20 IPTV 무료 영화 관람(잡스) 
17:00 집출발
17:20 자전거 바람 넣기(서울대입구역, 무료 공기 주입기): 보유하고 있는 공기 주입 밸브(뒷 바퀴 바람 다 빠짐)
17:50 행복 자전거점(봉천역 근처): 자전거 끌고 감 ==> 주인이 자기고 있는 공기 주입 밸브로 바람 넣음
18:20 로젠(삼보타운 지하 2층)에 가서 무료로 크리스탈액자 찾음(생각보다 작음)
19:00 귀가
19:30 석식
24:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.11.16(일) 작업 ■■■■■■■■■■■■■■■
---> 07:30 ~ 20:00  ==>

- ▦조기축구
06:15 기상(늦게 일어나서 아침 식사 못함)
06:45 집출발
06:55 빵 구입(브레드몽드): 4개
07:00 서울대입구역 정류장 도착[서울대학교입구전철역  21-833(서울)]
07:10 6003번 공항 버스 탑승
08:30 인천공항 도착(1시간 20분 걸림): 차 안 막힘
08:40 입국 수속(3층 장모님 짐: 24kg) 
	==> 체크인 카운터: D19-D36(3층 출국장), 탑승구: 111, 베트남항공(417편)
	==> 갤럭시 S3(루옌 폰), 베가 R3(내 폰) 베트남 처남에게 선물로 보냄
08:50 장모님 2번 게이트로 들어감
09:40 종료
10:00 왕중왕전 예선(09:00 ~ 10:00)  신사 0:1 역삼(수도공고) ==> 전화 해보니 졌다고 함
10:00 인천국제공항역(공항철도): 3,950원
11:00 홍대역(2호선 환승)
11:30 서울대입구역
11:40 중식(치킨 덮밥, 짜장면, 떡 ): 포마토 서울대점
12:40 종료
13:00 귀가
13:20 낮잠
19:30 석식
20:30 작은 누나에게 가족할인 때문에 전화함(진태규가 전화해서 돈 빌려 달라고 했다고 함, 대구에서사고 침)
24:00 취침
==============================================================================================================

- 집 난방(2014.11.22) 
1. 실내: 23도 
2. 온돌: 45도 
3. 온수: 55도
-------------------------------------------------------------------------------------------------------

- 경동 나비엔 보일러 배관 구조[순서: 오른쪽에서 왼쪽으로]
1. 거실[현재 사용]
2. 안방(큰방)
3. 작은방1[현재 사용]
4. 작은방2(서재)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.11.17(월) 작업 ■■■■■■■■■■■■■■■
---> 07:30 ~ 20:00 ==> 

- SMART TV App Mgt Prj- 호환성 통계 개발
1. 검색 조건 수정
==============================================================================================================

- 루옌 핸드폰 개통(14시) 
1. 루옌 핸드폰 구입(아이폰 6+ 16G) 조건
1) 다함께 LTE 42 요금제(무료 통화 300분, 데이타: 750M), 24개월 약정: 월 납부액 약 6만원 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.11.18(화) 작업 ■■■■■■■■■■■■■■■
---> 07:30 ~ 18:30 ==> 

- SMART TV App Mgt Prj- 호환성 통계 개발
1. 검색 조건 수정
==============================================================================================================

- 공차장 SM 제의(22시)
1. 기간: 2015.01 ~ 12
2. 장소: 보라매역 근처
3. 단가: 월 500(중식, 석식 무료)
4. SW경력증명 갱신
5. 기타:
 1) 12월 중순 결정난다고 함
 2) 월차 있음
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.11.19(수) 작업 ■■■■■■■■■■■■■■■
---> 07:30 ~ 20:00 ==> 

- SMART TV App Mgt Prj- 호환성 통계 개발
1. excel 다운로드 수정
1) 에러 내용: 파일 확정명에서 지정한 형식과 다릅니다.
==============================================================================================================
 
- Excel 다운로드
http://hiddra.blog.me/20116105384
POI 이용한 EXCEL 로 데이타 다운로드 예제 ==> http://ejaeyeol.blog.me/134259206
[JSP] POI Excel 다운로드 샘플  ==> http://my1over.blog.me/120162397685
[jsp] excel 다운로드 ==> http://www.cyworld.com/bonoken/3954850
==============================================================================================================

- SW경력증명 확인(22시)
1. SW 기술자신고 ==> https://www.sw.or.kr/join/j_login.jsp ==> tamario / hpxoaks12!@ (lvfndPs12!)
2. T) 02-2188-6980
3. 고급 판정 일자: 2008-06-22 
--------------------------------------------------------------------------------------------------

- 수수료 
1. 기술 경력 증빙서류(등록시): 25,000원
2. 소프트웨어기술자의 경력관리(추가 등록시): 연 5,000원 
3. 소프트웨어 기술자경력관리시스템] 전자문서 신청(기술자) 및 전자문서 승인(기업) 방법  
http://blog.naver.com/kindz3/90177876056 
---------------------------------------------------------------------------------------------------------

- 기술 경력 증빙서류
소프트웨어기술분야의 경력을 인정받고자 하는 자는 다음 각 호 중 하나로 확인된 서류를 제출하여야 합니다.
1. 소프트웨어 기술업무 수행을 확인할 수 있는 발주처 또는 소속사가 확인한 시행규칙 별지 제22호 서식인 기술경력확인서 원본
2. 소프트웨어 기술업무 수행을 확인할 수 있는 용역계약서 원본 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.11.20(목) 작업 ■■■■■■■■■■■■■■■
---> 07:30 ~ 20:00 ==> 

- SMART TV App Mgt Prj- 호환성 통계 개발
1. excel 다운로드 수정
1) 에러 내용: 파일 확정명에서 지정한 형식과 다릅니다.
==============================================================================================================

- Defect 처리
No. 86 Test Center & State 화면에서 Tester 삭제 기능을 제외처리할 것 ==> 처리
No. 87 Test Center & State > Reassign Test Center가 지정되지 않은 앱에 Tester가 지정되어 있음.  ==> 데이타 삭제 의심
==============================================================================================================

- 엑셀 EXPORT 성능 개선
엑셀 EXPORT 성능 개선을 위해서 엑셀에서 추출되는 파일 형식을 xls 에서 xlsx로 변경하였습니다. 
참고 소스 : /com.samsung.element/src/main/java/com/samsung/element/beans/wrapper/ElementExcelView.java 
성능 테스트 결과 3000건(호환성 App 리스트 Export) (실제 POI 로 엑셀 쓰는 시간) 성능 개선 확인되었습니다. (로컬 PC기준)
- 기존 : 10~15분 소요
- 변경 : 2~3분 소요
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.11.21(금) 작업 ■■■■■■■■■■■■■■■
---> 07:30 ~ 20:00 ==> 

- SMART TV App Mgt Prj- 호환성 통계 개발
1. excel 다운로드 수정
1) 에러 내용: 파일 확정명에서 지정한 형식과 다릅니다.
==============================================================================================================

- 검증서버 TEST
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.11.22(토) 작업 ■■■■■■■■■■■■■■■
---> 11:00 ~ 18:00 -->

- 주말
07:00 기상(비와서 축구 못 감)
11:30 집출발
11:00 SKT 관악직영 SHOP(가족관계증명서(가족할인) 주고 아이폰 6+ 범퍼 케이스 받아 옴)
11:30 모태산부인과 => 수막구균(멘비오) 예방 접종[13만원], 독감 예방 접종 2차[2만원]
12:30 귀가 
12:50 중식 
14:30 낮잠
17:30 기상
17:50 삼천리 자전거점(뒷 바퀴 바람 넣음)
18:00 다이소 서울대점(액자 구입)
19:00 귀가
19:30 액자 설치(포항집, 누나 선물 액자 조립)
20:00 석식 
24:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.11.23(일) 작업 ■■■■■■■■■■■■■■■
---> 11:00 ~ 18:00 

- ▦조기축구
07:00 기상
07:20 낙성대동 버스 정류장(642번)
08:10 신구초등학교
08:20 게임(3게임): 도곡 조기회
11:20 종료
11:40 중식(우거지탕: 미성 상가 지하 1층[기배 고문 가게): 만원 냄
==> S마트 거래 끊어진 것에 대해 총무와 병규형이 논쟁을 함
13:20 종료
14:30 귀가(프엉 아들 집에 와서 놀고 있음, 유모차 란에게 줬다고 함)
14:50 냦잠 
17:20 기상
18:30 석식
19:00 이발(루옌 TV 많이 보고 아들 안 본다고 삐짐)
24:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.11.24(월) 작업 ■■■■■■■■■■■■■■■
---> 07:30 ~ 20:00 ==> 

- SMART TV App Mgt Prj- 호환성 통계 개발
1. Passed Comp. App Status  
 1) Passed Comp. App Status_Service Country ==> More 버튼(More page 설정) 생성
==============================================================================================================

- 오라  WITH ~AS 절
WITH구문에 VIEW명칭을 지정하고 () 안에 VIEW쿼리를 작성하고 
바로 아래 SELECT구문에서 VIEW처럼 사용할 수 있다.  
WITH TEMP1 AS (SELECT 'A' AS COL1, 'B' AS COL2 FROM DUAL),
TEMP2 AS (SELECT 'C' AS COL3, 'D' AS COL4 FROM DUAL),
TEMP3 AS (SELECT 'E' AS COL5, 'F' AS COL6 FROM DUAL)
SELECT COL1, COL2, COL3, COL4, COL5, COL6 
FROM TEMP1, TEMP2, TEMP3
;
==============================================================================================================

- JTREE 체불임금 관련 카톡 옴
1. 체당금 신청하라고 함
==============================================================================================================

- 아이폰 6+ 케이스 
1. 아이폰 6 +  레즈락 케이스 B Series, 가격: 20,900원 ==> http://item2.gmarket.co.kr/Item/detailview/Item.aspx?goodscode=630091681&GoodsSale=Y&jaehuid=200002673
2. 아이폰 6 레즈락 케이스, 가격: 18,480원 ==> http://auction.kr/iBIP7mE
==============================================================================================================

- 기상청
http://www.kma.go.kr/weather/main.jsp ==> tamario / hp태*1*1*
==============================================================================================================

- 우리은행
https://www.wooribank.com ==> tamario / hp태*1*@
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.11.25(화) 작업 ■■■■■■■■■■■■■■■
---> 07:30 ~ 20:00 ==> 

- SMART TV App Mgt Prj
- 호환성 통계 개발
1. Passed Comp. App Status  
 1) Passed Comp. App Status_Service Country  ==> More 버튼(More page 설정) 생성
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.11.26(수) 작업 ■■■■■■■■■■■■■■■
---> 07:30 ~ 20:00 ==> 

- SMART TV App Mgt Prj
- 호환성 통계 개발
1. Passed Comp. App Status  
 1) Passed Comp. App Status_Service Country ==> More 버튼(More page 설정) 생성
/ passed_comp_app_status_tab.jsp 
/ passed_comp_app_status_service_country.jsp ==> Service Country
/ passed_comp_app_status_subsidiary.jsp  ==> Subsidiary
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.11.27(목) 작업 ■■■■■■■■■■■■■■■
---> 07:30 ~ 20:00 ==> 

- SMART TV App Mgt Prj
- 호환성 통계 개발
1. Passed Comp. App Status  
 1) Passed Comp. App Status_Service Country  ==> More 버튼(More page 설정) 생성
/ passed_comp_app_status_tab.jsp 
/ passed_comp_app_status_service_country.jsp ==> Service Country
/ passed_comp_app_status_subsidiary.jsp  ==> Subsidiary
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.11.28(금) 작업 ■■■■■■■■■■■■■■■
---> 07:30 ~ 18:30 ==> 

- SMART TV App Mgt Prj
- 호환성 통계 개발
1. Passed Comp. App Status  
 1) Passed Comp. App Status_Service Country  ==> More 버튼(More page 설정) 생성
/passed_comp_app_status_tab.jsp 
/passed_comp_app_status_service_country.jsp ==> Service Country
/passed_comp_app_status_subsidiary.jsp  ==> Subsidiary
==============================================================================================================

- 메뉴 등록
1. 메뉴명: Passed Comp. App Status Service Country Excel 다운로드
2. 메뉴 URL: /Diamond/comp/assign/statistics/passed_comp_app_status_country/excellist
1. 메뉴명: Passed Comp. App Status Subsidiary Excel 다운로드
2. 메뉴 URL: /Diamond/comp/assign/statistics/passed_comp_app_status_subsidiary/excellist
1. 메뉴명: Comp. Project Status Excel 다운로드
2. 메뉴 URL: /Diamond/comp/assign/statistics/comp_project_status/excellist
==============================================================================================================

- 포항행
18:40 퇴근
20:50 귀가
21:00 석식
22:00 이력서 작성(기상청)해서 공차장에게 메일(hgong@nextel.co.kr)로 보냄
23:10 집출발(지하철)
24:00 강남터미널 
24:30 고속버스(서울 -> 포항, 00:30, 심야우등): 포항행
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.11.29(토) 작업 ■■■■■■■■■■■■■■■
---> 07:30 ~ 18:30 ==> 

- 포항행2
03:00 선산 휴게소
03:40 수종 울어서 승객들이 다 깸(기사가 차 세움)
==> 수종 너무 많이 울고 난리 피움(다시는 버스 타지 말 것)
04:30 포항 고속터미널 도착
04:40 택시(포항터미널 -> 포항집)
05:50 포항집 도착
06:00 취침
12:00 기상
12:20 중식
14:30 낮잠(루옌, 수종 토와집에 갔다 옴)
17:30 큰누나 방문 
18:00 석식
19:00 이발
23:00 취침
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2014.11.30(일) 작업 ■■■■■■■■■■■■■■■
---> 07:30 ~ 18:30 ==> 

- 묘사  
09:00 기상 
09:00 묘사 준비
10:30 GS 수퍼 두호점 방문(과자, 네임펜)
11:00 귀가
11:20 병엽 아제 도착
11:40 아제들 도착
12:20 묘사(루옌, 수종 처음 참석) 
==> 수종 용돈 받음[대규, 작은 아버지, 병일이 아제, 판섭이 고모(3만원)] => 총 6만원 받음(저금통에 넣음)
==> 시사 조문 쓰기 사진 촬영(내년에는 보고 쓸 것)
12:50 묘사 종료
13:20 식사
13:30 종욱이 아제 도착
13:50 판섭이 고모, 동욱이 고모 내외 도착
15:30 종료
18:30 석식
19:00 포항집 출발
19:10 택시(포항집 -> 포항터미널): 동대구행
19:30 버스(포항 -> 동대구)
20:50 동대구역
21:25 KTX[동대구역 -> 서울역[11.30([일)] 21:25, -> 340, 역방향]
==> 수종 조금 보챔(같은 자리 아줌마가 잘 해줌)
==> 앞으로 KTX는 광명역에서 타고 내릴 것(비용 절감)
23:25 서울역 도착 
23:35 택시(서울역 -> 봉원중, 8,600원)
23:55 귀가
00:20 취침  
==============================================================================================================

- 묘사 참석 인원 @@@@
1. 아버지, 어머니
2. 태만 내외(아들)
3. 작은 아버지
4. 대규
5. 종욱이 아제, 숙모
6. 병오 아제
7. 병일 아제, 숙모(아들 2명)
8. 병엽 아제, 숙모(아들)
0. 종욱 고모, 고모부
0. 판섭 고모
==> 총 19명 참석
==> 묘사 비용 총 40만원(결혼 집당 5만원 냄) 
==============================================================================================================

- Passed Comp. App Status Tab 설정
1. passed_comp_app_status_tab.jsp 파일에서
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<spring:eval var="pageInfo" expression="(pageInfoLib).getPageInfo()" />
<sec:authentication property="principal.userMap['${pageInfo.site.sysId}']" var="user"/>

<script type="text/javascript"> 
	;(function() {
		CommUtils.useLog = false;
		var log = function() {
		CommUtils.log('passed_comp_app_status_tab.jsp ${param.tabId}', arguments);
	};
	 
	var body = null;
	$(document).ready(function() {
		body = $("#${param.tabId}");
		 
		$(body).find("[name='${param.tabId}_assign_service_country_tab']").removeClass("dp_none").show();   // 01. Service Country  Tab
		$(body).find("[name='${param.tabId}_assign_subsidiary_tab']").removeClass("dp_none").show();   //  02. Subsidiary Tab

		var tab = $(body).find("[name='${param.tabId}_assign_tab_ul']").find("li:not(.dp_none):eq(0)");
		$(tab).addClass("on");
	}); 
	})();
</script>

<!-- Page Contents Start -->
<section class="wrap_page"> 
<h1 class="tit_page">Passed Comp. App Status</h1><!-- //Page Title -->

<!-- Tab -->
<ul class="bd_bottom tab_sub top" style="margin-top:-25px;" name="${param.tabId}_assign_tab_ul">
<li class="dp_inBlock dp_none" style="display:none" name="${param.tabId}_assign_service_country_tab"><a href="#" onclick="void(0); 
return false;" class="no_underline text_center">Service Country</a></li> <!--// 01. Service Country Tab //-->
 <li class="dp_inBlock dp_none" style="display:none" name="${param.tabId}_assign_subsidiary_tab"><a href="#" onclick="void(0); 
 return false;" class="no_underline text_center">Subsidiary</a></li><!--// 02. Subsidiary Tab //-->
</ul>
<!-- //Tab --> 
 <!--  01. Service Country  -->
<%@ include file="/WEB-INF/view/sapphire/backoffice/compatibilityapp/verification/passed_comp_app_status_service_country.jsp"%>
<!-- //Service Country  -->

<!-- 02. Subsidiary -->
 <%@ include file="/WEB-INF/view/sapphire/backoffice/compatibilityapp/verification/passed_comp_app_status_subsidiary.jsp"%>
<!-- //Subsidiary --> 

</section>
==============================================================================================================
 
2. passed_comp_app_status_service_country.jsp 파일에서 ==> 조회 조건(check box, combo box. select box)
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:eval var="pageInfo" expression="(pageInfoLib).getPageInfo()" />

<script type="text/javascript">
;(function(){
CommUtils.useLog = false;
var log = function() {
CommUtils.log('passed_comp_app_status_service_country.jsp ${param.tabId}', arguments);
};

var tabId = '${param.tabId}';
var tabName = '${param.tabName}';
var body = null;
var bodyTab = null;
var datatablesUi = null;
var compYearCmb = null;
var platformCmb = null;
var tierCmb = null;
var roundFrCmb = null;
var roundToCmb = null;
var signatureCmb = null;
var codeReviewCenterCmb =null;
var exceptYnRdo =  null;
var categoryChb = null;
var strCurrentTotal = 0;
var strRecordsTotal = 0;

$(document).ready(function() { 
body = $("#${param.tabId}");
bodyTab = $("#${param.tabId}_comp_app_status_service_country");

$(body).find("ul.tab_sub li a").click(function() {
if($(this).text() == 'Service Country') {    // Service Country Tab을 클릭하면
if(datatablesUi == null) { 
init();
initEvent();
initDatatablesUi();
} else {
doSearchFirstSrch();
}
}
});

var tab = $(body).find("[name='${param.tabId}_assign_tab_ul']").find("li.on:eq(0) a");
if( $(tab).text() == 'Service Country' ){
$(tab).trigger("click");
}
});

function init(){
var param = {};
param["currentTotal"] = 0;
param["optMoreCnt"] = "50";
param["strFirstSearch"] = "";

// 01. Year( Combo Box )[search]
compYearCmb = new selectBoxUi($(bodyTab).find("[name='${param.tabId}_compYearCmb']"));
compYearCmb.load(BackofficeCompCode.getCompYearList("${pageInfo.site.sysId}", "" , false , ""), "All");
compYearCmb.setSelectedValue("2015");

// 02 Platform( Combo Box: Multi )[search]
var platformData = BackofficeCompCode.getPlatformList("${pageInfo.site.sysId}", "" , false , "");
platformCmb = new backofficeMultSelectUi($(bodyTab).find("[name='${param.tabId}_platformCmb']"));
platformCmb.load(platformData,true);
platformCmb.setCheckedIndex(0);

// 03. Except( Radio Box )[search]
exceptYnRdo = new backofficeRadio($(bodyTab).find("[name='${param.tabId}_exceptYnRdo']") );
exceptYnRdo.addItem({"codeId" : "Y", "codeName" : "Yes"});
exceptYnRdo.addItem({"codeId" : "N", "codeName" : "No"});

 // 05. Signature( Combo Box: Multi )[search]
var sgntrData = selectCodeRe("${pageInfo.site.sysId}", "AP.SGT", false, "");
signatureCmb = new backofficeMultSelectUi($(bodyTab).find("[name='${param.tabId}_signatureCmb']"));
signatureCmb.load(sgntrData,true);
signatureCmb.setCheckedIndex(0);

// 06. roundFr( Check Box )[search]
var roundFrData = BackofficeCompDfctObj.getRoundCmbListRe("${pageInfo.site.sysId}", "" , false , "");
roundFrCmb =  new selectBoxUi($(bodyTab).find("[name='${param.tabId}_roundFrCmb']"));
roundFrCmb.load(roundFrData, "All");
roundFrCmb.setSelectedValue("");

var roundToData = BackofficeCompDfctObj.getRoundCmbListRe("${pageInfo.site.sysId}", "" , false , "");
roundToCmb =  new selectBoxUi($(bodyTab).find("[name='${param.tabId}_roundToCmb']"));
roundToCmb.load(roundToData, "All");
roundToCmb.setSelectedValue("");

// 07. Code Review Center( Combo Box )[search]
var cmCntrParam = {};
cmCntrParam["cntrTypCd"] = "CM.CNTRT.CCR";  // CM.CNTRT.CCR[Comp. Code Review]
var codeReviewCenterData = BackofficeCode.selectCmCntr("${pageInfo.site.sysId}", cmCntrParam, false, "");
codeReviewCenterData = BackofficeUtil.conversionByCodeId(codeReviewCenterData, "CNTR_ID", "CNTR_NM");
codeReviewCenterCmb = new selectBoxUi($(bodyTab).find("[name='${param.tabId}_codeReviewCenterCmb']"));
codeReviewCenterCmb.load(codeReviewCenterData, "All");
codeReviewCenterCmb.setSelectedValue("");

// 09. category( Check Box )[search]
categoryChb = new Element.List($(bodyTab).find('#categoryChb'), {
useCheckBox: true,
useMultiSelect: true,
direction: 'right',
type: 'checkbox',
onCreated: function(id, text, tag, li) {
li.css({
'padding-right': '20px'
});
}
});

categoryChb.addItem('0', 'All');
categoryChb.addItem('1000000019', 'Videos');
categoryChb.addItem('1000000020', 'Sports');
categoryChb.addItem('1000000021', 'Game');
categoryChb.addItem('1000000022', 'Lifestyle');
categoryChb.addItem('1000000023', 'Information');
}

function initEvent(){
//alert("[/passed_comp_app_status_service_country.jsp] [initEvent()] ==> [btnSearch_click]" );

$(bodyTab).find("button[name='btnSearch']").click(function(){// 00. Search Click()
doSearch();
});

$(bodyTab).find("a[name='reset']").click(function(){
doReset();
}); 
}

function initDatatablesUi() { 
 showLoading();
 var params = setParams(0);

datatablesUi = new DatatablesUi($(bodyTab).find('#${param.tabId}_comp_app_status_service_country_table'), {
dataId: '${pageInfo.menu.menuId}-table101' // 필드세팅 값 저장/가져올 때 필요 (전체 화면에서 유일한 값으로 지정해야 함. 예) pageId + 'table1')
, revision: 0// 필드세팅하면 저장된 columnDefs 설정을 불러오므로 revision을 올려서 사용할 것...
, param: params
, bAutoWidth: false
, bSort: false
, processing: false
, destroy: true
, dataURL: '/${pageInfo.site.sysId}/comp/statistics/passedCompApptStatusCountrySearch.json'
, columnDefs: [
      {
      targets: 0   // 01. Country Column
      , data: 'CNTRY_ENG_NM'
      , title: 'Country'
      , name: 'Country'
      , width: '450px'
      }
      , {
      targets: 1 // 02. Platform Column
      , data: 'PLATFORM'
      , title: 'Platform'
      , name: 'Platform'
      , width: '250px'
      }
      , {
       targets: 2// 03. S1 Passed Column[colspan]
      , data: 'S1_PASSED_VIEW'
      , title: 'Passed'
      , name: 'S1 Passed'
   , width: '150px'
   , render: function ( cellData, type, rowData ) {
   return cellData.format(1);
   }
      , createdCell: function ( td, cellData, rowData, row, col ) {
   $(td).attr('align', 'center');
   }
      }
      , {
      targets: 3// 04. S1 App Column
      , data: 'S1_APP'
      , title: 'App'
      , name: 'S1 App'
     , width: '150px'
    , createdCell: function ( td, cellData, rowData, row, col ) {
    $(td).attr('align', 'center');
    }
      }
      , {
      targets: 4// 05. S2 Passed Column
      , data: 'S2_PASSED_VIEW'
      , title: 'Passed'
      , name: 'S2 Passed'
    , render: function ( cellData, type, rowData ) {
   return cellData.format(1);
   }
      , createdCell: function ( td, cellData, rowData, row, col ) {
   $(td).attr('align', 'center');
   }
      }
      , {
      targets: 5// 06. S2 App Column
      , data: 'S2_APP'
      , title: 'App'
      , name: 'S2 App'
     , createdCell: function ( td, cellData, rowData, row, col ) {
   $(td).attr('align', 'center');
   }
      }
      , {
      targets: 6// 07. S3 Passed Column
      , data: 'S3_PASSED_VIEW'
      , title: 'Passed'
      , name: 'S3 Passed'
    , render: function ( cellData, type, rowData ) {
   return cellData.format(1);
   }
      , createdCell: function ( td, cellData, rowData, row, col ) {
   $(td).attr('align', 'center');
   }
      }
      , {
      targets: 7// 08. S3 App Column
      , data: 'S3_APP'
      , title: 'App'
      , name: 'S3 App'
      , createdCell: function ( td, cellData, rowData, row, col ) {
      $(td).attr('align', 'center');
      }
       }
      , {
      targets: 8// 09. Total Passed Column
      , data: 'TOTAL_PASSED_VIEW'
      , title: 'Passed'
      , name: 'Total Passed'
    , render: function ( cellData, type, rowData ) {1
   return cellData.format(1);
   }
      , createdCell: function ( td, cellData, rowData, row, col ) {
   $(td).attr('align', 'center');
   }
      }
      , {
      targets: 9// 10. Total App Column
      , data: 'TOTAL_APP'
      , title: 'App'
      , name: 'Total App'
     , createdCell: function ( td, cellData, rowData, row, col ) {
     $(td).attr('align', 'center');
     }
      }
      ]
, onPreXhr: function() {
showLoading();
}
, onLoadFail: function() {// 로드 실패시 콜백
hideLoading();
}
, onLoadComplete: function(response) {  // 로드 성공시 콜백
hideLoading();

if (response.result == 'ok') {
$(bodyTab).find('#spanTotalCnt').text(response.recordsTotal);
strRecordsTotal = response.recordsTotal;
 
if(response.currentTotal == null  response.currentTotal=="undefined") {
strCurrentTotal = 0;
} else {
strCurrentTotal = response.currentTotal;
}
var param = datatablesUi.getParam();
$(param).attr("currentTotal", strCurrentTotal);
$(param).attr("recordsTotal", response.recordsTotal);
//alert("[/passed_comp_app_status_service_country.jsp] [initDatatablesUi()] [onLoadComplete()] [onLoadComplete_조회 Done] 
==> [[strCurrentTotal]"+ strCurrentTotal +"[response.recordsTotal]"+ response.recordsTotal );
datatablesUi.setParam(param);

} else {
$(bodyTab).find('#spanTotalCnt').text('0');
alert('Data load failure!');
}
}
, "drawCallback": function( settings ) {// draw 콜백
var table = $(bodyTab).find('#${param.tabId}-table'); 
 /* $(bodyTab).find('tbody tr').each(function(i, obj){
for (var i=0; i<7; i++) {
$(obj).find('td').last().remove();
}
}); */
},
onClickBtnMore: function(e) {// onClickBtnMore Click 
if( eval($(datatablesUi.getParam()).attr("currentTotal")) < eval($(datatablesUi.getParam()).attr("recordsTotal")) ){
var param = datatablesUi.getParam();
$(param).attr("optMoreCnt", datatablesUi.getLengthMenuValue() );
//alert("[/passed_comp_app_status_country.jsp] [initDatatablesUi()] [onClickBtnMore()] ==> [optMoreCnt]"+ 
datatablesUi.getLengthMenuValue() +"[currentTotal]"+ eval($(datatablesUi.getParam()).attr("currentTotal")) );
datatablesUi.setParam(param);
datatablesUi.movePage(0);
}else{
alert("No more data is available");
return false;
}
}
, lengthMenu: [
[50, 100, 200],
['50 View', '100 View', '200 View']
]
, useExport: false// Export 기능 (flash)
, useColumnSetting: true// 컬럼 조정 기능 사용여부
, useInfinitePaging: true
, onChangeLengthMenu: function(val) {}
, useInfinitePaging: true, // 아래로 계속 추가되는 페이징 모드
});
}

function doSearch(){// 00. Search Click() 
datatablesUi.clearParam();
datatablesUi.clearSearchParam();

var params = setParams(1);
datatablesUi.setParam(params);
datatablesUi.reload();
}

function doSearchFirstSrch(){// 00. Search(First Search) Click()
datatablesUi.clearParam();
datatablesUi.clearSearchParam();

var params = setParams(0);
datatablesUi.setParam(params);
datatablesUi.reload();
}

function setParams(intNo) { 
var param = {};
if(strCurrentTotal == null  strCurrentTotal == "null"  strCurrentTotal =="undefined") {
strCurrentTotal = 0;
}
 if( intNo == 1  intNo == 2 ) {  //  doSearch, Excel 이면
param["strFirstSearch"] = "1";
} else {// initDatatablesUi  이면
param["strFirstSearch"] = "";
}
param["APP_ID"] = "test";
param["currentTotal"] = strCurrentTotal;
param["optMoreCnt"] = "50";

 // 01. Year( Combo Box )[search]
 param["compYear"] = compYearCmb.selectedValue(); // comp year
// 02. Platform( Combo Box: Multi )[search]
 var platformArr = platformCmb.getCheckedItem();
for( var i=0; i<platformArr.length; i++ ){
param["platformArr["+i+"]"] = platformArr[i];
}
// 03. Except( Radio Box)[search]
param["exceptYn"] = exceptYnRdo.getCheckedItem();
// 04. Comp.Type YN( Radio Box)[search]
//param["compTypeYn"] = compTypeRdo.getCheckedItem();
// 05. Signature( Combo Box: Multi )[search]
var signatureArr = signatureCmb.getCheckedItem();
for( var i=0; i<signatureArr.length; i++ ){
param["signatureArr["+i+"]"] = signatureArr[i];
}
// 06. Round( Combo Box )[search]
if (roundFrCmb.selectedValue() == 'All'  roundToCmb.selectedValue() =='All') {
param["roundFr"] = null;
param["roundTo"] = null;
} else {
param["roundFr"] = roundFrCmb.selectedValue();
param["roundTo"] = roundToCmb.selectedValue();
}
// 07. Code Review Center( Combo Box )[search]
param["codeReviewCenter"] = codeReviewCenterCmb.selectedValue();
// 08. Service Country( CheckBox )[search]
var serviceCountryChbAll_YN = null;
$("input[name='serviceCountryChbAll']:checked", body).each(function(index){
serviceCountryChbAll_YN = "Y";
});
if (serviceCountryChbAll_YN =='Y') {  // all 이면
} else {
var chlen = $("input[name='serviceCountryChb']:checkbox:checked",body).length;
$("input[name='serviceCountryChb']:checked", body).each(function(index){
for( var i=0; i<chlen; i++ ){
param["serviceCountryArr["+i+"]"] = $(bodyTab).find("[name='serviceCountryChb']")[i].value;
}
});
}
// 09. category( Check Box )[search]
var categoryArr = categoryChb.getSelectedIdArray();
for( var i=0; i<categoryArr.length; i++ ){ 
param["categoryArr["+i+"]"] = categoryArr[i];
}

return param;
}

function doReset(){// 00. doReset Click()
//compYearCmb.setSelectedValue("");// 01. Year( Combo Box )[search]
platformCmb.setCheckedIndex(0);// 02. Platform( Combo Box: Multi )[search]
$(body).find("[name='${param.tabId}_exceptYnRdo']").prop('checked', false);// 03. Except( Radio Box)[search]
//$(body).find("[name='${param.tabId}_compTypeRdo']").prop('checked', false);// 04. Comp.Type YN( Radio Box)[search]
signatureCmb.setCheckedIndex(0);// 05. Signature( Combo Box: Multi )[search]
roundFrCmb.setSelectedValue("");// 06. Round( Combo Box )[search]
roundToCmb.setSelectedValue("");// 06. Round( Combo Box )[search]
codeReviewCenterCmb.setSelectedValue("");// 07. Code Review Center( Combo Box )[search]
$(body).find("[name='serviceCountryChb']").prop('checked', false);// 08. Service Country( CheckBox )[search]
categoryChb.clearSelected();// 09. category( Check Box )[search]
}

function selectCodeRe(sysId, upperCodeId, async, fnCallBack){
var result = "";
$.ajax({
type : "POST",
url : "/" + sysId + "/comp/commCode/selectCommCode/data.json",
dataType :'json',
data : {"upperCodeId" : upperCodeId, "isDelete" : 0},
async : async,
success : function(response){
if(async) {
if( $.isFunction(fnCallBack) )fnCallBack(response.dataList);
}else{
result = response.dataList;
}
} ,
error:function (request, err, ex) {
hideLoading();
alert(err + " ===> " + ex);
}
});
return result;
}

})();
</script>
 
<!-- Service Country -->
<section id="${param.tabId}_comp_app_status_service_country" class="tab_subcon dp_none">
<section class="tab_subcon clear">
 <h2 class="vi_out">Service Country</h2>
 <!-- search -->
 <section class="searchbox">
<h2 class="vi_out">Search</h2>
<ul>
<!--// Year //-->
<li class="col1">
<span class="tit_search">Comp. Year</span>
<!-- select -->
<div class="select wide" name="${param.tabId}_compYearCmb"></div>
<!-- //select -->
</li>
<!--// Year ///-->

<!--// Platform //-->
<li class="col1">
<span class="tit_search">Platform</span>
<!-- select -->
<div class="select wide" name="${param.tabId}_platformCmb"></div>
<!-- //select -->
</li>
<!--// Platform ///-->

 <!--// Except //-->
<li class="col1">
<span class="tit_search">Except </span>
<ul class="dp_inBlock" name="${param.tabId}_exceptYnRdo"></ul>
</li>
<!--// Except ///-->

<!--// Comp.Type //-->
<%-- <li class="col1">
<span class="tit_search">Comp.Type</span>
<ul class="dp_inBlock" name="${param.tabId}_compTypeRdo"></ul>
</li> --%>
<!--// Comp.Type ///-->

<!-- Signature -->
<li class="col1">
<span class="tit_search">Signature</span>
<!-- select -->
<div class="select wide" name="${param.tabId}_signatureCmb"></div>
<!-- //select -->
</li>
<!--// Signature ///-->

<!--// Round //-->
<li class="col1">
<span class="tit_search">App Round</span>
<!-- select -->
<div class="select smr" name="${param.tabId}_roundFrCmb"></div>  
~ <div class="select smr" name="${param.tabId}_roundToCmb"></div>
<!-- //select -->
</li>
<!--// Round ///-->

<!-- Code Review Center -->
<li class="col1">
<span class="tit_search">Code Review Center</span>
<!-- select -->
<div class="select wide" name="${param.tabId}_codeReviewCenterCmb"></div>
<!-- //select -->
</li>
</ul>

<!-- hidden area --->
<ul class="con_search_more" style="display:none;">
 <!-- <ul class="con_search_more"  > -->
 <!--// Service Country //-->
<li class="col3">
<span class="tit_search" style="display:table-cell; vertical-align:top">Service Country</span>
<div class="dp_cell" style="padding-left:4px">
<label class="con_mr_longer dp_inBlock con_mb_short"><input type="checkbox"  name="serviceCountryChbAll" value="0" >All</label>

<label class="con_mr_longer dp_inBlock con_mb_short" style="width:150px"><input type="checkbox"  name="serviceCountryChb"  value="CM.SBGRP.AF" >Africa</label>
                    <label class="con_mr_longer dp_inBlock con_mb_short" style="width:150px"><input type="checkbox"  name="serviceCountryChb"  value="CM.SBGRP.CIS" >CIS</label>
                    <label class="con_mr_longer dp_inBlock con_mb_short" style="width:150px"><input type="checkbox"  name="serviceCountryChb"  value="CM.SBGRP.CH" >China</label>
                    <label class="con_mr_longer dp_inBlock con_mb_short" style="width:150px"><input type="checkbox"  name="serviceCountryChb"  value="CM.SBGRP.EU" >EU</label>
                    <label class="con_mr_longer dp_inBlock con_mb_short" style="width:150px"><input type="checkbox"  name="serviceCountryChb"  value="Global" >Global</label>
                    <label class="con_mr_longer dp_inBlock con_mb_short" style="width:150px"><input type="checkbox"  name="serviceCountryChb"  value="CM.SBGRP.SA" >Latin America</label>
                    <label class="con_mr_longer dp_inBlock con_mb_short" style="width:150px"><input type="checkbox"  name="serviceCountryChb"  value="CM.SBGRP.ME" >Middle East</label>
                    <label class="con_mr_longer dp_inBlock con_mb_short" style="width:150px"><input type="checkbox"  name="serviceCountryChb"  value="CM.SBGRP.NA" >North America</label>
                    <label class="con_mr_longer dp_inBlock con_mb_short" style="width:150px"><input type="checkbox"  name="serviceCountryChb"  value="CM.SBGRP.SEA" >South East Asia</label>
                    <label class="con_mr_longer dp_inBlock con_mb_short" style="width:150px"><input type="checkbox"  name="serviceCountryChb"  value="CM.SBGRP.KR" >South Korea</label>
                    <label class="con_mr_longer dp_inBlock con_mb_short" style="width:150px"><input type="checkbox"  name="serviceCountryChb"  value="CM.SBGRP.SWA" >South West Asia</label>
                    <label class="con_mr_longer dp_inBlock con_mb_short" style="width:150px"><input type="checkbox"  name="serviceCountryChb"  value="User" >User</label>
</div>
</li>
<!--// Service Country ///-->

<!--// Category //-->
<li class="col2">
<span class="tit_search">Category</span>
<ul id="categoryChb" style="display:inline-block;vertical-align:middle;" checked></ul>
</li>
 <!--// Category ///-->
</ul>

<!-- //hidden area --->
<!-- buttons -->
<div class="btn_area">
<button name="btnSearch" class="btn btn_default txt_bold"><span class="icon_s icon_search_smr"></span>Search</button>
<!-- <button onClick="void(0); return false;" class="btn btn_default txt_bold" name="btnSearch" ><span class="icon_s icon_search_smr"></span>Search</button> -->
<a href="#" name="reset" onclick="void(0); return false;" class="dp_inBlock txt_bold con_ml_short" style="vertical-align:middle;">Reset</a>
</div>
<!-- //buttons -->
<!-- show/hide -->
<div class="btn_showHide">
<span class="inBlock" style="vertical-align:middle;">Detailed Search</span> <button class="icon_s icon_arr_down btn_more_search">More/Close</button>
</div>
<!-- //show/hide -->
</section>
<!-- //search -->

<section class="con_mt_longer">
<h2 class="vi_out">Results</h2>
<!-- Buttons -->
<div class="btn_area" style="padding-bottom: 5px;">
<div class="list_num"><span class="icon_s icon_list"></span> <span id="spanTotalCnt">0</span> Apps</div>
<button name="btn_Export" class="btn btn_default txt_bold"><span class="icon_s icon_export"></span>Export</button>
</div>
<!-- //Buttons -->

<!-- List -->
<div id="DataTables_Table_0_wrapper" class="dataTables_wrapper" role="grid">
<table id="${param.tabId}_comp_app_status_service_country_table" class="tb_list">
<thead>
<tr>
<th rowspan="2" style="width:400px">Country</th><!--// 01. Country Column  style="width:800px"//-->
<th rowspan="2" style="width:280px">Platform</th><!--// 02. Platform Column //-->
<th colspan="2"  style="width:280px">S1</th><!--// 03. S1 Passed Column //-->
<th style="display: none; width:280p"></th><!--// 04. S1 App Column //-->
 <th colspan="2"  style="width:280px">S2</th><!--// 05. S2 Passed Column //-->
<th style="display: none;; width:280p"></th><!--// 06. S2 App Column //-->
 <th colspan="2"  style="width:280px">S3</th><!--// 07. S3 Passed Column //-->
<th style="display: none;; width:280p"></th><!--// 08. S3 App Column //-->
<th colspan="2"  style="width:280px">Total</th><!--// 09. Total Passe Column //-->
<th style="display: none;; width:300p"></th> <!--// 10. Total App Column //-->
</tr>
<tr>
<th style="display: none;"></th><!--// 01. Country Column//-->
<th style="display: none;"></th><!--// 02. Platform Column //-->
<th style="">Passed</th><!--// 03. S1 Passed Column //-->
<th style="">App</th><!--// 04. S1 App Column //-->
<th style="">Passed</th><!--// 05. S2 Passed Column //-->
<th style="">App</th> <!--// 06. S2 App Column //-->
<th style="">Passed</th><!--// 07. S3 Passed Column //-->
<th style="">App</th><!--// 08. S3 App Column //-->
<th style="">Passed</th> <!--// 09. Total Passe Column //-->
<th style="">App</th><!--// 10. Total App Column //-->
<th style="display: none;"></th>
<th style="display: none;"></th>
<th style="display: none;"></th>
<th style="display: none;"></th>
<th style="display: none;"></th>
</tr>
</thead>
</table>
</div>
<!-- //List -->
</section>
 </section>
 </section>
<!-- Service Country --> 
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■