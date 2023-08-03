 
  /* [@_T] [T_01] 목록 조회(프로젝트 WBS 코드 관리) ==> [/ProjectWbsCodeMgtMapper.xml.readList()] [22.09.26, by 진태만] */ 
SELECT A.WBS_CODE_ID
            , A.WBS_CODE     /* WBS 코드 */
            , A.WBS_TY        /* WBS 유형 */
            , CASE A.WBS_TY WHEN 'PT' THEN '일반(Task/Activity)' WHEN 'MS' THEN 'Gate' ELSE A.WBS_TY END AS WBS_TY_NM         /* WBS 유형 명 */
            , A.WBS_NM        /* WBS 이름 */
            , A.SORT_ORDR     /* 정렬순서 */
            , CASE A.NEC_YN WHEN '1' THEN '예' WHEN '0' THEN '아니오' ELSE A.NEC_YN END AS NEC_YN_NM       /* 필수여부 */
            , CASE A.USE_YN WHEN '1' THEN '사용' WHEN '0' THEN '미사용' ELSE A.USE_YN END AS USE_YN_NM      /* 사용 여부 */
FROM TB_COM_WBS_CD A    /* 01. 공통_WBS_코드 TB */
WHERE A.WBS_TMPL_VER_ID = '761D3KAUP000006MZ0' 	   /* WBS템플릿버전ID */
    -- AND  A.UPPER_WBS_CODE_ID IS NULL 
ORDER BY SORT_ORDR
;    
-- ==============================================================================================================

/* [@_T] 목록 조회(프로젝트 WBS 템플릿 관리) ==> [/TbPrjctWbsTmplatCodeMapper.xml.readList()] [22.09.27, by 진태만] */
SELECT PWTV.WBS_TMPLAT_VER_ID
	 , PWT.TMPLAT_CODE
	 , dbo.FN_TITLE(PWT.TMPLAT_NM_TITLE, 'ko_KR', 'ko_KR', DEFAULT) AS TMPLAT_NM
	  ,PWT.PRJCT_BSNS_SE /* 프로젝트사업구분 */
	  ,ISNULL(DBO.FN_CODE_NAME('BSNS_SE', PWT.PRJCT_BSNS_SE,   'ko_KR', 'ko_KR', DEFAULT),'해당없음') AS PRJCT_BSNS_SE_NM /* 프로젝트사업구분명 */
	  ,PWT.PRJCT_TY /* 프로젝트유형 */
	  ,ISNULL(DBO.FN_CODE_NAME('PRJCT_TY', PWT.PRJCT_TY,   'ko_KR', 'ko_KR', DEFAULT),'해당없음') AS PRJCT_TY_NM /* 프로젝트유형명 */
	  ,PWT.PRJCT_SE /*  프로젝트구분 */
	  ,ISNULL(DBO.FN_CODE_NAME('PRJCT_SE', PWT.PRJCT_SE,   'ko_KR', 'ko_KR', DEFAULT),'해당없음') AS PRJCT_SE_NM /*  프로젝트구분명 */
	  ,PWT.PRJCT_CHARCT /* 프로젝트성격 */
	  ,ISNULL(DBO.FN_CODE_NAME('PRJCT_CHARCT', PWT.PRJCT_CHARCT,   'ko_KR', 'ko_KR', DEFAULT),'해당없음') AS PRJCT_CHARCT_NM /* 프로젝트성격명 */
	 , PWTV.TMPLAT_VER
	 , PWTV.DCSN_YN
	 , CASE PWTV.DCSN_YN WHEN '1' THEN '확정' WHEN '0' THEN '미확정' ELSE PWTV.DCSN_YN END AS DCSN_YN_NM
	 , dbo.FN_PERSON_NAME(PWTV.DCSN_PSN_ID, 'ko_KR') AS DCSN_PSN_NM
	 , PWTV.DCSN_DT
	 , CASE PWT.USE_YN WHEN '1' THEN '사용' WHEN '0' THEN '미사용' ELSE PWT.USE_YN END AS USE_YN_NM
FROM   TB_PRJCT_WBS_TMPLAT_VER PWTV WITH (NOLOCK)
	   INNER JOIN TB_PRJCT_WBS_TMPLAT PWT WITH (NOLOCK) ON PWT.WBS_TMPLAT_ID = PWTV.WBS_TMPLAT_ID
WHERE  1 = 1
AND    PWTV.TMPLAT_VER = (
			SELECT MAX(PWTV2.TMPLAT_VER)
			FROM   TB_PRJCT_WBS_TMPLAT_VER PWTV2 WITH (NOLOCK)
			WHERE  PWTV2.WBS_TMPLAT_ID = PWTV.WBS_TMPLAT_ID
		   )
;    
-- ==============================================================================================================
