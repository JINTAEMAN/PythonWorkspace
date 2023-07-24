

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2009.09) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2009.09.01(화) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 18:30

- KIAT SM
- 국감대비용 기초자료 출력
요청: 지역산업진흥팀 김소정 연구원, 6009-3731, *@*.*
'09년도 국감대비용 기초자료 작성을 위하여 첨부 양식의 자료출력을 요청
ㅇ 기준 : 최근 3년간 지원기준(07, 08, 09년 각각 개별 시트로 출력요망)
ㅇ 대상사업 : 지역사업(시스템별 사업카테고리 기준) 
-------------------------------------------------------------------------- 
과제번호: 70001392    ---->  (  
 AND P.DUTY_CD IN ('5215','5245')    --진행업무분류(5215:신규평가:지역평가위원회결과확정, 5245:신규평가:산자부확정결과확정)   
 --> AND P.DUTY_CD IN ('5214','5244')    --진행업무분류(5214:신규평가:지역평가위원회결과정리, 5244:신규평가:산자부확정결과정리) 
 AND P.DUTY_CD IN ('5315','5325')    --진행업무분류(5315:중간평가:지역평가위원회결과확정, 5325:중간평가:중앙평가위원회결과확정) 
 AND P.DUTY_CD IN ('5515','5245')    --진행업무분류(5515:최종평가:지역평가위원회결과확정, 5525:최종평가:중앙평가위원회결과확정) 

SELECT TO_CHAR(NVL(SUM('45853000'), 0)/1000, '999,999,999,990')  FROM DUAL 
==============================================================================================================

- 평가위원 추가요청  --> 처리완료
광주 박정환(062-602-7386) 입니다. 
광주과기원 양세윤교수님(601005-)를 위원 추가 부탁드립니다
==============================================================================================================

- 차기 지역R&D 리스트 자료 출력 --> 처리 완료
01. 차기 지역R&D 리스트(20090831).xls --> 민재웅 연구원
1. 전략기획/선도기술/연계기술 수정
2. 평가항목 옆에 지원여부 추가
------------------------------------------------------------------------------------
-- 사업분류 조회 @@@@@@@@@@@@@  
SELECT  PRE_BCLSF_CD AS 상위사업분류코드, BCLSF_CD AS 사업분류코드, BCLSF_NM AS 사업분류명칭, DESCR AS 사업내용, 
        DEPT_ID AS 부서ID_지역산업, ZIP_CD AS 해당지역구분_지역산업, BCLSF_CD AS 사업분류코드,   
        DISP_ORDR AS 화면표시순서, MNGR_MBR_ID AS 사업담당자
        --BCLSF_CD AS 사업분류코드, BCLSF_CD AS 사업분류코드, BCLSF_CD AS 사업분류코드
-- SELECT
FROM RBUSI_CLSF
WHERE BCLSF_CD IS NOT NULL
    AND BCLSF_NM LIKE '%선도%'  --사업분류명칭(지역전략기획기술개발사업)  전략/선도/연계
    --AND DEPT_ID = 'R001'      --대전(지역연계기술개발사업) 
    --AND BCLSF_CD = 'S1840'    --사업분류코드   
    --AND PRE_BCLSF_CD IN ('S1800', 'S1803', 'S1808', 'S1809')   --전략기획
    --AND PRE_BCLSF_CD IN ('S1001', 'S1802', 'S1806', 'S1807')   --선도
    -- AND PRE_BCLSF_CD IN ('S1004', 'S1801', 'S1804', 'S1805')   --연계 
ORDER BY PRE_BCLSF_CD, BCLSF_CD 
--; 
==============================================================================================================

- 평가위원 등록 요청 --> 처리완료
요청: 대구 기획단 이상화 책임연구원 
이름 : 서승한,  (재)구미전자정보기술원
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.09.02(수) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 18:50

- KIAT SM
- 국감대비용 기초자료 출력  --> 처리 완료
요청: 지역산업진흥팀 김소정 연구원, 6009-3731, *@*.*
'09년도 국감대비용 기초자료 작성을 위하여 첨부 양식의 자료출력을 요청
ㅇ 기준 : 최근 3년간 지원기준(07, 08, 09년 각각 개별 시트로 출력요망)
ㅇ 대상사업 : 지역사업(시스템별 사업카테고리 기준) 
- 이의신청 리스트의 경우, 신규평가시 "지역평가위원회"와 "지경부확정"이 있어서 4,000건 이상의 과제가 
나온 것 같습니다. 두 이력은 하나의 세트로 이의신청 아님.(R&D시스템만 해당, 인프라시스템은 해당안됨) 
이의신청접수일, 재평가하는 차수의 사업시작일+ 종료일, 재평가일, 재평가결과를 출력해주십시오. 

- 금액 자리수 콤마 찍기 함수
TAMA_Get_MONEY_COMMA(B.KMNY1, '1'), TAMA_Get_MONEY_COMMA(B.KMNY1, '2')
 --구분자가 3자리 수 이면
SELECT (TO_CHAR(NVL(in_money, 0), '999,999,999,990')) into o_busi_nm  FROM DUAL  --단위(원) 
--구분자가 천원단위 3자리 수 이면
SELECT (TO_CHAR(NVL(in_money, 0)/1000, '999,999,999,990')) into o_busi_nm   FROM DUAL  --단위(천원) 
==============================================================================================================

- 담당간사 변경(지역)  --> 처리 완료
강욱중(KANG9763/kwj1060)에서 김현철(DEFORM/soon3345)로 변경 
과제번호 : 10015996
과제명 : Wide Gap Brazing기법을 적용한 Low Pressure Turbine Air Seal의 신공정 개발
강욱중(선임연구원/공학박사) T) 055-259-3371

-- 업무계획 정보 조회   @@@@@@@@@@@@@ 
SELECT  A.PLAN_ID, A.PLAN_STATUS "계획 현상태", A.DUTY_PLAN_CLSF 업무계획구분, 
A.MMNGR_MBR_ID "주담당자(간사)ID", 
        (SELECT MBR_NM FROM MEMBER WHERE MBR_ID=A.MMNGR_MBR_ID) "주담당자(간사)", 
        WIWON_CONTACT 위원선정주체, IS_OPERATION 평가위원회_개최여부,  
        A.CONTACT_FNSH 위원선정완료여부, DECODE(A.CONTACT_FNSH,'N','확정전','Y','확정') 확정여부
FROM RDUTY_PLAN A
WHERE A.PLAN_ID IS NOT NULL 
     AND A.PLAN_ID IN ('70005290')   --PLAN_ID
--;
-- 업무계획 정보 수정  ==> 담당간사 변경(지역) @@@@@ 
UPDATE RDUTY_PLAN A
SET A.MMNGR_MBR_ID = '10002524'     --주담당자(간사)ID
WHERE A.PLAN_ID IS NOT NULL 
     AND A.PLAN_ID IN ('70005290')   --PLAN_ID
--;  
- 인쇄용종합의견서(팝업창)(지역평가위원회 --> 결과정리 --> 과제별 결과등록[등록] 클릭 --> 
최종평가 지역평가위원회 평가결과) 
==============================================================================================================

- 차기 지역R&D 리스트 자료 출력 --> 처리 완료
01. 차기 지역R&D 리스트(20090831).xls --> 민재웅 연구원 
신규과제에 대해 접수시점의 사업비 신청 데이타를 추가해야 됩니다.
이는 실제 지급된 사업비가 아니라 신규사업계획서에 담긴 기업들의 요구사항이지요.
현재 연도별 지원사업비가 나와있는것과 같이
연도별 신청사업비를 국비, 지방비, 민간현금, 민간현물로 구분하여 기존에 주신 액셀에 추가
(당연히 실제 지급된 지원금액과는 차이가 있을 것입니다. 
==============================================================================================================

- 자료 출력 자료 출력 --> 처리 완료
1. 담당자(간사) 정보 
   memberid(구 itep에서관리하던 key값), 아이디, 패스워드, 이름, 이메일 
2. 과제별 간사정보
   과제번호, 단계, 차수, 담당자명 or member id 
==============================================================================================================

- 사업비정산 관련 --> 처리 완료
요청: 대구 기획단 박성진 연구원(STONEGANG/kunta)
사업비정산과정 중 2년 과제와 1년 과제가 한 정산업무계획에 들어가 있습니다.
2년과제는 1차년도 사업비를 이월후 2차년도에서 일괄정산을 해야하며, 그러기 위해서는
1차년도 정산결과를 확정해야 합니다.
그러나, 단위과제별로 확정이 되지 않고 업무 계획별로 확정이 되기 때문에, 타 과제를
확정할 수 없는 상황에서 계획전체를 확정할 수 없는 상황입니다.
업무계획 ID : 70009569
과제번호 : 70001617    --> 70001697 
업무 계획을 반려 시켜 주시면 될 것 같습니다. 
처리: 업무계획 ID : 70009569을 삭제하고 사업비 정산 --> 업무계획에서 다시 계획 수립할 수 있도록 처리 

-- 과제진행이력 정보 삭제   @@@@@@@@@@@@@
-- DELETE FROM  RSBJCT_PRGS P
WHERE P.SBJCT_ID IS NOT NULL
    AND P.SBJCT_ID IN ('70001617', '70001697')  --과제번호   
    AND P.DUTY_CD IN ('7710', '7720', '7730')  --진행업무분류(7710:사업비정산일정계획수립, 
    -- 7720:사업비정산결과정리, 7730:사업비정산결과확정)
    --AND P.ORDR = '1'               --연차수
--; 
-- 업무계획 정보 삭제   @@@@@@@@@@@@@
-- DELETE FROM  RDUTY_PLAN P
WHERE P.PLAN_ID IS NOT NULL 
      AND P.PLAN_ID IN ('70009569')   --PLAN_ID
      AND P.DUTY_PLAN_CLSF IN ('7710', '7720', '7730') 
--; 
==============================================================================================================

- 담당간사 지정 수정 --> 처리 완료
김상영(HRSKSY/fdcm19)  062-602-7389 
개발사업비 카드관리 시스템(http://riscard.kiat.or.kr)에서 데이타 안넘어와서 그럼
평가관리 화면에서 "중간평가(최종평가)/실태조사/간사지정"메뉴에서 지역전략기획단 담당간사 지정이 
가능토록 요청드리오니 조속히 조치하여 주시기 바랍니다.   
----------------------------------------------------------------------------------------------------------

-- 과제관련자 변경 이력 정보(참여연구원)   @@@@@@@@@@@@@  
SELECT M.MBR_ID 구성원ID,  M.ROLE_CD 구성원_참여_역할CD, 
      (SELECT CODE_NAME FROM RCODE WHERE MAIN_CODE='7051' AND SUB_CODE = M.ROLE_CD)  
      AS 구성원_참여_역할,  AVAIL_SDATE 유효시작일, AVAIL_EDATE 유효종료일, BUSI_ID 소속회사_ID
-- SELECT * 
FROM RSBJCT_MBR_HSTR M
WHERE M.SBJCT_ID IS NOT NULL
    AND M.SBJCT_ID = '70004782'      --과제번호
    AND M.AVAIL_EDATE = '99991231'   --유효종료일
    AND M.ROLE_CD = '1006'   --구성원_참여_역할(1006:담당간사, 1007:평가위원,)
    --AND M.CHRGR_MBR_ID IN ('12915493')      --최종과제책임자ID 
--;
------------------------------------------------------------------------

-- 과제마스터의 담당간사 변경  ==> 담당간사 변경 @@@@@@@@@@@@@ 
UPDATE RSUBJECT
SET MNGR_MBR_ID = /*[#1=10033014]*/ '10033014'
WHERE AVAIL_EDATE = '99991231' 
AND SBJCT_ID = /*[#2=70004782]*/ '70004782'
--;  
   
--과제관련자 변경이력에 현재 담당간사를 유효종료 ==> 담당간사 변경 @@@@@@@@@@@@@ 
UPDATE RSBJCT_MBR_HSTR
SET AVAIL_EDATE = TO_CHAR(SYSDATE - 1, 'yyyymmdd')
WHERE AVAIL_EDATE = '99991231'
AND ROLE_CD = '1006'
AND SBJCT_ID = /*[#1=70004782]*/ '70004782'
--;

--해당과제의 과제관련자 변경이력에 신규담당간사를 등록 @@@@@@@@@@@@@ 
INSERT INTO RSBJCT_MBR_HSTR
            (MBR_HSTR_SEQ, SBJCT_ID, MBR_ID, AVAIL_SDATE, AVAIL_EDATE,  --유효시작일
            ROLE_CD, SBJCT_SEQ, BUSI_ID, REG_MBR_ID, REG_TIME
            ) 
SELECT   (SELECT NVL(MAX(MBR_HSTR_SEQ), 0) FROM RSBJCT_MBR_HSTR
WHERE SBJCT_ID = A.SBJCT_ID)
+ (ROW_NUMBER() OVER(PARTITION BY A.SBJCT_ID ORDER BY ROWNUM))
, A.SBJCT_ID
, /*[#1=10033014]*/ '10033014'   --구성원ID
, TO_CHAR(SYSDATE, 'yyyymmdd')   --유효시작일
, '99991231'                     --유효종료일
, '1006'                         --구성원_참여_역할(1006:담당간사)
, A.LAST_HSTR_NUM
, (SELECT NVL(NDEPT_ID, '99999999') FROM RMEMBER WHERE MBR_ID =  '10033014')
, /*[#3=12912862]*/ '12912862'
, SYSDATE
FROM RSUBJECT A
WHERE AVAIL_EDATE = '99991231'
AND SBJCT_ID = /*[#4=70004782]*/ '70004782'
--; 
==============================================================================================================

- 사업비 수정
송기홍(GOPOINT94/7point77)
과제번호: 70003220, 선박 계류용 퀵 릴리즈 훅 및 원격(ZigBee) 모니터링 시스템 개발  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.09.03(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:30

- KIAT SM
- 지역RnD DB 분석(지역RnD DB 메인 작성)
1. 과제기본 정보: RSUBJECT
2. 과제진행이력 정보보: RSBJCT_PRGS
3. 연차별개발기간 및 내용 정보: RSBJCT_ORDR
4. 과제사업비구성변경이력(분담구성): RSBJCT_ALLOT_PRGS
==============================================================================================================

- 전결 처리 --> 처리완료 
요청: 대구 기획단 박성진 연구원(STONEGANG/kunta)
결과보고(확정)에서 확정 처리 중 에러 발생  ===> 확정으로 처리
업무계획ID: 70009601 
--과제진행이력 정보  수정   @@@@@@@@@@@@@   
UPDATE RSBJCT_PRGS P
SET P.plan_id  = '70009601'   --업무계획ID
WHERE P.SBJCT_ID IN ('70001617')  --과제번호   
    AND P.DUTY_CD IN ('7720')  --진행업무분류(7710:사업비정산일정계획수립, 
--; 
--업무계획 정보  수정   @@@@@@@@@@@@ 
-- UPDATE RDUTY_PLAN A
SET A.PLAN_STATUS = '2500' --계획 현상태( -1500:(계획)전결, 2500:(결과)전결)
WHERE A.PLAN_ID IS NOT NULL 
     AND A.PLAN_ID IN ('70009601')   --PLAN_ID
--; 
==============================================================================================================

-사업비정산 처리(당해정부출연금 누락 건)  --> 처리 완료 
요청: 대구 기획단 이상화 연구원(RDMP/ljy1008)
RISNET에서 사업비정산부분에서 "정부출연금"에 지방비부분이 빠져있는 과제들의 리스트
국비+지방비1+지방비2=정부출연금이 될 수 있도록 수정 
원인: 사업비정산 및 지급 정보 Table 지급금액(PAY_MNY) 필드에 지방비가 없음
(당해정부출연금 = 지급금액(국비): GOV_MNY)
처리: 사업비정산 및 지급 정보 Table(RBUSI_CALC) 지급금액(PAY_MNY) 필드 지방비 추가
업무계획ID: 70009580 --> 과제번호: 70002896, 70001450(정상)
--사업비정산 및 지급 정보   @@@@@@@@@@@@@ 
SELECT M.PLAN_ID 업무계획ID, M.SBJCT_ORDR "차수", M.SBJCT_ID 과제ID, M.FUND_ROOT_TYPE "사업분담코드", M.ALLOT_ROLE_CD 
분담금구분,  --분담금구분(1001:국비,1004:지방비1,1005:지방비2)
M.PAY_MNY "지급금액(국비)", M.RMN_GRVN_MNY "잔액 정부출연금", M.RMN_CIVIL "민간현금(잔액)", M.RMN_CIVIL_ARTCL "민간현물 잔액(이월시)", 
M.CALC_SBJCT_CLSF 정산구분,    --정산구분(정산구분(정상과제1, 문제과제(중단/실패 등)2)
M.SBJCT_STEP 과제단계, M.SBJCT_YEAR 과제년도,M.SBJCT_ORDR 연차별차수, M.BUSI_CALC_CLSF 사업비지급_정산구분CD, --사업비지급_정산구분(11: 일반지급)
(SELECT CODE_NAME FROM RCODE WHERE SUB_CODE = M.BUSI_CALC_CLSF AND MAIN_CODE = '1039' AND AVAIL_EDATE='99991231') 사업비지급_정산구분,
(SELECT CODE_NAME FROM RCODE WHERE SUB_CODE = M.BUSI_CALC_CLSF AND MAIN_CODE = '1038' AND AVAIL_EDATE='99991231') 사업비지급_정산구분2,
M.ORGN_DATE 발생일자, M.SBJCT_SEQ 과제진행이력SEQ, M.AVAIL_EDATE 유효종료일, M.PAY_TYPE 지급형태_5038, 
M.PAY_RQST_DATE 지급요청일, M.AVAIL_EDATE 실지급입금일, M.FUND_CD 사업예산코드, M.FIX_YEAR 사업책정년도, M.ORDR 사업비지급예산_차수,
M.ADIT_BUSI_ID 위탁회계법인ID, M.REDM_MNY 출연금_환수,  M.REG_MBR_ID 등록자ID, M.REG_TIME 등록일시
FROM RBUSI_CALC M
WHERE M.SBJCT_ID IS NOT NULL 
     AND M.SBJCT_ID IN ('70003011')   --과제번호 ===> 70001450(정상), 70003011
     --AND M.ALLOT_ROLE_CD IN ('1004', '1005')   --분담금구분(1001:국비,1004:지방비1,1005:지방비2)
    --AND M.BUSI_CALC_CLSF = '11'     --사업비지급_정산구분(11: 일반지급)
--; 

--사업비정산 및 지급 정보 저장  @@@@@@@@@@@@@ 
INSERT INTO RBUSI_CALC
(  
    SBJCT_ID, SBJCT_ORDR, SBJCT_STEP,  
    PAY_MNY, ALLOT_ROLE_CD,  
    BUSI_CALC_CLSF, FUND_ROOT_TYPE, FUND_CD, ORGN_DATE,
    SBJCT_SEQ, SBJCT_YEAR, AVAIL_EDATE, PAY_TYPE, PAY_RQST_DATE,
    REAL_PAY_DATE, CALC_TYPE_CLSF,  FIX_YEAR, ORDR, RMN_GRVN_MNY, RMN_CIVIL, RMN_CIVIL_ARTCL,
    PLAN_ID, REG_MBR_ID, REG_TIME, ADIT_BUSI_ID, CALC_SBJCT_CLSF, REDM_MNY
)    
SELECT '70003011' "과제번호", SBJCT_ORDR "차수", SBJCT_STEP, 
'11750000' "지급금액(국비)", '1004'"분담금구분",   --분담금구분(1001:국비,1004:지방비1,1005:지방비2)  
--==> 수정부분(1004, 1005 2개 다 추가 해야 함)
BUSI_CALC_CLSF "사업비지급_정산구분CD", '' "사업분담코드", '' "사업예산코드", ORGN_DATE,  
SBJCT_SEQ,  SBJCT_YEAR,  AVAIL_EDATE,  PAY_TYPE,  PAY_RQST_DATE,
REAL_PAY_DATE,  CALC_TYPE_CLSF, FIX_YEAR, ORDR, RMN_GRVN_MNY, RMN_CIVIL, RMN_CIVIL_ARTCL,
PLAN_ID, REG_MBR_ID, REG_TIME, ADIT_BUSI_ID, CALC_SBJCT_CLSF,  REDM_MNY
FROM RBUSI_CALC M
WHERE M.SBJCT_ID IS NOT NULL 
     AND M.SBJCT_ID IN ('70003011')   --과제번호 ===> 70001450(정상), 70003011
     AND M.ALLOT_ROLE_CD IN ('1001')   --분담금구분(1001:국비,1004:지방비1,1005:지방비2), 
    --AND M.BUSI_CALC_CLSF = '11'     --사업비지급_정산구분(11: 일반지급)
--;
-----------------------------------------------------------------------------------------------------------------------------

-- 과제사업비구성변경이력(분담구성) 정보 조회   @@@@@@@@@@@@@  ===> 당해정부출연금 확인 
SELECT SBJCT_ID "과제번호", SBJCT_ORDR "차수", --SBJCT_STEP, 'N' RESULT_YN,  
MIN((SELECT SUM(BC.PAY_MNY)
   FROM RBUSI_CALC BC
  WHERE BC.SBJCT_ID = A.SBJCT_ID
  AND BC.SBJCT_STEP = A.SBJCT_STEP
  AND BC.SBJCT_ORDR = A.SBJCT_ORDR
  AND BC.BUSI_CALC_CLSF = '11'
  AND BC.AVAIL_EDATE = '99991231'
  GROUP BY BC.SBJCT_ID)) "당해정부출연금",   --당해정부출연금 = 지급금액(국비)
NVL(SUM(CASE WHEN ALLOT_ROLE_CD = '1003' THEN CASH_MNY END), 0) 당해민간현금,
        NVL(SUM(CASE WHEN ALLOT_ROLE_CD IN ('1003', '1006') THEN ARTCL END), 0) 당해민간현물
FROM RSBJCT_ALLOT_PRGS A
WHERE SBJCT_ID = '70003011' --과제번호
    AND SBJCT_ORDR = '1'    --차수
    AND SBJCT_STEP = '0' 
    AND AVAIL_EDATE = '99991231'
GROUP BY SBJCT_ID, SBJCT_STEP, SBJCT_ORDR
--;
-----------------------------------------------------------------------------------------------------------------------------

--년차별 사업비 정보  조회   @@@@@@@@@@@@@ 
SELECT T_TERM "차수 및 기간"
,DECODE(T_TERM,NULL,'', MAX(T_DATE)) 협약일자
,TO_CHAR(SUM(DECODE(C.ALLOT_ROLE_CD,'1001',C.CASH_MNY)))  AS "국비(정부출연금)"
,TO_CHAR(SUM(DECODE(C.ALLOT_ROLE_CD,'1004',C.CASH_MNY)))  AS "지방비1(정부출연금)"
,TO_CHAR(SUM(DECODE(C.ALLOT_ROLE_CD,'1005',C.CASH_MNY)))  AS "지방비2(정부출연금)"
,TRIM(TO_CHAR(SUM(DECODE(C.ALLOT_ROLE_CD,'1001',C.CASH_MNY)),'999,999,999,999,990')) AS "국비(정부출연금)_컴"
,TRIM(TO_CHAR(SUM(DECODE(C.ALLOT_ROLE_CD,'1004',C.CASH_MNY)),'999,999,999,999,990')) AS "지방비1(정부출연금)_컴"
,TRIM(TO_CHAR(SUM(DECODE(C.ALLOT_ROLE_CD,'1005',C.CASH_MNY)),'999,999,999,999,990')) AS "지방비2(정부출연금)_컴"
,TRIM(TO_CHAR(SUM(DECODE(C.ALLOT_ROLE_CD,'1001',C.CASH_MNY)) + SUM(DECODE(C.ALLOT_ROLE_CD,'1004',C.CASH_MNY)) +
SUM(DECODE(C.ALLOT_ROLE_CD,'1005',C.CASH_MNY)),'999,999,999,999,990')) AS 계
,TRIM(TO_CHAR(SUM(DECODE(C.ALLOT_ROLE_CD,'1003',C.CASH_MNY)),'999,999,999,999,990')) AS 민간현금
,TRIM(TO_CHAR(SUM(DECODE(C.ALLOT_ROLE_CD,'1003',C.ARTCL,'1006',C.ARTCL)),'999,999,999,999,990')) AS 민간현물
,TRIM(TO_CHAR(SUM(DECODE(C.ALLOT_ROLE_CD,'1001',C.CASH_MNY,'1004',C.CASH_MNY,'1005', C.CASH_MNY)) + 
SUM(DECODE(C.ALLOT_ROLE_CD,'1003',C.CASH_MNY)) +  
SUM(DECODE(C.ALLOT_ROLE_CD,'1003',C.ARTCL,'1006',C.ARTCL)),'999,999,999,999,990')) AS 총계
  FROM (
        SELECT  B.SBJCT_ID, B.SBJCT_STEP, B.ORDR,
                 DECODE(B.SBJCT_STEP,0,'',B.SBJCT_STEP  '단계 ')  B.ORDR  '차'  '<BR>(' 
                 TO_CHAR(TO_DATE(B.DVLP_SDATE,'YYYYMMDD'),'YYYY.MM.DD')  '~' 
                 TO_CHAR(TO_DATE(B.DVLP_EDATE,'YYYYMMDD'),'YYYY.MM.DD')  ')'   ';'  
                     (SELECT (CASE WHEN MBR_ID = '90000888' OR MBR_ID = '90000116' THEN MBR_NM
                                     ELSE SUBSTR(MBR_NM,0,2) END) MBR_NM FROM MEMBER WHERE MBR_ID = (
                                      SELECT ADIT_BUSI_ID FROM RBUSI_CALC 
                                      WHERE BUSI_CALC_CLSF = '11' 
                                              AND ALLOT_ROLE_CD = '1001' 
                                            AND SBJCT_ID = B.SBJCT_ID
                                            AND SBJCT_STEP = B.SBJCT_STEP
                                            AND SBJCT_ORDR = B.ORDR
                                            AND ROWNUM = 1)) T_TERM --차수및 기간
                ,(SELECT TO_CHAR(TO_DATE(SUBSTR(MAX(LPAD(X1.SEQ,4,' ')  X1.AVAIL_SDATE),5),'YYYYMMDD'),'YYYY.MM.DD') --협약일자
                    FROM RSBJCT_PRGS X1
                   WHERE X1.SBJCT_ID = B.SBJCT_ID
                     AND X1.SBJCT_STEP = B.SBJCT_STEP
                     AND X1.ORDR  = B.ORDR
                     AND X1.DUTY_CD = '6624'
                 ) T_DATE-- 협약일자
          FROM  RSUBJECT    A
               ,RSBJCT_ORDR B
         WHERE A.SBJCT_ID =  '70003011' --과제번호
           AND A.SBJCT_ID = B.SBJCT_ID
           AND B.AVAIL_EDATE = '99991231'
           AND B.ORDR <> 0
       ) A, RSBJCT_ALLOT_PRGS C
WHERE A.SBJCT_ID = C.SBJCT_ID
AND A.SBJCT_STEP = C.SBJCT_STEP
AND A.ORDR = C.SBJCT_ORDR
AND C.AVAIL_EDATE = '99991231'
GROUP BY ROLLUP(T_TERM)
--;
-----------------------------------------------------------------------------------------------------------------------------

- 신규평가 지역평가위원회 평가결과(사업비 조정)
평가관리 --> 신규평가 --> 지역평가위원회  --> 결과정리Tab[심의결과보기]: 클릭 --> 사업비 조정
==============================================================================================================

- 평가위원 등록 요청 --> 처리 완료 
요청: 대구 기획단 이상화 책임연구원 
이름 : 제갈종건
==============================================================================================================

- 비밀번호 분실 처리 --> 처리 완료 
*@*.*, 이동훈(ALAMBRA8721/*)
==============================================================================================================

 - 주간보고(17:00  ~ 17:40)
1. 자료 출력 요청이 많았음
2. 다음주 월요일에서 금요일까지 광역R&D 사업 접수 예정
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.09.04(금) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 18:30

- KIAT SM
- 지역RnD DB 분석(지역RnD DB 메인 작성)
1. 과제기본 정보: RSUBJECT
 (SBJCT_ID)
2. 과제진행이력 정보: RSBJCT_PRGS
 (SBJCT_ID, SEQ)
3. 연차별개발기간 및 내용 정보: RSBJCT_ORDR
 - (SBJCT_ID, SBJCT_STEP, ORDR, SEQ, AVAIL_EDATE)
 - DVLP_SDATE(개발시작일), DVLP_EDATE(개발종료일)
4. 과제사업비구성변경이력(분담구성) 정보: RSBJCT_ALLOT_PRGS
 - (SBJCT_ID, SBJCT_STEP, SBJCT_ORDR, SBJCT_SEQ,  ALLOT_BUSI_ID, ALLOT_ROLE_CD, SEQ, AVAIL_EDATE)
 - * 현금(CASH_MNY), * 현물(ARTCL)
 - ALLOT_ROLE_CD(분담기관역할CD(1001:국비, 1002:지자체, 1003:기본사업비(민간), 1004:지방비1, 1005:지방비2, 1006:위탁사업비))
5. 사업비정산 및 지급 정보 : RBUSI_CALC
 - (SBJCT_ID, SBJCT_STEP, SBJCT_ORDR, BUSI_CALC_CLSF, ORGN_DATE, ALLOT_ROLE_CD)

6. 기술료 환수금 실적 정보 : SAPMNT_PLAN
 - (SEQ_PK)
==============================================================================================================

- 사업수행계획서 검토
1. 사업수행계획서 검토 (오전중에 내용 검토 요망 및 고객과 내용 검토 및 보안사항 파악) 
2. 착수계 : 용역 책임자계에서  주민 번호와 집 주소를 써서 회신 바랍니다. 
3. 보안각서 출력해서 사인 바랍니다.
==============================================================================================================

- 사업비정산 처리(당해정부출연금 누락 건) --> 처리 완료 
요청: 대구 기획단 이상화 연구원(RDMP/ljy1008)
과제번호 : 70001697
2차년도 지방비  3,000만원이 정부출연금에서 누락되어 있음, 1차년도는 지방비 반영되어 있음
==============================================================================================================

- 평가위원(전문위원) 등록 --> 처리 완료
요청: 대구 기획단 모중환 연구원
박현근(요청자:조광호, 053-350 - 1131)
성명:조광호(*) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.09.07(월) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 18:30  --> 광역R&D 과제 접수 시작, KIAT 서초센타 출장

- KIAT SM
- 지역RnD DB 분석(지역RnD DB 메인 작성)
1. 과제기본 정보: RSUBJECT
 (SBJCT_ID)
2. 과제진행이력 정보: RSBJCT_PRGS
 (SBJCT_ID, SEQ)
3. 연차별개발기간 및 내용 정보: RSBJCT_ORDR
 - (SBJCT_ID, SBJCT_STEP, ORDR, SEQ, AVAIL_EDATE)
과제진행이력주체, 과제단계, 차수, 데이터변경이력, 유효종료일
과제진행 일련번호
 - DVLP_SDATE(개발시작일), DVLP_EDATE(개발종료일)
4. 과제사업비구성변경이력(분담구성) 정보: RSBJCT_ALLOT_PRGS
 - (SBJCT_ID, SBJCT_STEP, SBJCT_ORDR, SBJCT_SEQ,  ALLOT_BUSI_ID, ALLOT_ROLE_CD, SEQ, AVAIL_EDATE)
 - * 현금(CASH_MNY), * 현물(ARTCL)
 - ALLOT_ROLE_CD(분담기관역할CD(1001:국비, 1002:지자체, 1003:기본사업비(민간), 1004:지방비1, 1005:지방비2, 1006:위탁사업비))
5. 사업비정산 및 지급 정보 : RBUSI_CALC
 - (SBJCT_ID, SBJCT_STEP, SBJCT_ORDR, BUSI_CALC_CLSF, ORGN_DATE, ALLOT_ROLE_CD)
6. 기술료 환수금 실적 정보 : SAPMNT_PLAN
 - (SEQ_PK)
7. 사업분류 정보 : RBUSI_CLSF
8. 회원 정보 : MEMBER
9. 사업체 정보 : BUSI 
==============================================================================================================

- 세금계산서 처리 요청
최인완 차장에게 처리 요청
- 진태만 8월달 청구 내역
1. 제안서 작성(토요 근무 중식) 2009-08-08 12,000원
2. 제안서 작성(토요 근무 석식) 2009-08-08 11,500원
3. 양재동 출장 택시비(한국산업기술진흥원 사업팀) 2009-08-27   5,800원
총 청구 합계: 29,300원
4. 입금 요청 통장
제일은행 통장번호: 130-20-502841, 예금주: 진태만
---------------------------------------------------------------------------------------------------------

- 최윤종 8월달 청구 내역
1. 교통비(광역경제권선도산업육성사업 워크샵) 왕복 2009-08-27 25,800원
총 청구 합계 : 25,800원
2. 입금 요청 통장
외환은행 084-18-48402-1, 예금주 : 최윤종
==============================================================================================================

- KIAT 서초센타(서초IC 근처) 출장
국정감사를 위해 DB 데이타 확인 요청(DB 연결이 안되어서 작업 못 함)
1. 양재센타 출장 택시비(역삼동 --> 서초IC) 2009-09-07   4,700원
2. 양재센타 출장 택시비(역삼동 --> 서초IC) 2009-09-08   4,200원
3. 센타 복귀(착수보고회) 택시비(서초IC --> 역삼동) 2009-09-08   4,400원
4. 중식 식대(담당 연구원 접대)  2009-09-10   14,000원
5. 센타 복귀 택시비(서초IC --> 역삼동) 2009-09-11   4,200원
6. 석식 식대(야근) 2009-09-17   10,500원
7. 종이컵,커피: 최윤종 2009-09-21   14,850원
8. 석식 식대(야근): 김동균 2009-09-23   10,000원
---------------------------------------------------------------------------------------------------------

- KIAT 서초센타(서초IC 근처)
IP: 10.0.1.138(124 ~ 140) G.W: 10.0.1.1
S.M: 255.255.255.0 DNS: 168.126.63.1, 164.124.101.2
네트워크: kmac0301
네트워크 키: 76581283821738779255471085
KIAT 시스템 관리: 6009-3066
KIAT 시스템 관리(역삼동: 개발3실): 6009-3276(연무기술 이종보 차장), 황정균 과장(*)
- KIAT 서초센타 프린터 설정
hp 레이저젯 5200TN --> 프린터 IP: 10.0.1.127(회의실)
hp color LaserJet 5550 --> 프린터 IP: 10.0.1.121(문앞)  ==> 양면 가능
후지 제녹스 DocuCentre-III 3007  --> 프린터 IP: 10.0.1.121(문앞)  ==> 양면 인쇄 안됨 
---------------------------------------------------------------------------------------------------------

- tracert
정의: 원하는 메인(주소)까지 어떤 주소들을 거쳐서 가는가를 알아볼수있는 것
C:\Documents and Settings\TAMA2> tracert 110.14.182.198

Tracing route to 110.14.182.198 over a maximum of 30 hops
  1     1 ms     1 ms     1 ms  10.0.1.1  ---> 게이트 웨이
  2     1 ms     3 ms    <1 ms  static.211-232-54-1.nexg.net [211.232.54.1]  ---> 내 컴의 공인 게이트 웨이(IP:.119)
  3     6 ms     7 ms     3 ms  172.26.161.61
  4    10 ms     8 ms     6 ms  static.221-132-95-254.nexg.net [221.132.95.254]
  5    14 ms    11 ms    11 ms  222.235.68.89
  6     6 ms     7 ms     5 ms  211.117.1.217
  7    22 ms    19 ms    23 ms  211.117.1.149
  8     9 ms     7 ms     7 ms  118.221.6.26
  9     6 ms     7 ms     5 ms  58.229.37.162
 10    10 ms    10 ms    10 ms  58.229.38.162
 11     7 ms     9 ms     6 ms  110.13.128.46
 12    40 ms    12 ms     8 ms  110.13.128.50
---------------------------------------------------------------------------------------------------------

- telnet 연결  ===> 1521 포트가 안 막혀 있다는 의미
> telnet 110.14.182.198 1521
Microsoft Telnet Client 시작
이스케이프 문자: 'CTRL+]'
Microsoft Telnet>
==============================================================================================================

- 도서 구매
1. 한권으로 끝내는 PMP Exam Pass,  STEN(/권원일 29,400원(30%↓)
2. 개발자도 알아야 할 소프트웨어 테스팅 실무[제2판], 한빛미디어/한동환   20,000원
3. 소프트웨어 공학(4차 개정판), 정익사/최은만  23,750원  ===> 미 구매(추천 받음)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.09.08(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00  --> 착수보고회(17:00 ~), KIAT 서초센타 출장

- KIAT SM
- 지역RnD DB 분석(지역RnD DB 메인 작성)
1. 과제기본 정보: RSUBJECT
 (SBJCT_ID)
2. 과제진행이력 정보: RSBJCT_PRGS
 (SBJCT_ID, SEQ)
3. 연차별개발기간 및 내용 정보: RSBJCT_ORDR
 - (SBJCT_ID, SBJCT_STEP, ORDR, SEQ, AVAIL_EDATE)
과제진행이력주체, 과제단계, 차수, 데이터변경이력, 유효종료일
과제진행 일련번호
 - DVLP_SDATE(개발시작일), DVLP_EDATE(개발종료일)
4. 과제사업비구성변경이력(분담구성) 정보: RSBJCT_ALLOT_PRGS
 - (SBJCT_ID, SBJCT_STEP, SBJCT_ORDR, SBJCT_SEQ,  ALLOT_BUSI_ID, ALLOT_ROLE_CD, SEQ, AVAIL_EDATE)
 - * 현금(CASH_MNY), * 현물(ARTCL)
 - ALLOT_ROLE_CD(분담기관역할CD(1001:국비, 1002:지자체, 1003:기본사업비(민간), 1004:지방비1, 1005:지방비2, 1006:위탁사업비))
5. 사업비정산 및 지급 정보 : RBUSI_CALC
 - (SBJCT_ID, SBJCT_STEP, SBJCT_ORDR, BUSI_CALC_CLSF, ORGN_DATE, ALLOT_ROLE_CD)
6. 기술료 환수금 실적 정보 : SAPMNT_PLAN
 - (SEQ_PK)
7. 사업분류 정보 : RBUSI_CLSF
8. 회원 정보 : MEMBER
9. 사업체 정보 : BUSI 
==============================================================================================================

- 지역통계 화면 작업 관련 회의
참석: 김소정 연구원
1. 신규평가, 중간평가 , 최종평가 조회(통계/보고서 --> 지역 사업통계 --> 평가현황)
- 검색 조건: 1. 년도, 2. 시스템(지역R&D, Infra), 3. 세부 사업구분(여러개 선택 가능), 3. 사업구분(대, 중, 소),
   4. 세부 사업구분
- 조정금액(맨 마지막 사업비),평가일(결과 정리일), 협약등록(협약일이 있는 과제수)
2. 오프라인 평가 현황(파일 업로드, 임시 테이블에 저장, 수정)
3. 회의록 작성(지역통계 화면 작업 관련 회의.hwp)
==============================================================================================================

- 착수보고회
17:00 ~ 18:00 발표: KCC 장주팔 이사
18:30 ~ 21:00      회식(오리집)
21:30 귀가
==============================================================================================================

- 네이트온 ID/PWD 변경 -->  tamario3/ssk*****1
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.09.09(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:10

- KIAT SM
- 지역통계 화면 작업 계획(안) 작성
지역통계.hwp, 지역통계Ver3.xls
-------------------------------------------------------------------------------------------------------

- 지역통계 관련
말씀드린 것과 같이, 리즈넷 평가관리시스템에 두가지 버전의 기능을 추가할 예정입니다. 
1. 지역R&D시스템(향후 지역INFRA도 확장가능)에서 평가관련 데이터 추출/출력 
  - 관련 첨부 엑셀자료 참조요망(지역사업에 맞게 논의된 사항은 수정요망) 
2. 기결정된 데이터 필드에 대하여 담당자 엑셀 업로드를 통한 추가/수정/삭제
관련하여 작업량에 따른 소요예정일 등을 고려한 작업계획(안) 준비 바랍니다. 
==============================================================================================================

- TNS 연결 확인
에러 내용: ORA-12535: TNS 작동이 중단 중입니다.
원인: 오라클DB가 윈도우 서버에 설치되어서 나는 에러로 추정
C:\Documents and Settings\기술사업화지원팀> tnsping 110.14.182.198 4

사용된 매개변수 파일:
별칭 분석을 위해 HOSTNAME 어댑터 사용
Attempting to contact (DESCRIPTION=(CONNECT_DATA=(SID=*)(SERVICE_NAME=110.14.182
.198))(ADDRESS=(PROTOCOL=TCP)(HOST=110.14.182.198)(PORT=1521)))
확인(3080밀리초)
확인(30밀리초)
확인(20밀리초)
확인(10밀리초)

- ORACLE_HOME 환경변수 등록
ORACLE_HOME     C:\oracle\ora92
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.09.10(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:10  --> 과제접수마감(광역)

- KIAT SM
- 지역산업지원사업 관리시스템 시스템 파악 및 추가 개발 일정
1. 진흥원 이관할 때 연결 끊어진 시스템
 1) 그룹웨어, 2) 카드관리시스템(신한), 3) 사후관리 
2. 지역산업지원사업 관리시스템 추가 개발 일정
 1) 사업비카드 및 사후관리시스템 구축 방향
   - 제안평가(9월 3주)
   - 시범운영(11월 3주 ~ 12월 3주)
 2) 전자결재(온-나라시스템) 도입
  - 시스템 설치 및 사용자교육 3개월
  - 시범운영 2개월
==============================================================================================================

- 담당간사 등록 처리 --> 처리 완료
요청: 대전 기획단 박노무 연구원
윤성영 연구원, 조항석 연구원
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.09.11(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:30   --> 역삼 센타 복귀(13:30)

- KIAT SM
- 지역산업지원사업 관리시스템 일정 작성
각 업무 담당자에게 작성 요청 메일 발송
==============================================================================================================

- 전산등록 내용 오류 수정 요청 --> 처리 완료
요청: 대전 기획단 박노무 연구원
과제번호: 70004749
1-2. 연차별 개발목표 및 내용, 내용이 ‘1-1. 최종목표 및 내용’ 내용과 동일하게 들어가 있음
-- 연차별개발기간 및 내용 정보 수정  @@@@ ==> 2개 테이블 조인후 UPDATE
--UPDATE RSBJCT_ORDR U 
SET (U.DVLP_CNTN) = (SELECT B.DVLP_CNTN     --(DVLP_GOAL: 개발목표, DVLP_CNTN AS: 개발내용 범위)
FROM RSBJCT_ORDR_20090911 B, RSBJCT_ORDR U
WHERE U.SBJCT_ID = B.SBJCT_ID
AND U.ORDR = B.ORDR
AND U.SBJCT_SEQ = B.SBJCT_SEQ
AND U.SBJCT_ID IN ('70004749')      --과제번호(과제진행이력주체)
AND U.ORDR = '1'            --연차별 차수
AND U.SBJCT_SEQ IN ('1')            --과제진행 일련번호    
                )
WHERE U.SBJCT_ID IS NOT NULL
     AND U.SBJCT_ID IN ('70004749')      --과제번호(과제진행이력주체)
     AND U.ORDR = '1'            --연차별 차수
     AND U.SBJCT_SEQ IN ('6')          --과제진행 일련번호  
--;
==============================================================================================================

- 전문위원회 제재조치기간 변경 요청 --> 처리 완료
요청: 광주 기획단 임성무 선임연구원 
전문위원회 제재조치 기간을 잘못기입하여 수정 요청  
참여제한 제재기간: 2008.12 .16 ~ 2009.12.15(1년)으로 수정요청(2009.11.15  --> 2009.12.15)
과제번호: 70002030, 70002252
-- 제재조치 정보 조회   @@@@@@@@@@@@@
SELECT P.SBJCT_ID "과제번호", P.PNSMNT_TRGT_ID "구성원ID 혹은 사업체ID", P.PNSMNT_TRGT_CLSF "제재대상구분", --제재대상구분(1: 구성원, 2:사업체)
       P.PNSMNT_SDATE 제재시작일, P.PNSMNT_EDATE 제재종료일, P.AVAIL_SDATE 유효시작일, P.AVAIL_EDATE 유효종료일, P.DESCR "변경사유 설명",
       P.PNSMNT_SEQ "제재조치 발생 일련번호", P.PNSMNT_CD 제재종류, P.ROLE_CD "기업"   ---기업(산기반:1013,중기:5057,인프라:3012,지역:7057)
FROM PNSMNT P
WHERE P.PNSMNT_TRGT_ID IS NOT NULL 
    AND P.SBJCT_ID IN ('70002030')      --과제번호 
    AND P.AVAIL_EDATE = '99991231'      --유효종료일
   --AND P.PNSMNT_TRGT_ID = '10008921'   --구성원ID 혹은 사업체ID

-- 제재조치 정보 수정   @@@@@@@@@@@@@
UPDATE PNSMNT P
SET P.PNSMNT_EDATE = '20091215'   --제재종료일 
WHERE P.PNSMNT_TRGT_ID IS NOT NULL 
    AND P.SBJCT_ID IN ('70002030')      --과제번호 
    AND P.AVAIL_EDATE = '99991231'      --유효종료일
--; 
==============================================================================================================

- 개인정보 수정 필드 길이 확장 요청 --> 처리 완료
요청자: 건일제약 임명신  --> 이마세(KUHNILRND1/kuhnilrnd11)
1. 추가정보 / 학력--> 학위논문명
Studies on construction of nitrogen containing heterocycles via allene intramolecular cycloaddition strategy 
2. 추가정보 /  연구논문 및 저서 > 주저자
Tatiana Bondareva
3. 사업체 등록/수정 - 지식재산권정보 / 특허명(발명의 명칭)
Anesthetic composition for intravenous injection comprising propofol
==============================================================================================================

- STOCKS
월(3,075), 화(3,060), 수(3,060), 목(3,085), 금(3,065)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.09.14(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:30   --> 자리 옮김(e-TRM 구축 개발실:0312)

- KIAT SM
- 결과확정(평가관리 --> 최종평가 --> 지역평가위원회) 에러 --> 처리 완료
요청: 경남 기획단 성기용(TJDRLDYD/mssky1) 연구원  ==>  T. 055-259-3372
평가관리 최종평가->지역평가위원회-> 결과확정에서
70008804: 기계1-090225 --> 우성엔지니어링, 한국기계연구원, 어드밴스테크, 경인테크
--> (10017378, 10017406, 10017443, 70000340, 70002005)
70008806: 기계2-090224 --> 티아이씨, 인하대학교 --> (10017558, 10017659, 10018080)
70009209: 최종평가위원회-090422(공통) --> 에스디--> 10027642  
70009154: 기계1분과 --> 펄스텍  -> 70009154
70009157: 기계분과-차세대2 --> 월드테크, 유엠메카닉스 -> (70000584, 70000653, 70000654)
원인: 과제진행이력 정보 Table(RSBJCT_PRGS)에서 DUTY_CD(진행업무분류(5515:최종평가:지역평가위원회
결과확정)) 필드가 이미 존재 --> 삭제 후 다시 처리할 것
-- 과제진행이력 정보 조회   @@@@@@@@@@@@@
SELECT P.PLAN_ID, P.SBJCT_ID 과제번호, P.SEQ "과제진행번호", P.SBJCT_STEP 과제단계, P.ORDR 연차수, P.DUTY_CD,  
       (SELECT V.CODE_NAME FROM RDUTY_CDV V WHERE V.SUB_CODE = P.DUTY_CD) 진행업무분류,
       P.GRADE_CD 종합평가결과CD, (SELECT GRADE_NM FROM SBJCT_GRADE G WHERE G.SGRADE_CD = P.GRADE_CD) 종합평가결과,
       AVAIL_SDATE "발생일(유효시작일)", P.DCSN_INFRM_DATE 확정통보일자, P.PLAN_ID 접수외업무계획번호,
       TOTAL_DVLP_SDATE 총개발시작일, TOTAL_DVLP_EDATE 총개발종료일, GRADE_POINT 종합평가점수, 
       PRVLG_ALLOT_SCORE 우대배점, P.DCSN_TECH_RATE AS 확정기술료율, P.SBJCT_NM 공식과제명, 
       P.DVLP_AREA "과제범위 및 내용", P.DVLP_GOAL "과제목표", P. EXPECT_EFFECT "기대효과", REG_TIME "최종수정일"
FROM RSBJCT_PRGS P
WHERE P.SBJCT_ID IS NOT NULL
    AND P.SBJCT_ID = '70001374'    --과제번호
    AND P.PLAN_ID = /*[#5=70009154]*/ '70009154'
    AND P.DUTY_CD = /*[#6=5515]*/ '5515'   --진행업무분류(5515:최종평가:지역평가위원회결과확정)
    AND P.GRADE_CD = 'R0022' --성공 
--;
-- 과제진행이력 정보 삭제   @@@@@@@@@@@@@
DELETE FROM RSBJCT_PRGS P
WHERE P.SBJCT_ID IS NOT NULL
    AND P.SBJCT_ID = '70001374'    --과제번호
    AND P.PLAN_ID = /*[#5=70009154]*/ '70009154'
    AND P.DUTY_CD = /*[#6=5515]*/ '5515'   --진행업무분류(5515:최종평가:지역평가위원회결과확정)
    AND P.GRADE_CD = 'R0022' --성공
--;
------------------------------------------------------------------------------------------

70009208: 최종평가위원회-090422(중점) --> 월드파워텍(주), 부광플랜트(주) --> (10024256, 10024337, 10024348)
====> 과제건수(SBJCT_CNT)가 정산수행 과제건수(EXPENSE_CNT)와 같이 않아서 에러 남
/estm/committee/apprresult/fin_approval_result.jsp 파일에서
<logic:notEqual value="<%=exp_cnt.toString()%>" name="plan" property="sbjct_cnt">
<html:multibox property="plan_id" disabled="true"><bean:write name="plan" property="plan_id"/></html:multibox>
</logic:notEqual> 
-- 통보 과제건수 정보 조회   @@@@@@@@@@@@@
SELECT COUNT(IA.SBJCT_ID)
-- SELECT IB.SBJCT_NOW_STEP, IB.SBJCT_NOW_DEGREE, IA.*
FROM RDUTY_SBJCT_V IA, RSUBJECT IB
WHERE IB.SBJCT_ID = IA.SBJCT_ID
      AND EXISTS(SELECT SBJCT_ID
                   FROM RSBJCT_PRGS
                  WHERE SBJCT_ID = IB.SBJCT_ID      --과제번호
                    AND SBJCT_STEP = IB.SBJCT_NOW_STEP    --과제단계
                    AND ORDR = IB.SBJCT_NOW_DEGREE     --차수
                    AND DUTY_CD = '7730')
      AND IA.PLAN_ID = '70009208'   --PLAN_ID
--;
-- 과제진행이력 정보 조회   @@@@@@@@@@@@@
SELECT P.PLAN_ID, P.SBJCT_ID 과제번호, P.SEQ "과제진행번호", P.SBJCT_STEP 과제단계, P.ORDR 연차수, P.DUTY_CD, 
       (SELECT V.CODE_NAME FROM RDUTY_CDV V WHERE V.SUB_CODE = P.DUTY_CD) 진행업무분류
FROM RSBJCT_PRGS P
WHERE P.SBJCT_ID IS NOT NULL
    AND P.SBJCT_ID IN ('10024348')         --과제번호(10024348, ('10024256', '10024337'))
     AND  P.DUTY_CD = '7730'
--;   
==============================================================================================================

- 정액기술료 관련 --> 처리 완료
요청: 경남 기획단 강욱중(KANG9763/kwj1060) 연구원
과제번호 : 10017756
과제명 : 위치센서 기반 저전력 무선 시큐리티 서비스 기술 개발
1단계  --> 세부주관기관 : ㈜바로텍  /참여기업 : 델타휴닉스㈜
2단계  --> 세부주관기관 : ㈜바로텍  /참여기업 : ㈜에스원
㈜에스원이 지역산업종합관리시스템에 델타휴닉스를 삽입 부탁드립니다.(실시기업 : ㈜바로텍, ㈜에스원, 델타휴닉스㈜)
㈜델타휴닉스, ㈜에스원는 납부한 상태입니다.(40% 혜택 현금납부)
㈜델타휴닉스: 2009-09-02 -->  21,120,000원(21120000)
㈜에스원: 2009-09-02 --> 13,410,000원(13410000) 
㈜바로텍: 2010-09-02 --> 36,572,334원, 2011-09-02 --> 58,515,734원 
그리고, 납부계획서를 참조하여 입력 부탁드립니다.(저희가 처리하기가 곤란한 상태입니다.)
납부계획서 제출일자는 2009년 08월 19일

-- 과제관련업체(사후통합) 정보 수정   @@@@@@@@@@@@@
UPDATE SASBJCT_RELCO C    
SET C.AVAIL_EDATE = '99991231'    --유효종료일(20070111  --> 99991231)
WHERE C.SBJCT_ID = '10017756' 
    AND C.JOIN_ROLE_CD IN ('1003','1004')   --참여업체의 역할(산기반:1013,중기혁:5057,인프라:3012)
      AND C.BUSI_ID IN ('00007781') 
;
==============================================================================================================

- 위탁연구책임자 변경 확인 요청--> 처리 완료
요청: 경북 기획단 장철민(700811/1805211) 연구원
과제번호: 70006227   --> 제일식품, MNGR_MBR_ID(현과제담당자ID)로 
상태: 대구경북한방산업진흥원의 업무 분장으로 인하여 이은경 연구책임자로 변경 
원인: 변경처리 -> 결과보고Tab에서 해당 데이타를 [통과] 처리 안해서 안 바꿔 있었음
-- 업무계획 정보 조회   @@@@@@@@@@@@@  ==> 결과정리 Tab    
SELECT PLAN_STATUS, PLAN_ID, PLAN_NM, 
       (SELECT COUNT(DISTINCT SBJCT_ID) FROM RDUTY_SBJCT WHERE PLAN_ID = RP.PLAN_ID AND AVAIL_EDATE='99991231') CNT,
       TO_CHAR(TO_DATE(RP.PLAN_STIME),'YYYY-MM-DD') PLAN_SDATE
FROM RDUTY_PLAN RP
WHERE RP.DUTY_PLAN_CLSF='9931'
    AND RP.AVAIL_EDATE = '99991231'
    AND RP.PLAN_STATUS = '1500'  
    AND RP.PLAN_MBR_ID = /*[#1=12912862]*/ '12912862'    --현과제담당자ID
--;

-- 변경이의 신청 정보 조회   @@@@@@@@@@@@@ 
SELECT  A.SBJCT_ID, A.SBJCT_STEP 단계, A.ORDR 차수, A.APLY_DATE "신청일자", A.CHNG_SEQ SEQ, A.AGREE_YN "승인여부",    --승인여부(1:승인함, 2:불허함)
        (SELECT CODE_NAME FROM RCODE WHERE MAIN_CODE='7050' AND AVAIL_EDATE='99991231' AND SUB_CODE=A.CHNG_DSSN_CD) "변경/이의 신청", 
        DESCR "변경/이의신청요약내용", CHNG_DISS_CLSF "변경/이의신청구분",   --변경/이의신청구분(1:변경, 2:이의신청, 3:문제과제)  
        A.RECEIPT_MBR_ID, (SELECT MBR_NM FROM MEMBER WHERE MBR_ID=A.RECEIPT_MBR_ID) "접수자" 
FROM RCHNG_DISS A
WHERE A.SBJCT_ID IS NOT NULL
    AND A.SBJCT_ID = '70006227'      --과제번호 
ORDER BY SEQ DESC
--;

-- 과제관련자 변경 이력 정보(참여연구원) 수정  @@@@@@@@@@@@@   ===> DB로 처리하지 말 것
-- UPDATE RSBJCT_MBR_HSTR M
SET M.MBR_ID = '12916134'   --구성원ID
WHERE M.SBJCT_ID IS NOT NULL
    AND M.SBJCT_ID = '70006227'   --과제번호  10010978
   AND M.BUSI_ID = '10010978'  
   AND M.AVAIL_EDATE = '99991231'     --AVAIL_EDATE 유효종료일
    AND M.ROLE_CD = '1011'     --구성원_참여_역할(1001:주관기관 대표자,  1011: 위탁책임자)
--;
==============================================================================================================

- 세부 주관기관 변경(변경/이의신청 --> 변경신청접수) --> 처리 완료
제주 지역단 김정희(JEJU2307/2307) 연구원
과제번호 : 70005027
==============================================================================================================

과제번호 : 70002760 --> 처리 완료
주관기관 : 미래산업기계㈜
상기 기관의 대표자 변경이 있습니다.
현재 공동대표 형태로 나타나고 있습니다.
이전 대표(김근섭)를 삭제하고 공동대표(강종수)님만 대표님으로 변경 요청
관련 서류를 첨부하였습니다.
==============================================================================================================

- 평가위원 등록 --> 처리 완료
요청: 울산 기획단 김도한 연구원
윤희숙, 한국기계연구원부설재료연구소, 721102-2 
김병수, 국립대학법인 울산과학기술대학교 산학협력단, 750916-1
==============================================================================================================

- 과제번호 삭제 여부 확인 --> 처리 완료
요청: 전남 기획단 황금연 연구원
과제번호 : 70007257  --> 백낙주 책임이 삭제 지시 ==> 복구함
과제번호 : 70007087  --> 삭제
이기석: 061-381-9966
==============================================================================================================

- 추석 연휴표 예매
포항 --> 서울 경부, 동양 고속  2009.10.05  00:30  --> 32,300원
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.09.15(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:30

- KIAT SM
- 중간보고서 조회안 됨 --> 처리 완료
요청자: 이자연(*)   ==> 요청: 전남 기획단 황금연(HWANGTWO/chindo) 연구원(061-286-4388) 
과제번호: 70004662   ===> 현상태: 중간평가:지역평가위원회결과확정(5315)
--> 협약 결과보고 통과 : PLAN_ID별로 REPORT ROW INSERT(결과보고서, 정산보고서)
-- 업무계획 정보 조회   @@@@@@@@@@@@@ 
SELECT  A.PLAN_ID 업무계획ID, A.PLAN_STATUS "계획 현상태", A.DUTY_PLAN_CLSF 업무계획구분, A.MMNGR_MBR_ID "주담당자(간사)ID", 
        (SELECT MBR_NM FROM MEMBER WHERE MBR_ID=A.MMNGR_MBR_ID) "주담당자(간사)", 
        WIWON_CONTACT 위원선정주체, IS_OPERATION 평가위원회_개최여부, 
        A.MBR_APPR_TIME 평가위원지정승인일, A.PLAN_STIME 계획시작일, A.PLAN_NM 계획명칭, 
        PLAN_MBR_ID "계획수립자ID", REG_MBR_ID "등록자ID",
        A.CONTACT_FNSH 위원선정완료여부, DECODE(A.CONTACT_FNSH,'N','확정전','Y','확정') 확정여부
FROM RDUTY_PLAN A
WHERE A.PLAN_ID IS NOT NULL 
     AND A.PLAN_ID IN ('70008089')   --업무계획ID 
     AND A.PLAN_STATUS  IN ('2500')   --업무계획ID 1001
--; 

-- 보고서접수 정보 @@@@@@@@@@@@  ====> 중간보고서 조회 가능 여부
SELECT P.SBJCT_ID 과제번호, P.SBJCT_STEP 과제단계, P.SBJCT_ORDR 차수, P.REPORT_CD,  
       (SELECT CODE_NAME FROM RCODE WHERE MAIN_CODE = '7064' AND SUB_CODE = P.REPORT_CD) 접수보고서종류
FROM RREPORT P
WHERE P.SBJCT_ID IS NOT NULL
     AND P.SBJCT_ID = '70004662'    --과제번호 
    --AND P.SEQ = '2'  --연차수
ORDER BY P.REG_TIME
--;

-- 보고서접수 정보 저장   @@@@@@@@@@@ 
INSERT INTO RREPORT 
SELECT SBJCT_ID, SBJCT_STEP, ORDR,
(CASE WHEN T.NO = '1' AND NEXT_ORDR = 'O' THEN '1001'
WHEN T.NO = '2' AND NEXT_ORDR = 'O' THEN '1003'
WHEN T.NO = '1' AND NEXT_STEP IS NULL AND NEXT_ORDR IS NULL THEN '1002'
WHEN T.NO = '2' AND NEXT_STEP IS NULL AND NEXT_ORDR IS NULL THEN '1004'
WHEN T.NO = '1' AND NEXT_STEP = 'O' AND NEXT_ORDR IS NULL THEN '1009'
WHEN T.NO = '2' AND NEXT_STEP = 'O' AND NEXT_ORDR IS NULL THEN '1010' END) REPORT_CD,
'99991231' RCPT_DATE, '99991231' RCPT_INFRM_DATE, 
'00000001' RCPT_MBR_ID, '1001' RCPT_TYPE_CD, '1' RPT_CLSF,
(CASE WHEN T.NO = '1' AND NEXT_ORDR = 'O' THEN TO_CHAR(ADD_MONTHS(TO_DATE(DVLP_EDATE,'YYYYMMDD'),-1),'YYYYMMDD')
WHEN T.NO = '2' AND NEXT_ORDR = 'O' THEN TO_CHAR(ADD_MONTHS(TO_DATE(DVLP_EDATE,'YYYYMMDD'),2),'YYYYMMDD')
WHEN T.NO = '1' AND NEXT_STEP IS NULL AND NEXT_ORDR IS NULL THEN TO_CHAR(ADD_MONTHS(TO_DATE(DVLP_EDATE,'YYYYMMDD'),2),'YYYYMMDD')
WHEN T.NO = '2' AND NEXT_STEP IS NULL AND NEXT_ORDR IS NULL THEN TO_CHAR(ADD_MONTHS(TO_DATE(DVLP_EDATE,'YYYYMMDD'),2),'YYYYMMDD')
WHEN T.NO = '1' AND NEXT_STEP = 'O' AND NEXT_ORDR IS NULL THEN TO_CHAR(TO_DATE(DVLP_EDATE,'YYYYMMDD')-20,'YYYYMMDD')
WHEN T.NO = '2' AND NEXT_STEP = 'O' AND NEXT_ORDR IS NULL THEN TO_CHAR(ADD_MONTHS(TO_DATE(DVLP_EDATE,'YYYYMMDD'),2),'YYYYMMDD') END) RCPT_LMT_DATE,
'N' TONGBO_GUBUN, SEQ SBJCT_PRGS_SEQ, ' ' OFFCL_ABSTR_SUMM, ' ' ENG_ABSTR_SUMM, REG_MBR_ID, REG_TIME,
'00000001' RPT_MBR_ID, ' ' DVLP_BCKGRND, ' ' PRDCT_DESC, ' ' MRKT_CONDITION, ' ' MRKT_CONDITION2, ' ' FUTURE_PLAN, '' RPT_STEP
FROM (
        SELECT P.SBJCT_ID, P.SEQ, P.SBJCT_STEP, P.ORDR, P.PLAN_ID, P.AVAIL_SDATE, P.REG_MBR_ID, P.REG_TIME,
   (SELECT O.DVLP_EDATE
    FROM RSBJCT_ORDR O
WHERE O.SBJCT_ID = P.SBJCT_ID
AND O.SBJCT_STEP = P.SBJCT_STEP
AND O.ORDR = P.ORDR
AND O.AVAIL_EDATE = '99991231') DVLP_EDATE,
   (SELECT 'O'
    FROM RSBJCT_ORDR O
WHERE O.SBJCT_ID = P.SBJCT_ID
AND O.SBJCT_STEP = P.SBJCT_STEP
AND O.ORDR > P.ORDR
AND O.AVAIL_EDATE = '99991231'
AND ROWNUM = 1) NEXT_ORDR,
   (SELECT 'O'
    FROM RSBJCT_ORDR O
WHERE O.SBJCT_ID = P.SBJCT_ID
AND O.SBJCT_STEP > P.SBJCT_STEP
AND O.AVAIL_EDATE = '99991231'
AND ROWNUM = 1) NEXT_STEP
        FROM RSBJCT_PRGS P
        WHERE P.DUTY_CD = '6624'   --진행업무분류(6624:협약결과확정(체결))
AND P.PLAN_ID = '70008089'  --업무계획ID
        --AND P.SBJCT_ID = '70004662'    --과제번호
) X, COPY_T T
WHERE T.NO <= 2
--;
==============================================================================================================

- 정산금 조회 안됨 -->  처리 완료
요청: 광주 박홍순(HSPAK1749/pak1749) 연구원
현상: 사후관리에서 정산금 또는 환수금에서 과제가 검색이 안됨
처리: 정산금구분 관리기관(CALC_CLSF) 3 --> 2로 수정
과제번호 : 70002619
--과제기본 정보 수정   @@@@@@@@@@@@@  
UPDATE RSUBJECT S   
SET S.CALC_CLSF= '2'    --정산금구분 관리기관(1:진흥원,2:기획단, 3:미정) 
FROM RSUBJECT S
WHERE S.SBJCT_ID IS NOT NULL
     AND S.SBJCT_ID IN ('70002619')  --과제번호
--;
==============================================================================================================

- 평가위원 등록 요청 --> 처리 완료
요청: 강원 기획단 나기풍 연구원
이름: 김대옥, email : *@*.*
==============================================================================================================

- 평가위원 등록 요청 -->  
요청: 대구 기획단   책임연구원
이름 : 정두환(JUNG3577/*)
==============================================================================================================

- 한국산업기술진흥원 SM 네트웍(IP 주소) 변경
IP: 192.168.12.72 G.W: 192.168.12.1   
===> IP: 221.142.251.253(평가회의실2)  -> 221.142.251.154(프린터 IP)
S.M: 255.255.255.0 DNS: 168.126.63.1
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.09.16(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 18:30   --> 광역R&D 과제 재접수(09:00 ~ 18:00)

- KIAT SM
- 차기 지역R&D 리스트 자료 출력 --> 처리 완료 
상위사업명을 지역산업진흥사업, 지역혁신산업기반구축사업 2개로 분류 요청 ==> 총: 3,710건
 - 대분류사업 선택
1. 지역혁신산업기반구축사업(S1312)  --> 추가    ============>
2. 신기술보육사업(4개지역)(S1257)
3. 지역산업기술개발사업(진흥사업-4개지역)(S1430)
4. 지역산업기술개발사업(진흥사업-9개지역)(S1431)
5. 지역연계기술개발사업(S1801)
6. 광역경제권선도산업육성산업(S2000)
7. 지역산업선도기술개발사업(S1802)
8. 지역전략기획기술개발사업(S1803) ============> 
-- 사업분류 조회 @@@@@@@@@@@@@ 
SELECT
--(
    (CASE   
    --WHEN PRE_BCLSF_CD IN ('S1312', 'S1341', 'S1342', 'S1809') THEN '지역혁신산업기반구축사업' 
    --WHEN PRE_BCLSF_CD IN ('S1254', 'S1257', 'S1545', 'S1546') THEN '신기술보육사업(4개지역)' 
    --WHEN PRE_BCLSF_CD IN ('S1277') THEN '지역산업기술개발사업(진흥사업-4개지역),' 
    --WHEN PRE_BCLSF_CD IN ('S1800', 'S1801', 'S1804', 'S1805') THEN '지역연계기술개발사업' 
    --WHEN PRE_BCLSF_CD IN ('S1275') THEN '광역경제권선도산업육성산업' 
    --WHEN PRE_BCLSF_CD IN ('S1802', 'S1806', 'S1807') THEN '지역산업선도기술개발사업' 
    --WHEN PRE_BCLSF_CD IN ('S1803', 'S1808', 'S1809') THEN '지역전략기획기술개발사업' 
    WHEN PRE_BCLSF_CD IN ('S1370', 'S1384', 'S1399', 'S1400', 'S1483', 'S1485', 'S1864') THEN '지역혁신산업기반구축사업' 
  ELSE '지역산업진흥사업' END)  
--) into o_busi_nm
FROM RBUSI_CLSF
WHERE BCLSF_CD IS NOT NULL
AND B.BCLSF_CD = in_bclsf_id   --사업분류코드
; 
------------------------------------------------------------------------------------

-- Function 함수 생성
CREATE OR REPLACE Function
ITEP_RDBA.TAMA_Get_BCLSF_NM2( in_bclsf_id varchar2, bclsf_nm2 varchar2, in_para varchar2)
Return varchar2 is
     o_busi_nm  varchar2(500) ;
/*************************************************/
/*   제목 : 공통/중점/기초/전략/선도/연계 가져오기        */
/*   작성자 : 진태만                             */
/*   작성일 : 2009년 9월 1일                    */
/*   최종수정자 :                                */
/*   최종수정일 :                                */
/************************************************/
Begin    

  IF in_para = '1' THEN    --구분자가 실사일 가져오기 이면    
    -- 사업분류 조회 @@@@@@@@@@@@@ 
    SELECT ((CASE WHEN B.PRE_BCLSF_CD IN ('S1800', 'S1803', 'S1808', 'S1809') THEN '전략기획'  
WHEN B.PRE_BCLSF_CD IN ('S1004', 'S1801', 'S1804', 'S1805') THEN '연계'   
WHEN B.PRE_BCLSF_CD IN ('S1001', 'S1802', 'S1806', 'S1807') THEN '선도' 
ELSE bclsf_nm2 END)) into o_busi_nm    --공통/중점/기초/전략/선도/연계 가져오기 
    FROM RBUSI_CLSF B
    WHERE B.BCLSF_CD IS NOT NULL
    AND B.BCLSF_CD = in_bclsf_id    --사업분류코드
     ;
  ELSIF in_para = '2' THEN    --구분자가 상위사업명 가져오기 이면
    -- 사업분류 조회 @@@@@@@@@@@@@ 
SELECT
            (
    (CASE   
--WHEN PRE_BCLSF_CD IN ('S1312', 'S1341', 'S1342', 'S1809') THEN '지역혁신산업기반구축사업' 
--WHEN PRE_BCLSF_CD IN ('S1254', 'S1257', 'S1545', 'S1546') THEN '신기술보육사업(4개지역)' 
--WHEN PRE_BCLSF_CD IN ('S1277') THEN '지역산업기술개발사업(진흥사업-4개지역),' 
--WHEN PRE_BCLSF_CD IN ('S1800', 'S1801', 'S1804', 'S1805') THEN '지역연계기술개발사업' 
--WHEN PRE_BCLSF_CD IN ('S1275') THEN '광역경제권선도산업육성산업' 
--WHEN PRE_BCLSF_CD IN ('S1802', 'S1806', 'S1807') THEN '지역산업선도기술개발사업' 
--WHEN PRE_BCLSF_CD IN ('S1803', 'S1808', 'S1809') THEN '지역전략기획기술개발사업' 
WHEN PRE_BCLSF_CD IN ('S1370', 'S1384', 'S1399', 'S1400', 'S1483', 'S1485', 'S1864') THEN '지역혁신산업기반구축사업' 
              ELSE '지역산업진흥사업' END)  
           ) into o_busi_nm    
        FROM RBUSI_CLSF
        WHERE BCLSF_CD IS NOT NULL
            AND BCLSF_CD = in_bclsf_id   --사업분류코드
         ; 
   END IF;

    return o_busi_nm ;

Exception
     when no_data_found then
          o_busi_nm := ''   ;
          return  o_busi_nm ;
End TAMA_Get_BCLSF_NM2 ;
/
==============================================================================================================

- 기술료 납부계획서 제출일 변경 요청 --> 처리 완료
요청: 경남 기획단 강욱중(KANG9763/kwj1060) 선임연구원
과제번호 : 10017516  
기술료 납부계획 처음 상태로 변경 부탁 드립니다.  
납부계획서 제출일: 2009-09-16  --> 2009-09-02 
--과제진행이력 정보 수정   @@@@@@@@@@@@@
UPDATE RSBJCT_PRGS P
SET P.AVAIL_SDATE = '20090902'   --납부계획서 제출일자 변경
WHERE P.SBJCT_ID IS NOT NULL
AND P.SBJCT_ID = '10017516' --과제번호 
AND P.DUTY_CD = '8815' --진행이력업무분류구분(8815:납부계획서제출) 
--; 
==============================================================================================================

- 협약서류확인 처리 요청 --> 처리 완료
요청: 지역산업진흥팀 민재웅(MINJW316/ghddlr1) 연구원 
과제번호 : 70006520  
==============================================================================================================

- 인쇄용 종합 의견서 안보임 --> 
요청: 전남 기획단 황금연(HWANGTWO/chindo) 연구원
과제번호 : 70004555
평가관리 --> 중간평가 --> 지역평가위원회
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.09.17(목) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 20:00  --> 야근

- KIAT SM
- 지역통계 관련 
1. 기결정된 데이터 필드에 대하여 담당자 엑셀 업로드를 통한 추가/수정/삭제
통계/보고서 탭에서 지역사업통계 --> 평가현황 --> 신규평가, 중간평가, 최종평가, 오프라인평가
<!-- 신규 평가관리통계(지역사업통계) -->
<flow parameterValue="LocalnewReport" accessMenuId="${AccessLocalNew}"
      bizType="${NewReportSB}" bizMethod="getSearchItem" argsActionForm="true" 
      successForward="LocalnewReport" errorForward="LocalnewReport"/>

<!-- 중간 평가관리통계(지역사업통계) -->
<flow parameterValue="LocalmidReport" accessMenuId="${AccessLocalMiddle}"
      bizType="${NewReportSB}" bizMethod="getSearchItem" argsActionForm="true" 
      successForward="middlereport" errorForward="middlereport"/>
      
<!-- 최종 평가관리통계(지역사업통계) -->
<flow parameterValue="LocalendReport" accessMenuId="${AccessLocalEnd}"
      bizType="${NewReportSB}" bizMethod="getSearchItem" argsActionForm="true" 
      successForward="LocalendReport" errorForward="LocalendReport"/>
      
<!-- 오프라인평가 평가관리통계(지역사업통계) -->
<flow parameterValue="LocalOffReport" accessMenuId="${AccessLocalOff}"
      bizType="${NewReportSB}" bizMethod="getSearchItem" argsActionForm="true" 
      successForward="LocalOffReport" errorForward="LocalOffReport"/>
==============================================================================================================

- 전세집 알아 보기  ===> 통화하니 미끼 상품으로 추정됨
1. [관악구 남현동] 단독/다가구 5,000만원
2. 건물종류: 단독  3. 전용면적: 23㎡(100%),  4. 층수: 2/4층  5. 난방연료: 도시가스
6. 연락처: 참조은 공인중개, T)02-599-4989, 담당자: 오병선(*)
http://listing.land.naver.com/article/listing.nhn#dealCate%3DB1%26saleCate%3DC03%26addrCode%3D1162010300%26complexCode%3D%26atclCode%3D0901037934%26atclSale%3DC03
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.09.18(금) 작업 ■■■■■■■■■■■■■■■■
---> 06:40 ~ 18:50

- KIAT SM
- 지역통계 관련 
1. 기결정된 데이터 필드에 대하여 담당자 엑셀 업로드를 통한 추가/수정/삭제
통계/보고서 탭에서 지역사업통계 --> 평가현황 --> 신규평가, 중간평가, 최종평가, 오프라인평가
- 공고조회및등록
http://localhost:8080/pms/ancm/ancm.do
==============================================================================================================

- 지역평가위원회 조회 안되는 과제 확인 요청 --> 처리 완료
요청: 광주 기획단 박정환(PJH7207/1632118p) 연구원, T)062-602-7386
원인: 사업팀에서 평가기본계획 처리를 안해서 지역평가위원회에서 안 보임
과제번호: 70007132, 70007253, 70007265, 70007327, 70007383
--평가기본계획 정보 조회   @@@@@@@@@@@@@  ====> 데이타가 미존재 
SELECT A.SBJCT_ID 과제번호, 
      (SELECT CODE_NAME FROM RCODE WHERE MAIN_CODE='7502' 
AND AVAIL_EDATE='99991231' AND SUB_CODE=A.COMM_CNF) "평가기본계획",
       (SELECT CODE_NAME FROM RCODE WHERE MAIN_CODE='7501' 
AND AVAIL_EDATE='99991231' AND SUB_CODE=A.STEP_CD) "평가단계구분", 
       RCONT_YN "지역조정위원회개최여부", AVAIL_SDATE "유효시작일", AVAIL_EDATE "유효종료일", 
       A.REG_MBR_ID "등록자ID", REG_TIME "최종수정일" 
FROM RJDGE_PLAN_V A
WHERE A.SBJCT_ID IS NOT NULL
    --AND A.SBJCT_ID = '70007132'    --과제번호
ORDER BY A.REG_TIME DESC
--;  
==============================================================================================================

- e-bank에 대한 자료 요청 메일 발송(정보화팀 정우식 팀장(bear@*@*.*))
1. 현재 평가원에서 사용하고 있는 e-bank에 대한 자료 및 기타 e-bank에 대한 자료
안녕하십니까? KCC정보통신 진태만 입니다.
다름이 아니라 요청하신 e-bank에에 대한 자료를 평가원 시스템 운영팀의 신동주PM에게 부탁하여
자료를 받았습니다.
현재 해당 자료는 평가원의 산업기술전자금융시스템(사후관리 시스템) 개발 관련 자료 입니다.
압축을 푸시고 개발결과보고(정보화기획단장).ppt, 03.홈페이지 사용자매뉴얼(기업용).ppt 파일을
우선 보시면 e-bank에 관한 내용이 나옵니다. 
그럼, 좋은 하루 되세요. 
==============================================================================================================

- STOCKS
월(3,055), 화(3,060), 수(3,055), 목(3,055), 금(3,055)
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2009.09.21(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 18:30  --> 기술사 실전T(51회) 신청

- KIAT SM
- 지역통계 관련 
1. 기결정된 데이터 필드에 대하여 담당자 엑셀 업로드를 통한 추가/수정/삭제
통계/보고서 탭에서 지역사업통계 --> 평가현황 --> 신규평가, 중간평가, 최종평가, 오프라인평가
- 공고조회및등록
http://localhost:8080/pms/ancm/ancm.do
http://localhost:8080/pms/ancm/ancm.do?actmode=viewInputForm
http://localhost:8080/pms/estm/report.do?actmode=LocalOffReport
Error Message : Cannot find bean org.apache.struts.taglib.html.BEAN in any scope
==============================================================================================================

- 평가위원 등록 요청 --> 처리완료
요청: 울산 기획단 김도한(SENSOR71/kdh7122) 연구원
1. 정창화 ㈜바이넥스 671128-12009-09-21
2. 조윤경 울산과학기술대학교 700707-2
3. 진영읍 부경대학교 710401-1
- 평가위원 등록 요청 --> 처리완료
요청: 울산 기획단 배주환 연구원
1. 지상현 *@*.*
2. 권창오 *@*.*
3. 이규현 *@*.* 
- 평가위원 등록 요청 --> 처리완료
요청: 부산 기획단 김재수 연구원
강호일 : *
전득산 : *
- 평가위원 등록 요청 --> 처리완료
요청: 부산 기획단 탁영지(TAKYJ/t3141) 연구원
1. 나언주  경남대학교
- 평가위원 등록 요청 --> 처리완료
요청: 울산 기획단 배주환 연구원
1. 김판주 *@*.* 
2. 윤경한 *@*.*
3. 서정범 *@*.* 
4. 이대웅 *@*.*   ---> 직장 주소 등록 안됨
==============================================================================================================

- 담당간사 변경 요청 -->  처리완료
요청: 김소정 연구원
KEIT->KIAT 인수인계 과정에서 편의상 일괄적으로 담당간사("김소정")를 지정한 바, 
현재 "지역산업기술개발사업" 총괄 담당자인 "민재웅"으로 변경바랍니다. 
ㅇ 대상과제 : 사업종료 여부 상관없이 rnd.risnet.or.kr에서 관리하는 모든 사업/과제 중 담당자가 "김소정"인 과제 
                    (그 외는 지역에서 직접 담당하는 과제로 추정) 
--과제기본 정보 변경   @@@@@@@
-- UPDATE RSUBJECT S
SET M.MNGR_MBR_ID = '10003062'   --현과제담당자ID
WHERE S.SBJCT_ID IS NOT NULL
     AND S.MNGR_MBR_ID IN ('10033014')  --현과제담당자ID
--;
--과제관련자 변경 이력 정보( 변경   @@@@@@@
-- UPDATE RSBJCT_MBR_HSTR M
SET M.MBR_ID = '10003062'   --현과제담당자ID
WHERE M.SBJCT_ID IS NOT NULL 
    AND M.ROLE_CD = '1006'   --구성원_참여_역할(1006:담당간사)
    AND M.MBR_ID IN ('10033014')      --과제관련 구성원ID
--;
==============================================================================================================

- 전략기획 전산 관련 수정 요청 --> 처리완료
요청: 울산 기획단 김도한(SENSOR71/kdh7122) 연구원
총괄과제번호: 70004687, 현장실태조사 계획에 총괄/세부가 업무계획에 따로 따로 설정이 되었습니다.
제가 아무리 업무계획 초기화를 하여도 계획자체가 2개로 나누어져 있어서요. 일단 풀여주시면 제가 한꺼번에 
계획을 입력할 수 있겠습니다. 
==============================================================================================================

- 임성무 연구원 권한 삭제 처리 요청 --> 처리완료
요청: 울산 기획단 김상영 연구원
임성무 선임 9월 10일자로 사직 처리 됨 
평가관리시스템 권한이나 메일링리스트(임성무< *@*.* >)에서 삭제
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.09.22(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:30   ---> 차 없는 날(09시까지 차비 무료)

- KIAT SM
- 지역통계 관련 
1. 기결정된 데이터 필드에 대하여 담당자 엑셀 업로드를 통한 추가/수정/삭제
오프라인평가 정보(LOCAL_OFFLINE), 오프라인평가 파일 등록 정보(LOCAL_ATTACH_DOC) 테이블 생성
http://localhost:8080/pms/ancm/ancm.do?actmode=viewInputForm2 
==============================================================================================================

- 사업비 정산 수정 요청 --> 처리완료
요청: 경남 기획단 성기용(TJDRLDYD/mssky1) 연구원
과제번호:70003022 사업비정산에서 과제 사업비가 국비와 지방비로 이루어져 있는데
현재는 국비만 입력된 상태로 지방비 부분이 제외된 금액이 적혀있습니다.
사업비 정산을 할 수 있도록 지방비 부분을 포함한 금액 즉, 정부출연금이 182,000,000원이 되도록 부탁
당해정부출연금: 160,140,000원 ===> 182,000,000원(지방비1: 10,930,000원, 지방비1: 10,930,000원 수작업으로 DB에 추가)
==============================================================================================================

- 마인드 매니저(MindManager) 실행중 응답없음 에러 처리 
Tools --> Options: 팝업 -->  Spelling(모두 체크 해제): OK 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.09.23(수) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 18:30

- KIAT SM
- 지역통계 관련 
1. 기결정된 데이터 필드에 대하여 담당자 엑셀 업로드를 통한 추가/수정/삭제 
http://localhost:8080/pms/ancm/ancm.do?actmode=viewInputForm2
- 파일 업로드 세팅
commons-fileupload.jar, commons-io-1.3.2.jar 파일을 WEB-INF\lib 폴더에 추가  
==============================================================================================================

- 사업수행계획서 수정 및 지역산업지원사업 관리시스템 일정 작성 --> 처리완료
추가업무 개발일정을 담당자별로 구체적으로 나열 --> 이창욱 연구원에세 메일로 발송
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.09.24(목) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 18:00   --> 교체 결정(우승철 전화 받은 후 교체 요청함(이창욱 연구원)), 기아 우승(12년 만)

- KIAT SM
- 지역통계 관련
1. 기결정된 데이터 필드에 대하여 담당자 엑셀 업로드를 통한 추가/수정/삭제 
http://localhost:8080/pms/ancm/ancm.do?actmode=viewInputForm2  
#################### SJHAPPY ######################
[member : DEBUG]  : Connection returned.
[common : DEBUG]  : [itep.pms.member.MemberSB (Object Hashcode : 5700630)] Poolable Object Returned .
[/nshell/fw/struts/ConfigDispatchAction.java]: ====> [accessMenuId]R2_2_1[flow.getAccessMenuId()]${ancmReg}
[common : DEBUG]  : SessionHandler notice : Session attribute removed. [org.apache.struts.action.TOKEN : 5b209cbbda2fef6f9c2d2fa165673c96]
[ancm : INFO ]  : ▒▒ 실행 자바클래스.메소드 : itep.pms.ancm.AncmSB.insertAncm_2(ActionForm f)  ▒▒
[ancm : ERROR]  : insertAncm_2 Business method error [NoSuchMethodException] : itep.pms.ancm.AncmSB.insertAncm_2(org.apache.struts.action.ActionForm)
[common : DEBUG]  : [itep.pms.ancm.AncmSB (Object Hashcode : 17546562)] Poolable Object Returned .
[ancm : DEBUG]  : Execute ok.
[ancm : ERROR]  : Business method excute error. 
[common : DEBUG]  : SessionHandler notice : Session attribute added. [org.apache.struts.action.TOKEN : 7e640af619277d96006bcfa02ded5a0c]
[ancm : INFO ]  : ============= Action Error foward [errorViewInputForm2 : /ancm/ancm.do?actmode=viewInputForm2] ================
[ancm : INFO ]  : ============= Action Start [/pms/ancm/ancm.do?actmode=viewInputForm2 : POST] =============
==============================================================================================================

- 경남지역 2008~2009년 지원(선정 및 탈락) 과제 리스트 출력 요청
요청: 백낙주 연구원
==============================================================================================================

- 프린터
http://www.ebuzz.co.kr/content/buzz_view.html?uid=81944&portal=001_00001
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.09.25(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00

- KIAT SM
- 경남지역 2008~2009년 지원(선정 및 탈락) 과제 리스트 출력 요청 --> 처리완료
요청: 경남테 기획단 평가관리팀장 박귀득
==============================================================================================================

- 사업비 정산결과 입력중 문제에 대한 처리요청 --> 처리완료
요청: 부산 기획단 양창문(SALIMWINDOW/dusghk48) 연구원
과제번호: 70003171, 70002931, 70002913, 70002735, 70002620
"지방비(시도비)" 의 사업비 미반영에 대한 자료를 첨부
당해정부출연금:  90,000,000원 ===> 190,000,000원(지방비1: 100,000,000원 수작업으로 DB에 추가)
==============================================================================================================

- 과제번호
요청: 광주 기획단 박홍순(HSPAK1749/pak1749) 연구원
과제번호:70003632
과제목록 (※ 과제번호를 클릭하면 각종 의무사항불이행내역 및 다수과제수행내역을 확인할 수 있습니다.) 
==============================================================================================================

- STOCKS
월(3,120), 화(3,170), 수(3,130), 목(3,095), 금(3,000)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.09.28(월) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 18:00

- KIAT SM
- 평가결과 입력 관련 --> 처리완료
요청: 울산 기획단 김도한(SENSOR71/kdh7122) 연구원
1. 평가위원회 결과를 입력한 후 인쇄용 종합의견서를 출력하여야 하는데, 인쇄용 종합의견서 창이 활성화되면서 
백지로 나타남.(평가결과를 진흥원에 송부할 수 없음)
--> 사업분류가 선도(S1801), 연계(S1802), 전략기획(S1803) 이면 ---> 신규평가
사업분류가 선도, 연계, 전략기획이 아니면 ---> 신규, 중간, 최종평가  ===> 현 과제번호는 사업분류가 선도(S1801)
여서 중간평가조회가 안됨
2. 현장실태조사결과 계속(우수)로 판정난 경우 실태조사 결과 확정을 하면, 평가위원회 결과를 입력하라는 것이 
안 나와야 하는데….(제가 프로세서를 잘못 알고 있는건지??) 
==============================================================================================================

- 사업비 정산결과 입력오류 수정요청 --> 처리완료
요청: 울산 기획단 양창문(SALIMWINDOW/dusghk48) 연구원 
아래 2개 과제의 정산결과 입력도중, 1차년도 정산결과에서 총 사업비(현금)를 이월금에 입력하여야 하나
사용금액에 입력하여 이에 대한 수정을 요청합니다.
대상과제
1. 업무계획ID: 70009784 --> 70001425 (영도산업) : 수정요청금액(205,000,000원)
--> 실사용현금: 0원, 실사용현금: 0원, 차년도이월금:205,000,000원
2. 업무계획ID: 70009785 --> 70001245 (S&T대우주식회사) : 수정요청금액(210,000,000원)
--> 실사용현금: 0원, 실사용현금: 0원, 차년도이월금:210,000,000원
===> 삭제 후 새로 등록(1차, 2차 삭제 처리)  
-- 업무계획 정보  삭제   @@@@@@@@@@@@@   ====> 사업비정산 --> 결과보고(확정) Tab 화면으로 돌리기 
 DELETE FROM RDUTY_PLAN A
WHERE A.PLAN_ID IS NOT NULL 
     AND A.PLAN_ID IN ('70009704', '70009784')   --업무계획ID
--; 
-- 과제진행이력 정보 삭제 @@@==> 진행업무분류가('7710', '7720', '7730')인 것 삭제 ===> 업무계획Tab화면으로 돌리기
 DELETE FROM RSBJCT_PRGS P
WHERE P.SBJCT_ID IS NOT NULL
      AND P.SBJCT_ID = '70001425'    --과제번호  
     --AND P.PLAN_ID IN ('70009784')    --업무계획ID
     AND P.DUTY_CD IN ('7710', '7720', '7730')   --진행업무분류(6624:협약결과확정(체결))
--;  
==============================================================================================================

- 현장실태조사 계획수립일자 수정요청 --> 처리완료
요청: 전북 기획단 백문연(MYBAEK/jb2215) 연구원  
생물 분야의  현장실태조사 계획수립일자를 2009-09-07로 되어 있으나 2009-09-08로 수정 
-- 업무계획 정보수정 @@@@@@@@@@@@@
UPDATE RDUTY_PLAN A
SET A.PLAN_STIME =  '20090907',    --계획등록일시
A.PLAN_REG_TIME =  '20090907'   --계획시작일
WHERE A.PLAN_ID IS NOT NULL 
   AND A.DUTY_PLAN_CLSF IN('4311', '4321')
   AND A.MMNGR_MBR_ID =  '07001484'
   AND (0 = '1' OR (1 = '1' AND a.plan_status = '1500'))
   AND (0 = '0' OR (1 ='0' AND a.plan_status IN('1500', '2000', '2500')))
--;
==============================================================================================================

- 평가위원 등록 요청 --> 처리완료
요청: 민재웅 연구원 
이름 : 서석기,  641104-******  ==> 회원가입 안되어 있음
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.09.29(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:05 ~ 18:00   ---> 우승철 연구원 프로그램 발표때문에 이창욱 연구원하고 싸움

- KIAT SM
- 회원ID에 따른 결과물 조회 요청  --> 처리완료
요청: 김소정 연구원
기반조성관리 시스템에  해당 회원ID로 드린내용처럼 리스트를 보여주는 메뉴에서 조회 가능하게 쿼리 짜기
==============================================================================================================

- 간사 변경 요청  --> 처리완료
요청: 부산 기획단 김재수(MISOBINI/alth1003) 연구원 
2008년 조선 공통 지역평가과제에서(최종평가 --> 지역평가위원회)
실태조사 등록시 간사를 안하늘 팀장에서 저로 변경하고 평가를 시작했는데
평가결과 종합의견서에 담당간사가 안하늘 팀장으로 그대로 나오고 있습니다.
--> 과제번호: 70002724, 70002735, 70002913, 70003171, 70003220, 70003227, 70003241
-- 과제관련자 변경 이력 정보 조회   @@@@@@  
SELECT IA.SBJCT_ID, IB.MBR_NM, IA.MBR_ID, IA.AVAIL_SDATE, IA.AVAIL_EDATE
  FROM RSBJCT_MBR_HSTR IA, RMEMBER IB
 WHERE IB.MBR_ID = IA.MBR_ID
   AND IA.ROLE_CD = '1006'          --구성원 참여 역할(1006:총괄책임자)
   AND IA.AVAIL_EDATE = '99991231'    --유효종료일  ===> 추가 
--;
==============================================================================================================

- risnet평가위원 등록여부 확인요청 --> 처리완료
요청: 민재웅  연구원 
첨부된 액셀파일은 금번 신규평가에 참여한 평가위원리스트 RISNET에 등록되어 있는 분인지에 여부확인 
등록되어있을시 평가위원으로 변경 해주시고, 미등록위원은 체크해서 회신
-----------------------------------------------------------------------------------------------------------

- 평가위원 등록 요청 --> 처리완료
요청: 부산 기획단 탁영지  연구원 
이름 : 강부병, : 690511-, 한국철도기술연구원
==============================================================================================================

- 진흥팀 김성재 팀장 휴가 허락 전화--> 처리완료
내선: 3720, 휴대폰: *
==============================================================================================================

- 계비
1. 농협에서 포항계비 17만원 찾음
2. 포항계비 --> 09년 02월 ~ 10까지: 9만원 송금할 것  ===> 총 26만원(완료)
3. 동양CMA --> 제일은행으로 이체(6,202,706원) 
나눔90동기회 계비(2,555,100원), 포항계 계비(960,000원)  ====> 총 계비: 3,515,100원
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.09.30(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 20:00 --> 195번 서버 재시작

- KIAT SM
- 인쇄용종합의견서 안보임 --> 처리완료   
요청: 광주 김상영(HRSKSY/fdcm19) 연구원
과제번호: 70005024(전략기획(S1803)), 인쇄용종합의견서 안보임(중간평가 --> 지역평가위원회)
원인:사업분류가 선도(S1801), 연계(S1802), 전략기획(S1803) 이면 ---> 신규평가만 인쇄용종합의견서 보임
처리: 중간평가에서 인쇄용종합의견서 보이도록 수정
과제번호: 70004944
==============================================================================================================

- 결과등록 중복 과제 삭제 요청 --> 처리완료   
요청: 강원 최윤실(DIMPLE512/rlghlreks) 연구원
평가관리 → 중간평가 → 지역평가위원회 → 결과정리 → 연계-바이오분과(과제수 8건) 
→ "결과등록이 중복되게 작성된 3개 기업 내용 삭제 요청" 
- 삭제 대상과제 -
1. 과제번호 70004549 / 주관기관 화인코 (임건빈)
2. 과제번호 70004605 / 주관기관 바디텍메드 (최의열)
3. 과제번호 70004656 / 주관기관 제노바이오텍 (주후돈)
==============================================================================================================

- 간사 변경 요청  --> 처리완료
요청: 광주 김상영(HRSKSY/fdcm19) 연구원
2008년 조선 공통 지역평가과제에서(최종평가 --> 지역평가위원회)
/sql/estm/sql-result.xml 파일에서 estm.result.print.printResultDocument 부분 수정
SELECT B.DUTY_CD
, ( SELECT MIN(IB.MBR_NM)
 FROM RSBJCT_MBR_HSTR IA, RMEMBER IB
 WHERE IB.MBR_ID = IA.MBR_ID
AND IA.ROLE_CD = '1006'          --구성원 참여 역할(1006:총괄책임자)
AND IA.SBJCT_ID = A.SBJCT_ID
AND IA.AVAIL_EDATE = '99991231'    --유효종료일  
AND ROWNUM=1
 )  MNGR_MBR_NM   --담당 간사(추가)
FROM RSUBJECT A
--;

-- 과제관련자 변경 이력 정보 조회   @@@@@@  
SELECT IA.SBJCT_ID, IB.MBR_NM, IA.MBR_ID, IA.AVAIL_SDATE, IA.AVAIL_EDATE
  FROM RSBJCT_MBR_HSTR IA, RMEMBER IB
 WHERE IB.MBR_ID = IA.MBR_ID
   AND IA.ROLE_CD = '1006'          --구성원 참여 역할(1006:총괄책임자)
   AND IA.AVAIL_EDATE = '99991231'    --유효종료일  ===> 추가 
--;
==============================================================================================================

- 지경부 산하기관 R&D 시스템 및 연계정보 현황 --> 처리완료
요청: 지경부 산업기술정책관 윤갑석 과장 ===> 국회의원 정태근 의원 요청(국감 자료)
==============================================================================================================

- 지역산업 시스템 교육 관련 회의
참석: 김성제 팀장, 우승철 연구원, 이창욱 연구원, 최차장, 서과장
1. 업무관련 교육 요청(우승철 연구원)
2. 업무의 어려움 설명
==============================================================================================================

- 추석 선물 
1. 마루정보 --> 6년정 홍삼 세트
2. KCC --> 김세트
==============================================================================================================

- STOCKS
월(3,050), 화(3,025), 수(3,010), 목(), 금()
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //----------------------------------------------------------+ 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■  
