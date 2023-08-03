

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+-------------------------------------------// 01. Main //-----------------------------/ 2018.11.14(수) /-----+ 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

 
-- 기초코드-소분류 정보 조회 @@@
SELECT A.*
FROM HSBCA100 A
;   
-- ======================================================================================================
 
-- 강관수입검사 정보 조회 @@@  ===>  /* 강관수입검사 정보 수정 ==> [/qi/QI_SteelPipeImpInsp_U04.xml] [2018.05.31, by LEEJH] */ 
SELECT   A.CONF_NO AS 결재번호, A.IQC_NO AS 검사번호, A.IQC_DT AS "검사일자"
        , (SELECT CUR_STATUS FROM HSCMA100 WHERE WORK_FLOW_NO = A.CONF_NO) AS "승인상태CD(CONF_STATE_CD)"  
        , FN_CM_GET_APPROVE_STATUS(A.CONF_NO) AS "승인상태(CONF_STATE)", (SELECT NM FROM HSSCU100 WHERE USER_ID = A.IQC_ENO) AS "검사자", A.IQC_ENO
        , (SELECT NM FROM HSSCU100 WHERE USER_ID = A.EXAM_UID) AS "검토자(검토내용)", A.EXAM_DT AS "검토일자(검토내용)", A.EXAM_RET AS "검토반려사유(검토내용)"
        , (SELECT NM FROM HSSCU100 WHERE USER_ID = A.CONF_UID) AS "승인자(승인내용)", A.CONF_DT AS "승인일자(승인내용)", A.CONF_RET AS "승인반려사유(승인내용)"
        , A.CDT AS CDT_90
        , NVL2(A.CDT, SUBSTR(A.CDT, 0, 4) ||'-'|| SUBSTR(A.CDT, 5, 2) ||'-'|| SUBSTR(A.CDT, 7, 2)
		    ||' '|| SUBSTR(A.CDT, 9, 2) ||':'|| SUBSTR(A.CDT, 11, 2) ||':'|| SUBSTR(A.CDT, 13, 2), NULL) AS "등록일시_______(CDT)" 
        , (SELECT NM FROM HSSCU100 WHERE USER_ID = A.MID) AS 수정자, A.MDT--, TO_CHAR(A.MDT,'YYYY-MM-DD HH24:MI:SS')  AS 수정일시
        , A.* 
FROM HSQMM140 A     -- 강관수입검사 정보 TB
WHERE 1 = 1
      AND A.IQC_NO = '20180920-14-0051'    -- 검사번호 
     --  AND A.CONF_NO = '20180816QI14005'   -- 결재번호 @@@
ORDER BY A.CDT DESC
;
---------------------------------------------------------------------------------------------

-- 검사마스터 정보 조회 @@@  ===> 
SELECT   A.CONF_NO AS 결재번호, A.IQC_NO AS 검사번호, A.IQC_DT AS "검사일자"
        , (SELECT CUR_STATUS FROM HSCMA100 WHERE WORK_FLOW_NO = A.CONF_NO) AS "승인상태CD(CONF_STATE_CD)"  
        , FN_CM_GET_APPROVE_STATUS(A.CONF_NO) AS "승인상태(CONF_STATE)"
        , (SELECT NM FROM HSSCU100 WHERE USER_ID = A.EXAM_UID) AS "검토자(검토내용)", A.EXAM_DT AS "검토일자(검토내용)", A.EXAM_RET AS "검토반려사유(검토내용)"
        , (SELECT NM FROM HSSCU100 WHERE USER_ID = A.CONF_UID) AS "승인자(승인내용)", A.CONF_DT AS "승인일자(승인내용)", A.CONF_RET AS "승인반려사유(승인내용)"
        , NVL2(A.CDT, SUBSTR(A.CDT, 0, 4) ||'-'|| SUBSTR(A.CDT, 5, 2) ||'-'|| SUBSTR(A.CDT, 7, 2)
		    ||' '|| SUBSTR(A.CDT, 9, 2) ||':'|| SUBSTR(A.CDT, 11, 2) ||':'|| SUBSTR(A.CDT, 13, 2), NULL) AS "등록일시_______(CDT)" 
        , (SELECT NM FROM HSSCU100 WHERE USER_ID = A.MID) AS 수정자, A.MDT--, TO_CHAR(A.MDT,'YYYY-MM-DD HH24:MI:SS')  AS 수정일시
        , A.* 
FROM HSQMM100 A     -- 검사마스터 정보 TB
WHERE 1 = 1    
   -- AND A.CID = '1519927'      -- 등록자ID
   -- AND A.IQC_NO = '20180903-14-0005'   -- 검사번호 
   AND A.CONF_NO = '20180920QI14051'   -- 결재번호 @@@
ORDER BY A.CDT DESC
; 
--------------------------------------------------------------------------------------- ------------ COMMIT

-- 결재FLOW헤더 정보 조회  @@@    ===> /* 결재 검토/승인 처리(Procedure) ==> [cm:CM_AppvDlng_I01.xml] [2018.08.13, by 진태만] */  
SELECT   A.WORK_FLOW_NO AS 결재번호, A.WORK_PK_NO AS "업무테이블PK(검사번호)", A.CUR_STATUS AS "현재처리상태CD"
           , FN_CM_GET_APPROVE_STATUS(A.WORK_FLOW_NO) AS "현재처리상태명"  
         , (SELECT NM FROM HSSCU100 WHERE USER_ID = A.REQ_USER_ID) AS 요청자 
         , (SELECT NM FROM HSSCU100 WHERE USER_ID = A.CHK_USER_ID) AS 검토자 
         , (SELECT NM FROM HSSCU100 WHERE USER_ID = A.APP_USER_ID) AS 승인자 
         , (SELECT NM FROM HSSCU100 WHERE USER_ID = A.CID) AS 등록자, A.DEL_FLAG AS 삭제여부 
         , NVL2(A.CDT, SUBSTR(A.CDT, 0, 4) ||'-'|| SUBSTR(A.CDT, 5, 2) ||'-'|| SUBSTR(A.CDT, 7, 2)
		    ||' '|| SUBSTR(A.CDT, 9, 2) ||':'|| SUBSTR(A.CDT, 11, 2) ||':'|| SUBSTR(A.CDT, 13, 2), NULL) AS "등록일시_______(CDT)" 
       , A.* 
FROM HSCMA100 A     -- 결재FLOW헤더정보 정보 TB
WHERE 1 = 1    
  -- AND A.CID = '1519927'      -- 등록자ID 
  -- AND A.WORK_PK_NO = '20180903-14-0005,'   -- 업무테이블PK(20180713-14-0022,): 검사번호
  AND A.WORK_FLOW_NO = '20180920QI14051'   -- 결재번호 @@@
ORDER BY A.CDT DESC
;
------------------------------------------------------------------

-- 승인상태CD 변경 처리 @@@ --> 검토대기(CHK_WAIT)로 변경 후 화면 단에서 삭제 처리 해야 함.  ==>   COMMIT
-- UPDATE HSCMA100 A     -- 결재FLOW헤더정보 TB
SET A.CUR_STATUS = 'CHK_WAIT' 		-- 승인상태CD 변경: 승인대기(APP_WAIT) --> 검토대기(CHK_WAIT)
WHERE 1 = 1
	AND A.WORK_FLOW_NO IN ('20181015QI14001')    -- 결재번호 
    -- AND A.WORK_FLOW_NO IN ('20181015QI14001', '20181015QI14002', '20181015QI14003')    -- 결재번호 
;
------------------------------------------------------------------------------------------------ 

-- 결재FLOW상세 정보 조회  @@@ ===> 
SELECT  A.WORK_FLOW_NO AS 결재번호, A.WORK_SEQ AS 결재순번, A.PROC_STATUS AS "처리상태CD", A.PROC_DESC AS 처리사유 
        , A.PROC_USER_ID  AS "처리자__검토자, 승인자"
        , A.REJECT_DESC AS "반려사유__반려사유(검토내용), 반려사유(승인내용)", '' AS "처리일시__검토일자(검토내용), 승인일자(승인내용)"
        , NVL2(A.PROC_DATE, SUBSTR(A.PROC_DATE, 0, 4) ||'-'|| SUBSTR(A.PROC_DATE, 5, 2) ||'-'|| SUBSTR(A.PROC_DATE, 7, 2)  
		    ||' '|| SUBSTR(A.PROC_DATE, 9, 2) ||':'|| SUBSTR(A.PROC_DATE, 11, 2) ||':'|| SUBSTR(A.PROC_DATE, 13, 2), NULL) AS "처리일시(PROC_DATE)" 
        , NVL2(A.CDT, SUBSTR(A.CDT, 0, 4) ||'-'|| SUBSTR(A.CDT, 5, 2) ||'-'|| SUBSTR(A.CDT, 7, 2)
		    ||' '|| SUBSTR(A.CDT, 9, 2) ||':'|| SUBSTR(A.CDT, 11, 2) ||':'|| SUBSTR(A.CDT, 13, 2), NULL) AS "등록일시_______(CDT)"
        , NVL2(A.MDT, SUBSTR(A.MDT, 0, 4) ||'-'|| SUBSTR(A.MDT, 5, 2) ||'-'|| SUBSTR(A.MDT, 7, 2)
		    ||' '|| SUBSTR(A.MDT, 9, 2) ||':'|| SUBSTR(A.MDT, 11, 2) ||':'|| SUBSTR(A.MDT, 13, 2), NULL) AS "수정일시_______(MDT)"
        , (SELECT NM FROM HSSCU100 WHERE USER_ID = A.PROC_USER_ID) AS 처리자 
        , (SELECT NM FROM HSSCU100 WHERE USER_ID = A.CID) AS 등록자 
        , A.* 
FROM HSCMA150 A     -- 결재FLOW상세 정보 TB
WHERE 1 = 1
    AND A.WORK_FLOW_NO = '20180920QI14051'   -- 결재번호 NVL2(컬럼명, 반환값1, 반환값2) @@@
ORDER BY  A.WORK_SEQ, A.PROC_DATE DESC
; 
-- ======================================================================================================
 
-- 메뉴 정보 조회  @@@ ===> 
SELECT  A.*
FROM HSSCM100 A     -- 메뉴 정보 STB
WHERE 1 = 1     
	AND A.BIZ_GP = 'DS'    -- 비즈그룹코드[품질검사(QI), 협력사품질검사(VQ), 표준류관리(DS), 협력사표준류관리(VD), 기준정보(CM), 시스템관리(SY)]
ORDER BY MENU_ID
; 
-- ======================================================================================================

-- 마이 메뉴 정보 조회  @@@ ===> 87건
SELECT  A.* 
FROM HSSCM110 A     -- 마이 메뉴 정보 TB
WHERE 1 = 1    
; 
-- ======================================================================================================

-- 업무그룹정보 정보 조회  @@@ ===> 87건
SELECT   '' AS "사용자등록 정보 조회"
   --     , COUNT(*) AS "조회 갯수"
   , A.ACL_GRP_CD AS "업무그룹코드", A.ACL_GRP_NM AS "업무그룹명"  
   , A.*
FROM HSSCR100 A     -- 업무그룹정보 정보 TB
WHERE 1 = 1   
 AND A.ACL_GRP_CD = '0313268'   -- 업무그룹코드   1515815
-- ORDER BY A.CID 
;  
-- ======================================================================================================
 
-- 기초코드-대분류 정보 조회  @@@ ===> 180건
SELECT A.*
FROM HSBCA100 A 
;
------------------------------------------------------- 

--기초코드-대분류-관리항목조회  @@@ ===> 180건
SELECT A.*
FROM HSBCA150 A 
;
-- ======================================================================================================

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

-- 기초코드-소분류 정보 조회  @@@ ===> 180건
SELECT  A.*
FROM HSBCA200 A     -- 기초코드-소분류 TB
WHERE 1=1 
  --  AND A.MAIN_CD = 'SC100'		-- 대분류코드(BC111: 법인구분, CM110: 결재상태, SC100: module)
-- ORDER BY A.MAIN_CD, A.ORD_SQ  
;
-- ======================================================================================================

-- 게시판 정보 @@@ ===> 
SELECT A.* 
FROM TB_CM_BOARD A
;
-- ======================================================================================================

-- 로그인이력 정보 @@@ ===> 
SELECT A.* 
FROM TB_CM_LOGINLOG A
ORDER BY A.LOGIN_DT DESC 
;
-- ======================================================================================================
 
-- 메시지코드 정보 @@@ ===> 
SELECT A.* 
FROM TB_CM_MSGCD A
-- ORDER BY A.LOGIN_DT DESC 
;
-- ======================================================================================================

-- 첨부파일관리 정보 @@@ ===> 
SELECT A.* 
FROM TB_QA_FILEAPPEND A
-- ORDER BY A.LOGIN_DT DESC 
;
-- ======================================================================================================
 
-- 첨부파일관리 정보 TB insert query  @@@@@@@  
SELECT 
            'INSERT INTO TB_QA_FILEAPPEND('||
					 ' SEQ, FILE_EXT, FILE_GRP_ID, GRP_ID, FILE_NM,'||  	-- 파일 명 	 	 --// 5 ------ 
					 ' FILE_SIZE, REG_PRSN, REG_YMDH, MDFY_PRSN, MDFY_YMDH '|| 				-- 수정 일시 --// 10 ----- ------ 
			' ) 
 			VALUES ('||
                SEQ  			-- SEQ(NUMBER) (9)
                ||CHR(44)||CHR(39)|| FILE_EXT ||CHR(39)  						-- 파일 타입 
                ||CHR(44)||CHR(39)|| FILE_GRP_ID ||CHR(39)  				-- 파일 그룹ID
                ||CHR(44)||CHR(39)|| GRP_ID ||CHR(39)  						--    그룹ID 
                ||CHR(44)||CHR(39)|| FILE_NM ||CHR(39)  					-- 파일 명 --// 5 ------  
                ||CHR(44)||CHR(39)|| FILE_SIZE ||CHR(39)  				-- 파일 크기 	  
                ||CHR(44)||CHR(39)|| REG_PRSN ||CHR(39) 	    -- 생성자 ID			 
                ||CHR(44)||CHR(39)|| REG_YMDH ||CHR(39)  				-- 생성일	   
                ||CHR(44)||CHR(39)|| MDFY_PRSN ||CHR(39)  		-- 수정자 ID
                ||CHR(44)||CHR(39)|| MDFY_YMDH ||CHR(39)  		-- 수정 일시	 			--// 10 ----- ------ 
            ||');' 
FROM TB_QA_FILEAPPEND	 -- 첨부파일관리 정보 TB
WHERE 1 =1 
ORDER BY REG_YMDH 
;       
-- ======================================================================================================

-- DB 테이블 조회 @@@
SELECT *
FROM USER_TABLES
ORDER BY TABLE_NAME
; 
--------------------------------------------------------------  COMMIT, ROLLBACK

-- DB 테이블 조회 @@@
SELECT T.TABLE_NAME, T.TABLE_TYPE, T.COMMENTS AS "테이블 명(TABL_NAME)________@@"
FROM USER_TAB_COMMENTS T
WHERE 1=1   
	 -- AND T.COMMENTS IS NOT NULL
     AND upper(T.TABLE_NAME) = upper('HSSCR110')    	-- 테이블 명(hsqmm130, HSQMM130) @@@ ====> 
ORDER BY T.COMMENTS
-- ORDER BY T.TABLE_NAME
; 
----------------------------------------------------------------------------

-- DB 테이블 주석 조회 @@@
SELECT T.TABLE_NAME AS "테이블명(PHYSICAL)",  
			(SELECT COMMENTS A FROM USER_TAB_COMMENTS WHERE TABLE_NAME = T.TABLE_NAME
				AND ROWNUM = 1)  AS "테이블 명(LOGICAL)________@@",			-- 테이블명(LOGICAL)
			T.COLUMN_NAME AS "칼럼명(PHYSICAL)", 	 -- 칼럼명(PHYSICAL)
			C.COMMENTS AS "칼럼명(LOGICAL)",        	  	--칼럼명(LOGICAL)
			T.DATA_TYPE AS "칼럼 타입", 
			(CASE  WHEN T.DATA_TYPE = 'NUMBER' THEN T.DATA_PRECISION
			    ELSE   (CASE  WHEN T.DATA_LENGTH != 0 THEN T.DATA_LENGTH ELSE NULL 
			       					END)
				END) AS "칼럼 길이",
			T.DATA_SCALE,
			T.DATA_DEFAULT,
			T.NULLABLE AS "칼럼 널 여부"
FROM USER_TAB_COLUMNS T, USER_COL_COMMENTS C
WHERE T.TABLE_NAME = C.TABLE_NAME
    AND T.COLUMN_NAME = C.COLUMN_NAME
    AND upper(T.TABLE_NAME) = upper('HSCMA100')    -- 테이블 명(hsqmm130, HSQMM130) @@@ ====>
   --  AND T.TABLE_NAME = 'HSHRA200' 	 	-- 테이블명(PHYSICAL)  @@@ ====> HSSCU100, HSCMF100, HSQMM140, HSSCZMAIL
   -- AND T.COLUMN_NAME = 'CUST_CD'  	       -- 칼럼명(PHYSICAL) @@@ ====>
ORDER BY T.COLUMN_ID ASC
;  
-- =======================================================================================================================

/* 결재 검토/승인 처리(Procedure) ==> [cm:CM_AppvDlng_I01.xml] [2018.08.13, by 진태만] */  
-- EXECUTE QMSMGR.PR_CM_APPROVE_WORK
(  
    'QI14', 		-- 결재업무구분(QI11: 블랭크 수입검사, QI12: TWB 수입검사, QI13: H/S 수입검사, QI14: 강관 수입검사, QI26: H/F 공정검사(자주), ...)
    '1', 			-- 처리구분(1:최초등록 및 결재요청, 2: 검토자가 확인, 3: 검토자가 반려, 4: 검토자가 확인취소, 5: 승인자가 확인, 6: 승인자가 반려, 7: 승인자가 확인취소)
    '1519927', 				-- 검사자ID(요청자)
    '1519929',						-- 검토자ID
    '1519929', 					-- 승인자ID
        '',        			-- 반려사유 ===> null 이면 에러 @@@@@
    '20180903-14-0005'|| ',', 					-- 검사번호(업무테이블 PK)
      '',             		-- 결재번호===> null 이면 에러 @@@@@
       '' ,    				-- 처리 결과(성공 : S, 에러: E)
       ''                   -- 에러시 에러메시지
)
;  
-- =======================================================================================================================
 
-- 01. 사용자등록 정보 조회  @@@ ===> 조회 > 수정(F9) > 체크 > 커밋
SELECT A.PWD_CHG_DT AS "비밀번호 변경일"   --> 테스트: 20180102071234
        , A.* 
FROM HSSCU100 A     -- 사용자등록 정보 TB
WHERE 1 = 1   
  -- AND USER_ID = '0313268'    -- 사용자ID
  -- AND A.NM = '진태만'     	 -- // 새로운 암호(edt_newPwd): 12: ---> a1HUMd9dfxQcvs7M957fPdhhw7QGnwsRZho+76y7qRg=
   AND A.NM LIKE '%진태만%'  
  -- AND A.USER_ID IN ('1519927', '1519929','1519928','1519957','1519976','1519977','1519930')
;     
------------------------------------------------------------------------------------------------ 

/* 사용자 정보 가져오기 ===> [sy:SY_UserInfoInq_S01.xml] [2018.06.18 by 진태만] */ 
SELECT M.USER_ID    				-- 사용자ID  
    , M.PWD_NEXT_CHG_YN AS "비밀번호 다음 변경 여부"
    , TO_CHAR(TO_DATE(M.PWD_CHG_DT), 'YYYYMMDD') AS "비밀번호 변경일"   --> 테스트: 20180102071234
    , TO_CHAR(SYSDATE - 30, 'YYYYMMDD') AS "오늘 날짜 - 30"
    , TO_CHAR(SYSDATE - 90, 'YYYYMMDD') AS "오늘 날짜 - 90" 

    , (CASE WHEN (M.PWD_NEXT_CHG_YN IS NULL AND M.PWD_CHG_DT IS NOT NULL AND TO_CHAR(TO_DATE(M.PWD_CHG_DT), 'YYYYMMDD') 
                    < TO_CHAR(SYSDATE - 90, 'YYYYMMDD')) THEN 'Y'   -- 비밀번호 다음 변경 NULL, 비밀번호 변경일이 오늘 날짜 - 90일 보다 적으면 ==>  90일 후 비밀번호 변경 alert
            WHEN (M.PWD_NEXT_CHG_YN IS NOT NULL AND M.PWD_CHG_DT IS NOT NULL AND TO_CHAR(TO_DATE(M.PWD_CHG_DT), 'YYYYMMDD') 
                    < TO_CHAR(SYSDATE - 30, 'YYYYMMDD')) THEN 'Y'  -- 비밀번호 다음 변경 NOT NULL, 비밀번호 변경일이 오늘 날짜 - 30일 보다 적으면("다음에 변경") ==> 30일 후 비밀번호 변경 alert
            ELSE 'N' END) AS "01. 비밀번호 변경일 경과 여부"   -- 01. 비밀번호 변경일 경과 여부(PWD_CHG_DT_ELAP_YN)

    , M.LOGIN_DT AS "최근 로그인 시도일"    		 -- 최근 로그인 시도일
    , (CASE WHEN (M.LOGIN_DT IS NOT NULL AND TO_CHAR(TO_DATE(M.LOGIN_DT), 'YYYYMMDD') 
                < TO_CHAR(SYSDATE - 90, 'YYYYMMDD')) THEN 'Y' 
            ELSE 'N' END) AS "02. 로그인 시도일 경과 여부"    -- 02. 로그인 시도일 경과 여부(LOGIN_DT_ELAP_YN): (미접속 3개월 이상 사용자 계정은 접속 권한 회수)

       ,  '' AS NEW_PWD			    -- 새로운 암호(암호화)
        , M.PWD					    -- 비밀번호(암호화)   
        , M.KO_NM AS KO_NM		    -- 한글이름
        , '' AS EN_NM		        -- 영문이름
        , M.DEPT_CD					-- 부서코드
        , M.DEPT_NAME				-- 부서명 
        , M.LOGIN_DT     	        -- 최근 로그인 시도일
        , M.PWD_NEXT_CHG_YN         -- 비밀번호 다음 변경 여부 
        , M.TEL_NO AS TEL_NO	    -- 전화번호
        , M.MAIL_ADDR               -- 메일주소 
        , '' AS PLANT_DIV
        , '' AS  STR_LOC
        , 'OK' AS AUTH
        , M.ACL_GRP_CD   		    -- 권한그룹코드
FROM
( 
    SELECT A.USER_ID							-- 사용자ID
               , A.PWD	
               , A.PWD_CHG_DT           		-- 비밀번호 변경일 
               , A.PWD_NEXT_CHG_YN   		-- 비밀번호 다음 변경 여부
               , (SELECT MAX(TO_CHAR(TO_DATE(LOGIN_DT), 'YYYYMMDD')) AS LOGIN_DT FROM HSSCU210
                    WHERE LOGIN_ID = A.USER_ID) AS LOGIN_DT			-- 최근 로그인 시도일　 
                , A.NM AS KO_NM				-- 한글이름 
                , A.DEPT_CD						-- 부서코드
                , (SELECT MAX(DEPT_NM) AS DEPT_NM FROM HSHRA200
                    WHERE DEPT_CD = A.DEPT_CD) AS DEPT_NAME			-- 부서명
                , A.PHONE AS TEL_NO				-- 전화번호
                , A.EMAIL AS MAIL_ADDR 		-- 메일주소  
                , (SELECT MAX(ACL_GRP_CD) AS ACL_GRP_CD FROM HSSCR110 WHERE USER_ID = A.USER_ID AND MNG_YN = 'Y') AS ACL_GRP_CD   		-- 권한그룹코드
    FROM HSSCU100 A 	 -- 사용자등록 정보 TB 
    WHERE A.USER_ID = '1519927'  		-- 사용자ID
) M
;
-- =======================================================================================================================

-- 01. LOGIN 시도 횟수 정보 조회  @@@
SELECT A.USER_ID
       , A.LOGIN_FAIL_CNT AS "로그인 실패 횟수"
       , A.LOGIN_TRY_LMT_YN  AS "로그인 시도 제한 여부" 
       , TO_CHAR(TO_DATE(A.LATEST_LOGIN_DT), 'YYYY-MM-DD HH24:MI:SS') AS "최근 로그인 일시_시분초"
      -- , TO_CHAR(TO_DATE(A.LATEST_LOGIN_DT), 'YYYYMMDDHH24MI') AS "최근 로그인 일시_시분"
       , TO_CHAR(TO_DATE(A.MDT), 'YYYY-MM-DD HH24:MI:SS') AS "수정일시_00시 00분 00초"
       , A.*                                             
FROM HSSCU100 A     -- 사용자등록 정보 TB 
WHERE 1=1
  AND A.USER_ID = '1519927'     --- 로그인ID
;

-- 01. LOGIN 시도 횟수 정보 수정  @@@
UPDATE  HSSCU100 A     -- 사용자등록 정보 TB 
SET A.LOGIN_TRY_LMT_YN = 'N'			-- 로그인 시도 제한 여부 
WHERE 1=1
  AND A.USER_ID = '1519927'     --- 로그인ID
;
------------------------------------------------------------------------------------------------   COMMIT

-- 01. LOGIN 시도 횟수 정보 조회  @@@ 
SELECT  A.USER_ID AS "로그인ID"
        , A.LOGIN_FAIL_CNT AS "로그인 실패 횟수"
        , A.LOGIN_TRY_LMT_YN  AS "로그인 시도 제한 여부"  
        , TO_CHAR(TO_DATE(A.LATEST_LOGIN_DT), 'YYYY-MM-DD HH24:MI:SS') AS "최근 로그인 일시_00시 00분 00초"
        , TO_CHAR(TO_DATE(A.LATEST_LOGIN_DT), 'YYYY-MM-DD HH24:MI') AS "01. 최근 로그인 일시[비교_1]"     -- 최근 로그인 일시 @@@ 
        -- , TO_CHAR(TO_DATE(SYSDATE), 'YYYYMMDD') AS "오늘" 
        , TO_CHAR(TO_DATE(SYSDATE), 'YYYY-MM-DD HH24:MI') AS "50. 오늘[DDD]_00시 00분" 
        , TO_CHAR(TO_DATE(SYSDATE - (1 / 24 / 60 * 2)), 'YYYY-MM-DD HH24:MI') AS "51. 오늘(60분 경과 후 일시)[비교_2]"    -- 1분 지났을 때[제한 60분] @@@ 
        , (CASE WHEN (A.LOGIN_FAIL_CNT < 5 AND (LOGIN_TRY_LMT_YN IS NOT NULL OR LOGIN_TRY_LMT_YN = 'Y') AND TO_CHAR(TO_DATE(A.LATEST_LOGIN_DT), 'YYYYMMDDHH24MI')  
                    < TO_CHAR(TO_DATE(SYSDATE - (1 / 24 / 60 * 2)), 'YYYYMMDDHH24MI') ) THEN 'N'    -- (N: 로그인 시도 제한 여부 Y이고, 1분 경과 여부) ==> 01. 최근 로그인 일시(LOGIN_TRY_LMT_YN) < 51. 오늘(60분 경과 후 일시)
                WHEN LOGIN_TRY_LMT_YN IS NULL OR LOGIN_TRY_LMT_YN = 'N' THEN 'N'     -- (N: 로그인 시도 제한 여부 N)
                ELSE 'Y' END) AS "41. 로그인 시도 통합 제한 여부"     -- 41. 로그인 시도 통합 제한 여부(Y: 제한, N: 제한 없음) @@@
        , A.*                                             
FROM HSSCU100 A     -- 사용자등록 정보 TB 
WHERE 1=1
  AND A.USER_ID = '1519927'     --- 로그인ID
;
--=======================================================================================================================

/* 사용자 정보 조회 ==> [cm:CM_UsrtMngm_S01.xml, CM_UserPwdchk_S01.xml] [2018.06.18, by 진태만] */ 
SELECT A.USER_ID AS "사용자ID" 
		     , A.PWD AS "비밀번호" 
		     , A.EMAIL AS "이메일"
		     , DECODE(A.EMAIL_RCV_YN, 'Y', '1', '0') AS "E-mail 수신 여부"
		     , A.PHONE AS "핸드폰"
		     , DECODE(A.PHONE_RCV_YN, 'Y', '1', '0') AS "핸드폰 수신 여부 "
		     , DECODE(A.USE_YN, 'Y', '1', '0') AS "사용 여부"		-- 사용 여부 
		     , (CASE
	            WHEN (A.EMAIL_RCV_YN IS NULL OR A.EMAIL_RCV_YN ='N') THEN ''
	            ELSE A.EMAIL   
	        	END) AS "받는 사람 EMAIL"  	-- 받는 사람 EMAIL(E-mail 수신한 사람만 조회)
	    	, (CASE
	            WHEN (A.PHONE_RCV_YN IS NULL OR A.EMAIL_RCV_YN ='N') THEN ''
	            ELSE A.PHONE
	        	END) AS "받는 사람 핸드폰"  	-- 받는 사람 핸드폰(핸드폰 수신한 사람만 조회)   
FROM HSSCU100 A   -- 사용자 정보 TB
WHERE USER_ID = '20160103'   -- 사용자ID
	-- AND PWD = 'Bp9X2umAebhCqVbkHQgedkh1kaKtZfp6RQcXwasZdn8='		-- 비밀번호
AND USE_YN = 'Y'  		-- 사용여부
;
-- =======================================================================================================================


