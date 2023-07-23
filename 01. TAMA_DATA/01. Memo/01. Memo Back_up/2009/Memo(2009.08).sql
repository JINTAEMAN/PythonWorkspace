

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2009.08) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2009.08.03(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:30   --> 김동균 대리 지각(14:40, 아픔)

- KIAT SM
- 공고 Clob 저장(서식 자료실 수정) 
http://blog.naver.com/qogpcks?Redirect=Log&logNo=110046288783
http://dooji.tistory.com/172

- Oracle 패키지 사용(PL/SQL)
CREATE OR REPLACE PACKAGE "PKG_CLOB_BOARD_FORM_ATTACH" AS 
PROCEDURE INSERT_CLOB (
    );  
END PKG_CLOB_BOARD_FORM_ATTACH; 
/

- /QandaDAO.java 파일에서
CallableStatement cstmt = dba.getCallableStatement("{call PKG_CLOB_BOARD_FORM_ATTACH(?, ?, ?, ?, ?, ?, ?)}");   
//Oracle 패키지 사용(PL/SQL)
--> call PKG_CLOB_BOARD_FORM_ATTACH(?, ?, ?, ?, ?, ?, ?)
 CALL PKG_CLOB_BOARD_FORM_ATTACH.INSERT_CLOB(1229, 1, 'formatt', 'P_TITLE', 'P_TEXT_CONTS', '');

 call PKG_CLOB_BOARD_FORM_ATTACH(1229, 1, 'formatt', 'P_TITLE', 'P_TEXT_CONTS', 'P_TEXT_CONTS_2', 'P_OUTMSG')

- procedure 호출시 ORA-00900 오류 발생
 ORA-06577

 dbms_output.put_line ( '사이즈 : '  v_doffset  'Bytes' );
==============================================================================================================

- 국제 공동기술개발사업 데이타 이관
지난번에 말씀드린 국제 공동기술개발사업 조회를 위하여 
사업 샘플 목록을 보내드리오니 RND,RISNET에서 조회할 수 있게 처리를 부탁드립니다 
==============================================================================================================

- 지역사업 연구비 비목 변경 관련
올해부터 지식경제부 사업 통합규정이 수정되어서 연구비 비목 세목이 변경된 것으로 알고 있는데요
그렇다면  8월 10일 부터 예정인 전산 접수화면에서 연구비 입력 화면 및 DB 구조 변경, 연구비 카드 연계문제
등에 대한 검토 및 수정이 진행 되어야 할 것 같습니다. 
지역전략기획기술사업 신청서(계획서)만 수정하면 됩니다. 타 사업은 2009년 1차 공고시 수정된 걸로 알고 있습니다  
첨부 파일의 사업비목 부분을 참고하시어 수정하시면 됩니다. 

- 사업비(과제구성도) --> 사업비 입력(인건비, 직접비, 간접비, 위탁연구 개발비)
/itep-pms/subject/subjectApp/sub_input_exp_org.jsp
alert("[/subject/subjectApp/sub_input_exp_org.jsp][ncom_role_cd]"+ ff.ncom_role_cd.value +"[tempStr]"+ '<%= tempStr %>');

<< 주의사항 >>
⊙ 사업관리비는 당해년도 기술개발사업비의 5%이내에서 정부출연금(현금지원비율 100%)으로 계상할 수 있으며, 
기술료 징수대상에 포함되지 않습니다.
⊙ 전체 사업관리 및 운영위원회 운영 등을 위해 인건비, 위원수당, 회의비, 출장비, 세미나 개최비, 공개토론회 
개최비 등의 명목으로 사용합니다.
⊙ 민간부담금 현금은 부담하지 않아도 됩니다.
⊙ 민간부담금 현물은 총괄관리기관의 모든 현물(인건비, 직접비)을 의미합니다. 
==============================================================================================================

- 대분류 사업 추가 요청 
사업명: "지역혁신산업기반구축사업" --> 사업분류코드: S1312
분류작업시 과거 데이타를 참고하는 것이 필요할 것 같습니다.
과거 추출 데이타 내역을 보면 상위사업명이 두가지가 있는데
1. 지역산업진흥사업
2. 지역혁신산업기반구축사업 
---------------------------------------------------------------------------
/pms/common/application/ApplicationSB.java 파일에서 
 /** 사업코드 메모리 적재 */
private void initBusiClsf(DBAction dba) throws DataTypeException, DBException { 
dba.setSQL("common.application.connectByBusiClsf");
}

- 하위의 지역산업 사업목록 얻기(common.application.connectByBusiClsf)  ==> 
사업코드 메모리 적재(프로그램 새로 시작시 설정됨)
SELECT LEVEL AS LV, BCLSF_CD, BCLSF_NM
FROM RBUSI_CLSF_V   ---- RBUSI_CLSF_V view 테이블 수정
WHERE LEVEL= '1'
CONNECT BY PRIOR BCLSF_CD = PRE_BCLSF_CD
START WITH BCLSF_CD IN ('S1803','S1802','S1801','S1431','S1430','S1257','S2000', 'S1312')       --사업분류코드
--; 
 - 대분류사업 선택  
1. 지역혁신산업기반구축사업(S1312)  --> 추가    ============>
2. 신기술보육사업(4개지역)(S1257) 
3. 지역산업기술개발사업(진흥사업-4개지역)(S1430) 
4. 지역산업기술개발사업(진흥사업-9개지역)(S1431) 
5. 지역연계기술개발사업(S1801) 
6. 광역경제권선도산업육성산업(S2000) 
7. 지역산업선도기술개발사업(S1802) 
8. 지역전략기획기술개발사업(S1803) ============>
--------------------------------------------------------------------------------------------------

-- 사업분류 저장  @@@@@@@@@@@@@  
INSERT INTO RBUSI_CLSF
(  
  PRE_BCLSF_CD, BCLSF_CD, BCLSF_NM, AVAIL_EDATE, AVAIL_SDATE, DESCR,
  REG_MBR_ID, REG_TIME, AGRE_CLSF, PRSN_TIME,
  QNA_TIME, SHT_NM, DISP_ORDR, MNGR_MBR_ID, INDSTR_DEPT_ID, CALC_MBR_ID,  
  SYSTEM_CD, BUSI_TYPE, DEPT_ID, ZIP_CD, RBUSI_TYPE
) 
SELECT    'S1342', 'S1355', 'UP'  BCLSF_NM, AVAIL_EDATE, AVAIL_SDATE, DESCR,
          REG_MBR_ID, REG_TIME, AGRE_CLSF, PRSN_TIME,
          QNA_TIME, SHT_NM, DISP_ORDR, MNGR_MBR_ID, INDSTR_DEPT_ID, CALC_MBR_ID,  
          SYSTEM_CD, BUSI_TYPE, DEPT_ID, ZIP_CD, RBUSI_TYPE
FROM RBUSI_CLSF
WHERE BCLSF_CD IS NOT NULL 
    AND BCLSF_CD IN ('S1822')
--;  

-- 표준기술분류 저장  @@@@@@@@@@@@@  
INSERT INTO STNRD_CODE
(  
   BCLSF_CD, STNRD_CD, STNRD_NM, DESCR, PRE_STNRD_CD, STNRD_CLSF,
  STNRD_NM_ENG, PRE_SPHEAD_CLSF, AVAIL_EDATE, AVAIL_SDATE, REG_MBR_ID,
  REG_TIME
)  
SELECT 'S1343', 'NR00173', STNRD_NM, DESCR, PRE_STNRD_CD, STNRD_CLSF,
  STNRD_NM_ENG, PRE_SPHEAD_CLSF, AVAIL_EDATE, AVAIL_SDATE, REG_MBR_ID,
  REG_TIME
FROM STNRD_CODE
WHERE BCLSF_CD IS NOT NULL 
    AND BCLSF_CD IN ('S1822') AND STNRD_CD  IN ('NR00043') --S1810, S1811, S1812
--; 
--------------------------------------------------------------------------------------------------

SELECT LEVEL AS LV, BCLSF_CD, PRE_BCLSF_CD, BCLSF_NM
FROM RBUSI_CLSF_V
CONNECT BY PRIOR BCLSF_CD = PRE_BCLSF_CD
START WITH BCLSF_CD IN ( 'S1803','X1275')
http://c36wn.egloos.com/4350031
1. START WITH는 처음 시작할 조건을 의미합니다.
2. CONNECT BY는 1.의 데이터와 연결된 로우를 반복하여 찾습니다.  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.08.04(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:30   --> 최대리 휴가

- KIAT SM
- 공고 Clob 저장(서식 자료실 수정) 
- Proceure 저장
CREATE OR REPLACE PROCEDURE ITEP_RDBA.SP_BOARD_FORM_ATTACH_INSERT( 
    I_NO         IN     VARCHAR,    --NO
    I_CATEGORY    IN     VARCHAR,    --카테고리
    I_FIRST_NO        IN     VARCHAR,   --최초번호
    I_PARENT_NO    IN     VARCHAR,  --부모번호
    I_DEPTH        IN     VARCHAR,       -- 레벨 ---------->
    I_SEQ        IN      VARCHAR,       --SEQ
    I_TITLE        IN      VARCHAR,        --제목
    I_WRITER_ID    IN     VARCHAR,        --작성자_ID
    I_REG_DATE    IN    VARCHAR,         --등록일
    I_BUSI_PROC    IN    VARCHAR,        --  사업절차 항목   --  ----------------> 
    I_FAQ_CLSF    IN      VARCHAR,    --FAQ유형 
    I_FIRST_IN        IN      VARCHAR,    --사업유형1
    I_SECOND_IN    IN     VARCHAR,        --사업유형2
    I_THIRD_IN        IN    VARCHAR,          --사업유형3
    I_TEXT_CONTS_2    IN   CLOB,         --내용2    --  ---------->
    I_DAMDANG_ID        IN      VARCHAR,    --담당자ID
    I_DAMDANG_NM        IN      VARCHAR,    --담당자
    I_DAMDANG_BUSEO    IN     VARCHAR,        --담당자부서
    I_DAMDANG_BUSEO_ID    IN    VARCHAR,         --담당자부서ID
    I_DAMDANG_TEL    IN   VARCHAR,         --담당자연락처   --  ----------------> 
    I_REALFILENAME    IN      VARCHAR,    --실제파일이름
    I_ORGFILENAME        IN      VARCHAR,    --원본파일이름
    I_FILEPATH    IN     VARCHAR,        --파일경로
    I_FILESIZE        IN    VARCHAR,         --파일크기
    I_CONTTYPE    IN    VARCHAR          --파일타입   --  ---------->
)

- 간단한 CLOB검색 
SELECT  NO, SEQ, READ_CNT, TITLE, WRITER_ID, TEXT_CONTS_2 TEXT_CONTS, 
    WHERE dbms_lob.instr(TEXT_CONTS_2, 'dd')>0 
==============================================================================================================

- 협약서류확인
과제번호: 70006520, 진행이력업무분류구분(2320: 수정사업계획서접수, 6620:협약서류확인) 
사업비지급 --> 협약관리 --> 협약서류확인
/itep-pms/WEB-INF/sql/contract/sql-contract.xml(contract.ContractDocument.subjectCheckList)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.08.05(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:00

- KIAT SM
- 공고 Clob 저장(서식 자료실 수정)  
dbms_output.put_line ( '사이즈 : '  v_doffset  'Bytes' ); 
clob 스트러츠,  

- /config/qanda/struts-qanda-config.xml 파일에서
<struts-config>
  <form-beans>
    <form-bean name="boardForm" type="org.apache.struts.action.DynaActionForm">
<form-property name="idx_no" type="java.lang.String" />    <!-- ADD(idx_no)   -->     
<form-property name="text_conts_3" type="nshell.fw.db.clob.StringClobType" />  <!-- ADD(text_conts_3)   --> 
    </form-bean>
  </form-beans>
</struts-config>

StringClobType.java, LobCleanUpInterceptor.java   
http://cafe.naver.com/deve.cafe?iframe_url=/ArticleRead.nhn%3Farticleid=921
==============================================================================================================

- 국제 공동기술개발사업 데이타 이관
지난번에 말씀드린 국제 공동기술개발사업 조회를 위하여 사업 샘플 목록을 보내드리오니 RND,RISNET에서 
조회할 수 있게 처리
DB 유저는 ITEP_DBA --> ITEP_RDBA로 이동(과제기본 정보 3,286 건)
1. SUBJECT -> RSUBJECT(과제기본 정보)
2. SBJCT_PRGS -> RSBJCT_PRGS(과제이력 정보)
3. SBJCT_BFUND_PRGS -> RSBJCT_BFUND_PRGS(사업비 정보)

4. SBJCT_RELCO -> RSBJCT_RELCO(과제관련업체 정보)  
5. SBJCT_MBR_HSTR -> RSBJCT_MBR_HSTR(과제관련구성원 정보)
6. SBJCT_ORDR -> RSBJCT_ORDR(과제개발기간 정보)

--- 칼럼 추가  ---------
ALTER TABLE RSUBJECT ADD ( 
T_WHERE_FROM    VARCHAR2(1 BYTE)    --정보 출처(1:국제 공동기술개발사업)
);
==============================================================================================================

 - 변경처리 에러
부산전략산업기획단 양창문(SALIMWINDOW/dusghk48) 연구원 
변경처리 업무계획에서 과제번호 70000519의 과제를 변경처리 하기위하여 
표아래의 [변경처리]를 클릭할 경우 오류창 발생
==============================================================================================================

 - 지역산업지원사업 관리시스템 운영 및 유지보수 입찰 공고(RFP)
1. 추진일정
 가. 접수기간 : ‘09년 8월 4일(화) ~ ’09년 8월 12일(수) 15:00
 나. 사업설명회 : 없음
 다. 등록장소 : 한국산업기술진흥원 인사총무팀(한국기술센터 7층)
 라. 가격개찰
  1) 일시 : ‘09년 8월 12일(수) 15:00 이후
  2) 장소 : 조달청 나라장터
 마. 제안평가위원회
  1) 일시 : 추후 개별 공지
  2) 장소 : 추후 개별 공지
  3) 제안발표 : 접수완료 후 업체별 시간배정
 바. 결과발표 : ‘09년 8 중
2. 모집분야(예산) : 지역산업지원사업 관리시스템 운영 및 유지보수(22천만원, VAT포함)
용역기간 : 계약일 ~ 2010. 6. 30
 업무범위개요
 ◇ 지역산업지원사업관리시스템 운영 및 유지보수
ㅇ 업무 기능 이관에 따른 시스템 변동 내용 적용
ㅇ 시스템 운영관리 및 유지보수 업무
ㅇ 추가 기능 개발
ㅇ 산출물 관리
ㅇ 업무 인수 인계 수행
------------------------------------------------------------------------------------------
. 추가 기능 개발
1) 광역경제권선도산업육성사업 과제 접수 및 평가 사업관리 기능 개발
2) 기존 평가관리원 시스템 연계부분 해제로 인하여 발생할 수 있는 담당자 불편사항 해소를 위해 대체기능
연동 및 개발 수행
3) 진흥원 전자결재 시스템 구축시, 결재 연동
4) 사업비 카드연계 적용 및 변경 사항 수정
5) 기타 신규업무의 추가 등으로 인한 소규모의 개발 수행
--------------------------------------------------------------------------------------- 
. 서비스 목록
1) 지역기반조성사업지원
 ㅇ 산업기술지원사이트(infra.itech.go.kr) ===> 김동균 대리(ASP 운영)
 ㅇ 기반조성사업관리(infra.kiat.or.kr) ===> 김동균 대리(ASP 운영)
2) 지역기술개발사업관리(rnd.risnet.or.kr) ===> 진태만(JAVA 운영)
3) RIC 유비쿼터스 네트워크 시스템(www.uric.re.kr) ===> 최윤종 대리(JAVA 운영)
4) 지역산업종합정보망(www.risnet.or.kr) ===> 김동균 대리(ASP 운영)
5) 광역경제권선도산업육성사업(rnd.risnet.or.kr) ===> 최윤종 대리(JAVA 운영)
==============================================================================================================

- 다음 오픈ID 가입 완료
openid.daum.net/tamario  PW:ss*****2
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.08.06(목) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 18:30

- KIAT SM
- 국제 공동기술개발사업 데이타 이관
국제 공동기술개발사업 데이타는 ITEP_DBA에 있기 때문에 ITEP_RDBA로 이관을 해야 합니다.
그런데 아래 6개의 데이타를 확인해본 결과 이관할 테이타와 이관 받을 테이타간 필드명이 없는 것과
필수 입력 필드가 없는 것이 다수 존재해서 이관이 불가능 합니다. 강제적으로 이관한다고 하더라도
데이타 맞추는데 많은 시간이 소요될 것으로 판단됩니다. 
DB 유저는 ITEP_DBA --> ITEP_RDBA로 이동(과제기본 정보 3,286 건)
1. SUBJECT -> RSUBJECT(과제기본 정보)
2. SBJCT_PRGS -> RSBJCT_PRGS(과제이력 정보)
3. SBJCT_BFUND_PRGS -> RSBJCT_BFUND_PRGS(사업비 정보)
4. SBJCT_RELCO -> RSBJCT_RELCO(과제관련업체 정보) 
5. SBJCT_MBR_HSTR -> RSBJCT_MBR_HSTR(과제관련구성원 정보) 
6. SBJCT_ORDR -> RSBJCT_ORDR(과제개발기간 정보) 
==============================================================================================================

- 테스트 사용자 생성 및 시물레이션 실시(각 지역단별)
ID/PWD:  risnet/rnd12 
사업체 정보(BUSI) 등록 --> 사업자번호:2208150346, 법인번호:5048125300 
-- UPDATE MEMBER M
SET M.CITI_NO= '5605052615839', M.PASSWORD= 'rnd12', M.MBR_NM= '리즈넷',  M.EMAIL= '*@*.*'
WHERE M.MBR_ID IS NOT NULL 
     AND M.LOGIN_ID = UPPER('risnet')
==============================================================================================================

- 연구비 에러
임종화(JONG28/ddc9090) 
- 사업비(과제구성도) --> /subjectApp/sub_view_expensess.jsp
http://localhost:8080/pms/subject/subjectApp-exp.do?actmode=expensess&sbjct_id=70007002&c_step=0&c_ordr= 
- 1년차 사업비 입력  --> /subjectApp/sub_input_exp_org.jsp
http://localhost:8080/pms/subject/subjectApp-exp.do?actmode=orgexp&sbjct_id=70007002&c_step=0&c_ordr=&nsbjct_id=70007002&n

- 신사업비 : 해당 연차의 사업비를 세목별로 가지고 온다 
2009년 신규공고부터 기존 4비목 15세목을 4비목 7세목으로 변경
공고 번호 1280 공고 이전은 4비목 15세목을 유지
--------------------------------------------------------------------------------

-- 사업비예산비목 정보 조회  @@@@@@@@@@@@@  
SELECT  
     BITEM_CD 사업비목,  BITEM_NM 사업비목명칭,   AVAIL_SDATE 유효시작일,
    AVAIL_EDATE 유효시작일,  DESCR 설명,  PRE_BITEM_CD 상위사업비목,  REG_TIME
FROM BUSI_ITEM F   --사업별비목구성
WHERE F.BITEM_CD IS NOT NULL
  AND F.BITEM_CD IN ( 'S1343')    -- 사업분류코드 --> S1341 
  --AND F.BCLSF_CD IN ( 'S1343') 
--;

-- 사업별비목구성 정보 조회  @@@@@@@@@@@@@  
SELECT  
    BITEM_CD 사업비목,  BCLSF_CD 사업분류,  RDMTN_CLSF 환수구분,  CALC_BASE 산정기준,  AVAIL_SDATE 유효시작일,
    AVAIL_EDATE 유효시작일,  DISP_ORDR 전시순서,  REG_MBR_ID,  REG_TIME
FROM RBFUND_ITEM F   --사업별비목구성
WHERE F.BCLSF_CD IS NOT NULL
  AND F.BCLSF_CD IN ( 'S1343')    -- 사업분류코드 --> S1341 
  --AND F.BCLSF_CD IN ( 'S1343') 
--;   

-- 사업별비목구성 정보 저장  @@@@@@@@@@@@@  
INSERT INTO RBFUND_ITEM
(  
   BITEM_CD,  BCLSF_CD,  RDMTN_CLSF,  CALC_BASE,  AVAIL_SDATE,
   AVAIL_EDATE,  DISP_ORDR,  REG_MBR_ID,  REG_TIME
)   
SELECT  
    BITEM_CD,  'S1355' 사업분류,  RDMTN_CLSF 환수구분,  CALC_BASE 산정기준,  '20090806' 유효시작일,
    AVAIL_EDATE 유효시작일,  DISP_ORDR 전시순서,  REG_MBR_ID,  REG_TIME
FROM RBFUND_ITEM F
WHERE F.BCLSF_CD IS NOT NULL
  AND F.BCLSF_CD IN ( 'S1835')    -- 사업분류코드 
--; 
==============================================================================================================

- 주간보고
1. 국제 공동기술개발사업 데이타 이관(보류: 조회만 가능한 쪽으로 협의)
2. 공고 등록시 대분류 사업 추가 요청
3. 테스트 사용자 생성
4. 시물레이션 실시(각 지역단별)
- 최차장 만남
1. 제안서는 맡은 담당별로 쓰기(RFP의 문제점 지적)
2. 판공비 월 20만원 사용 가능
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.08.07(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:50 ~ 18:30

- KIAT SM
- 사업비에서 정부출연금 비율 등록 문제
기본정보 tab --> 공고찾기에서 총괄과제 등록 없이 세부과제 등록 자체가 불가능 합니다(서정희 과장 주장은 모순) 
이제까지 등록된 총괄과제중 정부출연금 비율은 DB에서 가져온 정부출연금 비율을 초과하면 alert창이 뜸
--> 민재웅 연구원 요청으로 적용에서 제외 
/subject/subjectApp/sub_input_exp_org.jsp 에서
if(ff.grate.value > <%= govMax %>){    //정부출연금 비율(ff.grate.value)이 DB에서 가져온 정부출연금 비율(govMax)보다 크면 
errMsg += "정부출연금 비율이 <%= govMax %>%를 초과 하였습니다.\n[ff.grate.value ]"+ ff.grate.value 
+"[tempStr]"+ '<%= tempStr %>'; 
}
==============================================================================================================

- 공고 등록 수정 및 테스트 데이타 삭제
전략기획 --> 지정공모(310 2009-278), 그외 --> 자유공모 (310, 2009-277)
==============================================================================================================

- 지역평가위원회 결과정리에서 조회 안됨
과제번호; 70001332, 임성무(MARKSMUS/lim3390)  
RDUTY_SBJCT: 과제별일정계획  정보 추가, RSBJCT_PRGS: 과제관련자 변경 이력 정보 추가 
-- 과제별일정계획 정보 생성  @@@@@@@@@@@@@
CREATE TABLE RDUTY_SBJCT_20090007 AS SELECT * FROM RDUTY_SBJCT
--;
-- 과제관련자 변경 이력 정보  생성  @@@@@@@@@@@@@
CREATE TABLE RSBJCT_PRGS_20090007 AS SELECT * FROM RSBJCT_PRGS
--;
==============================================================================================================

- STOCKS
월(3,110), 화(3,085), 수(3,130), 목(2,910), 금(3,100) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.08.08(토) 작업 ■■■■■■■■■■■■■■■■
---> 08:10 ~ 18:00

- KIAT SM
- 제안서 작성
Ⅱ.2 운영및유지보수방안_54p.ppt 
Ⅱ. 적용부문
2. 유지보수방법
2.1 개요
2.2 유지보수절차
2.3 산출물
2.4 활용도구와 기법
2.5 적용방법
3. 지원환경
3.1 관련장비 보유현황 및 적용방법
3.2 관련도구 보유 확보현황
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.08.10(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 19:00  --> 2009년도 지역산업기술개발사업 과제접수 시작, 김대리 휴가

- KIAT SM
- 과제신청(온라인 접수) --> /subjectApp/sub_input_list.jsp
http://localhost:8080/pms/subject/subjectApp-list.do?actmode=list
==============================================================================================================

- 공고 첨부파일 처리
기존: 첨부파일 업로드는 되어도 다운로드 불가능
-- 공고 첨부자료 정보 조회    @@@@@@@@@@@@@ 
SELECT  SEQ SEQ, ESACT_ID 첨부주체, ATTACH_NM 첨부물명칭, ATTACH_TYPE_CD 첨부문서형태, 
ATTACH_OLINK Obj자료link,  SBJCT_ID 해당첨부물이소속된과제, RPT_ID, ESACT_GB, ESACT_SEQ, 
ESACT_DEPT_ID, REG_MBR_ID 등록자, REG_TIME 등록일시
-- SELECT *
FROM RESACT_ATTACH_DOC A
WHERE A.SEQ IS NOT NULL
      AND A.ESACT_ID IN ('1311')         --첨부주체(공고ID) 
ORDER BY A.SEQ DESC
--;   
==============================================================================================================

- 업체명 변경 신청 --> 울산기획단 배주환(JHB6025/min3311) 연구원
현재 구성원/사업체 탭의 사업체정보조회및변경 항목에서 사업자등록번호 610-81-03763 을 검색하면 사업체 
명이 ㈜동희산업으로 검색이 되는데, 바뀐 사업체 명은 ‘DH-Holdings’   6108103763
==============================================================================================================

- 실서버 적용 방법
1. 소스 수정 완료
2. 소스 적용
3. \\110.14.182.195\itep-pms폴더에 적용(src폴더의 .java파일에도 꼭 적용)
4. \\110.14.182.195\01. tama_195\01. 수정 작업 파일 리스트에서
 1) 01. 수정 작업 파일 리스트(kiat).xls 작성
 2) 수정된 모든 파일 날짜별로 폴더 만들어서 저장(예: 2009-08-07)
==============================================================================================================

- 글씨 빠르고 이쁘게 쓰는 방법(예쁜글씨)
http://www.korea700.com --> N-283/tama12
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.08.11(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 19:00

- KIAT SM
- 외국인 회원가입 오류
외국인 등록번호: *
p_soid = theForm.soid1.value + theForm.soid2.value;   //외국인 등록번호(새로 생성)
박기수: 010-4811-0
내국인 주민번호 검사 추가(실명확인은 끊어져 있음)
==============================================================================================================

- 실서버 적용(보류)
1. 공고 첨부파일 처리 
-- 관련규정 및 서식 파일 경로 변경    @@@@@@@@@@@@@
--UPDATE BOARD_FORM_ATTACH 
SET CONTTYPE= 'hwp'   
WHERE CONTTYPE= 'application/haansofthwp'   
--;  

-- 관련규정 및 서식 파일 경로 변경    @@@@@@@@@@@@@
--UPDATE BOARD_FORM_ATTACH 
SET FILEPATH= 'Z:\form_attach_doc\200908'      
WHERE FILEPATH= 'Z:\board\200908'   
--;  

- 공통 함수 처리 
- /common/util/CMStringUtil.java 에서
public static String getContentType(String strFileName, String strContentType)  //파일타입 형식 변경 공통 함수
{
if (strFileName != null && !"".equals(strFileName.trim()) && strFileName.indexOf('.') != -1) {
  strFileName = strFileName.toLowerCase();
  strContentType = strFileName.substring(strFileName.lastIndexOf('.') + 1,  strFileName.length());
  } else {
  strContentType = "기타";
}   
return strContentType;
}  

p_ContentType = CMStringUtil.getContentType(finfo.getSaveFileName(), finfo.getContentType());    //파일타입 형식 변경  
==============================================================================================================

 --제재 조치 정보 조회   @@@@@@@@@@@@@
SELECT P.SBJCT_SEQ SEQ, P.PNSMNT_TRGT_CLSF 제재대상구분,  --제재대상구분(1: 구성원, 2:사업체)
            P.PNSMNT_CD 제재종류, P.RSN_CLSF 원인근거,   --원인근거(1:내부, 2:외부)
            P.PNSMNT_SDATE 제재종류, P.PNSMNT_SDATE 제재시작일, P.PNSMNT_EDATE 제재종료일, 
            P.SBJCT_ID 내부원인근거과제, P.DESCR 변경사유, RCPT_NO 해제접수처리한_문서번호
FROM PNSMNT P
WHERE P.PNSMNT_TRGT_CLSF = '1'
   -- AND P.PNSMNT_TRGT_ID    = M.MBR_ID
    AND P.PNSMNT_CLSF       = '2500'
    AND P.AVAIL_EDATE       = '99991231'
    AND P.PNSMNT_EDATE      >= TO_CHAR(SYSDATE,'YYYYMMDD')
    AND (P.PNSMNT_CD NOT IN ('1008','1001') AND PNSMNT_GB IS NULL)
==============================================================================================================

- 위탁기관 중복 등록 문제
현상: 과제신청 --> 과제기본정보 Tab에서 위탁기관 검색을
        충남대학교 산학협력단을 2번 선택하고 등록을 하면 위탁기관 중복으로 등록이 안됨
이유: 위탁기관이 같은 사업자번호(3148209264) 이기 때문에 등록 불가
조치: 위탁기관은 사업자번호(3148209264)게 FK이기 때문에 중복 등록 불가능(중복을 허용하면
        전체 데이타가 문제가 생김)
주장: 
충남대학교 산학협력단 산하에 충남대의대 비뇨기과와 호흡기내과 에 각각 위탁과제를 
주기로 하고  입력을 하였습니다만 "다음 단계"로 넘어갈 때 위탁기관이 중복된다는 메세지가 
나오고 진행을 할 수 가 없는 상황입니다.
(주)지노믹트리  경영지원실 윤대경 부장 *
==============================================================================================================

 - 위탁기관 검색에서 대표자명 안 보임
염보라(042-612-3199)
원인: 박준숙 ==> 회원 가입이 안되어 있음
SELECT * FROM RMBR_BUSICEO_HSTR A
WHERE A.BUSI_ID = '10016133' 

-- 대표자구성이력 정보 저장  @@@@@@@@@@@@@  
INSERT INTO MBR_BUSICEO_HSTR
(  
   BUSI_ID,  MBR_ID,  ROLE_CD, AVAIL_SDATE, AVAIL_EDATE,   
   REG_MBR_ID,  REG_TIME
)     
SELECT   '10016133' BUSI_ID,  '12915991' MBR_ID,  ROLE_CD, '20090812' AVAIL_SDATE,'99991231' AVAIL_EDATE,   
'12915493' REG_MBR_ID,  SYSDATE REG_TIME
FROM MBR_BUSICEO_HSTR S 
WHERE S.BUSI_ID IS NOT NULL 
 AND S.BUSI_ID IN ('00008863')       --사업체ID
--; 
==============================================================================================================

- 사업체 변경
요청: 사업체 등록자를 김상권(GUNGJUNG/cjdgh) --> 김기환(KHKIM450/450kim)) 변경 요청
사업자번호: 6218147591, (주)청호씨푸드, T) 051-999-6967
변경신청 접수 --> 수행중인 중인 과제에 대해서만 가능 
--대표자구성이력 정보 수정 @@@@@@@@@@@@@  ===> 처리 안함
UPDATE RMBR_BUSICEO_HSTR B
SET B.MBR_ID = '10089675'  --구성원ID
WHERE B.BUSI_ID IN ('10033495')   --사업체 ID
--; 
-- 법인번호 등록(COBUSI_NO)가 등록 되어 있어야 만 등록 가능
 (부경대학교  전병수, 신라대학교 하배진 안됨)

 --사업체 정보 조회  @@@@@@@@@@@@@   
SELECT  COBUSI_NO, M.BUSI_ID AS 사업체ID, M.BUSI_NM AS 사업체명, 
    (SELECT MBR_ID FROM RMBR_BUSICEO_HSTR WHERE ROLE_CD='1001' AND AVAIL_EDATE='99991231' 
AND M.BUSI_ID = BUSI_ID AND ROWNUM = 1) AS 대표자ID, M.COBUSI_NO 법인번호, M.BUSI_NO AS 사업자번호, M.BUSI_CLSF, 
    (SELECT CODE_NAME FROM RCODE WHERE MAIN_CODE='1032' AND AVAIL_EDATE='99991231' 
AND SUB_CODE=M.BUSI_CLSF) AS ANCM_CLSF_NM 
FROM BUSI M
WHERE M.BUSI_ID IS NOT NULL
     AND M.BUSI_NM LIKE '%조일알미늄%'       --사업체명
   --AND M.BUSI_ID  IN ('05002299')  --사업체ID
    AND M.BUSI_NO  IN ('5028107788')  --사업자번호
--;

--사업체 정보 수정  @@@@@@@@@@@@@  
-- UPDATE  BUSI M
SET M.COBUSI_NO= '5403012122612'    ---법인번호가 없으면 주민번호로 대치해서 등록
WHERE M.BUSI_ID IS NOT NULL
     AND M.BUSI_NM LIKE '%조일알미늄%'       --사업체명
   --AND M.BUSI_ID  IN ('05002299')  --사업체ID
    AND M.BUSI_NO  IN ('5028107788')  --사업자번호
--;
    
-- 대표자구성이력 정보 저장  @@@@@@@@@@@@@  
INSERT INTO MBR_BUSICEO_HSTR
(  
   BUSI_ID,  MBR_ID,  ROLE_CD, AVAIL_SDATE, AVAIL_EDATE,   
   REG_MBR_ID,  REG_TIME
)     
SELECT   '10016133' BUSI_ID,  '12915991' MBR_ID,  ROLE_CD, '20090812' AVAIL_SDATE,'99991231' AVAIL_EDATE,   
'12915493' REG_MBR_ID,  SYSDATE REG_TIME
FROM MBR_BUSICEO_HSTR S 
WHERE S.BUSI_ID IS NOT NULL 
 AND S.BUSI_ID IN ('00008863')       --사업체ID
--; 
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2009.08.12(수) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 19:00

- KIAT SM
- 시스템회원정보조사양식 작성(시스템회원정보조사양식.xls)
1. 지역사업평가관리시스템 권한 획득 방법
 1) 회원 가입시 일반관리자(사업자원부, 지역전략산업기획단, 산업기술진흥원 등)로 회원 가입
- MEMBER 테이블에 NDEPT_ID(현소속부서ID)가 R%, L%, M%로 등록됨
(R%, L%, M% NDEPT_ID MEMBER   R:지역단, M:진흥원(기타 공공기관), L:지경부)
 2) 전산 관리자가 MBR_ROLE_SYSTEM(시스템별 사용역할) 테이블 PRG_ROLE_CD(역할) 필드에 아래 사항 등록
- C0000: 관리자 권한
 3) 지역사업평가관리시스템 들어가면 로그인한 NDEPT_ID(현소속부서ID)에 따라서 R%, L%, M%로 조회
 (DB 프로그램 소스에 R:지역단, M:진흥원을 구분하여 권한에 따라 조회가 가능)
2. 문제점
 1) 실질적으로 회원테이블(MEMBER) NDEPT_ID(현소속부서ID)에서 지역사업평가관리시스템 권한을 관리
  --> MBR_ROLE_SYSTEM(시스템별 사용역할) 테이블에서 관리하는 것이 바람직하다고 판다됨
  2) 프로그램 소스에 R:지역단, M:진흥원을 구분하여 권한에 따라 조회 처리
  --> DB 프로그램 소스에 따라 권한을 관리하는 것은 위험성도 크고 바람직하지 않다고 판단됨

--권한 정보 수정   @@@@@@@@@@@@@ 
SELECT (CASE WHEN NDEPT_ID LIKE 'R%' THEN NDEPT_ID
WHEN NDEPT_ID ='M998' THEN 'R%'      --부서ID 추가(M998:한국산업기술진흥원)
WHEN NDEPT_ID = (SELECT DEPT_ID FROM DEPT_V
WHERE DEPT_ID = NDEPT_ID
CONNECT BY PRIOR DEPT_ID = PRE_DEPT_ID
START WITH DEPT_ID = 'M000') THEN 'R%' 
 END)
FROM MEMBER
WHERE MBR_ID = ?    --회원ID

--부서 정보 수정   @@@@@@@@@@@@@ 
UPDATE DEPT
SET PRE_DEPT_ID= 'M400'  --상위 부서ID(M400: 지역혁신본부)
WHERE DEPT_ID = 'M998'    --부서ID(M998: 진흥원)
==============================================================================================================

- 전체 선정과제정보 다운로드
중복성검사서식(검색대상과제등록(중복성검사서식).xls)
- DB 세로 2줄 그리드를 1줄 그리드 조회로 수정(가로 데이타 -> 세로 한줄 데이타로 변경)
--키워드 정보 조회   @@@@@@@@@@@@@ 
SELECT M.SBJCT_ID, MAX(M.KEYWORD_1) 키워드_1, MAX(M.KEYWORD_2) 키워드_2, MAX(M.KEYWORD_3) 키워드_3
FROM
 ( 
    SELECT K.SBJCT_ID, K.KEYWORD KEYWORD_1, '' KEYWORD_2, '' KEYWORD_3
    FROM RSUBJECT C, RSKEYWD K
    WHERE C.SBJCT_ID = K.SBJCT_ID
        AND K.SBJCT_ID = '70006974'
        AND K.KEY_CLSF = '1'
        AND K.KEYWORD = '테스트'
    GROUP BY K.SBJCT_ID, K.KEYWORD 
    UNION ALL
    SELECT K.SBJCT_ID, '' KEYWORD_1, K.KEYWORD KEYWORD_2, '' KEYWORD_3
    FROM RSUBJECT C, RSKEYWD K
    WHERE C.SBJCT_ID = K.SBJCT_ID
        AND K.SBJCT_ID = '70006974'
        AND K.KEY_CLSF = '1'
        AND K.KEYWORD = '테스트_나'
    GROUP BY K.SBJCT_ID, K.KEYWORD
    UNION ALL
    SELECT K.SBJCT_ID, '' KEYWORD_1, '' KEYWORD_2, K.KEYWORD KEYWORD_3
    FROM RSUBJECT C, RSKEYWD K
    WHERE C.SBJCT_ID = K.SBJCT_ID
        AND K.SBJCT_ID = '70006974'
        AND K.KEY_CLSF = '1'
        AND K.KEYWORD = '테스트_안'
    GROUP BY K.SBJCT_ID, K.KEYWORD
) M
GROUP BY M.SBJCT_ID    
--; 
==============================================================================================================

- 현소속부서구분 변경
박혜란 053-850-3748
 --회원정보 수정   @@@@@@   --> 현소속부서구분(3 --> 2로 변경)
UPDATE MEMBER M
SET M.NDEPT_CLSF= '2'   --현소속부서구분(1:내부직원, 2:외부사용자, 3:내부, 외부X)
WHERE M.MBR_ID IS NOT NULL 
   AND M.MBR_ID IN ('05030274') 
==============================================================================================================

- 연구원 등록(일반관리자 추가)
울산전략산업기획단 배주환
저희 쪽에서 근무하시던 ‘임윤규 박사님’께서 개인사정으로 퇴직하시고 후임으로 ‘서도수 박사님’께서 오셨습니다.
이에 임윤규 박사님께서 하시던 업무를 인수인계 받아 자동차/조선 사업 분야 간사역할을 하신다고 합니다.
이에 지역산업진흥사업 종합관리시스템의 ‘지역산업 평가관리시스템’ 기능을 사용 할 수 있도록 권한 요청 드립니다.
성명: 서도수, SDS18/7301sds
==============================================================================================================

- 회원 수정 오류
오천림(OHCR/ohcr0324): NDEPT_CLSF AS 현소속부서_사업체구분CD   --> 김영덕(ANGELSON/dwst7280)

 --회원정보 수정   @@@@@@   --> 현소속부서구분(3 --> 2로 변경)
UPDATE MEMBER M
SET M.NDEPT_CLSF= '2'   --현소속부서구분(1:내부직원, 2:외부사용자, 3:내부, 외부X) -> 1:151, 2:373,89, 3:12,391
WHERE M.MBR_ID IS NOT NULL 
   AND M.MBR_ID IN ('05030274')
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.08.13(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 19:00

- KIAT SM
- 변경관리 --> 변경신청접수(변경신청) ===> 관리자 화면
1. 과제명 변경
2. 주관기관(총괄관리기관) 변경: 주관기관 대표자 변경, 주관기관 변경, 총괄책임자 변경
3. 참여기업 변경: 참여기업 대표자 변경, 참여기업 변경
4. 위탁기관 변경: 위탁기관책임자 변경, 위탁기관 변경
5. 실무 담당자 변경
6. 총개발기간및목표내용 변경: 총개발기간및목표내용 변경, 총개발기간 변경
7. 기타 변경: 기자재 변경, 사업비 변경, 기타 변경
==============================================================================================================

- 총괄과제 등록(과제번호: 70007041)
총괄주관기관, 총괄책임자 등록
참여기업, 위탁기관 등록 안함
- 세부과제 등록
세부주관기관, 세부주관책임자 등록
참여기업, 위탁기관(선택) 등록
주관기관이 영리업체일 때 --> 참여기업으로 등록
기타:
한 기업이 총괄과제, 세부과제 등록 가능
과제등록시 총괄관리책임자 변경 불가 --> 관리자 화면에서 처리 가능
==============================================================================================================

- 회원정보 수정 에러
김윤원(YWKIM1/1066824) 033-248-2631
회원정보 수정에서 현소속부서구분 3에서 수정 에러 
<html:hidden property="classcd" value="CODE"/> <!--// 직급_13번째 --> 추가
회원정보 수정에서 수정 성공하면 현소속부서구분 3에서 2로 수정됨 
==============================================================================================================

-- 로그인 정보 조회   @@@@@@@@@@@@@ 
SELECT  L.MBR_ID AS 구성원ID, L.LOGIN_TIME AS 로그인_시간, L.LOGOUT_TIME 로그아웃_시간, L.IP_ADDR AS IP주소,
        M.LOGIN_ID AS 로그인ID, M.PASSWORD, M.MBR_NM AS 성명, M.CITI_NO AS 주민번호, M.NDEPT_ID AS 현소속부서ID, 
        M.FRGN_CLSF 내외국인구분,    -- 외국인구분(null:내국인,1:외국인) 
        (SELECT MAX(DEPT_NM) FROM DEPT WHERE DEPT_ID=M.NDEPT_ID) AS 현소속부서,  
        M.NDEPT_CLSF AS 현소속부서_사업체구분CD, M.PHONE_NO1 대표연락처, M.PHONE_NO2 대표연락처2, M.EMAIL 이메일,
        M.NOW_PSTN AS 현직위, M.NBLNG_CO_NM AS 현소속회사명, M.NCO_ADDR AS 기타주소, M.PRG_ROLE_CD AS 프로그램사용역할, 
        M.NDEPT_CLSF AS 현소속부서_사업체구분, M.REG_TIME, M.REG_TIME   
FROM MEMBER M, LOGIN_INFO L   
WHERE L.MBR_ID IS NOT NULL
    AND M.MBR_ID = L.MBR_ID
    --AND M.MBR_ID IN ('10025687')      --구성원ID(백낙주(12912862), 민재웅(10003062), 진태만(12915493))  
ORDER BY L.LOGOUT_TIME DESC 
--;
==============================================================================================================

- 재무결산등록
김민준(KOMIS913/komisl0ver)
결산(회계)년도 오류
/home/business/BusinessSB.java 에서
setAttribute("YYYY", DateUtil.getYear(15, 0));    //결산(회계)년도 세팅((올해 부터 -15년도 콤보 박스에 세팅)
--> 4에서 15로 수정
==============================================================================================================

- 사업체 수정 변경
경북전략산업기획단 장철민 
이영호 대표자의 리즈넷 가입시 주민번호를  650830-50로 변경 --> 변경 되어 있었음
법인번호는 이영호사업체 등록/수정에서 처리 하도록 유도
-- 대표자구성이력 정보 저장  @@@@@@@@@@@@@  
INSERT INTO MBR_BUSICEO_HSTR
(  
   BUSI_ID,  MBR_ID,  ROLE_CD, AVAIL_SDATE, AVAIL_EDATE,   
   REG_MBR_ID,  REG_TIME
)      
SELECT   '10016592' BUSI_ID,  '12915942' MBR_ID,  ROLE_CD, '20090813' AVAIL_SDATE,'99991231' AVAIL_EDATE,   
'12915493' REG_MBR_ID,  SYSDATE REG_TIME
FROM MBR_BUSICEO_HSTR S 
WHERE S.BUSI_ID IS NOT NULL 
 AND S.BUSI_ID IN ('00008863')       --사업체ID
--; 
==============================================================================================================

- 주간보고
1. 위탁기관 중복 등록 문제 분석
2. 사업체 수정 변경
3. 사업 접수 마감 처리 및 요구사항 대응(월요일부터 접수 중)
==============================================================================================================

OCI --> 031-734-2743  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.08.14(금) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 18:30

- KIAT SM
- 차기 지역R&D 리스트 작성
차기 지역R&D 리스트(200908).xls
==============================================================================================================

- 서식 자료실 수정
서식 자료실 테이블 변경
BOARD_FORM_ATTACH(서식 자료실 Table) ==> 
DATAROOM_FORM(서식 자료실 Table), DATAROOM_FILE(자료실 첨부파일 Table)로 변경
변경 이유: 첨부파일이 복수로 등록 할 수 있어야 함 
-------------------------------------------------------------------------------------------

- 공지사항 등록 
사업공고, 공지사항 테이블 생성
BOARD_NOTICE(사업공고, 공지사항 Table), DATAROOM_FILE(자료실 첨부파일 Table)
- 주요사업공고(어드민: 사업공고)
http://admin.kiat.or.kr/login.asp  --> kiatadmin/rhksflwkwk 
==============================================================================================================

-- 중복 데이타 조회    @@@@@@@@@@@@@  ==> 2개 이상
SELECT  *
FROM BOARD_FORM_ATTACH M
WHERE ROWID > ( SELECT MIN(ROWID)  
FROM BOARD_FORM_ATTACH  B
WHERE B.NO= M.NO  
)
--AND A.IDX > 76241   --IDX
ORDER BY M.NO DESC
--; 

-- 서식 자료실 정보 저장  @@@@@@@@@@@@@  
INSERT INTO DATAROOM_FORM
(  
NO, IDX_NO, SEQ, FIRST_NO, PARENT_NO, DEPTH,
TITLE, TEXT_CONTS, TEXT_CONTS_2, CATEGORY, SORT_CD,  ---------->
BUSI_PROC, FIRST_IN, SECOND_IN, THIRD_IN, WRITER_ID,
  REG_DATE, DAMDANG_ID,  ---------->
DAMDANG_NM, DAMDANG_BUSEO, DAMDANG_BUSEO_ID, DAMDANG_TEL, READ_CNT,
UP_DATE
)      
SELECT  
NO, IDX_NO, SEQ,  FIRST_NO, PARENT_NO, DEPTH,
TITLE, TEXT_CONTS, TEXT_CONTS_2, CATEGORY, FAQ_CLSF,  ---------->
BUSI_PROC, FIRST_IN, SECOND_IN, THIRD_IN, WRITER_ID,
REG_DATE, DAMDANG_ID,  ---------->
DAMDANG_NM, DAMDANG_BUSEO, DAMDANG_BUSEO_ID, DAMDANG_TEL, READ_CNT,
UP_DATE
FROM BOARD_FORM_ATTACH   
--; 

-- 자료실 첨부파일 정보 저장  @@@@@@@@@@@@@  
INSERT INTO DATAROOM_FILE
(  
NO, SEQ, REALFILENAME, ORGFILENAME, FILEPATH,
FILESIZE, CONTTYPE 
)      
SELECT  
NO, SEQ, REALFILENAME, ORGFILENAME, FILEPATH,
FILESIZE, CONTTYPE 
FROM BOARD_FORM_ATTACH   
--;  
==============================================================================================================

- 산학협력단장 변경
대전전략산업기획단 임종화
*@*.*  --> 김세빈 042-821-6748  충남대학교 산학협력단(3148209264)
김도진(DOJIN/djk1067021) --> 김세빈(KIM7463/kimsebin7463)
아이디는 sbkim이구요, 대표자 성함은 김세빈 
 --사업체 정보 조회  @@@@@@@@@@@@@    ===> 총괄책임자 변경
SELECT  COBUSI_NO, M.BUSI_ID AS 사업체ID, M.BUSI_NM AS 사업체명, M.BUSI_NO AS 사업자번호, 
    M.COBUSI_NO 법인번호, M.BUSI_CLSF, 
        (SELECT MBR_ID FROM RMBR_BUSICEO_HSTR WHERE ROLE_CD='1001' AND AVAIL_EDATE='99991231' 
    AND M.BUSI_ID = BUSI_ID AND ROWNUM = 1) AS 대표자ID, --> 확인 필요
        (SELECT CODE_NAME FROM RCODE WHERE MAIN_CODE='1032' AND AVAIL_EDATE='99991231' 
AND SUB_CODE=M.BUSI_CLSF) AS ANCM_CLSF_NM 
FROM BUSI M
WHERE M.BUSI_ID IS NOT NULL 
    AND M.BUSI_ID  IN ('10022690')  --사업체ID 
--;

-- 대표자구성이력 정보 조회  @@@@@@@@@@@@@  
SELECT *
FROM RMBR_BUSICEO_HSTR WHERE ROLE_CD='1001' AND AVAIL_EDATE='99991231' 
    AND  BUSI_ID = '10022690'
    
-- 대표자구성이력 정보 저장  @@@@@@@@@@@@@    ===> 변경된 이름(김세빈)으로 등록
INSERT INTO MBR_BUSICEO_HSTR
(  
   BUSI_ID,  MBR_ID,  ROLE_CD,  AVAIL_EDATE,  AVAIL_SDATE,
  REG_MBR_ID,  REG_TIME
)      
SELECT  BUSI_ID,  '10120518' MBR_ID,  ROLE_CD,  '99991231' AVAIL_EDATE,  
to_char(sysdate,'yyyymmdd') 유효시작일, REG_MBR_ID,  REG_TIME
FROM MBR_BUSICEO_HSTR S 
WHERE S.BUSI_ID IS NOT NULL 
 AND S.BUSI_ID = '10022690'
--; 

--대표자구성이력 정보 수정 @@@@@@@@@@@@@  ===> 기존 이름(김도진) 유효종료일 처리
UPDATE RMBR_BUSICEO_HSTR B
SET B.AVAIL_EDATE = '20090813'   --유효종료일(어제 날짜로) 처리 --> 더이상 사용 못함
WHERE B.BUSI_ID IN ('10022690')   --사업체 ID
--; 
==============================================================================================================

- 휴일 전산 접수 문의처 안내 공지창 뛰우기
090814_allstop.html
==============================================================================================================

- STOCKS
월(3,070), 화(3,200), 수(3,185), 목(3,160), 금(3,150) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.08.17(월) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 19:00  --> 빨래(이제부터 주말에 할 것)

- KIAT SM
- 서식 자료실 수정
서식 자료실 테이블 변경
BOARD_FORM_ATTACH(서식 자료실 Table) ==> 
DATAROOM_FORM(서식 자료실 Table), DATAROOM_FILE(자료실 첨부파일 Table)로 변경
변경 이유: 첨부파일이 복수로 등록 할 수 있어야 함 
-------------------------------------------------------------------------------------------
- 공지사항 등록 
사업공고, 공지사항 테이블 생성
BOARD_NOTICE(사업공고, 공지사항 Table), DATAROOM_FILE(자료실 첨부파일 Table)
- 주요사업공고(어드민: 사업공고)
http://admin.kiat.or.kr/login.asp  --> kiatadmin/rhksflwkwk 
==============================================================================================================

- MY PAGE에 추가정보 입력 오류
오일권(IKOH/qwer1234)
MBR_CARRER.CARR_NM IS '경력명';

-- 칼럼 수정
ALTER TABLE ITEP_DBA.MBR_CARRER MODIFY ( -- 경력사항 Table
 CARR_NM       VARCHAR2(1000)           --경력명(300 --> 1000)
);  
------------------------------------------------------------------------------------------
  
- 공통코드 찾기(국가코드 리스트) 
select sub_code, code_name, disp_ordr
from rcode
where main_code = /*[#1=1004]*/ '1004'
and avail_edate = '99991231'

- /home/carrer/CarrerSB.java 파일에서 
public void getCarrer(DBAction dba, DynaActionForm form) throws QueryException, Exception {
dba.setQuery(SQLLoader.getQuery("home.carrer.memberadditiondetail"));
form.set("nat_cd", ie.getString("NAT_CD"));   //등록(출원)국가 코드
}
- /sql/home/sql-carrer.xml 파일에서
SELECT B.NAT_CD, CARR_OWNR_ID, SEQ,   ----> B.NAT_CD(국가코드) 추가
FROM RMBR_CARRER A, RRIGHT B
WHERE A.LCNS_RIGHT_NO = B.RIGHT_NO(+)
AND CARR_OWNR_CLSF = ?
AND SEQ = ?
AND CARR_CLSF = ?

- /home/integration/assespro.jsp 파일에서
<html:select property="nat_cd" styleClass="select">
<html:options name="nationIdList" labelName="nationNmList"/> <!-- // 국가 콤보 리스트 Display -->
</html:select>
==============================================================================================================

- 사업비정산 --> 결과보고(확정) Tab에서 확정이 안됨
업무계획ID; 70009474(처리), 70009471(삭제), 70009453(삭제), 임성무(MARKSMUS/lim3390)
==============================================================================================================

- 관리대장(엑셀출력)
http://rnd.risnet.or.kr/pms/subject/subjectLedger.do#
==============================================================================================================

- 현장실태조사(신규평가)
황금연(HWANGTWO/chindo), 전남 --> 경남으로 되어 있음
http://192.168.12.54:8080/pms/estm/manager.do
==============================================================================================================

- 사업체 변경
사업체ID:00009978, 단암전자통신(주) --> 와이즈 넷
-------------------------------------------------------------------

- 사업체 변경
(주) 앤디앰(128-81-53406)의  윤천님께서 개인회원으로 가입되어 있으며, 사업체를 추가등록하는데 계속 오류
* 앤디앰은 기존 등록된 업체인데 대표자가 누락되어 있는거 같습니다. 처리 및 확인하신 후 019-463-7956(윤천)
==============================================================================================================

과제번호: 70006550  ---> 변경신청접수에서 조회 안됨 
과제번호: 70006525 중도 포기
063-219-2215 백문연 연구원
==============================================================================================================

- 추가정보(개인정보수정) 미 존재 건
한병훈(BHHAN3312/bhhan4263, 10036912), 김무강(CNASC2/cnasc5643, 10116815)
--연구논문 및 저서 정보 조회   @@@@@@@@@@@@@ 
SELECT  M.PBLC_YYMM 발행연월, M.PBLC_MGZ 게재지, M.CARR_NM 연구제목, M.VOL_NO, M.MAIN_ATHR 주저자, 
M.MAIN_ATHR  공동저자, CHNG_ATHR  교신저자,
        M.CARR_CLSF 경력구분, M.CARR_CLSF 경력구분, M.CARR_OWNR_CLSF 경력사항주체구분,   
--경력사항주체구분 1:구성원, 2:사업체
        M.PAPER_NM 학위논문명, M.LCNS_RIGHT_NO 특허등록번호 
FROM RMBR_CARRER M
WHERE M.CARR_OWNR_ID IS NOT NULL
 AND M.CARR_OWNR_ID = /*[#4=12916158]*/ '12916158'    --경력사항주체ID
 AND M.CARR_CLSF =  '2'          -- 경력구분(1:학력,2:논문및저서,3:주요경력,4:자격증/포상,5:지식재산권,6:학회및협회활동,
 -- 7:연구활동,8:부품소재인증,9:정부출연과제 수행실적)
--AND M.NDEPT_CLSF IN ('3')         --현소속부서구분(1:내부직원, 2:외부사용자, 3:내부, 외부X)
ORDER BY M.PBLC_YYMM DESC 
--;  
==============================================================================================================

- 서울시 08월 주민세(개인균등할) 정기분 납부
납세번호: 62057511010400120090810018609, 납세금액: 6,000원
납부방법: 신용카드(신한)
http://etax.seoul.go.kr
==============================================================================================================

- 볼펜 주문(총 비용: 55,600원 소요) 0.5m ==> 60개, 0.5m(적) ==> 12개, 1.0m ==> 120개, 1.4m ==> 24개 ====> 총: 216개 구매
1. 동아 애니볼 501/12자루/1.4m/볼펜/유성펜, 가격: 4,200원 ===> 1개(12자루)
적(0.5) 4,200원(개당 가격: 288원) * 1
흑(1.4) 4,200원 (개당 가격: 288원) * 2
(http://itempage3.auction.co.kr/DetailView.aspx?itemNo=A517065524&frm3=V2)
동아 애니볼 1.0m ==> 24자루(개당 가격: 558원)
리필심(12자루): 1.0m 가격: 2,700원 ===> 2개(24개)(배송료: 2,500원)(개당 가격: 288원) 
2. 동아 애니볼 리필심/1.4m/12자루/볼펜, 2,700원(개당 가격: 225원) --> 볼펜심만 판매
애니볼리필심/0.5(흑)  2,700원(개당 가격: 225원) * 5
애니볼리필심/1.0(흑)  2,700원(개당 가격: 225원) *10
(http://itempage3.auction.co.kr/DetailView.aspx?itemno=A519118555&frm3=V2)
==============================================================================================================

- 예쁜손글씨 결제, 주문
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.08.18(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 19:00

- KIAT SM
- ID, PWD 찾기 
http://www.itis.or.kr/member/find.asp?mnum=4
DEBUG: JavaMail version 1.3
DEBUG: java.io.FileNotFoundException: C:\j2sdk1.4.2_13\jre\lib\javamail.providers (지정된 파일을 찾을 수 없습니다)
DEBUG: !anyLoaded
DEBUG: not loading resource: /META-INF/javamail.providers

- JavaMail 설치(Window용)  ===> i3shop
설치방법(http://okjsp.pe.kr/lecture/lec02/mail01.htm)
CLASSPATH=C:\j2sdk1.4.2_08\lib\tools.jar;C:\j2sdk1.4.2_08\lib\mail.jar;C:\j2sdk1.4.2_08\lib\activation.jar
- 메일 전송(/MainMgr/Maill/javamail.htm): 통합
- 메일링 리스트(/MainMgr/Maillinglist/maillistP.jsp)
==============================================================================================================

- 이름 변경 요청(개명)
김기태(PTJ1004/kt9999)-> 김량환(변경후) *
==============================================================================================================

- 사업체 변경
사업체ID:10013887, (주)하이드로, 대표이사 등록: 이영기(10036607) 
-------------------------------------------------------------------
전주대학교산학협력단 대표자 변경: 김종국(*)
-------------------------------------------------------------------
- 사업체명 변경
1. 단암전자 --> (주)와이즈파워
==============================================================================================================

- 비밀번호 분실(이메일 분실)
제정근(SMNDT/smndt123), 변경해 준 email: *@*.*
==============================================================================================================

- infra.itech.go.kr 연결
IP: 110.14.182.193  ID/PWD: admininfra / 레드칼라
==============================================================================================================

- 전체 선정과제정보 다운로드
중복성검사서식(검색대상과제등록(중복성검사서식).xls)
--------------------------------------------------------------------------------------------------------
- 차기 지역R&D 리스트 작성
차기 지역R&D 리스트(200908).xls
==============================================================================================================

- 사업자번호 등록 에러 문의
사업자번호: 1298624578
==============================================================================================================

- 추가정보(개인정보수정) 미 존재 건
윤수현(ICART2000/yun8307), 주민번호: 680914-10
윤수현: 010-6424-0
경력구분(1:학력,2:논문및저서,3:주요경력,4:자격증/포상,5:지식재산권,6:학회및협회활동,
 -- 7:연구활동,8:부품소재인증,9:정부출연과제 수행실적)
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2009.08.19(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 20:00  --> 접수마감(이창욱 연구원 저녁으로 토스트 사다줌)

- KIAT SM
- 사업체 변경
사업체ID:10013887, (주)하이드로, 대표이사 등록: 이영기(10036607) 
----------------------------------------------------------------------------------------------------------------------------- 
- 사업체명 변경
1. 지앤알 --> (주)지앤알
2. 충남디지털문화산업진흥원 --> 충남문화산업진흥원  대표자: 김동완
==============================================================================================================

- 법인등록번호 에러 문의
법인등록번호: 1349110002839
진바이오텍 강정선 (02-6300-8222)
(주)한국바이오솔루션(한종헌: 051-999-588)   ==> 처리 
오성엘에스티(주): 064-821-1872  ==> 처리
==============================================================================================================

- 사업비 입력
 -- 6. 민간부담금내역  정보 조회   @@@@@@@@@@@@@  
SELECT  M.SBJCT_ID 과제ID,  M.SBJCT_STEP, M.SBJCT_ORDR, M.SEQ, M.ALLOT_ROLE_CD 분담기관역할, 
M.CASH_MNY 현금, M.ARTCL 현물,  --분담기관역할CD(1001:국비, 1002:지자체, 1003:기본사업비(민간), 
-- 1004:지방비1, 1005:지방비2, 1006:위탁사업비))
        M.AVAIL_SDATE AS 유효시작일, M.AVAIL_EDATE AS 유효종료일, 
        M.REG_MBR_ID AS 등록자ID, M.REG_TIME AS 등록일시
FROM RSBJCT_ALLOT_PRGS M
WHERE M.SBJCT_ID IS NOT NULL 
    AND M.SBJCT_ID IN ('70007193')  --과제번호  
    -- AND M.SBJCT_ORDR = '2'          --연차별차수  
   -- AND M.SEQR = '1'      
--;  

 --  6. 민간부담금내역  정보 조회   @@@@@@@
UPDATE RSBJCT_ALLOT_PRGS M
SET M.CASH_MNY = '' 
WHERE M.SBJCT_ID IS NOT NULL
    AND M.SBJCT_ID IN ('70007193')  --과제번호  
     AND M.SBJCT_ORDR = '1'          --연차별차수
 --;     
==============================================================================================================

-- 재무결산정보 조회   @@@@@@@@@@@@@ 
SELECT *  
 FROM RBUSI_FNCL_HSTR A1
WHERE BUSI_ID = /*[#1=10096469]*/ '10096469' 
AND    FNCL_YEAR = '2009' 

-- 재무결산정보 삭제   @@@@@@@@@@@@@  
DELETE FROM RBUSI_FNCL_HSTR A1
WHERE BUSI_ID = /*[#1=10096469]*/ '10096469' 
AND    FNCL_YEAR = '2009'  
==============================================================================================================

- 한국생산기술연구원 홍상현 (051-974-9332)
기과등록을 에서 위탁기관을 등록해야하는데 미국학교라서
양식이 안맞는답니다. 사업자등록번호같은게 안맞는다고 하는데요
아무거나 넣으니 안들어간다고 하더라구요;
==============================================================================================================

- 과제신청에서 사업계획서 인쇄가 안됨 
정혜신(HCHUNG/6297934z, 12916053), 유승범: 042-384-8772
한종헌: 064-720-2346  js0307
원인: IE7.0이상에서 안되는 것으로 추정됨
var printObj = document.getElementById("factory");
if(printObj.printing != null){
printObj.printing.header = ""; //머릿말 설정
printObj.printing.footer = "&b페이지 &p/&P"; //꼬릿말 설정
printObj.printing.portrait = true; //출력방향 설정: true-가로, false-세로
printObj.printing.leftMargin = 1.0; //왼쪽 여백 설정
printObj.printing.topMargin = 15.0; //위쪽 여백 설정
printObj.printing.rightMargin = 1.0; //오른쪽 여백 설정
printObj.printing.bottomMargin = 1.0; //아래쪽 여백 설정
//    printObj.printing.printBackground = true; //배경이미지 출력 설정:라이센스 필요
printObj.printing.Print(true); //출력하기
}
==============================================================================================================

--RSUBJECT 과제기본 정보에서 OFFCL_SBJCT_NM(공식과제명) 필드 데이타 필드 넓이기 
 OFFCL_SBJCT_NM     VARCHAR2(300 BYTE)   -->    VARCHAR2(500 BYTE)  
==============================================================================================================

- 민간부담현금비율 관련
중소기업 주관일 경우 참여기업의 형태에 상관없이 민간부담금의 10%이상만 현금으로 납부하면 됨.
그러나 현재 문제는 참여기업으로 대기업이 있을 경우, 민간부담금의 20%이상을 요구
과제번호: 70007285 --> 신현태(DAESUNGKS/ds1106)
/itep-pms/subject/subjectApp/sub_input_exp_org.jsp
---------------------------------------------------------------------------------------
- 민간부담현금비율 관련  --> 처리
중소기업 주관일 경우 참여기업의 형태에 상관없이 민간부담금의 10%이상만 현금으로 납부하면 됨.
그러나 현재 문제는 참여기업으로 대기업이 있을 경우, 민간부담금의 20%이상을 요구 
이동억(ROCKBEAT/1234)  --> 97,395
==============================================================================================================

- 출력 안 보임 
노종호(HPTS2071/hpts2071)  *, 과제번호: 70007191
==============================================================================================================

- 실무담당
과제입력 마지막 참여기업 현황정보에서 
실무담당자가 모두 주관기관 실무담당자로 나온다고 합니다.
이에 대한 수정을 요청드립니다. (참여기관별 담당자로 나오도록)
==============================================================================================================

- Contact us 메일주소 변경
*@*.* --> *@*.*  --> *@*.*r
==============================================================================================================

- 2009년 지역산업기술개발사업 과제접수 마감
1. 사업공고: 2009.7.14(화)
2. 사업계획 전산입력: 2009.8.10(월) ~ 8.19(수), 18:00
3. 사업계획서 접수: 8.13∼8.20
4. 선정평가: 8월~9월
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.08.20(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 19:00

- KIAT SM
--과제기본 정보 삭제 @@@@@@@@@@@@@ 
DELETE FROM RSUBJECT S
WHERE S.SBJCT_ID IS NOT NULL
AND S.SBJCT_ID IN ('70007437', '70007467','70007449', '70007101')        --과제번호
==============================================================================================================

- 총괄책임자 변경
과제번호: 70006550
협약서기준 총괄책임자: 정대화(AMATO50/yamato51, 12915411), 이영미 *
과제기본정보화면에서 총괄책임자가 (주)원광제약 대표이사인 박두용으로 되어있습니다.  
실제 총괄책임자인 "정대화"로 정정

-- 총괄책임자 정보 조회 ------> 
SELECT    E.AVAIL_SDATE E_AVAI_SDATE,   A.AVAIL_SDATE A_AVAI_SDATE, 
E.AVAIL_EDATE E_AVAI_EDATE, A.AVAIL_SDATE A_AVAI_EDATE,  
E.MBR_ID 아이디   -->  10081310  -->  정대화(YAMATO50/yamato51, 12915411)
FROM RSUBJECT C, RSBJCT_PRGS A, RSUBJECT G, RSBJCT_RELCO B, RANCM D, RSBJCT_MBR_HSTR E, RBUSI F
WHERE C.SBJCT_ID = /*[#1=70006550]*/ '70006550'
AND A.SBJCT_ID = C.SBJCT_ID 
AND G.SBJCT_ID = DECODE(C.SBJCT_CLSF, '1001', C.SBJCT_ID, C.GNRL_SBJCT_ID)       
AND B.SBJCT_ID = C.SBJCT_ID
AND B.JOIN_ROLE_CD = '1001'
AND B.AVAIL_SDATE <= A.AVAIL_SDATE
AND B.AVAIL_EDATE >= A.AVAIL_SDATE
AND D.ANCM_ID = C.ANCM_ID
AND E.SBJCT_ID = C.SBJCT_ID
AND E.ROLE_CD = '1005'
AND E.AVAIL_SDATE <= A.AVAIL_SDATE   ---> 요부분 확인
AND E.AVAIL_EDATE >= A.AVAIL_SDATE
AND F.BUSI_ID = E.BUSI_ID
AND E.MBR_ID = '12915411'        --아이디
AND E.BUSI_ID = '10006824' 
--; 
==============================================================================================================

- 과제접수목록 요청
(2009_0820) 과제접수목록(접수결과).xls
1. 산업기술분류 대-중-소
2. 정부출연금, 민간부담금(현금, 현물 각각)
==============================================================================================================

- 과제접수 상태 변경 요청
과제번호: 70007442, 접수상태: 04 --> 07(접수완료)로 변경
==============================================================================================================

- 과제접수 연장 처리
과제번호: 70007268
하연철(ADEPT72/world21)
총괄과제 접수가 안되었다고 합니다.  
수정권한을 일시적으로 주시기 바람 ==> 민재웅 연구원 
/subject/subjectApp/sub_input_list.jsp 파일에서
SessionHandler sess_handler = SessionHandler.getHandler(pageContext);
User user = sess_handler.getUser();
DateUtil date = new DateUtil();

if(user == null) {
} else { 
strUserNo = user.getUserNo(); 
if(user != null && (strUserNo.equals("10087528"))) {  //권한부여 
strRight= "1";
}   
} 
-----------------------------------------------------------------------------

 - 세부주관기관  과제책임자 변경 
유씨엘(주)  (PHDLSK1/ysavera) --> 김인성(KIMINS016/kis016, 12916584)  064-799-1000 
처리불가: 세부주관기관 과제책임자 직접 입력하지를 않았고 총괄관리책임자를 단지 보여주기만 함
------------------------------------------------------------------------------------------------------
- 지술지원연계사업 웹등록 오류(에듀테크)
김영원 --> 김준태(EDUTEC00/edu8274, 00309975)  ===> 사업비 문제 직접 처리
------------------------------------------------------------------------------------------------------

-- 등록된 공고조회(사업분류정보) 조회   @@@@@@@@@@@@@ 
 SELECT A.ANCM_ID, A.ANCM_ID, A.BCLSF_CD, A.RCPT_SDATE, A.RCPT_EDATE
FROM RANCM_BUSI A
WHERE A.ANCM_ID IS NOT NULL
       AND A.ANCM_ID IN ('1310')         --공고ID
      --AND A.A2009-08-20NCM_TITLE LIKE '%테스트%'  --공식과제명
ORDER BY A.ANCM_ID DESC
--;

-- 등록된 공고조회(사업분류정보) 수정   @@@@@@@@@@@@@ 
UPDATE RANCM_BUSI A
SET A.RCPT_EDATE = '20090820'   --접수종료일(공고 접수일자 연장)
WHERE A.ANCM_ID IS NOT NULL
       AND A.ANCM_ID IN ('1310')         --공고ID
--; 
==============================================================================================================

- 참여기업현황
담당자자 같음 --> 박선화: *, 홍종윤(BSK/2234)
==============================================================================================================

- 사업평가팀 담당자 변경 요청
전북전략산업기획단 백문연
다름이 아니오라 전북전략산업기회단에 사업평가팀 담당자가 변경되어 변경요청을 드립니다  
신귀수 : haazi  에서 백문연(mybaek/jb2215)으로 변경요청을 드립니다. 
또한, risnet 변경/이의신청-변경관리-변경처리에 있는
지역연계기술개발사업(9개지역-전북) 과제번호:70006550 과제명 : 경옥고 가미방의 발효물을 이용한 기능성식품 
개발, 주관기관: 원광제약(주) 총괄책임자 : 정대화 
에 대해 총괄책임자변경요청을 하였으나 오류로 인한 변경이었으며 변경이 되었기에 
변경신청이 불필요하게 되었습니다. 이에 해당사항에 대한 삭제를 부탁드립니다.
==============================================================================================================

 - 주간보고
1. 사업 접수 마감 처리 및 요구사항 대응
- 기간: '09.08/10(월) ~ '09.08/19(수)
- 조치: 에러 발생시 수정 사항 처리 및 개선 사항 도출 
- 결과: 1. 09.08/19(수) 18시에 접수 종료를 하고 미진한 부분이 있어서 09.08/20(목) 11시에서 15시 사이에 다시 
접수를 받음, 2. 총 등록 건수: 385건으로 동시 접속자수가 많지 않아서 서버 부하는 크지 않은 것으로 추정됨
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2009.08.21(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 19:30

- KIAT SM
 - 사업비 정산 확정 확인 요청 --> 처리 완료
광주전략산업기획단 박홍순(HSPAK1749/pak1749) 연구원  
사후관리 탭에서 정산금 관리에 입금확인을 할려고 하는데 
정산금 납부대상 과제리스트가 총 41건중에서 10건 만 확인가 안됨
정산금구분 관리기관(1:진흥원, 2:기획단, 3:미정)
==============================================================================================================

- 수요조사접수(/subject/report/demand_report_list.jsp) --> 처리 완료
[통계/보고서] 메뉴에서 좌측[평가관리통계 -> 신규평가현황 -> 수요조사접수] 메뉴가 있습니다.
여기 메뉴에서 [공고명]을 선택하여 접수과제 현황을 엑셀로 받을 수 있게 되어 있습니다.
현재 [공고명] 선택란에 2009년 연초의 공고만 있고 어제 접수가 완료된 [공고명]이 없어 접수현황 자료를 받을 
수 가 없습니다.  
==============================================================================================================

- 사업비정산 결과확정 이전으로 돌리기 --> 처리 완료
광주전략산업기획단 임성무(MARKSMUS/lim3390) 선임연구원 
과제번호 : 70003308, 주관기관 : 세림아이엔씨
사업비정산 결과확정 이전으로 돌려주시기 바랍니다.
-- 업무계획 정보  수정   @@@@@@@@@@@@@   ====> 사업비정산 --> 결과보고(확정) Tab 화면으로 돌리기
-- UPDATE RDUTY_PLAN A
SET A.PLAN_STATUS = '1500'      --계획 현상태(1500:(계획)전결), 2500:(결과)전결))
WHERE A.PLAN_ID IS NOT NULL 
     AND A.PLAN_ID IN ('70009449')   --PLAN_ID
--;
==============================================================================================================

- 정산금 납부계획 및 실적 수정  --> 처리 완료
과제번호: 70001332, 납부대상업체: (주)엑스엘티
납부대상금액: 140000000 --> 0
-- 기술료환수금d실적 삭제   @@@@@@@@@@@@@ 
DELETE FROM  SAPMNT_PLAN P
WHERE P.SBJCT_ID = '70001332'    --과제번호
    AND P.SEQ = 1  --납부계획_SEQ
--;  
-- 기술료환수금d실적 수정   @@@@@@@@@@@@@ 
UPDATE  SAPMNT_PLAN P
SET P.SBJCT_ORDR = 1   --과제연차수
WHERE P.SBJCT_ID = '70001332'    --과제번호   
--; 
==============================================================================================================

- 과제접수목록(접수결과) 자료 요청--> 처리 완료
(2009_0820) 과제접수목록(접수결과).xls  --> 70007019
1. 총괄책임자 연락처, 메일주소 --> O
2. 실무담당자 연락처, 메일주소  --> O
1. 주관기관 사업자등록번호  --> O
2. 주관기관 총괄책임자 주민등록번호  --> O 
3. 참여기업 사업자등록번호   -->  O
4. 참여기업 대표 주민등록번호   -->  O 
5. 위탁과제 책임자 주민등록번호   - --> O  
6. 참여기업 대표자 성명   -->  O
7. 위탁과제 책임자 성명    - --> O

-- 위탁과제 책임자 주민등록번호 조회   @@@@@@@@@@@@@ 
SELECT MAX(DECODE(Y.NO,1,DECODE(X.CITI_NO,NULL,NULL,X.CITI_NO)))
       MAX(DECODE(Y.NO,2,DECODE(X.CITI_NO,NULL,NULL,', 'X.CITI_NO)))
       MAX(DECODE(Y.NO,3,DECODE(X.CITI_NO,NULL,NULL,', 'X.CITI_NO)))
       MAX(DECODE(Y.NO,4,DECODE(X.CITI_NO,NULL,NULL,', 'X.CITI_NO)))
       MAX(DECODE(Y.NO,5,DECODE(X.CITI_NO,NULL,NULL,', 'X.CITI_NO)))
       MAX(DECODE(Y.NO,6,DECODE(X.CITI_NO,NULL,NULL,', 'X.CITI_NO)))
       MAX(DECODE(Y.NO,7,DECODE(X.CITI_NO,NULL,NULL,', 'X.CITI_NO)))
       MAX(DECODE(Y.NO,8,DECODE(X.CITI_NO,NULL,NULL,', 'X.CITI_NO)))
       MAX(DECODE(Y.NO,9,DECODE(X.CITI_NO,NULL,NULL,', 'X.CITI_NO)))
       MAX(DECODE(Y.NO,10,DECODE(X.CITI_NO,NULL,NULL,', 'X.CITI_NO)))
       MAX(DECODE(Y.NO,11,DECODE(X.CITI_NO,NULL,NULL,', 'X.CITI_NO)))
       MAX(DECODE(Y.NO,12,DECODE(X.CITI_NO,NULL,NULL,', 'X.CITI_NO)))
       MAX(DECODE(Y.NO,13,DECODE(X.CITI_NO,NULL,NULL,', 'X.CITI_NO)))
       MAX(DECODE(Y.NO,14,DECODE(X.CITI_NO,NULL,NULL,', 'X.CITI_NO))) O_CITI_NO
FROM   (
        SELECT ROWNUM RK, A.SBJCT_ID, F.CITI_NO 
        FROM RSUBJECT A, RSBJCT_PRGS B, RSBJCT_RELCO C, RSBJCT_MBR_HSTR D, RBUSI E, RMEMBER F
        WHERE C.JOIN_ROLE_CD = '1005'
            AND D.ROLE_CD = '1011'   --구성원 참여 역할(1011: 위탁책임자)
            AND A.SBJCT_ID = /*[#1=70007019]*/ '70007019'  --과제번호
            AND B.SBJCT_ID = A.SBJCT_ID
            AND B.SBJCT_STEP = /*[#2=0]*/ '0' 
            AND B.SEQ = (SELECT /*+ INDEX_DESC(RSBJCT_PRGS RSBJCT_PRGS_PK) */ SEQ FROM RSBJCT_PRGS
                WHERE SBJCT_ID = A.SBJCT_ID AND ROWNUM = 1  AND SBJCT_STEP = B.SBJCT_STEP) 
            AND C.SBJCT_ID = A.SBJCT_ID
            AND D.SBJCT_ID = A.SBJCT_ID
            AND D.BUSI_ID = C.BUSI_ID
            AND E.BUSI_ID = C.BUSI_ID
            AND F.MBR_ID = D.MBR_ID
            AND C.AVAIL_SDATE <= B.AVAIL_SDATE
            AND C.AVAIL_EDATE >= B.AVAIL_SDATE
            AND D.AVAIL_SDATE <= B.AVAIL_SDATE
            AND D.AVAIL_EDATE >= B.AVAIL_SDATE 
          ) X, COPY_T Y
WHERE Y.NO = X.RK
--; 
==============================================================================================================

- 지역산업지원사업 관리시스템 운영 및 유지보수 제안 발표회 참석
시간: 2009.08.21(금) 10:50 ~ 11:10
발표: KCC 권재성
==============================================================================================================

- STOCKS
월(3,060), 화(3,090), 수(3,845), 목(3,560), 금(3,340)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.08.24(월) 작업 ■■■■■■■■■■■■■■■■
---> 06:00 ~ 18:30

- KIAT SM
- 서식 자료실 수정
서식 자료실 테이블 변경: BOARD_FORM_ATTACH(서식 자료실 Table) ==> 
DATAROOM_FORM(서식 자료실 Table), DATAROOM_FILE(자료실 첨부파일 Table)로 변경
-- 서식 자료실 수정(executeBoardFormFile(...),   public int updateBoardForm(...))
call SP_BOARD_FORM_ATTACH_UPDATE(  1002, 'formatt', 1002, 1002, 1,  '1', 'd2_edite22', 'TAMARIO', 
'2009-08-24', '', '', '103', '283', '303', 'dDDSDDD',  '', '', '', '', '',  '', '', '', 0, ''  )
-------------------------------------------------------------------------------------------
- 공지사항 등록 
사업공고, 공지사항 테이블 생성
BOARD_NOTICE(사업공고, 공지사항 Table), DATAROOM_FILE(자료실 첨부파일 Table)
- 주요사업공고(어드민: 사업공고)
http://admin.kiat.or.kr/login.asp  --> kiatadmin/rhksflwkwk 
==============================================================================================================

- 중복성검사서식 리스트 데이타 요청--> 처리 완료
백낙주 연구원
주신 자료는 미선정된 자료까지 모두 발취된 거 같습니다. 2009년 1차(4월)까지 선정(지원)된 과제만 발췌해 
주시기 바랍니다.    ===> 2,231건
==============================================================================================================

-- 변경이의 신청 철회  --> 처리 완료
과제번호:70004241, 민재웅(MINJW316/ghddlr1) 연구원
협약변경: 사업기간 연장 '09.9.30 --> '09.11.30
금일 변경처리를 하였으나, 다시 원래대로 복구해주시길 부탁드립니다.(협약변경관련 모든 내용을 삭제해 주세요) 

-- 변경이의 신청 정보 조회   @@@@@@@@@@@@@ 
SELECT *
FROM RCHNG_DISS P
WHERE P.SBJCT_ID IS NOT NULL
     AND P.SBJCT_ID = '70004241'    --과제번호
ORDER BY SEQ DESC 
--;    
-- 변경이의 신청 정보 삭제   @@@@@@@@@@@@@ 
DELETE FROM RCHNG_DISS P
WHERE P.SBJCT_ID IS NOT NULL
     AND P.SBJCT_ID = '70004241'    --과제번호  
ORDER BY SEQ DESC 
--;   
--------------------------------------------------------------------------

-- 총개발기간, 개발목표및내용 변경신청 정보 조회   @@@@@@@@@@@@@ 
SELECT *
FROM MBR_HSTR_CHNG P
WHERE P.SBJCT_ID IS NOT NULL
     AND P.SBJCT_ID = '70004241'    --과제번호
--;    
-- 총개발기간, 개발목표및내용 변경신청 정보 삭제   @@@@@@@@@@@@@ 
DELETE FROM MBR_HSTR_CHNG P
WHERE P.SBJCT_ID IS NOT NULL
     AND P.SBJCT_ID = '70004241'    --과제번호 
--;   
--------------------------------------------------------------------------

-- 단계별개발기간 변경신청 정보 조회   @@@@@@@@@@@@@ 
SELECT *
FROM RSBJCT_ORDR_CHNG P
WHERE P.SBJCT_ID IS NOT NULL
     AND P.SBJCT_ID = '70004241'    --과제번호     
--; 
-- 단계별개발기간 변경신청 정보 삭제   @@@@@@@@@@@@@ 
DELETE FROM RSBJCT_ORDR_CHNG P
WHERE P.SBJCT_ID IS NOT NULL
     AND P.SBJCT_ID = '70004241'    --과제번호 
--;   
--------------------------------------------------------------------------

-과제기본정보 수정  @@@@@@@@@@@@@
-- UPDATE RSUBJECT S
SET   S.GROSS_DVLP_EDATE = '20090930'    --총개발종료일자  09.9.30
, S.REG_TIME = SYSDATE
WHERE SBJCT_ID = '70004241'  --과제번호 
--; 
==============================================================================================================

- 우수사례 홍보자료  금액 자릿수 증강  --> 처리 완료 
김수호(SHKIM5/im2509)
매출액(천원) 8자리 --> 11자리(maxlength="10" --> maxlength="14")
매출액, 당기순이익, 자본총계, 부채총계를 수정 부탁 드립니다
우수사례 홍보자료(/report/final_best_prdata.jsp)
==============================================================================================================

- 신한카드에서 요청
1. 담당자(간사) 정보
memberid(구 itep에서관리하던 key값), 아이디, 패스워드, 이름, 이메일
2. 과제별 간사 정보
과제번호, 단계, 차수, 담당자명 or member id
==============================================================================================================

- 데모 라이센스 발급신청(사용기간 2개월)
1. 이클립스에서 에러 내용:
Invalid License
License is expired
2. 조치: Jeus 데모 라이센스 발급신청
http://technet.tmax.co.kr/kr/download/license.do?fc=down&sc=down_license
제품명: Jeus
발급유형: Jeus Fix#18 Under 4.2 Over
Host ID(host ID): 20C4ACFC
JEUS 4.2 Under demo 2 months None Server IP

참고) HostID(ncpu 명령의 결과값)
C:\Documents and Settings\TAMA2> ncpu
HOST NAME1: TAMA
HOST NAME2: TAMA
Volume[C:\] type: NTFS
Volume[C:\] serial: 20C4ACFC   =======> 이것
NCPUS: 2
IPADDRESS: 192.168.12.54
3. 메일로 받음 --> license.dat 파일을 license 파일로 바꾸어 C:\Jeus42\license폴더에 붙어 넣기
4. license 정보 확인
C:\Documents and Settings\TAMA2> jeusadmin -licenseinfo
[ErrorMsgManager] Message Manager is initialized
================ JEUS LICENSE INFORMATION ===================
=== EDITION : JEUS DEMO
=== DUE-DAY : 2009/10/24
============================================================= 
-----------------------------------------------------------------
- WTOB 연결 에러
[2009.08.24 09:38:39][1] [WTOB-2346] [E] worker(webtob1-hth0(127.0.0.1:9900)-w0:) : fail to reconnect
<<__Exception__>>
java.net.ConnectException: Connection refused: connect
5. WTOB 연결 처리: ws_engine.m 재 컴파일
C:\Jeus42\webserver\config> wscfl -i ws_engine.m
        Current configuration:
                Number of client handler(HTH) = 1
                Supported maximum user per node = 969
                Supported maximum user per handler = 969
CFL is done successfully for node(TAMA(TAMA))
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.08.25(화) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 18:30

- KIAT SM
- 서식 자료실 수정
서식 자료실 테이블 변경: BOARD_FORM_ATTACH(서식 자료실 Table) ==> 
DATAROOM_FORM(서식 자료실 Table), DATAROOM_FILE(자료실 첨부파일 Table)로 변경

- 서식자료실 파일업로드 경로 변경
/itep-pms/WEB-INF/web.xml 파일에서
<param-name>DataroomUpload_Directory</param-name>
    <param-value>Z:/form_attach_doc</param-value>
    <description>서식자료실 파일업로드 경로</description>
</context-param>
<context-param>
    <param-name>TestUpload_maxMBSize</param-name>
    <param-value>20</param-value>
    <description>최대 업로드 크기(MB)</description>
</context-param>

/qanda/QandaSB.java 파일에서
private void executeDataroomForm(DynaActionForm form, DBAction dba, String no) throws DBException
{
String saveDir = context.getInitParameter("DataroomUpload_Directory");   //서식자료실 파일업로드 디렉토리(환경 파일에 세팅)
int maxFileSize = StrUtil.StrToInt(context.getInitParameter("TestUpload_maxMBSize"));   // 최대 업로드 크기(20MB)
}

- 디버깅 
dbms_output.put_line('TEST');
==============================================================================================================

- 과제명 이상, 사업비 일부 수정
이동웅 054-770-2224 (*)
==============================================================================================================

- 학회 및 협회활동, 연구논문 및 저서 데이타 없음   --> 처리 완료 
김무강(CNASC2/cnasc5643) 041-735-5624 ~5
김무강 교수님이 말씀하시길 입력일자: 2007년 중순이라고 함
-- 학회 및 협회활동, 연구논문 및 저서 조회   @@@@@@@@@@@@@ 
SELECT  M.PBLC_YYMM 발행연월, M.PBLC_MGZ 게재지, M.CARR_NM 연구제목, M.VOL_NO, 
M.MAIN_ATHR 주저자, M.MAIN_ATHR  공동저자, CHNG_ATHR  교신저자,
        M.CARR_CLSF 경력구분, M.CARR_CLSF 경력구분, M.CARR_OWNR_CLSF 경력사항주체구분,   
        M.PAPER_NM 학위논문명, M.LCNS_RIGHT_NO 특허등록번호 
FROM RMBR_CARRER M
WHERE M.CARR_OWNR_ID IS NOT NULL
 AND M.CARR_OWNR_ID = '10116815'    --경력사항주체ID
 AND M.CARR_CLSF IN ('2',  '7') --경력구분(2:논문및저서 7:연구활동)
ORDER BY M.PBLC_YYMM DESC
--;  
==============================================================================================================

 - 대분류사업(지역산업 사업)
1. 신기술보육사업(4개지역) 
2. 지역혁신산업기반구축사업  
3. 지역산업기술개발사업(진흥사업-4개지역) 
4. 지역산업기술개발사업(진흥사업-9개지역) 
5. 지역연계기술개발사업 
6. 지역산업선도기술개발사업 
7. 지역전략기획기술개발사업

-- 지역산업 사업목록 조회   @@@@@@@@@@@@@ 
SELECT LEVEL AS LV, BCLSF_CD, BCLSF_NM
FROM RBUSI_CLSF_V
CONNECT BY PRIOR BCLSF_CD = PRE_BCLSF_CD
START WITH BCLSF_CD IN ('S1803','S1802','S1801','S1431','S1430','S1257','S2000', 'S1312')
==============================================================================================================

- 과제신청(온라인접수)(/subject/subjectApp/sub_input_list.jsp)란의 알람의 의미
총괄책임자의 회원정보에 직장이 사업체검색하여 저장되어있지 않습니다.<br>MyPage>개인정보수정에서 직장을 
사업체검색하여 선택하시고 저장하시기 바랍니다.<br>사업체가 검색이 되지 않는 경우에는 사업체가 등록되어
있지 않은것이므로 먼저 대표자로 로그인하시어 사업체를 등록하십시오.
--총괄책임자(로그인사용자)정보 가지고 오기   @@@@@@@@@@@@@ 
    MBR_ID, NDEPT_ID, MBR_NM, CITI_NO, NBLNG_DEPT_NM, PHONE_NO1, NOW_PSTN, FAX_NO, EMAIL, PHONE_NO2,
    (CASE WHEN NDEPT_ID IS NULL THEN '2' ELSE '1' END) CHABLE   --현소속부서ID(존재여부만 확인)
FROM RMEMBER
WHERE MBR_ID = '12916017'     --구성원ID
 --; 

- 사업체가 검색이 되지 않는 경우  ===> 사업체 정보 존재 여부 확인(등록자가 사업체 대표가 아니여도 됨)
--사업체 정보 조회  @@@@@@@@@@@@@ 
SELECT  M.BUSI_ID AS 사업체ID, (SELECT MBR_ID FROM RMBR_BUSICEO_HSTR WHERE ROLE_CD='1001' 
AND AVAIL_EDATE='99991231' AND M.BUSI_ID = BUSI_ID AND ROWNUM = 1) 대표자ID, 
M.BUSI_NM AS 사업체명, M.BUSI_NO AS 사업자번호, M.COBUSI_NO 법인번호, M.BUSI_CLSF,  
(SELECT CODE_NAME FROM RCODE WHERE MAIN_CODE='1032' AND AVAIL_EDATE='99991231' 
AND SUB_CODE=M.BUSI_CLSF) AS ANCM_CLSF_NM 
FROM BUSI M
WHERE M.BUSI_ID IS NOT NULL
    AND M.BUSI_NM LIKE '%오케이메디텍%'  --사업체명
    AND M.BUSI_ID IN ('10030863')  --사업체ID
--; 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.08.26(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:30  --> 추석기차표 예매

- KIAT SM
- 국감대비용 기초자료 출력
요청: 지역산업진흥팀 김소정 연구원, 6009-3731, *@*.*
'09년도 국감대비용 기초자료 작성을 위하여 첨부 양식의 자료출력을 요청
ㅇ 기준 : 최근 3년간 지원기준(07, 08, 09년 각각 개별 시트로 출력요망)
ㅇ 대상사업 : 지역사업(시스템별 사업카테고리 기준)
  - 리즈넷PMS(rnd.risnet.or.kr) : 지역혁신산업기반구축사업, 신기술보육사업(4개지역), 지역산업기술개발사업(4개지역),
    지역산업기술개발사업(9개지역), 지역연계기술개발사업, 지역산업선도기술개발사업, 지역전략기획기술개발사업
  - 인프라평가관리시스템(infra.kiat.or.kr) : 지역산업진흥사업 중 (지역혁신센터사업, 지역혁신산업기반구축사업, 
     지역전략산업육성사업)
------------------------------------------------------------------------------------------------------------------------

/** 주관기관 중복제거 하지 않은것 */   ---> 2개 이상 등록
SELECT SUBSTR(TB.FULL_NM,0,2) "지역명", TA.CNT "갯수"
FROM (
    SELECT NVL(ZIP_CD,'10000') ZIP_CD, COUNT(A.SBJCT_ID) CNT
    FROM (
            SELECT (SELECT ZIP_CD FROM RBUSI_CLSF_V WHERE BCLSF_CD = A.BCLSF_CD) ZIP_CD, 
A.SBJCT_ID, A.CHRGR_BUSI_ID
    FROM RSUBJECT A
    WHERE A.SBJCT_ID IN (SELECT DISTINCT SBJCT_ID
 FROM RBUSI_CALC
 WHERE FIX_YEAR IN ('2007','2008')))A
    GROUP BY ROLLUP(ZIP_CD)
     ) TA, ZONE_INFO TB
WHERE TA.ZIP_CD = TB.ZIP_CD
--;
==============================================================================================================

- 중간보고서 안 보임    --> 처리 완료 
과제번호: 70004231  중간정산보고서 제출해야하는 상태
063-212-2323  43번 강창남 대리  --> 장동규(I969009/f4514188)로 로그인 해서 처리하면 됨 
==============================================================================================================

- 2008 년 개발목표 및 개발내용 실적입력    --> 처리 완료 
과제번호: 10024267  개발목표, 개발내용 변경 요청
박원철(DWMECHA/iso9001)
==============================================================================================================

- 지역별 담당자 등록 방법
구성원/사업체 --> 일반관리자 --> 지역별 담당자관리에서 기획단 담당자 등록 
-- 기획단 담당자 변경
--회원 정보 조회   @@@@@@@@@@@@@ 
SELECT MBR_ID, MBR_NM, LOGIN_ID, PASSWORD
FROM MEMBER
WHERE MBR_NM IN ('김현철','홍정규','박귀득')
AND NDEPT_ID LIKE 'R%'
--과제기본 정보 수정   @@@@@@@@@@@@@
UPDATE RSUBJECT
SET MNGR_MBR_ID = '10002524'    --현과제담당자ID
WHERE SBJCT_ID IN ('10025011','10025080','10025110') 
--과제기본 정보 조회   @@@@@@@@@@@@@
UPDATE RSBJCT_MBR_HSTR
SET MBR_ID = '12822377'   --과제관련 구성원ID
WHERE SBJCT_ID IN ('10017512')
  AND ROLE_CD = '1006' 
  AND AVAIL_EDATE = '99991231' 
----------------------------------------------------------------------------------

- 신규평가 --> 현장실태조사 --> 간사지정
==============================================================================================================

- 기술 협상
시간: 2009.08.26(수) 15:00 ~ 15:30
참석인원: KIAT 이창욱 연구원, KCC 권재성 차장, 조장희 주임
==============================================================================================================

- 2009년 추석기차표 예매 
1. 예매일시: 8월 26일(수) 06:00 ~ 08:00  경부, 충북, 경북, 대구, 경전, 동해남부선
2. 2009년 추석 승차권 예매대상역ㆍ여행사현황
3. 예매처: 여행114 역삼: 서울시 강남구 역삼동 701 상록회관 1층 02-3452-0101  --> 10시부터 가능
   열차번호:1251, 1호차 16석, 시각: 10월 2일 12:05 ~ 16:02, 금액:20,500원
4. 예매(못함): 10월 2일(토) 11:00 무궁화호(서울역 --> 동대구역)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.08.27(목) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 19:00  --> 최대리 대전 출장(광역 PT)

- KIAT SM
- 국감대비용 기초자료 출력
요청: 지역산업진흥팀 김소정 연구원, 6009-3731, *@*.*
'09년도 국감대비용 기초자료 작성을 위하여 첨부 양식의 자료출력을 요청
ㅇ 기준 : 최근 3년간 지원기준(07, 08, 09년 각각 개별 시트로 출력요망)
ㅇ 대상사업 : 지역사업(시스템별 사업카테고리 기준)
K.VISIT_DATE "실사일", K.GRADE_DATE "평가일"

CREATE INDEX ITEP_RDBA.RSBJCT_GRADE_INFO_IDX ON ITEP_RDBA.RSBJCT_GRADE_INFO
(SBJCT_ID, GRD_DUTY_CD, SBJCT_SEQ)
LOGGING
TABLESPACE REGION_DATA_TS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;
==============================================================================================================

- 담당간사 조회 안됨    --> 처리 완료  
진흥원 김상훈 연구원
-- UPDATE MEMBER M
SET M.DISMISS_DATE= '99991231'    --퇴사일(퇴사일 존재해야 함)
WHERE M.MBR_ID IS NOT NULL           
     AND M.MBR_ID IN ('12915602')      --구성원I
     AND M.MBR_NM = '김상훈'  
--;
==============================================================================================================

- 일반회원 => 관리자로 변경 처리  --> 처리 완료  
 UPDATE MEMBER M 
SET M.NDEPT_ID= 'R006' ,    --현소속부서ID(R006:강원)
     M.NDEPT_CLSF = '1'      --현소속부서_사업체구분CD
WHERE M.MBR_ID IS NOT NULL 
      AND M.MBR_ID IN ('12915835','12916566','05002800')  --구성원ID  
--;
==============================================================================================================

- 지역산업관리 시스템관련 회의
일시: 2009.08.26(수) 15:00 ~ 16:30
----------------------------------------------------------------------------
- 접수현황 통계, 접수상황에 문제점 정리, 개선방안
1. 접수상황에 문제점 정리
 1) 비밀번호 분실시 메일 발송 안됨(전화로 응대)
 2) 사업체 정보 오류에 따른 문제
  - 사업체 등록시 대표자 등록 안함
  - 사업자등록 번호에 주민번호 넣음
  - 사업체 대표자 변경 요청
 3) 접수상태구분에 따른 오류
2. 개선방안
 1) 비밀번호 분실시 메일 발송 안됨
   - 비밀번호 분실시 메일 발송(메일 시스템 점검)
 2) 사업체 정보 오류에 따른 문제
  - 사업체 관련 업무를 지역 전략단에 이관(프로그램 수정)
 3) 접수상태구분에 따른 오류
   - 프로그램 수정
3. 접수현황 통계
- 총 접수 건수: 385건, 접수 완료 건수: 379건, 접수 미완료 건수: 6건
----------------------------------------------------------------------------

1. 사후관리 시스템
 - e-bank(평가원 사용) 사용 요청
2. 시스템 파악 리포트 작성(ERD 위주로 작성)
 - 9월 16일(수) 경우 발표
 - 지식산업 교육
3. 통계정보용 화면 개발 요청
- 사업비 예산 관리, 평가 대상 과제 관리
4. 진흥원 로그인 자동 링크
5. 통합시스템 구상
- 지역 관리 시스템 전체 통합 --> 지역 관리 시스템 개편 후 논의 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.08.28(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 18:50

- KIAT SM
- 국감대비용 기초자료 출력
요청: 지역산업진흥팀 김소정 연구원, 6009-3731, *@*.*
'09년도 국감대비용 기초자료 작성을 위하여 첨부 양식의 자료출력을 요청
ㅇ 기준 : 최근 3년간 지원기준(07, 08, 09년 각각 개별 시트로 출력요망)
ㅇ 대상사업 : 지역사업(시스템별 사업카테고리 기준)
사업비: 150,000천원, -->  150,000,000원

해당년도 사업종료(평가기준) 미존재  ---> AVAIL_SDATE: 발생일(유효시작일)만 존재
SELECT TO_CHAR(NVL(SUM('45853000'), 0)/1000, '999,999,999,990')  FROM DUAL 
==============================================================================================================

- STOCKS
월(3,140), 화(3,120), 수(3,090), 목(3,045), 금(3,065)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.08.31(월) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 18:50

- KIAT SM
- 국감대비용 기초자료 출력
요청: 지역산업진흥팀 김소정 연구원, 6009-3731, *@*.*
'09년도 국감대비용 기초자료 작성을 위하여 첨부 양식의 자료출력을 요청
ㅇ 기준 : 최근 3년간 지원기준(07, 08, 09년 각각 개별 시트로 출력요망)
ㅇ 대상사업 : 지역사업(시스템별 사업카테고리 기준)
==============================================================================================================

- 중간보고서 처리 --> 처리 완료
UPDATE  rreport rr
SET rr.rpt_step = 'X'  
WHERE    rr.report_cd = /*[#2=1001]*/ '1001'
and rr.sbjct_id= /*[#5=1001]*/ '70004470'
==============================================================================================================

- 파일 업로드 에러 --> 처리 완료
금번 지역연계기술개발사업의 연차보고서를 작성하여 rnd.risnet.or,kr에 등록하던 중에 
중간보고서 첨부 부분에서 화일 업로드가 계속 에러가 나더니 보고서 화일이 첨부되지 않은 상태에서 
접수 완료가 되었습니다.  
1. 과제번호 : 70004487
2. 사업명 : 지역산업기술개발사업
3. 과제명 : 강원도 특산 약재의 생물전환을 통한 알레르기 저감화 및 혈당조절 소재 및 제품개발
4. 주관기관 : (주)비피도
5. 연구책임자 : 권빈
==============================================================================================================

- 차기 지역R&D 리스트 자료 출력 --> 처리 완료
01. 차기 지역R&D 리스트(20090831).xls --> 민재웅 연구원
- 중복성검사서식 리스트 리스트 자료 출력 --> 처리 완료
02. 중복성검사서식 리스트(20090831).xls --> 백낙주 연구원
==============================================================================================================

- STOCKS
월(3,030), 화(3,120), 수(3,090), 목(3,045), 금()
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■