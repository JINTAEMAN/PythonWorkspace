

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+----------------------------------------------// Memo(2018.03) //----------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2018.03.01(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==> 삼일절(공휴일), 중식(김치찌개: 예지분식 -> 이준복 팀장)

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★]
- 메인(BIZLI_S0114.xfdl) 화면 수정 ==> 수정 완료[▲▲▲]
1. 공지사항(3개) Display: 클릭 ==> 공지상세 팝업
2. 게시판 조회수(HIS_COUNT) 칼럼 수정
--------------------------------------------------------------------------------------------------------------

/* 게시판 상세 조회 - 조회수 수정[tfb.biz.bizbb.dao.BizbbMapper.hitPlus] */
UPDATE UXJP_BBS_POST
SET HIS_COUNT = (
	SELECT COUNT(*) + 1
	FROM UXJP_BBS_USER_HIT
	WHERE BBS_BOARD_CODE = #{BBS_BOARD_CODE}		-- 게시판코드(CRM_005: 공지사항, CRM_002: 자료실, CRM_003: 자주묻는 질문)[▲]
		AND BBS_POST_CODE = #{BBS_POST_CODE}				-- Post코드(파일번호)[▲▲▲]
		AND HIT_EMP_NO = #{EMP_NO} 
	)
	WHERE BBS_BOARD_CODE = #{BBS_BOARD_CODE}
		AND BBS_POST_CODE = #{BBS_POST_CODE}  
;
-------------------------------------------------------------------------------------------------------------- 

-- 조회수 수정 @@@
UPDATE UXJP_BBS_POST
-- SET HIS_COUNT = 3
-- SET HIS_COUNT = '4' 	-- 조회수는 VARCHAR 타입이지만 3, '4'로 모두 업데이트 가능 함(Tibero DB 안 좋음)
WHERE BBS_BOARD_CODE = 'CRM_005'	-- 게시판코드(CRM_005: 공지사항, CRM_002: 자료실, CRM_003: 자주묻는 질문)[▲▲▲]
	AND BBS_POST_CODE = 589				-- Post코드(파일번호)[▲▲▲] 
;
--------------------------------------------------------------------------------------------------------------

-- 칼럼 추가 @@@
ALTER TABLE UXJP_BBS_POST ADD ( 
    HIS_COUNT INTEGER	     -- 조회수 칼럼 데이타 타입을 VARCHAR(20)에서 INTEGER로 변경
)
;

-- 게시물목록(UXJP_BBS_POST) TB 칼럼 형번환
-- 칼럼 추가 @@@
ALTER TABLE UXJP_BBS_POST ADD ( 
    HIS_COUNT INTEGER	     -- 조회수 칼럼 데이타 타입을 VARCHAR(20)에서 INTEGER로 변경
)
;

-- 칼럼 수정 @@@
ALTER TABLE UXJP_BBS_POST MODIFY ( 
    HIS_COUNT INTEGER	 -- 조회수 
)
;
--------------------------------------------------------------------------------------------------------------
 
-- 칼럼 삭제 @@@    
ALTER TABLE UXJP_BBS_POST DROP COLUMN HIS_COUNT2
;
==============================================================================================================

- Iject 분석(/Iject.js 파일에서)
1. /Iject.js 파일에서 소스 수정  ==>  Genarate Application 처리 ==> eclipse에서 /WebContent를 Refresh(F5)할 것
==============================================================================================================

- eclipse에서 프로젝트 import 하기
1. 좌측 상단 File탭 -> Import 클릭 or 익스플로러에서 마우스 우측버튼 클릭 -> Import탭 -> Import 클릭
2-1. General -> Existing Projects into Workspace 선택
2-2. Next 클릭
3-1. Select root directory -> Browse 클릭
3-2. 추가할 Project 선택  ==> .project 파일이 존재하고 WebContent 폴더가 존재해야 함
 ==> .project 파일에서 nexacro-xeni명이 생성되어 있으면 충돌이 일어남(nexacro-xeni명 삭제나 변경할 것)
3-3. 확인 클릭
4-1. 내가 import할 project가 check 되었는지 확인.
4-2. Copy project into workspace 버튼 체크
    (나의 워크스페이스 안에 이 프로젝트를 통째로 복사하겠다는 의미)
4-3. Finish 클릭
4-4. 익스플로러에 원하는 프로젝트가 추가되었다면 완료. 
==> https://polyglotm.github.io/2015-08-03-eclipse-se-import-or-eclipse-se-project.html
--------------------------------------------------------------------------------------------------------------

- Java project 를 web application 구현시 셋팅하는 Dynamic Web Project 로 변환하기
1. C:\eduNexaBase\workspace\nexacro-xeni\.settings\org.eclipse.wst.common.project.facet.core.xml 파일에서
<runtime name="Apache Tomcat v6.0"/>				 // Apache Tomcat v6.0 추가 @@@@
<installed facet="jst.web" version="3.1"/> 				// Dynamic Web Module version  ==> 3.1에서 2.5로 변경 @@@@
 
  1) 수정된 org.eclipse.wst.common.project.facet.core.xml 파일
 <?xml version="1.0" encoding="UTF-8"?>
<faceted-project>
	  <runtime name="Apache Tomcat v6.0"/>	 // Apache Tomcat v6.0 추가 @@@@
	  <fixed facet="wst.jsdt.web"/>
	  <installed facet="java" version="1.5"/>
	  <installed facet="jst.web" version="2.5"/>		// Dynamic Web Module version  ==> 3.1에서 2.5로 변경 @@@@
	  <installed facet="wst.jsdt.web" version="1.0"/>
</faceted-project> 

2. 좌측 상단 프로젝트를 선택 : 마우스 우측버튼 클릭 > Properties(새창)
3. Properties(새창) > Project Facets
 1) Dynamic Web Module 선택 ==> 2.5로 수정
 2) Java 선택 ==> 1.5로 수정 
 3) Runtimes(탭)에서 Apache Tomcat v6.0: 체크  > Apply > OK: 클릭
4. Serves에 ApacheTomcat v6.0 Server가 생성됨
 1) Edit Web Module(새창) > Path: / ==> OK: 클릭
5. 웹서버 실행 ==> http://localhost:8080/basemdi/index.html 
==> ==> http://testuser.tistory.com/category/Eclipse
------------------------------------------------------------------------------------------------------

- Tomcat 서버 생성 실패(nexacro-xeni 생성된 후)
1. 현상: Tomcat version 7.0 only supports J2EE 1.2, 1.3, 1.4, and Java EE 5 and 6 Web modules
2. 조치: 
C:\eduNexaBase\workspace\nexacro-xeni\.settings\org.eclipse.wst.common.project.facet.core.xml
<runtime name="Apache Tomcat v6.0"/>					// pache Tomcat v6.0 추가 @@@@
<installed facet="jst.web" version="3.1"/> 				// Dynamic Web Module version  ==> 3.1에서 2.5로 변경 @@@@
 
<?xml version="1.0" encoding="UTF-8"?>
<faceted-project>
  <runtime name="Apache Tomcat v6.0"/>
  <fixed facet="wst.jsdt.web"/>
  <installed facet="java" version="1.5"/>
  <installed facet="jst.web" version="2.5"/>
  <installed facet="wst.jsdt.web" version="1.0"/>
</faceted-project> 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.03.02(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 12:40 ~ 23:00 ==> 장인.장모 입국(06:50)

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★]
- 작은 화면에서 큰 화면으로 되면 모달의 검은색 창이 안늘어나는 문제 ==> 
1. /Iject.js 파일에서
showModal : function(o, oData, fncCallback)
{
	cf.set_layered(false);									// layered([false]
	cf.set_autosize(oData.bAutoSize);			// autosize[true]
	cf.set_resizable(oData.bResize);				// resize[false]
}
==============================================================================================================

- showModal 로 팝업을 띄울때 배경 색 조절 문의
childFrame.style.set_overlaycolor("#7f8c9aff"); 와 같이 배경색상 조절이 가능  
==============================================================================================================

-  세금우대내역 조회(Popup) 팝업 기능 수정 ==> 수정 완료[▲▲▲]
1. 최대화 사용 가능하게 수정
 1) resizable = true로 설정
2. division 세로길이 고정 
 1) div_search 속성 scrollbar을 autoboth에서 none로 설정, div_src_info 속성 scrollbar을 autoboth에서 none로 설정
 2) div_search 속성 width(1160) 입력, div_src_info 속성 width(1160) 입력
==============================================================================================================

- 공지사항 수정
1. 작성자로 검색 시 작성자 아닌 사람도 나옴
==============================================================================================================

- 파일 송수신 협조 요청
1. 박일경 부장이 파일 송수신 개발((주)서화) 부분 도와 주라고 이야기 함
==============================================================================================================

- 장인, 장모 마중
05:00 기상(수종이도 같이 감)
05:30 대림역 도착(대림역 -> 인천공항역)
06:40 인천공항역 도착
06:50 장인, 장모 만남(수종)
07:10 공항 버스(인천공항역 -> 대림역)
08:40 대림역
08:50 귀가(큰 짐 2개 들고 옴)
12:40 출근
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.03.03(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 19:00 ==> 주말 근무, 중식(김치찌개: 예지분식), 석식(치즈돈가스: 김밥천국 남구로점)

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★]
- Iject eclipse 환경 설정
1. HTML5 설정 완로 ==> http://localhost:8080/basemdi/index.html
==============================================================================================================

- JSP 웹프로그래밍 - 이클립스 다이나믹 웹프로젝트(Eclipse dynamic web project) 설정[유투브 동영상]
https://www.youtube.com/watch?v=TuwORSsxIM0
==============================================================================================================
 
- 작은 화면에서 큰 화면으로 되면 모달의 검은색 창이 안늘어나는 문제 ==> 수정 완료[▲▲▲]
1. /Iject.js 파일에서
showModal : function(o, oData, fncCallback)
{
	cf.set_layered(false);									// layered([false]
	cf.set_autosize(oData.bAutoSize);			// autosize[true]
	cf.set_resizable(oData.bResize);				// resize[false]
}
==============================================================================================================

- 전자정부 표준프레임워크 온라인 교육
https://www.youtube.com/watch?v=FeTfhptuWdg&feature=youtu.be
http://www.egovframe.go.kr/EgovDevEnvRelease_300.jsp?menu=3&submenu=2&leftsub=2

- 전자정부 표준프레임워크  강좌[잠자리]
https://www.youtube.com/watch?v=LbPhNq54tsE
http://www.jamjalee.com/egovframe-introduction/
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.03.04(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 19:00 ==>  

- 주말2
08:00 기상
08:30 조식(빵)
11:00 중식: 장인, 장모
12:10 집출발
12:20 대동초병설유치원 방문 ==> 루옌, 수종
12:30 7호선 대림역(장모님 금산으로 일하러감: 루엔 고속터미널까지 배웅)
12:50 다이소(본드, 수종 젓가락, 스카치 테이프)
12:20 귀가
12:50 TV 시청 == 낮잠
17:10 기상(축구하러 못 감)
17:30 집출발(자전거)
17:40 GS25대림디지털점(구로1교) ==> 택배 박스에 테이핑할 테이프가 없다고 해서 나옴
17:50 이마트 구로점 ==> 택배 박스에 테이핑함
18:00 GS25구로디지털점(디지털로) ==> 포항집에 택배(커피, 깨) 부침(택배비 6천원, 할인: 천 2백원 ==> 총 택배비: 4천 8백원)
18:20 귀가
19:00 석식
22:00 취침
==============================================================================================================

- 01. 편의점 택배(GS25, CU) [Postbox]
1. http://www.cvsnet.co.kr/postbox/m_member/login_S.jsp
2. GS2 GS25구로디지털점에서 택배 부침 ==> GS25대림디지털점(구로1교), GS25대림역점(대림역), GS25구로디지털점(디지털로)
 1) 18_0304_포항집(깨 커피) 보냄
==============================================================================================================

- 블루투스 이어폰 사양[회사에서 사용하는 개인 이어폰]
MODEL: HBS-800 QC2 PASS
STEREO HEADSET
FCC ID: BEJBHS800
SN: 1407037
==> 밧데리 충전은 USB로 충전할 것
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.03.05(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:00 ==>  

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★]
- 게시판 수정 ==> 수정 완료[▲▲▲]
1. 게시판 상세에서 삭제 후 창닫기
==============================================================================================================

- 게시판 파일 업로드 파일 용량 수정 ==> 수정 완료[▲▲▲]
1. 20M에서 100M로 수정
==============================================================================================================

- validation 분석
1. validation 체크 함수 IE10 에서 에러 발생 
// 폼 로딩 Event ▣▣
this.form_onload = function(obj:Form, e:nexacro.LoadEventInfo)
{
	alert("[/shu_kosyou_sagyo.xfdl] [shu_kosyou_sagyo_onload()] ==> [T: 수리일보 화면] [폼 로딩] [TEST_01] =====> @@@@" ); 
	
	//기본 공통  함수 초기화
	Iject.formOnload(obj); 
}
==============================================================================================================

- IE10 에서 테스트할 방법
1. ITTester 다운로드 및 설치
https://www.my-debugbar.com/wiki/IETester/HomePage 
--------------------------------------------------------------------------------------------------------------

- 웹사이트가 IE8, IE9, IE10에서 잘 나오는지 테스트하는 방법(가상머신),
https://www.cmsfactory.net/node/40024

- VirtualBox로 ie10 테스트 하기
http://goni9071.tistory.com/entry/VirtualBox%EB%A1%9C-ie10-%ED%85%8C%EC%8A%A4%ED%8A%B8-%ED%95%98%EA%B8%B0- 
웹사이트가 IE8, IE9, IE10에서 잘 나오는지 테스트하는 방법(가상머신),
https://www.cmsfactory.net/node/40024

- VirtualBox로 ie10 테스트 하기
http://goni9071.tistory.com/entry/VirtualBox%EB%A1%9C-ie10-%ED%85%8C%EC%8A%A4%ED%8A%B8-%ED%95%98%EA%B8%B0
==============================================================================================================
 
- 은행연합회 Prj[★]
1. 전자정부프레임워크(egovFrameDev-3.6.0-64bit)
 1) eclipse 버전 ==> Eclipse Java EE IDE for Web Developers
Version: Mars2 Release (4.5.2)
Buid id: 20160218-0600
2.전자정부 표준프레임워크 사이트 회원 가입
==> http://www.egovframe.go.kr,  tamario / h*수*16*1@
==============================================================================================================

- 72. 전자정부프레임워크 강의 동영상_02 시청
1. https://www.youtube.com/watch?v=VKXtRm7w0IU&t=272s
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.03.06(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==> 입학식(10시, 대동초유치원): 불참, 투비S 기술 지원(14시 ~ 17시)  

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★] 
- validation check(세금우대소급시스템에서 로그인에서 테스트)
1. IE 10에서 syntax error  ';'이 필요합니다.
 --------------------------------------------------------------------------------------------------------------

- ';'이 필요합니다.
1. 세미콜론을 사용하여 각 문의 끝을 표시
2. 함수가 괄호를 올바르게 사용 
3. for 루프의 헤더 안에 세미콜론을 사용 
==============================================================================================================

- 개발서버에서 open 함수 사용하면 주소 표시줄 생김(로컬 서버에서는 안 생김)
==============================================================================================================

- 투비S 기술 지원(14시, 명동)
1. 개발서버에서 open 함수 사용하면 주소 표시줄 생김(로컬 서버에서는 안 생김) ==> 해결 못함
2. validation ==> 해결 못함
==============================================================================================================

- 캐리어 벨트(4개): 가방 벨트, 가격 14,990원(개당: 3,400원)
http://itempage3.auction.co.kr/DetailView.aspx?ItemNo=B445832634 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.03.07(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==> 

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★] 
- validation check(세금우대소급시스템에서 로그인에서 테스트) 
==============================================================================================================

- 은행연합회 통합업무시스템 사이트(방화벽이 열려서 가능함 ==> 김범준 차장이 고객에 요청해서 해결)
https://new.bizinfo.kfb.or.kr/index_biz.html

- 은행연합회 Prj에서 공인인증서 받기[IE만 사용가능]
https://new.bizinfo.kfb.or.kr/install/01_tester21.zip   ==> 01_tester21.zip 파일을 은행연합회 FTP(10.1.3.5.12)에서
install 경로(/install)에 넣어두면 됨

- 은행연합회 Prj에서 validation 소스 받기[IE만 사용가능]
https://new.bizinfo.kfb.or.kr/install/Validation.zip

- 은행연합회 Prj로 파일 보내기[IE만 사용가능]
1. https://new.bizinfo.kfb.or.kr/index_biz.html > 자료실에서 파일 업로드 
 1) 자료실 상세화면에서 해당 파일: 더블 클릭 > 다운로드 받기
  2) 은행연합회 FTP(10.1.3.5.12)에서 파일 경로(/upload/bbs) 폴더에서 파일 받기
==============================================================================================================

- 일본 히스콤 H-PLM 전환 Prj 소스 이메일 발송
1. 일본측에서 최신 소스 요청
 1) 구종식 부장에게 전화와서 파일(/moms_Nexa.zip) 메일로 보냄
=============================================================================================================
 
- Eclipse SVN 제외 방법
http://yysvip.tistory.com/182
1. 전역 키워드 추가
window -> proference -> team -> ignored resources
add pattern 버튼 누르고 패턴 추가해주면 됨.
.project .classpath .settings 
*/target/**           <-- 메이븐 빌드디렉토리 @@@
*[★].xprj

2. 디렉토리/파일별 설정
프로젝트 익스플로어 -> 파일선택 후 우 클릭 -> Team -> Add to svn:ignore.. 
Add to svn:ignore.. 메뉴가 없거나 비활성화되는경우는 이미 대상파일/디렉토리가 소스관리를 받고있는 상황.. 이 경우에는 ignored 설정 
불가함.. ==> 이 경우에는 두 가지 선택이 있을 수 있음.
 가) 위의 전역 키워드를 추가하는 방법을 사용.. 
 나) 대상을 백업후 svn에서 대상을 삭제한 상태에서 svn에 커밋해서 형상관리에서 삭제..
한 뒤 대상을 복구.. 그리고 Add to svn:ignore.. 활성화된 걸 확인 후 ignored 설정 완료.
=============================================================================================================

- 전자정부프레임워크 실습(02.개발환경)
1. 02.개발환경_실습교재.pptx
 1) HSQLDB 간단한 사용법 (+ 이클립스 연동) ==> https://m.blog.naver.com/PostView.nhn?blogId=b_lackie&logNo=150168391015&proxyReferer=https%3A%2F%2Fwww.google.co.kr%2F 
=============================================================================================================
 
- LAB 1-1 프로젝트 생성 실습
1. 기본 게시판 목록  ==> http://localhost:8080/lbl101/egovSampleList.do
=============================================================================================================

- LAB 1-2 Code Generation 실습(CRUD 프로그램 코드 생성)
1. 목록  ==> http://localhost:8080/lab102-code-generation/
http://localhost:8080/lab102-code-generation/sample/SampleList.do 
--------------------------------------------------------------------------------------------------------------

- 소스코드 자동생성 디렉토리 정보 입력
1. /lab102-code-generation/src/main/resources/egovframework/sqlmap/example,
2. egovframework.example.sample.service.impl
3. egovframework.example.sample.service

4. egovframework.example.sample.service
5.  govframework.example.sample.service.impl

6.  govframework.example.sample.web
7. /lab102-code-generation/src/main/webapp/WEB-INF/jsp/egovframework/example
=============================================================================================================
 
- LAB 1-3 테스트케이스 작성 및 수행 실습 ==> http://localhost:8080/lab102-code-generation/
1. JUnit Test Case  ==> https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:dev2:tst:test_case
=============================================================================================================

- LAB 1-5 템플릿 프로젝트 생성 실습
1. 표준프레임워크 샘플 홈페이지  ==> http://localhost:8080/sht_webapp/cmm/main/mainPage.do
=============================================================================================================

1. F12 > 에뮬레이션( IE10)으로 설정
 1) 현상
 SyntaxError: ';'가 필요합니다.
 in eval script(http://localhost:8090/tax/CommLib/CommLibValidation.xjs.js)
=============================================================================================================

- SECURE 코딩 작업
1. BIZINFO_20180305_filter2.xls ==> 세금우대쪽은 강과장이 처리 한다고 함
=====================================================================================

■■■■■■■■■■■■■■■■■■ 2018.03.08(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==> 

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★] 
- 공지사항: 씨큐어 코딩 점검결과 조치건
1. 씨큐어코딩(취약점점검) 점검을 받은 결과에 대한 조치가 이루어져야 합니다. 클라우드 파일서버 루트에 [시큐어코딩_공유] 폴더에 
보시면 BIZINFO_20180305_filter2 엑셀파일과 워드파일이 존재합니다. 엑셀파일기준으로 배경색상이 없는 항목을 기준으로 1레벨부터 
수정이 필요합니다. 파일명이 존재하니 개발담당자들이 직접 수정하기로 진행합니다.  
==============================================================================================================

- KISA
1. 항목별 보안 취약성 점검
==============================================================================================================

- 픽픽 단축키
0. ppicpick_inst_kr.exe 파일 다운로드==> http://ngwin.com/kr/download
1. 단축키
 1) 윈도우 컨트롤 캡처하기: Shift + Ctrl + 9
 2) 영역을 지정하여 캡처하기: Shift + Ctrl + 0
 3) 자동 스크롤 캡처하기: Shift + Ctrl + 8
 4) 색상 추출 도구: Shift + Ctrl + 4
==============================================================================================================

- 익스플로러 팝업창에 주소 표시 나타내기 또는 없애는 방법
1. IE  > 보안 > 사용자 지정 수준(C) > 보안 설정 (새창)
 1) 웹 사이트에서 주소 또는 상태 표시줄 없이 창을 열도록 허용 > 사용(클릭: 주소창 안 보임[정상]) ==> 확인(클릭)
  > 사용안함(클릭: 주소창 보임[보안 위배]) ==> 확인(클릭)
https://m.blog.naver.com/PostView.nhn?blogId=nkkr01&logNo=132710968&proxyReferer=https%3A%2F%2Fwww.google.co.kr%2F
==============================================================================================================

- 은행연합회 Prj에서 Memo(2018.03).zip 받기[IE만 사용가능]
1. https://new.bizinfo.kfb.or.kr/install/TAMA/Memo(2018.03).zip
==============================================================================================================

- 메뉴 위치 수정 ==> 수정 완료[▲▲▲]
//중메뉴 열기
this.openSubPage = function(sMenuId)
{ 
	alert("[/BIZLI_S0113.xfdl] [openSubPage()] ==> [폼 로딩] [T: 메인-TOP] [TEST_01]");
	
	// 선택된 Menu Info
	var oObj = {
		ds		: application.gds_menu,	// 메뉴 dataset 
		id		: sMenuId,				// 선택된 메뉴아이디(=MENU_ID)
		oArgs	: []					// 넘길 argument
	};
	this.pdiv_subMenu.fn_createSubMenu(oObj);
	// this.pdiv_subMenu.trackPopup(40, 120, 1200, 340, "", false);
	this.pdiv_subMenu.trackPopup(360, 120, 1200, 340, "", false);	// 수정[trackPopup 메소드에서 x좌표 변경(40 -> 360)], 2018.03.08, by 진태만 
}
==============================================================================================================

- 작은 화면에서 큰 화면으로 변경되면 모달의 검은색 창이 안늘어나는 문제 ==>  
0. showModal: 동적으로 생성한 ChildFrame을 모달 창으로 보여주는 메소드 
showModal : function(o, oData, callback)
{
	cf.set_layered(false);					// layered: 투명 윈도우로 띄울지 여부를 설정하는 속성 // 수정[layered = false로 설정]: 2018.03.03, by 진태만
	cf.set_autosize(true);					// autosize[true]// 수정[autosize =true로 설정]: 2018.03.03, by 진태만
	//cf.set_resizable(oData.bResize);		// resize[false]
	cf.set_resizable(false);				// resize[false]  // 수정[resize = false로 설정]: 2018.03.03, by 진태만
	alert("[/Iject.js] [showModal()] ==> [showModal] [TEST_78] [oData.sUrl]"+ oData.sUrl +"[oData.bAutoSize]"+ oData.bAutoSize +"[oData.bResize]"+ oData.bResize ); 
)
==============================================================================================================

- 개발서버에서 open 함수 사용시 주소 입력창 생성(로컬서버에서는 주소 입력창 안 보임) ==> 문의 완료[▲▲▲]
1. 투비 고개센터에 문의 ==> 주소창은 IE 문제라고 함
//화면 열기
this.fn_openPage = function(sSelMenuId)
{	
	var gdsMenu  = Iject.$["gds_menu"];
	var sPageId  = gdsMenu.lookup("MENU_ID", sSelMenuId, "PAGE_ID");
	var sPageUrl = gdsMenu.lookup("MENU_ID", sSelMenuId, "PAGE_URL");
	//trace("[/CommCompSubMenu.xfdl] [fn_openPage()] ==> [화면 열기] [TEST_01] [sPageId]"+ sPageId +"[sPageUrl]"+ sPageUrl );
	//alert("[/CommCompSubMenu.xfdl] [fn_openPage()] ==> [화면 열기] [TEST_01] [sPageId]"+ sPageId +"[sPageUrl]"+ sPageUrl );
	
	if(Eco.isEmpty(sPageUrl)) return;
	
	if(application.gds_userInfo.getColumn(0, "USER_ID") == "tester21")  	// 로그인ID가 tester21 이면[개인 테스트용]
	{	 
		trace("[/CommCompSubMenu.xfdl] [fn_openPage()] ==> [화면 열기] [TEST_41] [sPageId]"+ sPageId +"[sPageUrl]"+ sPageUrl );
		alert("[/CommCompSubMenu.xfdl] [fn_openPage()] ==> [화면 열기] [TEST_41] [로그인ID]"+ 
		application.gds_userInfo.getColumn(0, "USER_ID") +"[sPageId]"+ sPageId +"[sPageUrl]"+ sPageUrl );	
	}
	
	Iject.open(this, sSelMenuId+"_"+sPageId, sPageUrl, {});
}

// popup 호출
open : function(o, sId, url, oArg, sOption, fnCallback)
{
	sOption = "resizable=true showtitlebar=true showstatusbar=false";  // 수정[resizable 처리]: 2018.03,02, by 진태만
			
	if (sId == "bizbbR0202" || sId == "bizbbR0201")		// 메뉴명이 "자료실 상세" 또는 "자료실 등록/수정" 이면 ==> 화면 사이즈 작게 처리
	{ 
		//alert("[/Iject.js] [open()] ==> [popup 호출] [TEST_71] [sId]"+ sId );    		 
		bSucc = application.open(sId, url, cf, oArg, sOption, 780, 190, 900, 700, pThis);	// 수정[Width(1160), Height(840) 추가]: 2018.02.20, by 진태만	 
	}
	else	// 그 외 이면
	{
		//alert("[/Iject.js] [open()] ==> [popup 호출] [TEST_72] [sId]"+ sId ); 
		//bSucc = application.open(sId, url, cf, oArg, sOption, nLeft, nTop, null, null, pThis);  // modaless 화면 팝업
		bSucc = application.open(sId, url, cf, oArg, sOption, nLeft, nTop, 1160, 840, pThis); 	// 수정[Width(1160), Height(840) 추가]: 2018.02.20, by 진태만
	}
}
==============================================================================================================

 0. 파일 업로드 경로 ==> /jeus/app/jeus2/bizinfonew/upload/bbs
 - JEUS 서버 재기동
1. IE -> http://10.1.35.12:29736/webadmin/login 접속 후 kfbadmin / jeusadmin 로그인
 -> 왼쪽 메뉴 중 "servers" 선택 -> TAX_REQUEST : STOP & START
  1) java. xml 수정시 만 재시작할 것(==> 나머지는 FTP로 올릴 것(.js도 마찬가지)
==============================================================================================================

- 세금우대 내역 및 한도 조회(TAB_01)(/BIZTX_S0101.xfdl) 화면 수종
1. 세부내역 관리(BIZTX_P0111.xfdl) 팝업 화면  Iject.showModal에서 Iject.open 으로 수정
---------------------------------------------------------------------------------------------------------------

-일괄해지(/BIZTX_R0501.xfdl)
1. 일괄해지 내역등록(/BIZTX_P0511.xfdl)
/***********************************************************************************
* 저축코드 등록 팝업
***********************************************************************************/
this.btn_searchSavKndCd_onclick = function(obj:Button,  e:nexacro.ClickEventInfo)
{
	var oData = {
		sId           : "popup_BIZCM_P0125", 		//callback id
		sUrl          : "BIZCM::BIZCM_P0125.xfdl",	//url
		bshowtitlebar : false, 						//title bar
		bAutoSize     : true, 						//autosize
		bResize       : true, 						//resize
		bShowtatusbar : false, 						//statusbar
		sOpenalign    : "center middle",			//align
		oArgs         : []
	};
	
    //Popup
	Iject.showModal(this, oData, function()
	{
		var sJson = this.variant;

		var pThis = this.fobj;

		if ( sJson != "" )
		{
			pThis.edt_sav_knd_cd.set_value(sJson[0]);
		}
	});
}

//Confirm Button Click Event
this.btn_confirm_onclick = function(obj:Button,  e:nexacro.ClickEventInfo)
{ 
	alert(pThis.ds_map.getColumn(0,"RSP_ERR_COMMENT") + "(" + pThis.ds_map.getColumn(0,"RSP_CD") +")");
	if(pThis.ds_map.getColumn(0,"RSP_CD") == "000") {
		//pThis.close();
		Iject.popClose(pThis, "");
	}
	
	return;
}
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.03.09(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==> 

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★] 
- 세금우대 내역 및 한도 조회(TAB_01)(/BIZTX_S0101.xfdl) 화면 수정 ==> 수정 완료[▲▲▲]
1. 세부내역 관리(BIZTX_P0111.xfdl) 팝업 화면 Iject.showModal에서 Iject.open 으로 수정 
==============================================================================================================

- Edit 컴포넌트에 포커스가 들어갔을 때 텍스트 내용이 존재하면 자동으로 전체 선택 ==> 수정 완료[▲▲▲]
// Edit 변경 Event ▣▣ 
this.div_search_edt_req_jumin_pre_ontextchanged = function(obj:Edit,  e:nexacro.TextChangedEventInfo)
{  
	//set JuminNo
	this.div_search.edt_req_jumin.set_value(this.div_search.edt_req_jumin_pre.value);  
  
	var oReq_jumin_pre = this.div_search.edt_req_jumin_pre;	 	// 주민번호1{Object} 		// 추가[Object]: 2018.03.09, by 진태만
	var oReq_jumin_mask = this.div_search.edt_req_jumin_mask;	// 주민번호2{Object}		// 추가[Object]: 2018.03.09, by 진태만
	//trace("[/BIZTX_S0101.xfdl] [div_search_edt_req_jumin_pre_ontextchanged()] ==> [TEST_03] [주민번호1]"+ oReq_jumin_pre +"[주민번호2]"+ oReq_jumin_mask );
	
	this.gfn_setAutoSelectEdit(oReq_jumin_pre, oReq_jumin_mask);		// 주민번호 전체 선택, 포커스 처리 함수 호출	// 추가[Object]: 2018.03.09, by 진태만
}
--------------------------------------------------------------------------------------------------------------

/**
 * @class 주민번호 전체 선택, 포커스 처리	 ==> // 추가[Object]: 2018.03.09, by 진태만 
 * @param oReq_jumin_pre{Object} : 주민번호1
 * @param oReq_jumin_mask{Object} : 주민번호2 
 * @return  
 */  
this.gfn_setAutoSelectEdit = function(oReq_jumin_pre, oReq_jumin_mask)
{  
	//trace("[/CommLibUtil.xjs] [gfn_setAutoSelectEdit()] ==> [TEST_01] [주민번호1]"+ oReq_jumin_pre +"[주민번호2]"+ oReq_jumin_mask );
 
 	if( oReq_jumin_pre.value.length == 6 )  // 주민번호1 Edit의 길이가 6자리 이면
	{ 
		//trace("[/CommLibUtil.xjs] [gfn_setAutoSelectEdit()] ==> [ontextchanged] [TEST_02] [oReq_jumin_pre.value.length]"+ oReq_jumin_pre.value.length );
	 
 		if( !nexacro._isNull(oReq_jumin_mask.value ))  // 주민번호2 Edit가 존재하면 ==> 값 전체 포커스 처리
		{
			//trace("[/CommLibUtil.xjs] [gfn_setAutoSelectEdit()] ==> [ontextchanged] [TEST_60] [주민번호2 Edit가 존재하면 ===> 값 전체 포커스 처리]");
			oReq_jumin_mask.set_autoselect(true);	// Edit 컴포넌트에 포커스가 들어갔을 때 자동으로 전체 선택을 할지 여부를 지정
			oReq_jumin_mask.setFocus(); 	// 주민번호2 Edit 포커스 처리 
		}
		else
		{
			//trace("[/CommLibUtil.xjs] [gfn_setAutoSelectEdit()] ==> [ontextchanged] [TEST_70] [주민번호2 Edit가 존재 안하면]");
			oReq_jumin_mask.setFocus(); 	// 주민번호2 Edit 포커스 처리 
		}
	}  
} 
==============================================================================================================

-세금우대 조회 조건 처리  ==> 수정 완료[▲▲▲]
this.BIZTX_S0102_onload = function(obj:Form, e:nexacro.LoadEventInfo)
{
	//alert("[/BIZTX_S0102.xfdl] [BIZTX_S0103_onload()] ==> [로딩] [TEST_01]" );
  
	// 세금우대 조회 조건 처리 ==> // 추가: 2018.03.09, by 진태만  
	this.fn_setTaxSearhCond(); 
}

this.BIZTX_S0102_onactivate = function(obj:Form, e:nexacro.ActivateEventInfo)
{
	//alert("[/BIZTX_S0102.xfdl] [BIZTX_S0102_onactivate()] ==> [TEST_01]" );
	
	// 세금우대 조회 조건 처리
	this.fn_setTaxSearhCond(); 
}

// 세금우대 조회 조건 처리 ▣▣
this.fn_setTaxSearhCond = function()
{  
	//alert("[/BIZTX_S0102.xfdl] [fn_setTaxSearhCond()] ==> [세금우대 조회 조건 처리] [TEST_01]" );
	
	if( !nexacro._isNull(application.gfv_search_tp_cd))  this.div_search.cmb_search_tp_cd.set_value(application.gfv_search_tp_cd);		// 조회구분 gfv 설정
	if( !nexacro._isNull(application.gfv_realIdNo))  this.div_search.edt_req_jumin.set_value(application.gfv_realIdNo);					// 주민번호 gfv 설정
	if( !nexacro._isNull(application.gfv_reqJuminPre))  this.div_search.edt_req_jumin_pre.set_value(application.gfv_reqJuminPre);		// 주민번호1 gfv 설정
	if( !nexacro._isNull(application.gfv_reqJuminMask))  this.div_search.edt_req_jumin_mask.set_value(application.gfv_reqJuminMask);	// 주민번호2 gfv 설정
	if( !nexacro._isNull(application.gfv_sav_knd_cd))  this.div_search.edt_sav_knd_cd.set_value(application.gfv_sav_knd_cd);			// 저축종류코드 gfv 설정
	if( !nexacro._isNull(application.gfv_search_tp_cu))  this.div_search.cmb_search_tp_cu.set_value(application.gfv_search_tp_cu);		// 조회사유코드 gfv 설정
	if( !nexacro._isNull(application.gfv_search_tp))  this.div_search.edt_search_tp_cu.set_value(application.gfv_search_tp);			// 조회사유 gfv 설정 
	//alert("[/BIZTX_S0101.xfdl] [fn_setTaxSearhCond()] ==> [로딩] [TEST_91] [조회구분 gfv]"+ application.gfv_search_tp_cd +"[주민번호 gfv]"+ 
	application.gfv_realIdNo +"[주민번호1 gfv]"+ application.gfv_reqJuminPre +"[주민번호2 gfv]"+ application.gfv_reqJuminMask 
	//	+"[저축종류코드 gfv]"+ application.gfv_sav_knd_cd +"[조회사유코드 gfv]"+ application.gfv_search_tp_cu +"[조회사유 gfv]"+ application.gfv_search_tp );
}
==============================================================================================================

- Edit 변경시 2번째 Edit이 존재하면 전체 선택
// Edit 변경 Event ▣▣
this.div_search_edt_req_jumin_pre_ontextchanged = function(obj:Edit,  e:nexacro.TextChangedEventInfo)
{
	trace("[/eDIT.xfdl] [div_search_edt_req_jumin_pre_ontextchanged()] ==> [Edit 변경 Event] [TEST_01] =====> @@@@" ); 
	
	//set JuminNo
	this.div_search.edt_req_jumin.set_value(this.div_search.edt_req_jumin_pre.value);
	//trace("[/shu_kosyou_sagyo.xfdl] [fn_search()] ==> [Edit 변경 Event] [TEST_02] [div_search.edt_req_jumin_pre.value]"+ this.div_search.edt_req_jumin_pre.value ); 
  
	if( obj.value.length == 6 )   // 주민번호1의 길이가 6자리 이면
	{
		trace("[/shu_kosyou_sagyo.xfdl] [fn_search()] ==> [Edit 변경 Event] [TEST_41] [주민번호1의 길이]"+ obj.value.length 
		+"[div_search.edt_req_jumin_pre.value]"+ this.div_search.edt_req_jumin_pre.value ); 
 
		if (!nexacro._isNull(this.div_search.edt_req_jumin_mask.value)) 	// 주민번호2에 값이 존재하면 ==> 값 전체에 포커스 처리 
		{
			trace("[/shu_kosyou_sagyo.xfdl] [fn_search()] ==> [주민번호2에 값이 존재하면] [TEST_61] [주민번호2]"+ this.div_search.edt_req_jumin_mask.value ); 
			this.div_search.edt_req_jumin_mask.set_autoselect(true);		// Edit 컴포넌트에 포커스가 들어갔을 때 자동으로 전체 선택을 할지 여부를 지정
			trace("[/shu_kosyou_sagyo.xfdl] [fn_search()] ==> [주민번호2에 값이 존재하면] [TEST_62] [주민번호2]"+ this.div_search.edt_req_jumin_mask.autoselect );
			this.div_search.edt_req_jumin_mask.setFocus();		 // 주민번호2 Focus처리 
		}
		else
		{
			trace("[/shu_kosyou_sagyo.xfdl] [fn_search()] ==> [주민번호2에 값이 존재하면] [TEST_60] [주민번호2]"+ this.div_search.edt_req_jumin_mask.value );
			this.div_search.edt_req_jumin_mask.setFocus();		 // 주민번호2 Focus처리 
		}  
	}
} 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.03.10(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 19:00 ==> 주말근무, 전체 출근(PL 오전에 나왔다가 14시 약속 있다고 퇴근)

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★] 
- 게시판 수정
1. 삭제 에러 수정 ==> 수정 완료[▲▲▲]
==============================================================================================================

- 씨큐어 코딩(취약점 점검) 점검 ==> 수정 완료[▲▲▲]
 1) SPARROW-A Semantic-based Static Code Analysis Tool ==> admin1, / b1234567!,
http://10.1.19.125:18080/login.spw;jsessionid=90C4F58E005BEC9E9D6261CD642063A6?nextUrl=http%3A%2F%2F10.1.19.125%3A18080%2Freport.spw%3FdefectId%3D97.159.65
 2) 수정 파일
/BiztxS0101Controller.java, /BiztxS0102Controller.java, /BiztxS0103Controller.java, /BiztxS0104Controller.java, /BiztxS0105Controller.java 
/BizUtil.java
--------------------------------------------------------------------------------------------------------------

- /BiztxS0101Controller.java 파일에서
public NexacroResult selectTaxDetailHistManageList(@ParamDataSet(name = "ds_search", required = false) Map map) throws Exception {
	// reqMap.put("REAL_NM_NO", 				nullCheck(map.get("REAL_NM_NO"))			); //CompUtil.getValue(context, "txtTopIdNum"));	//실명번호 
  reqMap.put("REAL_NM_NO", 				BizUtil.nullCheck(map.get("REAL_NM_NO"))			); //CompUtil.getValue(context, "txtTopIdNum"));	//실명번호    ===> @@@ 
	if(map.get("REAL_NM_NO") != null) 	reqMap.put("REAL_NM_NO", map.get("REAL_NM_NO").toString()); else reqMap.put("REAL_NM_NO", ""); 	// 실명번호 ==>
	// 수정[UNCHECKED_NULL 수정]: 2018.03.010, by 진태만   ===> TEST로 처리됨
} 

- /BizUtil.java 파일에서
public static HashMap<String, String> makeEaiCommomData(HashMap<String, String> targetMap, Map sourceMap
	,String docCd,String bizCd, String fnIttCd, String InUserYn)
{
	if(sourceMap.get("USER_ID") != null) 	targetMap.put("USER_ID", sourceMap.get("USER_ID").toString()); else targetMap.put("USER_ID", ""); 			
	// 사용자ID ==> 
	// 수정[UNCHECKED_NULL 수정]: 2018.03.10, by 진태만   
	if(sourceMap.get("USER_NM") != null) 	targetMap.put("USER_NM", sourceMap.get("USER_NM").toString()); else targetMap.put("USER_NM", ""); 	
	//사용자명 ==> 
	// 수정[UNCHECKED_NULL 수정]: 2018.03.10, by 진태만
	/*targetMap.put("USER_ID"        , 	nullCheck(sourceMap.get("USER_ID"))				); 	//sourceMap.getEmp_no());
}

// sController : "biztxS0101SelectTaxDetailHistManageList.do",  
==============================================================================================================
 
- 팝업 분석
1. 모달리스 ==> open, 모달 ==> showModal
- /TI10301.xfdl 파일에서 @@@
// B/L 등록 버튼 클릭 Event ▣▣
this.btnBLReg_onclick = function(obj:Button,  e:nexacro.ClickEventInfo)
{   
	trace("[/TI10301.xfdl] [btnBLReg_onclick()] ==> [B/L 등록 버튼 클릭 Event] [TEST_01]" );  
	
	var nCheckRowCnt = 0; 		var P_QNANO = 333;
	this.dsET_LIST_CHK.clearData();
	
	if(this.dsET_LIST.getRowCount() > 0)
	{     
		for (var i=0; i < this.dsET_LIST.getRowCount(); i++) 
		{	 
			if(this.dsET_LIST.getColumn(i, "CHK") == 1)
			{
				nCheckRowCnt = nCheckRowCnt + 1 ;
				this.dsET_LIST_CHK.addRow();
				this.dsET_LIST_CHK.copyRow(this.dsET_LIST_CHK.getRowCount()-1,this.dsET_LIST,i);		// dsET_LIST_CHK을 dsET_LIST에서 복사					
			}
		}
	}
 
	var params = {		 // popup parameter
		pDs: this.dsET_LIST_CHK	// dsET_LIST_CHK Ds
		, P_MODE:"C"						// 저장 모드(S:조회, C:등록, M:수정, D:삭제) 파라미터
		, P_QNANO: P_QNANO		//  QnA NO.
	}

	//var sOption = "titletext=, popupType=modal, resizable=false";	 // Modal 팝업(showModal 처리) 
	var sOption = "titletext=, popupType=modeless, resizable=false";   // Modeless 팝업(open 처리) 
	trace("[/TI10301.xfdl] [btnBLReg_onclick()] ==> [(B/L 등록 버튼 클릭 Event] [TEST_41] [params]"+ params +"[sOption]"+ sOption ); 
	
	this.gfn_openPopup("modeless_popup", "TI::TI10301_Popup.xfdl", params, sOption, "fn_openpopCallback");   // Modeless 팝업(open 처리)
}
--------------------------------------------------------------------------------------------------------------

// PopUp CallBack  Event ▣▣
this.fn_openpopCallback = function(id, objRtn)
{    
	trace("[/TI10301.xfdl] [fn_openpopCallback()] ==> [팝업 콜백] [TEST_01] [id]"+ id +"[objRtn]"+ objRtn ); 
 
	if(objRtn) 	// Pop up에서 저장 성공 이면
	{ 
		this.fn_search(); 		// 조회 함수 호출
	}
 
	switch(id) 
	{
		case "modal_popup":  	// id가 modal_popup 이면
			break;
			
		case "modeless_popup": 	// id가 modeless_popup 이면
			break; 
	}
}
--------------------------------------------------------------------------------------------------------------

- /TI10301_Popup.xfdl 파일에서 새창 띄우기 @@@
this.pDs  = "";			// p Ds
this.v_Qnano  = "";			// Qna번호
this.v_Pmode  = "";			// mode
// 폼 로딩 ▣▣
this.fn_onload = function(obj:Form, e:nexacro.LoadEventInfo)
{	
	this.pDs = this.gfn_getParameter("pDs");	
	this.v_Qnano = this.gfn_getParameter("P_QNANO");	// QnA NO.
	this.v_Pmode = this.gfn_getParameter("P_MODE");		// 저장 모드(S:조회, M:수정, S:조회) 
}
------------------------------------------------------------------------

// 저장 ▣▣
this.btnSave_onclick = function(obj:Button,  e:nexacro.ClickEventInfo)
{  
	var strSvcId = "TI10301_PopupRfcSave";
	var strSvcUrl = "/TI/selectTiBlSaveA.do";
	var inData = "dsIMS_ZTITBLK=dsEXS_ZTITBLK ㄴ=dsEXT_ZTITBLP";	 	// inData
	var outData = "dsET_RETURN=dsET_RETURN" ; 	// outData:
	var strArg = "IP_MODE=C";  					// IP_MODE(저장: 'C', 변경: 'M', 삭제: 'D')
	var callBackFnc = "fn_callback";
  
	this.gfn_transaction(strSvcId, strSvcUrl, inData, outData, strArg, callBackFnc, svcType, isAsync, bWait);
} 
------------------------------------------------------------------------

// 저장 후 콜백 ▣▣
this.fn_callback = function(sTrId, nErrorCode, sErrorMsg)
{ 
	var strMessage = ""; 
 
	switch(sTrId)
	{ 
		case "TI10301_PopupRfcSave":  
			//this.gfn_showMsgBox("0014", "fn_msgCallback", "");   	// alert msg ==> 0014: 저장이 완료되었습니다.   
			this.gfn_closePopup("S"); 	 //  창 닫기
			break;
	}
} 
--------------------------------------------------------------------------------------------------------------

- /HoilForm.js 파일에서 @@@
/**
 * @class ModalSync 팝업 닫고 Global Valiable(GV_POPRTN, GDSL_M_POPUP)에 값 설정 
 */
LIB_FORM.gfn_closePopup = function(rtnval) 
{
    var strPopupID = application.getActiveForm().getOwnerFrame().name;
 
	if( this._gfn_isDataset2(rtnval) ) {
		var rtnDataset = new Dataset();
		rtnDataset.assign(rtnval);
		rtnval = rtnDataset;
	}		
	
	this._gfn_setVariable(strPopupID+"_POPUP_RETURN_VALUE_",     rtnval);
	this._gfn_setVariable(strPopupID+"_POPUP_RETURN_VALUE_ARGC", 1);

	this.close();
};

/**
 * @class 팝업창 호출 (모달/모달리스 포함) 
 */
LIB_FORM.gfn_openPopup = function (sPopupId, sUrl, oArg, sOption, sPopupCallback, isMsgBox)
{ 
	trace("[/HoilForm.js] [gfn_openPopup()] ==> [팝업창 호출] [TEST_01] [sPopupId]"+ sPopupId +"[sUrl]"+ sUrl +"[sOption]"+ sOption 
		+"[sPopupCallback]"+ sPopupCallback +"[isMsgBox]"+ isMsgBox ); 
 
    if (popupType == "modeless") 		// Modeless 팝업
    { 
		application.open(sPopupId, sUrl, application.mainframe, oArg, sOpenStyle.trim(), nLoginLeft, nLoginTop, nWidth, nHeight-20, this);		// open 처리
	} 
    else	  // Modal, showModalWindow, ModalSync 팝업
    {  
		if (popupType == "modal") 		// Modal 팝업
		{			
			// Modal(html5기본, cllback으로만 리턴 받을 수 있음)	
			newChild.showModal(sPopupId, objParentFrame, oArg, this, ""); 	// showModal 처리
		}
	}
};
==============================================================================================================

- 삼성전자서비스센터 종로휴대폰센터 방문(13시, 종각 삼성증권BD 10층)
1. 갤럭시 노트5 액정 필름 깨짐 ==> 서비스 기사(김상태 CS프로)가 액정 필름(내 것) 교체 해줌(새것 같음)
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.03.11(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 19:00 ==>  

▦ 축구
10:00 기상(피곤)
10:30 중식
11:10 집출발(자전거): 수종
11:20 대림역(6511번 버스, 수종)
12:10 서울대 정류장 도착 
12:30 관악도서관(1층, 수종)
13:00 관악도서관(3층)
13:10 종료
13:20 서울대 정류장 도착 
14:00 대림역(6511번 버스, 수종)
14:10 중식(치즈돈가스: 포마토 식당): 수종 
14:10 종료
14:20 구로리 공원(수종)
15:10 귀가
15:50 집출발(자전거)
16:08 대림운동장 ==> 영등포연합회장기 노년부 대회 개최 중
		==> 영만이형에게 전화 --> 6시 ~ 8시: 고척운동장으로 변경됨
16:50 귀가
17:30 집출발(자전거)
18:00 고척운동장(고척스카이돔 옆 축구장 ==> 인조 잔디, 라이트 시설 잘 되어 있음) 도착
18:10 최상용 장로님 만남(은혜교회팀, 대림3동 조기회)
16:30 게임(은혜교회팀, 어울림FC연합: 흰색 유니폼팀[벤츠]: 손훈 감독이 섭외) 
		==> 2쿼터 뜀: 상대팀이 젊고 패스가 좋아서 고전함
20:00 종료
20:10 고척운동장 출발(자전거) ==> 자전거 너무 열심히 달려서 다리에 쥐가 남
20:40 귀가 
21:00 석식
23:00 취침
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.03.12(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:30 ==>  

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★] 
- 팝업 수정
- /BIZTX_S0101.xfdl 파일에서[세금우대 내역 및 한도 조회(TAB_01)]
// 세부내역 관리 버튼 클릭 Event  ▣▣
this.btn_register_manage_onclick = function(obj:Button,  e:nexacro.ClickEventInfo)
{  
	var	oArgs  = { arg1 	: 'new',		// 수정(Args 추가]: 2018.03.08, by 진태만					  
					  arg21 : ltmHsngSavQlfcCd, 
					 P_MODE : 'M',		// 저장 모드(S:조회, C:등록, M:수정, D:삭제) 파라미터	// TEST @@@ ===>
					 P_QNANO : '12345'	// Qna번호	// TEST @@@ ===>
	
	var nFormWidth = 671;		// 팝업창 넓이
	var nFormHeight = 746;		// 팝업창 높이
	
	//팝업
	//Iject.open(this, "BIZTX_P0111", "BIZTX::BIZTX_P0111.xfdl", oArgs);	// 세부내역 관리 팝업 ==> 수정(Iject.open 추가]: 2018.03.08, by 진태만 
	
	// var sOption = "titletext=, popupType=modal, resizable=false";	// modal 설정
	var sOption = "titletext=, popupType=modeless, resizable=false";   	// modeless 설정 
	//alert("[/BIZTX_S0101.xfdl] [btn_register_manage_onclick()] ==> [세부내역 관리 버튼 클릭 Event] [TEST_41] [nFormWidth]"+ 
	nFormWidth +"[nFormHeight]"+ nFormHeight +"[sOption]"+ sOption +"[oArgs]"+ oArgs );  
	
	// this.gfn_openModeless("BIZTX_P0111", "BIZTX::BIZTX_P0111.xfdl", nFormWidth, nFormHeight, sOption, oArgs);	
	// 팝업창 호출(모달리스: Callback 없음) 
	
	this.gfn_openPopup("BIZTX_P0111", "BIZTX::BIZTX_P0111.xfdl", oArgs, sOption, "fn_openpopCallback");   	// 팝업창 호출(모달, 모달리스)}
}

this.fn_openpopCallback = function(id, objRtn)
{    
	trace("[/BIZTX_S0101.xfdl] [fn_openpopCallback()] ==> [팝업 콜백] [TEST_01] [id]"+ id +"[objRtn]"+ objRtn ); 
	alert("[/BIZTX_S0101.xfdl] [fn_openpopCallback()] ==> [팝업 콜백] [TEST_01] [id]"+ id +"[objRtn]"+ objRtn ); 
 
	if(objRtn)  // 팝업 콜백 결과 성공이면
	{ 
		trace("[/BIZTX_S0101.xfdl] [fn_openpopCallback()] ==> [팝업 콜백 결과 성공이면] [TEST_70] [id]"+ id +"[objRtn]"+ objRtn ); 
		
		// this.fn_search(); 		// 조회 함수 호출
	}
	
	switch(id)
	{
		case "modal_popup":  
			break;
			
		case "modeless_popup": 
			break;
			
		default:
			break;
	}
}
==============================================================================================================

- 파일 업로드 용량 수정(100M로 20M로 변경 ==> 수정 완료[▲▲▲]
0. 파일 업로드 경로 ==> /jeus/app/jeus2/bizinfonew/upload/bbs
0. 파일 업로드 경로 ==> C:\eGovFrameDev-3.6.0-64bit\eclipse\workspace\bizinfo_branch\WebContent\upload
1. 파일 업로드(/BIZCM_P0103.xfdl) 파일에서 
this.fileConfig = { 
	//maxSize       : "100MB",	// 파일 크기['':자료실, 공지사항, 자주묻는 질문, RA':기본등록,'AE':조립실명번호, 'LI':로그인, 'FI':파일]  	
	// 수정(100MB로 증가]: 2018.03,05, by 진태만
	maxSize       : "20MB",	// 파일 크기['':자료실, 공지사항, 자주묻는 질문, RA':기본등록,'AE':조립실명번호, 'LI':로그인, 'FI':파일]  	
	// 수정(20MB로 증가]: 2018.03,12, by 진태만 
}; 
==============================================================================================================

- DB 테이블 DROP
17:30 은행연합회 출발(김범준 차장)
17:50 석식(김치찌개: 예지분식)
18:10 은행연합회 복귀
18:50 최상욱 과장이 전화와서 석식 산다고 함(나와 김범준 차장 빼고 모두 갔다 옴)
20:00 최상욱 과장이 15층 내자리 옆(박건유 대리 자리) 와서 운영 DB 권한 관련 테이블 DROP 시키고 난리침
21:00 최상욱 과장이 권한 관련 테이블 설계가 이상하다고 다시 수정 지시
23:00  권한 관련 테이블 수정 완료 되기 전까지 시범 운영 중단 지시
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2018.03.13(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:10 ==> 사무실 커피 다 먹음(당분간 안 사다 놓을 것 같음)

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★] 
- 팝업 수정(Tab에서 팝업 콜백 처리 안됨: 투비소프트에 문의]
==============================================================================================================

-  IE 세션 종료 후 창닫기 문의(투비소프트에 문의]
1. [JTM] IE 세션 종료 후 창닫기 문의 결과 투비소프트에서 통보 받음 --> 박일경 부장(whomi352@naver.com)에게 메일로 보냄
==============================================================================================================

- IE(HTML5) 브라우저에서 서버 종료 후 alert 띄우기(투비소프트에 문의]
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.03.14(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:30 ==> 이윤석 차장이 풍선껌 소리로 시끄럽게 해서 욕하고 난리침(17시: 사과함)

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★] 
- IE 브라이저 서버 종료 후 로그아웃 클릭시 undefined 에러 발생 ==> 수정 완료[▲▲▲]
1. application_onerror 함수 추가 ==> 서버에서 응답 에러 이면[e.statuscode == 499]
- /biz.xadl 파일에서
// application 에러 처리 ▣▣
this.application_onerror = function(obj:Application, e:nexacro.ErrorEventInfo) 
{ 
	//alert("[/biz.xadl] [application_onerror()] ==> [TEST_01] [e.errorcode]"+ e.errorcode +"[e.statuscode]"+ e.statuscode 
	+"[e.errormsg]]"+ e.errormsg +"[e.errortype]]"+ e.errortype +"[e.locationuri]]"+ e.locationuri );
  
	// http 또는 socket 에러코드 404로 실패시
	if (e.errorcode == -2147418085) { 
		if (e.statuscode == 10060) { 
			//"서버와의 통신이 원활하지 않습니다."  
			application.alert(e.statuscode +"\n"+"서버와의 통신이 원활하지 않습니다."+"\n"+ e.errormsg);
		} else if (e.statuscode == 0) {  
			application.alert(e.statuscode +"\n"+"timeout."+"\n"+ e.errormsg); 
		} else if (e.statuscode == 404) {  	//404 에러시 처리 방안 
			application.alert(e.statuscode +"\n"+"Page Not Found"+"\n"+ e.errormsg);
		} else if (e.statuscode == 408) {  //408 Request Timeout 
			application.alert(e.statuscode +"\n"+"Request Timeout"+"\n"+ e.errormsg); 
		} else if (e.statuscode == 500) { 
			application.alert(e.statuscode +"\n"+"Internal Server Error"+"\n"+ e.errormsg); 
		} else if (e.statuscode == 503) {  	//"System is unavailable. Please reconnect after a while." 
			application.alert(e.statuscode+"\n"+"The service is unavailable" + "\n"+e.errormsg); 
		} else if (e.statuscode == 12029) {  //"Has failed to communicate with the current system. Please use it after a while.." 
			application.alert(e.statuscode+"\n"+"A connection with the server could not be established" + "\n"+e.errormsg); 
		} else { 
			alert(e.statuscode + ":" + e.errormsg); 
		}
	}
	if (e.statuscode == 499) { 	// 서버에서 응답 에러 이면
		application.alert("[499] 서버에서 문제가 발생했습니다. 시스템 관리자에게 문의하세요.");
		//application.alert(e.statuscode +"\n"+"Commnication Error"+"\n"+ e.errormsg);
	}
}
--------------------------------------------------------------------------------------------------------------

- //Html5.js 파일에서
logout : function(o)
{ 
	//alert("[/Html5.js] [logout()] ==> [logout 처리] [TEST_01] [gds_userInfo.saveXML()]"+ application.gds_userInfo.saveXML() );
 
	var oDatas = {
		svcid       : "search",
		sController : "bizliS0102Logout.do",
		inds        : ["gds_userInfo=ds_search"],
		outds       : ["gds_userInfo=ds_list"],
		args        : [],
		bAsync      : true,
		nDataType   : 0,
		bCompress   : false
	};
	
	Iject.transaction(o, oDatas, function() {
		//alert("[/Html5.js] [logout()] ==> [logout 처리] [TEST_70] [this.errorcode]"+ this.errorcode ); 
	 
		if (this.errorcode < 0)   // 서버 에러 이면 ==> 서버에서 에러 코드를 던짐
		{ 
			//Iject.alert(this.errorMsg);	 // 수정[Iject 주석 처리]: 2018.03.14, by 진태만  
			return;
		}
		
		window.top.location.reload(true);
	});
}, 
==============================================================================================================

- 팝업하는 자시창 width, height 구하기
- /HoilForm.js 파일에서 확인 불가
LIB_FORM.gfn_openModeless = function(sPopupId, sUrl, nFormWidth, nFormHeight, sOptions, oArgs)
{ 
	var objForm = this.getOwnerFrame().form;   // getOwnerFrame: 현재 VFrameSet을 소유하고 있는 프레임을 가져오는 메소드 
		trace("[/HoilForm.js] [gfn_openModeless()] ==> [팝업창 호출_00] [TEST_02] [application.popupframes.length]"+ application.popupframes.length ); 
		// application.popupframes.length를  0으로 가져옴  ==> 에러 @@@
		
	for(var i=0; i < application.popupframes.length; i++)  // 
	{	     
		// popupform = application.popupframes[i].form;
		trace("[/HoilForm.js] [gfn_openModeless()] ==> [폼 로딩] [TEST_990] [i_번째]"+ i +"[popupform.name]"+ application.popupframes[i].form.name
		+"[getOwnerFrame.width]"+ application.popupframes[i].form.getOwnerFrame().width +"[getOwnerFrame.height]"+ 
		application.popupframes[i].form.getOwnerFrame().height ); 
	}
}

- /testPopUp.xfdl 파일에서
this.fn_onload = function(obj:Form, e:nexacro.LoadEventInfo)
{ 
	trace("[/testPopUp.xfdl] [fn_onload()] ==> [폼 로딩] [TEST_01] [application.popupframes.length]"+ application.popupframes.length ); 
	// application.popupframes.length를 1로 가져옴   ==> 정상 @@@
 
	for(var i=0; i < application.popupframes.length; i++)
	{	 
		//popupform = application.popupframes[i].form;         
		trace("[/testPopUp.xfdl] [gfn_openModeless()] ==> [폼 로딩] [TEST_20] [i_번째]"+ i +"[popupform.name]"+ application.popupframes[i].form.name 
		+"[getOwnerFrame.width]"+ application.popupframes[i].form.getOwnerFrame().width +"[getOwnerFrame.height]"+ 
		application.popupframes[i].form.getOwnerFrame().height ); 
	}	 
	
	// this.gfn_initForm(obj);	 
}
==============================================================================================================

- IE(HTML5) 브라우저에서 서버 종료 후 alert 띄우기(투비소프트에 문의]	 ==> 수정 완료[▲▲▲]
1. 소스 수정
==============================================================================================================

 - 수정 처리
1. \\211.216.2.161\은행연합회\100. PM-사업관리\140. CO-공통\자체테스트결과\최상욱 폴더
 ==============================================================================================================
 
- DB 세이퍼 비밀번호 변경
1. kfbdev.13
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.03.15(목) 작업 ■■■■■■■■■■■■■■■■■■
--> 07:00 ~ 22:30 ==> 정현수 차장 재입(9시): 블록체인 관련 작업: 정차장이 포기하고 철수함

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★]
- 세금우대 내역 및 한도 조회(TAB_01)(/BIZTX_S0101.xfdl)에서 주민번호 13자리 alert 에러 ==> 수정 완료[▲▲▲]
==> 저축종류코드: 10, 41,  조회사유: 은행연합회 권연웅,
this.fn_search = function() 
{
	var idNum			=	""; 
	var idNum2			=	"";			// 추가[주민번호2]: 2018.03.15, by 진태만 
	var idNumJumin_pre_view  =	"";		// 추가[주민번호 pre view]: 2018.03.15, by 진태만
	
	if(this.div_search.edt_req_jumin_pre.visible) 	// 주민번호1이 visible 이면  ==> // 수정[주민번호1 처리]: 2018.03.15, by 진태만  
	{ 
		idNumJumin_pre_view  =	"1";	// 주민번호 pre view
	}
	
	if(!this.gfn_isNull(this.div_search.edt_req_jumin_pre.value)) 	// 주민번호1이 존재하면  ==> // 수정[주민번호1 처리]: 2018.03.15, by 진태만  
	{ 
		idNum			=	this.div_search.edt_req_jumin_pre.value;	// 주민번호1
  
		if(!this.gfn_isNull(this.div_search.edt_req_jumin_mask.value))	// 주민번호2가 존재하면
		{
			idNum2	 =	this.div_search.edt_req_jumin_mask.value;		// 주민번호2
		} 
	} 
	else 
	{ 
		if(!this.gfn_isNull(this.div_search.edt_req_jumin.value)) 	// 주민번호가 존재하면
		{ 
			idNum		=	this.div_search.edt_req_jumin.value;	// 주민번호
		} else {
			idNum		=	"";
		}
	}
	
	var searchTpCdNm	=	this.div_search.cmb_search_tp_cd.value; 	// 조회구분 
	
	if(idNumJumin_pre_view.length > 0)	// 주민번호 Edit가 2개 이면   ==> // 수정[주민번호1 처리]: 2018.03.15, by 진태만  
	{ 
		if(idNum.length != 6)	// 주민번호1이 6자리가 아니면
		{  
			if(searchTpCdNm == 2) 	// 사업자등록번호 이면
			{
				alert("사업자등록번호를 13자리로 입력하세요");
			}
			else if(searchTpCdNm == 3) 	// 법인등록번호 이면
			{
				alert("법인등록번호를 13자리로 입력하세요");
			}
			else	// 주민번호 이면
			{
				alert("주민등록번호를 13자리로 입력하세요");
			} 
			this.div_search.edt_req_jumin_pre.setFocus();
			return;
		}
 
		if(idNum2.length != 7)	// 주민번호2이 7자리가 아니면
		{   
			if(searchTpCdNm == 2) 	// 사업자등록번호 이면
			{
				alert("사업자등록번호를 13자리로 입력하세요");
			}
			else if(searchTpCdNm == 3) 	// 법인등록번호 이면
			{
				alert("법인등록번호를 13자리로 입력하세요");
			}
			else	// 주민번호 이면
			{
				alert("주민등록번호를 13자리로 입력하세요");
			} 
			this.div_search.edt_req_jumin_mask.setFocus();
			return;
		}
	}
	else	// 주민번호 Edit가 1개(edt_req_jumin) 이면 
	{
		if(idNum.length != 13){
			alert("주민등록번호를 13자리로 입력하세요");
			this.div_search.edt_req_jumin.setFocus();
			return;
		}
	}  
	
	var strMsg = "";
  
	if(idNumJumin_pre_view.length > 0)	// 주민번호 Edit가 2개 이면   ==> // 수정[주민번호1 처리]: 2018.03.15, by 진태만  
	{ 
		strMsg = "입력하신 조회요청 식별번호는 [" + idNum +" - "+ idNum2 +"] 입니다.\n 계속 진행하시겠습니까?";
		idNum = idNum + idNum2;
		this.div_search.edt_req_jumin.set_value(idNum + idNum2);	// 주민번호 재 셋팅
		realIdNo = this.div_search.edt_req_jumin.value;	// 주민번호
	} else {
		strMsg = "입력하신 조회요청 식별번호는 [" + idNum +"] 입니다.\n 계속 진행하시겠습니까?";
		this.div_search.edt_req_jumin.set_value(idNum);	// 주민번호 재 셋팅
		realIdNo = this.div_search.edt_req_jumin.value;	// 주민번호
	}
	// alert("[/BIZTX_S0101.xfdl] [fn_search()] ==> [조회] [TEST_51] [조회구분]"+ searchTpCdNm +"[주민번호_Re]"+ realIdNo 
		+"[주민번호 pre]"+ idNumJumin_pre_view +"[idNumJumin_pre_view_L]"+ idNumJumin_pre_view.length  +"[주민번호_1]"+ idNum 
		+"[주민번호_1_자리수]"+ idNum.length +"[주민번호_2]"+ idNum2 +"[주민번호_2_자리수]"+ idNum2.length );
 }
--------------------------------------------------------------------------------------------------------------

// 조회구분 콤보 변경 Event 처리 ▣▣ ==> // 추가: 2018.03.15, by 진태만
this.div_search_cmb_search_tp_cd_onitemchanged = function(obj:Combo, e:nexacro.CanCharEventInfo)
{
	//alert("[/BIZTX_S0101.xfdl] [div_search_cmb_search_tp_cd_onitemchanged()] ==> [조회] [TEST_01]" );
	
	var searchTpCdNm = this.div_search.cmb_search_tp_cd.value; // 조회구분
 
	if(searchTpCdNm == 1){ 	// 주민등록번호 이면 
		this.div_search.edt_req_jumin_pre.set_value("");	// 주민(사업자, 법인) 등록번호1
		this.div_search.edt_req_jumin_mask.set_value("");	// 주민(사업자, 법인) 등록번호2
	}
	else
	{
		this.div_search.edt_req_jumin_pre.set_value("999");	// 주민(사업자, 법인) 등록번호1
		this.div_search.edt_req_jumin_mask.set_value("");	// 주민(사업자, 법인) 등록번호2  
	} 
	this.div_search.edt_req_jumin_pre.setFocus();
}
==============================================================================================================

- svn에서 bizinfo_branch 받기
1. eclipse에서 bizinfo_branch 폴더 삭제
 1) DeleTe project contents on disk  ==> OK: 클릭
2. eclipse > SVN Repository에서==> svn > branches > bizinfo_branch: 마우스 우 클릭 --> CheckOut 클릭
 1) Override Project/Data Folder(새창) > bizinfo_branch: 체크 ==> OK: 클릭
==> commit할 때 Nexacro 프로그램 종료할 것
3. Nexacro에서 generate Application할 것
==============================================================================================================

- 팝업 메뉴 수정
1. 1개의 메뉴 ==> 2개의 메뉴로 분리(gds_menu)
==============================================================================================================

- 파일 다운로드 보안 위반 분석
==============================================================================================================

- SW 개발 보안 가이드 교육(16시, 전산탬 강규원 대리)
1. 모의해킹 증적.zip, SW개발보안가이드_배포버전.pdf
2. 서버쪽에 보안 설정이 제대로 안 되어 있음
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.03.16(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==>   

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★] 
- 파일 다운로드 
0. 파일 업로드할 때 DRM 등으로 보안을 걸린 파일을 업로드할 것
1. 파일 암호화되는 파일
 1) .doc, .hwp, .xls, .hwp, .pdf,  
2. 파일 암호화 안되는 파일
 1) .txt, .pdf,   
----------------------------------------------------------------------------------------------------

// 파일 다운로드 처리 ▣▣
this.downloadFile = function(row)
{ 
	alert("[/CommCompDownload.xfdl] [downloadFile()] ==> [파일 다운로드] [TEST_01]");	
	
		if (!this.confirm("다운로드 하시겠습니까?")) 	// 수정[confirm]: 2018.02.23, by 진태만 
	{
		return;
	}
	
	var ds_download = this.ds_download;
	var	fileId, fileName, fileSize = 0, fileInfo, downloadUrl, fileSaveName;
	var tranFiles = this.tranFiles;
		tranFiles.downloaded = [];
	
	//progressbar 초기화
	ds_download.setColumn(row, "PROG", 0);
	fileId   = ds_download.getColumn(row, "FILE_ID");			// 파일 ID
	fileDir  = ds_download.getColumn(row, "PHY_FILE_PATH");		// 파일 경로 폴더
	fileName = fileDir + "/" + ds_download.getColumn(row, "PHY_FILE_NM");		// 파일명(FULL)
	fileRealName = ds_download.getColumn(row, "FILE_NM");	// 파일명
	fileSize = ds_download.getColumn(row, "FILE_SIZE");		// 파일 크기
	fileInfo = {"id": fileId, "name": fileName, "size": fileSize, "row": row};		// 파일 정보
	
	tranFiles.downloaded.push(fileInfo);
	var downloadUrl = this.fileConfig.host + this.fileConfig.downloadUrl;	// 다운로드 URL
 
	var encodeFileName = escape(encodeURIComponent(fileName));		// 파일명(encode)
	
	var downloadFileName = downloadUrl + encodeFileName;	// 다운로드 파일명(FULL)
	alert("[/CommCompDownload.xfdl] [downloadFile()] ==> [파일 다운로드] [TEST_91] [fileName_ORI]"+ fileName +"[downloadUrl]"+ downloadUrl 
	+"[파일명(encode)]"+ encodeFileName +"[다운로드 파일명(FULL)]"+ downloadFileName +"[fileRealName]"+ fileRealName );
	
	this.extDown.download(downloadUrl + encodeFileName, fileRealName);
}
--------------------------------------------------------------------------------------------------------------

- /CommLibFile.xjs 파일에서
this.gfv_fileConfig = {
					host          : application.services["svcurl"].url,
					uploadUrl     : "advancedUploadFiles.do",
					downloadUrl   : "advancedDownloadFile.do?fileName=",	  // 다운로드 URL
					downloadUrl_2   : "advancedDownloadFile.do?fileId=",	  // 다운로드 URL2
					deleteUrl     : "advancedDeleteFiles.do",
					downImage     : "CommImg::fileUpDownload/img_file.png",
					delImage      : "CommImg::fileUpDownload/btn_del.png",
					allowTypes    : ["jpg","jpeg","gif","png","bmp","tif","txt","zip","7z","gzip","doc","docx","ppt","pptx","xls","xlsx","pdf"],
					allowTypes_ra : ["jpg","jpeg","gif","png","bmp","tif","xls","xlsx","pdf"],
					allowTypes_ae : ["jpg","jpeg","gif","png","bmp","tif","pdf"],
					allowTypes_li : ["jpg","jpeg","gif","png","bmp","tif","pdf"],
					allowTypes_fi : ["jpg","jpeg","gif","png","bmp","tif","txt","zip","7z","gzip","doc","docx","ppt","pptx","xls","xlsx","pdf"],
					maxCount      : 10,			// 파일 최대 수
					maxCount_c5   : 10,			// 파일 최대 수(게시판: 공지사항)('C5':공지사항, 'C2':자료실, 'C3':자주묻는 질문) 
					maxCount_c3   : 10,			// 파일 최대 수(게시판: 자료실)('C5':공지사항, 'C2':자료실, 'C3':자주묻는 질문) 
					maxCount_c2   : 10,			// 파일 최대 수(게시판: 자주묻는 질문)('C5':공지사항, 'C2':자료실, 'C3':자주묻는 질문) 
					maxCount_ra   : 10,
					maxCount_ae   : 10,
					maxCount_li   : 1,
					maxCount_fi   : 1,   
					maxSize       : "20MB",		// 파일 크기(게시판)['':자료실, 공지사항, 자주묻는 질문, RA':기본등록,'AE':조립실명번호, 'LI':로그인, 'FI':파일]  	
					// 수정(100MB로 증가]: 2018.03,05, by 진태만 ==> // 수정(20MB로 증가]: 2018.03,12, by 진태만 
					maxSize_c5    : "20MB",		// 파일 크기(게시판: 공지사항)('C5':공지사항, 'C2':자료실, 'C3':자주묻는 질문) 
					maxSize_c2    : "20MB",		// 파일 크기(게시판: 자료실,)('C5':공지사항, 'C2':자료실, 'C3':자주묻는 질문)
					maxSize_c3    : "20MB",		// 파일 크기(게시판: 자주묻는 질)('C5':공지사항, 'C2':자료실, 'C3':자주묻는 질문)
					maxSize_ra    : "20MB",		// 파일 크기(기본등록) ['RA':기본등록, 'AE':조립실명번호, 'LI':로그인]
					maxSize_ae    : "20MB",		// 파일 크기(조립실명번호) ['RA':기본등록, 'AE':조립실명번호, 'LI':로그인]
					maxSize_li    : "5MB",		// 파일 크기(로그인) ['RA':기본등록, 'AE':조립실명번호, 'LI':로그인]
					maxSize_fi    : "100MB",	// 파일 크기(파일) ['RA':기본등록, 'AE':조립실명번호, 'LI':로그인, 'FI':파일]
					maxTotalSize  : "200MB"		// 전체 파일 크기
				  };
--------------------------------------------------------------------------------------------------------------

1. 공지사항  파일 다운로드
==> /advancedDownloadFile.do?fileName=bbs%252F201803%252F20180315_1.xls

2. 자료실 파일 다운로드
==> http://localhost:8080/advancedDownloadFile.do?fileName=%252Ffiles%252F0%252F486%252F2016%252F09%252F26%252F1474882230274_0_88411.fileUploadList
=====================================================================================

- 상속인 인수인계(박권유 대리에게 인수인게 받음(19시))
1. STEP01_파일업로드(/BIZTX_F0801.xfdl)
2. STEP02_입력 내용 조회(/BIZTX_S0802.xfdl)
3. STEP03_기관별 상속인 파일 접수 결과 조회(/BIZTX_S0803.xfdl)
 1) STEP03_팝업다운로드(/BIZTX_P0803.xfdl)
 2) STEP03_팝업다운로드(/BIZTX_P0803.xfdl)
4. 상속인 정보 결과 확인(/BIZTB_S0804.xfdl) 
==============================================================================================================

- 주간보고(10시)
1. 결함이 많이서 다음주 오픈 연기 ==> 2018년 3월 21일(수)에서.03.26(월)
==============================================================================================================

- File Download 서비스
1. http://www.egovframe.go.kr/wiki/doku.php?id=egovframework:rte:fdl:file_download
2. http://www.playnexacro.com/index.html#show:article
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.03.17(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 19:00 ==> 주말근무, 중식(김치찌개, 예지식당 -> 이준복 팀장[만원 냄], 강전과 과장): 내가 쏨

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★] 
- 상속인 분석 
1. STEP01_파일업로드(/BIZTX_F0801.xfdl)
 1) 집중정보 파일명 ==> 파일 형식이 맞아야 함  

2. STEP02_입력 내용 조회(/BIZTX_S0802.xfdl)
 1) 기준일자(당일날자) ==> TEST로 날짜 풀어 놓음
 2) 핸도픈 변경 버튼 클릭(/div_search_btn_Print2_onclickl): 478건
 
3. STEP03_기관별 상속인 파일 접수 결과 조회(/BIZTX_S0803.xfdl)
 1) IQ9011 데이터 체크(/BIZTX_P0804.xfdl)   	==> Grid에서 레코드체크 칼럼 클릭('check' 글이 보여야 팝업됨) --> 0219
 2) STEP03_팝업다운로드(/BIZTX_P0803.xfdl) 	==> Grid에서 다운로드 칼럼 클릭
 3) 상속인 정보 결과 확인(/BIZTX_P0805.xfdl) ==> 조회 보기 조건 --> 0219
	 1. Grid에서 전송완료 
	==> 이미 처리 되었습니다. 재작업시 전산부로 연락 부탁 드립니다.
	2. Write[enable] 
 
4. STEP04_금융기관 조회결과 파일 생성(/BIZTB_S0804.xfdl)
==> 4. 상속인 정보 결과 확인(/BIZTB_S0804.xfdl)
3. STEP03_기관별 상속인 파일 접수 결과 조회(/BIZTX_S0803.xfdl)
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.03.18(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 19:00 ==>  

▦ 축구
10:00 기상
10:30 조식(콘프레이크)
12:10 집출발(자전거): 수종 
13:00 종료
14:20 구로리 공원(수종)
15:30 중식(돌솥밥, 치즈돈가스: 김밥천국)
15:30 엘마트(우유, 빵)
16:10 귀가
16:20 간삭(떡뽑기, 오뎅): 수종, 루옌
16:30 집출발(자전거)
17:08 서울디지털운동장 도착[서울시 금천구 가산동 459-18)
		(남구로시장 > 가마산로 지하도 > 구로차량사업소 > 행단보도 건너기 > 남부순환로 방향으로 우 회전 > 3거리 > 
		유앤아이APT > 한일 유앤아이 교차로(직진) > 가산디지털로(롯데정보통신 보임) > 신호등 1개 지남 > 서울디지털운동장
17:30 게임(은혜교회팀: 노랑 유니폼팀 ==> 2터 뜀: 상대팀이 젊음, 운동장 넓어서 힘들었음, 마지막 쿼터에 골기퍼 봄
19:00 종료
19:10 고서울디지털운동장 출발(자전거) ==> 가마산로 터널에서 지하 차도 못 찾아 헤넴(왔든 길로 다시 감)
20:00 귀가 
20:20 석식(닭 백숙)
23:00 취침
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.03.19(월) 작업 ■■■■■■■■■■■■■■■■■■ 
--> 07:00 ~ 23:00 ==> 송준빈 대리 투입(9시): 철수, 정현수 차장, 구종식 부장 투입(15시): 블록체인 관련 작업: 1주일(설계, 개발)
								, 석식(감자탕, 소주: 신동궁 식당 -> 구부장, 정차장, 강과장, 박대리)

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★]
- 상속인 수정
- STEP03_기관별 상속인 파일 접수 결과 조회(/BIZTX_S0803.xfdl)
==> STEP03_1. 조회[/biztxS0803List.do]
biztxS0803Mapper.biztxS0803insert(map);		// 상속 은행 정보 등록	
<update id="biztxS0803insert"  parameterType="hashMap" >
	<![CDATA[
		/* STEP03_상속 은행 정보 등록[kfb.biz.biztx.dao.BiztxS0803Mapper.biztxS0803insert] */
		INSERT INTO HEIR_BANK_LIST
		(	INPT_DATE,
			INPT_BANK,
			INPT_RDATE,
			INPT_FLAG
		 )
		(
			SELECT #{_SEARCH3_DATE},
					 A.BANK,
					'00000000',
					'0'
			 FROM BIZINFO.HEIR_BANK A
			 WHERE 1=1
					AND A.BANK NOT IN( 	SELECT INPT_BANK
													FROM BIZINFO.HEIR_BANK_LIST
													WHERE INPT_DATE= #{_SEARCH3_DATE})
				   AND RETIRE= '0'
				   AND A.BANK != '9999'
				   AND (( #{_SEARCH3_DATE} < '20151113' AND RANK < '0051') 
						OR #{_SEARCH3_DATE} > '20151116')
			GROUP BY A.BANK
		)
	]]>	
</update>
--------------------------------------------------------------------------------------------------------------

1. STEP01_파일업로드(/BIZTX_F0801.xfdl)
 1) 집중정보 파일명 ==> 파일 형식이 맞아야 함(무조건 오늘날짜)
- /AdvancedFileController.java 파일에서
public synchronized List<Map> UploadInsertService(Map map)throws Exception{		
	msg_mgr.log_master(conn);		// 파일업로드 정보 저장
}
--------------------------------------------------------------------------------------------------------------

- /BizFileInputData.java 파일에서
public int insert_HEIR_master(
	pstmt = conn.prepareStatement("insert into BIZINFO.HEIR_MASTER_NEW#("
	+ "			?,?,?,?,?,?,?,?,?,XX1.ENC_VARCHAR_INS(?,11,'KFB_EN','HEIR_MASTER_NEW#','ances_phone'))");

	pstmt.setString(1, inpt_date);
	pstmt.setString(2, kfb_seq);
	pstmt.setString(40, ances_phone);

	rtn_val = pstmt.executeUpdate();

	conn.commit();
}		
==============================================================================================================
 
[/AdvancedFileController.java] [uploadFiles()] ==> [업로드 파일_완료] [TEST_71] [resultDs.saveXml()]<Dataset id="ds_output">
	<ColumnInfo>
		<Column id="FILE_MAST_CD" type="string" size="32"/>
		<Column id="FILE_NM" type="string" size="32"/>
		<Column id="PHY_FILE_NM" type="string" size="32"/>
		<Column id="FILE_SIZE" type="int" size="4"/>
		<Column id="TRAN_FILE_SIZE" type="int" size="4"/>
		<Column id="PROG" type="int" size="4"/>
	</ColumnInfo>
	<Rows>
		<Row>
			<Col id="FILE_MAST_CD">9040000_20180319_7590</Col>
			<Col id="FILE_NM">20180318.txt</Col>
			<Col id="PHY_FILE_NM">20180319_5.txt</Col>
			<Col id="FILE_SIZE">8310</Col>
			<Col id="PROG">0</Col>
		</Row>
	</Rows>
</Dataset>
==============================================================================================================

- MYBATIS에서 SELECT INSERT를 할 때
1. <update> </update>로 해야함. 
<update ....>
INSERT INTO TEST_DB
(
  칼럼들
)
SELECT 칼럼 AS 칼럼_별명
    , 칼럼 AS 칼럼_별명2....
FROM   테이블들
WHERE  조건절
</update>
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.03.20(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==> 

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★] 
- STEP03_기관별 상속인 파일 접수 결과 조회(/BIZTX_S0803.xfdl)
 1) IQ9011 데이터 체크(/BIZTX_P0804.xfdl)   	==> Grid에서 레코드체크 칼럼 클릭('check' 글이 보여야 팝업됨) --> 0219
 2) STEP03_팝업다운로드(/BIZTX_P0803.xfdl) 	==> Grid에서 다운로드 칼럼 클릭
1. 3단계... 수행시 파일을 당겨오고... 해당파일의 오류를 체크합니다..
파일 오류 체크시 GetLossListService의 checkIQData 함수를 참조하시어
 오류별 사항이 제대로 화면에서 확인 가능하도록 개발 부탁드립니다.

1. 금융거래종류
2. 레코드 길이 체크
3. 금액 체크 등 
ps. 현재 홍콩상하이 은행(0054) 3월 12일 것이 오류가 없다고 나옵니다..
감사합니다.
==============================================================================================================

public NexacroResult biztxS0803List(@ParamDataSet(name = "ds_search", required = false) Map map) throws Exception { 
	System.out.println("[/BiztxS0101Controller.java] [biztxS0803List()] ==> [조회] [TEST_01] [STEP03_1. 조회]"  );
	
	returnFile = biztxS0803Service.GetTandemListService(map);		// 파일 가져오기  
}

public List<Map> GetTandemListService(Map map) throws Exception {
	System.out.println("[/BiztxS0803ServiceImpl.java] [GetTandemListService()] ==> [파일 가져오기] [TEST_01]"  );
  
	try {
		// 신용정보홈페이지로 파일처리 -> 홈페이지 파일가져오기로변경(농협, HSBC)
		processWebcifData(year, month, day);
		System.out.println("[/BiztxS0803ServiceImpl.java] [GetTandemListService()] ==> [신용정보홈페이지로 파일처리] [TEST_02] [date]"+ date );

		// anylink 파일처리
		processAnyLinkData(year, month, day);
		System.out.println("[/BiztxS0803ServiceImpl.java] [GetTandemListService()] ==> [anylink 파일처리] [TEST_02]"  );

		map.put("_RESULT", "SUCESS");		
	} 
}

public void processWebcifData(int year, int month, int day) {
	System.out.println("[/BiztxS0803ServiceImpl.java] [processWebcifData()] ==> [신용정보홈페이지로 파일처리] [TEST_01]"  );
}
==============================================================================================================

- 핸드폰 구입 주문
1. 중고폰_갤럭시S8_64G(RE_SM-G950N_64G)-블루
2. 신청서 접수 확인 ==> https://online.cjhellodirect.com/onlineForm/newApplylist.do, 비번: t*ario*1@
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.03.21(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 20:30 ==> 석식(김치찌개: 예지식당 -> 구부장, 정차장, 강과장, 박대리), 제로보드 접속 에러(여러 번 로그인 됨): 퇴근

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★]
- STEP03_기관별 상속인 파일 접수 결과 조회(/BIZTX_S0803.xfdl) 
=====================================================================================

- 31.  biiz 개발서버(파일) ===> PuTTY 사용해야 함
1. Host Name: 10.1.12.31, 23, anylink, anylink
--------------------------------------------------------------------------------------------------------------

- 10.1.12.31 파일서버 경로
testfep:/files/FEP/TAX/20180219/01/recv> cd /files/FEP/TAX/20180219/01/recv 
testfep:/files/FEP/TAX/20180219/01/recv> find ./ -name '*_20180219'       -- 현재 폴더, 하위 폴더 포함 파일 검색
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.03.22(목) 작업 ■■■■■■■■■■■■■■■■■■
--> 07:00 ~ 23:00 ==> 중식(정식: 굿모닝 부페), 석식(김치찌개, 소주[예지식당]: 정차장, 강과장, 박대리)
								, 회식(구부장과 박일경 부장, 김범준 부장): 22시 이후 팀원 합류[나는 안 감]

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★]
- STEP03_기관별 상속인 파일 접수 결과 조회(/BIZTX_S0803.xfdl) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.03.23(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==>  

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★]  
- 공지 사항 글 수정 후 창 닫으면 메인 화면 공지 사항 글(3개) 자동 업데이트 처리   
/CommLibForm.js] [gfn_initForm()	==>  화면 공통 초기화
/CommLibForm.js] [gfn_openPopup() ==> 팝업창 호출 (모달/모달리스 포함)
this.gfn_closePopup(params); 	 // 창 닫기	

if ( sPopupId.substr(0, 11) == "bizbbNotice")		// 공지 사항 조회 팝업 이면  ==> 화면 위치, Option 수정 처리
	{ 
	
this._gfn_setVariable(strPopupID +"_POPUP_RETURN_VALUE_",     rtnval);

this._gfn_setVariable(sPopupId+"_POPUP_CALLBACK_",     sPopupCallback); 	 // 팝업 콜백
this._gfn_setVariable(sPopupId+"_POPUP_RETURN_VALUE_", ""            );		 // 팝업 리턴값
this._gfn_setVariable(sPopupId+"_POPUP_PARAMS_",       oArg          );	  // 팝업 파라미터

var popupwinid = this._gfn_getChildFrameVariable("_CURRENT_POPUP_WINDOWID_"); 
 this._gfn_setVariable(popupwinid+"_POPUP_RETURN_VALUE_", "");
	alert("[/CommLibForm.js] [gfn_openPopup()] ==> [팝업창 호출] [TEST_20] [팝업 콜백]"+ sPopupCallback );  
--------------------------------------------------------------------------------------------------------------


this.BIZBB_S0101_onbeforeclose = function(obj:Form, e:nexacro.CloseEventInfo)
{
	alert("[/BIZBB_S0101.xfdl] [BIZBB_S0101_onbeforeclose()] ==> [창닫기] [TEST_01]");
	 
	//popup parameter
	var params = {		
		//"RECV_DS": this.dsET_LIST_CHK		// dsET_LIST_CHK Ds
		"RECV_MODE": "S"			// 저장 모드(S:조회, C:등록, M:수정, D:삭제) 파라미터	// TEST @@@ ===>
		//"RECV_MODE": this.v_Pmode			// 저장 모드(S:조회, C:등록, M:수정, D:삭제) 파라미터	// TEST @@@ ===>
		//, "RECV_QNANO": this.v_Qnano		// Qna번호	// TEST @@@ ===> 
	};
	//alert("[/BIZTX_S0101.xfdl] [btn_close_onclick()] ==> [창닫기] [TEST_91] [params]"+ params +"[v_Pmode]"+ this.v_Pmode +"[v_Qnano]"+ this.v_Qnano ); 
 
	this.gfn_closePopup(params); 	 // 창 닫기	
}


 this._gfn_setVariable(sPopupId+"_POPUP_CALLBACK_",     sPopupCallback);

this._gfn_setVariable(strPopupID +"_POPUP_RETURN_VALUE_",     arguments);
        this._gfn_setVariable(strPopupID +"_POPUP_RETURN_VALUE_ARGC", arguments.length);
		
==============================================================================================================

- elisep 실행 에러
1. 현상: 
 exist in file [C:\eGovFrameDev-3.6.0-64bit\eclipse\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps
 \bizinfo_branch\WEB-INF\classes\sqlmap\mappers\kfb\biz\bizli\BizliS0102Mapper.xml]
### The error may involve kfb.biz.bizli.dao.BizliS0102Mapper.getMenu-Inline
### The error occurred while setting parameters
### SQL: SELECT      MENU_ID    , MENU_NM     , MENU_ENM     , MENU_SEQ     , UP_MENU_ID     , MENU_GROUP     , MENU_LVL    
 , MENU_DESC    , PAGE_URL    , PAGE_ID    , USE_YN    , '' MENU_AUTH    , '' PATH      FROM        GTP_MENU   
 START WITH UP_MENU_ID = 'MENU00'   CONNECT BY PRIOR MENU_ID = UP_MENU_ID   ORDER SIBLINGS BY MENU_ID
### Cause: java.sql.SQLException: JDBC-8033:Specified schema object was not found.   
at line 16, column 8:
    		GTP_MENU
    		^
; uncategorized SQLException for SQL []; SQL state [JDBC-8033:42S02]; error code [-8033]; JDBC-8033:Specified schema object was not found.   
2. 원인: DB Safer 로그인 안됨
3. 조치: DB Safer 로그인 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.03.24(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 19:00 ==> 주말 근무,  이발(종로3가 명성이발관: 4천원), 중식(김치찌개: 예지식당 -> 박대리, 이철우 PM, 이준복 팀장)
								, 석식(순두부: 예지식당 -> 구부장, 정차장, 강과장)

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★] 
- 공지 사항 글 수정 후 창 닫으면 메인 화면 공지 사항 글(3개) 자동 업데이트 처리  ==> 수정 완료[▲▲▲] 
 // 공지 사항 상세 팝업 처리  
this.fn_sta_noticePopup = function()
{ 
	//alert("[/BIZLI_S0114.xfdl] [fn_sta_noticePopup()] ==> [공지 사항 상세 팝업] [TEST_01] [fv_bbsPostCode]"+ this.fv_bbsPostCode 
	+"[fv_postNowNum]"+ this.fv_postNowNum );
	
	//팝업이 열려 있으면 닫기
	if (Eco.isEmpty(this.getOwnerFrame().all["bizbbNotice"])==false)
	{
		this.getOwnerFrame().all["bizbbNotice"].form.close();
	}
	
	var args = {fv_flag : "A", 
	             bbs_post_code : this.fv_bbsPostCode,		// 게시판 Post 코드
	             bbs_post_nowNum : this.fv_postNowNum  		// 게시판 Post 번호  
				};    
  
	// 01. modeless 팝업[콜백 없음]	
	// 	var nFormWidth = 1160;
	// 	var nFormHeight = 860; 
	// 	var sOption = "popupType=modeless, resizable=false";   	// 팝업 옵션 설정(popupType을 modeless로설정) 
	// 	this.gfn_openModeless("bizbbNotice", "BIZBB::BIZBB_S0101.xfdl", nFormWidth, nFormHeight, args, sOption);   	
	// 공지 사항 상세 팝업(modeless: Callback 없음)

	// 02. modeless 팝업[콜백]
	//var sOption = "popupType=modeless, resizable=false";   	// 팝업 옵션 설정(popupType을 modeless로설정) 
	// Iject.open(this, "bizbbNotice", "BIZBB::BIZBB_S0101.xfdl", args);		// 공지 사항 조회 팝업
	//this.gfn_openPopup("bizbbNotice", "BIZBB::BIZBB_S0101.xfdl", args, sOption, "fn_openpopCallback");   	
	// 공지 사항 상세 팝업(modeless) ==> // 수정[모달리스: 콜백]: 2018.03.22, by 진태만
  
	// 03. modal 팝업[콜백]
	var sOption = "popupType=modal, resizable=false";   	// 팝업 옵션 설정(popupType을 modeless로설정) 
	this.gfn_openPopup("bizbbNotice", "BIZBB::BIZBB_S0101.xfdl", args, sOption, "fn_openpopCallback");   	
	// 공지 사항 상세 팝업(modal) ==> // 수정[모달리스: 콜백]: 2018.03.22, by 진태만
}
============================================================================================================== 
 
■■■■■■■■■■■■■■■■■■■■■■■ 2018.03.25(일) ■■■■■■■■■■■■■■■■■■■■■■■■■■
---> 07:20 ~ 23:00 ==> 주말 근무, 중식(김치찌개: 예지식당), 석식(뚝불: 신동궁 식당 -> 구부장, (주)지아이 이전 부장)

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★] 
- 메인 화면 F5로 새로고침
==============================================================================================================

- 은행연합회 인터넷서비스 시스템 고도화 Prj 운영 반영(14시 ~ )
1. 파일관리 테이블 문제
 1) 기존 테이블(공통첨부파일목록 TB)을 무시하고 새로운 테이블(파일관리 TB TB) 생성해서 문제가 됨 ==> 원복함
 ==> 게시판을 처음 만든 임청택 부장(UI 공통)이 AS-IS 분석 없이 임의로 만든 것으로 추정됨
2. 포터 문제
 1) http(8080)과 https(443) 문제가 생겨서 운영 반영 안됨
==============================================================================================================

-- 파일관리 조회 @@@
SELECT *
FROM  UXJP_COMMON_FILE_LIST   -- 공통첨부파일목록 TB  ==> AS IS
; 
---------------------------------------------------------------------------------------------------------------

-- 파일관리 조회 @@@
SELECT *
FROM  GTP_COMM_FILE   -- 파일관리 TB ==> TO BE
; 
==============================================================================================================

- /BizbbMapper.xml 파일(수정)
<select id="selectBoardFileList" parameterType="hashMap" resultType="hashMap">
  <![CDATA[
  SELECT * FROM
	   ( 
	   SELECT FL.FILE_MAST_CODE AS FILE_MAST_CD,       -- 파일코드(FILE_MAST_CODE --> FILE_MAST_CD)           
			  FL.FILE_NAME AS FILE_NM,     		 			 -- 파일명(FILE_NAME --> FILE_NM)           
			  FL.FILE_SEQ ,
			  FL.PHY_FILE_NAME AS PHY_FILE_NM,       	 -- 저장파일명(PHY_FILE_NAME --> PHY_FILE_NM)                              
			  FL.PHY_FILE_PATH,                          
			  FL.FILE_SIZE,                              
			  FL.FILE_DESC                               
		 FROM UXJP_COMMON_FILE_LIST FL,                  
			  UXJP_BBS_POST BP                           
		WHERE BP.FILE_MAST_CODE = FL.FILE_MAST_CODE     
		]]>	        
		<if test="BBS_BOARD_CODE != null">
		<![CDATA[
			AND BBS_BOARD_CODE = #{BBS_BOARD_CODE}
			]]>
		</if>
		<if test="BBS_POST_CODE != null">
		<![CDATA[
			AND BBS_POST_CODE = #{BBS_POST_CODE}
			]]>
		</if>
		<![CDATA[
		  AND DISPLAY_YN='Y'       
				)
 ORDER BY FILE_SEQ
			]]>	                               
</select>
--------------------------------------------------------------------------------------------------------------

- /FileServiceImpl.java 파일
- 파일 다운로드
public File downloadFile(HttpServletRequest request) 
{ 
	String name = request.getParameter("fileName");
	List<Map> fileName = fileMapper.getFileName(name);
	
	String PHY_FILE_NM = (String) fileName.get(0).get("PHY_FILE_NM");
	String PHY_FILE_PATH = (String) fileName.get(0).get("PHY_FILE_PATH");
	String FILE_MAST_GB = (String) fileName.get(0).get("FILE_MAST_GB");		// 구분(request: 신청서, files: 상속인, bbsold: 구 게시판, bbs: 신 게시판)
	
	if(fileName == null) {
		throw new NexacroException("No input fileName specified.");
	} 
	String realFileName = null;
	
	if("files".equals(FILE_MAST_GB))
	{
		realFileName = sRootDirTx + PHY_FILE_PATH + PHY_FILE_NM;	// 상속인
	}
	else if("bbsold".equals(FILE_MAST_GB))
	{
		realFileName = sRootDirTx + PHY_FILE_PATH + "/" + PHY_FILE_NM;		// 구 게시판
	}
	else
	{
		realFileName = sRootDir +"/"+ PHY_FILE_PATH + "/" + PHY_FILE_NM; 	// 신 게시판
	}
	
	File file = new File(realFileName);
	
	return file;
}
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.03.26(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==> 은행 연합회 Prj 병행 오픈(14시, 명동),  CJ 모바일 알뜰폰 휴대폰 갤 S8 중고폰 개통(2년 약정)

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★]  
- 메인 화면 F5로 새로고침 
==============================================================================================================

- eclipse 재 설치
1. 파일 서버에서 eGovFrameDev-3.6.0-64bit 복사해서 다시 설치
==============================================================================================================

- 공지사항에서 내용 처리
<if test='BBS_BOARD_CODE != null and BBS_BOARD_CODE.equals("CRM_005")'> 	 
<!--// 수정[게시판 코드(CRM_005: 공지사항 이면)]: 2018.03.01, by 진태만 //-->
	<![CDATA[
		DBMS_LOB.SUBSTR(POST_CONTENTS, 100) AS POST_CONTENTS,     /* 글 내용 */ 
	]]>	
</if>   
==============================================================================================================

- 은행연합회 인터넷서비스 시스템 고도화 Prj 운영 반영 완료(14시)
1. 일단 반영 했다고 함
==============================================================================================================

- 01. biz_eclipse.exe 바로가기
1. 대상(T): C:\eGovFrameDev-3.6.0-64bit\eclipse\eclipse.exe -vm C:/eGovFrameDev-3.6.0-64bit/jdk1.7.0_80/bin/javaw.exe 
-data C:\eGovFrameDev-3.6.0-64bit\eclipse\workspace
==============================================================================================================

- 소스 백업
1. eGovFrameDev-3.6.0-64bit폴더를 eGovFrameDev-3.6.0-64bit.7z로 압축해서 FTP로 전송완료(/jeus/app/jeus2/bizinfonew/install)
==> 회사 노트북으로 다운로드 받음
==============================================================================================================

- KT 알뜰폰 휴대폰 갤 S8 중고 개통(2년 약정)
CJ 모바일 KT 알뜰폰 휴대폰 갤 S8 중고 개통(2년 약정)
1. KT 알뜰폰 휴대폰 갤 S8 중고 구입(2년 약정) ==> 2018년 3월 20일(화)
2. KT 알뜰폰 휴대폰 갤 S8 중고 택배 도착) ==> 2018년 3월 26일(월)
3. KT 알뜰폰 휴대폰 갤 S8 중고 개통(2년 약정) ==> 2018년 3월 26일(월)
======================================================================================================

- CJ 모바일 KT 알뜰폰 휴대폰 갤 S8 중고 개통(2년 약정) 
■ 기본 가입내역 안내
0. 개통일: 2018년 3월 26일(월)
① 모델명 : 중고폰_갤럭시 S8_64G(SM-G950BU)
② 요금제 : The 착한 데이터 10GB[60,390원]
				==> 음성(영상200분), SMS기본제공 / 데이터 10GB (일 2GB 초과 시, 3Mbps로 기본제공) 
③ 약정 기간 : 24개월
④ 핸드폰 금액 : 244,440월(롯데카드로 일시불 결제)
⑦ 납부방법 : 신용 카드(말일) - 비씨카드
                  ==> 한달에 70만원 이상 3년을 사용해야 함
⑧ 부가서비스 : 유료부가서비스 없음
⑨ 올레멤버십 : 가입 
⑪ 개통대리점 : 착한텔레콤(02-3452-0701)
12. 최초 가입일: 2017-08-31(번호이동)
13. 사용중인 통신망: KT 통신망
14. 롯데카드 월 40만원 이상 사용시 월 만 7천원 요금 할인
=====================================================================================================
  
- 갤럭시 S8_64G5(SM-G950B 휴대폰 사양  ==> https://www.sktinsight.com/86830
1. 모델명: S8_64G5( 갤럭시 S8)
1. CPU: 엑시노스9 8895 2.5+1.7GHz 옥타코어
2. RAM: 4GB(64G 내장, 내장메모리: 64GB)
	Micro SD Slot : 최대 256GB
3. OS: 안드로이드 7.0 누가
4. 크기: 148.9mm x 68.1mm x 8.0mm
5. 무게: 155g 
7. 디스플레이: 5.77인치 QHD super AMOLED / 570ppi
8. 배터리(일체형): 3,000mA 
9. 카메라: 후면 : 12MP Dual Pixel (F1.7) 스마트 OIS / 전면 : 8MP AF (F1.7) 
10. 네트워크: 	3Band LTE-A
11. 충전: 고속충전 (유선, 무선), 무선충전(WPC, Airfuel), USB Type - C
12. 방수/방진: IP68
13. 생체인증: 홍채, 지문, 얼굴
14. 삼성 페이: NFC, MST
15. 특이 기능: 빅스비, 삼성 DeX 
--------------------------------------------------------------------------------------------------------

- 갤럭시 S8_64G(SM-G950BU) 단말기 정보
최초 통화일: 2017.09.25
일련번호: 0005606
IMEI: 356358082603665
S/N: R39J70B6KJ(7자리)
------------------------------------------------

- USIM 정보
1. 바코드: 8982 3012 1700 0258 5489
2. PUK: 26864155
======================================================================================================

- CJ 모바일 알뜰폰 휴대폰 갤 S8 중고폰 개통(2년 약정)   
10:00 핸드폰 갤 S8 중고 택배 도착 ==> 우체국 등기(본인 사인)
11:40 삼성전자서비스 을지로휴대폰센터(서울시 중구 을지로 51 교원내외빌딩 5층) 방문
		==> 갤럭시 S 노트5에서 있는 데이타, 앱을 갤럭시 S8에 이동해줄 것을 요청, 가지고간 액정 필름 교체도 요청)
12:00 중식(굿모닝 부페)
12:30 삼성전자서비스 을지로휴대폰센터 재방문
12:45 갤럭시 S8에 데이타, 앱 이동 완료
13:10 회사 복귀
13:30 CJ 모바일 알뜰폰 개통 시동( 
		==> 1. 갤럭시 S8 폰(신규폰)에 유심을 꽃음(박건유 대리 도와줌)
		==> 2. 착한텔레콤(02-3452-0701)에 전화해서 개통 시동)
	    ==> 3. 갤럭시 S 노트5 폰이 정지됨(통화 안됨)
		==> 4. 갤럭시 S8 폰(신규폰) 계속 개통 시도해도 안돔
		==> 5. CJ 모바일 콜센터(1855-1144)에 전화해서 개통 시도
17:00  CJ 모바일 알뜰폰 개통 완료
==============================================================================================================

- 문영 아파트 101동 101호 롯데카드 납부 오류
1. 롯데카드에서 전화와서 내가 롯데카드 홈페이지에서 자동이체 잘못 등록해서 2017.12, 2018.01 관리비가 101동 101호로 
결제되었다고 함
2. 101동 101호로 아줌마가 롯데카드에 항의 전화 함
3. 문영 아파트 관리소장이 전화와서 롯데카드_2017.12, 2018.01 관리비 협의하라고 함
3. 롯데카드에서 전화와서 2018.01 관리비 3월 26일 ~ 27일 사이에 결제가 되니 카드 중지하라고 함
  ==> 롯데카드 중지됨(퇴근시에 박건유 대리 카드 빌려서 결제: 음료수(핫픽스) 사줌)
4. 101동 101호로 아줌마에게 전화해서 사과하고 롯데카드로 대납한 2017.12, 2018.01 관리비 335,300원 송금 요청
==============================================================================================================

- 로지텍 무선콤보 MK240 NANO WHITE(키보스, 마우스) 마우스 밧데리 소진
1. 구입일: 2018.01.21(일)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.03.27(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:30 ==> 석식(김치찌개:예지분식 -> 정차장, 강과장, 박대리: 더치Pay)

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★]  
- 문서 작업
1. UI 공통
2. 서버 공통
==============================================================================================================

- 문영 아파트 101동 101호 롯데카드 납부 내역 메일 보냄
1. 101동 101호에 롯데카드_2017.12, 2018.01 관리비 대납 분 송금 요청
==============================================================================================================

- 농협 통장(대동초 병설 유치원용)
1. 농협 통장: 자유저축예탁금, 계좌번호: 356-1274-9556-83,  예금주: 진태만
==> 10만원 송금(식비 추가분, 견학비 등으로 사용)
==============================================================================================================

- TYPE C 케이블 구입
1. TYPE C, 릴타입 데이터 케이블(고속충전 지원), 가격: 3,000원, 다이소 명동본점
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.03.28(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==> 석식(뼈해장국: 신동궁 식당 -> 구부장,  정차장, 강과장, 박대리)

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★]  
- 문서(8.공통.pptx) 작업 ==> 작업 완료[▲▲▲]
1. UI 공통
2. 서버 공통
==============================================================================================================

- 2018년 3월 지출결의서 작성
==============================================================================================================

- MAIN 파일 @@@
- /BizbbController.java 파일 
- /BizbbServiceImpl.java 파일 
- /FileServiceImpl.java 파일
- /BizbbMapper.xml 파일
- /FileMapper.xml 파일
-------------------------------------------------------------------------------------------------------------- 

- / BizbbController.java 파일에서
@SuppressWarnings("rawtypes")
@RequestMapping(value = "/bizbbBoardViewSelect.do")
public NexacroResult selectBoardView(@ParamDataSet(name = "ds_search", required = false) Map map) {
	// System.out.println("[/BizbbController.java] [selectBoardView()] ==> [상세조회 처리] [TEST_01]" );
}
==============================================================================================================

- 우리카드 문영 APT 관리비 자동이체 해지
1. 우리카드 콜센터에 전화해서 자동이체 해지 처리(카드 해지 됐는데 자동이체 해지 처리 안되어 있었음)
==============================================================================================================

- 문영 아파트 101동 101호 아줌마와 관리비 분쟁
1. 101동 101호에 롯데카드_2017.12, 2018.01 관리비가 335,300원인데 합계: 325,300원 만 송금함(만원 빼고 송금)
 1) 농협, 롯데카드에 전화한 비용으로 만원 이라고 주장함
2. 밤 11시 30분에 집에 직접 찾아와서 사고하면 만원 돌려 준다고 함
 1) 나도 농협, 롯데카드에 전화한 비용을 청구증으로 청구하면 돌려 준다고 함
3. 문영 아파트 관리실에 전화해서 이 건으로 고소한다고 통보
4. 밤 11시 반에 101호에 방문해서 만원 받아옴 ==> 분쟁 종료
  ==> 롯데카드 중지 해제됨(16시)
==============================================================================================================

- LocalStorage, SessionStorage 클라이언트에 정보 저장
1. 로컬 스토리지와 세션 스토리지는 HTML5에서 추가된 저장소
2. 로컬 스토리지의 데이터는 사용자가 지우지 않는 이상 계속 브라우저에 남아 있습니다. 하지만 세션 스토리지의 데이터는 윈도우나 
브라우저 탭을 닫을 경우 제거됩니다.
==> 세션 스토리지: F5 누르면 삭제됨
https://www.zerocho.com/category/HTML/post/5918515b1ed39f00182d3048
3. SessionStorage
window.sessionStorage.setItem("domain", "http://www.tobesoft.com"); 
trace(window.sessionStorage.getItem("domain")); 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.03.29(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==> 은행 연합회 Prj 그랜드 오픈(9시, 명동)

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★]  
- 메인 화면에서 F5로 새로고침 ==> 작업 완료[▲▲▲]
1. 메인 화면에서 F5로 새로고침을 하면 alert을 띄우면 로그인 화면으로 안가고 메인으로 이동함
==============================================================================================================

- /biz.xadl 파일에서
//Application 최초 로딩시 발생하는 이벤트
this.application_onload = function(obj:Application, e:nexacro.LoadEventInfo)
{ 
	alert("[/biz.xadl] [application_onload()] ==> [최초 로딩] [TEST_01] [application.ls_userId]"+ this.fn_isNull(application.getPrivateProfile("ls_userId")) );  
	// alert("F5 실행 중입니다.....");  
    
    var sUserId = "";
	var sUserNm = "";
 
	if(!this.fn_isNull(application.getPrivateProfile("ls_userId")))		// 01. 사용자ID[Local Storage)가 존재하면
	{ 
		//alert("[/biz.xadl] [application_onload()] ==> [최초 로딩] [01. 사용자ID(Local Storage)가 존재 하면] [TEST_71_1] 
		[application.ls_userId]"+ application.getPrivateProfile("ls_userId") +"[sUserId]"+ sUserId +"[sUserNm]"+ sUserNm ); 
	  
		var sRst = application.mainframe.VFrameSet.BottomFrame.form.fn_sessionNew();	  // 세션 조회 처리(bottom Frame) 
 
		if(sRst == "1")	  // 11. 세션이 존재하면
		{
			//alert("[/biz.xadl] [application_onload()] ==> [최초 로딩] [11. 세션이 존재 하면] [TEST_91] [sRst]"+ sRst ); 
			
			//초기 application onload setting
			Iject.appOnloadLs(obj);
		 
			Iject.$["loginFrame"].form.fn_loginNew();		// 로그인 처리New
		 
		else	// 12. 세션이 존재 안하면
		{ 
			//alert("[/biz.xadl] [application_onload()] ==> [최초 로딩] [12. 세션이 존재 안하면] [TEST_91] [sRst]"+ sRst ); 
			
			//초기 application onload setting
			Iject.appOnload(obj);
		} 
	}
	else	// 02. 사용자ID[Local Storage)가 존재 안하면[처음 로그인 했을 때]
	{
		//alert("[/biz.xadl] [application_onload()] ==> [최초 로딩] [02. 사용자ID(Local Storage)가 존재 안하면] [TEST_72] 
		[application.ls_userId]"+ this.fn_isNull(application.getPrivateProfile("ls_userId")) ); 
		
		//초기 application onload setting
		Iject.appOnload(obj);
    }
}
==============================================================================================================

- 은행연합회 통합업무시스템
1. 운영 ==> https://bizinfo.kfb.or.kr/index_biz.html
2. 개발 ==> https://new.bizinfo.kfb.or.kr/index_biz.html
3. 로컬 ==> https://loclahost:8080/index_biz.html
==============================================================================================================

- 이미지 모자이크 처리(픽픽에서)
1. 홈 > 선택 > 사격형으로 선택(Alt + S)
2. 원하는 이미지 선택
3. 색반전: 클릭
4. 모자이크 처리(0 --> 30)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.03.30(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 ==> 은행 연합회 Prj 철수(18시, 명동)

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★]  
- TOP 메뉴 수정 ==> 수정 완료[▲▲▲]
1. Grid 2개의 분리
- /CommCompSubMenu.xfdl 파일에서
// 서브메뉴 생성
this.fn_createSubMenu = function(oObj)
{
	//alert("[/CommCompSubMenu.xfdl] [fn_createSubMenu()] ==> [03. 서브메뉴 생성] [TEST_01_3]");

	if (!Eco.isEmpty(this.fv_dsSubMenuLevel1)) this.closePopup();
	if (!Eco.isEmpty(this.fv_dsSubMenuLevel2)) this.closePopup();
	
	var dsMenu   = oObj.ds; // 넘어온 menu dataset(대메뉴)
	var sMenuId  = oObj.id; // 선택된 현재 대메뉴 아이디
	var sMenuGrp = dsMenu.lookup("MENU_ID", sMenuId, "MENU_GROUP");
	var sPageUrl = dsMenu.lookup("MENU_ID", sMenuId, "PAGE_URL"); 
	
	dsMenu.filter("MENU_GROUP=='"+sMenuGrp+"' && MENU_LVL > 0");	// 메뉴
	
	var dsSubMenu = new Dataset();		// 중메뉴
	dsSubMenu.copyData(dsMenu, true);	// true : 필터링된 데이터만 복사
	dsMenu.filter(""); 
	
	dsSubMenu.filter("MENU_LVL==2 && USE_YN=='Y'");	 // 중메뉴
 
	var dsSubMenuLv2 = new Dataset();
	dsSubMenuLv2.copyData(dsSubMenu, true);
	dsSubMenu.filter(""); 
	
	this.fv_dsSubMenuLevel1 = new Dataset();
	this.fv_dsSubMenuLevel1.copyData(dsSubMenu, true); 
	dsSubMenu.filter(""); 
	this.fv_dsSubMenuLevel1.clearData();
	
	if (this.fv_dsSubMenuLevel1.getRowCount() < 1) this.closePopup();		// grd_subMenu2  
 
	this.fv_dsSubMenuLevel2 = new Dataset();
	this.fv_dsSubMenuLevel2.copyData(dsSubMenu, true);
	dsSubMenu.filter(""); 
	this.fv_dsSubMenuLevel2.clearData();
	
	var bSucc;
	var nRow = 0;
	var nRow2 = 0;
 
	for(var i = 0; i < dsSubMenuLv2.getRowCount(); i++)
	{  
		if (i < 8)	// 8건 까지
		{  
			nRow = this.fv_dsSubMenuLevel1.addRow();	
			bSucc = this.fv_dsSubMenuLevel1.copyRow(this.fv_dsSubMenuLevel1.getRowCount() - 1, dsSubMenuLv2, i);	
			// 현재 데이터셋의 지정한 행의 위치에 복사
			//alert("[/BIZTX_S0101.xfdl] [fn_createSubMenu()] ==> [서브메뉴 생성] [TEST_34] [i_번째]"+ i +"[nRow]"+ nRow 
			+"[bSucc]"+ bSucc +"[this.fv_dsSubMenuLevel1.getRowCount()]"+ this.fv_dsSubMenuLevel1.getRowCount() );
		} 		
		else if (i > 7)		// 8건 이후
		{  
			nRow2 = this.fv_dsSubMenuLevel2.addRow();
			bSucc = this.fv_dsSubMenuLevel2.copyRow(this.fv_dsSubMenuLevel2.getRowCount() - 1, dsSubMenuLv2, i);	
			// 현재 데이터셋의 지정한 행의 위치에 복사
			//alert("[/BIZTX_S0101.xfdl] [fn_createSubMenu()] ==> [서브메뉴 생성] [TEST_35] [i_번째]"+ i +"[nRow]"+ nRow 
			+"[bSucc]"+ bSucc +"[this.fv_dsSubMenuLevel2.getRowCount()]"+ this.fv_dsSubMenuLevel2.getRowCount() );
		}
	} 
	//alert("[/BIZTX_S0101.xfdl] [fn_createSubMenu()] ==> [서브메뉴 생성] [TEST_51] [dsSubMenuLv2.CNT]"+ 
	dsSubMenuLv2.getRowCount() +"[this.fv_dsSubMenuLevel1.CNT]"+ this.fv_dsSubMenuLevel1.getRowCount() 
	+"[fv_dsSubMenuLevel1.saveXML()]"+ this.fv_dsSubMenuLevel1.saveXML() );
	//alert("[/BIZTX_S0101.xfdl] [fn_createSubMenu()] ==> [서브메뉴 생성] [TEST_52] [dsSubMenuLv2.CNT]"+
	dsSubMenuLv2.getRowCount() +"[this.fv_dsSubMenuLevel2.CNT]"+ this.fv_dsSubMenuLevel2.getRowCount() 
	+"[fv_dsSubMenuLevel2.saveXML()]"+ this.fv_dsSubMenuLevel2.saveXML() );
 
	this.grd_subMenu.setBindDataset(this.fv_dsSubMenuLevel1);		// 왼쪽 GFrid에 Ds 셋팅
	this.grd_subMenu2.setBindDataset(this.fv_dsSubMenuLevel2);		// 오른쪽 GFrid에 Ds 셋팅
	this.grd_subMenu2.setFocus();   
}
==============================================================================================================
 
 - 소스 백업
1. eGovFrame_03.30.zip  백업
https://new.bizinfo.kfb.or.kr/install/eGovFrame_03.30.zip  	==>  29.4MB
--------------------------------------------------------------------------------------------------------------

- 소스 백업 방법  @@@
1. TEST폴더를 TEST.7z로 압축, 복사
2. FTP 해당 경로(/jeus/app/jeus2/bizinfonew/install)에 붙여넣기
 1) FTP 주소: 10.1.35.12, jeus/ jeus ==> /jeus/app/jeus2/bizinfonew/install
3. 회사 노트북으로 다운로드 받음
 1) https://new.bizinfo.kfb.or.kr/install/TEST.7z 
==============================================================================================================

- 메인 화면에서 F5로 새로고침 테스트
1. 00. TEST_F5.zip 다운받음
2. 투비 콜센터에 글 남김 ==> [JTM] 메인 화면이 F5로 새로고침 한 후 로그인 화면으로 이동 문제
==============================================================================================================

- 노트북 포맷(17:30 ~ 18:00)
1. HP ProBook 450 G3 노트북 USB 3.0으로 포맷됨 ==> 포맷 후 USB가 전혀 인식이 안됨
2. 모니터 박스에 넣음 ==> 오태범 이사 차에 실음(월요일날 본사 사무실에 갖다 준다고 함)
3. 13층 연합회 고객에 인사(18:00) ==> 블록체인은 검수가 안 끝나고 함(구종식 부장은 한 주더 상주 예상)
 ==> 철수 인원: 4명(나, 박일경 부장, 정현수 차장, 박종현 대리)
==============================================================================================================

- 회식
19:00 기상
19:30 삼겹살(돈돼지 식당) ==> LG 엔시스 PM과 이준복 팀장이 수고 했다고 함
20:30 노점 술집
23:00 종료
24:20 귀가
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.03.31(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==> 휴식

- 회식
10:00 기상
12:00 중식
13:00 낮잠
16:00 구로리 공원(수종)
19:00 종료
19:10 귀가
19:30 석식
24:20 취침
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 
+----------------------------------------------------// End //----------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
