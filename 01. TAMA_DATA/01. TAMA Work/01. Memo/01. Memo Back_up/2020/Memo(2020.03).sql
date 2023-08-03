

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+----------------------------------------------// Memo(2020.03) //----------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2020.03.01(일) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 08:00 ~ 18:00 ==> 3.1절

- 주말2[★]
07:30 기상
08:00 조식 
08:30 실내 자전거 타기
09:30 종료
09:00 인터넷 서핑 ==> 가계부 월말 결산[이체] 처리
12:00 중식
12:30 실내 자전거 타기 
14:00 종료 
14:20 인터넷 서핑 ==>지출결의서_진태만(2020.03.04) 사전 정리 
		[기업비사] 12회 : 현대차 정몽구 회장, 아버지의 그림자를 넘어서라! ==> https://www.youtube.com/watch?v=9moR6cc4U7Q
15:40 루옌(수종) 놀러감
17:00 석식
17:20 실내 자전거 타기
18:20 종료
18:30 인터넷 서핑 ==> 오라클 DB 설치 방법 분석(Oracle Client 11g R2 설치)
19:20 집출발 ==> 쌀, 반찬, 캐어센스 체혈 검사지(4통) 가져감
19:40 온수역 2번 출구 도착 ==> (주)이노 액티브에서 빌린 차 얻어 탐(최종규 팀장 외 3명)
20:00 서울 출발
21:06 당진 현대 애비뉴 도착
21:10 귀가
23:00 취침
==============================================================================================================

- 투비 제품 라이센스 적용(7시, 집)
1. 개발 서버에 Nexacro 2개월 라이센스 받아서 적용할 것
2. 로컬 서버에 Xplatform, Nexacro 2개월 라이센스 받아서 적용할 것 
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2020.03.02(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==> 수종 대동초 입학식 코로나19 때문에 3주일 연기(3월 23일 예정), 전양근 사원 철수(16:30, 김책 부대표)
								, 현대제철 식당 식권 구입(10시, 44장 237,600원(장 당: 5,400원), 계좌 이체[농협])
								, 진수종 대동초 1학년 1반으로 배정(김진주 선생님(010-6370-3498)한테 입학 연기 전화옴)

- 현대제철 유해화학물질 MAP 구축 Prj[★]
- 공장 단위(관리자) (/admin::FmiAdmin.xfdl) 화면 수정
1. Grid에서 특정 칼럼 데이타 끌어서 WebBrowser에 올려 놓기
==============================================================================================================

- split 함수(자르기)
/***************************************************************************
 * Even   : wb_NoxMat_onusernotify
 * Desc   : wb_NoxMat  ==> FmiAdmin에 로드된 웹페이지에서 nexacro쪽으로 정보를 전달할 때 발생하는 이벤트(02. 3D에서 데이타 받기)
 ****************************************************************************/
this.wb_NoxMat_onusernotify = function(obj:nexacro.FmiAdmin,e:nexacro.WebUserNotifyEventInfo)
{
	trace("[/FmiAdmin.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_01] [e.userdata]"+ e.userdata ); 
	// [e.userdata]ID_FACILITY=100011&N_X=11&N_Y=12&N_Z=13&Name=진태만&hire_date=2018-02-01

	var arrColList = String(e.userdata).split("&");		// String 자르기
	trace("[/FmiAdmin.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_03] [arrColList[0]]"+ arrColList[0] +"[arrColList[1]"+ 
		arrColList[1] +"[arrColList[2]"+ arrColList[2] );
 
	var sName = String(arrColList[0]).split("=");	 // 01. 시설 코드 자르기
	
	if(sName[0] == "ID_FACILITY")	 	// 01. 시설 코드 이면
	{  
		//this.edt_ID_FACILITY.set_value(sName[1] );		// 01. 시설 코드 
		trace("[/CallingHtmlMethod.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_13] [데이타 받기_성공] [01. 시설 코드]"+ sName[1] ); 
	}  
}; 
============================================================================================================== 
 
- 회의(14:30)
1. 현대제철 유해화학물질 MAP 구축 문의 ==> 최종규 팀장, 김황 과장, 김책 부대표, 박민영 PM, 김종민 책임
 1) 개발 중간 점검: 개발 상황 보고
 2) 설비 (TT) ==> 상세도면 띄우기
 3) 일정 협의
  가. 4월 15일 개발 완료
==============================================================================================================
   
- 한화손해보험 실비 청구(2019년 6월어깨 수술) 입금됨
1. 총 본인 부담금: 1,246,100원, 실비 지급액: 1,088,500원
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2020.03.03(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==>  

- 현대제철 유해화학물질 MAP 구축 Prj[★]
- 공장 단위(관리자) (/admin::FmiAdmin.xfdl) 화면 수정
1. WebBrowser를 이용한 타 시스템과의 데이타 교환 ==> 완료 @@@ 
 1) Grid에서 특정 칼럼 데이타 끌어서 WebBrowser에 올려 놓기
2. WebBrowser를 이용한 타 시스템과의 데이타 교환 매뉴얼 작성
 1) 최종규 팀장, 김황 과장, 김대원 부장, 김태완 과장에게 메일 보냄  
==============================================================================================================- 

- 공장 단위(관리자) (/admin::FmiAdmin.xfdl) 화면 수정 ==> 완료 @@@
1. 트리뷰, 리스트뷰 수정
==============================================================================================================

- 공설비정보(/admin::EqupInfo.xfdl) 화면 수정==> 완료 @@@
1. 설비 외주작업 현황 팝업(/admin::noxOutWorkStatDmiP.xfdl) 화면 추가  
==============================================================================================================

- 현재 물질정보 리스트(/admin::MatterInfoLst.xfdl) 화면 수정 ==> 완료 @@@
1. 물질 등록 최대 50개로 제한 
==============================================================================================================

- 설비정보(/admin::EqupInfo.xfdl) 화면 수정 ==> 완료 @@@
1. 설비 인허가 정보(TB_HCM_LICENSE) 테이블 추가
==============================================================================================================

- 회의(10:00)
1. WebBrowser를 이용한 타 시스템과의 데이타 교환
 1) 최종규 팀장, 김황 과장, 박민영 PM, 김대원 부장, 김태완 과장
==============================================================================================================

- 회의(14:00)
1. 일정, 개발 잔여 분량 회의
 1) 최종규 팀장, 김황 과장 ==> 3월 25일(수): 통합 테스트, 3월 30일(수): 오픈
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2020.03.04(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==>  

- 현대제철 유해화학물질 MAP 구축 Prj[★] 
- 공장 단위(/noxMat::Fmi.xfdl) 화면 수정 ==> 완료 @@@
1. 설비 단위(/noxMat::Dmi.xfdl) 화면 없애기
==============================================================================================================
 
- 공장 단위(/noxMat::Fmi.xfdl) 화면 수정  
1. 설비정보(/noxFacilInfoP::Dmi.xfdl) 화면 수정
 1) 설비정보 조회 ==> 물질ID A, B, C, 사용량, 저장량 칼럼 수정
==============================================================================================================
   
■■■■■■■■■■■■■■■■■■ 2020.03.05(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==> 06:10 인슐린 약 교체(256U, 21U 남음: 배에서 피가 나서 팬티에 젖음, 팬티 세탁) 최종규 팀장 출장(내일까지)

- 현대제철 유해화학물질 MAP 구축 Prj[★] 
- 공장 단위(/noxMat::Fmi.xfdl) 화면 수정  
1. 설비정보(/noxFacilInfoP::Dmi.xfdl) 화면 수정 ==> 완료 @@@
 1) 설비정보 조회 ==> 물질ID A, B, C, 사용량, 저장량 칼럼 수정(CASE WHEN 문으로 처리)
 /* 설비 정보 조회 ==> [/TK11004Mapper.xml] [selectList()] [2020.02.18, by 진태만] */
SELECT  M.ID_FACILITY, M.NM_EQUP, M.DT_INSPECTION, M.NO_FACILITY, M.ID_FCT 
			, (CASE WHEN (MAX(DECODE(M.D_RANK, '1', M.USE_AMT)) IS NOT NULL
							AND MAX(DECODE(M.D_RANK, '1', M.SAV_AMT)) IS NOT NULL) THEN   '사용량(톤)  / 저장량(톤)'
						WHEN MAX(DECODE(M.D_RANK, '1', M.USE_AMT)) IS NOT NULL THEN   '사용량(톤)'
						WHEN MAX(DECODE(M.D_RANK, '1', M.SAV_AMT)) IS NOT NULL THEN   '저장량(톤)'
						ELSE '' END) AS MATTER_ID_A_TITLE2		/* 제목 물질ID_A */
			, (CASE WHEN (MAX(DECODE(M.D_RANK, '1', M.USE_AMT)) IS NOT NULL
							AND MAX(DECODE(M.D_RANK, '1', M.SAV_AMT)) IS NOT NULL
						) THEN MAX(DECODE(M.D_RANK, '1', M.USE_AMT)) || ' / ' || MAX(DECODE(M.D_RANK, '1', M.SAV_AMT))
						WHEN MAX(DECODE(M.D_RANK, '1', M.USE_AMT)) IS NOT NULL THEN  MAX(DECODE(M.D_RANK, '1', M.USE_AMT))
						WHEN MAX(DECODE(M.D_RANK, '1', M.SAV_AMT)) IS NOT NULL THEN MAX(DECODE(M.D_RANK, '1', M.SAV_AMT))
						ELSE '' END) AS MATTER_ID_A_VALUE 		/* 물질ID_A_값 */
FROM
;
==============================================================================================================

- 설비정보(/admin::EqupInfo.xfdl) 화면 수정
1. 등록, 수정 확인 ==> 시설코드가 물질ID가 NULL 일때 등록 가능하도록 수정
 1) 조회시 MATTER_ID_1=NULL, MATTER_ID_2=10001, MATTER_ID_2=10002로 조회됨...
	/* 설비 정보_02 조회 ==> [/TK11004Mapper.xml] [selectList_02()] [2020.03.06, by 진태만] */
 SELECT  M.ID_FACILITY,  
			, (CASE WHEN (MAX(DECODE(M.D_RANK, '1', M.MATTER_ID)) IS NULL
								AND MAX(DECODE(M.D_RANK, '2', M.MATTER_ID)) IS NOT NULL) THEN MAX(DECODE(M.D_RANK, '2', M.MATTER_ID))  
						ELSE MAX(DECODE(M.D_RANK, '1', M.MATTER_ID)) END) AS MATTER_ID_A  		/* 물질ID_A  @@@ */
FROM
;
==============================================================================================================
 
- 순위 설정
1. DENSE_RANK 함수(오라클 전용함수) 사)용 ==> SUBSTR(E.MATTER_ID, 0, 1) DESC, PRRT_RANK 순으로 처리(NULL 맨 앞으로 정렬됨)
/* 설비 정보_02 조회 ==> [/TK11004Mapper.xml] [selectList_02()] [2020.03.06, by 진태만] */
SELECT  M.ID_FACILITY, M.NM_EQUP,
FROM (   
	/*  ;    --  ===============================================================================================> */  
	SELECT DENSE_RANK() OVER(ORDER BY SUBSTR(E.MATTER_ID, 0, 1) DESC 
			    	, (SELECT PRRT_RANK
						FROM TB_HCM_HAZARDCHEMICAL 		/* 유해화학물질 정보 TB */
	                WHERE 1=1 AND MATTER_ID = E.MATTER_ID AND DEL_YN = 'N')) AS D_RANK		 /*  물질ID RANK */   
	            	, E.MATTER_ID			/* 물질ID */
					, F.MATTER_NM		/* 물질명 */   
		 			, A.*
		FROM TB_HCM_EQUIPMENTBASE A 				/* 설비 기본 정보 TB */ 
				, TB_HCM_EQUIPMENTHC E						/* 설비 취급물질 정보 TB */
			    , TB_HCM_HAZARDCHEMICAL F 				/* 유해화학물질 정보 TB */  
		WHERE 1=1 
			AND A.ID_FCT = B.ID_FCT
			AND A.STR_CPK_TYPE = C.STR_CPK_TYPE   
	           AND A.ID_FCT = #{ID_FCT}		/* 공장 코드 */
	       </if>  
		/*  ;    --  ===============================================================================================> */  
		) M
GROUP BY  M.ID_FACILITY, M.NM_EQUP, M.DT_INSPECTION, M.NO_FACILITY, M.ID_FCT
ORDER BY M.ID_FACILITY	 
==============================================================================================================
     
■■■■■■■■■■■■■■■■■■ 2020.03.06(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 14:30 ==> 긴급 돌봄 신청(9시, 대동초 교무실, 다음주 부터 2주간 돌봄 교실로 등교(9시 ~ 17시), 마스크, 도시락 지참)
								, 주남이형 노트북 주문(9시, 택배로 우리집으로 보냄: OS 윈도우 10 설치, SW 설치할 것)
								, 서울행(14:14 ~ 16:05): (주)이노 액티브 팀원들 차 얻어 탐 --> 16:10 천왕역 2번 출구 도착 
								--> 16:30 대림역 --> 16:40 귀가
								
- 현대제철 유해화학물질 MAP 구축 Prj[★] 
- 설비정보(/admin::EqupInfo.xfdl) 화면 수정
1. 등록, 수정(/TK11004ServiceImpl.java) 확인 ==> 
 1) 물질ID 등록하지 않으면 수정시 에러가 발생
==============================================================================================================

- GQMS_Tst 소스 분석 @@@
1. C:\GQMS_Tst\workspace\GQMS_Tst\src\main\java\egovframework\TK\web\TK12002Controller.java  
==> KOLAS 인원현황 Controller @@@
--> \TK12002ServiceImpl.java   ==>   
==============================================================================================================

- 파워워킹, 확실히 살 빼주고 혈관 깨끗하게 하는 걷기법
https://www.youtube.com/watch?v=6L69KxP-Wro
==============================================================================================================
 
- Grid에서 줄 동적 추가 후 설정 문의
1. 투비 소프트에 글 올림 ==> http://support.tobesoft.co.kr/Support/index.html
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2020.03.07(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00 ==> 

- 주말[★]
07:50 기상
08:10 조식 
08:30 실내 자전거 타기
09:30 종료
10:20 집출발(자전거)  
12:30 실내 자전거 타기
13:30 종료 
14:00 주남이형이 설치 부탁한 노트북 도착 ==> Win 10 설치, SW 설치
14:20 루옌(수종) 고종 사촌 동생 돌잔치에 놀러감
18:40 석식 
19:00 실내 자전거 타기(1시간)  
20:00 종료 
20:10 집출발(자전거) 
20:20 GS25 대림역점 편의점: 주남이형 LG 노트북 택배 보내기(6,900원)
20:40 귀가
21:10 TV 시청 ==>  
22:00 루옌(수종) 귀가
22:30 취침
==============================================================================================================

- 관비(3월, 4월, 수종 태권도) 송금
1. 영웅 태권도 이충원 관장에게 20만원 송금 ==> 이충원 관장에게 수종이 등하교 지원 요청(등교: 08:30, 하교: 15~ 16시)
==============================================================================================================
 
- 주남이형이 설치 부탁한 노트북 셋팅
1. Win 10 설치, SW 설치(V3, MS 오피스 2013, HWP 2010)
2. 포항으로 택배 보냄: 포항시 북구 법원로 8번길 14 주노세탁소(054 256 9990): GS25 대림역점 편의점(6,900원)
3. LG 노트북 사양
1. 모델명: 15U370 
2. S/N: 908PGJK318436
3. 식별부호: MSIP-RMM-LGE-15U370 
4. 무게: 1.65kg
5. 노트북 로그인 ID(이주남), 비밀번호는 1212
==> http://www.enuri.com/detail.jsp?modelno=25332872&cate=&IsDeliverySum=N
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020..03.08(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00 ==>

- 주말2[★]
07:30 기상
08:05 조식
08:30 실내 자전거 타기
09:30 종료
09:00 인터넷 서핑 ==> Oracle 11g R2 설치  
12:10 중식
13:00 실내 자전거 타기
14:00 종료
14:20 인터넷 서핑 ==> Oracle 11g R2 설치
17:00 석식
17:20 실내 자전거 타기
18:20 종료
19:20 집출발
19:40 온수역 2번 출구 도착 ==> (주)이노 액티브에서 빌린 차 얻어 탐(최종규 팀장외 3명)
20:00 서울 출발
21:06 당진 현대 애비뉴 도착
21:10 귀가
23:00 취침
==============================================================================================================

- 3강 oracle 11g database install(오라클 11g 설치) [소프트캠퍼스softcampus]
https://www.youtube.com/watch?v=rTBj8wkbZHY
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.03.09(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==> 수종 영웅 태권도 다시 나감(휴관: 2월 24월(월) ~ 3월 06월(금))
								
- 현대제철 유해화학물질 MAP 구축 Prj[★] 
- 설비정보(/admin::EqupInfo.xfdl) 화면 수정
1. 등록, 수정(/TK11004ServiceImpl.java) 확인 ==> 완료 @@@
 1) 물질ID A, B, C 등록 ==> 실제로는 물질ID별로 27개 조회됨(물질ID 등록 아나하면 Null 포함) 
 ==> for문 사용하여 MATTER_ID_A, MATTER_ID_B, MATTER_ID_C 칼럼에 넣기
 /* 설비 정보_02 조회 ==> [/TK11004Mapper.xml] [selectList_02()] [2020.03.06, by 진태만] */ 
SELECT  M.ID_FACILITY AS 시설코드, M.NM_FCT AS 공장명	
			, MAX(DECODE(M.D_RANK, '1', M.MATTER_ID)) AS MATTER_ID_1   	/* 물질ID_1 @@@ */
			, MAX(DECODE(M.D_RANK, '2', M.MATTER_ID)) AS MATTER_ID_2		/* 물질ID_2 */
			, MAX(DECODE(M.D_RANK, '3', M.MATTER_ID)) AS MATTER_ID_3		/* 물질ID_3 */ 
			, MAX(DECODE(M.D_RANK, '4', M.MATTER_ID)) AS MATTER_ID_4 		/* 물질ID_4 */
			, MAX(DECODE(M.D_RANK, '5', M.MATTER_ID)) AS MATTER_ID_5        /* 물질ID_5 */
FROM TB_HCM_EQUIPMENTBASE A 				/* 설비 기본 정보 TB */ 
			, TB_HCM_EQUIPMENTHC E						/* 설비 취급물질 정보 TB */
			, TB_HCM_HAZARDCHEMICAL F 				/* 유해화학물질 정보 TB */  	'
------------------------------------------------------------------------------------------------------------------------------------

- 설비정보(/admin::EqupInfo.xfdl) 화면에서
/***************************************************************************
 * Even   : fn_Callback
 * Desc   : Transaction call back
 ****************************************************************************/
this.fn_Callback = function( svcID, errorCode, errorMsg ) 
{
	trace("[/EqupInfo.xfdl] [fn_Callback()] ==> [TEST_01] [콜백] [svcID]"+ svcID +"[errorCode]"+ errorCode +"[errorMsg]"+ errorMsg); 
	
	if(svcID == "search") 
	{  
		this.fn_ResetColumn(); 	// Grid에서 취급물질, 사용량, 사용량 A, B, C 칼럼 데이타 셋팅
		
		this.grd_List.setFormatColProperty(6, "band", "left");    // 셀 고정(틀 고정: 6번째 칼럼부터 고정
	} 
};

**************************************************************************
 * Even   : fn_ResetColumn
 * Desc   : Grid에서 취급물질, 사용량, 사용량 A, B, C 칼럼 데이타 셋팅 ==> 51개의 데이타를 돌려서 사용량 A, B, C 칼럼에 넣기
 ****************************************************************************/
this.fn_ResetColumn = function()
{ 
	// trace("[/EqupInfo.xfdl] [fn_ResetColumn()] ==> [fn_ResetColumn] [Grid 칼럼 데이타 재구성 @@@@@
		===>] [this.ds_List.getRowCount()]"+ this.ds_List.getRowCount() ); 
	
	var bSucc = "";    
	var sJnum  = "";  
	var nMatBUsed = 0;
	var nMatCUsed = 0; 
	
	for(var i=0; i < this.ds_List.getRowCount(); i++)		// ds_List 조회된 갯수 만큼 돌리기
	{     
		sJnum = ""+ (i+0);  
		nMatBUsed = 0;
		nMatCUsed = 0;
		
		// trace("[/EqupInfo.xfdl] [fn_ResetColumn()] ==> [TEST_06] [i_번째]"+ i +"[시설코드]"+  this.ds_List.getColumn(i, "ID_FACILITY") 
			+"[공장명]"+ this.ds_List.getColumn(i, "NM_FCT") +"[i_번째]"+ i +" @@@ ==> [ds_List.MATTER_ID_i_번째]"+ this.ds_List.getColumn(i, "MATTER_ID_"+ sJnum) ); 
		
		for(var j=1; j < 52; j++)   	// 물질ID 갯수 만큼 돌리기(최대 50개)
		{ 
			sJnum = ""+ (j);
			sJnum = ""+ (j); 
		 
			if(!this.gfn_IsNull(this.ds_List.getColumn(i, "MATTER_ID_"+ sJnum))) 		 // 물질ID가 null이 아니면 (MATTER_ID_1, MATTER_ID_2,....)
			{ 
				if(this.gfn_IsNull(this.ds_List.getColumn(i, "MATTER_ID_A")))		 // 물질ID_A가 null 이면 
				{ 
					// trace("[/EqupInfo.xfdl] [fn_ResetColumn()] ==> [TEST_10] [공장명]"+ this.ds_List.getColumn(i, "NM_FCT") +"[i_번째]"+ i +"[j_번째]"+ j 
						+"[ds_List.MATTER_ID_i]"+ this.ds_List.getColumn(i, "MATTER_ID_"+ sJnum) );
					
					this.ds_List.setColumn(i, "MATTER_ID_A", this.ds_List.getColumn(i, "MATTER_ID_"+ sJnum) );		 // 물질ID_A 셋팅
					this.ds_List.setColumn(i, "ID_FACIL_MATTER_A", this.ds_List.getColumn(i, "ID_FACIL_MATTER_"+ sJnum) );		 // 설비 물질ID_A 셋팅
					this.ds_List.setColumn(i, "USE_AMT_A", this.ds_List.getColumn(i, "USE_AMT_"+ sJnum) );		 // 사용량_A 셋팅
					this.ds_List.setColumn(i, "SAV_AMT_A", this.ds_List.getColumn(i, "SAV_AMT_"+ sJnum) );		 // 저장량_A 셋팅 
					// trace("[/EqupInfo.xfdl] [fn_ResetColumn()] ==> [TEST_11_2] [공장명]"+ this.ds_List.getColumn(i, "NM_FCT") +"[i_번째]"+ i 
						+"[j_번째]"+ j +"[ds_List.MATTER_ID_]"+ this.ds_List.getColumn(i, "MATTER_ID_"+ sJnum) +"[ds_List.MATTER_ID_A]"+ this.ds_List.getColumn(i, "MATTER_ID_A") ); 
				}
				
				if(!this.gfn_IsNull(this.ds_List.getColumn(i, "MATTER_ID_A")) && this.gfn_IsNull(this.ds_List.getColumn(i, "MATTER_ID_B")))		 // 물질ID_B가 null 이면 
				{  
					// trace("[/EqupInfo.xfdl] [fn_ResetColumn()] ==> [TEST_20] [공장명]"+ this.ds_List.getColumn(i, "NM_FCT") +"[i_번째]"+ i 
						+"[ds_List.MATTER_ID_i]"+ this.ds_List.getColumn(i, "MATTER_ID_"+ sJnum) ); 
					
					for(var k=1; k < 51; k++)   	// 물질ID 갯수 만큼 돌리기(최대 50개)
					{ 
						sJnum = ""+ (j + k);   	// sJnum 다시 설정
						// trace("[/EqupInfo.xfdl] [fn_ResetColumn()] ==> [TEST_22_1] [공장명]"+ this.ds_List.getColumn(i, "NM_FCT") +"[i_번째]"+ i 
							+"[sJnum_번째]"+ sJnum +"[ds_List.MATTER_ID_i]"+ this.ds_List.getColumn(i, "MATTER_ID_"+ sJnum) ); 
						
						if(nMatBUsed < 1)     // 물질ID B가 처음 등록일 때
						{
							if(!this.gfn_IsNull(this.ds_List.getColumn(i, "MATTER_ID_"+ sJnum))) 		 // 물질ID가 null이 아니면 (MATTER_ID_1, MATTER_ID_2,....)
							{ 
								this.ds_List.setColumn(i, "MATTER_ID_B", this.ds_List.getColumn(i, "MATTER_ID_"+ sJnum) );		// 물질ID_B 셋팅
								this.ds_List.setColumn(i, "ID_FACIL_MATTER_B", this.ds_List.getColumn(i, "ID_FACIL_MATTER_"+ sJnum) );		 // 설비 물질ID_B 셋팅
								this.ds_List.setColumn(i, "USE_AMT_B", this.ds_List.getColumn(i, "USE_AMT_"+ sJnum) );		 // 사용량_B 셋팅
								this.ds_List.setColumn(i, "SAV_AMT_B", this.ds_List.getColumn(i, "SAV_AMT_"+ sJnum) );		 // 저장량_B 셋팅
								nMatBUsed = 1;
								// trace("[/EqupInfo.xfdl] [fn_ResetColumn()] ==> [TEST_22_2] [공장명]"+ this.ds_List.getColumn(i, "NM_FCT") +"[i_번째]"+ i +"[j_번째]"+ j 
									+"[ds_List.MATTER_ID_B]"+ this.ds_List.getColumn(i, "MATTER_ID_B") ); 
							}
						}
					}	// end of for()  
				}
			}
			
			if(!this.gfn_IsNull(this.ds_List.getColumn(i, "MATTER_ID_A")) && !this.gfn_IsNull(this.ds_List.getColumn(i, "MATTER_ID_B"))
				&& this.gfn_IsNull(this.ds_List.getColumn(i, "MATTER_ID_C")))		 // 물질ID_C가 null 이면 
			{  
				// trace("[/EqupInfo.xfdl] [fn_ResetColumn()] ==> [TEST_30] [공장명]"+ this.ds_List.getColumn(i, "NM_FCT") +"[i_번째]"+ i +"[j_번째]"+ j 
					+"[ds_List.MATTER_ID_i]"+ this.ds_List.getColumn(i, "MATTER_ID_"+ sJnum) );

				for(var k=1; k < 51; k++)   	// 물질ID 갯수 만큼 돌리기(최대 50개)
				{ 
					sJnum = ""+ (j + k);   	// sJnum 다시 설정
					// trace("[/EqupInfo.xfdl] [fn_ResetColumn()] ==> [TEST_31_1] [공장명]"+ this.ds_List.getColumn(i, "NM_FCT") +"[i_번째]"+ i 
						+"[sJnum_번째]"+ sJnum +"[MATTER_ID_B]"+ this.ds_List.getColumn(i, "MATTER_ID_B") +"[ds_List.MATTER_ID_i]"+ this.ds_List.getColumn(i, "MATTER_ID_"+ sJnum) ); 
					
					if(nMatCUsed < 1)     // 물질ID_C가 처음 등록일 때
					{
						if(!this.gfn_IsNull(this.ds_List.getColumn(i, "MATTER_ID_"+ sJnum))
							&& (this.ds_List.getColumn(i, "MATTER_ID_"+ sJnum) != this.ds_List.getColumn(i, "MATTER_ID_B")) ) 		 // 물질ID가 null이 아니고 물질ID_B와 같이 않으면
						{ 
							// trace("[/EqupInfo.xfdl] [fn_ResetColumn()] ==> [TEST_32_1] [공장명]"+ this.ds_List.getColumn(i, "NM_FCT") +"[i_번째]"+ i +"[sJnum_번째]"+ sJnum 
								+"[MATTER_ID_B]"+ this.ds_List.getColumn(i, "MATTER_ID_B") +"[ds_List.MATTER_ID_i]"+ this.ds_List.getColumn(i, "MATTER_ID_"+ sJnum) ); 
					
							this.ds_List.setColumn(i, "MATTER_ID_C", this.ds_List.getColumn(i, "MATTER_ID_"+ sJnum) );		// 물질ID_C 셋팅
							this.ds_List.setColumn(i, "ID_FACIL_MATTER_C", this.ds_List.getColumn(i, "ID_FACIL_MATTER_"+ sJnum) );		 // 설비 물질ID_C 셋팅
							this.ds_List.setColumn(i, "USE_AMT_C", this.ds_List.getColumn(i, "USE_AMT_"+ sJnum) );		 // 사용량_B 셋팅
							this.ds_List.setColumn(i, "SAV_AMT_C", this.ds_List.getColumn(i, "SAV_AMT_"+ sJnum) );		 // 저장량_B 셋팅 
							nMatCUsed = 1;
							// trace("[/EqupInfo.xfdl] [fn_ResetColumn()] ==> [TEST_32_3] [공장명]"+ this.ds_List.getColumn(i, "NM_FCT") +"[i_번째]"+ i +"[j_번째]"+ j +"[sJnum_번째]"+ sJnum 
								+"[ds_List.MATTER_ID_4]"+ this.ds_List.getColumn(i, "MATTER_ID_4") +"[ds_List.MATTER_ID_C]"+ this.ds_List.getColumn(i, "MATTER_ID_C") ); 
						}
					}
				}	// end of for()   
			}
		}	// end of for()  
	}	// end of for()   
 }; 
==============================================================================================================
 
- Grid에서 칼럼 제목 줄 바꿈
1. MATTER_NM = "가성소다"+"&#13;&#10;"+" 사용량(톤)  / 저장량(톤)"     /// ===> 가성소다 <br> 사용량(톤)  / 저장량(톤) 
/***************************************************************************
 * Even   : fn_ResetGridFacilInfo
 * Desc   : 전체 Tab에서 이전 버튼(유독물) 클릭 이벤트
 ****************************************************************************/
this.fn_ResetGridFacilInfo = function()
{	
	trace("[/noxFacilInfoP.xfdl] [fn_ResetGridFacilInfo()] ==> [TEST_01]" );

	if(this.ds_List.getColumn(0, "MATTER_ID_A")  == "") 		// 물질ID_A가 널이면
	{
		trace("[/noxFacilInfoP.xfdl] [fn_Callback()] ==> [TEST_52_1]" ); 
	}
	else
	{
		this.grd_List.appendContentsRow();		// 줄  추가  
		var nRow = 38;
 
		this.grd_List.setCellProperty("body", nRow, "textAlign", "center");			// body(수치)
		this.grd_List.setCellProperty("body", nRow, "displaytype", "text");		// body(수치)  
		 	var bSucc = this.grd_List.setCellProperty("body", nRow, "text",  this.ds_List.getColumn(0, "MATTER_NM_A") 
				+ String.fromCharCode(13) + String.fromCharCode(10) + this.ds_List.getColumn(0, "MATTER_ID_A_TITLE2") );		
				// 취급물질명B 셋팅[제목}
		
		this.grd_List.setCellProperty("body", nRow+1, "textAlign", "right");			// body(수치) 
		var bSucc = this.grd_List.setCellProperty("body", nRow+1, "text",  this.ds_List.getColumn(0, "MATTER_ID_A_VALUE") );			
		// 취급물질명A 값 셋팅 
	}
	 
	this.grd_List.setRealRowSize(0, 40);		// grd_List 줄 사이즈 설정	
};
==============================================================================================================
 
- 회식(18:30 ~ 21:00, 롬브르 양꼬치[이주단지])
1. 현대제철 유해화학물질 MAP 구축 회식 ==> 최종규 팀장, 김황 과장, 박문성 사원, 박민영 PM
 1) 대리운전 불러서 귀가
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2020.03.10(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==> 06:15 인슐린 약 교체(281U, 22U 남음), 출근할 때 비 조금(우산 없이 도보 출근), 구종식 부장과 통화(17시,
									코로나19 때문에 사무실에 직원 10명 대기: 경기 어려움, 일 없음, 비상 시국)

- 현대제철 유해화학물질 MAP 구축 Prj[★] 
- 설비정보(/admin::EqupInfo.xfdl) 화면 수정
1. 등록, 수정(/TK11004ServiceImpl.java) 확인
 1) 물질ID A, B, C 삭제 처리 ==> 물질ID(10000, [삭제]) 처리  ==> 완료 @@@
 2) 물질ID A, B, C 등록시 Validataion 체크(fn_ChekValidataion)  ==> 완료 @@@
 /***************************************************************************
 * Even   : fn_Save
 * Desc   : Validation 체크
 ****************************************************************************/ 
this.fn_Save = function()
{
	trace("[/EqupInfo.xfdl] [fn_Save()] ==> [TEST_01]" );
	
	if(this.fn_CheckValidation() == false)			// Validation 체크
	{
		return false;
	}
	
	var sSaveChkArr = "설비정보 목록:this.ds_List;";
 
	this.gfn_SaveConfirm(this, sSaveChkArr, 350, 250, function (sId, sResult) 		 // 저장 전 Confirm  
	{    
		if(sResult == "YES") 
		{	
			var sSvcID        = "save";
			var sController   = "TK/TK11004/saveList"; 
			var sInDatasets   = "ds_List=ds_List:u";
			var sOutDatasets  = "";
			var sArgument     = "";
			var sCallbackFunc = "fn_Callback";
			var bAsync        = true;
		 
			this.gfn_Transaction(sSvcID, sController, sInDatasets, sOutDatasets, sArgument, sCallbackFunc, bAsync); 
		}
	}); 
};
};

***************************************************************************
 * Even   : fn_CheckValidation
 * Desc   : 저장
 ****************************************************************************/ 
this.fn_CheckValidation = function()
{
	trace("[/EqupInfo.xfdl] [fn_CheckValidation()] ==> [TEST_01]" );
	
	for(var i=0; i < this.ds_List.getRowCount(); i++)		// ds_List 조회된 갯수 만큼 돌리기
	{       
		trace("[/EqupInfo.xfdl] [fn_CheckValidation()] ==> [TEST_06] [i_번째]"+ i +"[시설코드]"+ this.ds_List.getColumn(i, "ID_FACILITY") 
			+"[공장명]"+ this.ds_List.getColumn(i, "NM_FCT") +"[ds_List.getRowType(i)]"+ this.ds_List.getRowType(i) +"[@@@ ==> 
			[ds_List.MATTER_ID_A]"+ this.ds_List.getColumn(i, "MATTER_ID_A") +"[ds_List.USE_AMT_A]"+ this.ds_List.getColumn(i, "USE_AMT_A") 
			+"[ds_List.SAV_AMT_A]"+ this.ds_List.getColumn(i, "SAV_AMT_A") ); 
		
		if(this.ds_List.getRowType(i) == 2 && this.ds_List.getColumn(i, "MATTER_ID_A") == "10000")		 
			// Grid 타입이 등록(2)이고 MATTER_ID_A가 [삭제]이면  @@@
		{
			this.alert("등록시에는 취급물질A [삭제]를 선택할 수 없습니다..\n취급물질A를  다시 선택하세요.");	
			this.ds_List.set_rowposition(i); 	// 현재 Row 설정
			this.grd_List.setCellPos(24);		// 선택할 셀의 위치 설정 ==> 포커스(focus) 설정
			this.grd_List.showEditor(true); 	// 선택할 셀의 편집 모드로 설정
		}
	}	// end of for()	
};
---------------------------------------------------------------------------------------------------------

Dataset.ROWTYPE_EMPTY 		==> 0: 존재하지 않는 행의 상태
Dataset.ROWTYPE_NORMAL	==> 1: 초기 행의 상태
Dataset.ROWTYPE_INSERT		==> 2: 추가된 행의 상태 
Dataset.ROWTYPE_UPDATE	 	==> 4: 수정된 행의 상태  
Dataset.ROWTYPE_DELETE 		==> 8: 삭제된 행의 상태
==============================================================================================================
 
- Grid 칼럼 필수 입력 설정
this.ds_list.set_rowposition(i);	 // 현재 Row 설정
this.grd_list.setCellPos(1);			// 선택할 셀의 위치 설정 ==> 포커스(focus) 설정
this.grd_list.showEditor(true); 	// 선택할 셀의 편집 모드로 설정  
==============================================================================================================

- 회의(10:30, 대회의실)
1. 현대제철 유해화학물질 MAP 구축 문의 ==> 최종규 팀장, 김황 과장, 김책 부대표, 박민영 PM, 김종민 책임, 김대원 부장(프리랜서) 
 1) XP --> Nexacro 데이타 상호 연동 문제 논의(투비에서 테스트 소스 받았다고 함)
 2) 다음주 부터 월요일 9시 회의(정례화)
 3) WEB 완성 못 함
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2020.03.11(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==> 김황 과장 결근(어제 늦게까지 일함), WHO 코로나19 팬데믹(세계적 대유행) 선언

- 현대제철 유해화학물질 MAP 구축 Prj[★]
- 공장 단위(관리자) (/admin::FmiAdmin.xfdl) 화면 수정  ==> 완료 @@@
1. 71. TB_HCM_FACILITYBASE_MAP 시설 정보 TB 테이블 생성
2. 71. TB_HCM_FACILITYBASE_MAP 시설 정보 TB 데이타 등록
==============================================================================================================
 
- 3D에서 데이타 받아서 저장
/***************************************************************************
 * Even   : wb_NoxMat_onusernotify
 * Desc   : wb_NoxMat  ==> FmiAdmin에 로드된 웹페이지에서 nexacro쪽으로 정보를 전달할 때 발생하는 이벤트(02. 3D에서 데이타 받기)
 ****************************************************************************/ 
this.wb_NoxMat_onusernotify = function(obj:nexacro.FmiAdmin,e:nexacro.WebUserNotifyEventInfo)
{
	trace("[/FmiAdmin.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_01] [e.userdata]"+ e.userdata ); 
	
	var sID_FACILITY;		// 01. 시설 코드 
	var sN_X;		// 02. X축 
	var arrColList = String(e.userdata).split("&");		// String 자르기
	//trace("[/FmiAdmin.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_03] [arrColList[0]]"+ arrColList[0] +"[arrColList[1]"+ 
		arrColList[1] +"[arrColList[2]"+ arrColList[2] );
 
	var arrID_FACILITY = String(arrColList[0]).split("=");	 // 01. 시설 코드 자르기
	
	if(arrID_FACILITY[0] == "ID_FACILITY")	 	// 01. 시설 코드 이면
	{  
		sID_FACILITY = arrID_FACILITY[1];		//  01. 시설 코드
	} 
	
	var arrN_X = String(arrColList[1]).split("=");	 // 02. X축 자르기

	if(arrN_X[0] == "N_X")	 	// 02. X축 이면
	{  
		sN_X = arrN_X[1];		// 02. X축 
	}
	
	trace("[/FmiAdmin.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_51] [데이타 받기] [01. 시설 코드]"+ sID_FACILITY 
		+"[02. X축]"+ sN_X +"[03. Y축]"+ sN_Y +"[04. Z축]"+ sN_Z );
	 
	if(!this.gfn_IsNull(sID_FACILITY))		 // 01. 시설 코드 가 널 아니면  @@@
	{ 
		this.fn_SaveMapInfo( sID_FACILITY		// 01. 시설 코드(ID_FACILITY)
										, sN_X 			// 02. X축
										, sN_Y			// 03. Y축
										, sN_Z 			// 04. Z축
									);		// 좌표 정보 저장
			
};

/***************************************************************************
* Even   : fn_SaveMapInfo
* Desc   : 좌표 정보 저장
****************************************************************************/
this.fn_SaveMapInfo = function(sID_FACILITY, sN_X, sN_Y, sN_Z)
{  
	trace("[/FmiAdmin.xfdl] [fn_SaveMapInfo()] ==> [TEST_01] [데이타 받기_성공 ==> 좌표 정보 저장] @@@ ===> ");
	
	var sArgs	= "ID_FACILITY="+ sID_FACILITY		/* 시설코드 */
					+" N_X="+ sN_X		/* 02. X축 */
					+" N_Y="+ sN_Y		/* 03. Y축 */
					+" N_Z="+ sN_Z;	/* 04. Z축 */
	trace("[/FmiAdmin.xfdl] [fn_SaveMapInfo()] ==> [TEST_32] [Args]"+ sArgs ); 
 
	var sSvcID        = "saveMapInfo";
	var sController   = "TK/TK11004/saveMapInfo";
	var sInDatasets   = "";
	var sOutDatasets  = ""; 
	var sArgument     = sArgs;	// 파라미터로 보내기
	var sCallbackFunc = "fn_Callback";
	var bAsync        = true;

	this.gfn_Transaction(sSvcID, sController, sInDatasets, sOutDatasets, sArgument, sCallbackFunc, bAsync); 
};
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2020.03.12(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==> 인슐린 하향 조정(조식: 10U, 중식: 12U, 석식: 8U --> 총: 30U)

- 현대제철 유해화학물질 MAP 구축 Prj[★]
- 공장 단위(관리자) (/admin::FmiAdmin.xfdl) 화면 수정
1. 맵관리도구 수정
/***************************************************************************
 * Even   : fn_Map_onclick
 * Desc   : Map 버튼 클릭 이벤트(01. 3D로 데이타 보내기)
 ****************************************************************************/
this.fn_Map_onclick = function(sMap)
{
	var objDoc = this.wb_NoxMat.getProperty("document"); 		// WebBrowser document
	var objDom = objDoc.getProperty("all");	  
	var sMapUrl = nexacro.getApplication().gv_svcUrl +"/NoxMatRetMot/_resource_/_theme_/NoxMatRetMot/img/";		// 파일명 경로
	
	if(sMap == "MAP_01") 	// 01. 도어 아이콘
	{ 
		var sMapFileNm =  "btn_RF_Map01.png";		// 01. 도어 아이콘 파일명
		
		objDom.getProperty("MAP_01").setProperty("value", sMapUrl + sMapFileNm);
		//	http://localhost:9000/NoxMatRetMot/_resource_/_theme_/NoxMatRetMot/img/btn_RF_Map01.png
	} 
}
==============================================================================================================

- Grid에서 Row 셀 합병
1. 공장내 설비별 유해 화학물질 정보(팝업) (/admin::noxNoxMatInfo4FctFacilP.xfdl) 화면에서
 1) suppress를 1로 셋팅: 복수개의 행에서 같은 열에 있는 셀의 값이 같을 경우에 이를 하나로 합하는 레벨을 설정하는 속성 
<Band id="body">
	<Cell text="bind:NM_FACILITY" textAlign="center" color="black" suppress="1" suppressalign="middle"/>  	<!--// 설비명 //-->
	<Cell col="1" text="bind:MATTER_NM" textAlign="center" tooltiptext="bind:MATTER_NM"/>	<!--// 물질명 //-->
</Band>
==============================================================================================================

- 콤보에서 전체 콤보 추가
/***************************************************************************
 * Even   : fn_Callback
 * Desc   : Transaction call back
 ****************************************************************************/
this.fn_Callback = function( svcID, errorCode, errorMsg ) 
{
	trace("[/FmiAdmin.xfdl] [fn_Callback()] ==> [TEST_01] [콜백] [svcID]"+ svcID +"[errorCode]"+ errorCode +"[errorMsg]"+ errorMsg); 
	
	if(svcID == "searchFct") 	// 공장 정보 조회
	{ 
 		var nRow = this.ds_Fct_02.addRow();		// Ds Row 추가 
		this.ds_Fct_02.setColumn(nRow, "ID_FCT",  "");	 			// 공장ID
		this.ds_Fct_02.setColumn(nRow, "NM_FCT", "=== [전체] ==="); 		// 공장명 ==> 전체 콤보 추가
 
		for(var i=0; i < this.ds_Fct.getRowCount(); i++)    
		{  
			nRow = this.ds_Fct_02.addRow();		// Ds Row 추가 
			this.ds_Fct_02.setColumn(nRow, "ID_FCT",  this.ds_Fct.getColumn(nRow - 1, "ID_FCT") );	// 공장ID
			this.ds_Fct_02.setColumn(nRow, "NM_FCT", this.ds_Fct.getColumn(nRow- 1, "NM_FCT") );		// 공장명
		}	// end of for() 
		//trace("[/FmiAdmin.xfdl] [fn_Callback()] ==> [TEST_79] [ds_Fct_02.CNT]"+ this.ds_Fct_02.getRowCount() 
		// +"[this.ds_Fct_02.saveXML()] \n"+ this.ds_Fct_02.saveXML() );  
	}
};
==============================================================================================================

- 회의(8시)
1. 현대제철 유해화학물질 MAP 구축 개발 회의 ==> 최종규 팀장, 김황 과장
 1) 공장 단위(관리자) (/admin::FmiAdmin.xfdl) 화면[Nexacro --> 3D] 데이타 주고 받기 협의
  갸. TB_HCM_FACILITYBASE_MAP 시설 정보 TB 데이타 등록(Update)할 때 설비 기본 정보 TB(TB_HCM_EQUIPMENTBASE)에서
   받아온 시설 코드(ID_FACILITY) 업데이트 처리
  나. 트리뷰 테이블(TB_HCM_FACILITYBASE_MAP), 리스트뷰 String으로 김황 과장이 제공해준다고 함
  다. 트리뷰에서 데이타 수정, 삭제 처리(등록은 없음)
  라 비상대피로 팝업 화면(JSP로 개발)은 김황 과장이 개발하기로 함수
  마. 설비 단위(관리자) (/admin::DmiAdmin.xfdl) 화면 엑셀일괄등록 처리(보안 때문에 등록 안됨) 문제는 최종규 팀장이 현업과 협의한다고 함
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.03.13(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 14:30 ==> 최종규 팀장 출장, 서울행(14:14 ~ 16:05): (주)이노 액티브 팀원들 차 얻어 탐 --> 16:10 천왕역 2번 출구 도착
									--> 16:30 대림역 --> 16:40 귀가

- 현대제철 유해화학물질 MAP 구축 Prj[★] 
- 공장 단위(관리자) (/admin::FmiAdmin.xfdl) 화면 수정
1. 트리뷰에서 위치 수정, 삭제 처리
==============================================================================================================

- Popup Menu 처리, 컨펌 함수 호출
this.nRow = "";		// 줄 위치
this.nCell = "";		// 셀 위치

/***************************************************************************
 * Even   : grd_TreeView_onlbuttondown
 * Desc   : 트리뷰  Grid 왼쪽 버튼 클릭 이벤트
 ****************************************************************************/
this.grd_TreeView_onlbuttondown = function(obj:nexacro.Grid,e:nexacro.GridMouseEventInfo)
{  
	trace("[/FmiAdmin.xfdl] [grd_TreeView_onlbuttondown()] ==> [TEST_01] [e.row]" + e.row +"[e.cell]"+ e.cell \
		+"[cellValuel]" + obj.getCellValue(e.row, e.cell) );  
	
	this.nRow = e.row;
	this.nCell = e.cell; 
	var arr = obj.getCellRect(e.row, e.cell);	
 
	this.PopupMenu.trackPopupByComponent(obj, arr.left+ 100, 22 + arr.top, "", "", "");  	
	// 지정된 컴포넌트를 기준점으로 PopupMenu 컴포넌트를 화면에 나타나게 지정하는 메소드 
};
 
/***************************************************************************
 * Even   : PopupMenu_onmenuclick
 * Desc   : PopupMenu 클릭 이벤트
 ****************************************************************************/
this.PopupMenu_onmenuclick = function(obj:nexacro.PopupMenu,e:nexacro.MenuClickEventInfo)
{ 
	trace("[/FmiAdmin.xfdl] [PopupMenu_onmenuclick()] ==> [TEST_01] [e.id]"+ e.id +"[this.nRow]"+ this.nRow +"[this.nCell]" + this.nCell );   
 
	if(e.id == "1")	 	// 위치 수정이면
	{ 
		trace("[/FmiAdmin.xfdl] [PopupMenu_onmenuclick()] ==> [TEST_51] [위치 수정 처리 @@@] [e.id]"+ e.id +
		"[this.nRow]"+ this.nRow +"[this.nCell]" + this.nCell );   
	}
	else if(e.id == "2")	 	// 위치 삭제이면
	{
		trace("[/FmiAdmin.xfdl] [PopupMenu_onmenuclick()] ==> [TEST_52] [위치 삭제 @@@]] [e.id]"+ e.id 
			+"[this.nRow]"+ this.nRow +"[this.nCell]" + this.nCell );    
		
		tthis.gfn_Confirm(this, "위치 삭제를 하시겠습니까?", ["마스터"], "", "", function (sId, sResult)		// 컨펌 함수 호출
			if(sResult == "YES") {
				trace("[/FmiAdmin.xfdl] [PopupMenu_onmenuclick()] ==> [TEST_61] [위치 삭제 처리 @@@]] [e.id]"+ e.id +"[sResult]"+ sResult ); 
			}
		}); 
	}
};
==============================================================================================================

- 옆 노트북 셋팅
1. 퍼블러셔 자리 노트북 셋팅: 10.216.139.56
 1) 퍼블러셔 자리 노트북 정보(DN114120007) / qwqw1221!
==============================================================================================================

- 서재조 한테 전화옴(17시, 집)
1. 서재조(동지고 1-3반 동기, 포항 공무원): 황보승혁: 영덕으로 왔다고 함 ==> 2020년 10월 1일 추석에 만나기로 함
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.03.14(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00 ==> 몸무게: 74kg

- 주말[★]
07:50 기상
08:10 조식 
08:30 실내 자전거 타기
09:30 종료
10:00 인터넷 서핑 ==> Oracle 11g R2 설치
12:30 실내 자전거 타기
13:30 종료 
14:00 인터넷 서핑 ==> Oracle 11g R2 설치
17:40 집출발(자전거)
18:10 맛닭꼬 남구로점  ==> 갈릭 베이크(포장: 10,900원) 구입 
18:30 귀가
18:40 석식 
19:00 실내 자전거 타기(1시간)  
20:00 종료  
20:40 귀가
21:50 TV 시청 ==> 
22:30 취침
==============================================================================================================

- GQMS_Tst DB 연결 수정(Tibero DB --> Oracle DB)
1. /context-datasource.xml  파일에서
<!--// 01. GQMS_Tst 개발DB 설정 추가[변경일: 2020.03.14, by 진태만], Oracle DB //-->
<bean id="dataSourceSpied" class="org.apache.commons.dbcp.BasicDataSource" destroy-method="close">
	<property name="driverClassName"  value="oracle.jdbc.driver.OracleDriver" />
	<property name="url" value="jdbc:oracle:thin:@TAMA_HOME:1521:TAMADB" />
	 <property name="username" value="GQMS_TST"/>
	<property name="password" value="tama339"/>
</bean> 

<!--// 02. GQMS_Tst 개발DB 설정 추가[변경일: 2019.09.23, by 진태만], Tibero DB //-->
<!-- 	<bean id="dataSourceSpied" class="org.apache.commons.dbcp.BasicDataSource" destroy-method="close"> -->
<!--         <property name="driverClassName" value="com.tmax.tibero.jdbc.TbDriver" /> -->
<!--         <property name="url"  value="jdbc:tibero:thin:@10.10.180.177:8629:hspngqddb" /> -->
<!--         <property name="username" value="USRGQD"/> -->
<!--         <property name="password"  value="GQDUSR"/>  -->
<!--     </bean>    --> 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020..03.15(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00 ==>

- 주말2[★]
07:30 기상
08:05 조식
08:30 실내 자전거 타기
09:30 종료
09:00 인터넷 서핑 ==> GQMS_Tst DB 설정 및 데이타 등록
12:10 중식
13:00 실내 자전거 타기
14:00 종료
14:20 인터넷 서핑 ==> GQMS_Tst DB 데이타 등록
14:40 (주)이노 액티브 최종규 팀장에게 전화 옴: 직원들 중에 코로나19 검사를 받음(화요일까지 출근 안 하고 자가 격리하라고 함)
		==> 질병관리본부(T: 1339)에 전화: 증상 없으면 자가격리 후 직원의 검사 결과가 확진로 나오면 검사 받으라고 함 
		==> 체온 측정: 36.7도
17:00 석식
17:20 실내 자전거 타기
18:20 종료
19:20 인터넷 서핑 ==> GQMS_Tst 셋팅
23:00 취침
==============================================================================================================

- Oralce SQL Developer 19.2 설치
1. https://www.oracle.com/kr/tools/downloads/sqldev-v192-downloads.html
 1) Windows 64-bit with JDK 8 included ==> sqldeveloper-19.2.1.247.2212-x64.zip
==============================================================================================================
 
■■■■■■■■■■■■■■■■■ 2020.03.16(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 09:00 ~ 21:00 ==> 07:54 인슐린 약 교체(257U, 19U 남음), 재택근무, 원격 데스크톱 연결(현대제철 VPN 연결, 9시)
							, (주)이노 액티브 최종규 팀장에게 전화옴(코로나 검사 결과 음성으로 나옴: 저녁에 당진으로 내려 가자고 함)
 
- 재택근무[★]
07:30 기상
08:05 조식
08:30 실내 자전거 타기
09:30 종료
09:00 인터넷 서핑 ==> GQMS_Tst 셋팅
12:10 중식
13:00 실내 자전거 타기
14:00 종료
14:20 인터넷 서핑 ==> NoxMatRetMot 셋팅
17:00 석식
17:20 실내 자전거 타기
18:20 종료
19:20 집출발
19:40 온수역 2번 출구 도착 ==> (주)이노 액티브에서 빌린 차 얻어 탐(최종규 팀장외 3명)
20:00 서울 출발
21:06 당진 현대 애비뉴 도착
21:10 귀가
23:00 취침
==============================================================================================================

- GQMS_Tst 셋팅
1. 조회, 저장 처리
2. 파일 업로드 처리 ==> NoxMatRetMot 셋팅 후 점검할 것
==============================================================================================================
 
- NoxMatRetMot 셋팅
1. GQMS_TstPrj 참조하여 NoxMatPrj 생성(GQMS_Tst폴더를 NoxMatRetMot폴더로 변경) 
 1) C:\NoxMatRetMot
2. eclipse에서 설정
 1) File ==> New ==> Proejct ==> New Proejct(새창) ==> General >> Project >> Next >:클릭 ==> Project name: NoxMatRetMot
Location: C:\NoxMatRetMot\workspace ==> Finish: 클릭
3. eclipse 이름명 변경
 1) C:\NoxMatRetMot\eclipse\01. NoxMatPrj.exe  -->  C:\GQMS_Tst\eclipse\02. GQMS_TstPrj.exe   ==> 참조
==============================================================================================================
    
■■■■■■■■■■■■■■■■■■ 2020.03.17(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==> VR 촬영((주)이노 액티브에서 인력 2명[전양근 사원 포함] 투입)

- 현대제철 유해화학물질 MAP 구축 Prj[★] 
- 설비 단위(/noxMat::Dmi.xfdl) 화면 수정
1. 엑셀일괄등록(엑셀 업로드) 버튼 클릭 이벤트
/***************************************************************************
 * Even   : btn_excellUpload_onclick
 * Desc   : 엑셀일괄등록(엑셀 업로드) 버튼 클릭 이벤트
 ****************************************************************************/
this.btn_excellUpload_onclick = function(obj:nexacro.Button,e:nexacro.ClickEventInfo)
{
	trace("[/EqupInfo.xfdl] [btn_excellUpload_onclick()] ==> [TEST_01]" );  
 
	this.ds_List.clearData(); 
	this.ds_ExcelTemp.clearData();
 	
	var excelParam = 
	{
		sheet:""			// sheet Name 
		, startrow:3   	// 시작하는 줄(제목 제거) 
		, bindcolumns:["NM_FCT", "NM_EQUP", "NO_FACILITY", "STR_CPK_TYPE", "EQUP_OPER_DEPT"		
				//  "NM_FCT""(공장명), "NM_EQUP"(설비명), "NO_FACILITY"(시설 번호), "STR_CPK_TYPE"(설비구분코드), "EQUP_OPER_DEPT"(설비운영부서)
				, "CHRG_USR", "CHRG_USR_SUB", "REPAIR_TEAM", "N_VOLUME", "N_VOLUME_SIZE"	  		
				// ,"CHRG_USR"(담당자(정)), "CHRG_USR_SUB"(담당자(부)), "REPAIR_TEAM"(정비팀), "N_VOLUME"(용량), "N_VOLUME_SIZE"(용량(크기))
				, "N_PRESSUREDRIVE", "N_PRESSUREDESIGN", "N_TEMPERATUREDRIVE", "N_TEMPERATUREDESIGN", "PMSS_PERMS_PSM"	  		
				// ,"N_PRESSUREDRIVE"(운전 압력), "N_PRESSUREDESIGN"(설계 압력), "N_TEMPERATUREDRIVE"(운전 온도), "N_TEMPERATUREDESIGN"(설계 온도), "PMSS_PERMS_PSM"(인허가 PSM))
				, "PMSS_PERMS_FLOWCORN", "PMSS_PERMS_DANGER", "N_LOCATION", "N_HANDLING_FACILITY_NUMBER", "N_INSTALLATION_YMD"	  		
				// ,"PMSS_PERMS_FLOWCORN"(인허가 화관법), "PMSS_PERMS_DANGER"(인허가 위험물), "N_LOCATION"(위치),"N_HANDLING_FACILITY_NUMBER"(취급시설번호), "N_INSTALLATION_YMD"(설치년월일))
				, "N_PURPOSE", "DT_INSPECTION", "STR_REMARK"	// ,"N_PURPOSE"(용도), "DT_INSPECTION"(검사이력), "STR_REMARK"(비고)
				, "MATTER_ID_A", "USE_AMT_A", "SAV_AMT_A"	  		// ,"MATTER_ID_A"(취급물질A), "USE_AMT_A"(취급물질A 사용량), "SAV_AMT_A"(취급물질A 저장량)
				, "MATTER_ID_B", "USE_AMT_B", "SAV_AMT_B"	  		// ,"MATTER_ID_B"(취급물질B), "USE_AMT_B"(취급물질B 사용량), "SAV_AMT_B"(취급물질B 저장량)
				, "MATTER_ID_C", "USE_AMT_C", "SAV_AMT_C"	  		// ,"MATTER_ID_C"(취급물질C), "USE_AMT_C"(취급물질C 사용량), "SAV_AMT_C"(취급물질C 저장량)
			]     	// 칼럼 셋팅 ==>
		, callback:"fn_callbackExcelImport"
	}; 
	
	this.gfn_ExcelImport(this.ds_ExcelTemp, excelParam);
};

/***************************************************************************
 * Even   : fn_callbackExcelImport
 * Desc   : 엑셀업로드 call back  ==> Grid에서 이중 for문 처리
 ****************************************************************************/
this.fn_callbackExcelImport = function()
{ 
	trace("[/EqupInfo.xfdl] [fn_callbackExcelImport()] ==> [콜백_S] [TEST_01] [ds_ExcelTemp.CNT]"+ this.ds_ExcelTemp.rowcount 
		+"[ds_ExcelTemp.saveXML()] \n"+ this.ds_ExcelTemp.saveXML() );  
 
	if( this.ds_ExcelTemp.rowcount > 0 ) 
	{
		this.ds_List.appendData(this.ds_ExcelTemp, true);
		
		for(var i=0; i < this.ds_List.getRowCount(); i++)		// 엑셀업로드한 데이타(ds_List Ds) 돌리기
		{   
			trace("[/EqupInfo.xfdl] [fn_callbackExcelImport()] ==> [TEST_51] [i_번째]"+ i +"[ds_List.STR_CPK_TYPE]"+ this.ds_List.getColumn(i, "STR_CPK_TYPE") 
				+"[ds_List.PMSS_PERMS_PSM]"+ this.ds_List.getColumn(i, "PMSS_PERMS_PSM")  ); 
			
			for(var j = 0; j < this.ds_Fct.getRowCount(); j++)		// 공장 정보 데이타(ds_Fct Ds) 돌리기
			{
				trace("[/EqupInfo.xfdl] [fn_callbackExcelImport()] ==> [TEST_71] [i_번째]"+ i +"[j_번째]"+ j +"[ds_List.NM_FCT]"+
					this.ds_List.getColumn(i, "NM_FCT") +"[ds_Fct.NM_FCT]"+ this.ds_Fct.getColumn(j, "NM_FCT") +"[ds_Fct.ID_FCT]"+ this.ds_Fct.getColumn(j, "ID_FCT") );
				
				if( this.ds_List.getColumn(i, "NM_FCT") == this.ds_Fct.getColumn(j, "NM_FCT"))	// 공장명이 같으면
				{
					trace("[/EqupInfo.xfdl] [fn_callbackExcelImport()] ==> [TEST_71_2] [i_번째]"+ i +"[j_번째]"+ j +"[ds_List.NM_FCT]"+ 
						this.ds_List.getColumn(i, "NM_FCT") +"[ds_Fct.NM_FCT]"+ this.ds_Fct.getColumn(j, "NM_FCT") +"[ds_Fct.ID_FCT]"+ this.ds_Fct.getColumn(j, "ID_FCT") );
				
					this.ds_List.setColumn(i, "ID_FCT", this.ds_Fct.getColumn(j, "ID_FCT"));		// 공장코드 셋팅
				}
			}	// end of for()
		}	// end of for() 
	}  
};
==============================================================================================================

- 보안 걸린 엑셀 파일 푸는 방법
1. PC 재시작
2. 로그인 안함
3. 설비정보 업로드 양식(200313).xlsx 파일 열어서 수정 처리 ==> 옆자리 노트북에서 처리
4. 로그인
==============================================================================================================

- 모의해킹 신청 사전 체크 내역 작성
1. 모의해킹 신청 사전 체크 내역_20200317.xlsx 파일 내용 작성하여 박민영 PM에게 메일로 보냄
==============================================================================================================
 
- 폴더명 변경
1. /admin ==> /admin2020noxMat,  admin:: ==> admin2020noxMat::
2. /frame ==> /frame2020noxMat,  frame:: ==> frame2020noxMat::
3. /com ==> /com2020noxMat,  com:: ==> com2020noxMatt::
4. /noxMat  ==> /noxMat2020noxMat,  noxMat:: ==> noxMat2020noxMat::
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.03.18(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==> 퇴근 길에 안개 심하게 낌

- 현대제철 유해화학물질 MAP 구축 Prj[★]
- 설비 단위(/noxMat::Dmi.xfdl) 화면 수정
1. 엑셀일괄등록(엑셀 업로드) 버튼 클릭 이벤트 ==> 완료 @@@
==============================================================================================================

- Grid RowTyp 변경 처리 @@@
if(this.fv_ExcelUploadYn == "Y")		// 엑셀업로드가 되었으면
{
	for(var i = 0; i < this.ds_List.getRowCount(); i++)
	{  
		//trace("[/EqupInfo.xfdl] [fn_Save()] ==> [TEST_51] [i_번째]"+ i +"[ds_List.getRowType]"+ this.ds_List.getRowType(i) );
		
		this.ds_List.set_enableevent(false);		// 이벤트를 발생시킬지 여부를 설정하는 속성  
		this.ds_List.set_updatecontrol(false); 	// RowType을 자동으로 변경할 것인지 여부를 설정하는 속성

		var bSucc = this.ds_List.setRowType(i, Dataset.ROWTYPE_INSERT);	// RowTyp 설정 변경(1: 초기 행, 2: 추가된 행, 4: 수정된 행, 8: 삭제된 행)
		this.ds_List.set_updatecontrol(true);
		this.ds_List.set_enableevent(true);
		trace("[/EqupInfo.xfdl] [fn_Save()] ==> [TEST_51_2] [i_번째]"+ i +"[ds_List.getRowType]"+ this.ds_List.getRowType(i));
	} // end of for()
}
==============================================================================================================
 
- 날짜 expr 처리
1. expr:DT_INSPECTION ==null || DT_INSPECTION=='' ? '': 'date'		// 검사이력 일자 처리
<Cell col="21" textAlign="center" edittype="date" editdisplay="display" calendardisplay="display" calendardateformat="yyyy-MM-dd" 
	displaytype="expr:DT_INSPECTION ==null || DT_INSPECTION=='' ? '': 'date'" text="bind:DT_INSPECTION"/>
-------------------------------------------------------------------------------------------------------------------------------

- STRING 타입으로 날짜값 받기
1. 검사이력 일자(DT_INSPECTION)가 STRING 타입일 경우 2020-03-11 00:00:00 데이타 입력 불가 ==> 20200311로 변경해서 입력 해야 됨.
/***************************************************************************
 * Even   : fn_callbackExcelImport
 * Desc   : call back
 ****************************************************************************/
this.fn_callbackExcelImport = function()
{  
	for(var i=0; i < this.ds_ExcelTemp.getRowCount(); i++)		// 엑셀업로드한 데이타(ds_ExcelTemp Ds) 돌리기 
	{  
		//trace("[/EqupInfo.xfdl] [fn_callbackExcelImport()] ==> [TEST_41] [i_번째]"+ i +"[ds_ExcelTemp.N_INSTALLATION_YMD]"+ 
			this.ds_ExcelTemp.getColumn(i, "N_INSTALLATION_YMD");
		
		if(!this.gfn_IsNull(this.ds_ExcelTemp.getColumn(i, "DT_INSPECTION")))		 // 검사이력 일자이 널이 아니면 @@@
		{ 
			var arrColList2 = String(this.ds_ExcelTemp.getColumn(i, "DT_INSPECTION")).split("-");		// String 자르기  
			//this.ds_ExcelTemp.setColumn(i, "DT_INSPECTION_R",  arrColList2[0] + arrColList2[1] + arrColList2[2] );		
			// 검사이력 일자_R(DATE 타입) 셋팅 @@@
			this.ds_ExcelTemp.setColumn(i, "DT_INSPECTION",  arrColList2[0] + arrColList2[1] + arrColList2[2] );			
			// 검사이력 일자(STRING 타입) 셋팅 @@@
		} 
	}	// end of for()
};
==============================================================================================================

- 마스크 구입
1. 빨아쓰는 탄탄 네오플랜 마스크 3P세트(6P 세트, 21,300원) ==> 충전 금액: 16,943원
http://www.livingpick.com/shop/shopdetail.html?branduid=1965598
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.03.19(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==> 하루 종일 강한 바람

- 현대제철 유해화학물질 MAP 구축 Prj[★]
- 맹판도면(/admin2020noxMat::noxBlindFloorPlanP.xfdl) 화면 수정
1. 도면 이미지 등록
 1) 이미지의 사용처 종류(BP: 맹판도면, EE: 비상대피로, DP: 상세도면, OW: 외주 작업현황)
 ==> TB_HCM_IMAGE A 	/* 시설 자료 이미지 정보 TB */  @@@ --> TB_HCM_ATTACH_FILE_02  A       /* 파일 첨부 정보_02 TB */
 2) 도면 이미지 코드(BP: 맹판도면, EE: 비상대피로, MI: 물질정보, DP: 상세도면, OW: 외주 작업현황) 
==============================================================================================================
 
<select id="searchReqGb_02" parameterType="java.util.Map" resultType="Map"> 
	/* 의뢰구분2 조회 ==> [/TK11002Mapper.xml] [searchReqGb_02()] 2020.02.18, by 진태만] */  
	SELECT FLOORPLAN_SEQ.nextval AS REQ_GB	 	/* 의뢰구분2(도면 이미지 정보) */
	FROM DUAL
</select>
==============================================================================================================

- 회의(11:50, 회의실)
1. 보안관련 프로그램 개발 문제 논의 ==> 최종규 팀장, 김책 부대표
 1) SSO 사용 안함
 2) 보안관련 개발은 기본적으로 안 해도 됨: 김책 부대표가 상황 파악해서 대처한다고 함
 ==> SSO 사용하기로 했다고 김책 부대표한테 다시 연락이 옴
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2020.03.20(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 15:00 ==> 최종규 팀장 출장, 서울행(16:20 ~ 19:20): (주)이노 액티브 팀원들 차 얻어 탐(총 4명, 김황 과장이 지체해서 늦게 출발)
								--> 18:56 천왕역 2번 출구	--> 19:10 대림역 --> 17:20 귀가

- 현대제철 유해화학물질 MAP 구축 Prj[★]
- 맹판도면(/admin2020noxMat::noxBlindFloorPlanP.xfdl) 화면 수정 ==> 완료 @@@
1. 도면(FloorPlan) 이미지 조회, 삭제
 1) 이미지의 사용처 종류(BP: 맹판도면, EE: 비상대피로, DP: 상세도면, OW: 외주 작업현황)
 ==> TB_HCM_IMAGE A 	/* 시설 자료 이미지 정보 TB */  @@@ --> TB_HCM_ATTACH_FILE_02  A       /* 파일 첨부 정보_02 TB */
 2) 도면 이미지 코드(BP: 맹판도면, EE: 비상대피로, MI: 물질정보, DP: 상세도면, OW: 외주 작업현황) 
==============================================================================================================

- NoxMatRetMot DB 연결 수정(Tibero DB --> Oracle DB): 집에서 설정
1. /context-datasource.xml  파일에서
<!--// 01. NoxMatRetMot 개발DB 설정 추가[변경일: 2020.03.20, by 진태만], Oracle DB //-->
<bean id="dataSourceSpied" class="org.apache.commons.dbcp.BasicDataSource" destroy-method="close">
	<property name="driverClassName"  value="oracle.jdbc.driver.OracleDriver" />
	<property name="url" value="jdbc:oracle:thin:@TAMA_HOME:1521:TAMADB" />
	 <property name="username" value="NOXMAT_MAP"/>
	<property name="password" value="tama339"/>
</bean> 
==============================================================================================================

- 긴급 돌봄 연장 신청(대동초, 1학년 1반)
1. 3월 23월(월) ~ 4월 3일(금): 전화로 신청
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.03.21(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00 ==> 몸무게: 73.6kg

- 주말[★]
08:00 기상
08:10 조식 
08:30 실내 자전거 타기
09:30 종료
10:00 인터넷 서핑 ==> NoxMatRetMot Prj 설정(현대제철 VPN 연결)
12:00 루옌(수종) 놀러감[자고 옴]
12:30 실내 자전거 타기
13:30 종료 
14:00 인터넷 서핑 ==> NoxMatRetMot Prj 설정 
18:00 석식 
18:30 실내 자전거 타기(1시간)  
19:30 종료
19:40 샤워
20:07 인슐린 약 교체(269U, 21U 남음)
20:10 인터넷 서핑 ==> NoxMatRetMot Prj 설정
21:40 TV 시청 ==> 
22:30 취침
==============================================================================================================

- NoxMatRetMot Prj 설정
0. 문의[다음 메일]에서 소스, 데이타 받기
1. 소스 설정
2. DB 설정
==============================================================================================================

- NoxMatRetMot 폴더명 변경(보안 강화)
1. /admin ==> /admin2020noxMat,  admin:: ==> admin2020noxMat:: --> 신규
2. /frame ==> /frame2020noxMat,  frame:: ==> frame2020noxMat:: --> 적용
3. /com ==> /com2020noxMat,  com:: ==> com2020noxMatt:: --> 적용
4. /noxMat  ==> /noxMat2020noxMat,  noxMat:: ==> noxMat2020noxMat:: --> 신규
==> 파일 경로: C:\NoxMatRetMot\workspace\NoxMatRetMot\src\main\nxui\NoxMatRetMot
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020..03.22(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00 ==>

- 주말2[★]
07:30 기상
08:05 조식
08:30 실내 자전거 타기
09:30 종료
09:00 인터넷 서핑 ==> NoxMatRetMot 작업
12:10 중식
12:30 실내 자전거 타기(화장실에서)
13:30 종료
13:40 작은 방 청소, 침대 반대편으로 옮기기 ==> 실내 자전거 작은 방으로 옮기기(창문이 있고 가장 시원해서 옮김)
14:00 인터넷 서핑 ==> NoxMatRetMot 작업
17:00 석식
17:20 실내 자전거 타기
18:20 종료
19:20 집출발
19:40 온수역 2번 출구 도착 ==> (주)이노 액티브에서 빌린 차 얻어 탐(최종규 팀장외 3명)
20:00 서울 출발
21:06 당진 현대 애비뉴 도착
21:10 귀가
23:00 취침
==============================================================================================================

- NoxMatRetMot Prj 설정 ==> 완료 @@@
1. 집 노트북에 01. NoxMatPrj.xprj 서버 셋팅
/* 물질 정보 조회 ==> [/TA11101Mapper.xml] [searchMatter()] [2020.02.20, by 진태만] */  
WITH NOT_MAT_CNT_T1 AS 	/* NOT_MAT_CNT_T1(물질수량 조회) @@@@@@@ */
 ( 
 )
, GROUP_CD_STAT  AS 		/* GROUP_CD_STAT(그룹 조회) @@@@@@@ */
(       	  
	SELECT M.GROUP_CD AS GROUP_CD, M.GROUP_NM 
	FROM
	(        
		SELECT  'NOX1001' AS GROUP_CD, 'PSM' AS GROUP_NM
		FROM DUAL
		UNION ALL
		SELECT 'NOX1002' AS GROUP_CD, '가스' AS GROUP_NM
		FROM DUAL
		UNION ALL
		SELECT 'NOX1003' AS GROUP_CD, '유해물' AS GROUP_NM
		FROM DUAL
		UNION ALL
		SELECT 'NOX1004' AS GROUP_CD, '위험물' AS GROUP_NM
		FROM DUAL   
	) M
	WHERE 1 = 1  
	MAX(M.GROUP_CD)   ===> ORDER BY M.GROUP_CD 		// 수정 처리 @@@
)   
SELECT 0 AS NOT_MAT_CNT_SUM  	/* 물질수량 합계 */ 
			, MAX(CASE WHEN G.GROUP_CD = 'NOX1003' THEN SUM(T1.NOT_MAT_CNT) ELSE 0 END) NOT_MAT_CNT_01    /* 물질수량 1 */   
FROM NOT_MAT_CNT_T1 T1, NOT_MAT_CNT_T2 T2, NOT_MAT_CNT_T3 T3, NOT_MAT_CNT_T4 T4
				, GROUP_CD_STAT G
WHERE 1 = 1
	AND G.GROUP_CD = T1.GROUP_CD
	AND G.GROUP_CD = T2.GROUP_CD(+)
	AND G.GROUP_CD = T3.GROUP_CD(+)
	AND G.GROUP_CD = T4.GROUP_CD(+)
GROUP BY G.GROUP_CD
;
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2020.03.23(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==> 영웅 태권도 관장한테 전화 옴(8:40, 구청에서 2주간 휴업 권고: 수종 하교 못해준다고 함)

- 현대제철 유해화학물질 MAP 구축 Prj[★]
- 파일 업로드 팝업(/admin2020noxMat::noxUploadFileP.xfdl) 화면 수정 ==> 완료 @@@
1. 이미지 파일삭제(/deleteFile.jsp)
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
String realPath = request.getParameter("path");		// 실제 파일 경로
String realFlolerPath = request.getParameter("folder");		// 실제 파일 경로 

if(osName.indexOf("Window") > -1)
{
	realPath.toString().replace('/', '\\'); 
}

File folder = new File(realFlolerPath);
 
try {
	System.out.println("[/deleteFile.jsp] ==> [TEST_11] [folder.exists()]"+ folder.exists() );
	
	while(folder.exists()) 
	{
		File[] folder_list = folder.listFiles(); 	// 파일리스트 얻어오기 		
		
		for (int j = 0; j < folder_list.length; j++) 
		{
			System.out.println("[/deleteFile.jsp] ==> [TEST_51] [j_번째]"+ j +"[folder_list[j].isFile()]"+ folder_list[j].isFile() );
			
			folder_list[j].delete(); 	// 파일 삭제  			
			System.out.println("파일이 삭제되었습니다."); 
		}
		
		if(folder_list.length == 0 && folder.isDirectory())		// 파일이 모두 삭제 되었고 폴더가 존재하면
		{ 
			System.out.println("[/deleteFile.jsp] ==> [TEST_61] [folder_list.length]"+ folder_list.length +"[folder.isDirectory()]"+ folder.isDirectory() );
			
			folder.delete(); 	// 대상폴더 삭제 			
			System.out.println("폴더가 삭제되었습니다.");
		}
	}
}  
%>
==============================================================================================================

- 공장 단위(관리자) (/admin::FmiAdmin.xfdl) 화면 수정 ==> 완료 @@@
1.  3D에서 데이타 받기
/***************************************************************************
 * Even   : wb_NoxMat_onusernotify
 * Desc   : wb_NoxMat  ==> FmiAdmin에 로드된 웹페이지에서 nexacro쪽으로 정보를 전달할 때 발생하는 이벤트(02. 3D에서 데이타 받기)
 ****************************************************************************/ 
this.wb_NoxMat_onusernotify = function(obj:nexacro.FmiAdmin,e:nexacro.WebUserNotifyEventInfo)
{
	trace("[/FmiAdmin.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_01] [e.userdata]"+ e.userdata ); 
	// [e.userdata]EVENT_NM=SCREEN_CLICK&ID_FACILITY=100011&N_Y=12&N_Z=13&ID_FACILITY_02=100000&ID_MAP=9
 
	var sID_FACILITY;	// 01. 시설 코드   
	var sN_X;			// 02. X축
	var sN_Y;			// 03. Y축
	var sN_Z;			// 04. Z축
	var sID_FACILITY_02;		//05. 임의 시설 코드
	var sID_MAP;		 // 06. ID_MAP
	
	var arrColList = String(e.userdata).split("&");		// String 자르기
	trace("[/FmiAdmin.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_03] [arrColList[0]]"+ arrColList[0] +"[arrColList[1]"+ arrColList[1]
		+"[arrColList[2]"+ arrColList[2] +"[arrColList[3]"+ arrColList[3] +"[arrColList[4]"+ arrColList[4] );
	
	var arrEvent = String(arrColList[0]).split("=");	 	// 이벤트 ==> 01. SCREEN_CLICK 이벤트
	trace("[/FmiAdmin.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_03] [arrEvent[0]]"+ arrEvent[0] +"[arrEvent[1]"+ arrEvent[1]  );
	
	if(arrEvent[1] == "SCREEN_CLICK")	 	// 이벤트명이 SCREEN_CLICK 이면
	{  
		var arrID_FACILITY = String(arrColList[1]).split("=");	 	//  01. 시설 코드
	 
		if(arrID_FACILITY[0] == "ID_FACILITY")	 	// 01. 시설 코드 이면
		{  
			sID_FACILITY = arrID_FACILITY[1];		//  01. 시설 코드
		} 
		
		var arrN_X = String(arrColList[2]).split("=");	 // 02. X축 자르기
		
		if(arrN_X[0] == "N_X")	 	// 02. X축 이면
		{  
			sN_X = arrN_X[1];		// 02. X축 
		} 
		trace("[/FmiAdmin.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_51] [데이타 받기] [01. 시설 코드]"+ sID_FACILITY +"[02. X축]"+ sN_X 
			+"[03. Y축]"+ sN_Y +"[04. Z축]"+ sN_Z +"[05. 임의 시설 코드]"+ sID_FACILITY_02 +"[06. ID_MAP]"+ sID_MAP );
		
		if(!this.gfn_IsNull(sID_FACILITY))		 // 01. 시설 코드가 널 아니면  @@@
		{ 
			this.fn_SaveMapInfo( sID_FACILITY		// 01. 시설 코드(ID_FACILITY) 
											, sN_X 			// 02. X축
											, sN_Y			// 03. Y축
											, sN_Z 			// 04. Z축
											, sID_FACILITY_02 			// 05. 임의 시설 코드
											, sID_MAP 		// 06. ID_MAP
										);		// 좌표 정보 저장
			//trace("[/FmiAdmin.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_91]" ); 
		}
	} 
};
==============================================================================================================

- 전체 화면(/noxMat::MainDisc.xfdl) 화면 수정 ==> 완료 @@@
1. 트리뷰  정보 조회
<select id="searchTreeView" parameterType="java.util.Map" resultType="Map"> 
	SELECT LPAD(' ',(LEVEL-1)*2,' ') || NM_FACILITY AS VIEW_NM
				, '1' AS CHK_YN		/* 체크 여부 */
				, LEVEL AS V_LEVEL
				, A.*
	FROM TB_HCM_FACILITYBASE A 	/* MAP 시설 정보 TB	*/
	START WITH ID_FK_PARENT IS NULL
	CONNECT BY PRIOR ID_PK_FACILITY = ID_FK_PARENT
</select>
==============================================================================================================

- 로컬서버에서 NoxMatRetMot.war 파일 생성(WAR 파일로 Export해서 톰캣에 배포하기)
1. Nexacro에서 Refresh 후 Applcation
2. eclipse에서
 1) webapp 폴더 Refresh
 2) NoxMatRetMot 폴더 마우스 우 클릭 ==> Export ==> WAR file ==> WAR Export(새창)
  가. WAR project: NoxMatRetMot
  나. Destination: D:\01. TAMA_DATA\91. Back up_[■▲■]\NoxMatRetMot 관련\NoxMatRetMot.war
==============================================================================================================

- 데이터 전송 방법 회의(19:40, 김황 과장)
1. 데이터 전송 방법 메세지.xlsx
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2020.03.24(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==> 돌봄 교실 선생님한테 전화옴(9 ~ 17, 수종 엄마 퇴근 시간 조정 요망)

- 현대제철 유해화학물질 MAP 구축 Prj[★]
- 공장 단위(관리자) (/admin::FmiAdmin.xfdl) 화면 수정
1. EVENT_NM=MAP_LOAD_DRAW_CALL";    // 이벤트명: 01. MAP_LOAD_DRAW_CALL:  맵 경로, 그리기 ==> 완료 @@@
==============================================================================================================
 
- 회의(15:30)
1. 현대제철 유해화학물질 MAP 구축 ==> 최종규 팀장, 김황 과장, 김책 부대표
 1) 3D로 데이타 보내기 ==> DB(4개 테이블) 조회 후 데이타 전송이 너무 많이서 속도 문제가 발생 ==> DB 한번에 조회 후 String으로 전송
  ==> 요청대로 조회를하고 데이타 검증을 하면 최소 2~30초가 소요될 것으로 예상(user가 사용 안할 것으로 판단됨)
 2) SSO 사용
 3) 서버: 박민형 PM쪽에서 설치 해준다고 함
 4) 일정 협의
  가. 4월 17일(화) 오픈 예정
==============================================================================================================
   
■■■■■■■■■■■■■■■■■■ 2020.03.25(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==> 김황 과장 목소리 너무 시끄러워서 조용히 하라고 주의 줌(삐져서 퇴근 함, 11시)

- 현대제철 유해화학물질 MAP 구축 Prj[★]
- 공장 단위(관리자) (/admin::FmiAdmin.xfdl) 화면 수정
1. EVENT_NM=SCREEN_CLICK";    // 이벤트명: 02. SCREEN_CLICK: 화면 클릭한 위치 및 세부 사항 반환 ==> 완료 @@@
==============================================================================================================

- Webbrowser에서 form_onload 시 테이타 호출 문제 (주)투비 소프트 콜센터에 문의
1. form_onload시에 this.wb_NoxMat.getProperty("document"); 에러 발생
 /***************************************************************************
 * Even   : form_onload
 * Desc   :  폼 로드
 ****************************************************************************/ 
this.form_onload = function(obj:nexacro.Form,e:nexacro.LoadEventInfo)
{
	trace("[/FmiAdmin.xfdl] [form_onload()] ==> [TEST_01] [폼 로딩]" );
	
	var sURL = nexacro.getApplication().gv_svcUrl +"util/noxMatWebBrowser/WebBrowserLoad.html";  	// WebBrowser Load 화면
	this.wb_NoxMat.set_url(sURL); 
};

/***************************************************************************
 * Even   : wb_NoxMat_onusernotify
 * Desc   : wb_NoxMat  ==> FmiAdmin에 로드된 웹페이지에서 nexacro쪽으로 정보를 전달할 때 발생하는 이벤트(02. 3D에서 데이타 받기)
 ****************************************************************************/ 
this.wb_NoxMat_onusernotify = function(obj:nexacro.FmiAdmin,e:nexacro.WebUserNotifyEventInfo)
{
	trace("[/FmiAdmin.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_01] [e.userdata]"+ e.userdata ); 
  
	var arrColList = String(e.userdata).split("&");		// String 자르기
 
	var arrEvent = String(arrColList[0]).split("=");	 	// 이벤트 
 
	if(arrEvent[1] == "MAP_LOAD")	 	// 이벤트명: 00. MAP_LOAD: Load
	{  
		arrRST_CD = String(arrColList[1]).split("=");	 	// 99. 결과코드
	 
		if(arrRST_CD[1] == "0")	 	// 99. 결과코드가 성공이면
		{ 
			this.fn_3DMapLoadSearch(); 	// 3D맵 정보 조회
		}
	}  
};

/***************************************************************************
 * Even   : fn_MapLoadCall
 * Desc   : Map 버튼 클릭 이벤트(01. 3D로 데이타 보내기)
 ****************************************************************************/
this.fn_MapLoadCall = function()
{ 
	var sDRAW_QUERY = "35■■■DRAW_TYPE=1&FILE_NM=1라면공장.InnoR3D
		■■■&DRAW_TYPE=3&ID_PK_FACILITY=H02&ID_FK_ROOT=undefined&NM_FACILITY=2라면공
		&N_X=18669.78&N_Y=40800&N_Z=1147.292&E_FACILITYTYPE=2■■";
	trace("[/TEST.xfdl] [fn_MapLoadCall()] ==> [TEST_02] [sDRAW_QUERY]"+ sDRAW_QUERY );
	
	var objDoc = this.wb_NoxMat.getProperty("document"); 		// WebBrowser document   
 
	var objDom = objDoc.getProperty("all");
	
	var sSTS_CD = "2";		// 상태코드
	objDom.getProperty("STS_CD").setProperty("value", sSTS_CD); 			// 상태코드 ==> 에러 발생 @@@@
	objDom.getProperty("LOAD_DRAW_QUERY").setProperty("value", sDRAW_QUERY); 			// 맵 경로, 그리기 쿼리  
};
==============================================================================================================

- setProperty 에러 발생
1. 현상:
nexacro (108052)> file://C:/NoxMatRetMot/workspace/NoxMatRetMot/src/main/webapp/NoxMatRetMot/admin2020noxMat/FmiAdmin.xfdl.js(1826):
Uncaught TypeError: Cannot read property 'setProperty' of undefined
  objDom.getProperty("STS_CD").setProperty("value", sSTS_CD); 			// 상태코드

2. 원인: /WebBrowserLoad.html파일에서 상태코드를 STS_CD_T2로 잘못 표기
<td><input type="text"  id="STS_CD_T2" value="9"></td>		 <!--// 상태코드 //-->
==> <td><input type="text"  id="STS_CD" value="9"></td>		 <!--// 상태코드 //-->  ==> 수정 처리 @@@
==============================================================================================================

- TEST 사용자 추가
var nSucc = nexacro.getApplication().setVariable("gv_global1", this.objApp.gds_UserInfo.getColumn(0, "USERID") );	  
// gv_global1 셋팅(로그인ID) 추가[변경일: 2020.03.25, by 진태만] 
trace("[/loginFrame.xfdl] [fn_Callback()] ==> [TEST_42] [콜백] [Succ]"+ nSucc +"[USERID]"+ this.objApp.gds_UserInfo.getColumn(0, "USERID") );
 
/* 로그인 정보 조회 ==> [/COMLOGINMapper.xml] [selectUserInfo()] [020.02.06, by 진태만] */
SELECT *
FROM TB_GQ_CM_USERINFO 
WHERE 1=1
 AND EMP_NO = '1521222'
   -- AND NAME_K LIKE '%진태만2%'
;
==============================================================================================================
   
■■■■■■■■■■■■■■■■■■ 2020.03.26(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==> 퇴근할 때 숙소 거의 다 와서 비 맞음(종일 흐림, 밤에 비 조금)

- 현대제철 유해화학물질 MAP 구축 Prj[★]
- 공장 단위(관리자) (/admin::FmiAdmin.xfdl) 화면 수정
1. EVENT_NM=OBJ_INSERT_START_CALL";    // 이벤트명: 03. OBJ_INSERT_START_CALL: 입력한 정보의 객체를 화면에 삽입하도록 요청 
 1) 설비 등록: INSERT ==> 완료 @@@
----------------------------------------------------------------------------------------------

 2) 설비 연결
 1)  임의 시설 코드(변경시): UPDATE ==> 완료 @@@
==============================================================================================================

- 최조 로딩시 3D 데이타 호출 안함
1.  ((주)이노 액티브 김황 과장이 자체 DB를 사용한다고 함
/***************************************************************************
 * Even   : fn_3DMapLoadSearch
 * Desc   :  3D맵 정보 조회 ==> 01. LOAD_DRAW_CALL: 맵 경로. 그리기 요청(4개 테아블 조회: 사용 안함)
 ****************************************************************************/ 
this.fn_3DMapLoadSearch = function()
{ 
	var sSvcID        = "search3DMapLoad"
	var sController   = "TA/TA11101/search3DMapLoad";			// 3D맵 정보 조회
	var sInDatasets   = "ds_Search=ds_Search";
	var sOutDatasets  = "ds_3DMapLoad=ds_List"; 
	
	this.gfn_Transaction( sSvcID, sController, sInDatasets, sOutDatasets, sArgument, sCallbackFunc, bAsync );
};
==============================================================================================================

- OBJ_MOVE_START_CALL(위치 수정)(트리뷰에서) 
1. EVENT_NM=OBJ_MOVE_START_CALL";    // 이벤트명: 05. OBJ_MOVE_START_CALL: 위치 수정 ==> 완료 @@@
==============================================================================================================

- OBJ_DELETE_CALL(위치 삭제: 입력한 정보의 객체를 삭제 요청) (트리뷰에서) ==> 완료 @@@
1. EVENT_NM=OBJ_DELETE_CALL";    // 이벤트명: 06. OBJ_DELETE_CALL: 위치 삭제(트리뷰에서)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.03.27(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 14:30 ==> 최종규 팀장 출장, 서울행(14:30 ~ 16:10): (주)이노 액티브 팀원들 차 얻어 탐 --> 15:50 천왕역 2번 출구
									--> 16:00 대림역 --> 16:10 귀가

- 현대제철 유해화학물질 MAP 구축 Prj[★] 
- 12. OBJ_SHOW: 입력한 정보의 객체를 화면에 표시 요청  ==> 완료 @@@
OBJ_SHOW: 입력한 정보의 객체를 화면에 표시 요청
OBJ_HIDE: 입력한 정보의 객체를 화면에 숨기기 요청 
==============================================================================================================

- 11. OBJ_DELETE_CALL: 입력한 정보의 객체를 삭제 요청 ==> 완료 @@@
this.fn_TreeViewInfo(sID_FACILITY, sVIEW_NM);		// 트리뷰 위치 정보 전송
his.fn_SaveMapInfo();
==============================================================================================================
 
- 20. SCREEN_SAVE_CALL: 현재 화면의 스크린을 저장 요청 ==> 완료 @@@
1. this.fn_ScreenSaveCall();		// 현재 화면의 스크린을 저장 요청: 비상대피로 버튼 클릭 이벤트할 때(this.btn_EmgEvaRout_onclick)
==============================================================================================================
  
- 14. LAYER_SHOW: 입력한 레이어에 포함된 객체를 화면에 표시 요청 ==> 완료 @@@
LAYER_SHOW	13	13	0	입력한 레이어에 포함된 객체를 화면에 표시 요청
LAYER_HIDE	13	14	0	입력한 레이어에 포함된 객체를 화면에 숨기기 요청
==============================================================================================================

- 16. LAYER_LIST_CALL	15	15	0	현재 도면에 연결된 모든 레이어 리스트 반환 ==> 개발 중 @@@
1. 3D 로딩 종료 후 자동 호출으로 데이터(String)으로 받음
==============================================================================================================
 
- 17. ICON_INSERT_START_CALL: 도면에 아이콘을 삽입 요청 ==> 개발 중 @@@
ICON_INSERT_START_CALL
ICON_INSERT_RUNNING
ICON_INSERT_END 
this.fn_IconlReg(sN_X 			// 02. X축
										, sN_Y		// 03. Y축
										, sN_Z 		// 04. Z축 
										, sID_FK_ROOT 		// 근원시설코드 
										,  sFacilGubun	// 설비 구분(1: 등록, 2: 연결)
			);		// 아이콘 등록
------------------------------------------------------------------------------------------------------

-- 아이콘 코드 타입  ==> @@@  ID_FK_TYPE
SELECT  A.*
FROM TB_HCM_ICONBASE  A 		 /* MAP 파일정보 TB */ 
;
 
-- ID_CPK_ICON,  --> SEC_NO.....,  
-- 아이콘 코드 타입  ==> @@@  ID_FK_TYPE
--  아이콘의 부모 시설코드 /  ==> @@@  ID_CFPK_PARENT 
--   DDD ==> @@@  ID_FK_ROOT
==============================================================================================================

- 서울행[★]
16:10 귀가 ==> 가방에 잠바, 반찬통, 커피 가지고 옴
16:10 집출발(자전거)
16:20 대동초 돌봄교실(수종이 데리고 옴)
16:40 귀가
17:10 집출발(자전거)
17:20 맛닭꼬 남구로점  ==> 갈릭 베이크(포장: 10,900원) 구입 
17:30 귀가(루옌 퇴근)
17:35 석식
17:50 실내 자전거 타기: 작은 방에서
		 ==> [토크멘터리 전쟁사] 196회 [유럽근세전쟁사] 프랑스-이탈리아 전투 2 (이탈리아 원정, 나폴레옹), 방송일자: 2020.03.25
		 --> http://tv.dema.mil.kr/web/home/warhistory/mov/homeMovieView.do
18:50 종료
19:00 샤워,  몸무게: 73.6kg
19:30 인슐린 약 교체(277U, 17U 남음)
19:40 인터넷 서핑 ==> 현대제철 VPN 연결 안됨
21:20 TV 시청 ==> 
22:00 취침(작은 방 침대에서 취침)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.03.28(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00 ==> 

- 주말[★]
08:00 기상
08:26 조식 
09:00 실내 자전거 타기: 작은 방에서 ==> 컬투쇼 라디오 재방송(2020.02.11[화]) 듣기
10:00 종료
10:00 인터넷 서핑 ==> NoxMatRetMot Prj 수정 작업
12:00 루옌(수종) 놀러감[자고 옴]
12:30 실내 자전거 타기
13:30 종료 
14:00 인터넷 서핑 ==> NoxMatRetMot Prj 수정 작업
18:00 석식 
18:30 실내 자전거 타기(1시간)  
19:30 종료 
21:40 TV 시청 ==> 
22:30 취침
==============================================================================================================

- NoxMatRetMot Prj 수정 작업
1. 설비 단위 화면(관리자) (/DmiAdmin.xfdl) 파일 없음
==============================================================================================================

- 공장 단위 화면(/FmiAdmin.xfdl)에서 설비 단위 화면으로 변경
/***************************************************************************
 * Even   : st_AreaTitle_onclick
 * Desc   : 공장 제목 클릭 이벤트
 ****************************************************************************/  
this.st_AreaTitle_onclick = function(obj:nexacro.Static,e:nexacro.ClickEventInfo)
{ 
	// 설비 단위 화면으로 변경 @@@@@
}
==============================================================================================================
 
- 공장 단위 화면(/Fmi.xfdl)에서 설비 단위 화면으로 변경
/***************************************************************************
 * Even   : st_AreaTitle_onclick
 * Desc   : 공장 제목 클릭 이벤트
 ****************************************************************************/  
this.st_AreaTitle_onclick = function(obj:nexacro.Static,e:nexacro.ClickEventInfo)
{ 
	// 설비 단위 화면으로 변경 @@@@@
}
==============================================================================================================

- 반팔 Y셔츠 분석
1. 여름 반팔 고밀도 정장 와이셔츠 스판 와이드, 가격: 32,000원
https://smartstore.naver.com/gkiro/products/3160200661?NaPm=ct%3Dk8a4484w%7Cci%3D0AK0002YTlPsH90Qavmu%7Ctr%3Dpla%7Chk%3D5ba8fbce03010c8b009f9d0cb8ed7e59f8a5df3a
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020..03.29(일) 작업 ■■■■■■■■■■■■■■■■■■
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
14:10 집출발(자전거)
14:20 G마트 ==> 로또 교환(5천원), 로또 구입(G마트: 10장, 만원)
14:40 다이소 대림2호점 ==> 치약 2개, 양치 컵, 배수관 청소기(2개) 
15:10 귀가
15:30 인터넷 서핑
17:00 석식
17:20 실내 자전거 타기
18:20 종료
19:20 집출발 ==> 가방에 김치, 오뎅, 양치컵, 배수관 청소기 가지고 감
19:40 온수역 2번 출구 도착 ==> (주)이노 액티브에서 빌린 차 얻어 탐(최종규 팀장외 3명)
20:00 서울 출발
21:06 당진 현대 애비뉴 도착
21:10 귀가
21:15 빨래
23:00 취침
==============================================================================================================

- 과즙기 구입(루옌이 부탁해서 선물로 사줌)
1. [쎈딜] 과일 야채 과즙기 착즙기 과일주서기 휴롬 원액기, 가격: 58,350원, 배외 배송(중국): 개인통관고유부호 발급(P190020517082, JIN TAEMAN)
http://shopping.interpark.com/product/productInfo.do?prdNo=7064845836&uaTp=1&
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.03.30(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==> 2020 도쿄 올림픽 연기(2021년 7월 23일(금): 코로나19 확산?문)

- 현대제철 유해화학물질 MAP 구축 Prj[★] 
- 전체 화면(관리자) (/admin::MainDiscAdmin.xfdl) 화면 수정
1. 3개 화면 통합 
==============================================================================================================

- WebBrowser를 이용한 데이타 교환
1. 김황 과장(최종규 팀장 참조)에게 메일 보냄
==============================================================================================================

4.  OBJ_LOOK_CALL: 입력한 객체를 바라보도록 요청(트리뷰에서) ==> 완료 @@@
/***************************************************************************
 * Even   : grd_TreeView_oncelldblclick
 * Desc   : 트리뷰 Grid 더블 클릭 이벤트(01. 3D로 데이타 보내기)   
 ****************************************************************************/
this.grd_TreeView_oncelldblclick  = function(obj:nexacro.Grid,e:nexacro.GridClickEventInfo)
{
	var sSTS_CD = "3";		// 상태코드_10(3: 요청)
	var sID_FACILITY = this.ds_TreeView.getColumn(e.row, "ID_PK_FACILITY");	// 시설코드 
	var sVIEW_NM = this.ds_TreeView.getColumn(e.row, "NM_FACILITY"); 		// 뷰 명	 
 
	var objDoc = this.wb_NoxMat.getProperty("document"); 		// WebBrowser document
	var objDom = objDoc.getProperty("all");
	objDom.getProperty("STS_CD_10").setProperty("value", sSTS_CD);		// 상태코드_10
	objDom.getProperty("ID_FACILITY_10").setProperty("value", sID_FACILITY);		// 시설코드 
};
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2020.03.31(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==> 

- 현대제철 유해화학물질 MAP 구축 Prj[★] 
- 전체 화면(관리자) (/admin::MainDiscAdmin.xfdl) 화면 수정
1. 3개 화면 통합(3개의 Div로 분리)
 1) 00. 전체 화면 오른쪽 Div(div_RightGrdList)
 2) 01. 공장 화면 오른쪽 Div(div_RightGrdList_01)
 3) 02. 설비 화면 오른쪽 Div(div_RightGrdList_02)
==============================================================================================================

- 특수 문자
https://wepplication.github.io/tools/charMap/#emoticon

~ ! @ # $ % ^ & * \ " ' + = ` | ( ) [ ] { } : ; - _ - ＃ ＆ ＆ ＠ § ※ ☆ ★ ○ ● ◎ ◇ ◆ □ ■ △ ▲ ▽ ▼ → ← ← ↑ ↓ ↔ 〓
◁ ◀ ▷ ▶ ♤ ♠ ♡ ♥ ♧ ♣ ⊙ ◈ ▣ ◐ ◑ ▒ ▤ ▥ ▨ ▧ ▦ ▩ ♨ ☏ ☎ ☜ ☞ ¶ † ‡ ↕ ↗ ↙ ↖ ↘ ♭ ♩ ♪ ♬ ㉿ ㈜
№ ㏇ ™ ㏂ ㏘ ℡ ® ª º ─ │ ┌ ┐ ┘ └ ├ ┬ ┤ ┴ ┼ ━ ┃ ┏ ┓ ┛ ┗ ┣ ┳ ┫ ┻ ╋ ┠ ┯ ┨ ┷ ┿ ┝ ┰ ┥ ┸ ╂ ┒
┑ ┚ ┙ ┖ ┕ ┎ ┍ ┞ ┟ ┡ ┢ ┦ ┧ ┩ ┪ ┭ ┮ ┱ ┲ ┵ ┶ ┹ ┺ ┽ ┾ ╀ ╁ ╃ ╄ ╅ ╆ ╇ ╈ ╉ ╊
＋ － ＜ ＝ ＞ ± × ÷ ≠ ≤ ≥ ∞ ∴ ♂ ♀ ∠ ⊥ ⌒ ∂ ∇ ≡ ≒ ≪ ≫ √ ∽ ∝ ∵ ∫ ∬ ∈ ∋ ⊆ ⊇ ⊂ ⊃ ∪ ∩ ∧ ∨ ￢ ⇒ ⇔ ∀ ∃ ∮ ∑ ∏
！ ＇ ， ． ／ ： ； ？ ＾ ＿ ｀ ｜ ￣ 、 。 · ‥ … ¨ 〃 ­ ― ∥ ＼ ∼ ´ ～ ˇ ˘ ˝ ˚ ˙ ¸ ˛ ¡ ¿ ː
============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 
+----------------------------------------------------// End //----------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
