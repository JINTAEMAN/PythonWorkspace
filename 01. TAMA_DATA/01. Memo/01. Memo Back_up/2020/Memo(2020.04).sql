

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+----------------------------------------------// Memo(2020.04) //----------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2020.04.01(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==> 현대제철 식당 식권 구입(10시, 40장 216,000원(장 당: 5,400원), 계좌 이체[농협])

- 현대제철 유해화학물질 MAP 구축 Prj[★]
- 전체 화면(관리자) (/admin2020noxMat::MainDiscAdmin.xfdl) 화면 수정 ==> 완료 @@@
1. 3개 화면 통합(3개의 Div로 분리)
 1) 00. 전체 화면 오른쪽 Div(div_RightGrdList)
 2) 01. 공장 화면 오른쪽 Div(div_RightGrdList_01)
 3) 02. 설비 화면 오른쪽 Div(div_RightGrdList_02)
==============================================================================================================

- 버튼, St, Grid 숨기기(▲), 보이기(▼) 설정
/***************************************************************************
 * Even   : div_RightGrdList_01_btn_ListWorkHidden_onclick
 * Desc   : 작업현황(외주) 숨기기(▲) 버튼 클릭 이벤트(숨기기) [01. 공장 화면에서]
 ****************************************************************************/
this.div_RightGrdList_01_btn_ListWorkHidden_onclick = function(obj:nexacro.Button,e:nexacro.ClickEventInfo)
{
	trace("[/MainDisc.xfdl] [div_RightGrdList_01_btn_ListWorkHidden_onclick()] ==> [TEST_01] [작업현황 (외주) 숨기기(▲)]" );
	
	// 작업현황(외주)  영역 숨기기
	this.div_RightGrdList_01.form.btn_ListWorkShow.set_visible(true);		// 작업현황 (외주) 보이기(▼) 버튼 보이기: true
	this.div_RightGrdList_01.form.btn_ListWorkHidden.set_visible(false);		// 작업현황 (외주) 숨기기(▲) 버튼 안 보이기	
	this.div_RightGrdList_01.form.grd_ListWork.set_height(0);		// 작업현황 (외주) Grid 안 보이기 
	
	// 공장내 설비 별 유해화확물질 영역 
	this.div_RightGrdList_01.form.btn_Nx4FctFacilShow.set_top("st_TitleOutWorkStat:0");		
	// 공장내 설비 별 유해화확물질 보이기(▼) 버튼 ==> 작업현황 (외주) St에서 바로 밑에 위치 시킴
	this.div_RightGrdList_01.form.btn_Nx4FctFacilHidden.set_top("st_TitleOutWorkStat:0"); 	
	// 공장내 설비 별 유해화확물질 숨기기(▲) 버튼 
	this.div_RightGrdList_01.form.st_TitleNx4FctFacil.set_top("st_TitleOutWorkStat:0");			
	// 공장내 설비 별 유해화학물질 정보 St ==> 작업현황 (외주) (제목) St 바로 밑에 위치 시킴
	this.div_RightGrdList_01.form.btn_Nx4FctFacilPop.set_top("st_TitleOutWorkStat:0");			
	// 공장내 설비 별 유해화학물질 정보 팝업 버튼
	this.div_RightGrdList_01.form.grd_NoxMatInfo4FctFacil.set_top("st_TitleNx4FctFacil:-1");	
	// 공장내 설비 별 유해화학물질 정보 Grid ==> 공장내 설비 별 유해화학물질 정보 St -1 밑에 위치 시킴
	
	// 유해화확물질 일람표 영역 
	this.div_RightGrdList_01.form.btn_NxIlamShow.set_top("grd_NoxMatInfo4FctFacil:0");		
	// 유해화학물질 일람표 보이기(▼) 버튼 ==> 공장내 설비 별 유해화학물질 정보 Grid에서 바로 밑에 위치 시킴
	this.div_RightGrdList_01.form.btn_NxIlamHidden.set_top("grd_NoxMatInfo4FctFacil:0");		
	// 유해화학물질 일람표 보이기(▼) 버튼  
	this.div_RightGrdList_01.form.st_TitleNxIlam_01.set_top("grd_NoxMatInfo4FctFacil:0");		// 유해화학물질 일람표 St
	this.div_RightGrdList_01.form.grd_NoxMatIlam.set_top("st_TitleNxIlam_01:-1");		
	// 유해화학물질 일람표 Grid ==> 유해화학물질 일람 St -1 밑에 위치 시킴
	trace("[/MainDisc.xfdl] [div_RightGrdList_01_btn_ListWorkHidden_onclick()] ==> [TEST_91] [숨기기]" );
};
==============================================================================================================

- 전체 화면(/noxMat2020noxMat::MainDisc.xfdl) 화면 수정 ==> 완료 @@@
1. 3개 화면 통합(3개의 Div로 분리)
 1) 00. 전체 화면 오른쪽 Div(div_RightGrdList)
 2) 01. 공장 화면 오른쪽 Div(div_RightGrdList_01)
 3) 02. 설비 화면 오른쪽 Div(div_RightGrdList_02)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.04.02(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 20:20 ==> 22:24 인슐린 약 교체(255U, 26U 남음)

- 현대제철 유해화학물질 MAP 구축 Prj[★]
- 전체 화면(관리자) (/admin2020noxMat::MainDiscAdmin.xfdl) 화면 수정 ==> 완료 @@@
1. 유해물질 하단 Tab 닫기, 열기 클릭 안되는 문제
 1) div_RightGrdList_01(01. 공장 화면 오른쪽 Div, div_RightGrdList_02(02. 설비 화면 오른쪽 Div) right 위치 조정해서 해결
 <Button id="btn_tabHidden" taborder="10" width="45" height="45" right="436" onclick="btn_tabHidden_onclick" 
	bottom="240" cssclass="btn_MF_Close" tooltiptext="유해물질 하단 Tab 닫기"/>
<Div id="div_RightGrdList_01" taborder="2" width="485" right="-505" top="0" bottom="0" formscrollbartype="none"
	ext="01. 공장 화면 오른쪽 Div" visible="false"> 
/***************************************************************************
 * Even   : fn_GotoPage
 * Desc   :  화면 이동
 ****************************************************************************/ 
this.fn_GotoPage = function(nNo)
{
	//trace("[/MainDiscAdmin.xfdl] [fn_GotoPage()] ==> [TEST_01]"); 
	
	var sViewNm;
 	this.div_RightGrdList.set_visible(false);		// 00. 전체 화면 오른쪽 Div 안 보이기(0: 전체 화면, 1: 공장, 2: 설비)
	this.div_RightGrdList_01.set_visible(false);	// 01. 공장 화면 오른쪽 Div 안 보이기(0: 전체 화면, 1: 공장, 2: 설비)
	this.div_RightGrdList_02.set_visible(false);	// 02. 설비 화면 오른쪽 Div 보이기(0: 전체 화면, 1: 공장, 2: 설비)
	
	if(nNo == "1")		// 01. 공장 화면으로 이동
	{  
		sViewNm = "01. 공장 화면 Display";
		this.fv_sFctFacilGb = 1;			// 공장, 설비 단위 구분(0: 전체, 1: 공장, 2: 설비)
		this.fv_ID_FACILITY = "66";			// 시설코드 삽입(화면 이동)  //  TEST @@@ ====>
		this.div_RightGrdList_01.set_visible(true);	// 01. 공장 화면 오른쪽 Div 보이기(0: 전체 화면, 1: 공장, 2: 설비) 
		this.div_RightGrdList_01.set_right(0);		// 01. 공장 화면 오른쪽 Div right 값 변경(-505에서 정상 위치로 복귀) @@@@
		this.fn_TotCtrlToolSearch_01(); 		// 전체관리도구 조회[01. 공장 화면] 
		 
	}
	else if(nNo == "2")		// 02. 설비 화면으로 이동
	{ 
		sViewNm = " 02. 설비 화면 Display";
		this.fv_sFctFacilGb = 2;			// 공장, 설비 단위 구분(0: 전체, 1: 공장, 2: 설비)
		this.fv_ID_FACILITY = "66";			// 시설코드 삽입(화면 이동)  //  TEST @@@ ====>
		this.div_RightGrdList_02.set_visible(true);	// 02. 설비 화면 오른쪽 Div 보이기(0: 전체 화면, 1: 공장, 2: 설비) 
		this.div_RightGrdList_02.set_right(0);		// 02. 설비 화면 오른쪽 Div right 값 변경(정상 위치로 복귀) @@@@
		this.fn_TotCtrlToolSearch_02(); 		// 전체관리도구 조회02. 설비 화면] 
	}
	trace("[/MainDiscAdmin.xfdl] [fn_GotoPage()] ==> [TEST_91] [화면 이동 결과 @@@] [nNo]"+ nNo +"[화면 위치]"+ sViewNm );
}; 
==============================================================================================================

- Image Viewer에서 클릭한 위치 좌표 받는 방법 문의
1. (주)투비소프트 콜센터에 글 올려서 문의
this.ImageViewer_onclick = function(obj:nexacro.ImageViewer,e:nexacro.ClickEventInfo)
{	 
	var nRow = new nexacro.Number(this.ds_OutWorkStat.rowposition);
	var nRow2 =  parseInt(nRow) + 1;
	var objComp = new Edit();		// Edit 생성(컴포넌트 생성)
	trace("[/noxOutWorkStatDmiP.xfdl] [ImageViewer_onclick()] ==> [TEST_01] [nRow]"+ nRow +"[해당 Row]"+ nRow2 
		+"[ds_OutWorkStat.RMRK]"+ this.ds_OutWorkStat.getColumn(nRow, "RMRK") );
	
	if(!this.gfn_IsNull(this.ds_OutWorkStat.getColumn(nRow, "RMRK")))		 // 해당 Row의 비교가 널이 아니면
	{  
		trace("[/noxOutWorkStatDmiP.xfdl] [ImageViewer_onclick()] ==> [TEST_02] [해당 Row]"+ nRow2 +"[objComp 존재 여부]"+ 
		this.components["edit_PositNm_"+ nRow2] );
		
		if(this.components["edit_PositNm_"+ nRow2] instanceof Edit) 		// 해당 Row의 objComp가 존재하면
		{
			trace("[/noxOutWorkStatDmiP.xfdl] [ImageViewer_onclick()] ==> [TEST_11] [해당 Row]"+ nRow2 +"[해당 Row의 objComp가 존재하면] ==> Pass" );
		}
		else
		{  
			trace("[/noxOutWorkStatDmiP.xfdl] [ImageViewer_onclick()] ==> [TEST_21] [해당 Row]"+ nRow2 +"[해당 Row의 objComp가 존재 안하면] ==> Edit 추가" );
	  
			objComp.init("edit_PositNm_"+ nRow2, e.clientx + obj.getOffsetLeft(), e.clienty + obj.getOffsetTop(), 40, 27);  	// objComp 초기화
			var nAddChild = this.addChild(objComp.name, objComp);		// 자식 컴포넌트로 추가하는 메소드 
			objComp.show(); 
			objComp.set_value(this.ds_OutWorkStat.getColumn(nRow, "RMRK"));		// 좌표명값 설정
			objComp.set_tooltiptext("좌표명"+ nRow2);
			objComp.set_readonly(true) 		// readonly 설정	
			trace("[/noxOutWorkStatDmiP.xfdl] [ImageViewer_onclick()] ==> [TEST_81] [enAddChildt]"+ nAddChild +"[objComp.get_id]"+ 
			objComp.get_id +"[objComp.left]"+ objComp.left +"[objComp.top]"+ objComp.top 
				+"[objComp.width]"+ objComp.width +"[objComp.height]"+ objComp.height );
		}
	}  
};
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.04.03(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 15:00 ==> 최종규 팀장 출장, 서울행(15:05 ~ 17:10): (주)이노 액티브 팀원들 차 얻어 탐(총 3명) --> 16:30 천왕역 2번 출구
									--> 16:40 대림역 --> 17:07 귀가, 이발(스카이 미용실)
									
- 현대제철 유해화학물질 MAP 구축 Prj[★]
- 파일 업로드 팝업(/admin2020noxMat::noxUploadFileP.xfdl) 화면 수정 ==> 완료 @@@
1. 이미지 파일삭제(/[/File.js)
var sFolder = this.FILE_DS.getColumn(0, "FPATH");		// 폴더 경로 추가[변경일: 2020.03.23(v1.0), by 진태만]
trace("[/File.js] [gfn_Filecallback()] ==> [TEST_21] [파일조회 성공] [this.FILE_GUBUN]"+ this.FILE_GUBUN );

2. 이미지 파일삭제(/deleteFile.jsp)
<%
var sFolder = this.FILE_DS.getColumn(0, "FPATH");		// 폴더 추가[변경일: 2020.03.23(v1.0), by 진태만]
trace("[/File.js] [gfn_Filecallback()] ==> [TEST_21] [파일조회 성공] [this.FILE_GUBUN]"+ this.FILE_GUBUN );

<%
System.out.println("[/deleteFile.jsp] ==> [TEST_01] [파일 삭제]" ); 

PlatformData platformData = new PlatformData();
HttpPlatformRequest platformRequest = new HttpPlatformRequest(request);

platformRequest.receiveData();
PlatformData pData = platformRequest.getData();

String osName = System.getProperty("os.name");

String spr = File.separator; 
String realPath = request.getParameter("path");	// 실제 파일 경로
String realFlolerPath = request.getParameter("folder");	// 실제 폴더 경로

if(osName.indexOf("Window") > -1)
{
	realPath.toString().replace('/', '\\'); 
}

File folder = new File(realFlolerPath);
 
try {
	System.out.println("[/deleteFile.jsp] ==> [TEST_11] [folder.exists()]"+ folder.exists() );
	
	if(file.exists()) 	// 파일이 존재하면 @@@
	{
		if(file.delete())		// 파일 삭제 처리
		{
			returnString += "'"+ realPath +"' Delete Success[01. 파일 삭제 성공]";
		} 
		else
		{
			succ = false;
			returnString += "'"+ realPath +"' Delete failed[파일 삭제 실패]";
		} 
	}
	else
	{
		succ = true;
		returnString += "'"+ realPath +"' File not available[파일 사용 불가]";
	}	 // end of if  --> // 파일이 존재하면 @@@
	System.out.println("[/deleteFile.jsp] ==> [TEST_51] [returnString]"+ returnString );
	
	File[] folder_list = folder.listFiles(); 	// 파일 리스트 얻어오기 		

	System.out.println("[/deleteFile.jsp] ==> [TEST_61] [폴더에 있는 파일 갯수]"+ folder_list.length +"[folder.isDirectory()]"+ folder.isDirectory() );
	
	if(folder_list.length < 1)		// 폴더에 파일이 존재 안하면
	{
		if(folder.isDirectory())			// 폴더가 존재하면
		{ 
			System.out.println("[/deleteFile.jsp] ==> [TEST_71] [folder.isDirectory()]"+ folder.isDirectory() );
			
			folder.delete(); 		// 대상 폴더 삭제
			System.out.println("[/deleteFile.jsp] ==> 폴더가 삭제되었습니다.[02. 폴더 삭제 성공]");
		}
	}	// end of if  --> // 파일이 존재 안하면  
}  
%>
==============================================================================================================

- TEST 사용자 추가
-- 사용자 비밀번호 수정 @@@  
UPDATE TB_GQ_CM_USERINFO
SET EMP_NO = '1521662'
WHERE 1=1
	AND EMP_NO = '1521222'		-- 사번: 1521666(진태만),  1521662(진태만2)
;
==============================================================================================================  

- 설비정보(/admin2020noxMat::EqupInfo.xfdl) 화면 수정
1. 엑셀일괄출력: 클릭
/***************************************************************************
 * Even   : btn_ExcelDownload_onclick
 * Desc   : 엑셀 다운로드
 ****************************************************************************/ 
this.btn_ExcelDownload_onclick = function(obj:nexacro.Button,e:nexacro.ClickEventInfo)
{
	trace("[/EqupInfo.xfdl] [btn_ExcelDownload_onclick()] ==> [TEST_01]" ); 
	
	this.gfn_ExcelExport(this.grd_List,  "Sheet1", "설비정보"); 
}; 

<Grid id="grd_List" taborder="0" left="53" top="195" right="53" autoenter="select" bottom="53" cssclass="grd_WF_Admin">

- /theme.xcss 파일에서(..\_theme_\NoxMatRetMot\)
/*** 관리자화면 그리드 ***/
.Grid.grd_WF_Admin
{
	-nexa-border : 1px solid #d2d2d2;
} 
==============================================================================================================

- 서울행[★]
14:15 퇴근
14:20 (주)이노 액티브 팀원들 차 얻어 탐(총 3명)
15:37 천왕역 도착
16:07 귀가
16:10 집출발(자전거)
16:20 대동초 돌봄교실(수종이 데리고 옴)
16:40 귀가
17:00 루옌 퇴근
17:10 집출발(자전거)
17:20 이발(스카이 미용실, 8천원)
17:50 더블 올포유 피자 구입(16,500원, 이마트 구로점)
18:05 귀가
18:10 석식
18:40 실내 자전거 타기: 작은 방에서
		 ==> [드라마] 해신 장보고, 4부 시청, KBS2 2004.11.24. ~ 2005.05.25.방영종료 51부작
		 --> http://program.kbs.co.kr/1tv/drama/jangbogo/pc/list.html?smenu=a51fb5
18:40 종료
20:10 진수종 선생님(대동초 1-1) 한테 전화 ==> 4월 20일(월)온라인 개학(e-학습터 SW로 온라인 수업)
		 ==> 4월 9일(목) 10시 대동관에서 배부(돌봄 교실 선생님에게 전달해달라고 부탁 드림), 통신문으로 동의서 작성
		 ==> 다문화 특별 학급: 필요 없다고 함
20:20 인터넷 서핑 ==> 현대제철 VPN 연결 안됨
20:40 염색(루옌이 해줌)
21:40 3월 가계부 월말 결산
23:00 취침(작은 방 침대에서 취침)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.04.04(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00 ==> 

- 주말[★]
08:00 기상
08:26 조식
09:00 실내 자전거 타기: 작은 방에서
10:00 종료
10:30 수종이 자전거 연습(아파트 내)
11:20 집출발(자전거)
11:30 다이소 대림2호점 ==> 자전거 자물쇠(10mm*80cm, 수종이 자전거) 구입, TG 오픈형 이어폰(E500S) 구입
		 , 꽃을 든 남자 세라 마이드 크리닉 칼라(N5 진한 갈색), 트라이탄형 물병(450ml): 수종이, 손목이 편한 마우스 패드 구입 
12:40 실내 자전거 타기
13:00 루옌 놀러감
13:30 종료
14:00 인터넷 서핑
15:00 수종이 자전거 연습(아파트 내)
16:00 인터넷 서핑
18:00 석식
18:30 실내 자전거 타기(1시간)  
19:30 종료
20:00 인터넷 서핑
21:20 루옌 귀가(꽃놀이 갔다 옴)
21:40 TV 시청 ==> KBS1 특파원 보고 세계는 지금 시청
22:30 취침
==============================================================================================================

- TG 오픈형 이어폰(E500S) 구입(5천원)
https://blog.naver.com/jmmmlp/221240935128
==============================================================================================================

- 가스앱 설치(핸드폰에 설치: 가스앱-서울·인천도시가스 모바일 고객센터)
https://play.google.com/store/apps/details?id=com.biller.scg&hl=ko
1. 도시가스 검침(앞으로 핸드폰으로 할 것)
==============================================================================================================

- 41. 토렌트
http://www.torrent.kr
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.04.05(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00 ==>

- 주말2[★]
07:30 기상
08:05 조식
08:30 실내 자전거 타기
09:30 종료
09:00 인터넷 서핑
12:10 중식
12:30 실내 자전거 타기
13:30 종료
13:50 루옌(수종) 언니집에 놀러 감
14:00 인터넷 서핑
16:00 태용이한테 전화 옴
16:40 영웅 태권도 이충현 관장에게 전화 ==> 내일부터 권장이 돌봄 교실에서 수종이를 16시에 데리고 와서 태권도 도장에서 훈련 시킴
		--> 18:30 루옌이 태권도에 가서 수종이 집에 데리고 옴
17:00 석식
17:30 실내 자전거 타기
18:30 종료
18:30 인터넷 서핑
19:20 집출발
19:40 온수역 2번 출구 도착 ==> (주)이노 액티브에서 빌린 차 얻어 탐(최종규 팀장외 3명)
20:00 서울 출발
21:06 당진 현대 애비뉴 도착
21:10 귀가
23:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.04.06(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==> 영웅 태권도 재 오픈(2주 휴관 후 오픈: 태권도 사범이 차로 수종이를 18시 반에 귀가 시킴)
								 , 다이소 마우스 패드 사용(2천원, 부드럽고 편안함)

- 현대제철 유해화학물질 MAP 구축 Prj[★]
- SSO 분석
1. (18.07.17) 통합계정시스템_신규업무시스템연계.pptx
①인사 연동(IM): 사용자 입사/퇴사/암호동기화및  부서변경IF를 연계
②통합로그인(SSO): 그룹웨어 로그인을 전제로한 SingleSignOn 연계 
 1) NSSO(NETS SSO) Agent는, SSO를 적용할 대상 Application 서버에 적용할 인증 라이브러리, 환경설정 파일, 적용 샘플 등을 배포 
==============================================================================================================
 
- imgscalr-lib.4.2.jar 추가(eclipse에서 NoxMatRetMot Prj 빨간색 제거)
- /pom.xml 파일에서
<!--imgscalr-lib.4.2.jar 추가 ==> 2020.04.06, by 진태만  -->
<dependency>
	<groupId>org.imgscalr</groupId>
	<artifactId>imgscalr-lib</artifactId>
	<version>4.2</version>
</dependency>
==============================================================================================================

- 설비정보(/admin2020noxMat::EqupInfo.xfdl) 화면 수정
1. 엑셀일괄출력: 클릭
/***************************************************************************
 * Even   : btn_ExcelDownload_onclick
 * Desc   : 엑셀일괄출력 버튼 클릭 이벤트(엑셀 다운로드)
 ****************************************************************************/ 
this.btn_ExcelDownload_onclick = function(obj:nexacro.Button,e:nexacro.ClickEventInfo)
{
	trace("[/EqupInfo.xfdl] [btn_ExcelDownload_onclick()] ==> [TEST_01] [grd_List.cssclass]"+ this.grd_List.cssclass ); 
	
	this.grd_List.set_cssclass("grd_WF_Admin_02");		// grd_List Grid css 변경(엑셀 다운로드할 때 사용) [변경일: 2020.04.06, by 진태만]
	this.gfn_ExcelExport(this.grd_List,  "Sheet1", "설비정보 리스트"); 	
	this.grd_List.set_cssclass("grd_WF_Admin");			// grd_List Grid css 변경(기존 css로 변경)[변경일: 2020.04.06, by 진태만] 
};

<Grid id="grd_List" taborder="0" left="53" top="195" right="53" autoenter="select" bottom="53" cssclass="grd_WF_Admin">  
<!--// 설비정보 리스트 Grid //-->
-----------------------------------------------------------------------------------------------------------------------------

- /theme.xcss 파일에서(..\_theme_\NoxMatRetMot\)
/*** 관리자화면 그리드_02 ==> 추가[변경일: 2020.04.06, by 진태만] ***/
.Grid.grd_WF_Admin_02
{ 
	-nexa-border : 0px none, 1px solid #d2d2d2;
}

.Grid.grd_WF_Admin_02 .head
{
	background : #f7f8f8;
	-nexa-border : 0px none, 0px none, 1px solid #d2d2d2, 0px none;
}

.Grid.grd_WF_Admin_02 .head .row .cell
{
	-nexa-border : 0px none, 1px solid #d2d2d2;
	background : #f7f8f8;
	font : 16px "HDharmony M","HDharmony","맑은 고딕";
	color : #005982;
}
==============================================================================================================

- Data export(DBeaver에서)
1. 테이블 조회
-- 관리자 계정 조회  @@@ ==> 180건
SELECT  A.*
FROM TB_HCM_ADMINACCOUNT A 		 -- 관리자 계정 TB 
;
2, 조회된 데이타 선택: 마우스 우 클릭 ==> 데이타 추출  
3. Data transfer target type and format(새창)
 1) Target: SQL 선택 
 2) Exported:  관리자 계정 조회  @@@ 
  ==> 다음(N): 클릭
4. Settings(테이블 to 파일, SQL) (새창)
 1) Extraction settings
   가. Extraction type: Single query  ==> 선택
 2) Format settings
   가. Expoter settings
    가): INSERT 구문 당 로우 개수: 1  ==> 1개로 설정할 것 @@@@
  ==> 다음(N): 클릭
5. Output (새창)
 1) Directory: D:\01. TAMA_DATA\02. TAMA Project\2020.01(현대제철 유해물질 원격 모니터링 시스템 구축 Prj)\41. DB query\44. Export SQL
 2) File name pattern: ${table}_${timestamp}
 3) Encoding: UTF-8
 4) Timestamp pattern: yyyyMMddHHmm
  ==> 다음(N): 클릭
==============================================================================================================

- 자기검침입력(핸드폰 가스앱 사용)
1. 2020년.04월부터 시작 ==> 03774ml
==============================================================================================================

- 아동 돌봄 쿠폰 신청
1. 40만원 쿠폰으로 지금, 아이행복카드(국민은행)으로 신청할 것
https://online.bokjiro.go.kr/apl/ccca/aplChldCareCoupCrti.do
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.04.07(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==> 아베 총리 일본 긴급 사태 선언(코로나19 심각)

- 현대제철 유해화학물질 MAP 구축 Prj[★]
- SSO 분석
1. (18.07.17) 통합계정시스템_신규업무시스템연계.pptx
①인사 연동(IM): 사용자 입사/퇴사/암호동기화및  부서변경IF를 연계
②통합로그인(SSO): 그룹웨어 로그인을 전제로한 SingleSignOn 연계 
 1) NSSO(NETS SSO) Agent는, SSO를 적용할 대상 Application 서버에 적용할 인증 라이브러리, 환경설정 파일, 적용 샘플 등을 배포 
==============================================================================================================

1. SSO연동 로그인[로컬 테스트용] ===> http://localsso.Hyundai-steel.com:9000/sample.jsp
2. SSO연동 Link 페이지(메인 화면) ===> https://devsmnew.hyundai-steel.com/cm/nsso.jsp  
 1) sample.jsp의 JSP로직(<%~1라인부터 114라인까지 %>) 을 추가하여 통합로그인ID(logonID) 를 얻어와 기존 세션 생성 로직과 
 이어지도록 수정
==============================================================================================================

- jsp 홈페이지 주소 가져오기(jsp에서)
1. request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort();
==============================================================================================================
 
- 통합로그인(SSO) 에러(/sample.jsp 파일에서)
1. 현상:
com.nets.sso.common.AgentException: 등록되지 않은 SSO 사이트 웹 서버로 부터 요청되었습니다., Exception Code = 13000003
	at com.nets.sso.agent.configuration.SSOSite.downloadSSOPolicy(SSOSite.java:241)
2. 원인: 사용자정보가 존재하지않는경우, agentconfig.xml파일위치가 잘못되어 못읽어오는 경우
==============================================================================================================
 
- 안전환경 SSO페이지 ==> http://gqms.hyundai-steel.com/index_she_new.jsp
http://gqms.hyundai-steel.com
-----------------------------------------------------------------------------------------------------------------------------

Sample
- safety.hyundai-steel.com/HSKC   (현대제철 100년역사안전문화관) 
- safety.hyundai-steel.com/HSKU  (현대제철 외주안전작업관리)
https://visit.hyundai-steel.com/reserve/index.do 	==> 1. 비공사성 방문: 방문예약 시스템
http://safety.hyundai-steel.com/HSKU/	==> 2. 공사성 방문: 외주업체 안정관리 시스템 
- safety.hyundai-steel.com/HSMS  (현대제철 직영안전작업관리_모바일)
- safety.hyundai-steel.com/HSMU   (현대제철 외주안전출입관리_모바일)
==============================================================================================================

- nsso-agent-15.jar 추가(/pom.xml 파일에서)
<!-- nsso-agent-15.jar 추가(SSO연동) ==> 2020.04.07, by 진태만  -->
<dependency>
	<groupId>spring</groupId>
	<artifactId>nsso-agent-15</artifactId>
	<version>15</version>
	<scope>system</scope>  
	<systemPath>${basedir}/src/main/webapp/WEB-INF/lib/nsso-agent-15.jar</systemPath>  
</dependency>
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.04.08(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:10 ==> 중국 우한 봉쇄 해제(코로나19), 김도현 대리 만남(캔커피[매점, 1,900원], 현대제철 야드 Prj 투입, 10월까지)
									, 21:20 인슐린 약 교체(270U, 5U 남음) 
									
- 현대제철 유해화학물질 MAP 구축 Prj[★]
- SSO 분석
1. (18.07.17) 통합계정시스템_신규업무시스템연계.pptx
①인사 연동(IM): 사용자 입사/퇴사/암호동기화및  부서변경IF를 연계
②통합로그인(SSO): 그룹웨어 로그인을 전제로한 SingleSignOn 연계 
 1) NSSO(NETS SSO) Agent는, SSO를 적용할 대상 Application 서버에 적용할 인증 라이브러리, 환경설정 파일, 적용 샘플 등을 배포 
==============================================================================================================
 
- InnoR3D WebRenderProgram Source
1. InnoR3D Source Code.zip: 김황 과장에게 메일로 받음 ==> eclipse 재설정
 1) resources 폴더 추가
  가. \InnoR3D Source Code\WebContent\resources  ==> /NoxMatRetMot/src/main/resources 폴더에 넣기 
 2) /InnoIndex.jsp 파일 위치 변경
  가.  \InnoR3D Source Code\WebContent  ==> webapp\NoxMatRetMot\3D_render 폴더에 넣기
 3) /ResultBuffer.java, /UserDAO.java 파일 추가
  가. \workspace\NoxMatRetMot\src\main\java\DBConnection 폴더에 붙여넣기
 4) /ojdbc6.jar 추가
  가. 기존 eclipse에 존재   
==============================================================================================================

- 개발 서버 셋팅 
1. 소스 위치: /u01/app/HSSK/webapp/HSCM/
5. 톰캣 서버 재시작(tomcat으로 로그인) @@@
> sh /u01/infra/apache-tomcat-8.5.43/bin/shutdown.sh
> sh /u01/infra/apache-tomcat-8.5.43/bin/startup.sh
> tail -f /u01/infra/apache-tomcat-8.5.43/logs/catalina.out 
==============================================================================================================

- 개발, 운영 서버 문의 메일 보냄
1. 최종규 팀장에게 보냄
- 현대제철 유해화학물질 MAP 구축 시스템 도메인
1. 안전관리시스템AP1(개발) 서버 IP: 10.10.180.237 ==> safety.hyundai-steel.com/HSCM
2. 안전관리시스템AP1(운영) 서버 IP: 10.10.221.235  ==> safetydev.hyundai-steel.com/HSCM
==============================================================================================================

- 유해화학물질 MAP 시스템 톰캣 서버 구축 요청 메일 보냄
1. 최종규 팀장에게 보냄 
 1) 기존 톰캣 서버(/u01/infra/apache-tomcat-8.5.43) 1대로 안전 관련 4개의 사이트를 운용하고 있음 
 2) 유해화학물질 MAP 시스템은 3D 맵을 로딩하므로 엄청난 부하가 발생할 것으로 추정됨.  
 3) 기존 infra 폴더 하위 단에 톰캣 서버를 추가해줄 것을 요청 드림(비추)
  ==> 1개의 도메인을 사용하면 톰캣 서버에서 포트를 생성해서 사용할 것을 추천(배인철 차장이 추천)
==============================================================================================================

- 아이핀(IPIN) 비번 변경
1. tamario /hp수*!6*1@, 2차, hp수*!6*1
============================================================================================================

- Super Putty(수퍼 뿌띠) 환경 설정
 0. PuTTY Sessions > New > Create New Session(새창)
1. Session Name: 02. DWS ID(개발)
2. Host Name: 117.103.37.28, Port: 22 
3. PuTTy Sessopm Profile: 01. DWS ID   ==> 선택 @@@ 
4. Login Username: wadmin 
5. Extra PuTTy Argumnetst: -pw dws4004!  ==> 비밀번호 설정 @@@ 
============================================================================================================

-  당뇨 소모품 구입
1. 수일몰에서 주문 ==> 202,500원 환급 예정
1. http://sooilmall.com/shop/orderinquiryview.php?od_id=2020040821573283&uid=085498db81cb499a59ade251f959016b
2. 구매 내역 
 1) 다나메티칼 슈퍼라인-ST[바늘 길이: 6.5mm]	 15 	 4,000 	 60,000원
 2) 다나 3cc 주사기(다나 플러스, 다나 용)	 15 	 1,500 	 22,500원 
 총 금액				 82,500원 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.04.09(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==> 수종이 1학년 교과서 배부(돌봄교실 ==> 태권도 관장 ==> 귀가 할때 집에서 받음)

- 현대제철 유해화학물질 MAP 구축 Prj[★]
- 개발 서버 셋팅 
1. 소스 위치: /u01/app/HSSK/webapp/HSCM/
5. 톰캣 서버 재시작(tomcat으로 로그인) @@@
> sh /u01/infra/apache-tomcat-8.5.43/bin/shutdown.sh
> sh /u01/infra/apache-tomcat-8.5.43/bin/startup.sh
> tail -f /u01/infra/apache-tomcat-8.5.43/logs/catalina.out 
==============================================================================================================

- 개발 서버 셋팅 에러
1. /u01/app/HSSK/webapp/HSCM 폴더를 사용하면 /u01/app/HSSK/webapp/WEB-INF/classes, /lib 폴더를 앉번 관리 사이트(4개)와
같이 사용해야 됨 ==> /u01/app/HSSK/webapp/HSCM/HSCM 사용하면 classes, /lib 폴더 인식 못함
--> 유해화학물질 MAP 시스템은 별도의 사이트로 만들어야 함(박민형 PM에게 공식적으로 요청)
==============================================================================================================

- 서버 셋팅 문제 협의
1. 김책 부대표에게 전화, 박민형 PM 면담
 1) 기존 톰캣 서버(/u01/infra/apache-tomcat-8.5.43) 1대로 안전 관련 4개의 사이트를 운용하고 있음
 ==> 유해물 Prj는 별도의 톰캣 서버 요청(김책 부대표가  처음부터 별도의 도메인 요청 했다고 함)
==============================================================================================================

- Default output foder 경로 변경
1. NoxMatRetMot Prj: 마우스 우 클릭 ==> Propterties ==> Propterties for NoxMatRetMot(새창)
 1) Default output foder: NoxMatRetMot/target/classes
==> Default output foder: NoxMatRetMot/src/main/webapp/WEB-INF/classes
=============================================================================================================

- 리눅스 폴더 권한 설정
> cd /u01/webapps
[itteam@hspngqdap1 ~]$ cd /u01/app/HSSK/webapp/HSCM/HSCM/_resource_/_theme_/NoxMatRetMot
[itteam@hspngqdap1 /u01/app/HSSK/webapp/HSCM/HSCM/_resource_/_theme_/NoxMatRetMot]$ chmod -R 777 images			
-- images의 하위 폴더, 파일에 모든 권한 부여 @@@@
[itteam@hspngqdap1 /u01/app/HSSK/webapp/HSCM/HSCM/_resource_/_theme_/NoxMatRetMot]$ ls -al
 
drwxrwxrwx 2 itteam itteam 16384 11월 12 08:35 images
============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.04.10(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 14:50 ==> 서울행(14:50 ~ 17:00): (주)이노 액티브 팀원들 차 얻어 탐(총 4명) --> 17:00 장어타운  	
									, 최종규 팀장 철수(짐 옮김, 급한 일 있을 때만 온다고 함)
									
- 현대제철 유해화학물질 MAP 구축 Prj[★]
- 로컬 서버 이름 수정  
1. NoxMatRetMot Prj ==> HSCM Prj
 1) File > Switch Workspace ==> Other: 클릭 ==> Workspace Launcher(새창)
  가. Workspace: C:\NoxMatRetMot\workspace  --> C:\HSCM\workspace 
==============================================================================================================
 
- HSCM Prj 셋팅
0. 기존 NoxMatRetMot Prj에서 HSCM Prj로 변경 
A. Nexacro 환경 설정
1. 상단 > Tools메뉴 > Options: 클릭 > Options(새창)
  1) Project
    가. General ==> Base Lib Path: C:\HSCM\workspace\HSCM\src\main\nxui\HSCM\nexacro17lib
    나. Generate ==> Generate Path: C:\HSCM\workspace\HSCM\src\main\webapp\HSCM
    다. Deploy ==> Deploy Path: 사용 안함
  2) Environment
   가. General ==> Working Folder: C:\HSCM\workspace\HSCM\src\main
  ===> Applicatin: 클릭    
---------------------------------------------------------------------------------------------------------------------------
 
- Java Build Path(기존 NoxMatRetMot Prj 소스로 HSCM Prj로 변경)
1. JRE System Library 변경
 1) eclipse ==> Properties ==> java Build Path ==> JRE System Library: 더블 클릭 ==>JRE System Library(새창)
  가. Alternate JRE --> Intalled JREs 버튼: 클릭 ==> Intalled JREs(새창) --> Edit 버튼: 클릭 ==> Intalled Definition(새창)
 나. JREs Home: C:\HSCM\eclipse(변경) --> Finish 버튼: 클릭
==> 출처: https://yongtech.tistory.com/98 [용테크의 포켓머니]
---------------------------------------------------------------------------------------------------------------------------
 
2. Maven Dependencies
 1) maven이 설치 되어 있는 경로의 conf 폴더 아래 setting.xml 파일을 열어 <localRepository>경로</localRepository> 를 수정
- / NoxMatRetMot/mavenRepository/settings.xml 파일에서 
<localRepository>C:\NoxMatRetMot\workspace\NoxMatRetMot\mavenRepository\</localRepository>
==>   <localRepository>C:\HSCM\workspace\HSCM\mavenRepository\</localRepository>
<localRepository>C:\HSCM\workspace\HSCM\mavenRepository\</localRepository>
 
 2) window -> preferences -> maven -> user Setttings 의 user Settings의 부분의 경로를 변경된 settings.xml 로 잡아준다.
user Setttings : C:\NoxMatRetMot\workspace\NoxMatRetMot\mavenRepository\settings.xml
==> user Setttings : C:\HSCM\workspace\HSCM\mavenRepository\settings.xml
 
 3) Local Reository: C:\HSCM\workspace\HSCM\mavenRepository  ---> 변경되었는 지 확인할 것 @@@
 
 4) 이클립스 재 실행 한 프로젝트를 생성하여 maven의 경로를 확인
==> 출처: https://developstory.tistory.com/9 [DevelopStory] 
 
3. Maven Active Maven Profile 변경
1) eclipse ==> HSCM: 마우스 우 클릭 ==> Properties for HSCM(새창) 
 가. Active Maven Profile: C:\HSCM\workspace\HSCM\mavenRepository
 C:\HSCM\workspace\HSCM\mavenRepository
 ==> 확인: e eclipse ==> HSCM: 마우스 우 클릭 ==> Properties for HSCM(새창) ==> Java Build Path ==> Library(탭)
  ===> Maven Dependencies: 파일들의 경로가 C:\HSCM\workspace\HSCM\mavenRepository로 변경 되었는지 확인할 것 @@@
---------------------------------------------------------------------------------------------------------------------------
 
- Server classpath 변경
1. Servers ==> 01_HSCM Server[9000]: 더블 클릭 ==> Overview(화면)
 1) Open launch configuration: 클릭 ===> Edit launch configuration properites(새창)
1. Arguments(탭) ==> VM arguments:
-Dcatalina.base="C:\HSCM\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp2" -Dcatalina.home="C:\HSCM\WAS\apache-tomcat-8.0.32" 
-Dwtp.deploy="C:\HSCM\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp2\wtpwebapps" -Djava.endorsed.dirs="C:\HSCM\WAS\apache-tomcat-8.0.32\endorsed" 
2. Classpath(탭) ==> User Entries:
 1) C:/HSCM/WAS/apache-tomcat-8.0.32/bin/bootstrap.jar
 1) C:/HSCM/WAS/apache-tomcat-8.0.32/bin/tomcat-juli.jar
==============================================================================================================
 
- 참 좋은 내과 검사 결과(원장한테 전화 옴, 백혜련 부원장: 진료 받았음)
1. 당화혈색소(A1C): 5.4%
2. 인슐린(나옴): 0.57%  ==> 인슐린이 적게 나온다고 함(정상: 1.5% 이상, 인슐린 펌프 계속 착용하라고 함)
3. 망막은 안 좋다고 함
==============================================================================================================
  
- 서울행[★]
14:50 퇴근
14:55 (주)이노 액티브 팀원들 차 얻어 탐(총 4명)
17:00 장어타운 ==> (주)이노 액티브 대표, 부대표, 팀원: 장어, 국수[맛있어서 많이 먹음] --> https://place.map.kakao.com/25607402			
18:10 뉴욕 야시장(호프집)
19:50 종료(중간에 혼자 빠져 나옴)
20:26 천왕역 3번 출국(도보로 30분 걸림)
20:50 대림역 
21:00 귀가
21:00 실내 자전거 타기: 작은 방에서 ==> [드라마] 해신 장보고, 14부 시청(핸드폰으로)
22:00 종료
23:00 취침(쇼파에서 취침, 작은 방 침대 수종이가 사용)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.04.11(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00 ==> 

- 주말[★]
05:00 기상
05:19 조식
05:30 실내 자전거 타기: 작은 방에서
06:00 종료
06:15 집출발
06:22 대림역 정류장(6411번 버스 간발의 차이로 놓침)
06:28 대림2도 주민센터 사전투표소(21대 총선 사전 투표, 1번 더불어 민주당 김민석, 정의당에 투표)
		--> 마스크 착용, 손소독제, 1회용 비밀 장갑[코로나19 때문)
06:35 대림역 정류장(6411번 버스 탑승[1,200원])
07:30 선릉역 정류장 하차
08:06 누네안과병원(주소: 서울 강남구 선릉로 404) 도착 ==> 접수 1층
08:30 2층 안과 검사
09:10 진료(김주영 원장) 
09:15 양쪽 망막 레이져 시술한 왼쪽 눈이 부분 약간 부었다고 함(망막 주사 맞을 정도는 아니라고 함) ==> 2달 후 다시 오라고 함
09:20 수납(1층) ==> 진료비: 총 49,900원 
09:30 6411번 버스 탑승(누네안과병원 정류장)
10:40 구로4동우체국.고대구로병원정문 정류장 도착
10:45 참좋은내과의원(구로, 고대구로병원 맞은편, 3층) 도착
10:30 진료(백혜련 원장), 당화혈색소 검사: 5.2%(피뽑음), 오줌 검사 --> 진료비 2만 5천원 ==> 검사 결과 3일 후 방문해서 확인
		==> 비싸고 피 뽑는게 너무 불편함
11:20 구로 약국 ==> 인슐린(노보래피드주100단위/mL) 6병 구입(손님이 많아서 많이 기다림)
11:40 종료
12:10 귀가
12:20 중식
12:50 실내 자전거 타기
13:50 종료 
14:00 인터넷 서핑
15:00 수종이 자전거 연습(아파트 내)
15:40 집출발(자전거)
15:50 대림전기조명 ==> 형광등 2개[[CITYO] FPL 컴팩트 형광 램프 36W 구입(내 방 형광등 2개 모두교체)
		 ==> 다음에는 다이소에서 필립스 형광등 구입할 것 --> https://blog.naver.com/alkwer/221529110853
16:00 다이소 대림2호점 ==> 수종 방 책꽃이 2개(4단 책꽃이, 서류꽃이)구입
16:40 귀가
16:50 수종 방 책상 만들기(작은 책상, 의자, 책꽃이, 스탠드)
17:40 집출발(자전거)
18:10 맛닭꼬 남구로점  ==> 갈릭 베이크(포장: 10,900원) 구입 
18:20 귀가
18:30 석식 
19:00 실내 자전거 타기(1시간) 
20:00 종료 
20:10 인터넷 서핑 ==> 대동초 진수종 제출 자료 작성 및 스캔
21:40 TV 시청 ==> KBS1 특파원 보고 세계는 지금 시청
22:30 취침
==============================================================================================================
 
- 대동초 진수종 제출 자료 작성 및 스캔
01. 학생 교육 환경 자료
02. 개인 정보 활용 동의서
03. 수익자부담경비 납부 방법 신청 출금 동의 안내
==> 대동초 1학년 1반 김진주 선생님에게 카카오톡으로 보냄(1학년 1반 정원 13명)
----------------------------------------------------------------------------------------------------------------------------

- 농협 통장(대동초)
1. 농협 통장: 자유저축예탁금, 계좌번호: 356-1274-9556-83, 예금주: 진태만 
==> 10만원 송금할 것(식비 추가분, 견학비 등으로 사용)   
----------------------------------------------------------------------------------------------------------------------------

- 진수종(영문, 한자) 
1. 영문명: JIN SOOJONG 
2. 한자: 진(베풀, 묵을), 수(저울눈), 종(마루): 陳銖宗
3. 주민번호: 130924-3067711
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2020.04.12(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00 ==>

- 주말2[★]
07:30 기상
08:05 조식 ==> 더블 올포유 피자 남은 거 전자레인지에 데워서 먹음
08:30 실내 자전거 타기
09:30 종료
09:00 인터넷 서핑 ==> 혈당 체크(222U, 피자먹고 혈당 높아 짐)
12:10 중식 
12:30 실내 자전거 타기
13:30 종료 
14:00 인터넷 서핑 
17:00 석식 
17:30 실내 자전거 타기 ==> [드라마] 해신 장보고, 21부 시청(핸드폰으로)
18:30 종료
18:30 인터넷 서핑
19:20 집출발 ==> 더블 올포유 피자 남은 거 가지고 옴(1인 분), 당뇨 소모성 재료(슈퍼라인-ST, 나 3cc 주사기) 3세트 가지고 옴
19:40 온수역 2번 출구 도착 ==> (주)이노 액티브에서 빌린 차 얻어 탐(총 4명), 김도현 대리(현대 에비뉴 239호) 같이 얻어 탐
20:00 서울 출발
21:06 당진 현대 애비뉴 도착
21:10 귀가
23:00 취침
==============================================================================================================

- 아동돌봄쿠폰 수령정보 변경신청
1. 기프트카드 수령 주소: 서울특별시 영등포구 도림천로 391, 101동 1806호 (대림동, 대림동문영칸타빌레아파트)
2. 지급액: 40만원 상당 = 40만원 X 인원수 1명
※ 관련 문의 : 129콜센터, 서울특별시 영등포구 대림제2동 주민센터 (02-2670-1404) , 복지로 관련 문의(02-6323-0700)
==============================================================================================================

- [강의2] 코골이 어떻게 치료할 것인가?
1. https://www.youtube.com/watch?v=CZRu42s89IE
2. 구강 장치(경증), , 양압기(중증, 합병증 예방), 수술치료
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.04.13(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==> 
 
- 현대제철 유해화학물질 MAP 구축 Prj[★] 
- resources 경로 수정
1. /innoactiveapi.js 파일에서
// 리소스 불러올 서버 주소 
const server = { 
	protocol: 'http', 
	ip: location.hostname,     // ip 수정[변경일: 2020.04.13, by 진태만] 
	port: '8080',
	app: 'HSCM',    // app 수정[변경일: 2020.04.13, by 진태만] ve',    // map Path 수정[변경일: 2020.04.13, by 진태만]
}
==============================================================================================================
 
- 맹판도면(/admin2020noxMat::noxBlindFloorPlanP.xfdl) 화면 수정
1. 도면 이미지 등록 테이블 변경 ==> 완료 @@@
 1) TB_HCM_ATTACH_FILE_02 --> TB_HCM_IMAGE로 변경 /* 시설 자료 이미지 정보 TB */  
 2) 도면 이미지 코드(BP: 맹판도면, EE: 비상대피로, MI: 물질정보, DP: 상세도면, OW: 외주 작업현황) 
==============================================================================================================
  
- 삼성 노트북 암호(비밀번호) 변경
1. DN119100022, as*s12**!  --> sd*d12**!
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2020.04.14(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:10 ==> 유해물질 Pr 오픈 전 회의(09:30 ~ 12시, 난 불참, 김책 부대표, 최종규 팀장, 김황 과장, 김종민 책임, 빅민형 PM)
							--> 김책 부대표, 김황 과장 회의 끝난 후 업체 미팅하러 퇴근, 17시(배문성 사원, 최종규 팀장 퇴근)
							, 21:26 인슐린 약 교체(246U, 19U 남음)
							 
- 현대제철 유해화학물질 MAP 구축 Prj[★] 
- 3D 소스 적용 수정
1. STS_CD_09 위치 변경
var objDoc = this.wb_NoxMat.getProperty("document");  // WebBrowser document
var objDom = objDoc.getProperty("all");
// objDom.getProperty("STS_CD_09").setProperty("value", "16"); // 상태코드_07(16: 도면에 아이콘을 삽입 요청)
objDom.getProperty("ID_FK_PARENT_09").setProperty("value", sID_CFPK_PARENT); // 아이콘 부모 시설코드
objDom.getProperty("STS_CD_09").setProperty("value", "16"); // 상태코드_07(16: 도면에 아이콘을 삽입 요청)
==============================================================================================================
 
- 작업현황 외주 팝업(/noxOutWorkStatP.xfdl) 수정 
1. Grid에서 순번 추가
<Cell edittype="normal" textAlign="center" text="expr:currow + 1"/>  <!--// 연번(순번) //-->
-----------------------------------------------------------------------------------------------------------------------------
 
- /TA11101Mapper.xml 파일에서
<select id="searchOutWorkStat" parameterType="java.util.Map" resultType="Map"> 
	/* 작업현황 외주 정보 조회  ==> [/TA11101Mapper.xml] [searchOutWorkStat()] [2020.02.24, by 진태만] */    
	SELECT  0 AS MMO /* 연번 */
				, A.WORK_GUBUN   /* 구분 */
				, A.CONST_CORP_NAME /* 공사업체명 */
				, A.AREA     /* 작업위치(지역구분) */
				, A.CONST_NAME    /* 공사명(작업명) */
				, A.CORP_SAFE_EMPNM /* 공사업체현장책임자(조장) */
				, A.CORP_WORK_NO     /* 공사업체작업인원(작업인원) */
				, (A.CONST_ETIME - A.CONST_STIME) AS WORK_TIME   /* 작업 시간(작업종료시간 - 작업시작시간) */
				, #{FCT_FACIL_GB} AS FCT_FACIL_GB_TEST     /* 공장, 설비 단위 구분 */
				, #{ID_FACILITY} AS ID_FACILITY_TEST     /* 시설코드 */
				, #{ID_PARENT_FACILITY} AS ID_PARENT_FACILITY_TEST_02     /* 부모 시설코드 */
				,  (CASE WHEN A.CONTRACT_COM_PHONE IS NOT NULL THEN  
				SUBSTR(A.CONTRACT_COM_PHONE, 0, 3) || '-'||  SUBSTR(A.CONTRACT_COM_PHONE, 4, 4)  || '-'||  SUBSTR(A.CONTRACT_COM_PHONE, 8, 4) 
				ELSE '' END) AS PHONE_NO 
	FROM SMT_CONST A  /* 안전작업허가_공사 TB */
	WHERE 1 = 1
	<if test="FCT_FACIL_GB != '' and FCT_FACIL_GB != null and FCT_FACIL_GB == 1">
	<if test="ID_FACILITY != '' and ID_FACILITY != null">
	 AND A.ID_PARENT_FACILITY = #{ID_FACILITY}   /* 시설코드[ @@ 공장일 때 부모 시설코드(공사_T) = 시설코드] */
	</if>
	</if>    
	<if test="FCT_FACIL_GB != '' and FCT_FACIL_GB != null and FCT_FACIL_GB == 2">    
	<if test="ID_PARENT_FACILITY != '' and ID_PARENT_FACILITY != null">
	 AND A.ID_FACILITY = #{ID_PARENT_FACILITY}   /* 부모 시설코드[ @@ 설비일 때 시설코드(공사_T) = 부모 시설코드] */
	</if>
	</if>
	AND ROWNUM  <![CDATA[ < ]]> 201  
</select>
==============================================================================================================
 
- 크롬 오프라인 재설치
1. ChromeStandaloneSetup.exe(버전: 81.0.4044.92) 설치
 1) 에러 발생: 오류 코드: STATUS_INVALID_IMAGE_HASH
  2) 조치: 크롬 아이콘: 마우스 우 클릭 ==> 속성(R): 클릭 ==> Chrome 속성(새창) 
    가. 바로가기(T): 탭 클릭 ==> 대상(T): "~~~~.exe"  --no-sandbox 추가 @ ---> 적용(A): 클릭 ==> 보안성 문제 발생(비추) @@@
나. 호환성: 탭 클릭 ==> 호환성 문제 해결사 실행: 클릭  ==> 강추 @@@
2. ChromeStandaloneSetup64.exe(버전: 79.0.3945.130) 설치  ==> 에러 발생
==============================================================================================================
 
- EBS 초등부 특강(진수종 회원 가입) 
0. EBS 진수종 회원 가입==> https://www.ebs.co.kr/main, tamario2/hp수*종160*1@  --> soo05008@
1. EBS 초등부 특강  ==> http://www.ebs.co.kr/schedule?channelCd=PLUS2&onor=PLUS2&date=20200324 
2. 초등1학년 학교생활적응(생활편) ==> http://primary.ebs.co.kr/course/view?courseId=10204681
 ==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2020.04.15(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:10 ==> 21대 국회의원 선거(임시 공휴일)
 
- 현대제철 유해화학물질 MAP 구축 Prj[★] 
- 부모 시설코드(ID_FK_PARENT_02) 추가 요청(3D_render에서)
1. 설비 화면으로 이동일 때 ==> 완료 @@@
/***************************************************************************
* Even   : sendContent_92
* Desc  : 92. SCREEN_CLICK 이벤트[설비 화면으로 이동]
****************************************************************************/
function sendContent_92()
{
	//alert("[/WebBrowser3D_Admin.html] [sendContent_92()] ==> [TEST_01] [Send 버튼 클릭 이벤트]" );
	 
	var sStr = "EVENT_NM=SCREEN_CLICK";    // 이벤트명: 02. SCREEN_CLICK: 화면 클릭한 위치 및 세부 사항 반환
	sStr = sStr +"&STS_CD_02="+ document.getElementById('STS_CD_02').value;    // 99. 결과코드
	sStr = sStr +"&ID_FACILITY="+ document.getElementById('ID_FACILITY').value;    // 01. 시설 코드
	sStr = sStr +"&ID_FK_PARENT_02="+ document.getElementById('ID_FK_PARENT_02').value;    // 02. 부모 시설 코드  ==> 추가 @@@
	alert("[/WebBrowser3D_Admin.html] [sendContent_92()] ==> [TEST_51] [Send_92 버튼 클릭 이벤트(설비 화면으로 이동)] [str]"+ sStr );
	 
	window.NEXACROHTML.FireUserNotify(sStr); // nexacro쪽으로 정보를 전달 처리
}
==============================================================================================================
 
- LAYER LIST 데이타 받기 ==> 완료 @@@
/***************************************************************************
 * Even   : wb_NoxMat_onusernotify
 * Desc   : wb_NoxMat  ==> MainDiscAdmin에 로드된 웹페이지에서 nexacro쪽으로 정보를 전달할 때 발생하는 이벤트(02. 3D에서 데이타 받기)
 ****************************************************************************/ 
this.wb_NoxMat_onusernotify = function(obj:nexacro.MainDiscAdmin,e:nexacro.WebUserNotifyEventInfo)
{
	if(arrEvent[1] == "LAYER_LIST_CALL")   // 이벤트명이 LAYER_LIST_CALL 이면(16. 현재 도면에 연결된 모든 레이어 리스트 반환): 
	3D 로딩 종료 후 자동 호출으로 데이터 받음
	{    
		arrRST_CD = String(arrColList[1]).split("=");   // 99. 결과코드 =로 각각 자르기
		 
		if(arrRST_CD[1] == "15")   // 99. 결과코드가 성공이면
		{   
			trace("[/MainDisc.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_16_2] [데이타 받기] [16. LAYER_LIST_CALL 이벤트 받기 
			성공( ==> 리스트뷰 재조합)............]" );
			 
			var sColList = String(arrColList[2]).split("=");   // 레이어 수 =로 각각 자르기
			 
			if(sColList[0] == "LAYER_SEARCH_CNT")   // 조회수 이면
			{ 
				var sLAYER_SEARCH_CNT = sColList[1];   // 레이어 수				 
				var sLAYER_ID; // 레이어 ID
				var sLAYER_NM; // 레이어 명 
				var nNum = 0; 
				var nRow = 0;
				var nLAYER_ID = 0;
				var nLAYER_NM = 0;
				this.ds_ListView.clearData();
				 
				for(var i=0; i < sLAYER_SEARCH_CNT; i++)
				{ 
					nLAYER_ID = nNum + 3; // 레이어 ID 순서(3, 5, 7...번?)
					nLAYER_NM = nNum + 4;  // 레이어 명 순서(4, 6, 7...번?)
					sLAYER_ID = String(arrColList[nNum+3]).split("=");  // 레이어 ID =로 각각 자르기   
					sLAYER_NM = String(arrColList[nNum+4]).split("="); // 레이어 명 =로 각각 자르기    
					trace("[/MainDisc.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_31_1] [i_번째]"+ i +"[조회수]"+ sLAYER_SEARCH_CNT 
					+"[레이어 ID 순서]"+ nLAYER_ID 					+"[레이어 명 순서]"+ nLAYER_NM +"[nNum]"+ nNum +"[LAYER_ID[i+1]]"+ 
					sLAYER_ID[1] +"[sLAYER_NM[1]]"+ sLAYER_NM[1]  );
					 
					nRow = this.ds_ListView.addRow(); // Ds Row 추가   
					this.ds_ListView.setColumn(nRow, "LAYER_ID",  sLAYER_ID[1]); // 레이어 ID
					this.ds_ListView.setColumn(nRow, "LAYER_NM", sLAYER_NM[1]); // 레이어 명
					this.ds_ListView.setColumn(nRow, "LAYER_CHK_YN", "Y"); // 레이어 체크 여부
					nNum = nNum + 2;  
				} 	// end of for() 
				trace("[/MainDisc.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_41] [ds_ListView.CNT]"+ this.ds_ListView.getRowCount() 
				+"[ds_Search.ds_ListView()] \n"+ this.ds_ListView.saveXML() ); 
			} // end of if --> 조회수 이면 
		}
	}   
};
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2020.04.16(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==> 21대 국회의원 선거 결과(여당[더블어 민주당] 180석 확보: 압승, 통합당 황교안 대표 참패 책임지고 사퇴함)
 
- 현대제철 유해화학물질 MAP 구축 Prj[★] 
- 설비 외주작업 현황 팝업(/noxOutWorkStatDmiP.xfdl) 수정 
1. 일반작업, 밀폐작업 현황 개발(Grid 추가) ==> 완료 @@@
==============================================================================================================
 
 ■■■■■■■■■■■■■■■■■■ 2020.04.17(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 00:00 ==> 출근길에 비 조금(우산), 대동초 돌봄교실 선생님한테 전화(10:30, 다음주부터 무료로 중식 제공한다 함)
								  
- 현대제철 유해화학물질 MAP 구축 Prj[★]
- 비상대피로(관리자) 화면 분석
1. 비상대피로(관리자) 화면(/noxEmgEvaRoutP.xfdl)
==============================================================================================================
 
- 이미지 파일 열어서 그리고 저장(/CompExt_Sketch.xfdl) 화면 개발  
1.  Sketch 컴포넌트 사용(자바에서 Canvas[캔버스]와 유사)
 /***************************************************************************
 * Even   : btn_save_onclick
 * Desc   : save 버튼 클릭 이벤트
 ****************************************************************************/
this.btn_save_onclick = function(obj:nexacro.Button,e:nexacro.ClickEventInfo)
{ 
	trace("[/CompExt_Sketch.xfdl] [btn_save_onclick()] ==> [TEST_01]" );
	
	var result = this.skc_sign.saveSketch();		// Sketch에 표시되는 이미지를 Base64로 인코딩 된 데이터로 value 속성에 저장 
	var skcValue = this.skc_sign.value; 
	this.skc_view.loadSketch(skcValue);
	this.ImageViewer00.set_image(skcValue);
 
	var result2 = this.skc_sign.saveSketchToFile( "img_sign_91.png", "png", 100 );  		// Sketch에 표시되는 이미지를 파일로 저장 
	==> 내문서 폴더에 저장(경로 지정 안됨), nexacro Browser에서만 사용 가능 ==> 사인처리가 되는 외부 모듈을 도입해야 함
	trace("[/CompExt_Sketch.xfdl] [btn_save_onclick()] ==> [TEST_91] [result2]"+ result2 ); 
};
==============================================================================================================
 
- 개발 서버 셋팅 ==> 완료 @@@
1. 현대 오토에버 인프라팀 송현수 책임이 가이드 해줌 ==> context는 /HSCM로 설정
==> 1개의 리눅스 서버에 2개의 톰캣(안전Prj, 유험물Prj)이 존재: context를 잘 설정해야 함
- 현대제철 유해화학물질 MAP 구축 시스템 도메인
1. 유해화학물질 MAP 구축 시스템(개발) 서버 IP: 101.1.43.39 ==> 도메인: safetymap.hyundai-steel.com
2. 유해화학물질 MAP 구축 시스템AP1(운영) 서버 IP: 101.1.43.39 ==> 도메인: safetymapdev.hyundai-steel.com
==> 운영 서버는 쓰기 권한을 박민형 PM이 실수로 신청 안 해서 다음주 월요일에 셋팅하기로 함
==> 유해화학물질 MAP 구축 시스템 개발 서버 --> http://safetymapdev.hyundai-steel.com
==============================================================================================================

- ROOT 경로 설정
2. /ROOT.xml 파일에서(/u01/infra/apache-tomcat-8.5.43_map/conf/Catalina/localhost)
<?xml version='1.0' encoding='utf-8'?>
<Context path="/"
         docBase="/u01/app/HSCM"
         reloadable="true">
</Context>
==============================================================================================================
 
- HSCM 개발 서버 URL
- 실시간 로그 확인
> tail -f  /u01/infra/apache-tomcat-8.5.43_map/logs/catalina.out

- 톰캣 서버 시작, 종료  @@@
> cd /u01/infra/apache-tomcat-8.5.43_map/bin/
> sh startup.sh
> sh /u01/infra/apache-tomcat-8.5.43_map/bin/shutdown.sh
> sh /u01/infra/apache-tomcat-8.5.43_map/bin/startup.sh
==============================================================================================================

- port 변경
1. null 
http://safetymapdev.hyundai-steel.com/HSCM/_resource_/_theme_/HSCM/innor3ds/innoactive/IDLAYOUT.InnoR3D
2. /innoactiveapi.js 파일에서
// 리소스 불러올 서버 주소
const server = {
	protocol: 'http',
	// ip: 'localhost',
	ip: location.hostname,		// ip 수정[변경일: 2020.04.13, by 진태만] 
	port: '8080', 		// ip 수정(로컬이면)[변경일: 2020.04.17, by 진태만] 
	// port: '', 		// ip 수정(로컬이 아니면: port 없앨 것)[변경일: 2020.04.17, by 진태만]  
	app: 'HSCM',			// app 수정[변경일: 2020.04.13, by 진태만] 
 
	iconPath: '_resource_/_theme_/HSCM/img',		// iconPath 수정[변경일: 2020.04.13, by 진태만] 
	// mapPath: 'resources/innor3ds/innoactive',
	// mapPath: '_resource_/_theme_/NoxMatRetMot/innor3ds',	 	// 주석 처리 // TEST @@@ ===>
	mapPath: '_resource_/_theme_/HSCM/innor3ds/innoactive',   	// map Path 수정[변경일: 2020.04.13, by 진태만]  
}
==============================================================================================================

- 시스템 불편사항 처리(배문성 사원 요청: 19시)
1. 세션종료  ==> 문제 없음(개발 서버에서 테스트하고 이상 있으면 다시 요청 바람)
7. 트리뷰 ==> 수정 완료 @@@
8.	설비정보 관리 ==> 수정 완료 @@@
9.	설비정보 관리(엑셀 양식 다름) ==> 수정 완료 @@@
10. 설비관리도구 ==> 수정 완료 @@@ 
==============================================================================================================

- 금요일 상황
18:30 배문성 사원이 시스템 불편사항.xlsx 파일 주면서 다 해놓고 퇴근하라고 함 ==> 열받아서 짜증냄
        --> 자기 둘만 매점에 머 먹으로 간다고 해서 안가고 저녁 식사도 과자로 떼움
19:10 (주)이노 액티브 김책 부대표에게 전화 ==> 왜 사전 이야기도 없이 수정 사항 주면서 퇴근 못 하게 하냐고 따짐
		, 다음주 월요일 현업 팀장에게 보고가 있다고 함[대화가 안되서 끊음
19:40 오태범 이사에게 전화 ==> 상황 들어 보더니 다음주에 (주)이노 액티브에 클레임 건다고 함
		, 모니터 철수 문제도 이야기 함(현대제철에서 모니터 철수 못하게 하고 있다고 함: 다음주에 박민형PM과 협의한다고 함)
12:00 퇴근 ==> 배문성 사원이 수정 사항 다 해놓고 퇴근하냐고 해서 열받아서 짜증냄 
12:50 숙소로 귀가 ==> 오태범 이사에게 카톡으로 오늘 상황 문자 보냄		
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.04.18(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 09:00 ~ 21:00 ==> 주말 근무, 안전Prj 팀원들 출근(10시 ~ 15시), 김황, 배문성씨 출근(20시에 서울행)
								  , [드라마 시청] 해신 장보고, 22부, 23부 시청(숙소에서 노트북으로)  
								 
- 현대제철 유해화학물질 MAP 구축 Prj[★] 
- 시스템 불편사항 처리(배문성 사원 요청)
1. 상세도면(이미지 크지 조절: 세상 띄우기)  ==> 
4.	공장/설계화면 화면전환: 시설명 DB 조회 후 추가(/MainDisc.xfdl, MainDiscAdmin.xfdl 파일 수정) ==> 수정 완료 @@@
12. 맵관리도구(/MainDiscAdmin.xfdl 파일 수정) ==> 수정 완료 
3. 세이프티 키퍼	URL 연결 ==> http://gqms.hyundai-steel.com/SheReceiveXp2.jsp?user_id=1234567 ==> 수정 완료 
var sUrl = "http://gqms.hyundai-steel.com/SheReceiveXp2.jsp?user_id="+ nexacro.getApplication().gv_global1;	// 세이프티 키퍼 URL 연결
trace("[/MainDiscAdmin.xfdl] [btn_FctSafeData_onclick()] ==> [TEST_02] [sUrl]"+ sUrl );  
system.execBrowser(sUrl);		// 전달된 URL 로 웹브라우저를 실행
==============================================================================================================

- 00. 개발 소스 서버 반영 요청 방법 작성
1. 김황 과장에게 메일로 보냄
==============================================================================================================

- 개발 소스 서버 반영 완료
1. 2020.04.18_완료(1613)
2. 개발 소스 서버 반영하는 데 3D_render가 Display 안되어서 김황 과장에게 화냄(2port 변경하라고 2번 메일 보낸데 처리 안함)
const server = { 
	protocol: 'http', 
	ip: location.hostname,		// ip 수정[변경일: 2020.04.18, by 진태만]  
}  
if(server.ip == 'localhost') server.ip =" localhost:8080";		// HOST명이 localhost이면 8080붙임[변경일: 2020.04.18, by 진태만]
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.04.19(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 09:00 ~ 18:10 ==> 15시 이후 비 조금 옴(퇴근시 우산), 안전Prj 팀원 출근(10시 ~ 16시), 
								 , [드라마 시청] 해신 장보고, 24부, 25부 시청(숙소에서 노트북으로)  

- 현대제철 유해화학물질 MAP 구축 Prj[★] 
- 시스템 불편사항 처리(배문성 사원 요청)
1. 상세도면(이미지 크지 조절: 세상 띄우기) ==> 완료 @@@
 1) 도면 전체 화면 팝업(/noxFullImageP.xfdl) 파일 생성
 2) 맹판도면 화면 팝업(공통)(/noxBlindFloorPlanP.xfdl) 파일 수정
<ImageViewer id="ImageViewer" taborder="4" left="306" top="35" right="11" bottom="58" cssclass="img_WF_PopView" 
	onclick="ImageViewer_onclick" cursor="pointer" tooltiptext="도면 전체 화면 팝업" stretch="fixaspectratio"/>
==============================================================================================================

- 개발 소스 서버 반영 완료
1. Z:\4.구현\99. Nexacro\00. 개발 소스 서버 반영 요청\2020.04.18_[완료_04.19_09.14]
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.04.20(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==> 06:09 인슐린 약 교체(268U, 22U 남음), 수종 온라인 수업(대동초 1학년). TG 이어폰 고장(오른쪽 끊기고 잡음 들림)
								   , 현업 팀장 보고 목요일로 연기(김종민 책임 자식 출산), 최종규 팀장 오전 출근해서 13시에 퇴근
										   
- 현대제철 유해화학물질 MAP 구축 Prj[★]
- 운영 서버 셋팅 ==> 완료 @@@
1. DB 테이블 생성 ==> 완료 @@@
2. /u01/app HSCM 폴더 생성 ==> 송현수 책임이 쓰기 권한 부여
3. 리눅스 폴더 권한 설정
[itteam@hspngqdap1 /u01/app/HSCM/HSCM/_resource_/_theme_/HSCM]$ chmod -R 777 images			
-- images의 하위 폴더, 파일에 모든 권한 부여 @@@@
==============================================================================================================
 
- 운영 서버 셋팅 ==>  
1. 현대 오토에버 인프라팀 송현수 책임이 가이드 해줌 ==> context는 /HSCM로 설정
==> 1개의 리눅스 서버에 2개의 톰캣(안전Prj, 유험물Prj)이 존재: context를 잘 설정해야 함
- 현대제철 유해화학물질 MAP 구축 시스템 도메인
1. 유해화학물질 MAP 구축 시스템(개발) 서버 IP: 101.1.43.39 ==> 도메인: safetymap.hyundai-steel.com
2. 유해화학물질 MAP 구축 시스템AP1(운영) 서버 IP: 101.1.43.39 ==> 도메인: safetymapdev.hyundai-steel.com
==> 유해화학물질 MAP 구축 시스템 운영 서버 --> http://safetymap.hyundai-steel.com
==============================================================================================================

- 작업현황 외주 정보 조회 수정 ==> 완료 @@@
<select id="searchOutWorkStat" parameterType="java.util.Map" resultType="Map"> 
/* 작업현황 외주 정보 조회  ==> [/TA11101Mapper.xml] [searchOutWorkStat()] [2020.02.24, by 진태만] */    
SELECT   A.AREA2_MAP_NM AS WORK_SPOT		/* 작업위치 */
			, A.WORK_GUBUN  			/* 구분 */
			, A.CONST_CORP_NAME	/* 공사업체명 */
			, A.AREA    						/* 작업위치(지역구분) */
			, A.CONST_NAME   			/* 공사명(작업명) */
			, A.CORP_SAFE_EMPNM	/* 공사업체현장책임자(조장) */
			, A.CORP_WORK_NO    		/* 공사업체작업인원(작업인원) */
			, (A.CONST_ETIME - A.CONST_STIME) AS WORK_TIME  		/* 작업 시간(작업종료시간 - 작업시작시간) */
			, A.CONST_SDATE, A.CONST_EDATE		/* 작업시작일, 작업종료일 */ 
			, (A.CONST_EDATE - A.CONST_SDATE) AS WORK_DAY  		/* 작업 기간(일)(공사종료일 - 공사시작일) */ 
			, #{FCT_FACIL_GB} AS FCT_FACIL_GB_TEST    	/* 공장, 설비 단위 구분 */
			, #{ID_FACILITY} AS ID_FACILITY_TEST    	/* 시설코드 */
			, #{ID_PARENT_FACILITY} AS ID_PARENT_FACILITY_TEST_02    	/* 부모 시설코드 */
			,  (CASE WHEN A.CONTRACT_COM_PHONE IS NOT NULL THEN  
								SUBSTR(A.CONTRACT_COM_PHONE, 0, 3) || '-'||  SUBSTR(A.CONTRACT_COM_PHONE, 4, 4)  || '-'||  
								SUBSTR(A.CONTRACT_COM_PHONE, 8, 4) 
						ELSE '' END) AS PHONE_NO 
			  , A.RMRK 	/* 비고 */ 
FROM SMT_CONST A 	/* 안전작업허가_공사 TB */
WHERE 1 = 1
	AND A.CONST_EDATE >= TO_CHAR(SYSDATE,'YYYYMMDD')    		/* 공사종료일이 오늘 날짜와 같은 거나 큰 거 조회 */ 
	<if test="FCT_FACIL_GB != '' and FCT_FACIL_GB != null and FCT_FACIL_GB == 1">
		<if test="ID_FACILITY != '' and ID_FACILITY != null">
			 AND A.ID_PARENT_FACILITY = #{ID_FACILITY}	 	/* 시설코드[ @@ 공장일 때 부모 시설코드(공사_T) = 시설코드] */
			 AND A.AREA2_MAP_CD = #{ID_FACILITY}}		 		/* 공사지역소그룹MAP명 ==> 공장 아이디(시설코드, 2) */
		</if>
	</if>   	
	<if test="FCT_FACIL_GB != '' and FCT_FACIL_GB != null and FCT_FACIL_GB == 2">   	
		<if test="ID_PARENT_FACILITY != '' and ID_PARENT_FACILITY != null">
			 AND A.ID_FACILITY = #{ID_PARENT_FACILITY}	 	/* 부모 시설코드[ @@ 설비일 때 시설코드(공사_T) = 부모 시설코드] */
			 AND A.AREA2_MAP_NM = #{ID_PARENT_FACILITY}	/* 공사지역소그룹MAP명 ==> 부모 시설코드(시설코드, 4) */
		</if>
	</if> 
</select>
==============================================================================================================
  
- 공장 정보(TB_HCM_FCT) 테이블 수정 ==> 완료 @@@
1. 공장 정보(TB_HCM_FCT) 테이블 삭제 처리
/* 공장 정보 팝업 조회 ==> [/COMFCTMapper.xml] [selectList()] [2020.02.19, by 진태만] */ 
SELECT  A.ID_PK_FACILITY AS ID_FCT,  A.NM_FACILITY AS NM_FCT
			, A.*   
FROM TB_HCM_FACILITYBASE A		/* MAP 시설 정보 TB */
WHERE A.E_FACILITYTYPE = '2'  	/* 시설의 종류(2: AREA) */
<if test="NM_FCT  != '' and NM_FCT  != null">
	AND NM_FCT LIKE '%'|| #{NM_FCT } ||'%'			 /* 공장명 */ 
 </if>
ORDER BY A.NM_FACILITY 
==============================================================================================================
 
- 설비 연결 수정==> 완료 @@@
1. 임의 시설 코드 추가
trace("[/MainDiscAdmin.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_51] [데이타 받기] [03. OBJ_INSERT_END: 설비 등록, 연결) 
이벤트 받기 성공.@@@] [02. X축]"+ sN_X +"[03. Y축]"+ sN_Y +"[04. Z축]"+ sN_Z +"[근원시설코드]"+ sID_FK_ROOT +"[설비 구분]"+ sFacilGubun );
 
if(arrEvent[1] == "OBJ_INSERT_END")	 	// 이벤트명이 03. OBJ_INSERT_END: 입력한 정보의 객체를 화면에 삽입 완료함(설비 등록, 설비 연결)
{   
	if(sColList[0] == "ID_FACILITY_IMSI")	 	// 임의 시설 코드 
	{  
		var sID_FACILITY_IMSI = sColList[1];		// 임의 시설 코드 
	}  
}
==============================================================================================================

- 현재 도면에 연결된 모든 레이어 리스트 반환 수정 ==> 완료 @@@
if(arrEvent[1] == "MAP_LOAD_CALL")	 	// 이벤트명이 MAP_LOAD_CALL 이면(16. 현재 도면에 연결된 모든 레이어 리스트 반환): 
3D 로딩 종료 후 자동 호출으로 데이터 받음 
{   
	if(sColList[0] == "ID_FACILITY_IMSI")	 	// 임의 시설 코드 
	{  
		var sID_FACILITY_IMSI = sColList[1];		// 임의 시설 코드 
	}  
}
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.04.21(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==> 운영 서버 오픈(15시)

- 현대제철 유해화학물질 MAP 구축 Prj[★]
- 운영 서버 셋팅 및 오픈 ==> 완료 @@@ 
1. 유해화학물질 MAP 구축 시스템(개발) 서버 IP: 101.1.43.39 ==> 도메인: safetymap.hyundai-steel.com
==============================================================================================================

- 설비정보 업로드 양식 수정
- 파일 다운로드
1. 설비정보(/EqupInfo.xfdl) 수정에서 설비정보 업로드 양식(200313).xlsx
2. 보안이 걸린 파일 업로드할 때
 1) 현상: nexacro (103756)> UD 8:32:30:629  [/Excel.js] [gfn_ImportOnerror()] ==> [TEST_01] [엑셀 업로드 실패] 
[e.statuscode]9901[e.errormsg]Could not create Grid Importer. [Unsupported excel format] 
/***************************************************************************
 * Even   : btn_excellExDdown_onclick
 * Desc   : 엑셀 양식 파일 다운 버튼 클릭 이벤트
 ****************************************************************************/
this.btn_excellExDdown_onclick = function(obj:nexacro.Button,e:nexacro.ClickEventInfo)
{
	trace("[/EqupInfo.xfdl] [btn_excellExDdown_onclick()] ==> [TEST_01]" );
	
	var  sFpath = "_theme_\HSCM\images\03_File";		// 파일 경로  
	var  sRfnm = "EqupInfo_excelSample.xlsx";	// 실제 파일 명
	var  sFnm = "EqupInfo_excelSample.xlsx";		// 파일 명
	
	this.gfn_FileDirectDown(sFpath, sRfnm, sFnm, "this.fn_ComMFileCallback")		// 파일 다운로드 처리
};
==============================================================================================================

- 로그인 에러 수정
1. 로그인 화면(//loginFrame.xfdl)에서 에러 창 뜸
 1) 현상:  java.sql.SQLRecoverableException: 접속 종료 (IO 오류: Connection reset)
SystemBase_HTML5.js:33 [/loginFrame.xfdl] [btn_Login_onclick()] ==> [TEST_01] [로그인 버튼 클릭]  
SystemBase_HTML5.js:33 [/Transaction.js] [gfn_Transaction()] ==> [TEST_52] [strSvcId]loginAdmin959[strSvcUrl]COM/COMLOGIN/loginAdmin
[inData]ds_Login=ds_Login[outData]gds_UserInfo=ds_User[strArg][strServiceUrl]http://safetymap.hyundai-steel.com/COM/COMLOGIN/loginAdmin.do[isSession]true
SystemBase_HTML5.js:33 [/Transaction.js] [gfn_Callback()] ==> [TEST_41] [콜백 처리] [objSvcID.svcId]loginAdmin[errorCode]-1[errorMsg]
### Error querying database.  Cause: java.sql.SQLRecoverableException: IO 오류: Connection reset
### The error may exist in file [/u01/app/HSCM/WEB-INF/classes/egovframework/sqlmap/LMIS/mybatis/COM/COMLOGINMapper.xml]
### The error may involve egovframework.COM.dao.COMLOGINMapper.selectUserAdmin-Inline
### The error occurred while setting parameters
### SQL: /* 관리자 로그인 정보 조회 ==> [/COMLOGINMapper.xml] [selectUserAdmin()] [2020.02.06, by 진태만] */          SELECT          A.ID_PFK_EMPLOYEE        
AS USERID    /* 로그인 */         , A.ID_PFK_EMPLOYEE        AS EMPID  /* 사번 */       , A.NAME_K        AS EMPNM       /* 사원명 */         
, B.PASS_WORD  AS USERPW         , A.NAME_K        AS USERNM         , B.NAME_E        AS NAME_E         , B.COM_GP       AS COM_GP        
 , A.DEPT_CD AS DEPTCD             , A.DEPT_NM AS DEPTNM           ,'1' AS PASS_OK          , '0' AS ACL_GRP_CD  
 /* 권한그룹코드(1: 관리자, 0: 사원) 설정 */         , A.E_ACCOUNTTYPE  AS ACNT_TYPE  /* 계정 종류(1:총괄, 2:일반, 0:사용자) */     
 FROM TB_HCM_ADMINACCOUNT A   /* 관리자 계정 TB */       ,  TB_GQ_CM_USERINFO B   /* 사용자정보 TB */      
 WHERE 1=1     AND A.ID_PFK_EMPLOYEE = B.EMP_NO     AND A.ID_PFK_EMPLOYEE = ?    /* 사번 */
### Cause: java.sql.SQLRecoverableException: IO 오류: Connection reset

 2) 원인: 11g JDBC 드라이버를 사용시에는 connect string을 암호화하기 위해서 /dev/random을 이용해서 40byte의 난수를 생성한 다음에 
 connect string을 암호화 한다고 합니다. 그런데 /dev/random은 변동이 적은 시스템에서는 난수 생성이 중단(block)된다는 문제점이 발생한 
 이력이 있고 ev/random의 OS level문제 때문에 시스템이 조용하면 /dev/random이용시 난수생성이 원할하지 않아서 /dev/random으로부터 
 40byte의 난수를 얻지못한 JDBC는 connect string을 암호화하지 못하고 암호화가 되지 않아서 DB접속을 못하는 현상이 발생
 
 3) 조치: /u01/infra/apache-tomcat-8.5.43_map/bin/catalina.sh 파일 수정
# 2020.04.21 JinTaeMan
export CATALINA_OPTS=" ${CATALINA_OPTS} -Djava.security.egd=file:/dev/./urandom"
 
 4) 조치2: /Transaction.js 파일에서 his.gfn_Alert("E00003") 코드를 "서버 에러가.."로 수정 
pForm.gfn_Callback = function(svcID, errorCode, errorMsg)
{
	var objSvcID = JSON.parse(svcID);
	
	// 에러 공통 처리
	if(errorCode != 0) {
		trace("[/Transaction.js] [gfn_Callback()] ==> [TEST_41] [콜백 처리] [objSvcID.svcId]"+  objSvcID.svcId 
			+"[errorCode]"+ errorCode +"[errorMsg]"+ errorMsg );
		
		if(errorCode == -1) {
			if(this.gfn_IsNull(errorMsg, "", "", "gfn_SetSessionChk")) {
				// this.gfn_Alert("E00003"); 	// 서버 에러가 발생하였습니다.  ===> 주석 처리 @@@
				this.gfn_Alert("서버 에러가 발생하였습니다.\n관리자에게 문의해주십시요."); 	// 서버 에러가 발생하였습니다.  
			} else {
				this.gfn_Alert(errorMsg, "", "", "gfn_SetSessionChk");
			}	 
		}
	} 
};
==============================================================================================================
 
- 안전 Prj HSKU 세션 문제 문의(박민형 PM)
1. SQL DB 오류로 추정됨(개발 DB와 운영 DB 같은 IP 사용) ==> /dev/random 문제
### Cause: java.sql.SQLRecoverableException: IO 오류: Connection reset
==============================================================================================================
 
- eclipse 실행 에러 
1. 현상:
4월 21, 2020 11:25:07 오전 org.apache.catalina.core.StandardContext listenerStart
심각: Exception sending context initialized event to listener instance of class org.springframework.web.context.ContextLoaderListener
org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'startupScripts' defined in file 
[C:\HSCM\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp3\wtpwebapps\HSCM\WEB-INF\classes\egovframework\spring\context-initialize.xml]: 
Invocation of init method failed; nested exception is org.springframework.jdbc.datasource.init.UncategorizedScriptException: 
Failed to execute database script; nested exception is org.springframework.jdbc.CannotGetJdbcConnectionException: Could not get JDBC Connection; 
nested exception is org.apache.commons.dbcp.SQLNestedException: Cannot create PoolableConnectionFactory 
(IO 오류: The Network Adapter could not establish the connection)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.initializeBean(AbstractAutowireCapableBeanFactory.java:1568)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.doCreateBean(AbstractAutowireCapableBeanFactory.java:540)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.createBean(AbstractAutowireCapableBeanFactory.java:476)
2. 원인: DB 에러로 추정됨(박민형 PM 말로는 DB 관리자가 Blocking  했다고 함)
==============================================================================================================

- 소스 서버 반영 완료
1. Z:\4.구현\99. Nexacro\00. 개발 소스 서버 반영 요청\2020.04.21_1353_[완료_15.41]
==============================================================================================================

- DB Safer 설치
1. [현대제철]DBSAFERAGENT_TDI_3.1.12.3_win8대응.exe
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.04.22(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 07:00 ==> 철야(07시 퇴근) ==> 숙소에서 자고 있는데 경찰과 김철 대표가 와서 깨움(개발 서버가 이상이 있다고 함)
									  
- 현대제철 유해화학물질 MAP 구축 Prj[★] 
- 아이콘 삭제 처리 ==> 완료 @@@
/***************************************************************************
 * Even   : fn_DeleteIconRst
 * Desc   :  아이콘 삭제 처리
 ****************************************************************************/ 
this.fn_DeleteIconRst = function(sID_CPK_ICON, sID_CFPK_PARENT)
{  
	var sArgs	= "ID_CPK_ICON="+ sID_CPK_ICON				/* 02. 아이콘 코드 */ 
				+" ID_CFPK_PARENT="+ sID_CFPK_PARENT;	/* 03. 아이콘 부모 시설코드 */   
	trace("[/MainDiscAdmin.xfdl] [fn_DeleteIconRst()] ==> [TEST_32] [Args]"+ sArgs );
	
	var sSvcID        = "DeleteIcon";
	var sController   = "TK/TK11004/DeleteIcon";		// 아이콘 삭제 처리
	var sInDatasets   = "";
	var sOutDatasets  = "";
	var sArgument     = sArgs;			// 파라미터로 보내기
	var sCallbackFunc = "fn_Callback";
	var bAsync        = true;

	this.gfn_Transaction(sSvcID, sController, sInDatasets, sOutDatasets, sArgument, sCallbackFunc, bAsync); 
};
==============================================================================================================

- 실행중인 액션 취소 관련 ==> 완료 @@@
<!--// 액션 취소 관련(100 취소 요청(ACTION_CANCEL)) //-->
<td>
	<input type='text' id='STS_CD_40' value=''>
</td>
 1. 요청시에 STS_CD_40에 100의 값을 입력 해 주시면, 현재 진행중인 명령 취소가 시작
 2. 이 명령의 대상은 ICON_INSERT_CALL, ICON_DELETE_CALL, OBJ_INSERT_CALL에만 해당 됩니다. OBJ_MOVE는 대상이 안됨
==============================================================================================================
 
- [Oracle] getConnection 지연 문제
1. 박민형PM에게 메일로 보고, 오태범 이사에게 전화로 보고 ==> 오토에버에서 해결할 문제라고 함
==============================================================================================================

- securerandom.source 수정 요청
1. /usr/lib/jvm/java-1.8.0-openjdk-1.8.0.222.b10-1.el7_7.x86_64/jre/lib/security/java.security 파일에서
# securerandom.source=file:/dev/random
# 2020.04.22 JinTaeMan 
securerandom.source=file:///dev/urandom
==> 인프라팀 송현수 책임에게 java.security  파일 변경 메일 보냄
==============================================================================================================

- 소스 서버 반영 완료
1. Z:\4.구현\99. Nexacro\00. 개발 소스 서버 반영 요청\2020.04.21_2148_[완료_04.22_07.25]
==============================================================================================================

- eclipse 에러(로컬에서)
1. 현상: 서버 재시작 하면 없어짐
java.sql.SQLRecoverableException: 소켓에서 읽을 데이터가 없습니다
	at oracle.jdbc.driver.T4CMAREngine.unmarshalUB1(T4CMAREngine.java:1157)
2. 원인: DB Safer가 끊어지면 나는 현상으로 추정됨
3. 조치: eclipse 로컬 서버 재시작
==============================================================================================================

- [현대 제철] 위험물 Prj 철야(0시, 사업장)
1. 04.22(수) 9시 (주)이노 액티브 김철 부대표와 최종규 팀장 방문 ==> 내일 현업 팀장 보고(에러 수정하라고 함)
2. 04.23(목) 5시 에러 거의 수정 완료 ==> 최종규 팀장이 퇴근하고 4시간 자고 9시에 출근하라고 해서 열받음
3. 04.23(목) 7시 퇴근
4. 04.23(목) 8시 취침
5. 04.23(목) 11시 30분 숙소에 경철과 김철 부대표가 와서 깨움(김철 부대표가 경찰에 신고 함)
5. 04.23(목) 11시 50분 출근(배문성 사원이 차가지고 와서 태워줌)
5. 04.23(목) 12시 30분 중식(배문성 사원, 최종규 팀장)
5. 04.23(목) 14시 출근(에러 잡고 개발 서버 안정화 시킴)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.04.23(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 12:40 ~ 18:00 ==> 11:50 배문성 사원 차, 12:30 중식(전라도 정식 부페, 최종규 팀장, 배문성 사원)
								 , 맹판도면 화면 에러 수정(13시, 개발서버 에러가 남), 현대제철 유해화학물질 MAP 구축 Pr 현업 팀장 보고(16시)
								, 회식(18:30 ~ 20:40, 생삽겹[아리수 식당, 이주단지], 김철 부대표, 최종규 팀장, 김황 과장, 배문성 사원)

- 현대제철 유해화학물질 MAP 구축 Prj[★] 
- 메인 화면 제목 변경(/HSCM.xadl 파일에서)
objApp.MainFrame.set_titletext(objApp.MainFrame.titletext +" - 로컬(웹)");	 // Frame 제목
objApp.MainFrame.set_titletext(objApp.MainFrame.titletext +"(개발S)");  	 // Frame 제목: HSCM - 개발 서버, HSCM(개발S) 
objApp.MainFrame.set_titletext(objApp.MainFrame.titletext +" - 개발 서버");   // Frame 제목
==============================================================================================================

- [Oracle] getConnection 지연 문제 조치
1. 송현수 책임이 개발 서버에 java.security 파일 수정 후 tomcat 서버들 재기동 완료했다고 문자 보내옴
==> 운영 서버에도 처리 요청 메일 보냄
==============================================================================================================

- 현대제철 유해화학물질 MAP 구축 Pr 현업 팀장 보고(16시)
1. 운영 서버에 현업(김종민 책임)이 데이타를 생성하고 테스트 못 했다고 함(다른 결함, 추가 요구 사항 못 도출해냄)
==> 정상적으로 4월에 철수한다고 함
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.04.24(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 14:20 ==> 서울행(14:20 ~ 16:20): (주)이노 액티브 팀원들 차 얻어 탐(총 2명) --> 16:00 천왕역 2번 출구 --> 16:20 귀가
									
- 현대제철 유해화학물질 MAP 구축 Prj[★]
- 추가 요구 수정 작업 ==> 완료 @@@
1. 설비정보(/admin2020noxMat::EqupInfo.xfdl) 화면 수정
 1) 취급물질 A~C 콤보 박스에  "[삭제]" 표시 제거
2. 체 화면(관리자) (/admin2020noxMat::MainDiscAdmin.xfdl) 화면 수정
 1) 설비화면에서 작업현황 (외주) Grid에서 UI를 접었을때 확장 버튼이 따라오지 않음 
 2) 설비화면에서 삭제, 취소 버튼 기능 추가
3. 작업현황(외주) 설비 팝업(/admin2020noxMat::noxOutWorkStatDmiP.xfdl) 화면 수정
 1) 설비단 화면에서 이미지 등록, 삭제 버튼 기능 추가
==============================================================================================================

- 서울행
16:20 귀가
17:00 집출발(자전거)
17:20 다이소 대림2호점 ==> EARMAC 알미늄 이어폰(오픈형 타입, 흰색, 5천원), IRIVER 세미 오픈형 이어폰(검은색, 5천원) 구입
17:20 엘마트
17:30 귀가
18:00 석식
18:30 실내 자전거 타기(1시간)  ==> [드라마] 해신 장보고, 26부 시청(핸드폰으로)
19:30 종료
20:00 인터넷 서핑 
21:00 집출발(자전거)
21:20 다이소 대림2호점 ==> 보우맥스 망간 건전지(R6) 8P, 일반 견출지(23*23mm) (20장): 수종 학용품용
		, 전기 절연 테이프 2P(19mm*10m) 구입
21:30 귀가
21:30 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.04.25(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00 ==> 

- 주말[★]
07:30 기상
08:10 조식
08:30 실내 자전거 타기: 작은 방에서
09:30 종료
10:00 인터넷 서핑 ==> 사랑의 불시착 정리 --> https://www.youtube.com/watch?v=MRXvIddWt2E
12:10 중식 
12:30 실내 자전거 타기
13:30 종료
13:30 루옌 놀러감
14:00 인터넷 서핑
13:30 수종 방에 있는 갤럭시 탭에 e학습터 설치 ==> 수종이 국어 과목 시청
15:00 집출발(자전거, 수종이도 자전거 가지고 감)
15:10 수종이 자전거 연습(보라매 공원)
16:40 보라매 공원 앞에서 자전거 도로에서 무단으로 걷는 아줌마 피하러나 자전거타고 넘어짐(무릎까짐)
16:50 다이소 대림2호점 ==> 수종 사탕 사 먹음
17:20 귀가
17:40 집출발(자전거)
17:50 맛닭꼬 남구로점 ==> 갈릭 베이크(포장: 10,900원) 구입 
18:10 귀가
18:20 석식 
19:00 실내 자전거 타기(1시간) 
20:00 종료 
20:10 TV 시청 ==> 수종이랑 같이 코난(만화 영화) 시청 
21:30 취침
23:00 루옌 귀가(친구 같이 자고 감)
==============================================================================================================

- 01. e학습터 회원 가입[2020.04.24(금)]
1. e학습터 진수종 회원 가입 ==> https://cls1.edunet.net, tamario2/hp수*종160*1@
==============================================================================================================

- 아이핀 인증 기간 연장(i-pin)[2020.04.25(토)]
1. 발급기관: 한국신용평가정보 ==> https://www.siren24.com ==> tamario / hp수*16*1@ --> 2차 비밀번호: hp수*16*1
2. 인증 기간: 2021년 4월 25일
========================================================================================================= 

- 한화손해보험 갱신 통보
1. 무배당 한아름 행복 플러스 종합보험1404(실손 보험)
2. 보험 기간: 2014.0512 ~ 2071.05.12, 납입기나: 20년납
3. 자동 갱신 기간: 2020년 05월
4. 보험료
 1) 갱신 전 보험료: 52,250원
 2) 갱신 후 보험료: 66,179원 
========================================================================================================= 

■■■■■■■■■■■■■■■■■■ 2020.04.26(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00 ==>

- 주말2[★]
07:30 기상
08:05 조식
08:30 실내 자전거 타기 ==> [드라마] 해신 장보고, 30부 시청(핸드폰으로)
09:30 종료
09:00 인터넷 서핑 ==> [EBS 명의] 살을 빼야하는 진짜 이유--> https://www.youtube.com/watch?v=EA358CrHn9A
12:00 김도현 대리와 전화 ==> 오이사한테 지방 파견 못하겠다고 철수 요청: 오이사가 허락해서 현대제철 당진공장에서 철수 했다고 함.
12:10 중식
12:30 실내 자전거 타기
13:30 종료
13:50 루옌(수종) 언니집에 놀러 감
14:00 인터넷 서핑 
14:10 루옌 친구랑 같이 염색
15:10 은영이 엄마(루옌 아는 언니) 방문 ==> 이사가는 1달 동안 우리집에서 같이 생활하자고 요청함(허락 함)
17:00 석식
17:30 실내 자전거 타기 ==> [드라마] 해신 장보고, 33부 시청(핸드폰으로)
18:30 종료
18:30 인터넷 서핑
19:20 집출발
19:40 온수역 2번 출구 도착 ==> (주)이노 액티브에서 빌린 차 얻어 탐(최종규 팀장외 3명)
20:00 서울 출발
21:06 당진 현대 애비뉴 도착
21:10 귀가
23:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.04.27(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==> 06:12 인슐린 약 교체(267U, 22U 남음), 오이사 야드Prj 투입 제안(10:10), 김도현 대리 잠시 방문(PDA 개발)
								, 배문성 사원이 물질 정보 파일 업로드 팝업(/noxUploadFileMatP.xfdl) 자기 마음대로 수정해달라고 하고 또 다시
								수정 해달라고 해서 열 받아서 소리지름, 20:10), 현대 에비뉴 관리비 납부(21:30)
 
- 현대제철 유해화학물질 MAP 구축 Prj[★]
- 전체 화면(관리자) (/MainDiscAdmin.xfdl) 화면 수정
1. 맹판도면(/admin2020noxMat::noxBlindFloorPlanP.xfdl) 화면 수정
 1) 물질정보 팝업 수정 ==> 완료 @@@
/* 물질정보(for 시설코드) 조회 ==> [/TK11002Mapper.xml] [selectMatterInfo4Facill()] [2020.04.27, by 진태만] */  
SELECT A.ID_FACILITY 
			, (SELECT RFNM		/* 도면 파일명 */ 
			  FROM TB_HCM_ATTACH_FILE 		/* 파일 첨부 정보 TB */ 
				WHERE 1=1 AND REQGB = F.MATTER_ID AND REQNO = '2' AND DEL_YN = 'N'  AND USE_YN = 'Y') AS FP_IMAGE_NM          
				/* 도면 파일명 */  
			, ('theme://images/01_IMG/' || F.MATTER_ID || '/' || 
			(SELECT RFNM		/* 도면 파일명 */ 
			  FROM TB_HCM_ATTACH_FILE 		/* 파일 첨부 정보 TB */ 
			WHERE 1=1 AND REQGB = F.MATTER_ID AND REQNO = '2' AND DEL_YN = 'N'  AND USE_YN = 'Y')
			) AS FP_IMAGE_PATH   /* 도면 이미지 경로 */ 
			, '1' AS REQ_GB_CD		/* 의뢰구분코드(1: 물질 정보, 2: 도면 이미지 정보) */  
FROM TB_HCM_EQUIPMENTBASE A 				/* 설비 기본 정보 TB */
		, TB_HCM_FACILITYBASE B 						/* MAP 시설 정보 TB(공장 정보) */
		, TB_HCM_EQUIPMENTTYPE C 					/* 설비 구분 정보 TB */ 
		, TB_HCM_HCFACILITYINSPECTION D 		/* 설비 검사 정보 TB */
		, TB_HCM_EQUIPMENTHC E						/* 설비 취급물질 정보 TB */
		, TB_HCM_HAZARDCHEMICAL F 				/* 유해화학물질 정보 TB */ 
		, TB_HCM_LICENSE G								/* 설비 인허가 정보 TB */ 
WHERE 1=1 
	AND A.ID_FCT = B.ID_PK_FACILITY
	AND A.STR_CPK_TYPE = C.STR_CPK_TYPE  
	AND A.ID_FACILITY = D.ID_FACILITY
	AND A.ID_FACILITY = E.ID_FACILITY(+)  
	AND E.MATTER_ID = F.MATTER_ID(+)
	AND A.ID_FACILITY = G.ID_FACILITY(+)
	AND A.DEL_YN = 'N'   		/* 삭제여부 */
	AND B.DEL_YN = 'N'   		/* 삭제여부 */
	AND C.DEL_YN = 'N'   		/* 삭제여부 */
	AND D.DEL_YN = 'N'   		/* 삭제여부 */
	AND E.DEL_YN(+) = 'N'   	/* 삭제여부 */
	AND F.DEL_YN(+) = 'N' 		/* 삭제여부 */
	AND G.DEL_YN(+) = 'N'		/* 삭제여부 */
	AND A.ID_FACILITY = #{ID_FACILITY} 		 /* 시설코드 */  
;
==============================================================================================================
 
- OBJ_LOOK_CALL 이벤트 기능 추가	==> 완료 @@@
1. 트리뷰 Grid 더블 클릭, 화면 이동
if(arrEvent[1] == "SCREEN_CLICK" || arrEvent[1] == "OBJ_LOOK_CALL")	 	// 이벤트명이 SCREEN_CLICK 이면(02. SCREEN_CLICK: 
화면 클릭한 위치 및 세부 사항 반환)(화면 이동)
	// 이벤트명이 OBJ_LOOK_CALL 이면(04. OBJ_LOOK_CALL: 입력한 객체를 바라보도록 요청)(화면 이동) ==> OBJ_LOOK_CALL 
	이벤트 추가[변경일: 2020.04.27, by 진태만]
{ 
	trace("[/MainDisc.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_12] [arrRST_CD[0]]"+ arrRST_CD[0] +"[arrRST_CD[1]"+ arrRST_CD[1] );
}
==============================================================================================================
 
- [Oracle] getConnection 지연 문제 계속 발생
1. 송현수 책임이 주말에 조치를 했다는데 같은 현상이 계속 발생함.
 [?2020-?04-?25 오전 8:25] 송현수 책임/인프라엔지니어 철강기술시스템팀: 
시스템 초기 접속 시 느려지는 현상과 관련하여 주말에 서버쪽 설정을 변경해서 적용해 놓았습니다.
월요일 출근하신 후에 문제가 재발하는지 점검 부탁드립니다. 
제가 적용한건 DNS 역질의 예방입니다. 
2. 추가 조치: (/context-datasource.xml 파일에서)
<!--// oracle DB(02. 유해화학물질 MAP 구축 Prj 개발 DB) 설정 추가[변경일: 2020.01.28, by 진태만] //-->
<bean id="dataSourceSpied" class="org.apache.commons.dbcp.BasicDataSource" destroy-method="close"> 
	<property name="driverClassName"  value="oracle.jdbc.driver.OracleDriver" />
	<property name="url" value="jdbc:oracle:thin:@10.216.133.53:1521:MASDB" />
	<property name="username" value="USRSHD"/>
	<property name="password" value="shdusrdb"/>
	<!-- 특정 시간마다 validationQuery를 실행 셋팅 시작  3600000 : 1시간--> 
	<property name="validationQuery" value="select 1 from dual"/> 
	<property name="testWhileIdle" value="true"/> 
	<property name="timeBetweenEvictionRunsMillis" value="1800000"/> 
	<!-- 특정 시간마다 validationQuery를 실행 셋팅 끝 -->
</bean> 
==============================================================================================================

- eclipse 에러(로컬에서)
1. 현상:
심각: Exception sending context initialized event to listener instance of class org.springframework.web.context.ContextLoaderListener
org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'startupScripts' defined in file 
[C:\HSCM\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp3\wtpwebapps\HSCM\WEB-INF\classes\egovframework\spring\context-initialize.xml]: 
Invocation of init method failed; nested exception is org.springframework.jdbc.datasource.init.UncategorizedScriptException: 
Failed to execute database script; nested exception is org.springframework.jdbc.CannotGetJdbcConnectionException: Could not get JDBC Connection; 
nested exception is org.apache.commons.dbcp.SQLNestedException: Cannot create PoolableConnectionFactory (IO 오류: The Network Adapter could not establish the connection)
 at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.initializeBean(AbstractAutowireCapableBeanFactory.java:1568)
2. 원인: DB Safer가 연결이 안 되었거나 끊어져서 나는 현상으로 추정됨
3. 조치: eclipse 로컬 서버 재시작
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.04.28(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==> 현대제철 식당 식권 반납(15시, 40장 216,000원(장 당: 5,400원), 현금 받음]), 중식(12:30, 정식, 전라도 식당, 이노 액티브
								대표, 부대표, 김황 과장, 배문성 사원, 김민형 부장), (주)이노 액티브 배문성 사원한테 식권 2장 얻음(내일까지 근무 조건)
								, (주)이노 액티브 노트북 반출하고 철수함(17시)

- 현대제철 유해화학물질 MAP 구축 Prj[★]
- 전체 화면(관리자) (/MainDiscAdmin.xfdl) 화면 수정
1. UI하단리스트 공장별 연동 ==> 완료 @@@ 
2. 일람표 공장별 연동
==> 그룹코드(NOX1001: PSM, NOX1002: 가스, NOX1003: 유독물, NOX1004: 위험물)
==============================================================================================================

- 전체 화면(관리자) (/MainDiscAdmin.xfdl) 화면 수정
1. 설비정보 삭제, 취소 처리(아이콘/설비정보 동일하게 삭제, 취소 안됨) ==> 완료 @@@ 
==============================================================================================================

- 현대제철 유해화학물질 MAP 구축 Prj 인수인계(14:00 ~ 15:00)
1. (주) EHN Network 김민형 부장이 인수인계 받음(UI단 만 개발 경험이 있어 부담스러워 함)
==============================================================================================================
 
■ safety map
    - 개발 : 10.10.180.237:8081
    - 운영 : 10.10.221.235:8081 
ping safetymap.hyundai-steel.com
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.04.29(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==> 3, 4월 지출결의서 확인(출력, 744,060원 청구), Prj 철수(17:40, 출입증 반납)
								, 서울행(17:40  ~ 21:00): (주)이노 액티브 팀원들 차 얻어 탐(총2명) --> 20:30 천왕역 2번 출구 --> 20:50 귀가
 
- 현대제철 유해화학물질 MAP 구축 Prj[★]
- 전체 화면(관리자) (/MainDiscAdmin.xfdl) 화면 수정
2. 일람표 공장별 연동 ==> 완료 @@@ 
==> 그룹코드(NOX1001: PSM, NOX1002: 가스, NOX1003: 유독물, NOX1004: 위험물)
/* 유해화학물질 일람 정보 조회 ==> [/TA11101Mapper.xml] [searchNoxMatIlam()] [2020.02.24, by 진태만] */
 /* 유해화학물질 일람 정보 조회(물질ID별 조회) */
SELECT B.GROUP_CD
	, A.MATTER_ID	AS 물질ID, A.MATTER_NM AS 물질명	
	--,COUNT(A.MATTER_ID) AS NOT_MAT_CNT  	/* 맵핑 그룹에 있고 설비정보(관리자 화면)에서 취급물질 A, B, C인 수량 */
FROM TB_HCM_HAZARDCHEMICAL A /* 유해화학물질 정보 TB */
	, TB_HCM_HAZARDCHEMICAL_GROUP B
	, TB_HCM_HAZARDCHEMICAL_GROUPMAP C  /* 유해화학물질 그룹 맵핑 TB */ 
	, TB_HCM_EQUIPMENTBASE AA 				/* 설비 기본 정보 TB @@@@ */
	, TB_HCM_FACILITYBASE BB 						/* MAP 시설 정보 TB(공장 정보) */
	, TB_HCM_EQUIPMENTTYPE CC					/* 설비 구분 정보 TB */ 
	, TB_HCM_HCFACILITYINSPECTION DD 		/* 설비 검사 정보 TB */
	, TB_HCM_EQUIPMENTHC EE						/* 설비 취급물질 정보 TB */
	, TB_HCM_LICENSE GG									/* 설비 인허가 정보 TB */ 
WHERE 1 = 1
	AND A.MATTER_ID = C.MATTER_ID
	AND B.GROUP_CD = C.GROUP_CD 
	AND A.MATTER_ID = EE.MATTER_ID
	AND AA.ID_FCT = BB.ID_PK_FACILITY		/* 설비 기본 정보 TB @@@@ */
	AND AA.STR_CPK_TYPE = CC.STR_CPK_TYPE  
	AND AA.ID_FACILITY = DD.ID_FACILITY
	AND AA.ID_FACILITY = EE.ID_FACILITY  
	AND AA.ID_FACILITY = GG.ID_FACILITY(+)
	AND A.USE_YN = 'Y'		/* 사용여부 */  
	AND A.DEL_YN = 'N' 		/* 삭제여부 */
	AND B.DEL_YN = 'N' 		/* 삭제여부 */
	AND C.DEL_YN = 'N'		/* 삭제여부 */  
	AND AA.ID_FCT = 'H15'			/* 1. 공장일 때: 공장 코드 = 시설코드] */   	/* 공장코드(H14: 1제강공장, H15: 2제강공장, H26: 1냉연공장) */
	AND B.GROUP_CD = 'NOX1001'	 	/* 그룹코드(NOX1001: PSM, NOX1002: 가스, NOX1003: 유독물, NOX1004: 위험물) */
	-- GROUP BY B.GROUP_CD   	/* 그룹코드(NOX1001: PSM, NOX1002: 가스, NOX1003: 유독물, NOX1004: 위험물) */
; 
==============================================================================================================

- 부모 시설코드(ID_PARENT_FACILITY), 시설코드(ID_FACILITY) 필드 삭제됨
/* 작업현황 외주 정보 조회 ==> [/TA11101Mapper.xml] [searchOutWorkStat()] [2020.02.24, by 진태만] */    
SELECT  A.AREA2_MAP_NM AS WORK_SPOT		/* 작업위치 */
			, A.ID_FACILITY, A.WORK_GUBUN  			/* 구분 */ 
FROM SMT_CONST A 	/* 안전작업허가_공사 TB */
WHERE 1 = 1
	AND A.ID_PARENT_FACILITY = 'H01'	 /* 1. 공장일 때 부모 시설코드(공사_T) = 시설코드] */  
	AND A.ID_FACILITY = 'H01  	/* 2. 설비일 때 시설코드(공사_T) = 부모 시설코드] */
;
==============================================================================================================
 
- 소스 서버 반영 완료
1. 개발 서버만 반영(10:30)
2. 운영 서버만 반영(13:48)
==============================================================================================================

- 운영 서버 3D 실행 에러(전체 화면(관리자) (/MainDiscAdmin.xfdl) 화면에서
(anonymous) @ InnoIndex.jsp:964
drawer.js:271 Uncaught TypeError: Failed to execute 'drawImage' on 'CanvasRenderingContext2D': The provided value is not 
of type '(CSSImageValue or HTMLImageElement or SVGImageElement or HTMLVideoElement or HTMLCanvasElement 
or ImageBitmap or OffscreenCanvas)'
    at DesignFunction (drawer.js:271)
==============================================================================================================

- SSO 설정
1. jsso 처리(/pom.xml 파일에서)
<!-- nsso-agent-15.jar 추가(SSO연동) ==> 2020.04.27, by 진태만  -->
<dependency>
  <groupId>jsso</groupId>
  <artifactId>nsso-agent-15</artifactId>
  <version>5.0.1-SNAPSHOT</version>
</dependency>

2. maven ==> UPDATE 처리 후 nsso-agent-15.jar 파일을 nsso-agent-15-5.0.1-SNAPSHOT.jar 한 후 아래 폴더에 붙여넣기 처리
C:\HSCM\workspace\HSCM\mavenRepository\jsso\nsso-agent-15\5.0.1-SNAPSHOT\nsso-agent-15-5.0.1-SNAPSHOT.jar

3. 로컬 로그인 테스트(C:\HSCM\workspace\HSCM\src\main\webapp\HSCM\sample.jsp 파일에서)
try
{
	System.out.println("[/sample.jsp] ==> [TEST_03]" );
	
	AuthCheck auth = new AuthCheck(request, response);	// 인증객체생성 및 인증확인
	
	AuthStatus status = auth.checkLogon(); 		// 인증확인
}	
==============================================================================================================
 
- [현대 제철] 위험물 Prj 철수(17:40, 당진)
07:00 출근
10:30 개발 서버 반영
11:00 박민형 PM 면답(출입증 반납)
12:10 중식(배문성 사원)
13:48 운영 서버 반영
14:00 상황 종료(엑셀에 나와 있는 수정 작업 모두 마무리 함)
14:10 eclipse에서 SSO 환경 셋팅
16:00 (주)이노 액티브 배문성 사원이 모니터 반출 때문에 16시까지 지체 --> 종료 했다고 전화 옴
17:30 eclipse에서 SSO 환경 셋팅하느라 17:30분에 철수(박민형 PM에게 eclipse 환경 세팅 원격 지원 해준다고 약속하고 철수 함) 
17:40 당진 출발: (주)이노 액티브 팀원들 차 얻어 탐(총2명) 
20:40 천왕역 2번 출구(차 많이 막힘)
21:00 귀가
21:10 석식
21:40 실내 자전거 타기(1시간) ==> [드라마 시청] 해신 장보고, 35부 시청
22:40 종료
23:30 취침
==============================================================================================================
   
■■■■■■■■■■■■■■■■■■ 2020.04.30(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00 ==> 석가탄신일(공휴일)

- 석가탄신일[★]
07:00 기상
08:05 조식
08:30 실내 자전거 타기: 작은 방에서
09:30 종료
10:00 인터넷 서핑 ==>
12:10 중식
12:30 실내 자전거 타기
12:50 루옌, 수종 한강에 놀러 감
13:30 종료 
14:00 인터넷 서핑
18:20 석식 
19:00 실내 자전거 타기(1시간) 
20:00 종료 
20:10 인터넷 서핑
20:50 루옌, 수종 귀가(루옌 친구랑 같이 옴) 
21:00 은영이, 은영이 엄마 방문(자고 감)
22:00 가계부 월말 결산
23:00 취침(3명 우리집에서 자고 감)
============================================================================================================== 

- VPN 접속 방법 실패 원인 분석
1. 현상: https://hdsteel-bcpvpn.hyundai.com/my.policy 연결....
장치 또는 리소스(hdsteel-bcpvpn.hyundai.com)가 포트 "https"을(를) 통한 연결을 수락하도록 설정되지 않았습니다. 검색됨 검색됨 
네트워크 관리자에게 문의하십시오. 완료 
hdsteel-bcpvpn.hyundai.com이(가) 연결을 거부했습니다.
2.원인:
https://blog.naver.com/oyabung9464/221643549711
----------------------------------------------------------------------------------------------------------------------------

- VPN 접속 방법
1. 개인 PC(TAMA, DJCDN119100022) 정보
 1) IP 주소: 10.216.139.55, 1521666, asas1212! ==> 원격: MSTSC
2. 내 PC 원격접속 허용
 1) 내 PC 우클릭하여 속성 클릭 > 원격설정 클릭 > 이 컴퓨터에 대한 원격 지원 허용 체크 후 고급 클릭하여 최대 시간 허용
 (주말 감안 72시간 ==> 29일로 설정)
 2) 타 PC에서 원격접속 되는지 확인할것
 3) 퇴근시 PC ON 상태 유지 
3 집에서 확인  
 1) https://hdsteel-bcpvpn.hyundai.com/my.policy 
============================================================================================================

- Microsoft(마이크로소프트) 홈페이지 로그인 변경
https://www.microsoft.com, tamario@naver.com/해*수종16*1@
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+----------------------------------------------------// End //----------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
 
