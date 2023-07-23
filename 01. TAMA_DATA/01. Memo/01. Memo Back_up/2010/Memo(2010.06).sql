

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2010.06) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2010.06.01(화) 작업 ■■■■■■■■■■■■■■■■
---> 11:30 ~ 01:00  --> 보육통합정보시스템 2단계 구축 Proj 첫 출근(종각역 3-1번 출구 공평 빌딩 5층) 

- 보육통합 Prj
- Proj 관계자 
(주) 아침 소프트 ===> 서철 차장: HP) 010-2677-2211(중식(설렁탕 7천원) 얻어 먹음) 
(주) LG CNS 공공1사업부 ===> 이주관 부장(PM): 중식 사줌, 송영환 차장(PL): HP) 010-2210-0780(*@*.*) 
6월 12일(토) 오픈  ==> 이기수 사장과 15일 250에 합의 봄 
==============================================================================================================

- IP 주소(보육통합 시스템 Proj) 
IP 주소: 192.168.1.5 
GW: 192.168.1.206 
SM: 255.255.255.0 
DNS: 168.126.63.1 
- 파일 서버 
URL: \\192.168.1.240\파일서버, 진태만/0898 
- 프린터 서버(후지찌 제록스 286) 
IP 주소: 192.168.1.250 
==============================================================================================================

- 개발 프로그램 설치 
1. MS Office 2007 
2. JDK 1.5.0(jdk-1_5_0_06-windows-i586-p-iftw.exe) 설치 

3.1  개발툴 설치 
1) \\192.168.1.240\파일서버\02.보육통합2단계\99.개발팀공용폴더\00.개발환경및가이드\3.개발환경배포 
\ISARANG_D.zip” 파일을 각자 PC의 D:\ 드라이브 바로 아래에 ISARANG폴더로 풀어놓는다. D:\IRARANG 폴더  
아래에 app, tool 폴더가 보이면 정상이다.  

2) 압축해제가 완료되었으면 D:\ISARANG 폴더의 ‘이클립스 시작’ 바로가기를 이용하여 이클립스를 실행한다.  
  
3.2  웹구간 암호화 모듈 설치   

4. CVS 연결 
CVS 퍼스펙티브에서 CVS Repository Location정보를 추가한다.  
1. Menu -> Window -> Open Perspective -> CVS Repositary (없으면 Other)클릭한다. 
2. CVS Repositary View에서 Mouse 오른쪽 버튼을 클릭한다.  
3. PopUp -> New -> CVS Repositary Location에 아래의 정보를 셋팅하고 Authentication에는 자신의 User ID, Password를 등록 한다. 
211.59.10.245 --> tmjin/tmjin 

5. Code Templates 수정 

6. Jeus 설정 파일 추가 
\\192.168.1.240\파일서버\02.보육통합2단계\99.개발팀공용폴더\00.개발환경및가이드\1.보육통합\jeus6.0  
디렉토리 안에 있는 아래 디렉토리/파일을 로컬의 같은 위치에 복사한다. 
config/isarang/isarang_servlet_cpis 
config/isarang/isarang_servlet_ccis 
config/isarang/JEUSMain.xml (백업 후 복사) 
webserver/config/http.m (백업 후 복사) 
cpis, ccis 컨테이너 설정만 추가된 설정파일로 1단계 기존 시스템 컨테이너 설정은 제외한 채 배포한다. 

7. 폴더 구성 
  
9. 종합 테스트 
9.1  hosts 파일 등록 
9.2  웹서버 설정파일 컴파일 
 - D:\ISARANG\tool\jeus6.0\bin> wscfl -i http.m 
        Current configuration: 
                Number of client handler(HTH) = 1 
                Supported maximum user per node = 825 
                Supported maximum user per handler = 825 
CFL is done successfully for node(localwas(tama)) 
9.3  서버기동 
- 스크립트를 이용하여 WEBTOB 및 JUES의 기동과 종료를 실행한다.  
9.4  접속 테스트 
웹브라우저에서 http://lcpis.childcare.go.kr 으로 접속한 후 어플리케이션이 정상적으로 작동하는지 테스트해 본다.  
==============================================================================================================

- 개발환경구축 
1) eclipse3.4 설치 
http://download.eclipse.org/webtools/downloads/ 
- C:\eclipse에 설정 
- eclipse.ini  ==> C:/Program Files/Java/jdk1.5.0_19/bin/javaw.exe 

2) jsdk1.5.15 설치 
http://java.sun.com/j2se/1.5.0/download.jsp 
- 제어판/시스템/환경변수 ==> CATALINA_HOME : C:\Program Files\Apache Software Foundation\Tomcat 5.5, 
/시스템 변수(S) ==> CLASS_PATH: C:\Program Files\Java\jdk1.5.0_19\lib 

3) Tomcat5.5 설치 
http://tomcat.apache.org/tomcat-5.5-doc/index.html 
- apache-tomcat-5.5.28폴더의 apache-tomcat-5.5.28.exe 더불 클릭 
- apache-tomcat-5.5.28-admin/conf, server폴더를 복사하여 C:\Program Files\Apache Software Foundation 
\Tomcat 5.5 폴더에 붙어 넣기 
- apache 설치 후 재시작 할 것 

4) Oracle 10g client 설치(/10201_client_win32/setup.exe) 
http://www.oracle.com 
- C:\oracle 폴더에 설치(런타임(235M) 설치) 
- C:\oracle\product\10.2.0\client_2\NETWORK\ADMIN\tnsnames.ora 파일 수정 

5) Toad for Oracle 10 설치(Toad for Oracle 10.0 Commercial.exe, ToadforOracle10PatchFull.exe) 
- .NET Framework 설치(http://msdn.microsoft.com/en-us/netframework/) 

6) workspace 폴더 설정 
workspace.zip 압축을 풀고 d:/samsung dotcom/에 붙여 넣기할 것 

7) CVS 설정  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.06.02(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 11:30 ~ 01:00  --> 제 5회 전국동시지방선거(관악중 체육관에서 진보신당 후보에 투표 함), 야근(22시 퇴근) 

- 보육통합 Prj
- vm 추가 eclipse.ini 파일에서 
-vm 
D:\ISARANG\tool\jdk1.6.0_12\bin\javaw.exe  
1. Portal(apis) URL 
1) Portal Test 서버: http://dcpis.childcare.go.kr, isarang1/isarang1 
2) Portal 개인 서버: http://lcpis.childcare.go.kr, isarang1/isarang1  
2. 보육센터 
1) 중앙보육센터(ccis) Test 서버: http://dcentral.childcare.go.kr, isarang1/isarang1 
2) 중앙보육센터 개인 서버: http://lcentral.childcare.go.krr, isarang1/isarang1  
3) 로그인: http://lcentral.childcare.go.kr/ccis/loginF.jsp 
4) 급여모의계산: http://lcentral.childcare.go.kr/ccis/nursery/EmpSalarySimlatnSl.jsp 
3. 기타 
CMS(acis)  관리자(Test 서버): http://dcms.childcare.go.kr, cmsAdmin/admin7645 
==============================================================================================================

- 보육통합 Proj 담당 업무 
1. 급여모의계산 
4개 계산 요율 코드 DB 데이타화(국민연금, 건강보험, 고용보험, 산재보험) 
2. 팝업 관리 
http://dseoul.childcare.go.kr, seoul, seoul 
http://dcms.childcare.go.kr/index.html 
http://dcms.childcare.go.kr/main.jsp 
3. 게시판 원한 일괄 수정 
홈페이지관리 -> 시스템관리 -> 프로그램 기준관리에서 기능 아이디 통합(윤과장)후 hcare, job, counsel 폴더에서 
권한 통합할 것(/portal/webapps/ccis/community/board/BoardSl.jsp 참조) 
4. 이력서 등록시 자격관리 사무국 연계 
==============================================================================================================

- OP(Online Preview)  분석 및 SW TEST 
1. jsp 디버깅(JSTL에서) 
[/frontMain.jsp] ======>[maintopprdname]${maintopprdname}<br>  
2. java 디버깅 
System.out.println("[/OpMainAction.java] ======> [execute()]:[opCountWSOP]"+ opCountWSOP);  
==============================================================================================================

- KCISA 시험 필기 인터넷 원서 접수 
하나은행 404-097848-04004(예금주: 한국정보사회진흥원): 필기전형료 10만원 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.06.03(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 01:00  --> 야근(22시 퇴근), 석식(청빈: 영민이형 가게) 

- 보육통합 Prj
- 급여모의계산 
int C = Round(B * 0.1 * monthpay_rate, 10);   //사용자납부액(국민연금) 
국민연금 요율(string_monthpay_rate): 4.5%, 건강보험 요율: 4.5%, 주민세 요율: 4.5%, 고용보험 요율: 4.5%  
var string_monthpay_rate = lists.getElementsByTagName('monthpay_rate').item(0).firstChild.nodeValue;  //국민연금 요율 
var string_healthpayA_rate = lists.getElementsByTagName('healthpayA_rate').item(0).firstChild.nodeValue;  //건강보험 요율A 
var string_healthpayB_rate = lists.getElementsByTagName('healthpayB_rate').item(0).firstChild.nodeValue;  //건강보험 요율B 
var string_ftotaly_rate = lists.getElementsByTagName('ftotaly_rate').item(0).firstChild.nodeValue;  //주민세 요율 
var string_koyoung_rate = lists.getElementsByTagName('koyoung_rate').item(0).firstChild.nodeValue;  //고용보험 요율  
  
-- 서브코드목록조회 ==> 공통코드관리 
acis.sys.CmmnCode.selectCmmnCodeSList=/*+ acis.sys.CmmnCode.selectCmmnCodeSList */ 
SELECT CODEGB   --코드구분 
       ,COCODE AS PREV_COCODE --이전공통코드 
       ,COCODE  --공통코드 
       ,UPRCODE --상위코드 
       ,USGB    --사용자구분 
       ,SYSCODE --시스템코드 
       ,CDNAME  --코드명 
       ,DSPNAME --코드표시명  ====> 요율 
       ,CDLEVEL --코드레벨 
       ,CDUSED  --코드사용여부 
       ,CDORDER --순서 
FROM   TB_CP_SYCMMNCODE 
WHERE  CDLEVEL > 0 
AND    CODEGB  = 'CIZ003' 
ORDER BY CODEGB ASC, COCODE ASC 
;  
--------------------------------------------------------------------------------------------------------- 
- 형전환 
Long p_count = Long.parseLong(str_count); // 실수형 
int p_count =  Integer.parseInt(str_count); // 요청여부 내역 총 수    
lng_obj = Double.parseLong(s); 

- 수정 파일 테스트 서버 반영 
/portal/webapps/ccis/nursery/EmpSalarySimlatnSl.jsp 
/portal/src/cis/cpis/nursery/EmpSalarySimlatnMgr.java 
==============================================================================================================

2. 팝업 관리 
http://dseoul.childcare.go.kr, seoul, seoul 
http://dcms.childcare.go.kr/index.html 
http://dcms.childcare.go.kr/main.jsp 
http://lacis.childcare.go.kr/acis/popup/PopUpView.jsp?flag=Sl&POPUPSEQ=12&GB=PREVIEW 

 --- 칼럼 추가  --------- 
ALTER TABLE TB_CP_PUPOPUP ADD (  
BCRNTMPLATCODE    VARCHAR2(6)  --배경 템플릿  ===> PORTALGB(포털구분) 
);  
  
 POPUPBGTEMPLATEE, 
 Query: /*cpis.popup.PopUp.selectPopUp*/ 

- radio 박스 세팅 
<input type="radio" id="POPUP_TEMPLATE" name="POPUP_BGTEMPLATE" value="A" <c:if test="${popup.POPUP_BGTEMPLATE eq 'A'}">checked </c:if>>A타입 
<input type="radio" id="POPUP_TEMPLATE" name="POPUP_BGTEMPLATE" value="B" <c:if test="${popup.POPUP_BGTEMPLATE eq 'B'}">checked </c:if>>B타입 
<input type="radio" id="POPUP_TEMPLATE" name="POPUP_BGTEMPLATE" value="C" <c:if test="${popup.POPUP_BGTEMPLATE eq 'C'}">checked </c:if>>C타입 

- 배경 이미지  
<body style="background-image:url('<%=imagePath%>/common/center_pop_02.gif');"> 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.06.04(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 01:00  --> 야근(22시 퇴근) 

- 보육통합 Prj
2. 팝업 관리 
http://dseoul.childcare.go.kr, seoul, seoul 
http://dcms.childcare.go.kr/index.html 
http://dcms.childcare.go.kr/main.jsp 
http://lacis.childcare.go.kr/acis/popup/PopUpView.jsp?flag=Sl&POPUPSEQ=12&GB=PREVIEW 
배경 이미지 사이즈: 350*400 --> 350*380 
1) 1차 완료 후 테스트(진부장) 수정사항 
 - 등록시 배경 템플릿(이미지 보이기), 사이즈 수정 불가, 팝업종류 제거 
 - Scroll 생성 
 - .jpg만 생성 
==============================================================================================================

3. 전국보육정보센터 찾기(http://dcentral.childcare.go.kr/ccis/mainCentral.jsp) 
- 전국보육정보센터 -> 전국보육정보센터찾기(포털메인에도 명칭 변경) 
센터바로가기 이미지 삭제하고, 셀렉트박스 중앙을 전체로 바꿈. 셀렉트박스 옆에 ""조회""버튼 

- 전국보육정보센터 찾기 select 박스 
<select onchange="if(!cfIsNull(this.value)) window.open(this.value);" style="width:80px;"> 
<option value="">센터 선택</option> 
<c:forEach var="sys" items="${SYSCENTER}"> 
  <c:if test="${sys.SYSCODE eq 'C0000'}"><option value="<%=contextPath%>/sitelink/SiteLinkCenterSlPL.jsp?flag=SlPL
  &schRELATESITEGBCODE=98">전체</option></c:if> 
  <c:if test="${sys.SYSCODE ne 'C0000'}"><option value="<%=contextPath%>/sitelink/SiteLinkCenterSlPL.jsp?flag=SlPL
  &schRELATESITEGBCODE=98&SYSCODE=${sys.SYSCODE}">${sys.AREADSPNM}</option></c:if> 
</c:forEach> 
</select>  
==============================================================================================================

- 보육포털 개발서버 빌드(수동) 
1. 텔넷 접속 : 211.59.10.246 
2. dvpadm/dxltb123 로그인 
3. cdbp 명령어 사용 -> 빌드 위치로 이동 
[devwas:/src/dvpadm]cdbp  
[devwas:/src/portal/cvssrc/build]ls 
build.properties*    build.xml*           core                 imgdocs/             webapps/ 
build.sh*            compile.sh*          hs_err_pid3659.log   tarfiles/            webdocs/  
4. build.sh 실행  
[devwas:/src/portal/cvssrc/build] build.sh 

- 이미지 등록(FTP 접속) --> FileZilla_3.3.2.1_win32-setup.exe 설치(FTP 프로그램) 
호스트 IP: 211.59.10.246, dvpadm/dxltb123 
/nfs1/src_web_i/dvpadm/imgdocs/ 
----------------------------------------------------------------------------------- 
- 로그(log) 확인 
- IP: 211.59.10.246 
- 계정: loguser/loguser 
- 서버 전체 로그 
/applog/jeus/devwas/JeusServer_일자.log 
- 컨테이너별 로그 
/aplog/devwas_컨테이너명 
- 업무별로그 
로그인: /applog/log4j]/login 
결제: /applog/log4j]/payment 
정보: /applog/log4j]/common 
에러/디버그: /applog/log4j]/common 
[devwas:/nfs2/applog_was/jeus/devwas]ls  
[devwas:/nfs2/applog_was/jeus/devwas]tail -f JeusServer_20100604.log 
==============================================================================================================

- SecureCRT 설치법 
1. scrt513.exe 파일을 실행해서 설치한다 
2. scrt513-tbe.exe 파일을 실행한다 
3. Patch 버튼을 클릭한다 
4. SecureCRT.exe 파일을 찾겠냐는 창이 나오면 "예"를 누른다 
5. SecureCRT.exe 파일 경로를 찾아준다 ( 기본 경로 : C:\Program Files\SecureCRT ) 
6. SecureCRT.exe 파일을 선택하고 확인을 눌러준다. 
7. 끝 
- Automate Logon 사용하기 
Session Options --> Connection --> Login Script 
Expect: login Send: dvpadm 
Expect: Password Send: dxltb123    
==============================================================================================================

- 나눔정보 --> 관련사이트 관리 수정(CMS 관리자) 
http://dcms.childcare.go.kr/main.jsp, center/center 
사이트구분코드 --> 등록구분, 시스템코드 --> 지역명으로 변경 
/portal/webapps/ccis/mainCentral.jsp 
/portal/webapps/acis/sitelink/SiteLinkManageSvL.jsp 

- 관련사이트관리 조회  @@@@@@@@@@@@@ 
SELECT T.RELATESITESEQ  
,T.RELATESITEGBCODE 관련사이트구분코드 
,T.SYSCODE 
, (SELECT DISTINCT(AREADSPNM) LOCAL_NM FROM  TB_CP_SYSYS WHERE  USEYN = 'Y'  
AND SYSCODE= T.SYSCODE) LOCAL_NM  --지역명 추가(시스템코드 --> 지역명) 
,T.ORGNM 
,T.CRHOME 
,T.TELNO 
,T.NTTLEVEL 
,T.CDORDER 
,T.USEYN 
FROM TB_CP_SYRELATESITE T 
WHERE  1=1 
AND T.RELATESITEGBCODE != '98'  
ORDER BY T.RELATESITESEQ ASC  
--; 
==============================================================================================================

- 수정 파일 테스트 서버 반영 
/portal/src/cis/cpis/popup/PopUpMgr.java, PopUp.sql   --> 팝업 관리 
/portal/webapps/acis/popup/PopUpSl.jsp, PopUpUd.jsp, PopUpView.jsp 
/portal/webapps/ccis/mainCentral.jsp   --> 3. 전국보육정보센터 찾기  
/portal/webapps/acis/sitelink/SiteLinkManageSvL.jsp  --> 나눔정보 --> 관련사이트 관리 수정 
/portal/webapps/acis/sitelink/SiteLinkCenterManageSvL.jsp 
/portal/src/cis/acis/sitelink/SiteLinkManage.sql  
==============================================================================================================

- STOCKS 
월(4,100), 화(4,095), 수(지방선거), 목(3,980), 금(3,955) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.06.05(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 01:00  --> 야근(22시 퇴근) 

- 보육통합 Prj
3. 직종별 자격사항 선택(Ajax 사용) 
- 직종 콤포 선택 --> 자격사항 선택 조회 
 1) 구직(시도, 중앙) ==> http://lcentral.childcare.go.kr/ccis/job/JobSearchIs.jsp,  center/center 
 2) 구인(어린이집운영 > 구인구직 > 구인관리) ==> http://lcpms.childcare.go.kr/cpms/cpis/job/JobSvL.jsp?&progrmid=LKP_CSMS10B010, skkim/1111 
  구인(어린이집운영 > 구인구직 > 구인관리) ==> 스테이징 서버: http://cpmse.childcare.go.kr, skkim/1111(DB 연결 에러로 문제 생김) 
  구인 등록: http://lcpms.childcare.go.kr/cpms/cpis/job/JobIsPu.jsp 
  구인 수정: http://lcpms.childcare.go.kr/cpms/cpis/job/JobUdPu.jsp 
- 오라클 DB 연결(ISARANG) ==> IP 주소: 211.59.10.245, cpma/cpma 
   
- 포탈 파일 올리기(http://dcpms.childcare.go.kr): FTP로 올리기 
1. jsp 파일 올리기: /isarang/webapps/cpms/cpis/job/JobUdPu.jsp, JobIsPu.jsp --> 직종별 자격사항 선택(포탈) 
2. class 파일 올리기: /isarang/src/cis/cpms/common/CommonCodeMgr.java, CommonCode.sql 
3. .sql 파일 올리기 실행 
http://dcpms.childcare.go.kr/common/jsp/ResourceRefresh.jsp ==> .sql 파일 올리고 한번 실행 해 줄것 

ISARANG: TB_CM_COCMMNCODE, Center: TB_CP_SYCMMNCODE 

- 자격 선택 
<select name="EMLICEM" id="EMLICEM" onchange="fnComboLowerCode('EMLICE','CIC003',2,this.value,'S');"> 
<option value="">선택</option> 
<cis:htmlOptions items="${CD.CIC003}" colValue="COCODE" colText="CDNAME" /> 
</select> 
<select name="EMLICE" id="EMLICE"> 
<option value="">선택</option> 
</select> 

- 모집직종별 자격 코드 
-- 01(시설장) --> 0010.  
-- 01(시설장) --> 2100.  02(보육교사) --> 0100.  03(특수교사) --> 0500.   
-- 04(치료사) --> 1300.  1400.  1300.  1400.  1500.  1600.   1700.  1800.  1900, 2000 
-- 05(영양사) --> 0900.   
-- 06(취사부) --> 1000. 07(사무원) --> .  08(대체교사(복지부)) -->  .  13(대체교사(일반)) -->  .  10(운전기사) --> .  12(기타)    

-- 자격 정보 조회(구인) @@@@@@@@@@@@@  
SELECT UPRCODE, substr(cocode,1,2) , COCODE, DSPNAME AS CDNAME 
FROM TB_CP_SYCMMNCODE 
WHERE CDUSED = 'Y' 
    AND CODEGB = 'CIC003'   --구분 코드(CIC002:직종 정보, CIC003:직종2  정보) CIC002/CIC003/CIC004/CIC005 
    AND CDLEVEL = 2  
    AND (UPRCODE = '000000' OR UPRCODE = '0100') 
ORDER BY CDORDER ASC 
--; 
-------------------------------------------------------------------------------------------------------- 

- Ajax 사용 
1. /portal/webapps/ccis/job/JobSearchIs.jsp 파일에서 
<select name="EMPGBCODE" id="EMPGBCODE" style="width:134px;" onchange="fnComboLowerCode_2('EMLICE','CIC003', 2, this.value,'S');"> 
<option value="">선택</option> 
<cis:htmlOptions items="${CD.CIC002}" colValue="COCODE" colText="CDNAME"  /> 
</select> 
<select name="EMLICE" id="EMLICE"> 
<option value="">선택</option> 
</select> 

2. /portal/webdocs/js/common/fncommon.js 파일에서 
function fnComboLowerCode_2(subCode,codegb,cdlevel,uprcode,alltype) { 
  if(alltype == undefined) alltype = 'A';  
  var txt = $.ajax({ 
    type: "POST", 
    url: "/common/util/CmmnCodeSlL_2.jsp", 
    data: {codegb:codegb,cdlevel:cdlevel,uprcode:uprcode,alltype:alltype}, 
    success: function(data) { 
      $('#' + subCode).html(data); 
    } 
  }); 
} 

3. /portal/webapps/common/util/CmmnCodeSlL_2.jsp 파일에서 
(/portal/src/cis/cpis/common/CoCmmnCodeMgr.java 파일의 selectCodeListFromParam_2 함수 호출) 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="tag"  uri="/simpleTag" %> 
<% new cis.cpis.common.CoCmmnCodeMgr().selectCodeListFromParam_2(); %> 

<option value=""><c:choose><c:when test="${param.alltype eq 'A'}">전체</c:when> 
<c:when test="${param.alltype eq 'S'}">선택</c:when></c:choose></option> 
<c:forEach varStatus="idx" var="code" items="${codeList}"> 
<option value="${code.COCODE}">${code.CDNAME}</option> 
</c:forEach> 

alert("[/DownloadBoardFile.jsp] ======> [fnComboLowerCode_2()] [subCode]"+ subCode); 
==============================================================================================================

- 수정 파일 테스트 서버 반영 
/portal/webapps/ccis/job/JobSearchIs.jsp  --> 직종별 자격사항 선택 
/portal/src/cis/cpis/common/CoCmmnCodeMgr.java 
/portal/src/cis/cpis/common/CoCmmnCode.sql 
/isarang/webapps/cpms/cpis/job/JobUdPu.jsp, JobIsPu.jsp --> 직종별 자격사항 선택(포탈) 
/isarang/src/cis/cpms/common/CommonCodeMgr.java 
/isarang/src/cis/cpms/common/CommonCode.sql 
==============================================================================================================

- Window Search 설치(MS 검색 엔진) 
D:\ 데이크탑 색인화됨 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.06.07(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:10 ~ 01:00  --> 중식(맥도날드 빅맥버거(4천 백원): 월드컵 컵 받아옴, 야근(22시 퇴근) 

- 보육통합 Prj
- 보육정보센터 구인/구직 모집 직종별 자격 종류 등록(공통코드 등록) 
-- 직종 정보 등록(구인)  저장 @@@@@@@@@@@@@  
-- INSERT  INTO TB_CP_SYCMMNCODE   
(CODEGB, COCODE, UPRCODE, USGB, SYSCODE,    
 CDNAME, DSPNAME, CDUSED, CDLEVEL, CDORDER)   
 VALUES( 
'CIC002',  '13', '000000', 'M', '0', 
'대체교사',  '대체교사', 'Y', 1, 11 
 ) 
--; 

-- 직종 정보 수정(구인) @@@@@@@@@@@@@  
UPDATE TB_CP_SYCMMNCODE A 
SET  A.CDNAME =  '특수교사 자격 인정자',   -- 코드명  
        A.DSPNAME =  '특수교사 자격 인정자'   -- 코드표시명 
WHERE  A.CDUSED IS NOT NULL 
    -- AND  A.CDUSED = 'Y' 
    AND  A.CODEGB = 'CIC003'   --구분 코드(CIC002:직종 정보, CIC003:직종2  정보)  
    AND  A.COCODE =  '0302'      --공통코드 
    AND  A.CDLEVEL = 2   
    AND ( A.UPRCODE = '000000' OR  SUBSTR( A.COCODE,1,2) = '03') 
--; 
==============================================================================================================

- 데이타 import(오라클에서 임포트) 
Database --> import --> import Table Data 
Schema: CPIA 
Object Type: Tables 
Object Name: TB_CP_SYCMMNCODE  
선택 후 ==> Show Data --> Excute Wizrd(새창에서 .excel 선택 -> 각 필드를 선택) 

- DB 테이블을 엑셀로 Export(Toad에서) 
조회 --> Data Grid(마우스 오른쪽 클릭: Export Data 선택 )  -> Export Data(팝업창) 
Ouput ==> File: 00. TB_CP_SYCMMNCODE.xls 
Delimiter ==> Character: Tab  
==============================================================================================================

- 수정 파일 내역(운영 서버 반영) 
1. 급여모의계산 --> 운영 서버 반영 요청 
D:\ISARANG\app\portal\webapps\ccis\nursery\EmpSalarySimlatnSl.jsp 
D:\ISARANG\app\portal\src\cis\cpis\nursery\EmpSalarySimlatnMgr.java 
2. 팝업 관리 --> 운영 서버 반영 요청 
D:\ISARANG\app\portal\src\cis\cpis\popup\PopUpMgr.java 
D:\ISARANG\app\portal\src\cis\cpis\popup\PopUp.sql  
D:\ISARANG\app\portal\webapps\acis\popup\PopUpIs.jsp 
D:\ISARANG\app\portal\webapps\acis\popup\PopUpSl.jsp 
D:\ISARANG\app\portal\webapps\acis\popup\PopUpUd.jsp 
D:\ISARANG\app\portal\webapps\acis\popup\PopUpView.jsp 
D:\ISARANG\app\portal\webdocs\images\acis\common\center_pop_01.gif 
D:\ISARANG\app\portal\webdocs\images\acis\common\center_pop_02.gif 
D:\ISARANG\app\portal\webdocs\images\acis\common\center_pop_03.gif 
3. 관련사이트 관리 수정(나눔정보) --> 운영 서버 반영 요청 
D:\ISARANG\app\portal\webapps\ccis\mainCentral.jsp 
D:\ISARANG\app\portal\webapps\acis\sitelink\SiteLinkManageSvL.jsp 
D:\ISARANG\app\portal\webapps\acis\sitelink\SiteLinkCenterManageSvL.jsp 
D:\ISARANG\app\portal\src\cis\acis\sitelink\SiteLinkManage.sql 
4. 직종별 자격사항 선택 --> 운영 서버 반영 요청 
D:\ISARANG\app\portal\webapps\ccis\job\JobSearchIs.jsp 
D:\ISARANG\app\portal\src\cis\cpis\common\CoCmmnCodeMgr.java 
D:\ISARANG\app\portal\src\cis\cpis\common\CoCmmnCode.sql 
5. 직종별 자격사항 선택(포탈) --> 운영 서버 반영 요청 
D:\ISARANG\app\isarang\webapps\cpms\cpis\job\JobIsPu.jsp 
D:\ISARANG\app\isarang\webapps\cpms\cpis\job\JobUdPu.jsp 
D:\ISARANG\app\isarang\src\cis\cpms\common\CommonCodeMgr.java 
D:\ISARANG\app\isarang\src\cis\cpms\common\CommonCode.sql 
6. 전국보육정보센터 찾기 -->  
/src/portal/webapps/ccis/common/include/page/SubLeft03.jspf  ==> 개발 서버 
http://dcentral.childcare.go.kr/ccis/central/content_6555.jsp 
==============================================================================================================

- 센터바로 가기(보육정보센터 화면) 
1. FTP로 연결하여 다운 받아서 수정(D서버에서만 작업 가능): /src/portal/webapps/ccis/common/include/page  
/src/portal/webapps/ccis/common/include/page/SubLeft03.jspf 
==============================================================================================================

- 프로젝트 팀원  
진중환 부장(*@*.*): *, 윤경민 과장(*@*.*), 진학(*@*.*) 
==============================================================================================================

- MS Office 2007 정품 인증 알람 창 처리 ==> MS Office 2010 Program 설치  
SN: Q4M47-6848R-94QVR-BTXMB-VPFMJ 
==============================================================================================================

- 노트북 조사 
업체: DELL, CPU: 인텔 코어i7 i7-720M, 메모리: 4G DDR3, HD: 500G, 화면: 15.6in 
http://gen.gmarket.co.kr/challenge/neo_goods/goods.asp?goodscode=185767177&GoodsSale=Y&jaehuid=200002657&service_id=pcdn ==> 깅추(1,547,000원) 
http://blog.danawa.com/prod/?prod_c=1093583&cate_c1=860&cate_c2=869&cate_c3=15601&cate_c4=0 ==> 추천(1,386,000원) 
http://blog.danawa.com/prod/?prod_c=1036453&cate_c1=860&cate_c2=869&cate_c3=15601&cate_c4=0 ==> 윤경민 과장꺼(1,578,000원)  
http://blog.danawa.com/prod/?prod_c=1051974&cate_c1=860&cate_c2=869&cate_c3=10585&cate_c4=0 
http://blog.danawa.com/prod/?prod_c=1001186&cate_c1=860&cate_c2=869&cate_c3=10580&cate_c4=0 ==> 삼성 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.06.08(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:10 ~ 03:30  --> 중식(맥도날드 빅맥버거(4천 백원): 월드컵 컵 받아옴, 철야(사우나(6천원), 양말(3천원)) 

- 보육통합 Prj
3. 파일 다운로드 여러 개를 압축하여 다운로드 
/portal/src/cis/common/util/CompressUtil.java 
- 서울보육C -->  어린이집 운영 --> 문서서식 
http://dseoul.childcare.go.kr/ccis/community/data/DataImgSlPL.jsp?BBSGB=42 
http://dseoul.childcare.go.kr/ccis/community/data/DataImgSl.jsp 
- 파일 다운로드(팝업) 
http://dseoul.childcare.go.kr/ccis/community/common/AllDownloadSlPu.jsp?flag=FSl&BBSGB=42&BIDARR=26445 
- CMS 홈페이지관리에 게시물관리쪽에서 등록 
http://dacis.childcare.go.kr/acis/community/board/ImageBoardIsF.jsp?flag=IsF&BBSGB=42&BBSCLSFCCODE=&clsfccode=&SEL_SYSCODE=&gb=&selBbsSchFlag=Y) 
http://lcms.childcare.go.kr, seoul/seoul 
   
1) 압축 파일 넘버링 
0608_00001 
2) 폴더 경로 
- D://upload/cpis/board/2010/06/7/ 
3) 압축 파일 후 바로 다운로드 
---------------------------------------------------------------------------------------------------------------------------- 

/portal/src/cis/acis/board/DtaAdm.sql 파록에서(acis.board.DtaAdm.selectFileList) 
-- 문서서식 조회 @@@@@@@@@@@@@  ==> TB_CP_BBBBSIMAGEDTAATCH(보육포털_게시판-게시판이미지자료 TB) 
SELECT BBSGB, BID ,ATCHMNFLSEQ 
    ,BUPLOADU, BUPLOADS, BUPPATH 
FROM TB_CP_BBBBSIMAGEDTAATCH   --//보육포털_게시판-게시판이미지자료첨부 TB 
WHERE  BBSGB  = 42 
    AND BID = 33458 
    AND ATCHMNFLSEQ  = 1  
--;   
==============================================================================================================

- 직종 콤포 스테이징 서버 에러 문제 --> 자격사항 선택 조회  
구인(어린이집운영 > 구인구직 > 구인관리) ==> 스테이징 서버: http://cpmse.childcare.go.kr, skkim/1111(DB 연결 에러로 문제 생김) 
구인 리스트: http://cpmse.childcare.go.kr/cpms/cpis/job/JobSvL.jsp?&progrmid=LKP_CSMS10B010 
구인 등록: http://cpmse.childcare.go.kr/cpms/cpis/job/JobIsPu.jsp 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.06.09(수) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 08:40 ~  06:00  --> 철야, 중식(3,500원) 

- 보육통합 Prj
- 관련사이트 삭제 시 DB에서 삭제 
1. 삭제 체크시 DB에서 삭제 
2. 관련사이트( http://lacis.childcare.go.kr/acis/sitelink/SiteLinkManageSvL.jsp ) 

-- 관련사이트 삭제  @@@@@@@@@@@@@  
DELETE FROM TB_CP_SYRELATESITE  
WHERE RELATESITESEQ = 680 
--; 

-- 관련사이트 저장  @@@@@@@@@@@@@  
INSERT INTO TB_CP_SYRELATESITE ( 
    RELATESITESEQ, SYSCODE, RELATESITEGBCODE, 
    ORGNM, CRHOME, TELNO, 
    NTTLEVEL, CDORDER, USEYN, 
    REGISTID, REGDATE) 
VALUES (  
    (select NVL(MAX(RELATESITESEQ),0)+1 AS RELATESITESEQ from TB_CP_SYRELATESITE), 
    'C0000', '01',   --SYSCODE 
    'test', 'www.geducare.co.kr/',  null,   --TELNO 
    1, (select NVL(MAX(CDORDER),0)+1 AS CDORDER from TB_CP_SYRELATESITE), 'Y',  --USEYN 
    'test01', SYSDATE 
)  
--;  
==============================================================================================================

- 관련사이트 수정(http://lcpis.childcare.go.kr/cpis/sitelink/SiteLinkSlPL.jsp) 
구분 + 기관명 + 홈페이지로 구성 (지역과 전화번호는 제외)  
==============================================================================================================

- 수정 파일 내역(운영 서버 반영) 
1. 관련사이트 삭제 시 DB에서 삭제 
D:\ISARANG\app\portal\webapps\acis\sitelink\SiteLinkManageSvL.jsp 
D:\ISARANG\app\portal\src\cis\acis\sitelink\SiteLinkManageMgr.java 
D:\ISARANG\app\portal\src\cis\acis\sitelink\SiteLinkManage.sql 
2. 관련사이트 수정 
D:\ISARANG\app\portal\webapps\cpis\sitelink\SiteLinkSlPL.jsp 
==============================================================================================================

3. 압축 다운로드(파일 다운로드 여러 개를 압축하여 다운로드) 
- 파일 다운로드(팝업) 
http://dseoul.childcare.go.kr/ccis/community/common/AllDownloadSlPu.jsp?flag=FSl&BBSGB=42&BIDARR=26445 

1) 압축 파일 넘버링 
0608_00001 
2) 폴더 경로 
- D://upload/cpis/board/2010/06/7/ 
3) 파일 업로드 --> 압축 파일 --> 다운로드 
D:\upload\Compress\2010\06\10  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.06.10(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 12:30 ~ 05:30  --> 철야, 윤과장 13시에 퇴근(23시에 다시 출근) 

- 보육통합 Prj
3. 압축 다운로드(파일 다운로드 여러 개를 압축하여 다운로드) 
- 서울보육C -->  어린이집 운영 --> 문서서식 
http://dseoul.childcare.go.kr/ccis/community/data/DataImgSlPL.jsp?BBSGB=42, center/center 
- 파일 다운로드(팝업) 
http://dseoul.childcare.go.kr/ccis/community/data/DataImgSlPL.jsp?BBSGB=42 
http://dseoul.childcare.go.kr/ccis/community/common/AllDownloadSlPu.jsp?flag=FSl&BBSGB=42&BIDARR=26445 
- 파일 압축 업로드 경로 지정 
/portal/webapps/WEB-INF/config/filepath.properties 파일에서 
#파일 압축  
filepath.upload.root.cpis.edcevent=/upload/Compress 
==============================================================================================================

- 관련사이트 수정(http://dwww.childcare.go.kr/cpis/sitelink/SiteLinkSlPL.jsp?flag=SlPL&programId=P0001PG00001253)  
(http://lcpis.childcare.go.kr/cpis/sitelink/SiteLinkSlPL.jsp?flag=SlPL&programId=P0001PG00001253) 
==============================================================================================================

- 보육정보센터링크관리 
http://dcms.childcare.go.kr/main.jsp, center/center 
http://dacis.childcare.go.kr/acis/sitelink/SiteLinkCenterManageSvL.jsp?p_relatesitegbcode=98 
/portal/webapps/acis/sitelink/SiteLinkCenterManageSvL.jsp  ==> movieList.jsp, movie_5793.jsp 
==============================================================================================================

2. 팝업 관리 
http://lacis.childcare.go.kr/acis/popup/PopUpView.jsp?flag=Sl&POPUPSEQ=12&GB=PREVIEW 
http://lacis.childcare.go.kr/ccis/popup/PopUpView.jsp?flag=Sl&POPUPSEQ=12&GB=PREVIEW  --> 수정 요망 
http://lacis.childcare.go.kr/common/jsp/PopUpView.jsp?flag=Sl&POPUPSEQ=12&GB=PREVIEW --> 수정 요망  
==============================================================================================================

- 수정 파일 내역(운영 서버 반영) 
1. 보육정보센터링크관리 --> 운영 서버 반영 요청 
D:\ISARANG\app\portal\webapps\acis\sitelink\SiteLinkCenterManageSvL.jsp 
2. 팝업 관리 --> 운영 서버 반영 요청 
D:\ISARANG\app\portal\webapps\ccis\popup\PopUpView.jsp 
D:\ISARANG\app\portal\webapps\common\jsp\PopUpView.jsp 
D:\ISARANG\app\portal\webapps\acis\popup\PopUpSl.jsp 
3. board css 변경 --> 운영 서버 반영 요청 
D:\ISARANG\app\portal\webdocs\images\css\ccis\01\board.css 
D:\ISARANG\app\portal\webdocs\images\css\ccis\02\board.css 
D:\ISARANG\app\portal\webdocs\images\css\ccis\03\board.css 
3. layou css 변경 --> 운영 서버 반영 요청 
D:\ISARANG\app\portal\webdocs\images\css\ccis\03\layout.css 
4. 관련사이트(포털) --> 운영 서버 반영 요청 
D:\ISARANG\app\portal\webapps\cpis\sitelink\SiteLinkSlPL.jsp 
5. 관련사이트(포털) --> 운영 서버 반영 요청 
D:\ISARANG\app\portal\webapps\ccis\sitelink\SiteLinkSlPL.jsp 
==============================================================================================================

- 수정 파일 내역(운영 서버 반영) 
1. 보육교사 수정 
D:\ISARANG\app\portal\webapps\acis\hcare\HtcherRequestUd.jsp 
D:\ISARANG\app\portal\src\cis\acis\hcare\HtcherRequestMgr.java 
2. 보호자 정보 등록, 수정(포탈) 
D:\ISARANG\app\portal\webapps\ccis\hcare\protectorRequestIs.jsp 
D:\ISARANG\app\portal\webapps\ccis\hcare\protectorRequestUd.jsp 
D:\ISARANG\app\portal\webapps\acis\hcare\HtcherRequestUd.jsp 
D:\ISARANG\app\portal\src\cis\cpis\hcare\ProtectorRequestMGR.java 
D:\ISARANG\app\portal\src\cis\cpis\hcare\ProtectorRequest.sql 
==============================================================================================================

- 보육교사 수정(육아정보>가정보육교사제도) 
보육교사 신청관리: http://dacis.childcare.go.kr/acis/hcare/HtcherRequestSvL.jsp, gyeonggi1/gyeonggi1 
보육교사 수정(팝업): http://dacis.childcare.go.kr/acis/hcare/HtcherRequestUd.jsp  
자격취득일자(QUALFACQSDT1) 
경력시작일자1(CAREERBEGINDT1), 경력종료일자1(CAREERBEGINDT1) 
경력시작일자1(CAREERBEGINDT1), 경력종료일자1(CAREERBEGINDT2) 

- 보호자 정보 등록 
http://lgyeonggi.childcare.go.kr/ccis/hcare/protectorRequestIs.jsp 
- 보호자 정보 수정 
http://lgyeonggi.childcare.go.kr/ccis/hcare/protectorRequestUd.jsp 
- 보호자 정보 리스트 
http://lgyeonggi.childcare.go.kr/ccis/hcare/protectorRequestSlPL.jsp?flag=SlPL 
생년월일(CHBIRTH), 교사 이용(TCHERUSEBEGINDT) 
NVL2(CHBIRTH,SUBSTR(CHBIRTH,1,4)'-'SUBSTR(CHBIRTH,5,2)'-'SUBSTR(CHBIRTH,7),'') AS CHBIRTH 
 1. 날짜 타입 변경(2010-06-12 --> 20100612) 
qualResume[i][2] = (String)SqlUtil.replace((String) paramMap.get("QUALFACQSDT" + (i + 1)), "-", "");   //자격취득일자1, 2, 3 
==============================================================================================================

- 업무 파일 
\\192.168.1.240\파일서버\03.감리\03.최종감리_감리공유\02.최종감리조치결과\진척관리용 파일 
\\192.168.1.240\파일서버\02.보육통합2단계\99.개발팀공용폴더\06.단위테스트\통합테스트결과_0601\작업용_송영환 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.06.11(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 12:50 ~ 05:00  --> 철야, 윤과장 13시에 퇴근 

- 보육통합 Prj
- 파일 압축 다운로드 
D:\upload\Compress\2010\06\10 
String usid = AcisUserSession.getCwUserid();; // 사용자고유아이디 
String sess_usid = UserContext.getSession().getId(); //세션 아이디 
[sess_usid]hDrKVjx9EMW3HMZGlTV5XhASBJoKnFI8sgCVjYP2EngC8vIfZCBsaXJm1p7f1PiR.isarang_servlet_ccis 
DebugLogger.log("[/ImageDtaMgr.java] ======> [ImageDtaMgr()]:[flag]"+ flag); 
---------------------------------------------------------------------------------------------------------- 
- 한글 압축 에러 문제(jazzlib) 
1. jazzlib.jar로 파일 생성(net.sf.jazzlib에 .class 파일로 만들 것) 
 ==> D:\ISARANG\app\portal\webapps\WEB-INF\lib\폴더에 넣기 ==> 경로 설정하기  
2. classes 폴더: /src/portal/webapps/WEB-INF/classes/cis/cpis/board 
3. 압축 폴더: [devwas:/upload/compress/2010/06/11]cd /upload/compress/2010/06/11  
http://www.javaservice.net/~java/bbs/read.cgi?m=resource&b=jdk&c=r_p&n=1100737475&k=압축&d=tb#1100737475 
http://cafe.naver.com/itmecca.cafe?iframe_url=/ArticleRead.nhn%3Farticleid=1737 
==============================================================================================================

- 수정 파일 내역(운영 서버 반영) 
1. 파일 압축 다운로드 
D:\ISARANG\app\portal\webapps\ccis\community\common\AllDownloadSlPu.jsp 
D:\ISARANG\app\portal\src\cis\cpis\board\ImageDtaMgr.java 
D:\ISARANG\app\portal\src\cis\common\util\CompressUtil_N.java 
D:\ISARANG\app\portal\webapps\WEB-INF\config\filepath.properties 
D:\ISARANG\app\portal\webapps\WEB-INF\lib\jazzlib.jar 
==============================================================================================================

- 오픈전 일정에 대하여 공지 
06.12(토), 13(일): 9~6시 
06.14(월) 이후: 9~6시 
소스 반영: 요청서를 써서 PM, 관리원 이기용대리 사인받고 AA한테 넘김 
==============================================================================================================

- STOCKS 
월(3,950), 화(4,025), 수(4,190), 목(4,100), 금(4,200) 
==============================================================================================================

- 월드컵 개막 
1. 남아공 vs 멕시코 
시각: 2010년 6월 11일(금), 23:00 
장소: 사커 시티 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.06.12(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 12:50 ~ 05:30  --> 철야(오전 05:30 퇴근 후 하루 쉼) 

- 보육통합 Prj
- 팝업 관리 
http://dseoul.childcare.go.kr, seoul/seoul  ==> seoul/seo0614(서울 실서버), djcare1/djccic1(대전 실서버) 
- 파일 관리(팝업) 
http://lacis.childcare.go.kr/acis/popup/PopUpView.jsp?flag=Sl&POPUPSEQ=17&GB=PREVIEW  
==============================================================================================================

- 수정 파일 내역(운영 서버 반영) 
- 파일 관리(팝업) --> 운영 서버 반영 요청 
D:\ISARANG\app\portal\webapps\acis\popup\PopUpView.jsp  ==> 팝업 창 크기, 창닫기 위치 변경 
D:\ISARANG\app\portal\webapps\ccis\popup\PopUpView.jsp  ==> 팝업 창 크기, 창닫기 위치 변경 
D:\ISARANG\app\portal\webapps\common\jsp\PopUpView.jsp  ==> 팝업 창 크기, 창닫기 위치 변경 
==============================================================================================================

- 로그인 - 실명인증 이미지 변경(timg_rname2_108.gif)  ==> 개발서버 경로: /src/portal/webapps/cpis/usr  
- 수정 파일 내역(운영 서버 반영)  ==> 이미지 서버: /nfs1/src_web_i/dvpadm/imgdocs 
1. 로그인 - 실명인증 이미지 변경(http://dimg.childcare.go.kr/cpis/01/usr/timg_rname2_108.gif) 
http://dwww.childcare.go.kr/cpis/usr/MemberRealNameF.jsp?loginPageType=01   
http://dseoul.childcare.go.kr/ccis/usr/MemberRealNameF.jsp?loginPageType=01 
==============================================================================================================

- 관련 사이트 확인 
관련 사이트: http://dseoul.childcare.go.kr/ccis/sitelink/SiteLinkSlPL.jsp?flag=SlPL   
홈 사이트: http://lseoul.childcare.go.kr/ccis/main.jsp 

- 조회수 확인(JSTL에서) 
<c:forEach items="${awardList}" var="awardList" varStatus="status"> 
    [/frontDDMain.jsp] ======> [status.count]${status.count}<br> 
</c:forEach> 

SELECT PHOTOFILESTRENM,PHOTOSTREPATH,URL,BANNERNM 
FROM TB_CP_SYBANNER 
WHERE  SYSCODE = 'C0001' 
--; 
==============================================================================================================

- 월드컵 예선전 시청
05:30 퇴근 
06:20 귀가 
06:30 취침 
12:30 기상 및 휴식 
19:00 강남역 근처 와바라 일식집(현용, 임모): 술집 7만 6천원 내가 냄 
20:30 월드컵 예선(한국 2 vs 0 그리스) ==> 임모가 예상 맞추어서 2만원 당첨됨) 
23:30 당구장(또 꼴치 함) 
00:10 삼겹살집(아르헨티나 1 vs 0 나이지리아) 
01:30 종료 
01:40 택시(독산동 방향인 임모가 태워줌) 
02:30 귀가 
03:30 취침 
==============================================================================================================

- 남아공 월드컵 
1. 한국 vs 그리스 
시각: 2010년 6월 12일 (토), 20:30 
장소: 넬슨 만델라 베이 스타디움 
-------------------------------------------------------------- 
2. 아르헨티나 vs 나이지리아 
시각: 2010년 6월 12일 (토), 23:00 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.06.13(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 11:00 ~ 00:30  --> 보육통합 Proj 오픈, 택시비 12,600원(청구할 것) 

- 보육통합 Prj
- 도메인 테스트 
기존 포탈: http://isarang.childcare.go.kr/psisMainTest.jsp, seoul/seo0614 
신규 포탈: http://www.childcare.go.kr/cpis/indexTest.jsp, seoul/seo0614 
정보센터: http://seoul.childcare.go.kr/indexTest.jsp, seoul/seo0614(서울 실서버) 
관리자: http://cms.childcare.go.kr/cms/indexTest.jsp 
어린이집 행정시스템: http://cpms.childcare.go.kr/loginF2Test.jsp  
==============================================================================================================

- 인터넷결제방식 변경에 따른 공지 팝업창 요청(포탈 메인) 
http://lwww.childcare.go.kr/cpis/main1.jsp ==>  /portal/webdocs/html/popup/popup_0610.htm 
==============================================================================================================

- eclipse에서 파일의 내용이 한글 깨짐 
popup_0610.htm 파일: 마우스 오른쪽 클릭 ==> Properties  ==> Resource(새창) 
Text file encoding ==> Default(UTF-8) --> Other: euc-kr로 변경 
==============================================================================================================

- 구인 수정시 Select Box 내용 안나옴 수정 
구인(어린이집운영 > 구인구직 > 구인관리) ==> 스테이징 서버: http://cpmse.childcare.go.kr, skkim/1111(DB 연결 에러로 문제 생김) 
구인 관리:  http://lcpms.childcare.go.kr/cpms/cpis/job/JobSvL.jsp?&progrmid=LKP_CSMS10B010 
구인 등록: http://lcpms.childcare.go.kr/cpms/cpis/job/JobIsPu.jsp  
CPMS 개발 서버(jsp): /src/dvpadm/webapps/cpms/cpis/job 
CPMS 개발 서버(class): /src/dvpadm/webapps/WEB-INF/classes/cis/cpms/cpis 

1. 공통코드목록조회(자격 선택) 
cpms.common.selectCmmnCodeList_2=/*+ cpms.common.selectCmmnCodeList_2 */ 
SELECT COCODE as code, DSPNAME as name 
FROM   TB_CP_SYCMMNCODE 
WHERE  CDUSED = 'Y' 
AND    CODEGB = ${codegb} 
AND    CDLEVEL = ${cdlevel}  --> 2로 셋팅 
AND    (UPRCODE = '000000' OR SUBSTR(COCODE,1,2)= ${uprcode})  --일반코드 
ORDER BY CDORDER ASC 
; 

-- 보육포탈_구인구직_인가시설구인 정보 조회  @@@@@@@@@@@@@  
SELECT  * 
FROM  CISO.TB_CP_JBCNFMCRJO  A 
WHERE  A.JOSEQ IS NOT NULL  
ORDER BY A.JOSEQ DESC 
--; 

- 무결성 제약 조건(CISO.PK_CP_JBCNFMCRJO)에 위배  ===> JOSEQ(구인순번) 필드   
SELECT SQ_CPJBCNFMCRJO.NEXTVAL FROM DUAL   --// SQ_CPJBNCNFMCRJO ==> SQ_CPJBCNFMCRJO 
==============================================================================================================

- 관련 사이트 확인 
관련 사이트: http://dseoul.childcare.go.kr/ccis/sitelink/SiteLinkSlPL.jsp?flag=SlPL   
홈 사이트: http://lseoul.childcare.go.kr/ccis/main.jsp ==> /portal/webapps/ccis/mainSeoul.jsp 

- 조회수 확인(JSTL에서) 
<c:forEach items="${awardList}" var="awardList" varStatus="status"> 
    [/frontDDMain.jsp] ======> [status.count]${status.count}<br> 
</c:forEach> 

SELECT PHOTOFILESTRENM,PHOTOSTREPATH,URL,BANNERNM 
FROM TB_CP_SYBANNER 
WHERE  SYSCODE = 'C0001' 
--; 
==============================================================================================================

- 수정 파일 내역(운영 서버 반영) 
1. 구인 수정시 Select Box 에러 수정--> 운영 서버 반영 요청 
D:\ISARANG\app\isarang\webapps\cpms\cpis\job\JobUdPu.jsp  ==> 구인 수정시 Select Box 내용 안나옴 수정 
D:\ISARANG\app\isarang\src\cis\cpms\cpis\JobMgr.java ==> 구인 수정시 Select Box 내용 안나옴 수정  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.06.14(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 09:50 ~ 18:00  --> 중식(진부장이 쏨), 폼텍 바코드용 라벨(A4용 27장) 구입(5천원): formtec.co.kr 

- 보육통합 Prj
- 파일 압축 다운로드 
- 홈페이지관리 --> 커뮤티티관리 --> 게시물관리 
http://dacis.childcare.go.kr/acis/community/board/BoardSlPL.jsp, seoul/seoul 
==> 파일사이즈는 5MB씩 총 5개(25MB) 까지 등록 할 수 있습니다. 
- 서울보육C -->  어린이집 운영 --> 문서서식 
http://dseoul.childcare.go.kr/ccis/community/data/DataImgSlPL.jsp?BBSGB=42 
- 파일 다운로드(팝업) 
http://dseoul.childcare.go.kr/ccis/community/common/AllDownloadSlPu.jsp?flag=FSl&BBSGB=42&BIDARR=26445  
- 파일 복사 제거( 속도 문제로 바로 압축) 
(복사--> 압축--> 다운로드)  ==> (압축--> 다운로드) 
==============================================================================================================

- 회식 
18:30 퇴근 
18:50 고기집(삼겹살: 아침 소프트 김성현 사장(*@*.*, 직원, 진중환 부장 철수) 
21:00 종료 
22:00 귀가 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.06.15(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:00  --> 보육통합 Proj 철수, 중식(3,500원) 

- 보육통합 Prj
- DB 자료 이관(보육정보실 자료검색) 
- 홈페이지관리 --> 센터안내 --> 보육정보실 자료검색 --> 자료검색관리  
http://dacis.childcare.go.kr/acis/lend/DataManageSvL.jsp, seoul/seoul 
보육정보실 자료검색 정보 TB), TB_CP_SYCMMNCODE(분류코드 정보 TB) 
NBOOKCODE(도서분류코드 TB), NBOOKS(서적정보 TB) 
WRHOUSNGGB: 입고구분(P:구입, C:기증)  ===> 공통코드에서 변경 해야 함 
-- 물품분류코드 정보 조회 @@@@@@@@@@@@@  
SELECT COCODE, DSPNAME AS CDNAME 
FROM TB_CP_SYCMMNCODE 
WHERE CDUSED = 'Y' 
AND CODEGB = 'CIF009' 
AND CDLEVEL = 1 
--; 
- 센터안내 --> 보육정보실 자료검색 --> 보육정보실 자료검색 
http://dseoul.childcare.go.kr/ccis/lend/DataSlPL.jsp  PMIG/PMIG  ==> NBOOK  
==============================================================================================================

- 수정 파일 내역(운영 서버 반영) 
1. 파일 압축 다운로드 
D:\ISARANG\app\portal\webapps\ccis\community\common\AllDownloadSlPu.jsp 
D:\ISARANG\app\portal\src\cis\cpis\board\ImageDtaMgr.java 
D:\ISARANG\app\portal\src\cis\common\util\CompressUtil_N.java 
D:\ISARANG\app\portal\webapps\WEB-INF\config\filepath.properties 
D:\ISARANG\app\portal\webapps\WEB-INF\lib\jazzlib.jar 
2. 자료검색관리 수정 --> 운영 서버 반영 요청 
D:\ISARANG\app\portal\webapps\acis\lend\DataManageSvL.jsp  ==> 자료검색관리 화면 정렬 수정 
==============================================================================================================

- 검색(Edit Plus에서 조회) 
검색(S) ==> 여러 파일 찾기(I) ==> 여러 파일에서 찾기(새창) 
찾을 말(I): CIF009, 파일 종류: *.jsp, 폴더(O): D:\ISARANG\app\portal, 하위 폴더 포함(S): 체크 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.06.16(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:00  --> 글빛 도서관 

- KCISA Study
- 사업관리 및 감리 정리 
============================================================================================================== 

■■■■■■■■■■■■■■■■■■ 2010.06.17(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:00  --> 글빛 도서관 

- KCISA Study
- 사업관리 및 감리 정리 
============================================================================================================== 

- TAMA_HouseK_Book 수정(TAMA 독서 기록장(도서 라벨 출력) 수정) 
줄바꿈 : vbCrLf  --> Chr(10) 

- 글자수 길이제한(jsp에서) 
 int p_title_lens = ds_contrnm.length();    //글자수 제한 
 if(p_title_lens >20) {  ds_contrnm = ds_contrnm.substring(0,20) +"..."; }  else { ds_contrnm = ds_contrnm; }   
==============================================================================================================

- 강남역 서초 초교 근처 술집(월드컵 응원 예정 장소) 
헤르젠(herzen.co.kr) 593-9507  
==============================================================================================================

- 남아공 월드컵 
1. 한국 1 vs 4 아르헨티나   
시각: 2010년 6월 17일 (목), 20:30 
------------------------------------------------------------------------- 
2. 그리스 2 vs 1 나이지리아 
시각: 2010년 6월 17일 (목), 23:00 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.06.18(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 12:30 ~ 22:00 

- KCISA Study
- 사업관리 및 감리 정리 
============================================================================================================== 

- G통장(https://www.gmarket.co.kr/) 
G통장 비밀번호: ssp**8*2 
============================================================================================================== 

- STOCKS 
월(4,285), 화(4,400), 수(4,430), 목(4,440), 금(4,445) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.06.19(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 01:00 

- KCISA 문제 풀이 정리(3차반 이론1)
07:30 기상 
08:40 학원 도착(현용 자리 잡아 줌) 
09:00 현용 도착 
09:00 PM 정리--> 정성삼 강사 
12:30 중식(칼국수(현용) --> 내가 쏨) 
13:50 점프업 소공 비디오 3 공부(랩실) 
17:20 종료 
18:20 귀가 
==============================================================================================================

- KCISA Review & 문제풀이 과정 
 1. 3차반 
1) 이론(주말): 2010. 6. 19 ~ 6. 20(토), 7. 3(토) --> 토: 9:30 ~ 12:30, 13:30 ~ 16:30 
2) 실전모의고사(일): 6. 27(일), 7. 4(일), 7. 11(일) --> 일: 9:00 ~ 11:00, 12:00 ~ 16:00 
==============================================================================================================

- 윈도우7 설치 
1. 설치 유형: Window 7 HomeBasic K 64비트 
2. 문제점 
1) Window 7 HomeBasic CD키 인증 안됨  
CD 키: TBWRC-MX8k4-39FD4-GD4VR-CCCH9  ====> 윤경민 과장이 준 윈도우7_정품인증_크랙.zip포 인증 받음 
2) osi 실행 프로그램 실행 안됨  ==> ALZip801.exe을 사용하여 압축을 풀어서 설치하면 됨 
3) MS Offfice iso 설치 
4) roboform 설치 에러(윈도우7용 구하기) 
5) TAMA_HouseK_Book에서 LabelX3.ocx 설치 에러(REGSVR LabelX3.ocx 불가능) 
NSIS 인스톨 프로그램 설치(http://bgcom.egloos.com/3596675)  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.06.20(일) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 24:00 

- KCISA 문제 풀이 정리(3차반 이론2)
07:30 기상 
08:40 학원 도착(현용 자리 잡아 줌) 
09:10 현용 도착 
09:00 보안 정리--> 김은아 강사  ===> 여우처럼 공부하자(직접 예상문제 출제하자) 
12:30 중식(된장국(현용) --> 현용이 쏨) 
13:30 감리 정리--> 유지호 강사 
15:30 DB 정리--> 정성삼 강사 
18:30 종료 
19:20 귀가 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.06.21(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 22:00  --> 글빛 도서관, GS 칼텍스 면접(17:00시 역삼역 7번 출구 GS 강남 타워) 

- KCISA Study
- 01. 사업관리 및 감리 정리 
============================================================================================================== 

■■■■■■■■■■■■■■■■■■ 2010.06.22(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 22:00  --> 글빛 도서관 

- KCISA Study
- 02. SE 정리 
============================================================================================================== 
   
- 시험 전략 
1. 기출문제 분석하여 예상 문제 출제 
2. 파란색 볼펜 사용 
3. 60분 안에 한번 다 풀 것(속독) 
4. 모르는 문제 체크하고 넘어갈 것 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.06.23(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 05:30 ~ 22:00 

- KCISA Study
- 03. DB 정리 
============================================================================================================== 
  
- 조기 축구 
05:30 기상(차가지고 감) ==> 한국 1승 1무 1패로 월드컵 16강 진출(못 봄) 
06:20 신구초등학교 
06:30 숏게임(1:2 패) 
07:20 종료 
07:50 조식(치근이형이 16강 진출 기념으로 쏨) 
09:10 인헌 자동차 공업사(김해원 T)882-7255, H)019-208-7374) --> 백미러 교환(중고(15,000원): 도난), c.f) 새것(6만원) 
10:00 귀가 
15:00 집 출발 
15:30 서대문역(1번 출구: 750번 버스) 
16:00 국세청 프로젝트 면접(코블을 JAVA로 변경(ProC), 야근, 주말 출근) 
16:30 종료 
15:30 국가 
==============================================================================================================

- 남아공 월드컵 
1. 한국 2 vs 2 나이지리아 
시각: 2010년 6월 23일 (수), 03:30
2. 그리스 0  vs 2 아르헨티나 
시각:2010년 6월 23일 (수), 03:30 
==============================================================================================================

- 외장하드 2.5인치 구매  
레토 ICS25SU(640G) 2.5 정품, 가격: 85,120원 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2010.06.24(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 22:00  --> 글빛 도서관 

- KCISA Study
- 03. DB 정리 
============================================================================================================== 
  
- STOCKS 
월(4,395), 화(4,210), 수(4,095), 목(3,960), 금(4,445) 
==============================================================================================================

cc_cExcelPrint.dll 삭제 
REGSVR32 D:\TAMA_DATA\02_My_DOCUMENT\02_My_Project\Project_VB\OCX\cc_cExcelPrint.dll 

regsvr32.exe /u D:\TAMA_DATA\02_My_DOCUMENT\02_My_Project\Project_VB\OCX\cc_cExcelPrint.dll 

 http://blog.naver.com/mismir?Redirect=Log&logNo=40021648671 
============================================================================================================== 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //----------------------------------------------------------+ 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 