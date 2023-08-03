

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2014.02) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2014.02.03(월) 작업 ■■■■■■■■■■■■■■■
---> 07:30 ~ 21:00 -->   

- 대우증권 인도네시아법인 홈페이지 재구축 Prj
- Space for Export 개발 
1. Space for Expert Management Home(/spceExpertAdminHome.jsp) 개발 ==>  
==> /hmpg/stkCm/spceExpt/spceExpertAdminHome.do  
==============================================================================================================
  
- 배너(심대리 개발)
http://localhost:8080/mgr/bannerMgmt/contentsBannerMain.do  
/BannerMgmtController.java, /contents_banner.jsp 
==============================================================================================================

- Space for Export 개발 
1. Space for Expert 메인(/spceExptMain.jsp) 개발  ==> 완료  
==> /hmpg/stkCm/spceExpt/spceExptMain.do 

2. Space for Expert Profile(/spceExptMainProf.jsp) 개발  ==> 완료 
==> /hmpg/stkCm/spceExpt/spceExptMainProf.do 

3. Space for Expert Information(/spceExptMainInfo.jsp) 개발   ==>  완료 
==> /hmpg/stkCm/spceExpt/spceExptMainInfo.do 

4. Space for Expert Profile Mgmt(/spceExptMainProfMgmt.jsp) 개발   ==> 완료 
==> /hmpg/stkCm/spceExpt/spceExptMainProfMgmt.do 

5. Space for Expert Profile Mgmt(/spceExptMainlDtlR.jsp) 개발   ==> 완료  
==> /hmpg/stkCm/spceExpt/spceExptMainlDtlR.do 

6. Space for Expert Infomation(/spceExptMainInfo.jsp) 개발   ==>    
==> /hmpg/stkCm/spceExpt/spceExptMainInfo.do 

7. Space for Expert Reg(/spceExptMgmtExpertReg.jsp) 개발 ==> admin   
==> /mgr/spceExptMgmt/spceExptMgmtExpertReg.jsp, /SampleBbsController.java 

8. Space for Expert List(/spceExptMgmtExperListR.jsp) 개발 ==> admin   
http://localhost:8080/mgr/spceExptMgmt/spceExptMgmtExperListR.do 
==============================================================================================================

- AP 소스 
1. MGM pgmRank 페이지(/hmpg/myPage/mgmMgmt/pgmRank.do) 
/MgmtController.java, /hmpg/myPage/mgmMgmt/evntPstat.jsp 
==============================================================================================================

- 보안 프로그램 설치 
1. mirage 삭제 
mirage / 미라지12# 
2. swork 설치 
1 ) swork 프로그램(160.10.181.68/sw2.0_IT센터.exe) 로컬에 다운로드   
 2) 로그인: dws_dev / system00@# 
3. 로그인 
dws_dev / system00@# 
-------------------------------------------------------------------------------------------------------- 
  
- mirage 설치 
http://10.110.9.141/profile.aspx --> s0130418(김용설 부장) / dsw4004# 
s0140003(진태만) / dws4004!  
==============================================================================================================

- 1월 식대, 택시비 결제 요청 
1. (주)JTREE 김용설 부장에게 내역서 출력해서 본사에 요청(50,300원) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.02.04(화) 작업 ■■■■■■■■■■■■■■■ 
---> 07:30 ~ 21:00 

- 대우증권 인도네시아법인 홈페이지 재구축 Prj
- Space for Export 개발 
1. Space for Expert Management Home(/spceExpertAdminHome.jsp) 개발 ==>  
==> /hmpg/stkCm/spceExpt/spceExpertAdminHome.do  
Space for Export Management Home 수정: /spceExpertAdminHomeU.do 
==============================================================================================================
  
- 배너(심대리 개발):   
http://localhost:8080/mgr/bannerMgmt/contentsBannerMain.do  
/BannerMgmtController.java, /contents_banner.jsp 
 Banner 입력 및 수정: /mgr/bannerMgmt/contentsBannerCU.do   
==============================================================================================================
  
- 자유게시판 목록 조회( 다중 업로드) 
1. /lbrtyBbsListRM.do ==> http://localhost:8080/manage/edu/lbrtyBbsListRM.do 
2. /lbrtyBbsRegistCM.do ==> http://localhost:8080/manage/edu/lbrtyBbsRegistCM.do 
==============================================================================================================

- 다중 업로드(MultipartFile) 
1. JSP 다중 업로드 소스(MultipartRequest 사용) 
http://kamsi76.egloos.com/361961 
http://blog.daum.net/oraclejava/15870483 
http://blog.naver.com/PostView.nhn?blogId=lsv400&logNo=100132978423  
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2014.02.05(수) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 21:00  

- 대우증권 인도네시아법인 홈페이지 재구축 Prj
- Space for Export 개발 
1. Space for Expert Management Home(/spceExpertAdminHome.jsp) 개발 ==> 완료 
==> /hmpg/stkCm/spceExpt/spceExpertAdminHome.do  
Space for Export Management Home 수정: /spceExpertAdminHomeU.do 
-------------------------------------------------------------------------------------------------------- 

- 자유게시판 목록 조회(다중 업로드) 
1. /lbrtyBbsListRM.do ==> http://localhost:8080/manage/edu/lbrtyBbsListRM.do 
2. /lbrtyBbsRegistCM.do ==> http://localhost:8080/manage/edu/lbrtyBbsRegistCM.do  ==> Multipartfile 저장 
==============================================================================================================

- 오늘 날짜(java 에서) 
String strOrd_date = new SimpleDateFormat("yyyyMMdd").format(new Date());  // 조회주문일자((오늘일자)) ==> 입력(필수) 
logger.debug("[/SpceExptController.java] [spceExptMainInfo()] [strOrd_date]"+ strOrd_date );  
==============================================================================================================
  
- 로그 찍기(log) 
System.out.println("[/test.java] [test()] [user_id]"+ user_id );  
logger.debug("[/test.java] [test()] [user_id]"+ user_id );  

// out.println("[/spceExpertAdminHome.jsp] [test] <br>");     ===> jsp에서 
// out.println("[/spceExptMainDtlR.jsp] [forumId]"+ request.getParameter("forumId") +"[blbdClasNm]"+ request.getParameter("blbdClasNm") +"<br>");  
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2014.02.06(목) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 21:00  

- 대우증권 인도네시아법인 홈페이지 재구축 Prj
- Space for Export 개발 
7. Space for Expert Mgmt Expert Reg(/spceExptMgmtExpertReg.jsp) 개발  ==> 완료 
==> /hmpg/stkCm/spceExpt/spceExptMgmtExpertReg.do 
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2014.02.07(금) 작업 ■■■■■■■■■■■■■■■
---> 07:20 ~ 19:00 

- 대우증권 인도네시아법인 홈페이지 재구축 Prj
- Space for Export 개발 
1. 전체 수정 
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2014.02.08(토) 작업 ■■■■■■■■■■■■■■■     
---> 09:00 ~ 18:00   

- 주말 
08:50 기상   
09:00 조식(라면) 
09:10 연세에이플러스 치과 방문 
10:10 LG A/S 기사 방문(LG TV: 다음주 화요일에 스피커 교체 해준다고 함, LG 김치냉장고: 내주 컴프레서 돌아가는 
소리이며 정상이라고 함) 
10:50 종료 
11:50 집출발(서울대입구역 -> 역삼역) 
12:40 영민이형 아들 결혼식장(헤리츠 2층 아그니스홀[7호선 학동역 3번 출구)] 
12:50 중식(영민이형 둘째 아들 봄 ==> 루옌 마음에 안 들어 함) 
15:00 종료 
15:20 예식장 출발(학동역 -> 논현역 -> 교보서적 -> 강남역) 
16:00 서울대입구역 도착(라붐 아울렛 -> 서울대입구역 7번 출구 가게[원피스(6만원) 구입] 
17:00 귀가 
18:00 석식 
23:50 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.02.09(일) 작업 ■■■■■■■■■■■■■■■
---> 09:00 ~ 18:00 

▦조기축구   
07:00 기상   
07:40 국민은행 봉천동지점 앞(태훈이형 차) 
08:00 신구초등학교(눈 쌓여 있음) 
08:15 제설 작업(넉가레로 운동장 눈 다 치움) 
09:30 숏게임(2:1 패) 
10:00 고사 지냄   
11:00 08:15 숏게임(2:1 승)   
11:40 08:15 종료 
11:30 중식(국밥, 뚝심한우식당): 영민이형이 아들 결혼 기념으로 쏨 
14:30 종료  
15:20 귀가(버스) 
17:00 장보기  
17:40 귀가 
18:30 석식 
23:50 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.02.10(월) 작업 ■■■■■■■■■■■■■■■
---> 07:50 ~ 21:00  

- 대우증권 인도네시아법인 홈페이지 재구축 Prj
- Space for Export 개발 
1. 전체 수정 
==============================================================================================================

7. Space for Expert Mgmt Expert Reg(/spceExptMgmtExpertReg.jsp) 개발(AP:A21OI02)    ==> 완료 
==> /hmpg/stkCm/spceExpt/spceExptMgmtExpertReg.do 
==> /CmmnTrServiceImpl.java 파일 ==> public A11OU26Vo signup(A11OU26Vo vo) throws Exception {} 
==============================================================================================================

- IP관리시스템 
사용자 인증이 필요 ==> 사원ID(s0140003) 로그인 후 없어짐 
==============================================================================================================

- 개발서버 로그인 에러 문의 
1. 현상: 개발서버(http://dev.dwsec-id.com)에서 로그인(http://dev.dwsec-id.com/login.do)을 하면  
인증서를 받아와야하는데 받아오지 못하고 makecert.exe 오류(makecert.exe returned -1)가 뜸. 
 1) C:\Users\s0130418\AppData\Roaming\Microsoft\Crypto\RSA 에서 인증서가 생성되지만 
정확하게 받아오지 못하고 makecert.exe 오류가 뜸. 
3. 원인: 초기에 개발이 급하다고 김용설 부장 개인 ID(s0130418)를 사용하면서 문제가 생긴 것으로 추정됨.  
==============================================================================================================
   
■■■■■■■■■■■■■■■■■■ 2014.02.11(화) 작업 ■■■■■■■■■■■■■■■ 
---> 07:30 ~ 19:00  

- 대우증권 인도네시아법인 홈페이지 재구축 Prj
- Space for Export 개발 
1. Export 로그인 설정  
 1) 역할ID(00401001:비회원, 00402001:준회원, 00403001:정회원, 00499001:직원) 
 2) /CmmnTrController.java 파일에서 
public @ResponseBody String loginTR( 
SpceExptVo expxInfoVo = spceExptService.selectSpceExpxInfo(spceExptVo); 
// Space for Expert Expert Info 조회(Left 화면: Expert 정보 Display) 

a31OI01Vo.setMembId("00403"); // 정회원 설정 

if(expxInfoVo != null && !"".equals(expxInfoVo.getExptId())) {  // Export 
//a31OI01Vo.setMembId("00404"); // Export 설정 
a31OI01Vo.setIsExpertYn("Y");   // Expert 여부    
logger.debug("[/CmmnTrController.java] [loginTR()] [정회원_Export]");  
} 
} 
==============================================================================================================

- ERWIN : nsm 파일 작성 (Physical Column 명 관리) 
1. http://blog.naver.com/sfdevil67?Redirect=Log&logNo=20196643697 
2. http://cafe.naver.com/soltronix/37 
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2014.02.12(수) 작업 ■■■■■■■■■■■■■■■
---> 07:30 ~ 21:00 --> 통합 테스트 

- 대우증권 인도네시아법인 홈페이지 재구축 Prj
- Space for Export 개발 
1. DB ERD 수정(nsm 용어 사전에 맞게 Table 필드 수정) 
==============================================================================================================

- Oracle squence 등록(날짜 순) 
-- 91-2. Space for Expert Mgmt Forum 등록(insertSpceExptMgmtForum() --> /spceExptMgmtExpertReg.do)   
INSERT INTO TB_FORUM_MGMT (   
FORUM_ID, /* 포럼 ID */ 
FORUM_NM, /* 포럼 명  */   
FORUM_EXPL, /* 포럼 설명  */   
USE_YN, /* 사용 여부 */    
FORUM_REG_CST, /* 포럼 등록 비용 */   
FORUM_STRT_DAY, /* 포럼 시작 일 */ 
FORUM_XPR_DAY, /* 포럼 만료 일  */  
REG_MN_ID, /* 등록자 ID */  
REG_DT, /* 등록 일시 */  
UPDT_MN_ID, /* 수정자 ID */  
UPDT_DT  /* 수정 일시 */  
) 
VALUES(  
-- #{forumId, jdbcType=VARCHAR}   /* 포럼 ID */  ==> 201402120001(20140212 + 0001) 
( SELECT  --F.FORUM_ID AS "FORUM_ID[TB_FORUM_MGMT]" 
--, D.FORUM_ID AS "FORUM_ID[SYSDATE]" 
CASE 
    WHEN D.FORUM_ID = F.FORUM_ID THEN TO_CHAR(TO_NUMBER(D.FORUM_ID)+1) 
    ELSE TO_CHAR(TO_NUMBER(D.FORUM_ID)) 
END as forumId   /* 포럼 ID */ 
FROM 
( 
    SELECT 
TO_CHAR(SYSDATE, 'YYYYMMDD')  '0001' as FORUM_ID 
    FROM 
DUAL  
) D, 
TB_FORUM_MGMT F 
WHERE 
D.FORUM_ID = F.FORUM_ID(+))  /* 포럼 ID */     
, 'Welcome!!_02' /* 포럼 명  */   
, ''       /* 포럼 설명  */   
, 'Y' /* 사용 여부  */   
,  90000 /* 포럼 등록비  */   
, SYSDATE /* 포럼 시작 일 */  
, NULL /* 포럼 시작 일 */ 
, 'TEST' /* 등록자 ID  */   
, SYSDATE /* 등록 일시 */  
, 'TEST' /* 수정자 ID */ 
, SYSDATE /* 수정 일시 */    
)  
; 

SELECT TO_CHAR(SYSDATE, 'YYYYMMDD')  '-' '0001' FROM DAUL; 
SELECT TO_CHAR(SYSDATE, 'YYYYMMDD')  '-' LPAD(maxNum+1, 4, '0') FROM DAUL; 
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2014.02.13(목) 작업 ■■■■■■■■■■■■■■■
---> 07:30 ~ 18:00 

- 대우증권 인도네시아법인 홈페이지 재구축 Prj
- Space for Export 개발 
1. 전체 수정 
==============================================================================================================

- Space for Export 추가 요청 사항 --> 김윤진 차장 
1. 포럼당 1개의 expert 확장 가능하게 수정 
2. TB_BLBD_MSTR(게시판 마스트 정보)    
 1) master 역할(정회원, 직원)코드 추가 
3. 게시판 10개 이상 확정성 없음 
==> 결론: 사내 게시판 만들어 주기로 함(2월 28일(금) 철수로 다시 결정 남) 
==============================================================================================================

- 인수인계 받기 
1. 심대리: 관리자 
2. 조대리: Space for Export 
==============================================================================================================
  
<!--// Space for Expert Expert Info 조회  //-->  
<!-- <select id="selectSpceExpxInfo" parameterType="spceExptVo" resultType="spceExptVo">   
SELECT  RPST_IMG_NM       AS forumImgFileNm  
, RPST_IMG_ORI_NM     AS forumImgFileOriNm   
, PRFL_PIC_NM       AS profImgFileNm  
, PRFL_PIC_ORI_NM     AS profImgFileOriNm   
, EXPERT_NM AS exptNm 
, EXPERT_ID AS exptId 
, EXPERT_GRAD AS exptGrade 
, DECODE(EXPERT_GRAD, 'T', 'trader', 'A', '') AS exptGradeNm 
, INTR_MSG AS introductionMsg  
FROM TB_FORUM_EXPERT_INFO  
WHERE EXPERT_ID = #{exptId, jdbcType=VARCHAR}  /* 전문가ID */ 
</select> --> 
==============================================================================================================

- 개발 서버 빌드 방법 @@@@@@ 
[extuser@IWD01I ~]$ ls  
[extuser@IWD01I ~]$ su - wadmin ==> 관리자 ID 입력 @@@ 
Password: devwn01 ==> 비밀번호 입력 @@@ 
[wadmin@IWD01I ~]: ls 
ROOT.bak/  backup/  bin/  download/  leo/  lost+found/  pds/  scs/  svn/  svnlog2.xml  temp/  test/  trbuilder/  wapps/  wdocs/  wdocs_20140104/ 
[wadmin@IWD01I ~]: cd /usr/share/ant ==> ant 경로 입력 @@@ 
[wadmin@IWD01I /usr/share/ant]: tstop ==> 서버 stop @@@ 
Using CATALINA_BASE:   /usr/share/tomcat 
Using CATALINA_HOME:   /usr/share/tomcat 
Using CATALINA_TMPDIR: /usr/share/tomcat/temp 
Using JRE_HOME:        /usr 
Using CLASSPATH:       /usr/share/tomcat/bin/bootstrap.jar:/usr/share/tomcat/bin/tomcat-juli.jar 
[wadmin@IWD01I /usr/share/ant]: ant ==> 서버 빌드 @@@ 
Buildfile: build.xml 

cleanall: 
   [delete] Deleting directory /dwsid/wapps/ROOT 
   [delete] Deleting directory /dwsid/wdocs 

checkout: 
      [svn] Deprecated attribute 'javahl'. This attribute will disappear with SVNANT 1.3.2. Use svnSetting instead. 
      [svn] Deprecated attribute 'username'. This attribute will disappear with SVNANT 1.3.2. Use svnSetting instead. 
      [svn] Deprecated attribute 'password'. This attribute will disappear with SVNANT 1.3.2. Use svnSetting instead. 
      [svn] Deprecated attribute 'svnkit'. This attribute will disappear with SVNANT 1.3.2. Use svnSetting instead. 

init: 
     [copy] Copying 3642 files to /dwsid/wdocs 
     [copy] Copied 215 empty directories to 53 empty directories under /dwsid/wdocs 
     [copy] Copying 360 files to /dwsid/wapps/ROOT 
     [copy] Copied 122 empty directories to 44 empty directories under /dwsid/wapps/ROOT 
     [copy] Copying 516 files to /dwsid/wapps/ROOT/WEB-INF/src 
     [copy] Copied 153 empty directories to 14 empty directories under /dwsid/wapps/ROOT/WEB-INF/src 
     [copy] Copying 50 files to /dwsid/wapps/ROOT/WEB-INF/classes 
     [copy] Copying 5 files to /dwsid/wapps/ROOT/WEB-INF/classes 

build-project: 
     [echo] kdbdw: /usr/share/ant/build.xml 
    [javac] Compiling 414 source files to /dwsid/wapps/ROOT/WEB-INF/classes 
    [javac] Note: Some input files use unchecked or unsafe operations. 
    [javac] Note: Recompile with -Xlint:unchecked for details. 

clean: 
   [delete] Deleting directory /usr/share/ant/checkout_source 

build: 

BUILD SUCCESSFUL 

[wadmin@IWD01I /usr/share/ant]: tstart ==> 서버 start @@@ 
[wadmin@IWD01I /usr/share/ant]: tlog ==> 서버 로그 분석 @@@ 
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2014.02.14() 작업 ■■■■■■■■■■■■■■■
---> 07:20 ~ 24:50 --> 소스 운영에 반영(moble jsp파일이 에러가 나서 조차장이 고생함) 

- 대우증권 인도네시아법인 홈페이지 재구축 Prj
- Space for Export 개발 
1. Panel Name 대소문자 수정: insertSpceExptMgMembRole 
2. 회원 역할 정보 등록 수정: selectSpceExptExpertPanelName 
==============================================================================================================

- Space for Export 메뉴 query 정리 
V:\A3.자료실\DB\Space for Export 메뉴 query 
==============================================================================================================

- Apply Expert Forum(/spceExpertMainApply02.do) 수정 
==> T61OU27.java 
==============================================================================================================

- Space for Expert Reg(/spceExptMgmtExpertReg.jsp) 화면 수정 
==> /mgr/spceExptMgmt/spceExptMgmtExpertReg.jsp 
==============================================================================================================
  
- SMS Push 개발(실서버 확인 안 해봤음) 
1. ttile(제목) 길이 확인할 것(/spceExpertAdminPush.dp) 
==============================================================================================================

- 개발자 회의 
1. 오늘 개발자 철수 
 1) 인수인계, 운영 소스 반영 확인(18시) 
2. 2월 16일(일) 14시 운영 소스 수정 사항 확인 
==============================================================================================================
  
- VM 로그인  
1. VM 로그인(김용설 부장) --> IP: 10.110.43.236 -> s0130418 / dsw4004#   
1. VM 로그인(조성우 대리) --> IP: 10.110.43.236 -> s0140010 / dws4004@ 
==============================================================================================================

- 자유게시판 목록 조회( 다중 업로드) 
1. /SampleBbsController.java  ==> http://localhost:8080/manage/edu/lbrtyBbsListRM.do 
2. /SampleBbsController.java  ==> http://localhost:8080/manage/edu/lbrtyBbsRegistCM.do 
==============================================================================================================

- ERwin 테이블 생성 스크립트, 코멘트 추가 
1. ERwin 화면 > Physical로 변환 
2. Tools > Forward Engineer > Schema Generation > Forward Engineer Schema Generation[새창] 
1) Option Set:  Default Schema Generation : Save(향후 Open해서 사용) 
2) Options: Sehema 
3) Table Filter: 36/36  ===> Preview(DB 무관 가능) or Generation(DB 연결 되어야 만 됨) 
-----------------------------------------------------------------------------------------  

- ERwin 테이블 생성 스크립트, 코멘트 추가(참조) 
1. Database > Pre & Post Scripts > Model-Level을 선택한다.  
New 로 생성후 Code 탭에서 아래 스크립트 입력  
2. 테이블과 제약조건 , 인덱스는 Tools의 첫번째 메뉴에서 생성 하고,  
코멘트 스크립트는 Tools > alter Script/Schema Generation :  Option  Comment 확인 후 생성 
3. Reverse 로 한 모델에 Properties 가져오려면 논리명을 설정한 comment 를 통해서 할 수 있음.  
Database > Pre&Post Scripts > Table-Level 
Domains Default 에서 NameInherited by Attribute > %ColumnComment 정의로 처리 
-----------------------------------------------------------------------------------------  

- 행정 정보 용어 사전 
1. http://lugenzhe.blog.me/90185306361 
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2014.02.15(토) 작업 ■■■■■■■■■■■■■■■     
---> 09:00 ~ 18:00   

- 주말 
08:40 기상 
08:50 발렌타인데이 선물 받음(초코렛 세트: 루옌이 선물) 
09:30 모태소아과(예방접종): 대기 20명 ==> 총 21만 5천원 결제함 
1. DPT[디프테리아(diphtheria), 백일해(pertussis), 파상풍(tetanus)](2차) 
2. 뇌수막염(PRP-OMP)(2차)  
3. 로타 바이러스(로타릭스)(1차): 11만원 
3. 폐구균(13가지 백신)(2차): 12만원  ==> 수종 체중: 8.7, 신장: 68.2, 두위: 44.5(체중 정상아 보다 1kg 더 나감) 
11:20 쇼핑 
11:50 귀가 
12:20 중식 
13:00 낮잠 
17:00 기상 
18:00 쇼핑(장모님 생신 케익) 
18:30 삼계탕(2그릇, 오거리닭한마리) 포장해서 집에 가져 옴 
18:50 석식(삼계탕) 
20:20 장모님 생신 파티(선물: 용돈 10만원) 
23:50 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2014.02.16(일) 작업 ■■■■■■■■■■■■■■■
---> 12:30 ~ 18:00 --> 2차 오픈 

▦조기축구   
07:20 기상   
07:40 643번 버스(행운동 주민센터) 
08:30 신구초등학교(태훈이형 8시 45분에 옴) 
09:00 게임(3:1 승): 신입들이 많이 옴  
10:00 게임(3:1 승) 
10:30 게임(2:0 패) 
11:10 종료 
11:30 중식(국밥, 뚝심한우식당): 각자 냄 
12:00 종료  
12:30 대우증권(과천): 태훈이형이 태워 줌  
12:40 Space for Export 수정 사항 처리함 
20:30 종료 
20:50 석식(비빕밥): 조차장이 냄(결제 처리) 
21:10 조차장 차 얻어탐 
21:30 9번 버스(사당역) 
21:40 귀가 
23:50 취침 
--------------------------------------------------------------------------------------------------------- 

- 대우증권 인도네시아법인 홈페이지 재구축 Prj
- Space for Export 2차 오픈 수정 사항 처리 
1. Export 등록에서 결제 계좌 2개 선택하게 처리 
2. ALL View에서 수정, 삭제 가능하게 처리 
3. Analst에서Infomation 안 보이게 수정 
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2014.02.17(월) 작업 ■■■■■■■■■■■■■■■
---> 07:20 ~ 17:30 --> T61OU27 AP 때문에 PM에게 화내고 퇴근 함 

- 대우증권 인도네시아법인 홈페이지 재구축 Prj
- Space for Export 개발 
1. Space for Expert Reg(/spceExptMgmtExpertReg.jsp) 수정 
==============================================================================================================
  
- SMS Push 개발(실서버 확인 안 해봤음) 
1. ttile(제목) 길이 확인할 것(/spceExpertAdminPush.dp) 
==============================================================================================================

2. My Expert(/stkCmMain.jsp) 수정 ==> 완료 
==> http://www.dwsec-id.com/hmpg/stkCm/main/stkCmMain.do 
==============================================================================================================

3. Apply Expert Forum(/spceExpertMainApply02.do) 수정 ==> 완료 
==> hmpg/stkCm/spceExpt/spceExpertMainApply02-checkPIN.do --> T61OU27.java 
1) 예수금잔액 >=0 이면 정상 
2) "".equals(trim(예수금잔액)) 이면 실패  
--------------------------------------------------------------------------------------- 

- 에러 
현재 저희 AP로 넘기면 패스워드가 변경되어서 오던지..그런모양입니다. 
12:00:04:840950[A11SI03.c :A11SI03_PinChec:01149][it=021574] [lsPwd=\223\220] [dbPwd=123456] stat=[0] 
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2014.02.18(화) 작업 ■■■■■■■■■■■■■■■
---> 07:20 ~ 18:00 

- 대우증권 인도네시아법인 홈페이지 재구축 Prj
- Space for Export 개발 
1. Space for Expert Reg(/spceExptMgmtExpertReg.jsp) 수정  
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2014.02.19(수) 작업 ■■■■■■■■■■■■■■■ 
---> 07:30 ~ 18:00 

- 대우증권 인도네시아법인 홈페이지 재구축 Prj
- Space for Export 개발 
1. Space for Expert Reg(/spceExptMgmtExpertReg.jsp) 수정  
==============================================================================================================
  
- Project Management 개발 
1. Create Board(/mgr/projectMgmt/createBoardMgmt.do) ==>   
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2014.02.20(목) 작업 ■■■■■■■■■■■■■■■
---> 07:30 ~ 18:00 

- 대우증권 인도네시아법인 홈페이지 재구축 Prj  
- Project Management 개발 
1. Create Board(/mgr/projectMgmt/createBoardMgmt.do) ==>  
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2014.02.21(금) 작업 ■■■■■■■■■■■■■■■
---> 07:30 ~ 17:30 

- 대우증권 인도네시아법인 홈페이지 재구축 Prj  
- Project Management 개발 
1. Create Board(/mgr/projectMgmt/createBoardMgmt.do) ==> 완료 
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2014.02.22(토) 작업 ■■■■■■■■■■■■■■■   
---> 09:00 ~ 18:00   - 주말  

- 주말 
08:40 기상  
09:50 집출발 
10:00 지하철(서울대입구역 -> 정발산역 4번 출구(1시간 30분)) 
	--> I파크 APT 전: 양지마을[풍산역] 방향(우회전) > 강성로(좌회전) > 양지건영빌라 1단지 APT(우 회전)
	> 저동초교 > 저동초교 삼거리(건너기) > 무궁화로 141번길(좌회전) > 학사 부동산 >  도착(무궁화로141번길 16-1 3층)  
12:10 종민씨집 도착(응아 부모님 만남, 장모님 물건(약) 전달 받음) 
12:20 중식 
16:30 종민씨집 출발  
18:30 중식(해물탕(중: 4만원): 대호 아구집) 
19:30 귀가 
22:30 취침  
==============================================================================================================    

■■■■■■■■■■■■■■■■■■ 2014.02.23(일) 작업 ■■■■■■■■■■■■■■■  
---> 12:30 ~ 18:00 --> 2차 오픈 ▦조기축구  

- 주말2
07:20 기상
07:30 643번 버스(행운동 주민센터)
08:20 신구초등학교(태훈이형 9시 30분에 옴)
10:00 게임(3:1 패)
10:30 게임(3:1 패): 1골 넣음
12:00 종료  
12:30 중식(김치찌게, 효순이형 가게: 영희형 부친상 답례)
12:00 종료 
13:00 귀가 
14:00 낮잠 
17:00 기상 
19:00 석식 
23:50 취침   
==============================================================================================================    
  
■■■■■■■■■■■■■■■■■■ 2014.02.24(월) 작업 ■■■■■■■■■■■■■■■
---> 07:30 ~ 18:00 

- 대우증권 인도네시아법인 홈페이지 재구축 Prj  
- Project Management 개발 
1. Create Board(/mgr/projectMgmt/createBoardMgmt.do)   
==============================================================================================================
    
■■■■■■■■■■■■■■■■■■ 2014.02.25(화) 작업 ■■■■■■■■■■■■■■■      
---> 09:00 ~ 18:00

- 휴가
09:30 기상    
10:00 조식(라면)  
10:20 erd 작성(DWS_ID)  
12:50 중식 
13:10 집출발 
13:30 수종 옷(상하) 구입, 종민씨 아들 내복 구입 ==> 라붐 아울렛(아가방) 1층 행사장  
13:40 강남초이스병원(서울 관악구 남부순환로 1796): http://www.choicehospital.co.kr, ☎ 875-2200 
14:10 진료(루옌) => X-ray 촬영(11,900원) => 물리치료(2,000원: 30분) ==> 큰 병이 아니라고 함(물리치료 2주) 
15:20 종료 
15:40 오라클피부과의원(서울대입구점, 서울 관악구 관악로 217): http://www.oracleclinic.com, ☎ 871-8301 
15:50 진료 ==> 루옌: 머리카락 빠짐 상담(임신하면 생긴다고 함), 태만: 얼굴 버짐 상담(약 받음) 
	==> 목욕, 뜨거운 물 금지 
16:30 종료 
16:40 장보기 
17:00 귀가 
18:00 석식  
22:00 벽지 바름(부엌, 안방)  
23:50 취침  
==============================================================================================================   
  
■■■■■■■■■■■■■■■■■■ 2014.02.26(수) 작업 ■■■■■■■■■■■■■■
---> 06:15 ~ 21:00 

- 대우증권 인도네시아법인 홈페이지 재구축 Prj  
- Project Management 개발 
2. Project Management > Board Modification(/mgr/projectMgmt/projectBoard/boardCU.do) ==> 92-6. Board Modification: 완료 
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2014.02.27(목) 작업 ■■■■■■■■■■■■■■■  
---> 06:00 ~ 21:00 --> (주)JTREE와 550에 3월 한달 재계약, 글꼴: 맑은 고딕(9) 

- 대우증권 인도네시아법인 홈페이지 재구축 Prj  
  
- Project Management 개발 
1. Project Management > Board List(/mgr/projectMgmt/projectBoard/boardListR.do) ==> 92-4. Board List: 완료 
http://localhost:8080/mgr/projectMgmt/projectBoard/boardListR.do 
3. Project Management > Board Detaill(/mgr/projectMgmt/projectBoard/boardDtlR.do) ==> 92-5. Board Detaill: 완료 

2. Project Management > Board Modification(/mgr/projectMgmt/projectBoard/boardCU.do) ==> 92-6. Board Modification: 완료 
=============================================================================================================
=
- 차트 수정 사항(운영 반영) ==> Chat 개발자가 들어와서 수정 함 
1. /js/dwsComplex/jCommonEx.js 
==============================================================================================================

- FTP 
1. 10.100.55.61: s0140003.wadmin@iwd01i / dws4004@ 
2. Dir: /dwsid/wdocs,  Dir: /dwsid/svn/rev_info 
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2014.02.28(금) 작업 ■■■■■■■■■■■■■■■
---> 06:20 ~ 18:00 --> 철수(18시) 

- 대우증권 인도네시아법인 홈페이지 재구축 Prj  
- Project Management 개발  
1. 최종 수정(zip파일로 개발 서버에 등록), 개발 서버, 운영 서버 반영(다음주 월요일로 연기) 
==============================================================================================================
- 리스트 조회 
List<SpceExptVo> selectProjectMagBlbdYnList = spceExptService.selectProjectMagBlbdYnList(spceExptVo); 
// 92-11. Project Mag 게시판 사용자 권한 List 조회 
  
if(selectProjectMagBlbdYnList.size() >0) { 
	a31OI01Vo.setIsProjectMagBlbdYn("Y"); // Project Mag 게시판 사용 권한 여부 

	if(selectProjectMagBlbdYnList != null && selectProjectMagBlbdYnList.size() > 0){ 
		//for(int i=0; i< selectProjectMagBlbdYnList.size(); i++){ 
			SpceExptVo poplist = selectProjectMagBlbdYnList.get(0);  
			if(poplist.getCtnsClasCd() != null ){ 
			a31OI01Vo.setFirstCtnsClasCd(poplist.getCtnsClasCd());   // firstCtnsClasCd 
			logger.debug("[/CmmnTrController.java] [loginTR()] [getCtnsClasCd()]"+ poplist.getCtnsClasCd() ); 
		// }
	}  
} else { 
	a31OI01Vo.setIsProjectMagBlbdYn("N"); 
} 
==============================================================================================================
  
- 회원 권한 
/* 1. 준회원(00402001) */ 
test-20/1234567 
/* 2. 정회원(00403001) */ 
Hotsguru/123456 
KSTD0618, bluerain, taeho 
, ANDI20, DONNY_72, fuadnas 
, kancil118, ronnywan 
/* 3. 관리자(00499001) */ 
8000156/456789 
8000157/12345 
8000158/12345 
s0330176/12345 
--------------------------------------------------------------------------------  

- DWS_개발서버 FTP 주소 
1. IP주소: 10.100.55.61 --> s0140003.wadmin@iwd01i/ dws4004@  
==============================================================================================================

- (주)JTREE 
1. 주소: 서울시 강남구 봉은사로 18길 17, 1층(역삼동) 
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
