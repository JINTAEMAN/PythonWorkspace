

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+----------------------------------------------// Memo(2018.08) //----------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2018.08.01(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:40 ~ 21:00 ==> 휴가1

- 휴가1[2018.08.01(수) ~ 08.03(금)]
11:00 기상
11:35 TV 시청
12:00 커피((맥심] 모카/화이트골드 320T: 티몬, 가격: 30,420원) 주문
13:00 낮잠
18:30 기상
19:40 쇼핑(농협 하나로 마트 삽교점): 냄비, 수저, 라면, 햅반, 빵 -> 29,010원
20:30 석식(라면)
01:00 취침
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.08.02(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:40 ~ 22:00 ==> 휴가2

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 메뉴 권한 설정
1. 업무그룹별 메뉴권한 등록 화면(/CM_TskGrpLyMenuAuthInput.xfdl) 파일 수정 
 1) Grid 체크박스 수정
============================================================================================================== 
 
-- 업무그룹 정보 등록 @@@
INSERT INTO QMSMGR.HSSCR100_02
(
 ACL_GRP_CD,
    ACL_GRP_NM,
    ACL_GRP_PT,
    USE_YN,
   CID,            -- 생성자ID
    CDT,
    MID,             -- 수정자ID
  MDT,
    REGISTER,	-- 이전 생성자ID(제거할 것)
    REG_DDTT,
    MODIFIER,
    MOD_DDTT
    )
    SELECT
        ACL_GRP_CD,
        ACL_GRP_NM,
        ACL_GRP_PT,
        USE_YN,
       REGISTER AS CID,            -- 생성자ID
         TO_CHAR(SYSDATE,'YYYYMMDDHH24MMSS')	AS CDT,   	-- CDT(등록일자)
        MOD_DDTT AS MID,           -- 수정자ID
         TO_CHAR(SYSDATE,'YYYYMMDDHH24MMSS') AS MDT,		-- MDT(등록일자)
    REGISTER,	-- 이전 생성자ID(제거할 것)
	REG_DDTT,   
    MODIFIER,
    MOD_DDTT
    FROM QMSMGR.HSSCR100  
;    
------------------------------------------------------------------------------------------------------
 
-- 여러 개의 칼럼 삭제 @@@   ===> 업무그룹 정보[HSSCR100], 업무그룹별 사용자등록 정보[HSSCR110]
ALTER TABLE HSSCR100
DROP (
    REGISTER 
    , REG_DDTT
    ,  MODIFIER
    ,  MOD_DDTT
)
; 
--------------------------------------------------------------------------------
 
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
============================================================================================================== 

-- 테이블 컬럼 주석의 조회 
SELECT T.COLUMN_NAME AS "칼럼명(PHYSICAL)",            -- PHYSICAL_NAME
        C.COMMENTS AS "칼럼명(LOGICAL)",         -- LOGICAL_NAME
        T.DATA_TYPE AS "칼럼 타입", 
        --T.DATA_LENGTH,
        (CASE
            WHEN T.DATA_TYPE = 'NUMBER' THEN T.DATA_PRECISION
            ELSE 
            (CASE 
                WHEN T.DATA_LENGTH != 0 THEN T.DATA_LENGTH ELSE NULL 
                END
            )
        END) AS "칼럼 길이",
        T.DATA_SCALE,
        T.DATA_DEFAULT,
        T.NULLABLE AS "칼럼 널 여부"
FROM USER_TAB_COLUMNS T, USER_COL_COMMENTS C
WHERE T.TABLE_NAME = C.TABLE_NAME
    AND T.COLUMN_NAME = C.COLUMN_NAME
    AND T.TABLE_NAME = 'HSSCR110'  -- 테이블 명
ORDER BY T.COLUMN_ID ASC
;  
--------------------------------------------------------------------------------------------------

-- 테이블 주석의 조회
SELECT  TABLE_NAME, TABLE_TYPE, COMMENTS 
FROM USER_TAB_COMMENTS
WHERE COMMENTS IS NOT NULL
    AND TABLE_NAME = 'HSSCR100'   -- 테이블 명
;   

-- 테이블 컬럼 주석의 조회  
SELECT TABLE_NAME, COLUMN_NAME, COMMENTS
 FROM USER_COL_COMMENTS
 WHERE COMMENTS IS NOT NULL 
    AND TABLE_NAME = 'HSSCR110'  -- 테이블 명
;   

-- 테이블 주석 생성 
COMMENT ON TABLE emp IS '사원'
;

-- 테이블 컬럼 주석 생성
COMMENT ON COLUMN emp.empno IS '사원번호'
;  
  
-- 테이블 럼 주석 정보 삭제
COMMENT ON COLUMN emp.empno IS ''
;
============================================================================================================== 

- Grid에서 URL ID가 존재 안하는 칼럼은 배경색(#F1F1F1) 설정
0. 전체 칼럼(ACL_ALL) ==> tooltiptext --> expr:(UI_ID == null) ? "해당 Row, 칼럼은 선택 불가 합니다." : ""
1. 업무그룹별 메뉴권한 등록 화면(/CM_TskGrpLyMenuAuthInput.xfdl) 파일에서
<Formats>
<Format id="default">
  <Columns>
    <Column size="280" />
    <Column size="80" />
    <Column size="80" />
    <Column size="80" />
    <Column size="80" />
    <Column size="80" />
    <Column size="80" />
    <Column size="96" />
  </Columns>
  <Rows>
    <Row size="32" band="head" />
    <Row size="24" />
  </Rows>
  <Band id="head">
    <Cell text="메뉴명" wordwrap="english"/>
    <Cell col="1" text="전체"/>
    <Cell col="2" text="조회[읽기]"/>
    <Cell col="3" text="신규[추가]"/>
    <Cell col="4" text="저장[수정]"/>
    <Cell col="5" text="삭제"/>
    <Cell col="6" text="인쇄[출력]"/>
    <Cell col="7" text="메뉴보기권한"/>
  </Band>
  <Band id="body">
    <Cell displaytype="tree" edittype="tree" style="align:left;background:EXPR((USE_FLAG==&apos;N&apos;)&#32;?&#32;&apos;#efefef&apos;&#32;:&#32;&apos;&apos;);background2:EXPR((USE_FLAG==&apos;N&apos;)&#32;?&#32;&apos;#efefef&apos;&#32;:&#32;&apos;&apos;);font:EXPR((DIV_LVL_NUM==1)&#32;?&#32;&apos;bold&#32;antialias&#32;9&#32;Malgun&#32;Gothic&apos;&#32;:&#32;&apos;&apos;);selectfont:EXPR((DIV_LVL_NUM==1)&#32;?&#32;&apos;bold&#32;antialias&#32;9&#32;Malgun&#32;Gothic&apos;&#32;:&#32;&apos;&apos;);" cssclass="padding7" text="bind:CAPTION1" treestartlevel="0" treelevel="bind:TREE_LEVEL"/>
    <Cell col="1" displaytype="checkbox" edittype="checkbox" style="background:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));background2:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));selectbackground:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));" text="bind:ACL_ALL" editdisplay="display" tooltiptext="expr:(UI_ID&#32;==&#32;null)&#32;?&#32;&quot;해당&#32;Row,&#32;칼럼은&#32;선택&#32;불가&#32;합니다.&quot;&#32;:&#32;&quot;&quot;"/>
    <Cell col="2" displaytype="checkbox" edittype="checkbox" style="background:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));background2:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));selectbackground:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));" text="bind:ACL_INQ_YN" editdisplay="display" tooltiptext="expr:(UI_ID&#32;==&#32;null)&#32;?&#32;&quot;해당&#32;Row,&#32;칼럼은&#32;선택&#32;불가&#32;합니다.&quot;&#32;:&#32;&quot;&quot;"/>
    <Cell col="3" displaytype="checkbox" edittype="checkbox" style="background:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));background2:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));selectbackground:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));" text="bind:ACL_REG_YN" editdisplay="display" tooltiptext="expr:(UI_ID&#32;==&#32;null)&#32;?&#32;&quot;해당&#32;Row,&#32;칼럼은&#32;선택&#32;불가&#32;합니다.&quot;&#32;:&#32;&quot;&quot;"/>
    <Cell col="4" displaytype="checkbox" edittype="checkbox" style="background:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));background2:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));selectbackground:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));" text="bind:ACL_MOD_YN" editdisplay="display" tooltiptext="expr:(UI_ID&#32;==&#32;null)&#32;?&#32;&quot;해당&#32;Row,&#32;칼럼은&#32;선택&#32;불가&#32;합니다.&quot;&#32;:&#32;&quot;&quot;"/>
    <Cell col="5" displaytype="checkbox" edittype="checkbox" style="background:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));background2:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));selectbackground:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));" text="bind:ACL_DEL_YN" editdisplay="display" tooltiptext="expr:(UI_ID&#32;==&#32;null)&#32;?&#32;&quot;해당&#32;Row,&#32;칼럼은&#32;선택&#32;불가&#32;합니다.&quot;&#32;:&#32;&quot;&quot;"/>
    <Cell col="6" displaytype="checkbox" edittype="checkbox" style="background:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));background2:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));selectbackground:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));" text="bind:ACL_PRINT_YN" editdisplay="display" tooltiptext="expr:(UI_ID&#32;==&#32;null)&#32;?&#32;&quot;해당&#32;Row,&#32;칼럼은&#32;선택&#32;불가&#32;합니다.&quot;&#32;:&#32;&quot;&quot;"/>
    <Cell col="7" displaytype="checkbox" edittype="checkbox" style="background:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;7));background2:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;7));selectbackground:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;7));" text="bind:DISP_YN" editdisplay="display" tooltiptext="더블&#32;클릭하면&#32;메뉴보기권한이&#32;&apos;전체&apos;&#32;선택,&#32;해제됩니다."/>
  </Band>
</Format>
</Formats>
 
/***********************************************************************
 * 함수명  	: fn_setBgColor
 * 설명 		: Grid에서 URL ID가 존재 안하는 칼럼은 배경색(#F1F1F1) 설정
 * params  		: sUiId(URL ID), nNo(칼럼 번호)
 * return Type 	: sRtn(배경색) 
***********************************************************************/ 
this.fn_setBgColor = function(sUiId, nNo) 
{ 
	//trace("[/CM_TskGrpLyMenuAuthInput.xfdl][fn_setBgColor()]==> [TEST_01][sUiId]"+ sUiId ); 
 
	var sRtn = "";   
 
	if(nNo == 7)		// 메뉴보기권한 칼럼에서 왔으면(배경색 설정)
	{
		sRtn = "#B6D2D6";
	} 
	else
	{ 
		if(gfn_isNull(sUiId))		// URL ID가 널이면(배경색 설정)
		{
			sRtn = "#F1F1F1";  
		} 
		else
		{
			sRtn = "#ffffffff";
		} 
	} 
	//trace("[/CM_TskGrpLyMenuAuthInput.xfdl][fn_setBgColor()]==> [TEST_end][nNo]"+ nNo +"[sRtn]"+ sRtn +"[sRtn]"+ sRtn ); 
	
	return sRtn;
} 
============================================================================================================== 
 
■■■■■■■■■■■■■■■■■■ 2018.08.03(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:50 ~ 19:40 ==> 휴가3, 서울행(20:12 ~ 22:07, 삽교역 -> 영등포역)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 강관 수입검사(/QI_SteelPipeImpInsp.xfdl) 수정
1. 강관수입 Flow 구현
============================================================================================================== 
 
- 파워포인트 템플릿
1. PPT#01 깔끔한 피피티 표지디자인(보기 > 슬라이더 마스터) ==> https://www.youtube.com/watch?v=Cfzowjg5C-Q
2. PPT#02 깔끔한 피피티 템플릿디자인 ==> https://www.youtube.com/watch?v=7B5AUhL0MU8 

- 파워포인트 탭 설정
1. 홈 > 단락: 클릭 > 탭(T)..: 클릭 >
============================================================================================================== 
 
- 최종 소스 이관
1. 개발 서버에서 운영 서버로 소스 이관(15:30)
============================================================================================================== 

- 톰캣 8 로그 보기
1. 윈도우용 Tail 프로그램 
웹 개발이나 기타 개발을 하다보면 실시간으로 로그 내용을 확인하고 싶을때가 있습니다.
유닉스 계열의 O/S에서는 "tail -f 파일명"으로 특정 파일의 변화 상태를 실시간으로 감시할 수 있지만
윈도우즈 계열은 마땅히 사용할 만한 유틸이 없습니다.
 ---------------------------------------------------------------------------------------------------

- 윈도우용 Tail 프로그램 
1. tomcat cmd 명령프롬프트 창에서 실행 로그 확인
2. mTAIL ==>http://blog.naver.com/PostView.nhn?blogId=dev4unet&logNo=120156780438
3. baretail ==> http://bigenergy.tistory.com/405
4. Windows Tail 프로그램  ==> http://bryan7.tistory.com/1009
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.08.04(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 19:40 ==>  

- 주말
08:00 기상
08:35 조식(라면)
11:20 집출발(수종)
11:30 대림역 정류장(6511번 버스: 수종)
12:40 서울대 정류장 도착
12:50 관악문화도서관 1층
13:00 관악문화도서관 식당(휴무): 밥 못 먹음
13:20 관악문화도서관 3층
14:00 관악산 계곡 어린이 물놀이장 방문(물은 더러운 편): 수종이가 좋아 함
15:00 종료
15:10 서울대 정류장 도착
16:10 대림역 정류장(6511번 버스: 수종)
16:15 구로리 공원(수종, 정성은: 수종 친구)
17:00 종료
17:10 남성 바지(남구로시장 내) ==> 바지 수선(민이네: 소금창고 명함으로 할인)
17:20 치킨(오리지널 로스트[8,900원], 갈릭 베이크[10,900원]
17:30 핫도그(2개: 수종): 우리 둥지 구로점
17:50 귀가
18:30 석식
20:30 쇼핑(이마트 구로점): 라스타 라페라리(장난감, 수종), 행사 데이즈 트렁크(팬티, 95M)
22:20 귀가 ==> 루옌 언니 생일 파티에 가서 (21시에 귀가)
23:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.08.05(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==> 

▦ 축구
08:00 기상  
09:30 조식(라면)
10:30 낮잠
11:50 기상
12:00 중식 ==> 루옌, 수종 물놀이 감
14:00 집출발
14:10 남구로시장 ==> 속옷 셋팅 구경(BYC, TRY 속옷 각각 5천원)
12:30 쇼핑(이마트 구로점): 행사 데이즈 트렁크(팬티, 95M) 6벌(각 3천원)구입 ==> 작아서 못 입음: 토요일에 반품할 것
15:40 대림운동장 
16:00 게임(은혜교회팀: 어울림 ==> 3쿼터 뜀): 34도, 무척 덥웠지만 바람이 약간 불고 구름이 많아서 참을 만 했음
18:00 종료
18:20 엘마트(빵, 우유 구입)
19:00 귀가  
19:50 집출발
20:05 대림역 7호선 마을버스 정류장(영등포04 버스 탑승)
20:30 영등포역 도착
20:49 예산행(20:49 ~ 22:36, 영등포역 -> 삽교역) 탑승
22:40 삽교역 도착(5분 연착)(황부장 자전거 타고 지나감)
23:10 귀가
23:40 TV 시청(피곤해서 참)
01:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.08.06(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 22:00 ==>  

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 운영 서버 오픈 준비
============================================================================================================== 

- 검사기준등록(/QI_InspStdInput.xfdl) 조회 속도 점검
1. 현상: 운영 서버가 데이타 건수가 100건이 넘으면 속도가 느려지는 것을 추정됨
2. 원인:  최초 조회시 1개의 Ds(ds_listMaster)에서 모두 처리할 수 있는 추가 ds_infoMaster로 생성하여
데이타가 100건 이상 조회되면 서버 조회 속도가 느려짐
3. 조치: 필요 없는 Ds 삭제할 것(유사하게 개발된 화면 모두 수정할 것)
/* 검사기준조회 ==> [qi:QI_InspStdInput_S01.xml] [2018.07.18, by 이상탁] -> 속도개선  */   --> 2609 건, 0.63 sec
	SELECT   '' AS "검사기준조회"
				--, COUNT(*) AS "조회 갯수"
				-- , A.CRE_DT AS "개정기간"  
				, A.*
FROM (
SELECT  /*+ LEADING(T001) USE_NL(T001 T002 T003) */
			  0 AS CHK
			, T001.ITM_CD
			, T002.ITM_NM 
			, T001.MODEL_CD		
			, T003.SUB_CD || ' - ' || T003.TITLE AS MODEL_NM
			, T001.INSP_BC
			, (SELECT T006.TITLE FROM HSBCA200 T006 WHERE T006.BASE_CD = T001.INSP_BC) AS INSP_NM
			, T001.REV_NO
			, MAX(T001.REV_NO) OVER (PARTITION BY T001.ITM_CD, T001.INSP_BC) MAX_REV_NO
			, T001.EO_NO
			, T001.CHK_STEP_BC
			, (SELECT T007.TITLE FROM HSBCA200 T007 WHERE T007.BASE_CD = T001.CHK_STEP_BC) AS CHK_STEP_NM
			, T001.FIX_DESC
			, T001.PHOTO1
			, T001.PHOTO2
			, T001.PHOTO3
			, FN_CM_GET_USER_NAME(T001.CRE_UID) CRE_UID
			, T001.CRE_DT
			, FN_CM_GET_USER_NAME(T001.CRE_UID) IQC_ENO 
			, T001.CRE_UID AS IQC_ENO_CD
			, T001.CONF_NO
			, (SELECT FN_CM_GET_APPROVE_STATUS(T001.CONF_NO) FROM DUAL)  AS CONF_STATE  --결재
			, (SELECT FN_CM_GET_APPROVE_STATUS(T001.CONF_NO,'CODE') FROM DUAL)  AS CUR_STATUS	--결재
			, ''  P_IN_WORK_CODE   									--결재
			, ''  P_IN_ACTION_NO  									--결재
			, ''  P_IN_REJECT_DESC  								--결재
			, T001.EXAM_UID
			, (SELECT FN_CM_GET_USER_NAME(T001.EXAM_UID) FROM DUAL) AS EXAM_UNM
			, T001.EXAM_DT
			, T001.EXAM_RET
			, T001.CONF_UID
			, (SELECT FN_CM_GET_USER_NAME(T001.CONF_UID) FROM DUAL) AS CONF_UNM
			, T001.CONF_DT
			, T001.CONF_RET
			,  (SELECT FN_CM_GET_USER_NAME(T001.CID) FROM DUAL) CID  
			, TO_CHAR(TO_DATE(T001.CDT)) AS CDT 
			,  (SELECT FN_CM_GET_USER_NAME(T001.MID) FROM DUAL) MID  
			, TO_CHAR(TO_DATE(T001.MDT)) AS MDT
FROM HSQMZ660 T001
,	 HSDMA100 T002 
,	 HSBCA200 T003	
WHERE 1=1
	AND  T001.ITM_CD   = T002.ITM_CD(+)
	AND  T001.MODEL_CD = T003.BASE_CD(+)
	AND T001.CRE_DT BETWEEN '20170806' AND '20180806'   -- 개정기간(20180709, 20180710, 20170806, 20180806)
 ) A
WHERE 1=1	
	AND A.REV_NO = A.MAX_REV_NO
ORDER BY A.ITM_NM, A.MODEL_NM, A.ITM_CD, A.INSP_BC, A.REV_NO
 ;
============================================================================================================== 

- 현대제철 메신저 암호 만료
1. 현상: Auotoway M+ 암호가 만료
 1) 그룹웨어시스템에서 암호 변경 하신 후 재로그인해주세요.
2. 조치: 현대제철 그룹웨어시스템(https://hsteelro.hyundai-steel.com)에서 로그인 갱신할 것
============================================================================================================== 
 
- 윈도우용 Tail 프로그램 사용 요청 메일(이상탁 차장에게 메일 보냄)
1. tomcat cmd 명령프롬프트 창에서 실행 로그 확인
 1) itail : http://idev.ibksystem.co.kr 에서 제작(실시간 log 확인 프로그램) ==> 운영 서버에 적용(사용 가능 허가 득함)
2. mTAIL ==>http://blog.naver.com/PostView.nhn?blogId=dev4unet&logNo=120156780438
3. baretail ==> http://bigenergy.tistory.com/405
4. Windows Tail 프로그램  ==> http://bryan7.tistory.com/1009
==============================================================================================================

- QI-01-020: 검사기준 이미지 등록 권한 수정
UPDATE HSSCR120 A   -- 업구그룹별 화면권한 정보 TB
SET A.ACL_REG_YN = 'N'      -- 메뉴_신규_권한 
		, A.ACL_DEL_YN = 'N'      -- 메뉴_삭제_권한 
WHERE 1=1
    AND A.SCR_ID = 'QI-01-020' 		-- 화면ID(메뉴ID) ==> QI-01-020: 검사기준 이미지 등록
; 
-- ========================================================================================================= 
 
- 현대제철 AP QMS 운영 서버 로그 보기(Tomca 서버로 설정됨)
1. itail 실행(실시간 log 확인 프로그램) ==> 운영 서버에 적용(사용 가능 허가 득함)
2. D:\QMS\Tomcat\logs 폴더에서 원하는 날짜에 log 선택(tomcat8_fsp-stdout.2018-08-06.log, tomcat8_fsp-stderr.2018-08-06.log)
3. clear(ESC) 후 로그 보기
========================================================================================================= 
 
- 강관 수입검사(/QI_SteelPipeImpInsp.xfdl) 수정 요청사항(고객 요청)
1. 신규 입력시 검토일자/승인일자 자동표시 제외
2. 요청상태에서 상세내용 수정시 검토대기 상태로 전환되지 않음. 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.08.07(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 05:50 ~ 21:10 ==>  

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 현대제철 Prj 1차 오픈(18시, 예산)
1. 품질검사(QI), 7. 기준정보(CM), 8. 시스템관리(SY)  ==> 3개 오픈 
2. 8월 7일(화): 울산 공장 오픈, 8월 8일(수): 예산 공장 오픈
============================================================================================================== 

- 로그 아웃 에러 수정
1. TOP 프레임(/frmTop.xfdl) 수정
 1) 현상: 로그아웃을 하면 메뉴 화면이 사라지지 않음
 2) 조치:  application.av_mdiFrame.form.btn_home_onclick();	함수 추가  
/***********************************************************************
 * 함수명  	: exitConfirmCallback
 * 설명 		: 콜백 함수
***********************************************************************/
this.exitConfirmCallback = function(sid, rtn)
{
	trace("[/frmTop.xfdl][exitConfirmCallback()] ==> [시스템 종료 콜백][TEST_01][sid]"+ sid +"[rtn]"+ rtn ); 
	
	if(rtn) 
	{ 		
		application.av_mdiFrame.form.btn_home_onclick();	 // Home 화면으로 이동하는 함수 호출(추가)
	 
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

-- 업무그룹 사용자 수정 @@@
-- UPDATE HSSCR110 A
 SET  A.MNG_YN =  'Y'    --- 메뉴 권한 사용여부
WHERE 1=1
	AND A.ACL_GRP_CD =  '260'		-- 권한그룹코드
	AND A.USER_ID =  '1515826'		-- 사용자ID
;
============================================================================================================== 

- Microsoft Word 2002를 사용하여 HTML 문서를 편집하는 방법
1. https://support.microsoft.com/ko-kr/help/310521/how-to-create-and-edit-an-html-document-with-microsoft-word-2002

- Convert document files online
https://www.aconvert.com/document/ppt-to-html/

- 파워포인트 파일 pptx를 웹파일 mht로 저장하기 : 네이버 블로그
1. http://blog.naver.com/PostView.nhn?blogId=radiobj5&logNo=221201127664&parentCategoryNo=&categoryNo=80&viewDate=&isShowPopularPosts=false&from=postView
============================================================================================================== 
 
- 운영 서버 장애 관련
1. 현상: 운영 서버가 개발 서버와 비교했을 때 똑같은 환경에 똑같은 소스를 적용 했는데 운영 서버 자체가 느림(CPU 많이 잡아 먹음)
 1) 2018/08/07 14:11:05 경에 로그인을 못할 정도로 부하가 발생(톰캣 서버를 여러 번 재시작 했는데도 같은 현상 발생)
2018/08/07 14:11:05,SYSTEM_ERROR,[SVC__00058]Exception occurred in stop() processing of Service "FSPManager#DatasourceJndiFinder"
javax.naming.OperationNotSupportedException: Context is read only
	at org.apache.naming.NamingContext.checkWritable(NamingContext.java:961)
	at org.apache.naming.NamingContext.close(NamingContext.java:758)
	at com.sz.service.jndi.DefaultJndiFinderService.stopService(Unknown Source)
	at com.sz.core.ServiceBase.stop(Unknown Source)
	at com.sz.core.DefaultServiceManagerService.changeServiceState(Unknown Source)
	at com.sz.core.DefaultServiceManagerService.changeServiceState(Unknown Source)
	at com.sz.core.DefaultServiceManagerService.changeServiceState(Unknown Source)
	at com.sz.core.DefaultServiceManagerService.changeServiceState(Unknown Source)
	at com.sz.core.DefaultServiceManagerService.changeServiceState(Unknown Source)
	at com.sz.core.DefaultServiceManagerService.destroyService(Unknown Source)
	at com.sz.core.DefaultServiceLoaderService.shutdownServiceManager(Unknown Source)
	at com.sz.core.DefaultServiceLoaderService.undeployServerMetaData(Unknown Source)
	at com.sz.core.DefaultServiceLoaderService.stopService(Unknown Source)
	at com.sz.core.ServiceBase.stop(Unknown Source)
	at com.sz.core.ServiceManagerFactory.unloadManager(Unknown Source)
	at com.sz.core.ServiceManagerFactory.unloadManager(Unknown Source)
	at com.sz.ui.ServiceLoaderFilter.destroy(Unknown Source)
	at org.apache.catalina.core.ApplicationFilterConfig.release(ApplicationFilterConfig.java:312)
	at org.apache.catalina.core.StandardContext.filterStop(StandardContext.java:4605)
	at org.apache.catalina.core.StandardContext.stopInternal(StandardContext.java:5403)
	at org.apache.catalina.util.LifecycleBase.stop(LifecycleBase.java:226)
	at org.apache.catalina.core.ContainerBase$StopChild.call(ContainerBase.java:1435)
	at org.apache.catalina.core.ContainerBase$StopChild.call(ContainerBase.java:1424)
	at java.util.concurrent.FutureTask.run(FutureTask.java:266)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:745)
2018/08/07 14:11:06,SYSTEM_INFO,[SVCMF00012]Unloading of a service definition was completed. : file:/D:/QMS/APQMS/workspace/APQMS/WebContent/WEB-INF/fsp/conf/service.xml

2. 원인:
 1) 운영 서버가 톰캣 서버 2개로 운용할 만큼은 성능이 아닌 걸로 판단됨
 2) 공정검사 모니터링(/QI_GenMonitoring.xfdl) 화면이 15초 DB 호출하고 for문을 돌면서 Grid에 작업을 하면서 부하를 잡아 먹음 
    == >서버가 부하가 엄청나게 발생되는 시점에 QI_GenMonitoring_S01 권리가 존재함(추정)
 /* 공정모니터링 조회  ==> [qi:QI_GenMonitoring_S01.xml] [2018.06.01, by 김도현] */  ==> 공정검사 모니터링(/QI_GenMonitoring.xfdl) 화면
 SELECT 
  	count(*) TOTAL,
     T002.FAC_CD, --공장코드
     DECODE(T002.FAC_CD,'4100','USA1','4200','USA1','4300','USA1','6100','YSA1','6300','YSA1','6110','YSA2','6310','YSA2','') AS FAC_NM,
     T002.LINE_CD, --호기
     SUBSTR(T002.LINE_CD,-2) AS LINE_SEQ,
     MIN(CASE WHEN T003.FCE_GUB IS NULL THEN 'BLACK' ELSE 'GREEN' END) AS STATUS_FLAG,
     NVL(min(case when T003.FCE_GUB = 'QM130100' then DECODE(T003.SHIFT_CD,'QM483300','BLUE','GREEN') end),'WHITE') as INSP_1TH_LED, --초중종
     NVL(min(case when T003.FCE_GUB = 'QM130200' then DECODE(T003.SHIFT_CD,'QM483300','BLUE','GREEN') end),'WHITE') as INSP_2ND_LED, --초중종
     NVL(min(case when T003.FCE_GUB = 'QM130300' then DECODE(T003.SHIFT_CD,'QM483300','BLUE','GREEN') end),'WHITE') as INSP_3TH_LED --초중종
 FROM HSBCC300 T001 
	 LEFT JOIN HSBCC400 T002 ON T001.FAC_CD = T002.FAC_CD
	 LEFT JOIN HSQMM100 T003 ON T002.FAC_CD = T003.IN_FAC 
		 AND T002.LINE_CD = T003.LINE_CD 
		 AND  T003.INSP_BC IN ('QM49021','QM49022','QM49023','QM49024','QM49025','QM49026') 
 AND    T003.IQC_DT = MESMGR.MON_FN_GET_BASE_DATE('')
 AND    (CASE WHEN T003.IQC_TIME BETWEEN '063000' AND '173000' THEN '주간' ELSE '야간' END)
		 = (CASE WHEN TO_CHAR(SYSDATE,'HH24:MI') BETWEEN '06:30' AND '17:30' THEN '주간' ELSE '야간' END)
 GROUP BY  T002.FAC_CD, --공장코

3. 조치:
 1) 공정검사 모니터링(/QI_GenMonitoring.xfdl) 화면를 운영 서버에서 제외 시키고 운영 서버 점검을 해봐야 함수
==============================================================================================================

- 운영 서버 HW 환경
1. CPU: Intel(R) Xeon(R) CPU E7-4870 @2.40GHz, 메모리: 8G, OS: 윈도우 서버 2012 R2
2. IP: 10.10.221.91,  https://apqm.hyundai-steel.com/APQMS
- 개발 서버 HW 환경
1. CPU: Intel(R) Xeon(R) CPU E7-4870 @2.40GHz, 메모리: 8G, OS: 윈도우 서버 2012 R2
2. IP: 10.10.180.91,  https://apqmsdev.hyundai-steel.com/APQMS
==============================================================================================================

- 마이메뉴(/frmLeft.xfdl) 수정
1. 권한 수정
============================================================================================================== 
  
■■■■■■■■■■■■■■■■■■ 2018.08.08(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:20 ~ 22:00 ==>  예산 공장 오픈

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 현대제철 Prj 1차 오픈(18시, 예산)
1. 품질검사(QI), 7. 기준정보(CM), 8. 시스템관리(SY)  ==> 3개 오픈 
2. 8월 7일(화): 울산 공장 오픈, 8월 8일(수): 예산 공장 오픈
============================================================================================================== 

- 로그 아웃 에러 수정
1. TOP 프레임(/frmTop.xfdl) 수정
 1) 현상: TypeError: Cannot read property 'handler' of undefined
	가. 로그아웃 버튼 클릭 후 'handler' of undefined 발생
	나. 다시 한번 로그아웃 버튼 클릭 하면 정상적으로 로그아웃 처리됨
 2) 원인: 로그아웃 버튼 클릭 후 gds_menu이 정상적으로 DataSet으로 넘어왔는데도 handler 에러 발생(Nexacro 자체 에러로 추정됨)
 3) 조치: try문에서 에러 이면 catch로 넘어가서 clearData 처리
this.afn_loginPopup = function()
{
	trace("[/frmTop.xfdl][afn_loginPopup()]==> [로그인 팝업 함수 호출][TEST_01]" ); 
	
	application.gds_menu.clearData();  	// 메뉴 gds Clear  ==> TypeError: Cannot read property 'handler' of undefined
	
	try    // 2) 조치: try catch으로 변경
	{ 
		application.gds_menu.clearData();  	// 메뉴 gds Clear 
	}
	catch (e)
	{ 
		application.gds_menu.clearData();  	// 메뉴 gds Clear 
	}
} 
--------------------------------------------------------------------------------------------------------------------------------
 
- try...catch...finally 문(JavaScript)
1. 한 블록에서 throw된 오류가 다른 블록에서 처리되는 코드 블록을 설정합니다. try 블록 내부에서 throw되는 오류는 catch 블록에서 
catch됩니다. 
try 
{
    tryStatements		// 필수 요소: 오류가 발생할 수 있는 문
}
catch(exception) 		// 필수 요소: 임의의 변수 이름(exception의 초기 값은 throw된 오류의 값)
{
    catchStatements		// 선택적 요소: 연관된 tryStatements에서 발생한 오류를 처리하는 문
}
finally 
{	
    finallyStatements		// 선택적 요소: 모든 다른 오류 처리가 발생한 후 무조건 실행되는 문
}
============================================================================================================== 

- [보고] 운영 서버 장애 관련 이메일 발송
1. 이상탁 차장에게 보냄
============================================================================================================== 

- 윤영 서버 데이타 증설
1. C 드라이브에 20GB 추가
============================================================================================================== 

- 결재 프로세스 공통 모듈화 처리 
1. 강관 수입검사(/QI_SteelPipeImpInsp.xfdl) 수정
============================================================================================================== 
  
■■■■■■■■■■■■■■■■■■ 2018.08.09(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:20 ~ 22:00 ==>  현대제철 Prj 운영 서버 증설(18시, 예산)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 결재 프로세스 공통 모듈화 처리 
1. 강관 수입검사(/QI_SteelPipeImpInsp.xfdl) 수정
============================================================================================================== 
 
- 현대제철 Prj 운영 서버 증설(18시, 예산)
1. CPU: Intel(R) Xeon(R) CPU E7-4870 @2.40GHz, 2 코어 증설(총 12코어), 메모리: 4G 증설(총 12GB)
2. 8월 9일(목) 18시 ~ 20시 
-------------------------------------------------------------------------------------------------------------------------------

- 운영 서버 HW 환경
1. CPU: Intel(R) Xeon(R) CPU E7-4870 @2.40GHz[가격: 492만], 메모리: 8G, OS: 윈도우 서버 2012 R2
2. IP: 10.10.221.91,  https://apqm.hyundai-steel.com/APQMS
https://ark.intel.com/ko/products/53579/Intel-Xeon-Processor-E7-4870-30M-Cache-2_40-GHz-6_40-GTs-Intel-QPI
==============================================================================================================

- 로그인시 사용여부 수정
/* 로그인 사용자 패스워드 체크 ==> [cm:CM_UserPwdchk_S01.xml] [2018.06.18, by 진태만] */ 
SELECT *
FROM HSSCU100   -- 사용자 정보 TB
WHERE USER_ID = 'Y2018009'   -- 사용자ID
  AND PWD = 'a4ayc/80/OGda4BO/1o/V0etpOqiLx1JwB5S3beHW0s='
  AND USE_YN = 'Y'  		-- 사용여부 ==> 로그인시 사용여부(USE_YN)가 Y인 것만 로그인 성공하게 수정 
;
==============================================================================================================

- 크롬에서 로그인시 비밀번호 2자리 보이는 현상(IE에서는 안 보임)
1. 현상: 크롬에서 로그인시 비밀번호 2자리 보임
2. 원인: 크롬에서 로그인 후 "Google Smart Lock이 이 사이트에서 비밀번호 저장을 하도록 하시게씁니까?" --> 저장을 누르면 비밀번호 저장됨
3. 조치: 크롬에서 인터넷 사용 기록 삭제에서 비?먼호 체크를 하고 인테넛 기록 삭제를 하면 비밀번호 안 보임
==============================================================================================================

- Oracle DB 에서 Toad 를 사용하여 Procedure 디버깅 하기
1. http://mainia.tistory.com/778, http://www.gurubee.net/lecture/2209
2. 프로시저(Procedure)란? ==> http://www.gurubee.net/lecture/1041
==============================================================================================================
  
- 티베로 프로시저(PROCEDURE) 로그 처리
1. Tibero Amin 6.0.11 프로그램 열기
2. Schema Tree Browser > QMSMGR > PSM(4) > Procedure > PR_CM_APPROVE_WORK_02: 마우스 우 클릭 > Edit Procedure: 클릭
3. PR_CM_APPROVE_WORK_02에서 아래 dbms_output.put_line을 작성 
4. 상단에 있는 PSM Compile(Ctrl + Shift + P) >> PSM Run(Ctrl + Shift + O)  ==> 컴파일, 저장이 됨

dbms_output.put_line('[/PR_CM_APPROVE_WORK]==>[Start][TEST_01][##########] ====> '); 
dbms_output.put_line('[/PR_CM_APPROVE_WORK]==>[TEST_02_2][결재번호(V_WORK_FLOW_NO)]'|| TRIM(V_WORK_FLOW_NO) );

	-- 결재번호가 없으면 채번 -->  채번RULE : YYYYMMDD + 업무구분 + 일련번호3자리
	IF TRIM(V_WORK_FLOW_NO) IS NULL THEN
		dbms_output.put_line('[/PR_CM_APPROVE_WORK]==>[TEST_03_1]');
 
		BEGIN
			SELECT NVL(MAX(TO_NUMBER(SUBSTR(WORK_FLOW_NO,13,3))+1),1)	-- 채번(13)
			INTO   V_HEAD_SEQ
			FROM   QMSMGR.HSCMA100
			WHERE  WORK_FLOW_NO LIKE V_BASE_DATE || P_IN_WORK_CODE ||'%'
			;
			
			V_STEP := '10';
		EXCEPTION
		WHEN OTHERS THEN
		    V_HEAD_SEQ := 1;	
		END;		
		V_WORK_FLOW_NO := V_BASE_DATE || P_IN_WORK_CODE || TO_CHAR(V_HEAD_SEQ,'FM000');  -- 결재번호
	END IF;	  
dbms_output.put_line('[/PR_CM_APPROVE_WORK]==>[TEST_11_2][결재번호(V_WORK_FLOW_NO)]'|| V_WORK_FLOW_NO ||'[처리구분(P_IN_ACTION_NO)]'|| P_IN_ACTION_NO );

dbms_output.put_line('[/PR_CM_APPROVE_WORK] ==>[End][TEST_end][#########################]'); 
==============================================================================================================
  
- Procedure
1. 디버깅: 
QMSMGR.PR_CM_APPROVE_WORK
(  
    #P_IN_WORK_CODE#, 		 -- 결재업무구분
    #P_IN_ACTION_NO#, 			-- 처리구분
    #IQC_ENO_CD#, 				-- 검사자ID
    #EXAM_UID#,						-- 검토자ID
    #CONF_UID#, 					-- 승인자ID
    #P_IN_REJECT_DESC#, 		-- 반려사유
    #IQC_NO#|| ',', 					-- 검사번호
    NVL(#CONF_NO#, ''), 	 	-- 결재번호
    '',  				 					-- 처리 결과(성공 : S, 에러: E)
    ''                						-- 에러시 에러메시지
)
;
----------------------------------------------------------------------------------------
 
- Procedure
EXECUTE QMSMGR.PR_CM_APPROVE_WORK
(   
    'QI14',     		-- 결재업무구분
   '1' ,           		-- 처리구분
   '1519927',      -- 검사자ID
   '1519929',       -- 검토자ID
   '1519929',   	-- 승인자ID
	'',        			-- 반려사유 ===> null 이면 에러 @@@@@
	'20180808-14-0004'|| ',' ,   	-- 검사번호
   '',             		-- 결재번호===> null 이면 에러 @@@@@
   '' ,    				-- 처리 결과(성공 : S, 에러: E)
   ''                   -- 에러시 에러메시지
)
;
============================================================================================================== 
 
- 상단 메뉴 도움말 등록(/HSSY700) 방법
1. 해당 파일에 암호화를 푼 후 파워포인트(ppt)로 도움말 화면 작업을 완료한 후 pdt 파일로 변환 후 해당 경로에 올림
 1) 개발 서버에서 해당 경로에 저장(D:\QMS\APQMS\workspace\APQMS\WebContent\APQMS\manual\SY/SY_ScreenInput_Help.pdf)
-----------------------------------------------------------------------------------------------------------------------

- webBrowser에서 pdf 파일 보이기
/***********************************************************************
 * 함수명  	: form_onload
 * 설명 		: Form 로딩 
***********************************************************************/
this.form_onload = function(obj:Form, e:nexacro.LoadEventInfo)
{
	trace("[/commManualViewer.xfdl][form_onload()] ==> [폼 로딩][TEST_01_2][T: 도움말 뷰어 화면][this.pSvcGrp]"+ this.pSvcGrp
			+"[this.pFileNm]"+ this.pFileNm );  
  
	try
	{
		if(!gfn_isNull(this.pSvcGrp) && !gfn_isNull(this.pFileNm))
		{  
			var wbb_manualViewer_url = application.gv_server_url + "APQMS/manual/"+ this.pSvcGrp +"/"+ this.pFileNm;		
			// 파일명(.pdf) ==> this.pFileNm: SY_ScreenInput_Help.pdf
			/ /wbb_manualViewer_url = application.gv_server_url + "APQMS/manual/"+ this.pSvcGrp +"/SY_ScreenInput_Help.pdf";	 
	 
			this.web_manualViewer.set_url(wbb_manualViewer_url);		// webBrowser에서 URL 셋팅
			trace("[/commManualViewer.xfdl][form_onload()]==> [TEST_91][web_manualViewer.url]"+ this.web_manualViewer.url );  
		}
	} 
	catch(e) 
	{
		return;
	}
}
============================================================================================================== 

■■■■■■■■■■■■■■■■■■ 2018.08.10(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 19:40 ==> 서울행(20:12 ~ 22:07, 삽교역 -> 영등포역)
 
- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 결재 프로세스 공통 모듈화 처리 
1. 강관 수입검사(/QI_SteelPipeImpInsp.xfdl) 수정
  1) 결제 처리 공통 모듈 화면(/commAppvDlng.xfdl) 생성 및 테스트
============================================================================================================== 
 
- 운영 서버 C 드라이버에 데이타 쌓임
1. 원인: Tibero JDBC log가 쌓임
C:\Windows\System32\config\systemprofile\Tibero_5.0.85723_JDBC_1.6_debug_20140702-180809-185346-466-D551.log
2. 조치: Tibero JDBC log를 지워줘야 함
============================================================================================================== 
 
■■■■■■■■■■■■■■■■■■ 2018.08.11(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 19:40 ==>  

- 주말
08:00 기상
08:35 조식(라면)
10:00 집출발(수종): 자전거
10:20 이마트 구로점 ==> 팬티 6벌 반납(95M 작어서 못 입음)
10:40 이마트 구로점 ==> 팬티 6벌 재구입(105M), 와이셔츠 구입(105M, 7,900)원, 소니 오픈형 아이폰(7,900원)
11:10 구로디지털역 정류장(150번 버스 탑승: 수종)
12:10 종로1가 정류장 도착
12:30 교보 문고(교보빌딩 지하1층): 서점에 장난감이많음(수종 좋아함)
13:30 종료
13:40 중식(고구마치즈돈까스, 오징어덮밥, 고기만두, 김밥천국): 수종
14:30 종료
14:40 물놀이(수종, 광화문 분수대)
15:50 종료
16:00 광화문 => 시청
16:10 북창동 버스 정류장(501번 버스 탑승: 수종)
16:30 시청역 지하철 탑승
17:20 구로디지털역 하차
17:40 자전거 탑승(구로디지털역 정류장 근처)
17:50 귀가
19:30 석식
21:00 TV 시청
24:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.08.12(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==> 

▦ 축구
08:00 기상
08:30 조식
10:30 루옌, 수종 다오 언니네집 놀러감
10:40 TV 시청
12:00 중식
14:00 낮잠
15:30 기상 
15:50 집출발 
15:55 자전거 수리점(자전거 타이어 바람 넣기) 
16:10 대림운동장 ==> 늦게 도착 게임하고 있었음
16:20 게임(은혜교회팀: 어울림 ==> 3쿼터 뜀, 기온 36도): 무척 덥고 컨디션 별로 였지만 슬기롭게 마무리
18:00 종료 
18:20 엘마트(우유 구입)
19:00 귀가
19:10 석식
19:50 집출발
20:00 대림역 7호선 마을버스 정류장(탑승)
20:20 영등포역 도착
20:49 예산행(20:49 ~ 22:36, 영등포역 -> 삽교역) 탑승
22:40 삽교역 도착
23:05 귀가
23:40 TV 시청
24:10 Memo 정리
01:00 취침 
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.08.13(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 21:10 ==> 이상탁 차장 울산 근무(08.13 ~ 14)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 결재 프로세스 공통 모듈화 처리
1. 강관 수입검사(/QI_SteelPipeImpInsp.xfdl) 수정
 1) 결제 처리 공통 모듈 화면(/commAppvDlng.xfdl) 생성 및 테스트
============================================================================================================== 
 
- 엑셀 하이퍼링크 걸기(1. 현재 시트 내 이동/ 2. 다른 시트로 이동)
1. http://meaningone.tistory.com/54
============================================================================================================== 
 
■■■■■■■■■■■■■■■■■■ 2018.08.14(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 22:00 ==> 

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 결재 프로세스 공통 모듈화 처리
1. 강관 수입검사(/QI_SteelPipeImpInsp.xfdl) 수정
 1) 결제 처리 공통 모듈 화면(/commAppvDlng.xfdl) 생성 및 테스트
 2) 블랭크 수입검사(/QI_BlankImpInsp.xfdl) 테스트 
 3) HF 공정 검사(/QI_HSblankImpInsp.xfdl) 테스트 
============================================================================================================== 

- 2. 전자결재 ? 사용자 설명서 1.0 documentation - KT bizmeka EZ
1. https://ezportal.bizmeka.com/help/ko/gw-docs/PRO_000147.html
============================================================================================================== 
 
■■■■■■■■■■■■■■■■■■ 2018.08.15(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:50 ~ 21:10 ==> 광복절(휴일)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 결재 프로세스 공통 모듈화 처리
1. 강관 수입검사(/QI_SteelPipeImpInsp.xfdl) 수정 
============================================================================================================== 

- 해상도 설정
0. 기준
 1) 1260, 860
1. Work Frame 일반 해상도
 1) 1260, 677
2. Work Frame 품질검사(QI) 해상도
 1) 1366, 768
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.08.16(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:50 ~ 21:20 ==> 맥주(21:30 ~ 23:30, 돈가스 호프, 강전관 과장, 김도현 대리)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 결재 프로세스 공통 모듈화 처리
1. 강관 수입검사(/QI_SteelPipeImpInsp.xfdl) 수정
 1) HF 공정 검사(/QI_HSblankImpInsp.xfdl) 테스트 
============================================================================================================== 

-- 업무그룹별 화면권한 정보 수정  @@@ ==>  
UPDATE HSSCR120 A   -- 업구그룹별 화면권한 정보 TB
SET   A.ACL_REG_YN = 'N'     -- 메뉴_등록_권한   -- 신규권한
		, A.ACL_MOD_YN = 'N'     -- 메뉴_수정_권한   -- 저장권한    
		, A.ACL_DEL_YN = 'N'     -- 메뉴_삭제_권한
WHERE 1=1 
  --AND A.ACL_GRP_CD  = '100'   -- 권한그룹코드  
   AND A.SCR_ID = 'NC-02-030'  -- 화면ID(NC-02-03: 도면 조회/다운로드 )
;
==============================================================================================================
 
- PR_CM_APPROVE_WORK 프로시저 호출 에러
1. 현상: 
(start:2018-08-16 20:16:29)(response time:48ms) all 2018-08-16
2018/08/16 20:16:29,SYSTEM_ERROR,[SUIA_00007]It failed to execute SQL[SQL_ID:cm:CM_AppvDlng_I01
INSERT_SQL_ID:
UPDATE_SQL_ID:
DELETE_SQL_ID:
KEY_SQL_ID:
KEY_INCREMENT:0
SAVE_FLAG_COLUMN:
TYPE:M].
2018/08/16 20:16:29,SYSTEM_ERROR,[SUIA_00003]It failed to execute (action:nDefaultAction/execute)(client:all).
java.sql.SQLException: Invalid object status.   
at line 1, column 2:
CALL 	 /* 결재 검토/승인 처리(Procedure) ==> [cm:CM_AppvDlng_I01.xml] **
^
	at com.tmax.tibero.jdbc.msg.common.TbMsgError.readErrorStackInfo(Unknown Source)
	at com.tmax.tibero.jdbc.msg.TbMsgEreply.deserialize(Unknown Source)
	at com.tmax.tibero.jdbc.comm.TbStream.readMsg(Unknown Source)
	at com.tmax.tibero.jdbc.comm.TbCommType4.prepareExecute(Unknown Source)
	at com.tmax.tibero.jdbc.TbPreparedStatement.executeCompleteSQL(Unknown Source)
	at com.tmax.tibero.jdbc.TbPreparedStatement.executeInternal(Unknown Source)
	at com.tmax.tibero.jdbc.TbPreparedStatement.execute(Unknown Source)

2. 원인: PR_CM_APPROVE_WORK 내부 코딩 에러(이승훈 과장이 수정하고 확인도 안해서 에러남)
/* 결재 검토/승인 처리(Procedure) ==> [cm:CM_AppvDlng_I01.xml] [2018.08.13, by 진태만] */  
	QMSMGR.PR_CM_APPROVE_WORK
	(  
		#P_IN_WORK_CODE#, 		-- 결재업무구분(QI11: 블랭크 수입검사, QI12: TWB 수입검사, QI13: H/S 수입검사, QI14: 강관 수입검사...)
		#P_IN_ACTION_NO#, 			-- 처리구분(1:최초등록 및 결재요청, 2: 검토자가 확인, 3: 검토자가 반려, 
		4: 검토자가 확인취소, 5: 승인자가 확인, 6: 승인자가 반려, 7: 승인자가 확인취소)
		#IQC_ENO_CD#, 				-- 검사자ID
		#EXAM_UID#,						-- 검토자ID
		#CONF_UID#, 					-- 승인자ID
		#P_IN_REJECT_DESC#, 		-- 반려사유 ===> null 이면 DB 에러 @@@@@
		#IQC_NO#|| ',', 					-- 검사번호
		NVL(#CONF_NO#, ''), 	 		-- 결재번호 ===> null 이면 DB 에러 @@@@@
		'',  				 					-- 처리 결과(성공 : S, 에러: E)
		''                						-- 에러시 에러메시지
	)

3. 조치: PR_CM_APPROVE_WORK 내부 코딩 소스 원복 처리
4. 테스트 방법:
execute PR_CM_APPROVE_WORK
		(  
			'QI14', 		-- 결재업무구분(QI11: 블랭크 수입검사, QI12: TWB 수입검사, QI13: H/S 수입검사, QI14: 강관 수입검사...)
			'3', 			-- 처리구분(1:최초등록 및 결재요청, 2: 검토자가 확인, 3: 검토자가 반려, 4: 검토자가 확인취소
			, 5: 승인자가 확인, 6: 승인자가 반려, 7: 승인자가 확인취소)
			'', 				-- 검사자ID 	===> null 이면 DB 에러 @@@@@
			'1519929',						-- 검토자ID
			'1519929', 					-- 승인자ID
			'', 		-- 반려사유 ===> null 이면 DB 에러 @@@@@
			'20180816-14-0004'|| ',', 					-- 검사번호
			NVL('20180816QI14004', ''), 	 		-- 결재번호 ===> null 이면 DB 에러 @@@@@
			'',  				 					-- 처리 결과(성공 : S, 에러: E)
			''                						-- 에러시 에러메시지
		)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.08.17(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 19:40 ==> 서울행(20:12 ~ 22:07, 삽교역 -> 영등포역), 차호진한테 전화옴(향후 취업 부탁)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 결재 프로세스 공통 모듈화 처리
1. HF 공정 검사(/QI_HSblankImpInsp.xfdl) 공통 모듈화 적용, 테스트 
============================================================================================================== 

- 공통 프로그램 수정시 주석 처리
 --> 2018.08.17: 검토일자 null 처리 수정(by 진태만)
 --> 2018.08.17: 검토일자 null 처리 변경by 진태만) 
// 수정[사유: 검토일자 null 처리, 변경일: 2018.08.17, by 진태만]
// 추가[사유: servicePath 추가리, 변경일: 2018.08.17, by 진태만]
============================================================================================================== 

■■■■■■■■■■■■■■■■■■ 2018.08.18(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 19:40 ==>  

- 주말
08:00 기상
08:35 조식(라면)
10:30 집출발(수종): 자전거 
10:20 구로 튼튼병원(남구로시장 입구) 도착
10:40 진료, 물리치료, 발목 보호대(구로 튼튼병원): 수종 왼쪽 발목 부상 ==> 저번 주 다오 이모집에 가서 놀다가 다침
11:40 조제(한마음약국)
11:45  종료
12:00 귀가 ==> 루옌 친구 만나러 감
12:50 집출발
13:00 신대방 상원 상떼빌 정류장(수종)
13:45 종로1가 정류장 도착
13:55 용퓸 문고(종로1가 사거리): 서점에 장난감이많음(수종 좋아함)
14:00 종료
14:10 중식(치즈돈까스, 오징어덮밥, 고기만두, 김밥천국): 수종
14:49 종료
14:40 물놀이 안험(수종, 광화문 분수대)
15:50 종료
16:00 세종문화회관 정류장(150번 버스 탑승: 수종)
16:50 서울영림초교 정류장 하차 
17:00 자전거 탑승(구로디지털역 정류장 근처)
17:10 귀가
19:00 석식 ==> 루옌 귀가
19:20 석식
20:00 이마트 구로점(수종) ==> 러빙폼 오토 캔 오프너(6,800원) 구입
21:30 귀가
21:50 TV 시청
24:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.08.19(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==> 

▦ 축구
08:00 기상
08:30 조식
10:40 TV 시청
12:00 중식
14:00 TV 시청
15:30 집출발 
15:50 대림운동장
16:20 게임(은혜교회팀: 어울림 ==> 4쿼터 뜀, 기온 34도): 더위 누그러짐, 체력 보통, 어울림 젊은 신입 3명 보강
		--> 이영만이형 방문(아이스크림): 무릎 다치고 운동 안해서 허리 34에서 36으로 변경 했다고 함(의류 교체)
18:30 종료(축구 20분 더 함)
18:40 플러스 마트(아이스크림, 라면 구입)
18:20 엘마트(우유, 빵 구입)
19:10 귀가
19:30 석식
19:50 집출발
20:00 대림역 7호선 마을버스 정류장(탑승)
20:20 영등포역 도착
20:49 예산행(20:49 ~ 22:36, 영등포역 -> 삽교역) 탑승
22:40 삽교역 도착
23:00 귀가
23:40 TV 시청
01:00 취침 
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.08.20(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 21:10 ==> 이상탁 차장 울산 근무(08.20)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 결재 프로세스 공통 모듈화 처리
1. HF 공정 검사(/QI_HSblankImpInsp.xfdl) 공통 모듈화 적용, 테스트 
============================================================================================================== 
 
■■■■■■■■■■■■■■■■■■ 2018.08.21(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 21:10 ==> 비옴, 이상탁 차장 예산 출근,  [위메프] 커피믹스 170T 화이트골드 340T 주문: 29,410원

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 결재 프로세스 공통 모듈화 처리
1. HF 공정 검사(/QI_HSblankImpInsp.xfdl) 공통 모듈화 적용, 테스트 
2. H/S레이저 공정검사 (자주)(/QI_HSLaserProcInsp.xfdl) 공통 모듈화 적용, 테스트 
============================================================================================================== 

- 업무구분코드
QI11: 블랭크 수입검사, QI12: TWB 수입검사, QI13: H/S 수입검사, QI14: 강관 수입검사 
QI21: 블랭크 공정검사(자주), QI22: TWB 공정검사(자주), QI23: H/S 프레스 공정검사(자주), QI24: H/S 레이저 공정검사(자주)
QI25: H/S 레이저 공정검사(검사원), QI26: H/F 공정검사(자주), QI27: H/F 공정검사(검사원)
QI31: TWB 출하검사, QI32: H/S 출하검사, QI33: H/F 출하검사 
QI41: 정기검사
==============================================================================================================
 
- 운영 서버에서 최초 등록시 결재 Procedure 에러 분석
1. 현상:
  QMSMGR.PR_CM_APPROVE_WORK
(  'QI11'     , 			-- QI11: 블랭크 수입검사,
   '1'      , 
                , 
               ,
               , 
     , 
     || ','          , 
   ''         , 
   ''  		,  
   ''                
)

this.fn_afterSave2 = function()
{
    this.fsp_clear();
    
    this.ds_approvefirst.insertRow(0);
	this.ds_approvefirst.setColumn(0,"P_IN_WORK_CODE", MAIN_WORK_CODE);		// 결재업무구분
	this.ds_approvefirst.setColumn(0,"P_IN_ACTION_NO","1");		// 결재업무구분(1:최초등록)
   	this.ds_approvefirst.setColumn(0,"IQC_ENO_CD",this.ds_infoMaster.getColumn(0,"IQC_ENO_CD" ));	// 담당자ID
  	this.ds_approvefirst.setColumn(0,"EXAM_UID",this.ds_infoMaster.getColumn(0,"EXAM_UID" ));		// 검토자ID
   	this.ds_approvefirst.setColumn(0,"CONF_UID",this.ds_infoMaster.getColumn(0,"CONF_UID" ));			// 승인자ID
   	this.ds_approvefirst.setColumn(0,"IQC_NO",this.ds_infoMaster.getColumn(0,"IQC_NO" ));					/ 검토번호
  
	this.fsp_addMulti("qi:QI_TWBProcInsp_I06", "", 0, "", 0, "B");	// QI_TWBProcInsp_I06: 결재 검토/승인 처리 Procedure 
	
	// 서버 호출 
	this.fsp_callService(
			""
			,""
			,"ds_MListViewGrid=ds_approvefirst:U"	// inDs
			,""	// outDs
			,""	// args 
			,"fn_afterSaveApproveWork"
			, false				// error시 callback 호출 여부 
			, false				// "처리 중입니다."라는 창 표시 여부
			, true				// 서버와 통신 방식(true: 비동기(Default), false: 동기)	
			, ""		// 서비스 요청 아이디(콜백 함수에서 사용 가능)
	);
}

2. 원인: 서버 부하가 많이 걸리거나 데이타가 많으면 this.ds_infoMaster.getColumn(0,"EXAM_UID" )를 제대로 받지못해서 나는
에러로 추점됨
3. 조치: 공통 결재 함수에서 데이타를 직접 받아오게 수정 ==> this.edt_reviId.value 
this.fn_saveAprvDlng = function(sNo)
{
    trace("[/commAprvDlng.xfdl][fn_saveAprvDlng()]==> [결재 처리 저장][TEST_01][sNo]"+ sNo +"[v_sWorkCode]"+ v_sWorkCode ); 
	
	this.fsp_clear();	// [FSP 서버] fsp clear(Dataset의 데이터 삭제)
	
	this.fsp_addMulti("cm:CM_AppvDlng_I01", "", 0, "", 0, "B");		// [FSP 서버] 저장(CM_AppvDlng_I01: 결재 검토/승인 처리 Procedure 호출)
	
	if(sNo == "1") 		// 저장 버튼 클릭(1:최초등록 및 결재요청) 이면
	{ 
		this.ds_infoMaster.clearData();
		
		var nRow = v_ojbDs_list.rowposition;	// Main Ds
		
		this.ds_infoMaster.insertRow(0);	// 마스터 info 정보 Ds
		this.ds_infoMaster.setColumn(0, "P_IN_WORK_CODE", v_sWorkCode);			// 결재업무구분
		this.ds_infoMaster.setColumn(0, "P_IN_ACTION_NO", sNo);					// 처리구분
		this.ds_infoMaster.setColumn(0, "IQC_ENO_CD", v_userId); 				// 검사자ID
		this.ds_infoMaster.setColumn(0, "EXAM_UID", this.edt_reviId.value);		// 검토자ID
		this.ds_infoMaster.setColumn(0, "CONF_UID", this.edt_aprvId.value);		// 승인자ID
		 
		if(v_sWorkCode == "QI14") 		// 결재업무구분이 '강관 수입검사'가 이면
		{
			this.ds_infoMaster.setColumn(0, "IQC_NO", this.parent.div_detail.edt_iqcNo.value);		// 검사번호[부모 창 호출]
			this.ds_infoMaster.setColumn(0, "CONF_NO", v_ojbDs_list.getColumn(nRow, "CONF_NO"));	// 결재번호
		} 
		else
		{
			var sIqcNo = v_ojbDs_iqcNo.getColumn(0,"IQC_NO");		// 검사번호
	 
			if(this.parent.div_search.edt_newInputYn.value == "Y") 	// 신규등록 Y 이면(신규)
			{   
				this.ds_infoMaster.setColumn(0, "IQC_NO", sIqcNo);		// 검사번호  
				this.ds_infoMaster.setColumn(0, "CONF_NO", "");		// 결재번호   
			}
			else	// 신규등록 없으면(수정)
			{
				this.ds_infoMaster.setColumn(0, "IQC_NO", v_ojbDs_list.getColumn(nRow,"IQC_NO"));		// 검사번호
				this.ds_infoMaster.setColumn(0, "CONF_NO", v_ojbDs_list.getColumn(nRow, "CONF_NO"));	// 결재번호 
			}
			this.parent.div_search.edt_newInputYn.set_value("N");	// 신규등록 유무 
		}
	}
 
	this.fsp_callService( 		// [FSP 서버] 서버 호출
			""
			, ""
			,"ds_appvDlng=ds_infoMaster:U"	// inDs
			, ""	// outDs
			, ""	// args 
			,"fn_callback"			// 콜백 함수 명
			, false					// error시 callback 호출 여부 
			, false					// "처리 중입니다."라는 창 표시 여부
			, true					// 서버와 통신 방식(true: 비동기(Default), false: 동기)	
			, "sid_approve"			// 서비스 요청 아이디(콜백 함수에서 사용 가능)
	);
}
==============================================================================================================

- Menu 등록(다국어)(/SY_MenuInputMtGual) 개발
1. 조회, 저장 
==============================================================================================================

- 구글(google) 이메일 프로파일 변경
1. taemario@gmail.com / 해피태만1*0*@
==============================================================================================================
  
- [신한은행 예금] 신한 MY CAR KBO  리그 정기예금 가입
1. 계좌번호: 200-424-960233
2. 금리: 연 2.0% 수익(세전, 고정금리), 계좌 관리점: 현대계동지점(안국역)
3. 계약금액: 3천 만원
4. 계약기간: 1년, 2018년 예상 우승팀: 두산 베어스
5. 가입일: 2019.0.08.21, 만기일: 2019.08.21 ==> 모바일로 가입
============================================================================================================== 
 
■■■■■■■■■■■■■■■■■■ 2018.08.22(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 21:10 ==> 주간보고서 작성, 오이사 방문(13시: 고객이 개발 품질이 불량하다고 했다고 함)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 결재 프로세스 공통 모듈화 처리 수정
1. 결재대기 > 저장  ==> alert 2번 발생
/***********************************************************************************
* 기      능   : 저장 콜백함수
***********************************************************************************/
this.fn_saveConfirmCallback = function(sid, rtn)
{ 
	if (rtn) 
	{   
		if (gfn_isNull(this.div_Detail.edt_IqcNo.value)) 	// 신규 등록 이면
		{
			this.fn_getIqcNo(); 		// 검사번호 채번 함수 호출
		} 
		else	// 수정 이면
		{ 
			this.fn_saveProcess();		// 전체 데이타 저장 
			//this.div_appvDlng.fn_saveAprvDlng("1");		  // 결재 저장[결재 공통 모듈 호출] ==> 주석 처리 @@@ 
		}
	}
}
============================================================================================================== 

- 메뉴 구조도 수정
1. 과거차 문제점검/도면반영 등록(/NC_PastCarPrblImproveChecFloorPlanInput)
==> 과거차 문제/도면반영 점검 등록(/NC_PastCarPrblDrawActChkInput)
==============================================================================================================

- 강관 수입검사(/QI_SteelPipeImpInsp.xfdl) 수정
1. 삭제 버튼 클릭 후 저장 ==> 데이타 없을 때: alert 뜸(저장 처리되도록 수정)
============================================================================================================== 
 
- Menu 등록(다국어)(/SY_MenuInputMtGual) 개발  ==> 완료
1. 조회, 저장  ==> /SY_MenuInputMtGual_S01.xfdl, /SY_MenuInputMtGual_U01.xfdl
==============================================================================================================

- 기간별 로그인 현황(/CM_TermLyLginStat) 개발
1. /SY_LoginAction.java, /commLogin.xfdl, /SY_LoginLog_I01.xml, /CM_TermLyLginStat_S01.xml
==============================================================================================================

- PK인덱스 삭제 
ALTER TABLE [테이블명] DROP PRIMARY KEY CASCADE;
DROP INDEX [인덱스명];

ALTER TABLE HSSCU210 DROP PRIMARY KEY CASCADE;
DROP INDEX HSSCU210_PK; 
DROP TABLE HSSCU210;
- PK인덱스 삭제의 경우, 해당 테이블에 컬럼 제약조건을 DROP 한 후에 PK인덱스 삭제가 가능
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.08.23(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 21:10 ==> 현대제철 김동학 차장 방문(13시, 프로그램 테스트)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 결재 프로세스 공통 모듈화 처리 수정
1. 결재 처리 복수개로 처리 가능 하도록 수정
============================================================================================================== 

 - 체크 박스 readonly 처리
1. expr:comp.parent.fn_setAprvDlngCheck(EXAM_UID, CONF_UID,  7)

 <Band id="head">
    <Cell displaytype="checkbox" edittype="checkbox"/>
    <Cell col="1" text="NO"/>
    <Cell col="2" text="검사일자"/>
    <Cell col="3" text="결재상태"/>
    <Cell col="4" text="공장"/>
    <Cell col="5" text="차종"/>
    <Cell col="6" text="근무조"/>
    <Cell col="7" text="검사자"/>
    <Cell col="8" text="검사시간"/>
    <Cell col="9" text="검사번호"/>
    <Cell col="10" text="결재번호"/>
  </Band>
  <Band id="body">
    <Cell displaytype="checkbox" edittype="checkbox" style="background:expr:comp.parent.fn_setAprvDlngCheck(EXAM_UID,&#32;CONF_UID,&#32;&#32;7);
	background2:expr:comp.parent.fn_setAprvDlngCheck(EXAM_UID,&#32;CONF_UID,&#32;&#32;7);selectbackground:
	expr:comp.parent.fn_setAprvDlngCheck(EXAM_UID,&#32;CONF_UID,&#32;&#32;7);controlbordertype:&#32;;" text="bind:CHK"/>
    <Cell col="1" expr="expr:currow+1"/>
    <Cell col="2" displaytype="normal" text="bind:IQC_DT" mask="####-##-##"/>
    <Cell col="3" text="bind:CONF_STATE"/>
    <Cell col="4" style="align:left;" text="bind:FAC_NM"/>
    <Cell col="5" displaytype="combo" style="align:left;" text="bind:MODEL_CD" combodataset="ds_bscCdVhiType" combocodecol="SUB_CD" combodatacol="TITLE"/>
    <Cell col="6" displaytype="combo" text="bind:SHIFT_CD" combodataset="ds_bscCdQm483" combocodecol="SUB_CD" combodatacol="TITLE"/>
    <Cell col="7" text="bind:IQC_ENM"/>
    <Cell col="8" text="bind:IQC_TIME" mask="##:##"/>
    <Cell col="9" text="bind:IQC_NO"/>
    <Cell col="10" text="bind:CONF_NO"/>
  </Band>
</Format>
</Formats>

/***********************************************************************
 * 함수명  	: fn_setAprvDlngCheck
 * 설명 		: 결재 내용 체크 
***********************************************************************/ 
this.fn_setAprvDlngCheck = function(sReviId, sAprvId, nNo) 
{ 
	//trace("[/QI_SteelPipeImpInsp.xfdl][fn_setAprvDlngCheck()]==> [TEST_01][sReviId]"+ sReviId +"[sAprvId]"+ sAprvId +"[nNo]"+ nNo ); 
 
	var sRtn = "";
 
	if(nNo == 7)		// 메뉴보기권한 칼럼에서 왔으면(배경색 설정)
	{ 
		if(v_userId == sReviId || v_userId == sAprvId)		// 로그인ID가 검토자ID, 승인자ID와와 같으면 
		{
			sRtn = "#ffffffff";		// 배경색 흰색으로 처리 
		}
		else
		{
			sRtn = "#B6D2D6"; 		// 배경색 연녹색으로 처리
		}
	} 
 
	return sRtn;
}

/***********************************************************************
 * 함수명  	: ds_list_cancolumnchange
 * 설명 		: ds_list Ds 변경 이벤트(cancolumnchange: 데이터셋의 열(column) 값이 변경되기 전에 발생하는 이벤트 ) 
***********************************************************************/ 
this.ds_list_cancolumnchange = function(obj:Dataset, e:nexacro.DSColChangeEventInfo)
{
	//trace("[/QI_SteelPipeImpInsp.xfdl][ds_list_cancolumnchange()]==> [TEST_01][e.columnid]"+ e.columnid +"[e.row]"+ e.row );
 
	var sChk = this.ds_list.getColumn(e.row,"CHK");  // 체크여부
	var sReviId = this.ds_list.getColumn(e.row,"EXAM_UID");  // 검토자ID(검토내용) 
	var sAprvId = this.ds_list.getColumn(e.row,"CONF_UID");  // 승인자ID(승인내용) 
  
	if(e.columnid == "CHK")		// 칼럼이 '체크여부' 칼럼 이면
	{
		if(v_userId == sReviId || v_userId == sAprvId)		// 로그인ID가 검토자ID, 승인자ID와와 같으면 
		{ 
		}
		else
		{ 
			trace("[/QI_SteelPipeImpInsp.xfdl][ds_list_cancolumnchange()]==> [TEST_51][해당 칼럼 readonly 처리]" );
			return false;		// 해당 칼럼 readonly 처리
		} 
	}
} 
=========================================================================================================

- 예산 사업장 현대제철 Prj 로지텍 MK240 마우스, 키보드 콤보 밧데리 수명 만료[구입: 2016.11.24(목)]
1. 밧데리 수명(키보드: 2명, 마우스: 1년,  2개), 가격: 27,280원
http://itempage3.auction.co.kr/DetailView.aspx?ItemNo=B239830970&frm3=V2 
2017.04.20(목): 1차 교체(6개월 사용[에너자이저 AA 알카라인 밧데리]) 
2017.07.03(월): 2차 교체(3개월 사용[GIDAMAX AA 알카라인 밧데리])  
2018.07.23(월): 3차 교체(1개월 사용[GIDAMAX AA 알카라인 밧데리]) ==> MK240 NANO 마우스 집에서 가지고 옴(사업장에서 사용)
2018.08.23(목): 4차 교체(3개월 사용[GIDAMAX AA 알카라인 밧데리]) 
=========================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2018.08.24(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 19:40 ==> 태풍 솔릭 충남 상륙(3시): 피해 적었음, 서울행(20:12 ~ 22:07, 삽교역 -> 영등포역)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 이메일 보내기 처리
1. Mail 관리(/CM_MailMngm.xfdl)
=========================================================================================================
 
- Mail 발송 ==> https://softzam.atlassian.net/wiki/spaces/svrdoc/pages/31457291/Mail
--------------------------------------------------------------------------------------

 - GEOYONG 이메일 보내기 처리
<!-- Mail Action -->
<service name="MailAction" code="sample.mail.MailAction">
	<attribute name="FileRootDir">C:/GEO_PROJECT/mail/</attribute>
</service>
=========================================================================================================

 ■■■■■■■■■■■■■■■■■■ 2018.08.25(토) 작업 ■■■■■■■■■■■■■■■■■■

---> 07:40 ~ 19:40 ==>  

- 주말
09:00 기상
09:35 루옌 핸드폰 Google 계정 수정 ==> taemario@gmail에서 luyen94@gmail.com / lu**339@로 변경
10:20 집출발(수종)
10:30 구로 튼튼병원(남구로시장 입구) 도착
10:40 진료, X-Ray, 물리치료: 손 관절염 ==> 2~3달 전부터 주먹쥐면 엄지 손가락이 아픔
		 --> 피 검사 후 정확한 변명이 나온다고 함(퇴행성 관절염인지 루마티스 관절염인지 확인할 것)
11:20 다이소 구로시장점 쇼핑(크림, 수픈, 포크)
11:40 조제(한마음약국)
12:00 엘마트(주)(빵 구입)
12:20 귀가
13:30 집출발 
14:00 대림역(6511번 버스, 수종)
14:40 봉원중?교 정류장 도착 
14:50 키즈카페어린왕자 ==> 아이입장(2시간): 7천원, 어른 음료(커피): 4천원, 아이스크림: 3천 ==> 총 만 4천원
16:50 종료
17:10 봉천중앙시장 정류장 도착 
17:40 대림역(6511번 버스, 수종)
17:50 석식(돌솥, 치즈돈가스, 고기 만두: 김밥천국 구로점): 수종
18:30 귀가
23:00 취침
==============================================================================================================

- 손 관절염
1. INL75-손관절염에 대해서 (김동진) ==> https://www.youtube.com/watch?v=cwbLV-EFef4&feature=youtu.be
2. 퇴행성 관절염의 치료법==> https://www.youtube.com/watch?v=PFQU_d-EzdM&feature=youtu.be
==> 퇴행성 관절염인지 루마티스 관절염인지 확인할 것
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.08.26(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==> 

▦ 축구
09:00 기상  
09:30 조식(라면) 
12:00 중식 ==> 루옌, 수종 다오집에 감
13:30 집출발
13:50 대림 조명사 방문 ==> 화장실 전구 고장(휴일이라 문 안염) : 백열등 80W(800원 예상)
14:99 귀가
15:40 대림운동장 
16:00 게임(은혜교회팀: 어울림 ==> 4쿼터 뜀): 비가 약간 오고 선선함, 컨디션 괜찮음
18:00 종료
18:20 엘마트(우유 구입)
19:00 귀가  
19:50 집출발
20:05 대림역 7호선 마을버스 정류장(영등포04 버스 탑승)
20:30 영등포역 도착
20:49 예산행(20:49 ~ 22:36, 영등포역 -> 삽교역) 탑승
22:40 삽교역 도착(비 많이 옴: 우산 쓰고 반바지로 옴)
23:00 귀가
23:40 TV 시청, Memo 정리
01:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.08.27(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 20:20 ==> 비, 이상탁 차장 그룹사 교육(08.27 ~ 28), 아시안 게임 축구 8강(한국 4:3 우즈벡)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 이메일 보내기 처리
1. Mail 관리(/CM_MailMngm.xfdl) 
 1) Mail 발송 에러 검토 요청(정재훈 대리에게 이메일 보내기)
  가. 원격 지원 받아서 SY_MailAction를 못 찾는 문제 해결 
   A. 원인: service.xml 파일에서 <manager name="sql">에  <service name="SY_MailAction" code="com.aqqms.mes.sy.action.SY_MailAction">
   에 입력
  나. 원격 지원 받아서 duplicate SY_MailAction 문제 해결
   A. 원인: anotation 주석 처리
==============================================================================================================

- 이메일 발송 flow
/***********************************************************************
 * 함수명  	: btn_sendMail_onclick
 * 설명 		: 이메일 발송 
***********************************************************************/
this.btn_sendMail_onclick = function(obj:Button,  e:nexacro.ClickEventInfo)
{
	trace("[/CM_MailMngm.xfdl][btn_sendMail_onclick()]==> [이메일 발송][TEST_01]" ); 
 
	trace("[/CM_MailMngm.xfdl][btn_search_onclick()]==>  [TEST_02][ds_cond(입력).CNT]"+ this.ds_mail.getRowCount() 
		+"[ds_mail.saveXML()] \n"+ this.ds_mail.saveXML() );
	
 	this.fsp_callService(
 		"SY_MailAction"		//호출할 서비스(Java)
		,"Send"				//메소드(Java)
 		,"ds_mail=ds_mail"	//Input DataSet
 		,""					//Output DataSet
 		,""					//Aguments
 		,"fn_callback"		// 콜백 함수 명
		, false				// error시 callback 호출 여부 
		, false				// "처리 중입니다."라는 창 표시 여부
		, true				// 서버와 통신 방식(true: 비동기(Default), false: 동기)	
		, "sid_send"		// 서비스 요청 아이디(콜백 함수에서 사용 가능)
	); 
}

/***********************************************************************
 * 함수명  	: fn_callback
 * 설명 		: 콜백 함수 
***********************************************************************/	 
this.fn_callback = function(nErrorCode, sErrorMag, sid)
{ 
	trace("[/CM_MailMngm.xfdl][fn_callback()]==> [콜백][TEST_01][sid]"+ sid +"[nErrorCode]"+ nErrorCode +"[sErrorMag]"+ sErrorMag); 
  
	if(nErrorCode < 0)
	{ 
		gfn_alert(this, "E0006", "메일발송");		// E0006: [M1]에 실패하였습니다.
		return;
	}  
	gfn_alert(this, "I0002");		// I0002: 정상적으로 처리되었습니다.  	  
}
--------------------------------------------------------------------------------------------------------------------------------

- /SY_MailAction.java 파이에서
package com.aqqms.mes.sy.action;

import com.sz.service.mail.MailSendService;		// FSP서버 service.xml에서 셋팅된것 받아 옴 
import com.sz.service.mail.MailSender;				// FSP서버 service.xml에서 셋팅된것 받아 옴

public class SY_MailAction extends AbstractAction {
	
	private static final long serialVersionUID = 1L;
   
	public void Send(BusinessContext ctx) throws Exception
	{
		System.out.println("[/SY_MailAction.java] [Send()] ==> [메일 처리] [TEST_01]" ); 

		MailSendService mailSvc = (MailSendService) ServiceManagerFactory.getServiceObject("MailService");		// Service 명

		MailSender sendObj = mailSvc.createMailSender();

		//메일 데이터셋
		DataSet dsMaster = (DataSet)ctx.getInputObject("ds_mail");

		//보내는 사람 주소
		sendObj.setFrom(dsMaster.getString(0, "FROM"));

		//받는 사람 주소
		sendObj.setTo(dsMaster.getString(0, "TO"));

		//제목
		sendObj.setSubject(dsMaster.getString(0, "SUBJECT")); 

		//내용
		sendObj.setBody(dsMaster.getString(0, "BODY"));

		//메일 발송
		sendObj.sendMessage();
	}
}
--------------------------------------------------------------------------------------------------------------------------------

- /service.xml 파일에서
<!-- Mail Action -->
<service name="SY_MailAction" code="com.aqqms.mes.sy.action.SY_MailAction"> 
	<attribute name="FileRootDir">D:\QMS\APQMS\workspace\APQMS\upload\mail\</attribute> 
	<!-- mail에서 업로드된 파일이 저장될 최상위 디렉토리(상대 경로: 개발서버)  -->
</service>
	
<!-- 메일 서비스 추가  -->
<service name="MailService" code="com.sz.service.mail.SimpleMailSendService">
		<attribute name="MailSenderClassName">com.sz.service.mail.DefaultMailSender</attribute> 
		<attribute name="ContentType">text/plain</attribute>							<!-- Mail 본문의 컨텐츠 타입 --> 
		<attribute name="Encoding">utf-8</attribute>	  								<!-- 문자열 인코딩 -->	 
		<attribute name="MailHostName">hyunai-steel.com</attribute>	  		<!-- 메일 서버의 호스트명 --> 
		<attribute name="MailHostPort">587</attribute>		   							<!-- 메일 전송시 사용할 포트번호 --> 
		<attribute name="Mailer">geonet</attribute>		   								<!-- 메일 헤더 X-Mailer 항목의 값 --> 
		<attribute name="RequiredAuth">true</attribute>		   						<!-- 메일 서버에 접속시 인증처리 여부 --> 
		<attribute name="AuthUserId">tamario@hyunai-steel.com</attribute>	<!-- 메일 서버 접속시 사용할 사용자 아이디 --> 
		<attribute name="AuthPassword">qwqw1212!</attribute>		 			<!-- 메일 서버 접속시 사용할 사용자 비밀번호 --> 
		<attribute name="ConnectionTimeOut">1000</attribute> 		 			 <!-- 메일 서버 연결 타임 아웃 시간 --> 
		<attribute name="DefaultProperties">mail.smtp.auth=true </attribute>   <!-- 메일 서버에 대한 기본 속성 정보 --> 
</service>  
--------------------------------------------------------------------------------------------------------------------------------

- Java Mail 관련 파일 
1. 메일 전송서비스에서 Java Mail을 사용하여 메일링 서비스를 하기 때문에 해당 서비스를 구동하기 위해서 activation.jar, mail.jar 2개의 
파일을 복사해서 아래 폴더에 붙여넣기
D:\QMS\APQMS\workspace\APQMS\WebContent\WEB-INF\lib
=========================================================================================================

- 메일 발송 에러
1. 현상:
[/SY_MailAction.java] [Send()] ==> [TEST_91][FROM]tamario@hyunai-steel.com[TO]tamario@gidata.co.kr[SUBJECT]TEST[BODY]DDDDDD
2018/08/27 15:26:55,SYSTEM_ERROR,[SUIA_00003]It failed to execute (action:SY_MailAction/Send)(client:all).
javax.mail.MessagingException: Unknown SMTP host: hyunai-steel.com;
  nested exception is:
	java.net.UnknownHostException: hyunai-steel.com
	at com.sun.mail.smtp.SMTPTransport.openServer(SMTPTransport.java:1960)
	at com.sun.mail.smtp.SMTPTransport.protocolConnect(SMTPTransport.java:654)

2. 원인: Unknown SMTP host이 잘못 됨
=========================================================================================================

- FSP 개발 서버 라이센스 신청(9시, 예산)
1. FSP 개발 서버 License: 2개월 마다 소프트잼 홈페이지에서 Q&A 게시판에서 요청글 작성 ==> http://www.softzam.com:8080/board.html
2. 만료일: 2018-08-31
=========================================================================================================

- Publishing(Ctrl + Alt + P) 처리[컴파일](eclipse에서)
1. Tomcat v7.0 Server at localhost-config: 마우스 우 클릭 > Publishing(Ctrl + Alt + P): 클릭
2. Publishing 설정
 1) omcat v7.0 Server at localhost-config: 마우스 더블 클릭 > Publishing: Modify settings for publishing. 
   가. 1번: Never publish automatically
   나. 2번: Automatically publish when resoures change.  --> 리소스가 변경될 때 publishing됨
   다. 3번: Automatically publish after a built event --> maven build 등으로 build event를 발생시키면 모두 publishing됨
==> 1,2,3 선택후 JSP, Java 파일을 저장 후 컴파일되는 걸 확인 (2번 선택)
 2) Publishing 후의 파일 위치
 D:\QMS\APQMS\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\APQMS\WEB-INF\fsp\conf
 Eclipse\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps  
--------------------------------------------------------------------------------------------------
 
- eclipse tomcat publish 없이 hot deploy 
1. https://blog.naver.com/dici11/220404784476
=========================================================================================================

- WAS와 웹서버의 차이
1. apach서버:  http 웹 서버
2. tomcat: WAS(Web Application Server)
3. WAS(Web Application Server): 웹서버와 웹 컨테이너의 결합으로 다양한 기능을 컨테이너에 구현하여 다양한 역할을 수행할 
수 있는 서버(동적인 데이터를 처리). DB와 연결되어 데이터를 주고 받거나 프로그램으로 데이터 조작이 필요한 경우에는 WAS를 활용
4. 웹 서버: 정적인 데이터를 처리하는 서버이다. 이미지나 단순 html파일과 같은 리소스를 제공
=========================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.08.28(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 20:30 ==> 비2, 추석 기차표 예매(7시, 숙소)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 보안 점검 리스트 처리 분석
1. 세션 설정
/**
 * 이 Method는 Session 만드는 작업을 함
 */
public void makeSession(BusinessContext ctx, String sUserId, String sKoNm, String sDeptCd, String sDeptNm
										, String sAclGrpCd) throws Exception {
 
	DefaultUserInfo userInfo = new DefaultUserInfo();		 // 사용자 정보를 위한 객체 생성
	
	userInfo.setUserId(sUserId);	// 사용자 ID 설정

	userInfo.set("USER_ID", sUserId);				// 사용자 ID 설정 
	userInfo.set("USER_NAME", sKoNm);		// 사용자 한글이름
	userInfo.set("DEPT_CODE", sDeptCd);		// 부서코드
	userInfo.set("DEPT_NAME", sDeptNm);		// 부서명
 
	//서비스정의 파일에 등록된 세션 관리자 서비스 가져오기
	// 세션 관리자 서비스는 SessionManager 란 서비스 명으로 등록되어 있다.
	SessionManager sessionService = (SessionManager) ServiceManagerFactory.getServiceObject("SessionManager");
	
	// 세션의 사용자 정보를 이용 생성
	HttpServletRequest request = (HttpServletRequest) ctx.getInputRequest();

	sessionService.makeNewUserInfo(request, userInfo);
}
==============================================================================================================
 
- 메뉴 구조도 수정
1. Menu 등록(다국어)(/SY_MenuInputMtGual) ==> 메뉴 등록(다국어)(/SY_MenuInputMtGual)
2. 필드 등록(다국어)(/SY_FieldInputMtGual) ==> 화면 등록(다국어)(/SY_ScreenInputMtGual)
==============================================================================================================

- 추석 기차표 예매(7시, 숙소)
0. 접속대기번호: 3200번대
1. 6시 59분 58초에 클릭함
2. 예약 시간: 07:00 ~ 07:30
3. 결제기간 : 2018.8.29.(수) 16:00 ~ 2018.9.2.(일) 24:00 ==> 기간 내 미결제 시 승차권 자동 취소
4. 예약 정보
2018.09.23(일) 09:25 ~ 11:49, 서울-> 포항, KTX-산천 457(1호차 8C, 8D), 107,200원(2매) 
==> 455(08:15 ~ 10:40), 457(09:25 ~ 11:49), 459(10:45 ~ 13:13), 463(12:40 ~ 14:59), 461(13:00 ~ 15:29), 465(14:35 ~ 17:03)
2018.09.25(화) 18:00 ~ 20:27, 포항-> 서울, KTX470(13호차 4A, 4B), 107,200원(2매) 
==> 468(16:25 ~ 18;55), 470(18:00 ~ 20:27), 472(19:20 ~ 21:54), 474(21:35 ~ 00:05)
==============================================================================================================

- 예산 숙소(하늘채 303호) 공공 요금 납부[2018.08.28(화)] 
1 도시가스 요금 ==> 납부 완료(7월 24일 납부)
 1) 7월 요금(07.01 ~ 07.31), 납부금액: 930원, 납부마감일: 2018.07.31, 청구기관: 주식회사미래엔서해에너지
 2) 고객명: 임용신, 납부자번호(전자납부번호): 3002861831001, 지로번호: 4029498 
  가. INTERNET GIRO(인터넷지로) ==> https://www.giro.or.kr/index.giro(메인) 인터넷지로 > 일반지로요금 >  지로번호: 4029498 
    > 납부자번호(전자납부번호): 3002861831001 
2. 전기 요금  ==> 납부 완료(7월 24일 납부)
 1) 7월 요금(07.10 ~ 08.09), 납부금액: 6,420원 ==> 지로번호: 4029498
 2) 고객명: 임용신, 납부자번호(전자납부번호), 고객번호: 06 4155 7892(0641557892)
  가. INTERNET GIRO(인터넷지로) ==> https://www.giro.or.kr/index.giro(메인) 인터넷지로 > 전기/전화요금 > 고객번호(10자리): 0641557892 
==============================================================================================================
 
- 2018년 주민세 납부
1. 주민세: 5,850원
==============================================================================================================

- Fiddler(피들러) 사용법
1. 피들러(Fiddler) 실습: Step01. 워밍업(Warming Up) ==> http://blog.kinesis.kr/148, http://blog.kinesis.kr/115?category=647687 
2. http://dsiol.blog.me/120177646288 에서 다운로드 받음
4. Fiddler는 Web Debugging 툴입, 웹에서 어떤 오류가 나왔을시 원인 파악을 하는 툴
5. Fiddler 5.0 Download ==> https://www.techspot.com/downloads/5461-fiddler.html
6. 유용한 기능
 1) 전체 행 삭제 
  가. 전체 행: 마우스 우 클릭 > Remove > All  Sessions(단축키: Ctrl + X)
 2) 선택하지 않은 행 삭제 
  가. 해당 행: 마우스 우 클릭 > Remove > Unselected  Sessions(단축키: Shift + Del)
--------------------------------------------------------------------------------------------------------------------------------

- Fiddler(피들러) 사용법2
1. Filter 기능
 1) 상단의 Use Filters 체크
 2) Show only the following Hosts: 선택 ==> Hosts 항목에는 트래픽을 볼 사이트의 도메인 기입 
homestead.app
google.com

2. Mark 기능
많은 리퀘스트들 중 의미있는 리퀘스트에 Mark 하는 기능

3. Save 기능
말그대로 저장 기능. 현재 상태를 그대로 저장한다. 물론 마크나 코맨트를 달아놨던 내용이 그대로 저장된다. 분석한 내용을 타인에게 
주거나 까먹지 않게 저장해둘 수 있다. 
[File - Save] 버튼을 통해 저장할 수 있다. 
==> http://nisam.tistory.com/5
--------------------------------------------------------------------------------------------------------------------------------

- Fiddler(피들러)에서 HTTPS 사용
1. 현상: HTTPS decryption is disabled. Click to configure.
2. 조치: Optoins > HTTPS 
 1) Captures HTTPS CONNECTs: 체크
 2) Decrypt HTTPS  traffic 
==> To intercept HTTPS traffic, Fiddler generates a unique root certificate.
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.08.29(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 21:00 ==> 중식(칼국수, 밥, 만두, 삽다리 칼국수: 개발팀 -> 이상탁 차장이 쏨),  아시안 게임 축구 4강(18시, 한국 3:1 베트남)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 보안 점검 리스트 처리 분석  
1. 기간별 로그인 현황 ==> https://apqmsdev.hyundai-steel.com/APQMS/CM/CM_TermLyLginStat.xfdl.js
 1) 분석 ==> 크롬 > Ctrl + Shit + I > Network(탭)
  가. Name: CM_TermLyLginStat.xfdl.js: 클릭 > Headers(탭) > Genearl > 
	Request URL: https://apqmsdev.hyundai-steel.com/APQMS/CM/CM_TermLyLginStat.xfdl.js
==============================================================================================================

- 이메일 보내기 처리
<!-- 메일 서비스 추가  -->
<service name="MailService" code="com.sz.service.mail.SimpleMailSendService">
	<attribute name="MailSenderClassName">com.sz.service.mail.DefaultMailSender</attribute> 
	<attribute name="ContentType">text/plain</attribute>							<!-- Mail 본문의 컨텐츠 타입 --> 
	<attribute name="Encoding">euc-kr</attribute>	  								<!-- 문자열 인코딩 -->	 
	<attribute name="MailHostName">steelro.hyundai-steel.com</attribute>	  		<!-- 메일 서버의 호스트명 --> 
	<attribute name="MailHostPort">25</attribute>		   							<!-- 메일 전송시 사용할 포트번호 --> 
	<attribute name="Mailer">hyndai-steel Mail</attribute>		   				<!-- 메일 헤더 X-Mailer 항목의 값 --> 
	<attribute name="RequiredAuth">true</attribute>		   						<!-- 메일 서버에 접속시 인증처리 여부 --> 
	<attribute name="AuthUserId">gqms@hyundai-steel.com</attribute>	<!-- 메일 서버 접속시 사용할 사용자 아이디 --> 
	<attribute name="AuthPassword">gqmssteel!</attribute>		 			<!-- 메일 서버 접속시 사용할 사용자 비밀번호 --> 
	<attribute name="ConnectionTimeOut">1000</attribute> 		 			 <!-- 메일 서버 연결 타임 아웃 시간 --> 
	<attribute name="DefaultProperties">mail.smtp.auth=true </attribute>   <!-- 메일 서버에 대한 기본 속성 정보 --> 
</service>   	 
--------------------------------------------------------------------------------------------------------------------------------

1. Mail 관리(/CM_MailMngm.xfdl) 
 1) Mail 발송 에러
======================= OUTDATA ========================
[DataSets]

[Variables]
variable=[
	index=0 (errorSqlCode, string, "")
	, index=1 (errorSqlStatus, string, "")
	, index=2 (ErrorCode, int, "-999999999")
	, index=3 (ErrorMsg, string, "535 5.7.3 Authentication unsuccessful
")
	, index=4 (errorTrace, string, "javax.mail.AuthenticationFailedException: 535 5.7.3 Authentication unsuccessful

	at com.sun.mail.smtp.SMTPTransport$Authenticator.authenticate(SMTPTransport.java:826)
	at com.sun.mail.smtp.SMTPTransport.authenticate(SMTPTransport.java:761)
	at com.sun.mail.smtp.SMTPTransport.protocolConnect(SMTPTransport.java:685)
	at javax.mail.Service.connect(Service.java:317)
==============================================================================================================

- 강관 수입검사(/QI_SteelPipeImpInsp.xfdl) 메일 보내기
1. 저장 버튼: 클릭 > 검토자, 승인자 메일로 자동 메일 보내기 
2. 메일 보내기 버튼: 클릭 > 선택된 사용자에게 메일 보내기
==============================================================================================================
 
- 현대제철 nexacro platform 라이센스 운영 서버 에 적용
1. D:\QMS\APQMS\workspace\APQMS\WebContent\WEB-INF\lib ==> nexacro14_server_license.xml
==============================================================================================================
 
- 프로파일 변경 팝업(/pop_chgPropile.xfdl)
1. Top 프레임(/frmTop.xfdl) 변경
==============================================================================================================

- 인텔 VGA 드라이버 설치 에러(GIGABYTE 노트북에서) ==> 수정 완료(정상 처리됨) @@@
1. 현상: GIGABYTE 노트북을 윈도우10에서 포맷 후 윈도우7으로 재설치
 1) 디스플레이 어댑터가 표준 VGA 그래픽 어댑터로 설치됨 --> Intel® HD Graphics 630 드라이버가 설치안됨(윈도우7 설치 지원 안함)
2. 조치: 3DP Chip을 다운 받아서 설치
 1) 3DP Chip 프로그램 실행 후 Intel_HD_(764_2120164505)_by3DP.exe 다운 받아서 설치
 2) 인텔® HD 그래픽이 설치 완료 된 것 확인 방법
  가. 바탕화면 > 인텔®그래픽 설정 > 인텔® HD 그래픽 제어판(새창) > 디스플레이 > 일반설정 > 색설정 > 밝기: 선택 ==> 적용: 클릭
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.08.30(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 22:00 ==> 신차 통합 테스트(19:00 ~ 21:00)

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- 프로파일 변경 팝업(/pop_chgPropile.xfdl)
1. 비밀번호 조합 적용
==============================================================================================================

- 이미지 백업
1. 운영 서버 ==> 개발 서버
 1) 경로 ==> D:\QMS\APQMS\workspace\APQMS\upload\img\apqms
==============================================================================================================
 
- FSP 개발 서버 라이센스 적용(7시, 예산)
1. 만료일: 2018-08-31 ==> 2018-12-31
2. 요청일(소프트잼 게시판 글 등록): 2018-08-27 ==> 라이센스 메일로 받은 날: 2018-08-30
==============================================================================================================

- AuthUserId 제거하고 메일 보내기
1. 설정(/service.xml 파일에서)
<service name="SessionManager"  code= "com.sz.ui.session.HttpSessionManagerService">
	<attribute name="UserInfoKeyName">userObj</attribute>
	<attribute name="NotLogginActionName">  ==> NotLogginActionName에서 SY_LoginAction 추가하면 됨
		<!-- 로그인 없이 사용할 수 있는 Action 명들  -->
		SY_LoginAction
		,sql#SqlMapManagerAction
	</attribute>
</service> 
 
<!-- 메일 서비스 추가  --> 
<service name="MailService" code="com.sz.service.mail.SimpleMailSendService">
	<attribute name="MailSenderClassName">com.sz.service.mail.DefaultMailSender</attribute> 
	<attribute name="ContentType">text/plain</attribute>							<!-- Mail 본문의 컨텐츠 타입 --> 
	<attribute name="Encoding">euc-kr</attribute>	  								<!-- 문자열 인코딩 -->	 
	<attribute name="MailHostName">10.10.222.100</attribute>	  			<!-- 메일 서버의 호스트명 --> 
	<!-- hsteelrocas.hyundai-steel.com = "10.10.222.100"-->
	<attribute name="MailHostPort">25</attribute>		   							<!-- 메일 전송시 사용할 포트번호 --> 
	<attribute name="Mailer">hyundai-steel Mail</attribute>		   				<!-- 메일 헤더 X-Mailer 항목의 값 --> 
	<attribute name="RequiredAuth">false</attribute>		   						<!-- 메일 서버에 접속시 인증처리 여부 --> 
	<attribute name="AuthUserId"></attribute>										<!-- 메일 서버 접속시 사용할 사용자 아이디  -->    
   <attribute name="AuthPassword"></attribute>		 								<!--  메일 서버 접속시 사용할 사용자 비밀번호번호   -->
	<attribute name="ConnectionTimeOut">1000</attribute> 		 			 <!-- 메일 서버 연결 타임 아웃 시간 --> 
	<attribute name="DefaultProperties">mail.smtp.auth=false</attribute>   <!-- 메일 서버에 대한 기본 속성 정보 --> 
</service>  
 
3. 현대제철 현업에서 해당 개발, 운영 서버 IP를 제외 해야 됨
==> 스틸로 메일서버에 타시스템 발신서버 IP 릴레이 등록(구현하시는 웹서버 IP 회신 필요) 
10.10.221.91 > 10.10.221.1 ? 10.10.221.255 등록되어 이미 포함되어 있음 
HOSTNAME : hsteelrocas.hyundai-steel.com or 10.10.222.100 
==> 소프트잼 김광호 대리가 원격 처리해서 해결함
==============================================================================================================
 
- 비밀번호 정규표현식(패스워드): 비밀번호 조합
/***********************************************************************
 * 함수명  	: fn_validCheck
 * 설명 		: Validation Check 
***********************************************************************/
this.fn_validCheck = function()
{
	// this.div_propile.edt_newPwd.set_value("hptnwhd1601@"); 	// 새로운 암호(edt_newPwd)
	// 새로운 암호(edt_newPwd): 12: ---> a1HUMd9dfxQcvs7M957fPdhhw7QGnwsRZho+76y7qRg=
	
	var objRegExp = /^.*(?=^.{8,12}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!,@,#,$,%,^,&,*]).*$/;  		// 06. 영문, 특수문자, 숫자(3종류) 8 ~ 12자리 정규표현식
	trace("[/pop_chgPropile.xfdl][fn_validCheck()]==> [valid_check][TEST_42][새로운 암호(edt_newPwd)]"+ 
		this.div_propile.edt_newPwd.value +"[objRegExp]"+ objRegExp );

	var objArr = this.div_propile.edt_newPwd.value.match(objRegExp);  
	trace("[/pop_chgPropile.xfdl][fn_validCheck()]==> [valid_check][TEST_44][objArr]"+ objArr );

	if(gfn_isNull(objArr))
	{ 
		alert("새로운 암호는 문자, 숫자, 특수문자(!@#$%^&*) 세가지 조합으로 8자리 이상 12자리 이하로 만드십시오."); 
		v_nAlertId = 2;		// alert ID
		return false;
	}  
	
	if(!gfn_isNull(this.div_propile.edt_email.value))  // 이메일이 존재하면
	{
	 	var objRegExp_02 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/;	// 이메일 형식 정규표현식
		var objArr_02 = this.div_propile.edt_email.value.match(objRegExp_02);  
		//trace("[/pop_chgPropile.xfdl][fn_validCheck()]==> [valid_check][TEST_44][objArr_02]"+ objArr_02 
		+"[이메일(edt_email)]"+ this.div_propile.edt_email.value +"[objRegExp_02]"+ objRegExp_02 );
	 
		if(gfn_isNull(objArr_02))
		{   
			v_nAlertId = 4;		// alert ID 
			gfn_alert(this, "I0075", "", "fn_alertCallback");	// I0075: 이메일 형식이 아닙니다.
			return false;
		} 
	}
}
=========================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.08.31(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 19:40 ==> 서울행(20:12 ~ 22:07, 삽교역 -> 영등포역)

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- 프로파일 변경 팝업(/pop_chgPropile.xfdl)
1. div_popupSet 적용(pdv_popupSet은 해상도, application.mainframe.width 따라 위치가 달라져서 적용 못 함)
/***********************************************************************
 * 함수명  	: st_userNmDept_onclick
 * 설명 		: 성명, 부서명 Static 클릭 이벤트 
***********************************************************************/ 
this.st_userNmDept_onclick = function(obj:Static,  e:nexacro.ClickEventInfo)
{
	trace("[/frmTop.xfdl][st_userNmDept_onclick()]==> [TEST_01]]");
	
	this.div_popupSet.set_visible(true);		// div_popupSet 보이기
	trace("[/frmTop.xfdl][st_userNmDept_onclick()] ==> [TEST_end][pdv_popupSetdiv_popupSet]"+ this.div_popupSet.visible );  
}

/***********************************************************************
 * 함수명  	: st_userNmDept_onclick
 * 설명 		: 성명, 부서명 Static 영역내에 마우스의 커서가 들어 왔을 때 발생 이벤트  ==> 주석 처리
***********************************************************************/ 
this.st_userNmDept_onmouseenter = function(obj:Static, e:nexacro.MouseEventInfo)
{
	//trace("[/frmTop.xfdl][st_userNmDept_onmouseenter()]==> [TEST_01]]");
	
	this.pdv_popupSet.set_visible(true);		// dv_popupSetset 보이기
 
	if(this.pdv_popupSet.isPopup) this.pdv_popupSet.closePopup();
	
	var left_2 = parseInt(obj.left) - 90;	// Left 간 
	var top_2 = obj.getOffsetHeight(); 		// Top 간격 
	trace("[/frmTop.xfdl][st_userNmDept_onmouseenter()] ==> [TEST_03][obj.left]"+ parseInt(obj.left) +"[obj.top]"+ obj.top
		+"[obj.height]"+ obj.height +"[obj.getOffsetHeight()]"+ obj.getOffsetHeight() );
	trace("[/frmTop.xfdl][st_userNmDept_onmouseenter()] ==> [TEST_04][left_2]"+ left_2 +"[top_2]"+ top_2 );  
 
	this.pdv_popupSet.trackPopupByComponent(obj, left_2, top_2);	// 지정된 컴포넌트를 기준점으로 PopupMenu 컴포넌트를
		화면에 나타나게 지정하는 메소드
 	trace("[/frmTop.xfdl][st_userNmDept_onmouseenter()] ==> [TEST_end][pdv_popupSet.visible]"+ this.pdv_popupSet.visible );  
 
	trace("[/frmTop.xfdl] [st_userNmDept_onmouseenter()] ==> [화면 크기_00][application.mainframe.width]"+ 
	application.mainframe.width +"[application.mainframe.height]"+ application.mainframe.height ); 
  
	var nIndex = system.getMonitorIndex(application.mainframe.left, application.mainframe.top);		// 모니터 Index
	var strRes = system.getScreenResolution(nIndex);
	trace("[/frmTop.xfdl] [st_userNmDept_onmouseenter()] ==> [화면 해상도_02][nIndex]"+ nIndex +"[strRes]"+ 
	strRes +"[objScreenSize.left]"+ objScreenSize.left +"[objScreenSize.top]"+ objScreenSize.top ); 
}
--------------------------------------------------------------------------------------------------------------------------------

- 프로파일 변경 팝업(/pop_chgPropile.xfdl)에서 사용자 정보 수정
1. 도면 조회/다운로드(/NC_FloorPlanInqyDwnld.xfdl) 파일 참조 ==>  도면조회/다운로드 다운로드 이력관리(/NC_FloorPlanInqyDwnId_U01.xml])
2. CM_UsrtMngm_U02.xm에서 에러 발생
<statement> 
	 /* 사용자 정보 수정 ==> [cm:CM_UsrtMngm_U02.xml] [2018.08.30, by 진태만] */ 
	UPDATE HSSCU100
	 SET EMAIL= #EMAIL# 			-- 이메일 
		, PWD = TRIM(#NEW_PWD#) 		-- 암호(새로운 암호)
		-- <isNotNull col="NEW_PWD">  ===> 에러 발생   --> 주석 처리 @@@
		--	, PWD  = TRIM(#NEW_PWD#) 		-- 암호(새로운 암호)
		-- </isNotNull>
		 , PHONE= #PHONE# 			-- 핸드폰
		 , MID = #MID#					-- 수정자ID
		 , MDT= TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS')
	WHERE USER_ID  = #USER_ID#		-- 사용자ID 
</statement>
  ==============================================================================================================

- 수정 요청
1. 승인상태CD가 검토대기, 요청대기 ==> 검토자, 승인자 수정 가능하게 수정 @@@ 
2. 검토일자, 승인일자 선택시 오늘 날짜로 입력되게 수정 @@@
3. 승인상태CD2가 검토대기, 요청대기 이면 확인취소(승인내용) 버튼 enable 처리
var sConfStateCd2 = this.ds_list.getColumn(this.ds_list.rowposition, "CONF_STATE_CD_02");   // 승인상태CD_02
 
if(!gfn_isNull(sConfStateCd_02) && (sConfStateCd_02 == "CHK_WAIT" || sConfStateCd_02 == "REQ_WAIT"))	
// 승인상태CD2가 검토대기, 요청대기 이면
{ 
	this.btn_aprvCnfmCanc.set_enable(true);  	// 확인취소(승인내용) 버튼 enable
}
else
{ 
	this.btn_aprvCnfmCanc.set_enable(false);  	// 확인취소(승인내용) 버튼 Disable  
}
==============================================================================================================

- 4M변경 의뢰 등록(/ UM_4MChngReqtInput.xfd) 화면 수정
1. 저장시 요청번호가 Grid 첫 줄 번호로 입력되서 insert 오류남(이승훈 과장 업무)  ==> 강관 수입검사 소스와 동일하게 수정
============================================================================================================== 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 
+----------------------------------------------------// End //----------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

 



