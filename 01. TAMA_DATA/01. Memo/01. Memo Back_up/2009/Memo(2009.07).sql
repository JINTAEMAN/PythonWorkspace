

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2009.07) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2009.07.01(수) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 19:00 

- KIAT SM
1. 지역 R&D 관제관리시스템 분석
==============================================================================================================

- 기술료납부계획 및 실적 등록에서 계획 저장시 에러가 남
사후관리 --> 기술료관리  --> 기술료 납부계획 및 실적
기술료납부계획 및 실적 등록(http://rnd.risnet.or.kr/pms/sahu/royaltydetails.do)
 1) 성기용(TJDRLDYD/mssky1)  --> 과제번호: 70000235
에러내용: 무결성 제약 조건(ITEP_SADBA.SAPMNT_PLAN_PK)에 위배 
원인: 기술료환수금d실적 삭제(SEQ가 0인 값이 2개 존재하면 하나 삭제) 
 2) 062-602-7363 박홍순(HSPAK1749/pak1749)  
--> 과제번호: 70000918, 70000906, 70000894, 70000874, 70000869, 70000836, 10018071, 10015639  
 3) 기술료 입력 안됨
배주환(JHB6025/min3311) 052-219-8575
과제번호: 70000366
--> 과제번호: 70000467, 70000443, 70000399, 70000366, 70000278, 10025052, 10025049, 10025041, 10025040, 10025029
---------------------------------------------------------------------------------------------------------

- 평가관리 -> 최종평가 --> 현장실태조사: 결과정리Tab 3건 ==> 등록 누르면 에러가 뜸
양창문(SALIMWINDOW/dusghk48)

- 관리자 권한 부여
선해원(SUNHW/sun3721) 
---------------------------------------------------------------------------------------------------------

- 관리자 화면(http://rnd.risnet.or.kr/pms/index.jsp) 에서
--> 공고 및 과제 Tab: 클릭 --> 과제조회 --> 관리대장 화면에서
과제번호: 70002369를 입력 후 조회 하시면 아래 내용이 보임
백낙주(NJBAEK/a09210) 
==============================================================================================================

- 이미지 서버 위치 
웹 서버(Webto B) IP: 110.14.182.194) ==> C:\TmaxSoft\WebtoB4.1.2\docs\pms-web\images
http://rnd.risnet.or.kr/pms-web/images/homepg/sub_topvisual_logo.gif 
==============================================================================================================

- 디버깅 줄 수 늘이기(eclipse에서)
창(W) --> 환경설정(P) --> 실행/디버그 --> 콘솔 --> 콘솔 버퍼 크기(문자)(B): 999000
==============================================================================================================

 - TABLESPACE 생성
 -- DB 파일 정보 조회    @@@@@@@@@@@@@  
SELECT TABLESPACE_NAME, FILE_NAME 
FROM DBA_DATA_FILES 
WHERE TABLESPACE_NAME LIKE 'ITEP%'
--;
 -- DB의 모든 사용자 테이블스페이스 쿼터  조회    @@@@@@@@@@@@@  
SELECT * 
FROM DBA_TS_QUOTAS
WHERE TABLESPACE_NAME <> 'EXAMPLE'    --테이블스페이스명
--; 
-------------------------------------------------------------------------------------------------------------

-- TABLESPACE 생성 예제[ITEP_RDBA]   =========>  SQL PLUS에서 작업 (system/manager01, kiattest)
SQL> CREATE TABLESPACE REGION_DATA_TS
DATAFILE 'E:\oracle\ora92\OHome\REGION_DATA_TS.dbs' SIZE 6M
DEFAULT STORAGE( INITIAL 10160K 
MINEXTENTS 1
MAXEXTENTS UNLIMITED  
PCTINCREASE 0);

 -- TABLESPACE 생성 예제[ITEP_DBA] 
SQL> CREATE TABLESPACE ITEP_DATA_TS
DATAFILE 'E:\oracle\ora92\OHome\ITEP_DATA_TS.dbs' SIZE 6M
DEFAULT STORAGE( INITIAL 304K 
MINEXTENTS 1
MAXEXTENTS UNLIMITED  
PCTINCREASE 0);

 -- TABLESPACE 생성 예제[ITEP_BBA]
SQL> CREATE TABLESPACE ITEP_BSN_DATA_TS
DATAFILE 'E:\oracle\ora92\OHome\ITEP_BSN_DATA_TS.dbs' SIZE 6M
DEFAULT STORAGE( INITIAL 1760K 
MINEXTENTS 1
MAXEXTENTS UNLIMITED
PCTINCREASE 0);

 -- TABLESPACE 생성 예제[ITEP_SADBA] 
SQL> CREATE TABLESPACE SAITEP_DATA_TS
DATAFILE 'E:\oracle\ora92\OHome\SAITEP_DATA_TS.dbs' SIZE 6M
DEFAULT STORAGE( INITIAL 64K 
MINEXTENTS 1
MAXEXTENTS UNLIMITED  
PCTINCREASE 0);

 -- TABLESPACE 생성 예제[ITEP_GBA]   -- ===> 5
SQL> CREATE TABLESPACE ITEP_GOV_DATA_TS
DATAFILE 'E:\oracle\ora92\OHome\ITEP_GOV_DATA_TS.dbs' SIZE 6M
DEFAULT STORAGE( INITIAL 242M 
MINEXTENTS 1
MAXEXTENTS UNLIMITED  
PCTINCREASE 0); 
  
 -- TABLESPACE 생성 예제[ITEP_INFRA] 
SQL> CREATE TABLESPACE INFRANET_DATA_TS
DATAFILE 'E:\oracle\ora92\OHome\INFRANET_DATA_TS.dbs' SIZE 6M
DEFAULT STORAGE( INITIAL 64K 
MINEXTENTS 1
MAXEXTENTS UNLIMITED  
PCTINCREASE 0);

 -- TABLESPACE 생성 예제[ITEP_URIC] 
SQL> CREATE TABLESPACE ITEP_DATA_URIC
DATAFILE 'E:\oracle\ora92\OHome\ITEP_DATA_URIC.dbs' SIZE 6M
DEFAULT STORAGE( INITIAL 64K 
MINEXTENTS 1
MAXEXTENTS UNLIMITED  
PCTINCREASE 0);

 -- TABLESPACE 생성 예제[]
SQL> CREATE TABLESPACE INFRANET_INDEX_TS
DATAFILE 'E:\oracle\ora92\OHome\INFRANET_INDEX_TS.dbs' SIZE 6M
DEFAULT STORAGE( INITIAL 64K 
MINEXTENTS 1
MAXEXTENTS UNLIMITED  
PCTINCREASE 0); 

  -- TABLESPACE 생성 예제[]
SQL> CREATE TABLESPACE ITEP_INDEX_TS
DATAFILE 'E:\oracle\ora92\OHome\ITEP_INDEX_TS.dbs' SIZE 6M
DEFAULT STORAGE( INITIAL 64K 
MINEXTENTS 1
MAXEXTENTS UNLIMITED  
PCTINCREASE 0); 

   -- TABLESPACE 생성 예제[]
SQL> CREATE TABLESPACE REGION_INDEX_TS
DATAFILE 'E:\oracle\ora92\OHome\REGION_INDEX_TS.dbs' SIZE 6M
DEFAULT STORAGE( INITIAL 64K 
MINEXTENTS 1
MAXEXTENTS UNLIMITED  
PCTINCREASE 0); 

   -- TABLESPACE 생성 예제[]
SQL> CREATE TABLESPACE ITEP_BSN_INDEX_TS
DATAFILE 'E:\oracle\ora92\OHome\ITEP_BSN_INDEX_TS.dbs' SIZE 6M
DEFAULT STORAGE( INITIAL 64K 
MINEXTENTS 1
MAXEXTENTS UNLIMITED  
PCTINCREASE 0); 
--------------------------------------------------------------------------------------------

-- DB의 모든 사용자 정보 조회    @@@@@@@@@@@@@  
SELECT USERNAME, DEFAULT_TABLESPACE FROM DBA_USERS
WHERE DEFAULT_TABLESPACE <> 'SYSTEM'
--; 

-- ITEP_BBA 변경
-- ALTER USER ITEP_BBA IDENTIFIED BY kiat1234  DEFAULT TABLESPACE ITEP_BSN_DATA_TS;
-- ITEP_BBA 삭제
-- DROP USER ITEP_SADBBA CASCADE; 
-------------------------------------------------------------------

-- 사용자 생성
-- ITEP_BBA 사용자
CREATE USER ITEP_BBA IDENTIFIED BY kiat1234  DEFAULT TABLESPACE ITEP_BSN_DATA_TS;
GRANT CONNECT, DBA TO ITEP_BBA;   
-- ITEP_BSN 사용자
CREATE USER ITEP_BSN IDENTIFIED BY kiat1234  DEFAULT TABLESPACE ITEP_BSN_DATA_TS;
GRANT CONNECT, DBA TO ITEP_BSN; 
-- ITEP_DBA 사용자
CREATE USER ITEP_DBA IDENTIFIED BY kiat1234  DEFAULT TABLESPACE ITEP_DATA_TS;
GRANT CONNECT, DBA TO ITEP_DBA;
-- ITEP_DEV 사용자
CREATE USER ITEP_DEV IDENTIFIED BY kiat1234 DEFAULT TABLESPACE ITEP_DATA_TS; 
GRANT CONNECT, DBA TO ITEP_DEV;
-- ITEP_GBA 사용자
CREATE USER ITEP_GBA IDENTIFIED BY kiat1234 DEFAULT TABLESPACE ITEP_GOV_DATA_TS; 
GRANT CONNECT, DBA TO ITEP_GBA;
-- ITEP_INFRA 사용자
CREATE USER ITEP_INFRA IDENTIFIED BY kiat1234 DEFAULT TABLESPACE INFRANET_DATA_TS; 
GRANT CONNECT, DBA TO ITEP_INFRA;
-- ITEP_RDBA 사용자
CREATE USER ITEP_RDBA IDENTIFIED BY kiat1234 DEFAULT TABLESPACE REGION_DATA_TS; 
GRANT CONNECT, DBA TO ITEP_RDBA;
-- ITEP_RIS 사용자
CREATE USER ITEP_RIS IDENTIFIED BY kiat1234 DEFAULT TABLESPACE ITEP_DATA_TS; 
GRANT CONNECT, DBA TO ITEP_RIS;
-- ITEP_SADBA 사용자
CREATE USER ITEP_SADBA IDENTIFIED BY kiat1234 DEFAULT TABLESPACE SAITEP_DATA_TS;
GRANT CONNECT, DBA TO ITEP_SADBA; 
-- ITEP_URIC 사용자
CREATE USER ITEP_URIC IDENTIFIED BY kiat1234 DEFAULT TABLESPACE ITEP_DATA_URIC;
GRANT CONNECT, DBA TO ITEP_URIC;  
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2009.07.02(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 19:00 

- KIAT SM
1. 지역 R&D 관제관리시스템 분석 
- 최종결과보고서 보기
- 관리자 화면(http://rnd.risnet.or.kr/pms/index.jsp) 에서
--> 통계/보고서 --> 평가관리통계 --> 최종평가현황 화면에서
과제번호: 70002369 를 입력 후 조회 하시면 아래 내용이 보임(아님: 과제 접수 화면임)
최종보고서 보는 화면은 없음 --> 해당 파일만 조회에서 메일 발송(최종보고서_동양정보시스템.hwp)
백낙주(NJBAEK/a09210) --> 최종보고서 파일 안 준다고 정보화팀에 보고함(홍책임 KCC에도 고자질, 열 받음)
공고접수: 김성재 연구원(SJKIM/itep)
----------------------------------------------------------------------------------------------------

- resource 네임 설정 에러
1. /itep-pms/common/include/BODY_TITLE.jsp 파일에서
<%@ page import="itep.pms.common.application.*"%> 
 2. /WEB-INF/src/resources/ancm/naming_ko_KR.properties 파일에서(이클립에서)
title.no=공고번호
title.type=공고구분
title.title=공고명
title.reg_date=공고일
title.media=공고매체  --> 에러남
==============================================================================================================

- 사업공고 URL 변경 요청(/s_menu_flash.swf 파일 변경요청)
http://rnd.risnet.or.kr/pms/homepage/policy_content/mb_2100.jsp ==> 
http://infra.itech.go.kr/mb_notice/mb_2100.asp?m=m1
<param name='movie' value='/pms-web/images/homepg/s_menu_flash.swf'> 
==============================================================================================================

[오라클 DB dump]

 - 오라클 DB dump 문제
1. DB의 모든 사용자 테이블스페이스
2. DB의 사용자가 너무 많아서 DB dump import시 에러가 남
--------------------------------------------------------------------------------------- 
#KIAT(지역 R&D TEST DB) --> ID/PWD: ITEP_RDBA/kiat1234
#KIAT(지역 R&D 실 DB)  (외부IP: 110.14.182.198 --> 내부IP: 210.124.3.33)

SQL PLUS에서 작업(system/manager01, kiattest)
system/manager01
-------------------------------------------------------------------

# TNSNAMES.ORA 파일
#KIAT(지역 R&D TEST DB)
kiattest =
  (DESCRIPTION =
    (ADDRESS_LIST =
      (ADDRESS = (PROTOCOL = TCP)(HOST = 210.124.3.37)(PORT = 1521))
    )
    (CONNECT_DATA =
      (SERVER = DEDICATED)
      (SERVICE_NAME = kiattest)
    )
  )
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.07.03(금) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 19:00

- KIAT SM
1. 지역 R&D 관제관리시스템 분석

- 사업공고(공고구분: 지정공모)
2009년도 지역산업기술개발사업」신규지원 안내 공고
전산입력 기간(접수마감) : 2009.8.10(월) ~ 8.19(수), 18:00까지
대분류사업 선택 : 1. 지역산업, 2. 지역연계, 3. 지역선도, 4. 전략기획

1. 지역전략기획기술분야 신규지원
과제명 : 정보통합형 다표지 진단 바이오칩 기반 성인병  조기예측 및 예방
전략산업 (세부기술분야)--> 
Ⅰ. 총괄 과제(단계있는총괄과제): 정보통합형 다표지 진단 바이오칩 기반 성인병 조기예측 및 예방
Ⅱ. 세부 과제: 당뇨/심혈관 질환 진단을 위한 다표지 형광 POCT 시스템 개발 및 유효성 평가
---------------------------------------------------------------------------------------------------- 
김성재 연구원(SJKIM/itep)  ==> 사용자로그인 화면(http://rnd.risnet.or.kr/pms/index.jsp)
공고 및 과제 Tab(2번째 탭) --> 공고관리 --> 공고조회 및 등록(h/ancm.do?actmode=list)

산업기술지원 사업공고 게시판
http://www.itech.go.kr/mb_notice/business_content/content_9055.asp
사업공고 관리(김동균 대리)
http://infra.itech.go.kr/mb_notice/mb_2100.asp?m=m1
==============================================================================================================

-- 지역 R&D 관제관리시스템 업무 절차
1. 사업공고 --> 2. 접수 --> 3. 선정 평가 --> 4. 협약 --> 5. 사업비지급(착수금) --> 6. 중간보고서 --> 7. 평가 
--> 8. 최종보고서--> 9. 평가
==============================================================================================================

-- 보고서 저장 안됨
김현식(MTR/mtr2047), 과제번호: 70002369
마지막 단계에서 저장을 누르고 출력하기 누름
==============================================================================================================

- 엑셀 파일로 생성(토드 V9.5.03 에서): 한글 깨짐 해결
Save Grid Contents 클릭(새창 띄우기) --> Output: test.xls, Delimiter: Tab
==============================================================================================================

- STOCKS
월(3,155), 화(3,195), 수(3,185), 목(3,195), 금(3,100)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.07.06(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 19:00   --> 이과장 인도 재출국(20:00)

- KIAT SM
1. 지역 R&D 관제관리시스템 분석
- 사업공고(공고구분: 지정공모) 
김성재 연구원(SJKIM/itep)  ==> 사용자로그인 화면(http://rnd.risnet.or.kr/pms/index.jsp)
공고 및 과제 Tab(2번째 탭) --> 공고관리 --> 공고조회 및 등록(h/ancm.do?actmode=list)

산업기술지원 사업공고 게시판
http://www.itech.go.kr/mb_notice/business_content/content_9055.asp
사업공고 관리(김동균 대리)
http://infra.itech.go.kr/mb_notice/mb_2100.asp?m=m1
http://infra.itech.go.kr/admin/index.asp  --> SJKIM/itep
==============================================================================================================

 - 기술료납부계획 및 실적 등록에서 계획 저장시 에러가 남
사후관리 --> 기술료관리  --> 기술료 납부계획 및 실적
기술료납부계획 및 실적 등록(http://rnd.risnet.or.kr/pms/sahu/royaltydetails.do) 
2. 다름이 아니라 유선상으로 말씀드린바와 같이
risnet에서 사후관리   기술료 에서 기술료를 납입한 업체들을 납입했다고 정리해야하는데 
첨부된 그림에서 저장이 되질 않습니다. 그래서 
기술료를 내고도 계속 미납으로risnet에 표시됩니다.  
과제번호 : 70000202
과제명 : 무결함 스플라인 정밀단조 공법을 이용한 차세대 CAM 타입 Diff Case의 고품질 양산화 개발
--> 과제번호: 70000188, 10027701, 10027620, 10027583, 10027457, 10027314, 10027285, 10027251, 10027244, 10027234
--> 과제번호: 10027216, 10027201, 10027195, 10027055, 10024758, 10018271, 10018218, 10027251, 10017671, 10017641, 10027141

3. 성화산업의 폐업으로 참여기업인 아시아테크㈜가 현재까지 사용한 개발비를 
정산하고자 합니다. 그래서 회계법인을 정해주셨으면 합니다. 
주관기관 : 성화산업, 과제번호 : 70004089
과제명 : 피롤부식안정화장치의 개발
회계기관지정 --> 위탁회계법인
공고 및 과제 --> 과제조회 --> 과제이력 화면에서 사업비정산 Tab에서 확인(업무담당자가 처리해야 함) 
경남전략산업기획단 성기용 055-259-3372   * 
==============================================================================================================

- 지역산업진흥팀 우승철 연구원 H)010-5397-5382, T) 6009-3727
==============================================================================================================

- 사업공고 URL 변경 요청(/10.14.182.194/pms-web/images/homepg/s_menu_flash.swf 파일 변경) 
http://rnd.risnet.or.kr/pms/homepage/policy_content/mb_2100.jsp ==> 
http://infra.itech.go.kr/mb_notice/mb_2100.asp?m=m1
<param name='movie' value='/pms-web/images/homepg/s_menu_flash.swf'> 
C:\Jeus42\webserver\docs\pms-web\common\js\s_menu_flash.swf
s_menu_flash.swf --> s_menu_flash-ver2.swf
http://rnd.risnet.or.kr/pms/homepage/main_T.jsp  --> /common/js/flash.js
==============================================================================================================

- 관련규정 및 서식(사업비) ==> 배주환 *@*.* 
현상: 관련규정 및 서식(http://rnd.risnet.or.kr/pms/homepage/store_content/td_form.jsp)
관련규정 및 서식 해당 폴더를 클릭 하면 CMS로 연결이 끊여서 파일 다운이 안됩니다. 
원인: /itep-pms/homepage/store_content/td_form_list.jsp 파일에서 
@ page import="cwise.cms.content.*"  에러
원인2: cms 서버랑 연계가 끊어짐

첨부파일은 WEBTOB서버에 
 \TmaxSoft\WebtoB4.1.2\docs\pms-web\homepage\store_content 아래에 있습니다. 
 파일명을 보시거나 열어보시면 대충 어떤 파일인지 아실꺼에요. 
==============================================================================================================

- 게시판 내용 끌어오기(iframe: ASP파일) --> /homepage/biz_content/GogoBoard.jsp 파일에서
<iframe src="http://infra.itech.go.kr/mb_notice/mb_2100_other.asp?m=m1" name="i_kait2" width="100%" 
height="600" frameborder=no scrolling=yes ></iframe>
- 전체 사업공고
http://rnd.risnet.or.kr/pms/homepage/biz_content/GogoBoard.jsp 
- 주요사업공고(메인)
http://rnd.risnet.or.kr/pms/homepage/main_T.jsp  
==============================================================================================================

- 과제 안 보임
선해원(SUNHW/sun3721) 연구원 3735  ===> 권한 확인
김상훈(SHKIM/kshkim) 연구원 3733  ===> 권한 부여
과제번호: 7004896 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.07.07(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 14:30   --> KIAT 서초센타로 출근(서초IC 근처), KIAT 전산센터 개소식

- KIAT SM
1. 지역 R&D 관제관리시스템 분석
- 사업공고(공고구분: 지정공모) 
김성재 연구원(SJKIM/itep)  ==> 사용자로그인 화면(http://rnd.risnet.or.kr/pms/index.jsp)
공고 및 과제 Tab(2번째 탭) --> 공고관리 --> 공고조회 및 등록(h/ancm.do?actmode=list)

산업기술지원 사업공고 게시판
http://www.itech.go.kr/mb_notice/business_content/content_9055.asp
사업공고 관리(김동균 대리)
http://infra.itech.go.kr/mb_notice/mb_2100.asp?m=m1
http://infra.itech.go.kr/admin/index.asp  --> SJKIM/itep
==============================================================================================================

- 사업공고 테스트(KIAT 서초센타) 협의 사항 
1. 온라인접수 --> 과제접수 --> 과제신청화면에서 [과제 접수 메뉴얼 다운로드] 이미지화
http://rnd.risnet.or.kr/pms/subject/subjectApp-list.do?actmode=list
(http://rnd.risnet.or.kr/pms-web/images/btn_reg.gif --> btn_reg.gif)
2. 전체과제 다운 기능 추가요구(추후 협의)
3. 키워드(상세 설명 넣기)
4. 사업비(과제구성 등): 총사업비 입력(의미) 
5. 사업공고 링크할 화면
http://kiat.or.kr/02_publicity/notice_list.asp?sdata=0001030201 ===> 주요사업공고
110.14.182.82  --> administrator/dufmadusrk(여름연가)
==============================================================================================================

- 한국산업기술진흥원 SM 네트웍(IP 주소)
IP: 192.168.12.54 G.W: 192.168.12.1
S.M: 255.255.255.0 DNS: 168.126.63.1
- KIAT 서초센타(서초IC 근처)
IP: 10.0.1.119 G.W: 10.0.1.1
S.M: 255.255.255.0 DNS: 168.126.63.1, 164.124.101.2
네트워크: kmac0301
네트워크 키: 76581283821738779255471085
==============================================================================================================

- KIAT 서초센타(낙성대역 --> 서초IC 근처(한전 아트 센터 뒷편))
인헌중고.서울미술고 --> 서초동무지개아파트(461번, 641번)
- KIAT 서초센타(영동전화국 --> 서초IC 근처)
영동전화국(141번)  --> 도곡동한신아파트  --> 매봉삼성아파트.SK리더스뷰(환승)(406번)  --> 서초구청
==============================================================================================================

- 승용차요일제 신청 및 RFID 태그 발급(관악구 행운동 주민센터 방문)
1. 정의
승용차요일제 신청등록 후 스티커(전자태그)를 차량 앞,뒤 유리창에 부착한 차량에 한하여 다양한 인센티브 제공 
승용차요일제 운휴일을 지키지 않은 것으로 확인(자동차세 : 3회이상, 보험료 : 1회이상)되거나 배부된 전자태그를 
미부착 또는 훼손시에는 자동차세 및 혼잡통행료 감면과 보험료 할인에서 배제
2. 혜택
- 자동차세 5% 감면
- 자동차보험료 연 2.7%할인(메리츠화재)
- 공영주차장 요금 20%할인
- 거주자우선주차제 요금 20%할인
3. 기타
- 운휴요일: 화요일
- 자동차등록번호: 21저 6365
- 차대번호: KMHDN41APYU030174 D16 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.07.08(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 19:00   --> DDOS (Distributed Danial Of Service) 공격(국정원 등 주요사이트 접속 불능 사태)

- KIAT SM
1. 지역 R&D 관제관리시스템 분석
- 평가관리 -> 최종평가 --> 현장실태조사: 결과정리Tab 3건 ==> 등록 누르면 에러가 뜸
양창문(SALIMWINDOW/dusghk48)  --> 051-974-9122
과제번호: 10017480, 10017464, 10017481
과제명: 다중 항원 탑재 재조합 어병백신 시스템 개발
과제진행이력 정보 테이블에서 진행업무분류(4511:최종면담조사계획수립, 4521:최종실태조사계획수립) 미존재
===> 간사지정Tab으로 돌리기(현장실태조사(최종평가))

-- 과제별일정계획 조회   @@@@@@@@@@@@@
SELECT PLAN_ID 업무계획,  BUSI_ID 조사대상업체, DUTY_CLSF 업무일정계획과제선정구분 
FROM RDUTY_SBJCT DS
WHERE DS.SBJCT_ID = '10017480'    --과제번호
    AND DS.DUTY_CLSF IN ('4521','4511')      -- 면담/실태조사 계획수립
    AND DS.AVAIL_EDATE = '99991231'   --70009291
--; 
-- 과제별일정계획 정보 삭제    @@@@@@@@@@@@@ 
-- DELETE FROM RDUTY_SBJCT DS
WHERE DS.SBJCT_ID = '10017480'    --과제번호
    AND DS.DUTY_CLSF IN ('4521','4511')      -- 면담/실태조사 계획수립
    AND DS.AVAIL_EDATE = '99991231'   --70009291
--; 
==============================================================================================================

- 평가위원 추가
성명 : 도정 (680202- xxxxxxx) 
소속 : 국립수산과학원 남해수산연구소 
회원으로 등록되어 있으니 기획단 선정위원에 추가
-- 평가위원발령이력 등록   @@@@@@@@@@@@@
-- INSERT INTO JDGE_HSTR 
VALUES ('12915624','0','','99991231', to_char(sysdate,'yyyymmdd'), '10071297', SYSDATE,'R000',100)
--;  
-- 평가위원발령이력 수정   @@@@@@@@@@@@@ 
-- UPDATE JDGE_HSTR 
SET AVAIL_EDATE=to_char(sysdate-1,'yyyymmdd'), 
    REG_TIME=SYSDATE 
WHERE MBR_ID='12915624'  --피발령자ID
    AND ANNC_CLSF='0' 
    AND DEPT_ID = 'R000' 
    AND AVAIL_EDATE = '99991231'
--;  
-- 평가위원발령이력 등록   @@@@@@@@@@@@@
-- INSERT INTO JDGE_HSTR 
VALUES ('12915624','5','','99991231', to_char(sysdate,'yyyymmdd'), '10071297', SYSDATE,'R000',100)
--;  
-- 평가위원발령이력 조회   @@@@@@@@@@@@@
SELECT * 
FROM RJDGE_HSTR A
WHERE MBR_ID = '12915624'  --피발령자ID 
--; 
==============================================================================================================

- 결과정리Tab : 지역평가위원회(최종평가)
과제번호 : 70002317
주관기관 : 나노케미칼
담당간사 : 임종화(JONG28/ddc9090) --> 042-930-2862  
현상: 최종평가결과 종합의견서에 기술료 반영이 안됨  
원인: 과제진행이력 정보 테이블에서 P.DCSN_TECH_RATE(확정기술료율)이 0임
- 일괄 납부계획서
http://localhost:8080/pms/estm/result_print.do?actmode=batch&sbjct_id=70002317&seq=32
-- 과제진행이력 정보 조회   @@@@@@@@@@@@@
SELECT SBJCT_ID 과제번호, P.DCSN_TECH_RATE 확정기술료율 
FROM RSBJCT_PRGS P
WHERE SBJCT_ID = '70002317'  --과제번호
    AND P.DUTY_CD = '6623' -- 협약결과정리
ORDER BY SEQ DESC 
--;  
-- 과제진행이력 정보 수정   @@@@@@@@@@@@@  ===>  DCSN_TECH_RATE NULL --> 20%
-- UPDATE RSBJCT_PRGS
SET DCSN_TECH_RATE = '20' --확정기술료율(AND DCSN_TECH_RATE = NULL)
WHERE SBJCT_ID = '70002317' --과제번호
    AND P.DUTY_CD  = '6623 -- 협약결과정리
--; 
2. 주관기관에서 최종결과 전산입력을 하는데 최종보고서에 주관기관이 뜨지 않음 
------------------------------------------------------------------------------------- 
- 조기완료 사업에 대한 변경 요청
과제번호 : 70002317
조기완료(2-->1)....중간보고서 --> 최종보고서로 넘어가야함
http://localhost:8080/pms/estm/result_sbjct.do?actmode=fin_region_main&plan_id=70009292&sbjct_id=70002317&seq=32 
- 메인 맨 하단 전화번호 수정 요청(이미지로 되어 있음): 대전전략산업기획단 임종화 연구원
대전: 042-471-0262  --> 042-930-2862
/pms-web/images/homepg/copyright_center.gif
==============================================================================================================

- 총괄책임자 변경으로 에러가 남(과제번호: 70002234) --> 성기용 연구원055-259-3372
원인: 회원정보를 평가원에서 못 받아온 것으로 추정(변경/이의신청 --> 변경관리 --> 변경신청접수)
--회원정보가 이관할 때 못 가지고 온 것 같습니다. 이기영 연구원님한테 요청을 해야할 듯 합니다.
SELECT  *  FROM MEMBER M
WHERE  M.MBR_ID IN ('12891815')      --구성원ID  
==============================================================================================================

-- 과제진행이력 정보가 2개 이상인 것 조회 @@@@@@@@@@@@@ 
SELECT P.*
FROM RSBJCT_PRGS  P
WHERE ROWID > ( SELECT MIN(ROWID) FROM RSBJCT_PRGS  B
                WHERE B.SBJCT_ID = P.SBJCT_ID
                    --AND B.DUTY_CD  = P.DUTY_ID  
  ) 
  AND P.DUTY_CD IN ('9323')   --진행업무분류(9323:최종보고서제출(접수))
  AND P.DUTY_CD NOT IN ('4511', '4521')
ORDER BY P.SBJCT_ID DESC
--;
==============================================================================================================

- 과제 안 보임
선해원(SUNHW/sun3721) 내선: 3735  ===> 권한 확인
김상훈(SHKIM/kshkim) 연구원 내선: 3733  ===> 권한 확인
과제번호: 7004896 
==============================================================================================================

- 소스 코멘트 처리(오라클 Toad 9.5.0.31 에서)
글자 선택 --> 마우스 오른쯕 클릭 --> Comment Code --> Comment Block(처리)
==============================================================================================================

- 기획단, 구성원, 평가위원
일반사용자: 과젱책임자, 과제신청자, 평가위원, 기타사용자등 을 지칭
일반관리자: 산업자원부, 지역전략산업기획단, 산업기술평가원, 지역조정위원회에 근무하는 직원 치징
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.07.09(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 19:00

- KIAT SM
1. 지역 R&D 관제관리시스템 분석
  
 - 관련규정 및 서식(사업비) ==> 배주환(*@*.*)
서식 자료실(FORM_ATTACH_DOC) 테이블 생성
FIRST_IN: 사업유형1, SECOND_IN: 사업유형2, GUBUN_IN: 사업유형3 
서식 자료실 --->  439 167  197
http://localhost:8080/pms/qanda/qanda.do?actmode=list2
Q&A 
http://localhost:8080/pms/qanda/qanda.do?actmode=list 
첨부파일은 WEBTOB서버에 \TmaxSoft\WebtoB4.1.2\docs\pms-web\homepage\store_content 
http://kiat.or.kr/02_publicity/notice_list_01.asp?sdata=0001030204
==============================================================================================================

- 주요사업공고(메인)
http://rnd.risnet.or.kr/pms/homepage/main_T.jsp  
주요사업공고: iframe name=i_kait_main, 주요사업공고:  iframe name=i_kait_main2
- 전체 사업공고
http://rnd.risnet.or.kr/pms/homepage/biz_content/GogoBoard.jsp
- 공지사항
http://rnd.risnet.or.kr/pms/homepage/biz_content/GojiBoard.jsp
==============================================================================================================

- 플래쉬 메뉴 수정 요청
1. 주요사업공고
 1) 전체사업공고 --> http://rnd.risnet.or.kr/pms/homepage/biz_content/GogoBoard.jsp
2. 고객지원
 1) 공지사항 --> http://rnd.risnet.or.kr/pms/homepage/biz_content/GojiBoard.jsp
 2) FAQ(새창 뜨면 안됨: Q&A와 같음) --> http://rnd.risnet.or.kr/pms/faq/faq.do?actmode=main
  FAQ 권한 없애기(/itep-pms/WEB-INF/config/faq/biz-faq-config.xml) ==> accessMenuId="${LOGIN}" 제거
  FAQ 첫 화면 로그인 없이 조회 가능하게 수정
 3) Q&A(정상적으로 처리됨) --> http://rnd.risnet.or.kr/pms/qanda/qanda.do?actmode=list  
==============================================================================================================

- 위탁정산법인 지정
김상훈(SHKIM/kshkim) 연구원 3733  ===> 권한 부여
(평가관리 --> 사업비정산 --> 새창띄우기: 위탁정산법인 지정)
var nxt_calc = getFloatCashValue(frm.elements["nxt_calc"]);   ===> 등록에서 확인하면 에러 안남
==============================================================================================================

- 실서버 적용
1. 사후관리 --> 기술료관리  --> 기술료 납부계획 및 실적(권한 부여) 
/itep-pms/WEB-INF/sql/sahu/sql-sahu-royalty.xml
SELECT (CASE WHEN NDEPT_ID LIKE 'R%' THEN NDEPT_ID
WHEN NDEPT_ID ='M998' THEN 'R%'      --부서ID 추가(M998:한국산업기술진흥원)
WHEN NDEPT_ID = (SELECT DEPT_ID FROM DEPT_V
WHERE DEPT_ID = NDEPT_ID
CONNECT BY PRIOR DEPT_ID = PRE_DEPT_ID
START WITH DEPT_ID = 'M000') THEN 'R%' 
 END)
FROM MEMBER
WHERE MBR_ID = ?    --회원ID
FAQ 권한 없애기(/itep-pms/WEB-INF/config/faq/biz-faq-config.xml) ==> accessMenuId="${LOGIN}" 제거
==============================================================================================================

- 주간회의(처음 시행)
1. 매주 금욜 14:00 주간회의 실시
2. 업무 담당자 파악
 1) PECOM 시스템(김태균 과장, 고경민 대리)
 2) Intranet 시스템(김대익 팀장)
 3) PMS 시스템(인력양성: 김지훈, 이미옥)
 4) 지역산업 시스템(진태만, 최윤종 대리, 김동균 대리)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.07.10(금) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 19:00   --> 김동균 대리 교육

- KIAT SM
1. 지역 R&D 관제관리시스템 분석
 - 관련규정 및 서식(사업비) ==> 배주환(*@*.*)
서식 자료실(FORM_ATTACH_DOC) 테이블 생성  --> form_attach
FIRST_IN: 사업유형1, SECOND_IN: 사업유형2, THIRD_IN: 사업유형3 
서식 자료실 --->  439 167  197
http://localhost:8080/pms/qanda/qanda.do?actmode=list2
Q&A 
http://localhost:8080/pms/qanda/qanda.do?actmode=list 
첨부파일은 WEBTOB서버에 \TmaxSoft\WebtoB4.1.2\docs\pms-web\homepage\store_content 
http://kiat.or.kr/02_publicity/notice_list_01.asp?sdata=0001030204

System.out.println("[/qanda/QandaDAO.java]:[getForm_attachList()]:[TEST]"); 

- 상대 경로 변경(/qanda/struts-qanda-config.xml 파일에서
<forward name="list2" path="/board/form_attach_doc/list.jsp" contextRelative="true" />
contextRelative 속성이 true 이면 path 경로로 감

- bean name 설정(해당 /config\qanda 에서 biz-qanda-config.xml 파일에서 설정)
<form-beans>
<form-bean name="boardForm" type="org.apache.struts.action.DynaActionForm">
<form-property name="firstIn" type="java.lang.String" />
</form-bean>
</form-beans>
==============================================================================================================

- 신한카드사에 넘길 데이타 요청(한마정보시스템 박준호)
1. 09년 신규 과제와 계속 과제(다년도 과제) 분리
- 특정 필드 값으로 넘겨 주시면 됩니다. (ex. '신규', 계속')
2. 계속 과제(다년도 과제) 중 단계가 바뀌는 과제는 신규로 처리 
==============================================================================================================

- 울트라 에디트 설치 에러(uesetup.exe)  
ie7, ie8과 충돌을 일으킴 ==> (ie7, ie8 삭제 -> C:\WINDOWS\ie7\spuninst\spuninst.exe 제거)
02. UltraEdit-v10.00c 다시 설치(uesetup.exe 실행 됨)
색 설정: 보기(V) --> 색상 설정(C): 배경
==============================================================================================================

- STOCKS
월(3,180), 화(3,320), 수(3,340), 목(3,210), 금(3,200)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.07.13(월) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 19:00 

- KIAT SM
1. 지역 R&D 관제관리시스템 분석
 - 관련규정 및 서식(사업비)
서식 자료실(FORM_ATTACH_DOC) 테이블 생성  --> form_attach
FIRST_IN: 사업유형1, SECOND_IN: 사업유형2, THIRD_IN: 사업유형3 
서식 자료실 --->  439 167  197
http://localhost:8080/pms/qanda/qanda.do?actmode=list2
Q&A 
http://localhost:8080/pms/qanda/qanda.do?actmode=list 
첨부파일은 WEBTOB서버에 \TmaxSoft\WebtoB4.1.2\docs\pms-web\homepage\store_content 
http://kiat.or.kr/02_publicity/notice_list_01.asp?sdata=0001030204

- 서식 자료실 등록
INSERT INTO FORM_ATTACH_DOC (
CATEGORY, NO, FIRST_NO, PARENT_NO, DEPTH,
SEQ, TITLE, WRITER, REG_DATE, BUSI_PROC,
FAQ_CLSF, FIRST_IN, SECOND_IN, THIRD_IN, ATTACH_NM,  
ATTACH_OLINK)
VALUES(?, ?, ?, ?, ?, 
?, ?, ?, ?, ?,
?, ?, ?, ?, ?,
?)]
==============================================================================================================

- 콤보 박스 innerHTML으로 처리
function goCate(form, p_index,  p_code) { 
var row_html ='';

if (p_index == 1) {   // firstIn 이면
if (p_code == 439) {   // firstIn 지역산업기술개발사업(439) 선택 했을 경우
row_html = '<select name="secondIn" class="input_all">'; 
row_html += '<option value="">선택</option>';  
  row_html += '<option value="167">공통기술개발사업</option>'; 
  row_html += '<option value="441">중점기술개발사업</option>';
  row_html += '<option value="442">중점기술개발사업</option>';   

} else {   // firstIn 기업지원서비스사업(443) 선택 했을 경우
row_html = '<select name="secondIn" class="input_all">'; 
row_html += '<option value="">선택2</option>';  
  row_html += '<option value="445">기술지원</option>'; 
  row_html += '<option value="446">신기술보육</option>';
  row_html += '<option value="447">해외마케팅</option>';   
} 
} 
document.getElementById("div_selectBox").innerHTML = row_html; 
}  

<table class="list" width="100%" border=0>
  <tr>
  <td width="40%">지역산업진흥사업
<select name="firstIn" class="input_all" onChange="return goCate(this.form, 1, this.value)">
  <option value="">선택</option>
  <option value="439" <%=(firstIn.equals("439")? "selected":"")%>>지역산업기술개발사업</option>
  <option value="443" <%=(firstIn.equals("443")? "selected":"")%>>기업지원서비스사업</option>
</select></td>
<td id="div_selectBox" width="20%">
<select name="secondIn" class="input_all">
<option value="">선택</option>
  <option value="167" <%=(secondIn.equals("167")? "selected":"")%>>공통기술개발사업</option> 
  <option value="441" <%=(secondIn.equals("441")? "selected":"")%>>중점기술개발사업</option> 
  <option value="442" <%=(secondIn.equals("442")? "selected":"")%>>기초기술개발사업</option> 
</select> 
 </td>  
==============================================================================================================

- 의무사항불 이행내역 및 다수과제수행내역을 확인 에러(공고 및 과제 --> 과제조회 --> 관리대장에서 조회 후
주문번호 클릭(새창이 뜸)): 민재웅 연구원 H)010-8882-8035, T)6009-3729
에러내용: itep.pms.estm.common.CommonSB.getSbjctReferInfo(ActionForm f) : ▒▒ DB exception 발생했음 ▒▒ 
QueryException : [ORA-00980: 동의어의 해석이 불가능합니다 ]
원인: ITEP_SADBA(통합사후관리) 사용자에 SMSUBJECT 테이블 미 존재(통합 후 데이타 못 가지고 온 걸로 추정)
SELECT * FROM DBA_SYNONYMS
WHERE SYNONYM_NAME = 'SMSUBJECT'
SELECT * FROM SMSUBJECT 
 1. Synonym 생성
CREATE [PUBLIC] SYNONYM synonym_name FOR object_name; 
- PUBLIC : 모든 사용자가 접근 가능한 시노님을 생성한다.
- PUBLIC  시노님의 생성 및 삭제는 DBA만이 할 수 있다.
- 모든 사용자가 접근 가능한 객체를 만들기 위해서는 PUBLIC Synonym 생성과 더불어 권한이 부여되어야 한다. 
   (GRANT SELECT ON owner.object_name TO PUBLIC)
 2. Synonym 삭제
DROP SYNONYM synonym_name; 
SMsubject 는 중소기업청 기술개발사업이므로 이관대상에 포함되지 않습니다. 
==============================================================================================================

- 과제 3개월 연장  ===> 이상 없음
주문번호:10024382, (주)파카 강병루(*/password), 055-371-3421
주문번호:10024356, (주)테크 황준호(DACCHJH/aa7989) 과장, 055-281-2528
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.07.14(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:30 --> 민방위훈련(8년차, 관악구 원당초교(T:876-4061)(07:00 ~ 07:10)), 과제공고 등록

- KIAT SM
1. 지역 R&D 관제관리시스템
 - 관련규정 및 서식(사업비)
서식 자료실(FORM_ATTACH_DOC) 테이블 생성  --> form_attach
FIRST_IN: 사업유형1, SECOND_IN: 사업유형2, THIRD_IN: 사업유형3 
서식 자료실 --->  439 167  197
http://localhost:8080/pms/qanda/qanda.do?actmode=list2
1. Q&A
http://localhost:8080/pms/qanda/qanda.do?actmode=list
첨부파일은 WEBTOB서버에 \TmaxSoft\WebtoB4.1.2\docs\pms-web\homepage\store_content 
http://kiat.or.kr/02_publicity/notice_list_01.asp?sdata=0001030204  
SELECT *
FROM BOARD_HEADER
WHERE CATEGORY = /*[#1=QANDA]*/ 'qanda' 
- 게시판 4개의 테이블로 구성됨(BOARD_CATEGORY, BOARD_HEADER, BOARD_CONTENTS, BOARD_FILE)
--> 2개의 테이블로 줄임(서식 자료실(FORM_ATTACH_DOC))
2. FAQ 
http://rnd.risnet.or.kr/pms/faq/faq.do?actmode=main
SELECT *
FROM BOARD_HEADER
WHERE FAQ_CLSF = /*[#1=01]*/ '01'  --FAQ유형(01:사업절차, 02:해당사업, 03:사이트이용)
==============================================================================================================

- 공지사항 분석(/110.14.182.82 IP에서)
http://localhost:8080/pms/qanda/qanda.do?actmode=list
ITEP_DBA 라는 데이터에 국제협력기술개발사업
response.write("[/notice_list.asp]:[where]"+ where +"<BR>")
- 게시판 테이블: ACTKOR, NOTICEKORFILE, CODE
SELECT A.* 
FROM ( SELECT B.* , rownum rnum FROM 
( SELECT num, subject, 
(select actName from actkor where actCode=workkind) as workkindName, 
(select cdName from code where cdCode=datakind) as datakindName, viewnum, viewuse, regDate, 
(SELECT count(*) FROM noticekorfile WHERE noticenum=num) as fileCount FROM noticekor 
WHERE not num is null and viewuse='Y' and datakind='0001030201' and agree ='3' ORDER BY regDate desc ) B ) 
A WHERE RNUM >= 1 AND RNUM <= 10 

#########  ITIS 리얼 서버    ###########################
dbConnect="Provider=OraOLEDB.Oracle.1;User ID=kiat;Password=kiat123;Unicode=True;Data Source=ITIS_SERVICE_SBE;"  

ITIS_SERVICE_SBE =   =====> 이 IP로 연결 된 것을 추정됨
(DESCRIPTION =
(ADDRESS_LIST =
(ADDRESS = (PROTOCOL = TCP)(HOST = 222.234.3.89)(PORT = 1521))
)
(CONNECT_DATA =
(SERVICE_NAME = itis)
)
)

KOTEFMIS =
  (DESCRIPTION =
    (ADDRESS_LIST =
      (ADDRESS = (PROTOCOL = TCP)(HOST = 222.234.3.55)(PORT = 1521))
    )
    (CONNECT_DATA =
      (SERVICE_NAME = kotefmis)
    )
  ) 
==============================================================================================================

- Struts 에러
[common : DEBUG]  : [itep.pms.qanda.QandaSB (Object Hashcode : 18505680)] Poolable Object Returned .
[common : DEBUG]  : SessionHandler notice : Session attribute replaced. [org.apache.struts.action.TOKEN :
0f12d4794881cec0a411edca12eab6e8]
[org.apache.struts.action.RequestProcessor : WARN ]  : Unhandled Exception thrown: class java.lang.NullPointerException
원인: struts-qanda-config.xml 파일에서 <forward name="input" path="/input.jsp" /> 이 삭제 되었음
==============================================================================================================

- 기술료 전산입력 불가과제
주관기관인 싸이버트론(10027531)에서 공증어음으로 18,324,600원(만기일: 2009.11.17, 발행일: 2009.4.23)이고
참여기관인 오토전자(증서번호:자가01952020)에서는 당좌어음으로 14,231,700원 (만기일: 2009.11.17, 
발행일: 2009.5.4, 신한은행 디지털산업단지지점)입니다. 회계처리: 2009.5.4
위와 같이 전산입력을 할려해도 기존의 데이터가 남아있어서 그런지 입력이 안됩니다. 
==> 기술료 제출을 미제출로 변경처리 후 싸이버트론의 기술료 저장후 오토전자를 저장하면 가능(같이 보이는 않음)
책임연구원/공학박사  이상화(RDMP/ljy1008) Tel:053-757-3713

한국세폭(70002055)(증서번호:자가18801485, 자가1880148, 자가18801487),
승무기계(70002427)(증서번호:자가00419318)  ===> 약속어음 등록시 
에러가 남  ===> 원인: 수표어음증서 정보 테이블(BILL_DEED)이 등록되어있음, 조치: 삭제 처리(추후 데이타가
존재하면 알림창을 띄우도록 수정할 것) 
한국세포 ---> 3장
-------------------------------------------------------------------------------

- 기술료 제출을 미제출로 변경처리
-- 과제진행이력 정보 삭제     @@@@@@@@@@@@@
-- DELETE FROM RSBJCT_PRGS P 
WHERE P.SBJCT_ID IS NOT NULL
     AND P.SBJCT_ID = '10027531'   --과제번호
     AND P.DUTY_CD= '8815'         --진행업무분류(8815:납부계획서제출)
--; 

-- 기술료환수금d실적 삭제     @@@@@@@@@@@@@  
-- DELETE FROM FROM SAPMNT_PLAN P
WHERE P.SBJCT_ID = '10027531'    --과제번호
      AND P.SEQ <> 0   --납부계획_SEQ
--; 
==============================================================================================================

- 출력자료 요청(민재웅 연구원 요청)
지역R&D과제리스트.xls --ㅡ 3,780건
==============================================================================================================

- 엑셀 VLOOKUP 사용법
1. 엑셀 빈 셀에 = 를 친다.
2. 함수 마법사에서 VLOOKUP 찾음(모두)
3. VLOOKUP 설정
Lookup Value = B:B ==> 배열의 첫째 열에서 찾을 값입니다. 
Lookup_value는 숫자, 참조 영역 또는 문자열을 지정할 수 있습니다.
Table Value = A:A ==> 데이터를 찾을 정보 표입니다. 데이터베이스나 목록과 같은 범위의 참조 영역 또는 범위 
이름을 사용합니다. (F4:절대 주소값)
Col_index_numy =  2 ==> 비교값과 같은 행에 있는 값을 표시할 table_array의 열 번호입니다
Range_lookup =  false ==> (false 정확하게 일치값 조회)

예) 실제점수 
점수(A열)  학점
96(A3행열) A(B3행열)  ====> Lookup Value e: A3행열 선택, B3행열에 =VLOOKUP(A3,$A11:$B15,2) 설정
84(A4행열) B(B4행열) 
예) 학점환산표 
점수  학점
0(A11행열) F(B11행열)       
60(A12행열) D(B12행열)
70(A13행열) C(B13행열)
80(A14행열) B(B14행열)
90(A15행열) A(B15행열)   ====> Table Value: $A11:$B15(절대값 A11에서 B15까지 선택 됨)

=COUNTIF(C4:C69,"김*") 이말은 C4에서 C69까지의 범위에서 김씨로 시작되는 사람들의 갯수를 셈
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.07.15(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 19:30

- KIAT SM
1. 지역 R&D 관제관리시스템
- 관련규정 및 서식(사업비)
서식 자료실(FORM_ATTACH_DOC) 테이블 생성  --> form_attach
FIRST_IN: 사업유형1, SECOND_IN: 사업유형2, THIRD_IN: 사업유형3 
서식 자료실 --->  439 167  197
http://localhost:8080/pms/qanda/qanda.do?actmode=list2
1. Q&A
http://localhost:8080/pms/qanda/qanda.do?actmode=list
첨부파일은 WEBTOB서버에 \TmaxSoft\WebtoB4.1.2\docs\pms-web\homepage\store_content 
http://kiat.or.kr/02_publicity/notice_list_01.asp?sdata=0001030204  
SELECT *
FROM BOARD_HEADER
WHERE CATEGORY = /*[#1=QANDA]*/ 'qanda' 
- 게시판 4개의 테이블로 구성됨(BOARD_CATEGORY, BOARD_HEADER, BOARD_CONTENTS, BOARD_FILE)
--> 2의 테이블로 줄임(서식 자료실(FORM_ATTACH_DOC))
2. FAQ 
http://rnd.risnet.or.kr/pms/faq/faq.do?actmode=main
SELECT *
FROM BOARD_HEADER
WHERE FAQ_CLSF = /*[#1=01]*/ '01'  --FAQ유형(01:사업절차, 02:해당사업, 03:사이트이용)
==============================================================================================================

 - 참여기업 추가
광주전략산업기획단 평가관리실 박홍순 연구원(HSPAK1749/pak1749) 
정액기술료 납부계획을 입력하다가 참여기업이 없어서 참여기업 추가를 요청드리는 바입니다.
과제번호 : 10018071  
총괄책임자 : 이호재(LEEHOJAE/muhan2010) 
참여기업 : 아텍시스템 (대표자 : 조영상, 사업자등록번호 : 130-35-62482) 
(주)엔투에이 (대표자 : 김풍전, 사업자등록번호 : 125-81-71273) 
==============================================================================================================

- 회원 가입 에러(/homepage/memjoin.jsp  --> /homepage/member/memjoin.jsp)
양승철: *@*.*,  1. *@*.* 김민수
2. 김성기 *, 3. 권혜경 *, 4. 배윤주 팀장 02-6388-6630 
진태규: 730625-10 
에러내용: [2009.07.15 12:30:13][2] [SRVL-2457] [I] (jeus_jspwork._homepage._403_memjoin) destroyed
말그대로 서블릿 인터페이스의 destroy 메소드가 호출될 때 나오는 로그
이런 메시지가 나오는 경우는 JSP, Servlet이 변경되서 재로딩할 때  나올 수 있구요.
제우스의 경우에는 EJB 를 deploy/undeploy 한 뒤에도 위 메시지가 나올 수 있습니다. 
--> 에러 메세지로 판단이 안됨
원인: 근본적으로 내부서버와 실제 WAS서버의 차이라고 판단됨
/homepage/memjoin.jsp 파일에서
<html:form action="join" onsubmit="return checkValue(this)">
  <html:hidden property="actmode" value="insmember"/> 
  <input type="hidden" name="returnURL" value="../homepage/main.jsp"/>   ===> 이걸 인식 못하는 것으로 추정
  <input type="hidden" name="returnURL" value="join.do?actmode=in_main"/> ===> 이렇게 수정함
  <html:hidden property="membertype" /> 
----------------------------------------------------------------------------------------------- 
- WEB2B 서버(웹서버) 실행
wsboot.exe, wsdown.exe
http://rnd.risnet.or.kr/pms/home/join.do?actmode=detail&membertype=2&soid1=730625&soid2=1703418&name=진태규
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.07.16(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:30

- KIAT SM
1. 지역 R&D 관제관리시스템
- 사업비정산 점검
과제번호:70002411, 과제번호:70000366
사업비정산 및 지급 정보 Table에 95,000,000원 지급으로 나옴 
과제(과제번호:70002409) 역시 국비(112,000,000)+지방비(30,000,000)
=총 국비(142,000,000) 이지만, 평가관리시스템에서는 112,000,000으로 나옵니다. 
사업비정산 및 지급 정보 Table에 112,000,000원 지급으로 나옴 (지방비는 미존재)
===> 모두 정상적인 것으로 판단됨 
배주환(JHB6025/min3311) 052-219-8575
당해정부출연금: 112,000,000, 당해민간현금: 19,000,000  ==> 131,000,000
과제신청 --> 사업비 tab
예산금액(현금): 161,000,000, 예산금액(현물): 28,400,000  ==> 189,400,000(예산금액합계)
==============================================================================================================

- 결과확정 --> 결과정리 단계로 되돌리기(평가관리 --> 최종평가 --> 지역평가위원회)
진행이력업무분류구분(5511 --> 5514))  
경남전략산업기획단 성기용(TJDRLDYD/mssky1) 055-259-3372    *  
10027642   에스디주식회사 (5511 --> 5514))  

최종평가 지역평가위원회 평가결과
http://localhost:8080/pms/estm/result_sbjct.do?actmode=fin_region_main&plan_id=70008804&sbjct_id=10017378&seq=70 
System.out.println("[/pms/estm/result/ResultSB.java]:[getMain()]:[user_no]"+ user_no +"[isEditable]"+ isEditable); 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.07.17(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 18:30   --> 주간보고

- KIAT SM
1. 지역 R&D 관제관리시스템
 - 관련규정 및 서식(사업비)
서식 자료실(FORM_ATTACH_DOC) 테이블 생성  --> form_attach
FIRST_IN: 사업유형1, SECOND_IN: 사업유형2, THIRD_IN: 사업유형3 
서식 자료실 --->  439 167  197
http://localhost:8080/pms/qanda/qanda.do?actmode=list2
==============================================================================================================

 - 주간보고
1. 매주 금욜 14:00 주간회의 실시
2. 업무 담당자별 보고(테스트 서버, DB 강력히 요구)
==============================================================================================================

- STOCKS
월(3,190), 화(3,190), 수(3,380), 목(3,395), 금(3,900)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.07.20(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 18:40

- KIAT SM
1. 지역 R&D 관제관리시스템
 - 관련규정 및 서식(사업비)
서식 자료실(BOARD_FORM_ATTACH) 테이블 생성  --> form_attach
FIRST_IN: 사업유형1, SECOND_IN: 사업유형2, THIRD_IN: 사업유형3 
서식 자료실 --->  439 167  197
http://localhost:8080/pms/qanda/qanda.do?actmode=list2 
==============================================================================================================

- 평가위원에 추가 요청 
성명 : 최영복(*) 수석연구원(박사)
소속 : KT선로기술연구소
요청: 광주기획단에 임성무 연구원
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.07.21(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 19:00

- KIAT SM
1. 지역 R&D 관제관리시스템
 - 관련규정 및 서식(사업비)
서식 자료실(BOARD_FORM_ATTACH) 테이블 생성  --> formatt 
서식 자료실 --->  439 167  197
http://localhost:8080/pms/qanda/qanda.do?actmode=list2 

- 자료마당 > 사업지원관련자료 > 구성표(한국산업기술평가원)
http://www.keit.re.kr/sub04/sub04_11.jsp?flashNum=4/1/1&cate_idx=3&cate_title=지역혁신 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.07.22(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:30

- KIAT SM
1. 지역 R&D 관제관리시스템
 - 관련규정 및 서식(사업비)
서식 자료실(BOARD_FORM_ATTACH) 테이블 생성  --> formatt
http://localhost:8080/pms/qanda/qanda.do?actmode=list2
- 자료마당 > 사업지원관련자료 > 구성표(한국산업기술평가원)
http://www.keit.re.kr/sub04/sub04_11.jsp?flashNum=4/1/1&cate_idx=3&cate_title=지역혁신
 1.  참여기업 검색
/itep-pms/WEB-INF/config/subject/subjectApp/biz-subjectApp-config.xml
http://rnd.risnet.or.kr/pms/subject/busi-find.do?actmode=find&gubun=witak&leng=1
--> /subject/popup/subject_busi_find.jsp
http://rnd.risnet.or.kr/pms/subject/mbr-find.do
--> /subject/popup/subject_mbr_find.jsp 
==============================================================================================================

- 최종보고서 첨부 --> 첨부파일 업로드  ====> Ajax로 해결해야 함
김승광(KIMSG/k6427762): *
에러내용: dynsrc 속성을 설정할 수 없습니다. 액세스가 거부 되었습니다.(IE7. 이상에서) 
var img = new Image();
img.dynsrc = filePath;    //===> 파일 사이즈 에러
- 최종보고서 --> 업로드
http://rnd.risnet.or.kr/pms/report/reportresult.do?actmode=&filelist  ==> /report/report_fileupload.jsp

- IE7에서 DYNSRC 태그 대체하기(http://www.jiny.kr/jiny/378) 
var fso = new ActiveXObject("Scripting.FileSystemObject"); 
var f = fso.getFile(filePath);
var fileSize = f.size;   //===> 파일 사이즈 에러
f = null;
fso = null; 
인터넷 사용자 지정 수준에서  스크립팅하기 안전하지 않은 것으로 표시된 ActiveX컨트롤 초기화 및 스크립팅 
항목을 "사용"으로 해줘야 한다...  
경고창: 현재 보안 설정으로 인해 컴퓨터가 위험에 노출될 수 있음
==============================================================================================================

- 징수기술료가 0으로 나오는 것 처리
과제번호 : 70001374, 주관기관 : ㈜펄스텍
성기용(TJDRLDYD/mssky1) 055-259-3372
이 과제의 지역산업기술개발사업 정액기술료 납부계획서를 보면 
차수별 기술료율(%)가 빠져있어서 징수기술료가 0으로 나옵니다.
평가관리 -> 최종평가 -> 지역평가위원회
원인, 처리: 과제진행이력 정보 테이블에서 DUTY_CD(진행이력업무분류구분(6624:협약결과확정(체결)))에 
DCSN_TECH_RATE(확정기술료율) = 20를 추가
-- 과제진행이력 정보 조회   @@@@@@@@@@@@@ 
-- SELECT *
FROM RBUSI_CALC M
WHERE M.SBJCT_ID IN ('70001374')    --과제번호
     AND M.DUTY_CD IN ('6623', '6624')   --진행이력업무분류구분(6623:협약결과정리)
==============================================================================================================

- 평가위원 이상(실제 저장시 2개인데 6개의 데이타가 저장됨)
과제번호; 70001255, 임성무(MARKSMUS/lim3390)
최종평가 현장실태조사(면담) 평가결과 
-- 과제관련자 변경 이력 정보(평가위원)   @@@@@@@@@@@@@  
SELECT * 
FROM RSBJCT_MBR M
WHERE M.SBJCT_ID IS NOT NULL
    AND M.PLAN_ID = /*[#1=70009361]*/ '70009361'
    AND M.SBJCT_ID = '70001255'   --과제번호 평가위원
    AND M.JOIN_ROLE_CD = '1007' 
    --AND M.SEQ IN (4, 6, 5, 3) 
ORDER BY M.SEQ
--; 
==============================================================================================================

- 실서버 적용
1. 관련규정 및 서식 자료실 실서버 적용
struts-qanda-config.xml 에서 에러가 남  ===> 원인: 한글 주석 달지 말 것
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.07.23(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 18:40

- KIAT SM
1. 지역 R&D 관제관리시스템
- 주요사업공고
http://localhost:8080/pms/qanda/qanda.do?actmode=list_gong&p_url=gongo
- 공지사항
http://localhost:8080/pms/qanda/qanda.do?actmode=list_gong&p_url=gongi 

- 주요사업공고(어드민)
http://admin.kiat.or.kr/login.asp  --> kiatadmin/rhksflwkwk
==============================================================================================================

- 최종보고서 첨부 --> 첨부파일 업로드  ====> Ajax로 해결해야 함
김승광(KIMSG/k6427762): *
에러내용: dynsrc 속성을 설정할 수 없습니다. 액세스가 거부 되었습니다.(IE7. 이상에서) 
var img = new Image();
img.dynsrc = filePath;    //===> 파일 사이즈 에러
- 최종보고서 --> 업로드
http://rnd.risnet.or.kr/pms/report/reportresult.do?actmode=&filelist  ==> /report/report_fileupload.jsp
==============================================================================================================

- 파일 사이즈 체크(/report/result/ReportResultSB.java 파일에서): 10M미만 업로드 불가능
for(int i = 0; files != null && i < files.length; i++){   //파일
	finfo = FileUtil.uploadFileWrite(files[i], true, saveDir.toString(), maxFileSize); 

	if(int_total_size > int_max_size){   //파일의 크기가 10M 보다 크면    
		int_total_Msize  = (int_total_size/int_MB_size);   //총 파일사이즈(M)  
		throw new UserDefineException("[파일업로드 실패]<br>해당 파일을 등록할 수 없습니다.<br>
		등록 하시려는 총 파일 크기가 약 "+ int_total_Msize +"MB 입니다.
		<br>총 파일의 크기가 10M 미만 이여야 등록 가능 합니다.");
	}
}

- 5MB가 넘으면 아래와 같은 에러가 남(서버가 일정시간이 지나면 세션을 끊는 것으로 추정됨)
[org.apache.struts.actions.DispatchAction : ERROR]  : Request[/reportresult] doe
s not contain handler parameter named 'actmode'.  This may be caused by whitespace in the label text.
-------------------------------------------------------------------------------------------------------

- IE7에서 DYNSRC 태그 대체하기(http://www.jiny.kr/jiny/378) ===> 근본적 문제 해결 안됨
var fso = new ActiveXObject("Scripting.FileSystemObject"); 
var f = fso.getFile(filePath);
var fileSize = f.size;   //===> 파일 사이즈 에러
f = null;
fso = null; 
인터넷 사용자 지정 수준에서  스크립팅하기 안전하지 않은 것으로 표시된 ActiveX컨트롤 초기화 및 스크립팅 
항목을 "사용"으로 해줘야 한다.. 
경고창: 현재 보안 설정으로 인해 컴퓨터가 위험에 노출될 수 있음 
==============================================================================================================

- parseInt 함수
import java.util.HashMap;
int_total_Msize = util.parseInt(finfo.getFileSize()/int_total_size);   //총 파일사이즈(M)
==============================================================================================================

- 평가위원에 추가 요청 
요청자: 울산전략산업기획단 배주환(JHB6025/min3311) 052-219-8575 
성명: 양향권, 금하네이벌텍, *
전화 : 051-612-1917, FAX : 051-312-1916
주소 : 부산시 북구 덕천2동 396-4 이수타워 부산국방벤처센터 402호
==============================================================================================================

- 주간보고
1. 시간 변경: 매주 목욜 14:00 주간회의 실시
2. 서식 자료실 개발 완료, 첨부파일 업로드 IE7 이상 에러 해결
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.07.24(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:30

- KIAT SM
1. 지역 R&D 관제관리시스템

- 주요사업공고
http://localhost:8080/pms/qanda/qanda.do?actmode=list_gong&p_url=gongo
- 공지사항
http://localhost:8080/pms/qanda/qanda.do?actmode=list_gong&p_url=gongi 

- 주요사업공고(어드민)
http://admin.kiat.or.kr/login.asp  --> kiatadmin/rhksflwkwk
http://admin.kiat.or.kr/kor/notice/noticeReg.asp?&currPage=1&swork=&sdata=&field=&key=
==============================================================================================================

-- 칼럼 수정
ALTER TABLE BOARD_FORM_ATTACH ADD ( 
TEXT_CONTS       CLOB                  --내용(TEXT_CONTS_2)
)
--- 칼럼 삭제  ---------(HPHONE 칼럼 삭제) 
ALTER TABLE BOARD_FORM_ATTACH DROP COLUMN TEXT_CONTS
--------------------------------------------------------------------------

- CLOB으로 변경 
TEXT_CONTS  VARCHAR2(4000 BYTE)  --> TEXT_CONTS  CLOB   
오라클 명령어 empty_clob()을 이용해 공간을 확보한다
qanda : ERROR]  : UpdateException : [데이터 크기가 해당 유형의 최대 크기보다 큽니다: 5872]
http://blog.naver.com/qogpcks?Redirect=Log&logNo=110046288783
http://dooji.tistory.com/172
==============================================================================================================

- Struts Logic 커스텀 태그
 http://blog.naver.com/sjm0928?Redirect=Log&logNo=17870631
==============================================================================================================

- 정부출연금 수정(지방비 누락 추가) 
과제번호:70002411, 과제번호:70000366
사업비정산 및 지급 정보 Table에 95,000,000원 지급으로 나옴(안진현(AJH2170/AJH2170))
배주환(JHB6025/min3311) 052-219-8575
과제번호:70002411  --> RBUSI_CALC 테이블의 지방비 25,000,000원 누락
과제번호:70002409  --> RBUSI_CALC 테이블의 지방비 30,000,000원 누락
------------------------------------------------------------------------------------------------------

 -- 사업비 연차별총괄 정보 조회(사업비 --> 과제 구성도 --> 연차별 총괄)    @@@@@@@@@@@@@ 
SELECT NVL(SUM(DECODE(A.ALLOT_ROLE_CD, '1003', 0, '1006', 0, A.CASH_MNY) ), 0) / 1000 정부출연금 
, NVL(SUM(DECODE(A.ALLOT_ROLE_CD, '1003', CASH_MNY, 0) ), 0) / 1000 민간부담금_현금
, NVL(SUM(ARTCL), 0) / 1000 민간부담금_현물
, NVL(SUM(DECODE(A.ALLOT_ROLE_CD, '1003', A.CASH_MNY, 0) + A.ARTCL), 0) / 1000 민간부담금계
, NVL(SUM(DECODE(A.ALLOT_ROLE_CD, '1006', 0, A.CASH_MNY) + A.ARTCL), 0) / 1000 합계 
-- SELECT A.SEQ, A.ALLOT_ROLE_CD, A.CASH_MNY 현금, A.ARTCL 현물
FROM RSBJCT_PRGS P, RSBJCT_ALLOT_PRGS A  
WHERE P.SBJCT_ID = /*[#1=70002411]*/ '70002409'  --과제번호 
  AND P.SEQ = /*[#2=23]*/ '23'   --분담기관역할CD(1001:국비, 1002:지자체, 1003:기본사업비(민간), 
  -- 1004:지방비1, 1005:지방비2, 1006:위탁사업비))
  AND A.SBJCT_ID = P.SBJCT_ID 
  AND A.SBJCT_STEP = /*[#3=0]*/ '0' 
  AND A.SBJCT_ORDR = /*[#4=1]*/ '1' 
  AND A.SBJCT_SEQ = (SELECT MAX(A2.SBJCT_SEQ) 
                        FROM RSBJCT_ALLOT_PRGS A2 
                        WHERE A2.SBJCT_ID = P.SBJCT_ID 
                        AND A2.SBJCT_STEP = P.SBJCT_STEP 
                        AND A2.SBJCT_ORDR = P.ORDR 
                        AND A2.SBJCT_SEQ <= P.SEQ 
                        GROUP BY A2.SBJCT_ID) 
  AND A.AVAIL_SDATE <= P.AVAIL_SDATE 
  AND A.AVAIL_EDATE >= P.AVAIL_SDATE
-- 

-- 사업비정산 및 지급 정보(관리자 --> 사업비 정산 --> 결과정리 --> 사업비정산(새창)   @@@@@@@@@@@@@ 
SELECT  M.PLAN_ID, M.SBJCT_ID 과제ID, M.PAY_MNY 지급금액_국비, M.RMN_GRVN_MNY 잔액정부출연금, M.ALLOT_ROLE_CD 분담금구분,
        M.SBJCT_STEP 과제단계, M.SBJCT_YEAR 과제년도,M.SBJCT_ORDR 연차별차수, M.BUSI_CALC_CLSF 사업비지급_정산구분CD
--분담금구분(1001:국비,1004:지방비1,1005:지방비2), 
FROM RBUSI_CALC M
WHERE M.SBJCT_ID IS NOT NULL 
     AND M.SBJCT_ID IN ('70002409')   --과제번호 
    --AND M.ALLOT_ROLE_CD IN ('1004', '1005')    --분담금구분(1001:국비, 1002:지자체, 1003:기본사업비(민간), 1004:지방비1, 1005:지방비2, 1006:위탁사업비))
     --AND M.BUSI_CALC_CLSF = '11'     --사업비지급_정산구분(11: 일반지급, 12: 이월지급, 13 차감지급, 
     --14 손실보전, 21 전액사용, 23 잔액환수, 24 차감지급정산, 25 포기환수)
--;  
------------------------------------------------------------------------------------------------------

-- 사업비정산 및 지급 정보 저장 @@@@@@@@@@@@@
INSERT INTO RBUSI_CALC ( 
SBJCT_ID, SBJCT_STEP, SBJCT_ORDR, BUSI_CALC_CLSF, ORGN_DATE,
SBJCT_SEQ,  SBJCT_YEAR, AVAIL_EDATE, PAY_TYPE, PAY_RQST_DATE,
REAL_PAY_DATE, PAY_MNY, CALC_TYPE_CLSF, FUND_CD, FIX_YEAR,
ORDR, FUND_ROOT_TYPE, RMN_GRVN_MNY, RMN_CIVIL, RMN_CIVIL_ARTCL,
PLAN_ID, REG_MBR_ID, REG_TIME, ADIT_BUSI_ID, ALLOT_ROLE_CD,
CALC_SBJCT_CLSF,  REDM_MNY
)   
SELECT X.SBJCT_ID, X.SBJCT_STEP, X.SBJCT_ORDR, X.BUSI_CALC_CLSF, X.ORGN_DATE, 
       X.SBJCT_SEQ, X.SBJCT_YEAR, X.AVAIL_EDATE, X.PAY_TYPE, X.PAY_RQST_DATE,  
   X.REAL_PAY_DATE, A.CASH_MNY PAY_MNY, X.CALC_TYPE_CLSF, '' FUND_CD, X.FIX_YEAR, 
       ORDR, '' FUND_ROOT_TYPE, X.RMN_GRVN_MNY, X.RMN_CIVIL, X.RMN_CIVIL_ARTCL, 
       X.PLAN_ID, X.REG_MBR_ID, X.REG_TIME, X.ADIT_BUSI_ID, A.ALLOT_ROLE_CD,
       X.CALC_SBJCT_CLSF, X.REDM_MNY
FROM ( 
  SELECT SBJCT_ID, SBJCT_STEP, SBJCT_ORDR, BUSI_CALC_CLSF, ORGN_DATE, SBJCT_SEQ, SBJCT_YEAR, AVAIL_EDATE, PAY_TYPE, 
    PAY_RQST_DATE, REAL_PAY_DATE, CALC_TYPE_CLSF, FUND_CD, FIX_YEAR, ORDR, FUND_ROOT_TYPE, RMN_GRVN_MNY, RMN_CIVIL, 
 RMN_CIVIL_ARTCL, PLAN_ID, REG_MBR_ID, REG_TIME, ADIT_BUSI_ID, CALC_SBJCT_CLSF, REDM_MNY   
  FROM RBUSI_CALC
  WHERE SBJCT_ID = '70002409'   --과제번호 
          AND BUSI_CALC_CLSF = '11'
          AND PLAN_ID = '70004743'   --PLAN_ID 
  ) X, RSBJCT_ALLOT_PRGS A
WHERE A.SBJCT_ID = X.SBJCT_ID
    AND A.SBJCT_STEP = X.SBJCT_STEP
    AND A.SBJCT_ORDR = X.SBJCT_ORDR
    AND A.ALLOT_ROLE_CD IN ('1005','1004') --분담금구분(1001:국비,1004:지방비1,1005:지방비2), 
    AND A.AVAIL_EDATE = '99991231' 
    AND A.CASH_MNY >0     --분담금이 존재하는 것
==============================================================================================================

- STOCKS
월(3,760), 화(3,500), 수(3,365), 목(3,295), 금(3,295) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.07.27(월) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 18:30

- KIAT SM
1. 지역 R&D 관제관리시스템
- 주요사업공고
http://localhost:8080/pms/qanda/qanda.do?actmode=list_gong&p_url=gongo
- 공지사항
http://localhost:8080/pms/qanda/qanda.do?actmode=list_gong&p_url=gongi 

- 주요사업공고(어드민)
http://admin.kiat.or.kr/login.asp  --> kiatadmin/rhksflwkwk
http://admin.kiat.or.kr/kor/notice/noticeReg.asp?&currPage=1&swork=&sdata=&field=&key=
==============================================================================================================

- 관련규정 및 서식(사업비)
서식 자료실(BOARD_FORM_ATTACH) 테이블 생성  --> formatt 
서식 자료실 --->  439 167  197
http://localhost:8080/pms/qanda/qanda.do?actmode=list2 

- 자료마당 > 사업지원관련자료 > 구성표(한국산업기술평가원)
http://www.keit.re.kr/sub04/sub04_11.jsp?flashNum=4/1/1&cate_idx=3&cate_title=지역혁신 

-- 관련규정 및 서식 파일 경로 변경
UPDATE BOARD_FORM_ATTACH 
SET FILEPATH = 'Z:\board\200907' 
WHERE no=/*[#1=1190]*/ '1190' 
   AND seq=/*[#2=1]*/ '1'
==============================================================================================================

-- 칼럼 수정
ALTER TABLE BOARD_FORM_ATTACH ADD ( 
TEXT_CONTS       CLOB                  --내용(TEXT_CONTS_2)
)
--- 칼럼 삭제  ---------(HPHONE 칼럼 삭제) 
ALTER TABLE BOARD_FORM_ATTACH DROP COLUMN TEXT_CONTS
--------------------------------------------------------------------------

- CLOB으로 변경 
TEXT_CONTS  VARCHAR2(4000 BYTE)  --> TEXT_CONTS  CLOB   
오라클 명령어 empty_clob()을 이용해 공간을 확보한다
qanda : ERROR]  : UpdateException : [데이터 크기가 해당 유형의 최대 크기보다 큽니다: 5872]
http://blog.naver.com/qogpcks?Redirect=Log&logNo=110046288783
http://dooji.tistory.com/172
==============================================================================================================

- 지역평가위원회 --> 심의위원지정(위원확정여부): 조선해양최종평가
울산 임윤규(YEUNKYU/y29998)  052-219-8575
-- 업무계획 정보 조회   @@@@@@@@@@@@@ 
SELECT A.PLAN_ID, A.PLAN_STATUS, A.MMNGR_MBR_ID,   A.WIWON_CONTACT,
        A.PLAN_ID, A.DUTY_PLAN_CLSF, A.WIWON_CONTACT 위원선정주체, A.MBR_APPR_TIME 평가위원지정승인일, 
        A.PLAN_STATUS 계획현상태, A. PLAN_NM 계획명칭,  A.CONTACT_FNSH, 
DECODE(A.CONTACT_FNSH,'N','확정전','Y','확정') 확정여부
FROM RDUTY_PLAN A
WHERE A.PLAN_ID IS NOT NULL 
     AND A.PLAN_ID IN ( '70002039')   --PLAN_ID  10091473
--; 
  
-- 업무계획 정보 수정   @@@@@@@@@@@@@
UPDATE RDUTY_PLAN A
SET A.CONTACT_FNSH = 'Y',   --확정여부(Y: 확정)
      A.PLAN_STATUS = '1500'    --계획현상태(1500:(계획)전결, 2000:결과정리완료, 2500:(결과)전결)
WHERE A.PLAN_ID IS NOT NULL 
     AND A.PLAN_ID IN ( '70009362')   --PLAN_ID
--; 

 -- 업무계획 정보 조회   @@@@@@@@@@@@@  
SELECT A.PLAN_ID, A.PLAN_STATUS, A.MMNGR_MBR_ID, M.MBR_ID, A.WIWON_CONTACT
FROM RDUTY_PLAN A, RMEMBER M
WHERE A.DUTY_PLAN_CLSF = /*[#1=5511]*/ '5511' --1
--AND A.PLAN_STATUS >= '1000' //20090305
AND A.PLAN_STATUS <= '2000'
AND A.IS_OPERATION = '0001'
AND A.AVAIL_EDATE = '99991231'
AND A.PLAN_STIME BETWEEN NVL(/*[#2=]*/ '','19900101') AND NVL(/*[#3=]*/ '','99991231')  --2,3
AND M.MBR_ID = /*[#4=10060651]*/ '10060651' --4 
AND  (A.MMNGR_MBR_ID = M.MBR_ID)  
==============================================================================================================

- 관리자 권한 부여
이름 : 윤성영 책임연구원 : syoon, 생년월일 : 630227 
이름 : 박노무 연구원 : p4n2m2, 생년월일 : 750722
==============================================================================================================

- 총괄관리책임자 접수 에러 문제
과제번호:70004970, 총괄관리책임자 변경(허윤 --> 이병완)
==============================================================================================================

- 정부출연금 수정(지방비 누락 추가)  
광주전략산업기획단 윤진식(JSYOUN/y00724)  
70002926, 70002806, 70003155, 70003020, 70003299 
70003153, 70003000, 70002988, 70002929, 70003213, 70002751
==============================================================================================================

- 사업비정산(업무계획으로 돌리기) 
과제번호: 70002806,  김상영(HRSKSY/fdcm19) 연구원
사업비정산을 입력하다가 다음단계(업무계획 → 결과정리)로 잘 못 넘어간 과제에 대해 
처음 업무계획단계로 수정을 부탁드립니다. 

 -- 사업비정산 조회(업무계획)  @@@@@@@@@@@@@
SELECT 1 FROM RSBJCT_PRGS P1
WHERE P1.SBJCT_ID = S.SBJCT_ID
AND P1.SBJCT_STEP = CC.SBJCT_STEP
AND P1.ORDR = CC.ORDR
AND P1.DUTY_CD IN ('7710', '7720', '7730')   --진행업무분류(6624:협약결과확정(체결))
--;  
 - 과제진행이력 정보 삭제 @@@==> 진행업무분류가('7710', '7720', '7730') 인것들을 삭제
-- DELETE FROM  RSBJCT_PRGS P
WHERE P.SBJCT_ID IS NOT NULL
AND P.SBJCT_ID = '70002806'    --과제번호
AND P.DUTY_CD= '7710'         --진행업무분류(6624:협약결과확정(체결))
--;      
==============================================================================================================

- DB dump
\\110.14.182.194\pms-web\01. DATA\52. DB dump 폴더에 보관(itep_rdba_09_0727.dmp)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.07.28(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 18:10   --> 운영팀 회식(삼겹살집:홍수석, 칭찬)

- KIAT SM
1. 지역 R&D 관제관리시스템
- 주요사업공고
http://localhost:8080/pms/qanda/qanda.do?actmode=list_gong&p_url=gongo
- 공지사항
http://localhost:8080/pms/qanda/qanda.do?actmode=list_gong&p_url=gongi 
==============================================================================================================

- 주요사업공고(어드민)
http://admin.kiat.or.kr/login.asp  --> kiatadmin/rhksflwkwk
http://admin.kiat.or.kr/kor/notice/noticeReg.asp?&currPage=1&swork=&sdata=&field=&key=
==============================================================================================================

- 지역평가위원회 --> 심의위원지정(위원확정여부): 조선해양최종평가(70002409, 10018295)
울산 임윤규(YEUNKYU/y29998)  052-219-8575 
- 계획확정(지역평가위원회)
http://localhost:8080/pms/estm/approval_plan.do?actmode=fin_region
저장을 하면 RSBJCT_PRGS 테이블의 진행업무분류(5511:최종평가:지역평가위원회계획수립) 업됨 
- 심의위원지정(지역평가위원회)
http://localhost:8080/pms/estm/person.do?actmode=fin_region --> committee/person/estm_person.jsp 
- 심의위원확정(지역평가위원회)
http://localhost:8080/pms/estm/person.do?actmode=fin_region
==============================================================================================================

- 정부출연금 수정(지방비 누락 추가)  
광주전략산업기획단 임성무(MARKSMUS/lim3390)
70002668(에프엔엔) (110,000 --> 135,000) 
70002847(엘텍) (114,000 --> 135,000) 
70002551(이상테크) (114,000 --> 135,000) 
70003178(디지탈테크) (114,000 --> 135,000) 
70003048(카라드) (114,000 --> 135,000)  
70002709(한빛옵토라인) (112,000 --> 133,000)  
70001472, 70001521, 70001760, 70001714, 70001558
70001322, 70001332, 70001764, 70001523, 70001537
70001255  

- 사업비정산(업무계획으로 돌리기)   ==> 엑스엘티(70001332) 1차년도 이월금 158,700,000원
과제번호: 70002806,  김상영(HRSKSY/fdcm19) 
사업비정산을 입력하다가 다음단계(업무계획 → 결과정리)로 잘못 넘어간 과제에 대해  

-- 사업비정산 조회(업무계획)  @@@@@@@@@@@@@
SELECT SBJCT_ID 과제번호, P.SEQ, P.SBJCT_STEP 과제단계, P.ORDR 연차수, P.DUTY_CD, --진행이력업무분류구분 
       (SELECT V.CODE_NAME FROM RDUTY_CDV V WHERE V.SUB_CODE = P.DUTY_CD) 진행업무분류
FROM  RSBJCT_PRGS P
WHERE P.SBJCT_ID IS NOT NULL
     AND P.SBJCT_ID = '70001332'    --과제번호
   --AND P.ORDR= '2'    --연차수 
   AND DUTY_CD IN ('7710', '7720', '7730')
--;  
-- 과제진행이력 정보 삭제 @@@==> 진행업무분류가('7710', '7720', '7730') 인것들을 삭제
-- DELETE FROM  RSBJCT_PRGS P
WWHERE P.SBJCT_ID IS NOT NULL
     AND P.SBJCT_ID = '70001332'    --과제번호
   --AND P.ORDR= '2'    --연차수 
   AND DUTY_CD IN ('7710', '7720', '7730')  --행업무분류가('7710', '7720', '7730') 인것들을 삭제
--;      
==============================================================================================================

- 차수별기술료율 수정
성기용(TJDRLDYD/mssky1)
기술료를 통보할려고 보니 중점과제에서 총괄과제는 기술료가 없는데 
총괄과제 기술료가 20%로 되어 있어서 0%로 고쳐야 할 것 같아서 메일을 드립니다. 
과제번호 : 70000584 
총괄주관기관 : ㈜월드테크  
지역평가위원회 평가결과 -> 일괄납부계획서, 분할 납부계획서 차수별기술료율(%)를 0으로 수정

-- 과제진행이력 정보 수정   @@@@@@@@@@@@@
-- UPDATE RSBJCT_PRGS P
SET P.DCSN_TECH_RATE = '0' --확정기술료율(20 -->0) 
         WHERE P.SBJCT_ID = '70000584'
         AND P.DUTY_CD = '6624'
         AND P.SBJCT_STEP = '1'
         AND P.ORDR IN ('1', '2')
 -- AND P.SEQ = '50'
--;   
==============================================================================================================

- 변경처리 절차   
1. 변경신청접수 처리
2. 변경처리 -->결과보고화면에서 [통과]를 클릭하면 변경이 됨
- 변경 여부 확인 
공고 및 과제 --> 과제조회 --> 관리대장에서 조회하여 변경 여부 확인
- 결과보고
http://localhost:8080/pms/change/Conduct.do?actmode=cre_state
==============================================================================================================

-- 관련규정 및 서식 자료실 정보 수정  @@@@ ==> 2개 테이블 조인후 UPDATE
-- UPDATE BOARD_FORM_ATTACH U
SET (U.IDX_NO) = (SELECT B.IDX_NO
FROM BOARD_FORM_ATTACH_T B
          WHERE U.NO = B.NO
                )
WHERE EXISTS
      (SELECT 'x'
            FROM BOARD_FORM_ATTACH_T B 
            WHERE U.NO = B.NO    
      )
     AND U.IDX_NO IS NULL
--; 
==============================================================================================================

- 데이타 import(오라클에서 임포트)
Database --> import --> import Table Data 
Schema: ITEMP_RDBA
Object Type: Tables
Object Name: BOARD_FORM_ATTACH_T 
선택 후 ==> Show Data --> Excute Wizrd(새창에서 .excel 선택 -> 각 필드를 선택)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.07.29(수) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 18:30

- KIAT SM
1. 지역 R&D 관제관리시스템
- 주요사업공고
http://localhost:8080/pms/qanda/qanda.do?actmode=list_gong&p_url=gongo
- 공지사항
http://localhost:8080/pms/qanda/qanda.do?actmode=list_gong&p_url=gongi 
==============================================================================================================

- 주요사업공고(어드민)
http://admin.kiat.or.kr/login.asp  --> kiatadmin/rhksflwkwk
http://admin.kiat.or.kr/kor/notice/noticeReg.asp?&currPage=1&swork=&sdata=&field=&key=
==============================================================================================================

- 평가위원 자료 요청(백낙주(NJBAEK/a09210)
RISNET/구성원및사업체/평가위원 조회에서 1회 이상(평가참석현황 기준) 평가경험이 있는 평가위원 전체 
정보를 엑셀로 다운로드하여 주시기 바랍니다. (평가위원명, 소속, 전공, 연락처, 이메일, 등)
==============================================================================================================

- 관련규정 및 서식 자료실 수정
- CLOB으로 변경 
TEXT_CONTS  VARCHAR2(4000 BYTE)  --> TEXT_CONTS_2(내용CLOB)
오라클 명령어 empty_clob()을 이용해 공간을 확보한다
qanda : ERROR]  : UpdateException : [데이터 크기가 해당 유형의 최대 크기보다 큽니다: 5872] 
--------------------------------------------------------------------------

- 조건 조회해서 DB 처리
//서식 자료실(관련규정 및 서식) 목록 조회(/pms/qanda/QandaSB.java 파일에서)
public void getQandaListForm(ActionForm f) throws Exception
{  
StringBuffer sql = new StringBuffer("");
//사업유형1
if (first_in!=null && !first_in.equals("")){
sql.append(" AND FIRST_IN ='"+ first_in +"'  \n");
} 

String sql2 = SQLLoader.getQuery("board.getForm_attachList", new String[]{ sql.toString()});
dba.setString(1, category);
dba.setQuery(sql2, false);

list = dba.executeQuery(new Paging(page, listnum));  
}
==============================================================================================================

- 사업비정산(업무계획으로 돌리기)   ==> 엑스엘티(70001332) 1차년도 이월금 158,700,000원
과제번호: 70001332,  광주전략산업기획단 임성무(MARKSMUS/lim3390)
사업비정산을 입력하다가 다음단계(업무계획 → 결과정리)로 잘못 넘어간 과제에 대해  

 -- 사업비정산 정보 저장  @@@@@@@@@@@@@  ==> 백업 필수
-- CREATE TABLE RSBJCT_PRGS_20090729 AS 
SELECT *  
FROM  RSBJCT_PRGS P
WHERE P.SBJCT_ID IS NOT NULL
     AND P.SBJCT_ID = '70001332'    --과제번호
--;

-- 사업비정산 조회(업무계획)  @@@@@@@@@@@@@
SELECT P.plan_id, P.SBJCT_ID 과제번호, P.SEQ, P.SBJCT_STEP 과제단계, P.ORDR 연차수, P.DUTY_CD, 
       (SELECT V.CODE_NAME FROM RDUTY_CDV V WHERE V.SUB_CODE = P.DUTY_CD) 진행업무분류
FROM  RSBJCT_PRGS P
WHERE P.SBJCT_ID IS NOT NULL
     AND P.SBJCT_ID = '70001332'    --과제번호
    AND P.ORDR= '1'    --연차수 
   -- AND DUTY_CD IN ('7710')
--;
-- 과제진행이력 정보 삭제 @@@ 
--  DELETE FROM  RSBJCT_PRGS P
WHERE P.SBJCT_ID IS NOT NULL
     AND P.SBJCT_ID = '70001332'    --과제번호
    AND P.ORDR= '1'    --연차수 
   AND DUTY_CD IN ('7710', '7720', '7730')   ---진행업무분류가('7710', '7720', '7730') 인것들을 삭제
--;

-- 과제별일정계획 정보 조회   @@@@@@@@@@@@@
SELECT PLAN_ID, SBJCT_ID 과제번호, P.BUSI_ID 조사대상업체, 
       P.PLAN_STIME 계획시작일, P.PLAN_ETIME 계획종료일 
-- SELECT *
FROM RDUTY_SBJCT P
WHERE P.SBJCT_ID IS NOT NULL
     AND P.SBJCT_ID = '70001332'    --과제번호
     AND P.PLAN_ID = /*[#2=70009443]*/ '70009443' 
--;
-- 과제별일정계획 정보삭제 @@@ 
--  DELETE FROM RDUTY_SBJCT P
WHERE P.SBJCT_ID IS NOT NULL
     AND P.SBJCT_ID = '70001332'    --과제번호
     AND P.PLAN_ID = /*[#2=70009443]*/ '70009443' --연차수
--;
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.07.30(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:30

- KIAT SM
1. 지역 R&D 관제관리시스템
- 관련규정 및 서식 자료실 수정
http://blog.naver.com/qogpcks?Redirect=Log&logNo=110046288783
http://dooji.tistory.com/172
http://integer.kr/bbs/zboard.php?id=java&page=1&sn1=on&divpage=1&sn=on&ss=off&sc=off&keyword=CLOB&select_arrange=headnum&desc=asc&no=19

- Clob는 대용량 텍스트를 저장할수잇는데 4GB 까지 가능

/**  서식 자료실 등록   */ 
public void insertBoardForm(ActionForm f) throws Exception {    
}

 /** 서식 자료실 등록(파일 업드 없음)   */ 
public int insertBoardFormNOfile(.....) throws DBException {

}
==============================================================================================================

- 기술료율 변경 요청 
과제번호: 10017520, 박귀득(KDPARK/pkd370) *@*.*  
차수별 기술료율(%)가 빠져있어서 징수기술료가 40 --> 20 에 대하여 
- 사업비 사용금액: 930,469천원
- 기술료 (20%): 930,469천원 * 0.2 = 186,093천원인데
   (930,469천원 * 0.4 = 372,187천원 임)   
 기술료 납부계획서에는 40% → 20%로 변경되었음에도
  40%징수금액인 372,187천원으로 계속 표시됩니다. 
 <종합의견서> 및 <기술료 납부계획서> 상의 징수기술료를  
 372,187천원  → 186,093천원으로 수정을 부탁드립니다.
 --------------------------------------------------------------

-- 과제진행이력 정보 수정   @@@@@@@@@@@@@
-- UPDATE RSBJCT_PRGS P
SET P.DCSN_TECH_RATE = '20' --확정기술료율(40 --> 20)  
WHERE P.SBJCT_ID IS NOT NULL
   AND P.SBJCT_ID = '10017520'    --과제번호
   AND P.DUTY_CD IN (' 6623', '6624')  --진행업무분류(6623:사업비지급결과정리, 6624:협약결과확정(체결)) 
--;

- 징수 기술료 계산
SELECT GET_TECH_AMT2_R('10017520')/1000 TECH_MNY FROM DUAL;

-- 1.조기완료 또는 성공 이력이 있는 경우에만 기술료 계산 
SELECT 1 
FROM RSBJCT_PRGS B
WHERE ROWID =  (SELECT /*+ INDEX_DESC(A RSBJCT_PRGS_PK) */ A.ROWID
FROM RSBJCT_PRGS A
WHERE SBJCT_ID = '10017520'  --과제번호 
AND DUTY_CD IN ('5314', '5324', '5414', '5424', '5514', '5524', '5614')    
AND ROWNUM = 1 )
AND ((DUTY_CD IN ('5314', '5324') AND GRADE_CD = 'R0015')
OR (DUTY_CD IN ('5414', '5424') AND GRADE_CD = 'R0020')
OR (DUTY_CD IN ('5514', '5524') AND GRADE_CD = 'R0022')
OR (DUTY_CD IN ('5614')         AND GRADE_CD = 'R0029'))

-- 2.지역에서는 조기완료나 최종심의-종합판정결과 성공(우수)에 대한 기술료 감면 없음
SELECT /*+ INDEX(P2 RSBJCT_PRGS_IDX2) */
   TRUNC(SUM(X.PAY_MNY * NVL(P.DCSN_TECH_RATE,0)) / 100, -3)
--INTO OUT_TECH_AMT
FROM (
SELECT /*+ ORDERED USE_NL(A S) INDEX(A RBUSI_CALC_PK)*/
A.SBJCT_ID, A.SBJCT_STEP, A.SBJCT_ORDR,
NVL(SUM(DECODE(A.BUSI_CALC_CLSF,'11',A.PAY_MNY)),0) - 
NVL(SUM(DECODE(A.BUSI_CALC_CLSF,'23',A.RMN_GRVN_MNY)),0) PAY_MNY
FROM RBUSI_CALC A ,RSUBJECT S
 WHERE A.SBJCT_ID =  '10017520'  --과제번호 
 AND A.BUSI_CALC_CLSF IN ('11','23')
 AND A.AVAIL_EDATE = '99991231'
 AND S.SBJCT_ID = A.SBJCT_ID
 GROUP BY A.SBJCT_ID, A.SBJCT_STEP, A.SBJCT_ORDR
 ) X, RSBJCT_PRGS P
WHERE P.SBJCT_ID   = X.SBJCT_ID
AND P.DUTY_CD      = '6623'             -- 협약결과정리
AND P.SBJCT_STEP   = X.SBJCT_STEP
AND P.ORDR         = X.SBJCT_ORDR
==============================================================================================================

- 주간보고
1. [신규] 관련규정 및 서식 자료실 수정
- 사업유형 추가(지역산업 기술개발사업(신규사업)), 삭제(기업지원서비스사업)
2. [신규] 관련규정 및 서식 자료실 수정 예정
- 자료실 공고에 대한 대용량 텍스트 처리(기존:VARCHAR2(4000)를 Clob으로 변경)
==============================================================================================================

- 아래아 한글로 노트 속지 만든 방법
http://cafe.daum.net/fpuser  --> Daum 프랭클린플래너 유저들의 모임(노트 속지)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.07.31(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:30

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

- procedure 호출시 ORA-00900 오류 발생
-------------------------------------------------------------------------------------

-- DB 정보조회 
SELECT * FROM ALL_USERS -- 사용자 
SELECT * FROM USER_TABLES -- 사용자에 대한 테이블 
SELECT * FROM ALL_TABLES -- 모든 테이블 
SELECT * FROM USER_CONSTRAINTS -- 사용자 권한  
SELECT * FROM USER_SOURCE  -- 프로시저 & 패키지 조회
WHERE NAME = 'PKG_CLOB_BOARD_FORM_ATTACH'  
==============================================================================================================

- STOCKS
월(3,195), 화(3,190), 수(3,210), 목(3,190), 금(3,190) 
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■