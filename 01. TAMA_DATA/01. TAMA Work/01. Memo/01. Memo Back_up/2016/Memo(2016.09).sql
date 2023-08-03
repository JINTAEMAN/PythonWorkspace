

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2016.09) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2016.09.01(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 21:00  ==> 

- 휠라 코리아 차세대 통합ERP Prj[★]
- 공통 브랜드 설정
1. select box브랜드 조회 수정
 1) 개인 브랜드를 디폴트로 설정
 2) 전체 브랜드 조회일때는 brndSelAllYn="Y" 로 설정
 --> 브랜드전체조회여부(brndSelAllYn): N:사용자 브랜드 조회(D), Y:전체 브랜드 조회)  
 ==> 통합 테스트 후에 개발서버에 반영할 것
 3) 업무구분(CM:공통, CS:고객, PN:기획, PO:구매, PP:생산, SA:영업, SB:수불, SM:영업관리, SP:매장포탈, SR:협력업체, EI:수출입, WM:물류)
==============================================================================================================

- 공통코드 조회 @@@
 SELECT CD        AS GRP_CD 
	     , DTL_CD    AS CODE 
	     , DTL_NM    AS CODE_NM
	     , SORT_ORD
	  FROM CM_CD_D
	 WHERE 1=1
	   AND ( BUKRS      =  'F100' /**P*/
		 OR BUKRS      = '0000'
		  )  
		   AND JOB_GBN    =  'PN' /**P*/             --업무구분 
	   AND CD         =  '001' /**P*/         --코드
	   AND USE_YN     = 'Y'
;
-----------------------------------------------------------------------------------

SELECT /* selectCommCdList - 공통코드 조회(/CommCode_sqlmap.xml) */ 
		       GRP_CD
		     , CODE
         
             , '['||CODE||']'||CODE_NM      AS CODE_NM
             
             
             , CODE_NM						AS ORG_CODE_NM
		  FROM (
				SELECT CD        AS GRP_CD
				 
					 , DTL_CD    AS CODE
					 
					 , DTL_NM    AS CODE_NM
					 , SORT_ORD
				  FROM CM_CD_D
				 WHERE 1=1
				   AND ( BUKRS	  =  'F100' /**P*/
				   	  OR BUKRS	  = '0000'
				   	   ) 
				 	 /* jobGbn이 *이 아니면(사유: jobGbn이 null인 것 존재)[처리일: 2016.06.09, by 진태만]  */
		           		AND JOB_GBN    =  'PN' /**P*/	 		--업무구분
		              
				    
				   AND CD         =  '300' /**P*/		 --코드
				   AND USE_YN     = 'Y'
				 
		       )
		 ORDER BY SORT_ORD
		        , CODE
;
==============================================================================================================

- select box 종류별 테스트 @@@@  ==> 수불마감금액조회(/SB_ClpyClsnAmtInqy.xml) 에서
<!--// 01. ih_select_commcd 브랜드 조회 UDC 처리: 사용자구분(grpCd): 001, 사용자구분(jobGbn): PN, 브랜드전체조회여부
(brndSelAllYn): N:사용자 브랜드 조회(D), Y:전체 브랜드 조회) //--> 
<w2:ih_select_commcd id="sbx_brndCd" grpCd="001" jobGbn="PN" brndSelAllYn="Y" displayType="1" 
	allOption="false" appearance="minimal" chooseOption="false" chooseOptionLabel="선택"
	direction="auto" disabled="false" disabledClass="w2selectbox_disabled" displayMode="label"  
	 optionOrder="false" ref="data:dma_requestData.brndCdSrch" style="width: 50px;" submenuSize="auto"
	syncYn="false" textAlign="center"> 
</w2:ih_select_commcd>

<!--// 02. ih_select_commcd_m 브랜드 조회 UDC 처리 //-->
<w2:ih_select_commcd_m id="sbx_brndCd" grpCd="001" jobGbn="PN"  visibleRowNum="5" displayType="1" chooseOption="false"
	style="width: 130px;height: 21px;" search="start" interactionMode="" displayMode="label" syncYn="false" useKeywordHighlight="false"
	editType="select" submenuSize="auto" ref="" chooseOptionLabel=""
	ev:onchange="">
</w2:ih_select_commcd_m>  
 
<!--// 03. ih_select_commcd_atc 브랜드 조회 UDC 처리(AutoComplete) //-->
 <w2:ih_select_commcd_atc id="sbx_brndCd" grpCd="001" jobGbn="PN" brndSelAllYn="N" appearance="minimal" allOption="false" 
 chooseOption="false" chooseOptionLabel=""  
	direction="auto" disabled="false" disabledClass="w2selectbox_disabled" 
	displayMode="label" displayType="1" mandatory="true"
	optionOrder="false" ref="data:dma_requestData.brndCdSrch" style="width:130px;" userData1="data" submenuSize="auto" 
	syncYn="2" ev:onchange="scwin.sbx_brndCd_onchange">
</w2:ih_select_commcd_atc> 

<!--// 01. ih_select_commBrnd 브랜드 조회 UDC 처리 //-->
<w2:ih_select_commBrnd id="sbx_brndCd" grpCd="001" jobGbn="PN" displayType="1" disabledClass="w2selectbox_disabled" appearance="minimal"
	style="width: 148px;height: 21px;" direction="auto" chooseOption="false" allOption="false" displayMode="label"
	optionOrder="false" disabled="false" submenuSize="auto">
</w2:ih_select_commBrnd>

<!--// 02. ih_select_commBrndd_m 브랜드 조회 UDC 처리 //-->
<w2:ih_select_commBrnd_m id="sbx_brndCd" grpCd="001" jobGbn="PN" brndSelAllYn="Y" displayType="1" 
disabledClass="w2selectbox_disabled" appearance="minimal"
	style="width: 148px;height: 21px;" direction="auto" chooseOption="false" allOption="false" displayMode="label"
	optionOrder="false" disabled="false" submenuSize="auto">
</w2:ih_select_commBrnd_m>

<!--// 03. ih_select_commBrndd_atc 브랜드 조회 UDC 처리 //-->
<w2:ih_select_commBrnd_atc id="sbx_brndCd" grpCd="001" jobGbn="PN" brndSelAllYn="Y" displayType="1" 
disabledClass="w2selectbox_disabled" appearance="minimal"
	style="width: 148px;height: 21px;" direction="auto" chooseOption="false" allOption="false" displayMode="label"
	optionOrder="false" disabled="false" submenuSize="auto">
</w2:ih_select_commBrnd_atc>
 ==============================================================================================================

[09/01] [수정 사항] 수정 처리했습니다. --> DEFC-0000003556   --> 개발 완료(보류) @@@@
1. 내용: 개인별 DEFAULT 브랜드를 설정하는 메뉴가 있으면 좋습니다 . 
2. 조치: 왼쪽 메뉴 위 개인정보 변경 화면에서 대표브랜드 필드를 추가해서 수정하게 했으며 로그인 후 세션에서
대표브랜드코드(RPRS_BRND_CD)를 만들었습니다. 확인;  
$w.log("[/quickmenu.xml] [RPRS_BRND_CD]"+ cmCommon.getSessionKey("RPRS_BRND_CD");		// 대표브랜드
==============================================================================================================
 
[09/01] [결함 사항] 수정 처리했습니다. --> DEFC-0000001766  --> 완료 @@@@
1. 내용: 세션이 없는 경우 버튼, 메뉴 클릭시 로그인 페이지로 이동  
==============================================================================================================

- SONA 교육
1. WAS단 결함 처리하라고 함.
http://172.16.41.114:23035/sonar/component_issues/index?id=kr.co.fila%3AFilaKoreaERP#resolved=false
==============================================================================================================

- 장인인증 방식
장기인증 후, 로그인 시에는
사용자의 브라우저가 IE 이면, 로컬스토리지 데이터만 확인해서 장기인증 문자열 비교하고,
사용자의 브라우저가 IE가 아니면, "로컬스토리지" 및 "HTML5 websql" 의 데이터를 모두 확인해서
1가지만 통과하면 장기인증 통과하는 것으로 수정합니다.
 ----------------------------------------------------------------------------------------------------

* HTML5 websql 처리 관련해서는 다음 URL참고 부탁드립니다.
http://m.mkexdev.net/61
http://www.sqler.com/396957
http://xguru.net/624
http://roqkffhwk.tistory.com/210
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.09.02(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 21:00  ==> 

- 휠라 코리아 차세대 통합ERP Prj[★]
- 권한그룹별 프로그램권한 일괄등록(/CM_AuthGrpPgAuthBtchInput.xml)   --> 개발
==============================================================================================================

- 평균단가 계산(/SB_ClpyAgvCostCalc.xml) 수정  ==> 완료 @@@
1. 이월수량, 이월금액 --> 전월수량, 전월금액
==============================================================================================================
 
- 수불 마감(/SB_ClpyClsn.xml) 수정 ==> 완료 @@@
1. 마지막 줄이 에러이면 에러 alert, 에러가 아니면 정상 마감 alert 처리
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.09.03(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 09:00 ~ 20:00 ==> 조기축구(06:00 ~ 08:00)

- 주말
06:00 기상
06:20 자전거(문영APT -> 대림운동장)
06:30 대림운동장
06:30 숏게임(날씨 시원해짐)
07:30 종료(영등포구 연합회에서 유아축구대회한다고 일찍 마침) 
08:10 귀가
08:10 조식(김치찌게, 김미자 식당): 회장님이 쏨
08:30 귀가
09:30 진료(서울가정의학과의원): 수종 감기
10:00 조제(래미안 나나 약국): 수종 감기
10:30 대림역 -> 종묘앞역(루옌, 수종)
11:20 장난감(경찰차): 승진완구 --> 수종 장난감보고 엄청 좋아 함
11:40 종묘 근처 벼룩시장 구경
13:00 중식(알밥+숫불고기): 육쌈냉면 창신점
15:00 귀가
15:30 낮잠
19:00 석식(짜장면2, 볶음밥: 만다린 ): 배달
23:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.09.04(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==> 

▦ 조기축구
07:00 기상
07:20 자전거(문영APT -> 양천운동장: A구장): 수종 같이 감
08:00 제 36회 영등포구청장배 시합 입장식
08:30 종료
09:00 조식(냉국): 물과 음식 없다고 회원들이 집행부 욕함.(족발, 포도 밖에 없었음)
09:00 수종이가 집에 가자고 해서 집에 수종이 데려다 줌
09:50 30대 시합(대림3동 1:1 신길 7동) --> 운 좋게 비김(신길 7동 41번 프로 선수 출신이라 잘 했음: 경수가 잘 막았음)
12:30 40대 시합(대림3동 0:0 신길 1동) --> 승부차기 4:3 승(골기퍼 형이 2골 막았음)
14:30 30대 시합(대림3동 4:2 대림 1동) --> 4강 진출
15:00 40대 시합(대림3동 4:0 대림 1동) --> 4강 진출
	==> 30대, 40대, 50대 동반 4강 진출
16:00 종료(자전거 최선 형 차에 실음)
17:00 다솜 식당(부대찌게) --> 회에서 쏨 ==> 남은 밥 얻어 옴
19:00 오징어 양푼이 무침(철희형 가게) --> 최선형이 쏨
20:30 종료
20:50 귀가
22:30 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.09.05(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 21:00  ==> 석식(탕짜면(2), 소주:임광루, 곽차장): 청구할 것, 수불 민형기 이사님 철수

- 휠라 코리아 차세대 통합ERP Prj[★]
- 상품이미지목록조회(/CM_ProdImgListInqy.xml) 수정  ==> 
1. Paging 처리
==============================================================================================================

- GV변수 변형 후 DB에 넣기
1. /CmProdImgListService.java 파일에서
public String saveCmFileInfoProd(List<Map<String, Object>> paramList) {
	 
	Map<String, Object> info = new HashMap<String, Object>();
	Map<String, Object> param = new HashMap<String, Object>();
 
	if(null != paramList && paramList.size() > 0)		// 상품이미지목록 dataList가 존재하면
	{ 
		for (int i = 0 ; i < paramList.size() ; i++) { 
			
			fileId = dao.selectCmFileId();
			sFileId = ""+ fileId;
		 
			if(fileId < 1) throw new ProcessException("첨부파일 아이디를 생성할 수 없습니다.");
			
			info = (Map<String, Object>) paramList.get(i); 
			
			if (i==0)  	// 이미지 업로드 시도 이면
			{
				fileIdArray =  sFileId;
			}
			else
			{
				fileIdArray = fileIdArray + ","+ fileId;		// 파일ID Array
			}
	 
			param.put("list", paramList);  
			
			param.put("burks", info.get("GV_BUKRS"));		// 법인코드	 ===> 수정 @@@
			param.put("fileId", fileId);			// 파일ID	
			param.put("fileSeq", "1");	 				// 파일일련번호
			param.put("filePhNm", info.get("filePhNm").toString().trim()); 		// 파일 경로
			param.put("strgFlNm", info.get("strgFlNm").toString().trim()); 		// 파일명
			param.put("orcpFlNm", info.get("orcpFlNm").toString().trim()); 		// 원본파일명 
			param.put("fileExtnNm", info.get("fileExtnNm").toString().trim()); 	// 파일 유형  
			param.put("fileSz", info.get("fileSz").toString().trim()); 		// 파일 사이즈 
			 
			param.put("usrId", info.get("GV_USR_ID"));		// 사용자ID		 ===> 수정 @@@
			param.put("programId", info.get("GV_PROGRAM_ID"));		// PROGRAM ID     ===> 수정 @@@
		 
	 		dao.insertCmFileProd(param);		// 상품 이미지 정보 입력(DB)   
			}
		}
	 
		return fileIdArray;		 // 파일ID Array
	}
}

2. /CmFile_sqlmap.xml 파일에서
<insert id="insertCmFileProd" parameterType="HashMap"> 
	<![CDATA[
		INSERT 	/* CmFile_sqlmap.insertCmFileProd AS 상품 이미지 첨부파일 저장 */
		  INTO CM_FILE
			   (
				  BUKRS
				, FILE_ID
				, FILE_SEQ
				, FILE_PH_NM
				, STRG_FL_NM
				, ORCP_FL_NM
				, FILE_EXTN_NM
				, FILE_SZ
				, INPUT_PG_ID
				, INPUT_ID
				, INPUT_DTTM
				, UPDT_PG_ID
				, UPDT_ID
				, UPDT_DTTM
			   )
		VALUES
			   (
				 #{burks}				-- 법인코드
				, #{fileId}				-- 파일ID
				, #{fileSeq}			-- 파일일련번호
				, #{filePhNm}
				, #{strgFlNm}
				, #{orcpFlNm}
				, #{fileExtnNm}
				, #{fileSz}
				, #{programId} 		 -- PROGRAM ID  
				, #{usrId}				-- 사용자ID
				, SYSDATE
				, #{programId}		 -- PROGRAM ID  
				, #{usrId}				 -- 사용자ID
				, SYSDATE
			   ) 
	]]>
</insert>
==============================================================================================================

1. /CmFileController.java 파일에서
/**
 * 상품 이미지 첨부파일 다운로드 
 */
@RequestMapping("/cm/filedownAllProdIgm.do")
public ModelAndView getFileDownLoadAllProdIm(@RequestParam("xmlValue") String xmlValue, HttpServletRequest request, SessionToken sessionToken) {
  
	paramMap.put("brndCd", sBrndCd); 	// 대분류(브랜드코드)
	paramMap.put("usrId", sUsrId); 		// 사용자ID
	paramMap.put("dwnKdIp", usrIP);		// 다운로드사용자IP
	paramMap.put("dwnCnt", list.size());	// 다운로드개수  
	sessionUtil.setSessionInfoParameterNoAdaptor(paramMap, request, programId);	// WebSquare Adaptor 안통하는 경우에 세션 매핑 처리 
  
	service2.saveCmFileProdIgm(paramMap);	// 01. 상품이미지 다운로드 정보 저장
}

2. /CmFile_sqlmap.xml 파일에서
<insert id="insertProdIgmDnInfo" parameterType="HashMap">
		<selectKey keyProperty="imgDwSqorSeq" resultType="String" order="BEFORE">
			SELECT NVL(MAX(DWN_SQOR), 0) +1 FROM CM_STYL_IMG_DWN  	-- 이미지순번
			WHERE 1=1  
		</selectKey>  
	<![CDATA[
		  INSERT /* CmProdImgList_sqlmap.insertProdIgmDnInfo AS 상품이미지 다운로드 정보 저장 */
		  INTO CM_STYL_IMG_DWN 
	           (  
	       		BUKRS            		-- 법인코드  
	           	, DWN_SQOR          -- 다운로드순번
	           	, BRND_CD    	 		-- 브랜드 코드 
	        	, IMG_KD_CNTN 		-- 이미지구분내용 
		  	 	, DWN_USR_ID 		-- 다운로드사용자ID 
		 		, DWN_USR_IP 		-- 다운로드사용자IP 
	  	 		, DWN_CNT 			-- 다운로드개수 

  			 	, INPUT_PG_ID 		 -- 등록프로그램 ID 
	        	, INPUT_ID        		--등록자ID 
	        	, INPUT_DTTM       --등록일시 
	        	, UPDT_PG_ID       --수정프로그램ID 
	        	, UPDT_ID          	--수정자ID 
	         	, UPDT_DTTM        --수정일시 
	           ) 
	   		VALUES 
	          (  
	          	#{GV_BUKRS}					 	-- 법인코드  
	        	, #{imgDwSqorSeq}   -- 다운로드순번
	        	, #{brndCd} 				-- 브랜드코드 
	         	 
	         	, #{imgKdCntn}	 		-- 이미지구분내용
	         	, #{usrId} 		 			-- 다운로드사용자ID
		    	, #{dwnKdIp}	 		 	-- 다운로드사용자IP
		    	, #{dwnCnt}	 		 	-- 다운로드개수 
	 
	      	  , #{GV_PROGRAM_ID} 	 --등록프로그램ID 
	          , #{GV_USR_ID} 			--등록자ID 
	          , SYSDATE 				 	--등록일시 
	          , #{GV_PROGRAM_ID} 	 --수정프로그램ID 
	          , #{GV_USR_ID} 			--수정자ID 
	          , SYSDATE 			 		--수정일시 
	          )   
	]]>
 </insert> 
==============================================================================================================

- 상품이미지 보기 파일 서버 경로 설정 --> /CmFileController.java 파일에서
String host = request.getServerName();
int port = request.getServerPort();
if(host.indexOf("http://")<0){
	host = "http://"+host;
}
String strDomain = host+":"+port;

//운영 SCM의 경우 이미지서버를 host로 설정
if(host.toString().indexOf("172.16.41.212")>-1 || host.toString().indexOf("172.16.41.108")>-1
|| host.toString().indexOf("172.16.41.109")>-1 ) {
	strDomain = propertiesUtil.getFileUploadInfo("image2.url").toString();
}
==============================================================================================================

- 파일 다운로드 수정
1. 파일 경로 변경 후 에러 발생
 1) 기존 경로: image/prodimg/
 2) 변경 후 경로: /image2/web/image/prodimg/
==============================================================================================================
 
- indexOf: 당 문자가 들어있는 위치 알려주는 함수
if(null != fullPath2 && !"".equals(fullPath2) && (fullPath2.indexOf("/prodimg") < 0)) {   
   // 상품이미지 경로가 존재하면  ==> 해당 문자가 들어있는 위치를 알려 줍니다.(문자가 없으면 -1 반환)
	 fullPath2 = (String)"/image2/web"+ fullPath2.toString(); 
}
==============================================================================================================

[09/05] [수정 사항] 수정 처리했습니다. --> DEFC-0000006154 --> 완료 @@@@
1. 내용: [수불마감] 실제로 정상처리 되었을때 메세지 알림 기능 추가
==============================================================================================================
 
[09/05] [수정 사항] 수정 처리했습니다. --> DEFC-0000006153 --> 완료 @@@@
1. 내용:  [평균단가 계산]이월수량을 전월수량으로 변경
==============================================================================================================
 
[09/05] [수정 사항] 수정 처리했습니다. --> DEFC-0000006156--> 완료 @@@@
1. 내용:  [평균단가 계산] 월 조건 추가, 스타일 코드 추가
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.09.06(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 21:00  ==> 곽차장 석면 Prj 때문에 조대표님과 1시간 면담 했다고 함.

- 휠라 코리아 차세대 통합ERP Prj[★]
- 권한그룹별 프로그램권한 일괄등록(/CM_AuthGrpPgAuthBtchInput.xml)   --> 완료 @@@
==============================================================================================================

- 권한그룹별 프로그램권한(/CM_AuthGrpPgAuth.xml)  --> 수정 
==============================================================================================================

- WebSquare 에러
1. 현상: :  /CM_ProdImgListInqy.xml 파일에서
07:39:31.048 00007 003585 websquare] WebSquare.BootLoader.globalEval: Error occurs during the execution.  
* message     : Invalid left-hand side in assignment

<<Internal JavaScript Source Block [/wqui/cm/CM_ProdImgListInqy.xml] Start>>
2. 원인:  sScmFileDomain = "http://222.231.17.69:80"로 처리해서 에러가 발생
if(cmCommon.isNull(sScmFileDomain) == false && sScmFileDomain = "http://222.231.17.69:80")
{		
	imgfileFullNm2 = sScmFileDomain + imgfileFullNm;
}
else
{
	imgfileFullNm2 = "http://172.16.41.114:10090"+ imgfileFullNm;
}
 
3. 조치:  sScmFileDomain == "http://222.231.17.69:80"로 수정 처리
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.09.07(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 21:00  ==> 석식(탕짜면(3), 소주(3): 임광루, 곽차장, 이과장): 청구할 것

- 휠라 코리아 차세대 통합ERP Prj[★]
- 권한그룹별 프로그램권한(/CM_AuthGrpPgAuth.xml)  --> 수정
1. 권한복사그룹 팝업(/CM_AuthCopyGrp_P01.xml) 파일 생성
==============================================================================================================

- Grid에서 데이타 저장 방법
1. grd_prodImgList, dma_requestData 저장(/CM_ProdImgListInqy_P01.xml)
cmCommon.commSaveGridsData("/cmProd/saveUpProdImg.do", [grd_prodImgList], true, 
	"scwin.sbm_saveUpProdImg_submitdone", "1", "", {"dma_requestData":dma_requestData.getJSON()});	
	// 11. 상품 이미지 업로드 저장(삭제) 

2. dma_authGrpPgAuthCond, dma_authGrpPgAuthCond 저장(/CM_AuthGrpPgAuth.xml) 
cmCommon.commSaveGridsData("/cmAuthGrpPg/saveAuthGrpMeueList.do", [grd_programAuthList], true, "scwin.sbm_saveAuthGrpMenuList_submitdone",
							"", "", {"dma_authGrpPgAuthCond":dma_authGrpPgAuthCond.getJSON()});  // 그룹저장 처리 
--> Grid 데이타 안 변해도 chk 박스 관계 없이  저장 

2. grd_prodImgList, dma_requestData 저장(/CM_ProdImgListInqy_P01.xml) 
cmCommon.commSaveGridsData("/cmAuthGrpPg/saveAuthCopyList.do", [grd_authGrpList], true, "scwin.sbm_saveAuthCopyList_submitdone", 
				"", ["chk"], {"dma_requestData":dma_requestData.getJSON()});	 // 권한복사[권한복사그룹 팝업]
--> Grid 데이타 안 변해도 chk 박스에 체크된 것만 저장 

2. grd_prodImgList, dma_requestData 저장(/CM_ProdImgListInqy_P01.xml) 
if(confirm(cmCommon.formattingMessage(FILAErpMessage.INF_0006, "저장"))){		 
			cmCommon.commSaveGridsData("/cmAuthGrpUsr/saveAuthGrpUsrNewList.do", [grd_authGrpUsrList], true, "scwin.saveAuthGrpUsrNewList",
			"", ["chk"], "");		// 권한그룹별 사용자 현황 저장
--> Grid 데이타 안 변해도 chk 박스에 체크된 것만 저장 
			}	

3. grd_menuList, grd_authGrpList 저장(/CM_AuthGrpPgAuthBtchInput.xml)
cmCommon.commSaveGridsData("/cmAuthGrpPg/saveReflAuthGrpList.do", [grd_menuList, grd_authGrpList], true, 
"scwin.sbm_saveReflAuthGrpList_submitdone", "", ["chk","chk"]); // 반영할 권한그룹 저장[권한그룹별 프로그램권한 일괄등록]
--> Grid 데이타 안 변해도 chk 박스에 체크된 것만 저장  
==============================================================================================================

- WebSquare 에러[2016.09.07(수)] @@@
1. 현상: :  /CM_AuthCopyGrp_P01.xml 파일에서
* message     : Unexpected identifier 
<<Internal JavaScript Source Block Start>>
[0001]
[0002]		 
[0003]		
 
2. 원인: scwin.btn_authCopy_onclick k로 처리해서 에러가 발생 ==> 
	   문법 에러--> unexpected identifier 에러가 뜨는데 해석하면 예상치 못한 식별자(identifier) 가 나왔다는 의미이다.
scwin.btn_authCopy_onclick k = function() {
}
 
3. 조치: scwin.btn_authCopy_onclick = function() 로 수정
==============================================================================================================

- WebSquare 에러[2016.09.07(수)] @@@
1. 현상: :  /CM_AuthCopyGrp_P01.xml 파일에서
 message     : Unexpected token {
<<Internal JavaScript Source Block Start>>	
 
2. 원인: sif(cmCommon.isNull(ibx_usrId.getValue()) { 로 처리해서 에러가 발생 ==> (로 없어서 { 에러 발생

3. 조치: if(cmCommon.isNull(ibx_usrId.getValue())) { 로 수정
==============================================================================================================
 
- 로그인-본사(/CM_LoginHdof.xml) 수정
1. 비밀번호 하드 코딩으로 자동 셋팅한 것 제거
==============================================================================================================

- 사용자 관리(/CM_UsrMngm.xml)에서 협력사 데이타 수정 안됨
1. 매장(업체) 사용자ID가 변경된 것만 수정하도록 매장(업체) 사용자ID 중복체크를 하도록 수정
if ("U" == grd_usrMngmList.getFocusedRowStatus()) { 	// 수정 이면
	if (sbx_usrKd.getValue() == "02" || sbx_usrKd.getValue() == "03") {   // 사용자구분이 '매장', '협력사' 이면 
		if(scwin.isShopVndrDplcChkYn == false){ 	// 매장/협력사 중복 체크 여부 
			var shopLoginIdOld = dma_requestData.get("shopLoginIdSrch");	// 검색-매장(업체) 사용자ID
		 
			if(ibx_shopLoginId.getValue() != shopLoginIdOld) { 	// 매장(업체)사용자ID가 변경 되었으면
				alert("[매장(업체)사용자ID] 매장(업체)사용자ID가 변경 되었습니다.\n중복체크를 진행하여 주시기 바랍니다."); 
				btn_joinInfoShopChk.focus();
				return; 
			}
		}
	}
}
==============================================================================================================

- 운영서버  ==> 이대홉씨와 같이 확인할 것
1. SCM 서버
http://srm.fila.co.kr/websquare/websquare.html?w2xPath=/wqui/cm/CM_LoginHdof.xml

2. POS 서버
http://tpos.fila.co.kr/websquare/websquare.html?w2xPath=/wqui/cm/CM_LginShopPotal.xml

3. SRM 서버
http://srm.fila.co.kr/websquare/websquare.html?w2xPath=/wqui/cm/CM_LoginVndrMbl.xml
==============================================================================================================

- 운영서버 터미널
1. 01. 운영 S[FilaK]  ==>  172.16.41.105, scmadm / !dlatl01
2) 상품 이미지 확인
[fkerpwas1(scmadm):/home/scmadm] cd /image2/web/image/prodimg  

2. 02. 개발 S[FilaK]  ==>  172.16.41.114, scmadm / !dlatl00
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.09.08(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 21:00  ==>  

- 휠라 코리아 차세대 통합ERP Prj[★]
- 사용자별 프로그램추가권한(/CM_UsrPgAuth.xml)  --> 수정
1. 권한 복사 사용자 팝업(/CM_AuthCopyUsr_P01.xml) 파일 생성
==============================================================================================================

[09/08] [수정 사항] 수정 처리했습니다. --> DEFC-0000006299 --> 완료 @@@@
1. 내용: [로그인-본사] 비밀번호에서 엔터 또는 탭키 입력 시 로그인 버튼으로 포커싱 이동 되게 수정
==============================================================================================================
 
[09/08] [수정 사항] 수정 처리했습니다. --> DEFC-0000005953 --> 완료 @@@@
1. 내용:  [로그인-매장포탈] 비밀번호 입력 후 포커스가 로그인 버튼으로 가게 해주시고 엔터 누르면 로그인 가능하게 처리
==============================================================================================================
 
- 상품 이미지 경로 보기할 때 410 (Gone) 서버 오류(400번대)
1. 410 (Gone): 서버에서 block 시킴(방화벽 문제)
http://222.231.17.69/image/prodimg/2015/1100/F1CDX0212/F1CDX0212_BBK/F1CDX0212_01.jgp 410 (Gone)
---------------------------------------------------------------------------------------------------------

- 상품 이미지 확인 파일 경로
[fkerpwas1(scmadm):/home/scmadm] cd /image2/web/image/prodimg 
==============================================================================================================
 
http://222.231.17.69/image/prodimg/2015/1100/F1CDX0211/F1CDX0211_WWT/F1CDX0211_01.jpg  
cd /image2/web/image/prodimg/2015/1100/F1CDX0211/F1CDX0211_WWT 
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.09.09(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 20:30  ==> 석식(탕짜면, 임광루): 청구할 것

- 휠라 코리아 차세대 통합ERP Prj[★]
- 권한그룹별 사용자등록(/CM_AuthGrpMngm.xml)  --> 수정
==============================================================================================================

- 상품 이미지 확인 파일 경로
cd /image2/web/image/prodimg/2016/1100/F1MRY0051/F1MRY0051_BWT 
http:://222.231.17.69/image/prodimg/2016/1100/F1MRY0051/F1MRY0051_BWT/F1MRY0051_BWT_01.jpg

222.231.17.69/image/prodimg/2016/1100/F1MRY0051/F1MRY0051_BWT/F1MRY0051_BWT_01.jpg

total 1120
drwxr-xr-x    2 root     staff          4096 Sep  3 10:43 .
drwxr-xr-x    3 root     staff          4096 Sep  2 17:50 ..
-rwxr-xr-x    1 root     staff        141664 Jan 27 2016  F1MRY0051_BWT_01.jpg
-rwxr-xr-x    1 root     staff        162313 Jan 27 2016  F1MRY0051_BWT_02.jpg
-rwxr-xr-x    1 root     staff        150039 Jan 27 2016  F1MRY0051_BWT_03.jpg
-rwxr-xr-x    1 root     staff         88784 Jan 27 2016  F1MRY0051_BWT_04.jpg
[fkerpwas1(scmadm):/image2/web/image/prodimg/2016/1100/F1MRY0051/F1MRY0051_BWT] 
==============================================================================================================

http://scm.fila.co.kr:10090/websquare/websquare.html?w2xPath=/wqui/cm/CM_LoginHdof.xml#02. 개발S[SCM] 
==============================================================================================================

- 스타일 LIKE 설정
1. AND M.STYL_CD LIKE '%'|| #{stylCd} || '%'		-- 스타일(F1CDY0) 
  -- LIKE #{clpyYymmSrch} || '%'	 

2, 테스트(스타일: F1CDY0)  ==> 개발서버에서
Z:\Blob_Mig\촬영이미지테스용\web\image\prodimg\2016\1100
==============================================================================================================

- 오라클 와일드 카드
SQL> SELECT employee_id, last_name
        FROM employees
        WHERE last_name LIKE 'Au\%%' ESCAPE '\';
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.09.10(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 10:10 ~ 21:00  ==> 주말 근무, 정동국 부장 출근

- 주말 
06:00 기상
06:20 자전거(문영APT -> 대림운동장)
06:30 대림운동장
06:30 숏게임
08:00 종료
08:30 조식(동태찌게, 김미자 식당): 회장님이 쏨
09:00 귀가 
09:30 대림역 -> 방배역
10:10 출근
06:40 권한 개발
12:00 중식(회 덮밥[만원], 어촌식당): 청구할 것
12:20 권한 개발
16:20 운영 서버에서 jboss jdbc연결 에러가 남 ==> SWA 신주호 대리가 운영 서버 해달라고 요청함.
20:00 종료
20:10 석식(탕짜면[8천원], 임광루): 청구할 것
20:40 빵 구입(파리바게뜨 방배점) 
21:30 귀가
23:00 취침
==============================================================================================================

- 휠라 코리아 차세대 통합ERP Prj[★]
- 권한그룹별 사용자등록(/CM_AuthGrpMngm.xml)  --> 완료 @@@
==============================================================================================================

- 운영 서버 빌드(젠킨슨에서) --> SWA 대리가 해달라고 요청함.
1. scm_dev 에서 scm_build 빌드  ==> http://172.16.41.114:23030/jenkins/view/scm_dev에서
2. scm_prod 에서 재시작 ==> scm_prod_restart_1, scm_prod_restart_2
==> scm_prod_restart_1: 빌드 #97 (2016. 9. 10 오후 3:47:27) --> SWA 대리가 원격으로 해결(다른 문제 있을 것으로 추정됨)
==> 크롬에서 세션 하다가 에러 발생 --> 재시작 함.
==============================================================================================================

- 크롬(Chrome)에서 세션 삭제(쿠키 삭제, 사용 설정 및 관리하기)
1. 오른쪽 상단의 메뉴 메뉴(클릭) > 설정(S) > 고급 설정 표시(클릭)
4.'개인정보' 섹션에서 콘텐츠 설정을 클릭합니다.
5.'쿠키'에서 모든 쿠키 및 사이트 데이터를 클릭합니다. 
==============================================================================================================

- Grid 복사
1. dlt_authGrpUsrList.setRowJSON( dlt_authGrpUsrList.getRowCount()+1 , json);
==============================================================================================================

[09/10] [확인 사항] 수정 처리했습니다. --> DEFC-0000006351 --> 완료 @@@@
1. 내용: [개인정보변경]  
2. 의견
  1) POS의 경우 현재사용중은 비밀번호나 개인정보에 대해 점주나 SM외에 접근
   ==> 매장/협력사 사용자관리 화면에서 개인정보를 볼 수 있습니다. 이 부분은 정책적으로 점주나 SM외 접근 권한을
        설정하면 될 것으로 판단됩니다.(권한 부여는 관리자의 판단에 따라 권한을 설정하게 되었 있습니다.)
   2) SSO인데 사이트에서 비밀번호를 설정
   ==> SSO 로그인 화면은 저희쪽에서 개발, 관리하는 것이 아니라 "재무. 인사"쪽 SSO를 가지고 와서 같이 사용하는 것이라
   저희쪽에서 수정할 수가 없습니다.
==============================================================================================================

[09/10] [확인 사항] 수정 처리했습니다. --> DEFC-0000006515  --> 확인 중 @@@@
1. 내용: [개인정보변경]  
2. 의견
  1) SSO로 연동되기에 비밀번호를 변경를 여기서 할 필요가 없을듯 합니다
   ==> 비밀번호를 변경은 개인정보가 강화되어 일반적으로 휴대폰 인증이나 이메일로 받도록 수정이 되었는데
   현재 휠라 ERP에서는 개인정보를 그냥 수정하도록 기획 되었습니다. 담당자와 협의가 필요할 것으로 판단됩니다.
   2) 현재 사용중인 비밀번호를 보여줄 필요가 있을까요?
   ==> 
   3) 대표브랜드로 일부 브랜드가 안뜹니다. 
   ==> 운영서버 연동 DB에서 브랜드코드(1130, 1180, 1220, 1230)가 공통코드명세 TB에 없어서 안 나오는 것입니다. 
            SELECT  *    --DTL_NM
          FROM CM_CD_D  -- 공통코드명세 TB
            WHERE 1=1
                  AND ( BUKRS      =  'F100' 
                  OR BUKRS      = '0000'
                  )  
               AND JOB_GBN    =  'PN'         --업무구분 
               AND CD         =  '001'   --코드
               AND  DTL_CD  = '1130'            -- 브랜드코드 (1130, 1180, 1220, 1230)
               AND USE_YN     = 'Y'
   ; 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.09.11(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==> 

▦ 조기축구
07:00 기상
07:10 자전거(문영APT -> 양천운동장: A구장)
07:40 장훈고 도착(제 36회 영등포구청장배 4강전)
08:00 50대 시합(대림3동 0:2 신광) --> 상희형이 실수로 한골 먹었음. 실력, 체력 모두 안 됐음.
10:00 40대 시합(대림3동 1:0 대호) --> 문주형이 결승골 넣었음. --> 결승 진출
		==> 문주현과 머리 막은 대호팀 선수 때문에 시간 지연됨 ==> 앰브란스 대기 시키고 경기 재개됨.
13:00 30대 시합(대림3동 1:1 양남) --> 승부차기(1:2) --> 상대 골키퍼가 너무 잘했음.
15:00 40대 시합(대림3동 0:1 양남) --> 10번이 선출이라 힘듬, 상대팀은 부전승으로 1게임만 뛰어서 잘 뜀.
							골키퍼 형이 2골 막았음. --> 40대 준우승
16:04 종료(자전거)
17:00 다솜 식당(삼겹살) --> 회에서 쏨
        --> 30대 3위, 40대 준우승, 50대 3위 트로피로 축하연(회장님이 감독님 선수 기용에 문제 제기 --> 와사비
	    통 던지고 난동 부림)
20:00 오징어 양푼이 무침(철희형 가게) --> 기석이형이랑 지경이형이랑 여자 문제로 싸움.
	--> 감독님 싸움 말리다 넘어지면서 팔 다치고 열받았음.
	--> 병곤이형도 싸움 말리다 안경 부러지고 얼굴이 상처났음.
20:30 종료
20:50 귀가
22:30 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.09.12(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 18:00  ==> 참치집(18시, 방배역, 곽차장), 안마, 이진우 이사가 성질냄

- 휠라 코리아 차세대 통합ERP Prj[★]
- 장기 인증 정리(이진우 이사에게 메일로 전달함)
==============================================================================================================

- 로그인방식
01. 본사
 1. 본사 그룹웨어(SSO) 활용: scm.fila.co.kr, http://172.16.41.114:10090
 2. 본사 로그인- SSM: pssm.fila.co.kr(오픈 시 ssm.fila.co.kr)
 3. 로그인-본사모바일: mscm.fila.co.kr, http://172.16.41.114:10090/index_mscm.html
02. 매장포탈
 1. 로그인-매장포탈: tpos.fila.co.kr(오픈 시 pos.fila.co.kr), http://172.16.41.114:11090
 2. 로그인-매장모바일: mpos.fila.co.kr	http://172.16.41.114:11090/index_mpos.html 
03. 협력사
 1. 로그인-협력사: srm.fila.co.kr	http://172.16.41.114:12090
==============================================================================================================

- 권한그룹별 프로그램권한(/CM_AuthGrpPgAuth.xml)  --> 수정
==============================================================================================================
 
- 상품이미지 보이기 처리
1. 현상: SCM 운영 서버는 내부에서만 사용하는 ULR로 운영하기 때문에 외부 URL로 접근 불가능
2. 조치: 상품이미지 보기를 위해 CM 운영 서버로 접근을 하면 SRM 운영 서버(222.231.17.69)에서
	  상품이미지 보이게 서버에서 SWA가 처리으했므로 연결하면 하면 됨.
-------------------------------------------------------------------------------------------------------

1. 상품이미지목록조회(/CM_ProdImgListInqy.xml) 에서 조회 
<!--// 01. 상품이미지목록 dataList(dlt_prodImgList) //-->
<w2:dataList id="dlt_prodImgListMain" baseNode="list" saveRemovedData="true" repeatNode="map">
	<w2:columnInfo>
		<w2:column id="chk" name="선택" dataType="text" ignoreStatus="true"></w2:column> 
		<w2:column id="stylCd" name="스타일코드" dataType="text"></w2:column>
		<w2:column id="fileFullNm" name="이미지(파일명) 풀 URL" dataType="text"></w2:column>  
	</w2:columnInfo>
</w2:dataList>
 
scwin.doInit = function(){
	//$w.log("[/CM_ProdImgListInqy.xml] [doInit()] ==> [화면 초기화 정의] [TEST_01]");
 
	var sHost = $(location).attr("host"); // 도메인
	
	if(cmCommon.isNull(sHost) == false && (sHost.indexOf("172.16.41.212") > -1 || sHost.indexOf("172.16.41.108") > -1 || sHost.indexOf("172.16.41.109") > -1   
				|| sHost.indexOf("scm.fila.co.kr") > -1))  // HOST가 운영 서버 이면
	{	
		$w.log("[/CM_ProdImgListInqy.xml] [doInit()] ==> [화면 초기화] [44. SCM 운영 서버 이면] [sHost]"+ sHost ); 
		dma_requestData.set("scmFileDomain", "222.231.17.69");		// SCM 운영 파일 도메인  
	}
	$w.log("[/CM_ProdImgListInqy.xml] [doInit()] ==> [화면 초기화] [scmFileDomain]"+ dma_requestData.get("scmFileDomain") ); 
};   

<!--// 01. 상품이미지 목록 조회 submission 정의(sbm_searchProdImgList) ==> ref:전송할 DC, target:받을 DC //-->
<xf:submission id="sbm_searchProdImgList" ref="data:json,dma_requestData" target="data:json,dlt_prodImgList"
	action="/cmProd/getProdImgList.do" method="post" mediatype="application/json" encoding="UTF-8" instance="" replace="" errorHandler=""
	customHandler="" mode="asynchronous" processMsg="" ev:submit="" doneMsg="true" ev:submitdone="scwin.sbm_searchProdImgList_submitdone"
	ev:submiterror="">
</xf:submission> 
 
<select id="selectProdImgList"  parameterType="HashMap"  resultType="HashMap">  
/* CmProdImgList_sqlmap.selectProdImgList AS 상품이미지 목록 조회 */ 
.........
.......
		<choose>
		    <when test="scmFileDomain != null and scmFileDomain == '222.231.17.69'.toString()">
			SELECT ('http://222.231.17.69' || A.FILE_PH_NM || '/' || A.STRG_FL_NM) AS IMAGE_NM 		-- SCM 운영 파일 도메인
		    </when>  
		    <otherwise> 
					SELECT (A.FILE_PH_NM || '/' || A.STRG_FL_NM) AS IMAGE_NM		-- 일반 도메인
		    </otherwise> 
		</choose> 
				FROM CM_FILE A 		-- 파일 TB       
				WHERE 1 = 1
					AND A.FILE_ID = C.IMG_FILE_ID 	-- 이미지파일ID   
					AND ROWNUM <= 1
				) AS FILE_FULL_NM 		-- 이미지파일 풀 명
		 
</select>

2. 상품이미지목록조회(/CM_ProdImgListInqy.xml) 에서 Display 
<!-- 그리드뷰 -->  
<w2:gridView id="grd_prodImgList" autoFit="allColumn" autoFitMinWidth="1155" dataList="dlt_prodImgListMain"
	class="scm-grid auto-height" rowNumVisible="true" rowNumHeaderValue="No" rowStatusVisible="false" rowStatusHeaderValue="상태"
	style="height:338px;" summary="" ev:oncellclick="scwin.grd_prodImgList_oncellclick" 
	ev:onbodymouseover="scwin.grd_prodImgList_onbodymouseover" ev:onmouseout="scwin.grd_prodImgList_onmouseout" 
	ev:onscrollend="scwin.grd_prodImgList_onscrollend">
	<w2:header>
		<w2:row style="height:20px;">
			<w2:column id="th1" inputType="checkbox" width="20" value="선택" style="height:0px;"></w2:column> 	<!--// 체크박스 //-->
			<w2:column id="th01" inputType="text" width="100" value="스타일코드"></w2:column> 
			<w2:column id="th03" inputType="text" width="50" value="이미지"></w2:column> 
		</w2:row>
	</w2:header>
	<w2:gBody>
		<w2:row style="height:20px;">
			<w2:column id="chk" inputType="checkbox" dataType="text" textAlign="center"></w2:column>	<!--// 체크박스 //-->
			<w2:column id="stylCd" inputType="text" dataType="text" textAlign="center" readOnly="true"></w2:column>		<!--// 스타일코드 //--> 
			<w2:column id="fileFullNm" inputType="image" dataType="text" textAlign="center" imageWidth="20" imageHeight="20"
			style="padding:5px; border:1px solid #dadada;" imageSrc="" readOnly="true"></w2:column>  	<!--// 이미지(파일명) //-->	 
			 
		</w2:row>
	</w2:gBody>
</w2:gridView>
<!-- //그리드뷰 -->  
==============================================================================================================
 
-- 권한그룹별 메뉴 정보 수정  @@@@@@@@@@@@@   
UPDATE CM_AUTH_GRP_MENU A 
SET SPCF_BTTN_ID_4_YN = 0          -- 특수버튼4권한(버튼 제거: :1에서 0으로 처리)
WHERE 1 = 1
    AND A.BUKRS = 'F100'    -- 법인코드   
    AND MENU_ID = 'CM1070'                     -- 메뉴 ID(CM2030: 게시판조회)   SR8020
  AND A.PG_ID = 'CM_AuthGrpPgAuth'    -- 프로그램ID  
; 
==============================================================================================================

- 상품이미지 파일 다운로드 하기
1. 상품이미지목록조회(/CM_ProdImgListInqy.xml) 에서 조회 
cmCommon.downFilesAllProdImg(sBrndCd, sStylCd, sClrCd, sYyCd, sDwnldImgKdChedAll2, sUsrId);  // 상품이미지 파일 다운로드 하기 함수 호출 

2. 상품이미지목록조회(/cmCommon.js) 에서 조회 
cmCommon.downFilesAllProdImg = function(sBrndCd, sStylCd, sClrCd, sYyCd, sDwnldImgKd, sUsrId) {
	 
	var pgId = parent.tac_main.getWindow(parent.tac_main.getSelectedTabIndex()).txb_programId.getValue(); 
	var datas = new Array();
 
	datas.push(sBrndCd);	// 대분류(브랜드코드) 
	datas.push(sDwnldImgKd);	// 다운로드 이미지 구분 코드
	
	datas.push(pgId=='' ? "undefined":pgId);
	var dataStr = JSON.parse(JSON.stringify(datas));
 
	WebSquare.net.download("/cm/filedownAllProdIgm.do", dataStr, "post");   // 상품 이미지 첨부파일 다운로드 함수 호출
};

3. 상품이미지목록조회(/CmFileController.java) 에서 조회 
@RequestMapping("/cm/filedownAllProdIgm.do")
public ModelAndView getFileDownLoadAllProdIm(@RequestParam("xmlValue") String xmlValue, HttpServletRequest request, SessionToken sessionToken) { 
	return this.downLoadFiles(list);	//첨부파일 다운로드 실행
} 
  
/**
 * 첨부파일 다운로드 실행
 */
private ModelAndView downLoadFiles(List<Map<String, Object>> list) { 
	ModelAndView mv = null;

	if(list.size() == 1)   // 첨부파일 다운로드가 1개 이면
	{
		mv = new ModelAndView("fileDownloadView");		// FileDownloadView() 함수 호출
		mv.addObject(SINGLE_FILE_INFO, list.get(0));
	}
	 
	else	 // 첨부파일 다운로드가 2개 이상 이면(zip으로 만들어서 다운로드)
	{
		mv = new ModelAndView("zipFileDownloadView");		// zipFileDownloadView() 함수 호출 
		String zipName = "zip_"+DateUtil.getDateLong()+".zip";

		//파라메타설정
		mv.addObject(ZIP_FILE_LIST, list);		// 파일목록 
		mv.addObject(ZIP_FILE_NAME, zipName);	// ZIP파일 이름
	} 
	return mv; 
}

public class FileDownloadView extends AbstractView implements FileDownload
{
	private static final Logger logger = Logger.getLogger(FileDownloadView.class);

	@Autowired
	private UploadFileUtil uploadFileUtil;

	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request, HttpServletResponse response) throws Exception 
	{ 
		@SuppressWarnings("unchecked")
		Map<String, Object> info = (Map<String, Object>)model.get(SINGLE_FILE_INFO);
		
		String originalFilename = (String)info.get(KEYNAME_ORG_FILENAME);
	  
		String filePath = (String)info.get(KEYNAME_FILE_PATH);
		String fileFullPath = uploadFileUtil.getUploadPath(filePath, (String)info.get(KEYNAME_SAVE_FILE));	// Root를 포함한 전체경로 생성  함수 호출
	}
}

- /UploadFileUtil.java 파일에서
/**
* Root를 포함한 전체경로 생성(+파일명)
*/
public String getUploadPath(String filePath, String fileName) throws Exception{  
	filePath = getUploadPath(filePath);		// ROOT포함 해당 디렉터리

	if(null != filePath && !"".equals(filePath) && ((filePath.indexOf("/prodimg") > 0) && (filePath.indexOf("/image2/web") < 0))) {   // 상품이미지 경로가 존재하면
		filePath = (String)"/image2/web"+ filePath.toString();  // image 파일 경로 수종(/image2/web 추가) @@@
		logger.debug("\n\n[/UploadFileUtil.java] [getUploadPath()] @@@@@ ===> [상품이미지 경로가 존재하면] [filePath]"+ filePath );
	}   
	logger.debug("\n\n[/UploadFileUtil.java] [getUploadPath()] @@@@@ ===> [전체 이미지 경로 확인(filePath)]"+ filePath );
 
	return getFileFullPath(filePath, fileName);	// 파일명 추가해서 Return
}

- /ZipFileDownloadView.java 파일에서
@Override
protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request, HttpServletResponse response) throws Exception {
	/** 1. ZIP으로 압축할 파일 정보 처리 **/
	@SuppressWarnings("unchecked")
	List<Map<String, Object>> fList = (List<Map<String, Object>>)model.get(ZIP_FILE_LIST);
	ServletOutputStream sos = response.getOutputStream();
	try {
		if(null != fList && fList.size() > 0) {
		this.isFiles(fList);
		byte[] zip = this.zipFiles(fList);	// 파일들을 zip파일로 생성
		    response.setContentType("application/zip");
		    response.setHeader("Content-Disposition", "attachment; filename="+(String)model.get(ZIP_FILE_NAME));
		    sos.write(zip);
		    sos.flush();
		}
	}
	catch(Exception e)
	{
		logger.debug(e);
		logger.error("ZipFile 오류발생 : {} "+e);     
	}
	finally {
	    if(null != sos) {
		try {sos.close();}catch(Exception e){logger.error(e);}
		sos = null;
	    }
	} 
}
	
/**
 * 파일들을 zip파일로 생성
 */
private byte[] zipFiles(List<Map<String, Object>> fList) throws IOException {
	ByteArrayOutputStream baos = new ByteArrayOutputStream();
	ZipOutputStream zos = new ZipOutputStream(baos);
	byte bytes[] = new byte[1024];
	FileInputStream fis = null;
	BufferedInputStream bis = null;

	try {
		for (Map<String, Object> file : fList) {
			String filePath = (String)file.get(KEYNAME_FILE_PATH);
				String fullFilePath = uploadFileUtil.getUploadPath(filePath, (String)file.get(KEYNAME_SAVE_FILE));	// Root를 포함한 전체경로 생성  함수 호출
				File f = new File(fullFilePath);
				
			fis = new FileInputStream(f);
		    bis = new BufferedInputStream(fis);
		    
		    String rename = this.makeFileName(fList, (String)file.get(KEYNAME_ORG_FILENAME), (String)file.get(KEYNAME_SAVE_FILE));
		    logger.debug("["+(String)file.get(KEYNAME_ORG_FILENAME)+"]>>>>> ["+rename+"]");
		    zos.putNextEntry(new ZipEntry(rename));	// 원래파일명 설정

		    int bytesRead;
		    while ((bytesRead = bis.read(bytes)) != -1) {
			zos.write(bytes, 0, bytesRead);
		    }
		    zos.closeEntry();
		    bis.close();
		    fis.close();
		}
		zos.flush();
		baos.flush();
		zos.close();
		baos.close();        
	}  
	return baos.toByteArray();
}
==============================================================================================================

[09/12] [결함 사항] 수정 처리했습니다. --> DEFC-0000006297 --> 완료 @@@@
1. 내용: [공통코드관리] TO-DO list 화면의 경우 로딩 시 결재 대상 목록이 자동 검색되게 처리
 ==> 김본사(TEST01)로 로그인 --> 왼쪽 메뉴에서 34건(클릭): To Do 리스트화면에서 13건 조회됨 
					     --> To Do 리스트화면에서 요청기간(20150812 ~ 20160912)로 조회하면 34건 조회됨 
==============================================================================================================

- eclipse debug 사용법
1. [이클립스 팁] 디버그(Debug) 모드 활용하기   ==> http://androphil.tistory.com/267
2. Eclipse Debug (디버그) 활용 ==> https://slipp.net/wiki/pages/viewpage.action?pageId=5177364
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.09.13(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 18:00  ==> 이진우 이사가 성질냄2

- 휠라 코리아 차세대 통합ERP Prj[★]
- 권한그룹별 프로그램권한(/CM_AuthGrpPgAuth.xml)  --> 수정
==============================================================================================================

- /CmUserMgmt_sqlmap.xml 파일에서
1. ONSL_CERT_NO   --본인인증번호  ==> 제거
==============================================================================================================

- 본사 로그인- SSM
http://localhost:8081/websquare/websquareSSM.jsp?w2xPath=/wqui/cm/CM_LoginHdofSSM.xml
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.09.14(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 09:00 ~ 20:00 ==> 1주일 전 경주에 5.8 지진 발생(포항 영일대 누각 바닥 갈라짐)

- 추석 연휴1
04:00 기상
04:30 짐 준비
05:00 카카오 택시(루옌, 수종)
05:05 집출발
05:30 광명역 도착
06:01 KTX 출발
08:15 포항역 도착
08:30 택시(포항역 -> 포항집): 6,300원
08:30 집 도착
10:00 중식
13:00 다이소 포항점(수종 장남감: 3,00원) ==> 부모님 용돈(20만원)
15:00 큰누나 방문
16:00 큰누나 미용실(이발, 수종이도 같이 함)
17:30 큰누나 미용실 출발(수종이는 누나 차 타고 감) 
17:40 택시(나루끝 -> 장성 초교 근처): 6,000원 --> 루옌과 같이 감.
18:00 도착
18:05 헤원숯불갈비 도착(포항계 모임)
18:20 진철, 정철, 태정, 봉춘, 성표, 주남형(형수, 딸1명)
18:30 석식(돼지갈비) --> 선물: 농협 상품권(5만원) 받음
20:30 종료 
20:40 귀가(진철이 차) ==> 루옌 같이 타고 감, 수종이 어머니와 밖에 나와서 기다림.
20:50 거실 TV 자동 설정이 고장나서 안 나옴 --> 대호 못 봄(핸드폰 이어폰 가지고 올 것)  
23:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.09.15(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 09:00 ~ 20:00 ==>

- 추석 
08:30 기상
09:30 차례 지내기 ==> 작은 아버지 무릎 수술해서 서울 못 가고 같이 차례 지냄, 수종 한복 입음
	--> 루옌 설겆이 하다가 그릇 깨고 손가락 2군데 피남
10:00 종료
10:20 조식(조금만 먹음)
12:30 낮잠
15:00 큰누나네 도착(령경같이 옴)
15:30 창일이네 도착(예랑, 예준에게 만원씩 줌)
18:00 석식
19:00 창일이네 돌아감
23:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.09.16(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 09:00 ~ 20:00 ==>

- 추석 연휴3
09:00 기상
10:30 조식 
11:30 큰누나네 돌아감(령경에게 3만원 줌) 
15:00 큰누나네 돌아옴
15:00 집출발
15:50 오어사(비 조금 옴)
16:30 진전(강평댐): 옛날 집 완전 수몰되어서 안 보임 
17:00 귀가
17:10 석식--> 루옌 잡채 만들었는데 요리 잘 했다고 어머니에게 칭찬 들음
18:00 집출발
18:30 포항역
21:30 서울역
21:50 서울역 -> 대림역
22:20 귀가(장모님 추석 연휴에 금산에서 서울 방문)
00:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.09.17(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 18:00  ==> 주말 근무

- 주말 
08:10 기상(	비와서 축구 못 감) 
08:20 대림역 -> 방배역
10:15 출근
06:40 권한 개발
12:00 중식(짜장면, 탕수육): LG CNS 김승태 부장이 쏨
12:20 권한 개발 
20:10 석식(빵[파리바케트 방배점: 8천원]): 청구할 것
21:30 귀가
23:00 취침
==============================================================================================================

- 휠라 코리아 차세대 통합ERP Prj[★]
- 권한 수정 보완 테스트
1. 권한그룹별 사용자등록(/CM_AuthGrpMngm.xml)  --> 완료 @@@
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.09.18(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==> 
▦ 조기축구
05:50 기상
06:20 자전거(문영APT -> 대림운동장) 
06:40 대림운동장 
07:00 솟게임 ==> 경수 전담 마크 함(잘 했다고 칭찬 받음)
08:00 게임 ==> 4게임함
10:10 종료
10:20 중식(김치찌게: 서울 식당, 쥐 약간 남)  ==> 조기회에서 쏨
11:30 종료  
12:30 귀가(장모님 금산으로 돌아감) 
13:00 낮잠
16:00 기상
16:40 TV시청 
19:40 석식
22:30 취침
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.09.19(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 21:00  ==> 권한 수정 보완 때문에 멘붕 옴

- 휠라 코리아 차세대 통합ERP Prj[★]
- 권한 수정 보완 테스트
1. 권한그룹별 사용자등록(/CM_AuthGrpMngm.xml)  --> 완료 @@@
==============================================================================================================

[09/10] [확인 사항] 수정 처리했습니다. --> DEFC-0000006112 --> 검토 중 @@@@
1. 내용: [모바일인증관리]   
  1) 인증관리는 PC당 한개 밖에 되질 않기 때문에 매장 아이디별로 인증을 줄수 없습니다. 
	매장은 매장코드당으로 만 인증이 가능합니다. 
	협력업체는 협력업체별로 만 인증이 가능합니다.
	본사사용자는 현재처럼 사번별로 만 가능합니다. 

	본사사용자는 이름 또는 사번 둘 다로 입력 검색 할수 있도록 조회 조건 수정해 주세요.
	==> 매장(업체) 사용자ID, 부서/매장/협력사(11017)
==============================================================================================================

- 본사 로그인- SSM 수정  --> 완료 @@@
http://172.16.41.114:15090/websquare/websquare.html?w2xPath=/wqui/cm/CM_LoginHdofSSM.xml
http://localhost:8084/websquare/websquare.html?w2xPath=/wqui/cm/CM_LoginHdofSSM.xml

1. 파일 위치: /FilaKoreaERP.SCMSystem/src/main/webapp/ssm/wqui/cm/CM_LoginHdofSSM.xml
(C:\FilaKoreaERP\workspace\FilaKoreaERP\FilaKoreaERP.SCMSystem\src\main\webapp\ssm\wqui
\cm\CM_LoginHdofSSM.xml)
==============================================================================================================
 
[09/19] [수정 사항] 수정 처리했습니다. --> DEFC-0000006652 --> 완료 @@@
1. 내용: [로그인-본사] SSM 로그인 추가 개발바랍니다.
==============================================================================================================
 
[09/19] [수정 사항] 수정 처리했습니다. --> DEFC-0000006674 --> 완료 @@@
1. 내용: [프로그램관리] GRID상의 특수버튼ID-1,  특수버튼ID-2,  특수버튼ID-3,  특수버튼ID-4,  특수버튼ID-5 삭제할 것 
==============================================================================================================
 
[09/19] [수정 사항] 수정 처리했습니다. --> DEFC-0000006372 --> 완료 @@@
1. 내용: [매장&협력사 사용자관리] 1101701 아이디로 조회 했을때 사용여부가 N으로 되어 있으나 로그인이 되고 있음.
==============================================================================================================

[09/19] [수정 사항] 수정 처리했습니다. --> DEFC-0000006372 -->  대기중  @@@@
1. 내용: [사용자관리] 본사 사용자의 경우 사용자관리 화면에서는 비밀번호를 수정 할 수 없도록 막아야함 
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2016.09.20(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 21:00  ==> 

- 휠라 코리아 차세대 통합ERP Prj[★]
- 권한 수정 보완 테스트
==============================================================================================================
 
[09/20] [수정 사항] 수정 처리했습니다. --> DEFC-0000006652 --> 완료 @@@
1. 내용: [로그인-본사] SSM 로그인 추가 개발바랍니다.
==============================================================================================================

[09/20] [수정 사항] 수정 처리했습니다. --> DEFC-0000006804 --> 완료 @@@
1. 내용: [권한그룹별 프로그램권한 일괄등록]
	1. 메뉴유형 선택 후 프로그램ID/명에 예)부서를 입력하고 조회하면 해당 프로그램만 나타나지 않고 전체가 나타남
	2. 권한에 입력이 되어야 함(프로그램 성격이 프로그램 단위로 권한 등록 후 권한그룹별로 일괄 등록하는 것임)
	3. 특수버튼내역에 자료 나타나지 않음(예:권한그룹별 프로그램권한)
	4. 반영할 권한 그룹은 메뉴리스트를 클릭할때마다 조회되는게 아니라 조회를 클릭할때 1번만 조회되면 됨(메뉴유형에 해당되는 권한그룹이므로)
==============================================================================================================
 
[09/20] [수정 사항] 수정 처리했습니다. --> DEFC-0000006799 --> 완료 @@@
1. 내용: [권한그룹프로그램권한]
	1. 프로그램권한 SQL 확인 바람(원래 메뉴 형태로 나오지 않음 중복자료 나타남)
	   1-1 조회 이후 클릭하고 스크롤하게 되면 화면상에 보여지는 자료가 2중 3중으로 나타남(황정곤씨가 유사한 사례가 있었으니 문의바람)
	2. 권한그룹 삭제 시 프로그램권한(CM_AUTH_GRP_MENU) 상에 자료가 있으면 삭제 못하게(메시지는 프로그램권한에 자료가 있어 
	삭제할 수 없습니다. 사용유무를 N로 변경하십시요.)
	==> 
	2-1 그룹저장 
	3. 권한저장 시 통신중 오규 발생 메시지 발생함. 
==============================================================================================================

[09/20] [수정 사항] 수정 처리했습니다. --> DEFC-0000006813  --> 완료 @@@
1. 내용: [사용자프로그램권한] 
	0. 프로그램권한 SQL확인 바람(모든 권한관련한 메뉴TREE 자료 이상함)
	1. 사용자에서 다른 사용자 클릭 시 특수버튼 내역 기존 자료 CLEAR 시킬것
	2. 속도 느립니다. TUNNING바람
	3. 프로그램권한에서 등록하는 값은 Y/N 만 있음(G는 보이지 않게 처리할 것, G는 그룹에서 받은 권한임(화면상에서 처리하는 방법 검토바람)
	==> G는 보이지 않게 처리

	4. 특수버튼은 권한을 줄 수 없음(예: 권한그룹별 프로그램권한)
	 
	5. 취소 버튼의 용도는 무엇인가요?
	==> 취소 제거(원 개발자인 이재현 과장에게 물어보고 처리함)

	6. 저장버튼이 프로그램권한 그리드 상단에 있는 이유는?
	==> 저장 버튼 조회 버튼 옆으로 이동

	7. 권한복사 클릭 시 나타나는 팝업 디자인 보완할 것(하단 여백 남음)
	   - TO. 사용자ID에 검색할 수 있게 할 것  ==> 퍼블리싱 필요함.

	8. 사용자별 프로그램추가권한-권한복사라는 TITLE변경바람
	   → 사용자별 권한 복사로 변경

	9. 사용자별 프로그램추가권한-권한복사라는 팝업에서 메뉴 유형은 무슨의미인가?
	==>  메뉴 유형 제외

	10. TO. 사용자ID의 SQL 확인 바람(원래 의도는 FROM 사용자ID를 제외한 모든 ID 임)  
         ==>  
SELECT /* CmUsrPgAuth_sqlmap.selectToUsrList AS To. 사용자ID 조회[권한복사 사용자 팝업] */
	A.USR_ID AS USR_ID -- 사용자ID
	,A.USR_NM -- 사용자명       
	,'' AS BUKRS -- 법인코드  
	,A.STRUC_CD AS DEPT_CD -- 부서코드  
	,A.STRUC_NM AS DEPT_NM -- 부서명
	,'' AS MENU_TYPE_ID -- 메뉴유형
FROM VW_CM_USR_DEPT_SHOP_CSTR A
WHERE A.USR_ID <> 'TEST11011' /**P*/ -- FROM 사용자ID 
ORDER BY A.STRUC_CD
	,A.STRUC_NM 
 ; 
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2016.09.21(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 22:50  ==> 

- 휠라 코리아 차세대 통합ERP Prj[★]
- 권한 수정 보완 테스트
==============================================================================================================

- [오라클] 계층형 쿼리 --> http://www.gurubee.net/lecture/2223, http://m.blog.naver.com/javaking75/220010288704
1. 계층적 쿼리 ( connect by ) ==> http://www.underroom.com/318, http://joke00.tistory.com/89, http://www.gurubee.net/lecture/1300
SELECT LPAD(' ',(LEVEL-1)*2,' ') || 직원 직원, 직급, 직속상사
FROM 직원
START WITH 직속상사 IS NULL
CONNECT BY PRIOR 직원 = 직속상사		--> Prior는 상위 행을 참조하는 것 @@@
 
   직원      직급		직속상사	  LEVEL 
---------------------------------------		 	
개똥         사장          NULL		-- LEVEL1
  영희       부장		개똥		-- LEVEL2
    순희     과장          영희		-- LEVEL3
      철수   대리		순희		-- LEVEL4
      길동   대리		순희		-- LEVEL4
---------------------------------------------------------------------------------------------------

SELECT LEVEL, ID, SORT 
CONNECT BY PRIOR ID = SORT  ... (2) 
START WITH ID = 1  ... (1)    ---> 설정 잘못하면 중복 데이타가 생김 @@@
트리검색이라는 것인데... 
(1) ID 값이 1인 자료를 찾아서 출력하고 
(2) 출력된 ID 값과 같은 SORT 값을 갖는 자료를 찾아 출력하는 것을 반복하게 됩니다. 
이와같이 LEVEL 을 같이 출력해 주면 각 자료의 깊이를 알 수가 있는데 
같은 LEVEL 에 위치하는 자료가 ID 값으로 정렬되진 않을 것 같네요. 
==============================================================================================================

-- 프로그램 권한 조회 @@@
SELECT /* CmAuthGrpAuth_sqlmap.selectProgramAuthList AS 프로그램 권한 조회[권한그룹별 프로그램권한] */ ---> 635건 @@@@
            (
                SELECT DTL_NM
                FROM CM_CD_D
                WHERE BUKRS = 'F100'
                    AND JOB_GBN = 'CM'
                    AND CD = '0001'
                    AND DTL_CD = SUBSTR(MM2.MENU_ID, 0, 2)
                ) AS PG_FG --구분코드명
                
             ,LEVEL AS 레벨 
             ,MM2.MENU_ID AS 메뉴ID
             ,MM2.HRNK_MENU_ID  AS 부모_메뉴ID  
             ,LPAD(' ', 2 * (LEVEL - 1)) || MM2.MENU_NM AS 메뉴명_DISP
         
            ,MM2.MENU_ID -- 메뉴ID    
            ,MM2.MENU_NM AS MENU_NM
            ,MM2.MENU_NM_DISP AS MENU_NM_DISP -- 메뉴/프로그램명
            ,MM2.PG_ID AS PG_ID -- 프로그램ID
            ,DECODE(MM2.PG_ID, NULL, NULL, MM2.INQY_BTTN_YN) AS INQY_BTTN_YN
            ,DECODE(MM2.PG_ID, NULL, NULL, MM2.SAV_BTTN_YN) AS SAV_BTTN_YN
            ,DECODE(MM2.PG_ID, NULL, NULL, MM2.SPCF_BTTN_ID_1_YN) AS SPCF_BTTN_ID_1_YN
            ,DECODE(MM2.PG_ID, NULL, NULL, MM2.SPCF_BTTN_ID_2_YN) AS SPCF_BTTN_ID_2_YN
            ,DECODE(MM2.PG_ID, NULL, NULL, MM2.SPCF_BTTN_ID_3_YN) AS SPCF_BTTN_ID_3_YN
            ,DECODE(MM2.PG_ID, NULL, NULL, MM2.SPCF_BTTN_ID_4_YN) AS SPCF_BTTN_ID_4_YN
            ,DECODE(MM2.PG_ID, NULL, NULL, MM2.SPCF_BTTN_ID_5_YN) AS SPCF_BTTN_ID_5_YN
FROM (
	......
	)
WHERE 1 = 1
    AND MM2.HRNK_MENU_ID <> '00000' 
    --AND MM2.PG_ID = 'CM_CmmCdMngm' -- 프로그램ID(공통코드관리:CM_CmmCdMngm)
    START WITH MM2.PG_ID IS NULL						-- 1. LEVEL1 구하기 ==> PG_ID IS NULL 것(최상위 부모(LEVEL:1), 기초정보관리)을 시작으로 잡음
    CONNECT BY PRIOR MM2.MENU_ID = MM2.HRNK_MENU_ID	-- 2. LEVEL2 구하기 ==> HRNK_MENU_ID(CM1000)가 LEVEL1 
	코드의 MENU_ID(CM1000)와 같은 MENU_ID 찾기(공통코드관리, 부서관리...) 구하기
    ORDER SIBLINGS BY MM2.MENU_ID						-- 3. 계층구조는 그대로 유지하면서 동일 부모를 가진 자식들끼리의 정렬 기준을 주는 것
                                ,MM2.MENU_TYPE_ID
                                ,MM2.PG_ID
;
==============================================================================================================

- Grid 실제 데이터셋에 있는 row 인덱스 가져오기
1. Grid에 설정
drilldownRealRowIndex="true"
2.
 1) 이전: var focIdx = grd_programAuthList.getFocusedRowIndex();  
 2) 수정: var focIdx = grd_programAuthList.getFocusedRowIndex();
var idx = grd_programAuthList.getRealRowIndex(focIdx); //실제 데이터셋에 있는 row인덱스를 가져온다. 
==============================================================================================================
 
[09/20] [수정 사항] 수정 처리했습니다. --> DEFC-0000006807 --> 완료  @@@
1. 내용: [권한그룹별사용자관리]
1. 사용자ID/명에 값을 입력하지 않고 사용자 조회를 클릭하면 하단에 조회되게 처리할 것(현재 돋보기를 통해 사용자 선택하므로 )   
2. 권한그룹별 사용자 현황에서 모든 자료를 선택하여 지우고 저장하면 {0} 상태에서만 저장이 가능합니다. 라는 메시지 나타남.(오류) 
3. ↑↓ 버튼 클릭 시 모래시계(?) 표현할 것 대량의 자료 등록 시 프로그램이 멈춘것 처럼 느껴짐  
4. 하단의 사용자 모두 선택하고 ↑ 클릭하면 오류남(상단에 있는 자료와 하단에 있는 자료 동일한 것이 나타남)  
5. 권한그룹에 SQL변경바람(사용자구분 추가) 
작업용\8500 SCM\8599 파트별 작업 공간\1000. 공통AA\10. 공통개발SQL\015. 권한관련_수정보완\권한수정보완_0825.sql 상의 0919 
수정부분 확인 바람) 
 CM_AUTH_GRP  ==>  USR_KD IS '사용자구분'; 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.09.22(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 21:00  ==> 석식(탕짜면(3), 소주(3): 임광루, 곽차장, 이과장): 청구할 것, 조대표님 면담(결과로 이야기 할 것)

- 휠라 코리아 차세대 통합ERP Prj[★]
- 권한 수정 보완 테스트
1. 사용자별 프로그램추가권한(/CM_UsrPgAuth.xml)  --> 저장
==============================================================================================================

- MERGE 문의 이해
1. ORACLE MERGE  ==> http://www.gurubee.net/lecture/2225
==============================================================================================================

- 평균단가 계산(/SB_ClpyAgvCostCalc.xml) 수정 ==> 완료 @@@
1. 확정 취소시 --> 확정년월 확인
==============================================================================================================

- 수불 엑셀 다운로드 수정 ==> 완료 @@@
- 수불 평균단가 계산(/SB_ClpyAgvCostCalc.xml)	--> 완료 @@@ 
- 출고/판매 평균단가 미등록 조회(/SB_AgvCostNoRegInqy.xml)	--> 완료 @@@ 
- 수불마감금액조회(/SB_ClpyClsnAmtInqy.xml)	--> 완료 @@@ 
- 수불 마감(/SB_ClpyClsn.xml	--> 완료 @@@ 
- 스타일 기간 수불부(/SB_StylTermClpyInqy.xml)	--> 완료 @@@ 
- 매장/창고 재고현황(/SB_ShopWrhsInqy.xml)	--> 완료 @@@ 
- 매장별 판매원가 현황(/SB_ShopSleCostInqy.xml)	--> 완료 @@@  
==> Z:\8500 SCM\8599 파트별 작업 공간\8050.수불\QUERY
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.09.23(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:40 ~ 21:00  ==>  

- 휠라 코리아 차세대 통합ERP Prj[★]
- 권한 수정 보완 테스트
1. 권한복사그룹 팝업 화면(CM_AuthCopyUsr_P01.xm) 수정
 1) 권한복사 처리[권한복사 사용자 팝업] 프로시저 호출 처리
	{ call /* CmAuthGrpAuth_sqlmap.callAuthCopyProd AS 권한복사 처리[권한복사 사용자 팝업] 프로시저 */
					SP_CM_AUTH_GRP_USR_COPY(?,?,?,? ,?,?)} 
==============================================================================================================

- 매장/창고 재고현황(/SB_ShopWrhsInqy.xml) ==> 완료 @@@
1. Grid에 비고 칼럼(PBRND_CD) 추가
==============================================================================================================

- 오라클 프로시저 실행 
http://www.gurubee.net/lecture/1041 
1. SQL 에디터가 아니라 PL/SQL 화면에서
==============================================================================================================

- PL/SQL Developer에서 프로시저 테스트
1. SQL 에디터에서
 1) SP_CM_AUTH_GRP_USR_COPY(마우스 우 클릭) > Test(클릭)

 begin
  -- Call the procedure
  sp_cm_auth_grp_usr_copy(p_bukrs => :p_bukrs,
                          p_from_usr_id => :p_from_usr_id,
                          p_to_usr_id => :p_to_usr_id,
                          p_input_id => :p_input_id,
                          o_err_cd => :o_err_cd,
                          o_err_msg => :o_err_msg);
end;
==> 실행(F8)

2. TEST
 1) Value 입력  --> 실행(F8)
 2) o_err_msg ==> [정상종료 : SP_CM_AUTH_GRP_USR_COPY - [0] ORA-0000: normal, successful completion

- 에러 디버깅
1. 브레이킹 처리
==============================================================================================================

- Oracle DB 에서 Toad 를 사용하여 Procedure 디버깅 하기
http://mainia.tistory.com/778
--> Toad에서 디버깅 단축키 --> F7: trace into, F8: step over, F10: trace out
----------------------------------------------------------------------------------------

 -- 권한복사 처리[권한복사 사용자 팝업] 프로시저 @@@@  ==> PROCEDURE
DECLARE 
  P_BUKRS CHAR(4);
  P_FROM_USR_ID VARCHAR2(30);
  P_TO_USR_ID VARCHAR2(30);
  P_INPUT_ID VARCHAR2(27);
  O_ERR_CD VARCHAR2(32767);
  O_ERR_MSG VARCHAR2(32767);

BEGIN 
  P_BUKRS := 'F100';			-- 법인코드 @@@@ 
  P_FROM_USR_ID := 'TEST51';	-- FROM 사용자ID @@@@ 
  P_TO_USR_ID := 'TEST61';		-- 사용자ID @@@@ 
  P_INPUT_ID := 'TEST51';		-- 등록자ID   @@@@ 
  O_ERR_CD := NULL;
  O_ERR_MSG := NULL;

  SCMADM.SP_CM_AUTH_GRP_USR_COPY ( P_BUKRS, P_FROM_USR_ID, P_TO_USR_ID, P_INPUT_ID, O_ERR_CD, O_ERR_MSG );
  -- // 권한복사 처리[권한복사 사용자 팝업] 프로시저 호출 @@@

  COMMIT; 
END;
==============================================================================================================

[09/23] [결함 사항] 수정 처리했습니다. --> DEFC-0000007027 --> 완료  @@@
1. 내용: [To Do 리스트 조회] 좌측 상단 to-list 버튼 클릭 시  관련 데이터 있는 메뉴로 연결되지 않습니다.
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.09.24(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 10:00 ~ 19:00  ==> 주말 근무, 수종 생일

- 주말  
06:00 기상
06:20 자전거(문영APT -> 대림운동장)
06:30 대림운동장
06:30 숏게임
08:00 종료
08:30 조식(김치찌게, 무진장 식당): 강 고문님이 쏨
09:00 귀가 
09:30 대림역 -> 방배역
10:00 출근
10:10 부서/매장/협력사 조회 조건 추가
12:00 중식(회 덮밥[만원], 어촌식당): 청구할 것
12:20 권한 수정
21:00 종료
21:10 빵 구입(8,300원, 파리바게뜨 방배점): 청구할 것 
19:30 석식(스테이크, 볶음밥, 피자, 로니로티, 신림역(4번 출구) 근처 식당) ==> 수종 생일
20:30 버스(신림역 -> 구로디지털단지역)
21:00 이마트(수종 장난감 고르다가 포기)
21:50 수종 생일 케익 구입(23,000원, 파리바게뜨 구로점)
22:00 귀가
22:30 수종 생일 파티
23:00 취침
==============================================================================================================

- 휠라 코리아 차세대 통합ERP Prj[★]
- 사용자관리(/CM_AuthGrpMngm.xml)  수정 --> 완료 @@@
1. 부서/매장/협력사 조회 조건 추가
==============================================================================================================

- 권한그룹별 사용자등록(/CM_AuthGrpMngm.xml)  --> 완료 @@@
1. 저장시 ORACLE MERGE 제겨 ==> 일반 쿼리로 수정 처리함
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.09.25(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==> 

▦ 조기축구
07:00 기상
07:20 자전거(문영APT -> 양천운동장: A구장)
08:50 양천운동장(야구장 옆 운동장) 도착 
09:00 16강전 전반(대림3동 0:0 당산2동[파란색 유니폼]) 
10:00 제9회 대림성모병원 청암배 축구대회 입장식  --> 입장상(2등) 받음(상금 20만원)
10:30 종료
09:00 16강전 후반(대림3동 3:1 당산2동[파란색 유니폼])
	--> 우유 많이 먹고 설사 함
14:00 8강전(대림3동 1:0 신길3동[빨간색에 흰색 줄무니 유니폼]) --> 양수 형님 욕해서 퇴장 당함, 겨우 이김, 위에 올라가서 봄
14:50 중식(주최측에서 설렁탕 준비함)
14:00 4강전(대림3동 2:5 신길7동[빨간색에 흰색 줄무니 유니폼]) --> 체력 떨어져서 후반에 골 많이 먹음
	--> 신업범 형 몸싸움하다고 쇄골 나감: 수술 예정
14:00 4강전(대림2동 3:4 양남[빨간색 유니폼]) --> 10번 기업은행 선출이 PK 얻어서 역전함
16:00 종료(자전거 타고 감)
17:00 다솜 식당(삼겹살) --> 회에서 쏨
20:00 최선형 집 방문(신도림역 근처) --> 선이형 아들에게 만원 줌
22:30 종료
22:50 귀가
22:30 취침
==============================================================================================================

- 영등포 생활 체육 조기회 분석
01. 대림1동(빨간색 유니폼): 보통
02. 대림2동(대호, 흰색 유니폼): 강팀, 조직력 뛰어남
03. 대림3동(파란색, 빨간색 유니폼): 강팀, 재식이와 수호가 윙과 수비에서 잘 해줌

04. 당산1동
05. 당산2동(파란색 유니폼): 보통
06. 당산3동(빨간색 유니폼): 보통

07. 신길1동(녹색 유니폼, 전북 유니폼): 보통, 외국인(모로코), 맥주
08. 신길3동 
09. 신길4동
10. 신길5동 
11. 신길6동(빨간색 유니폼): 보통, 우리팀과 같은 유니폼
12. 신길7동(빨간 흰줄무늬 유니폼): 강팀, 작년 우승팀

13. 문래1동(빨간색 흰줄무늬): 보통
14. 문래2동
15. 문래3동

16. 영등포1동
17. 영등포2동
  
18. 양평1동
19. 양평2동

20. 양남(빨간색 유니폼): 강팀, 올해 우승팀, 10번이 기업은행 선수 출신
21. 신호(파란 유니폼): 보통
22. 신광(흰색유니폼): 강팀, 조직력 뛰어남
23. 도림
24. 도신(흰색 유니폼): 보통, 도신초교, 골기퍼 잘함.
25. 문일(흰색 유니폼): 보통
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.09.26(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:45 ~ 18:30  ==> 이진우 이사가 DB와 소스 까보면서 직접 교체를 지시(성질나서 밖으로 나감)

- 휠라 코리아 차세대 통합ERP Prj[★]
- 권한 수정
==============================================================================================================

- REGEXP_LIKE 제거
1. 이전:
<if test="@kr.co.fila.common.util.MyBatisUtils@isNotEmpty(usrNmSrch)">
	AND ( REGEXP_LIKE(A.USR_ID, #{usrNmSrch, jdbcType=VARCHAR}, 'ix')			-- 사용자ID(사용자ID/명)
		OR REGEXP_LIKE(A.USR_NM, #{usrNmSrch, jdbcType=VARCHAR}, 'ix')			 
	)
</if> 

2. 수정:  
 <if test="@kr.co.fila.common.util.MyBatisUtils@isNotEmpty(usrNmSrch)">
	AND (A.USR_ID LIKE TRIM(#{p_usrNm}) || '%'					-- 사용자ID/명 조회 
		OR A.USR_NM LIKE TRIM(#{p_usrNm}) || '%')
</if>  

 <if test="@kr.co.fila.common.util.MyBatisUtils@isNotEmpty(usrIdSrch)">
	AND A.USR_ID LIKE TRIM(#{usrIdSrch}) || '%'		-- 사용자ID  
</if>  
<if test="@kr.co.fila.common.util.MyBatisUtils@isNotEmpty(usrNmSrch)">
	AND A.USR_NM LIKE TRIM(#{usrNmSrch}) || '%'		-- 사용자명  
</if>
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.09.27(화) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 06:30 ~ 21:00  ==> 조대표님에게 메일 발송(롯데면세점 투입 결정), 곽차장 휴가 문제로 이이사와 충돌

- 휠라 코리아 차세대 통합ERP Prj[★]
- 브랜드 권한 수정
1. 대표 브랜드 공통 브랜드에 추가 
<!--// 01. ih_select_commcd 브랜드 조회 UDC 처리: brndSelAllYn="Y"  //-->	OK @@@ 
<!--// 02. ih_select_commcd_m 브랜드 조회 UDC 처리(Multi 콤포넌트): brndSelAllYn="Y"   //-->	OK @@@
<!--// 03. ih_select_commcd_atc 브랜드 조회 UDC 처리(AutoComplete): brndSelAllYn="Y"  //-->	OK @@@
<!--// 01. ih_select_commBrnd 브랜드 조회 UDC 처리 //-->	 OK @@@
<!--// 02. ih_select_commBrnd_m 브랜드 조회 UDC 처리(Multi 콤포넌트) //-->   OK @@@
<!--// 03. ih_select_commBrnd_atc 브랜드 조회 UDC 처리(AutoComplete) //-->   OK @@@
==============================================================================================================

- 프로그램별 브랜드권한 관리(/CM_PgUsrBrnd.xml)  --> 중지
1. BrndLmtPgId  --> ibx_brndLmtPgId
==============================================================================================================

- 매장 분배 등급(/SA_ShopDstrGrd.xml)
1. 수정 처리: /ih_commCode.xml 파일에서 syncYn="false" 수정
<w2:ih_select_commcd_atc id="sbx_brndCd" grpCd="001" jobGbn="PN" appearance="minimal" 
	direction="auto" disabled="false" disabledClass="w2selectbox_disabled" allOption="false" chooseOption="false" chooseOptionLabel=""   
	displayMode="label" displayType="1" mandatory="true" syncYn="false"
	optionOrder="false" style="width:130px;" userData1="data" submenuSize="auto">
</w2:ih_select_commcd_atc> 
==============================================================================================================

- 단체주문 건 출고의뢰(/SA_GrpOrdOreq.xml)	
1. 수정 처리: /ih_commCode.xml 파일에서 syncYn="false" 수정
<w2:ih_select_commBrnd_atc allOption="" appearance="minimal" chooseOption="false" chooseOptionLabel="-선택-"
	direction="auto" disabled="false" displayMode="label" displayType="1" ev:onviewchange="scwin.component_onviewchange" id="sbx_brndCd"
	invalidMessageFunc="cmCommon.invalidMessage('브랜드')" mandatory="true" ref="data:dma_request.srchBrndCd" style="width:130px;"
	submenuSize="auto" syncYn="false">
</w2:ih_select_commBrnd_atc> 
==============================================================================================================

/**
* 권한그룹 행삭제 처리  
*/
scwin.btn_authGrpGridRowRemove_onclick = function() {
	//$w.log("[/CM_AuthGrpPgAuth.xml] [btn_authGrpGridRowRemove_onclick()] ==> [권한그룹 행삭제 처리] [TEST_01]" );
	
	var cRow = grd_authGrpList.getFocusedRowIndex();		//현재행
	var authGrpCnt = dlt_authGrpList.getCellData(cRow, "authGrpCnt" );		//메뉴유형명칭 : 기본값으로 본사용을 표시
	var useYn = dlt_authGrpList.getCellData(cRow, "useYn" );	//사용여부 
 
	if(authGrpCnt > 0 && useYn == "Y") { 	//권한그룹이 존재하면
		alert("프로그램권한에 자료가 있어 삭제할 수 없습니다. 사용유무를 N로 변경하십시요. "); 
		return false;
	}
	
	if(grd_authGrpList.getTotalRow() > 0) { 	//신규행이 아니면  
		if ("C" == grd_authGrpList.getFocusedRowStatus()) { //신규행 삭제  
		}				
		
		cmCommon.delRow(grd_authGrpList, "");
		
		//row변경 이벤트
		scwin.grd_authGrpList_onrowindexchange(grd_authGrpList.getFocusedRowIndex(),-1);
	}  
};
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.09.28(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 21:00  ==>  

- 휠라 코리아 차세대 통합ERP Prj[★]
- 권한그룹별 프로그램권한(/CM_AuthGrpPgAuth.xml) 수정
1. 저장 부분 수정(체크된 것만 저장 처리)
==============================================================================================================

- 개인정보 변경 팝업 화면(/CM_IndiInfrChng_P.xml) 수정
1. KSignSecureDB 암호화 분석 
2. 최초 오픈할 때 PW_RST_YN = ‘N’ 인지 확인 하고 활성화 시킬 
==============================================================================================================

- 공통 브랜드 설정 수정 --> 완료 @@@@
1. select box 브랜드 조회 수정
 1) 개인 대표 브랜드를 디폴트로 설정
 2) 전체 브랜드 조회일때는 brndSelAllYn="Y" 로 설정
 --> 브랜드전체조회여부(brndSelAllYn): N:사용자 브랜드 조회(D), Y:전체 브랜드 조회)   
 3) 프로그램/사용자별 브랜드제한 처리
 4) 업무구분(CM:공통, CS:고객, PN:기획, PO:구매, PP:생산, SA:영업, SB:수불, SM:영업관리, SP:매장포탈, SR:협력업체, EI:수출입, WM:물류) 
==============================================================================================================

[09/28] [수정 사항] 수정 처리했습니다. --> DEFC-0000007051 --> 완료 @@@@
1. 내용: [TO-DO 결재건수 조회] To-do List에 내가 등록한 승인 건에 대한 확정유무도 확인할 수 있었으면 함
==============================================================================================================

- 비밀번호 체크 정규식
http://blog.naver.com/PostView.nhn?blogId=0131v&logNo=110116184746

/**
 * 비밀번호 정규식 유효성 검증 
 * @param sValue - 체크 할 값
 * 		  type - 체크 유형
 * 				 01: 문자, 특수문자(2종류), 02: 02. 문자, 숫자(2종류), 03: 숫자, 특수문자(2종류), 04: 문자, 특수문자, 숫자(3종류)
 * @return  : 0(정상) / 1(에러값)
 */
cmCommon.pwCheckRegChar = function(sValue, type){
	//$w.log("[/cmCommon.js] [pwCheckRegChar()] ==> [비밀번호 정규식 유효성 검증] [TEST_01] [sValue]"+ sValue );
	
cmCommon.pwCheckRegChar = function(sValue, type){
	//$w.log("[/cmCommon.js] [pwCheckRegChar()] ==> [비밀번호 정규식 유효성 검증] [TEST_01] [sValue]"+ sValue );
	
	var nRtnVal = 0;   
	var check21 = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-]).{10,16}$/; 	// 01. 영문, 특수문자(2종류) 10 ~ 16자리
	var check22 = /^(?=.*[ㄱ-?])(?=.*[!@#$%^*+=-]).{10,16}$/; 		// 02. 한글, 특수문자(2종류) 10 ~ 16자리  
	var check31 = /^(?=.*[a-zA-Z])(?=.*[0-9]).{10,16}$/; 			// 03. 영문, 숫자(2종류) 10 ~ 16자리
	var check32 = /^(?=.*[ㄱ-?])(?=.*[0-9]).{10,16}$/; 			// 04. 한글, 숫자(2종류) 10 ~ 16자리 
	var check41 = /^(?=.*[a-zA-Z])(?=.*[0-9]).{10,16}$/; 			// 05. 숫자, 특수문자(2종류) 10 ~ 16자리 
	var check51 = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}$/;  		// 06. 영문, 특수문자, 숫자(3종류) 8 ~ 16자리 
	var check61 = /^(?=.*[ㄱ-?])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}$/;  		// 07. 한글, 특수문자, 숫자(3종류) 8 ~ 16자리  
	//$w.log("[/cmCommon.js] [pwCheckRegChar()] ==> [비밀번호 정규식 유효성 검증_체크] [00. sValue]"+ sValue +"[type]"+ type );
  
	 switch(type){
		case "01" :		// 01. 영문, 특수문자(2종류)
			if(!sValue.match(check21)){		// 정규식 검증 실패[01. 영문, 특수문자(2종류)] 이면
				nRtnVal =  1;
			}
	 		break;
		case "02" :		// 02. 한글, 특수문자(2종류)
			if(!sValue.match(check22)){ 	// 정규식 검증 실패[02. 한글, 특수문자(2종류)] 이면
				nRtnVal =  1;
		    }
		    break;
		case "03" :		// 03. 숫자, 특수문자(2종류)
			if(!sValue.match(check31)){ 	// 정규식 검증 실패[03. 숫자, 특수문자(2종류)] 이면
				nRtnVal =  1;
			}
			break;
		case "04" :		// 04. 한글, 숫자(2종류)
			if(!sValue.match(check32)){ 	// 정규식 검증 실패[04. 한글, 숫자(2종류)] 이면
				nRtnVal =  1;
			}
			break;
		case "05" :		// 05. 숫자, 특수문자(2종류)
			if(!sValue.match(check41)){		// 정규식 검증 실패[05. 숫자, 특수문자(2종류)] 이면
				nRtnVal =  1;
			}
	 		break;
		case "06" :		// 06. 영문, 특수문자, 숫자(3종류)
			if(!sValue.match(check51)){ 	// 정규식 검증 실패[06. 영문, 특수문자, 숫자(3종류)] 이면
				nRtnVal =  1;
		    }
		    break;
		case "07" :		// 07. 한글, 특수문자, 숫자(3종류)
			if(!sValue.match(check61)){ 	// 정규식 검증 실패[07. 한글, 특수문자, 숫자(3종류)] 이면
				nRtnVal =  1;
		    }
		    break;
	} 
	$w.log("[/cmCommon.js] [pwCheckRegChar()] ==> [비밀번호 정규식 유효성 검증_체크] [00. sValue]"+ sValue 
	+"[sValue.length]"+ sValue.length +"[type]"+ type +"[nRtnVal]"+ nRtnVal );
	
	return nRtnVal;
};

/**
* 확인 버튼 클릭 이벤트(저장 처리)
*/
scwin.btn_save_onclick = function() {
	if(cmCommon.isNull(ibx_newPw.getValue()) == false && cmCommon.isNull(ibx_newPwCnfm.getValue()) == false) {	
	// 새 비밀번호와 새 비밀번호 확인이 NULL이 아니면
		var nPwCheckRegChar1 = cmCommon.pwCheckRegChar(sNewPwCnfm, "01"); 	// 01. 영문, 특수문자(2종류) 10 ~ 16자리 체크
		var nPwCheckRegChar2 = cmCommon.pwCheckRegChar(sNewPwCnfm, "02"); 	// 02. 한글, 특수문자(2종류) 10 ~ 16자리 체크
		var nPwCheckRegChar3 = cmCommon.pwCheckRegChar(sNewPwCnfm, "03"); 	// 03. 영문, 숫자(2종류) 10 ~ 16자리 체크
		var nPwCheckRegChar4 = cmCommon.pwCheckRegChar(sNewPwCnfm, "04"); 	// 04. 한글, 숫자(2종류) 10 ~ 16자리 체크 
		var nPwCheckRegChar5 = cmCommon.pwCheckRegChar(sNewPwCnfm, "05"); 	// 05. 숫자, 특수문자(2종류) 10 ~ 16자리 체크
		var nPwCheckRegChar6 = cmCommon.pwCheckRegChar(sNewPwCnfm, "06"); 	// 06. 영문, 특수문자, 숫자(3종류) 8 ~ 16자리 체크
		var nPwCheckRegChar7 = cmCommon.pwCheckRegChar(sNewPwCnfm, "07"); 	// 07. 한글, 특수문자, 숫자(3종류) 8 ~ 16자리 체크 
		var nPwCheckRegCharTot = nPwCheckRegChar1 + nPwCheckRegChar2 + nPwCheckRegChar3 + nPwCheckRegChar4
								+ nPwCheckRegChar5 + nPwCheckRegChar6 + nPwCheckRegChar7; 
		$w.log("[/CM_MblCertMngm.xml] [btn_save_onclick()] ==> [확인 버튼 클릭 이벤트] [sNewPwCnfm]"+ sNewPwCnfm
		+"[nPwCheckRegCharTot]"+ nPwCheckRegCharTot );

		if(nPwCheckRegCharTot > 6) // 비밀번호 정규식 유효성 검증 대상 7개 모두 에러이면
		{
			alert("문자, 숫자, 특수문자 중 2종류 조합하여 10~16자리(3종류는 8~16자리)로 구성하십시요."); 
			ibx_newPw.focus();	// 새 비밀번호 포커스 설정 
			return false;  
		}  
	}
	if(confirm(cmCommon.formattingMessage(FILAErpMessage.INF_0006, "저장"))){  	
	// 저장 confirm ==> INF_0006: "{0} 하시겠습니까?", 
		cmCommon.saveExecuteSbm("sbm_saveIndiInf", true); 
	}
};
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.09.29(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 21:00  ==> 서동근 과장에게 노트북 SSD 256G 추가 요청(다음주에 택배로 보내준다고 함)

- 휠라 코리아 차세대 통합ERP Prj[★] 
- 개인정보 변경 팝업 화면(/CM_IndiInfrChng_P.xml) 수정
1. KSignSecureDB 암호화 분석 
2. 최초 오픈할 때 PW_RST_YN = ‘N’ 인지 확인 하고 활성화 시킬 
3. 비밀번호 정규식 체크 TEST @@@ 
TESTaa진만!@		--- 01. 문자, 특수문자(2종류)
TESTaa진만222		--- 02. 문자, 숫자(2종류)
4444444332!@		--- 03. 숫자, 특수문자(2종류) 
TESTaa진태102!@	--- 04. 문자, 특수문자, 숫자(3종류)
TESTaa진태ta		--- No 
==============================================================================================================
 
- DB 암호화(Mybatis)
http://huskdoll.tistory.com/192
==============================================================================================================

- Character Functions (문자형 함수)
http://www.gurubee.net/lecture/1025
==============================================================================================================

- NVL2 함수
1. NVL2 (A, B, C): A값이 NULL 아니면 B, NULL 이면 C보이기
http://jinuws.tistory.com/entry/NVL-NVL2-%ED%95%A8%EC%88%98
==============================================================================================================

[09/29] [확인 사항] 수정 처리했습니다. --> DEFC-0000006515  --> 완료 @@@@
1. 내용: [개인정보변경]  
2. 의견
  1) SSO로 연동되기에 비밀번호를 변경를 여기서 할 필요가 없을듯 합니다  
   ==> 현재 이진우 이사님과 전산 담당자와 협의가 진행 중인 것으로 알고 있습니다.

   2) 현재 사용중인 비밀번호를 보여줄 필요가 있을까요?
   ==> 현재 사용중인 비밀번호 마스킹 처리 했습니다.[완료]

   3) 대표브랜드로 일부 브랜드가 안뜹니다. 
   ==> 대표브랜드 담당자이신 이진우 이사님께 문의한 결과 사용자별 브랜드 테이블(CM_USR_BRND)에서 일부 브랜드코드에 
	브랜드명이 안 가져올 수가 있다고 합니다.	
==============================================================================================================
 
[09/29] [수정 사항] 수정 처리했습니다. --> DEFC-0000006515  --> 완료 @@@@
1. 내용: [프로그램관리] 그리드의 특수버튼이미지 선택 selectbox에서 한글 등 입력 시 자동 완성 되도록
==============================================================================================================

[09/29] [수정 사항] 수정 처리했습니다. --> DEFC-0000007360  --> 완료 @@@@
1. 내용: [To Do 리스트 ] 요청 상태의 목록만 나와야함
==============================================================================================================
 
[09/29] [확인 사항] 수정 처리했습니다. --> DEFC-0000007364  --> 완료 @@@@
1. 내용: [To Do 리스트] 왼쪽 메뉴의 TO-DO의 카운트는 31인데 조회 시 31이 아님 ==>
조회시에는 요청기간이 조회조건에 포함되어 조회 결과가 다를 수 있습니다. --> 그래도 이상이 있으시면 To Do 리스트 화면을 캡쳐해서
다시 올려주세요.
==============================================================================================================

[09/29] [수정 사항] 수정 처리했습니다. --> DEFC-0000007359 --> 완료 @@@@
1. 내용: [사용자접속현황] 사용자명으로도 검색 가능하게 검색 조건 추가
==============================================================================================================
 
[09/29] [수정 사항] 수정 처리했습니다. --> DEFC-0000007349 --> 완료 @@@@
1. 내용: [사용자별 프로그램추가권한] 좌측 그리드 부서 -> 부서/매장명/협력사명
==============================================================================================================
 
[09/29] [수정 사항] 수정 처리했습니다. --> DEFC-0000007409 --> 완료 @@@@
1. 내용: [사용자별 프로그램추가권한] 사용자ID 입력후 'TAB', 'Enter' 키 누르면 값 사라짐. 사용자ID 입력후 팝업검색 누르면 값 전달 안됨.
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2016.09.30(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:30 ~ 21:00  ==> 

- 휠라 코리아 차세대 통합ERP Prj[★]
[09/30] [수정 사항] 수정 처리했습니다. --> DEFC-0000007351 --> 완료 @@@@
1. 내용: [사용자별 프로그램추가권한] 권한 Y로 수정 후 저장은 되는데 다시 N으로 수정하여 저장하면 수정 안됨
==============================================================================================================

- 수불 평균단가 계산(/SB_ClpyAgvCostCalc.xml) 수정
1. 쿼리 튜닝(DBA에서 제공해줌)
==============================================================================================================

[09/30] [수정 사항] 수정 처리했습니다. --> DEFC-0000007433 --> 완료 @@@@
1. 내용: [상품이미지다운로드조회] 다운로드 받은 이미지가 전면인지 후면인지등을 알수가 없음.
	===> 이미지구분 칼럼 추가 했습니다.
==============================================================================================================

[09/30] [수정 사항] 수정 처리했습니다. --> DEFC-0000007434 --> 완료 @@@@
1. 내용: [상품이미지다운로드조회] 다운로드 상세 팝업에서 이미지 클릭시 아무것도 안나오고 있음
==============================================================================================================
    
[09/30] [수정 사항] 수정 처리했습니다. --> DEFC-0000007436 --> 완료 @@@@
1. 내용: [상품이미지다운로드조회] 상세 팝업에서 이미지가 작아 구별이 안됨. 마우스 올렸을때 큰 이미지가 나오도록 수정
	===> 이미지에 마우스를 클릭 했을 때 큰 이미지가 나오도록 수정 했습니다.
==============================================================================================================

[09/30] [확인 사항] 확인 처리했습니다. --> DEFC-0000007426 --> 완료 @@@@
1. 내용: [상품이미지목록조회] 그리드의 변경 버튼 클릭 시 이미지와 같은 alert 뜸 ==> 대분류(브랜드코드)는
파일 업로드시 폴더 경로를 생성하므로 대분류(브랜드코드)가 없으면 업로드가 불가[필수]하게 처리 했습니다
실제 파일 경로: /image/prodimg/2016/1100/F1CDY0002/F1CDY0002_GPK/F1CDY0002_GPK_01.jpg
--> 1100(FILA: 대분류(브랜드코드))
==============================================================================================================

[09/30] [수정 사항] 수정 처리했습니다. --> DEFC-0000007435 --> 완료 @@@@
1. 내용: [상품이미지목록조회] 이미지가 작아 구별이 안됨.  마우스 올렸을때 큰 이미지가 나오도록 수정 
	===> 정상적으로 이미지 업로드된 이미지에 마우스 올렸을때 큰 이미지가 나오도록 수정 했습니다.
==============================================================================================================
 
[09/30] [수정 사항] 수정 처리했습니다. --> DEFC-0000007423 --> 완료 @@@@
1. 내용: [상품이미지목록조회] 이미지와 같이 조회 조건을 주고 검색 시 상품 조회가 안됨
	===> 개발서버, 운영서버에서 정상 조회되는 것 확인 했습니다.  
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■