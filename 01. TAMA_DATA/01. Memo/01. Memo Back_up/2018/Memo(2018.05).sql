

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+----------------------------------------------// Memo(2018.05) //----------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2018.05.01(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:40 ~ 21:00 ==> 노동절(공휴일), 중식(부페, 행복식당: 여상무, 황부장 -> 황부장이 쏨), 석식(부페, 행복식당: 여상무, 
								황부장: 황부장이 쏨)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 로그인 화면(/login.xfdl) 개발
==============================================================================================================

- 이클립스 콘솔 버퍼 사이즈 제한 풀기
1. window > Preferences > Run/Debug > Console
 1) Console buffer size : 1000000  으로 수정 또는 Limit console output 체크박스 해제
==============================================================================================================

- 로그인 에러(eclipse에서)
1. 현상
2018. 5. 1 오전 11:01:24 com.nexacro.xapi.license.A.E A
정보: Loaded license file in JAR dir: path=D:\QMS\APQMS\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0
\wtpwebapps\APQMS\WEB-INF\lib\nexacro14_server_license.xml
2. 원인: 환경 셋팅이 잘못 되는 일어나는 에러로 추정됨 ==> 무시해도 됨
--------------------------------------------------------------------------------------------------------------

- 로그인 에러(eclipse에서 라이센스 에러)
1. 현상:
com.nexacro.xapi.license.InvalidLicenseException: License has expired: expireDate=2015-06-01, currentDate=2018-05-01
at com.nexacro.xapi.license.A.H.I(Unknown Source)
at com.nexacro.xapi.license.A.H.B(Unknown Source)
at com.nexacro.xapi.license.A.E.A(Unknown Source)
at com.nexacro.xapi.license.A.E.A(Unknown Source)
at com.nexacro.xapi.license.A.E.A(Unknown Source)
at com.nexacro.xapi.license.A.E.B(Unknown Source)
at com.nexacro.xapi.license.License.getInstance(License.java:192)
2. 조치: nexacro14_server_license.xml 파일을 복사하여 D:\eGovFrame-3.2\workspace\nexacroplatform\src\main\webapp\WEB-INF\lib
폴더에 붙여넣기
==============================================================================================================

- 로그인, 보안 셋팅 처리
1. 로그인 처리
 1) 암호화 방식: SHA-256
2. SSO 연동 --=> NETS* Single Sign-On(SSO): 는 가장 기본적인 인증 시스템으로, '모든 인증을 하나의 시스템에서'라는 목적하에 
개발된 것이다. 즉 시스템이 몇 대가 되어도 하나의 시스템에서 인증에 성공하면 다른 시스템에 대한 접근 권한도 모두 얻는 것이다. 
==============================================================================================================

- default.xtheme에 images 폴더에 있는 이미지 질문(테마 이미지)
1. 전체 Generate 를 하여 제네레이트 된 폴더에 보시면은 _theme_ 폴더가 생성이 됩니다. 
해당 폴더내에서 default 에서 images 폴더안에 전체 이미지가 들어가 있습니다. 
 1) 경로 ==> D:\QMS\APQMS\workspace\APQMS\WebContent\APQMS\_theme_\APQMS\image 
==============================================================================================================

- 이케아 의자 주문  ==> 완료
1. 이케아 니세(NISSE) 접이식의자(화이트) 가격: 19,250원 ==> http://auction.kr/iBSi46-
------------------------------------------------------------------------------------------------

- TO_BE에 문의글 올리기[UI 공통 소스 문의, IP 주소 가져오는 방법 문의] ==> 완료
==> nxui.xprj_[▲]
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.05.02(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 21:00 ==> 주간보고서 작성

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 로그인 화면(/login.xfdl) 개발 ==> 완료(Nexacro14 신규템플릿(/nexacroplatform) 기준)
==============================================================================================================

- Nexacro14 환경 다시 셋팅
1. 한솔 Prj 소스 참조(hsp_nexacro: HTML5, Runtime 가능)
2. 로그인 화면(/login.xfdl) 개발 ==> 완료
==============================================================================================================

- IP 주소 설정 (java에서)
import javax.servlet.http.HttpServletRequest; 
public class SY_LoginAction extends AbstractAction {
	oCondDs.set(0, "USE_IP",  getClientIP(request) );		// 사용자 IP Ds 셋팅
	
	public String getClientIP(HttpServletRequest request) {

		 String sLoginIP = request.getHeader("X-FORWARDED-FOR");		// 접속자 IP

		if (sLoginIP == null || sLoginIP.length() == 0) {
			sLoginIP = request.getHeader("Proxy-Client-IP");
		}
		if (sLoginIP == null || sLoginIP.length() == 0) {
			sLoginIP = request.getHeader("WL-Proxy-Client-IP");  // 웹로직
		}
		if (sLoginIP == null || sLoginIP.length() == 0) {
			sLoginIP = request.getRemoteAddr() ;
		} 

		return sLoginIP;
	}
}
--------------------------------------------------------------------------------------------------------------

** localhost에서 테스트 하는 경우 0:0:0:0:0:0:0:1 값으로 넘어 오는 경우가 있다.
이 값은 IPv6 에서 IPv4의 127.0.0.1 과 같은 값이다.
Tomcat으로  개발시 이게 문제가 되는 경우 vm arguments에  -Djava.net.preferIPv4Stack=true 값을 넣어 주면 된다.
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.05.03(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:40 ~ 21:00 ==> 주간보고(16시), 황원철 부장 휴가(이사, 2일간), 의자 배송됨(14시), 곰오디오 설치(무료 음악 듣기)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 로그인 관련 DB 테이블 생성 
01. 사용자정보(B_CM_USERINFO)
02. 메시지 정보(TB_CM_MSGCD)03. 로그인 이력 정보(TB_CM_LOGINLOG)
04. 메뉴 정보(TB_CM_MENUINFO)
05. 권한그룹화면 정보(TB_CM_ACLGRPUIINFO)
06. 마이 메뉴(TB_CM_MYMENUINFO)
07. 최근 게시물 정보(TB_CM_BOARD)
==============================================================================================================

- tibero_odbc 설치
Microsoft Windows [Version 6.1.7601]
Copyright (c) 2009 Microsoft Corporation. All rights reserved.

C:\Users\00> cd D:\tibero_odbc
C:\Users\00> d:
D:\tibero_odbc> tbodbc_driver_installer_5_32.exe -i D:\tibero_odbc
 
Success to INSTALL Tibero 5 ODBC Driver
==> Orange for TIBERO에서 ODBC Driver가 보임
==============================================================================================================

- DB 테이블 데이타 insert(Orange for TIBERO 에서) : 오렌지에서
1. 신규 데이타 DB[01. 현대제철 Prj(HSMESDEV)]에서 조회
-- 메시지 정보 조회  @@@ ==> 0건 존재
SELECT  *
FROM TB_CM_MSGCD   -- 메시지코드 정보 TB
WHERE 1 = 1  
;

2. 단축키 'F9'(Run Edit Mode)를 누룸
-- 메시지 정보 조회  @@@ ==> 0건 존재
SELECT  *
FROM TB_CM_MSGCD   -- 메시지코드 정보 TB  ===> 쿼리에 포커스를 두고  'F9'(Run Edit Mode)를 누룸
WHERE 1 = 1  
;
1) Result Grid에 '+'이 생성

3. 신규 데이타 DB[01. 현대제철 Prj(HSMESDEV)]에서 Result Grid에 '+'를 누룸  
 1) Result Grid에 한 줄이 생성됨
 2) Last Recore 버튼 누룸
 3) 커서를 첫 줄, 철 행에 위치시킴
 
4. 기존 데이타 DB[02. 현대하이스코(MESPRD)]에서 조회
-- 메시지 정보 조회  @@@ ==> 70건 존재
SELECT  *
FROM TB_CM_MSGCD   -- 메시지코드 정보 TB
WHERE 1 = 1  
;

5. 기존 데이타 DB[02. 현대하이스코(MESPRD)]에서 조회된 70건 데이타 전체 선택해서 복사(Copy)

6. 신규 데이타 DB[01. 현대제철 Prj(HSMESDEV)]에서 Result Grid에 붙여넣기 처리
 1) Result Grid에  70건 로가 생성됨
 2) 커밋 버튼 누름  ==> Apply라 알람뜸: OK(완료) 
==============================================================================================================

- Orange for TIBERO 사용 방법
1. Table COMMENT(코멘트) 보기: Table명 선택 후 F4 누름
2. 전체 쿼리 실행: F5 누름
3. 선택 쿼리 실행: 쿼리문 선택 >  Ctrl + 엔터키: 누름 또는 Run Cursor(Ctrl + K) 누름
 1) 쿼리문 끝에 ; >  Ctrl + 엔터키: 누름
4. Run Edit Mode: F9
--------------------------------------------------------------------------------------------------------------

- DB 테이블 변경 정보(Orange for TIBERO 에서)
1. 테이블 추가
ALTER TABLE  QMSMGR.TB_CM_LOGINLOG ADD 
( 
    col3 VARCHAR(20), 
    col4 CLOB 
) 
LOB (col4) STORE AS lob_sgmt_100 (DISABLE STORAGE IN ROW) ;
;

2. 테이블 수정
ALTER TABLE QMSMGR.TB_CM_LOGINLOG RENAME COLUMN col2 TO column2
;

3. 테이블 수정
ALTER TABLE QMSMGR.TB_CM_LOGINLOG MODIFY 
( 
    EMP_NO  VARCHAR(256) NOT NULL
);
-- ============================================================================================================

- 메뉴 처리
1. TOP 메뉴 분석
 1) 포스야드(PYMS) 프로젝트 소스 기준으로 메뉴 개발할 것
==============================================================================================================

- 로그인 사용자 등록
1. 1519927/asas1212@ --> 진태만, 1519930/yesan2018 --> 여홍구
/* 로그인 사용자 패스워드 체크 ==> [cm:CM_UserPwdchk_S01.xml] [2018.05.01, by 진태만] */ 
SELECT 'Y' AS VALID_YN
FROM TB_CM_USERINFO 
WHERE EMP_NO = '1519927'  -- 아이디
AND PASSWORD = 'rFnnSHubna9O0Uv+AkLk915I0Q56DuqpWkhVVxHCI0s='   -- 비밀번호(암호화): asas1212@  
;
-- ============================================================================================================

- 퇴직 연금 확인(18시, 회사)
1.  (주)지아이데이타 김유진 대리에서 카톡 보내서 확인 ==> 확인서 받을 것
2. IBK 기업은행에서 퇴직연금에 가입되었다고 문자 받음(기업은행 퇴직연금 가입된 것 확인)
============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.05.04(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:40 ~ 21:00 ==> 서울행(20:12 ~ 22:07, 삽교역 -> 영등포역)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 메뉴 처리
1. TOP 메뉴 분석
 1) 포스야드(PYMS) 프로젝트 소스 기준으로 메뉴 개발
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.05.05(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==>  

- 주말
10:00 기상
10:00 조식(빵, 과일 사라다)
10:30 집출발(루옌, 수종) 
10:50 진료(명소아과의원): 수종 감기
11:10 조제(한독프라자약국)  
11:20 귀가
12:10 중식
14:00 이마트 쇼핑 ==> 수종 어린이날 장난감(베블레이드), 케익(결혼기념일), Y셔츠 구입
16:00 귀가
16:30 낮잠 
20:00 기상
20:30 석식
21:00 결혼기념일 축하 행사(케익): 수종, 루옌, 장인
23:00 취침
==============================================================================================================

- XPLATFORM 실행시 Load에 실패  에러
1. 현상
uxs (3292): Error: Component dll를 찾을 수 없어 Load에 실패하였습니다. (ExtCommon) 
 
2. 조치: 해당 파일들을 컴포넌트 폴더 경로(C:\Program Files (x86)\TOBESOFT\XPLATFORM\9.2.2)에 복사하신 후  
프로젝트를 재시작 하시면 정상적으로 load가 되실겁니다.  

- Load에 추가 실패((주)트비소프트에 원격지원 요청) 
(3900): Error: Component dll를 찾을 수 없어 Load에 실패하였습니다. (XWrapComp) 
(3900): Error: 클래스(WebBrowser) 생성을 실패하였습니다. 
TypeDefinition 부분에 WebBrowser가 추가 되어있는지 체크해 보시기 바랍니다.  
TypeDefinition > Edit > Objects 탭 >  

*************** 추가안내 ************************** 
XWrapComp.dll 이 없어서 나는 에러이기에 설치해 드렸습니다.  
==> 원인: C:\Program Files (x86)\TOBESOFT\XPLATFORM\9.2.2에 넣은 XWrapComp.dll 파일이 XPLATFORM 
9.2.1 버전과 안 맞음(파일 버전이 2105.2.24.1 이여야 함) 
--------------------------------------------------------------------------------------------------------------

2. 조치: 
 1) ExtCommon 파일을 컴포넌트 폴더 경로(C:\Program Files (x86)\TOBESOFT\XPLATFORM\9.2.2)에 복사하신 후 프로젝트를 재시작 
  가. ExtCommon 파일 버전 정보 확인(파일 버전: 2012.7.23.1) 
 2) /default_typedef.xml 파일에서 ExtCommon 버전 확인(version="2012.7.23.1")
   <Component type="Bin" id="ExtCommon" classname="ExtCommon" module="ExtCommon" version="2012.7.23.1"/>
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.05.06(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==>  

▦ 축구
10:00 기상
10:30 조식
11:00 루옌 생일 파티 감
12:00 중식 
15:30 집출발(자전거): 비 그침
15:40 대림운동장 
16:00 게임(은혜교회팀: 어울림 ==> 4 쿼터 뜀): 햇빛 남 
18:00 종료
18:20 귀가
20:30 석식
23:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.05.07(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==> 대체공휴일(어린이날)

- 주말
05:00 기상
05:30 인터넷 서핑
08:00 조식(케익)
08:20 루옌 출근
10:30 집출발(루옌, 수종) 
10:50 진료(명소아과의원): 수종 감기
11:10 조제(한독프라자약국)  
12:10 중식
13:30 낮잠
15:30 기상
16:00 아파트 놀이터(수종)
18:00 종료
18:40 루옌 퇴근
19:00 석식
22:00 취침
==============================================================================================================

- 특수 문자 수[Memo(2018.05).txt]  ==> 갯수 설정
1. 개인 노트북(MSI GE60_2OE)
 1) [Memo 줄] --> 57개(■), 46개(-)], 46개(■), 57개(■)
 2) [년월일(요일) 줄] --> 16개(■), 16개(■) 
 3) [ '=' 줄(긴줄)] --> 110개(=)
 4) [ '-' 줄(긴줄)] --> 110개(-)
 5) [End 줄] --> 57개(■), [53개(-), 53개(-)], 57개(■)
--------------------------------------------------------------------------------------------------------------

- 네이버 캘린더 특수 문자 수  ==> 갯수 설정
1. [ '-' 줄(긴줄)] --> 102개(-)
2. [ '=' 줄(긴줄)] --> 102개(=)
==============================================================================================================

- 외장하드 구입
1. 씨게이트 Backup Plus S Portable Drive 4TB 외장하드 ★정품 파우치 증정/무상 AS 3년/USB 3.0★, 가격: 159,000원
[실구입가: 151,050원: 롯데카드 5%할인] --> 4T, 병행수입: 136,150원(파우치 안줌, AS 없음)
2. http://www.gsshop.com/prd/prd.gs?lseq=361587&prdid=17935037
==============================================================================================================

- XPlatform 실행 오류
1. 현상: [D:\01. TAMA_DATA\03. TAMA Project Source\2015.03.06_RIA_Project\Base\Child.xfdl] Previous versions of files
Previous versions of files can not be parsed 프로젝트 로드시
2. 원인: 해당 프로젝트를 XPlatform 9.2 열어 저장을 했을 경우 9.1 버전에서는 사용이 불가능한 부분 안내해 드렸습니다.
3. 조치: XPlatform 9.1 인지 XPlatform 9.2인지 확인할 것
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.05.08(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:50 ~ 22:30 ==> 예산행(05:43 ~ 07:35, 영등포역 -> 삽교역), 이정훈 차장 재투입, 김도현 대리(개발: 010 9804 8400) 투입

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 메뉴 처리
1. TOP 메뉴 개발
 1) LEFT Frame 열기 
/frmMDI.xfdl] 파일에서
// 왼쪽 메뉴 열기
this.btn_home_onclick = function(obj:Button,  e:nexacro.ClickEventInfo)
{
	trace("[/frmMDI.xfdl][btn_home_onclick()] ==> [버튼 클릭 이벤트][TEST_01]" ); 

	this.lfFrm_pdiv_menu = application.av_leftFrame.form.pdiv_menu;  	// 왼쪽 프레임 pdiv_menu 
	this.lfFrm_pdiv_menu_grd_subMenu = application.av_leftFrame.form.pdiv_menu.grd_subMenu;  		// 왼쪽 프레임 grd_subMenu 
	trace("[/frmMDI.xfdl][btn_home_onclick()] ==> [버튼 클릭 이벤트][TEST_02] [this.lfFrm_pdiv_menu_grd_subMenu]"+ this.lfFrm_pdiv_menu_grd_subMenu ); 

	var maxMenuNm = "";
	var maxLength = 0;
	 
	for(var i = 0; i < application.gds_menu.rowcount; i++)
	{
		var menuNm = application.gds_menu.getColumn(i, "MENU_NM"); 
		var length = parseInt(gfn_getTextSize(menuNm, this.lfFrm_pdiv_menu_grd_subMenu)[0]);

		maxMenuNm = (length > maxLength ? menuNm : maxMenuNm);
		maxLength = (length > maxLength ? length : maxLength);
	}

	maxLength += 70;

	fv_myMenuWidth = (maxLength > 200 ? maxLength : 200);
	this.lfFrm_pdiv_menu.set_width(fv_myMenuWidth + 28);
	 
	this.lfFrm_pdiv_menu_grd_subMenu.setFormatColProperty(2, "size", fv_myMenuWidth - 9 - 28);	// TEST @@@ ===>

	this.lfFrm_pdiv_menu.trackPopup(80, 42);
}
==============================================================================================================

- 93. 현대제철 APQMS_OffLine 개발(OffLine)
1. 속소에 가서 황미숙 팀장에게 메일로 보냄(23시)
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.05.09(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:25 ~ 21:00 ==> 여홍구 상무 휴가(병원 정기검진), 염용선 차장(개발: 010 4001 9920) 투입(08시)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- FSP 서버 샘플 개발
1. 조회(fsp_addSearch), 저장 처리(fsp_addSingle), 여러건 처리(fsp_addMulti)
==============================================================================================================

- FSP 서버 CRUD 개발
1. /fsp_crud.xfdl
==============================================================================================================

- annotation 처리
0. http://cho2.tistory.com/entry/%EC%96%B4%EB%85%B8%ED%85%8C%EC%9D%B4%EC%85%98%EC%9D%B4%EB%9E%80-annotation-Override-Deprecated-SuppressWarnings
1. 일반적으로 Java Annotation은 @를 이용한 주석을 뜻 합니다. 
자바 어노테이션 (Java Annotation)은 자바5(1.5)부터 제공되기 시작한 기능으로 어노테이션은 한국어로 “주석” 이라 번역됩니다.
하지만 Annotation을 “주석”이라 칭할경우, 흔히 쓰던 주석처리 (//, /**/)와 같은 의미로 오해하기 쉽기 때문에, Annotation이라는
명칭을 그대로 사용하고 있습니다.
--------------------------------------------------------------------------------------------------------------

- asm-all-4.0_RC1.jar 파일 다운로드
1. 다운로드 URL  ==> https://forge.ow2.org/project/download.php?group_id=23&file_id=16612
2. 복사하여 D:\QMS\APQMS\workspace\APQMS\WebContent\WEB-INF\lib 폴더에 붙여넣기
--------------------------------------------------------------------------------------------------------------

- annotation 처리
1. /service.xml 파일에서
<!--// annotation 설정 추가: 2018.05.09, by 진태만 // -->
<annotation-service>/com.aqqms.mes.sy.action/*.class</annotation-service>  

2. /SY_LoginAction.java 파일에서
import com.sz.core.ServiceManagerFactory;
import com.sz.core.annotation.FSPAttribute;		
import com.sz.core.annotation.FSPService;

@FSPService(name="SY_LoginAction"			// ==> SY_LoginAction 이후 주석처리 --> DB 커넥터 FSPAttribute 주석 추가 @@@@
, attributes={@FSPAttribute(name="ResourceFactoryServiceName", value="DefaultConnectionFactory", depends=true)}
)
public class SY_LoginAction extends AbstractAction { 
	private static final long serialVersionUID = 1L;
	  
	public void login(BusinessContext ctx) throws Exception { 
	}
}
==============================================================================================================

- FSP 서버 교육(13시 ~ 16ㅣ29, 회의실)
1. FSP 서버 교육(14시, 예산): 소프트잼 김용호(H: 010-8533-6598) 사장이 직접와서 개발자 교육
2. 공통
 1) 메일 발송, 메일 스케줄, 파일 업로드
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.05.10(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 18:00 ==> 여상무과 말싸움(화면설계서 안 만들어 준다고 함, 말투가 따진다는 투라고 함), 주간보고
								, 석식(고기: 살찐진수네, 여상무, 황부장, 염차장, 이차장, 김대리) --> 황부장이 결제

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- FSP 서버 CRUD 개발
1. 04. fsp_crud 샘플(fsp_crud), 조회(fsp_addSearch), 저장 처리(fsp_addSingle), 여러건 처리(fsp_addMulti)
==============================================================================================================

- Tibero DB에서 ROWNUM 처리
/* 조회(04.fsp_crud 샘플) ==> [/hsteel/test/TEST_S01.xml] [2018.05.10, by 진태만] */ 
SELECT ROWNUM,
			 EMP_NO AS EMP_NO
			, MENU_ID AS MENU_ID
			, MENU_NM AS MENU_NM
			, GROUP_NM AS GROUP_NM
			, '' AS FLG
 FROM TB_CM_MYMENUINFO    	-- My메뉴정보 TB
WHERE 1=1 
 AND ROWNUM <![CDATA[< ]]> 6 		/* 수정[ROWNUM 처리(for TEST)]: 2018.05.10, by 진태만 */   	 
;
--------------------------------------------------------------------------------------------------------------

- Insert Select 문
-- 마이 메뉴 등록 @@@  
INSERT INTO QMSMGR.TB_CM_MYMENUINFO  (
	EMP_NO,
	MENU_ID,
	MENU_NM,
	GROUP_NM,
	UI_ID,
	REGISTER,
	REG_DDTT,
	MODIFIER,
	MOD_DDTT,
	MENU_SEQ
)
SELECT *
FROM TB_CM_MYMENUINFO_02    -- My메뉴정보 TB
WHERE 1=1
	AND ROWNUM  < 6 
; 
==============================================================================================================

- getRowType 처리: 데이터셋에서 지정된 행(row)의 타입을 구하는 메소드
this.btn_minus_onclick = function(obj:Button,  e:nexacro.ClickEventInfo)
{
	trace("[/fsp_crud.xfdl][btn_minus_onclick()] ==> [TEST_01][this.ds_list.rowposition]"+ this.ds_list.rowposition ); 

	this.ds_list.deleteRow(this.ds_list.rowposition);	// ROW 삭제(ds_list에서 안 보임) 
	var nRowType = this.ds_list.getRowType(this.ds_list.rowposition+1);  // 데이터셋에서 지정된 행의 타입
	[1: 초기 행의 상태, 2: 추가된 행의 상태, 4: 수정된 행의 상태, 8: 삭제된 행의 상태] 
	trace("[/fsp_crud.xfdl][btn_minus_onclick()] ==> [TEST_91][this.ds_list.rowposition]"+ this.ds_list.rowposition +"[행 타입]"+ nRowType ); 
	 
	for(var j=0;j<dsObj.getColCount();j++)	
	{
		dsObj.setColumn(nRow, dsObj.getColID(j), dsObj.getOrgColumn(nRow, dsObj.getColID(j)));
	}
}
==============================================================================================================

// 행삭제
this.btn_del_onclick = function(obj:Button,  e:nexacro.ClickEventInfo)
{ 
	var nRow = this.ds_listDel.rowposition)	// 현재 Row(ds_listDel Row) ==> 삭제시 ds_listDel Ds를 넘겨서 삭제 처리

	// ds_listDel Ds 담기 => 삭제시 ds_listDel Ds를 넘겨서 삭제 처리
	this.ds_listDel.setColumn(nRow,"CODE_GRP_ID",this.div_search.cob_codegrp.value);
	this.ds_listDel.setColumn(nRow,"CODE_GRP_NM",this.div_search.cob_codegrp.text);
	this.ds_listDel.setColumn(nRow,"REG_USER",application.gv_userId);
	this.ds_listDel.setColumn(nRow,"MOD_USER",application.gv_userId);
	
	this.ds_list.deleteRow(this.ds_list.rowposition);	// ROW 삭제(ds_list에서 안 보임)  
	}
==============================================================================================================

- FSP 서버 문의(13시)
1. 소프트잼에 전화(070-4322-1517)해서 원격으로 지원 받음 
 1) 삭제(btn_delete_onclick), SAVE 저장(I, U, D)(fn_save2_onclick)
==============================================================================================================

- GIGABYTE 노트북 정보[(주)지아이데이타 지급 노트북 포맷(21시, 속소)
1. 윈도우 10에서 윈도우7 Ultimate 64로 포맷
 1) 네트워크 드라이버를 안 잡아서 노트북 먹통 ==> 네트워크 드라이버와 각종 드라이버를 USB에 담아 올것
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.05.11(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:00 ~ 21:00 ==> 개발자 교육(14시), 서울행(20:12 ~ 22:07, 삽교역 -> 영등포역)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- FSP 서버 CRUD 개발
1. 04. fsp_crud 샘플(fsp_crud), 조회(fsp_addSearch), 저장 처리(fsp_addSingle), 여러건 처리(fsp_addMulti)
==============================================================================================================

- FSP 서버 샘플 개발
1. 00. AP QMS Prj 개발 가이드(00. AP QMS Prj 개발 가이드.txt) 작성
 1) 00. AP QMS Prj 개발 가이드Nexacro_개발_가이드_v1.00, Nexacro_개발_가이드_v1.00 검토
==============================================================================================================

- 개발자 교육(14시, 대회의실)
1. 00. AP QMS Prj 개발 가이드.txt 작성 및 교육 ==> 파일서버에 소스 공개
 1) \\10.10.180.175\공유문서\7. AP품질시스템\개발환경\00. AP QMS Prj 개발 가이드
==============================================================================================================

- 가스 정기 검사(19시, 숙소)
1. 휴먼스빌(숙소)에 금요일 18:20에 도착 ==> 19시에 아줌마 와서 검침 받음
==============================================================================================================
 
- 씨게이트 외장하드 도착(23시)
1. 데이타 백업(1TB / 4TB)
2. 씨게이트 Backup Plus S Portable Drive 4TB 외장하드 ★정품 파우치 증정/무상 AS 3년/USB 3.0★, 가격: 159,000원
[실구입가: 151,050원: 롯데카드 5%할인] --> 4T, 병행수입: 136,150원(파우치 안줌, AS 없음)
2. http://www.gsshop.com/prd/prd.gs?lseq=361587&prdid=17935037
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.05.12(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==>  

- 주말
10:00 기상
10:00 조식(빵, 과일 사라다)
10:30 집출발(루옌, 수종) 
11:10 영유아 건강검진(명소아과의원, 수종): 비옴, 우산쓰고 걸어서 감
	==> 키: 109.6cm(73 백분위), 몸무게: 22.9(96 백분위), 제칠량지수: 19.1(98 백분위)] 시력: 1.0, 10 
	==> 종합 소견: 언어, 인지, 자조 발달 떨어져 추적 검사요, 과체중으로 추적 관찰요.
11:40 귀가
12:10 중식
14:00 루옌, 수종 이용실 감(수종 파마하고 옴)  
16:30 낮잠
19:00 기상
19:30 석식
23:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.05.13(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==>  

▦ 축구
09:00 기상
09:30 조식(빵)
12:00 중식
14:30 집출발
14:30 나이스 가이 디자털단지점(8천원) ==> 안감
15:10 블루클럽 신도림첨 ==> 폐업한 것을 추정됨 
15:40 대림운동장 
16:00 게임(은혜교회팀: 어울림 ==> 4 쿼터 뜀): 우리팀 젊은 애(최종 수비수)가 어울림 11번(감독)하고 싸움
		==> 운동장에서 대림3동 축구회 김형근 형, 최용식 고문님 만남
18:00 종료
18:20 귀가
18:30 이발(SKY 헤어샵: 8천원) 
19:0 귀가
19:30 염색(루옌이 시켜줌)
20:00 석식
23:00 취침
==============================================================================================================

- XPLATFORM 실행시 Load에 실패 에러
1. 현상
uxs (3292): Error: Component dll를 찾을 수 없어 Load에 실패하였습니다. (ExtCommon) 
 
2. 조치: 다운로드 받은  파일(C:\Users\Administrator\Downloads\Xplatform_ExtCommon\9.2.2)\ExtCommon.dll)을 
컴포넌트 폴더 경로(C:\Program Files (x86)\TOBESOFT\XPLATFORM\9.2.2)에 복사하신 후  
프로젝트를 재시작 하시면 정상적으로 load가 되실겁니다.    
1) /default_typedef.xml 파일에서
<!--// ExtCommon(/ExtCommon.dll) //-->
<Component type="Bin" id="ExtCommon" classname="ExtCommon" module="ExtCommon" version="2012.7.23.1"/> 
============================================================================================================== 

■■■■■■■■■■■■■■■■■■ 2018.05.14(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 21:20 ==> 예산행(05:43 ~ 07:35, 영등포역 -> 삽교역), 황미숙 팀장 사업장 방문(9시, 퍼블리싱 점검)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 현대제철 Prj 공통 퍼블리싱 적용
1. 전체 화면 조정
2. 왼쪽 Frame 수정
 1) btn_LF_Show  ==> 왼쪽 메뉴 열기_01
theme://Frame/btn_LF_Show.png
==============================================================================================================

- Theme 화일에서 이미지 안 보임
1. 현상
 (8656): Warning: Theme 화일에서 (theme://Frame/ico_HS.png)을 찾을 수 없습니다.
 (8656): Error: 부적합한 ResponseItem(id=theme://Frame/ico_HS.png,hr=ffffffff)
 (8656): Error: 이미지 정보 (theme://Frame/ico_HS.png) 을 찾을 수 없습니다.
2. 원인: Theme 폴더 경로(\WebContent\APQMS\_theme_) 폴더에 파일이 존재하지 않음
3. 조치: 황미숙 팀장에게 ico_HS.png 파일을 요청해서 theme://Frame에 복사할 것
==============================================================================================================

- 황미숙 팀장 방문(9시, 예산 사업소)
1. 디자인, 퍼블 작업 완료 ==> 시연
==============================================================================================================
  
- 황팀장님,  메뉴 버튼 닫기에 .css가 안 먹혀 있는 것 같아요,
1. xtrabutton 버튼 확인 부탁 드려요.    
==============================================================================================================

- 회사 노트북에 윈도우7 설치 후 프로그램 셋팅
1. 무선랜 드라이버 USB에 담아 와서 드라이버 설치
--------------------------------------------------------------------------------------------------------------

- 인텔® 드라이버 및 지원 도우미
1. Intel® Driver & Support Assistant (Intel® DSA) 
 1) https://www.intel.com/content/www/us/en/support/detect.html?_ga=2.68434065.1893857850.1525122330-1788437893.1525122162
2 인텔® 드라이버 및 지원 도우미 
 1) https://www.intel.co.kr/content/www/kr/ko/support/intel-driver-support-assistant.html
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.05.15(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:40 ~ 21:00 ==> 석식(부페, 행복식당: 여상무, 황부장, 염차장, 이차장, 김대리 -> 내가 여상무꺼 쏨)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 현대제철 Prj 공통 퍼블리싱 적용
1. 왼쪽 Frame 수정
 1) 왼쪽 메뉴 닫기(btn_leftFrm,  cssclass: btn_LF_Hide)  클릭시[(닫기 버튼["◀"] 클릭 이벤트] 2번 호출됨
 
-/frmMDI.xfdl 파일에서 
/*****************************************************************************************
* 함  수  명 : btn_leftFrm_onclick()
* 설      명 : 왼쪽 Menu 클릭이벤트
* 파라미터  :  
* 작성자    : 진태만
* 작성일    : 2018.05.15       
*****************************************************************************************/   
 this.btn_leftFrm_onclick = function(obj:Button,  e:nexacro.ClickEventInfo)
{
	trace("\n\n[/frmMDI.xfdl][btn_leftFrm_onclick()] ==> [왼쪽 Frame 메뉴 열기/닫기 버튼 클릭 이벤트][TEST_01] ==============================>" );  
	 
	this.setMenuToggle();		// 왼쪽 Menu바 열기, 닫기 수행
	}

/*****************************************************************************************
* 함  수  명 : setMenuToggle()
* 설      명 : 왼쪽 Menu바 열기, 닫기 수행  ==> Toggle: 버튼의 SELECTED Pseudo 상태를 반전시키는 메소드
* 파라미터  :  
* 작성자    : 진태만
* 작성일    : 2018.05.15
*****************************************************************************************/   
this.setMenuToggle = function()
{
	trace("[/frmMDI.xfdl][setMenuToggle()] ==> [TEST_01][isOpened]"+ isOpened ); 

	if(isOpened) 
	{		
		isOpened = false;  
		this.setTimer(1, 1); 
	} 
	else 
	{
		isOpened = true;  
		this.setTimer(2, 1); 
	}
	 
	setViewMenuStatus(isOpened); 
	trace("[/frmMDI.xfdl][setMenuToggle()] ==> [TEST_end][isOpened]"+ isOpened ); 

	return isOpened;
}

/******************************************************************************************
* 함  수  명 : setViewMenuStatus()
* 설      명 : 메뉴 활성화 버튼 처리
* 파라미터  :  
* 작성자    : 진태만
* 작성일    : 2015.04.29       
*****************************************************************************************/
function setViewMenuStatus(openFlag) 
{
	trace("[/frmMDI.xfdl][setViewMenuStatus()] ==> [TEST_01][openFlag]"+ openFlag ); 
	 
	if(openFlag)  //
	{   
		gfn_HideLeftMenuFrame(0);		// Left 메뉴 닫기 처리 
		 
		application.av_leftFrame.form.pdiv_menu.set_visible(true); 	// PopupDiv view 셋팅   
	}
	else 
	{      
		gfn_ShowLeftMenuFrame(200);		// Left 메뉴 열기 처리
		//fn_showLeftMenuOpen();		// Left 메뉴 열기 처리  ==> 주석 처리할 것 ==> @@@ 이 함수 호출하므로써 2번 호출됨
		==> LeftMenuOpen은 최초 frmLeft.xfdl 파일이 로드될 때 처리하는 게 맞다고 판단됨
	}
}

fn_showLeftMenuOpen = function()
{
	trace("/frmMDI.xfdl][fn_showLeftMenuOpen()] ==> [Left 메뉴 열기][TEST_01] ==============================>" );  
	 
	this.lfFrm_pdiv_menu = application.av_leftFrame.form.pdiv_menu;  	// 왼쪽 프레임 pdiv_menu 
	this.lfFrm_ds_subMenu = application.av_leftFrame.form.ds_subMenu;  	// 왼쪽 프레임 ds_subMenu 
	this.lfFrm_pdiv_menu_grd_subMenu = application.av_leftFrame.form.pdiv_menu.grd_subMenu;  		// 왼쪽 프레임 grd_subMenu 
	
	application.av_leftFrame.form.ds_subMenu.copyData(application.gds_menu, true);   // 왼쪽 Frame ds_subMenu Ds에 복사
	trace("[/frmMDI.xfdl][fn_showLeftMenuOpen()] ==> [버튼 클릭 이벤트][TEST_42][ds_subMenu,_CNT]"+ application.av_leftFrame.form.ds_subMenu.getRowCount() ); 

	application.gds_menu.filter("");

	// get Max Length of Menus
	var maxMenuNm = "";
	var maxLength = 0;
	trace("[/frmMDI.xfdl][fn_showLeftMenuOpen()] ==> [TEST_43][02. lfFrm_ds_subMenu, _CNT]"+ this.lfFrm_ds_subMenu.rowcount );  

	for(var i = 0; i < this.lfFrm_ds_subMenu.rowcount; i++)
	{
		var menuNm = application.gds_menu.getColumn(i, "MENU_NM"); 
		var length = parseInt(gfn_getTextSize(menuNm, this.lfFrm_pdiv_menu_grd_subMenu)[0]);

		maxMenuNm = (length > maxLength ? menuNm : maxMenuNm);
		maxLength = (length > maxLength ? length : maxLength);
	}

	maxLength += 70;

	fv_myMenuWidth = (maxLength > 200 ? maxLength : 200);
	this.lfFrm_pdiv_menu.set_width(fv_myMenuWidth + 28); 
	this.lfFrm_pdiv_menu_grd_subMenu.setFormatColProperty(2, "size", fv_myMenuWidth - 9 - 28);	 

	fv_prevButton = obj; 
	 
	this.lfFrm_pdiv_menu.trackPopup(0, 150);	// PopupDiv(lfFrm_pdiv_menu)는 반드시 다른 곳을 한 번 클릭하고 클릭(2번 클릭)해야 처리됨
	trace("[/frmMDI.xfdl][fn_showLeftMenuOpen()] ==> [TEST_end]" );
}

/*****************************************************************************************
 * 함  수  명	: gfn_ShowLeftMenuFrame() ==> 추가[Left 메뉴 열기처리]: 2018.05.08, by 진태만
 * 입      력	: 	
 * 반      환	:   
 * 기      능	: Left 메뉴 열기 처리(열기 버튼["▶"] 클릭 이벤트)
 *****************************************************************************************/  
gfn_ShowLeftMenuFrame = function(nLefFrameSep)
{ 
	trace("[/lib_Form.xjs][gfn_ShowLeftMenuFrame()]==> [11_1. Left Menu 열기 이면 @@@@@@] ==> ==> [nLefFrameSep]"+ nLefFrameSep );
	 
	application.mainframe.topFrameSet.midFrameSet.set_separatesize("230,*");	// Frame 나누기
	 
	//application.av_mdiFrame.form.btn_leftFrm.set_cssclass("");
	application.av_mdiFrame.form.btn_leftFrm.set_cssclass("btn_LF_Hide");  			// Left Menu 열기 버튼 class(닫기 class 보이기"◀")
	application.av_mdiFrame.form.btn_leftFrm.set_tooltiptext("왼쪽 메뉴 닫기_01"); 	// Left Menu 열기 버튼 툴팁(닫기 툴팁 보이기)
	trace("[/lib_Form.xjs][gfn_ShowLeftMenuFrame()]==> [11_9. Left Menu 열기 처리 완료]" );   
}

/*****************************************************************************************
 * 함  수  명	: gfn_HideLeftMenuFrame() ==> 추가[Left 메뉴 닫기 처리]: 2018.05.08, by 진태만
 * 입      력	: 	
 * 반      환	:   
 * 기      능	: Left 메뉴 닫기 처리(닫기 버튼["◀"] 클릭 이벤트)
 *****************************************************************************************/ 
gfn_HideLeftMenuFrame = function(nLefFrameSep)
{    
	trace("[/lib_Form.xjs][gfn_HideLeftMenuFrame()]==> [12_1. Left Menu 닫기 이면 @@@@@@] ==> ==> [nLefFrameSep]"+ nLefFrameSep ); 

	application.mainframe.topFrameSet.midFrameSet.set_separatesize("0,*");	// Frame 나누기
	 
	//application.av_mdiFrame.form.btn_leftFrm.set_cssclass(""); 
	application.av_mdiFrame.form.btn_leftFrm.set_cssclass("btn_LF_Show"); 				// Left Menu 닫기 버튼 class(닫기 열기 보이기"▶")
	application.av_mdiFrame.form.btn_leftFrm.set_tooltiptext("왼쪽 메뉴 열기_01");  	// Left Menu 닫기 버튼 툴팁(닫기 열기 보이기) 
	trace("[/lib_Form.xjs][gfn_OpenMenuFrame()]==> [12_9. Left Menu 닫기 처리 완료]" ); 
} 
==============================================================================================================

- 최상단 아이콘 설정
showtitleicon="true" style="icon:URL('theme://frame/icon_HS.png');
- /APQMS.xadl 파일에서
<Application id="APQMS" codepage="utf-8" language="Korean" loginformurl="" loginformstyle="" windowopeneffect="" 
	windowcloseeffect="" version="" tracemode="none" themeid="APQMS.xtheme" onload="application_onload" 
	onloadforms="application_onloadforms" httptimeout="60" loadingimage="img::waitimage.gif" onbeforeexit="application_onbeforeexit">
    <Layout>
    <MainFrame id="mainframe" title="maintitle" defaultfont="" resizable="true" showtitlebar="true" showstatusbar="true"
	left="0" top="0" width="1280" showtitleicon="true" style="icon:URL('theme://frame/icon_HS.png');border:0 solid #666666ff ;" 
	onsize="MainFrame_onsize" showcascadetitletext="false" titletext="현대제철 AP 품질관리 시스템" height="860">
  </Layout>
 </Application> 
--------------------------------------------------------------------------------------------------------------

- 한섬 ERP 재구축 Proj[★]
1. 공통버튼 작업
 1) btn_init: 초기화 ==> 완료 @@
 2) btn_capture: 화면캡쳐
 3) btn_print: 화면프린트
 4) btn_help: 도움말
==============================================================================================================

- 상하수도 요금 고지서 ==> 부동산에 전화해서 통보함
1. 5월분: 2018.03.28 ~ 2018.04.27	납기내 요금: 1,920원
2. 4월분: 2018.02.28 ~ 2018.03.27(추정 기간) 납기내 요금: 1,230원 --> 체납 사용료 고지서
==> 휴먼스빌 입주일: 2018.04.16(상하수도 사용 기간: 11일)
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2018.05.16(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:40 ~ 22:00 ==> 주간보고서 작성, 석식(탕수육, 짬뽕, 손짜장 대가: 개발팀, 이상탁 차장 -> 여상무가 쏨)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 현대제철 Prj 공통 퍼블리싱 적용
1. 왼쪽 Frame 수정
 1) 왼쪽 메뉴 닫기(btn_leftFrm,  cssclass: btn_LF_Hide)  클릭시[(닫기 버튼["◀"] 클릭 이벤트] 2번 호출됨
--> 조치: PopupDiv에서 Div로 소스 수정 처리
==============================================================================================================

- PopupDiv: 하나의 화면에 여러개의 부분화면을 구성할 때 사용하는 컴포넌트
1. PopupDiv로 구성하게 되면 주 화면과 독립적 또는 연계하여 화면을 구성할 수 있습니다.
2. Division과 비슷하나 PopupDiv는 포커스를 잃게 되면 자동으로 사라지게 됩니다.
==> PopupDiv(pdiv_menu)는 반드시 다른 곳을 한 번 클릭하고 클릭(2번 클릭)해야 처리됨 --> 조치: Div 사용할 것
var objPopupDiv = new PopupDiv("PopupDiv", "absolute", 30, 120, 196, 46, null, null); 
this.pdiv_menu.trackPopup(0, 134);		// trackPopup: 주어진 메뉴의 하위 메뉴를 설정한 위치에 팝업시키는 메소드 
--------------------------------------------------------------------------------------------------------------

- trackPopup: 컴포넌트를 화면에 나타나게 지정하는 메소드 
1. var ColseValue = this.PopupDiv00.trackPopup(10,10);

- closepopup: 컴포넌트를 화면에서 보이지 않게 지정하는 메소드
1. bClose = PopupDiv00.closePopup();
--------------------------------------------------------------------------------------------------------------

- Div: 하나의 화면에 여러개의 부분화면을 구성할 때 사용하는 컴포넌트
1. Div로 구성하게 되면 주 화면과 독립적 또는 연계하여 화면을 구성할 수 있습니다.
2. Div는 다른 Form을 연결해서 사용 할 수 있습니다. 
3. Div에 border나 scrollbar를 사용해 영역을 분할 할 수 있습니다.
var objDiv = new Div("Div", "absolute", 30, 120, 196, 46, null, null);
==============================================================================================================

- 최대 허용 오픈 허용 메뉴 수(15개)
1. 15개 메뉴 초과시 맨 처음 오픈한 메뉴가 닫힘 ==> 현대하이스코_HUMES(15개)
if (gds_openpage.rowcount == parseInt(gv_max_window))  // 현대하이스코_HUMES(15개) 소스
{
	/* 메시지 제거 : 2014.05.26 김과장님 요청
	_gf_alertMsg("최대 허용 윈도우수[" + gv_max_window + " 개]를 초과했습니다.", "information");
	 */
	var strFormId = gds_openpage.getColumn(0, "FORM_ID");
	ap_WorkFrame.all[strFormId].form.fn_Close(); // Close Form ID
}
--------------------------------------------------------------------------------------------------------------

- /lib_Comm.xjs 파일에서
// 메뉴 열기
gfn_chkOpenMenu = function(menuid, objDs, param)
{
	trace("[/lib_Comm.xjs][gfn_chkOpenMenu()]==> [chk Open Menu][TEST_52][gds_openMenu.rowcount]"+ 
	application.gds_openMenu.getRowCount() +"[gds_openMenu.saveXML()] \n"+ application.gds_openMenu.saveXML() ); 	 

	if(application.gds_openMenu.getRowCount() > 15)		// 오픈 메뉴가 15개 보다 크면
	{ 
		// gfn_alert(this, "000196");	// TEST @@@ ===>
		//alert("메뉴는 10개를 초과해서 열수가 없습니다.");	// 000196: 메뉴는 10개를 초과해서 열수가 없습니다.
		//return;
		 
		var tab = application.av_mdiFrame.form.tab_mdi;
		 
		gfn_closeForm(tab, 0); 	// 메뉴 닫기 ==> 처음 오픈한 메뉴가 닫힘 
	} 
}

/*****************************************************************************************
 * 함  수  명	: gfn_addOpenMenu
 * 입      력	: 1. menuid: 메뉴 아이디
  2. winKey: 창 Key (ID)
 * 반      환	:   
 * 기      능	: 메뉴 ID를 gds_openMenu에 입력한다.
 *****************************************************************************************/ 
gfn_addOpenMenu = function (menuId, winKey)
{
	var nRow = application.gds_menu.findRow("MENU_ID", menuId);

	if(nRow >= 0)
	{
		var nAddRow = application.gds_openMenu.addRow();
		application.gds_openMenu.copyRow(nAddRow, application.gds_menu, nRow);
		application.gds_openMenu.setColumn(nAddRow, "WIN_KEY", winKey);
	}
}
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2018.05.17(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 23:00 ==> 주간보고회, SVN 셋팅때문에 고생함, 여 대표님 출장(목, 금)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 개발 서버 셋팅(Visual SVN) 및 소스 적용 완료
==============================================================================================================

- 개발, 운영 서버 원격 연결
1. HI_TAM4.0 설치(현대제철 원격접속시스템) ==> https://10.10.111.232 -> 1515533(이상탁 차장) /  --> 아이핀 로그인: titac /
2. 현대제철 원격접속시스템(메인) ==> https://10.10.111.232/index.asp?type=main
 1) 프로토콜 연결 설정
  가. DeviceTree > Server > 1.파주IDC > 울산공장관리 > 자동차부품 품질 모니터링 AP1_개발계: 마우스 클릭  ==> WINTERM > WINTERM_Full Screen
  나. DeviceTree > Server > 1.파주IDC > 울산공장관리 > 자동차부품 품질 모니터링 AP1_운영계: 마우스 클릭  ==> WINTERM > WINTERM_Full Screen
--------------------------------------------------------------------------------------------------------------------------------
 
- 개발 서버 셋팅
0. APQMS_개발 서버  ==> http://10.10.180.91/APQMS
1. /default_typedef.xml 파일에서
<!--// 추가[svc_dev 개발 서버 URL 추가]: 2018.04.30, by 진태만 //-->  ==> 로컬 서버에서 @@@@
<Service prefixid="svc_dev" type="JSP" url="http://localhost:80/" cachelevel="none" communicationversion="0"/>
 
<!--// 추가[svc_dev 개발 서버 URL 추가]: 2018.04.30, by 진태만 //-->  ==> 개발 서버에서 @@@@
<Service prefixid="svc_dev" type="JSP" url="http://10.10.180.91:80/" cachelevel="none" communicationversion="0"/> 
==============================================================================================================

- 개발 서버 셋팅 및 소스 적용 완료
1. 아직 SVN 설치 안됨
2. 퍼블 작용이 다음주 월요일까지 작업 예정 
==============================================================================================================

- SVN 설치
1. [SVN] Visual SVN Server 설치 및 사용 방법 ==> http://www.visualsvn.com/
 1) Visual SVN Server 3.8.1 설치
2. 완료 후 연결: SVN(APQMS) ==> https://10.10.180.91:8443/svn/Repository,  1519927, / asas1212!
-------------------------------------------------------------------------------------
 
- Visual SVN Server(SVN) 사용 방법
1. Visual SVN Server에서 Create Repository > Repository Type: Regular FSFS repository: 체크 > Repository Name: Repository2: 생성
2. 권한 생성
 1) Repository: 마우스 우 클릭 > Properties: 클릭 > Properties for /svn/Repository(새창) > Add: 클릭 > Choose User or Gruop(새창)
> 그룹 선택: OK > Permissions: Read / Write: 선택 > 확인: 클릭
--------------------------------------------------------------------------------------------------------------

- SVN 설치(eclipse에서)
==> http://egloos.zum.com/taeins/v/10716555
0. APQMS[프로젝트]: 마우스 우 클릭 > Team > Disconnect: 클릭 ==> SVN 선택 해제
1. APQMS[프로젝트]: 마우스 우 클릭 > Team > Share Project: 클릭 ==> SVN 선택
2. SVN 을 클릭하고 next 버튼을 클릭
3. Create a new repository location을 선택해서 Next를 선택
4. URL을 SVN에서 만든 폴더의 경로를 넣어 줍니다. 경로를 잘 모를때에는 SVN 프로그램에서 클립보드의 URL을 복사해서 넣어 줍니다. 
 1) URL: https://10.10.180.91:8443/svn/Repository
 2) 3에서 경로가 맞는지 확인하기 위해서 Browese..를 클릭해서 경로가 올바른지 확인
5. 사번, 비번을 주고 OK 버튼을 누릅니다.
6. Share Project Wizard: URL: https://10.10.180.91:8443/svn/Repository
 1) Advanced Mode:
 2) Name on Repository ==> Use empty name(2번째 선택)
 3) Project Repository Location layout ==> Use single project layout(2번째 선택)
 4) Use Subversion recommended layout ('trunk', 'branches', 'tags'):  체크 박스 선택 안 함
 ---> https://10.10.180.91:8443/svn/Repository
7. 4. SVN Repositories > trunk: 마우스 우 클릭 > Check Out: 클릭
8. 워크 스페이스에서 프로젝트를 선택하여 오른쪽 마우스 클릭  
 1) Team -> Share Project -> SVN -> Next -> Share Progect Wizard 에서 Create a new repository location 선택
-> Next 버튼 클릭 -> Enter Repository Location lnfomation 에서 URL을 추가 (4번에서 했던 경로) -> Next 하면 끝
9. 이클립스에서 프로젝트랑 연동하면 끝
--------------------------------------------------------------------------------------------------------------
 
- SVN 설치(eclipse에서)
7.1 SVN 설치
7.2 SVN Repository 연결 
 1) URL부분에 ‘https://10.10.180.91:8443/svn/Repository’를 입력한다.
 2) ‘Save authentication (could trigger secure storage login)’ 체크박스를 체크한다.
 3) Authentication 부분에 자신의 사번/비밀번호를 입력한다. (사번, 비밀번호는 동일하다.)
   예) pj000010/pj000010 
==============================================================================================================
 
- 보안성 점검 체크리스트 검토
1. 다음주 캐논 프로젝트 소스 가지고 와서 비교할 것
 1) 어플리케이션 보안성점검 체크리스트.pptx
 2) 개발 완료 전(9월달) 정도에 하면 된다고 함
==============================================================================================================
   
■■■■■■■■■■■■■■■■■■ 2018.05.18(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:00 ==> 칠판 떨어져서 정전(09:30), 서울행(20:12 ~ 22:07, 삽교역 -> 영등포역): 여행용 캐리어(20인치) 가지고 옴

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
 
- 서버 URL 에러 ==> http://10.10.180.91:8090/APQMS/index.html 
1. 현상
10.10.180.91에서 연결을 거부했습니다.
Google에서 APQMS index 검색
ERR_CONNECTION_REFUSED
2. 원인: 잘못된 URL 입력
--------------------------------------------------------------------------------------------------------------

- 서버 URL 에러 ==> http://10.10.180.91/APQMS/index.html 
1. 현상
HTTP Status 404 - /APQMS/index.html
type Status report
message /APQMS/index.html
description The requested resource is not available.
2. 원인: Tomcat v7.0 Server at localhost 서버에 Web Modules 설정이 안되어 있음(내부 서버 문제) 
 1) /Servers/Tomcat v7.0 Server at localhost-config/server.xml 파일에서 아래 내용 추가
 <Context docBase="APQMS" path="/" reloadable="true" source="org.eclipse.jst.jee.server:APQMS"/></Host>
==============================================================================================================

- 공통 메뉴 개발 ==> 7월 말 오픈한 메뉴 생성 완료
업무그룹별 사용자 관리(CM_TskGrpLyUsrMngm)
업무그룹별 메뉴권한 관리(CM_TskGrpLyMenuAuthMngm)
사용자별 권한관리 현황(CM_UsrLyAuthMngmStat)
사용자별 사용 현황(CM_UsrLyUseStat)
기간별 로그인 현황(CM_TermLyLginStat)
==============================================================================================================

- URL 설정(개발서버에서도 APQMS.xadl 파일에서 설정 해줌)
<!--// 추가[svcurl URL]: 2018.05.18, by 진태만 //-->
<Service prefixid="svcurl" type="JSP" url="http://localhost/" version="0" communicationversion="0" cachelevel="none"/>
<!--// 추가[svc_dev 개발 서버 URL 추가]:  2018.05.18, by 진태만 //-->
<Service prefixid="svc_dev" type="JSP" url="http://10.10.180.91/" cachelevel="none" communicationversion="0"/>
<!--// 추가[svc_prod 운영 서버 URL 추가]: 2018.05.18, by 진태만 //-->
<Service prefixid="svc_prod" type="JSP" url="http://10.10.221.91/" communicationversion="0" cachelevel="none"/> 
==============================================================================================================

- SVN ID 정보
사번: 1515940, 이름: 심정호 부장
사번: 1515533, 이름: 이상탁 차장
사번: 1519927, 이름: 진태만 부장
사번: 1519928, 이름: 이정훈 차장
사번: 1519957, 이름: 황원철 부장
사번: 1519976, 이름: 김도현 대리
사번: 1519977, 이름: 염용선 차장
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.05.19(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==>  

- 주말
10:00 기상
10:00 조식(빵, 과일 사라다)  
12:00 중식 
12:20 대림역(6511번 버스, 수종)
13:20 서울대 정류장 도착 
13:40 관악도서관(1층, 수종)
15:00 간식(과자, 관악도서관 식당): 수종
15:40 관악도서관(3층, 수종)
16:00 종료
16:20 서울대 정류장 도착 
17:20 대림역(6511번 버스, 수종)
17:40 구로이 공원(수종)
19:00 종료
19:10 치킨(오리지널 로스트[8,900원], 갈릭 베이크[10,900원], 맛닭꼬 남구로점[02-866-2292], 포장)
19:30 귀가
20:00 석식(치킨): 맛있었음
23:00 취침
==============================================================================================================

- 국세청 홈텍스 종합소득세 신고(23시 ~ 01시)
1. URL ==> https://www.hometax.go.kr
2. 서비스 중지 시간: 00시 00분 ~ 05시 59분 
3. 간편장부 신고방법
http://file.nts.go.kr/wtsnts_upload/tax_movie/tax_01/2018/03/index.html
--------------------------------------------------------------------------------------------------------------

- 부양가족
1. 가족사항 조회 
1) 진덕근(360710-1703410) ==> 관계: 1-소득자의 직계존속, 경로우대공제, 장애인
2) 신화자(450212-2703413) ==> 관계: 1-소득자의 직계존속
3) 강아현(940509-2064910) ==> 관계: 3-배우자
4) 진수종(130924-3067711) ==> 관계: 4-직계비속자녀
==> 외국인 직계존속은 60세 이상만 등록 가능
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.05.20(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==>  

▦ 축구
08:00 기상 
08:00 국세청 홈텍스 종합소득세 신고서 작성(08시 ~ 14시)
08:20 루옌 친구 핸드폰 회사 아르바이트 감
12:00 중식
14:00 세청 홈텍스 종합소득세 신고 ==> 모두 작업 완료 
15:30 집출발 
15:40 대림운동장
16:00 게임(은혜교회팀: 어울림 ==> 4 쿼터 뜀)
		==> 영만이형 구경 나옴(축구하려고 하면 8월쯤은 되어야 한다고 함)
18:00 종료
18:20 귀가
19:00 석식
20:30 장모님 방문(루옌하고 같이 옴)
22:00 취침
==============================================================================================================

- 국세청 홈텍스 종합소득세 신고(08시 ~ 14시)
1. 신고서 제출
 1) 신고기한이내 납부할 세액
  가. 종합소득세(33-34+35-36): -144,000원
  나. 지방소득세(51): -14,400원
==> 총: -158,400원(158,400원 환급 받을 예정)
2. 2017년 귀속 종합소득세 신고(2018.05).xls 산출물 작성
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.05.21(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:50 ~ 21:00 ==> 예산행(05:43 ~ 07:35, 영등포역 -> 삽교역), 황미숙 팀장에게 퍼블리싱 완료한 소스 메일로 받음
, 이상탁 차장 울산 출장

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
1. 화면 관리(/SY_ScreenMngm.xfdl) 
==============================================================================================================

- 5월 4째주 일정[2018.05.21(월), 주간 일정]_[★★★]
01. 화면 개발 ==> 완료
화면 등록(/SY_ScreenInput.xfdl)	2018-05-21	2018-05-24
메뉴 등록(/SY_MenuInput.xfdl)  	2018-05-25	2018-05-29
--------------------------------------------------------------------------------------------------------------

02. UI 공통 일정 작성
1. 보안 리스트 분석
--------------------------------------------------------------------------------------------------------------

01. 외국인 재입국 서류 문의(출입국 관리소) ==> 보류
--------------------------------------------------------------------------------------------------------------

- 루옌, 수종, 장인, 장모 베트남 방문[2018.05.26(토)]  ==> 완료
1. 쏘카 렌트(03시 ~ 05시) ==> 인천공항 배웅
==============================================================================================================

- 포트(Port) 확인
1. cmd 를 눌러 netstat -ano 를 입력하면 포트 목록이 나온다. 
C:\Users\00> netstat -an

활성 연결

  프로토콜  로컬 주소           외부 주소              상태
  TCP    10.245.178.43:4079     10.10.122.25:5061      ESTABLISHED
  TCP    10.245.178.43:4159     10.10.122.73:443       ESTABLISHED
  TCP    127.0.0.1:445          127.0.0.1:8994         ESTABLISHED  					7828
   밑내용을 봤을때 현재  다른곳에서 445 포트는 사용중이다.  그리고 해당 프로그램 아이디는 7828 로 나온다.
 
2. 작업관리자 실핸한뒤 [보기] -> PID(프로세스식별자) 를 선택한다.
   그러면 현재 해당 프로그램이 현재 vmware 에서 사용중인것으로 나온다.. 
   그렇다면  다른포트로 연결하면 된다
--------------------------------------------------------------------------------------------------------------

- eclipse에서 톰캣 시작 에러
1. 현상:
 Several ports (80, 8009) required by Tomcat v7.0 Server at localhost are already in use. The server may already be running 
 in another process, or a system process may be using the port. To start this server you will need to stop the other process 
 or change the port number(s).
 
1. 현상2:
심각: StandardServer.await: create[localhost:8005]:
java.net.BindException: Address already in use: JVM_Bind

2. 원인: 실행 메모리가 javaw.exe가 안 없어지고 존재
 
3. 조치:
 1) cmd창에서 netstat -o -a 를 실행한다.
PS C:\Users\hsaqmad1sa> netstat -o -a

활성 연결

  프로토콜  로컬 주소              외부 주소              상태            PID
  TCP    0.0.0.0:21             HSAQMAD1:0             LISTENING       1424
  TCP    [::]:80                HSAQMAD1:0             LISTENING       2436
 
 2) 이중 해당하는 포트번호(지금의 경우 80)를 찾아 PID(2436)를 기억해둔다.
 3) Windows 작업관리자(새창)
  가. 세부정보 Tab에서 javaw.exe : 마우스 우 클릭 > 작업끝내기(E): 클릭
4. 참조: [JAVA]Address already in use: JVM_Bind 오류  
 ==> http://choieun.tistory.com/entry/JAVAAddress-already-in-use-JVMBind-%EC%98%A4%EB%A5%98
---------------------------------------------------------------------------------------------

- eclipse에서 톰캣 시작 에러2 ==> http://10.10.180.91/APQMS/index.html 
1. 현상
HTTP Status 404 - /APQMS/index.html
type Status report
message /APQMS/index.html
description The requested resource is not available.
2. 원인: 
 1) Tomcat v7.0 Server at localhost 서버에 Web Modules 설정이 안되어 있음(내부 서버 문제) 
 2) /Servers/Tomcat v7.0 Server at localhost-config/server.xml 파일에서 아래 내용 추가 
  <Context docBase="APQMS" path="/" reloadable="true" source="org.eclipse.jst.jee.server:APQMS"/></Host>
 3) Tomcat v7.0 Server at localhost(새창) > Web Modules에서
   가. Path: /, Document Base: APQMS, Module: APQMS, Auto Reload: Enbled
==============================================================================================================

- eclipse에서 Web App Libraries 에러
1. 현상: import com.sz 에러 발생
 import com.sz.service.sqlmap.SqlExecutor;
2. 원인: .externalToolBuilders(D:\QMS\APQMS\workspace\APQMS) 폴더를 삭제
3. 조치: externalToolBuilders 폴더 복사, 붙여넣기 또는 Web App Libraries 설정
 1)  Web App Libraries > Add Library > Web App Libraries > Add Library(새창)
 --> Project: APQMS: 선택 > Finiesh: 클릭 
==============================================================================================================

- TOP 아이콘 셋팅
1. 현상: style="icon:URL('theme://frame/icon_HS.png');border:1 solid #c4c5c6ff ;" 로 설정
(12240): Warning: Theme 화일에서 (theme://frame/icon_HS.png)을 찾을 수 없습니다.
(12240): Error: 부적합한 ResponseItem(id=theme://frame/icon_HS.png,hr=ffffffff)
(12240): Error: 이미지 정보 (theme://frame/icon_HS.png) 을 찾을 수 없습니다.
 
2. 원인: themeid="APQMS.xtheme"이  APQMS.xadl파일에서 호출하면서 인식을 못하는 것으로 추정됨

3. 조치: image 폴더 경로로 설정
style="icon:URL('img::icon_HS.png');border:1 solid #c4c5c6ff ;" 
==============================================================================================================
 
 - cssclass: Form의 style을 CSS의 class로 지정하는 속성  
 Form.set_cssclass(strStyleClassName) // set  
 Form.cssclass // get   
==============================================================================================================

- 숫자를 받아서 3자리마다 ,를 넣는 함수(넥사크로에서)
/***********************************************************************
* 기  능 :숫자를 받아서 3자리마다 ,를 넣는 함수 	==> 추가: 2018.05.21, by 진태만
* 인  수 : nNum: nNum(숫자값)
* Return : sRst(문자값: 1,000)
* 예  시 : gfn_changeMoney(1000)
***********************************************************************/
gfn_changeMoney = function(nNum)
{ 
	trace("[/lib_Util.xjs] [gfn_changeMoney()] ==> [TEST_01] [nNum]"+ nNum ); 

	var sRst; 
	Money = "";    
	 
	while(parseInt(nNum) >= 1000) 
	{ 
		if((parseInt(nNum)/1000) > 0) 
		{ 
			if((parseInt(nNum) % 1000) == 0 ) 
			{ 
				Money = "," + parseInt(nNum) % 1000 + "00" + Money; 
			} 
			else 
			{ 
				if((parseInt(nNum) % 1000) > 99 ) 
				   Money = "," + parseInt(nNum) % 1000 + Money; 
				else if((parseInt(nNum) % 1000) > 9 ) 
				   Money = ",0" + parseInt(nNum) % 1000 + Money; 
				else 
				   Money = ",00" + parseInt(nNum) % 1000 + Money; 
			} 
		} 
		nNum = parseInt(nNum)/1000; 
	}    
	  
	sRst = parseInt(nNum) + Money;  
	trace("[/lib_Util.xjs] [gfn_changeMoney()] ==> [TEST_91] [nNum_input값]"+ nNum +"[parseInt(nNum)]"+ parseInt(nNum) +"[Money]"+ Money +"[sRst]"+ sRst ); 
	 
	return sRst; 
}
==============================================================================================================

- 몽구스 경량 웹서버 프로그램
1. http://webprogramming.co.kr/admins_blog/1397
==============================================================================================================

- 나이스 아이핀 발급[2018.05.21(월)]
1. http://www.vno.co.kr  ==> tamario/ hp수*16*1@ --> 2차 비밀번호: hp수*16*1
2. 발급기관: 한국신용평가정보  
==============================================================================================================
 
- 장모님 초청 서류 
==> http://cafe.naver.com/thaohong/53599
【 한국에서 준비해야할 서류 】
1. 초청장 및 귀국보증각서(원본, 인감날인)
2. 인감증명서(원본) -> "본인서명사실확인서" 대체 가능(대체시 1번 서류에 본인서명 날인필)
3. 초청인 혼인관계증명서, 가족관계증명서 각각 1부(원본)
4. 초청인의 재직증명서, 사업자등록증명원 각각 1부(원본)(회사 연락처 및 담당자 기재필)
ㅇ 농업 - 농지원부
ㅇ 기타직업군의 경우 직업증빙자료 등 제출 

5. 베트남 배우자의 외국인등록증 앞뒤면 복사본 1부※ 국적 취득시, 배우자의 기본증명서(원본) 제출필 !!
6. 한국인 배우자의 여권 또는 주민등록증 복사본 1부
7. 베트남 배우자의 발급받은 거주(F-6) 비자면(여권상 붙여진) 복사본 1부

8.『 초청 목적 사유가 있을시 』
ㅇ 산후조리목적인 경우 : 진단서 또는 임신확인서(병원 발행 원본)
※ 건강보험 임신⊙출산 진료비 지원 신청 및 임신확인서 양식은 제출받지 아니함.
ㅇ 결혼식 참석 목적인 경우 : 청첩장 및 예식장예약확인서
--------------------------------------------------------------------------------------------------------------

【 베트남에서 신청자분이 준비해야할 서류 】
1. 베트남 가족증명서(So Ho Khau)원본
※ 서류 접수시 원본 지참해야 함. (원본은 확인후 본인에게 반납)

2. 베트남 출생증명서 원본
※ 배트남 배우자분의 출생증명서

3. 가족사진(결혼식 사진 등)

4. 여권

5. 신청자 신분증 사본

6. 비자신청서

7. 증명사진(3cmx4cm) 1매
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.05.22(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:40 ~ 21:00 ==> 부처님 오신날(공휴일)

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
1. 화면 관리(/SY_ScreenMngm.xfdl)
==============================================================================================================
 
- TOP Frame 상단에 회사 로고 아이콘 설정
this.application_onload = function(obj:Application, e:nexacro.LoadEventInfo)
{
	trace("[/APQMS.xadl][application_onload()] ==> [최초 로딩] [TEST_01_1] [T: 현대제철 AP QMS Prj]" ); 
	 
	this.av_topFrame.style.set_icon("img::icon_HS.png");  // TOP Frame 상단에 회사 로고 아이콘 설정 
	trace("[/APQMS.xadl][application_onload()] ==> [최초 로딩] [TEST_03] [this.av_topFrame.style.icon]"+ this.av_topFrame.style.icon );  
}

// 접속 서버에 따라서 동적으로 서비스가 연동되도록 하는 함수
this.afn_setXupServer = function ()
{
	trace("[/APQMS.xadl][afn_setXupServer()] ==> [TEST_01]" ); 

	application.gv_browser = system.navigatorname; 

	application.services["svcurl"].url = "http://localhost/";	// svcurl 서버 URL(로컬 서버)
	//application.services["svcurl"].url = "http://10.10.180.91/";	// svcurl 서버 URL(개발 서버)
	application.services["svc_dev"].url = "http://10.10.180.91/";	// 개발 서버 URL
	application.services["svc_prod"].url = "http://10.10.221.91/";	// 운영 서버 URL

	var strURL = application.xadl; 	 // 접속URL 정보(HTML5 일때)
	trace("[/APQMS.xadl][afn_setXupServer()] ==> [TEST_02][strURL]"+ strURL ); 
	// [/APQMS.xadl][afn_setXupServer()] ==> [TEST_02][strURL]http://localhost/APQMS/APQMS.xadl.js

	if(strURL.indexOf("10.10.180.91") >= 0)  // 서버가 개발 서버 이면
	{
		application.services["svcurl"].url = "http://10.10.180.91/";	// svcurl 서버 URL(개발 서버)
		this.mainframe.set_titletext("[개발] 현대제철 AP 품질관리 시스템");  // TOP Frame 상단에 회사 로고 아이콘 설정 
	}
	else if(strURL.indexOf("10.10.221.91") >= 0)  // 서버가 운영 서버 이면
	{
		application.services["svcurl"].url = "http://10.10.221.91/";	// 운영 서버 URL
		this.mainframe.set_titletext("현대제철 AP 품질관리 시스템");  // TOP Frame 상단에 회사 로고 아이콘 설정 
	}
	else
	{
		application.services["svcurl"].url = "http://localhost/";	// svcurl 서버 URL(로컬 서버)
		this.mainframe.set_titletext("[로컬] 현대제철 AP 품질관리 시스템");  // TOP Frame 상단에 회사 로고 아이콘 설정 
	} 
	trace("[/APQMS.xadl][afn_setXupServer()] ==> [TEST_04][titletext]"+ this.mainframe.titletext +"[svcurl]"+ application.services["svcurl"].url 
	+"[svcurl]"+ application.services["svcurl"].url +"[svcurl]"+ application.services["svcurl"].url ); 
}  

/***********************************************************************
 * 함수명  	: afn_loadCommonData
 * 설명 		: 로그인 팝업 콜백 함수 
***********************************************************************/
this.afn_popup_callback = function (sid, rtn)
{
	trace("[/APQMS.xadl][afn_popup_callback()] ==>  [로그인 팝업 콜백 함수] [TEST_01] [sid]"+ sid +"[rtn]"+ rtn ); 

	if(rtn) 
	{  
		// trace("[/fAPQMS.xadl][afn_popup_callback()]==> [TEST_04][application.gv_userId]"+ application.gv_userId ); 

		this.av_leftFrame.form.fn_getUserMenu();	// 사용 가능한 Menu 조회
		this.av_topFrame.form.fn_getLoginInfo();  
		this.av_topFrameSet.set_visible(true);

		if(application.gv_userId == "1519927")   	// 사번이 1519927 이면
		{
			this.av_mainFrame.set_openstatus("maximize");		 // 메인 화면 최대 크기로 열기(normal: 보통, maximize: 최대)   
			application.av_leftFrame.form.div_menu.set_visible(true);	// div_menu 보이기 처리  
			gfn_ShowLeftMenuFrame(240);		// Left 메뉴 열기 처리  
			fn_showLeftMenuOpen();		// Left 메뉴 열기 처리(Left Menu 프레임 나누기, 보이기)
		}

		var sUserNmDeptNm = application.gds_session.getColumn(0, "KO_NM") +" ["+ application.gds_session.getColumn(0, "DEPT_NAME")+"]";		// 성명, 부서
		trace("[/APQMS.xadl][afn_popup_callback(()] ==> [TEST_31][sUserNmDeptNm]"+ sUserNmDeptNm ); 
	 
		application.av_topFrame.form.st_userNmDept.set_text(sUserNmDeptNm); 	// 성명[부서] 셋팅 (TOP 프레임) 
	}
}
--------------------------------------------------------------------------------------------------------------

- //sz_fsp_nx.xjs 파일에서(FSP 서버 URL 설정)
this.fsp_callService = function (actionName, cmdName, inData, outData, otherArg, callBackFnc, isErrorNotCall, isNotShow, 
isSync, trId, svcDataUrl, options)
{    
	if(application.services["svcurl"].url.indexOf("10.10.180.91") >= 0)  // 서버가 개발 서버 이면
	{
		strDataGroup = "svc_dev";	// 개발 서버  
	} 
	else if(application.services["svcurl"].url.indexOf("10.10.221.91") >= 0)  // 서버가 운영 서버 이면
	{
		strDataGroup = "svc_prod";	// 운영 서버  
	}
	else
	{
		strDataGroup = "svcurl";	// 로컬 서버 
	}
	trace("[/sz_fsp_nx.xjs] [fsp_callService()] ==> [서버 호출] [TEST_04] [svcurl.url]"+ application.services["svcurl"].url );

	this.transaction(param, serverUrl, inData, outData, arg, "fsp_result", isHttpAsync, options.nDataType, options.bCompress);
} 
==============================================================================================================

-- /* 공통코드 조회 ==> [/SY_CommCdInq_S01.xml] [2018.05.21, by 진태만] */ 
AFFAIR_DIV	CM	공통관리
AFFAIR_DIV	DM	출하관리
AFFAIR_DIV	OM	외주관리
AFFAIR_DIV	PM	공정관리
AFFAIR_DIV	PO	조업관리
AFFAIR_DIV	QA	품질관리
AFFAIR_DIV	RB	대구경
AFFAIR_DIV	RM	강관소재관리
AFFAIR_DIV	SP	스파이럴
USE_DIV		N		No
USE_DIV		Y		Yes
==============================================================================================================

/* 로그인 사용자 패스워드 체크 ==> [cm:CM_UserPwdchk_S01.xml] [2018.05.01, by 진태만] */ 
SELECT *
FROM TB_CM_USERINFO 
WHERE EMP_NO IN ('1519927', '1519929','1519928','1519957','1519976','1519977','1519930')
--AND PASSWORD = 'a4ayc/80/OGda4BO/1o/V0etpOqiLx1JwB5S3beHW0s='  --
-- AND DEL_YN = 'N'
;
--------------------------------------------------------------------------------------------------------------
 
- 개인 사번 정보(AP 품질관리 시스템 로그인)
사번: 1519927, 비번:1212, 이름: 진태만 부장
사번: 1519929, 비번:1212, 이름: 진태만 부장
사번: 1519928, 비번:1, 이름: 이정훈 차장
사번: 1519957, 비번:1, 이름: 황원철 부장
사번: 1519976,,비번:1, 이름: 김도현 대리
사번: 1519977, 비번:1, 이름: 염용선 차장
사번: 1519930, 비번:1, 이름: 여홍구 상무
==============================================================================================================
 
- 동서식품 맥심 모카골드 마일드 커피믹스 스틱 12g 100개입 구입, 가격: 15,900원[청구할 것), 이마트 편의점
1. http://itempage3.auction.co.kr/DetailView.aspx?ItemNo=B452453636&frm3=V2 ==> 가격: 11,750원
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.05.23(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 21:00 ==> 주간보고서 작성

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
1. 화면 관리(/SY_ScreenMngm.xfdl)
 1) Valid Check
==============================================================================================================

- 개발서버 SVN 재설정
1. 개발자 SVN 설정 확인
--------------------------------------------------------------------------------------------------------------------------------

- 개발, 운영 서버 원격 연결 권한 나옴
1. HI_TAM4.0 설치(현대제철 원격접속시스템) ==> https://10.10.111.232 -> 1519927/a*a*1*12@  --> 아이핀 로그인: tamario / hp수*16*1@  
2. 현대제철 원격접속시스템(메인) ==> https://10.10.111.232/index.asp?type=main
 1) 프로토콜 연결 설정
  가. DeviceTree > Server > 1.파주IDC > 울산공장관리 > 자동차부품 품질 모니터링 AP1_개발계: 마우스 클릭  ==> WINTERM > WINTERM_Full Screen 
==============================================================================================================

- eclipse에서 Ignored Resources
1. eclipse > Preferences(새창) > Team >  Ignored Resources(새창) > Add Pattern: 버튼 클릭 > 
 Add ignore Pattern: *.xprj_[▲] 또는 *.externalToolBuilders 또는 *.externalToolBuilders: 입력 --> OK: 클릭

2. 참고 
 1) [Eclipse] SVN - Ignored Resources ==> http://yysvip.tistory.com/182
 2) svn에서 무시할 파일 설정하기 svn:ignore property 설정 ==> https://mytory.net/archives/1015
 3) Eclipse에서 SVN 제외 방법 ==>http://misoboy.tistory.com/37
--------------------------------------------------------------------------------------------------------------

- SVN error : resource out of date 
1. 현상:
Some of selected resources were not committed.
svn: E160024: Commit failed (details follow):
2. 원인: 내가 작업하고 있던 소스를 다른 누군가가 작업하여 커밋해 둔 상태(덮어쓴 상태)에서 커밋하려할 때 나타날 수 있는 에러다.

3. 조치: 이러한 상황에서는 우선 업데이트를 먼저 받아야한다. 해당 소스를 업데이트 받게되면 내가 새롭게 작업한 부분이 있기 
때문에 conflict가 발생하게 된다. 이 때 내가 변경한 부분과 업데이트 받은 부분을 잘 합쳐서 svn메뉴의 에러 해결 버튼을 클릭해주고
다시 커밋하면 해당 에러를 해결할 수 있다. 
==============================================================================================================
 
- 저장 버튼 클릭 이벤트 에러
1. 현상: 
uxs (74960): UD 16:44:18:152 [/frmWork.xfdl][div_head_btn_save_onclick()] ==> [02. 저장(공통)][TEST_01]
uxs (74960): SE 16:44:18:168 TypeError: Cannot call method 'replace' of undefined
at line 276, in function: _findMessage in file://D:/QMS/APQMS/workspace/APQMS/WebContent/APQMS/lib/lib_Dialog.xjs.jst

2. 원인: gds_message에 해당 데이타가 없음

3. 조치: gds_message에 해당 데이타가  넣어 줘야 함 ==> 해당 소스 수정
- lib_Dialog.xjs 파일에서
_findMessage = function (msgId, args)
{ 
	//trace("[/lib_Dialog.xjs][_findMessage()] ==> [TEST_01] [01. gds_message,_CNT]"+ application.gds_message.getRowCount() 
	+"[gds_message.saveXML()]  \n"+ application.gds_message.saveXML() );

	var foundRow = application.gds_message.findRow("MSG_ID", msgId);

	if(foundRow < 0) { // err.msg.notexist
		foundRow = application.gds_message.findRow("MSG_ID", "err.msg.notexist"); // 메시지 ID가 존재하지 않을 경우.
		args = "err.msg.notexist";
	}

	var msg = application.gds_message.getColumn(foundRow, "DESCRIPTION");
	var title = application.gds_message.getColumn(foundRow, "TITLE");
	var type = application.gds_message.getColumn(foundRow, "MSG_TYPE");
	trace("[/lib_Dialog.xjs][_findMessage()] ==> [TEST_51] [foundRow]"+ foundRow +"[msgId]"+ msgId +"[args]"+ args +"[msg]"+ msg );
	//TEST_51] [foundRow]-1[msgId]00003899999[args]err.msg.notexist[msg]undefined

	if(args =="err.msg.notexist") // 메시지 ID가 존재하지 않을 경우.
	{
		alert("메시지 ID가 존재하지 않습니다. gds_message 데이타를 확인하세요");
		return;
	}

	if(!gfn_isNull(args))
	{
		var arrArgs = args.split("|");
		trace("[/lib_Dialog.xjs][_findMessage()] ==> [TEST_71] [arrArgs.length]"+ arrArgs.length);

		for(var i = 0; i < arrArgs.length; i++)
		{
		trace("[/lib_Dialog.xjs][_findMessage()] ==> [TEST_72] [i_번째]"+ i +"[msg]"+ msg +"[arrArgs[i]]"+ arrArgs[i] );
		msg = msg.replace("{" + i + "}", arrArgs[i]);
		}
	}
		trace("[/lib_Dialog.xjs][_findMessage()] ==> [TEST_91] [msg]"+ msg +"[title]"+ title +"[type]"+ type );

	var rtn = {
	msg : msg,
	title : title,
	type : type
	};

	return rtn;
}
==============================================================================================================

- 팝업 샘플 생성
1. 04. 팝업 테스트 메뉴[template::Template_09.xfdl]
==============================================================================================================

- 루옌 베트남 여행 경비 송금
1. 루옌 생활비 통장에 200만원 송금함
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.05.24(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 22:00 ==> 주간보고(황부장 일정 누슨하게 작성하고 개발 필수 체크 안해서 이상탁 차장에게 욕먹음)
								  , 염차장 공통 저장 버튼 없애자고 했다고 여상무에게 욕먹음

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
1. 화면 관리(/SY_ScreenMngm.xfdl) ==> 완료 @@@
 1) 저장
==============================================================================================================

- 경량 웹서버인 몽구스(mongoose)를 사용 방법(APQMS Prj 기준)
1. D:\01. TAMA_DATA\03. TAMA Project Source\WebContent 폴더 생성
 1) mongoose-3.7.exe 파일 복사하여 붙여넣기 ==>  D:\01. TAMA_DATA\03. TAMA Project Source\WebContent\mongoose-3.7.exe

2. Tools > Options > Build > Generate Path 에서 옮겨놓은 폴더를 선택
  1) D:\01. TAMA_DATA\03. TAMA Project Source\WebContent

3  'Quick View' 아이콘이나 단축키(Ctrl + F6)을 눌러 화면을 실행시켜 결과를 확인

4. 웹 브라우저로 실행하기 
 1) 몽구스는 별도의 설치 없이 실행파일의 더블클릭으로 확인이 가능합니다. 다만 실행파일의 위치가 변환된 파일이 있는 경로 
 즉 Generate Path로 지정된 위치에 같이 있어야 합니다. 
 2) mongoose-3.7.exe 파일( D:\01. TAMA_DATA\03. TAMA Project Source\WebContent\mongoose-3.7.exe)을 더블 클릭
 3) 실행파일이 실행하면 윈도우 작업표시줄에 몽구스 모양의 아이콘 ( 	)이 생성됨
 4) 몽구스가 실행 된 경로(D:\01. TAMA_DATA\03. TAMA Project Source\WebContent\)가 웹루트 경로가 되며 8080포트를 사용 

2. 드롭 버튼을 눌러 나오는 브라우저 리스트 중 실행하는 경우에는 실행하려는 브라우저를 선택하고 'Quick View'
아이콘을 클릭합니다

3. 실행 경로를 입력하고 결과를 확인 
 1) APQMS Prj ==> http://localhost:8080/APQMS/ 
--------------------------------------------------------------------------------------------------------------

- 경량 웹서버인 몽구스(mongoose)를 사용 방법(exacro_designEDU Prj: Output 폴더 기준)
1. C:\Output 폴더 생성
 1) mongoose-3.7.exe 파일 복사하여 붙여넣기 ==>  C:\Output\mongoose-3.7.exe

2. Tools > Options > Build > Generate Path 에서 옮겨놓은 폴더를 선택
  1) C:\Output

3  'Quick View' 아이콘이나 단축키(Ctrl + F6)을 눌러 화면을 실행시켜 결과를 확인

4. 웹 브라우저로 실행하기 
 1) 몽구스는 별도의 설치 없이 실행파일의 더블클릭으로 확인이 가능합니다. 다만 실행파일의 위치가 변환된 파일이 있는 경로 
 즉 Generate Path로 지정된 위치에 같이 있어야 합니다. 
 2) mongoose-3.7.exe 파일( C:\Output\mongoose-3.7.exe)을 더블 클릭
 3) 실행파일이 실행하면 윈도우 작업표시줄에 몽구스 모양의 아이콘 ( 	)이 생성됨
 4) 몽구스가 실행 된 경로(C:\Output\)가 웹루트 경로가 되며 8080포트를 사용 

2. 드롭 버튼을 눌러 나오는 브라우저 리스트 중 실행하는 경우에는 실행하려는 브라우저를 선택하고 'Quick View'
아이콘을 클릭합니다

3. 실행 경로를 입력하고 결과를 확인 
 1) nexacro_designEDU Prj ==> http://localhost:8080/nexacro_designEDU
==============================================================================================================

- 속소(휴먼스 빌) 공공 요금
1. 상하수도 요금 ==>
 1) 4월 요금 납부 안함 ==> 부동산에 통보, 5월 요금(4월 16일 부터 계산할 것)
2. 도시가스 요금 ==> 납부 완료
 1) 5월 요금(04.01 ~ 04.30) 6,450원, 납부마감일: 2018.05.31, 청구기관: 주식회사미래엔서해에너지
 2) 고객명: 김경배, 납부자번호(전자납부번호): 3002251051001, 지로번호: 4029498
 3) INTERNET GIRO(인터넷지로) ==> https://www.giro.or.kr/index.giro(메인) 인터넷지로 > 일반지로요금
3. 전기 요금 ==>
 1) 5월 요금(04.01 ~ 04.30) 6,450원 ==> 지로번호: 4029498
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.05.25(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:00 ==> 황부장 초보적인 것 질문해서 내가 짜증냄, 서울행(19:26 ~ 21:22, 삽교역 -> 영등포역)

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
1. 메뉴 등록(/SY_MenuInput.xfdl)  
 1) 조회, 저장, 수정 ==> 완료@@ 
 2) 행 추가 버튼 Click 이벤트 수정 ==> 수정 중 @@ 
2. 화면 등록(/SY_ScreenInput.xfdl)  ==> 완료@@ 
3. Message 등록(다국어)(/SY_MssInputMtGual.xfdl) 
--------------------------------------------------------------------------------------------------------------

- 현대하이스코_HUMES 메뉴
1. 화면 관리(/CM_UIInfo.xfdl) 
2. 메뉴 정보(/CM_MenuInfo.xfdl)
3. 화면권한정보(/CM_UIAuthInfo.xfdl)
 1) TB_CM_ACLGRPUIINFO C, 	-- 권한그룹화면 정보 TB  
==============================================================================================================

1. Splitter
1. 현재 nexacro에서는 Splitter Component가 지원이 되지 않음 ==> TO-BE 콜센타 Q&A 게시판
==============================================================================================================

- tree init status 
1. set_treeinitstatus: 그리드의 트리 셀에서 treestatus 열로 바인드된 값을 초기화하는 방식을 지정하는 속성 펼치기 
Grid.set_treeinitstatus( "collapse,all");	 // set 
Grid.set_treeinitstatus( "expand,all");	 // set 
Grid.treeinitstatus; // get   
 1) collapse,null: TreeStatus에 Bind된 Column이 없거나, Column값이 Null일때 --> 'Collapsed' 상태로 설정함(Default)
 2) expand,null: TreeStatus에 Bind된 Column이 없거나, Column값이 Null일때 --> 'Expanded' 상태로 설정함
 3) collapse,all:  TreeStatus에 Bind된 Column 값을 무시하고, 모두 'Collapsed'[붕괴된] 상태로 설정함
 4) expand,all: TreeStatus에 Bind된 Column 값을 무시하고, 모두 'Expanded'[넓어진] 상태로 설정함 
==============================================================================================================

- 동적 SQL : Tag(SQLMAP에서)
<isNotNull col="파라메터명">	 ==> 값이 NULL( 공백문자 포함)이 아닐 경우 
  SQL
</isNotNull> 

<isNotEqual col="BIZ_GP" value="%">   ==> value 속성에 주어진 값과 동일하지 않을 경우
AND BIZ_GP LIKE #BIZ_GP#||'%'
</isNotEqual>	  
==============================================================================================================
 
- getRowType 설정
1. getRowType:  데이터셋에서 지정된 행(row)의 타입을 구하는 메소드
var sRowSts = this.ds_munuList.getRowType(i);	// ROW 타입[1: 초기 행의 상태, 2: 추가된 행의 상태, 4: 수정된 행의 상태, 8: 삭제된 행의 상태] 
var nRowType = this.Dataset00.getRowType(0);		// ROW 타입[0: 존재하지 않는 행의 상태, 1: 초기 행의 상태, 2: 추가된 행의 상태
, 4: 수정된 행의 상태, 8: 삭제된 행의 상태, 16: 그룹 정보 행의 상태]
Dataset.ROWTYPE_EMPTY 	==> 0: 존재하지 않는 행의 상태
Dataset.ROWTYPE_NORMAL	==> 1: 초기 행의 상태
Dataset.ROWTYPE_INSERT	==> 2: 추가된 행의 상태 
Dataset.ROWTYPE_UPDATE	 ==> 4: 수정된 행의 상태  
Dataset.ROWTYPE_DELETE 	==> 8: 삭제된 행의 상태
Dataset.ROWTYPE_GROUP	==> 16: 그룹 정보 행의 상태

var rowType = obj.getRowType(e.row);

if(rowType == 2 || rowType == 4) {  	// ROW 타입이 추가 또는 수정 이면
	obj.setColumn(e.row, "CHK", "1");
} else {
	obj.setColumn(e.row, "CHK", "0");
}
============================================================================================================== 		
 
■■■■■■■■■■■■■■■■■■ 2018.05.26(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:50 ~ 18:00 ==> 루옌, 수종 베트남 방문
 
- 루옌, 수종 베트남 방문
02:00 기상
02:10 조식(떡)
02:20 집출발
02:30 [쏘카존] 서울 영서초등학교 옆(벽산디지털밸리 7차), 벽산디지털밸리7차 지하3층 도착
02:40 쏘카에서 대여한 차량 점검(65호4801(투싼), 사진 촬영)
03:00 차량 출발(여휴 시간없음) ==> 내비 SK T 맵, 후방 카메라 장착, 주차 브레이크 있음, 차량 멈춤시 엔진 꺼짐, 키 없음
		(브레이크 + Start(버튼) 누름: 시동 걸림) --> 서리가 끼여서 창문 열고 달림(에어컨 틀어야 함)
03:10 문영 아파트 도착(짐 싣기: 장인, 장모, 루옌, 수종)
03:15 집 출발
04:20 인천국제공항 버스 정류장 도착(3층): 짐 내리기, 장인, 장모, 루옌, 수종 하차
04:20 인천국제공항역 입국장(1층) 도착 ==> 출국장(3층)으로 가기 위해 30분 동안 여러 번 돔
04:50 인천국제공항역 입국장(1층) 도착 ==> 차에서 짐 내리고 카트로 짐 싣고  장인, 장모, 루옌, 수종 내림 
04:57 장기주차장(서편) 출입문이 안 열림(여러분 왔다 갔다 해서 잠긴 것으로 추정 
04:59 쏘카존 차고 접수 센터(1661-4977)에 전화 ==> 인천공항 관리차가 다른 주차장 입구를 안내 해줌
05:06 인천국제공항 제1여객터미널 장기주차장 서편 56번 구역] 도착 ==> 쏘카 콜센터(02-1661-3315)에서 전화와서
		주차 처리 해줌 ==> 톨비, 기름값(쏘카 예약[65호4801(투싼)) ==> 14,760원 결제 완료 문자 옴
		--> 총 쏘카 차 대여비[72,760원] = 차 대여비: 58,000원 + 톨비, 기름값: 14,760원
05:10 장기주차장 서편 56번 구역 출발(도보)
05:20 인천공항 3층 출국장 도착(J01) ==> 장인, 장모, 루옌, 수종  만남(체크인 카운터에서 짐 부치기 끝냄)
05:25 루옌 핸드폰 일시정지 신청(1층 LG유플러스 부스) ==> 입국일(6월 24일(일))에 다시 부스에서 해지 종료 신청할 것
05:25 루옌, 수종, 장인, 장모 교통약자 게이트(GATE1)로 가서 출국장으로 들어감 
06:00 지하철(인천공항역 -> 홍대입구역(2호선 환승) -> 대림역) 
08:00 귀가
08:30 낮잠
17:00 기상
18:30 집출발
19:00 냉면 포장(김밥천국)
19:30 귀가
19:40 석식(냉면, 밥)
20:00 루옌과 화상통화(루예, 수종 베트남 처가에 잘 도착함)
01:00 취침
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.05.27(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==>  

▦ 축구
09:30 기상
10:30 인터넷 서핑
12:00 중식
15:30 집출발 
15:40 대림운동장
16:00 게임(은혜교회팀: 어울림 ==> 4 쿼터 뜀):  최종 수비, 컨디션 별로 안 좋음
18:00 종료
18:20 귀가
19:00 인터넷 서핑
20:00 석식
23:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.05.28(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 21:00 ==> 예산행(05:43 ~ 07:35, 영등포역 -> 삽교역), 즁식(탕수육, 짬뽕, 손짜장 대가: 개발팀, 여상무 -> 오이사가 쏨)
								 이사 방문(황부장, 김대리에게 모니터 전달: 개발 걱정 많이 함, 9월말에 철수 예정), 루옌과 화상통화(베트남 처가)

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
1. 메뉴 등록(/SY_MenuInput.xfdl)  
 1) 행 삭제 버튼 Click 이벤트 수정 ==> 수정 중 @@  
==============================================================================================================

- 5월 5째주 일정[2018.05.28(월), 주간 일정]_[★★★]
01. 화면 개발 ==>   
메뉴 등록(/SY_MenuInput.xfdl)  							2018-05-25	2018-05-29
Message 등록(다국어)(/SY_MssInputMtGual.xfdl) 	2018-05-29	2018-06-01
02. UI 공통 일정 작성
1. 보안 리스트 분석
03. 공통 개발 일정 작성
1. 이상탁 차장에게 공통 개발 리스트 확정 받을 것
--------------------------------------------------------------------------------------------------------------

- 도윤주 결혼(13시, 수원, 정희 이모 딸)
1. 기간: 2018.06.02(토) 13시
2. 장소: 더아리엘 1층 컨벤션홀[경기 수원시 팔달구 중부대로 181(031-214-9300)] 
==============================================================================================================

- 검사기준 등록(/QI_QltyInspInput.xfdl) 화면 로딩 에러
1. 현상:
uxs (16036): UD 11:8:12:616  [/frmLeft.xfdl][fn_CallMenu()]==> [Grid 더블 클릭, 클릭 이벤트][TEST_01] ===========> 
uxs (16036): UD 11:8:12:617  [/frmLeft.xfdl][fn_CallMenu()]==> [TEST_42][01. objDs,_CNT]53[nChildRowCnt]0[nTreeStatus]3[nRow]2[sUrl]QI::QI_QltyInspInput.xfdl[scrNm]검사기준 등록[gfn_getLength(sUrl)]25
uxs (16036): UD 11:8:12:621  [/lib_Comm.xjs][gfn_chkOpenMenu()]==> [chk Open Menu][TEST_71][winKey]QI-01-010_0_82[objDs.MENU_ID]QI-01-010[objDs.MENU_NM]검사기준 등록
uxs (16036): UD 11:8:12:622  [/lib_Comm.xjs][gfn_chkOpenMenu()]==> [chk Open Menu][TEST_73][winKey]QI-01-010_0_82[objDs.MENU_ID]QI-01-010[objDs.MENU_NM]검사기준 등록
uxs (16036): SE 11:8:12:823  요청 오류입니다.    
==> \nexacro14lib\framework\ErrorDefine.js 파일에서
 "comm_http_499" : ["요청 오류입니다.    "], 
2. 원인: globalvars.xml 파일에서 gds_menu 생성시 메뉴가 꼬인 것으로 추정됨
3. 조치: globalvars.xml 파일에서 gds_menu 생성시 하나씩 다시 등록할 것
==============================================================================================================

- 심부장 로그인 정보 수정
/* 사용자 정보 가져오기 ==> [sy:SY_UserInfoInq_S01.xml] [2018.05.01, by 진태만] */ 
SELECT EMP_NO		-- 사용자ID
			, PASSWORD		-- 비밀번호 ==> 1로 변경: 2018.05.28, by 진태만  @@@ 
			, KO_NM				-- 한글이름 
			, ACL_GRP_CD   	-- 권한그룹 ==>  'ADM'로 변경: 2018.05.28, by 진태만 @@@ 
			,  'OK' AS AUTH			-- TEST[권한 테스트]: 2018.05.03, by 진태만 
FROM TB_CM_USERINFO A
WHERE EMP_NO = '1519957'   -- 회원번호:1515940(심정호 부장)
;
==============================================================================================================

[공통 공지]메세지 추가
1. 메세지 요청이 와서 추가 했어요. 필요시 요청 바랍니다.
 1) globalvars.xml 파일 업데이트 받으면  됩니다. 
gfn_alert(this, "000171", "");	// 000171: 저장할 내용이 없습니다.
gfn_confirm(this, "000172", "", "fn_confirmCallback"); 		// 000172: 삭제하시겠습니까?   ==> Q0004
==============================================================================================================
 
- frmMDI.xfdl 파일에서 "왼쪽 메뉴 열기, 닫기" 버튼 이미지 안 보이는 현상
황팀장님, frmMDI.xfdl 파일에서 "왼쪽 메뉴 열기.닫기 버튼 이미지 안 보이는 현상은 HTML5에서 대소문자를 구분하기 떄문에
나타는 현상이에요. 넥사크로에서 Generate Application을 하면 대소문자를 혼합한 Frame일 경우 무조건 frame으로
변환해서 인식을 못 합니다.(파일도 마찬가지 압니다.)
그래서 theme://Frame/btn_LF_Show.png은 경우 theme://frame/btn_LF_Show.png로 다 고치시고 css에도 그렇게
적용된 부분 다 고쳐서 zip으로 만들어서 보내주세요, 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.05.29(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:40 ~ 22:00 ==> 여상무 처고모상(휴가)

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
1. 메뉴 등록(/SY_MenuInput.xfdl)  
 1) 행 삭제 버튼 Click 이벤트 수정 ==> 완료 @@  
  2) 메뉴 데이타 DB에 등록, 개발서버에 등록 ==> 완료 @@  
==============================================================================================================

- 메인 화면(ffrmHome.xfdl) 배경 이미지 변경(황미숙 차장 요청)
1. img_Main.png 로 변경
==============================================================================================================
 
- 업무구분 코드(ds_affairDiv)
 ==> 1. 품질검사(QI), 2. 신차개발(NC), 3. 변경관리(UM), 4. 표준류관리(DS), 5. TOOL관리(TL), 6. 종합분석(RP), 
 7. 기준정보(CM), 8. 시스템관리(SY)
<ColumnInfo>
  <Column id="COMM_CD_GRP_ID" type="STRING" size="256"/>
  <Column id="COMM_CD_ID" type="STRING" size="256"/>
  <Column id="COMM_CD_NM" type="STRING" size="256"/>
</ColumnInfo>
<Rows>
  <Row>
    <Col id="COMM_CD_GRP_ID">AFFAIR_DIV</Col>
    <Col id="COMM_CD_ID">QI</Col>
    <Col id="COMM_CD_NM">품질검사(QI)</Col>
  </Row>
  <Row>
    <Col id="COMM_CD_GRP_ID">AFFAIR_DIV</Col>
    <Col id="COMM_CD_ID">NC</Col>
    <Col id="COMM_CD_NM">신차개발(NC)</Col>
  </Row>
  <Row>
    <Col id="COMM_CD_GRP_ID">AFFAIR_DIV</Col>
    <Col id="COMM_CD_ID">UM</Col>
    <Col id="COMM_CD_NM">변경관리(UM)</Col>	 
  </Row>
  <Row>
    <Col id="COMM_CD_GRP_ID">AFFAIR_DIV</Col>
    <Col id="COMM_CD_ID">DS</Col>
    <Col id="COMM_CD_NM">표준류관리(DS)</Col>     
  </Row>
  <Row>
    <Col id="COMM_CD_GRP_ID">AFFAIR_DIV</Col>
    <Col id="COMM_CD_ID">TL</Col>
    <Col id="COMM_CD_NM">TOOL관리(TL)</Col>   
  </Row>
  <Row>
    <Col id="COMM_CD_GRP_ID">AFFAIR_DIV</Col>
    <Col id="COMM_CD_ID">RP</Col>
    <Col id="COMM_CD_NM">종합분석(RP)</Col> 
  </Row>
  <Row>
    <Col id="COMM_CD_GRP_ID">AFFAIR_DIV</Col>
    <Col id="COMM_CD_ID">CM</Col>
    <Col id="COMM_CD_NM">기준정보(CM)</Col>
  </Row>
  <Row>
    <Col id="COMM_CD_NM">시스템관리(SY)</Col>
    <Col id="COMM_CD_ID">SY</Col>
    <Col id="COMM_CD_GRP_ID">AFFAIR_DIV</Col>
  </Row>
</Rows>
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.05.30(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:40 ~ 22:00 ==> 주간보고서 작성

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
1. 메뉴 등록(/SY_MenuInput.xfdl)  
 1) 메뉴 데이타 DB에 등록 ==> 완료 @@  
 2) 메뉴 등록 최종 테스트  ==> 완료 @@  
  가. 중분류 메뉴를 삭제하면 ==> 1. 실제로 해당 중분류 메뉴만 삭제, 2. 메뉴 Tree에서는 하위 소분류 메뉴도 같이 안 보임(삭제된 것
       같은 효과가 남)
==============================================================================================================

- 테이블 모든 컬럼과 디스크립션 필요할 때 사용
select COLUMN_NAME, ',--'||COMMENTS
from user_col_comments WHERE TABLE_NAME = 'HSQMM100'
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.05.31(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:40 ~ 22:00 ==> 주간보고(14시)

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
1. Message 등록(다국어)(/SY_MessageInputMtGual.xfdl)  
 1) gds_message
==============================================================================================================

- 메뉴 추가
1. 검사기준 이미지 등록(/QI_InspStdImageInput.xfdl)  ==> 여상무님 요청
==============================================================================================================
 
-- 기초코드-대분류 정보 조회  @@@ ==> 
SELECT
    A.MAIN_CD AS 대분류코드, A.TITLE AS 분류명, A.MDL_CD AS 모듈코드, A.GRP_NM AS 업무분류
    , A.SORT_BC AS 정열구분, A.USER_YN AS 사용자정의여부, A.USE_YN AS 사용여부
    , A.*
FROM HSBCA100 A  -- 기초코드-대분류 TB
WHERE 1=1 
AND A.MAIN_CD LIKE 'SY%'       -- 대분류코드
;
---------------------------------------------------------------------------------------------

 -- 기초코드-소분류 정보 조회  @@@ ==> 
SELECT	SUB_CD AS COMM_CD_ID  -- 소분류코드
        , TITLE || '(' ||  SUB_CD || ')'  AS COMM_CD_NM   --기초코드명 
        , SUB_CD  AS COMM_CD_ID2		 -- 소분류코드2
        , TITLE  AS COMM_CD_NM2 		 -- 기초코드명2
        , DECODE(SUB_CD
        , 'QI', 1   	-- 품질검사 (QI)
        , 'NC', 2  	-- 신차개발(NC)
        , 'UM', 3  	-- 변경관리(UM)
        , 'DS', 4    	-- 표준류관리(DS)
        , 'TL', 5     	-- TOOL관리(TL)
        , 'RP', 6		-- 종합분석(RP)
        , 'CM', 7		-- 기준정보(CM)
        , 'SY', 8		-- 시스템관리(SY)
) AS MENU_SEQ  -- 메뉴순번
,  BASE_CD AS 기초코드 
        ,  BS_CD AS 사업장  
FROM HSBCA200   -- 기초코드-소분류 TB
WHERE MAIN_CD = 'SY101'  -- 대분류코드 
ORDER BY MENU_SEQ
;
---------------------------------------------------------------------------------------------

-- 메세지 정보 조회  @@@ ==> 
SELECT TO_CHAR(SYSDATE, 'YYYY.MM.DD HH24:MI:SS') 현재_날짜, 
A.*
 FROM SCV100 A 		 -- 메세지 TB
 WHERE 1 = 1 
 ;
==============================================================================================================
 
- 틀고정
this.grd_list.setFormatColProperty(3, "band", "left");	 	// 틀고정(3번째 칼럼)
==============================================================================================================
 
- Grid validExpr
1. MSG_CD:메시지코드:P,MSG_CD:메시지코드:D
 1) lert시 표현할 Column Text : P(필수입력), N(숫자입력), D(중복체크)
  
 var oDs = eval(oGrid.binddataset);

- eval: 스크립트 코드를 평가하고 실행하는 메소드
1. this.varRet = eval("1+1");
============================================================================================================== 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 
+----------------------------------------------------// End //----------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■




