

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+----------------------------------------------// Memo(2018.07) //----------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
 
 
■■■■■■■■■■■■■■■■■■ 2018.07.01(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==>

▦ 축구
06:30 기상
06:35 조식(빵)
06:50 대림역 정류장(6411번 버스)
07:30 학동역 정류장 도착(비 조금 옴)
07:45 신구초교 도착
07:50 신사 조기회 회원들과 인사(영민이형, 영익이형, 병규형(회장), 정욱이형(총무))
09:00 게임(센터 백, 비 많이 옴): 1쿼터, 정홍이 만남, 승렬이형(감독)
10:30 게임2(윙 백): 1쿼터
10:50 종료
11:30 중식(한식당): 술 조금 먹음
15:30 종료
16:00 귀가
16:30 낮잠
19:00 석식
21:00 TV 시청
23:00 TV 월드컵 시청(스페인 1(1):1(4) 러시아)
01:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.07.02(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 21:00 ==> 예산행(05:43 ~ 07:35, 영등포역 -> 삽교역), 중식(국밥, 두꺼비 식당: 개발팀 -> 이상탁 차장이 쏨)

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- FSP 서버 License 정책
1. FSP 로컬 서버 License: 6개월 마다 소프트잼 홈페이지에서 다운로드 ==> http://www.softzam.com:8080/download.html
==> tamario12 / hp수*16*1@
2. FSP 개발 서버 License: 2개월 마다 소프트잼 홈페이지에서 Q&A 게시판에서 요청글 작성 ==> http://www.softzam.com:8080/board.html
3. 황부장이 일요일 출근해서 FSP 로컬 서버 License 만료 되었다고 온 동네 소문 냄
--------------------------------------------------------------------------------------------------------------------------------

 1) FSP 개발 서버 License 요청 글
안녕하세요 군 현대제철 AP 품질관리 시스템 구축 Pr 진태만 입니다. 
개발 라이센스 요청합니다.
IP: 10.10.180.91 
이메일 :tamario@hyunai-steel.com, tamario@daum.net
--------------------------------------------------------------------------------------------------------------------------------

- FSP 서버 License 만료시 에러 내용
uxs (4648): UD 8:12:27:256  [/commLogin.xfdl][fn_callback()] ==> [콜백_S][nErrorCode]-999999999[sErrorMsg]FSPManager#nDefaultAction[sSvcId]find
==============================================================================================================

- 삭제한 테이블 백업 
01. TB_CM_MENUINFO: 메뉴정보 TB ==> HSSCM100: 메뉴 정보 TB -> 삭제 처리 완료 @@@  TEST @@ ==>  
02. TB_CM_MYMENUINFO: 마이메뉴 ==> HSSCM110: 마이메뉴 정보 TB -> 삭제 처리 완료 @@@
 ==> AAA_TEST_SELECT  --> TB_FSP_TEST TB  
--------------------------------------------------------------------------------------------------------------------------------

- 삭제할 테이블 백업 
01. TB_CM_ACLGRPUIINFO:권한그룹화면 정보 TB ==> HSSCR120: 업구그룹별 화면권한정보 TB 
-> "업구그룹별 권한현황" 화면 개발자가 개발 완료 후 삭제 해야 함  
02. TB_CM_LOGINLOG: 로그인이력 TB ==> HSSCU210: LOGIN시도 정보 TB 
-> "기간별 로그인 현황" 화면 개발자가 개발 완료 후 삭제 해야 함 
===========================================================================================================

- 메뉴등록(/SY_MenuInput.xadl) 변경[메뉴 수정]
1. 신차개발(NC) > 프로젝트관리
 1) 기술사양 검토 등록:NC_TechSpecReviReqtInput.xfdl	 
==> 기술사양 검토의뢰 등록: NC_TechSpecReviReqtInput.xfdl 
==> 기술사양 검토완료 등록: NC_TechSpecReviCmplInput.xfdl 
==> 기술사양 수주확정 등록: NC_TechSpecOordFixInput.xfdl 
==============================================================================================================

- 메뉴 정보 TB UNIQUE INDEX 변경
1. 이전: CREATE UNIQUE INDEX QMSMGR.HSSCM100_PK
ON QMSMGR.HSSCM100 (BIZ_GP,MENU_ID,MENU_NM)  ==> HSSCM100 테이블에서
2. 수정: CREATE UNIQUE INDEX QMSMGR.HSSCM100_PK
ON QMSMGR.HSSCM100 (MENU_ID)
==============================================================================================================

- NULL 값을 변환하기
1.  NVL2
 1) SELECT NVL2(COMM, 0, 1) FROM EMP; 
==> COMM이 NULL 값이면 0을 반환 아닐시 1을 반환
2. DECODE 
SELECT DECODE(COMM, NULL, '널', 300, '삼백', '조건없음') FROM EMP;  
==> COMM 이 NULL 이면 널 300 이면 삼백 앞의 조건에 속하지 않다면 조건없음이 출력된다. 
==============================================================================================================

- 유비 리포트 UbiService 기동 방법 [Windows 계열] 
1. 윈도우 서비스에 등록
 1) svcregist.bat UbiService를 윈도우 서비스에 등록하는 파일입니다. 윈도우 서비스에서 UbiService를 기동하고 종료 할 수 있습니다.
  가. C:\Users\hsaqmad1sa\Downloads\UbiService\bin> svcregist.bat install
2. UbiService 서버 기동 등록
 1) svcregist.bat UbiService를 윈도우 서비스에 등록하는 파일입니다. 윈도우 서비스에서 UbiService를 기동하고 종료 할 수 있습니다. 
  가. C:\Users\hsaqmad1sa\Downloads\UbiService\bin> echo off 
 2) svcregist.bat로 윈도우 서비스에 등록이 되어있다면 서비스시작을 함으로서 기동됩니다.
  가. 작업관리자  > 서비스 Tab> UbiService: 마우스 우 클릭 > 서비스 열기(V): 클릭  ==> UbiService: 실행중(상태), 자동(시작 유형)
==============================================================================================================
  
- /CM_BscCdMngm.xfdl 파일 삭제
Get content for 'CM_BscCdMngm.xfdl' failed.
svn: E200005: 'D:\QMS\APQMS\workspace\APQMS\apqms\CM\CM_BscCdMngm.xfdl' is not under version control
--------------------------------------------------------------------------------------------------------------------------------

- svn 파일 삭제시 missing 에러
1. 현상: svn 파일 삭제 commit을 하면 missing이라고 표시 되고 삭제가 안됨
1. 현상1: 이클립스/Eclipse SVN 업로드중 ...is already under version control 에러 발생(delete라고 되어 있어야 삭제 성공함)
2. 원인: 이미 다른 SVN Repositorie에 연결되어 있거나 SVN에 파일이 꼬여 있는 경우가 있을 수 있습니다. 
3. 조치: SVN 연결을 다시 해줘야 함
 1) 해당 프로젝트에서 우클릭 후 Team -> Disconnect... 를 선택 합니다. Disconnect...를 선택하면 아래와 같은 팝업창이 발생 합니다
 2) Disconnect 팝업창이 뜨면 'Also delete the SVN meta information from the file system' 옵션을 선택 합니다. 시스템이 가지고 
 있는 SVN meta 데이터를 지우면 현재 연결되어있거나 문제가 있는 SVN meta 데이터가 지워 지게 됩니다. 
 3) 그리고 다시 SVN에 연결해서 업로드를 하게 되면 문제 없이 SVN에 올라가는 모습을 확인 할 수 있습니다.
3. 조치2: SVN Repository 에서 CM_CstrPopup.xfdl 파일 삭제 시
 1) https://10.10.180.91:8443/svn/Repository > APQMS > apqms > CM > CM_CstrPopup.xfdl 파일: 마우스 우 클릭 => Delete
 2) Synchronize에서 APQMS > apqms > CM > CM_CstrPopup.xfdl 파일: 마우스 우 클릭 => Override and Update...
http://arabiannight.tistory.com/entry/이클립스Eclipse-SVN-업로드중-is-already-under-version-control-에러-발생
==============================================================================================================

- CM 파일 삭제 처리
CM_CstrMngm: 거래처관리
CM_BscCdMngm: 기초코드 관리
CM_ItemMngm: 품목 관리
CM_BscCdMngm: 기초코드 관리
CM_TskGrpLyMenuAuthMngm: 업무그룹권한
CM_UsrtMngm: 사용자관리
CM_Mngm.xfdl
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.07.03(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 21:20 ==>  여상무님 몸이 안 좋아 일찍 퇴근(18시)

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- SVN 설정 방법
71. SVN 설정 방법(AP QMS).pptx 파일 작성
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.07.04(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:00 ==> 노동 가요(화물연대 차), 주간보고서 작성, 오이사 방문(고객 원성 극심: PL로 개발 참여, 이차장 철수)

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- 파일 업로드(/fsp_fileUpload.xfdl)에서 한글 파일 업로드 후 안 보이는 현상
this.FileUpload_onsuccess = function(obj:FileUpload,  e:nexacro.FileUploadEventInfo)
{ 
	trace("[/fsp_fileUpload.xfdl][FileUpload_onsuccess()] ==> [성공][TEST_01]" );
	  
	this.edt_FileName.set_value(e.datasets[0].getColumn(0,"FILE_NAME"));	// 파일명
	this.edt_FileNameServer.set_value(e.datasets[0].getColumn(0,"FILE_NAME"));	// 파일 서버  
	this.sUrl = application.services["svcurl"].url +"FileUploader?mode=download&subDir="+ encodeURI(this.edt_SubDir.value);  
	this.sUrl +="&fileName="+ encodeURI(this.edt_FileNameServer.value.replace(/\+/,"%2B")); // 파일명
	  
	this.ImageViewer.set_image(this.sUrl);  	// 이미지 뷰어 셋팅
	 
	this.fn_save();	// 저장
}
-------------------------------------------------------------------------------------------------

1. 조치: 톰캣 서버에서 URIEncoding="UTF-8" 처리
- /server.xml 파일에서
<Connector connectionTimeout="20000" port="80" protocol="HTTP/1.1" redirectPort="8443" URIEncoding="UTF-8"/>
<Connector port="8009" protocol="AJP/1.3" redirectPort="8443" URIEncoding="UTF-8"/>
==============================================================================================================

- 회식
18:00 퇴근
18:30 석식(고기: 살찐 진수네, 오이사, 여상무, 황부장, 염차장, 이차장, 김대리) --> 이정훈 차장 중가에 서울 간다고 감
		==> 오이사가 고객이 프로젝트에 문제 많다고 이야기 함(내가 개발  PL 한다고 했는데 거절함: 황부장 퇴사 부담)
			, 이정훈 차장 업무 개발 내가 해야 함 
21:00 호프(투다리) ==> 황부장에 내가 안 도와 줬다고 해서 한바탕함
22:30 종료
23:00 귀가 
23:10 취침
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.07.05(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 22:00 ==> 택시타고 퇴근할 것(처음, 5천원)

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- 강관 수입검사(/QI_SteelPipeImpInsp.xfdl) 수정
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2018.07.06(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 19:40 ==> 서울행(20:12 ~ 22:07, 삽교역 -> 영등포역), 화물연대 집회 3일째(염차장이 방송 차에 가서 노동 가요 끔)

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- 강관 수입검사(/QI_SteelPipeImpInsp.xfdl) 수정
==============================================================================================================
  
/* 강관 수입검사 Master 조회 ==> [/qi/QI_SteelPipeImpInsp_S01.xml] [2018.05.31, by LEEJH] */    	-- ==> ds_list
SELECT A.IQC_NO AS 검사번호, A.IQC_DT AS 검사일자, A.IQC_TIME AS 검사시간, FN_CM_GET_USER_NAME(A.IQC_ENO) AS 검사자 
			, A.IN_FAC AS 공장코드, B.FAC_NM  AS 공장명--, A.LINE_CD AS 호기코드, A.MODEL_CD AS 차종코드,  A.SHIFT_CD AS 근무조  
			, (SELECT M.LINE_NM FROM HSBCC400 M JOIN HSBCC300 N ON M.FAC_CD = N.FAC_CD
			WHERE 1 = 1  AND M.FAC_CD = '4200' AND M.LINE_CD  = A.LINE_CD) AS 호기명
			, ( SELECT DECODE(MAIN_CD, 'QM480', SUB_CD || ' - ' || TITLE, TITLE) AS TITLEM FROM HSBCA200
			WHERE	MAIN_CD = 'QM480'  AND USE_YN = 'Y' AND BASE_CD = A.MODEL_CD) AS 차종명 
			, A.IQC_DT, A.INSP_BC, A.IQC_SQ, A.IN_FAC, B.FAC_NM
			, A.LINE_CD, C.LINE_NM, A.IQC_TIME, A.SHIFT_CD, A.IQC_ENO 
			, FN_CM_GET_USER_NAME(A.IQC_ENO) IQC_ENM, A.RMKS
			, A.EXAM_UID, FN_CM_GET_USER_NAME(A.EXAM_UID) EXAM_UNM, A.EXAM_DT 
			, A.EXAM_RET, A.CONF_UID, FN_CM_GET_USER_NAME(A.CONF_UID) CONF_UNM
			, A.CONF_DT, A.CONF_RET, A.CONF_NO, A.FCE_GUB, A.MODEL_CD
			, A.CID, FN_CM_GET_USER_NAME(A.CID) CID_NM, TO_CHAR(TO_DATE(A.CDT)) CDT
			, A.MID, FN_CM_GET_USER_NAME(A.MID) MID_NM, TO_CHAR(TO_DATE(A.MDT)) MDT 
			, FN_CM_GET_APPROVE_STATUS(A.CONF_NO) AS CONF_STATE
FROM HSQMM140 A 	 -- 강관수입검사 정보 TB
LEFT JOIN HSBCC300 B ON A.IN_FAC = B.FAC_CD	-- 공장정보 TB
    LEFT JOIN HSBCC400 C ON A.IN_FAC = C.FAC_CD AND A.LINE_CD = C.LINE_CD	-- 호기정보 TB
    LEFT JOIN HSCMA100 D ON A.CONF_NO = D.WORK_FLOW_NO	-- 결재FLOW헤더정보 TB
WHERE 1 = 1
-- AND A.IQC_DT BETWEEN '20180605' AND '20180705'
ORDER BY A.IQC_NO DESC
 ;
==============================================================================================================

- 그리드 dataset 값 변경 후 타입 변경
this.ds_listMaster.setColumn(this.ds_listMaster.rowposition, "IQC_NO", v_iqcNo);

this.ds_listMaster.set_enableevent(false); 	// 이벤트를 발생시킬지 여부를 설정하는 속성 
this.ds_listMaster.set_updatecontrol(false);	 // RowType을 자동으로 변경할 것인지 여부를 설정하는 속성
var bSucc = this.ds_listMaster.setRowType(this.ds_listMaster.rowposition, Dataset.ROWTYPE_UPDATE);   // 데이터셋에서 지정된 행(row)의 타입 설정
var sRowSts = this.ds_listMaster.getRowType(this.ds_listMaster.rowposition);  // 데이터셋에서 지정된 행(row)의 타입을 구하는 메소드
this.ds_listMaster.set_updatecontrol(true);	  // RowType을 자동으로 변경할 것인지 여부를 설정하는 속성
this.ds_listMaster.set_enableevent(true); 	// 이벤트를 발생시킬지 여부를 설정하는 속성 
trace("[/QI_SteelPipeImpInsp.xfdl][fn_saveall()]==> [저장 처리][TEST_04][ds_listMaster.rowposition]"+ this.ds_listMaster.rowposition
+"[v_iqcNo]"+ v_iqcNo +"[bSucc]"+ bSucc +"[sRowSts]"+ sRowSts );
============================================================================================================== 	

- 공통 버튼이 '등록', '저장' 툴팁 변경
1. 등록  ==> 신규 검사기준 제정
2. 저장  ==> 입력 또는 변경사항 확인/저장
this.fn_drawButton = function(objId, sText, right)
{
	//trace("[/frmWork.xfdl][fn_drawButton()]==> [실제로 화면에 버튼 생성][TEST_01][objId]"+ objId +"[sText]"+ sText +"[right]"+ right );

	if(objId == "btn_add")	// 공통 버튼이 '등록' 이면
	{  
		objButton.set_tooltiptext("신규 검사기준 제정");  	// 버튼 툴팁 
	}
		else if(objId == "btn_save")	// 공통 버튼이 '저장' 이면
	{  
		objButton.set_tooltiptext("입력 또는 변경사항 확인/저장");  	// 버튼 툴팁 
	}
	else
	{
		objButton.set_tooltiptext(sText);  	// 버튼 툴팁
	}
}
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.07.07(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 19:40 ==>  

- 주말
08:00 기상
08:35 조식(라면)
11:00 집출발(수종)
11:10 대림역 정류장(6511번 버스: 수종)
12:00 서울대 정류장 도착
12:10 관악문화도서관 1층 
13:00 관악문화도서관 식당(정식 부페[4천 5백원]: 수종[2천원]) 
13:40 관악문화도서관 3층
14:10 종료
15:00 대림역 정류장 도착  
15:30 구로리 공원(수종: 비 조금 옴)
17:00 귀가
17:30 낮잠
16:30 기상
16:40 이마트 구로점(수종: 피자 구입)
19:30 석식(피자)
23:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 22018.07.08(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==> 날씨 흐림

▦ 축구
09:00 기상
09:30 조식(빵)
10:00 Nexacro 작업(현대제철 addEventHandler 에러 처리)
12:00 중식(짜파게티)
14:30 집출발 
15:40 대림운동장 
16:00 게임(은혜교회팀: 어울림 ==> 4 쿼터 뜀): 햇빛 남, 체력 보통
18:00 종료
18:10 플러스마트(수박, 아이스크림 30개)
18:40 귀가
19:00 다이소(치약 구입)
19:20 엘마트(우유, 빵 구입)
20:00 귀가
20:30 석식
21:00 TV 시청
24:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.07.09(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 09:10 ~ 00:00 ==> 예산행(05:43 ~ 07:35, 영등포역 -> 삽교역): 오줌 눈다고 삽교역에서 못내림, 홍성역에서 돌아옴, 철야
								 , 화물연대 노조 철수(18시)

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- 강관 수입검사(/QI_SteelPipeImpInsp.xfdl) 수정
==============================================================================================================

- FSP 서버 저장 에러
1. 현상:
2018/07/09 16:03:44,SYSTEM_ERROR,[SUIA_00007]It failed to execute SQL[SQL_ID:
INSERT_SQL_ID:qi:QI_SteelPipeImpInsp_I01
UPDATE_SQL_ID:qi:QI_SteelPipeImpInsp_U01
DELETE_SQL_ID:
KEY_SQL_ID:0
KEY_INCREMENT:0
SAVE_FLAG_COLUMN:
TYPE:S].
2018/07/09 16:03:44,SYSTEM_ERROR,[SUIA_00003]It failed to execute (action:nDefaultAction/execute)(client:all).
com.sz.service.sqlmap.SqlMapRecordNotFoundException: 0
2. 원인:
this.fn_saveall = function()
{
	trace("[/QI_SteelPipeImpInsp.xfdl][fn_saveall()]==> [저장 처리][TEST_01]" ); 

	this.fsp_addSave( "qi:QI_SteelPipeImpInsp_I01"	// insert[강관수입검사 정보 등록]	 
					, "qi:QI_SteelPipeImpInsp_U01"	// update[강관수입검사 정보 수정]
					// , "qi:QI_SteelPipeImpInsp_D01"	// delete[강관수입검사 정보 삭제]   ==> 주석 처리 --> 주석 풀어야 함
					, ""							// flag column 명
					, ""							// key sql id
					, 0								// key 증가 값
					, ""
					, 0
					, "B"							// 실행타입
					);
}
==============================================================================================================

- FSP 서버 조회 에러
1. 현상:
2018/07/12 16:44:13,SYSTEM_ERROR,[SUIA_00007]It failed to execute SQL[SQL_ID:hsteel/test:TEST_S01
INSERT_SQL_ID:
UPDATE_SQL_ID:
DELETE_SQL_ID:
KEY_SQL_ID:
KEY_INCREMENT:0
SAVE_FLAG_COLUMN:
TYPE:N].
2018/07/12 16:44:13,SYSTEM_ERROR,[SUIA_00003]It failed to execute (action:nDefaultAction/execute)(client:all).
com.sz.service.sqlmap.SqlMapRecordNotFoundException: hsteel/test:TEST_S01
2. 원인: fsp_addSearch() 조회에서 hsteel/test:TEST_S01를 인식 못 함
3. 조치: fsp_addSearch() 조회에서 hsteel/test/TEST_S01로 수정할 것 
this.btn_search_onclick = function() 
{ 
	trace("[/excelExport_sample.xfdl][fn_search_onclick()] ==> [조회][TEST_01]" ); 
 
	this.fsp_clear();	// [FSP 서버] fsp clear(Dataset의 데이터 삭제)
 
	// this.fsp_addSearch("hsteel/test:TEST_S01", false);	// [FSP 서버] 조회를 위해 SQLMAP 정보 추가(TEST 조회)
	this.fsp_addSearch("hsteel/test/TEST_S01", false);	// [FSP 서버] 조회를 위해 SQLMAP 정보 추가(TEST 조회)
	trace("[/excelExport_sample.xfdl][fn_search_onclick()]==> [TEST_41][ds_cond,_CNT]"+ this.ds_cond.getRowCount() 
	+"[ds_cond.saveXML()]  \n"+ this.ds_cond.saveXML() );  	 

	this.fsp_callService(	// [FSP 서버] 서버 호출
		""					// Action 명(without java)
		,""
		,"ds_cond=ds_cond"	// inDs
		,"ds_list=ds_list"	// outDs
		,""	// args
		,"fn_callback"		// 콜백 함수 명
		, false				// error시 callback 호출 여부 
		, false				// "처리 중입니다."라는 창 표시 여부
		, false				// 서버와의 통신 방식으로 동기식으로 처리할지 여부(true: 동기, false: 비동기)	
		, "sid_find"		// 서비스 요청 아이디(콜백 함수에서 사용 가능)
	);	
} 
==============================================================================================================
 
- 세션 타임 아웃: 60분
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.07.10(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 00:00 ~ 20:00 ==> 

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- 강관 수입검사(/QI_SteelPipeImpInsp.xfdl) 수정 ==> 완료
==============================================================================================================

- 운영 서버 셋팅
1. localhost 분석
==============================================================================================================

- localhost 처리(/server.xml에서)
1. 톰캣은 기본적으로 server.xml 에서 <Host> 항목의 webapp 설정을 기본으로 한다.
 1) 이것은 상대경로 이므로 [Tomcat 설치디렉토리]/webapps 를 기본 어플리케이션 베이스디렉토리가 된다.
 2) appBase 디렉토리가 설정되면 URL 상의 기본웹루트는 [appBase]/ROOT/ 에서 부터 시작한다.
<Host name="localhost" appBase="webapps" ....>
==> <Host appBase="webapps" autoDeploy="true" name="localhost" unpackWARs="true">
 3) 만일 <Context path=.... docBase=....> 에서 path 는 URL상의 주소가 되고 docBase 는 어플리케이션의 서버상 위치가 된다. 
만일 docBase가 상대경로면 appBase 부터의 상대경로가 되며, 절대경로로 설정되면 서버의 절대경로가 된다.
<Context path="/" docBase="/web" .... /> 
 4) 위와 같이 설정되어 있다면, null 는  "/web/test.jsp" 를 출력하게 된다.
==> http://egloos.zum.com/playgame/v/287965 
==============================================================================================================

- 액세스가 거부되었습니다
java.io.FileNotFoundException: D:\QMS\APQMS\workspace\APQMS\upload\N\A (액세스가 거부되었습니다)
	at java.io.FileInputStream.open(Native Method)
	at java.io.FileInputStream.<init>(FileInputStream.java:120)
	at com.sz.service.ui.xplatform.DefaultHttpFileManagerService.download(Unknown Source)
=============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.07.11(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 17:00 ==> 주간보고서 작성, 오이사 방문(개발 딜레이: 황부장 개발 PL 박탈, 내가 사실상 PL로 개발 참여), 정전(17시)

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- 운영 서버 셋팅
1. localhost 분석
==============================================================================================================

- Tomcat8_FSP(개발 서버) ==> \Tomcat\conf
- protocol="HTTP/1.1"
<Connector connectionTimeout="20000" port="80" protocol="HTTP/1.1" redirectPort="8443" URIEncoding="UTF-8"/>
<!--// protocol="HTTP/1.1" // -->

- protocol="AJP/1.3"
 <Connector port="8009" protocol="AJP/1.3" redirectPort="8443" URIEncoding="UTF-8"/>
 <!--// protocol="AJP/1.3" // -->

- protocol="org.apache.coyote.http11.Http11Protocol" 
<Connector port="443" protocol="org.apache.coyote.http11.Http11Protocol" 
	   SSLEnabled="true"
           maxThreads="150" scheme="https" secure="true"
	   keystoreFile="D:\QMS\Tomcat\SSL_KEYSTORE\star_hyundai-steel_com.jks" 
	   keystorePass="hdsteel1" 
	   clientAuth="false" 
	   SSLVerifyClient="optional"
	   SSLProtocol="TLS" 
	   URIEncoding="UTF-8"
           ciphers="TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256,TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA
		   ,TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384,TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA,TLS_ECDHE_RSA_WITH_RC4_128_SHA
		   ,TLS_RSA_WITH_AES_128_CBC_SHA256,TLS_RSA_WITH_AES_128_CBC_SHA,TLS_RSA_WITH_AES_256_CBC_SHA256
		   ,TLS_RSA_WITH_AES_256_CBC_SHA,SSL_RSA_WITH_RC4_128_SHA"
	   />
==============================================================================================================

- Tomcat8_FSP(운영 서버(FSP에서 설치)) ==> \Tomcat\conf
1. /server.xml 에서(Tomcat\conf)
- protocol="HTTP/1.1"
<Connector port="8000" protocol="HTTP/1.1"  connectionTimeout="20000"   redirectPort="8443" URIEncoding="UTF-8"/>

<Host name="localhost"  appBase="webapps" unpackWARs="true" autoDeploy="true">  
</Host>

2. /ROOT.xml 에서(Tomcat\conf\Catalina\localhost)
<Context crossContext="true" docBase="d:/QMS/APQMS/" path="/" reloadable="true">  
</Context> 
===> http://10.10.221.91:8000/test.jsp  --> D:\QMS\APQMS\test.jsp
==============================================================================================================
 
- Tomcat8_FSP(운영 서버[41. 생산 품질 모니터링 시스템(:80]) ==> ASIS
1. /server.xml 에서(Tomcat\conf)
- protocol="HTTP/1.1"
<Connector port="80" protocol="HTTP/1.1"  connectionTimeout="20000"   redirectPort="8443" URIEncoding="UTF-8"/>

<Host name="localhost"  appBase="webapps" unpackWARs="true" autoDeploy="true">  
</Host>

2. /ROOT.xml 에서(Tomcat\conf\Catalina\localhost)
<Context crossContext="true" docBase="d:/QMS/APQMS/" path="/" reloadable="true">  
</Context> 
===> http://10.10.221.91/mon/  --> D:\QMS\APQMS\test.jsp
------------------------------------------------------------------------------------------------ 

- Tomcat8_FSP(운영 서버[41. 생산 품질 모니터링 시스템(:8080]) ==> TOBE
1. /server.xml 에서(Tomcat\conf)
- protocol="HTTP/1.1"
<Connector port="8080" protocol="HTTP/1.1"  connectionTimeout="20000"   redirectPort="8443" URIEncoding="UTF-8"/>

<Host name="localhost"  appBase="webapps" unpackWARs="true" autoDeploy="true">  
</Host>

2. /ROOT.xml 에서(Tomcat\conf\Catalina\localhost)
<Context crossContext="true" docBase="d:/QMS/APQMS/" path="/" reloadable="true">  
</Context> 
===> http://10.10.221.91:8080/mon/  --> http://10.10.221.91:8080/mon/index.jsp  ==> D:\Tomcat\webapps\mon
==============================================================================================================

-Tomcat8_FSP(https와 9443 포트) 사용
1. <Connector port="443" protocol="org.apache.coyote.http11.Http11Protocol" ...> 
https://apqms.hyundai-steel.com:9443/ 
D:/QMS/APQMS/workspace/APQMS/WebContent/APQMS/

- Tomcat8_FSP(9443 포트) 사용
1. <Connector port="8443" protocol="org.apache.coyote.http11.Http11Protocol" ...> 주석 처리 해야 함
http://apqms.hyundai-steel.com:9443/ 
D:/QMS/APQMS/workspace/APQMS/WebContent/APQMS/

https://apqms.hyundai-steel.com/  ==> apqms.hyundai-steel.com에서 연결을 거부했습니다. --> ERR_CONNECTION_REFUSED
https://apqms.hyundai-steel.com:9443/  ==> 사이트에 보안 연결할 수 없음 --> ERR_SSL_PROTOCOL_ERROR
==============================================================================================================

- 개발 서버 메모리 에러 발생
1. 현상:
java.lang.OutOfMemoryError: Java heap space
	at java.util.Arrays.copyOf(Arrays.java:2882)
	at java.lang.AbstractStringBuilder.expandCapacity(AbstractStringBuilder.java:100)
	at java.lang.AbstractStringBuilder.append(AbstractStringBuilder.java:390)
2. 원인: 개발 서버의 메모리(RAM) 용량이 8GB여서 많은 사용자가 동시에 여러 작업을 하면 서버가 다운됨.
3. 조치: eclipse 단에서 -Xmx256m(이클립스가 사용하는 최대 Heap 메모리 크기)을 -Xmx1024m로 변경
==> 근본적인 해결책이 아님. 개발 서버의 메모리(RAM) 용량을 올리든게 서버를 변경해야 함.
--------------------------------------------------------------------------------------------------------------------------------

- Xms1024m
이클립스가 사용하는 최대 Heap 메모리 크기, 당연히 최소는 최대크기와 같을 수 있으나 더 클 수는 없다. 이 설정을 통하여 이클립스 
자원 능력치를 최대로 끌어 낼 수 있으나 자신의 컴퓨터의 메모리를 모두 차지한다면 이클립스 외의 다른 작업 을 병행할 경우 많이 
버벅거릴 것이다. 일반적으로 가용메모리의 4분의 1을 최소, 최대 Heap 메모리로 설정하여 사용한다. 
==> 개발 서버의 메모리(RAM) 용량이 8GB에서는 -Xmx1024m가 적당함
==============================================================================================================

[Eclipse] 이클립스 - 실행 성능 개선 최적화 방법
https://www.google.co.kr/search?newwindow=1&hl=ko&q=이클립스 메모리 최적화&ved=0ahUKEwjM_om-kJbcAhVGUbwKHQhPDrgQsKwBCEgoATAC&biw=1904&bih=928
==============================================================================================================
 
- 현대제철 1공장 정전 사태
17:10 현대제철 1공장에 갑자기 전기가 나감
17:30 석식(현대제철 1공장 식당)
18:00 1층 휴게실에서 기다림
18:40 이상탁 차장, 여상무님 1공장에 교육 하러감(21시까지)
20:10 20시에 전기가 온다고 했는데 안옴
20:10 퇴근(김대리, 강과장과 같이 걸어서 퇴근)
20:40 귀가(숙소)
21:30 TV 시청(대우 에어컨에서 물이 떨어짐) ==> 오이사에게 문자로 숙소 옮긴다고 허락 받음
23:00 숙소 이사 시작(휴먼스 빌 406호[현관문 비밀번호[1234(1234*)로 변경함] --> 하늘 채 303호[LG 에어컨, 열대야 모드로 설정하고 취침])
23:30 현관문 도어락 비밀번호 설정(문 열고 등록 누르고 비밀번호(*5*8) 누르고 등록 누르면 소리남)
         --> 현관문 비밀번호: *5*8*(5자리), 1층 출입문 비밀번호: #7890#(6자리)
00:20 숙소 이사 완료(총 4번 왔다 갔다 함)
00:50 짐정리
02:00 취침(현대제철 1공장 정전 사태 22시쯤에 복귀 되었다고 함)
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.07.12(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 22:00 ==> 조식 안함(회의 때문, 컵라면 얻어 먹음),  이상탁 차장, 여상무님 울산 공장 교육(10:40 ~ )

- 현대제철 AP 품질관리 시스템 구축 Prj [★]  
- 운영 서버  Tomcat_v8.0에 SSL 설치
- Tomcat8_FSP(운영 서버) ==> ASIS --> http://apqms.hyundai-steel.com:8000/
1. /server.xml 에서(Tomcat\conf)
- protocol="HTTP/1.1"
<Connector port="8000" protocol="HTTP/1.1"  connectionTimeout="20000"   redirectPort="8443" URIEncoding="UTF-8"/> 	<!--// protocol="HTTP/1.1" //-->

2. /ROOT.xml 에서(Tomcat\conf\Catalina\localhost)
<Context crossContext="true" docBase="d:/QMS/APQMS/" path="/" reloadable="true">  
</Context> 
===> http://10.10.221.91:8000/test.jsp  --> D:\QMS\APQMS\test.jsp
------------------------------------------------------------------------------------------------ 

- Tomcat8_FSP(운영 서버) ==> TOBE --> server_http_80.xml 설정
1. /server.xml 에서(Tomcat\conf)
- protocol="HTTP/1.1"
<Connector port="80" protocol="HTTP/1.1"  connectionTimeout="20000"   redirectPort="8443" URIEncoding="UTF-8"/> 	
<!--// protocol="HTTP/1.1" //-->
 
2. /ROOT.xml 에서(Tomcat\conf\Catalina\localhost)
<Context crossContext="true" docBase="D:/QMS/APQMS/workspace/APQMS/WebContent/" path="/" reloadable="true">  
</Context> 
===> http://apqms.hyundai-steel.com/	 -->  D:\QMS\APQMS\workspace\APQMS\WebContent\index.jsp	
------------------------------------------------------------------------------------------------ 

- Tomcat8_FSP(운영 서버) ==> TOBE --> server_https_80.xml 설정
1. /server.xml 에서(Tomcat\conf)
- protocol="HTTP/1.1"
<Connector port="80" protocol="HTTP/1.1"  connectionTimeout="20000"   redirectPort="8443" URIEncoding="UTF-8"/> 	
<!--// protocol="HTTP/1.1" //-->
 
<!--// 추가[ protocol="org.apache.coyote.http11.Http11Protocol(SSL(https) port)]: 2018.07.11 by 진태만 //-->
<Connector port="443" protocol="org.apache.coyote.http11.Http11Protocol" 
   SSLEnabled="true"
	   maxThreads="150" scheme="https" secure="true"
   keystoreFile="D:\QMS\Tomcat\SSL_KEYSTORE\star_hyundai-steel_com.jks" 
   keystorePass="hdsteel1" 
   clientAuth="false" 
   SSLVerifyClient="optional"
   SSLProtocol="TLS" 
   URIEncoding="UTF-8"
	   ciphers="TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256,TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA,TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384
	   ,TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA,TLS_ECDHE_RSA_WITH_RC4_128_SHA,TLS_RSA_WITH_AES_128_CBC_SHA256
	   ,TLS_RSA_WITH_AES_128_CBC_SHA,TLS_RSA_WITH_AES_256_CBC_SHA256,TLS_RSA_WITH_AES_256_CBC_SHA,SSL_RSA_WITH_RC4_128_SHA"
/>

2. /ROOT.xml 에서(Tomcat\conf\Catalina\localhost)
<Context crossContext="true" docBase="D:/QMS/APQMS/workspace/APQMS/WebContent/" path="/" reloadable="true">  
</Context> 
===> https://apqms.hyundai-steel.com/ -->  D:\QMS\APQMS\workspace\APQMS\WebContent\index.jsp
==============================================================================================================

- Tomcat] http접속을 https로 리다이렉트 시키기	 
톰캣서버 구동 시 http접속을 강제로 https로 돌리는 방법입니다.
톰캣 기본은 http를 8080으로 접속하고 https를 8443으로 접속하게 설정되어 있지만, 예제처럼 80으로 되어있는 것을 443으로 
리다이렉트 시키도록 해야겠지요.
http://hwangji.kr/sub/dev_leader/link/os/default.aspx?NHBBSID=NHBoardWebTip&NHBBSIDX=81
<Connector port="8080" protocol="HTTP/1.1"   connectionTimeout="20000"   URIEncoding="UTF-8"  redirectPort="8443" />
 
- 톰캣 server.xml 용어 설명
https://m.blog.naver.com/PostView.nhn?blogId=gy801110&logNo=147258849&proxyReferer=https://www.google.co.kr/
 
- 아파치 톰캣 연동 실시간으로 콘솔 화면을 보며 디버깅
/tomcat/logs/tail -f catalina.out  ==> D:\QMS\Tomcat\logs
==============================================================================================================
 
- 41. 생산 품질 모니터링 시스템 port 변경(이상탁 차장 요청)
1. http://10.10.221.91/mon/ ==> http://10.10.221.91:8080/mon/
==============================================================================================================

- 강관 수입검사(/QI_SteelPipeImpInsp.xfdl) 수정
1. 에러 내용: div 넓이 안 늘어 남
2. 원인: div 넓이를 지정하면 안됨(width="722"를 제거할 것)
 1) sta_line_01에도 width="722"를 제거할 것, sta_line_02에도 width="722"를 제거할 것
<Div id="div_detail" taborder="15" text="Edit" left="532" top="25" height="101" width="722" scrollbars="none" cssclass="div_WF_DetailBg" right="6">
<Layouts>
	<Layout>
	  <Static id="sta_line_01" taborder="18" cssclass="sta_WF_DetailLabel02" left="3" top="3" height="29" right="4"  width="722" />
	  <Static id="Static06" taborder="2" text="검사일자" cssclass="sta_WF_DetailLabel01" left="227" top="3" width="82" height="29"/>
	  <Static id="Static19" taborder="3" text="검사시간" cssclass="sta_WF_DetailLabel01" left="432" top="3" width="82" height="29"/>
	  <Static id="sta_line_02" taborder="19" cssclass="sta_WF_DetailLabel02" left="3" top="31" height="29" right="4" width="722" />
	  <Static id="Static02" taborder="6" text="공장" cssclass="sta_WF_DetailLabel01" left="3" top="31" width="82" height="29"/>
	  <Static id="Static03" taborder="8" text="호기" cssclass="sta_WF_DetailLabel01" left="227" top="31" width="82" height="29" visible="false"/> 
	</Layout>
</Layouts>
</Div>
--------------------------------------------------------------------------------------------------------------------------------

- 강관 수입검사(/QI_SteelPipeImpInsp.xfdl) 수정
1. Q0024: 저장하지 않은 데이타가 있습니다. \n저장하시겠습니까? 조건[Ds를 변경 후 저장하기 않고 다른 액션을 취할 경우]
 1) this.fn_search_02();		// 조회 처리 
 gfn_confirm(this, "Q0024", "", "fn_saveConfirmCallback");		// Q0024: 저장하지 않은 데이타가 있습니다. \n저장하시겠습니까?[fn_search_02()]
 
 2) this.ds_list_onrowposchanged();		// ds_list Row 변경 이벤트
 gfn_confirm(this, "Q0024", "", "fn_saveConfirmCallback");		// Q0024: 저장하지 않은 데이타가 있습니다. \n저장하시겠습니까?[ds_list_onrowposchanged()]
 
 3) this.fn_add_02();		// 02. 등록 
gfn_confirm(this, "Q0024", "", "fn_saveConfirmCallback");		// Q0024: 저장하지 않은 데이타가 있습니다. \n저장하시겠습니까?[fn_add_02()]

gfn_confirm(this, "Q0002", "", "fn_saveConfirmCallback");		// Q0002: 저장 하시겠습니까?[fn_save_02()]

/***********************************************************************
 * 함수명  	: fn_save_02
 * 설명 		: 03. 저장 처리 
***********************************************************************/
this.fn_save_02 = function()
{
	trace("[/QI_SteelPipeImpInsp.xfdl][fn_save_02()]==> [03. 저장 처리][TEST_01][검사번호]"+ this.div_detail.edt_iqcNo.text ); 
  
	if(bRst) 	// Validation Check 성공 이면
	{    
		v_nAlertId = 51;	// alert ID(51: 검사번호 자동 채번 처리)
		gfn_confirm(this, "Q0002", "", "fn_saveConfirmCallback");		// Q0002: 저장 하시겠습니까?[fn_save_02()]
	} 
}

/***********************************************************************
 * 함수명  	: fn_saveConfirmCallback
 * 설명 		: 저장 컨펌 콜백  
***********************************************************************/
this.fn_saveConfirmCallback = function(sid, rtn)
{
	trace("[/QI_SteelPipeImpInsp.xfdl][fn_saveConfirmCallback()] ==> [저장 컨펌 콜백][TEST_01][sid]"+ sid +"[rtn]"+ rtn +"[v_nAlertId]"+ v_nAlertId );
	
	if(v_nAlertId == 51)	// 검사번호 자동 채번 처리 이면
	{
		v_nAlertId = 0;			// alert ID
		
		if(rtn)	// 저장 컨펌이 '예' 이면
		{
			this.fn_getIqcNo();		// 검사번호 자동 채번 처리
		}
	}
	else
	{
		if(rtn)		// 저장 컨펌이 '예' 이면
		{
			this.fn_save_02();		// 03. 저장
		}
		else
		{ 
			this.ds_listMaster.clearData();
			this.ds_detail.clearData();
			
			if(v_mod == "ADD" && gfn_isNull(this.ds_listMaster.getColumn(this.ds_listMaster.rowposition, "IQC_NO")))   // 등록 이면
			{
				this.fn_addrow();	// 등록 처리
				v_mod = "";
			}
			else	 // 조회 이면
			{
				if(gfn_isNull(v_iqcNo))
				{
					this.fn_MainSearch();		// 강관 수입검사 Main 조회
				}
				else
				{
					this.fn_sub1_search();		// 강관 수입검사 SUB 조회[강관수입검사 마스터 info Ds(ds_listMaster), 상세 정보 조회 Ds(ds_detail) 처리]
				}
			}
		} 
	}  
}
--------------------------------------------------------------------------------------------------------------------------------

/***********************************************************************
 * 함수명  	: ds_list_onrowposchanged
 * 설명 		: ds_list Row 변경 이벤트(데이터셋의 rowposition 속성이 변경된 후에 발생하는 이벤트 ) 
***********************************************************************/
this.ds_list_onrowposchanged = function(obj:Dataset, e:nexacro.DSRowPosChangeEventInfo)
{ 
	if(this.ds_listMaster.getRowCount() > 0)
	{ 
		if(this.ds_listMaster.getRowType(this.ds_listMaster.rowposition) != 1)		// 마스터 내용(ds_detail) Ds getRowType이 초기 행의 상태(ROWTYPE_NORMAL=1)이 아니면
		{
			v_row = v_row + 1;
			trace("[/QI_SteelPipeImpInsp.xfdl][ds_list_onrowposchanged()] [01. 마스터 내용_변경된 내역이 존재]");	
		}
		
		for (i=0; i<this.ds_detail.getRowCount(); i++)
		{
			if(this.ds_detail.getRowType(i) != 1)	// 상세 내용(ds_detail) Ds getRowType이 초기 행의 상태(ROWTYPE_NORMAL=1)이 아니면
			{
				v_row = v_row + 1;
				trace("[/QI_SteelPipeImpInsp.xfdl][ds_list_onrowposchanged()] [02. ds_detail_변경된 내역이 존재]");
			}
		}
	} 
} 
--------------------------------------------------------------------------------------------------------------------------------

/***********************************************************************
 * 함수명  	: fn_saveall
 * 설명 		: 저장 처리 
***********************************************************************/
this.fn_saveall = function()
{
	trace("[/QI_SteelPipeImpInsp.xfdl][fn_saveall()]==> [저장 처리][TEST_01]" ); 
 
	v_iqcNo = this.ds_cond_01.getColumn(0, "IQC_NO"); 	   // 검사번호 
	this.ds_listMaster.setColumn(this.ds_listMaster.rowposition, "IQC_NO", v_iqcNo);   // 검사번호	 
	trace("[/QI_SteelPipeImpInsp.xfdl][fn_saveall()]==> [저장 처리][TEST_02][CRUD 모드]"+ v_crudMod +"[edt_iqcNo]"+ this.div_detail.edt_iqcNo.text +"[v_iqcNo]"+ v_iqcNo );
	
	if(v_crudMod == "C")		// CRUD 모드가 등록 이면
	{ 
		this.ds_listMaster.set_enableevent(false);		// 이벤트를 발생시킬지 여부를 설정하는 속성 
		this.ds_listMaster.set_updatecontrol(false); 	// RowType을 자동으로 변경할 것인지 여부를 설정하는 속성
		var bSucc = this.ds_listMaster.setRowType(this.ds_listMaster.rowposition, Dataset.ROWTYPE_INSERT); 	 // 데이터셋에서 지정된 행(row)의 타입 설정[2: 추가된 행의 상태] 
		this.ds_listMaster.set_updatecontrol(true); 
		this.ds_listMaster.set_enableevent(true);
		trace("[/QI_SteelPipeImpInsp.xfdl][fn_saveall()]==> [저장 처리(등록)][TEST_04][ds_listMaster.rowposition]"+ this.ds_listMaster.rowposition 
			+"[v_iqcNo]"+ v_iqcNo +"[RowType 변경 성공 여부]"+ bSucc +"[sRowSts]"+ this.ds_listMaster.getRowType(this.ds_listMaster.rowposition) );
	}
	v_crudMod = "";		// CRUD 모드
}
==============================================================================================================

- 넥사크로 에러
1. 현상:" native_exist_id" : ["해당 ID를 갖는 Object 가 존재합니다. id = [", "%0", "]"], 
2. D:\QMS\APQMS\workspace\APQMS\apqms\nexacro14lib\framework\ErrorDefine.js(
  
if (this.nexacro) {
	nexacro._errortable = 
		{
		"ko" : 
			{
	"native_exist_id" : ["해당 ID를 갖는 Object 가 존재합니다. id = [", "%0", "]"],  
	"comm_fail_duplication_svcid" : ["처리중인 동일한 서비스 아이디가 있습니다. 서비스 아이디 [", "%0", "]"],  
	}
} 
==============================================================================================================

-  FSP 서버 파라미터 넘기기
/*******************************************************************************
* 기      능   : 조회 
********************************************************************************/
this.btn_search_onclick = function()
{ 
	trace("[/excelExport_sample.xfdl][fn_search_onclick()] ==> [조회][TEST_01]" ); 
 
	var sMenuNm2 = ""; // 메뉴명2
	trace("[/excelExport_sample.xfdl][fn_search_onclick()] ==> [조회][TEST_02][this.div_search.edt_menuNm2.value]"+ 
		this.div_search.edt_menuNm2.value ); 
	
	if(!gfn_isNull(this.div_search.edt_menuNm2.value))	// 조회조건 메뉴명2 널이 아니면
	{
		sMenuNm2 = this.div_search.edt_menuNm2.value;	// 메뉴명2
	}
	
	var sArgs = "MENU_NM_SRCH="+ sMenuNm2 +"";		// Argument(계수형, 검사구) 
	trace("[/excelExport_sample.xfdl][fn_search_onclick()] ==> [조회][TEST_31][sArgs]"+ sArgs ); 
	
	this.fsp_clear();	// [FSP 서버] fsp clear(Dataset의 데이터 삭제)
	
	this.fsp_addSearch("hsteel/test/TEST_S01", false);	// [FSP 서버] 조회를 위해 SQLMAP 정보 추가(TEST 조회)
	trace("[/excelExport_sample.xfdl][fn_search_onclick()]==> [TEST_41][ds_cond,_CNT]"+ this.ds_cond.getRowCount() 
		+"[ds_cond.saveXML()]  \n"+ this.ds_cond.saveXML() );  	 

	this.fsp_callService(	// [FSP 서버] 서버 호출
		""					// Action 명(without java)
		,""
		,"ds_cond=ds_cond"	// inDs
		,"ds_list=ds_list"	// outDs
		, sArgs					// args(서버로 전송할 기타 Argument) 
		,"fn_callback"		// 콜백 함수 명
		, false				// error시 callback 호출 여부 
		, false				// "처리 중입니다."라는 창 표시 여부
		, false				// 서버와의 통신 방식으로 동기식으로 처리할지 여부(true: 동기, false: 비동기)	
		, "sid_find"		// 서비스 요청 아이디(콜백 함수에서 사용 가능)
	);	
}
--------------------------------------------------------------------------------------------------------------------------------

- /TEST_S01.xml 파일에서
<statement>  
/* 테스트 정보 조회 ==> [/hsteel/test/TEST_S01.xml] [2018.05.01, by 진태만] */  
SELECT 
		 EMP_NO AS EMP_NO
		, MENU_ID AS MENU_ID
		, MENU_NM
		, GROUP_NM AS GROUP_NM
		, '' AS FLG
FROM TB_TEST    -- 테스트 정보 TB
WHERE 1=1  
<isNotNull col="MENU_NM">
	AND MENU_NM LIKE '%'||#MENU_NM#||'%'	-- 메뉴명
</isNotNull>	
<isNotNull col="MENU_ID">
	AND MENU_ID LIKE #MENU_ID#||'%'		-- 메뉴ID
</isNotNull>
<isNotNull col="MENU_NM_SRCH" > 	<!--// Argument 중에 메뉴명2가 널이 아니면 //-->
	AND 1=1    -- Argument 중에 MENU_NM_SRCH가 널이 아니면
	<isEqual col="MENU_NM_SRCH"  value="계수형">		<!--// 메뉴명2가 '계수형' 이면 //--> 
		AND 1=1    -- 01. 메뉴명2가 '계수형' 이면
		AND MENU_NM LIKE '%'||#MENU_NM_SRCH#||'%'		-- 메뉴명
	</isEqual> 
	<isNotEqual col="MENU_NM_SRCH"  value="계수형">	<!--// 메뉴명2가 '계수형'이 아니면 //-->
		AND 1=1    --  02. 메뉴명2가 '계수형'이 아니면
		AND MENU_NM LIKE '%'||#MENU_NM_SRCH#||'%'		-- 메뉴명
	</isNotEqual> 
</isNotNull>	
ORDER BY REG_DDTT DESC
</statement>

<input default-name="ds_cond">
	<col name="MENU_NM" size="255" type="VARCHAR" description="" options="" /> 
	<col name="MENU_ID" size="255" type="VARCHAR" description="" options="" /> 
	<col name="ORD" size="255" type="VARCHAR" description="" options="" />   
</input>

<output default-name="ds_list">
	<col name="EMP_NO" size="10" type="VARCHAR" description="EMP_NO" options="" /> 
	<col name="MENU_ID" size="12" type="VARCHAR" description="MENU_ID" options="" /> 
	<col name="MENU_NM" size="50" type="VARCHAR" description="MENU_NM" options="" /> 
	<col name="GROUP_NM" size="50" type="VARCHAR" description="GROUP_NM" options="" /> 
</output>
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.07.13(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:40 ~ 19:40 ==> 서울행(20:12 ~ 22:07, 삽교역 -> 영등포역), 이상탁 차장, 여상무님 울산 공장 교육(울산 출근)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]  
- 운영 서버 Tomcat_v8.0에 SSL 설치 
==============================================================================================================

- 강관 수입검사(/QI_SteelPipeImpInsp.xfdl) 수정(최종) ==> 완료
1. ds 데이타 getRowType 설정 ==> 완료 @@@
 1) ROWTYPE_INSERT --> ROWTYPE_NORMAL 변경  완료
if(this.ds_list.getRowCount() > 0)
{  
	this.ds_listMaster.set_enableevent(false);		// 이벤트를 발생시킬지 여부를 설정하는 속성   
	this.ds_listMaster.set_updatecontrol(false); 	// RowType을 자동으로 변경할 것인지 여부를 설정하는 속성
	var nRow = this.ds_listMaster.addRow();			// 강관수입검사 마스터 Ds
	this.ds_listMaster.copyRow(0, this.ds_list, this.ds_list.rowposition);	// ds_listMaster Ds로 복사   
	var bSucc = this.ds_listMaster.setRowType(this.ds_listMaster.rowposition, Dataset.ROWTYPE_NORMAL); 	 
	// 데이터셋에서 지정된 행(row)의 타입 설정[1: 초기 행의 상태]
	this.ds_listMaster.set_updatecontrol(true);  
	this.ds_listMaster.set_enableevent(true);  
	//trace("[/QI_SteelPipeImpInsp.xfdl][fn_sub1_search()]==> [TEST_90][nRow]"+ nRow +"[bSucc]"+ bSucc 
	+"[ds_listMaster,_CNT]"+ this.ds_listMaster.getRowCount() +"[ds_listMaster.saveXML()] \n"+ this.ds_listMaster.saveXML() );
}
==============================================================================================================

- 엑셀 import
1. [JTM] ExcelImport 에러 문제라는 제목으로 TO-BE에 글 올리기
==============================================================================================================

- 왼쪽 Frame에서 main Frame 이동
1. global vale나 global Ds로 해결할 것
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.07.14(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 19:40 ==>  

- 주말
08:00 기상
08:35 조식(라면)
11:00 집출발(수종):자전거
11:10 신대방 성원 상떼빌 정류장(150번 버스 탑승: 수종)
12:20 종로3가 정류장 도착
12:30 이발(명성이발관):4천원
13:00 종료
13:40 교보 문고(교보빌딩 지하1층): 서점에 장난감이많음(수종 좋아함)
14:10 종료
14:20 중식(짜장면, 볶음밥, 공기밥,동성각: 만 3천원):
14:50 종료
15:20 물놀이(수종, 광화문 분수대)
15:50 종료
16:00 광화문 => 북창동 버스 정류장(도보)
16:10 북창동 버스 정류장(501번 버스 탑승: 수종)
16:40 신용산역 정류장 하차
16:40 신용산역 지하철 탑승
17:20 구로디지털역 하차(1,550원) 
17:40 자전거 탑승(신대방 성원 상떼빌 정류장 근처)
17:50 귀가
20:30 석식
21:00 TV 시청
24:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.07.15(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==> 

▦ 축구
08:00 기상
08:30 조식(참외)
12:00 중식
15:30 집출발 
15:40 대림운동장 
16:00 게임(은혜교회팀: 어울림 ==> 2쿼터 뜀): 무척 덥고 왼쪽 다리가 아퍼 많이 못  뜀
18:00 종료 
18:20 엘마트(빵 구입)
19:00 귀가
19:10 석식
19:50 집출발
20:00 대림역 7호선 마을버스 정류장(탑승)
20:20 영등포역 도착
20:49 예산행(20:49 ~ 22:36, 영등포역 -> 삽교역) 탑승[처음으로 일요일에 기차 탐]
22:20 삽교역 도착
23:00 귀가
23:40 TV 시청 ==> 2018 러시아 월드컵 결승전 ==> 프랑스 4:2 크로아티아
02:00 취침
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.07.16(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 22:00 ==> 커피 도착(12시), 현대제철 보안 점검(15:00 ~ 15:30)

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- 강관 수입검사(/QI_SteelPipeImpInsp.xfdl) 수정
==============================================================================================================

- 운영 서버 Tomcat_v8.0에 SSL 설치
1. 작업 관리자 > 서비스 Tab >  Apache Tomcat 8.5 Tomcat8_FSP: 마우스 우 클릭 > 서비스 열기(V) > 서비스(새창) > 
 Apache Tomcat 8.5 Tomcat8_FSP(선택)....서비스 중지, 서비스 다시 시작: 클릭
--------------------------------------------------------------------------------------------------------------------------------

- 톰캣 로그를 분석해 보면 SSL(443) 에러라고 나옴 
1. 현상: 톰캣 로그를 분석해 보면 SSL(443) 에러라고 나옴 
2. 원인: SSLProtocol="TLS"
3. 조치: SSLProtocol="TLS"을 SSLProtocol="TLSv1+TLSv1.1+TLSv1.2"로 변경
<!--// 추가[ protocol="org.apache.coyote.http11.Http11NioProtocol(SSL(https) port)]: 2018.07.16 by 진태만 //-->
<Connector port="443" protocol="org.apache.coyote.http11.Http11NioProtocol" 
   SSLEnabled="true"
	   maxThreads="150" scheme="https" secure="true"
   keystoreFile="SSL_KEYSTORE\star_hyundai-steel_com.jks" 
   keystorePass="hdsteel1" 
   clientAuth="false" 
   SSLVerifyClient="optional"
   SSLProtocol="TLSv1+TLSv1.1+TLSv1.2"
   URIEncoding="UTF-8"
	   ciphers="TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256,TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA
	   ,TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384,TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA
	   ,TLS_ECDHE_RSA_WITH_RC4_128_SHA,TLS_RSA_WITH_AES_128_CBC_SHA256,TLS_RSA_WITH_AES_128_CBC_SHA
	   ,TLS_RSA_WITH_AES_256_CBC_SHA256,TLS_RSA_WITH_AES_256_CBC_SHA,SSL_RSA_WITH_RC4_128_SHA"
/> 
--------------------------------------------------------------------------------------------------------------------------------

- NamingException key is MESJNDI 문제
1. 현상: NamingException key is MESJNDI 
2. 원인: /ROOT.xml(Tomcat\conf\Catalina\localhost) 파일이 XML 형태가 아님
3. 조치: /ROOT.xml 형태에 만들고 브라우저에서 Displasy 되는 것 확인할 것
--------------------------------------------------------------------------------------------------------------------------------

- Query execution failed 
1. 현상:
Reason:
SQL Error [JDBC-8033:42S02]: JDBC-8033:Specified schema object was not found.   
at line 3, column 9:
  FROM HSSCV100 A 		 -- 메뉴 정보 TB
2. 원인: 실제 HSSCV100 테이블이 생성 안되어 있음(전체 테이블 생성할 것)
--------------------------------------------------------------------------------------------------------------------------------

- Occurs error when call DataSource.getConnection().
1. 현상:
 Occurs error when call DataSource.getConnection(). 
2. 조치:  url="jdbc:tibero:thin:@10.10.111.17:8629:RWMESPR" ==> url="jdbc:tibero:thin:@10.10.111.17:8629:RWMESPRD"
- /ROOT.xml(Tomcat\conf\Catalina\localhost)
<!--// 01. Hyundai Steel AP QMS Prj Web Setting //-->
<Context crossContext="true" docBase="D:/QMS/APQMS/workspace/APQMS/WebContent/" path="/" reloadable="true">

	<!--// 02. MESJNDI Setting(tibero PRD DB) //-->
  	<Resource name="MESJNDI" auth="Container"                                                    
   		type="javax.sql.DataSource" driverClassName="com.tmax.tibero.jdbc.TbDriver"
   		url="jdbc:tibero:thin:@10.10.111.17:8629:RWMESPRD"
		username="QMSMGR" password="QMSMGR" maxTotal="500" maxIdle="100" maxWaitMillis="-1"   />    
</Context> 
==============================================================================================================
 
- Xmx 설정(catalina.bat에 설정 추가)
1. /catalina.bat(D:\QMS\Tomcat\bin) 파일에서
rem SET JAVA_HOME=C:\Program Files\Java\jdk1.8.0_112
rem SET JAVA_OPTS=%JAVA_OPTS% -Xms2018m -Xmx2048m -XX:PermSize=512m	--> Xmx: 최대 JVM 이 가질 수 있는 메모리
==============================================================================================================

- 유비 리포트 운영 서버 License 받음
1. 유비 콜센터에서 발급 받음
------------------------------------------------------------------------------------------------

- 유비 리포트 운영 서버 셋팅
1. ubiservice.xml, lib_Report.xjs.js 파일 수정 ==> Url 변경(null에서 https://apqms.hyundai-steel.com)
==============================================================================================================

- scrollbars 생성
TextArea.set_scrollbars("none");
TextArea.set_scrollbars("autoboth");
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.07.17(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 21:30 ==> 강과장 늦잠(차같이 못 탐)

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- 운영 서버 DB 기초 데이타 생성(개발 DB 참조)
1. 사용자등록 정보 TB(HSSCU100)
2. 메뉴 정보 TB(HSSCU100)
3. 메세지 정보 TB(HSSCU100) 
==============================================================================================================

- addEventHandler 에러 처리
 1. 현상: TypeError: Cannot call method 'addEventHandler' of undefined
 2. 원인: fn_addTabpage() 함수에서 이미 존재하는 메뉴ID를 다시 추가를 해서 에러가 발생
 3. 조치: Tab 추가시 이미 존재하는 메뉴ID를 제외하고 추가하게 수정
-----------------------------------------------------------------------------------------------------------

/***********************************************************************
 * 함수명  	: frmWork_onload
 * 설명 		: 폼 로딩 
***********************************************************************/
this.frmWork_onload = function(obj:Form, e:nexacro.LoadEventInfo)
{
	trace("[/frmWork.xfdl][frmWork_onload()] ==> [폼 로딩][TEST_01][T: Mamin 업무 화면]" );
	
	var nRow = application.gds_openMenu.findRow("MENU_ID", this.menuId);		// 데이터셋의 지정한 열에 일치하는 행 찾기   
	//trace("[/frmWork.xfdl][frmWork_onload()]==> [TEST_10][nRow]"+ nRow +"[this.menuId]"+ this.menuId +"[메뉴명]"+ 
		this.menuTitle +"[gds_openMenu,_CNT]"+ application.gds_openMenu.getRowCount() ); 
	
	if(application.gds_openMenu.getRowCount() < 1)	// gds_openMenu가 존재 안 하면(gds_openMenu 추가) 
	{
		gfn_addOpenMenu(this.menuId, this.winKey);	// 메뉴 ID를 gds_openMenu에 입력
		//trace("[/frmWork.xfdl][frmWork_onload()]==> [TEST_11][winKey]"+ this.winKey +"[메뉴ID]"+ this.menuId +"[메뉴명]"+ this.menuTitle ); 
		application.av_mdiFrame.form.fn_addTabpage(this.winKey, this.menuTitle);	// 메뉴 선택 시 TabPage를 생성하는 함수 호출
	}
	else
	{
		if(nRow < 0)	// gds_openMenu에서 추가하려는 menuId가 없으면(gds_openMenu 추가), 2018.07.08, by 진태만
		{
			gfn_addOpenMenu(this.menuId, this.winKey);	// 메뉴 ID를 gds_openMenu에 입력
			//trace("[/frmWork.xfdl][frmWork_onload()]==> [TEST_12][winKey]"+ this.winKey +"[메뉴ID]"+ this.menuId +"[메뉴명]"+ this.menuTitle ); 
			application.av_mdiFrame.form.fn_addTabpage(this.winKey, this.menuTitle);	// 메뉴 선택 시 TabPage를 생성하는 함수 호출
		}
	}
	//trace("[/frmWork.xfdl][frmWork_onload()]==> [TEST_41][gds_openMenu,_CNT]"+ application.gds_openMenu.getRowCount() 
		+"[gds_openMenu.saveXML()] \n"+ application.gds_openMenu.saveXML() );  
}
==============================================================================================================

- 톰캣 운영 서버 실행 에러
1. 현상:
 index.html:6 The key "target-densitydpi" is not supported. 
index.html:8 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/framework/SystemBase.js 404 ()
index.html:9 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/framework/SystemBase_HTML5.js 404 ()
index.html:10 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/framework/SystemBase_Runtime.js 404 ()
index.html:11 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/framework/BasicObjs.js 404 ()
index.html:12 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/framework/ErrorDefine.js 404 ()
index.html:13 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/framework/Platform_HTML5.js 404 ()
index.html:14 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/framework/Platform_Runtime.js 404 ()
index.html:15 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/framework/Platform.js 404 ()
index.html:16 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/framework/CssObjs.js 404 ()
index.html:18 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/framework/Device_Android.js 404 ()
index.html:17 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/framework/Device.js 404 ()
index.html:19 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/framework/Device_iOS.js 404 ()
index.html:65 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/component/Grid/GridInfo.js 404 ()
index.html:66 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/component/Grid/Grid.js 404 ()
index.html:102 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/component/UbiReport4/UbiReport4.js 404 ()
index.html:103 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/component/UbiReport4/ubihtml.js 404 ()
index.html:104 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/component/UbiReport4/ubiexcanvas.js 404 ()
index.html:105 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/component/UbiReport4/ubinonax.js 404 ()
index.html:106 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/component/UbiReport4/msg.js 404 ()
index.html:18 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/framework/Device_Android.js 404 ()
index.html:19 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/framework/Device_iOS.js 404 ()
Element_HTML5.js:14 Uncaught ReferenceError: nexacro is not defined
    at Element_HTML5.js:14
2. 원인: D:\QMS\APQMS\workspace\APQMS\WebContent\APQMS\nexacro14lib에 파일이 없어서 나는 에러
3. 조치: 개발 서버의 nexacro14lib 폴더을 복사하여 붙여넣기
==============================================================================================================

- 메뉴 추가
1. 검사기준 미등록 현황(/QI_InspStdIUninputStat.xfdl)  ==> 여상무님 요청
2. S-18-0829-03-AP품질관리_메뉴구조도_v1.9.xls 수정해서 팀사이트에 등록
==============================================================================================================

- - 운영 서버 셋팅 후 TB 기초 테이타 등록(개발 DB 참조)
1. 사용자등록 정보 TB(HSSCU100)
2. 메뉴 정보 TB(HSSCM100)
3. 메시지코드 정보 TB(HSSCV100) 
-----------------------------------------------------------------------------------------------------------------------------------

 -- 칼럼 추가 @@@
ALTER TABLE QMSMGR.HSSCM100 ADD
(  
	CID             VARCHAR(20),
    CDT             VARCHAR(14),
    MID             VARCHAR(20),
    MDT             VARCHAR(14)
)
; 
COMMENT ON COLUMN QMSMGR.HSSCU100.CDT IS '생성일';
COMMENT ON COLUMN QMSMGR.HSSCU100.CID IS '생성자ID';
COMMENT ON COLUMN QMSMGR.HSSCU100.MDT IS '수정일';
COMMENT ON COLUMN QMSMGR.HSSCU100.MID IS '수정자ID';
--; 
--------------------------------------------------------------------------------

 -- 칼럼 삭제 @@@
ALTER TABLE HSSCR100
DROP (
    REGISTER 
    , REG_DDTT
    ,  MODIFIER
    ,  MOD_DDTT
)
;  
==============================================================================================================

-- 기초코드-소분류 정보 조회[db link 조회] @@@
SELECT *
FROM QMSMGR.HSBCA200@HSMESDEV_RW   -- HSMESDEV_RW: AP QMS 개발 DB 연결
;
---------------------------------------------------------------------------------

-- 기초코드-소분류 정보 등록[db link 조회] @@@
INSERT INTO QMSMGR.HSBCA200
    SELECT *
    FROM QMSMGR.HSBCA200@HSMESDEV_RW    -- HSMESDEV_RW: AP QMS 개발 DB 연결
;
--------------------------------------------------------------------------------- 

-- 기초코드-소분류 정보 조회  @@@ ==> 180건
SELECT  A.*
FROM HSBCA200 A 		 -- 기초코드-소분류 TB
WHERE 1=1 
    AND A.MAIN_CD = 'SC100'		-- 대분류코드(BC111: 법인구분, CM110: 결재상태, SC100: module)
ORDER BY A.MAIN_CD, A.ORD_SQ  
; 
==============================================================================================================

- Windows PowerShell을 사용
1. 별도의 설치 작업 없이도 tail과 비슷한 명령어를 사용할 수 있습니다.
PS D:\QMS\Tomcat\bin> Get-Content “.\catalina.bat” -Wait -Tail 100
 
경로를 지정한 후 -Wait 옵션을 붙이면 추가 파일 출력에 대해 대기 상태에 있다는 의미이며 파일이 업데이트되면 지속적으로 출력하게 됩니다.
-Tail 옵션과 뒤의 값을 붙이면 파일의 마지막 줄부터 -n번째 줄까지 출력하겠다는 의미입니다.
==> https://blog.jooylee.com/p/20180129634
----------------------------------------------------------------------------------------------------------------------------------

- 윈도우용 Tail 프로그램 
1. tomcat cmd 명령프롬프트 창에서 실행 로그 확인
2. baretail ==> http://bigenergy.tistory.com/405
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.07.18(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 22:00 ==> 메뉴 관한 때문에 이상탁 차장이 짜증냄(염차장이 권한별 메뉴 프로그램 잘못 개발), 주간보고서 작성

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- 운영 서버 파일 upload 경로 변경
1. D:\  ==> Z:\ 
 1) 파일 업로드 경로 개발 서버에서는 D 드라이브 사용 
 2) 운영 서버 파일에선 네트워크 드라이브(Z:)를 사용  --> 오이사에게 긴급 문자 보냄
--------------------------------------------------------------------------------------------------------------------------------

- /service.xml 파일에서  운영 서버 파일 upload 경로 에러
<!-- File Uploader --> 
<service name="HttpFileManagerService"  code="com.sz.service.ui.xplatform.DefaultHttpFileManagerService"> 
	<!-- <attribute name="FileRootDir">Z:\QMS\APQMS\upload\</attribute>   -->  	 	<!-- 업로드된 파일이 저장될 최상위 디렉토리
	(상대 경로: 개발서버). WORK_DIR 속성으로부터 시작되는 상대경로 또는 절대경로로 지정 가능 -->
	<attribute name="FileRootDir">\\10.10.111.17\\QMS\\APQMS\\upload\\</attribute>	 <!-- 업로드된 파일이 저장될 최상위 디렉토리
	(네트워크 경로: 운영서버).  -->
	<!-- <attribute name="FileRootDir">D:\QMS\APQMS\workspace\APQMS\upload\</attribute>	  --> 	<!-- 업로드된 파일이 저장될
	최상위 디렉토리(상대 경로: 개발서버). WORK_DIR 속성으로부터 시작되는 상대경로 또는 절대경로로 지정 가능 -->
	<attribute name="AppendTime">true</attribute>	    	<!-- 업로드된 파일명에 업로드된 시간을 추가하여 파일명을 생성할지 여부 -->
	<attribute name="SystemEncoding">utf-8</attribute>	   	<!-- 파일명에 대한 시스템 인코딩 -->
	<attribute name="SubDirList">	<!-- 서브 디렉토리를 key=sub 디렉토리의 형태로 지정 -->
		img=img/apqms
		doc=img/apqms/doc
	</attribute> 
	<attribute name="SupportDynamicDir">true</attribute>	<!-- 요청한 디렉토리 키 정보가 SubDirList에 존재하지 않을 경우 디렉토리의 
	동적 생성을 지원할지 여부를 설정한다. 지원할 경우 true -->
	 <!-- <attribute name="ApprovedFileExtension">ppt,pdf,txt</attribute> --> 	<!-- 특정 확장자만 업로드 가능하도록 하는 옵션 -->
	<attribute name="UnapprovedFileExtension">http</attribute>		<!-- 파일 업로드 시 허용할 수 없는 파일의 확장자 --> 
</service>

2. 현상: 
log4j:WARN No appenders could be found for logger (com.nexacro.xapi.tx.HttpPlatformRequest).
log4j:WARN Please initialize the log4j system properly.
java.io.FileNotFoundException: Z:\QMS\APQMS\upload\img\apqms\20180718\alert_03_20180718095605612.png (지정된 경로를 찾을 수 없습니다)
==============================================================================================================
 
-- 파일 아이디에 해당하는 파일 리턴
SELECT QMSMGR.FN_CM_GET_FILE_PATH( 
            'USER'      -- P_IN_PATH_NAME(PATH명)
            ,'1519107'  -- P_IN_FILE_ID(사용자ID)
            ,''         -- P_IN_INSP_BC
            ,''         -- P_IN_REV_NO
            ,''         -- P_IN_ITM_DESC_GUB
         ) AS FILE_IMAGE   -- 파일 아이디에 해당하는 파일 리턴
FROM DUAL 
;
--------------------------------------------------------------------------------------------------------------------

SELECT FILE_ID, 'D:\QMS\APQMS\workspace\APQMS\upload\ '|| FILE_PATH ||'\'|| SFILE_NM 
FROM HSCMF100   -- 서버저장 파일정보 TB
WHERE 1=1
    AND FILE_ID = '20180716081618161'   	-- FILE_ID
	-- AND FILE_ID = (SELECT SIGN_SEQ FROM HSSCU100 WHERE USER_ID = '1519107' )  			-- FILE_ID
;
==============================================================================================================

- 정리
15:00 오이사 예산 방문
15:20 오이사 면담(다음주 월요일에 개발자 2명(이승훈 과장, 허민준 대리: 87년 생) 투입: 교육 철저히 하라고 함)
15:40 FSP 서버 김용호 대표 원격 지원[운영 서버 파일 upload 경로 변경: 네트워크 드라이버 안 잡힘)
--------------------------------------------------------------------------------------------------------------------

- 네트워크 드라이브 연결
1. IP로 잡혀 있어서 네트워크 드라이버 인식 못 한다고 함
2. hsrwmesdb1FH 네트워크 드라이버 다시 잡음 ==> \\hsrwmesdb1\data3, \administrator/adm234
==============================================================================================================

- 개발 서버 eclipse 에러 발생(2번째)
1. 현상:
An internal error has occurred.
Java heap space
java.lang.OutOfMemoryError: Java heap space
2. 원인: 여상무님이 삭제를 하면서 데이타 꼬임(황부장 조회 쿼리가 플 스캔하면서 나는 에러로 추정)
3. 조치: 개발자들이 DB 쿼리를 제대로 짜야함(DB index, 풀 스캔 금지)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.07.19(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 22:00 ==> FSP 서버 김용호 대표 원격 지원(10:00: ~ 12:00): hsrwmesdb1에 대한 네트워크 ID, PWD 요청

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- 운영 서버 파일 upload 경로 변경
1. D:\  ==> Z:\ 
 1) 파일 업로드 경로 개발 서버에서는 D 드라이브 사용 
==============================================================================================================

- 강관 수입검사(/QI_SteelPipeImpInsp.xfdl) 수정
1. ds_listMaster Ds 제거
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.07.20(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 19:40 ==> 중식(탕수육, 짜장면, 손짜장 대가: 개발팀 -> 여상무가 쏨), 서울행(20:12 ~ 22:07, 삽교역 -> 영등포역)

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- 운영 서버 파일 upload 경로 변경
1. D:\  ==> Z:\ 
 1) 파일 업로드 경로 개발 서버에서는 D 드라이브 사용 
==============================================================================================================

- 강관 수입검사(/QI_SteelPipeImpInsp.xfdl) 수정
1. ds_listMaster Ds 제거
==============================================================================================================

- 부품 DB 스토리지 네트웍 드라이브 연결 파일업로드 기능 구현 협조요청 ==> 이상탁 차장에 요청해서 받음: 완료
1. 10,10.221.91(was서버)에서 네트웍드라이버 연결하여 파일 업로드를 할려면 was서버와 동일한 계정/암호 로 네트웍드라이버 연결이
되어 있어야 가능  
 1) 그 계정으로 스토리지의 특정 폴더 에읽기/쓰기/삭제 권한을 주고 그폴더로  네트웍드라이버  연결을 해야 합니다.
2. 10.10.111.17 (스토리지 서버) 에 hsaqmap1sa/hsaqmap1s@  로 계정생성
--------------------------------------------------------------------------------------------------------------------------------

- Apache Tomcat 8.5 Tomcat8_FSP에서 네트워크 권한 주기
1. 서비스(로컬) > Apache Tomcat 8.5 Tomcat8_FSP: 마우스 우 클릭 > 속성(R) > Apache Tomcat 8.5 Tomcat8_FSP 속성
(로컬 컴퓨터) (새창) > 로그온(Tab) > 다음 계정으로 로그온: 계정 지정(T): .\hsaqmap1sa, 암호(P): hsaqmap1s@확인(클릭) 
==============================================================================================================

- FSP 서버 김용호 대표 원격 지원(14:00: ~ 16:00)
1. 김용호 대표가 네트웍 드라이브로 연결하여 파일업로드 불가능 하다고 했다고 함 ==> 신규로 개발 해야 한다고 함
 1) 이상탁 차장이 기존대로(. D:\  드라이브로 연결하여 파일업로드 처리) 하라고 함
==============================================================================================================

- 메뉴등록(/SY_MenuInput.xadl) 변경[메뉴 수정]
1. TOOL관리(TL) > 검사구
 1)  검사구 수리변경 등록(/TL_InspPortReprChngInput): 삭제
검사구 수리변경 현황(/TL_InspPortReprChngStat): 삭제
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.07.21(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 19:40 ==>  

- 주말
08:00 기상
08:35 조식(라면)
11:00 집출발(수종)
11:10 대림역 정류장(6511번 버스: 수종)
12:00 서울대 정류장 도착
12:10 관악문화도서관 1층 
13:00 관악문화도서관 식당(정식 부페[4천 5백원]: 수종[2천원])  
14:10 종료
15:00 관악산 계곡 어린이 물놀이장 방문(화장실이 멀리 있음, 물은 더러운 편): 수종이가 좋아 함
16:00 종료
16:05 탈의실 무료로 사용
17:00 귀가
17:30 낮잠
16:30 기상
19:30 석식
23:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.07.22(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==> 

▦ 축구
08:00 기상
08:30 조식
10:30 루옌, 수종 언니집에 놀러감
10:30 TV 시청
11:00 중식
15:30 집출발
15:40 다이소 대림점 ==> 건전지, 떼 타올 구입 중 점원이 새치기 했다고 해서 물건 던지고 화내고 나옴 
15:40 대림운동장 
16:00 게임(은혜교회팀: 어울림 ==> 3쿼터 뜀): 38도, 무척 덥워서 힘듬
		--> 어울림팀에서 수박 제공
18:00 종료(새로 구입한 마운틴스토리 자바라 물통10L에 물 떠옴)
18:20 플러스마트(아이스크림, 계란, 라면 구입)
18:40 엘마트(빵, 우유 구입)
19:00 귀가
19:10 다이소 남구로점(건전지, 떼 타올 구입)
19:20 과일 구입(남구로시장)
19:30 귀가
19:50 집출발
20:05 대림역 7호선 마을버스 정류장(영등포04 버스 탑승)
20:30 영등포역 도착
20:49 예산행(20:49 ~ 22:36, 영등포역 -> 삽교역) 탑승[처음으로 일요일에 기차 탐]
22:45 삽교역 도착(15분 연착)
23:10 귀가
23:40 TV 시청, Memo 정리
01:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.07.22(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==> 

▦ 축구
08:00 기상
08:30 조식
10:30 루옌, 수종 언니집에 놀러감
10:30 TV 시청
11:00 중식
15:30 집출발
15:40 다이소 대림점 ==> 건전지, 떼 타올 구입 중 점원이 새치기 했다고 해서 물건 던지고 화내고 나옴 
15:40 대림운동장 
16:00 게임(은혜교회팀: 어울림 ==> 3쿼터 뜀): 38도, 무척 더워서 힘듬
		--> 어울림팀에서 수박 제공
18:00 종료(새로 구입한 마운틴스토리 자바라 물통10L에 물 떠옴)
18:20 플러스마트(아이스크림, 계란, 라면 구입)
18:40 엘마트(빵, 우유 구입)
19:00 귀가
19:10 다이소 남구로점(건전지, 떼 타올 구입)
19:20 과일 구입(남구로시장)
19:30 귀가
19:50 집출발
20:05 대림역 7호선 마을버스 정류장(영등포04 버스 탑승)
20:30 영등포역 도착
20:49 예산행(20:49 ~ 22:36, 영등포역 -> 삽교역) 탑승[처음으로 일요일에 기차 탐]
22:45 삽교역 도착(15분 연착)
23:10 귀가
23:40 TV 시청, Memo 정리
01:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.07.23(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 22:00 ==> 로지텍 MK240 NANO 마우스 집에서 가지고 옴(사업장에서 사용), 이상탁 차장 장인 상(양산), 오이사 방문(11:00 ~ 11:50)

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- 강관 수입검사(/QI_SteelPipeImpInsp.xfdl) 수정
1. 강관수입검사 화면 최적화(ds_listMaster Ds 제거) --> 업무 로직 구현
--------------------------------------------------------------------------------------------------------------------------------

- 강관 수입검사 화면 CRUD 처리
1. 02. 신규(공통)
 1) this.fn_add();  ==> 신규(공통)
 2) this.fn_add_02();	 ==> 02. 신규 처리
 3) this.fn_add_02();  ==> 행추가 처리(실제 안 함)
-------------------------------------------------------

2. 03. 저장(공통)
 1) this.fn_save  ==> 03. 저장(공통)
 
 2) this.fn_save_02(); ==> 03. 저장 처리
if(this.fn_save_valid_check() == false)  		// 01. Validation Check 

bRst = gfn_validGrid(this.grd_detail, false); 		// 02. grd_detail Grid의 Validation Check  
this.fn_getIqcNo(); 	 // 03. 검사번호 자동 채번 처리

this.fn_setDs_list();	  // 04. Ds_list Ds 셋팅

this.fn_saveAll();	// 05. 전체 저장 처리
============================================================================================================== 

- 개발 인력 투입
1. 이승훈 과장(010-3835-0293)  --> 1520224,/1234!
2. 허민준 대리(010-9899-1929)  --> 1520225,/1212!
==============================================================================================================

- 개발자 교육
1. 14:00 ~ 16:00
2. 공용 노트북 내 PC 원격 접속 안됨
---------------------------------------------------------------------------------------------------------------

- 공용 노트북 사용법(델 노트북)
1. 공용 노트북 켜기 ==> HYUNDAISTEEL\yn113088002/공용2!
2. 네트워크 접속 로그인: 1519927/ asas1212!  ==> 중복 가능
3. 작업관리자 > 프로세스Tab > SSOLOGIN.exe: 제거
4. 실행 > 열기(O): mstsc ==> 원격 데스크톱 연결(새창) --> MSTSC(Microsoft Terminal Service Client)
 1) 원격 데스크톱 연결 > 컴퓨터(C): 10.245.178.43[내 PC], 연결(N): 클릭
5. 내 PC 로그인 ==> HYUNDAISTEEL\dp116050204 / asas1212! 
6. 참고
 1) 문서보안(HS): 1519927/ asas1212! ==> 중복 불가 
 2) 네트워크 접속 로그인: 1519927/ asas1212!  ==> 중복 가능
==============================================================================================================

- 사업장 키보드 분실 확인
1. 이상탁 차장에게 보고 ==> "최과장이 가져 갈 것 같아요. 키보드는 얼마 안 하니 신경쓰지 말아요."라고 함
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.07.24(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 22:00 ==> 7월 월간보고(13시, 예산)

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- 강관 수입검사(/QI_SteelPipeImpInsp.xfdl) 수정 ==> 완료 @@
1. 강관수입검사 화면 최적화(ds_listMaster Ds 제거) --> 업무 로직 구현
============================================================================================================== 

- gfn_confirm 에러
1. 현상: uxs (3556): SE 11:19:38:463 해당 ID를 갖는 Object 가 존재합니다. id = [ConfirmPopup]
2. 원인: gfn_confirm을 2번 띄움
3. 조치: v_noSveDataExstYn == "Y" 사용
this.fn_search_02 = function()
{
	trace("[/QI_SteelPipeImpInsp.xfdl][fn_search_02()] ==> [TEST_51]" );
	v_noSveDataExstYn = "Y";	// 저장하지 않은 데이타 존재 여부
	gfn_confirm(this, "Q0024", "", "fn_saveConfirmCallback");		// Q0024: 저장하지 않은 데이타가 있습니다. \n저장하시겠습니까?[fn_search_02()]
}

this.fn_saveConfirmCallback = function(sid, rtn)
{ 
	if(rtn)		// 저장 컨펌이 '예' 이면
	{
		trace("[/QI_SteelPipeImpInsp.xfdl][fn_saveConfirmCallback()]==> [03. 저장 처리][TEST_41]"); 
		this.fn_save_02();		// 03. 저장
	}
}

this.fn_save_02 = function()
{
	if(bRst) 	// Grid의 Validation Check 성공 이면
	{     
		if(v_noSveDataExstYn == "Y") 	// 저장하지 않은 데이타 존재하면 ==> 조회, 신규, ds_list_onrowposchanged에서 넘어옴
		{
			this.fn_setDs_list();	// 04. Ds_list Ds 셋팅
			v_noSveDataExstYn = "N";	// 저장하지 않은 데이타 존재 여부
			trace("[/QI_SteelPipeImpInsp.xfdl][fn_save_02()]==> [03. 저장 처리][TEST_05_3][bRst]"+ bRst); 
		}
		else
		{
			v_nAlertId = 51;	// alert ID(51: 검사번호 자동 채번 처리) 
			trace("[/QI_SteelPipeImpInsp.xfdl][fn_save_02()]==> [03. 저장 처리][TEST_05_4][bRst]"+ bRst); 
			gfn_confirm(this, "Q0002", "", "fn_saveConfirmCallback");		// Q0002: 저장 하시겠습니까?[fn_save_02()] 
		}
	}
}
============================================================================================================== 
 
- 개발자 교육2
1. 19:00 ~ 20:10
==============================================================================================================

- 개발 서버 eclipse 에러 발생(3번째)
1. 현상:
An internal error has occurred.
Java heap space
java.lang.OutOfMemoryError: Java heap space
2. 원인:  
3. 조치: 개발자들이 DB 쿼리를 제대로 짜야함(DB index, 풀 스캔 금지)
==============================================================================================================

- eclipse + tomcat 에서 tomcat log 남기는 설정(Tomcat v7.0 Server at localhost)
1. 프로젝트: 마우스 우 클릭 > Run -> Run Configurations (새창) > Common 탭
 1) Standara Input and Output   
 2) File의 체크박스에 체크한 후에 File system: 클릭 > D:\QMS\APQMS\apache-tomcat-7.0.86\logs\apache-tomcat-7.0.86..2018-07.log
  ==> Apply: 클릭 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.07.25(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 22:00 ==> 주간보고서 작성

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- 메뉴 권한 설정
1. 업무그룹별 메뉴권한 등록 화면(/CM_TskGrpLyMenuAuthInput.xfdl) 파일 수정
============================================================================================================== 

- 넥사크로 에러
1. 현상  native_exist_id" : ["해당 ID를 갖는 Object 가 존재합니다. id = [", "%0", "]"], 
uxs (54552): SE 21:51:28:938 처리중인 동일한 서비스 아이디가 있습니다. 서비스 아이디 [fn_afterSearch&true&&1234]
uxs (54552): SE 21:51:29:170 TypeError: Object [object Object] has no method 'fn_afterSearch'

 1) D:\QMS\APQMS\workspace\APQMS\apqms\nexacro14lib\framework\ErrorDefine.js(
  
if (this.nexacro) {
	nexacro._errortable = 
		{
		"ko" : 
			{
	"native_exist_id" : ["해당 ID를 갖는 Object 가 존재합니다. id = [", "%0", "]"],  
	"comm_fail_duplication_svcid" : ["처리중인 동일한 서비스 아이디가 있습니다. 서비스 아이디 [", "%0", "]"],  
	}
} 
2. 원인:  fn_afterSearchGrp 콜백 함수를 중복을 사용
this.form_onload = function(obj:Form, e:nexacro.LoadEventInfo) 
{
   trace("[/CM_TskGrpLyMenuAuthInput.xfdl][form_onload()]==> [폼 로딩][TEST_01][T: 업무그룹별 메뉴권한 등록 화면]" );
 
	this.fn_search_tskGrp(); 	// 업무그룹구조도 조회
	this.fn_search_menu(); 	// 메뉴 그룹 조회   ==> 
}

this.fn_search_tskGrp = function() 
{ 
	this.fsp_clear();	// [FSP 서버] fsp clear(Dataset의 데이터 삭제)
	
	this.fsp_addSearch("cm:CM_TskGrp_S01", false);		// [FSP 서버] 조회를 위해 SQLMAP 정보 추가[업무그룹구조도 조회]
 
	this.fsp_callService(	// [FSP 서버] 서버 호출
		""					// Action 명(without java)
		,""
		,"ds_cond=ds_cond"	// inDs
		,"ds_tskGrpRescue=ds_list"	// outDs 
		,"fn_afterSearchGrp"
		,true
	);
}

this.fn_afterSearchGrp = function(ErrorCode, ErrorMsg) 
{
	this.fn_search_menu();		// 메뉴 그룹 조회   ==>  
}
==============================================================================================================

- 77. Instant SQL Formatter
1. www.dpriver.com/pp/sqlformat.htm
2. Format SQL ==> SQL Formatter(Ctrl+Shift+F)
==============================================================================================================

- 로그인 조회 에러
1. 현상: 
2018/07/25 15:42:06,SYSTEM_ERROR,[SUIA_00007]It failed to execute SQL[SQL_ID:sy:SY_MenuLstInq_S02
INSERT_SQL_ID:
UPDATE_SQL_ID:
DELETE_SQL_ID:
KEY_SQL_ID:
KEY_INCREMENT:0
SAVE_FLAG_COLUMN:
TYPE:N].
2018/07/25 15:42:06,SYSTEM_ERROR,[SUIA_00003]It failed to execute (action:nDefaultAction/execute)(client:all).
java.lang.IllegalStateException: Unable to add column: duplicatedName=MENU_SEQ, duplicatedIndex=1
	at com.nexacro.xapi.data.DataSet.checkDuplicatedColumn(DataSet.java:5073)
2. 원인: MENU_SEQ 필드가 2개 입력해서 나는 에러
/* 메뉴  관리 정보 조회 ==> [/sy:SY_MenuLstInq_S01.xml] [2018.05.25, by 진태만] */   
SELECT  A.MENU_SEP,
			A.MENU_SEQ,  
			A.MENU_SEQ,     //  1개 제거
==============================================================================================================

- Grid edittype 변경
this.fn_callback = function(nErrorCode, sErrorMag, sid)
{ 
	switch(sid) 
	{
		case "sid_inqyTskGrpMenuAuth" : 	// 업무그룹별 메뉴권한 조회
			trace("[/CM_TskGrpLyMenuAuthInput.xfdl][fn_callback()]==> [TEST_53][ds_tskGrpMenuAuth.CNT]"+ 
				this.ds_tskGrpMenuAuth.getRowCount() +"[ds_tskGrpMenuAuth.saveXML()] \n"+ this.ds_tskGrpMenuAuth.saveXML() );  	 
	 
			// this.grd_resultAuth.setCellProperty("body", 1, "edittype", "expr:TREE_LEVEL=='0'||TREE_LEVEL=='1'?'none':'checkbox'");		
			// TREE_LEVEL 필드가 0, 1 일 때 checkbox를 사용 불가로 처리
			
			// UI_ID 필드가 Null 일 때 checkbox를 사용 불가로 처리
			this.grd_resultAuth.setCellProperty("body", 1, "edittype", "expr:UI_ID !=null ?'checkbox':'none'");		// Grid edittype 변경(전체 권한 칼럼)
			this.grd_resultAuth.setCellProperty("body", 2, "edittype", "expr:UI_ID !=null ?'checkbox':'none'");		// Grid edittype 변경(조회 권한 칼럼)
			this.grd_resultAuth.setCellProperty("body", 3, "edittype", "expr:UI_ID !=null ?'checkbox':'none'");		// Grid edittype 변경(신규 권한 칼럼)
			this.grd_resultAuth.setCellProperty("body", 4, "edittype", "expr:UI_ID !=null ?'checkbox':'none'");		// Grid edittype 변경(저장 권한 칼럼)
			this.grd_resultAuth.setCellProperty("body", 5, "edittype", "expr:UI_ID !=null ?'checkbox':'none'");		// Grid edittype 변경(삭제 권한 칼럼)
			this.grd_resultAuth.setCellProperty("body", 6, "edittype", "expr:UI_ID !=null ?'checkbox':'none'");		// Grid edittype 변경(인쇄 권한 칼럼)
			this.grd_resultAuth.setCellProperty("body", 7, "edittype", "expr:UI_ID !=null ?'checkbox':'none'");		// Grid edittype 변경(숨김 칼럼)
		break;
	}
} 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.07.26(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 22:00 ==> STGClient 4.0.exe 프로그램 사용(AP QMS 개발, 운영 서버 접속, 배포용)

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- 메뉴 권한 설정 ==> 완료 @@@
1. 업무그룹별 메뉴권한 등록 화면(/CM_TskGrpLyMenuAuthInput.xfdl) 파일 수정
 1) 업무그룹별 사용자 등록(CM_TskGrpLyUsrInput.xfdl) 화면에서 메뉴사용권한(Y) 필드를 추가해서 그룹별로 권한그룹코드를 관리해야 됨
============================================================================================================== 

- 조회시 Wait 커서 표시
1. /APQMS.xadl 파일에서 loadingimage="URL('img::waitimage.gif')"
<Application id="APQMS" codepage="utf-8" language="Korean" loginformurl="" loginformstyle="" windowopeneffect="" 
	windowcloseeffect="" version="" tracemode="none" themeid="APQMS.xtheme" onload="application_onload" 
	onloadforms="application_onloadforms" httptimeout="60" loadingimage="URL('img::waitimage.gif')" 
	onbeforeexit="application_onbeforeexit">
	<Layout>
    </Layout>
 </Application>
2. setWaitCursor: Wait 커서를 표시하여 입력을 방지하거나, 표시 상태를 해제하는 메소드  
/***********************************************************************
 * 함수명  	    : fn_search
 * 설명 		: 01. 조회(공통) Master, Detail, Sample 정보 조회  
***********************************************************************/
this.fn_search = function()
{ 
	trace("[/SY_ScreenInput.xfdl][fn_search()]==> [TEST_01]" ); 
	
	this.setWaitCursor(true);		// Wait 상태 설정   ===> setWaitCursor 설정할 필요 없음(공통 함수에서 제공)
 
	this.fsp_callService(
		  ""
		, ""
		, "ds_cond=ds_cond"
		, "ds_listMaster=ds_listMaster"
		, "" 
			,"fn_callback"		// 콜백 함수 명
		, false				// error시 callback 호출 여부 
		, false				// "처리 중입니다."라는 창 표시 여부
		, true				// 서버와 통신 방식(true: 비동기(Default), false: 동기)	
		, "sid_find"		// 서비스 요청 아이디(콜백 함수에서 사용 가능)
	); 
} 
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.07.27(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 19:40 ==> 서울행(20:12 ~ 22:07, 삽교역 -> 영등포역) 

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- SSO 연동
1. 로그인 화면(commLogin.xfdl)에서
this.fn_onloadFirst = function()
{
	if(!gfn_isNull(application.gv_token)) 	// 기타 인증(SSO)를 통한 token 값이 전달된 경우
	{ 
		trace("[/commLogin.xfdl][fn_onloadFirst()] ==> [TEST_32][application.gv_token]"+ application.gv_token );
 
		// 전달된 인증데이터를 사용하여 세션, 메뉴, 마이메뉴 서비스 호출
		ds_cond.setColumn(0, "USER_ID", application.gv_token);		// 사용자ID
		ds_cond.setColumn(0, "IS_SSO", "Y");		// SSO여부
		
		this.fn_loginTr();	// 사용자정보 가져오기(후 처리 -> 메뉴&권한, 공통코드)
	}
}

- SSO 연동 처리(1515940: 심정보)
https://apqmsdev.hyundai-steel.com/APQMS/index.jsp?gv_token=1515940

http://10.10.180.108:8081/install/xInstallPlugin.jsp 

- Nexacro Browser(Runtime) 배포 샘플  ==> /nexacro14Runtime.zip
============================================================================================================== 

- Calendar.essential 추가(/Common.css 파일에서)
1. Calendar 필수 이미지 보이게 수정
/* Calendar */
/* 추가[Calendar.essential 추가]: 2018.07.27, by 진태만 */
Calendar.essential  
{
	background		: #ffffff URL('theme://WorkFrame/img_WF_Essential.png');
}
============================================================================================================== 

- 왼쪽 프레림 상단 메뉴, 마이 메뉴 버튼 수정
/***********************************************************************
 * 함수명  	: afn_loadCommonData
 * 설명 		: 로그인 팝업 콜백 함수 
***********************************************************************/
this.afn_popup_callback = function(sid, rtn)
{
	trace("[/APQMS.xadl][afn_popup_callback()]==> [로그인 팝업 콜백 함수][TEST_01][sid]"+ sid +"[rtn]"+ rtn ); 

	if(rtn) 
	{  
		this.av_leftFrame.form.fn_getUserMenu();	// left Frame 사용 가능한 Menu 조회  
		this.av_topFrameSet.set_visible(true);		// top Frame 보이기 
 
		if(application.gv_userId == "1519927") { 	// 사번이 1519927 이면
			this.av_mainFrame.set_openstatus("maximize");		 // 메인 화면 최대 크기로 열기(normal: 보통, maximize: 최대)   
			application.av_leftFrame.form.div_menu.set_visible(false);	// div_menu 안 보이기 처리
			application.av_leftFrame.form.div_myMenu.set_visible(true);	// div_myMenu 보이기 처리  
			application.av_leftFrame.form.btn_myMenu.set_cssclass("btn_LF_MyMenu_S");	// div_myMenu css 셋팅 처리(글자 굵게 처리)  
			--> 왼쪽 메뉴에서 상단 MyMenu 버튼 선택(굵게) 처리 @@@
			gfn_ShowLeftMenuFrame(240);		// Left 메뉴 열기 처리
			fn_showLeftMenuOpen();		// Left 메뉴 열기 처리(Left Menu 프레임 나누기, 보이기)
		}	
		else
		{
			application.av_leftFrame.form.div_menu.set_visible(true);	// div_menu 보이기 처리
			application.av_leftFrame.form.div_myMenu.set_visible(false);	// div_myMenu 안 보이기 처리  
			application.av_leftFrame.form.btn_menu.set_cssclass("btn_LF_Menu_S");		// div_myMenu css 셋팅 처리: 왼쪽 메뉴에서 
			상단 Menu 버튼 선택(굵게) 처리 @@@	
		}
		trace("[/APQMS.xadl][afn_popup_callback(()]==> [TEST_02] [gds_session,_CNT]"+ application.gds_session.rowcount 
		+"[gds_session.saveXML()] \n"+ application.gds_session.saveXML() );
 	
		var sUserNmDeptNm = application.gds_session.getColumn(0, "KO_NM") +" ["+ application.gds_session
		.getColumn(0, "DEPT_NAME")+"]";		// 성명, 부서
 
		application.av_topFrame.form.st_userNmDept.set_text(sUserNmDeptNm); 	// 성명[부서] 셋팅 (TOP 프레임)  
	}
}
--------------------------------------------------------------------------------------------------------------------------------

- 왼쪽 메뉴(/frmLeft.xfdl) 파일에서
/***********************************************************************
 * 함수명  	: btn_menu_onclick
 * 설명 		: Menu 버튼 클릭 이벤트
***********************************************************************/
this.btn_menu_onclick = function(obj:Button,  e:nexacro.ClickEventInfo)
{
	trace("[/frmLeft.xfdl][btn_menu_onclick()]==> [왼쪽 메뉴에서 메뉴 버튼 클릭 이벤트][TEST_01] ===========> " ); 
   
	this.div_menu.set_visible(true);		// div_menu 보이기 처리
	this.btn_menu.set_cssclass("btn_LF_Menu_S");  // 메뉴 css 셋팅	--> 왼쪽 메뉴에서 상단 Menu 버튼 선택(굵게) 처리 @@@
	
	this.div_myMenu.set_visible(false);		// ddiv_myMenu  안 보이기 처리
	this.btn_myMenu.set_cssclass("btn_LF_MyMenu");  // 메뉴 css 셋팅(글자 굵게 처리)	--> 왼쪽 메뉴에서 상단 MyMenu 버튼 비선택 처리 @@@
    
	this.ds_subMenu.copyData(application.gds_menu, true);  		// 왼쪽 Frame ds_subMenu Ds에 복사 
}
--------------------------------------------------------------------------------------------------------------------------------

/***********************************************************************
 * 함수명  	: btn_myMenu_onclick
 * 설명 		: my Menu 버튼 클릭 이벤트 
***********************************************************************/
this.btn_myMenu_onclick = function(obj:Button,  e:nexacro.ClickEventInfo)
{
	//trace("[/frmLeft.xfdl][btn_myMenu_onclick()]==> [My Menu 목록 조회][TEST_01]" ); 
 
	this.div_menu.set_visible(true);		// div_menu 안 보이기 처리
	this.btn_menu.set_cssclass("btn_LF_Menu");  // 메뉴 css 셋팅 --> 왼쪽 메뉴에서 상단 Menu 버튼 비선택 처리 @@@
	
	this.div_myMenu.set_visible(true);		// div_myMenu 보이기 처리
	this.btn_myMenu.set_cssclass("btn_LF_MyMenu_S");  // 메뉴 css 셋팅 --> 왼쪽 메뉴에서 상단 MyMenu 버튼 선택(굵게) 처리 @@@)
	
	this.fn_getMyMenu();	// my Menu 조회
}
============================================================================================================== 
 
- 강관 수입검사(/QI_SteelPipeImpInsp.xfdl) 수정 ==> 완료 @@
1. 현상: 조회  버튼 클릭 --> 신규  버튼 클릭  -->  강관수입검사 현황 Grid 클릭 ==> 검토자, 승인자가 틀려짐
조회 조건:  2018-07-06 ~ 2018-07-27
[TEST_40][nRow]7[검사번호]20180720-14-0007[검토자]김재철[승인자]김경빈
[TEST_40][nRow]7[검사번호]20180720-14-0007[검토자]진태만2[승인자]진태만2
2. 원인: 행 추가시  this.fn_get_confirmer() 함수에서 this.ds_list.setColumn를 처리함
this.ds_list.setColumn(nRow, "EXAM_UNM", this.ds_confirmer.getColumn(0, "EXAM_UNM"));  	// 검토자
3. 조치: his.fn_get_confirmer() 함수 사용 안함(함수 주석 처리)
/***********************************************************************
 * 함수명  	: fn_addrow
 * 설명 		: 행추가 처리  
***********************************************************************/
this.fn_addrow = function()
{
	trace("[/QI_SteelPipeImpInsp.xfdl][fn_addrow()]==> [행 추가 처리][TEST_01]" );
 
	//this.fn_get_confirmer();	// 검토자, 승인자 셋팅  ==> 사용 안함(함수 주석 처리) 
}
============================================================================================================== 

- 강관 수입검사(/QI_SteelPipeImpInsp.xfdl) 수정 ==> 완료 @@
1. 현상: ds_detail Ds 행추가를 해야만 등록할 수 있게 수정하고 저장을 하면 에러 발생(fn_save_02 함수 2번 호출됨) 
uxs (92832): UD 13:11:9:136  [/QI_SteelPipeImpInsp.xfdl][fn_save_02()]==> [03. 저장 처리][TEST_01][검사번호]
uxs (92832): UD 13:11:9:137  [/QI_SteelPipeImpInsp.xfdl][fn_setDs_list()]==> [TEST_02][ds_detail,_CNT]1
uxs (92832): UD 13:11:9:138  [/QI_SteelPipeImpInsp.xfdl][fn_save_valid_check()]==> [valid_check][TEST_01]
uxs (92832): UD 13:11:9:141  [/QI_SteelPipeImpInsp.xfdl][fn_save_02()]==> [03. 저장 처리][TEST_05][bRst]true
uxs (92832): UD 13:11:9:142  [/QI_SteelPipeImpInsp.xfdl][fn_save_02()]==> [03. 저장 처리][TEST_05_2][bRst]true[v_noSavDataExstYn]N
uxs (92832): UD 13:11:9:144  [/QI_SteelPipeImpInsp.xfdl][fn_save_02()]==> [03. 저장 처리][TEST_05_4][bRst]true[v_noSavDataExstYn]N
uxs (92832): UD 13:11:9:146  [/QI_SteelPipeImpInsp.xfdl][fn_save_02()]==> [03. 저장 처리][TEST_05_6][bRst]true
uxs (92832): UD 13:11:10:452 [/QI_SteelPipeImpInsp.xfdl][fn_saveConfirmCallback()] ==> [저장 컨펌 콜백][TEST_01][sid]ConfirmPopup[rtn]true[v_nAlertId]51
uxs (92832): UD 13:11:10:452 [/QI_SteelPipeImpInsp.xfdl][fn_saveConfirmCallback()]==> [03. 저장 처리][TEST_41]
uxs (92832): UD 13:11:10:458 [/QI_SteelPipeImpInsp.xfdl][fn_save_02()]==> [03. 저장 처리][TEST_01][검사번호]
uxs (92832): UD 13:11:10:462 [/QI_SteelPipeImpInsp.xfdl][fn_setDs_list()]==> [TEST_02][ds_detail,_CNT]1
uxs (92832): UD 13:11:10:465 [/QI_SteelPipeImpInsp.xfdl][fn_save_valid_check()]==> [valid_check][TEST_01]
uxs (92832): UD 13:11:10:469 [/QI_SteelPipeImpInsp.xfdl][fn_save_02()]==> [03. 저장 처리][TEST_05][bRst]true
uxs (92832): UD 13:11:10:469 [/QI_SteelPipeImpInsp.xfdl][fn_save_02()]==> [03. 저장 처리][TEST_05_2][bRst]true[v_noSavDataExstYn]N
uxs (92832): UD 13:11:10:473 [/QI_SteelPipeImpInsp.xfdl][fn_save_02()]==> [03. 저장 처리][TEST_05_4][bRst]true[v_noSavDataExstYn]N
uxs (92832): UD 13:11:10:473 [/QI_SteelPipeImpInsp.xfdl][fn_save_02()]==> [03. 저장 처리][TEST_05_6][bRst]true
uxs (92832): SE 13:11:10:477 해당 ID를 갖는 Object 가 존재합니다. id = [ConfirmPopup]

/***********************************************************************
 * 함수명  	: fn_save_02
 * 설명 		: 03. 저장 처리 
***********************************************************************/
this.fn_save_02 = function()
{
	v_nAlertId = 51;	// alert ID(51: 검사번호 자동 채번 처리) 
	//trace("[/QI_SteelPipeImpInsp.xfdl][fn_save_02()]==> [03. 저장 처리][TEST_05_4][bRst]"+ bRst +"[v_noSavDataExstYn]"+ v_noSavDataExstYn ); 
	
	if(v_noSavDataExstYn == "Y") 	// 저장하지 않은 데이타 존재하면 ==> 조회, 신규, ds_list_onrowposchanged에서 넘어옴
	{ 
		v_noSavDataExstYn = "N";	// 저장하지 않은 데이타 존재 여부
		this.fn_getIqcNo(); 	// 03. 검사번호 자동 채번 처리
	}
	else
	{ 
		gfn_confirm(this, "Q0002", "", "fn_saveConfirmCallback");		// Q0002: 저장 하시겠습니까?[fn_save_02()] 
	}
}

/***********************************************************************
 * 함수명  	: fn_saveConfirmCallback
 * 설명 		: 저장 컨펌 콜백 
***********************************************************************/
this.fn_saveConfirmCallback = function(sid, rtn)
{
	trace("[/QI_SteelPipeImpInsp.xfdl][fn_saveConfirmCallback()] ==> [저장 컨펌 콜백][TEST_01][sid]"+ sid +"[rtn]"+ rtn +"[v_nAlertId]"+ v_nAlertId );
 
	if(v_nAlertId == 51)	// 검사번호 자동 채번 처리 이면  ==> 추가 @@@
	{
		v_nAlertId = 0;			// alert ID
		
		if(rtn)	// 저장 컨펌이 '예' 이면
		{
			this.fn_getIqcNo();		// 03. 검사번호 자동 채번 처리  ==> 추가 @@@
		}
	}
	else
	{ 
		if(rtn)		// 저장 컨펌이 '예' 이면
		{
			trace("[/QI_SteelPipeImpInsp.xfdl][fn_saveConfirmCallback()]==> [03. 저장 처리][TEST_41]"); 
			this.fn_save_02();		// 03. 저장
		}  
	}
}
============================================================================================================== 

■■■■■■■■■■■■■■■■■■ 2018.07.28(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 19:40 ==>  

- 주말
08:00 기상
08:35 조식(라면)
11:00 집출발(수종)
11:20 중식(스페셜 정식, 치즈돈가스, 김밥천국 대림점) 수종
12:00 귀가(우산 가지러 감)
12:10 대림역 정류장(6511번, 150번 버스, 대림역 -> 서울신문사)
13:00 서울신문사 하차: 소나기가 엄청 와서 옷 다 젖음(핸드폰 충전기/USB 포트에 물이 들어감
13:30 교보 문고 도착(옷이 젖어 화장실에서 옷 갈아 입음): 수종은 안 갈아 입음 ==> 책, 장난감 구경
14:30 광화문 광장 구경(비 그침)
15:30 종로1가 정류장(150번 버스, 종로1가 -> 신대방 성원 상떼빌)
17:00 귀가
17:30 낮잠
16:30 기상
19:30 석식
23:00 취침(선풍기 없이 잠: 너무 더움)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.07.29(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==> 

▦ 축구
08:00 기상
09:35 조식(라면)
10:30 루옌, 수종 도림천 물놀이장에 놀러감
10:30 TV 시청
11:00 중식(냉면)
11:30 TV 시청
19:00 집출발 
19:20 엘마트(빵, 우유 구입)
19:30 귀가 ==> 루옌, 수종 귀가해서 집에 있음
19:30 석식
20:00 집출발
20:10 대림역 7호선 마을버스 정류장(영등포04 버스 탑승)
20:30 영등포역 도착
20:49 예산행(20:49 ~ 22:36, 영등포역 -> 삽교역) 탑승
		==> 뒷 자리에 아저씨가 3번 정도 의자를 침 --> 열 받아서 항의 하니 내가 자리를 뒤로 많이 재껴서 그랬다고 함 --> 더 열받아서 난동 부림
22:45 삽교역 도착 40분 연착) ==> ?신 장애 -> 대합실에 가서 지연보상 쪽지 받아옴(코레일에 홈페이지에서 지연보상 누적 마일리지 1,000원 적립)
		--> 지연 되어도 홈페이지에서 지연보상 마일리 처리하면 됨
		열차지연배상 신청 화면 ==> http://www.letskorail.com/ebizcom/EbizComMypagePr14200W_pr14260.do 
		지연료 마일리지 적립 신청 ==> http://www.letskorail.com/ebizcom/EbizComMypagePr14200W_pr14260.do 
23:40 귀가
24:40 TV 시청, Memo 정리
01:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.07.30(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 21:30 ==> 2공장 정전(발전기 돌림 -> 발전기 고장(10:40] -> 수리[11:00]), 중식(쌈밥, 박정자 식당: 개발팀 -> 이상탁 차장이 쏨)

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- SSO 연동
1. 로그인 화면(commLogin.xfdl)에서
"http://spmes.hyundai-steel.com/sso_steel.jsp", "CMES");'>강관MES

- SSO 연동 처리(1515940: 심정보)
https://apqmsdev.hyundai-steel.com/APQMS/index.jsp?gv_token=1515940

http://10.10.180.108:8081/install/xInstallPlugin.jsp
http://spmes.hyundai-steel.com/sso_steel.jsp  ==> 강관MES
"C:\Program Files\TOBESOFT\XPLATFORM\9.2\XPlatform.exe"  -K '_DEV'  -X 'http://10.10.180.108:8081/xui/humes.xadl' -OO 'true'

ping spmes.hyundai-steel.com    ===> 10.10.111.110
https://apqmsdev.hyundai-steel.com/APQMS/sso_steel.jsp  ==> 강관MES

http://10.10.180.108:8081/sso_steel.jsp  ==> 현대하이스코 통합 MES
http://10.10.180.108:8081/xui/sso_steel.jsp  ==> 현대하이스코 통합 MES

https://apqmsdev.hyundai-steel.com/sso_steel.jsp  ==> 현대제철 AP QMS 개발 서버

null  ==> 현대하이스코 통합 MES
--> com.nets.sso.common.AgentException: 등록되지 않은 SSO 사이트 웹 서버로 부터 요청되었습니다., Exception Code = 13000003 
"C:\Program Files\TOBESOFT\XPLATFORM\9.2\XPlatform.exe"  -K 'HUMES_LOCAL'  -X 'null' -OO 'true'

 https://myit.hyundai-steel.com/cp/index.jsp
==============================================================================================================

- 메뉴등록(/SY_MenuInput.xadl) 변경[메뉴 수정]
1. 변경관리 (UM) > 4M 변경관리
 1) 4M변경 통보 등록(UM-01-030, UM_4MChngNotiInput) 삭제
 
2. 변경관리 (UM) > ISIR관리
 1) 고객 ISIR 의뢰/승인 등록(UM-02-010, UM_CustISIRReqtAprvInput) ==> ISIR 등록/승인 (UM_ISIRInputAprv)
 2) 고객 ISIR 제출서류 등록(UM-02-020, UM_CustISIRPstPapersInput) ==> 삭제
 3) 고객 ISIR 갑지 출력(UM-02-030, UM_CustISIRRBlackacreOtpt) ==> ISIR 갑지 출력(UM_ISIRRBlackacreOtpt)
 
3. 변경관리 (UM) > 협력사 4M 변경관리
 1) 협력사 4M변경 의뢰 등록(UM-03-010, UM_Vndr4MChngReqtAprvInput) ==> 협력사 ISIR 접수/승인 등록(UM_VndrISIRAccpAprvInput) 
 2) 협력사 4M변경 실적 등록(UM-03-020, UM_Vndr4MChngRsltInput) ==> 고객 ISIR 제출서류 등록(UM_CustISIRPstPapersInput)
 3) 협력사 4M변경 계획/실적 현황(UM-03-030, UM_Vndr4MChngPlanRsltStat) ==> 추가
 
4. 변경관리 (UM) > 협력사 ISIR관리
 1) 협력사 ISIR 등록/승인(UM-04-010, UM_VndrISIRReqtAprvInput) ==> 추가  
 2) 협력사 ISIR 갑지 출력(UM-04-020, UM_VndrISIRRBlackacreOtpt) ==> 추가  
 
5. 신차개발 (NC) > 프로젝트관리
 1) WBS 등록(탬플릿): 위치 변경(4번째) 
 
6. 신차개발 (NC) > 개발EO관리
 1) 개발EO 업무 등록(NC-03-020, NC_DvlpEOTskInput) ==> 개발EO 업무관리 등록(NC_DvlpEOTskMngmInput)

7. 신차개발 (NC) > 양산EO관리
 1) 양산EO 등록(NC-04-010, NC_MassProductionEOInput ==> 양산EO 접수 등록(NC_MassProductionEOAccpInput)
 2) 양산EO 업무 등록(NC-04-020, NC_MassProductionEOTskInput) ==> 양산EO 업무관리 등록(NC_DvlpEOTskMngmMngmInput)   
==============================================================================================================
  
- 이미지 업로드 이관  처리
1. 개발 서버 --> 운영 서버
D:\QMS\APQMS\workspace\APQMS\upload\img\apqms

- Ubi 리포 파일 이관  처리
1. 개발 서버 --> 운영 서버
D:\QMS\APQMS\workspace\APQMS\WebContent\ubi4\work
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.07.31(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 22:00 ==> 회식(22:30 ~ 01:30, 호프집, 강전관 과장, 김도현 대리): 버디돈까스호프

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- 로그 아웃 처리
1. TOP 프레임(/frmTop.xadl)에서 로그 아웃 처리 후 로그인 화면(commLogin.xfdl)으로 이동
this.btn_exit_onclick = function(obj:Button,  e:nexacro.ClickEventInfo)
{
	trace("[/frmTop.xfdl][btn_exit_onclick()] ==> [시스템 종료][TEST_01]" ); 
	
	gfn_confirm(this, "Q0021", "", "exitConfirmCallback"); // Q0021: 로그 아웃 하시겠습니까? 
}

/***********************************************************************
 * 함수명  	: exitConfirmCallback
 * 설명 		: 콜백 함수
 * params  		: None
 * return Type 	: None 
***********************************************************************/
this.exitConfirmCallback = function(sid, rtn)
{
	trace("[/frmTop.xfdl][exitConfirmCallback()] ==> [시스템 종료 콜백][TEST_01][sid]"+ sid +"[rtn]"+ rtn ); 
	
	if(rtn) 
	{ 
		application.JSESSIONID = ""; 
		application.gds_session.clearData();
		application.gds_openMenu.clearData();
		application.gds_menu.clearData();
		application.gds_myMenu.clearData();
		application.gds_message.clearData();
		application.gv_userId = "";	// 로그인 ID
		application.gv_token = "";	// 로그인 ID(SSO)
		
		this.afn_loginPopup();		// 로그인 팝업 함수 호출 호출 
	}
} 
==============================================================================================================

- 메뉴 권한 설정
1. 업무그룹별 메뉴권한 등록 화면(/CM_TskGrpLyMenuAuthInput.xfdl) 파일 수정
 1) 숨김 칼럼 ==> 보이기 칼럼 변경
==============================================================================================================  
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 
+----------------------------------------------------// End //----------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
