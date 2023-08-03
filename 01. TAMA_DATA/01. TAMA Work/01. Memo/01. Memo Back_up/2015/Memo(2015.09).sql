 

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2015.09) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2015.09.01(화) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 19:10 ==> 추석표 예매(KTX, 6시): 대기자가 너무 많아서 포기

- 한섬 ERP 재구축 Prj[★] 
- 메인(/MAIN.xfdl) 화면 수정
==============================================================================================================

- 개발서버 라이센스 등록
1. XPLATFORM_Client_License.xml 라이센스 등록
 1) 00. XPlatform 라이센스(2015.08~09)/XPLATFORM_Client_License.xml 를 다운로드 받음
 2) 개발서버 C:\hsdocs\hse\docroot\XIContent\HsDeploy폴더에 붙여 넣기
2. XPLATFORM_Server_License.xml 라이센스 등록
 1) 00. XPlatform 라이센스(2015.08~09)/XPLATFORM_Server_License.xml 를 다운로드 받음
 2) 이클릭스 C:\HS_ERP\workspace\handsome\src\main\webapp\WEB-INF\lib폴더에 붙여 넣기 후
 커밋할 것 
3. Jenkins 배포 ==> http://172.168.110.41:6060/jenkins/ 
==============================================================================================================

- XPlatform 환경 설정
1. titletext명 표시
 1) UXSTUDIO의 Tools메뉴 > Options: 클릭 > Environment > Prject Explorer 항목: 선택  
FDL Parsing(Prject open) : All 선택
Show Title : at Prject Explorer 선택 
-----------------------------------------------------------------------------------------------

 - Script 폰트 변경
1. Tools > Options > Environment > Font and COlor > Script: 글자 크기 변경
 1) 화면 글자 줌 인, 줌 아웃: Ctrl + 마우스 휠
-----------------------------------------------------------------------------------------------

- 주석 처리
1. /: 주석 막기
2. Atl + /: 주석 풀기
-----------------------------------------------------------------------------------------------

- 소스에 점선 추가
 Tools > Options > Environment > Font and COlor > Source(클릭): 
View Indentation Guide(체크), Auto Indent(체크) ==> OK(확인) ---> Message, Script, CSS에 모두 체크 
==============================================================================================================
 
- 표준 개발 교육(14시)
1. 일시: 2015년 9월 1일(화) 14시 
2. 장소: (주)한섬 빌딩 4층 회의실
3. 대상: 전체 개발자
==============================================================================================================
 
- KT 올레 공유기(IP Time) 설치(olleh WiFi home) ==> 교체해달라고 해서 교체 함
1. 17시에 KT 기사가 집에 방문해서 설치해줌
2. 제품 사양
 1) 제품명: olleh WiFi home
 2) 모델명: KM05-410H
 3) 제조사: (주)머큐리
 4) 제조년월: 2015.08]
 5) 무선랜명: olleh_WiFi_4C74 ==> 0000005680
 6) MAC ADDRESS: 085DDD294C74
 7) 제조관리번호: 201508055680
 8) KT BARCODE: HMAP9182974055680 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.09.02(수) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 19:10 ==> 

- 한섬 ERP 재구축 Prj[★]
- default.xtheme 파일 변경 후 개발서버에 xtheme 이미지 반영 안됨  
1. 현상: 몇 일 전에 디자이너가 default.xtheme를 수정하고 메인 변경 후 철수를 했습니다.
그런데 로컬에서는 잘 되는데 개발 서버에 올리니 이미지가 안 보입니다.
  1) HandsomeERP.xadl 파일에서
<Application id="DefautTheme"  themeid="CSS::HS_ERP.xtheme" filesecurelevel="all" usecontextmenu="form" >
  <Layout>
<MainFrame id="mainframe">

</MainFrame>
</Layout>
     <Style url="theme://HS_TEM.css"/>
    <Style url="theme://HS_CSS.css"/>
    <Style url="theme://HS_MDI.css"/>  
</Application>

3. 원인:  default_typedef.xml 파일에서 CSS가 static인데 version 안 바꾸고 등록해서 나는 에러
4. 조치: 등록할 때 마다 static인데 version을 올리거나 cachelevel="dynamic"으로 변경할 것
- CSS, IMG는 static 사용(잘 변경이 안됨)
<!-- CSS 폴더(static은 CSS가 변경되면 version을 바꾸어야 함, dynamic변경, 개발 끝난 후 static으로 돌릴 것 ) -->
<Service prefixid="CSS" type="file" url="./CSS/" version="20150902001" communicationversion="0" cachelevel="dynamic"/> 
<!-- IMG 폴더(static은 CSS가  변경되면 version을 바꾸어야 함, dynamic변경, 개발 끝난 후 static으로 돌릴 것 ) -->
<Service prefixid="IMG" type="file" url="./Images/" version="20150902001" communicationversion="0" cachelevel="dynamic"/> 
==============================================================================================================

- 갤럭시 노트5 쿠폰(N920KGD_64G)
1. 삼성 페이 런칭 이벤트 참여 --> 쿠폰번호: 15F-12TB-TRB9-N9TN,
==> 샴성 급속 무선 충전기(모델명 : EP-PN920BBKG, 블랙) 구입 ==> 5천원 
==============================================================================================================

- 단축키 리스트 확인
1. 현재 F4만 사용 중(F4: 화면 debug창 오픈)
==============================================================================================================

- 윈도우 shell(터미널)
1. Babun - a windows shell  ==> http://babun.github.io
- 개발서버 로그
1. C:\hslog\hse\server1\JeusServer.log
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.09.03(목) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 19:10 ==> 

- 한섬 ERP 재구축 Prj[★]
- /nhGrid.xjs 수정
==============================================================================================================

- SYSTEM 별 구분
1. HS_ERP(해상도: 1208)==> http://172.168.110.41:7070/XIContent/HsDeploy/index.htm
2. HS_SCM(해상도: 1024)==> http://172.168.110.41:7070/XIContent/HsDeploy/SCMindex.htm
3. HS_POS(해상도: 1024)==> http://172.168.110.41:7070/XIContent/HsDeploy/POSindex.htm
4. HS_TRADE(해상도: 1024)==> http://172.168.110.41:7070/XIContent/HsDeployTRADEindex.htm
5. HS_BI(해상도: 1024)==> http://172.168.110.41:7070/XIContent/HsDeployBIindex.htm
==============================================================================================================

- 한섬 ERP 배포 바로가기 URL 변경  
1. 바로가기 URL 변경 방법
 1) 바탕화면 > HS_ERP(오른쪽 우 클릭) > 속성(R) > 대상(T) > HS_ERP 속성(새창)
  : "C:\Program Files (x86)\TOBESOFT\XPLATFORM\9.2.1\XPlatform.exe"  -K 'HS_ERP'  -X 'http://172.168.110.41:7070/XIContent/HandsomeERP.xadl'
  ==> "C:\Program Files (x86)\TOBESOFT\XPLATFORM\9.2.1\XPlatform.exe"  -K 'HS_ERP'  -X 'http://172.168.110.41:7070/XIContent/HS_ERP.xadl'
  로 변경 > 확인(클릭)
----------------------------------------------------------------------------------------------------------------------

- SYSTEM 별 배포 URL
1. HS_ERP(해상도: 1208)==> http://172.168.110.41:7070/XIContent/HsDeploy/index.htm
2. HS_SCM(해상도: 1024)==> http://172.168.110.41:7070/XIContent/HsDeploy/SCMindex.htm
----------------------------------------------------------------------------------------------------------------------

- 수정 요청 사항
1. Grid 배경색 없애기 ==> 완료 @@@
2. Grid TOTAL: 3줄 늘이기  ==> 완료 @@@
2. Excel(ctrl + v)
3. 이름: 진*만  ==> 완료 @@@
4. 메신저 연결 ==> Menu
==============================================================================================================

- 색깔확인(HTML Color Picker)
http://html-color-codes.info/
==============================================================================================================

- 메타태그 - IE 호환성보기 버튼 제거
1. http://lab.hv-l.net/75847
==============================================================================================================

- 장모님 선불폰 충전[2015.09.03(목)] ==> ☎ 010-2649-1964 
1. 요금제: KTF 충전카드(월 만원차감 예상)
==> http://freephonephone.co.kr/front/php/product.php?product_no=92&main_cate_no=33&display_group=1 
입금자명: 진태만, 선불폰번호: 010-2649-1964(장모님), 충전카드 종류: KTF 충전카드 30,000원
==> 010-8071-3990로 문자 보낼 것
==============================================================================================================

- 루엔 직업 교육 신청
HRD Net: http://www.hrd.go.kr/jsp/HRDP/main/index.jsp
==============================================================================================================

- 4대보험 5개월간 가입이 안된 건 처리
1. Re: [Re: 4대보험 5개월간 가입이 안된 결과 메일 보냄
2. 김현욱 이사에게 전화와서 30만원 선에서 이 문제를 합의하라기로 함
 1) 30만원은 다음달 급여에 추가된다고 함
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.09.04(금) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 19:10 ==> LG CNS 임원이 와서 프로젝트 지연에 대해 문책함

- 한섬 ERP 재구축 Prj[★]
- /nhGrid.xjs 수정
1. ToDoList.xfdl 수정 ==> D:\99. Back up\2015.09.01\한섬ERP\Quick/ToDoList.xfdl
==> AC10P358601.xfdl(신청서양식관리) --> 예제
--------------------------------------------------------------------------------------------------------

- nhGrid Grid 설정 @@@
_check: true(Grid에 체크박스 설정)
_checkHeadEnable: true(rid에 체크박스에 헤드 상태값 옵션)
_checkDisplayType: true
_more: 더보기
_number: No(Grid에  줄번호(No) 설정)
_sort: true(Grid에 헤더 정렬 설정)
_status: true(Grid에 상태표시 이미지 설정)
_tooltip: true(Grid에 툴팁 설정) 
--------------------------------------------------------------------------------------------------------

- Grid 썍깔 설정 @@@
F2F2F2: 연한 회색
B7FFF7: 연한 하늘색  
DFDAD0: 진한 회색 
F4F4F4: 연한 회색2
==============================================================================================================

- Clip Report
http://172.168.110.41:3040/hseReport.jsp?rptname=cm/common/sample
\\172.168.110.45\한섬erp\한섬 ERP재구축 프로젝트\04.기반\02.AA\02. 데이터&질의&응답\008_20150902_ClipReport_XPlatform적용 

- Clip Report SVN
https://172.168.110.41:7443/svn/D_HS/trunk/clipReport4   ==> tamario / 0898
==============================================================================================================

- 바코드출력(Embeded) 방법
function btn_barcode_onclick(obj:Button,  e:ClickEventInfo)
{ 
	var _extCommon = new ExtCommon(); 
	var strValue = 9000; // 9000:IE9임 <--IE버전은 url참조 : (https://msdn.microsoft.com/en-us/library/ie/ee330730(v=vs.85).aspx) 
	var strKey = "HKEY_LOCAL_MACHINE"; 
	var strPath = "SOFTWARE\\Microsoft\\Internet Explorer\\MAIN\\FeatureControl\\FEATURE_BROWSER_EMULATION"; 
	var strName = "XPlatform.exe"; 
	var rtn = _extCommon.regSetValue(strKey,strPath,strName,strValue); 

	var strKey = "HKEY_CURRENT_USER"; 
	var strPath = "SOFTWARE\\Microsoft\\Internet Explorer\\Main\\FeatureControl\\FEATURE_BROWSER_EMULATION"; 
	var strName = "XPlatform.exe";  
	var rtn = _extCommon.regSetValue(strKey,strPath,strName,strValue);

	var repeat = edt_repeat.value;  
	var url = "http://localhost:3040/hseReport.jsp?rptname=cm/common/barcode_test&repeat="+repeat;

	MSIE00.Navigate2(url);
}
==============================================================================================================

- 9월 전체 회식((주)지아이데이타, 19시)
07:00 퇴근
07:30 선릉역
07:35 유쿡 족발 보쌈 감자탕 도착 
07:40 석식(맥주): 김현욱 이사 갤럭시 노트5 구입
21:30 종료  
22:00 귀가
23:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.09.05(토) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 20:40 

- 주말(▦ 조기축구)
05:00 기상
05:30 지하철(대림역 -> 서울대입구역)
05:50 서울대입구역 1번 출구 
06:00 태훈이형 차
06:20 반포역(종순이 태우고 감, 김밥 싸 옴[1개 먹음])
06:50 대치 유수지 체육공원
07:10 게임(대치FC: 젊고 빠름)
07:40 병춘이형이 나한테 경훈이와 같이 물 사오라고 했는데 경훈이 안간다고 함 
08:00 물(11병)이 무겁고 길이 멀어서 너무 힘듬 
08:40 게임(대치FC: 2대 0으로 이김) ==> 실력은 우리가 많이 모자랐음(나는 잘한 편)
09:10 화장실에서 경훈이와 싸움(다시는 상종하지 말 것)
09:20 대치 유수지 체육공원 출발(반포역 -> 서울대입구역)
10:10 서울대입구역 도착(소나기 옴)
10:30 루옌, 수종 도착(루옌 다문화 축제(13시, 관악구청)에 부채춤 공연하러 감)
10:40 서울대입구역 -> 대림역(김밥 2줄, 술빵 구입0
11:00 귀가
11:20 수종 돌봄(김밥 조금 먹음, 밥 안 먹음)
14:00 올레 기사 방문(올레 기사 와이파이로 교체 해줌: 속도 향상됨)
16:00 수종 똥 싸서 기저귀 갈음
16:20 쇼핑(이마트 구로점): 수종 잠을 사서 과자만 사고 돌아옴 
17:20 귀가
18:00 석식(루엔 닭 사와서 먹음)
00:00 취침
==============================================================================================================

- KT 올레 기가 와이파이 공유기 설치(olleh GiGA WiFi home)
1. 제품 사양
 1) 제품명: olleh Giga WiFi home
 2) 모델명: DW02-412H
 3) 제조사: 동원티앤아이(주)
 4) 제조년월: 2015.07
 5) 무선랜명: olleh_GiGa_WiFi_4962(pwd: 0000000624)  ===> : olleh_GiGa_WiFi_1806(pwd: 0000000508) 로 변경됨
 6) MAC ADDRESS: 000789324962
 7) 제조관리번호: 20150806300624
 8) KT BARCODE: GHAP9183061300624
-------------------------------------------------------------------------------------------------------------------

- KT 올레 기가 와이파이 공유기 무선랜명, 비밀번호 변경 방법
1. http://172.30.1.254 
2. 무선 설정 
 1) IP: ktuser ==> homehub
3. 무선보안 / 설정 ==> 비밀번호를 바꾼다. 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.09.06(일) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 20:40 ==> 

▦ 조기축구
06:00 기상
06:30 버스(6411번, 대림역 -> 한티역)
07:30 도곡초등학교 
08:00 게임(FC 루비셀로나 5명 나옴) ==> 3게임(나는 잘한 편)
11:30 종료
11:40 월례회의 
==> 1. 운동장 골대 조기회에서 구입하기로 함(240만원 선) ==> 임원들은 10만원씩 찬조하라고 함
      2. 운동자 사용료 ==> 1년 2천만원(주민 70% 할인: 640만원 --> 더 할인: 400만원에 합의했다고 함)
      3. 다음주 토요일 부터 신구초교 운동장 사용 가능
11:50 중식(김치찌게, 병기형 가게): 만원 냄
12:50 종료
13:50 귀가(루옌 다오집에 놀러 감)
14:00 TV 시청
18:40 루옌, 수종 귀가(루옌 지인들 모바일 쇼핑 비용 10만원 먼저 받음 ==> 추후 계산할 것)
19:40 석식(컵라면, 밥)
23:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.09.07(월) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 19:10 ==> 개발자 많이 투입됨(옆자리 개발자가 앉음)

- 한섬 ERP 재구축 Prj[★]
- /nhGrid.xjs 수정(삭제 처리) 
function btn_delete_onclick(obj:Button,  e:ClickEventInfo)
{  
	var selectedRows = grd_msgCdMgmt.getCheckedRow(); 
	 
	if (selectedRows.length == 0) 
	{
		gfn_alert("NOR021", ["행"]); // 삭제할 @ 을(를) 선택 하십시오. 
		return ;
	}
	else
	{
		if( gfn_confirm("CFM002") )  // CFM002: 삭제하시겠습니까? 
		{   
			var deletedRows = gfn_deleteRowsGrid(ds_msgCdMgmt, grd_msgCdMgmt);  
			// 그리드 데이타를 다량으로 삭제하는 함수 호출 
			trace("[/MssgMngm.xfdl] [btn_delete_onclick()] ==> [삭제 DB 처리 준비[DB @@@]] 
			[deletedRows.length]"+ deletedRows.length +"[selectedRows]"+ selectedRows );
			 
			for (var delrowi=0; delrowi<deletedRows.length; delrowi++)
			{
				trace("[/MssgMngm.xjs] [btn_delete_onclick()] ==> [선택된 삭제 예정 줄(row)[DB @@@]] 
				[i_번째]"+ delrowi +"[selectedRows[delrowi])]"+ selectedRows[delrowi] );
				 
				ds_msgCdMgmt.updatecontrol = false;
				ds_msgCdMgmt.setRowType(delrowi, Dataset.ROWTYPE_DELETE);
				ds_msgCdMgmt.updatecontrol = true;
			}
			btn_save_onclick();// 삭제처리 대상 로우에 대하여 로우 타입 변경후, 저장처리 
		}
	}
}
==============================================================================================================

- 공통 lib 파일명 변경 및 통합[처리일: 2015.09.07 by 진태만]
1. 변경 사유: 파일명의 일관성 없음
2. 업무별 공통 lib 파일 생성시 직관성이 부족
 1) commonForm.xjs ==> lib_commForm.xjs 
 2) commonSys.xjs ==> lib_commSys.xjs  
 3) commonUtil.xjs ==> lib_commUtil.xjs
3. 업무별 공통 lib 파일 명명 규칙(level1 기준)
 1) cm_commUtil.xjs
 2) md_commUtil.xjs
==============================================================================================================
 
- 이클립스 단축키 설정
메뉴의 Windows - Preferences - General - Keys 에서 원하는 키워드로 단축키 셋팅된 내용 검색후 단축키를 
선택하고 Binding에 커서를 위치시키고 키보드를 누르면 누른 키가 그대로 바인딩 되며, ACCEPT누르면 끝.

1. Name: clean up    ==> USER가 수정 @@@@
Binding: Ctrl+V---> 새로 생성된 값
When: In Windeows

2. Name: Synchronize with Repository 
Binding:  Ctrl+Alt+S---> Default 값
When: In Windeows 
------------------------------------------------------------------------------------------------------

- 이클립스 자주쓰는 단축키
Ctrl + / : 주석 처리 - 한 라인/블록에 대해 주석 처리 (추가 및 제거) 
Ctrl + L : 특정 라인으로 이동
------------------------------------------------------------------------------------------------------

- egovframe Eclipse SVN 싱크 단축키 안먹는 현상
1. 조치: Window > Customize Perspective > Command Groups Availability 클릭, 이후에 Availability Command Groups 
탭에서 SVN 체크
 ==> Package Explorer에서 프로젝트 선택 후 Ctrl + Alt + S를 누르면 싱크로나이즈가 작동 
==============================================================================================================

- 로그인 후 gds 호출
1. gds_menu(메뉴), gds_message(메세지 코드), gds_brnd(브랜드), gds_cbcAtht(개별권한), gds_userSessionInfo(세션 정보)
gds_commonCode(공통코드)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.09.08(화) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 19:10 ==>

- 한섬 ERP 재구축 Prj[★]
- 공통 component에 있는 nh명 변경
1. nh -> hse로 변경
==============================================================================================================

- 엑셀 다운로드 확인
1. ExportObject 재 설치
<!--// 기본 컴포넌트(ExportObject: 엑셀)[주석 처리일: 2015.09.08, by 진태만]  //--> 
<Component type="Bin" id="ExportObject" classname="ExportObject" module="XExtAPI" version="2015.4.28.1"/>  
==============================================================================================================

- 메신저(/uCap.exe) 실행
1. ExtCommon 사용
var objExt = new ExtCommon();
var rtn = objExt.executeProcess("C:\\UCAP\\uCap.exe", "", "");
-------------------------------------------------------------------------------------------------------

2. execShell: 윈도우 쉘(Shell) 명령어를 지원하는 메소드
system.execShell("notepad");  
system.execShell("http://www.tobesoft.com");
system.execShell("C:\UCAP\uCap.exe");
==============================================================================================================

- 유형별 게시판
1. SMART F&D에 게시물등록/조회 참조
2. 2015_03.20_AIG_TM 게시판 관리 소스
SYSS0101_M012.xfdl(게시판 관리)
SYSS0101_M015.xfdl(게시판 관리2)
SYSS0101_M019.xfdl(게시판 조회)
==============================================================================================================

- SYSTEM 별 구분 이미지 반영
1. HS_ERP(해상도: 1208)==> http://172.168.110.41:7070/XIContent/HsDeploy/index.htm
2. HS_SCM(해상도: 1024)==> http://172.168.110.41:7070/XIContent/HsDeploy/SCMindex.htm
3. HS_POS(해상도: 1024)==> http://172.168.110.41:7070/XIContent/HsDeploy/POSindex.htm
4. HS_TRADE(해상도: 1024)==> http://172.168.110.41:7070/XIContent/HsDeployTRADEindex.htm
5. HS_BI(해상도: 1024)==> http://172.168.110.41:7070/XIContent/HsDeployBIindex.htm
---------------------------------------------------------------------------------------------

function fn_onload(obj:Form, e:LoadEventInfo)
{   
	// trace("[/LOGIN.xfdl] [fn_onload()] ==> [gv_systemNm]"+ gv_systemNm );
	   
	if(gv_systemNm == "HS_SCM")
	{ 
		div_login.h2_login.class = "h2_login_scm";  // 시스템명(2. HS_SCM)
	} 
	else if(gv_systemNm == "HS_POS")
	{ 
		div_login.h2_login.class = "h2_login_pos";  // 시스템명(3. HS_POS)
	}
	else if(gv_systemNm == "HS_TRADE")
	{
		div_login.h2_login.class = "h2_login_trade";  // 시스템명(4. HS_TRADE)
	}
	else if(gv_systemNm == "HS_BI")
	{
		div_login.h2_login.class = "h2_login_bi";  // 시스템명(5. HS_BI)
	}
	else
	{
		div_login.h2_login.class = "h2_login";  // 시스템명(1. HS_ERP)
	}
}
==============================================================================================================
 
- 표준 개발 교육(15시)
1. 일시: 2015년 9월 8일(화) 14시 
2. 장소: 회의실
3. 대상: 개발자 4명
==============================================================================================================

- HP Fortify 교육(15시)
1. 일시: 2015년 9월 8일(화) 13시 
2. 장소: 회의실
3. 내용: 소스 체크 보안 솔루션
==============================================================================================================

- 우리카드 승인알림 SMS서비스
1. 월 300원 ==> https://sccd.wooribank.com/ccd/Dream?withyou=CDMWC0035
==============================================================================================================

- 루옌에게 우리카드 결제한 돈 받음
1. 18만 천원 받음 ==> 총 28만 천 원 받음(월말에 계산할 것)
2. 루옌 친구(윤형빈)에게 16만원 송금[2015.09.10(목)] ==> 월말에 계산할 것
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.09.09(수) 작업 ■■■■■■■■■■■■■■■ 
---> 07:00 ~ 19:10 ==>

- 한섬 ERP 재구축 Prj[★] 
- 공통 component에 있는 nh명 변경
1. nh -> hse로 변경
nh_base_title  ==> hseBaseTitle
==============================================================================================================

- barcode 출력 URL 수정
function application_onload(obj:Object, e:LoadEventInfo)
{ 
	trace("[/HS_SCM.xfdl] [application_onload()] ==> [TEST_01]");
	 
	// 도메인 URL 명 셋팅
	if(application.xadl.split("/")[0] == "file:" 
	 e.url.indexOf("local") != -1 
	 e.url.indexOf("127.0.0.1") != -1) // 도메인이 로컬이면
	{    
		gv_domain_url = "127.0.0.1:8080";  // 도메인 URL
		gv_domain_urlNm = "local";  // 도메인 URL 명
	}
	else 
	{    
	//alert("[/HS_SCM.xfdl] [application_onload()] ==> [개발] [e.url]"+ e.url);  
	// http://172.168.110.41:7070/XIContent/HS_ERP.xadl

	var sDomainPort_01 = e.url.split(":")[2];  // 도메인 Port_01 ==> 7070/XIContent/HS_ERP.xadl 
	var sDomainPort = sDomainPort_01.split("/")[0];  // 도메인 Port  ==> 7070 
	var sDomainUrl_01 = e.url.split(":")[1];  // 도메인_01 ==> //172.168.110.41 
	var sDomainUrl = sDomainUrl_01.substring(2, sDomainUrl_01.length+1);  // 도메인 Port_01 ==> 172.168.110.41  
	gv_domain_url = sDomainUrl +":"+ sDomainPort;  // 도메인 URL 

	if(e.url.indexOf("http://172.168.110.41") != -1)  // 개발 서버이면
	{
		gv_domain_urlNm = "dev";  // 도메인 URL 명
	}
	//alert("[/HS_SCM.xfdl] [application_onload()] ==> [e.url]"+ e.url +"[sDomainPort]"+ sDomainPort 
	+"[gv_domain_url]"+ gv_domain_url +"[gv_domain_urlNm]"+ gv_domain_urlNm ); 
	} 
}
-------------------------------------------------------------------------------------------------------

1. Barcode_Test.xfdl에서
function btn_barcode_onclick(obj:Button,  e:ClickEventInfo)
{ 
	if(gv_domain_urlNm == "local")  / 도메인 URL 명이 로컬이면
	{ 
		sUrl = "http://127.0.0.1:3040"; 
	} 
	else if(gv_domain_urlNm == "dev") // 도메인 URL 명이 개발(clipReport) 출력
	{  
		sUrl = "http://172.168.110.41:3040";
	}
	var sTargetUrl = sUrl +"/hseReport.jsp?rptname=cm/common/barcode_test&repeat="+ repeat +"&x_point="+ xPoint; 
}
==============================================================================================================
 
- 해야할 일
1. HS ERP eclipse 드라이브 변경(C => D): 이번주에 처리할 것
2. HS ERP eclipse 소스 이메일 보내기
3. XPlatform_개발_가이드, 표준안 작성
==============================================================================================================
 
- 드라이브 경로 바뀔시에 이클립스 재설정 할것
1. workspace 설정
 1) eclipse > Preferences(새창)
 General -> Startup ans Shutdown > Workspaces(새창)
 가. Prompt for workspace on startup(체크)
 나. D:\HS_ERP(선택) ==> Apply(클릭) ==> OK(클릭) 

2. tomcat 경로 변경
 1) Window > Preferences[새창] 에서, Server > Runtime Environments(클릭) > Server Runtime Environments(새창)  
 2)  Name: Apache Tomcat v7.0
  Tomcat installatiton directory: C:\HS_ERP\tomcat7 ==> D:\HS_ERP\tomcat7 
==============================================================================================================

- HS ERP eclipse 드라이브 변경(C => D)
1. File > Switch Workspace 에서 변경가능
 1) C:\HS_ERP ==> D:\HS_ERP
2. eclipse.ini 파일 변경(D:\HS_ERP\eclipse)
 1) C:\HS_ERP\jdk1.7.0_79\bin\javaw.exe ==> D:\HS_ERP\jdk1.7.0_79\bin\javaw.exe 
==============================================================================================================

- eclipse에서 mysql 사용
1. 전자정부 mysql
==============================================================================================================

- Ecplise에서 MySQL 연동 
http://blog.naver.com/dnaodtjs/70184350174 
C:\Program Files (x86)\MySQL\MySQL Connector J폴더에 mysql-connector-java-5.1.35-bin.jar 파일 복사하여
아래 폴더에 붙여 넣기
C:\Program Files\Java\jdk1.7.0_72\jre 
D:\HS_ERP\tomcat7\lib
----------------------------------------------------------------------------------------------------

- /context-datasource.xml 파일에서
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:schemaLocation="http://www.springframework.org/schema/beans http://www.springframework.org/schema/beans/spring-beans-2.5.xsd">
 
<!-- 01. oracle  DB -->
<bean id="dataSource_02" class="org.apache.commons.dbcp.BasicDataSource" destroy-method="close">
	<property name="driverClassName" value="net.sf.log4jdbc.DriverSpy"/>
	<property name="url" value="jdbc:log4jdbc:oracle:thin:@172.168.110.41:1522:HSED" />
	<property name="username" value="HSE_APP"/>
	<property name="password" value="apphse#$"/>
</bean>

<!-- 02. mysql DB[처리일: 2015.09.09 by 진태만] -->  
<bean id="dataSource" class="org.apache.commons.dbcp.BasicDataSource" destroy-method="close">
	<property name="driverClassName" value="com.mysql.jdbc.Driver"/>
	<property name="url" value="jdbc:mysql://127.0.0.1:3306:test"/>    <!-- // Local 서버 DB //--> 
	<property name="username" value="nexacro"/>
	<property name="password" value="nexacro"/>
	</bean>   
</beans> 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.09.10(목) 작업 ■■■■■■■■■■■■■■■ 
---> 07:00 ~ 19:10 ==>

- 한섬 ERP 재구축 Prj[★] 
- 공통 component에 있는 nh명 변경
1. UserForm 파일 변경: nh -> uForm(UserForm)로 변경
nh_base_title  ==> uForm_baseTitle
-------------------------------------------------------------------

2. Composite 파일 변경: nh -> uComp(user Composite)로 변경
CommonBtn ==> uComp_cmmGridBtn
Compo_setCount ==> uComp_setCount 
-------------------------------------------------------------------

3. Script 파일 변경: nh -> uComp(user Component)로 변경
nhCalendar ==> uComp_calendar 
nhCombo  ==> uComp_combo
nhGrid ==> uComp_grid
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.09.11(금) 작업 ■■■■■■■■■■■■■■■ 
---> 07:00 ~ 19:10 ==> LG CNS PM 곽기호 부장, 공통 서영봉 부장 철수

- 한섬 ERP 재구축 Prj[★] 
- 공통 component에 있는 nh명 변경
1. UserForm 파일 변경: nh -> uForm(UserForm)로 변경 
==============================================================================================================

- [전체 공지] 공통 user Component 이름명 변경
안녕하세요.  한섬 ERP 프로젝트에서 UI공통을 담당하고 있는 진태만입니다. 
다름이 아니라,  서영봉 부장님의 지시로 공통 user Component 중 앞자리 이름이 nh로 된
파일명을 공통 기반의 이름(uComp: user Component)으로 변경 했습니다.

담당 업무가 공통이 아닌 업무 담당자, 개발자 분들께서는 SVN에서 소스를 내려 받아서
일일히 수정 하셔야 합니다.

수정된 파일명은 파일 서버에 올려 놨습니다.
파일 서버 위치 ===> \\172.168.110.45\한섬erp\한섬 ERP재구축 프로젝트\05.공통\02.XPlatform\00. 개발관련\91. 기타
\01 공통 user Component 이름명 변경.txt

그럼, 수고하세요.
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.09.12(토) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 20:40 
 
- 주말
08:00 기상
08:30 조식(국수)
09:30 진료(명소아과의원): 수종 감기
09:50 조제(한독프라자약국)  
10:10 진료(사랑의 피부과 의원): 피부 버짐 ==> http://map.naver.com/local/siteview.nhn?code=13140339
==> 성인 아토피 피부염
10:30 조제(바다 약국): 피부 버짐
10:50 귀가
12:10 중식
13:00 루옌 잠실 체육관에 공연 보러 감(수종 낮잠)
14:00 TV 시청(2015~16 프로농구 개막전 ==> 모비스 66: 77 동부)
15:00 수종 깸
16:30 쇼핑(이마트 구로점)
18:30 귀가(수종 많이 울었음)
19:30 루옌 귀가
20:30 석식(라면)
00:00 취침
==============================================================================================================

- 쌀 구입[2015.09.12(토)] 
1. [2014년 햅쌀[지리산메뚜기쌀]백미20/2014년 백미, 가격: 37,560원(옐로페이 결제 할인, 원래 가격: 40,390원)
http://www.interpark.com/product/MallDisplay.do?_method=detail&sc.shopNo=0000100000&sc.dispNo=016001&sc.prdNo=1518386202
==============================================================================================================

- 엘로페이(전자결제) 등록
1. 인터파크, G마켓 가능 ==> 비밀번호: *3**0
http://cafe.naver.com/momsblog79/293130
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.09.13(일) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 20:40 ==> 

▦ 조기축구
06:00 기상
06:30 버스(6411번, 대림역 -> 한티역)
07:30 도곡초등학교 
08:00 게임(FC 루비셀로나 5명 나옴, 회원 많이 나옴) ==> 3게임(나는 잘한 편)
11:30 종료
11:50 중식(김치찌게, 병기형 가게), 치근이형이 LA 갈비(10만원) 쏨
12:50 종료
13:50 귀가(루옌 다오집에 놀러 감)
14:00 TV 시청
18:00 루옌, 수종 귀가
18:30 쇼핑(남구로 시장)
19:40 석식(왕짜장[남구로 시장], 짜장면2, 볶음밥)
23:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.09.14(월) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 19:10 ==> 김유준 PM 첫 출근(PM 교체)

- 한섬 ERP 재구축 Prj[★]
- 공통 수정 
1. 로그인(창 닫기 후에 메인창으로 이동) ==> 수정 완료 @@@
2. 탭화면 닫기(가로, 세로 정렬 후 화면은 닫히지만 탭은 안 닫힘)  ==> 수정 완료 @@@
3. 탭화면 화살표 이동 안됨(이전, 다음 메뉴)
4. 탭화면 닫기(메인 화면 안 보임)
5. 화면 확대, 축소 시에 이미지 위치 따로 옮겨김= => 수정 완료 @@@
 1) gfn_setUseButton 함수 수정
 /*****************************************************************************************
* Function명 : gfn_setUseButton
* 설명       : 공통 버튼 권한 사용여부 visible 처리하는 함수
* Params     : use_btn : 화면 공통버튼
* Return     :
* 작  성 자 : 진태만
* 작  성 일 : 2015.07.07
*****************************************************************************************/     
function gfn_setUseButton(use_btn)
{ 
	var iBaseX = super.div_titleGroup.position.width - 17;  
	super.div_titleGroup.edt_zoomRate.visible = false;  // 00. zoomIn 비율 text  
	super.div_titleGroup.btn_zoomIn.visible  = false;  // 01. zoomIn 버튼
	super.div_titleGroup.btn_zoomOut.visible = false;   // 02. zoomOut 버튼
	super.div_titleGroup.btn_init.visible = false; // 03. init 버튼
	super.div_titleGroup.btn_bookmark.visible = false; // 04. bookmark 버튼
	super.div_titleGroup.btn_capture.visible = false;  // 05. capture 버튼 
	super.div_titleGroup.btn_print.visible = false;  // 06. print 버튼 
	super.div_titleGroup.btn_help.visible = false;   // 07. help 버튼
	super.div_titleGroup.btn_popUp.visible = false;  // 08. popUp 버튼 
	 
	var aShowBtns = new Array();   
	trace("[/lib_commForm.xjs] [gfn_setUseButton_02()] ==> [공통 버튼 권한 사용여부 visible 처리_90]1\
	==========================================================> ");
	 
	if(use_btn.popUp == "true") aShowBtns.push(super.div_titleGroup.btn_popUp); // 08. popUp 버튼  
	if(use_btn.help == "true") aShowBtns.push(super.div_titleGroup.btn_help);  // 07. help 버튼 
	if(use_btn.print == "true") aShowBtns.push(super.div_titleGroup.btn_print);  // 06. print 버튼 
	if(use_btn.capture == "true") aShowBtns.push(super.div_titleGroup.btn_capture);  // 05. capture 버튼
	if(use_btn.bookmark == "true") aShowBtns.push(super.div_titleGroup.btn_bookmark);  // 04. bookmark 버튼 
	if(use_btn.init == "true") aShowBtns.push(super.div_titleGroup.btn_init);  // 03. init 버튼  
	if(use_btn.zoomOut == "true") aShowBtns.push(super.div_titleGroup.btn_zoomOut);  // 02. zoomOut 버튼  
	if(use_btn.zoomIn == "true") aShowBtns.push(super.div_titleGroup.btn_zoomIn);  // 01. zoomIn 버튼  

	for(var i=0; i< aShowBtns.length; i++)// 사용 가능한 공통 버튼 위치 재배열
	{
		var btn = aShowBtns[i];
		trace("[/lib_commForm.xjs] [gfn_setUseButton()] ==> [i번째]"+ i +"[[btn)]"+ btn 
		+"[aShowBtns.length_처리 가능 버튼 수]"+ aShowBtns.length );

		iBaseX -= btn.position.width;
		btn.position.x = iBaseX;
		btn.visible = true;

		iBaseX -= 3; //좌표값 3 다시 이동 
	}
}

6. 초기화(2개상 탭화면에서  제목 초기화 후 제목 변경) ==> 수정 완료 @@@
7. 엑셀 다운로드(샘플) ==> 개발 완료 @@@
8. 엑셀 다운로드 ==> 개발 완료 @@@
9. 멀티 정렬 ==> 개발 완료 @@@
10. 멀티 정렬 ==> 개발 완료 @@@
11. 멀티 필터 ==> 개발 완료 @@@
12. 멀티 선택==> DB 추가할 예정 @@@
13. 틀 고정==> 개발 완료 @@@
14. 첨부파일 등록 ==> AA와 협의해야 함 @@@
==============================================================================================================
 
- 소계 줄 색상 변경 안됨 
==============================================================================================================

- Orcle DB export 
==============================================================================================================

- 픽픽(PicPick) 정보(http://wiziple.tistory.com)
1. 화면 캡처, 색상 추출
2. 단축키
 ==> 픽픽(PicPick) > 파일 > 프로그램 설정(D) >  환경 설정(새창) > 단축키(Tab): 화면 캡처 도구  
 1) 픽픽 에디터: Shift + Ctrl + 1
 2) 윈도우 캡처하기: Shift + Ctrl + 9
 3) 영역을 지정하여 캡처하기: Shift + Ctrl + 0
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.09.15(화) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 19:10 ==>

- 한섬 ERP 재구축 Prj[★] 
- 공통 수정  
9.  멀티 정렬 ==> 재개발 완료 @@@
10. 멀티 필터 ==> 재개발 완료 @@@
11. 멀티 선택==> 재개발(DB 추가할 예정) 완료 @@@
12. 틀 고정==> 개발 완료 @@@
13. 첨부파일 등록 ==> AA와 협의해야 함 @@@
==============================================================================================================

- formTest_onclick ==> form count(폼 수 확인)
/*****************************************************************************************
* 함  수  명 : formTest_onclick()
* 설      명 : form Test(폼이 열렸는 지 확인)
*****************************************************************************************/   
function btn_test_01_onclick(obj:Button,  e:ClickEventInfo)
{
	trace("[/Top.xfdl] [btn_test_01_onclick()] ==> [TEST_01] [atab_button_info.aTabButtonDiv.length_탭 수]"+ 
	tab_button_info.aTabButtonDiv.length );

	adv_cf_workMain.formurl = "Frame::MAIN.xfdl";
	//adv_cf_workMain.form.visible = true;  // Main 화면 호출(Frame::Main.xfdl) 
	// trace("[/Top.xjs] [btn_test_01_onclick()] ==> [Main 화면 호출] [adv_cf_workMain.form.visible]"+ adv_cf_workMain.form.visible ); 

	for(var i=0; i<tab_button_info.aTabButtonDiv.length; i++)   // Tab 정보
	{
		var oTabButtonDiv = tab_button_info.aTabButtonDiv[i]; 
		var tab_menu_id = oTabButtonDiv.tab_menu_id;

		trace("[/Top.xfdl] [btn_test_01_onclick()] ==> [i_번째]"+ i +"[gtab_menu_id]"+ tab_menu_id );  
	}

	trace("[/Top.xfdl] [btn_test_01_onclick()] ==> [TEST_01] [adv_fs_work.all.length]"+ adv_fs_work.all.length ); 
	for(var i=0; i< adv_fs_work.all.length; i++)
	{ 
		//cf_left.form.sta_LeftBack.position = "absolute 296 -2 340 553";
		//adv_fs_work.all[i].background = "blue";
		//"[adv_fs_work.all[i].position]"+ adv_fs_work.all[i].position +"[adv_fs_work.all[i].background]"+ adv_fs_work.all[i].background 
		// objDiv.style.background = "#f3f3f3ff";
		trace("[/Top.xfdl] [btn_test_01_onclick()] ==> [i_번째]"+ i +"[gv_fs_work.all[i].name]"+ adv_fs_work.all[i].name 
		+"[adv_fs_work.all[i].position]"+ adv_fs_work.all[i].position +"[adv_fs_work.all[i].style.background.color]"+ 
		adv_fs_work.all[i].style.background.color ); 
	}  
}
--------------------------------------------------------------------------------
 
objBtnTemp.btn_Filter.style.background.color = "#f7f7f7ff";
objBtnTemp.btn_Filter.style.background.image = "url('IMG::btnFF.png')";
objBtnTemp.btn_Filter.style.background.position = "center middle";
objBtnTemp.btn_Filter.style.background.color = "bisque";
==============================================================================================================

- 루옌 직업교육(HRD-NET) 회원 가입 및 동영상 시청
1. 범공인인증서 확인(금융결제원) ==> 외국인 등록증 이름 확인[DINH THI LUYEN 940509-6100024]
2. http://www.hrd.go.kr --> luyen94 / lulu339A@
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.09.16(수) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 19:10 ==>

- 한섬 ERP 재구축 Prj[★] 
- 공통 수정 
1. 로그인(창 닫기 후 메인창으로 이동) ==> 수정 완료 @@@
2. 탭화면 닫기(가로, 세로 정렬 후 화면은 닫히지만 탭은 안 닫힘)  ==> 수정 완료 @@@
3. 탭화면 화살표 이동 안됨(이전, 다음 메뉴) ==> 수정 완료 @@@
TabButtonInfo.prototype.setTabButtonPosition = function(tab_menu_id) 
{ 
	// trace("[/lib_tabButtonInfo.xjs] [setTabButtonPosition()] ==> [TEST_01] 
	[해당 tab_menu_id의 tab button을 선택으로 활성화 시키는 함수] "); 
	    
	var div_mdi = adv_cf_top.form.div_topNavi;   // 상단 Frame(CF) topNavi Div 설정  
	div_mdi.position.width = "985";   // MID div 길이
}
4. 가로 세로 정렬 보기 설정 후 탭화면 닫기(메인 화면 안 보임) 
adv_cf_workMain.form.visible = true;  // Main 화면 호출(Frame::Main.xfdl) 

6. 초기화(2개상 탭화면에서 제목 초기화 후 제목 변경) ==> 수정 완료 @@@
==============================================================================================================

- 뱅크월넷 카카오 가입
1. 비밀번호: 03***0* --> 03***0
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2015.09.17(목) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 19:10 ==>

- 한섬 ERP 재구축 Prj[★] 
- 공통 수정  
1. 가로 세로 정렬 보기 설정 후 탭화면 닫기(메인 화면 안 보임) ==> 수정 완료 @@@
if(adv_fs_work.all.length > 1)    // 닫을 창이 존재할 때(/MAIN.xfdl 제외)
{
	gv_workFrame = "1";   // work Frame 화면 여부(0: MAIN.xfdl, 1: WorkFrame.xfdl) 
} 
else  // 닫을 창이 없을 때 
{
	// trace("[/lib_tabButtonInfo.xjs] [tab_close_onclick()] ==> [Main 화면 Display] 
	[adv_fs_work.all.length]"+ adv_fs_work.all.length +"[adv_cf_workMain.form.visible]"+ adv_cf_workMain.form.visible ); 
	adv_fs_work.frames["cf_workMain"].openstatus = "maximize";  // frame 최대화[Main 화면 Display]
}
----------------------------------------------------------------------------------------------------

- Frame 화면
- adv_fs_work[Frame Set]
  - adv_cf_workMain[Child Frame]  ===> cf_workMain
==============================================================================================================
 
- Erwin 7.2.9 설치
1. LG CNS DBA에게 받음
==============================================================================================================

- 패킷 분석기
1. http analyzer ==>  http://parkcla.tistory.com/6
==============================================================================================================

- 개발공정 관리 분석
A. 현재 개발 완료한 화면
1. 프로그램 목록 관리(/PrgrMngm)
2. 프로그램 실적 관리(/PrgrArslMngm)
3. 프로그램 실적현황(/PrgrArslCrst)
B. 개발 해야할 화면
1. Q&A(전체)==>  /도움말/Q&A
2. Q&A(IT실 전용)==>  /Q&A(위치 알 수 없음)
C. 왜 개발 해야할 이유를 알 수 없는 화면
1. 진척관리==>  /도움말/진척관리
-------------------------------------------------------------------------------------------------------------

- 도움말 버튼(상단 Tab 버튼)
상단 Tab 버튼 중 도움말 버튼을 클릭하면
도움말 창이 나오고
1. 도움말, 2. Q&A, 3. 진척관리 Tab이 보임
3. 진척관리 ==> 역할?
==============================================================================================================

- 2015년 9월 11일 출력 현대백화점 글구분, 상태 관련 화면정의서(.ppt)
==> 문서를 작성한 것으로 추정은 되나 문서 미 존재, 출력물만 존재
1. Q&A - HELP(2장)
2. Q&A(1장)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.09.18(금) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 19:10 ==>

- 한섬 ERP 재구축 Prj[★] 
- Calendar 수정
==============================================================================================================

- 엑셀다운로드(샘플) 수정
1. 원본 파일 한 개로 관리
==============================================================================================================
 
- 프로그램 목록 관리(/PrgrMngm) 테스트 및 수정
1. 사용자 정보 조회 팝업(/ComUserP.xfdl) 에러
 1) 최초 조회 후 다시 조회 안됨==> 수정 완료 @@@
 2) 조회 조건으로 조회 후 더블 클릭하면 에러가 남==> 수정 완료 @@@
 3) 조회 조건 입력 후 엔터키 치면 조회 안됨(에러는 아니지만 불편함)==> 수정 완료 @@@
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.09.19(토) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 20:40 
 
- 주말
08:00 기상
09:30 조식(라면)
10:30 집출발
10:40 대림역 -> 당산역 -> 증미역(2번 출구)
11:30 가양 레포츠센터(서울 강서구 양천로61길 101)
12:00 포고 동우회, 동지FC(7명 정도 옴)
12:05 노총FC(한국 노총 간부들로 구성) ==> 실력은 포고 연합팀이 우세함
12:10 게임(2게임함 --> 전반에 슈팅하는데 뒤에서 발 집어 넣어서 발가락 멍들어서 제대로 못 걸음)
14:00 종료
15:00 식당(등촌 칼국수): 회에서 쏨
16:00 종료
16:40 대림역(형일이가 태워줌) ==> 동지FC 회비 15만원(굳이 나갈 필요성 못 느낌 ==> 나가지 말 것)
16:50 약국(멘솔레담 구입: 엄지 발가락 부움)
17:00 귀가(루옌 용산역에 놀러감)
18:00 루옌 귀가(수종 자고 있어서 대림역에 데리려 감)
20:00 석식
00:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.09.20(일) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 20:40 ==>

▦ 조기축구
06:00 기상
06:30 버스(6411번, 대림역 -> 한티역)
07:30 도곡초등학교: 엄지 발가락 부상으로 제대로 못 걸음
08:00 게임(FC 루비셀로나 5명 나옴, 회원 많이 나옴) ==> 3게임(엄지 발가락 부상으로 힘듬)
10:30 종료
11:20 중식(김치찌게, 병기형 가게), 만원 냄(저번주 중식비: 추가 만원 더 냄)
==> 성주가 병규형, 병춘이형이랑 싸움(조기회 안나온다고 함)
==> 성주가 7명한테 커피 쏨
12:20 종료
13:50 귀가(루옌 다오집에 놀러 감)
14:00 TV 시청
20:00 루옌, 수종 귀가
20:20 석식(라면)
20:50 이발, 염색 ==> 루옌이 해줌
23:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.09.21(월) 작업 ■■■■■■■■■■■■■■
---> 07:00 ~ 19:10 ==> 한의원 방문(혜명한의원. 만 천원): 침(엄지 발가락), 야근(석식: PM, 박재완 부장이 쏨)

- 한섬 ERP 재구축 Prj[★] 
- Q&A(/QnaBlbrTab) 개발
1. QNA 공통 코드 생성 
QNA_CLSS_CD: QNA_분류코드 
QNA_STTS_CD: QNA_상태코드

2. 프로세스코드 생성(PRCS_CD)
10: 설계, 20: 개발, 30: 테스트1(설계), 40: 테스트2(IT), 50: 테스트3(현업), 60: 확정대기, 70: 최종완료
==============================================================================================================

- 개발공정 고객 수정 요청 사항 내역  테스트 및 수정
1. 프로그램 목록 관리(/PrgrMngm) 에서 담당자를 여러 명을 생성할 수 있도록 수정 
2, 프로그램 실적 관리(/PrgrArslMngm)에서 조회시 진행 상태에 해당하는 프로세스 만 Display할 것
 1) 평가관리에서 불합격을 선택하면 단계(상태)를 사용자가 선택하여 저장할 수 있게 수정
 2) 상태가 선택일 경우 선택 줄과 다음 줄(2줄)을 Display할 것 
3. 진척관리
 1) HELP > 진척관리는 프로그램 실적 관리(/PrgrArslMngm)를 간단하게 축소
 2) 해당 사용자에게 해당하는 프로세스 상태일 경우 평가관리를 처리
 2) 미 해당 사용자에게 해당하는 프로세스 상태일 경우 Display할 것
==============================================================================================================

- 개발공정 관리
1. 프로그램 목록 관리(/PrgrMngm)
2. 프로그램 실적 관리(/PrgrArslMngm)
3. 프로그램 실적현황(/PrgrArslCrst)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.09.22(화) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==> 야근(석식, 5,800원): 청구할 것, 김기철 부장한테 소스 바뀐 것 때문에 화냄(박재완 부장에게도 통보)
			==> 퇴근해서 루옌이 짜증내면서 발로 차서 내가 엄청 화냄

- 한섬 ERP 재구축 Prj[★] 
- 개발공정 고객 수정 요청 사항 내역  테스트 및 수정
1. 프로그램 목록 관리(/PrgrMngm) 에서 담당자를 여러 명을 생성할 수 있도록 수정 ==> 수정 중 @@@
  ===> DB 설계 변경으로 인해 어느 화면에 영향을 끼칠 것으로 판단됨(단계가 PK에서 제외되고 개발ID가 추가됨)
  ===> 22. TB_CM_PRGR_FNDT_PLN(CM_프로그램기본계획) 삭제 후 재 생성 => PLN_ID(계획ID) 필드 생성 

2, 프로그램 실적 관리(/PrgrArslMngm)에서 조회시 진행 상태에 해당하는 프로세스 만 Display할 것 ==> 수정 완료 @@@
 1) 평가관리에서 불합격을 선택하면 단계(상태)를 사용자가 선택하여 저장할 수 있게 수정  
    ==> 잠정 보류(고객과 협의해서 안하도록 유도): 관리가 안됨 @@@
 2) 상태가 선택일 경우 선택 줄과 다음 줄(2줄)을 Display할 것 ==> 수정 완료 @@@

3. 진척관리[/Help > 진척관리]
4. Q&A[/Help > Q&A]
5. Q&A관리[/공통 > Q&A관리]
==============================================================================================================

- MyBatis에서 if else 구문
1. IF문
 <select id="getContentsP" parameterType="hashmap" resultType="com.test.vo.TestVo">  
SELECT
    id, name
FROM
    TB_test a
WHERE 
    type = 'A'  
    <if test="age != null AND age != ''">
AND age = #{age}
    </if> 
</select>
----------------------------------------------------------------------------------------------

2. Choose문
우리가 흔히 개발할때 사용하는 if else와 같다고 보면 된다
<select id="prgrArslMngmDAO.selectPrgrArslDgrMngm" resultType="hsMap">
      /*hse.cm.cmm.dao.prgrArslMngmDAO.selectPrgrArslDgrMngm*/
     SELECT A.PRGR_ID
       ,(SELECT X.PRGR_NM 
    FROM TB_CM_PRGR X 
   WHERE X.PRGR_ID   = A.PRGR_ID) AS PRGR_NM
       ,B.DGR AS DGR     /* 설계단계에서 진척관리 데이터가 없으므로 nvl처리해줌 */
       ,A.PRGS_STTS_CD
       ,B.ASK_DT
       ,A.COML_PLN_DT
       ,A.CHPR_ID
       ,C.USR_NM AS CHPR_ID_NM
  FROM TB_CM_PRGR_FNDT_PLN A       /* 프로그램 개발 기본 계획 */
      ,TB_CM_PRGR_DGR         B       /* 프로그램 개발 진척 관리 */
      ,TB_CM_USR                 C
 WHERE 1 = 1   
     AND A.PRGR_ID = B.PRGR_ID(+)     
     AND A.PRGR_ID = #{prgrId}
     AND B.DGR(+)   = #{dgr}
 <choose> 
<when test="prgsSttsCd != null and prgsSttsCd == '50' ">   /* 상태(단계)가  테스트3(현업)[선택] 이면*/   
AND (A.PRGS_STTS_CD = '50' OR A.PRGS_STTS_CD = '60' )
</when>  
<otherwise>
 AND A.PRGS_STTS_CD = #{prgsSttsCd} 
</otherwise> 
</choose> 
     AND A.PRGS_STTS_CD = B.PRGS_STTS_CD(+)
     AND A.CHPR_ID = C.USR_ID(+)
 ORDER BY A.PRGR_ID
      ,A.PRGS_STTS_CD
</select>    
==============================================================================================================

- DB 로그인 정보(DB 주소)
1. 172.168.110.41:1522:HSED --> HSE_MGR/ mgrhse[Object 설계자에게 공유] ==> TOAD에서 사용 
2. 172.168.110.41:1522:HSED --> HSE_APP/ apphse#$[설계자, WAS 담당자 공유] ==> eclipse 에서 사용
3. 172.168.110.41:1522:HSED --> HSE_DEV/ devhse[개발자 공유]  
D:\app\TAMA\product\11.2.0\client_1\network\admin\tnsnames.ora 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.09.23(수) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 18:35 ==> 자리 이동(18:30, 회의실로), 조기 퇴근

- 한섬 ERP 재구축 Prj[★] 
- 개발공정 고객 수정 요청 사항 내역  테스트 및 수정
1. 프로그램 목록 관리(/PrgrMngm) 에서 담당자를 여러 명을 생성할 수 있도록 수정 ==> 수정 중 @@@
  ===> DB 설계 변경으로 인해 어느 화면에 영향을 끼칠 것으로 판단됨(단계가 PK에서 제외되고 개발ID가 추가됨)

3. 진척관리[/Help > 진척관리]
4. Q&A[/Help > Q&A]
5. Q&A관리[/공통 > Q&A관리]
==============================================================================================================

- SYNONYM(시너님, 동의어) 처리 
1. SYNONYM 생성(HSE_APP로 접속)
-- CREATE SYNONYM 시노님명  FOR  계정명.함수명  
0. 로그인
1) SYNONYM을 설정하려는 데서 로그인 할 것
==> HSE_APP로 로그인(HSE_APP/ apphse#$[설계자, WAS 담당자 공유]) ==> eclipse 에서 사용 

-- 1. SYNONYM 조회  @@@@@     
SELECT *
FROM ALL_SYNONYMS
WHERE SYNONYM_NAME = 'TB_CM_PRGR_FNDT_PLN'     --TB_CM_PRGR_FNDT_PLN
;

-- 2. SYNONYM 생성  @@@@@     
CREATE SYNONYM HSE_APP.TB_CM_PRGR_FNDT_PLN FOR HSE_MGR.TB_CM_PRGR_FNDT_PLN;
;

-- 2. SYNONYM 삭제하기  @@@@@    
DROP SYNONYM HSE_APP.TB_CM_PRGR_FNDT_PLN;  ---> 해당 계정에서 사용하는 링크 삭제
-- DROP public database link DBLK_TEST;   ---> 전체 데이타베이스에서 사용하는 링크 삭제 

-- HSE_APP에 C, U, R, D 권한 부여
GRANT DELETE, INSERT, SELECT, UPDATE ON HSE_MGR.TB_CM_PRGR_FNDT_PLN TO HSE_APP;
==============================================================================================================

- PLN_ID(계획ID) 필드 채번(오라클에서)
<insert id="prgrMngmDAO.insertPrgrPlan">
/*hse.cm.cmm.dao.prgrMngmDAO.insertPrgrPlan*/
<![CDATA[
     INSERT INTO TB_CM_PRGR_FNDT_PLN  
      (
      PRGR_ID
,PLN_ID 
      ,PRGS_STTS_CD
      ,COML_PLN_DT
      ,CHPR_ID
      ,RGPS_ID
      ,RGST_DTM
      ,UPPS_ID
      ,UPDT_DTM)
    VALUES 
      (#{prgrId}
       ,(SELECT NVL(MAX(PLN_ID)+1, 1) AS PLN_ID FROM TB_CM_PRGR_FNDT_PLN)
      ,#{prgsSttsCd}
      ,#{comlPlnDt}
      ,#{chprId}
      ,#{usrId}
      ,SYSDATE
      ,#{usrId}
      ,SYSDATE)
]]>
</insert>
==============================================================================================================

- 형변환(java에서)
plnId = Integer.parseInt(String.valueOf(outMap.get("plnId"))); 	// PLN_ID(계획ID) 
 
for (int i = 0; i < list2.size(); i++) {		/* 디테일 데이터 처리 */
	Map map = list2.get(i); 
	map.put("usrId", usrId);

	int rowType = ((Integer) map.get(XPlatformConstant.DATASET_ROW_TYPE)).intValue();  
	List<Map> userInfo = prgrMngmDAO.plnIdCheck(map);  //  PLN_ID(계획ID) 조회
	 
	if(userInfo.size() > 0) {
		Map outMap  = userInfo.get(0); 
		plnId = Integer.parseInt(String.valueOf(outMap.get("plnId"))); // PLN_ID(계획ID) 
		log.debug("[/PrgrMngmSImpl.java] [savePrgrMngm()] [TEST_01] ==> [plnId]"+ plnId );  
		
		map.put("plnId", plnId); // PLN_ID(계획ID) map에 넣기
	}
	  
	if ( rowType == DataSet.ROW_TYPE_INSERTED ){
		prgrMngmDAO.insertPrgrPlan(map);  // 01. 프로그램 개발 기본계획 정보 저장 
	} 
} // end of for()
-------------------------------------------------------------------------------------------

Long p_count = Long.parseLong(str_count);	// 실수형 
int p_count =  Integer.parseInt(str_count);	 // 요청여부 내역 총 수    
lng_obj = Double.parseLong(s); 
==============================================================================================================

- Argument 데이타 받기
1. 저장(XP에서)
function btn_saveAprsMngm_onclick(obj:Button,  e:ClickEventInfo)
{   
	var cRow = ds_prgrArslChprMngm.rowposition; 
	ds_prgrArslChprMngmInfo.clearData(); 
	ds_prgrArslChprMngmInfo.addRow(); 
	ds_prgrArslChprMngmInfo.copyRow(0, ds_prgrArslChprMngm, cRow);

	var sRemark = div_regDetailBox.ta_remark.value;  // Comment
	 
	// 데이터셋 카운트가 0 이면 리턴
	if(ds_prgrArslChprMngmInfo.rowcount == 0) return;

	// 평가 관리 항목 VALIDATION CHECK
	if(!fn_preSave()) return; 

	// 저장하시겠습니까?
	if( !gfn_confirm("CFM001"))
	{
	return false;
}

var sSvcID = "savePrgrArslMngm";
var sTargetUrl= "DataURL_HSE_cm::cmm/savePrgrArslMngm.do";
var sInDatasets = "ds_input=ds_prgrArslChprMngmInfo:U";
var sOutDatasets  = "";
var sArgument  = "rmk="+ sRemark;   // Argument 데이타 넘기기
var sCallbackFunc = "fn_callback";
trace("[/PrgrArslMngm.xfdl] [btn_saveAprsMngm_onclick()] ==> [this]"+ this +"[sSvcID]"+ sSvcID +"[sTargetUrl]"+ sTargetUrl 
+"[sInDatasets]"+ sInDatasets +"[sOutDatasets]"+ sOutDatasets +"[sArgument]"+ sArgument +"[sCallbackFunc]"+ sCallbackFunc); 

// 트랜젝션 공통함수 호출
gfn_transaction(this,
	sSvcID,
	sTargetUrl, 
	sInDatasets, 
	sOutDatasets, 
	sArgument, 
	sCallbackFunc);
	}

2. 저장(/PrgrArslMngmC.java에서)
@RequestMapping(value = "/cm/cmm/savePrgrArslMngm.do")
public ModelAndView savePrgrArslMngm(XPlatformMapDTO xpDto) throws Exception {
  
ModelAndView mav = null;

try { 
	Map <String, DataSetMap> inDataset = getInDataSet(xpDto);
	Map <String, Object> inVar = getInVar(xpDto);
	  
	prgrArslMngmService.savePrgrArslMngm(inDataset,inVar);
	 
	mav = sendClient(xpDto, "0", "");

	} catch ( Exception e ) {
		log.error(e, e);
		mav = sendClient(xpDto, "-1", TraceID.getTxID());
	}

	return mav;
}

3. 저장(/PrgrArslMngmC.java에서) 
@Override
public int savePrgrArslMngm(Map inDataSetMap, Map <String, Object> inVarMap) throws Exception {  
	DataSetMap list = getList(inDataSetMap, "ds_input");
	 
	String usrId = (String)inVarMap.get("usrId");
	String rmk = (String)inVarMap.get("rmk");// Comment[Argument 데이타 받기]
	log.debug("[/PrgrMngmSImpl.java] [savePrgrArslMngm()] [rmk]"+ rmk );  

	for (int i = 0; i < list.size(); i++) { 
		Map map = list.get(i);

		map.put("usrId", usrId); 
		map.put("rmk", rmk); // PLN_ID(계획ID) map에 넣기
		log.debug("[/PrgrMngmSImpl.java] [savePrgrArslMngm()] [PLN_ID(계획ID) map에 넣기] [rmk]"+ rmk );  

		String sJdgmCd      = (String)map.get("jdgmCd");// 판정유형 
		String sPrgsSttsCd = (String)map.get("prgsSttsCd");// 프로세스 ID

		// 프로그램 개발 평가자 관리 프로세스 업데이트
		prgrArslMngmDAO.updatePrgrArsl(map);
		 
		if (sJdgmCd.equals("03")) // 불합격시 신규 차수 생성
		{
			// 프로그램 개발 목록에 차수 1 더해서 신규 데이터 입력 (상태값 10:설계, 차수는 기존차수 +1)
			prgrArslMngmDAO.updateNextPrgr(map);

			// 프로그램 개발 진척 관리 테이블 신규 입력 (개발 차수 +1, 프로세스ID : 10)
			prgrArslMngmDAO.insertNextPrgrDgr(map);

			// 프로그램 개발 평가자 관리 신규 입력
			prgrArslMngmDAO.insertNextPrgrArsl(map);
		}  
	}  // end of for()

	return 0;
}     
==============================================================================================================

- 개발진척관리 회의(15시, 회의실)
1. 일시: 2015년 9월 23일(수) 15시 
2. 장소: 회의실
3. 대상: IT실(이동열 팀장)
4. 내용: 개발진척관리 전면 수정(10월 31일에 오픈할 것)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.09.24(목) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 22:07 ==> 야근(석식[만두], 8,000원), 수종 생일[추석 명절 표 때문에 포항에 가서 생일 잔치함)

- 한섬 ERP 재구축 Prj[★] 
- 개발공정 고객 수정 요청 사항 내역  테스트 및 수정
1. Q&A[/Help > Q&A]
2. 진척관리[/Help > 진척관리]
==============================================================================================================

- 화면변경및수정요청(IT실) 수정
1. 팝업을 띄울 때 함수 변경(사유: 화면 껌뻑거림)
// gfn_showModal("ComHelp_P", "Common::ComHelp_P.xfdl", gv_menuId);	 // 사용자 리스트 호출 팝업(이전)
var rVal = gfn_OpenPopup("helpPop", "cm_cmm::ComHelp_P.xfdl", "", 200, 250);	// 사용자 리스트 호출 팝업 
---------------------------------------------------------------------------------------------------------------------

2. 화면에서 scroll bar 생성으로 인해 제목이 안 보일 경우
 1) 원 소스 파일(/PrgrArslMngm.xfdl) 외에 sub 파일(/PrgrArslMngmSub.xfdl)
 2) 원 소스 파일에서 div 생성(div_prgrArslMngm)하여 url 링크(cm_cmm::PrgrArslMngmSub.xfdl)
  가. sub 파일에서 scrollbar를 fixedvert로 설정
 3) 원 소스 파일에서  scrollbar를 none으로 설정
function fn_onload(obj:Form, e:LoadEventInfo)
{
	trace("[/PrgrArslMngm.xfdl] [fn_onload()] ==> [TEST_01]]"+ ); 

	obj.scrollbars = "none";   // PrgrArslMngm 폼에서 scrollbars 없애기
}
-------------------------------------------------------------------------------------------

3. image 등록 방식을 theme 방식으로 공통에 일괄 변경
1. CSS 방식에서 theme 방식으로 변경
 1) 예제
 IMG::bg_Div_WFDA_Data.png 
==> URL('theme://images/btn_WFSA_SearchN.png')
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.09.25(금) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 00:00 ==> 야근(석식[편의점], 7,500원), 철야

- 한섬 ERP 재구축 Prj[★] 
- 화면변경및수정요청(IT실) 수정
1. 촤측 메뉴바 창크기 넘어감
 1) ERP 해상도 1280은 정상, 기타 시스템(SCM, POS, TRADE, BI) 해상도 1024일 경우 촤측 메뉴바 크기 수정함
---------------------------------------------------------------------------------------------------------

2. 탭 버튼 이미지 수정
HS_CSS.css 파일에서
Button.btn_WF_MDI  /* Tab 버튼(회색) */  
{ 
	accessibility: ;
	align : center middle ;
	background : #a19d94ff ;  /* Tab 버튼(회색) */    
	border: 0 none #808080 ;
	bordertype : round 10 10  lefttop righttop ; 
	color: white ;
	cursor: pointer ; 
	font: 돋움,9 ; 
	margin: 0 0 0 2 ;     /* 컴포넌트의 영역 내에서의 여백을 지정하는 속성  */  
	/* padding : 9 15 5 15 ; */
	padding :  ;   /* padding 제거[사유: Tab 버튼에 사각형 자국 흔적이 생김(수정일: 2015.09.25, by 진태만)] */  
	 /* padding: 컴포넌트의 영역 내에서의 여백을 지정하는 속성  */  
}

3. 탭(Tab)  CSS 수정
/***** Tab 수정[사유: Tab Page에 상단 라인이 안 보임[모든 탭 수정], 수정일: 2015.09.25, by 진태만] *****/ 
Tab 
{
	background: transparent; 
	border: 2 solid #459fd0, 0 solid #dadada, 1 solid #459fd0, 0 solid #dadada;
	bordertype: normal ;
	align: center middle;
	font : Dotum,9 ;
	color : #777777;
	buttonborder: 1 #c0c5cf ;
	buttonbordertype: round 3 3  lefttop righttop;
	buttonbackground: @gradation ;
	buttongradation: liner 0,0 #ffffff 0,100 #eceff3 ;
	buttonpadding: 5 15 5 15;
	buttonmargin : 0 3 0 0 ;
	padding         : 0 0 0 0;
}
---------------------------------------------------------------------------------------------------------

- Coordinage System
1. Position
left, top, right, bottom으로 XComponent의 위치를 지정합니다. 
left,top,right,bottom의 절대 좌표를 기준으로 Box 모델을 형성합니다. 
Ex)component.position = “absolute 10 10 100 100” 

2. Position2
position2는 left top, width, height로 Box 델을 형성합니다. 
position2는 positiontype이 position2 일때 동작하며 position과는 항상 연동됩니다. 
따라서 position2에 값을 설정하면 position과 anchor가 적절하게 설정되게 됩니다. 
position2 의 left,top,right,bottom은 해당 component의 부모 컨테이너 ( form,div 등 )의 각변으로부터의 이격값입니다. 
예를들어 right가 30 이면 부모form 이나 div 의 오른쪽 변으로부터 30pixel 만큼 떨어진 위치가 해당 컴포넌트의 
오른쪽 좌표가 됩니다. 
따라서, 부모 컨테이너가 Resize 되면 anchor가 설정된것과 같이 연동되어 동작하게 됩니다. 
==============================================================================================================

- 이진우 부장(소프트원 영업)과 명함 교환
==============================================================================================================

- 포항계 계비 납부(송금)
1. 2015.03 ~ 09(총 7만원) + 모임비(2만) ==> 총 9만원
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.09.26(토) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 20:40 ==> 추석 연휴(철야)
 
- 주말
04:00 라면(한섬 ERP Prj 양원 빌딩)
05:10 퇴근
05:20 4318번 버스(프리마호텔 -> 고속터미널)
05:40 고속터미널
06:05 서울 출발(서울 -> 포항, 일반 고속, 37번)
08:35 천안 휴게소(화장실 급해서 쉬자고 요청)
13:40 포항 도척(거의 8시간 걸림 -> 다음 명절에는 야간 고속버스 탈 것)
13:50 101번 버스(포항고속터미널 -> 두호주민센터)
14:20 귀가
14:40 낮잠
17:00 기상
17:20 집출발
18:00 누리마을 감자탕 장성점 도착(포항계 모임 장소)
18:20 진철, 정철, 태정, 봉춘, 성표, 진호형(형수, 딸2명) --> 주남이형 아버지 아파서 불참
18:30 석식(감자탕) --> 햄세트 선물로 받음
20:00 종료 
20:20 귀가(진철이 차) ==> 어머니에게 루옌하고 싸워서 말 안 한다고 한 소리 들음
00:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.09.27(일) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 20:40 ==> 추석

- 추석
08:30 기상
09:30 차례 지내기
10:00 종료
10:20 조식(조금만 먹음)
10:30 낮잠 
15:00 큰누나네 도착(령경같이 안 옴)
16:30 집출발(택시: 4,400원 --> 수종)
16:50 이모집(현대1차 103동 1502호): 이사하고 처음 방문(1억 5천에 구입해서 리모델링(2천) 들었다고 함)
	==> 수종이하고 많이 닮았다고 함, 성희 강아지 분양(110만원), 수종 강아지 많이 좋아 함
	==> 수종이 경태한테 2만원, 성희한테 만원, 두수 형수님한테 만원 받음
20:30 중식(이모집)
20:50 귀가(두수 형님이 태워다 줌)
23:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.09.28(월) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 20:40 ==> 추석 연휴

- 추석 연휴
09:00 기상
09:30 조식 
15:00 집출발
15:30 환호 공원(큰누나 차, 아버지, 어머니, 수종, 루옌 --> 동물 조금 있음)
16:30 귀가
17:00 누나네 집에 감
20:30 석식 
23:50 귀경 준비
00:15 집출발(가방, 김치통)
00:20 택시(포항집 -> 고속터미널: 5,400원)
00:30 고속터미널 도착(09.29 01:00 포항- > 서울, 심야 우등 고속, 6번)
01:00 포항 출발 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.09.29(화) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 20:40 ==> 추석 연휴

- 추석 연휴
05:10 서울 도착(4시간 10분 걸림)
05:30 642버스(고속터미널 -> 대림역)
06:30 귀가(짐 정리)
07:10 버스(6411번, 대림역 -> 학동역)
08:30 신구초등학교 
09:00 게임 ==> 2게임(처음으로 새로깐 인조잔디에서 축구함(좋음), 새벽에 버스탁 와서 약간 피곤함)
10:30 종료
10:40 임시회의 
	==>1. 운동장 골대 조기회에서 구입하기로 함(160만원 선) ==> 임원들은최소 5만원씩 찬조하라고 함
2. 신입 회원 문제 ==> 입회비, 월회비 다 받기로 함 
3. 영희형이 성주가 병규형, 병춘이형이랑 싸운 이야기, 나와 경훈이 싸운 이야기 꺼냄
11:30 중식(김치찌게, 병기형 가게): 만원 냄
12:50 종료
13:50 귀가
15:00 낮잠
17:00 기상
19:40 석식(라면)
23:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.09.30(수) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 23:30 ==> 야근(석식[김밥천국], 5,500원), 서울역(루옌 마중, 택시(서울역 -> 대림역: 13,080원)

- 한섬 ERP 재구축 Prj[★]  
- 개발공정 고객 수정 요청 사항 내역  테스트 및 수정
1. Q&A[/Help > Q&A]
==============================================================================================================

- UI공통, 개발 문제를 박재완 부장에게 문제 제기
1. (주)투비소프트 박재오 팀장과 박부장 전화 통화
  ==> 최악의 경우 철수까지 생각할 것
==============================================================================================================

- ORA-01465: 16진수의 지정이 부적합합니다 
1. 원인 
- INSERT, UPDATE 하러는 컬럼의 TYPE이 BLOB인 경우 문자열인 값을 입력하려는 경우 발생 
INSERT INTO TB_TEST (T_BLOB) VALUES ('TEST') 
  
2. 해결방법 
- INSERT INTO TB_TEST (T_BLOB) VALUES (UTL_RAW.CAST_TO_RAW('TEST')) 
UTL_RAW.CAST_TO_RAW 대신 RAWTOHEX 를 사용해도 된다.

3. 추가사항 
변환 저장된 문자열을 확인하려면 아래의 쿼리를 사용하면 된다. 
SELECT UTL_RAW.CAST_TO_VARCHAR2(T_BLOB) FROM TB_TEST
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■