

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2008.04) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2008.04.01(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:25 ~ 22:10 

- 삼성 AML Prj 
 - 조사가이드_항목추출(조사가이드_항목추출.xls)  
SAS10001 ~ SAS10030 
금융정보분석원[Korea Financial Intelligence Unit, kofiu]: 금융기관을 이용한 범죄자금의 자금세탁 방지 및 
외화의 불법유출을 막기 위해 설립된 재정경제부 소속기관.  
==============================================================================================================

- ETL DB 리뷰 회의(15:00 ~ 17:30) 
김대후 부장 주관 
==============================================================================================================

- RAM PC용 구매 검토(가격: 39,000원) 
http://poppc.co.kr/product/productView.php?nProdCode=551244&service_id=pcdn 
한강로2가 나진상가 17동 가열 317호  Tel) 02-720-2043    대표자: 김동오 
- TV겸용 LCD 구매 검토(가격: 209,000원): 아날로그TV 
http://fslcd.co.kr/product/productView.php?nProdCode=504484&service_id=pcdn 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.04.02(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 22:00  --> 삼성증권 파견팀 유사장님과 점심(인도 카레 전문점) 

- 삼성 AML Prj 
- SAR Prototype 화면 개발 소스 분석 
http://45.10.4.21:7001/sasaml/displaySARs.jsp 

- 에러내용: 
import javax.servlet.ServletException;   ===> Eclipse에서 빨간 엑스표로 나옴 
- 원인: java.util.* 처럼 기본적으로 JDK(정확히 표현하자면 J2SE)에 포함 되어 있는 Library가 아니다. 
J2EE(Enterprise Edition) 솔루션이기 때문에 따로 다운 받아서 컴퓨터에 설정되어 있어야 하는 것임. 
- 조치: 1) j2ee.jar 파일을 Java Build Path --> Librabries --> ADD JARs에서 추가해줌  
   2) servlet.jar 파일을 다운 받으신 후 환경변수의 classpath에 설정  
- 에러내용: 
import java.io.IOException; ===> Eclipse에서 빨간 엑스표로 나옴 
- 조치: CLASSPATH에 C:\Program Files\Java\jre1.5.0_11\lib 추가 
C:\Program Files\Java\jre1.5.0_11\lib;C:\Program Files\Java\jdk1.5.0_11\lib\tools.jar;  
==============================================================================================================

1. CLASSPATH 설정  ===> AML 서버 
 1) 환경변수 설정(내컴퓨터 -> 등록정보 -> 고급 -> 환경변수 -> 사용자변수(U) 
==> 새로 만들기(W) 
변수이름(N): CLASSPATH 
변수값(V): .;C:\Program Files\Java\jdk1.5.0_11\lib\tools.jar;C:\apache-tomcat-5.5.15\common\lib\servlet-api.jar; 
  
2. java_Home 설정  ===> AML 서버 
==> 새로 만들기(W)  
변수이름(N): java_Home --> 자바가 설치된 경로를 말하며, Java를 여러버전으로 사용한다면,  
  디폴트로 사용할 자바로 지정    
변수값(V): C:\Program Files\Java\jdk1.5.0_11  
==> 편집(I) 

3. PATH 설정  ===> AML 서버 
변수이름(N): PATH 
변수값(V): C:\Program Files\Java\jdk1.5.0_11\bin   
C:\> SET --> 확인 
C:\> PATH --> 확인  
==============================================================================================================

- STR 갭 보고서 작성 
갭보고서_080402.xls 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.04.03(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:30  --> AML팀 점심(삼계탕), 저녁(피자집, 유대리 생일), 당구(유상진 대리) 

- 삼성 AML Prj 
1. Eclipse 세팅(웹로직, AML 소스) 
 1) Eclipse 클래스 파일 생성 
에러: org.apache.struts.를 찾지 못함 
조치: struts-1.2.7.zip 파일 압축을 풀고 struts.jar 파일을 Java Build Path --> Librabries --> ADD JARs에서 추가해줌   
import java.util.regex.*; // Pattern과 Matcher가 속한 패키지 
  
 2) java API 문서의 구성( v1. 4.0) 
http://www.junjaewoo.com/j2sdk-1_4_0-doc_ko/api/ 
==============================================================================================================

- 공인인증서 재발급(만료 1개월 전): 무료 
국민은행(http://www.kbstar.com) --> 공인인증센터 --> 인증서갱신  
- 현대증권 에러 내용: 공인인증서 로그인시 오류가 발생하였습니다.(인증서 Flag가 없다)  
==============================================================================================================

- [주간업무 2008년 4월 1째주]  
★ 금주 업무 실적(03/31 ~ 04/04)
1. STR Prototype 화면 개발 완료(진행율: 100%) 
- 의심스러운 거래보고서 5단계 Display 화면 
2. SAR Prototype 화면 개발 소스 분석(진행율: 90%) 
------------------------------------------------------------------------------------------ 

★ 차주 업무 계획(04/07 ~ 04/11) 
1. STR 비즈니스 로직 구현 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.04.04(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 19:30  --> 현용과 당구(짐) 

- 삼성 AML Prj 
1. Eclipse 세팅(웹로직, AML 소스) 
Eclipse WTP: JDK 5.0 --> Java Compiler: 5.0, Project Fackets: 5.0  ==> 일부 파일 컴파일이 안됨 
Proj_sasaml_AML 소스: JDK 1.4 --> Java Compiler: 1.4, Project Fackets: 1.4   

 1) Eclipse 세팅(웹로직) 
http://localhost:7001/sasaml_wlgic/index.jsp 
http://localhost:7001/sasaml_wlgic/SampleTestServlet  
  2) Eclipse 세팅(톰켓) 
http://localhost:8080/sasaml_tom/index.jsp 
http://localhost:8080/sasaml_tom/SampleTestServlet 
 3) 세팅한 프로젝트 경로 
D:\Proj_sasaml_AML_tom\sasaml_tom\ 
.project, .classpath 
==============================================================================================================

 4) Eclipse SDK 세팅(웹로직, AML 소스)  ==> jdk1.4.2_11 
weblogic    https://eclipse-plugin.projects.dev2dev.bea.com/update/ 
localhost -->< weblogic/ssjtm8** 
http://cafe.naver.com/hisworld.cafe?iframe_url=/ArticleRead.nhn%3Farticleid=270  
==============================================================================================================

 - 메신저 주소록 
황현용(*@*.*), 임호수(*@*.*), 이후남(*@*.*),  
문태용(*@*.*) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.04.05(토) 작업 ■■■■■■■■■■■■■■■■
---> 08:40 ~ 22:30  --> 조기축구(07:00 ~ 07:30), 공형근 차장 방문(18:00 ~ 21:00), 나눔 동기모임(당구 2등) 

- 삼성 AML Prj 
1.  Eclipse SDK 세팅(웹로직, AML 소스)   
weblogic    https://eclipse-plugin.projects.dev2dev.bea.com/update/ 
eclipse --> window --> preferences --> weblogic -- 서버추가(add) 
Weblogic8.1 
 C:\bea C:\bea\weblogic81 
AMLDomain 
C:\bea\user_projects\domains\AMLDomain    
localhost --> weblogic/ssjtm8**   
port: 7001, 7002  
------------------------------------------------------------------------------------------ 

- START 메인 URL 
콘솔을 실행하여 웹로직 설정 --> Web Application Modules Deploy 하면 자동 생성 
C:\bea\user_projects\domains\AMLDomain\config.xml 파일에서 
<Application Name="sasaml2" Path="d:\eclipse\workspace\Proj_sasaml2" 
StagingMode="nostage" TwoPhase="true"> 
<WebAppComponent Name="sasaml2" Targets="AMLServer" URI="sasaml2"/> 
</Application> 

<Application Name="sasaml" Path="D:\Proj_sasaml_wlgic" 
StagingMode="nostage" TwoPhase="true"> 
<WebAppComponent Name="sasaml" Targets="AMLServer" URI="sasaml"/> 
</Application>  
------------------------------------------------------------------------------------------ 
1) 설치 실패 원인:  
 가. AML 소스 디컴파일하면 일부 에러가 남(Eclipse SDK는 정상적으로 설치) 
2) 조치: 
 나. java 원 소스를 요청할 것  --> 불가능 
==============================================================================================================

1.  Eclipse 세팅(웹로직)  
- eclipse에서 weblogic 플러그인 사용하기  
http://blog.naver.com/bulgo77?Redirect=Log&logNo=50029612563 
http://blog.naver.com/bulgo77?Redirect=Log&logNo=50029612563 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.04.07(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 22:20 

- 삼성 AML Prj 
1. Eclipse 세팅(웹로직, AML 소스) 
Eclipse 세팅(.class 파일 세팅) 
 jar --> extend   
 http://localhost:7001/sasaml2/index.jsp  
 1) DB 연결 부분 에러 
 2) STR보고서 생성 부분 에러  
 prepareStatement 
abstractMap  generic  
==============================================================================================================

- wtp-all-in-one-sdk-R-1.5.4-win323 
http://www.bea.com/distros/eclipse.html  

- 이클립스에서 디컴파일하기 
jad -o -r -sjava -dsrc **/*.class  
http://blog.empas.com/shaulla/6892682 
==============================================================================================================

- 삼성 DDR1메모리 512M PC3200 2개, 가격: 49,060원  
http://itempage3.auction.co.kr/DetailView.aspx?itemNo=a113213063&firstView=&DR030114=&hdcapital=&mobile=&frm3=V2 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.04.08(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:00  --> 맥주집, AML팀 번개(오차장, 김부장, 최과장, 은경씨) 

- 삼성 AML Prj 
1. Eclipse 세팅(웹로직, AML 소스) 
Eclipse 세팅(.java 파일 세팅) 
 jar --> extend 
http://45.10.4.21:7001/sasaml2/index.jsp  ===> main 
System.out.println("[/UserAlertListAction.java]:[execute()]:[test]"); 
System.out.println("[/index.jsp]:[test]"); 
    
com.sas.aml.action com.sas.aml.form 
com.sas.aml.service com.sas.aml.dao com.sas.aml.framework 
com.sas.aml.framework.dao com.sas.aml.framework.service 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.04.09(수) 작업 ■■■■■■■■■■■■■■■■
---> 10:10 ~ 18:00  --> 임시 공휴일, 총선(13번 진보신당에 투표), 동지고 동기 김태훈, 김근 만남(현대홈 타운 근처 빌라) 

- 삼성 AML Prj 
1. 웹로직, eclipse 설치 매뉴얼 문서화 작업 
(01. 웹로직, eclipse 설치 매뉴얼.ppt) 
http://45.10.4.21:7001/sasaml2/index.jsp     ===> main 
http://45.10.4.21:7001/sasaml3/index.jsp 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.04.10(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 21:30  --> 현용이한테 CD롬 받음 

- 삼성 AML Prj 
1. Eclipse 세팅(웹로직, AML 소스) --> STR 보고서 
http://45.10.4.21:7001/sasaml2/index.jsp     ===> main  

- com.sas.aml.str.action   
AlertSTRsAction.java 
- com.sas.aml.str.service 
STRService.java 
System.out.println("[/AlertSTRsAction.java]:[execute()]:[test]"); 
------------------------------------------------------------------------------------------ 

 - 디버깅 문제 발생(Eclipse, 웹로직) 
- 중단점을 설정하여 디버그 실행하기 
1. 실행 
Run --> Debug --> Java 응용프로그램 
1. test.java 편집 
2. 디버그하려는 문장의 왼족 부분을 더블 클릭 
3. 실행하기 
Run --> Debug As --> Debug on Server 
4. Perspective 전환 확인 -> 예(Y) 클릭 
한줄씩 할때: F6  
디버깅 계속할때: F8 
현재 라인까지 실행: CTRL + R 
http://blog.naver.com/titans07?Redirect=Log&logNo=100039022178 
http://cafe.naver.com/suninet.cafe?iframe_url=/ArticleRead.nhn%3Farticleid=534  

- 이클립스 디버그 방법(i3shop) 
1. 톰켓서버를 먼저 실행   
2. 라인에 더블클릭하면 파란 동그라미 생긴다. 여기서 부터 디버그를 하겠다는 표시 
3. 웹어플사이트에 액션을 수행하면 
- 창이 뜨고 확인 누르면된다.  
- 그러면 디버그 모드로 간다 
4. F6은 한줄씩디버그 하기 
- 오른쪽 위에 variable 과 병행하면서 코드를 본다. 
==============================================================================================================

 - /struts-config.xml 파일에서 
<!-- // Display(add) 1. Display STR  for a given alert --> 
 <action path="/AlertSTR" type="com.sas.aml.action.AlertSTRsAction"> 
    <forward name="success" path="/displaySTRs.jsp" />  
    <forward name="failure" path="/alertUnavailable.jsp" /> 
 </action> 
  
<!-- // Display(add) 1. Display STR  for a given alert -->  ===> 단순 URL로 이동 
<action 
    parameter="/displaySTRs.jsp" 
    path="/AlertSTR"    scope="request" 
    type="org.apache.struts.actions.ForwardAction" />  
==============================================================================================================

- [주간업무 2008년 4월 2째주]   
★ 금주 업무 실적(4/07 ~ 04/11) 
1. STR 비즈니스 로직 구현 
- STR 1장화면 개발(진행율: 90%) 
2. 웹로직, eclipse 설치 매뉴얼 문서화 작업 
- 01. 웹로직, eclipse 설치 매뉴얼.ppt 파일 작성 
------------------------------------------------------------------------------------------ 

★ 차주 업무 계획(04/14 ~ 04/18)
1. STR 비즈니스 로직 구현 
- STR 2장, 3장, 4장, 5장, 6장 화면 개발 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.04.11(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 23:20  --> 유상진 대리와 당구(2패 뒤 첫승) 

- 삼성 AML Prj 
1. Eclipse 세팅(웹로직, AML 소스) --> STR 보고서 
Eclipse, 웹로직, 디버깅 문제 발생 
http://45.10.4.21:7001/sasaml2/index.jsp     ===> main   

3) /com.sas.aml.action.AlertSTRsAction.java 파일에서 
public ActionForward execute(ActionMapping actionmapping, ActionForm actionform,  
HttpServletRequest httpservletrequest, HttpServletResponse httpservletresponse) 
        throws ApplicationException   { 
Properties properties = (Properties)super.getServlet().getServletContext().getAttribute("sasaml.config"); 
String s2 = properties.getProperty("sasaml.sarlink");   // enable 여부 확인 

HashMap hashmap = (HashMap)super.getServlet().getServletContext().getAttribute("sasaml.properties"); 
SARService sarservice = (SARService)hashmap.get("SARService");  // SARService 설정 
} 
----------------------------------------------------------------------------------------------------- 

- D:\Proj_sasaml\config\sasaml.config 파일에서 
sasaml.sarlink=enable 

- D:\Proj_sasaml\config\sasaml.services 파일(properties)에서 
com.sas.aml.service.SARService 
com.sas.aml.str.service.STRService # ---> # STR Service(New)  
==============================================================================================================

- 프로퍼티 에디터 생성 
번거로운 작업 중 하나인, native2ascii를 사용하는 프로퍼티 파일의 유니코드 전환작업을 필요없게 해 줌  
1. Help - Software Updates - Update Manager 메뉴를 선택 
2. 업데이트 매니져 화면 좌측 하단의 Feature Updates 뷰에서 Sites to Visit를 우클릭 New - Site Bookmark를 선택 
 Name: 프로퍼티 에디터 
 URL: http://propedit.sourceforge.jp/eclipse_plugins/ 
3. Feature Updates 뷰의 맨 밑에 '프로퍼티 에디터'라는 항목이 새로 생겼을 겁니다. 이 항목을 계속 확장하면  
나타나는 'jp.gr.java_conf.ussiy.app.propedit.eclipse.feature.PropertiesEditorFeature x.x.x'를 선택하면,  
우측의 Preview 뷰에서 간단한 설명, 라이센스 등과 함께 'Install Now' 버튼이 보입니다. 이 버튼을 클릭하고 
Next 버튼을 계속 눌러주면(라이센스에는 동의하셔야죠!) 설치가 완료됨 
4. 이제 이클립스를 새로 시작하면 이 플러그인을 사용하실 수 있습니다  
==============================================================================================================

- 자바 에러 
java.lang.ClassCastException: 같은 클래스이름이나 혹은 같은 객체참조형 변수 이름이 있기 때문에 나타납니다 
만 어느 오브젝트를 상속 관계에 없는 클래스에 캐스트 하려고 한 것이라고도 할수 있음 
java.lang.NullPointerException: Nu어떤 변수나 객체의 값이 없거나, 생성되지 않았는데, 그것을 이용하려고 할 때  
발생. 코드(Logic)상의 문제가 아니기 때문에 Compile time에는 error가 발생되지 않고, 실제로 프로그램을 실행할  
때(Run time) error가 남. 
==============================================================================================================

- 완벽주차공식요령(동영상)강추: 전진 주차, 후진 주차, 일렬 주차 
mms://211.233.69.34/autotimes/VOD_9.wmv 
- 모토딕 http://www.motordic.com 
http://tong.nate.com/koped/11768835 
==============================================================================================================

- 박정하 결혼 축의금 송금(포항계) 
농협: 717109-52-027262( 71710952027262 ) 예금주: 심정미(주남이형 형수) 30만원 송금 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.04.12(토) 작업 ■■■■■■■■■■■■■■■■
--> 09:30 ~ 19:20 --> 조기축구(06:50 ~ 07:30), 점심(명동 현용이가 쏨), 용산 이마트 쇼핑(먼지 제거기, 염색약 구매) 
  
- 삼성 AML Prj 
1. Eclipse 세팅(웹로직, AML 소스) --> STR 보고서  
http://45.10.4.21:7001/sasaml2/index.jsp     ===> main   
1) Form 파일 연결 에러, 한글 깨짐 문제 
- com.sas.aml.str.common 
JSPUtil.java.java, StrUtil.java, StrUtil_2.java 
- com.sas.aml.str.action --> execute() 
AlertSTRsAction.java, NewSTRAction.java 
- com.sas.aml.str.service   --> DB 연결 
STRService.java, STRService.java 
- com.sas.aml.str.form --> Form 
STRForm.java 
----------------------------------------------------------------------------------------------------- 

- Form 파일 연결 에러 
-/sasaml/WEB-INF/struts-config.xml 파일에서 아래와 같이 적는다.(STRForm 추가, name="STRForm") 
<!-- ========== Form Bean Definitions ================================== --> 
<form-beans type="org.apache.struts.action.ActionFormBean">   
<form-bean name="STRForm" type="com.sas.aml.str.form.STRForm" />  <!-- STRForm 새로 정의--> 
</form-beans> 

<!--Display(add) New STR2 menu  --> 
<action path="/NewSTR2" type="com.sas.aml.str.action.NewSTRAction2" name="STRForm"> 
    <forward name="success" path="/displaySTRs_step2.jsp" /> 
    <forward name="failure" path="/error.jsp" /> 
</action> 
==============================================================================================================

- eclipse 웹로직 debugging 에러 문제 처리 
1. eclipse 웹로직은 문제 없음 
2. 추후 EJB가 포함된 eclipse 웹로직을 돌려서 확인할 것 
------------------------------------------------------------------------------ 
- 톰켓 설정 URL 
 http://localhost:8080/servlet/SampleTestServlet  
- 웹로직 설정 URL 
http://localhost:7001/servlet/SampleTestServlet  
웹로직에서 Add and Remove Projects는 EJB에서만 가능(EJB 전용)  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.04.14(월) 작업 ■■■■■■■■■■■■■■■■
--> 06:50 ~ 23:20 

- 삼성 AML Prj 
1. Eclipse 세팅(웹로직, AML 소스) --> STR 보고서  
http://45.10.4.21:7001/sasaml2/index.jsp     ===> main   
 1) STR: displaySTRs_step1.jsp(PARTⅠ, Ⅱ), displaySTRs_step2.jsp(PART Ⅲ) 
 sasaml.sar.create.sar_info=insert into sar_info (sar_id) values (?) 
SELECT * FROM AMLCTR.sar_info 

 2) AML DB 
AMLCORE: CORE 
AMLCTR: KC, SAR

 3) 한글 깨짐 문제 
<%@ page contentType="text/html; charset=utf-8" %> 를 맨위에 적음 
<%@ page contentType="text/html; charset=euc-kr" %>   
==============================================================================================================

 - cvs 설정(테스트 서버) 
id/pwd : cvsuser1/ksh_00  --> tamario/ssjtm_12 
host : 45.10.10.174 
repository path : /cvs/repository 
==============================================================================================================

- eclipse 에러 
원인: 해당 param명 *part1_rpt_org_nm)이 없을 때 ==>  <c:out value="${part1_rpt_org_nm}"/ >  
에러내용: java.io.IOException: javax.servlet.jsp.JspException: The taglib validator rejected the page: "Invalid use of "param"  
tag outside legitimate parent tag, " 
==============================================================================================================

- jar 파일 만들기 
 예 1: classes.jar라는 아카이브 파일에 두 클래스 파일을 아카이브하려면 : 
> jar cvf classes.jar Foo.class Bar.class 
> jar cvf test_0.jar -C Temp/test_jar/. 
> jar cvfm test_0.jar mymanifest -C Temp/test_jar/. 
> jar cvf test_0.jar /sasaml  'mymanifest'를  -C Temp/test_jar/.  
1. 압축할때  
> jar cvf create.jar a.class b.class cDirectory  
a.class,b.class,cDirectory를 create.jar라는 이름으로 생성합니다.   
2. 압축풀때  
> jar xvf create.jar  
create.jar의 내용을 추출합니다.  
3. 압축된내용보기 
> jar tvf create.jar 
create.jar의 내용을 봅니다. 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.04.15(화) 작업 ■■■■■■■■■■■■■■■■
--> 07:00 ~ 18:20 --> AML팀 최과장, 김부장과 한잔(당구(짐), 횟집, 맥주집) 

- 삼성 AML Prj 
1. Eclipse 세팅(웹로직, AML 소스) --> STR 보고서 DB 연결 에러 
http://45.10.4.21:7001/sasaml2/index.jsp     ===> main   
 1) STR: displaySTRs_step1.jsp(PARTⅠ, Ⅱ), displaySTRs_step2.jsp(PART Ⅲ) DB에 저장 
sasaml.sar.create.sar_info=insert into sar_info (sar_id) values (?) 
SELECT * FROM AMLCTR.sar_info 
  
sasaml.str.create.str_alert=insert into str_alert (sar_id, str_status, alert_id, institution) values (?, ?, ?, ?) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.04.16(수) 작업 ■■■■■■■■■■■■■■■■
--> 07:10 ~ 22:30  --> AML팀과 저녁(감자탕) 

- 삼성 AML Prj 
1. Eclipse 세팅(웹로직, AML 소스) --> STR 보고서 DB 연결 
http://45.10.4.21:7001/sasaml2/index.jsp     ===> main   
 1) STR: displaySTRs.jsp(STR 리스트)  
- WEB-INF\classes\com\sas\aml\sasaml.oracle 파일에서 
sasaml.str.create.str_alerts=INSERT INTO STR_ALERT (STR_ID, STR_STATUS, ALERT_ID, INSTITUTION) VALUES (?, ?, ?, ?)  
INSERT INTO STR_ALERT (STR_ID, STR_STATUS, ALERT_ID, INSTITUTION) VALUES (600017, '2', 1111, '삼성증권')  
SELECT * FROM STR_ALERT ORDER BY STR_ID  
---------------------------------------------------------------------------------------- 
- WEB-INF\config\ApplicationResources_ko.properties 파일에서 
str.part0.list.grid.title.No.txt=순번 
str.part0.list.grid.title.accountNo.txt=계좌번호 
==============================================================================================================

- AML 회의(주간 계획서 작성할 것): 오광섭 차장 
1. 주간 계획서 작성할 것(4월 마지막 주에 일별 계획서 제출할 것) 
2. STR 설계서 작성할 것(다음주 목요일까지) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.04.17(목) 작업 ■■■■■■■■■■■■■■■■
--> 06:50 ~ 23:20  --> AML팀과 저녁(스파게티, 피자) 

- 삼성 AML Prj 
1. STR 개발 계획 보고서 작성 
STR 개발 계획 보고서.ppt 
---------------------------------------------------------------------------------------- 
AS-IS: 현행 프로세스, 현재의 상황, 현실 
TO-BE: 개선된 프로세스, 이상적 상황, 추구하고자 하는 이상적 지향점(To-Be Process) 
==============================================================================================================

- [주간업무 2008년 4월 3째주] 
★ 금주 업무 실적(04/14 ~ 04/18) 
1. STR 비즈니스 로직 구현 
- STR 메인 화면 개발(UI 화면이 국민은행 기반 인터페이스로 변경 되어 다시 작업) 
- STR 설계 작업을 마무리 한 후 개발 하기로 함 
------------------------------------------------------------------------------------------ 

★ 차주 업무 계획(04/21 ~ 04/25) 
1. STR 설계 작업 
- 전산요건 정의서 작성 
==============================================================================================================

- 주간 계획서 작성 
1) STR 설계 작업 
2) STR 비즈니스 로직 구현 
- 7단계 작업 구현 
3) what's list 데이타 맵핑 
- 웹에서 엑셀 파일을 사용하여 opec SDI List로 데이타 맵핑 
4) 대시보드 화면설계 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.04.18(금) 작업 ■■■■■■■■■■■■■■■■
--> 07:10 ~ 22:30 

- 삼성 AML Prj 
1. STR 화면레이아웃(설계 작업) 
- 6. [거래유형] 입력방법(STR 개발 계획 보고서.ppt) 
==============================================================================================================

- 내장 하드랙 
AIO EasyRACK 201 SATA HDD DISK LOADER 내장 하드랙(블랙/ LED) 가격: 22,000원 
http://mall.shinsegae.com/item/item.do?method=viewItemDetail&item_id=10032923&ckwhere=danawa 
==============================================================================================================

- 주식투자 수수료 
동양종합금융증권(은행개설계좌의 온라인 주식위탁매매): 0.015% 
키움증권: 0.025% 
하나대투증권: 0.025% 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.04.19(토) 작업 ■■■■■■■■■■■■■■■■
--> 09:50 ~ 20:30 --> 조기축구(06:50 ~ 07:30), 셀프세차(2천원): 낙성대입구 근처, 저녁(피자: 최태수 과장이 쏨) 

- 삼성 AML Prj 
1. STR 화면레이아웃(설계 작업)
STR 개발 계획 보고서.ppt, STR_설계_화면레이아웃_v1.1_20080418.doc  
==============================================================================================================

- 강남 고속버스 터미널 소화물 배송 
영업시간: 06:00 ~22:00(공휴일 ~19:30), 택배비: 5,000원(10kg 미만), T)535-2591, 2598  
(서울 -> 경주(큰누나집): 컴퓨터 본체 소화물로 붙임)  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.04.21(월) 작업 ■■■■■■■■■■■■■■■■
--> 06:30 ~ 21:20  

- 삼성 AML Prj 
1. STR 화면레이아웃(설계 작업): 완료 
- STR 개발 계획 보고서.ppt, STR_설계_화면설계서_v0.1_20080418.doc  
2. STR 화면 설계서 작성(STR_설계_화면설계서_v0.1.doc) 
- STR_ALERT매핑정보(STR_Alerts), 
- 거래자정보(STR_Trade_Person_Info), 
- 거래내역정보(STR_Trade_Person_Info),  
- 관련계좌정보(STR_Account_Info), 
- 자행관련 영수 송금시 송금인 수취인 정보(STR_Remitter_Beneficiary_Accou), 
- 의심스러운거래에 대한 정보(STR_Suspicion_Info) 
- 유가증권 정보(STR_Securities_Info) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.04.22(화) 작업 ■■■■■■■■■■■■■■■■
--> 06:50 ~ 22:30  

- 삼성 AML Prj 
1. STR 화면 설계서 작성(STR_설계_화면설계서_v0.1.doc) 
- 1. 혐의거래 보고서 관리 
==============================================================================================================

1. STR 화면 레이아웃: 완료 
2. STR 화면 설계서   
3. STR 물리 테이블 정의서(ERD) 
4. STR 논리 테이블 정의서(ERD) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.04.23(수) 작업 ■■■■■■■■■■■■■■■■
--> 07:00 ~ 22:30  --> AML팀과 저녁(웰빙 빵: 서브웨이)  

- 삼성 AML Prj 
1. STR 화면 설계서 작성(STR_설계_화면설계서_v0.1.doc): 1차 완료 
 - 3. 보고대상자 검색 (팝업) ~ 12. 혐의거래보고서 반송(관리자용) 
==============================================================================================================

- MS 워드 저장 에러 
에러: "문서가 저장되었지만 저장할 공간이 충분하지 않기 때문에 음성 인식 데이터가 손실되었습니다.  
 녹음하지 않을 경우 마이크를 끄고 디스크에서 사용 가능한 저장 공간을 확인하십시오  
조치: 저장할 때 옵션기능 충돌현상인데요 ^^  
우선 도구 메뉴- 옵션- 저장- 언어데이터 포함.. 이부분에 체크를 없애고 다시 저장을 해주세요   
- 파워 포인트 에러 
에러: "이프로젠테이션의 일부컨트롤를 사용할수없습니다. 이 시스템에 등록이 되어있지 않은것 같습니다."라는  
메세지만 계속 나타납니다.  
원인: 버젼의 문제입니다.  
쉽게 말씀 드리면 파워포인트2007로 작업한 내용을 2003으로 보았을 때 2003에선 없는 애니메이션 기능을 2007로  
작업을 해서 그렇습니다.  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.04.24(목) 작업 ■■■■■■■■■■■■■■■■
--> 06:50 ~ 22:30  

- 삼성 AML Prj 
1. STR 화면 설계서 작성(STR_설계_화면설계서_v0.1.doc): 수정 
2. 테이블 정의서(ERD) 작성(STR 데이터 모델.erwin) 작성: 완료 
==============================================================================================================

- [주간업무 2008년 4월 4째주]  
★ 금주 업무 실적(04/21 ~ 04/25)
1. STR 설계 산출물 작성: 완료 
 1) STR 화면 레이아웃 
 2) STR 화면 설계서   
 3) STR 물리 테이블 정의서(ERD) 
 4) STR 논리 테이블 정의서(ERD) 
------------------------------------------------------------------------------------------ 

★ 차주 업무 계획(04/28 ~ 05/02)
1. STR 개발 
- 1) 혐의거래 보고서 목록 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.04.25(금) 작업 ■■■■■■■■■■■■■■■■
--> 07:15 ~ 19:00  --> SAS 최병정 차장 AML PM으로 옴, 현용.태용 만남(당구:2등, 태용이사(마석->방이동) 

- 삼성 AML Prj 
1. STR 화면 설계서 작성(STR_설계_화면설계서_v0.1.doc): 수정 
2. 테이블 정의서(ERD) 작성(STR 데이터 모델.erwin) 작성: 수정 
정의가 안된 테이블:  
 1) 송금/수취계좌 정보  
 2) 계좌 개설대리인 정보 
 3) 타행관련 정보(미사용할 것으로 추정) 
 4) 보험 정보(미사용할 것으로 추정) 
 5) 첨부파일 정보 
------------------------------------------------------------------------------------------  
- STR 관련 테이블 
1) STR 보고서 진행 현황(STR_ALERT_STATUS) 
2) STR 의심스러운 거래에 대한 서술(STR_SUSPICIOUS_COMMENT) 
3) STR 의심스러운 거래 유형 및 정도에 관한 정보(STR_SUSPICIOUS_CHECK) 
4) STR 거래내역정보(STR_TRADE_INFO) 
5) STR 거래 대리인 정보(STR_TRADE_AGENT_INFO) 
6) STR 거래자 정보(STR_TRADE_PERSON_INFO) 
7) STR 유가증권거래내역(STR_SECURITIES_TRADE_INFO) 
8) STR 증권거래내역(STR_STOCK_TRADE_INFO) 
9) STR 보험(STR_INSURANCE_INFO) 
10) STR 계좌정보(STR_ACCOUNT_INFO) 
11) STR 첨부파일 정보(STR_ATTACHING_FILE_INFO) 
------------------------------------------------------------------------------------------ 

- Physical erwin 칼럼 데이타 타입 보이기(Erwin 7.1에서) 
Physical --> Format --> Table Display --> Column Datatype: 체크할 것 
==============================================================================================================

- 삼성증권 FN Messenger 
조직도 --> 대표이사 사장 --> 경영지원본부 --> 리스크관리 선진화 T/F --> 경영지원본부 --> 개발팀 
==============================================================================================================

- 자테온 홈(네이트온(메신저) 아류작) 
http://jateon.kfmes.com 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.04.26(토) 작업 ■■■■■■■■■■■■■■■■
--> 09:30 ~ 16:00  --> 올리브(선릉역 근처(16:00 ~20:30), 태용이가 쏨), 고인돌 치킨 T)874-7444 

- 삼성 AML Prj 
1. STR 화면 설계서 작성(STR_설계_화면설계서_v0.1.doc): 수정 
회의(강유숙 차장) -> 수정사항 수정 완료 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.04.28(월) 작업 ■■■■■■■■■■■■■■■■
--> 07:10 ~ 22:30 

- 삼성 AML Prj 
1. STR AML_화면 목록 작성 
- 일일 일정 작성    
==============================================================================================================

 - 삼성 AML Proj 관계자 연락처 
PM: SAS 최병정 차장(C.P: *) 
UI 담당: SAS 최태수 과장(C.P: *) 
    나라정보 강유숙 차장(C.P: *) 
분석: SAS 오광섭 차장(C.P: *)  
DB담당: 이리스 김대후 차장(C.P: *)  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.04.29(화) 작업 ■■■■■■■■■■■■■■■■
--> 07:00 ~ 22:00   --> HSBC은행 이체한도 증액(천만원 -> 1억), 폰뱅킹 이체한도(1억): HSBC서울지점 

- 삼성 AML Prj 
1. STR 소스 분석(STR  나의 경보)
2. STR DB 분석 
Sysbase --> Oracle로 매팅 
Core, KC(STR) DB로 분리 
------------------------------------------------------------------------------------------ 
  
에러내용: ORA-01775 동의어가 순환 고리 유형으로 정의되어 있습니다 
원인: Schema명이 다름 
에러내용: ORA-00937 단일 그룹의 그룹함수가 아닙니다. 
원인:  
==============================================================================================================

- 정기예금 분석 
1. 삼화 저축은행 6.7%(2년 6.9%) ===> 3천, 천 5백, 천(총 5천 5백) 
2. HK 저축은행 6.5% 
3. 진흥저축은행  6.5% 
4. 푸른 저축은행 6.5%  
5. 프라임 저축은행 6.3% 
6. 솔로몬 저축은행 6.2% 
서울)HK저축은행  정기예금   6.50% 10,588,250원 
 56,167,867  
HSBC 연 5%(3천만원까지), 초과부분 연4%  --> 약정 1일이체한도 1억원 
동양종금 CMA  연 4.5% --> 약정 1일이체한도 3천만원(주말, 공휴일 2천) 
현대증권 CMA  연 4.3%  
삼성증권 CMA  연 5.10% 
------------------------------------------------------------------------------------------ 
생계형 저축: 전 은행 총 한도는 3000만원까지 가능, 장애인, 만 60세(여 만 55세)이상인 분 
세금우대 저축(9.5% 세금냄): 일반인은 2,000만원 가능, 생계형 저축 대상자는 6,000만원까지 가능  
세금: 이자세금 15.4% 
예) 천만원 기준, 이자율: 6.5%, 이자: 650,000원 
일반(15.4%)  ===> 세금: 106,260원,  실수령액 : 10,549,900원 
세금우대(9.5%)  ===> 세금: 61,750원,  실수령액 : 10,588,250원 
생계형(비과세)  ===> 세금: 0원,  실수령액 : 10,650,000원 
안전한 저축은행이란 주로 8.8클럽에 속하는 은행을 말하는데요 
bis 비율이 8% 이상, 고정이하여신비율이 8% 이하인 곳을 말합니다. 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.04.30(수) 작업 ■■■■■■■■■■■■■■■■
--> 07:00 ~ 22:30  --> 삼화 저축예금 가입(신촌 로타리) 

- 삼성 AML Prj 
1. STR 소스 분석(STR  나의 경보)  
 [2008-04-30 09:13:53] ERROR [ExecuteThread: '12' for queue: 'weblogic.kernel.Default'] -   
 ============================== SAS AML Exception ============================== 
java.lang.ClassCastException: com.sas.aml.service.AlertQueryService 
at com.sas.aml.str.action.UserAlertListAction.execute(UserAlertListAction.java:35) 

AlertQueryService alertqueryservice = (AlertQueryService)hashmap.get("AlertQueryService"); 
원인: 1) 같은 클래스이름이나 혹은 같은 객체참조형 변수 이름이 있기 때문에 나타납니다 
2) 캐스팅 되는 객체와 캐스팅할려고 하는 클래스가 맞지 않아서 발생하는 오류 
조치: import com.sas.aml.str.service.AlertQueryServiceN; 
AlertQueryServiceN alertqueryservice = (AlertQueryServiceN)hashmap.get("AlertQueryServiceN"); 
------------------------------------------------------------------------------------------ 
  
============================== SAS AML Exception ============================== 
java.lang.ClassCastException: com.sas.aml.util.ListNavigator 
at com.sas.aml.str.action.UserAlertListAction.execute(UserAlertListAction.java:37) 

ListNavigator ListNavigator = (ListNavigator)httpsession.getAttribute("alnuser"); 
원인: 같은 클래스이름이나 혹은 같은 객체참조형 변수 이름이 있기 때문에 나타납니다 
 조치: import com.sas.aml.str.service.AlertQueryServiceN; 

 java.lang.Error: Unresolved compilation problem:  
The method getMyAlerts(UserContent, ListNavigator) in the type AlertQueryServiceN is not applicable for  
the arguments (UserContent, ListNavigatorN)  
---------------------------------------------------------------------------------------------------------- 
  
에러내용: ORA-01775 동의어가 순환 고리 유형으로 정의되어 있습니다 
원인: Schema명이 다름 
에러내용: ORA-00937 단일 그룹의 그룹함수가 아닙니다. 
원인:   
==============================================================================================================

- 삼화 저축은행 예금 가입
1. 상품명: 보통예금, 예금주: 진태만 
계좌번호: 018-01-13-2384510(01801132384510) 
연계계좌(국민): 925890-61-138879  
2. 상품명: 보통예금, 예금주: 진덕근 
계좌번호: 018-01-13-2384633 
 1) 생계형(비과세) 정기예금복리  018-01-24-2778659 원금: 3천 
실수령액: 34,425,657원, 이자율: 연7.37%, 예치기간: 2년 
만기일자: 2010/04/30    
 2) 세금우대 정기예금복리  018-01-24-2778659  원금: 천 5백  
실수령액: 17,002,618원, 이자율: 연7.37%, 예치기간: 2년 
만기일자: 2010/04/30   
총실수령액: 51,428,275원(총원금: 4천 5백) 
인터넷뱅킹 아이디: tamario2/ssj**8** 
가입자번호: 004726, 이체한도: 1억(1일) 
세금우대 잔여금: 420만원 
------------------------------------------------------ 
종각 -> 신촌로타리(270번 , 271번, 273번, 721번) 
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■