

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2007.05) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2007.05.01(화) 작업 ■■■■■■■■■■■■■■■■■
---> 07:30 ~ 20:00 --> 정상 근무(막걸리:박한철 부장, 백두현 과장) 

- 노트북 재설치  
- ASUS 노트북(F3JC) 재설치(F3JC) RECOVERY CD-ROM CD(1/2) 사용) 
1. RECOVERY CD 1을 넣고 재시작 
2. Booting to CD(Esc키를 사용) 
3. ATAPI CD-ROM Drive 선택하고 누름 
4. Recovery Windows XP to first partion only 선택 --> C 드라이브에 설치됨 
5. RECOVERY CD 2을 넣음 
6. ASUS Driver and Utility CD 를 넣음 --> Support CD Ver2.0 CD를 넣고 수동으로 드라이버 잡아줘야 함 
7. 설치 완료 
==============================================================================================================

- V3 7.0(보안 프로그램)
CD_KEY: 87942440-70758678 
==============================================================================================================

- 디자인팀 공유 서버 
\\Design\share\2007.04_ U-대구 마스터플랜 수립 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.05.02(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 18:30 --> 생고기집(조웅희 부장, 박한철 부장, 임부장, 한과장, 신입 사원) 

- 노트북 재설치
- ASUS 노트북(F3JC) 사운드 카드 드라이버 설치 에러 
에러 내용:  
1. 장치관리자 에서 
  PCI DEVICE에서 노란색으로 나타남 
  사운드, 오디오 및 게임컨트롤러에서 사운드카드 드라이버가 안보임 
  (정상이면 Realtak High Definition Audio 이 보여짐) 
2. ASUS Driver and Utility CD에서 Audio Driver를 설치하면 도중에 
"Microsoft Bus Driver을 사운드 카드드라이버 설치전에 먼저 로드하라"라는 에러 발생 
원인: 컴퓨터에 트로잔이라는 바이러스 or 악성코드가 감염 된 것으로 추정 
조치:  
1. Microsoft UAA Bus 다운로드 받아서 설치 
http://kr.ks.yahoo.com/service/ques_reply/ques_view.html?dnum=JADAB&qnum=5296824 
위의 주소 클릭해서 Microsoft UAA Bus 다운로드 받아서  
임시로 폴더 하나 만들어서 그 폴더에다 압축을 푸세요 (한자로 돼있음)  
그럼 win2k3폴더랑 win2k_xp폴더 .. 2개가 생깁니다 
님 운영체제가 xp라면 win2k_xp폴더 클릭하세요 
그러면 전세계 각국의 언어별로 폴더가 있습니다 
그중에 kor폴더 클릭하세요 
그럼 kb835221 캐비넷파일 있죠? 그걸로 설치하세요 
설치 완료후 사운드카드 드라이버 설치하고 컴퓨터 재부팅하세요. 
2. ASUS Driver and Utility CD에서 INTEL INF update 설치 
==============================================================================================================

- 무선 연결(ASUS 노트북(F3JC) 에서) 
자판 가운데 밧데리 표시 옆에 있는 버튼을 옆으로 밀어서 무선켜기를 할 것 ==> 
시작 > 모든 프로그램 > Intel PROSet 무선 > Intel PROSet 무선을 차례로 클릭합니다.  
Windows 바탕 화면 오른쪽 아래 모서리에 있는 작업 표시줄 아이콘 을 마우스  
오른쪽 단추로 클릭하고 작업 표시줄을 엽니다. Intel PROSet/열기를 클릭합니다.  
 인텔(R) PROSet/무선 프로그램  ==> 무선 네트워크(S) 상태에 나타난 그림을 선택하여  
 연결(N)을 클릭하면 연결됨 
 http://www.intel.com/support/kr/wireless/wlan/sb/cs-025805.htm 
==============================================================================================================

- CVS  설치 방법
1. 위니텍 WIKI 메인 페이지( 대문 누르면됨 )에서 TortoiseCVS 를 다운받아 설치한다.  
2. TortoiseCVS가 설치된 디렉토리에서 puttygen.exe를 실행시킨다.  
3. PuTTY Key Generator 프로그램에서  
Parameters -> Type of key to generate: SSH2RSA  
Generate를 누른다.  
Actions -> Save the generated key: Save private key 
--> 빈 공간에서 마우스를 계속 움직여 랜덤키가 생성됨 
4. 개인키를 저장하고 공개키를 복사해둔 
---------------------------------------------------------------------------------------- 

5. 마우스 오른쪽 버튼을 눌러 설정에 들어간다.  
CVS --> 설정(P) 클릭 
6. 빈 폴더 제거 선택을 해제한다  
7. 저장한 개인키의 위치를 입력한다.  
SSH Parametere: -l "%u" "%h" -i "C:\key.ppk" 
8.  SSH Secure Shell Client 프로그램 실행 
Quick Connect -->  
Host Name: cvs.winitech.com 
User Name: tamario PWD: ssj**1* Port: 22 
authentication Method: Profile Settings  

[tamario@cvs tamario]$ ls 
[tamario@cvs tamario]$ cd .ssh  
authorized_keys2 
[tamario@cvs .ssh]$ vi authorized_keys2 
sh-rsa AAAAB3NzaC1 
~ 
~ 
:wq! 

9. CVS를 사용할 디렉토리에서 마우스 오른쪽 버튼을 눌러 새 모듈 생성을 선택한다.  
10. 프로토콜을 설정하고 서버, 저장소 폴더, 사용자명을 입력하고 목록 가져오기를 누른다.  
프로토콜: SSH(:ext:)     
서버: cvs.winitech.com     
저장소 폴더: /home/cvsroot/Project/대구광역시/2007.04_ U-대구 마스터플랜 수립    
사용자명: tamario  
모듈: 0.1.제안요청서   ===> 목록 가져오기(F)...클릭 
http://wiki.winitech.com/wiki.php/CVS%20%C8%B0%BF%EB 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.05.03(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 18:30 --> 풋살(C조: 3승 1패) 

- OZ 분석
- 2007년도 연봉협상 관련 문서 작성  
1[2][1].근무평가_2007.xls, 3[1][1].개별작성_직접송부할것.hwp 
==============================================================================================================

- OZXStudio 설치 및 사용법 숙지 
1. 개발도구 
OZ Report Designer 
OZ Query  Designer 
OZ Application Designer 
2. 운영환경/도구 
OZ Server(Daemon/Servlet) 
OZ Scheduler Server 
OZ Viewer 
3. 관리도구 
OZ Enterprise Manager 
OZ Repository Manager  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.05.04(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:30 --> 대규 할매 제사(경대팀 회식:호동이 숯불갈비) 

- OZ 분석
- OZXStudio 설치 및 사용법 숙지 
//디버깅용 
var s = ""; var d = new Date(); 
s += d.getMinutes() + ":"+ d.getSeconds() + ":" +d.getMilliseconds(); 
_TRACELN("Document.OnPostInitialize:"+s); //TRACE 

_MessageBox("[CODE]:[1st Code]:[DataSet.GetRowCount():"+ DataSet.GetRowCount());  
//메세지 박스 띄우기 
------------------------------------------------------------------------------------------------- 
- OZXStudio 에러 
File(s) that linked with this project is not valid. 
1 invalid File(s) 
car - ozp:///OZAppEdu/car.odi 
==============================================================================================================

- Oracle 에러(winitech DB 연결) 
IP : 192.168.0.106 SID: DEV2DB winitech/winitech00    ====> 위니텍 OZ DB 서버 
IP : 192.168.0.93 SID: WINI07 wini07/wini00 ====> 정수교씨 개인 컴퓨터  
IP : 218.158.3.230 SID: XE winiuser/winiuser00   ====> 신재홍 과장 컴퓨터 
에러: ORA-12535 TNS 작동이 중단 중입니다. 
원인: 
시작 --> 실행(R) --> 열기(O): TELNET 192.168.0.93 1521   
====> 연결이 안됨(서버에서 방화벽을 사용하는 것으로 추정) 
조치: firewall 이 문제 
서버의 방화벽에서 oracle 포트: 1521  허용으로 만듬 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.05.05(토) 작업 ■■■■■■■■■■■■■■■■
---> 09:10 ~ 17:00 --> 공휴일, 큰누나집(경주) --> 포항 

- OZ 분석
- OZXStudio 설치 및 사용법 숙지  
==============================================================================================================

- 개인 이력서 제안 
제목: 귀사와 함께 할 성공 파트너, 미래 설계자 판매 중 
1. 그의 이력(주요 경력 중심 설명) 
2. 그의 장점(업무의 전문성(임전무퇴), 기획력(시사.인문.경제 분야에 관심), 성실, 체력(풋살)) 
 가. 업무의 전문성 
  1) 웹프로그램 전문가(EJB, JAVA, JSP, ASP) 
  2) C/S 전문가(Visual Basic) 
  3) 프로젝트 분석.설계 전문가(마르미 방법론 분석.설계 경험) 

 나. 기획력 
  1) 시사.인문.경제 분야에 관심 
  3) 대학시절 독서 동아리를 통한 문학에 대한 이해력과 상상력이 
  확장 됨 
  2) 하루에 1시간씩 인터넷 신문 탐독(시사.사회.경제) 
  3) 숙련된 IT기술을 바탕으로 한 창조적 아이디어 도출 

 다. 성실 
  1) 매일 7시에 출근(생활 습관이 됨) 
  2) 매일 11시 퇴근(업무가 없을 경우 자기 개발) 
  3) 토요일, 일요일 자기 개발에 시간 가짐(프로그래밍, 독서) 

 라. 체력 
  1) 대학 때부터 축구 동아리에서 체력 다짐 
  2) 10년 동안 조기 축구 생활 
  3) 매주 풋살 클럽 다님 
--------------------------------------------------------------------- 

3. 그의 사생활 
좌우명: 일신 우일신(日日新 又日新) 
일일신 우일신이라는 옛 성현의 말씀처럼 저도 매일매일 새로워지고 싶습니다. 
취미: 축구(풋살), 독서 
외국어: 토익 700점(97년도 공인 성적) 

4. 그의 비전(프로젝트 분석.설계 전문가, 전문 SE 기획자, 현명한 CTO형 관리자) 
걸어온 길 보다 앞으로 가야할 길이 더 화려한 남자.  
--------------------------------------------------------------------- 
 귀사와 함께 할 성공 파트너,  미래 설계자 판매 중   
 귀사를 성공 파트너,  미래 설계자 판매 중  
10년 건강 프로젝트(건강) 
35 ~ 45: 20대 처럼 
45 ~ 55: 30대 처럼 
55 ~ 65: 40대 처럼 
==============================================================================================================

- 근무평가 
 근무평가_2007 이번 평가 좀 해주십시오. 
 작성 하셔서 경영기획팀 이동하 대리에게 메일로 보내주시면 됩니다. 
 부탁드립니다. 수고 하십시오. 
---------------------------------------------------------------------  
1[2][1].근무평가_2007(진태만).xls 
U-대구 마스터플랜 수립 ISP --> 제안서 작업  
==============================================================================================================

- 인터넷 속독프로그램 스피드북(www.speedbook.co.kr)   
번호 학습버젼 정확도 스피드 학습시작 학습종료  
32 Level 1 75 880 2007-05-07 7:56 2007-05-07 8:23 --> 중문 
31 Level 1 75 874 2007-05-06 11:15 2007-05-06 11:47 --> 중문 시작 
30 Level 1 90 863 2007-05-05 9:52 2007-05-05 10:21 
29 Level 1 40 801 2007-05-04 7:33 2007-05-04 8:02 
28 Level 1 80 758 2007-05-03 7:31 2007-05-03 7:59 
27 Level 1 80 746 2007-05-01 7:36 2007-05-01 8:04 
26 Level 1 80 771 2007-04-30 7:34 2007-04-30 8:02 
25 Level 1 50 747 2007-04-29 9:20 2007-04-29 9:50  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.05.07(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 23:00 

- HR System 개발
- HR System 주간업무 개발( ~ 05.15(화)까지): 회의(조부장님, 정수교씨, 백두현과장) 
HR(Human Resources): 인적 자원 
ODI(Oz Data Info) 파일명(.odi), ozr(Oz Report) 파일명(.ozr), oza(Oz Application) 파일명(.oza) 
ozf(Oz Fuction) ozf(.ozf)  

- MainMenu 등록 방법 
OZ Application Designer 3.5 --> Insert --> Invisibles --> MainMenu 클릭--> MainMenu2 생성됨 
Invisibles 에서 
MainMenu2(마우스 오른쪽 클릭)  --> Wizard 
Member(M)에 원하는 메뉴 입력 
주간업무   ===> 주간업무 입력(해당 메뉴 생성됨) 
Component에서  
Document(마우스 오른쪽 클릭) --> Add New Board 클릭 --> "brd_주간업무" 생성 
Invisibles 에서 -> 주간업무를 Script Editor에 끌어 옴 
var d = brd_주간업무.Attach();   ===> 입력 
cf) This.GetChild("brdv_main").BoardName = "brd_login"; 
----------------------------------------------------------- 
  
- Working 폴더 지정 
OZ Application Designer 3.5 --> Repository --> Local Explorer -->   
D:\TAMA_DATA\91. So on\01. 프로그램 TOOL\52. OZ\HR_system 폴더 마우스 오른쪽 클릭 --> 
Set Working Folder(W) 클릭 ===> 해당 폴더를 Working 폴더로 지정  
==============================================================================================================

- 설치 오류 
에러 내용: 설치오류:파일을 찾을 수 없습니다. 파일:sku011.cab를 찾을 수 없습니다. 
원인: 오피쓰 2003에서는 사용자계정이 늘어나면 오피스를 사용하는 사람이 둘로 늘어나버리면서 오류 발생 
조치: 다시 설치를 해야만 복구 됨 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.05.08(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 23:00 

- HR System 개발
- HR System 주간업무 개발 
주간업무 정보 정보 테이블 생성 
PJ007: 주간업무 정보, PJ008: 주간업무 상세 정보 
데이터 셋 추가(I): WEEKLEY_REPORT 

-- 주간업무 정보 조회  @@@@@@@@@@@    ===> WEEKLEY_REPORT 
SELECT A.SEQ_NO, MAX(A.REPORT_DT), C.DEPTNO,  
(SELECT DEPTNAME FROM IF003 WHERE DEPTNO =  C.DEPTNO) AS DEPTNAME,  
MAX(C.NAME), MAX(A.REG_DT) 
FROM PJ007 A, PJ008 B, IF001 C  
WHERE A.SEQ_NO = B.SEQ_NO 
   AND A.EMPNO = C.EMPNO 
   AND A.USE_YN = 'Y'                     -- 사용여부(Y:사용, N:미사용) 
    AND A.REPORT_DT >= '20070501' -- AND A.REPORT_DT >= #OZParam.startdate#  
   AND A.REPORT_DT <='20070510' -- AND A.REPORT_DT <= #OZParam.enddate#   
GROUP BY A.SEQ_NO, C.DEPTNO 
ORDER BY A.SEQ_NO DESC 
-- ;  
---------------------------------------------------------------------  
  
--주간업무 보고서 정보 Data 생성 @@@@@ 
-- INSERT INTO PJ007( SEQ_NO, 
REPORT_DT, 
EMPNO, 
USE_YN, 
REG_ID,   ----------> 
REG_DT   
  )   
VALUES ( 
'100002', 
'20070508', 
'Htec-525', 
'Y', 
'tamario',  ----------> 
SYSDATE  
) 
--; 
----------------------------------------------------------- 

--주간업무 보고서 상세 정보 Data 생성 @@@@@ 
-- INSERT INTO PJ008(SEQ_NO, 
RP_CD, 
--RP_TITLE, 
RP_CONTENTS, 
USE_YN,    
REG_ID,   ----------> 
REG_DT   
  )   
VALUES ( 
'100002', 
'1', 
--'제목', 
'U-대구 기술 협상', 
'Y', 
'tamario',  ----------> 
SYSDATE  
) 
--; 
---------------------------------------------------------------------------- 

--사원정보   Data 생성 @@@@@ 
-- INSERT INTO IF001( EmpNO, 
Name, 
Sex, 
Deptno, --부서코드 
posCD,      ----------> 직위 
UlEVELCD, 
Passwd, 
Etc, 
LastDate, 
UseYN  
  )   
VALUES ( 
'Htec-525', 
'진태만', 
'남', 
'dp006',   --부서코드 
'0606',  ----------> 직위 
'0104', 
'1', 
'test', 
 SYSDATE, 
 'Y' 
) 
--; 
----------------------------------------------------------- 
   
- 주간업무 정보 Sequence 넘버 생성(시퀀스 생성) 
-- DROP SEQUENCE WINI07.PJ007_SEQ; 
CREATE SEQUENCE WINI07.PJ007_SEQ 
  START WITH 100001 
  MAXVALUE 999999999999999999999999999 
  MINVALUE 0 
  NOCYCLE 
  NOCACHE 
  NOORDER; 
-- SELECT PJ007_SEQ.nextval FROM DUAL  --; 
 ==============================================================================================================

- 한국생산성본부 
http://www.kpc.or.kr 
- 프로젝트관리 교육 
http://www.kpc.or.kr/education/education_caregory01.asp?Cate_Code=31 
- 이피엠포럼 
http://www.epmforum.com 
- PMP 시험 응시료 
기준 환율(939.35) 
275  258,321  회원가 
375  352,256  일반가 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.05.09(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 23:30 

- HR System 개발
- HR System 주간업무 개발  
_TRACELN("[brd_주간업무]:[grid_주간업무보고]:[TEST]"); //TRACE 
_MessageBox("[brd_주간업무]:[grid_주간업무보고]:[DataSet]"+ DataSet); //메세지 박스 띄우기  
==============================================================================================================

- 날짜 타입   
dtp_ReportDt.ValueDate = DataSet.GetStringDataByIndex(i, 7).substring(0,10);  
//보고일자(10자리 날짜 타입으로 받기)  ==> '2007-05-02' 
var p_dtp_ReportDt = dtp_ReportDt.ValueDate.replace(/-/g, ""); 
//보고일자(10자리 날짜 타입으로 받기) ==> '20070502'  
This.ValueDate = ozf_calDate(_GetSystemTime().GetDate(), -30);    ///30일 전 
This.ValueDate = _GetSystemTime().GetDate();  
var MeterChangeRsnCD = txt_SrchMeterChangerSnCD.Value.replace(/ /g, ""); 
var ConsCompleteDateFrom = ozf_SpecialChrCut(dtp_SrchConsCompleteDateFrom.ValueDate, "-");  
--------------------------------------------------------------------- 

- 형전환 
var d = new Date();  
var year  = parseInt(d.getYear()); // String -> 정수 
var month = parseInt((d.getMonth()+1)); 

if(month < 1) { 
	year  = year - 1; 
	month = 12 + month; 
} 
------------------------------------------------------------------------------------------------- 

데이터 셋 추가(I): WEEKLEY_REPORT_LIST 
-- 주간업무 정보 조회  @@@  ===> WEEKLEY_REPORT 
SELECT M.SEQ_NO, M.REPORT_DT, N.PROJ_TM_CD, N.PROJ_TM_NM,  
   N.NAME, N.DEPTNAME, M.REG_DT 
FROM 
(SELECT A.SEQ_NO, MAX(A.REPORT_DT) AS REPORT_DT,  
   MAX(A.PROJ_TM_CD) AS PROJ_TM_CD, MAX(D.PROJ_TM_NM) AS PROJ_TM_NM, 
   MAX(C.NAME) AS NAME, MAX(A.REG_DT) AS REG_DT 
FROM PJ007 A, PJ008 B, IF001 C, PJ009 D 
WHERE A.SEQ_NO = B.SEQ_NO  
AND A.EMPNO = C.EMPNO 
AND A.PROJ_TM_CD = D.PROJ_TM_CD 
AND A.USE_YN = 'Y'               -- 사용여부(Y:사용, N:미사용) 
AND A.REPORT_DT >= '20070501' -- 보고일 A.REPORT_DT >= #OZParam.startdate#  
AND A.REPORT_DT <='20070521' -- AND A.REPORT_DT <= #OZParam.enddate# 
AND ('' IS NULL OR A.PROJ_TM_CD = '') --프로젝트_팀CD(100001)   
GROUP BY A.SEQ_NO) M, 
(SELECT A.SEQ_NO, C.DEPTNO, C.NAME, A.PROJ_TM_CD, 
(SELECT PROJ_TM_NM FROM PJ009 WHERE PROJ_TM_CD =  A.PROJ_TM_CD) AS PROJ_TM_NM, 
  (SELECT DEPTNAME FROM IF003 WHERE DEPTNO =  C.DEPTNO) AS DEPTNAME  
FROM PJ007 A, IF001 C   
 WHERE A.EMPNO = C.EMPNO 
     AND A.USE_YN = 'Y'               -- 사용여부(Y:사용, N:미사용) 
       AND A.REPORT_DT >= '20070501' -- 보고일 A.REPORT_DT >= #OZParam.startdate#  
 AND A.REPORT_DT <='20070521' -- AND A.REPORT_DT <= #OZParam.enddate# 
 --AND A.PROJ_TM_CD = '100001'     --프로젝트_팀CD 
 AND ('' IS NULL OR A.PROJ_TM_CD = '') --프로젝트_팀CD 
 -- AND ('' IS NULL OR C.NAME  = '') --보고자명 
) N 
WHERE M.SEQ_NO = N.SEQ_NO 
ORDER BY M.SEQ_NO DESC   
--;  
--------------------------------------------------------------------- 

-- 주간업무 보고 리스트 정보 조회  @@@@@@@@@@@    ===> WEEKLEY_REPORT_LIST 
SELECT A.SEQ_NO,  A.PROJ_TM_CD, D.PROJ_TM_NM, 
A.REPORT_DT, C.NAME, B.RP_CONTENTS, RTRIM(B.RP_CD) AS RP_CD,  
TO_DATE(A.REPORT_DT, 'YYYY-MM-DD') REPORT_DT_2  
FROM PJ007 A, PJ008 B, IF001 C, PJ009  D 
WHERE A.SEQ_NO = B.SEQ_NO 
   AND A.EMPNO = C.EMPNO 
   AND A.PROJ_TM_CD = D.PROJ_TM_CD 
   AND A.SEQ_NO = '100002'  --일련번호(AND A.SEQ_NO = #OZParam.p_seq_no#) 
ORDER BY B.RP_CD 
-- ; 
==============================================================================================================

- 교육자료(내부 URL) 
\\218.158.3.230 
==============================================================================================================

- 외장하드 
MG25-TERRAN(40G)테란 --> 가격: 88,000원 
MG25-TERRAN(80G)테란(USB포트 내장) --> 가격: 98,980원 
http://itempage.auction.co.kr/detailview.aspx?itemno=A076270521&frm=itempage 
MG25-TERRAN(80G)테란(2007년 신형)  --> 가격: 89,000원 
http://itempage.auction.co.kr/detailview.aspx?itemno=A076265592&frm=itempage 
MG25-TERRAN(100G)테란 --> 가격: 118,000원   ====> 강추 
http://itempage.auction.co.kr/detailview.aspx?itemno=A076265591 
MG25-TERRAN(120G)테란(USB포트 내장) --> 가격: 136,000원 
MG25-Ultra(160G)테란 --> 가격: 219,000원 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.05.10(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:30 --> 풋살 

- HR System 개발
- HR System 주간업무 개발  
_TRACELN("[brd_주간업무]:[grid_주간업무보고]:[TEST]"); //TRACE 
_MessageBox("[brd_주간업무]:[grid_주간업무보고]:[DataSet]"+ DataSet); //메세지 박스 띄우기    
==============================================================================================================

//주간업무 보고 정보 등록  
string sql; 
sql = "INSERT INTO PJ007(SEQ_NO, REPORT_DT, "; 
sql = sql + " EMPNO, USE_YN,";  
sql = sql + " REG_ID, REG_DT)"; 
sql = sql + "VALUES"; 
sql = sql + " ("; 
sql = sql + " '#OZParam.p_seq_no#','#OZParam.p_report_dt#',";   //SEQ_NO,  보고일자  
//sql = sql + " PJ007_SEQ.nextval+1, '#OZ/aram.p_report_dt#',";   //SEQ_NO,  보고일자  
sql = sql + " '#OZParam.empno#','#OZParam.useyn#',"; 
sql = sql + " '#OZParam.p_user_id#', SYSDATE"; 
sql = sql + " )"; 
setQueryString(sql); 
--------------------------------------------------------------------- 

//주간업무 보고 상세 정보 등록  
string sql; 
sql = "INSERT INTO PJ008(SEQ_NO, RP_CD, ";  
sql = sql + " RP_CONTENTS, USE_YN,";  
sql = sql + " REG_ID, REG_DT)"; 
sql = sql + "VALUES"; 
sql = sql + " ("; 
sql = sql + " '#OZParam.p_seq_no#', '#OZParam.p_rp_cd#',";  //SEQ_NO, 업무구분 
sql = sql + " '#OZParam.p_rp_contents#','#OZParam.useyn#',";   
sql = sql + " '#OZParam.p_user_id#', SYSDATE"; 
sql = sql + " )"; 
setQueryString(sql);  
---------------------------------------------------------------------------- 
  
var login_id = _GetGlobal("g_myUserID"); 
DataAction[0].Extra = m_tabledb+login_id;// 옵션 문자열로써 여기서는 테이블 이름으로 사용됨 
==============================================================================================================

- U-대구 회의(백두현 팀장) 
6개월 동안 대구시에서 상주 
U-광양 제안서 작업(14일 까지)  ==> 취소 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.05.11(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:30 

- HR System 개발
- HR System 주간업무 개발  
_TRACELN("[brd_주간업무]:[grid_주간업무보고]:[TEST]"); //TRACE 
_MessageBox("[brd_주간업무]:[grid_주간업무보고]:[DataSet]"+ DataSet); //메세지 박스 띄우기    
==============================================================================================================

//주간업무 보고 정보 수정  
string sql; 
sql = "UPDATE PJ007  "; 
sql = sql + "SET REPORT_DT = '#OZParam.p_report_dt#', "; //보고일자   
sql = sql + " EMPNO = '#OZParam.empno#' "; //사원번호  
sql = sql + "WHERE  SEQ_NO = '#OZParam.p_seq_no#' "; //SEQ_NO  
setQueryString(sql); 
--------------------------------------------------------------------- 

//주간업무 보고 상세 정보 수정  
string sql; 
sql = "UPDATE PJ008  "; 
sql = sql + "SET RP_CONTENTS = '#OZParam.p_rp_contents#' "; //보고 내용  
sql = sql + "WHERE SEQ_NO = '#OZParam.p_seq_no#' "; //SEQ_NO  
sql = sql + " AND RP_CD = '#OZParam.p_rp_cd#'' "; //업무구분   
setQueryString(sql); 
---------------------------------------------------------------------------------------- 

//주간업무 보고 정보 삭제  
string sql; 
sql = "UPDATE PJ007  "; 
sql = sql + "SET USE_YN = 'N' "; // 사용여부    
sql = sql + "WHERE  SEQ_NO = '#OZParam.p_seq_no#' "; //SEQ_NO  
setQueryString(sql); 
--------------------------------------------------------------------- 

//주간업무 보고 상세 정보 삭제  
string sql; 
sql = "UPDATE PJ008  "; 
sql = sql + "SET USE_YN = 'N' "; // 사용여부    
sql = sql + "WHERE  SEQ_NO = '#OZParam.p_seq_no#' "; //SEQ_NO  
setQueryString(sql); 
---------------------------------------------------------------------------------------- 
- 글로벌 함수 사용 
var login_id = _GetGlobal("g_myUserID"); 
DataAction[0].Extra = m_tabledb+login_id;// 옵션 문자열로써 여기서는 테이블 이름으로 사용됨  
==============================================================================================================

- Working 폴더 지정 에러 
에러: 파일을 찾을 수 없습니다. 
3 invalid File(s) 
GlobalData - ozp://ozf/GlobalData.ozf 
Common - ozp://ozf/Common.ozf 
원인: Working 폴더 지정를 인식 못함(Working 폴더 지정 다시 지정) 
- Working 폴더 지정  
OZ Application Designer 3.5 --> Repository --> Local Explorer -->   
D:\TAMA_DATA\91. So on\01. 프로그램 TOOL\52. OZ\HR_system 폴더 마우스 오른쪽 클릭 --> 
Set Working Folder(W) 클릭 ===> 해당 폴더를 Working 폴더로 지정   
==============================================================================================================

- 자료 출력, 화일 문서 제작 
u-대구 마스터 플랜\프로젝트관리\5. 사업기초문서  
/1. 제안요청서 및 과업지시서 
/2. 제안서 폴더 
/3. 프로젝트 관리 
---------------------------------------------------------------------  
- 사내 FTP 
\\gis\wini ID/PWD: tamario/1*** 
==============================================================================================================

- U-대구 회의(대구시) 
장소: 대구시 6층 미니 회의실 
일시: 13:20 ~ 15:30 
참석인원: 추사장님, 조부장, 박부장, 임부장, 신부장 
대구시 정보통신팀 공간정보(남형근 계장, 박찬엽 주임) 
주제: 사업 계획 일괄 설명(남형근 계장) 
다음주 월요일 부터 출근 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.05.12(토) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 20:40 

- HR System 개발
- HR System 주간업무 전체보고 
1. 한 부서에 월요일에 1개만 등록(하루에 한ID로 한번만 등록 가능) 
2. 보고 일자는 무조건 월요일 지정 
3. 주간보고 부서 지정 
GB함수...........사원번호, 아이디, 사원명, 사원번호, 부서코드, 부서명 
--------------------------------------------------------------------------------------------------------------- 

- HR System 주간업무 오즈 리포트 
-  weekley_report.ozr 실행 에러  
에러 내용: 에러코드: 10102007 
Fail to execute the query. 
실행할 SQL 문은 비어 있거나 널일 수 없음 
[Query : ]  
원인: 10102007 에러코드는 쿼리문을 실행할 수 없거나 데이터를 잘못 가져오는 경우 발생할 수 있습니다.   
조치: HRS_일정관리_Week.odi 삭제 후 HRS_Schedule_Week.odi 새로 만듬 
1. .odi 파일명이 한글 이여서 문제 
2. TABLE이 많음(필요 파일외엔 모두 지움) 
3. Refresh가 안됨(삭제 후 다시 생성) 
--------------------------------------------------------------------------------------------------------------- 

-- 주간업무 보고 등록 체크 조회(보고일에 한부서에 한명만 등록 체크) @@@   ===> WEEKLEY_REPORT_CHECK 
SELECT A.SEQ_NO 
FROM PJ007 A, IF001 C  
WHERE A.EMPNO = C.EMPNO  
    AND A.EMPNO = 'Htec-525' --사원번호(A.EMPNO = '#OZParam.empno#') 
    AND A.REPORT_DT ='20070508' --보고일(AND A.REPORT_DT = '#OZParam.p_report_dt#')  
--;  
==============================================================================================================

-- 주간업무 전체보고 갯수 조회 @@@    ===> WEEKLEY_REPORT_TOT_RP_CNT  
SELECT A.SEQ_NO  
FROM PJ007 A, PJ008 B, IF001 C 
WHERE A.SEQ_NO = B.SEQ_NO 
AND A.EMPNO = C.EMPNO 
AND A.USE_YN = 'Y' -- 사용여부(Y:사용, N:미사용) 
AND A.REPORT_DT ='20070508' --보고일(AND A.REPORT_DT = '#OZParam.p_report_dt#')  
GROUP BY C.DEPTNO, A.SEQ_NO  
--; 
--------------------------------------------------------------------------------------------------------------- 

-- 주간업무 전체보고 조회  @@@    ===> WEEKLEY_REPORT_TOT_RP 
SELECT M.SEQ_NO, N.PROJ_TM_CD, N.PROJ_TM_NM, M.REPORT_DT, M.RP_CD_1, M.RP_CD_2, M.RP_CD_3, M.RP_CD_4, 
   N.DEPTNO, N.DEPTNAME, N.NAME 
FROM 
(SELECT A.SEQ_NO,  MAX(A.REPORT_DT) AS REPORT_DT,   
(SELECT RP_CONTENTS FROM PJ008 WHERE SEQ_NO = A.SEQ_NO 
AND RP_CD = '1') AS RP_CD_1,  
(SELECT RP_CONTENTS FROM PJ008 WHERE SEQ_NO = A.SEQ_NO 
AND RP_CD = '2') AS RP_CD_2,  
(SELECT RP_CONTENTS FROM PJ008 WHERE SEQ_NO = A.SEQ_NO 
AND RP_CD = '3') AS RP_CD_3,  
(SELECT RP_CONTENTS FROM PJ008 WHERE SEQ_NO = A.SEQ_NO 
AND RP_CD = '4') AS RP_CD_4,  
MAX(A.REG_DT) AS REG_DT  
FROM PJ007 A, PJ008 B 
WHERE A.SEQ_NO = B.SEQ_NO 
   AND A.REPORT_DT = '20070521' --보고일(AND A.REPORT_DT = '#OZParam.p_report_dt#')  
GROUP BY A.SEQ_NO) M, 
(SELECT A.SEQ_NO, C.DEPTNO, C.NAME, A.PROJ_TM_CD, 
(SELECT PROJ_TM_NM FROM PJ009 WHERE PROJ_TM_CD =  A.PROJ_TM_CD) AS PROJ_TM_NM, 
  (SELECT DEPTNAME FROM IF003 WHERE DEPTNO =  C.DEPTNO) AS DEPTNAME  
FROM PJ007 A, IF001 C   
 WHERE A.EMPNO = C.EMPNO 
       AND A.REPORT_DT = '20070521' --보고일(AND A.REPORT_DT = '#OZParam.p_report_dt#')  
) N 
WHERE M.SEQ_NO = N.SEQ_NO 
--;   
==============================================================================================================

- 오즈 출력 
ar objBoard = _ImportNewBoard("ozp:///ozc/dws_ReportPrint.ozc");  //레포트 출력 팝업   
var rptObj = objBoard.GetChild("rpt_Print");  
  
rptObj.ReportViewerURL = "ozp://ozr/weekley_report.ozr"; // 레포트 파일 
rptObj.InitUserParameter();  

// ================== 검색 조건 파라미터 설정 =========================== 
rptObj.AddReportParameter("odi.odinames","HRS_일정관리_Week"); // odi 파일 
rptObj.AddReportParameter("odi.HRS_일정관리_Week.pcount","1"); // 파라미터 개수? 
//rptObj.AddReportParameter("odi.HRS_일정관리_Week.args1","deptid=" + "10000"); 
rptObj.AddReportParameter("odi.HRS_일정관리_Week.args2","p_seq_no=" + txt_SEQ_NO.text); 
// ====================================================================  
_MessageBox("[brd_주간업무]:[출력]:[txt_SEQ_NO.text]"+ txt_SEQ_NO.text); 

rptObj.ApplyReport(); 

This.GetBoard().ShowDialog(objBoard.name, "주간업무보고서", true, 0, 0, false, false, false); // 팝업을 띄운다.    
--------------------------------------------------------------------------------------------------------------- 

- 오즈 출력 소스 위치 
D:\TAMA_DATA\91. So on\01. 프로그램 TOOL\52. OZ\HR_system\대구상수도 소스\oza\GAS\GAS_200 
GAS_210_A020.oza 
--------------------------------------------------------------------------------------------------------------- 

- alert 메세지(오즈) 
if(p_sel_Cnt > 0)  //보고일에 한 ID 한명 이상이 등록 되었다면 
{  
_MessageBox("해당 ID에 대한 보고일 ["+ p_rp_date +"]은 이미 등록 되어 있습니다.\확인 하세요.");  
return; 
} 
--------------------------------------------------------------------------------------------------------------- 

- 엑셀 전환 
var dutymatrixtype = txt_DutyMatrixType.Text; 
var dutyertypecd = txt_DutyerTypeCD.Text;  
ozf_SaveExcel(grd_Dutyer, "당직그룹" + dutymatrixtype + "-" + dutyertypecd); 
--------------------------------------------------------------------------------------------------------------- 

 brd_mainFrm.GetChild("brdv_main").BoardName = "brd_mainwin"; 
==============================================================================================================

- 인터넷 속독프로그램 스피드북(www.speedbook.co.kr)   
번호 학습버젼 정확도 스피드 학습시작 학습종료  
37 Level 1 25 803 2007-05-12 8:02 2007-05-12 8:33 
36 Level 1 25 851 2007-05-11 7:05 2007-05-11 7:33 
35 Level 1 25 795 2007-05-10 7:36 2007-05-10 8:05 
34 Level 1 25 868 2007-05-09 7:42 2007-05-09 8:11 
33 Level 1 75 919 2007-05-08 7:41 2007-05-08 8:08 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.05.13(일) 작업 ■■■■■■■■■■■■■■■■
---> 08:40 ~ 20:40 

- HR System 개발
1. HR System 주간업무 오즈 리포트 
2. HR System 주간업무 전체보고 
100001: 상수도 100002: 경북대 100004: 1339 100005: 의텔 
100007: DIP 100008: 울산 3차 100009: IEMS 100010: 해양경찰청  
앞으로 등록 ==> 107001: u-대구(1:Project, 07:2007년, 001:생성번호)  
200101: 소방방재청 200102: 대구 200103: 부산 200105: 호남 
앞으로 등록 ==> 207001: 광주(2:Maintenance, 07:2007년, 001:생성번호)  
300201: 전략기획팀 300202: 경영기획 300203: 기술지원 300204: DBA 
300205: 지원정보팀 300206: GIS 팀 300207: 디자인팀 300208: H/W 팀 
300209: 해외사업팀     
앞으로 등록 ==> 307001: 기술영업팀(3:Team 07:2007년, 001:생성번호) 
===> 총: 21개 
------------------------------------------------------------------------------------------------------- 

-- 주간업무 정보 출력 조회  @@@   ===> WEEKLEY_REPORT_PRINT 
SELECT  M.SEQ_NO, N.PROJ_TM_CD, N.PROJ_TM_NM, M.REPORT_DT, M.RP_CD_1, M.RP_CD_2, M.RP_CD_3, M.RP_CD_4, 
  N.DEPTNO, N.DEPTNAME, N.NAME 
FROM 
(SELECT A.SEQ_NO, MAX(A.REPORT_DT) AS REPORT_DT,   
(SELECT RP_CONTENTS FROM PJ008 WHERE SEQ_NO = A.SEQ_NO AND RP_CD = '1') AS RP_CD_1,  
(SELECT RP_CONTENTS FROM PJ008 WHERE SEQ_NO = A.SEQ_NO AND RP_CD = '2') AS RP_CD_2,  
(SELECT RP_CONTENTS FROM PJ008 WHERE SEQ_NO = A.SEQ_NO AND RP_CD = '3') AS RP_CD_3, 
(SELECT RP_CONTENTS FROM PJ008 WHERE SEQ_NO = A.SEQ_NO AND RP_CD = '4') AS RP_CD_4  
FROM PJ007 A, PJ008 B 
WHERE A.SEQ_NO = B.SEQ_NO 
   AND A.SEQ_NO ='100002' --일련번호(A.SEQ_NO = '#OZParam.p_seq_no#') 
GROUP BY A.SEQ_NO) M, 
(SELECT A.SEQ_NO, C.DEPTNO, C.NAME, A.PROJ_TM_CD, 
(SELECT PROJ_TM_NM FROM PJ009 WHERE PROJ_TM_CD =  A.PROJ_TM_CD) AS PROJ_TM_NM, 
  (SELECT DEPTNAME FROM IF003 WHERE DEPTNO =  C.DEPTNO) AS DEPTNAME  
FROM PJ007 A, IF001 C   
 WHERE A.EMPNO = C.EMPNO 
         AND A.SEQ_NO = '100002' --일련번호(A.SEQ_NO = '#OZParam.p_seq_no#') 
) N 
WHERE M.SEQ_NO = N.SEQ_NO  
--; 
==============================================================================================================

- global 스크립트 
global string p_str_seq_no; 
::p_str_seq_no = ""; //일련번호  
---------------------------------------------------------------- 
- 일반 스크립트  
string p_str_empno; 
p_str_empno  = getdata("HRS_Schedule_Week.WEEKLEY_REPORT_LIST.DEPTNO");  //부서코드 
msgBox("[p_str_empno]", ::p_str_empno); 
setattr("caption",::p_str_empno);  
==============================================================================================================

- 날짜 함수(nowDate: 오늘날짜, value:변경하고 싶은 일수): OZ 
function ozf_calDate(nowDate, value){ 
var strAmount = Number(value); 
var strTargetDate = nowDate.replace(/-/g, ""); 

var strPhoneTime =  
  new Date(strTargetDate.substring(0,4), strTargetDate.substring(4,6) - 1, strTargetDate.substring(6,8),0, 0, 0, 0); 
var strIDay = strPhoneTime.getTime() + 24*3600*1000*strAmount; 
var strDay = new Date(); 
  
strDay.setTime(strIDay); 

var strYear = strDay.getYear(); 
var strMonth = strDay.getMonth()+1; 
var strDay = strDay.getDate(); 

if(strMonth < 10){ 
strMonth = "0" + strMonth; 
} 
if(strDay < 10){ 
strDay = "0" + strDay; 
} 

return strYear.toString() + "-" + strMonth.toString() + "-" + strDay.toString(); 
}  
---------------------------------------------------------------- 

- 요일 세팅 
var sysTime = _GetSystemTime(); 
var week = sysTime.GetDayOfWeek();    //요일 
---------------------------------------------------------------- 

시스템에 적용하면 S(Sunday), M(Monday) 등으로 표기됩니다. 문제가 무엇입니까? 명쾌한 답 
 If iTimes = 0 Then    'Times가 존재하지 않으면 
         strToday = Format(Now(), "yyyy-mm-dd")  '오늘 날짜 
    End If 
     
    strSelWeekDay = DatePart("w", strToday)     '요일(일~ 토요일) 
         
    If strSelWeekDay = "1" Then         '일요일이면 
        strChu_DT = DateAdd("d", 6, strToday) 
    ElseIf strSelWeekDay = "2" Then     '월요일이면 
        strChu_DT = DateAdd("d", 5, strToday) 
    ElseIf strSelWeekDay = "3" Then     '화요일이면 
        strChu_DT = DateAdd("d", 4, strToday) 
     ElseIf strSelWeekDay = "4" Then    '수요일이면 
        strChu_DT = DateAdd("d", 3, strToday) 
    ElseIf strSelWeekDay = "5" Then     '목요일이면 
        strChu_DT = DateAdd("d", 2, strToday) 
     ElseIf strSelWeekDay = "6" Then    '금요일이면 
        strChu_DT = DateAdd("d", 1, strToday) 
    Else 
        strChu_DT = strChu_DT 
    End If  
==============================================================================================================

- USB 메모리 
[트윈모스]USB메모리 Z4 16GB/국내최초 초고용량  ---> 192,000원 
http://itempage.auction.co.kr/DetailView.aspx?ItemNo=A089981610&frm2=through 
[Transcend]JetFlash160(8G) USB메모리   ---> 117,000원 
http://itempage.auction.co.kr/DetailView.aspx?ItemNo=A091230567&frm2=through 
[삼성전자]삼성전자 SUB-M8GLS 8G USB 메모리    ---> 102,400원   ===========> 강추 
http://itempage.auction.co.kr/DetailView.aspx?ItemNo=A086262527&frm2=through  
==============================================================================================================

- 식사 주문(위니텍) 
쌍용각(반점): T) 754-5536~7 
한샘식당: T) 751-0104  
청우식당: T) 725-6055 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.05.14(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 23:00 --> 대구 시청 첫 출근(U-대구 프로젝트 착수) 

- U-대구 ISP
1. U-대구
가. 사업명: U-대구 마스터플랜 수립 사업 
나. 사업기간: 2007.5.14(월) ~ 2007.11.09(금)(180일) 
다. 사업목적 
유비쿼터란 신기술 도입과 접목을 통한 지여 경쟁력의 제고 
2012년 까지의 U-대구 건선을 위한 중장기 계획 수립 
유비쿼터스 기술의 체계적인 도입과 접목을 위하여 추진방향 설정과 분야별 접목방안 등 'U-대구 구현'을 
위한 마스터 플랜 수립(USP(Ubiquitous Strategy Plan): U-City 전략) 
-------------------------------------------------------------------------------------------------- 

2. 공간정보 분야별 u-IT839 관련성 
가. IT839 
3대 인프라: BcN(광대역 통합망), USN(u-센서 네트워크), IPv6 
8대 서비스: W-CDMA,WiBro, 위성/지상파DMB, 지상파디지털TV, 홈네트워크 서비스, 
 텔레매틱스, RFID활용 서비스, 인터넷 전화(VoIP)  
9대 신성장 엔진: 차세대이동통신 기기, 홈네트워크 기기, 디지털 TV/방송 기기, 
차세대 PC, 지능형 로봇, 텔레매틱스 기기, 임베디드SW, 디지털 컨텐츠/SW 솔루션  
나. u-IT839 
3대 인프라: BcN(광대역 통합망), USN(u-센서 네트워크), 소프트 인프라웨어  
8대 서비스: HSDPA/W-CDMA , WiBro,  광대역 융합 서비스, DMB/DTV 서비스, u-Home 서비스,  
 텔레매틱스/위치기반 서비스, RFID/USN 활용 서비스, IT 서비스  
9대 신성장 엔진: 이동통신/텔레매틱스 기기, 광대역/홈네티웍크 기기, 디지털 TV/방송 기기,  
차세대 컴퓨터/주변 기기, 지능형 로봇, RFID/USN 기기, IT Soc/융합부품, 임베디드SW, 디지털 컨텐츠/SW 솔루션 
-------------------------------------------------------------------------------------------------- 
   
3. 보안서약서 작성(U-대구 관련) 
---------------------------------------------------------------- 
- 특수문자 
1. 삽입(I) --> 기호(S) --> 선택 
2. ㅁ + 한자: 공표,세모(○, △) 생성,  ㅍ+ 한자: 엑스표(Ｘ) 

- 엑셀 제목 반복 출력 하기 
보기(N) --> 머리글/바닥글(H) -->  
페이지 설정(새창이 뜸) --> 시트(탭) --> 인쇄 제목 
반복할 행(R): $6:$7  ===> 2줄만 페이지가 넘어가도 보여 짐 
==============================================================================================================

- 대구시청 TAMA 노트북 네트웍(IP 주소)  --------- 
IP: 100.100.8.247 
S.M: 255.255.255.0 G.W: 100.100.8.1 
DNS: 10.1.1.5 
--------------------------------------------------------------- 
- 프린터 설치(작은 프린터) 
IP: 100.100.8.119 
http://100.100.8.119 
드라이버: HP LaserJet 4200 PCL6 
http://h50177.www5.hp.com/support/Q2428A/more_info_soar_lj-8638-8.html 
에러: IP가 잘못 됨(.120 --> .119) 
확인: 네트웍 연결 URL 꼭 확인할 것(http://100.100.8.119)  
 - 프린터 설치(큰 프린터) 
IP: 100.100.8.118 
http://100.100.8.118 
드라이버: HP Color LaserJet 8550 
http://h50177.www5.hp.com/support/Q2428A/more_info_soar_lj-8638-8.html  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.05.15(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 23:00 --> 민방위훈련(14:00 ~ 14:20) 

- U-대구 ISP
1. 공간정보 분야별 u-IT839 관련성 
가. IT839 
3대 인프라: BcN(광대역 통합망), USN(u-센서 네트워크), IPv6 
8대 서비스: W-CDMA,WiBro, 위성/지상파DMB, 지상파디지털TV, 홈네트워크 서비스, 
 텔레매틱스, RFID활용 서비스, 인터넷 전화(VoIP)  
9대 신성장 엔진: 차세대이동통신 기기, 홈네트워크 기기, 디지털 TV/방송 기기, 
차세대 PC, 지능형 로봇, 텔레매틱스 기기, 임베디드SW, 디지털 컨텐츠/SW 솔루션  
나. u-IT839 
3대 인프라: BcN(광대역 통합망), USN(u-센서 네트워크), 소프트 인프라웨어  
8대 서비스: HSDPA/W-CDMA , WiBro,  광대역 융합 서비스, DMB/DTV 서비스, u-Home 서비스,  
 텔레매틱스/위치기반 서비스, RFID/USN 활용 서비스, IT 서비스  
9대 신성장 엔진: 이동통신/텔레매틱스 기기, 광대역/홈네티웍크 기기, 디지털 TV/방송 기기,  
차세대 컴퓨터/주변 기기, 지능형 로봇, RFID/USN 기기, IT Soc/융합부품, 임베디드SW, 디지털 컨텐츠/SW 솔루션 
------------------------------------------------------------------------------------------------------------------------ 

2. 2011 서비스도출(조사표) 작성  
구글 earth 설치 
DirectX 모드에서 시작할 수 없음 
그래픽 카드를 바꿔보심이... vodoo3 약간 문제가.. 
"Google Earth : DirectX not Supported"가 뜰때  
그래픽카드와 DirectX모드가 맞지 않아서 발생. OpenGL모드로 변경할것.  
'시작->프로그램->Google Earth-2007-05-15>Set Google Earth to OpenGL mode' 를 클릭 
==============================================================================================================

- U-대구 의사소통 데이타 철(업무보고(일간, 주간, 월간)) 
세계육상선수권 대회 유비쿼터스 적용방안 도출(~5/25) 
착수보고회: (~5/29) 
==============================================================================================================

- OZ Query Designer 에서 DB 연결 
오즈데아타트리 --> 데이타베이스(오른쪽 클릭) --> 스토어 추가(I)(새창뜸) -->  
DB 연결 정보 추가  --> 연결정보 
데이터 정보 이름: HRS_smanage 
데이타베이스 벤더 이름: Oracle  
데이타베이스 벤더 드라이버 종류: thin 
데이타베이스 서버 IP 주소: 192.168.0.106 
데이타베이스 서버 포트 번호: 1521 
데이타베이스 서버 이른: DEV2DB ======> SID: DEV2DB 
인코딩셋:  KSC5601 
사용자 이름: winitech 
패스워드: winitech00  
==============================================================================================================

1. HR System 주간업무 전체보고 
가. 작은 따음표 바꾸기 
 txt_RP_Prev.Text = "'시설정보' 사업"; 
DataModule.UpdateOZParam("p_rp_contents", txt_RP_Prev.Text.replace(/'/g, "●"));  //보고 내용  ==> 등록시 
var p_contents = DataSet.GetStringDataByIndex(i, 5).replace( /●/g, "'");  //보고 내용   ==> 받기 
------------------------------------------------------------------------------------------------------------------------ 

나. 콤보값 설정 
-콤보 함수값 얻기(콤보 --> 값(100001)) 
DataModule.UpdateOZParam("p_proj_tm_cd", txt_Proj_tm_cd.Text); //프로젝트_팀CD 
DataModule.UpdateOZParam("budgettypecd", GetItemValue(cmb_SrchBudgetTypeCD)); // 예산구분 
------------------------------------------------------------------------------------------------------------------------ 

-콤보 함수값 얻기 함수 // ComboBox의 Itemvalue값을 구할때 
function ozf_GetItemValue(cmbProduct) { 
	return cmbProduct.GetItemObject(cmbProduct.SelectedIndex).ItemValue; 
} 

-콤보 호출(값(100001) --> 콤보) 
ozf_loadMainCombo_RE(cbProj_tm_cd, "All", ""); //콤보 호출 
------------------------------------------------------------------------------------------------------------------------ 

-콤보 함수 
function ozf_loadMainCombo_RE(cmbobj, all_type, p_proj_tm_cd ) {   
	var DataManager = _GetDataManager();  
	var DataModule = DataManager.GetDataModule("HRS_Schedule_Week"); //ODI 이름    
	  
	DataModule.UpdateOZParam("p_proj_tm_cd",  p_proj_tm_cd); 
	var DataSet = DataModule.GetDataSet("WEEKLEY_PJ009", null, true); //DataSet 이름   
	var DataCount = DataSet.GetRowCount(); 
	  
	cmbobj.RemoveAllItem(); 
	if (all_type == "All") {  
	cmbobj.AddItem("전체", "");  
	} else if (all_type == "Blank") { 
	cmbobj.AddItem("", ""); 
	} else if (all_type == "OneSee") { 
	cmbobj.AddItem("---전체---", "0"); 
} 

for(i=0; i<DataCount; i++) { 
	cmbobj.AddItem(DataSet.GetStringData(i, "PROJ_TM_NM"), DataSet.GetStringData(i, "PROJ_TM_CD")); 

	if( p_proj_tm_cd == DataSet.GetStringData(i, "PROJ_TM_CD")) 
	{ 
	if (all_type == "All") {   //전체가 포함 되어 있으면 
	cmbobj.SelectedIndex = i+1; 
	cmbobj.ImageList = i+1;  
	} else { 
	cmbobj.SelectedIndex = i; 
	cmbobj.ImageList = i;  
	}  
	} else if (all_type == "All") {   //전체가 포함 되어 있으면  
	cmbobj.SelectedIndex = 0; 
	cmbobj.ImageList = 0;  
	}  
	}    

} 
------------------------------------------------------------------------------------------------------- 

다. 그룹박스2 안보이기 
gb_2.Visible =false //그룹박스2 안보이기 
txt_Proj_tm_cd2.Visible =false 
txt_Proj_tm_nm2.Visible =false 
txt_RPPName2.Visible =false  
==============================================================================================================

- OZ Query Designer 에서 DB 연결 
오즈데아타트리 --> 데이타베이스(오른쪽 클릭) --> 스토어 추가(I)(새창뜸) -->  
DB 연결 정보 추가  --> 연결정보 
데이터 정보 이름: HRS_smanage 
데이타베이스 벤더 이름: Oracle  
데이타베이스 벤더 드라이버 종류: thin 
데이타베이스 서버 IP 주소: 192.168.0.106 
데이타베이스 서버 포트 번호: 1521 
데이타베이스 서버 이른: DEV2DB ======> SID: DEV2DB 
인코딩셋: KSC5601 
사용자 이름: winitech 
패스워드: winitech00  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.05.16(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 23:30 

- U-대구 ISP
1. 대구시 지자체 공약사항 정리 작성
2. AutoCad 2004 설치(Autodesk Map 2004) 
9층 지적과 허경애 씨에게 빌려서 설치 
==============================================================================================================

1. HR System 주간업무 전체보고 
가. HRS_main.oza 파일에 포함 
- 주간업보고, 주간업무전체보고 
- 공통 함수(HRS_functions.ozf)에 일부 함수 내용 추가  
나. 글로벌 함수 설정 
var g_uid; // 사원번호 
mtxt_id.Text = "Htec-525"; //사원번호 
_SetGlobal("g_uid", mtxt_id.Text); //글로벌 함수 설정  
DataModule.UpdateOZParam("empno", _GetGlobal("g_uid")); //글로벌 함수 받기(사원번호) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.05.17(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 24:40 --> 백두현 팀장, 강이사님과 사무실에서 맥주 한잔 

- U-대구 ISP
1. 대구시 지자체 공약사항 정리 
2. 2011 서비스도출(조사표) 작성 
가. AutoCad 2004 사용법 
1. 대구시전체달성군포함1000인덱스.dwg 파일을 연다  --> 
- 숫자(선) 지우기  
숫자(클릭) --> Command: list(Enter) 
TEXT      Layer: "59"   ====> Layer 번호 확인 --> 왼쪽 위 File 아래, 아래에서 해당 Layer 눈을 감김  
- Layer 생성 
Command: list(Enter): 새창이뜸 --> 
Layer Property Manager: NEW  --> Post1(Layer 명) --> Current 설정 --> OK 
Draw --> Circle  --> center, radius(둥근 원) 
Layer Property Manager: NEW  --> path1(Layer 명) --> Current 설정 --> OK 
Draw --> polyline  --> 그리기 --> 끝냄(클릭) --> Enter(오른쪽 마우스) 
Command: P:Property, C:Change 
Diameter: 지름, radius: 반지름 
==============================================================================================================

- 3단 책꽃이 가지고 와서 배치 
==============================================================================================================

1. HR System 주간업무 전체보고
- 주간보고 디자인 형식 30개 만들기 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.05.18(금) 작업 ■■■■■■■■■■■■■■■■
---> 08:00 ~ 23:00 --> 국채보상 주차장에 처음 주차(30분 소요) 

- U-대구 ISP
1. 서비스도출(조사표) 작성 
박미영 주임에게 '안내지도' 요청 할 것 
==============================================================================================================

- 2011 서비스도출 지역명 
선수촌① --> 메인 스타디움② --> 미디어센터③ --> 공항④ -->  동대구역⑤ 
도심 문화거리⑥ --> 이시아폴리스⑦ --> 두류공원⑧ --> 팔공산 관광지⑨ --> 수성유원지⑩ 
앞산공원⑪ --> 대구수목원⑫ --> 금호강⑬ 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.05.19(토) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 20:00 

- HR System
1. HR System 주간업무 전체보고 ==> 최종 수정 
- 주간보고 디자인 형식 40개 만들기 
- 출력 수정(오토 사이징) 

- NULL 값 체크 조회 
 AND ('#OZParam.p_proj_tm_cd#' IS NULL OR A.PROJ_TM_CD = '#OZParam.p_proj_tm_cd#') 
 AND ('' IS NULL OR A.PROJ_TM_CD = '')  --프로젝트_팀CD 
----------------------------------------------------------------------------- 

가. 테스트 시행 
40개 등록, 수정, 삭제 
----------------------------------------------------------------------------- 

// [콤보 수동 설정 함수] 
function ozf_loadMainCombo_stick(cmbobj, all_type, p_cmbo_cnt ) {    
	cmbobj.RemoveAllItem(); 
	if (all_type == "All") {  
	cmbobj.AddItem("전체", "");  
	} else if (all_type == "Blank") { 
	cmbobj.AddItem("", ""); 
	} 
	var p_cmbo_nm =  "보고자"; var p_cmbo_cd =  "01"; 
	//var p_cmbo_nm2 =  "부서명"; var p_cmbo_cd2 =  "02"; 
	cmbobj.AddItem(p_cmbo_nm, p_cmbo_cd); 
	//cmbobj.AddItem(p_cmbo_nm2, p_cmbo_cd2); 
	cmbobj.SelectedIndex = 0; //전체가 포함 되어 있으면 
	cmbobj.ImageList = i+1;   
} 
==============================================================================================================

 -- 주간업무 정보 조회  @@@ 
SELECT M.SEQ_NO, M.REPORT_DT, N.PROJ_TM_CD, N.PROJ_TM_NM,  
   N.NAME, N.DEPTNAME, M.REG_DT 
FROM 
(SELECT A.SEQ_NO, MAX(A.REPORT_DT) AS REPORT_DT,  
   MAX(A.PROJ_TM_CD) AS PROJ_TM_CD, MAX(D.PROJ_TM_NM) AS PROJ_TM_NM, 
   MAX(C.NAME) AS NAME, MAX(A.REG_DT) AS REG_DT 
FROM PJ007 A, PJ008 B, IF001 C, PJ009 D 
WHERE A.SEQ_NO = B.SEQ_NO  
AND A.EMPNO = C.EMPNO 
AND A.PROJ_TM_CD = D.PROJ_TM_CD 
AND A.USE_YN = 'Y'               -- 사용여부(Y:사용, N:미사용) 
AND A.REPORT_DT >= '20070501' -- 보고일 A.REPORT_DT >= #OZParam.startdate#  
AND A.REPORT_DT <='20070521' -- AND A.REPORT_DT <= #OZParam.enddate# 
AND ('' IS NULL OR A.PROJ_TM_CD = '') --프로젝트_팀CD(100001)   
GROUP BY A.SEQ_NO) M, 
(SELECT A.SEQ_NO, C.DEPTNO, C.NAME, A.PROJ_TM_CD, 
(SELECT PROJ_TM_NM FROM PJ009 WHERE PROJ_TM_CD =  A.PROJ_TM_CD) AS PROJ_TM_NM, 
  (SELECT DEPTNAME FROM IF003 WHERE DEPTNO =  C.DEPTNO) AS DEPTNAME  
FROM PJ007 A, IF001 C   
 WHERE A.EMPNO = C.EMPNO 
     AND A.USE_YN = 'Y'               -- 사용여부(Y:사용, N:미사용) 
       AND A.REPORT_DT >= '20070501' -- 보고일 A.REPORT_DT >= #OZParam.startdate#  
 AND A.REPORT_DT <='20070521' -- AND A.REPORT_DT <= #OZParam.enddate# 
 --AND A.PROJ_TM_CD = '100001'     --프로젝트_팀CD 
 AND ('' IS NULL OR A.PROJ_TM_CD = '') --프로젝트_팀CD 
 -- AND ('' IS NULL OR C.NAME  = '') --보고자명 
) N 
WHERE M.SEQ_NO = N.SEQ_NO 
ORDER BY M.SEQ_NO DESC   
--;  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.05.21(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 

- U-대구 ISP
1. 서비스도출(조사표) 작성 
==============================================================================================================

- 2011 서비스도출 지역명 
선수촌① --> 메인 스타디움② --> 미디어센터③ --> 공항④ -->  동대구역⑤ 
도심 문화거리⑥ --> 이시아폴리스⑦ --> 두류공원⑧ --> 팔공산 관광지⑨ --> 수성유원지⑩ 
앞산공원⑪ --> 대구수목원⑫ --> 금호강⑬ 
==============================================================================================================

1. HR System 주간업무 전체보고  --> 최종 완료 
가. 실서버 등록 방법 
파일(F) --> 레파지토리 열기(O) --> 서버리스트 
서버 추가 -->  
서버이름: winsvr 
종류: HTTP 
URL: http://192.168.0.106:8081/hrs/server  
http://218.158.3.239:8081/hrs/server  
이름: admin 
비밀번호: admin 
http://192.168.0.106:8081/hrs/hrs.htm 
http://218.158.3.239:8081/hrs/hrs.htm 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.05.22(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 23:00 

- U-대구 ISP
1. 2011기초자료_Needs분석 
가. 제안 사항 
팔공산 공원, 도심 거리 활성화(백화점 전략화), 경기장, 선수촌 주변 상설 시장화  
==============================================================================================================

- 파워 포인트 선 추가 
보기(V) --> 마스터(M) --> 슬라이드 마스터(S) --> Ctrl + Shift --> 선을 선택 ===> 복사 됨 
- 파워 포인트 슬라이드 수정 
슬라이드(오른쪽 마우스 클릭)  -->  슬라이드 디자인(D) --> 선택한 슬라이드에 적용(S) 
==============================================================================================================

- 퇴근시 U-대구 제안서 가지고 와서 사장님 드릴 것 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.05.23(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 23:30 

- U-대구 ISP
1. 2011기초자료_Needs분석 
가. 제안 사항 
팔공산 공원, 도심 거리 활성화(백화점 전략화), 경기장, 선수촌 주변 상설 시장화  
홍보(전통장터, 한약재), 장사(상인 연합), 전통문화 가상 박물관 
주요 POST 수: 12개  
-------------------------------------------------------------------------------------------- 

- 2011 서비스도출 지역명 
선수촌① --> 메인 스타디움② --> 미디어센터③ --> 공항④ -->  동대구역⑤ 
금호강⑥ --> 이시아폴리스⑦ --> 팔공산 관광지원⑧ --> 도심 문화거리⑨ --> 수성유원지⑩ 
앞산공원⑪ --> 대구수목원⑫ --> 두류공원⑬  
==============================================================================================================

- 임용호 부장님 부탁 
내일 아침 출근과 동시에 정보통신과장님 자리에 서류 갖다 줄 것 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.05.24(목) 작업 ■■■■■■■■■■■■■■■■
---> 08:10 ~ 19:00  --> 석가탄신일(공휴일), 풋살(차호진: 비), 병원 치료(귀 치료: 5일치 약, 연고(6번째)) 

- U-대구 ISP
1. 2011기초자료_Needs분석 
마무리 작업 
==============================================================================================================

1. HR System 주간업무 보고 출력 수정
- 업무 실적명(왼쪽 레이블) 자동으로 안 늘어남 
--> 업무 실적명을 위쪽으로 옮김 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.05.25(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 23:00 

- U-대구 ISP
1. 2011기초자료_Needs분석  
-------------------------------------------------------------------------------------------- 

- IT용어 
MEMS(Micro Electro-Mechanical System): 전자기계 소자(素子)를 육안으로는 보이지 않을 정도로  
작은, 즉 수 ㎜에서 수 ㎛(1㎛는 100만분의 1m)의 크기로 제작하는 기술  
VR(virtual reality): 가상현실, 어떤 특정한 환경이나 상황을 컴퓨터로 만들어서, 그것을 사용하는 사람이 마치  
실제 주변 상황·환경과 상호작용을 하고 있는 것처럼 만들어 주는 인간-컴퓨터 사이의 인터페이스를 말한다. 
인공현실(artficial reality), 사이버 공간(cyberspace), 가상세계(virtual worlds), 가상환경(virtual environment),  
합성환경(synthetic environment), 인공환경(artificial environment) 등이라고도 한다. 
HSDPA(High Speed Downlink Packet Access): 고속하향패킷접속을 통해 3세대 이동통신 기술인 W-CDMA나  
CDMA보다 훨씬 빠른 속도로 데이터를 주고 받을 수 있는 3.5세대 이동통신방식이다.  
메시 네트워크(mesh network): 광대역 데이터 전송과 휴대폰 이동성을 결합한 차세대 무선 네트워크 기술로,  
접속장치(AP)당 무선접속 거리가 수㎞로 기존 무선랜(50∼200m)에 비해 월등하다. 멀티 호핑이나 무선 중계기를  
활용하면 접속 영역을 더욱 확장할 수도 있다. 
ZigBee: 저전력, 저가격, 사용의 편리성을 가진 근거리 무선네트워크의 대표적 기술 중의 하나로  
IEEE 802.15.4 표준의 PHY층과 MAC층을 기반으로 상위 프로토콜 (Protocal)과 응용을 규격화한 기술로  
원격제어 및 관리의 응용에 적합한 홈 오토메이션 등의 적용되며, 유비쿼터스 센서 네트워크 환경  
구축에 중추적 역할을 담당할 기술이다. 
UWB(Ultra WideBand): 단거리 구간에서 낮은 전력으로 넓은 스펙트럼 주파수를 통해 많은 양의  
디지털 데이터를 전송하기 위한 무선기술로 GHz대의 주파수를 사용하면서도 초당 수천∼수백만  
회의 저출력 펄스로 이루어진 것이 큰 특색이다. 초고속 인터넷 접속, 레이더 기능, 전파탐지기  
기능 등 응용범위가 광범위하다. 
Information Beacon: 무선 표지 
FTTx(Fiber To The x): 전화국으로부터 광섬유가 도달되는 지점, 구역, 장비 또는 서비스를 의미하는 광 가입자망의  
포괄적인 표현. 광 가입자망의 궁극적인 목표는 가정이나 댁내 장치에까지 광섬유가 개별적으로 공급되는  
파이버 투 더 홈(FTTH), 또는 파이버 투 더 프레미스(FTTP)이나 막대한 투자가 소요되므로 경우에 따라  
보완적인 각종 방식이 등장하고 있다. 파이버 투 더 존(FTTZ)은 FTTH 수준의 서비스를 제공하는 지역을 의미하는  
것으로 FTTH에 추가하여 FTTN(fiber to the neighborhood)으로서 광섬유, 동축 케이블, 동선, 비차폐 연선(UTP),  
무선 등 기존의 광대역 방식을 최대한 활용한다는 개념이다. 파이버 투 더 커브(FTTC)나 파이버 투 더 캐비닛(FTTC),  
파이버 투 더 노드(FTTN)는 가입자 지역 전신주나 지하에 설치된 함체까지 광섬유를 포설하는 방식을 말한다.  
파이버 투 더 오피스(FTTO), 파이버 투 더빌딩(FTTB) 등은 기업이나 아파트 건물까지 광섬유가 포설되고,  
그 이후는 기존의 방식으로 연결되는 것을 의미한다. 
LBS(Location Based Service): 위치기반시스템, 이동통신망이나 위성항법장치(GPS) 등을 통해 얻은  
위치정보를 바탕으로 이용자에게 여러 가지 서비스를 제공하는 서비스 시스템. 
VMS(Variable Message Service): 도로 및 교통상황 정보를 제공하는 가변전광판. 
FMS(Facility Management System): 시설물 관리. 
DMC(Digital Media City): 디지털미디어시티, 마포구 상암동의 17만평 부지위에 최첨단 정보·미디어 산업단지를  
조성하는 사업. 동영상이 실시간으로 전송되는 초고속 광통신망을 단지내에 구축하여 소프트웨어, 멀티미디어  
분야의 국내외 유수 기업들과 여의도 방송가와 연계된 미디어 프로덕션센터, 인터넷 디지털위성방송 사업자,  
컨벤션·전시판매 기능을 갖춘 첨단산업단지로 특화하려는 사업이다. 
SPC(Statistical Process Control): 통계적 공정관리, 공정에서 요구되는 품질이나 생산성 목표를 달성하기 위하여  
PDCA 사이클을 돌려가면서 통계적 방법으로 공정을 효율적으로 운영해 나가는 관리방법을 말한다. 
SPC(Special Purpose Company): 민관합작 특수목적 회사. 
UIS(Urban Information System): 도시기반정보시스템.  
소프트인프라웨어: IT839전략의 3대 인프라 중 하나로 소프트웨어(Software) + 인프라(Infra)의 합성어. 소프트웨어가  
유비쿼터스, 컨버전스 사회의 핵심 인프라 역할을 한다는 뜻. 
TTS(Text Tto Speech): TTS(text to speech: 텍스트를 음성 사운드로 전환하는 서비스. 
시각동기화 시스템: 재난 발생 시각, 출동 시각, 방송시각과 같은 시각을 기준으로 한 통계 및 데이터 조회가  
필수적인 119 상황정보표준시스템의 특성상 방송서버, 지령서버 등 분업화되어 있는 각 서버의 시각  
동기화가 필수적입니다. 
MMS(SMultimedia Messaging Service): 정지영상을 비롯, 음악 및 음성 그리고 동영상 등 다양한 형식의 데이터를  
상대편에게 송부하는 동시에 검색할 수 있는 메시징 시스템.  
보이스메시징시스템(VMS)·통합메시징시스템(UMS) 등 기존 시스템이 제공하는 메시지 송수신 기능을 모두 갖추고  
있으면서 동영상과 같은 대용량 데이터 송수신을 지원한다.  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.05.26(토) 작업 ■■■■■■■■■■■■■■■■
---> 09:00 ~ 19:00 --> 격주 휴무 

- U-대구 ISP
1. 세계육상선수권대회 결과 보고서 수정 
각 주체별 Needs 세부 분석 작성(메트릭스) 
============================================================================================================== 

- 요일 세팅(OZ)
var NowDate_real = oz_getMonday(NowDate);    //월요일로 자동 설정 함수 세팅  =============>  
dtp_ReportDt.Value = NowDate_real.substring(0,4) +"-"+ NowDate_real.substring(4,6)  
+"-"+ NowDate_real.substring(6,8); //보고일자   

//[월요일로 자동 설정 함수] 
function oz_getMonday(NowDate) 
{ 
var p_weekDate = _GetSystemTime.GetDayOfWeek();    //요일 
var int_year = parseInt(NowDate.substring(0,4));    //년 
var int_month = parseInt(NowDate.substring(4,6));  //월 
var int_day = parseInt(NowDate.substring(6,8)); //일 

if(p_weekDate == "1") //일요일 이면 
{  
p_pluse_date = 1; 
} else if(p_weekDate == "3") //화요일 이면 
{  
p_pluse_date = 6; 
} 
ar p_total_day = int_day + p_pluse_date;   //일 

if( int_month < 10 ) //월이 한 자리 수이면 
{ 
p_last_month = "0"+ int_month; 
 } else { 
p_last_month = ""+ int_day; 
 } 
 if( int_day < 10 ) //일이 한 자리 수이면 
{ 
p_last_day = "0"+ int_day; 
} else { 
p_last_day = ""+ int_day; 
} 
dtp_ReportDt_ori = int_year +""+ p_last_month +""+ p_last_day; 
return dtp_ReportDt_ori; 
}  
-------------------------------------------------------------------------------------------- 

var strDate = "20070526";    //===> DateTimePicker 

var sysTime = _GetSystemTime(); 
var year = strDate.substr(0, 4); 
var month = strDate.substr(4, 2); 
var day = strDate.substr(6, 2); 
     
sysTime.SetDate(year, month, day); 

if(sysTime.GetDateTime("MM") == "Unknown system time"  sysTime.GetDateTime("MM") != month) 
{ 
    _MessageBox("None Week"); 
} 

var week = sysTime.GetDateTime("EE"); 

if(week == "일"){ 
    _MessageBox("It´s Sunday."); 
}else if(week == "월"){ 
    _MessageBox("It´s Monday."); 
}else if(week == "화"){ 
    _MessageBox("It´s Tuesday."); 
}else if(week == "수"){ 
    _MessageBox("It´s Wednesday."); 
}else if(week == "목"){ 
    _MessageBox("It´s Thursday."); 
}else if(week == "금"){ 
    _MessageBox("It´s Friday."); 
}else if(week == "토"){ 
    _MessageBox("It´s Saturday."); 
}  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.05.28(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 23:00 

- U-대구 ISP
 1. 세계육상선수권대회 결과 보고서 수정  
Ubiquitous 관련 자문위원: 김수봉 교수, 허창식 교수 
제11회 세계선수권대회: 일본 오사카 --> 2007.08.24(화) ~ 09.02(일)  
-------------------------------------------------------------------------------------------------------------------- 

- 통섭이론 
통섭이론: 지식의 대통합 
http://cafe.naver.com/holyspiritgod.cafe?iframe_url=/ArticleRead.nhn%3Farticleid=25895 
where2.0은 지리 정보와 시맨틱웹을 연동하는 새로운 시도를 살펴 보고자 하는 시도 
구글 맵스는 웹2.0의 최대 화두인 플랫폼간 혼합 서비스인 매쉬업(Mash-up)이라는 용어를 탄생 시킬 만큼  
큰 반향을 불러 일으켰을 뿐 아니라 가장 많은 매쉬업 사례를 가지고 있기도 하다.  
이 이러니 MSN과 야후! 같은 경쟁사들도 전 세계 위성 사진과 지도 서비스 그리고 공개 API를 잇달아 선 보이면서  
뒤를 따르고 있는 실정이다. 이 때, 지난달 산호세에서 열린 웨어2.0(Where2.0) 컨퍼런스에서는 인터넷 지리 정보  
서비스를 가늠해 볼 수 있는 좋은 계기가 되었다.  
1) 데이터 시각화(Data Visualization): 2D 및 3D 지도 서비스와 데이터가 유저 인터페이스가 급격한 혁신을  
이루고 있다.  
2) 사회적 위치 정보의 출현: 사용자들이 직접 지역 정보와 위치 정보를 결합하는 데 익숙해 지기 시작했다.  
3) 공개 표준의 대두: 위치 정보 표시를 위한 공개 표준 포맷 및 지도 서비스에 대한 API 제공 등이 이루어  
지고 있다.  
4) 데스크톱으로 이동: 웹 브라우저가 표현 할 수 없는 고도의 데이터는 데스크톱 S/W를 이용하기 시작했으며  
인터넷과 연동도 쉽게 되고 있다.  
5) 광범위한 위치 인식: GPS, RFID 기술과 이를 이용하는 다양한 단말기기를 통해 위치 정보와 시간 및 지역  
정보의 결합이 더욱 쉽게 되고 있다.   
Mash up: 웹2.0의 최대 화두인 플랫폼간 혼합 서비스  
============================================================================================================== 

■■■■■■■■■■■■■■■■■■ 2007.05.29(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:00  --> U-대구 착수보고회 

- U-대구 ISP
1. U-대구 ISP 착수보고회 
- 착수보고 문서 수정 작업(남계장) 
- 회의록 작성(상세하게) 
----------------------------------------------- 
lucida sans 굵게 사용권 제한  
============================================================================================================== 
  
- U-대구 ISP 착수보고회
1. U-대구 ISP 착수보고회  
가. 일시: 2007.5.29(화) 16:00 ~ 15:40 
나. 장소: 시청 2층 회의실 
다. 발표자: 신택균 부장 
라. 참가자: 대구 행정부시장, 국장, 과장, 기타 관련자 
----------------------------------------------------------------- 
07:30 출근 
08:30 착수보고 문서 수정 작업(남계장) 
11:00 착수보고 문서 칼라 출력 넘김 
15:30 2층 회의실(신부장) 
16:10 착수보고회 발표((주)위니텍 강은희 사장님) 
16:50 토론(정보통신팀 정익재 팀장 주제, 행정 부시장님 참석) 
17:40 종료 
18:20 부일 횟집  
20:00 종료 
20:10 귀가(박한철 부장님 차) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.05.30(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 23:00  --> 버스 출근(시청:521번, 651번) 

- U-대구 ISP
1. U-대구 ISP 착수보고회 정리 
- 회의록 작성 마무리(정리)  ==> 회사 차(클릭)에서 테이프 다시 들음 
1. 회의록(외부용)-002-20070529-V1.0.doc 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.05.31(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:20  --> 풋살(캐논 2회 대회: C조 3위(1무 1패)) 

- U-대구 ISP
1. U-시티 참고 자료 분석
 타시도 u-시티 진행현황 분석 
============================================================================================================== 

- html 출력 길이 조절 
파일(F) -> 페이지 설정(U) --> 여백(밀리미터) 
왼쪽(L): 1 오른쪽(R):1 
==============================================================================================================

- 캐논 2회 대회 
A조 4: C조 3 --> 2골 넣음 
B조 1: C조 1 --> 1골 넣음 
A조 2: B조 3 --> A조 골기퍼 봐 줌 
-------------------------------------------- 
B조 우승(상금 5만원) 
C조 ===> 1무 1패(3위) 
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■