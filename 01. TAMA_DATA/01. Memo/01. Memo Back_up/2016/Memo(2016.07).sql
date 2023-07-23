

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2016.07) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2016.07.01(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 21:00  ==> 

- 휠라 코리아 차세대 통합ERP Prj[★]
- 로그인 로직 수정 ==> 완료 @@@
1. 세션이 안 끊긴 상태에서 메인 화면 호출 ==> http://localhost:8081/websquare/websquare.html?w2xPath=/wqui/cm/MDI.xml#none
 1) 세션 조회 후 세션이 존재하면 로그인 사용자목록(세션) 조회 submission 호출 
 ==> JAVA에서 기존 세션과 충돌("세션 인증 실패"라는 에러 띄움)
 --> #{GV_BUKRS}을 #{bukrs}로 변경 --> 왼쪽 메뉴만 조회, 로그인 사용자목록 정보는 세션(FILAK01_SESSION_INFO)에서 가져옴
2. 세션이 없는 상태에서 메인 화면 호출 ==> http://localhost:8081/websquare/websquare.html?w2xPath=/wqui/cm/MDI.xml#none
 1) 세션 조회 후 세션이 없으면 로그인 화면 호출
==============================================================================================================

- 관리조직코드명 변경(FILAK01_SESSION_INFO, FILAK02_SESSION_INFO, FILAK03_SESSION_INFO에서)
1. MNGM_ORG_CD --> MNGM_ORGT_CD
==============================================================================================================

- 상품이미지 다운로드 조회(/CM_ProdImgDwnldInqy.xml) 수정
1.  
==============================================================================================================

- 처리할 업무
1. 공통 코드(브랜드) 세션 처리  ==> POS쪽은 반영되어 있다고 함 @@@
2. 하단 메뉴 DB에 넣기  ==> 완료 @@@
3. 로그인 3개 파트 세션이 분리  ==> 완료 @@@
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.07.02(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==> 주말 근무, 휠라 코리아 Prj[ 4번째 자리 이동(공통팀으로 파티션으로 이동)

- 주말
05:00 기상
05:10 유로2016 8강(04시, 프랑스) ==> 웨일스 3:1 벨기에
06:00 종료
06:20 취침
08:20 기상
09:00 조식(감자, 라면)
10:30 집출발
10:50 명지 성모 병원 정형외과 1 방문(노동근  선생님 상담)	==> 수술 결정, 날짜 잡음
11:10 수술 예비 검사 ==> 심전도 검사, X-Ray 검사, 피
11:30 종료
11:50 지하철(대림역 -> 방배역)
12:20 출근(휠라k Prj)
12:30 중식(부대찌개, 고향식당): 이진우 이사님이 쏨
13:00 주말 근무
18:30 종료
19:30 귀가 
21:00 석식
23:00 취침
==============================================================================================================

- 장인수술 일정
1. 고괄절 수술(인공 관절 삽입 수술)
 1) 명지 성모 병원 예약(정형외과) 노동근 선생님 
3. 병명: 무혈성 괴사 
4. 병원비: 총 300만원(양쪽)
5, 장인수술 일정
 1) 7월 12일(화) 오전 입원
 2) 7월 13일(수) 오후 수술
==============================================================================================================

- 휠라 코리아 차세대 통합ERP Prj[★]
- 로그인 로직 수정
1. sssnId_01scm 세션 생성 ==> 로그 아웃시  해당 세션 끊기
sessionStorage.setItem("sssnId_01scm", FILAKLG01_SESSION_INFO.get("SSSN_ID")); 	// 01. SCM용 세션ID
sessionStorage.setItem("sssnId_01scm", ""); 	// sessionStorage에서 SSSN_ID 값 없애기
==============================================================================================================

- 세션 시간 늘이기
/FilaKoreaERP.SCMSystem/src/main/resources/properties/system.properties/system.properties 파일에서
### 세션타입설정(default 60초*60분)  // 세션 시간(초) 변경 ==> 3600(1시간)에서 86400(24시간)으로 변경
session.time=86400 
==============================================================================================================

- Grid 필드 중복 체크 처리
/**
 * Grid 필드 중복 체크 처리 함수
 */
scwin.checkDupGridField = function() { 
	$w.log("[/CM_MenuMngm.xml] [checkDupGridField()] ==> [메뉴유형메뉴  저장] [TEST_01]" );

	var gridId = "grd_menuTypeMenuList";      	// Grid 명(입력)
	var grdObj = $w.comp[gridId];
	$w.log("[/CM_MenuMngm.xml] [checkDupGridField()] ==> [메뉴유형메뉴  저장] [TEST_03]" );
	
	if(!grdObj){
		$w.log("===== "+"저장 오류(파라미터전달 gridId)"+" =====");
		return;
	}
	var dltObj = $w.data[grdObj.getDataList()];
	if(!dltObj){
		$w.log("===== "+"저장 오류(파라미터전달 datalist)"+" =====");
		return;
	} 
	$w.log("[/CM_MenuMngm.xml] [checkDupGridField()] ==> [메뉴유형메뉴  저장] [TEST_04]" );

	var modifiedIdx = dltObj.getModifiedIndex(); 	// Grid에서 수정된 필드 수
	$w.log("[/CM_MenuMngm.xml] [checkDupGridField()] ==> [메뉴유형그리드 저장] [grdObj]"+ grdObj +"[modifiedIdx]"+ modifiedIdx );

	for(var i in modifiedIdx){  // 중복체크
		var isDup = cmCommon.isDupDataInGrid(gridId, modifiedIdx[i], "pgId");	 // 중복체크(pgId 필드 중복 체크)
		//var isDup = cmCommon.isDupDataInGrid(gridId, modifiedIdx[i], "brndCd", "bukrs");	 // 중복체크(brndCd, bukrs 필드 중복 체크)
		$w.log("[/CM_MenuMngm.xml] [checkDupGridField()] ==> [메뉴유형그리드 저장] [isDup]"+ isDup );
		
		if(isDup){	// 중복 이면
			dlt_cmMenuTypeMenuList.setCellData(modifiedIdx[i],"pgId","");    // 프로그램ID(dlt_cmMenuTypeMenuList DS 에서)
			 
			grdObj.setFocusedCell(modifiedIdx[i],"pgId", true);
			return;
		}
	} 
};
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.07.03(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==>   

▦ 조기축구
05:00 기상
05:10 유로2016 8강(04시, 프랑스) ==> 독일 1(6):(5)1 이탈리아
07:00 종료
07:10 자전거(문영APT -> 대림운동장)
07:20 대림운동장
07:50 게임 ==> 3게임함(아현 징검다리팀 초청)
12:00 종료
12:30 중식(돼지국밥: 서울돼지국밥)  ==> 김동주 회원님이 모친상 답례로 쏨
13:00 종료 
13:10 귀가
13:40 이발, 염색: 루옌이 해줌
14:30 낮잠
17:20 기상
14:40 집출발
19:40 석식(짜장면2 그릇 ==> 서울쟁반짜장[만 원], 요기요에서 시킴)
        --> 양념 치킨(양념반 + 후라이드반) ==> 네네치킨 대림점[만7천원], 요기요에서 시킴)
22:30 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.07.04(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 21:00  ==> 

- 휠라 코리아 차세대 통합ERP Prj[★]
- 상품이미지 목록 조회(/CM_ProdImgListInqy.xml) 개발  ==>  
SELECT *
--   count(*) AS "스타일_갯수"         -- ==> 79,666건
FROM PN_STYL C1 -- 스타일 TB
; 

1. PN_STYL_CLR C1 -- 스타일칼라 TB 
2. CM_FILE C1 -- 파일 TB
3. CM_STYL_IMG C1 -- 상품이미지 TB    
4. CM_STYL_IMG_DWN C1 -- 상품이미지다운로드 TB      
5. CM_STYL_IMG_DWN_FL C1 -- 상품이미지다운로드파일 TB       
==============================================================================================================
 
- 상품이미지 다운로드 조회(/CM_ProdImgDwnldInqy.xml) 개발  ==>  
==============================================================================================================
 
- 웹스퀘어에서 레지스트리 등록
1. 휠라에서 파워빌더를 이용해서 ActiveX를 사용하여 A/S에 구현 ==> 오브젝트 테그 사용하라고 가이드 받음
------------------------------------------------------------------------------------------------------

- 오브젝트 테그
https://www.google.co.kr/#q=%EC%98%A4%EB%B8%8C%EC%A0%9D%ED%8A%B8+%ED%85%8C%EA%B7%B8
http://aboooks.tistory.com/209
==============================================================================================================

- 사용자별 법인브랜드창고권한(/CM_UsrBukrsBrndAuth.xml) 수정 요청(이진우 이사님 -> 곽차장에게 전달)
1. 브라우저에서 마우스 끌기를 하면 Grid들이 아래로 자동 늘어가기가 안됨
==============================================================================================================

- 권한그룹별 프로그램권한(/CM_AuthGrpPgAuth.xml) 
==============================================================================================================

- 개발요청서 기술 명세(개발자) 작성
1. FILA-DT-CM-13(개발요청서-CM-059 상품이미지목록조회)_V0.1.doc 파일에서
3.  기술 명세(개발자) 작성
==============================================================================================================

- Websquare5 상단 메뉴 안보이기 설정
1. 메인 화면 > 상단 메뉴: 마우스 우클릭 > Customize Perpective(새창) > Tool Bar Visibility(탭)
 1) Tool Bar Structure(리스트) > Search(체크 안함) ==> OK(클릭)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.07.05(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 21:20  ==> 윤차장이 이진우 이사하고 다툼 있었다고 함

- 휠라 코리아 차세대 통합ERP Prj[★]
- 상품이미지 목록 조회(/CM_ProdImgListInqy.xml) 개발  ==> 
1. jason처리 때문에 고생함
\2016\FILA\F1CDY0001_NAV
==============================================================================================================

- /cmCommon.js 파일에서
/**
* 상품이미지 파일 업로드 
*/
cmCommon.execFileUploadProdImg = function(formId, callbackFuncNm){
  
	var sStylCd = dma_requestData.get("stylCd");		// 스타일코드      
	var sColrNm = dma_requestData.get("colrNm");		// 색상명  
	var sBrndCd = dma_requestData.get("brndCd");		// 대분류(브랜드코드)          
	var sYyCd = dma_requestData.get("yyCd");		// 년도코드       
	   
	var pgId = cmCommon.getProgramId();  //프로그램ID 설정 
	var formData = new FormData($("#"+formId)[0]);
	 
	formData.append($("#programId"), pgId);
	formData.append("stylCd", sStylCd); 	// 스타일코드
	formData.append("colrNm", sColrNm); 	// 색상명
	formData.append("brndCd", sBrndCd); 	// 대분류(브랜드코드)        
	formData.append("yyCd", sYyCd); 	// 년도코드  

	$.ajax({
		url: '/cm/saveProdImg.do',		// URL 주소
		dataType: "json",
		type: 'POST', 
		data: formData,		// 요청에 전달되는 프로퍼티를 가진 객체 @@@@
		userCbFunc: {funcNm: callbackFuncNm},
		cache: false,
		contentType: false,
		processData: false,
		
		success : function (data, textStats, jqXHR) {		// 응답이 성공 상태 코드를 반환하면 호출되는 함수
			//$w.log("[/cmCommon.js] [execFileUploadProdImg()] ==> [응답이 성공_02] [data.fileId]"+ data.fileId +"[data]"+ 
			data +"[textStats]"+ textStats +"[jqXHR]"+ jqXHR );
		  
			if(data.errCode) 
			{
				alert(data.errMessage);
			}
			else {
				if ("" == cmCommon.callAjaxCheck(data)) {	
					if(!this.userCbFunc.funcNm){
						$w.log("[/cmCommon.js] [execFileUploadProdImg()] ==> 파일업로드 오류(callback func 1)");
						return;
					}  
				}  
				//dma_requestData.set("imgFileId", data.fileId);		// 필드ID(이미지파일ID) 받아서 조회 조건 dataMap에 넣기 @@@
				//$w.log("[/cmCommon.js] [execFileUploadProdImg()] ==> [응답이 성공_72] [dma_requestData_fileId]"+ dma_requestData.get("imgFileId") ); 
			}
		},
		error : function(error) {		// ajax에서 에러가 나면 얼럿창으로 에러 메시지 출력
			alert('[/cmCommon.js] [execFileUploadProdImg()] ==> 파입업로드를 실행할 수 없습니다.');
		}		 
	});
};

- /CmFileController.java 파일에서
/**
 * 상품 이미지 업로드 
 * @throws Exception
 */
@RequestMapping("/cm/saveProdImg.do") 
public ModelAndView saveProdImg(@RequestParam("fileCode") String fileCode, @RequestParam("fileType") String fileType,
		@RequestParam("programId") String programId, @RequestParam("attachFiles") List<MultipartFile> attachFiles,
		@RequestParam("stylCd") String stylCd, @RequestParam("colrCd") String colrCd, @RequestParam("brndCd") 
		String brndCd,@RequestParam("yyCd") String yyCd,    
		@RequestParam("dwnldImgKd") String dwnldImgKd,    
		HttpServletRequest request) throws Exception {
   
	fileCode ="prodImg";
	fileType = "image";
	JSONObject obj = new JSONObject(); 
 
	//1. 이미지 업로드(상품 이미지  업로드)
	List<Map<String, Object>> fileList = uploadFileUtil.uploadProdImg(stylCd, colrCd, brndCd, yyCd, dwnldImgKd, attachFiles, fileCode, fileType, false);

	//3. 세션 정보 매핑 처리
	for(Map<String, Object> param : fileList) {
		sessionUtil.setSessionInfoParameterNoAdaptor(param, request, programId);
	}

	//4. 파일 업로드 정보 저장
	int fileId = service.saveCmFileInfo(fileList);
	
	//5. 업로드 정보 > JSON
	obj.put("fileId", fileId);   
	
	return new ModelAndView("responseJsonView", "body", obj.toString());  // 필드ID(이미지파일ID) json 으로 보내기 @@@
}	 
==============================================================================================================

- 파일 업로드 용량 제한(최대 10M)
- /fileUpload.properties
# mms파일 허용 사이즈(KB)
common.mms.size = 10240
---------------------------------------------------------------------------------------------------

- /UploadFileUtil.java 파일에서
/**
* 첨부파일 사이즈 체크(FILE)
* 
* @param mFile
* @param allowFileSize
* @return
* @throws Exception
*/
public boolean chkAttachFileSize(MultipartFile mFile, int allowFileSize) throws Exception {
	
	//  if(size > limit *1024 * 1024){  //1mb
	if(mFile.getSize() > allowFileSize * 1024) {
		logger.error("허용된 파일사이즈를 초과하였습니다.");
		return false;
	}
	
	return true;
} 
==============================================================================================================

- /EI_ExpoBLRgst_P03.xml

/filaopt/eshopImg/bigImg/2013/K3BEV608_BK.JPG
/filaopt/eshopImg/optImgb1/2013/K3BEV608_BK.JPG
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.07.06(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 21:00  ==> POS 로그인 안되어서 정동국 부장에게 짜증냄

- 휠라 코리아 차세대 통합ERP Prj[★]
- 상품이미지 목록 조회(/CM_ProdImgListInqy.xml) 개발  ==>  
==============================================================================================================

- 인증관련 회의(19:00 ~ 19:30)
1. 장기, 인증 --> 웹DB 적용
2. SSO --> SCM에 적용
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2016.07.07(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 21:00  ==> 

- 휠라 코리아 차세대 통합ERP Prj[★]
- 상품이미지 목록 조회(/CM_ProdImgListInqy_P01.xml) 개발  ==> 
1. 상품 이미지 업로드 처리
2. 상품 이미지 업로드 저장(등록, 삭제)
==============================================================================================================
 
- 이클립스 실행 에러
1. 현상:
Error reading file C:\Users\TAMA\.m2\repository\oracle\ojdbc6\11.2.0.4\ojdbc6-11.2.0.4.jar
C:\Users\TAMA\.m2\repository\oracle\ojdbc6\11.2.0.4\ojdbc6-11.2.0.4.jar (지정된 파일을 찾을 수 없습니다) 
2. 원인: maven 파일 다운로드가 잘못 되었음
3. 조치: maven istall 다시 할 것
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2016.07.08(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 21:00  ==> 

- 휠라 코리아 차세대 통합ERP Prj[★]
- 상품이미지 다운로드 조회(/CM_ProdImgDwnldInqy.xml) 개발  ==>  
==============================================================================================================
  
- FILE_ID: 1023
http://172.16.41.114:10090/upload/file/201607189/file_20160707085922908.JPG
http://172.16.41.114:10090/upload/file/201607189/F1CDY0011_SIL_l01.JPG
==============================================================================================================
 
 ,NVL((
        SELECT TO_CHAR(M.INPUT_DTTM, 'YYYY-MM-DD HH24:MI:SS') AS INPUT_DTTM
        FROM CM_FILE M -- 파일 TB   
            ,CM_STYL_IMG N -- 상품이미지 TB      
        WHERE 1 = 1
            AND M.BUKRS = N.BUKRS -- 법인코드 
            AND M.FILE_ID = N.IMG_FILE_ID -- 이미지파일ID  
            AND N.STYL_CD = A.STYL_CD -- 스타일코드  
            AND ROWNUM <= 1
            --ORDER BY N.IMG_KD_CD
         ), SYSDATE -30)  AS INPUT_DT -- 등록일자
==============================================================================================================

- 다운로드
cmCommon.viewFiles(dma_requestData.get("fileId"), "grp_fileList", "scwin.afterRemovingFile");
 
<xf:group class="dn" id="grp_fileList">
==============================================================================================================
 
	 <delete id="deleteUpProdImg" parameterType="HashMap">
	 <![CDATA[
    	DELETE /* kr.co.fila.cm.dao.CmProdImgListDAO.deleteUpProdImg - 상품이미지 업로드 목록 삭제(/CmProdImgList_sqlmap.xml) */  
    	CM_STYL_IMG
	   	WHERE 1=1
	 		AND BUKRS = 'F100'		  					-- 법인코드ID
	 		AND IMG_SQOR = #{imgSqor}	 			-- 이미지순번
	 		-- AND STYL_CD = #{stylCd}		   			-- 스타일코드
	 		-- AND CLR_CD = #{clrCd}  					-- 컬러코드
	 		AND IMG_KD_CD = #{imgKdCd}			-- 이미지구분코드   
		]]>
	</delete>  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.07.09(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==> 주말 근무 

- 주말
05:30 기상
06:10 출근
06:20 근무
12:00 중식(회 덮밥): 3명 먹음
12:20 근무
18:00 석식(오징어덮밥): 5명 먹음
21:00 종료
21:30 귀가
23:00 취침
==============================================================================================================

- 휠라 코리아 차세대 통합ERP Prj[★]
- 상품이미지 다운로드 조회(/CM_ProdImgDwnldInqy.xml) 개발  ==> 
1. 조회 쿼리 변경(세로 -> 가로 출력)
==============================================================================================================

1. 세로로 된 데이터를 가로로 출력하기(Oracle SQL 세로를 가로로 출력) 
--현재
select a.거래번호, b.거래물건 from 거래번호테이블 a, 거래물건테이블 b;

거래번호      거래물건
1                   핸드폰
1                   가방
1                   신발
2                   옷
3                   시계 
-- 위에 처럼 나타내지는 걸 밑에 처럼 변경하고싶어요~

거래번호       거래물건             거래물건            거래물건
1                   핸드폰                   가방                   신발
2                   옷    
3                   시계 
------------------------------------------------------------------------------------

WITH 거래번호테이블 AS
(
	SELECT 1 거래번호, '1번거래' 거래내용 FROM dual
	UNION ALL SELECT 2, '2번거래' FROM dual
	UNION ALL SELECT 3, '3번거래' FROM dual
)
, 거래물건테이블 AS
(
	SELECT 1 거래번호, 1 물건순번, '핸드폰' 거래물건 FROM dual
	UNION ALL SELECT 1, 2, '가방' FROM dual
	UNION ALL SELECT 1, 3, '신발' FROM dual
	UNION ALL SELECT 2, 1, '옷'   FROM dual
	UNION ALL SELECT 3, 1, '시계' FROM dual
)
SELECT a.거래번호
     , MIN(DECODE(b.물건순번, 1, 거래물건)) 거래물건1
     , MIN(DECODE(b.물건순번, 2, 거래물건)) 거래물건2
     , MIN(DECODE(b.물건순번, 3, 거래물건)) 거래물건3
  FROM 거래번호테이블 a
     , 거래물건테이블 b
 WHERE a.거래번호 = b.거래번호
 GROUP BY a.거래번호
 ORDER BY a.거래번호
;
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.07.10(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==>   

▦ 조기축구
06:00 기상 
06:10 자전거(문영APT -> 대림운동장)
06:20 대림운동장
06:50 출발(재식이 차 얻어 탐)
08:00 게임(만남FC) ==> 3게임 뜀(선방함: 2승 2무 2패)
11:20 종료
12:00 편의점(간단하게 맥주 먹음)
12:10 상배 형님 차(길을 몰라서 시간 많이 걸림)
13:00 중식(문래동 삼계탕집)
15:30 종료
15:40 귀가
22:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.07.11(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 21:00  ==> 유로2016 결승(04시, 프랑스) ==> 포르투갈 1:0 프랑스(연장전, 포르투갈 우승)

- 휠라 코리아 차세대 통합ERP Prj[★]
- 상품이미지 다운로드 조회(/CM_ProdImgDwnldInqy.xml) 개발  ==>  
==============================================================================================================

- 윤차장이랑 싸움
1. 이진우 이사에게 보고 ==> 일정 스트레스 받아서 다른 일에 신경 못 쓴다고 함.
==============================================================================================================

/**
 * 날짜계산
 * @param s - 기준일자(8자리)
 * @param i - 가감할 값
 * @param delimiter - 리턴시 날짜 구분자
 * @return 계산된 날짜
 */
cmCommon.calcDate = {
}
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.07.12(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 20:40  ==> 장인 입원(13:30)

- 휠라 코리아 차세대 통합ERP Prj[★]
- 상품이미지 다운로드 조회(/CM_ProdImgDwnldInqy.xml) 개발  ==>  
1. DB 테이블 수정(윤정희 차장이 잘못 만듬) ==> CM_STYL_IMG_DWN_FL 테이블에 스타일코드, 색상코드 연도코드 추가

-- 02. 상품이미지다운로드 정보 조회  @@@@@@@@@@@@@  
SELECT  C1.*
FROM CM_STYL_IMG_DWN C1 -- 상품이미지다운로드 TB      
ORDER BY DWN_SQOR DESC, INPUT_DTTM DESC
; 

-- 02. 상품이미지다운로드 파일 정보 조회  @@@@@@@@@@@@@  ==> 스타일코드, 색상코드 연도코드 추가
SELECT  C1.*
FROM CM_STYL_IMG_DWN_FL C1 -- 상품이미지다운로드파일 TB            
ORDER BY DWN_SQOR DESC, INPUT_DTTM, IMG_KD_CD
 ;   
==============================================================================================================

SELECT A.*
FROM PN_STYL A -- 스타일 TB
WHERE 1 = 1
	AND A. UPDT_ID IS NULL
	AND A. PBRND_CD IS NOT NULL
	AND ROWNUM <= 200
	AND  A.INPUT_ID = 'TEST_TAMA'      -- 사용자ID
;   
------------------------------------------------------------------
 
-- 01.  스타일 TB 수정 @@@ 
UPDATE  PN_STYL A 
    SET A.INPUT_ID = 'TEST_TAMA'      -- 사용자ID
WHERE 1 = 1
	AND A. INPUT_ID IS NULL
	AND A. PBRND_CD IS NOT NULL
	AND ROWNUM <= 200
;  
==============================================================================================================

- 쌀 구입
1. [쎈딜]2015년 햅쌀 아침뜰애 20kg / 당일도정 / 국내산햅쌀, 가격: 31,800원 ==> 인터파크
http://www.interpark.com/product/MallDisplay.do?_method=detail&sc.shopNo=0000100000&firpg=01&sc.prdNo=3884271656&sc.dispNo=016001&sc.dispNo=016001
==============================================================================================================

- 눈높이 펜 구입
1. 대교 정용숙 선생님에게 구입, 가격: 64,000원 
==============================================================================================================

- 맞춤형 보육(종일반 변경)
1. 다문화 가족으로 신청 ==> 기본증명서 또는 외국인등록증을 제출
http://www.goodchildcare.kr/overview/index/submitdocu
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.07.13(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 12:00  ==> 장인 수술(13:30)

- 휠라 코리아 차세대 통합ERP Prj[★]
- 상품이미지 다운로드 조회(/CM_ProdImgDwnldInqy.xml) 개발  ==>  
==============================================================================================================

- 뒷통수 사마귀 약 바름
1. 곽현준 차장이 약 빌려 줌
==============================================================================================================

- 장인수술 일정
1. 고괄절 수술(인공 관절 삽입 수술)
 1) 명지 성모 병원 예약(정형외과) 노동근 선생님 
3. 병명: 대퇴골두 무혈성 괴사 
4. 수술명: 인공관절 치환술 
5. 병원비: 총 300만원(양쪽) ==> 통합 병동 입원으로 하루에 만원 더 나올 것으로 예상됨.
6, 장인수술 일정
 1) 7월 12일(화) 오후 입원(323호 입원)
 2) 7월 13일(수) 오후 수술
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.07.14(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 21:00  ==>  

- 휠라 코리아 차세대 통합ERP Prj[★]
- 상품이미지 다운로드 조회(/CM_ProdImgDwnldInqy.xml) 개발  ==> 완료 @@
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.07.15(금) 작업 ■■■■■■■■■■■■■■■■■■ \
---> 06:30  ~ 21:00  ==> 개발 서버 다운(LG CNS AA가 저녁에 와서 점검)

- 휠라 코리아 차세대 통합ERP Prj[★]
- 사용자관리(/CM_UsrMngm.xml) 수정  ==> 완료 @@@
1. 부서/매장/협력업체 조회 팝업(/CM_DeptShopVndr_P.xml) 파일 생성 
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2016.07.16(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00  ==> 주말 근무

- 주말
06:00 기상
07:00 출근(비 옴)
07:10 근무
13:00 중식(회 덮밥(특), 만원, 어촌식당): 청구할 것
13:10 근무
20:00 종료
20:20 석식(짬짜면), 6,500원, 임광루): 청구할 것
21:00 명지성모 병원(장인 입원실(323호) 방문)
21:20 대림역 마중(루옌, 수종 아는 언니 돌잔치 갔다 옴)
21:30 귀가(장화 깔창 때문에 발바닥 아픔)
23:00 취침
==============================================================================================================

- 휠라 코리아 차세대 통합ERP Prj[★] 
- 매장&협력사 사용자관리(/CM_UsrMngmShopVndr.xml) 수정
1. 사용자 권한 처리
CM_AUTH_GRP_USR    B1		-- 권한그룹별 사용자 TB
CM_AUTH_GRP_MENU  B2		-- 권한그룹별메뉴TB 

CM_AUTH_USR_MENU		-- 사용자별 추가 권한 TB
--------------------------------------------------------------------

-- 사용자별 추가 권한 정보  @@@@ ===> 버튼 처리 @@@
SELECT  A.USR_ID AS 사용자ID, A.*
FROM CM_AUTH_USR_MENU A  -- 사용자별 추가 권한 TB
WHERE 1 = 1
    AND A.BUKRS  = 'F100'    -- 법인코드 
     AND A.USR_ID = 'TEST72'  -- 
    --AND A.PG_ID = 'SM_VoucSleInput'    -- 프로그램ID
    --AND A.PG_NM LIKE '%사용자관리%'  -- 메뉴명[★★★] 
ORDER BY A.INPUT_DTTM DESC
;  

-- 사용자별 추가 권한 정보  삭제  @@@@@@@@@@@@@  
 DELETE FROM CM_AUTH_USR_MENU A /* 사용자 */
WHERE 1 = 1
    AND A.BUKRS  = 'F100'    -- 법인코드 
     AND A.USR_ID = 'TEST72'  
;  
==============================================================================================================
   
SELECT /* kr.co.fila.cm.dao.CommUDCDao.selectUsrMngmList - 부서목록 조회(/CommUDC_sqlmap.xml) */    
       DEPT_CD            AS DEPT_CD
     , DEPT_NM_1          AS DEPT_NM
     , DEPT_LV            AS DEPT_LV
FROM CM_DEPT_H    /* 부서이력 */
WHERE 1=1
	AND BUKRS =  'F100' /**P*/    /* ARG : 법인코드 */
	AND APLT_STRT_DD     <=  TO_CHAR(SYSDATE,'YYYYMMDD')
	AND APLT_END_DD      >=  TO_CHAR(SYSDATE,'YYYYMMDD') 
	AND ( REGEXP_LIKE(DEPT_CD,  '11011' /**P*/, 'ix')
	OR REGEXP_LIKE(DEPT_NM_1,  '11011' /**P*/, 'ix') 
	) 
ORDER BY DEPT_CD
, DEPT_LV
; 
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.07.17(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==>   

▦ 조기축구
06:30 기상 
06:50 대림운동장(비 올 것 같아 걸어서 감)
06:50 출발(동주 형님 차 얻어 탐)
07:20 영신초교 도착
08:00 게임(신길1동 신길FC] 생맥주 서비스]) ==> 4게임 뜀(신광FC 11시쯤에 도착)
12:00 종료
12:20 편의점(간단하게 맥주 먹음)
12:10 상배 형님 차(길을 몰라서 시간 많이 걸림)
13:00 중식(삼겹살, 서울식당) --> 조기회에서 쏨
14:30 종료
14:50 당구(동주 형님하고 한 편 먹고 꼴찌 함)
16:00 호프집(노다지, 여사장) --> 다음주에 호프집 같이 계산할 것
16:40 귀가(루옌 술 먹고 늦게와서 삐져서 장인 병원으로 감)
17:20 낮잠
20:20 루옌 귀가
22:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.07.18(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:40 ~ 21:00  ==> 석식(탕짜면: 만 6천원, 임광루, 곽차장): 청구할 것 

- 휠라 코리아 차세대 통합ERP Prj[★]
- 매장&협력사 사용자관리(/CM_UsrMngmShopVndr.xml) 수정
1. 매장 로그인 테스트 ==> TEST72, 진태만72 -->11011, 11011TEST72, 1111
2. 권한그룹별 사용자관리(/CM_AuthGrpMngm.xml) 수정 ==> 사용자 조회 수정(부서/매장/협력사 사용자 조회 추가)
 1) 본사/매장/협력업체 사용자 팝업(/UDC_COMM_USRDeptShopVndr_P.xml) 파일 생성
==============================================================================================================

- 인증 처리
1. 로그인(본사) ==> SSO 인증 처리
2. 장기 단기 인증(매장, 협력 업체)
 1) 장기인증 ==> local storage  사용[참고: 레지스트리 등록(웹DB 또는 ActiveX사용)]
 2) 단기인증 ==> 휴대폰 
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.07.19(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 21:00  ==> 석식(삼겹살): 조대표님이 쏨  

- 휠라 코리아 차세대 통합ERP Prj[★]
- 매장&협력사 사용자관리(/CM_UsrMngmShopVndr.xml) 수정
1. 매장 로그인 테스트 ==> TEST72, 진태만72 -->11011, 11011TEST72, 1111 
==============================================================================================================

- 파일 업로드 수정
1. 원본 파일명 = 서버 파일명
2. 원본 파일명이 서버에 존재하면 삭제 후 등록
3. 서버 경로 ==> http://localhost:8081/image/2013/FILA/F1CDV0171_BUB/F1CDY0001_NAV_01.JPG
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.07.20(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 21:00  ==>

- 휠라 코리아 차세대 통합ERP Prj[★]
- 매장&협력사 사용자관리(/CM_UsrMngmShopVndr.xml) 수정  ==> 완료 @@@
1. 매장 로그인 테스트 ==> TEST72, 진태만72 -->11011, 11011TEST72, 1111 
==============================================================================================================

-- 접수번호 생성 조회 @@@@@@@@@@@@@   ===> 수정 
--SELECT (SUBSTR(CR_ILSI,1,4) '-'  SUBSTR(CR_ILSI,5,2) '-%') CR_ILSI_LIKE 
SELECT NVL(MAX( TO_NUMBER( SUBSTR(ACCEPT_NO,9)) )+1 ,'000001')  --접수번호 6자리로 세팅(기존 4자리) 
FROM DEPO_WF_MASTER           
WHERE UPMU_GB  = '05'   --업무구분(05:금융정보제공) 
   AND MAP_CD IN ('15', '30')    --맵ID(15:센타, 20:영업점자료요청, 30:명의통보, 40:영업점, 50:통보비용) 
   --AND ACCEPT_NO LIKE '2008-10-%'     --접수번호(2008-10-0001)  
   AND ACCEPT_NO LIKE ( SELECT SUBSTR(CR_ILSI,1,4) '-' SUBSTR(CR_ILSI,5,2) '-%' 
            FROM DEPO_WF_MASTER   
  WHERE WF_NO = 'E9E4F00C9B4611DDA66F0003BA29841F'  
  )       
;  
----------------------------------------------------------------------------------------------------------

SELECT /* kr.co.fila.cm.dao.UsrMngmDAO.getStfId - 매장로그인ID 조회[매장/협력사 사용자관리] (/UsrMngm_sqlmap.xml) */   
	( CASE 
	    WHEN COUNT(A.USR_ID) < 10
		THEN SUBSTR( '0' || TO_CHAR( NVL(COUNT(A.USR_ID), 0) +1), 0, 2)
	    WHEN  COUNT(A.USR_ID) < 100
		THEN SUBSTR(TO_CHAR( NVL(COUNT(A.USR_ID), 0) +1), 0, 3) 
	    END
	) AS STFF_ID 
FROM CM_USR A     -- 사용자 TB 
WHERE 1=1   
;  
==============================================================================================================

- 핸드폰 고장(다운로드 중...)
1. 다운로드 모드진입을 했을때에는 강제 재부팅을 하면 됨
 ==> 삼성 갤럭시 시리즈중 일체형 시리즈는 불륨▼ + 전원 을 약 11초간 눌러주시면 강재로 재부팅 됨
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.07.21(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 21:00  ==> 석식(쟁반짜장: 만 6천원, 곽차장, 주래등): 청구할 것 

- 휠라 코리아 차세대 통합ERP Prj[★] 
- 개인정보 변경 팝업 화면(/CM_IndiInfrChng_P.xml) 수정 ==> 완료 @@@
1. mybatis 디버깅 샘플 쿼리
<select id="selectIndiInfList" parameterType="HashMap" resultType="HashMap"> 
	<![CDATA[
		SELECT * 	/* kr.co.fila.cm.dao.UsrMngmDAO.selectIndiInfList - 개인정보 리스트 조회(/UsrMngm_sqlmap.xml) */
		FROM DUAL	 
	]]> 
</select>
==============================================================================================================

- 메뉴 등록 @@@
1. 프로그램관리(/CM_PgMngm.xml.xml) 
2. 메뉴관리(/CM_MenuMngm.xml) 
3. 권한그룹별 프로그램권한(/CM_AuthGrpPgAuth.xml) 
 1) 새로 생성된 메뉴에 대해 권한(조회, 저장, 특수) 부여
------------------------------------------------------------------------------------------------

-- 본사 사용자 권한 처리 @@@ 
01. 권한그룹관리(/CM_AuthGrpMngm.xml) ==> 추가: 사용자 조회(팝업), 권한그룹 선택 --> 저장 
  ==> CM_AUTH_GRP_USR(권한그룹별사용자 TB)에 저장됨.
02. 사용자프로그램권한(/CM_UsrPgAuth.xml) ==> 사용자에 대한 권한 부여
---------------------------------------------------------------------------------

-- 매장, 업체 사용자 권한 처리 @@@ 
01. 권한그룹관리(/CM_AuthGrpMngm.xml)에서 매장(대표) 점주 권한 부여 ==> 추가: 사용자 조회(팝업), 권한그룹 선택 --> 저장 
  ==> CM_AUTH_GRP_USR - 권한그룹별사용자 TB에 저장됨.
02. 매장&협력사 사용자관리(/CM_UsrMngmShopVndr.xml)에서 매장(대표) 점주가 부여 받은 권한[CM_AUTH_GRP_USR]으로
하위 사원들에게 사용자별 추가 권한을 부여(CM_AUTH_USR_MENU: 사용자별 추가 권한 TB)
==============================================================================================================
 
- SCM 로컬 서버 빌드 에러
1. 현상: - SCM 로컬 서버 빌드가 안됨
2. 조치: sp에 있는 dao, service 파일 삭제하면 SCM 로컬 서버 정상으로 돌아옴
 ==> POS 서버가 빌드 안됨
3. 조치2: SCM 이클립스 오류 해결 방법 공지
 1) SCM 선택 후 더블클릭 > Open launch configuration> Argument 탭 클릭 시, 나오는 화면에서 VM arguments 
 안의 내용을 일부 수정 
 2) 이전: -Xmx512m -Xms512m -XX:PermSize=256m -XX:MaxPermSize=256 -XX:NewSize=128m
==> 조치 후: -Xms1024m -Xmx1024m -XX:PermSize=256m -XX:MaxPermSize=256m -Xss2m 
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.07.22(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 21:00  ==>

- 휠라 코리아 차세대 통합ERP Prj[★] 
- 매장&협력사 사용자관리(/CM_UsrMngmShopVndr.xml) 수정
1. 본사용 개발 ==> 완료
==============================================================================================================

- eclpse에서 DB 로그 보기 @@@
<!-- log4sql SQL BINDING 로그를 위한 설정(PC에서만 사용)  -->
<bean id="dataSource" class="org.apache.commons.dbcp.BasicDataSource" destroy-method="close">
    <property name="driverClassName" value="core.log.jdbc.driver.OracleDriver"/>
    <property name="url" value="jdbc:oracle:thin:@172.16.41.114:1521:erpdev"/>
    <property name="username" value="scmadm"/>
    <property name="password" value="!dlatl00"/>
</bean> 
 
<beans profile="dev,prod">
    <jee:jndi-lookup id="dataSource" jndi-name="java:/SCM-DS" resource-ref="true" />
</beans>
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.07.23(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:40 ~ 21:00  ==> 주말 근무

- 주말
05:40 기상
06:10 출근
06:40 근무
11:00 윤정희 차장 출근했다고 12시에 퇴근
13:00 중식(회 덮밥(특), 만원, 어촌식당): 청구할 것
12:20 근무
14:00 이재현 과장 출근
20:00 퇴근
20:20 중식(오징어 덮밥, 만 2원(이재현 과장), 어촌식당): 청구할 것
21:00 명지성모 병원(장인 입원실(323호) 방문) 
21:30 귀가
23:00 취침
23:00 취침
==============================================================================================================

- 휠라 코리아 차세대 통합ERP Prj[★] 
- 매장&협력사 사용자관리(/CM_UsrMngmShopVndr.xml) 수정
1. 테스트 ==> 멀
 1) Grid row 변경 이벤트시 직원구분코드(sbx_stffKd) Select Box 변경 안됨. 
/CM_UsrMngmShopVndr.xml 파일에서
/**
 * Grid row 변경 이벤트
 */
scwin.grd_usrMngmShopVndrList_onrowindexchange = function(row,oldRow) {
	var p_stffKd = "";
	
	if(grd_usrMngmShopVndrList.getTotalRow() > 0){  
		dma_requestData.set("usrId", dlt_usrMngmShopVndrList.getCellData(row, "usrId")); //사용자ID
		dma_requestData.set("usrKd", dlt_usrMngmShopVndrList.getCellData(row, "usrKd")); //사용자구분코드  
		dma_requestData.set("shopCd", dlt_usrMngmShopVndrList.getCellData(row, "shopCd")); //매장코드 
		dma_requestData.set("vndrCd", dlt_usrMngmShopVndrList.getCellData(row, "vndrCd")); //업체코드 
	 
		if( dlt_usrMngmShopVndrList.getCellData(row, "usrKd") == "03") {   // 사용자구분이 '협력업체' 이면
			p_stffKd = dlt_usrMngmShopVndrList.getCellData(row, "stffKd");
			sbx_stffKd.setItemSet( "data:dlt_vndrCdStffKd_grd", "codeNm", "code" );	// 협력사원구분 
			sbx_stffKd.refreshItemset();  
			sbx_stffKd.setValue(p_stffKd);	// 직원구분코드 Select Box  셋팅  
		}  
		else
		{
			p_stffKd = dlt_usrMngmShopVndrList.getCellData(row, "stffKd"); 
			sbx_stffKd.setItemSet( "data:dlt_shopStffKd_grd", "codeNm", "code" );	// 매장직원구 
			sbx_stffKd.refreshItemset(); 
			sbx_stffKd.setValue(p_stffKd);	// 직원구분코드 Select Box  셋팅 	// 직원구분코드 Select Box  셋팅  
		}   
		cmCommon.searchExecuteSbm("sbm_getUsePgList", true );   // 사용 프로그램 리스트 조회
		
		grd_usrMngmShopVndrList.setCellChecked( row , "chk" , true );   //  Grid row 체크 처리
	} 
};  
==============================================================================================================

- 결함목록_처리결과 [2406] 처리
1. 촬영이미지구분코드 멀티콤보 UDC --> 멀티콤보는 드롭다운 리스트 키인 기능이 없음
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.07.24(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==>   

▦ 조기축구
07:00 기상(수종 깨서 PC로 유투브 동영상 봄) 
07:30 자전거(문영APT -> 대림운동장)
07:40 대림운동장(도신과 게임하고 있음)
07:50 출발(상배 형님 차 얻어 탐)
08:00 장훈고 도착
08:30 게임(신광 FC) ==> 2게임 뜀
	--> 당구비 내기 비용 김동주 형에게 전달(저번주 꼴찌해서 맥주 싼 비용 반반씩 부담)
12:00 종료(비 약간 옴)
13:00 중식(갈비탕, 갈비예찬[대림사거리) --> 조기회에서 쏨
13:30 종료
13:50 뼈해장, 3그릇: 양평해장국: 테이크아웃
14:10 수박, 바나나(남구로 시장)
14:20 귀가 
15:00 낮잠 
17:30 루옌 귀가
18:30 산책(루옌, 수종)
19:30 석식
23:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.07.25(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 21:00  ==>

- 휠라 코리아 차세대 통합ERP Prj[★]
- 결함목록_처리결과 [2406] 처리
1. DEFC-0000002878 처리 ==> 수정 처리 완료 @@@
==> 1. 전체 선택 후 다운로드 시 있는 이미지만 다운로드 받아져야 함. 
	2. 캡쳐 화면은 IE 화면임. 똑같은 조건에서 다운로드 시 파이어폭스에서 해당 alert 안 나옴 
==============================================================================================================

- 결함목록_처리결과 [2406] 처리
1.  DEFC-000000287 처리 ==> 수정 처리 완료 @@@
==> 1. 그리드의 작은 이미지에 포커싱 시 큰 이미지가 짤리는것 같음.
==============================================================================================================

- 결함목록_처리결과 [0000002872] 처리
1. DEFC-0000002872 처리 ==> 수정 처리 완료 @@@
==> 1. 그리드의 꼬마 이미지에서 포커핑 빠졌을때 큰 이미지가 없어져야 함.
현재 포커싱이 빠져도 이미지는 계속 남아 있음. 
==============================================================================================================

- 실제 이미지 URL
http://172.16.41.114:10090/image/2012/FILA/F1CDU0202_PYL/F1CDY0001_NAV_01.JPG 
http://172.16.41.114:10090/image/2012/FILA/F1CDU0202_PYL/F1CDY0001_NAV_06.JPG 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.07.26(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 20:40  ==> 장모님 방문(14시), 수종방에 침대 도착

- 휠라 코리아 차세대 통합ERP Prj[★]
- 매장사용자 단기인증 팝업(/CM_UsrStermCert_P01.xml) 개발 
==============================================================================================================

 - 인증 처리
1. 로그인(본사) ==> SSO 인증 처리
2. 장기 단기 인증(매장, 협력 업체)
 1) 장기인증 ==> local storage 사용 --> 장기인증문자: 사용자ID + 사용자IP + 처리일자(YYYYMMDD)
 2) 단기인증 ==> 휴대폰 
==============================================================================================================

- input type="file"에서 찾아보기 버튼 바꾸기(파일 업로드)
1. https://blog.outsider.ne.kr/159
2. http://phpschool.com/gnuboard4/bbs/board.php?bo_table=tipntech&wr_id=65738&page=1
3. http://lemonweb.tistory.com/24
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.07.27(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 21:00  ==> 진관사(삼천사 계곡, 불광역) 방문 검토, 중복(삼계탕: 국악원 식당)

- 휠라 코리아 차세대 통합ERP Prj[★]
- 매장사용자 단기인증 팝업(/CM_UsrStermCert_P01.xml) 개발
==============================================================================================================

- 번호 채번(오라클 에서)
<select id="getSmsTmpCd" parameterType="HashMap" resultType="java.lang.String">
   <![CDATA[
   SELECT /* getSmsTmpCd 템플릿 번호 채번  김영준(kyj) 2016-06-07 */
          LPAD(NVL(MAX(SMS_TMP_CD),'00000')+1,'5','0') AS SMS_TMP_CD
     FROM CS_SMS_TMPLT
    WHERE BUKRS = #{GV_BUKRS}
   ]]>
</select>

<select id="getMtPr" parameterType="HashMap" resultType="Integer">
	<![CDATA[
		SELECT (NVL(MAX(MT_PR), 0) +1) AS MT_PR /* CmLginShopPotal_sqlmap.getMtPr AS MT_PR 조회[02. 매장] */
		FROM EMMAAPP.EM_SMT_TRAN
		
		select sq_sp_sms_01.nextval		as mt_pr
	  from dual
	]]>
</select> 
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2016.07.28(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 21:00  ==>  

- 휠라 코리아 차세대 통합ERP Prj[★]
- 매장사용자 단기인증 팝업(/CM_UsrStermCert_P01.xml) 개발 ==> 완료 @@@
- 매장사용자 장기인증/CM_UsrLtermCert.xml) 개발 ==> 완료 @@@
==============================================================================================================

세션 인증 실패:FAIL_CERT_SESSION1
==> FAIL_CERT_SESSION1("30601", "세션 인증 실패[T_01]"),  
==============================================================================================================

- 장기인증 로직
01. 장기인증관리 화면에서 등록  -->  장기인증상태코드를 [01]신규장기등록로 등록
02. 로그인 화면에서 localStorage를 사용하여  LTERM_CERT_STTS_MSG 등록  -->  장기인증문자 : 사용자ID
+ 사용자IP(120) + 처리일자(YYYYMMDD) :  최초 등록 후 변경 없음.

03. 장기인증관리 화면에서 추가  -->  장기인증상태코드를 [03]추가장기등록로 수정
04. 다른 PC 로그인 화면에서 localStorage를 사용하여  LTERM_CERT_STTS_MSG 등록  -->  장기인증문자 : 
사용자ID + 사용자IP(120) + 처리일자(YYYYMMDD) :  최초 등록 후 변경 없음. 
==============================================================================================================

- JSESSIONID 설정하는법(세션 충돌 해결 방법) ==> 로컬 ecllipse에서 세션 충돌 없어짐
http://fruitdev.tistory.com/124

1. /server.xml 파일에서
<Context docBase="FilaKoreaERP.SCMSystem" path="/"  reloadable="true" 
source="org.eclipse.jst.jee.server:FilaKoreaERP.SCMSystem" sessionCookieName="8081_JSESSIONID"/></Host>  
---------------------------------------------------------------------------------------------------

 - 세션 충돌 해결 방법 참조 
1. JVM OPTIONS
 -Dorg.apache.catalina.SESSION_COOKIE_NAME=8081_JSESSIONID  

2. context.xml
 <Context sessionCookieName="8081_JSESSIONID">

3. catalina.properties
 -Dorg.apache.catalina.SESSION_COOKIE_NAME=8081_JSESSIONID  
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2016.07.29(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 21:00  ==> 중식(탕볶밥): 김PM에 공통팀에 쏨(이재현, 곽현준)

- 휠라 코리아 차세대 통합ERP Prj[★]
- 로그인-본사(/CM_LoginHdof.xml) 수정 ==> 완료 @@@
1. 아이디 저장하기
==============================================================================================================

- 로그인-매장포탈(/CM_LginShopPotal.xml) 수정 ==> 완료 @@@
1. 아이디 저장하기
==============================================================================================================

- 로그인-협력업체(/CM_LoginVndr.xml) 수정 ==> 완료 @@@
1. 아이디 저장하기
==============================================================================================================

- JAVA 응답값 처리(/cmCommon.js에서)
/**
* 상품이미지 파일 업로드 
*/
cmCommon.execFileUploadProdImg = function(formId, callbackFuncNm){
	$.ajax({
		url: '/cm/saveProdImg.do', 	// URL 주소
		dataType: "json",
		type: 'POST',
		data: formData,		// 요청에 전달되는 프로퍼티를 가진 객체
		userCbFunc: {funcNm: callbackFuncNm},		// Call back 
		cache: false,
		contentType: false,
		processData: false,

		success : function (data, textStats, jqXHR) 	// 응답이 성공 상태 코드를 반환하면 호출되는 함수
		{
			//$w.log("[/cmCommon.js] [execFileUploadProdImg()] ==> [응답이 성공_02] [data.fileId]"+ 
			data.fileId +"[data]"+ data +"[textStats]"+ textStats +"[jqXHR]"+ jqXHR );

			if(data.errCode)
			{
				alert(data.errMessage);
			}
			else
			{
				if ("" == cmCommon.callAjaxCheck(data)) { // 조회 성공이
					var funcObj = eval(this.userCbFunc.funcNm);
					if(!this.userCbFunc.funcNm) {
						$w.log("[/cmCommon.js] [execFileUploadProdImg()] ==> 파일업로드 오류(callback func 1)");
						return;
					}

					funcObj(data.fileId);		// Call back  
				}
			}
		},
		error : function(error) {		// ajax에서 에러가 나면 얼럿창으로 에러 메시지 출력
			alert('[/cmCommon.js] [execFileUploadProdImg()] ==> 파입업로드를 실행할 수 없습니다.');
		}
	});
};
------------------------------------------------------------------------------------------------------------

cmCommon.getCodeNmInGrid = function(srchType, params, info, syncMode, callbackFunc) {

	userParams: {"callbackFunc":callbackFunc, "callbackKey":callbackKey},
}
==============================================================================================================

- 파일 Upload
<w2:upload id="upload1" style="position: relative;width: 250px;height: 23px;left:168px;top:122px;"
    imageStyle="position:absolute;vertical-align:middle;word-wrap:break-word"
    inputStyle="position:absolute;vertical-align:middle;word-wrap:break-word" type="image" disabled="">
</w2:upload>	<!--// 파일 업로드 모듈 //-->
---------------------------------------------------------------------------------------------------------

- 파일 Multiupload
<w2:multiupload id="frm_attFiles" maxcount="5" maxsize="" style="position: relative;width: 500px;height: 150px;left:73px;top:64px;" 
	action="" uploadButton="" filter="그림파일:*.jpg;*.gif;*.png" wmode="false" mode="flash"></w2:multiupload> 	
 <!--// 파일 업로드 모듈 //--> 
==============================================================================================================
 
- 결함목록_처리결과 [0000002872] 처리
1. DEFC-0000003274 처리 ==> 수정 처리 완료 @@@
1. 결함내역: 메뉴관리 화면에서 좌측, 우측 그리드에서 저장버튼을 누르면 이미지와 같은 팝업 뜸
2. 원인: 좌측 메뉴유형 Grid에 있는 필수코드(메뉴타입코드)를 입력하지 않고 우측 메뉴유형별
메뉴구성 Grid에서도 필수 코드(메뉴ID, 메뉴타입코드, 프로그램ID)를 저장해서 나는 에러 입니다.  
3. 조치: 좌측 메뉴유형 Grid에 있는 필수코드 입력 안하면 우측 메뉴유형별 메뉴구성이 저장 안되게 수정처리
, 우측 메뉴유형별 메뉴구성 Grid에서도 필수코드 체크하게 수정 했습니다.
==============================================================================================================

- 결함목록_처리결과 [0000002872] 처리
1. DEFC-0000003271 처리 ==> 윤차장에게 업무 이관 @@@
1. 결함내역: 프로그램관리 화면에서 시스템 구분이 아직 필수항목으로 별 표시 되어 있습니다.
2. 조치: 시스템구분에 필수항목으로 별 표시 제거 했습니다.
==============================================================================================================

- 결함목록_처리결과 [0000002872] 처리
1. DEFC-0000003268 처리 ==>  윤차장에게 업무 이관 @@@
1. 결함내역: 저장을 하려고하면 이미지와 같은 팝업창이 뜹니다. 
2. 원인: 특수버튼 ID-1~5이 DB 3자로 입력 제한되어 있는데 425자로 등록해서 DB 등록 에러가 났습니다.
3. 조치: 특수버튼 ID-1~5는 3자로 입력 제한으로 수정 처리 했습니다. 특수버튼 ID-1~5는 큰 의미가 없는
코드성 데이타로 추정됩니다.
==============================================================================================================
 
- 결함목록_처리결과 [0000002872] 처리
1. DEFC-0000003267 처리 ==> 윤차장에게 업무 이관 @@@
1. 결함내역: 특수버튼 ID-1~5, 특수버튼 명칭-1~5에 무제한으로 입력이 가능
2. 조치: 특수버튼 ID-1~5 는 3자, 특수버튼 명칭-1~5에 한글, 영문 20자로 입력 제한으로 수정 했습니다.
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.07.30(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:40 ~ 21:00  ==> 

- 주말
08:00 기상
08:50 조식(라면)
10:30 진료(서울가정의학과의원): 수종 감기
11:10 조제(래미안 나나 약국): 수종 감기
11:20 아이카(2층버스(풀백)) 구입: 다이소 대림점
11:30 장인 문병(명지성모병원)
11:40 조제(한독프라자약국): 수종 감기 
12:00 놀이터(구로): 수종 바지 젖었음
12:40 귀가(쿨매트 도착)
12:50 중식(짜장면(2그릇), 우동): 왕짜장, 테이크 아웃
13:00 낮잠
17:00 기상
17:30 놀이터
18:30 이마트 
20:00 석식(모둠 정식, 해물 순두부찌개: 루옌, 장모): 이마트 구로점
21:00 귀가
23:00 취침
==============================================================================================================

- 쿨매트 구입
1. 현대Hmall) 아놀드파마 블루마운틴 쿨매트 특대형 3종세트, 가격: 29,140원, 옥션
http://itempage3.auction.co.kr/DetailView.aspx?ItemNo=B321091331&frm3=V2
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.07.31(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==>   

▦ 조기축구
05:30 기상
05:50 자전거(문영APT -> 대림운동장)
06:00 대중이형 차 얻어 탐
07:20 여주 금사 근린 공원 도착[천연 잔디 구장]
08:00 게임(우주 FC, 여주팀) ==> 4게임 뜀 
12:30 중식(김치찌개: 해 먹음(맛이 없었음)) 
12:30 게임(우주 FC) ==> 2게임 더 함(마지막에 골기퍼, 힘들었음)
14:30 종료(소나기 옴)
14:40 정리
15:00 대중이형 차 얻어 탐(차에서 쥐가 나서 누워서 옴)
16:40 대림운동장 도착(양평해장국 휴가 감)
17:00 귀가
17:30 낮잠 
19:00 기상
19:30 석식
23:00 취침
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■