

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2008.05) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2008.05.01(목) 작업 ■■■■■■■■■■■■■■■■
---> 09:00 ~ 19:00  --> 임시 공휴일 

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
ListNavigator 
==============================================================================================================

- jadclipse 설치 방법  
1. http://sourceforge.net/projects/jadclipse 에서 원하는 버전의 jadclipse를 다운받는다.   
jadnt158.zip 파일 다운로드 --> 압축을 풀면 jad.exe 파일이 보임 
2. 다운받은 jadclipse_XXX.jar 압축을 풀어서 eclipse plug-in 폴더(D:\eclipse\plugins)에 옮겨놓는다. 
/net.sf.jadclipse_3.2.4폴더를 복사하여 D:\eclipse\plugins 폴어에 붙어 넣기 
3. eclipse를 실행한다.   
4. window->preference->general->editors->file assosiations에서 *.class선택후 하단의  
JadClipse Class File Viewr 를 선택후 default 를 선택한다.  
5. window->preference->java->JadClipse를 선택한후 Reuse coed buffer를 체크해준다. 
Path the decompliler: D:\jad\jadnt158\jad.exe 
Derectory for temporary files: D:\jad\net.sf.jadclipse_3.2.4\net\sf\jadclipse  
6. eclipse 왼쪽 메뉴바 Package explorer에서 sasaml_class.jar를 클릭하고 AlertQueryService.class 파일을  
더블클릭하면 .java소스 보임(D:\eclipse\workspace\Proj_sasaml2\build\lib\sasaml_class.jar) 
------------------------------------------------------------------------------------------ 
- 디컴파일 에러 ===> 일부 class는 다음과 같은 메세지가 나오면서 디컴파일 에러가 남 
Overlapped try statements detected. Not all exception handlers will be resolved in the method getMyAlerts 
Couldn't fully decompile method getMyAlerts 
Couldn't resolve all exception handlers in method getMyAlerts 
http://javanuri.devpia.com/devforum/boardView.jsp?Id=209787&menuId=18 

java.lang.ClassCastException: com.sas.aml.service.AlertQueryService 
==============================================================================================================

 - 고속버스 요금, 기차 요금 비교 
1. 고속버스 요금(서울 -> 포항) 
일반: 18,600원, 우등: 27,700원, 심야우등: 30,500원 
2. 기차 요금(서울 -> 포항) 
새마을: 38,200원 
 ------------------------------------------------------------------------------------------ 
3. 고속버스 요금(서울 -> 경주) 
일반: 17,500원, 우등: 26,000원, 심야우등: 28,600원 
4. 기차 요금(서울 -> 경주) 
새마을: 35,800원, 무궁화: 24,100원 
5. 기차 요금(서울 -> 동대구) 
KTX: 41,100원, 새마을: 30,400원, 무궁화: 20,500원 
==============================================================================================================

 - MyLG 070 전화 안내 
http://www.070mylg.com 
www.dacom4u.co.kr(정홍이 회사) --> 전화기, 공유기 무료로 준다.  
==============================================================================================================

-  [주간업무 2008년 5월 1째주] 
★ 금주 업무 실적(04/28 ~ 05/02) 
1. 일일 일정 작성 
2. STR 소스 분석(STR  나의 경보) 
------------------------------------------------------------------------------------------ 

★ 차주 업무 계획(05/06 ~ 05/09) 
1. STR 개발 
- 1) 혐의거래 보고서 목록 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.05.02(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 21:00 

- 삼성 AML Prj 
1. STR 소스 분석(STR  나의 경보)  
The method getMyAlerts(UserContent, ListNavigator) in the type AlertQueryNewService is not applicable  
for the arguments (UserContent, ListNavigator)  
java.lang.ClassCastException: com.sas.aml.content.UserContent 
java.lang.ClassCastException은 어떤 클래스를 업캐스팅이나 다운캐스팅할때 잘못된 클래스로 캐스팅할때  
나는 에러입니다 
==============================================================================================================

- eclipse 재세팅 
http://45.10.4.21:7001/WebContent/vxi/AlertListUser 
==============================================================================================================

- AML 개발 서버 
host : 45.101.21.181 
id/pwd: sasadm/sasadm  
--------------------------------------------------------------------- 
- STR 개발 cvs 테스트 서버(최과장 노트북)  
host : 45.10.10.174 
id/pwd : cvsuser1/ksh_00  --> tamario/ssjtm_12 
repository path: /cvs/repository 
--------------------------------------------------------------------- 
- 혐의거래 보고(혐의거래보고2.0 프로그램) 
okbl3474/bmk4743 
==============================================================================================================

- 프라임 저축은행 예금 가입  
1. 세금우대 정기예금복리2008-05-02 
계좌번호: 011-02-24-0343097 
원금: 420만원, 실수령액:  원, 이자율: 연 6.59%, 예치기간: 1년 
만기일자: 2009/05/02    
==============================================================================================================
     
 - 삼성증권 CMA통장 개설(삼성 CMA) 
 1) (001)삼성 이머징 다이나믹 주식(CMA) --> 이체 수수료 무료 
계좌번호: 47319166  
연계계좌: 4211 90 40352925(국민은행): 42119040352925 
이자율: 연 5%,  1일 이체금액: 1억,  1일 출금액: 3백 
 2) (1057 194)삼성 이머징 다이나믹 주식 종류형자1호-C1(펀드): 주식형  
증권계좌번호: 4731966-투신(001) 
이체금액: 10만원, 이체일: 25일, 기간: 36개월 
만기일자: 2011/04 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.05.03(토) 작업 ■■■■■■■■■■■■■■■■
---> 09:30 ~ 15:30 --> 조기축구(06:40 ~ 07:30), 경주행(고속버스) 

- 삼성 AML Prj 
1. STR 소스 분석(STR  나의 경보) 
  경보 규제 리포트 
http://45.10.4.21:7001/WebContent/vxi/NewSAR  
- 이클립스에서 저장 시 ISO-8859-1 encoding 오류 로 저장이 안될 경우 
window>Preferences > General > content Types> Text에서 Default encoding을 euc-kr로 update 후 저장 한다.  
(안되면 Text > JSP에서 Default encoding을 euc-kr로 update 후 저장) 
에러: Some characters is not mapping ISO-8859-1 character encoding. 
http://45.10.4.21:7001/WebContent/vxi/AlertListUser 
==============================================================================================================

 - ServletContext 에러 
에러내용: the import ServletContext cannot be resolved  
조치: Propotites sasaml의 Libararies탭에서 Add Extenal JARS 를 클릭하여 weblogic.jar, webservices.jar  
파일을 등록   
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.05.06(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 22:30  --> 나라 정보 김 광기 부장(KYC 담당) 투입 

- 삼성 AML Prj 
1. STR 소스 분석 
1. 혐의거래 보고서 목록(/WebContent/vxi/AlertSTR  --> /str/displaySTRs.jsp)  
SAR_ALERTS, FSK_CASH_FLOW_ALERT, FSK_CASH_FLOW_BANK_ALERT, FSK_CASH_FLOW_ALERT 
http://45.10.4.21:7001/WebContent/vxi/NewSAR 
==============================================================================================================

- STRService 에러 
에러내용: java.lang.ClassNotFoundException: com.sas.aml.str.service.STRService 
조치: 1. C:\bea\user_projects\domains\AMLDomain\config.xml 파일에서 sasaml3 부분 삭제 
<Application Name="sasaml3" Path="d:\eclipse\workspace\Proj_sasaml3" StagingMode="nostage" TwoPhase="true"> 
<WebAppComponent Name="sasaml3" Targets="AMLServer" URI="sasaml3"/> 
</Application> 
2. D:\Proj_sasaml\sasaml\WEB-INF\classes에 해당 class 복사하여 붙여 넣기 
---------------------------------------------------------------------------------------- 
- AlertSTR 내용을 볼 수 없음 
에러내용: No action instance for path /AlertSTR could be created 
조치: class위치 변경 
 D:\eclipse_T2\sasaml\build\classes  --> D:\eclipse_T2\sasaml\build 
 D:\eclipse_T2\sasaml\WebContent\WEB-INF\classes 
==============================================================================================================

- 프로퍼티 에디터 생성(한글 전환) 
번거로운 작업 중 하나인, native2ascii를 사용하는 프로퍼티 파일의 유니코드 전환작업을 필요없게 해 줌  
1. Help - Software Updates - Update Manager 메뉴를 선택 
2. Install/Update 에서  --> Search for new features to install 체크 
2. Install에서 Update sites to visit --> New Remote Site 버튼 클릭 
 Name: 프로퍼티 에디터 
 URL: http://propedit.sourceforge.jp/eclipse_plugins 
3. Feature Updates 뷰의 맨 밑에 '프로퍼티 에디터'라는 항목이 새로 생겼을 겁니다. 이 항목을 계속 확장하면  
나타나는 'PropertiesEditorFeature 3.x'와 'viPlugin for PropertiesEditor'를 선택하면,  
Chage Location: D:\eclipse\workspace\Proj_sasaml2\sasaml2\WEB-INF\config\eclipse 선택 
우측의 Preview 뷰에서 간단한 설명, 라이센스 등과 함께 'Install Now' 버튼이 보입니다. 이 버튼을 클릭하고 
Next 버튼을 계속 눌러주면(라이센스에는 동의하셔야죠!) 설치가 완료됨   
4. 이제 이클립스를 새로 시작하면 이 플러그인을 사용하실 수 있습니다   
http://cafe.naver.com/leesc81.cafe?iframe_url=/ArticleRead.nhn%3Farticleid=221 
==============================================================================================================

- 나눔동기 모임 공고 
일시: 2008년 5월 17일(토) ~ 18일(일) 
장소: 대전 일원 
참석 예정인원: 진협, 상환, 태용, 태만, 현용, 호수 
----------------------------------------------------------- 
- 나눔동기 모임 당구대회 
A조 톱시드: 상환(120) 
B조 톱시드: 임모(120) 
C조 톱시드: 현용(100) 
나머지 조는 당일 추첨으로 정함. 
상금 1등: 5만원, 꼴치 당구비 내기 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.05.07(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 22:10 

- 삼성 AML Prj 
1. STR 소스 분석 
1. 혐의거래 보고서 목록(/WebContent/vxi/AlertSTR  --> /str/displaySTRs.jsp) 
FSK_CASH_FLOW_ALERT: Core 복제 테이블  
-------------------------------------------------------------------------------------------------------------  

1) /com.sas.aml.str.action.AlertSTRsAction.java 파일에서 
httpservletrequest.setAttribute("strCount", String.valueOf(arraylist.size())); // STR 조회수  
httpservletrequest.setAttribute("STRArray", arraylist);  // List 조회 
-------------------------------------------------------------------------------------------------------------  

2) /str/displaySTRs.jsp 에서  -->  혐의거래 보고서 목록 
 조회수:  <c:out value="${strCount}" />개</TD> 
  
<TABLE cellspacing=0 cellpadding=0 width=100% border=1>    
 <c:if test="${strCount > 0}"> 
<TR> 
<c:set var="counter" value="1" /> 
<c:forEach var="str" items="${STRArray}"><!--// LIST GRID 내용  //-->       
<TD class="text"> <c:out value="${counter}" /> <!--// 순번 //--></TD>  
<TD class="text" width="40"> <c:out value="${str.ACCOUNT_NUMBER}" /> <!--// 계좌번호 //--></TD>  
<TD class="text" width="60"> <c:out value="${str.TRANSACTION_DT}" /> <!--// 거래일시 //--></TD>  
<TD class="text" width="170"> <c:out value="${str.TRANSACTION_DESCRIPTION}" /> <!--// 거래명 //--></TD>  
<TD class="text" width="80"> <c:out value="${str.BRANCH_NAME}" /> <!--// 취급점 //--></TD>   
<TD class="text" width="60"> <c:out value="${str.PARTY_TAX_ID}" /> <!--// 예금주 실명번호 //--></TD>  
<TD class="text" width="40"> <c:out value="${str.PARTY_NAME}" /> <!--// 예금주명 //--></TD>  
<TD class="text" width="30"> &nbsp;<!--// 대리인 //--></TD>  
<TD class="text" width="30"> &nbsp;<!--a// 관계 //--></TD>  
</TR> 
<c:set var="counter" value="${counter + 1}" /> 
</c:forEach> 
</c:if>   
</TABLE> 
-------------------------------------------------------------------------------------------------------------  

- IF 절 조건(JSTL에서) 
<TD class="text" width="40" align="center"><c:if test="${str.PARTY_TYPE_DESC=='법인'}"> 
<input type="checkbox" name="p_party_type_desc" value="01" style="border:0px;" checked></c:if> 
<c:if test="${str.PARTY_TYPE_DESC !='법인'}"><input type="checkbox" name="p_party_type_desc" value="01" style="border:0px;"></c:if> 
<!--// 대표자  //--></TD>   
==============================================================================================================

- 혐의거래 보고서 정보 조회 @@@@@ 
SELECT  A.ALERT_ID, B.TRANSACTION_KEY, B.ACCOUNT_KEY, (B.DATE_KEY  B.TIME_KEY) TRANSACTION_DT , 
 C.ACCOUNT_NUMBER,   D.PARTY_KEY,  
 E.PARTY_NUMBER, E.PARTY_NAME,  
 E.PARTY_TYPE_DESC, E.PARTY_TAX_ID, E.PARTY_TAX_ID_DESC, E.PARTY_IDENTIFIACTION_ID, 
 F.TRANSACTION_DESCRIPTION, 
 G.BRANCH_NAME 
FROM FSK_ALERT A, FSK_CASH_FLOW_ALERT B, 
  FSC_ACCOUNT_DIM C, FSC_PARTY_ACCOUNT_BRIDGE D, FSC_PARTY_DIM E, 
  FSC_TRANSACTION_DIM F, FSC_BRANCH_DIM G 
WHERE A.ALERT_ID = B.ALERT_ID 
AND B.ACCOUNT_KEY = C.ACCOUNT_KEY 
AND C.ACCOUNT_KEY = D.ACCOUNT_KEY 
AND B.BRANCH_KEY = G.BRANCH_KEY  
AND D.PARTY_KEY = E.PARTY_KEY  
AND B.ACCOUNT_KEY = F.TRANSACTION_KEY 
AND A.ALERT_ID = 1 --경보 ID 
--; 
==============================================================================================================

- 당구 비법 
1. 칠려고하는 두께를 머리에 그리며 친다. 
2. 쿠대는 생각 보다 많이 내밀어 힘조절을 하며 대부분은 쓸쓸 밀어 친다. 
3. 끌어 치기는 큐 걸이를 낮게 하여 푹 민다는 느낌으로 빠르게 친다. 
4. 밀어치기는 삼각 중앙 부분에 두께를 생각하면 상단 위를 밀어서 친다. 
5. 원 쿠션을 X자형 중앙을 그리며 밀어 친다. 
6. 쿠션을 칠려고 하면 다이를 보고 친다. 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.05.08(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 22:30 

- 삼성 AML Prj 
1. STR 소스 분석 
1. 혐의거래 보고서 등록(/WebContent/vxi/AlertSTR  --> /str/displaySTRs.jsp) 
com.sas.aml.str.action.RegSTRTransaction  
   
-- STR 보고서 진행 현황(STR_ALERT_STATUS) 
-- STR 거래내역 정보(STR_TRADE_INFO) 
-- STR 계좌 정보(STR_ACCOUNT_INFO) 
-- STR 거래자 정보(STR_TRADE_PERSON_INFO) 
- 날짜 조회 
TO_DATE(B.DATE_KEY  '12:00:00', 'YYYY-MM-DD HH24:MI:SS') TRANSACTION_DT 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.05.09(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:50 ~ 21:00--> 당구(김대후 부장, AML팀), 태용 집에 옴 

- 삼성 AML Prj 
1. STR 소스 분석 
1. 혐의거래 보고서 등록(/WebContent/vxi/AlertSTR  --> /str/displaySTRs.jsp) 
2. 보고기관 목록(/WebContent/vxi/AlertSTR  --> /str/displaySTRs.jsp) 
  
 -- 공통 코드 조회 
SELECT * FROM STR_MASTER  
WHERE GROUP_CODE = 'STATUS_CD' AND STR_CODE = '01' 

-- STR 보고서 진행 현황(STR_ALERT_STATUS) 
SELECT AMLCTR.FSK_SEQ.nextval FROM DUAL 
--;    
 SELECT * FROM STR_ALERT_STATUS 
-- WHERE STR_ALERT_STATUS IN ( 2021, 3177) 
--;    
-- DELETE FROM STR_ALERT_STATUS  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.05.10(토) 작업 ■■■■■■■■■■■■■■■■ 
---> 09:40 ~ 20:00  --> 용산(태용 태워줌), 조기축구(06:00 ~ 07:30), 용산 방문(LCD구매)(12:30 ~ 14:30) 

- 삼성 AML Prj 
1. STR 소스 분석 
1. 혐의거래 보고서 등록(/WebContent/vxi/AlertSTR  --> /str/displaySTRs.jsp) 
2. 보고기관 목록(/WebContent/vxi/AlertSTR  --> /str/displaySTRs.jsp) 
 혐의거래 대상자 조회 
 <c:if test="${strOrganCount > 0}"> 
   <c:forEach var="str" items="${STROrganArray}">  
   </c:forEach> 
</c:if>  
==============================================================================================================

- 나눔동기 모임 ATV(4륜 오토바이) 예약 
인당 1시간: 3만원(총 6명: 18만원) 
엑스존 http://www.x-zone.or.kr 
최우식: T)0 41-858-0223, HP) * 
주소: 충남 공주시 정안면 월산리 126번지 
==============================================================================================================

- TV겸용 LCD 구매(WIDVIEW MT-202MWT 20인치) 
(주)엠비코아테크: 서울 용산구 한강로2가 나진상가19동 3층 라열 303호  
WIDVIEW MT-202MWT 무결점  51cm (20) / 1680 x 1050 / 5㎳ / 300㏅ / 1000：1 / 무결점 정책 /  220,000원  
http://lcddotcom.co.kr/product/productView.php?cate_c1=&cate_c2=&cate_c3=&cate_c4=&nDepth=&nFirst=&nSecond=
&nThird=&nForth=&sSearchMethod=all&sSearchString=MT-202MWT&sOrderType=&nPage=1&nListPerScreen=20&nProdCode=520449 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.05.12(월) 작업 ■■■■■■■■■■■■■■■■
---> 11:50 ~ 21:00  --> 임시공휴일, 조기축구(08:00 ~ 11:30): 삼겹살 파티, TV겸용 LCD(구형) 큰누나에게 보냄 

- 삼성 AML Prj 
1. 혐의거래 보고서 목록(/WebContent/vxi/AlertSTR  --> /str/displaySTRs.jsp) 
1-1. STR 보고서 진행 현황 조회 화면(팝업)보고기관 목록(/WebContent/vxi/AlertSTR  --> /str/displaySTRs.jsp) 
==============================================================================================================

- otherwise 설정 
 <c:choose> 
<c:when test="${counter % 2 == 0}"> 
<TR bgcolor="#EEEEEE"> 
</c:when> 
<c:otherwise> 
<TR bgcolor="#FFFFFF"> 
</c:otherwise> 
</c:choose> 
-------------------------------------------------------------------------------------- 

- 공통 코드 조회 
SELECT * FROM STR_MASTER  
WHERE GROUP_CODE = 'STATUS_CD' AND STR_CODE = '01' 

- NULL값 처리 
 if( p_str_id == null  p_str_id.trim()==""   p_str_id.length() == 0 ) {  // 등록 이면 
s6 = strservice.creategRpOrgan(p_alert_id, p_str_id, p_strstatus_cd, httpservletrequest);   //함수 호출(저장) 
} else {  // 수정  이면   
s6 = strservice.editRpOrgan(p_alert_id, p_str_id, p_strstatus_cd, httpservletrequest);   //함수 호출(수정) 
} 
-------------------------------------------------------------------------------------- 

- 창닫기 
<a href="javascript:window.close();" target="_self">[자신 창닫기]</a> 
<Script Language="JavaScript"> 
alert("사진 수정을 성공했습니다!\n"); 
opener.location.reload(); 
window.close(); 
</Script> 

<TR bgcolor="#A9D3F4">  
<TD>&nbsp;<a href="AlertSTR?alertId=<c:out value='${alertId}'/>&queryType=user" onclick=" 
open('','edverclip','menubar=no,toolbar=no,location=no,directories=no,status=no,scrollbars=no,resizable=no, 
width=900,height=600,left=100,top=20');" target="_blank">[창 닫기]</a></TD>  
</TR>  
</TABLE>  
==============================================================================================================

- 버스 노선  
1. 낙성대 -> 신사중학교(900원): 환승 
낙성대 -> 사당역(5412번, 5524번, 5528번) 
사당역 -> 신사중학교(4318번, 8431번) 
---------------------------------------------- 
낙성대 -> 고속버스터미널(호남선)(5412번) 
고속버스터미널(호남선) -> 신사중학교(143번) 
고속버스터미널(호남선) -> 신사역(148번) 
------------------------------------------------------------ 
2. 신사중학교 -> 종각(900원) 
신사중학교 -> 종로2가(143번) 
신사중학교 -> 을지로 입구역(472번) 
------------------------------------------------------------  
3. 낙성대 -> 교보타워사거리:논현역 근처(5412번): 고속버스터미널 경유 
--------------------------------------------------------------------------------------------------------  
1. 성서계대 -> 서대구 고속터미널(900원)(527번) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.05.13(화) 작업 ■■■■■■■■■■■■■■■■
---> 08:10 ~ 23:00 --> 민방위훈련(07:20 ~ 07:21): 우천으로 도장만 찍고 옴 

- 삼성 AML Prj 
1. 혐의거래 보고서 목록(/WebContent/vxi/AlertSTR  --> /str/displaySTRs.jsp) 
1-1. STR 보고서 진행 현황 조회 화면(팝업)보고기관 목록(/WebContent/vxi/AlertSTR  --> /str/displaySTRs.jsp) 
2. 보고대상거래의 추가 화면(팝업)(/WebContent/vxi/AddTradeSearchAction  --> /str/pop_RpTrade.jsp) 
- 조회된 데이타 
 System.out.println("[/AlertSTRsAction.java]:[execute()]:[arraylist]"+ arraylist); 
[arraylist][com.sas.aml.str.form.STRForm@2319876, com.sas.aml.str.form.STRForm@2319876]  --> 2개   
========================================================================================================= 

string path = ""; 
return new ActionForward(path, true); 
-- return actionmapping.findForward(s1); 
========================================================================================================= 

- 창 닫기(조회와 동시에 URL 액션을 실행) 
<script language="javascript" type="text/javascript"> 
<!--  
url = "AlertSTR?alertId=<c:out value='${alertId}'/>&queryType=user";  
window.opener.location = url;  
//--> 
</script>   
<TD align="center">&nbsp;&nbsp;<a href="javascript:window.close();" target="_self">[창닫기]</a></TD>   
------------------------------------------------------------------------------------------------------------ 

- 창 닫기( [창닫기]를 클릭하면 URL 액션이 실행되고 창이 닫힘) 
<script language="javascript" type="text/javascript"> 
<!-- 
function linkToOpener(url) {   
window.opener.location = url; 
window.close(); 
} 
//--> 
</script>    
 <TD align="center">&nbsp;<a href="javascript:linkToOpener('AlertSTR?alertId=<c:out value='${alertId}'/>&queryType=user');"> 
 [창닫기]</a></TD>   
------------------------------------------------------------------------------------------------------------ 

- savedel_yn 파라미터를 확인하여 ?강 URL 액션이 실행되고 이동을 함) 
<script language="javascript" type="text/javascript"> 
<!--   
var savedel_yn =<c:out value='${savedel_yn}'/>;  
if (savedel_yn =='1'  savedel_yn =='2') { 
var url = "AlertSTR?alertId=<c:out value='${alertId}'/>&queryType=user"; 
if (savedel_yn =='1') { 
alert("보고서 등록에 성공 했습니다."); 
} else { 
alert("보고서 삭제에 성공 했습니다."); 
}  
window.location = url; 
}  
//--> 
</script>    
==============================================================================================================

- 민방위훈련(7년차 비상소집): 우천으로 도장만 찍고 옴  
일시: 2007년 5월 13일(화) 7시 30분 
장소: 원당 초등학교(서울시 관악구) 
교육문의: T) 876-4061 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.05.14(수) 작업 ■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 23:00  --> AML 나라정보 회식( 김광기 부장이 쏨) 

- 삼성 AML Prj 
2. 보고대상거래의 추가 화면(팝업)(/AddTradeSearchAction  --> /str/pop_RpTrade.jsp) 
3. 보고대상자 검색(팝업)(/RpPersonAction  --> /str/pop_RpPerson.jsp) 
   
 if(p_search_val.equals("1")) { // 검색 조건이 실명번호 이면 
preparedstatement = prepareStatement(connection, getSQLProperty("sasaml.str.get.str_rp_man_ori.sql")  
+" "+ getSQLProperty("sasaml.str.get.str_rp_man_ori3.sql")); 
} else { 
preparedstatement = prepareStatement(connection, getSQLProperty("sasaml.str.get.str_rp_man_ori.sql")  
+" "+ getSQLProperty("sasaml.str.get.str_rp_man_ori4.sql")); 
}  
==============================================================================================================

- JSTL DB 연결 
<sql:query var="rs" dataSource="jdbc/DB"> 
select id, foo, bar from testdata  
</sql:query> 
==============================================================================================================

 - forEach 사용  
ArrayList list = new ArrayList();  
String p_Name =null; 
   
for(int i=1; i <= 3; i++) { 
 AForm aaform = new AForm();  

 p_Name ="괭이" + i; 
 aaform.setName(p_Name);   //이름 
 aaform.setAge(i);    //나이  
 list.add(aaform);  
} 

httpservletrequest.setAttribute("AList", list);   
[AList][com.sas.aml.str.form.STRForm@2319876, com.sas.aml.str.form.STRForm@2319876],  
com.sas.aml.str.form.STRForm@2319876]--> 3개 
------------------------------------------------------------------------------ 
  
 <c:choose> 
<c:when test="${AList!= null && !empty AList}">   
<TR>      
 <c:forEach var="i" items="${AList}" varStatus="loop"> 
 <TD class="text" align="center"> <c:out value="${loop.index}" /><!--// index //--></TD>  
 <TD class="text"> <c:out value="${loop.count}"/> <!--// count //--></TD>  
 <TD class="text"> <c:out value="${i.name}"/> <!--// 이름 //--></TD>   
 <TD align="center"><c:out value="${i.age}"/>  <!--// 나이  //--></TD>   
</TR>    
</c:forEach> 
</c:when>   
<c:otherwise> 
 NO Data 
</c:otherwise> 
</c:choose> 
------------------------------------------------------------------------------ 

- 정상 결과값 
index  count 이름  나이 
0 1  괭이1 1    
1 2  괭이2 2    
2 3  괭이3 3   
==============================================================================================================

- JAVA 관련 
http://tong.nate.com/kangdydtjs/30910914 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.05.15(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 23:00 --> 나라정보통신 점심(유사장님, 문이사님), 저녁(설렁탕9천 5백원:손과장님이 쏨) 

- 삼성 AML Prj 
4. 혐의거래 보고서 목록 - 계좌 
4-1. 계좌 추가 화면(팝업)(/Account  --> /str/pop_Account.jsp) 
4-1-1. 금융기관코드 검색(팝업)(/CommonSearchAction  --> /str/pop_Common_Bank.jsp) 
4-1-2. 부점 검색(팝업)(/CommonSearchAction  --> /str/pop_Common_Branch.jsp) 
4-1-3. 주소 검색(팝업)(/CommonSearchAction  --> /str/pop_Common_Zipcode.jsp)  
==============================================================================================================

- JSTL LIST 조회 
<c:choose> 
<c:when test="${RpTradeArray!= null && !empty RpTradeArray}">   
<TR>  
<c:set var="counter" value="1" /> 
<c:forEach var="iz" items="${RpTradeArray}"><!--// LIST GRID 내용  //-->          
<TD class="text" align="center"><c:out value="${counter}" /> <!--// 순번 //--></TD>  
<TD class="text"> <c:out value="${iz.ACCOUNT_NUMBER}" /> <!--// 계좌번호 //--></TD>  
<TD class="text"> <c:out value="${iz.TRANSACTION_DT}" /> <!--// 거래일시 //--></TD>  
<TD class="text"> <c:out value="${iz.TRANSACTION_DESCRIPTION}" /> <!--// 거래명 //--></TD>  
<TD class="text"> <c:out value="${iz.BRANCH_NAME}" /> <!--// 취급점 //--></TD>   
<TD class="text"> <c:out value="${iz.PARTY_TAX_ID}" /> <!--// 예금주 실명번호 //--></TD>  
<TD class="text"> <c:out value="${iz.PARTY_NAME}" /> <!--// 예금주명 //--></TD>  
<TD class="text"> &nbsp;  <!--// 대리인 //--></TD>  
<TD class="text"> &nbsp;<!--// 관계 //--></TD>  
</TR>  
<c:set var="counter" value="${counter + 1}" /> 
</c:forEach> 
</c:when>   
<c:when test="${p_str_id=='10'}"> test </c:when>   
<c:otherwise> 
<TR bgcolor=#FFFFFF>  
<TD class="text" colspan=8>  &nbsp; <!--//  NO Data  //--></TD>  
</TR> 
</c:otherwise> 
</c:choose> 
------------------------------------------------------------------------------ 
  
-- 우편번호 정보 조회 @@@@@ 
SELECT * FROM sg_CBBB_ZIPCD 
--; 
==============================================================================================================

- DB 값이 중복으로 나타날때(DB 데이타를 잘못 넣었음) 
for(resultset = preparedstatement.executeQuery(); resultset.next(); arraylist.add(strlistingcontent)) 
{   
	strlistingcontent = new STRForm();  //Form값을 새로 만들어 줌 
	strlistingcontent.setTRANSACTION_KEY(resultset.getString("TRANSACTION_KEY"));  //거래 식별번호  
	strlistingcontent.setACCOUNT_NUMBER(resultset.getString("ACCOUNT_NUMBER"));  //계좌번호 
} 
==============================================================================================================

- 자동차 보험 1인 특약, 대물배상 특약 재가입 
- 1인한정 +1인 추가(26,500원), 1주일 추가(11,000원) 
문태용: *  
대물배상 2억으로 증액: 5,220원 
총: 31,720원 송금 
제일화재(국민 8392-9011-483859 예금주: 제일화재)  
==============================================================================================================

- [주간업무 2008년 5월 3째주] 
★ 금주 업무 실적(05/13 ~ 05/16)  
A. STR 소스 개발 
2. 보고대상거래의 추가 화면(팝업) 
3. 보고대상자 화면(팝업) 
4. 혐의거래 보고서 목록 - 계좌 
5. 계좌 추가 화면(팝업) 
6. 혐의거래 보고서 목록 - 유가증권 
7. 유가증권 추가 화면(팝업)  
------------------------------------------------------------------------------------------ 

★ 차주 업무 계획(05/19 ~ 05/23)
A. STR 소스 개발 
6. 거래유형 등록 화면 
6-1. 거래종류(매수/매도) 화면 
6-2. 거래종류(입고/출고) 화면 
6-3. 거래종류(대체입고/대체출고) 화면 
7. 객관적질의 등록 화면  
8. 서술 등록 화면 
9. 첨부파일 등록 화면 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.05.16(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:00 

- 삼성 AML Prj 
5. 혐의거래 보고서 목록 - 유가증권  
5-1. 유가증권 추가 화면(팝업)(/Securities  --> /str/pop_Securities.jsp) 
# 유가증권거래 정보 저장   
------------------------------------------------------------------------------------------------- 

- DB 연결상의 에러 
Caused by: java.sql.SQLException: 부적합한 열 인덱스 
원인: BRANCH_NAME LIKE '%?%'로 사용하여 에러가 남 
# 부점 정보 조회2 
sasaml.str.get.common_branch2.sql=AND BRANCH_NAME LIKE '%'  ?  '%'  
참고: 부적합한 열인덱스... 은 주로  ResultSet의 참조를 잘못할 때 발생한다. 
 코드상의 output의 인덱스가 잘못되는 경우에 주로 발생함.  .getInt() 등을 체크 
---------------------------------------------------------------------------- 
java.sql.SQLException: 인덱스에서 누락된 IN 또는 OUT 매개변수:: 2 
아마도 StringBuffer에 앞에서 썼던 문장들이 포함 돼 버리신거 같은데요  
clear가 있던가...모르겠는데 StringBuffer에서 썼던 내용을 지우시지 않고 계속 append해서 에러가 난거 같군요    
------------------------------------------------------------------------------------------------- 

-- 자기앞수표 정보 조회 @@@@@ 
SELECT * FROM AMLCORE.FSC_CHECK_INOUT_FACT 
--;  
------------------------------------------------------------------------------ 

- 선택절(JSTL에서) 
 <c:choose>2008-05-16 
<c:when test="${p_suc_id=='10'}">보고기관 내역 등록 성공</c:when> 
<c:when test="${p_suc_id=='11'}"> 보고대상거래 추가(검색) 등록 성공</c:when> 
<c:otherwise>no&nbsp;&nbsp</c:otherwise></c:choose> 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.05.19(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:30 

- 삼성 AML Prj 
5. 혐의거래 보고서 목록 - 유가증권  
5-1. 유가증권 추가 화면(팝업)(/Securities  --> /str/pop_Securities.jsp) 
# 유가증권거래 정보 저장  
------------------------------------------------------------------------------------------------- 
  
- 웹로직 실행했을때의 에러  
에러내용: Error 404--Not Found. The server has not found anything matching the Request-URI. 
원인: 404 Not found 에러는 페이지가 없다는 에러입니다.  
어떻게 설치되었는지 확실히 잘 모르겠습니다만..   
Context 설정이 문제가 없다면 index.html 이 있는지 확인을 해 보셔야 할 겁니다 
조치: 1. 웹로직 콘솔 확인(http://localhost:7001/console)  
        --> C:\bea\user_projects\domains\AMLDomain\config.xml 파일 확인 
2. 오라클 DB가 무한 루프를 돌아서 그런 경우도 있음(DB 확인) 
==============================================================================================================

-- 콤보박스 처리(JSTL에서) 
<select  name="trade_channel_gb" onchange=""> 
<option value="1" <c:if test="${alertId=='1'}"> 'selected' </c:if>>   <!--// Null  //--></option> 
<option value="06" <c:if test="${alertId=='06'}"> 'selected' </c:if>> 콜센터  <!--// 콜센터 //--> </option> 
<option value="07" <c:if test="${alertId=='07'}"> 'selected' </c:if>> 대출모집인<!--// 대출모집인 //--> </option  
</select> 
==============================================================================================================

-- 테이블 수정 
ALTER TABLE STR_SECURITIES_TRADE_INFO MODIFY (  
 SECURITIES_NO    VARCHAR (30)     --유가증권의 번호(수표번호)  
) 
--;  
==============================================================================================================

-- 유가증권거래 정보 @@@@@ 
SELECT * FROM STR_SECURITIES_TRADE_INFO 
--; 
-- 유가증권거래 정보 삭제 @@@@@ 
-- DELETE FROM STR_SECURITIES_TRADE_INFO 
--; 
==============================================================================================================

- 나눔 동기 모임 정산 
2008.05.17 현용 회비 14만원 받음 ---> (10만원 미납) 
삼성 CMA 입금 79,320원 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.05.20(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:20 

- 삼성 AML Prj 
8. 거래유형 등록 화면  
9. 객관적질의 등록 화면  
10. 서술 등록 화면  
11. 첨부파일 등록 화면  
12. 혐의거래보고 현황조회(/SuspiLlist  --> /str/displaySuspiLlist.jsp) 
<tiles:add><fmt:message key="alert.menu.forBranch.txt"/></tiles:add> <!--// STR 지점용 //--> 
------------------------------------------------------------------------------------------------- 
  
-- 공통 코드 조회 
SELECT * FROM STR_MASTER  
WHERE GROUP_CODE = 'CHANNEL_CD' AND STR_CODE = '01' 
-- STRATUS_CD:진행상태, CHANNEL_CD:거래채널, TYPE_CD:거래수단, KIND_CD:거래종류 PRODUCT_CD:거래상품 
--; 
==============================================================================================================
    
■■■■■■■■■■■■■■■■■■ 2008.05.21(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 22:20 

- 삼성 AML Prj 
12. 혐의거래보고 현황조회(/SuspiLlist  --> /str/displaySuspiLlist.jsp)   
-- 공통 코드 조회 
SELECT * FROM STR_MASTER  
WHERE GROUP_CODE = 'TYPE_CD'   -- AND STR_CODE = '01' 
-- STATUS_CD:진행상태, CHANNEL_CD:거래채널, TYPE_CD:거래수단, KIND_CD:거래종류 PRODUCT_CD:거래상품 
--; 
==============================================================================================================

-- STR ID 조회 
SELECT (TO_CHAR(SYSDATE, 'YYYYMMDD')   LPAD(STR_SEQ.NEXTVAL, 4, '0')) AS STR_ID FROM DUAL 
 ------------------------------------------------------------------------------  
- AMLCTR 시퀀스 생성(사용 안함)   
 CREATE SEQUENCE AMLCTR.STR_SEQ 
  START WITH 1 --시작값 
  MAXVALUE 9999999999999999999999999999 --최대값 
  MINVALUE 1 --최소값 
  NOCYCLE 
  NOCACHE --캐쉬: Oracle Server가 미리 지정하고 메모리에 유지할 값의 수 
  NOORDER 
 ; 
----------------------------------------------------  
-- DROP SEQUENCE AMLCTR.STR_SEQ;  
SELECT STR_SEQ.nextval FROM DUAL;  
---------------------------------------------------------------------------------------------- 
-- STR 보고서 진행 현황(STR_ALERT_STATUS) 
SELECT (TO_CHAR(SYSDATE, 'YYYY')   LPAD(STR_SEQ.NEXTVAL, 6, '0')) AS DDDD FROM DUAL 
==> 2008000001   
==============================================================================================================

- DB 조회(Loop 아닐때) (JSTL에서) 
<c:choose> 
<c:when test="${RpStatusArray!= null && !empty RpStatusArray}">     
<c:forEach var="taSts" items="${RpStatusArray}"><!--// STR 보고서 진행 현황 조회  //-->    
</c:forEach> 
</c:when></c:choose>  

<table align="center" border=1 width="300">  
<tr>  
<td align="center">보고진행상태</td> 
<td> <c:choose><c:when test="${tasts.status_cd == '01'}"><input type="text" name="ststus"  value="작성중" readonly></c:when> 
 <c:when test="${tasts.status_cd == '02'}"> <input type="text" name="ststus"  value="등록" readonly></c:when> 
 <c:when test="${tasts.status_cd == '03'}"> <input type="text" name="ststus"  value="심의중" readonly></c:when> 
  <c:when test="${tasts.status_cd == '04'}"> <input type="text" name="ststus"  value="반송" readonly></c:when> 
  <c:when test="${tasts.status_cd == '05'}"> <input type="text" name="ststus"  value="자체종결" readonly></c:when> 
  <c:when test="${tasts.status_cd == '06'}"> <input type="text" name="ststus"  value="심의완료" readonly></c:when> 
  <c:when test="${tasts.status_cd == '07'}"> <input type="text" name="ststus"  value="보고완료" readonly></c:when> 
 <c:when test="${tasts.status_cd == null  tasts.status_cd == ''}"> <input type="text" name="ststus"  value="" readonly></c:when> 
 <c:otherwise> </c:otherwise></c:choose>    
 </td>  
</tr>  
<tr> 
<td align="center">등록일자</td> 
<td><input type="text" name="str_create_date"   value="<c:out value='${tasts.str_create_date}'/>" readonly></td>    
</tr>  
</table>  
------------------------------------------------------------------------------------------------- 

- 체크박스에서 체크된 값이 두개 이상이면 
 <form name="fname" action="Check1.jsp" method="post" onsubmit="return check_submit();">  
<table align="center" border=1 width="300">  
<tr>  
<td align="center">성 명</td> <td>항 목1</td> <td>항 목2</td>  
</tr>  
<tr>  
<td><input type="checkbox" name="chk" value="01">001</td>  
<td>항 목1</td> <td>항 목1</td> </tr>  
<tr>  
<td><input type="checkbox" name="chk" value="02">002</td>  
<td>항 목2</td> <td>항 목2</td> 
</tr>  
</table> 

<%    
String[] ex = request.getParameterValues("chk"); //값이 여러개 일수도있으므로 배열 받음 
  
int size = ex.length;// 배열안에 내용의 갯수를 파악합니다. 체크의갯수  
  
if(ex != null){ // 배열 ex 안의 내용이 null 이 아니라면 실행    
for(int i = 0; i < size; i++) {    
out.println(ex[i] + "<br>");  // 출력을 합니다 배열[i] 번째 내용을  
}  
}  
%>  

document.getElementsByName("chkSdm_sub").length 이렇게 사용하셔도 해결됩니다. 
==============================================================================================================

 - 귀염증 
미래이비인후과(http://www.ear75.com) 
 - 비뇨기과 
이윤수 비뇨기과(http://www.penilee.co.kr)   
서울특별시 중구 명동성당 앞 외환은행 3층  T) 02-779-4400, 4500   
연세메트로 비뇨기과(http://www.clinicmetro.com)  
서울특별시 종로구 신문로1가 25  T) 02-738-9115 

 - 재활용 관련 
http://www.bestrecycle.com/index.htm 
http://www.korea-recycle.com/index.html 

 - 제일모직 구로 공장,물류센타 
http://blog.naver.com/sgmain?Redirect=Log&logNo=150003802783 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.05.22(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 21:00  -> UEFA컵 챔피언스 리그 맨유 우승(1:1 PK 5:4), 현용, 임모 만남(당구, 술) 

- 삼성 AML Prj 
9. 객관적질의 등록 화면(/AddTradeSearch  --> /str/SubjQuestion.jsp): SubjQuestion 
10. 서술 등록 화면(/AddTradeSearch  --> /str/SubjQuestion.jsp): SubjQuestion  
==============================================================================================================

- 단일 스트링 받기 
String  relation = request.getParameter("relation");   
 - 여러값을 배열로 받기 
String [] relation = request.getParameterValues("relation"); 
------------------------------------------------------------------------------------------------- 
   
<b>request.getParameterNames() 메소드 사용</b><br> 
<% 
    Enumeration enums = request.getParameterNames(); 
    while(enums.hasMoreElements()) { 
        String name = (String)enums.nextElement(); 
%> 
        <%= name %> 
<% 
    } 
%> 
==============================================================================================================

- DB 에러 
 Caused by: java.sql.SQLException: 부적합한 열 인덱스 
 원인: DB 쿼리 에러...preparedstatement.setString(1, p_str_id); // str_id 설정 안함 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.05.23(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00  --> 양화대교 선착장(병민이형, 조은혜씨) 

- 삼성 AML Prj 
10. 서술 등록 화면(/AddTradeSearch  --> /str/SubjQuestion.jsp): SubjQuestion 
8. 거래유형 등록 화면(/AddTradeSearch  --> /str/SubjQuestion.jsp): TradeType, TradeTypeOri 

 - [JSP- null값 처리] 
String p_rdoTrade_channel_gb =(httpservletrequest.getParameter("rdoTrade_channel_gb")== null)? "":  
httpservletrequest.getParameter("rdoTrade_channel_gb"); //거래 거래채널코드(라디오 버튼) 
------------------------------------------------------------------------------------------------- 

- DB 에러 
에러내용: CCaused by: java.sql.SQLException: 부적합한 열 이름 
 com.sas.aml.service.ServiceException: Error getting STR Information for alert 
at com.sas.aml.str.service.STRService.getDescription(STRService.java:473) 
조치: 서비스(STRService)중 getDescription() 함수에 가서 필드를 하나씩 지우면서 확인 
------------------------------------------------------------------------------------------------- 
에러내용: java.sql.SQLException: 인덱스에서 누락된 IN 또는 OUT 매개변수:: 2 
원인: DB 쿼리 에러...preparedstatement.setString(1, p_str_id); //str_id 설정 제대로 설정 안 함 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.05.24(토) 작업 ■■■■■■■■■■■■■■■■
---> 08:50 ~ 20:30 --> 조기축구(06:30 ~ 07:20): 남근이형 차, 병원(명동성당 앞은편 이윤수 비뇨기과: 곰팡이균) 

- 삼성 AML Prj 
8. 거래유형 등록 화면(/AddTradeSearch  --> /str/SubjQuestion.jsp): TradeType, TradeTypeOri  
1. 혐의거래 보고서 목록 
임시저장, 보고서등록, 저장 후 등록한 Tab으로 이동 
2. 보고대상거래의 추가 화면(팝업) 
==============================================================================================================

- 형전환(JSP, JAVA 에서) 
 int p_count =  Integer.parseInt(str_count); // 요청여부 내역 총 수  

- 형전환(javascript 에서) 
var test1 = '8'; 
int test2 = parseInt(test1);  //String --> int  
==============================================================================================================

- 칸디다증((곰팡이균)의 치료  
칸디다균의 포자는 공기중을 떠돌다가 따뜻하고 습기가 많은 곳에서 싹을 틔우고 번식합니다. 
칸디다는 스트레스나 질환등으로 인체의 면역력이 떨어져 있을 때 가장 잘 번식합니다 
- 칸디다 증 예방 
1. 건조상태로 유지해야 합니다. 모든 속옷을 면제품으로 바꾸고 샤워 후에는 세심하게 건조 시키십시요. 
2. 잠자리에 들 때는 속옷을 입지 않거나 면으로만 된 제품을 사용하십시요. 
3. 모든 속옷을 잘 빨고 입기 전 완전히 건조시켜서 입으십시요. 
4. 수영을 할 경우 수영 이후에 젖은 수영복을 입고 오래 있지 말고 샤워 후 마른 옷으로 갈아 입으십시요.  
5. 꽉 끼는 바지를 삼가 하십시요.   
==============================================================================================================

- 지홍이 결혼식 축의금(5만원) 
신한 407-11-000838  예금주: 이승원,  김지홍(*) 
--------------------------------------------------------------- 
필요 물품: 샌달, 가방, 초코렛, 초코파이, 바지, 베게 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.05.26(월) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 00:00  --> 철야 

- 삼성 AML Prj 
2. 보고대상거래의 추가 화면(팝업) 
SELECT  A.ALERT_ID, B.TRANSACTION_KEY, B.ACCOUNT_KEY, D.PARTY_KEY, C.ACCOUNT_NUMBER,  
TO_CHAR(TO_DATE(B.POSTED_DATE_KEY, 'YYYY-MM-DD'), 'YYYY-MM-DD HH24:MI:SS') TRANSACTION_DT,  
F.TRANSACTION_DESCRIPTION, G.BRANCH_NAME, E.PARTY_TAX_ID, E.PARTY_NAME   
FROM FSK_ALERT A, FSK_CASH_FLOW_ALERT B,  FSC_ACCOUNT_DIM C, FSC_PARTY_ACCOUNT_BRIDGE D,  
FSC_PARTY_DIM E, FSC_TRANSACTION_DIM F, FSC_BRANCH_DIM G  
WHERE A.ALERT_ID = B.ALERT_ID AND B.ACCOUNT_KEY = C.ACCOUNT_KEY AND C.ACCOUNT_KEY = D.ACCOUNT_KEY  
AND B.BRANCH_KEY = G.BRANCH_KEY   
AND D.PARTY_KEY = E.PARTY_KEY  AND B.ACCOUNT_KEY = F.TRANSACTION_KEY 
AND B.TRANSACTION_KEY = '102' 
--; 
--------------------------------------------------------------------------------------------------------- 

- 디자인 작업, 탭 이미지 만들기(포토샵) 
==============================================================================================================

- TEST 서버(최태수 과장) 
http://45.10.10.174:7001/sasaml 
==============================================================================================================

 - MyLG 070 전화 신청 
전화번호: 070-8222-0898 
www.dacom4u.co.kr(정홍이 회사) --> 전화기, 공유기 무료 
==============================================================================================================

1. 동그라미선 색깔 넣기(포토샵에서) 
왼쪽 메뉴 에서 Ecliptical Marquee Tool --> 원 그리기(직접 그리기) --> Edit --> Stroke 클릭  
Stroke 메뉴창에서: Width: 3 px Color: red Blending: Normal  --> OK 클릭 
------------------------------------------------------------------------------------------------------------- 

갈색: 235, 238, 221 
진 주황색: 241, 96, 34 
==============================================================================================================

A. 홈페이지 제작  
1. 도메인 등록: 가비아
http://www.gabia.com ==> URL: http://www.jakn.biz 
2년: 31,300원 
2. 웹호스팅 등록: 넷츠빌(http://netsvill.net)  
년: 220,000원 
--------------------------------------------------------  
상호: 강남구 재활용 센터(장터복지회)   
URL: http://www.jakn.biz 
FTP: 211.174.62.33   jakn/jk1505  
안상요: *@*.* 
jakn/jk1505  
============================================================================================================== 

■■■■■■■■■■■■■■■■■■ 2008.05.27(화) 작업 ■■■■■■■■■■■■■■■■
---> 00:00 ~ 00:00 --> 철야 

- 삼성 AML Prj 
2. 보고대상거래의 추가 화면(팝업)  
==============================================================================================================

- # 삼성증권 AML Proj 실서버 세팅 
connection Pool  
정보 : jdbc:oracle:thin:@45.1.40.204:1521:DRISKPRD 

Name: AML REAL_RISK Connection Pool Database Name: DRISKPRD 
Host Name: 45.1.40.204 Database User Name: amlctr/amlctr1  
Data Source Name: AMLRealDS 
 - 커넥트풀 변경 
AMLKCtrDS   --> AML REAL_RISK Connection Pool 로 수정 
------------------------------------------------------------------------------  
- DB 컨텍스 변경(실서버) 
D:\eclipse_T2\sasaml\WebContent\WEB-INF\config\sasaml.config 
sasaml.datasource=AMLKCtrDS  
------------------------------------------------------------------------------ 
# 삼성증권 AML Proj 실서버 
  REAL_RISK = 
(DESCRIPTION = 
    (ADDRESS_LIST = 
        (ADDRESS = (PROTOCOL = TCP)(HOST = 45.1.40.204)(PORT = 1521)) 
    ) 
    (CONNECT_DATA =(SERVER = DEDICATED) 
    (SERVICE_NAME = DRISKPRD) 
    ) 
) 
==============================================================================================================

 - 세션 설정 
 httpservletrequest.setAttribute("p_status_cd", resultset.getString("STATUS_CD"));  // 진행상태 
 -세션  받기 
String p_status_cd =(httpservletrequest.getParameter("p_status_cd")== null)? "00":  
httpservletrequest.getParameter("p_status_cd"); //진행상태 

- JS 설정 
<script src="STR.js"></script> 
--------------------------------------------------------------------------------------------------------- 

에러내용: code too large for try statement  
<tiles:insert page="/mypage/member/viewMember.jsp" flush="true"/>   
조치: include나 tited된 부분 삭제 
==============================================================================================================

- 날짜 타입 변경(자리수 변경) 
trade_start_dt ="2008. 5. 28.";  --> trade_start_dt ="2008-5-28";  
trade_start_dt = replace(trade_start_dt, ".", "-");    //.값 -로 친환 
trade_start_dt = replace(trade_start_dt, " ", ""); // 널값 없애기 
trade_start_dt = trade_start_dt.substring(0, trade_start_dt.length()-1);  //오른쪽 -값 없애기 

//@@@@@@@@@@    빈공간 없애는 함수 @@@@@@@@@ 
public String replace(String s, String old, String replacement)  
{  
int i = s.indexOf(old);  
StringBuffer r = new StringBuffer();  

if (i == -1) return s;  
r.append(s.substring(0,i) + replacement);  

if (i + old.length() < s.length())  
r.append(replace(s.substring(i + old.length(), s.length()),old, replacement));  

return r.toString();  
}  
==============================================================================================================

- Query 문(struts에서) 
StringBuffer sql = new StringBuffer( 
"SELECT A.ALERT_ID, B.TRANSACTION_KEY, B.ACCOUNT_KEY, D.PARTY_KEY, C.ACCOUNT_NUMBER, \n"+ 
" TO_CHAR(TO_DATE(B.POSTED_DATE_KEY, 'YYYY-MM-DD'), 'YYYY-MM-DD HH24:MI:SS') TRANSACTION_DT, \n"+ 
" F.TRANSACTION_DESCRIPTION, G.BRANCH_NAME, E.PARTY_TAX_ID, E.PARTY_NAME \n"+ 
"FROM FSK_ALERT A, FSK_CASH_FLOW_ALERT B,  FSC_ACCOUNT_DIM C, \n"+ 
" FSC_PARTY_ACCOUNT_BRIDGE D, FSC_PARTY_DIM E, FSC_TRANSACTION_DIM F, FSC_BRANCH_DIM G   \n"+ 
"WHERE A.ALERT_ID = B.ALERT_ID AND B.ACCOUNT_KEY = C.ACCOUNT_KEY  \n"+ 
"        AND C.ACCOUNT_KEY = D.ACCOUNT_KEY AND B.BRANCH_KEY = G.BRANCH_KEY   \n"+  
"         AND D.PARTY_KEY = E.PARTY_KEY AND B.ACCOUNT_KEY = F.TRANSACTION_KEY  \n"+  
"       AND (TO_DATE(B.POSTED_DATE_KEY, 'YYYY-MM-DD') >='"+ trade_start_dt +"' AND TO_DATE(B.POSTED_DATE_KEY,  
'YYYY-MM-DD') <='"+ trade_end_dt +"')   \n"); 
if( account_no.length()> 0) { // 계좌번호가 존재하면 
sql.append("    AND C.ACCOUNT_NUMBER ='"+ id_type_nm +"'  \n"); 
} else {   
sql.append("   AND C.ACCOUNT_NUMBER ='"+ id_type_nm +"'  \n"); 
} 
System.out.println("[/STRService.java]:[getSTRsByAlert()]:[sql]"+ sql);  
preparedstatement3= prepareStatement(connection, sql.toString()); 

for(resultset = preparedstatement3.executeQuery(); resultset.next(); arraylist.add(strlistingcontent)) 
{  
System.out.println("[/STRService.java]:[getSTRsByAlert()]:[TES_3]"); 
strlistingcontent.setTRANSACTION_KEY(resultset.getString("TRANSACTION_KEY"));  //거래 식별번호   
strlistingcontent.setPARTY_TAX_ID(resultset.getString("PARTY_TAX_ID"));   //예금주 실명번호 
strlistingcontent.setPARTY_NAME(resultset.getString("PARTY_NAME"));    //예금주 
}   
resultset.close(); 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.05.28(수) 작업 ■■■■■■■■■■■■■■■■ 
---> 00:00 ~ 18:00  --> AML 시스템 시연회(15시, 현업 및 IT 관계자, AML 회식(고기집, 맥주(와바), 노래방) 

- 삼성 AML Prj 
2. 보고대상거래의 추가 화면(팝업) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.05.29(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:00  --> 나눔 동기 모임(현용, 임모): 삼겹살 -> 당구 -> 알탕집 

- 삼성 AML Prj 
2. 보고대상거래의 추가 화면(팝업)
32712969050, 42238615001    
==============================================================================================================

- 급여 순으로 순위를 부여 하는 법  
SQL> SELECT empno, ename, sal,  
        RANK() OVER (ORDER BY sal DESC ) as rk 
        FROM emp;  
- 그룹별로 순위를 부여 하는 법 
SQL> SELECT deptno, ename, sal,  
       RANK() OVER (PARTITION BY deptno ORDER BY sal DESC ) as rk  
       FROM emp ; 
 - DENSE_RANK( ) - 중복 RANK의 수와 무관하게 numbering을 합니다.  
(1등, 2등, 2등 이렇게 2등이 중복되었는데 4등이 아니라 3등이 부여 됩니다.) 
SQL> SELECT empno, ename, sal,   
       DENSE_RANK() OVER (ORDER BY sal DESC ) as rk 
       FROM emp;     
==============================================================================================================

- [주간업무 2008년 5월 5째주]
★ 금주 업무 실적(05/26 ~ 05/30)
A. STR 소스 개발 
2. 보고대상거래의 추가 화면(팝업)  
B. 시연회 준비 
디자인 작업, 소스 수정  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.05.30(금) 작업 ■■■■■■■■■■■■■■■■
---> 11:30 ~ 15:00  --> 본사 방문(문상무, 사장 면담): 계약 해지 동의 

- 삼성 AML Prj 
1. 삼성 AML Prj 철수
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■