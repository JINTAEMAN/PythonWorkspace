

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2010.10) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2010.10.01(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:30

- 현대해상 SM
- 보상서비스 개선 사항(현업 담당: 유성철 대리)
1. 사고접수조회 요건 추가
- 가접수상태도 조회되게 변경(포탈쪽과 협의 필요) 
- 첨부파일 고객이 확인 가능(자동차 보험은 가능)
1) 보상처리조회(보상창구 => 자동차보상)
http://thome.hi.co.kr/servlet/hi.amends.servlet.ViewSagoListServlet?q=7F00
String ifId2 = "IR_HI-HOME_0094"; //HI-HOME 계약자별보상처리현황(자동차)
out.println("[/bosangListView.jsp] [autoAcdlist.length]"+ autoAcdlist.length);
[/CLMQ9200M01LBean.java] [getTraAccident()] [acdtList.length]3[AcdtRcpNo]1005059427[getProdName]Hicar개인용자동차보험[getReqStdt]20100526[getEvntDt]20100521
2) 보상처리조회(보상창구 => 상해/질병보상)
http://thome.hi.co.kr/servlet/hi.amends.servlet.ViewSagoListServlet?q=7F00
String ifId = "IR_HI-HOME_0090"; //사고조회(상해질병 조회대상건조회)
out.println("[/bosangListView2.jsp] [autoAcdlist.length]"+ autoAcdlist.length); 
[/CLFQ0010M01LBean.java] [getTraAccident()] [acdtInfo.length]2[AcdtRcpNo]1004131103[getProdName]무배당굿앤굿어린이CI보험(HI0809)[getReqStdt]20100422[getEvntDt]20090113

2. EDMS 연동하여 첨부파일 하이포탈로 전송
- Fax 전송(가상 번호 생성 후 확인: 포탈은 사용 중)
- 보상창구/자동차보상 --> 사진보기
http://thome.hi.co.kr/servlet/hi.amends.servlet.RII0AAGServlet?q=7F000001189E00FA8379DB0546E50F6CE5C32A2D600C1F#detailIFrmL

3. 장기사고접수 파일업로드 첨부파일 개수 증가(인터넷 접수)
- 현재 3개에서 최대 10개로 수정(용량 부족이나 과부하시 줄일수 있음) ==> 기본 3개(클릭으로 추가)  
- Loading 바(상태)
- 첨부파일 용량 증설 희망(500KB --> 1.2M)
http://thome.hi.co.kr/amends/damage/care/accident_take_process_17_popup.jsp?seq=4911

4. 관리자 장기보험 사고가접수 조회(http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.JubsuList)
- 조건별 조회 점검
- 조건에 모바일구분 추가하여 카운트 display
- TM 상품 상담신청 리스트: http://tmgr.hi.co.kr/servlet/hi.manager.home.tm.servlet.ViewTMList 
==============================================================================================================

- 개발서버(Admin) 로그 보기
[SC3-devwas02:hidev01] tail -f /Logs/homeadmin/WAS/SystemOut.log
- 개발서버(HI-B2B) 로그 보기
[SC3-devwas02:hidev01] tail -f /Logs/hib2bSvr/WAS/SystemOut.log
- 개발서버(HI-B2C) 로그 보기
[SC3-devwas02:hidev01] waslog
 
- 운영서버(Admin) 로그 보기
[SC3-devwas02:hidev01] tail -f /WS11/hib2c/WAS/hib2cSvr11_1/SystemOut.log
[SC3-devwas02:hidev01] tail -f /WS11/hib2c/WAS/hib2cSvr12_1/SystemOut.log
[SC3-devwas02:hidev01] tail -f /WS11/hib2c/WAS/hib2cSvr13_1/SystemOut.log
[SC3-devwas02:hidev01] tail -f /WS11/hib2c/WAS/hib2cSvr14_1/SystemOut.log
==============================================================================================================

- 프라임 가정보험 조회 안됨  
신규호 721107-1530311 / F-2009-0676588 ==> 프라임 가정보험
원인: 프라임 보험은 만기는 3년, 현재 조회를 1년으로 조회되어 때문에 조회 안됨
처리: 대상기간을 1년에서 3년으로 변경하여 조회 처리함
일반보험(보상창구 => 상해/질병보상)
http://thome.hi.co.kr/servlet/hi.amends.servlet.JubSuListServlet?q=7F000001189E00B362699DEB06D4ADABC8AFDAC2D6E21B

- /hi/cis/cisbean/general/GIIH8200I01LBean.java 파일에서
public CisResultObjVO getTraAccident(HttpServletRequest request, String ifId)throws Exception {
	String strInagStDt = DateUtil.addDate(strSagoDate, -1095);	//대상기간-FROM(보험시기) ==> (180일--> 1095일)
	String strInagEdDt = DateUtil.addDate(strSagoDate, 1095);	//대상기간-TO(보험시기) ==> (180일--> 1095일)
}
CIS I/F: GIIH8200I01LBean

피보험자사항(보상창구 => 상해/질병보상)
http://thome.hi.co.kr/servlet/hi.cybercenter.general.servlet.HSI020GServlet?q=7F000001189E002A042B25547DB993A8A245E3E86C2417
CIS I/F: GIIH8300I01LBean
CIS I/F 담당: 송현우 사원
==============================================================================================================

- Stock
00. 테마주:
 1) 인포피아(16,800원에 시작할 것)
01. 금융: 
 1) 대우증권(원에 시작할 것)
 2) 하나금융지주(35,700원에 시작할 것)
 3) 동부화재(37,300원에 시작할 것)  
02. IT: 
 1) 삼성전자(원에 시작할 것)
 2) 삼성전기(원에 시작할 것)
 3) LG디스플레이(원에 시작할 것)
 4) 동부하이텍(9,700원에 시작할 것)
 5) 하이닉스(원에 시작할 것) 
 6) SK컴즈(19,000원에 시작할 것) 
 7) 차바이오앤(12,880원에 시작할 것) 
03. 자동차: 
 1) 현대차(원에 시작할 것)
 2) 기아차(원에 시작할 것)
==============================================================================================================

- 필기합격자발표(92)
교보정보통신 명석재 과장 합격(2008년 고객 PM), 22기 파워스터디 이주일, 백종규 모두 탈락
==============================================================================================================
					
■■■■■■■■■■■■■■■■■■ 2010.10.02(토) 작업 ■■■■■■■■■■■■■■■■■■  
---> 06:30 ~ 00:00 

▦조기축구
05:10 기상 
06:30 신구초등학교
06:40 게임(1:0 승) 
07:30 종료 
07:40 수정식당(이승형에게 22,500원 빌려줌)
09:40 종료
10:30 귀가
==============================================================================================================
	
■■■■■■■■■■■■■■■■■■ 2010.10.03(일) 작업 ■■■■■■■■■■■■■■■■■■  
---> 06:30 ~ 00:00 

▦조기축구
05:30 기상 
06:40 신구초등학교
07:40 게임(2:3 패)
08:50 게임(4:2 승): 가슴 아퍼 제대로 못 뜀
09:10 게임(4:2 승)
09:50 게임(4:2 패)
10:50 종료
12:20 놀부부대찌게(회비 만원) 
14:00 귀가
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.10.04(월) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:20 ~ 18:30

- 현대해상 SM
- R20100930-0015[사랑나눔장터 자선경매 안내 오픈]
http://thome.hi.co.kr/events/21010002/auction_market_main.jsp
메인 레이어(팝업): mainlayer_auction.jsp
이미지폴더 경로: /images/event/2010_10/auction_market, /images/event/layer/20101004_auction 
이행승인일: 10월 5일(화) 12시 이전

- 상태 변경 History(History --> http://ppms.hi.co.kr:7001/PMS)
1   인터넷사업팀	요청서작성 2010-09-30 09:46:51   김희진   
2   인터넷사업팀	요청승인	2010-09-30 09:47:16   김희진   
3   인터넷사업팀	요청접수	2010-09-30 09:53:55   박윤정   
4   통합채널팀		요청검토	2010-09-30 10:06:32   윤홍진(BA팀)  ===>  정대리님에게 일정등록 요청
5   통합채널팀		합의		2010-09-30 10:21:27   강성오(통합채널팀 팀장): 정대리님 대행 
6   인터넷사업팀	합의완료	2010-09-30 11:03:50   김희진		  ===> 합의완료가 되어야 작업을 시작  

===> 정대리님 일정등록 요청 드립니다. (정대리님에게 일정등록 요청)
개발유형 : 사랑나눔장터 자선경매 안내 오픈
--------------------------------------------------------------------------------------------------------------------------------
개발유형 : 소형
분석 : 10.10.04(2)
설계 : 10.10.04(2)
구현 : 10.10.04 ~ 10.10.04(4)
테스트  : 10.10.05 ~ 10.10.05(4)
==============================================================================================================

- 7하트 이벤트(이미지 배포 안됨): 강언현 대리(현업)에게 전화옴
http://www.hi.co.kr/events/7heart_lucky/7heart_lucky_main.jsp?hipath=lucky7event_mainlayer
http://www.hi.co.kr/images/event/7heart_lucky
배포 담당자: 오원경 대리(품질관리팀)
==============================================================================================================

 - 왼쪽 메뉴 조회(관리자 화면)
http://tmgr.hi.co.kr/portal/leftmenu_2.jsp?category=1
-- 왼쪽 메뉴 조회 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
SELECT *
-- SELECT PATH, MENU_NM
FROM ADMIN_PRIVILEGE T1, ADMIN_MENU T2  
WHERE T1.PAGE_ID_SEQ = T2.PAGE_ID_SEQ  
  AND T1.ID = 'IA1038' f
  AND T2.CATEGORY = '1' 
  AND T2.RUNNING = 'Y' 
ORDER BY MENU_NM ASC
;
==============================================================================================================

- 현대해상 SM 연락처 
1. 인터넷서비스팀(고객)
 1) 유성철 대리: T)3701-8242
 2) 강언현 대리: T)3701-8241
 3) 김희진 사원: T)3701-8256
2. 디자인팀
 1) 전미리 대리: T)3701-8245
3. 품질관리팀
 1) 오원경 대리: T)721-0361(이미지 배포 담당)
4. 일반보험팀
 1) 송현우 사원: T)721-0283(CIS I/F 담당)
==============================================================================================================

- 일일점검	
M:\공유함_new\09_장애관리\09_02_일일점검\02 팀별일일점검사항취합(팀별)\2010\10월
시스템점검_10.05(통합채널팀_홈페이지_정상).xll
==============================================================================================================
 						 
■■■■■■■■■■■■■■■■■■ 2010.10.05(화) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:10 ~ 18:30  --> 아침시스템 당번

- 현대해상 SM
- P20101004-0032[사랑나눔장터 자선경매 안내 오픈] 이행
http://thome.hi.co.kr/events/21010002/auction_market_main.jsp
메인 레이어(팝업): http://thome.hi.co.kr/portal/index.jsp
이미지폴더 경로: /images/event/2010_10/auction_market, /images/event/layer/20101004_auction
이행승인일: 10월 5일(화) 12시 이전(파일 이행: 3시 30분, 이미지 이행: 3시, 10시)
http://thome.hi.co.kr/events/21010002/auction_market_main.jsp  ==> 추가 변경 요청
http://thome.hi.co.kr/images/event/2010_10/auction_market/auctionmarket_img08.jpg  ==> 추가 변경 요청
==============================================================================================================

- 팀장님이 조기 출근 문자 보냄
통계배치계 안돔: recovery가 13시간 소요 됨(전화번호 배치 업데이트가 제대로 안돔)
==============================================================================================================

- 보상서비스 개선 사항(현업 담당: 유성철 대리) 
2. 장기사고접수 파일업로드 첨부파일 개수 증가(인터넷 접수)
- 현재 3개에서 최대 10개로 수정, 상태바 Loading 추가
- 첨부파일 용량 증설 희망(500KB --> 1.2M)
http://thome.hi.co.kr/amends/damage/care/accident_take_process_17_popup.jsp?seq=4905
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.10.06(수) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:00 ~ 18:30  --> CS 조회(자동차보험과 실제, 발표: 안재광 차장)

- 현대해상 SM
- 보상서비스 개선 사항(현업 담당: 유성철 대리) 
2. 장기사고접수 파일업로드 첨부파일 개수 증가(인터넷 접수)
- 현재 3개에서 최대 10개로 수정, 상태바 Loading 추가
- 첨부파일 용량 증설 희망(500KB --> 1.2M)
http://thome.hi.co.kr/amends/damage/care/accident_take_process_17_popup.jsp?seq=4905  
=========================================================================================================

- 파일 업로드(진행율 표시기)
DEXTUploadX(http://www.dextsolution.com/Product/dextUploadX01.aspx)
DEXTUploadJ(http://www.devpia.com/Software/products/ProductDetail.aspx?key=esd&PrdCode=590205) 
http://www.dextsolution.com/Product/dextUploadJ04.aspx
http://www.saybox.co.kr/bbs/board.php?bo_table=jsp&page=1

- 파일 업로드 용량 체크(사용 불가): ActiveX를 쓰지 않고서는 원하시는 결과를 동작하게 할 방법은 없음
<script type="text/javascript">
var maxSize = 100 * 1024 *1024;  //제한 용량(100M)

function checkFileSize(obj) { 
	if (typeof document.body.style.maxHeight != "undefined") {  //ie7일 경우 
		var fso = new ActiveXObject("Scripting.FileSystemObject");  //보안 문제로 에러가 남(사용 불가) 
		var f = fso.GetFile(obj.value);
		var fileSize = f.size;
		f = null;
		fso = null;

	} else { //ie6일 경우 
	   var img = new Image();
	   img.dynsrc = obj.value;
	   var fileSize = img.fileSize; 
	}
 
	if(fileSize > maxSize) {
		alert("파일업로드 허용용량" + maxSize/1024/1024 +"Mbyte를 초과하였습니다.");
		fileValueReset();
		return;
	}
}
 
function fileValueReset(){
  var fileDiv = document.getElementById("fileDiv");
  fileDiv.innerHTML = "<input type='file' class=text name=attachFile' id=attachFile' size='20' onChange='checkFileSize(this)'>";
}
</script>
</head> 
<body>
 
<br><br>
<div id="fileDiv">
	[파일 첨부]<input class=text type=file name="attachFile" id="attachFile" size="20" onChange="checkFileSize(this)">
</div>
==============================================================================================================

- Eclipse(이클립스) 단축키
Ctrl + / : 주석 처리(한 라인/블록에 대해 주석 처리(추가 및 제거))  ==>  //  
Ctrl + Shift + / : 주석 처리(한 라인/블록에 대해 주석 처리(추가 및 제거))  ==>  /*  */
==============================================================================================================

- 현대해상 SM 담당자 연락처
1. 인터넷서비스팀(고객)
 1) 이병식 과장: T)3701-8258(대출)
 2) 유성철 대리: T)3701-8242(보상서비스, 고객커뮤니티)
 3) 김범정 대리: T)3701-8243(메인, 일반보험, 펀드, 기업/퇴직보험)
 4) 김수연 대리: T)3701-8257(웹 마스터, 스마트 고객센터)
 5) 신동훈 대리: T)3701-8255(상품몰, 방카슈랑스)
 7) 강언현 대리: T)3701-8241(사이버창구, 회원 (로그인 정책), 마이페이지)
 8) 정민지 사원: T)3701-8259(고객센터, 하이플래너, 하이플래너 블로그)
 9) 김희진 사원: T)3701-8256(Life is Hi, 회사소개)
2. 디자인팀
 1) 전미리 대리: T)3701-8245
3. 품질관리팀
 1) 오원경 대리: T)721-0361(배포)
4. 일반보험팀
 1) 송현우 사원: T)721-0283(CIS I/F)
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.10.07(목) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:00 ~ 18:30

- 현대해상 SM
- 보상서비스 개선 사항(현업 담당: 유성철 대리) 
2. 장기사고접수 파일업로드 첨부파일 개수 증가(인터넷 접수)
- 현재 3개에서 최대 10개로 수정, 상태바 Loading 추가
- 첨부파일 용량 증설 희망(500KB --> 1.2M)
http://thome.hi.co.kr/amends/damage/care/accident_take_process_17_popup.jsp?seq=4905
- 파일업로드: http://erwins.springnote.com/pages/5636631
==============================================================================================================

1. 보상서비스 개선 사항 관련 문서 작성
- 인터넷서비스팀 유성철 대리님 요청
- 보상서비스 개선 사항 관련 회의 ==> CIS 인터페이스 담당자 참석: 2010.10.11(월) 오후에 제안
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.10.08(금) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:00 ~ 18:30

- 현대해상 SM
- 보상서비스 개선 사항(현업 담당: 유성철 대리) 
2. 장기사고접수 파일업로드 첨부파일 개수 증가(인터넷 접수)
- 현재 3개에서 최대 10개로 수정, 상태바 Loading 추가
- 첨부파일 용량 증설 희망(500KB --> 1.2M)
http://thome.hi.co.kr/amends/damage/care/accident_take_process_17_popup.jsp?seq=4905
- 파일업로드: http://erwins.springnote.com/pages/5636631
==============================================================================================================

- 현대해상 SM 계약 대체(올리브 타워 빌딩(시청역 9번 출구))
(주) 신진 NTS 이순복 사장 방문(중식 제공 받음) H)011-335-3480, T)764-2504, shinjin@jsnts.co.kr
SK FLA365 SM 계약으로 대체하기로 합의 함
기간: 2010.09.13 ~ 2010.07.31, 월: 4*0만원
(주)신진엔.티.에스: 서울시 강북구 번동 446-13 가든타워 1109호(사업자NO: 202-81-60791) 
==============================================================================================================
					
■■■■■■■■■■■■■■■■■■ 2010.10.09(토) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:30 ~ 00:00  --> Super Fast-Reading 첫날
 
- SFR(1째주)
06:30 기상 
07:30 글빛 도서관
09:00 봉천시장(버스)
10:00 KPC 정보시스템감리사 공개 무료설명회(3호선 경복궁역 근처)
 - 이춘식 기술사, 최석원 기술사, 정윤희 연구원 
    ==> 특징: 그룹 스터디 지원, 강사들이 괜찮음, 기술사와 체계적 연계
12:10 종료 
13:00 중식(김밥 2줄: 2호선 방배역)
14:00 Super Fast-Reading 학원(카드 결제(12개월): 240만원): 시법, 독법(토, 일)(기초반)
 - 361기 토요 기초반==> 10월 9일(매주 토요일) 오후 2-8시까지  
 - 364기 일요 숙달반 ==> 10월 10일(매주 토요일) 오후 2-8시까지
14:10 강의(정성락 전도사: 010-9149-1188) ==> 속법, 시상
17:30 저녁(컵라면 밥)
18:00 강의
19:30 종료
20:00 귀가
==============================================================================================================

- KPC 정보시스템감리사 공개 무료설명회(https://www.kpcit.or.kr/program/programView.action),
일시: 2010년 10월 9일(토) 10:00~12:30  ===> 2.6, 3.13, 9.29, 10.9
1. 기본반: 정보시스템감리사 양성 아카데미(기본반): 2.20 , 3.20, 10.23(10일, 교육비: 100만원 --> 75만원)
2. 심화반: 정보시스템감리사 양성 아카데미(심화반): 4.17, 5.9(8일, 교육비: 80만원 --> 55만원 예상)
3. KPC 정보시스템감리사 IMPACT 모의고사: 5.30, 6,20, 7.11(교육비: 만원)
==============================================================================================================
	
■■■■■■■■■■■■■■■■■■ 2010.10.10(일) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:30 ~ 00:00 

▦조기축구
07:30 기상 
08:10 신구초등학교
08:30 게임(3:1 승): 1골 넣음
08:40 게임(3:1 승): 1골, 1 어시스트 기록
09:40 종료
10:20 놀부부대찌게: 치근이형이 쏨
11:40 종료 
12:40 귀가
12:50 샤워
14:00 Super Fast-Reading 학원(숙달반)
14:10 강의 ==> 속법
17:30 저녁(컵라면 밥)
18:00 강의
19:30 종료
20:00 귀가
00:00 취침
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.10.11(월) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:00 ~ 18:30

- 현대해상 SM
- 보상서비스 개선 사항(현업 담당: 유성철 대리) 
2. 장기사고접수 파일업로드 첨부파일 개수 증가(인터넷 접수)
- 현재 3개에서 최대 10개로 수정, 상태바 Loading 추가
- 첨부파일 용량 증설 희망(500KB --> 1.2M)
http://thome.hi.co.kr/amends/damage/care/accident_take_process_17_popup.jsp?seq=4905
http://thome.hi.co.kr/amends/damage/care/Progress/ProgressUpload.jsp
- 클라이언트 Side(.jsp)에서 새창 띄우기(상태바 Loading)  ==> 서버 Side(.java)에서 속도가 느려지면 창이
닫히는 현상 일어남 ===> 서버 Side(.java)로 개발할 것

- 파일 업로드(진행율 표시기)
DEXTUploadJ(http://www.dextsolution.com/Product/dextUploadJ03.aspx)
DEXTUploadX(http://www.dextsolution.com/Product/dextUploadX01.aspx) 
- 파일업로드: http://erwins.springnote.com/pages/5636631 
==============================================================================================================

- 광속 계좌 이체 및 결제(4개월: 240만원): 학원 방문(카드 취소 처리함)
1. 계좌번호: 1002 338 686580, 우리은행 예금주: 이정애
==============================================================================================================
						 
■■■■■■■■■■■■■■■■■■ 2010.10.12(화) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:00 ~ 18:30

- 현대해상 SM
- 보상서비스 개선 사항(현업 담당: 유성철 대리) 
2. 장기사고접수 파일업로드 첨부파일 개수 증가(인터넷 접수)
- 현재 3개에서 최대 10개로 수정, 상태바 Loading 추가
- 첨부파일 용량 증설 희망(500KB --> 1.2M)
http://thome.hi.co.kr/amends/damage/care/accident_take_process_17_popup.jsp?seq=4905
http://thome.hi.co.kr/amends/damage/care/Progress/ProgressUpload.jsp
http://thome.hi.co.kr/amends/damage/care/Progress/ProgressBar.jsp
==============================================================================================================

- div 링크
<a href="#no_2">[조혜련 기사로 이동]</a> 
<div id="No_2"><!--// div  id 설정(No_2)  //--> [내용 Display] </div>
http://thome.hi.co.kr/happyplus/knowledge_channel/knowledgeView01_t.jsp
==============================================================================================================

- [P20101012-0062]사랑나눔 장터 마감
메인 레이어(팝업): http://thome.hi.co.kr/portal/index.jsp
- 메인 레이어 변경(고객만족경영대상+행운의 7하트)
---------------------------------------------------------------------------------------------------------

요구사항 접수요청드립니다. ==> 윤홍진 과장에게 일정등록 요청(쪽지로 보냄)
1. 작업의뢰 관리번호 및 제목
R20101012-0056 / 사랑나눔 장터 마감
2. 일정
완료예정일 : 2010-10-18
3. 요청유형 : 기타
4. 요구사항 정의
- 메인 레이어 변경
- 사랑나눔 장터 이벤트 마감
5. PMS에 등록된 시스템명 : 홈페이지
---------------------------------------------------------------------------------------------------------

정대리님 일정등록 요청 드립니다.(정대리님에게 일정등록 요청)
개발유형 : 사랑나눔 장터 마감
--------------------------------------------------------------------------------------------------------

개발유형 : 간소
분석 : 10.10.12(2)
설계 : 10.10.12(2)
구현 : 10.10.13 ~ 09.10.13(2)
테스트  : 10.10.13 ~ 09.10.13(2)
==============================================================================================================
						 
■■■■■■■■■■■■■■■■■■ 2010.10.13(수) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:00 ~ 18:30  --> 아침시스템 당번, 덕수궁 인증샷(워크샵 B조)

- 현대해상 SM
- [P20101012-0062]사랑나눔 장터 마감 이행
메인 레이어(팝업): http://thome.hi.co.kr/portal/index.jsp
사랑나눔 장터 이벤트 종료(닫기): http://hi.co.kr/events/21010002/auction_market_main.jsp
- 메인 레이어 변경(고객만족경영대상+행운의 7하트)
- 12시 이후 이미지 등록할 것
- rhome에서 테스트할 것
==============================================================================================================

- div 링크
<a href="#no_2">[조혜련 기사로 이동]</a> 
<div id="No_2"><!--// div  id 설정(No_2)  //--> [내용 Display] </div>
http://thome.hi.co.kr/happyplus/knowledge_channel/knowledgeView01_t.jsp

- 자동 scroll(quick board 메뉴)
 <DIV id="left_skyWingBanner" style="Z-INDEX: 10; POSITION: absolute;width:100%;height:100%;left:920;top:5">    
	<a href="#dvwrapin"><b>[top]</b></a><br>
	<a href="#no_1"><b>[마술사]</b></a><br>
	<a href="#no_2"><b>[조혜련]</b></a><br>
	<a href="#no_3"><b>[김태원]</b></a>
</DIV>
 
<script language="javascript">	 	  
	var leftWidth = document.getElementById("left_skyWingBanner");   
	var InternetExplorer = (navigator.appName == "Microsoft Internet Explorer" && navigator.appVersion.substring(0,1) >= "4");	  
	var NetscapeNavigator = (navigator.appName == "Netscape" && navigator.appVersion.substring(0,1) >= "4");	 

	function MainSkyBanner() {	 
		var aa=0;	
		var bb=0;	 				   
		var cc=0;	   
		var dd=0;	   
		var ee = 0;	  
		var top_height = 0;	 //left_skyWingBanner  DIV 높이
		var footer_height = 100; 
		var div_height = 200;  
		aa = document.body.clientWidth;	 
		bb = document.body.clientHeight;		
		cc = window.document.body.scrollWidth;  
		dd = window.document.body.scrollHeight;	
		ee = document.body.scrollTop;	  
		footer_height = dd - footer_height - div_height;

		var temp_top = 0;	  
		var TopFrom, TopTo, FooterFrom, FooterTo, Offset, TimeOverCheck;	  
		if (document.documentElement.scrollWidth > top_height) {		   
			if ( InternetExplorer ) {	   
				TopFrom  = parseInt (left_skyWingBanner.style.top, 10);
				TopTo    = document.body.scrollTop + 10;	   
			}	 
			TimeOverCheck = 200;	 
			if ( Math.abs (FooterFrom - (TopTo + top_height)) < 6 && FooterTo < FooterFrom ) {		
				setTimeout ("MainSkyBanner()", TimeOverCheck);		 
				return;	  
			}	  
			if ( TopFrom != TopTo ) {  
				Offset = Math.ceil( Math.abs( TopTo - TopFrom ) / 20 );		   
				if ( TopTo < TopFrom )	 
					Offset = -Offset;		  
				if ( InternetExplorer ) {		
					temp_top = parseInt (left_skyWingBanner.style.top, 10) + Offset;	   
					if (footer_height < temp_top) {	 
						temp_top = footer_height;	  
					}								   
					if (top_height > temp_top) {	  
						temp_top = top_height;	  
					}							   
					left_skyWingBanner.style.top = temp_top;
					//right_skyWingBanner.style.top = temp_top; 	  
				}
				TimeOverCheck = 10;	 
			}
		}

		var obj;	   
		obj = document.getElementById('skyWingBanner');			 
		if (obj) {		
			obj.innerHTML = aa+" "+bb+" " +cc+" "+dd+ " "+ee+ " " + leftScrollDiv.style.top +" "+ Offset + " "+ leftScrollDiv.height;	   
		}	 
		setTimeout ("MainSkyBanner()", TimeOverCheck);	   
	}	 
  
	MainSkyBanner();
</script>
==============================================================================================================

4. 관리자 장기보험 사고가접수 조회(http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.JubsuList)
- 사고가접수 조회/hi_mgr.war/manager/home/care/ViewAccidentList.jsp)
- 엑셀 다운로드(/hi_mgr.war/manager/home/care/ViewAccidentList_excel.jsp)
- 사고가접수 조회: /hi-mgr/java_src/hi/manager/home/care/servlet/JubsuList.java, /dao/JubsuAdminMgr.java
- page Move list: /hi-mgr/java_src/hi/common/util/DefPageMgr.java 

요청명 : 장기사고접수 관련 홈페이지 관리자 화면 개선
------------------------------------- 
개발유형 : 소형
분석 : 10/14 2
설계 : 10/14 ~ 14  2
구현 : 10/15 ~ 15  16
테스트 : 10/18 ~ 18 4
완료예정일: 10/19(화)
==============================================================================================================

- 보상서비스 개선 관련 회의:
1. 시간:  2010.10.13(수) 수요일 10:00 ~ 11:30
2. 장소: 현대해상 본사 회의실 13층(3호실)
3. 참석인원: 유성철 대리(인터넷 서비스팀), 정일영 대리, CIS팀
3. 내용
 1) 보상처리 가접수 조회(현실적인 문제점 존재 --> CIS에서 검토해 본다고 함)
 2) 파일 업로드(이노릭스(http://www.innorix.com) 컴포넌트 구매 검토) 
    --> EDMS에 파일 전송 고민(공통팀 양대훈씨(GetSevervice 검토)
 3) 계좌번호 피보험자 확인(미성년일 경우 문제)
 4) 직업란 추가
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.10.14(목) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:00 ~ 18:30

- 현대해상 SM
- P20101014-0014[장기사고접수 관련 홈페이지 관리자 화면 개선]
1. 관리자 장기보험 사고가접수 조회(http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.JubsuList)
2. 사고가접수 조회/hi_mgr.war/manager/home/care/ViewAccidentList.jsp)
3. 엑셀 다운로드(/hi_mgr.war/manager/home/care/ViewAccidentList_excel.jsp) 
4. 요구사항 정의
- 검색 조건의 다양화 
- 엑셀 내보내기 기능 추가
- 기존 검색 조건에 따른 오류건 수정
==============================================================================================================

- 이노릭스 파일 업로드 분석 및 테스트
http://www.innorix.com/PU/index.html
설명서(PU): http://www.innorix.com/resource/manual/pu_jsp.html
설명서(AP): http://www.innorix.com/resource/manual/ap_jsp.html
Tel. 557-2757 | Cel. 010-2422-0335 | 황문선(mshwang@innorix.com)

- InnoPU 제품 분석 및 테스트(이노릭스 파일 업로드)
1. 윈도우 IE전용 컴포넌트(다른 OS, 브라우저에서 사용 불가능) ==> InnoAP는 가능(다른 브라우저 사용자가 증가할 
   것으로 추정 되므로 InnoAP를 구매하는 것이 옳다고 판단됨)
2. 도메인별 구매 형태
 1) 기본 도메인 라이센스: 120만원 --> www.hi.co.kr(운영 서버)만 사용 가능
 2) 서브 도메인 라이센스: 250만원 --> www.hi.co.kr(운영 서버), thome.hi.co.kr(테스트 서버) hi.co.kr 도메인 사용 가능 ==>
   운영 서버 반영시 테스트가 꼭 필요 하므로 서브 도메인 라이센스를 구매해야 할 것으로 판단됨
---------------------------------------------------------------------------------------------------------

- 파일 업로드 분석 및 테스트
1. PU: http://thome.hi.co.kr/InnoPU/style_multi.jsp, http://thome.hi.co.kr/InnoPU/style_browser.jsp
2. AP: http://thome.hi.co.kr/AP/test/index.jsp
3. cos.jar 파일 다운 받아서 /WEB-INF/lib폴더에 추가
==============================================================================================================
				 
■■■■■■■■■■■■■■■■■■ 2010.10.15(금) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:00 ~ 18:30

- 현대해상 SM
- P20101014-0014[장기사고접수 관련 홈페이지 관리자 화면 개선] 이행
1. 관리자 장기보험 사고가접수 조회(http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.JubsuList)
2. 사고가접수 조회
 1) jsp: 
    - 사고가접수 조회(/hi_mgr.war/manager/home/care/ViewAccidentList.jsp)
    - 사고가접수 조회(엑셀 다운로드)(/hi_mgr.war/manager/home/care/ViewAccidentList_excel.jsp): 신규
 2) java: 
    - 사고가접수 조회 Servlet(/hi-mgr/java_src/hi/manager/home/care/servlet/JubsuList.java)
    - 사고가접수 조회 DB(/hi-mgr/java_src/hi/manager/home/care/dao/JubsuAdminMgr.java)
    - page Move list(/hi-mgr/java_src/hi/common/util/DefPageMgr.java) 
3. 요구사항 정의
- 검색 조건의 다양화 
- 엑셀 내보내기 기능 추가
- 기존 검색 조건에 따른 오류건 수정
==============================================================================================================

- Check Out 실패
1. 원인: 자원 경로를 정확히 확인할 것
 1) 자원 --> Application 현황: 자원ID: JubsuList.java ==> 검색(클릭)
자원 경로: \HOMEADMIN\ONLINE\javasrc\hi\manager\home\care\servlet\ ==> JubsuList.java
자원 경로: \HOMEADMIN\ONLINE\javasrc\hi\common\util\ ==> DefPageMgr.java
\HOMEADMIN\DOCUMENTS\HOMEADMIN_91\FG08-PROGRAM설명서_JSP\manager\home\care\ 
\HOMEADMIN\DOCUMENTS\HOMEADMIN_91\FG08-PROGRAM설명서_JSP\manager\home\care\  
산출물 FG08_91_ViewAccidentList.jsp_00.xls  
산출물 FG08_91_ViewAccidentList_excel.jsp_00.xls 
==============================================================================================================

- 피보험자 보상청구내역 확인이 안됨 ===> CIS 인터페이스 문제인 걸로 추정됨(담당자 확인)
1. 사고번호: 1010054890  --> 이상욱(7611041690213)
2. 피보험자 보상청구내역(보상창구 => 상해/질병보상)
/cybercenter/bosangcenter/bosangLongListView.jsp
http://thome.hi.co.kr/servlet/hi.amends.servlet.ViewSagoListServlet
String ifId = "IR_HI-HOME_0090"; //사고조회(상해질병 조회대상건조회)
3. 보상 담당자
 1) 상해질병 보상처리 조회 -> 김길현 사원: T)721-0267
 2) 상해질병 사고접수 -> 윤종규 사원: T)721-0265
 3) 자동차 보상 조회 -> 강제구 대리: T)721-0261
==============================================================================================================

- 현대HDS 센터 워크샵
1. 장소: 월벽타운내 월벽별장: http://www.wbtown.com(서울시 강북구 우이동 299-2)
2. 일정: 10.15(금) 18:30 ~ 10.16(토) 12:00 1박 2일
3. B조
 1) 조별 준비 사항			
 : 제출물이 있는 것은 10월 14일 17시까지 제출		
(1) 조이름(팀명): 해돋이(새로운 시작을 하고 싶은 마음으로...)
(2) 산출물			
가. 채널서비스(5행시)
  - 채: 채소를 먹고 싶어요.
  - 널: 널린게 채소였는데
  - 서: 서늘한 바람이 부니
  - 비: 비싸서 못 사먹겠어요.
  - 스: 스발...이게 다 4대강을 때문이야...자연은 있는 그 자리에...
나. 나를 미치게 하는 것은 (나의 열정에 반비례하는 초라한 결과물이)다.		
다. 전산은 (내 밥줄이다. 그래서 행복하)다.
---------------------------------------------------------------------------------------------------------
 
18:10 업무 종료 
18:30 회사 출발(정대리, 천과장, 안차장)
18:40 4호선 회현역
19:00 4호선 수유역
19:30 우이동 도선사입구 버스 정류장
19:50 길 헤멤(도선사 방향으로 감 --> 반대방향)
20:30 월벽별장(우이동 MT내)
20:30 회식(오리 고기, 삼겹살)
21:30 조별 게임(월벽별장 2층: 주루마블, 여장하기, OX 게임, 가위바위보)
00:30 종료
00:40 닭도리탕 파티(천과장이 취해서 나도 같이 일찍 잠)
==============================================================================================================
						
■■■■■■■■■■■■■■■■■■ 2010.10.16(토) 작업 ■■■■■■■■■■■■■■■■■■  
---> 06:30 ~ 00:00 

- 현대HDS 센터 워크샵2
07:30 기상 
08:40 조별 미션(우이동 매표소에서 단체 인증샷)
09:40 조식(콩나물국)
10:30 족구(마케팅팀 2: 0 연합팀) 
11:30 시상식(B조 1등: 10만원)
12:00 종료
12:30 길음역(강성오 차장 차 얻어 탐) 
13:30 귀가 
14:00 Super Fast-Reading 학원(기초반) ==> SFR(2째주)
14:10 강의 ==> 속법
17:30 저녁(컵라면 밥)
18:00 강의
19:30 종료
20:00 중고서점(셀프 성경 구입: 5천원 --> 낙성대역 근처)
20:00 귀가
00:00 취침
==============================================================================================================
	
■■■■■■■■■■■■■■■■■■ 2010.10.17(일) 작업 ■■■■■■■■■■■■■■■■■■  
---> 06:30 ~ 00:00 

▦조기축구
06:30 기상 
07:10 신구초등학교
07:10 게임(2:3 패)
08:50 게임(4:2 패)
09:50 게임(3:2 패)
11:00 종료
11:30 문경세제(갈비탕: 오고문님이 쏨)
13:00 신사역(148번 버스)
13:20 방배역 도착
13:30 학원도착
14:00 Super Fast-Reading 학원(숙달반)
14:10 강의 ==> 속법
17:30 저녁(컵라면 밥)
18:00 강의
19:30 종료
19:50 키친 워치(다이소(내방역 3번 출구): 15번 마을버스
20:30 귀가
00:00 취침
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.10.18(월) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:00 ~ 18:30

- 현대해상 SM
- P20101014-0014[장기사고접수 관련 홈페이지 관리자 화면 개선] 이행 완료(이행승인: 내부통제팀)
1. 관리자 장기보험 사고가접수 조회(http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.JubsuList)
2. 사고가접수 조회
 1) jsp: 
    - 사고가접수 조회(/hi_mgr.war/manager/home/care/ViewAccidentList.jsp)
    - 사고가접수 조회(엑셀 다운로드)(/hi_mgr.war/manager/home/care/ViewAccidentList_excel.jsp): 신규
 2) java: 
    - 사고가접수 조회 Servlet(/hi-mgr/java_src/hi/manager/home/care/servlet/JubsuList.java)
    - 사고가접수 조회 DB(/hi-mgr/java_src/hi/manager/home/care/dao/JubsuAdminMgr.java)
    - page Move list(/hi-mgr/java_src/hi/common/util/DefPageMgr.java) 
3. 요구사항 정의
- 검색 조건의 다양화
- 엑셀 내보내기 기능 추가
- 기존 검색 조건에 따른 오류건 수정
==============================================================================================================

- 차표 예매
서울 --> 신경주역(KTX)(약 2시간 10분 소요): 11월 13일 ==> 45,600원
서울 --> 포항(고속버스): 11월 13일 ==> 20,500원(일반고속), 30,400원(우등고속), 33,400원(심야우등)
==============================================================================================================

- 아이폰3 요금: 4.5만 요금제/기기값 1.1만원 --> 월평균: 5.6만원(부가세 포함) ==> 기타 폰: 쿠키폰(공짜), 아몰레드
- 윈도우 7: 가상화 XP 가능(성능 안 좋음) ==> 버추얼 머신 VM Ware(6.5버전이상)
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.10.19(화) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:00 ~ 18:30  --> 주간보고 작성할 것, B조 중식(고려정: 만두쑥국전골): 워크샵 1등 상품권 사용

- 현대해상 SM
- 보상서비스 개선 사항(현업 담당: 유성철 대리) 
2. 인터넷 접수(장기사고접수)
http://thome.hi.co.kr/amends/damage/care/accident_take_process_17_popup.jsp?seq=4905 
 1) TEST: http://thome.hi.co.kr/InnoPU/style_multi.jsp

- /action.jsp 파일에서
Hashtable hash = new Hashtable();

if(zInputName.equals("image_file1")) hash.put("image_file1", savedName);  //파일명 hash 함수에 넣기
if(zInputName.equals("image_file2")) hash.put("image_file2", savedName);

if (i >= pu_item_count) {  // 업로드된 파일의 개수 보다 크면 
	if( hash.get("image_file1") !=null ) pool.setString(1, hash.get("image_file1").toString());   //파일명 hash 함수에서 가져오기
	if( hash.get("image_file2") !=null ) pool.setString(2, hash.get("image_file2").toString());	
}
==============================================================================================================

- P20101014-0014[장기사고접수 관련 홈페이지 관리자 화면 개선] 이행 완료(이행승인: 내부통제팀)
1. 관리자 장기보험 사고가접수 조회(http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.JubsuList)
- 엑셀 내보내기 기능 수정(excel 전체 다운로드 가능)  ==> /manager/home/care /ViewAccidentList_excel.jsp
Log.println("[/DefPageMgr.java] [pageQuery()] [test_22] <br>");  //===> 디버깅
System.out.println("[/DefPageMgr.java] [pageQuery()] [test_22] <br>");  //===> 디버깅
==============================================================================================================

- 연금보험 강의(업무설명) 
장소 : 올리브타워 18층. 중회의실1
일시 :2010.10.19(화) 16:30 ~ 18:00
강사 : 방카사업부 김민식 차장님
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.10.20(수) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:00 ~ 18:30 

- 현대해상 SM
- P20101019-0047[상품공시_적용이율 페이지 수정] 이행 완료
http://thome.hi.co.kr/company/ko/notice/products/productsView06_11.jsp
http://thome.hi.co.kr/company/ko/notice/products/productsView06_12.jsp
http://thome.hi.co.kr/cybercenter/contractcenter/sign/signInfoView.jsp: 자동차 자필서명 이벤트 추가
/manager/home/care/ViewAccidentList_excel.jsp: 관리자 장기보험 사고가접수 조회(엑셀 내보내기 기능 수정)
==============================================================================================================

- 보상서비스 개선 사항(현업 담당자: 유성철 대리(인터넷서비스팀)
1. 사고접수조회 요건 추가 사항
1) 사고접수조회에서 가접수, 진접수 모두 조회 가능하게 수정 요청(현재: 진접수만 조회 가능)
2) 사고접수조회에서 진행상태 필드 추가 요청(예) 1: 진행중, 2: 완료)
3) URL
 가) 보상처리조회(보상창구 => 자동차보상) ==> IR_HI-HOME_0094
/cybercenter/bosangcenter/bosangListView.jsp
http://thome.hi.co.kr/servlet/hi.amends.servlet.ViewSagoListServlet?q=7F0000
 나) 보상처리조회(보상창구 => 상해/질병보상) ==> IR_HI-HOME_0090
/cybercenter/bosangcenter/bosangListView2.jsp
http://thome.hi.co.kr/servlet/hi.amends.servlet.ViewSagoListServlet?q=7F0000
==============================================================================================================

2. 장기사고접수 파일업로드 첨부파일 개수 증가(인터넷 접수) 
http://thome.hi.co.kr/amends/damage/care/accident_take_process_17_popup.jsp?seq=4905
http://thome.hi.co.kr/amends/damage/care/Progress/ProgressUpload.jsp
/devpia/dextupload/Progress.java
/devpia/dextupload/DEXTUploadException.java
/devpia/dextupload/ErrorManager.java
==============================================================================================================

- 악보 문자 없애는 방법
1. 에디터 플러스에서 파일 열기 --> 파일 내용에서(마우스 오른쪽 클릭)
 1) 모양(F) --> 1. 줄 끝 공백 제거(T) 또는 2. 탭을 공백으로(A)
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.10.21(목) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:00 ~ 18:30  --> 아침시스템 당번, 중식(HSBC 빌딩 지하 하루웰(HDS 직원 할인: 4,500원))

- 현대해상 SM
- P20101022-0010[장기보험 보상조회 프로세스 개선]
1. 가접수 단계에서 사고접수 조회기능 추가
 가) 가접수 번호 부여만 된 경우 : 진행사항 란에 "접수 준비중(담당 미배정 상태)" 표시  
2. 보상 서류 업로드 파일 확인 및 추가 접수 기능 개발					
3. 첨부파일 용량 및 개수 증설
 가) 보상처리조회(보상창구 => 자동차보상) ==> IR_HI-HOME_0094
/cybercenter/bosangcenter/bosangListView.jsp
http://thome.hi.co.kr/servlet/hi.amends.servlet.ViewSagoListServlet?q=7F0000
 나) 보상처리조회(보상창구 => 상해/질병보상) ==> IR_HI-HOME_0090
/cybercenter/bosangcenter/bosangListView2.jsp
http://thome.hi.co.kr/servlet/hi.amends.servlet.ViewSagoListServlet?q=7F0000
접수상태 ==> 1: 진접수, 2: 가접수(inqTypcd)
==============================================================================================================

- 보상접수 시 에러 발생
정재현: 640501-1797816(6405011797816)
홈페이지를 방문 보상접수를 하는 과정 중
업로드가 팝업되서 선택을 했더니 [업로드 완료되었습니다.]라는
팝업창은 뜨면서 하단에 진행 표시줄에는 계속 연두색으로 진행 중이고
화면도 더 이상 진행이 되지 않는다고 하세요.
몇 번 로그아웃 했다가 진행을 해도 동일한 오류가 발생되어
결국은 홈페이지 접수를 포기하고 별도로 접수하셨다고 합니다.
1. 원인: 업로드가 '구비서류 접수'란의 업로드 였다면 업로드 속도가 느려서 나는 현상이거나 개인 PC 문제로 추정 됩니다.
2. 조치 방법:
 1) 근본 원인은 업로드가 느려서 나는 문제이니 업로드 컴포넌트(http://www.innorix.com/PU/index.html)를 
구매를 해서 설치하면 문제가 해결 될 것으로 추정 됩니다. 
 2) 정확한 원인을 파악하려면 원격으로 연결해서 회원이 PC에서 접수하는 상황을 살펴봐야 할 것 같음
==============================================================================================================

- 파일 환경 설정(/WEB-IN/classes/db.properties)
b2c.sagojupsu.img.path=/data/sagojupsu
==============================================================================================================

- /ViewAccident.jsp 파일에서
<%@ page import="hdmf.jdf.util.*"%> ===> <%@ page import="hdmf.jdf.util.DateUtil"%>로 변경 처리하면 에러 안남
String sDay= DateUtil.getDay(DateUtil.NONE);   //부분 에러
==============================================================================================================

- USB 사용 방법
1. %windir%\system32\subst.exe Z: E:\  ===> E\ 드라이브에 가상 공간 생성
==============================================================================================================

- 삼성 복합기 진단(20:10 ~ 20:40)  ==> 삼성전자 서비스 센터에서 전화 옴
1. 프로그램 삭제 후 재 설치해도 마우스 멈춤 ==> USB 문제로 추정됨
==============================================================================================================
 					 
■■■■■■■■■■■■■■■■■■ 2010.10.22(금) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:00 ~ 18:30

- 현대해상 SM
- P20101022-0010[장기보험 보상조회 프로세스 개선] 
2. 보상 서류 업로드 파일 확인 및 추가 접수 기능 개발					
3. 첨부파일 용량 및 개수 증설
 가) 보상처리조회(보상창구 => 상해/질병보상): /cybercenter/bosangcenter/bosangListView2.jsp
 나) 3번째 설문내용 입력 / 구비서류 접수(보상처리): /amends/damage/care/accident_take_process_17.jsp
 다) 인터넷 접수(보상처리 새창 띄우기): http://thome.hi.co.kr/amends/damage/care/accident_take_process_17_popup.jsp?seq=4905
2. 관리자 기능 수정
 다) 장기보험 사고가접수 조회(관리자)(http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.JubsuList)
   - /manager/home/care/ViewAccidentList.jsp
 라) 장기보험 사고가접수 상세 조회(관리자)(http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.Jubsu)
   - /manager/home/care/ViewAccident.jsp
----------------------------------------------------------------------------------------------------------

- 보상사고 접수(보상창구 => 상해/질병보상)
1. 보상창구: http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView.jsp
01. 사고접수가능계약조회: /amends/damage/care/accident_takeJubsuList.jsp
    (http://thome.hi.co.kr/servlet/hi.amends.servlet.JubSuListServlet?q=7F000001189E00965192628A1CD2D90F20E226BC449288)
 가) 장기보험 또는 일반보험 표시: /amends/damage/care/accident_takeJubsuList.jsp
 나) 피보험자사항: /amends/damage/care/accident_takePiboList.jsp
02. 사고사항 입력: /amends/damage/care/accident_takeJubsuView.jsp
   (http://thome.hi.co.kr/servlet/hi.amends.servlet.UEJ81AUServlet?q=7F000001189E00965192628A1CD2D90F20E226BC449288)
 가) 기본사고사항
 <td><input type="text" name="EVNT_EVNT_DT" value="<%=st_Year%>-<%=st_Month%>-<%=st_Day%> 
       <%=st_Time%>.<%=st_Min%>.00" maxlength="4" readonly class="txt" style="width:200px;" /></td>
  --> 사고일자 셋팅
 나) 보험금 수령은행
 ===> /servlet/hi.amends.servlet.JubsuViewServlet --> 보상사고 접수 사고사항 입력(INSERT INTO SAGO_JUBSU)
03. 설문내용입력/구비서류접수(02: 상해): /amends/damage/care/accident_take_process_28.jsp
03. 설문내용입력/구비서류접수(03: 질병): /amends/damage/care/accident_take_process_16.jsp
 가) 구비서류접수: /amends/damage/care/accident_take_process_17.jsp
04. 사고접수 사항확인: /amends/damage/care/accident_take_process_17.jsp
05. 본인인증: /cybercenter/certifycenter/introView.jsp
05. 사고접수 완료: /amends/damage/care/accident_take_process_06.jsp 
==============================================================================================================

- DB 테이블 수정 요청
1. SAGO_JUBSU(사고 접수 정보) 테이블에서 IMGUPLOAD_UP_DT(추가업로드 일자) VARCHAR2(35)
--> EVNT_EVNT_DT(사고일자) VARCHAR2(35) 
strbSQL.append(" ,'"+CommonUtil.getParameter(request, "EVNT_EVNT_DT").trim()+"'"); 
==============================================================================================================

- STGClient 3.0  ==> IA1308/IA1308
==============================================================================================================
 					
■■■■■■■■■■■■■■■■■■ 2010.10.23(토) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:30 ~ 00:00
 
- SFR(3째주)
05:30 기상
06:10 신구초등학교
06:20 게임(4:2 패)(큰 게임함) 
08:00 종료
09:00 귀가
09:30 Super Fast-Reading 훈련
12:00 중식
13:10 Super Fast-Reading 학원
14:10 강의 ==> 속법, 시상
17:30 저녁(컵라면 밥)
18:00 강의
19:30 종료
20:00 귀가
==============================================================================================================
 		
■■■■■■■■■■■■■■■■■■ 2010.10.24(일) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:30 ~ 00:00 

▦제31회 강남구청장배 축구대회
07:30 기상
08:00 버스(461번)
08:40 수도공고(개포동역(분당선) 8번 출구)
09:00 제31회 강남구청장배 축구대회 입장식
10:30 40대 게임 ==> 신사 1: 2 일원B(중동 중학교)
12:30 30대 게임 ==> 신사 0: 3 대곡(영희초교) --> 레프트 윙으로 출전(실망): 상대는 선수 출근 다수 포함       
13:30 중식(육계장)
14:30 30대 게임 ==> 신사: 개포--> 개포 게임 포기로 몰수 게임 처리 됨
14:30 40대 게임 ==> 신사 0: 6 대현(중동 중학교)  =====> 3,40대 모두 예선 탈락
17:30 종료
18:00 뒷풀이(닭발집: 신구초교 근처) ==> 유현도 고문님이 쏨 
19:50 종료
20:40 이발
21:00 귀가
22:00 취침
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.10.25(월) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:20 ~ 18:30  --> HSBC 지하 식당 식권 구매(22장: 99,000원)

- 현대해상 SM
- P20101022-0010[장기보험 보상조회 프로세스 개선] 
2. 보상 서류 업로드 파일 확인 및 추가 접수 기능 개발					
3. 첨부파일 용량 및 개수 증설
 가) 보상처리조회(보상창구 => 상해/질병보상): /cybercenter/bosangcenter/bosangListView2.jsp
 나) 3번째 설문내용 입력 / 구비서류 접수(보상처리): /amends/damage/care/accident_take_process_17.jsp
 다) 인터넷 접수(보상처리 새창 띄우기): http://thome.hi.co.kr/amends/damage/care/accident_take_process_17_popup.jsp?seq=4905
2. 관리자 기능 수정
 다) 장기보험 사고가접수 조회(관리자)(http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.JubsuList)
   - /manager/home/care/ViewAccidentList.jsp
 라) 장기보험 사고가접수 상세 조회(관리자)(http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.Jubsu)
   - /manager/home/care/ViewAccident.jsp
----------------------------------------------------------------------------------------------------------

- 보상사고 접수(보상창구 => 상해/질병보상)
1. 보상창구: http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView.jsp
 1) 설문내용입력/구비서류접수: /amends/damage/care/accident_take_process_17.jsp
 가) 구비서류접수(새창): /amends/damage/care/accident_take_process_17_popup.jsp
2. 관리자 기능 수정
 1) 장기보험 사고가접수 조회(관리자)(http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.JubsuList)
   - /manager/home/care/ViewAccidentList.jsp
 2) 장기보험 사고가접수 상세 조회(관리자)(http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.Jubsu)
   - /manager/home/care/ViewAccident.jsp

3. 보상창구(신규)
1) 보상 사고 접수내역 조회(http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.JubsuList)
   - /amends/damage/care/ViewAccidentList.jsp
 2) 보상 사고 접수내역 상세 조회(http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.Jubsu)
   - /amends/damage/care/ViewAccident.jsp, tabView_Detail.jsp
==============================================================================================================

- DB 테이블 수정 요청
1. SAGO_JUBSU(사고 접수 정보) 테이블에서 IMGUPLOAD_UP_DT(추가업로드일자) VARCHAR2(35)
--> EVNT_EVNT_DT(사고일자) VARCHAR2(35)
strbSQL.append(" ,'"+CommonUtil.getParameter(request, "EVNT_EVNT_DT").trim()+"'"); 
==============================================================================================================

- DB 테이블 추가, 수정 요청 절차
1. 1.44.모델변경요청서.xll 작성
2. HD메타시스템(http://meta.hi-portal.co.kr)에서 DA(데이터아키텍쳐) > Non-CIS 모델 > 모델관리 화면에서 
 - DB명: 통합RAC1 시스템명: 홈페이지, 기업보험(B2B), 테이블영문명: SAGO_JUBSU --> 검색(클릭) ==> 
    테이블명 확인
3. PMS 신청서 현황 --> 신청서 --> 신규등록 --> 신청서등록(화면)
 - 수행위치: NON_CIS, 신청서종류: 모델변경요청서(HI-DC), 관련근거: 조회를 클릭하면 SDLC 조회(새창)이 뜸
   (단계가 5. 구현 및 단위테스트가 되어야 자동 조회가 됨)
  --> 상신 --> 처리(결재완료 후 약 하루가 걸림)
==============================================================================================================

- HSBC 지하 식당 식권 구매
1. 할인 금액: 매월 10일, 25일 14~15시에 18층에서 판매(22장: 49,000원 ==> 장당 4,500원)
==============================================================================================================
 					 
■■■■■■■■■■■■■■■■■■ 2010.10.26(화) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:00 ~ 18:30  --> 주간보고서 작성

- 현대해상 SM
- P20101022-0010[장기보험 보상조회 프로세스 개선]
3. 보상창구(신규)
1) 보상 사고 접수내역 조회(http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.JubsuList)
   - /amends/damage/care/ViewAccidentList.jsp
 2) 보상 사고 접수내역 상세 조회(http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.Jubsu)
   - /amends/damage/care/ViewAccident.jsp
==============================================================================================================

- 자산 파악(현대HDS)
1. LCD모니터: HP LE1711(관리번호: D0012232, S/N: CNC028QY1S)
2. PC본체: HP 6000(관리번호: D0010119, S/N: CNG0175W04)
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.10.27(수) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:10 ~ 18:30  --> 서랍 구함(고유진 과장 짐 박스로 정리하여 캐비넷에 보관)

- 현대해상 SM
- P20101022-0010[장기보험 보상조회 프로세스 개선] 
1. 보상창구(신규)
1) 보상 사고 접수내역 조회(http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.JubsuList)
   - /amends/damage/care/ViewAccidentList.jsp
 2) 보상 사고 접수내역 상세 조회(http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.Jubsu)
   - /amends/damage/care/ViewAccident.jsp
==============================================================================================================

- EDMS 연동(EDMS에서 이미지 파일 불러 옴)
/cybercenter/bosangcenter/viewSagoImage.jsp 파일에서
<%@ page import="com.deca.client.EdmsClient"%>
<%@ page import="com.deca.socket.EdmsSocket"%>

EdmsClient edmclient = new EdmsClient();
EdmsSocket edmsocket = new EdmsSocket();

String dcmId = "";    // docID
String fileForm = ""; // 확장자
String filepath = "";

dcmId    = clxm0041vo[i].getDcmId();
fileForm = clxm0041vo[i].getFileForm(); 
lctgCd = clxm0041vo[i].getLctgCd(); // 대분류 코드 
mctgCd = clxm0041vo[i].getMctgCd();	// 중분류 코드 
formCd = clxm0041vo[i].getFormCd();	// 서식 코드

if(dcmId!=null && !dcmId.equals("")) {
	// 05 --> 13 변경예정(보상 마이그레이션) ===> 11월초에 변경 예정
	// 서식코드가 사진이고, 대분류 : 자동차 보상(CM), 중분류 : 피해자(물)관리(05)인 것만 요청
	if(formCd.equals("0123") && (lctgCd.equals("CM") && mctgCd.equals("05"))) { 
		filepath=edmclient.requestDocument("CM", dcmId, imgPath+"/"+dcmId+"."+fileForm);  // 파일 전송

		if(filepath!=null) {
			System.out.println("조회 성공 : "+dcmId);
		} else {
			System.out.println("조회 실패 : "+dcmId);
		} 
	} 
}
==============================================================================================================

- 채널서비스팀 캘린더 개발
1. 당번 현황(시스템점검토 출력)
2. 일정 캘린더
3. 기타
 가) 달력 소스 ==> ew_web_diary.zip(http://www.okjsp.pe.kr/seq/37249) 
---------------------------------------------------------------------------------------------------------

* 하이방카 테스트 서버 정보 *
서버 IP : 10.10.3.42
서버 계정 : hidev01/hidev01
WEB : /Appl/hibancaCis/docs/
WAS : /Appl/hibancaCis/hibancaCis.ear/hibanca.war/
http://ts.hi-banca.co.kr ===> http://ts.hi-banca.co.kr/error_tip
#하이방카 테스트 DB 서버
IP : 10.18.12.38, PORT:1588
LOGIN ID : dphicybnc/dphicybnc
SERVICE_NAME: INTRAC2
- AMS(접근통젱시스템) http://im.hi.co.kr
==============================================================================================================
						 
■■■■■■■■■■■■■■■■■■ 2010.10.28(목) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:00 ~ 18:30

- 현대해상 SM
- P20101022-0010[장기보험 보상조회 프로세스 개선] 
1. 보상창구(신규)
1) 보상 사고 접수내역 조회(http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.JubsuList)
   - /amends/damage/care/ViewAccidentList.jsp
 2) 보상 사고 접수내역 상세 조회(http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.Jubsu)
   - /amends/damage/care/ViewAccident.jsp
2. 관리자 기능 수정
 1) 장기보험 사고가접수 조회(관리자)(http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.JubsuList)
   - /manager/home/care/ViewAccidentList.jsp, ViewAccidentList.jsp  ==> 추가서류 업데이트(IMGUPLOAD_UP_DT)필드 추가
   - /manager/home/care/servlet/JubsuList.java
   - /manager/home/care/dao/JubsuAdminMgr.java
   - 접수일: 20100802 
   - String upload_sort = (request.getParameter("upload_sort")== null)? "1": request.getParameter("upload_sort");  //정렬 셋팅값
   - ORDER 정렬(NULL 값 뒤로 정렬 시키기)
   ORDER BY NVL(A.IMGUPLOAD_UP_DT,' ') DESC"  //정렬(추가업로드일자)
==============================================================================================================

- 일별 공수등록 현황(프로젝트 ==> 일일공수등록현황)
1. 공수등록(My Portal ==> My page==> 공수등록(10월 공수등록 완료))
==============================================================================================================

- 2010 신사조기회 회비 송금(7~12월: 12만원)
신한은행: 110-289-623439, 예금주: 이승열(016-593-1288)
- 2010 신사조기회 반팔 유니폼비 송금(2만원 송금) 
==============================================================================================================

- 고속버스 예약
동서울터미널 예약 주소 https://www.ti21.co.kr/internet/c2.html
남부터미널 예약 주소 https://www.nambuterminal.co.kr/internet/sub_01.asp
강남터미널 예약 주소 https://www.hticket.co.kr
==============================================================================================================

- 옥이 고모 딸 결혼
1. 2010.10.31(일) 대구 월배 글로리아 3층 13:20
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.10.29(금) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:00 ~ 18:30  --> 아침시스템 당번

- 현대해상 SM
- P20101022-0010[장기보험 보상조회 프로세스 개선] 
1. 사고접수(상해/질병보상 --> 사고접수)
 가) 사고접수(수정): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView.jsp)
 나) 처리절차(수정): (http://thome.hi.co.kr/amends/damage/care/accident_takeDetailView02.jsp)
 다) 보험금 청구대행 서비스 안내(수정): (http://thome.hi.co.kr/amends/damage/care/DirectOneDetailView.jsp)

2. 접수내역 확인(상해/질병보상 --> 사고접수)
 가) 접수내역 조회(신규): (http://thome.hi.co.kr/amends/damage/care/ViewAccidentList.jsp, tabView_Detail.jsp) 
 나) 접수내역 상세 조회(신규): (http://thome.hi.co.kr/amends/damage/care/ViewAccident.jsp)
 다) 구비서류접수(수정): (http://thome.hi.co.kr/amends/damage/care/accident_take_process_17.jsp)
 라) 구비서류접수(새창)(수정): (http://thome.hi.co.kr/amends/damage/care/accident_take_process_17_popup.jsp)
 마) 파일 업로드 함수(신규): 
  - /hi/amends/common/Progress.java, ErrorManager.java, HIUploadException.java
 바) 접수내역 조회(수정):  /hi/amends/dao/JubsuMgr.java

3. 관리자 기능 수정
 가) 장기보험 사고가접수 조회(관리자) (수정): (http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.JubsuList)
   - /manager/home/care/ViewAccidentList.jsp  ==> 추가서류 업데이트(IMGUPLOAD_UP_DT)필드 추가
 나) 장기보험 사고가접수 엑셀다운로드(관리자) (수정):(http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.Jubsu)
   - /manager/home/care/ViewAccidentList_excel.jsp
  다) /hi/manager/home/care/servlet/JubsuList.java, /dao/JubsuAdminMgr.java
==============================================================================================================

- R20101029-0020[장기보상상담자 변경]
- 보상상담(1:1 전문가 상담) 변경(김병구(/307576/HDMF) 과장 ==> 안재진(/305642/HDMF) 차장)
http://thome.hi.co.kr/amends/counsel/expert/amendsoneconselSelectView.jsp 
1. 1:1 전문가상담: http://thome.hi.co.kr/amends/counsel/expert/amendsoneconselWriteView.jsp?cate=5
2. 담당자 변경: /hi/amends/servlet/OnetoOneWriteServlet.java
3. 추가이미지: /images/newimages/service/img_counsel15.jpg
==============================================================================================================

- 자동차 운전면허 적성검사: 2010.12.24(금)까지 완료할 것
1. 준비물: 면허증, 반명함판 칼라사진(3cm×4cm) 2매, 갱신 수수료: 10,000원, 지정병원의 신체검사서
2. 적성검사기간 경과 범칙금: 9월 초과는 6만원의 범칙금이 부과(1년 초과시: 운전면허취소)
 1) 적성검사기간: 2009.06.24 ~ 2009.09.24
3. 신체검사 지정병원(http://www.dla.go.kr/Servlet/Oeo01Servlet?Category=1111&topFlag=5&submenu=1&hdnMode=hospitalpg
   &Categoryname=강서면허시험장)(검사비: 5,000원) ==> 관악경찰서: T) 1566-0112, 본관 Desk 안내실
  1) 사랑의 병원: 관악 봉천7동 1664-1, T) 875-1100, 880-0102, 토: 09:00 ~ 13:00
  2) 강남고려병원: 관악 봉천6 동36-83, T) 874-8001, 874-8001
==============================================================================================================
					
■■■■■■■■■■■■■■■■■■ 2010.10.30(토) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:30 ~ 00:00
 
- SFR(4째주)
07:30 기상
09:10 사랑의 병원 ==> 적성검사(혈압: 133/87, 시력: 2.0/2.0): (검사비: 5,000원)
09:30 관악경찰서(본관) ==> 당직이 적성검사기간 경과 범칙금 떼오라고 함
09:50 봉천4출장소(낙성지구대) ==> 문잠겨 있어 되돌아 옴
10:20 관악경찰서 교통 조사계 경찰한테 적성검사기간 경과 범칙금 뗌
10:25 자동차 운전면허 적성검사 접수완료(수수료: 10,000원)
10:30 관악경찰서 드라마 촬영(박해미, 임채무)
11:00 귀가
12:00 중식
13:10 Super Fast-Reading 학원
14:10 강의 ==> 속법, 시상(1분 1페이지때문에 혼남) ==> 읽지 말고 봐라(소리 끊기)
17:30 저녁(컵라면 밥)
18:00 강의
19:30 종료
20:00 귀가
==============================================================================================================
 		
■■■■■■■■■■■■■■■■■■ 2010.10.31(일) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:30 ~ 00:00 

▦조기축구
06:00 기상
07:00 신구초등학교
07:35 신구초등학교 출발(미니 버스)
08:30 평택 공설운동장(평원 조기회)
09:40 게임(3:1 패)
10:20 간식(새우, 골뱅이, 문어)
10:30 게임(3:1 패): 공격수로 출전
11:30 상호차(희원)
12:30 신사중학교
13:10 Super Fast-Reading 학원
14:10 강의 ==> 속법, 시상
17:30 저녁(컵라면 밥)
18:00 강의
19:30 종료
20:00 귀가
============================================================================================================== 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //----------------------------------------------------------+ 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 