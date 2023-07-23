

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2003.07) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■  2003.07.09(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 10:00

- JSP 설정
- 환경변수 설정 
변수이름(N): CATALINA_HOME  변수값(V): C:\Tomcat 4.1 

C:\> cd C:\Tomcat 4.1\bin 
C:\Tomcat 4.1\bin> startup 

- 웹 수정(index.jsp) 
C:\Program Files\Apache Group\Tomcat 4.1\webapps\ROOT 
===============================================================================================================

- PDA 설치
1. 한글 자판 DioOpen 설치 
2. HiMobile 설치 
3. 전화걸기iPhone 설치 
===============================================================================================================

- PDA 관련 프로그램
1. Installshield 
2. Toad 
3. Oracle 
4. Tomcat 
5. EVC 
6. Active Sync 
===============================================================================================================

- Tomcat 환경설정
- C:\jakarta-tomcat-3.2.1\conf\server.xml 파일에서 다음을 추가  
<Context path="/himail" docBase="webapps/ROOT" debug="0"/> 
<Context path="/hiplaza" docBase="webapps/hiplaza" debug="0"/> 
===============================================================================================================

 중요한 속성 몇 가지를 설명하자면 Host 태그의 appBase 속성은 웹 어플리케이션(Context)들의 기준 디렉토리가 됩니다.  
 Context 에 있는 docBase 가 상대경로일 경우 기준위치가 된다는 뜻이죠. 예를 들면 ycpa.or.kr 의 ROOT Context의  
 루트디렉토리는 /home/vhost/ycpahome/ROOT 가 됩니다. unpackWARs 의 속성값이 "true" 일 경우 appBase 에서  
 정한 디렉토리에 WAR 파일이 있을 경우 Tomcat 이 자동으로 이 웹 어플리케이션의 압축을 풀고 Context를 설정하게 됩니다.  
 자동배치(auto deployment) 라고도 합니다 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.07.10(목) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 6:10:00 ~ 07:00 

- JSP 설정
**** jakarta-tomcat-3.2.1으로 재 설정 **** 
===============================================================================================================

- 환경변수 설정 
변수이름(N): CATALINA_HOME  변수값(V): C:\jakarta-tomcat-3.2.1  
- servlet 변수명 추가 
변수이름(N): CLASSPATH  변수값(V): C:\jakarta-tomcat-3.2.1\lib\servlet.jar 

C:\> cd C:\jakarta-tomcat-3.2.1 
C:\jakarta-tomcat-3.2.1> set JAVA_HOME=C:\jdk1.3.1 
C:\jakarta-tomcat-3.2.1> set TOMCAT_HOME=C:\jakarta-tomcat-3.2.1 

C:\jakarta-tomcat-3.2.1> set 
C:\> cd C:\jakarta-tomcat-3.2.1\bin 
C:\jakarta-tomcat-3.2.1\bin> startup 
===============================================================================================================

- PDA 사용법
1. 에러 
전화접속 포트를 이미 사용하고 있습니다. 
- 인터넷 포트와 같이 사용하면 안됨--- 2중 하나를 종료 시키고 다시 시도 
===============================================================================================================

- DA 사용법 교육
-16:20 ~ 18:00 회의실 
===============================================================================================================

- PDA 사양
- Compaq iPAQ H3800 Series(PE2030) 
S/N: 4G27DW3390VC --> 백화점용 
S/N: 4G25DW33H0GE --> 시판(지점용) 
===============================================================================================================

- 노트북 사양
- 삼성 SENS710 
S/N: 683191BR600422 S710-SSG 
===============================================================================================================

- 각종 기관 
관악인터넷(837-6008) -> 27,500원(2년약정), 모뎀보증금(5만원), 해드셋(선물), 케이블TV 2년 무료 
도시가스 설치(859-7810) -> 24,000원 
===============================================================================================================

- IP 세팅(Hiplaza)]
IP주소: 156. 147.149.27 
S.M: 255.255.255.128 
G.W: 156. 147.149.1 
DNS: 165. 243.17.15 
===============================================================================================================

- 침대보 구함 
- 김세정, 김진진 만남 
- 침대보 선물(김세정) 
- 20:00 퓨전 식당(미찌)에서 저녁(33,500원) 
- 21:20 내 집에서 맥주 한잔(12,000원) 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.07.11(금) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 10:00 

- 소스분석- Himobile
- Debug 설정 
C:\jakarta-tomcat-3.2.1\webapps\hiplaza\WEB-INF\classes\common\Debug.java에서  
===============================================================================================================

private static String dir = "C:/jakarta-tomcat-3.2.1/webapps/hiplaza/Debug"; 
===============================================================================================================

- Log 설정   
C:\jakarta-tomcat-3.2.1\webapps\hiplaza\WEB-INF\classes\common\Log.java에서
rivate static String dir ="C:/jakarta-tomcat-3.2.1/webapps/hiplaza/log"; 
===============================================================================================================

- DB 설정 
C:\jakarta-tomcat-3.2.1\webapps\hiplaza\WEB-INF\classes\test.properties(실 DB에선 himobile.properties)에서  
===============================================================================================================

drivers=oracle.jdbc.driver.OracleDriver 
mobile.url=jdbc:oracle:thin:@156.147.135.108:1523:1BDEV 
mobile.user=leader 
mobile.password=leader01 
===============================================================================================================
  
C:\jakarta-tomcat-3.2.1\webapps\hiplaza\WEB-INF\classes\common\DBConnectionManager.java에서  
===============================================================================================================

 private void init() { 
        InputStream is = getClass().getResourceAsStream("/test.properties"); 
Properties dbProps = new Properties(); 
        try { 
            dbProps.load(is); 
        } catch (Exception e) { 
            Debug.println("Can't read the properties file. " + 
                "Make sure db.properties is in the CLASSPATH"); 
            return; 
        } 
        String logFile = dbProps.getProperty("logfile", "DBConnectionManager.log"); 
        try { 
            log = new PrintWriter(new FileWriter(logFile, true), true); 
        } catch (IOException e) { 
            System.err.println("Can't open the log file: " + logFile); 
            log = new PrintWriter(System.err); 
        } 
        loadDrivers(dbProps); 
        createPools(dbProps); 
    } 
/test.properties로 수정하고 다시 compile한다.  
===============================================================================================================
 
-  MG 전화 
- 회사 ☎ 1588-1553 김우섭이사 ☎ 011-9902-4247 
- 탁상용 선풍기(19,000원) 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.12(토) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 09:30 ==> 토요 휴무

- 자개장 구입(19,000 원), 그림(10,000 원), 남방 4벌(20,000원) 
- 도서 반납 
- MG방문
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.07.14(월) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 09:30 

- 소스분석- Himobile
- servlet 설정 
1. 환경변수에서 C:\jakarta-tomcat-3.2.1\lib\servlet.jar추가 
2. C:\jakarta-tomcat-3.2.1\webapps\hiplaza\WEB-INF\classes\SnoopServlet.java 존재 유무 확인 
3. http://156.147.149.27:8080/servlet/SnoopServlet 아래와 같은 내용 보이면 정상  
===============================================================================================================

Snoop Servlet
Servlet init parameters: 
Context init parameters: 

Context attributes: 
   javax.servlet.context.tempdir = C:\jakarta-tomcat-3.2.1\work\localhost_8080 
   sun.servlet.workdir = C:\jakarta-tomcat-3.2.1\work\localhost_8080 
Request attributes: 

Servlet Name: SnoopServlet 
Protocol: HTTP/1.1
===============================================================================================================

- Entera 서버 
- Entera 서버(미들웨어) Stub을 이용하여 웹서버, 다른 서버(물류 서버, 판매 서버)와 통신 
- <%@ page import="odet40.*" %>,  <%@ page import="Vartype.*" %> 사용 
----------------------------------------------------------------------------------------------------------------

- Entera 서버 연결 부분
- 이관등록(Trans_request.jsp), SVC 연결판매(SVC_input.jsp), 배송조회(Delivery_search.jsp) 
- 카드사명출력(Card_no_split.jsp), 카드승인상세내역(Card_appr_print.jsp), 카드승인(Card_approval.jsp) 
- setEnv 변경(Entera 서버 연결) 
environ = Environment.setEnv("C:\\jakarta-tomcat-3.2.1\\webapps\\hiplaza\\WEB-INF\\classes\\client.env"); 
----------------------------------------------------------------------------------------------------------------

- Debug
- 해당 소스 이후 부분 코드를 모두 삭제 후 디버깅 한다. 
ex) out.print(request.getParameter("as_it_elevator")+"[as_it_elevator]<br>"); 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.07.15(화) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 07:00 

- 소스분석- Himail
- Servlet 경로 
C:\jakarta-tomcat-3.2.1\webapps\ROOT\WEB-INF\web.xml에서 경로 수정 
 res.sendRedirect("/himail/mail/list?category=($Inbox)");  일 경우 
web.xml에서 url-pattern이 mail/list인 것을 찾으면 그것의 servlet-name이 MailList 이다. 
이 servlet-name의 servlet-class를 찾으면 com.kwapizen.hiplaza.mail.MailListServlet이 나온다. 
===============================================================================================================

- 메일 서버 경로 (XML) 
http://156.147.135.88/mail1/XT001.nsf/ByCategory?ReadViewEntries&count=6&restrictToCategory=($Inbox)&start=1    
msadodc.ocx 구성요소나 종속성이 정확하게 등록되어 있지 않습니다. 
===============================================================================================================

- KYPN회식 
- 20:00 신천역 현대백화점 출구 
- 20:10 고기집 
- 23:00 노래방 
- 24:00 모임 끝 
- 24:50 귀가 
===============================================================================================================

- 자동이체 등록 
- 동기회 계비 
- 임호수（나눔９０） 884-01-0001-978  15,000원 03.07.27 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.07.16(수) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:15 ~ 07:00 

- 소스분석- EVC
C:\Windows CE Tools\wce300\Pocket PC 2002 
-\include 폴더에 
imgrendr.h, message.h, imgdecmp.h 파일 추가 
- \include\wire 폴더에 
Binding.h, Connector.h, supp.h, Wire.h 파일 추가 
-\lib\arm 폴더에 
PrintDll.lib, wireclient.lib 파일 추가 
===============================================================================================================

- 소스분석- EVC
- HI_CRM TEST 서버 
TEST Url - http://156.147.135.156:8082/ 
id/pwd  - 10326/pwd없음 

#--- Hiplaza CRM TEST DB( hicrm / hicrm00)  
hicmdev.world = 
   (DESCRIPTION =  
     (ADDRESS_LIST =  
         (ADDRESS =  
           (COMMUNITY = tcp.world) 
           (PROTOCOL = TCP) 
           (Host = 156.147.135.155) 
           (Port = 1522) 
        )         
    ) 
    (CONNECT_DATA = (SID = hicmdev) 
    ) 
  ) 

HICRM 데이타베이스가 아니라 SU_HICRM 데이타베이스가 모든 권한을 가짐(DB 보기 위해 접근요) 
===============================================================================================================

- JP1 사용법 - Window2000 터미널 서버와 유사 
에이전트: 156.147.135.156 
ID: jp1 PWD: adcjp1 
===============================================================================================================

- 소스 수정은 JP1 메인 화면에서 파일전송을 클릭해서 전송하여 수정함  
D:\Websphere\Appserver\installedApps\DevhicrmApp.ear\DevhicrmApp.war\ 
의 hicrm폴더와 WEB-INF\classes에서 작업 
===============================================================================================================

- java 백업 
D:\백업200307\hicrm\폴더에 java 백업 
===============================================================================================================

- log 정보 
E:\Devhicrm\logs의 stdout(print.out 작업), stderr(print.err 작업) 
- System.out.println("[TAMA] CuCrBasicWrap :: insert :: \n "+query); 
===============================================================================================================

- HI_CRM 고객관리 수정
cust_master 테이블에  
우편No, 상세주소에서 시(new_Town), 구(new_District), 동(new_Street) 추가 
우편번호 테이블에서 조인 제거 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.07.18(금) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30:00 ~ 07:00 

- HI_CRM 고객관리 수정
slect * from cust_master 
===============================================================================================================

- C:\HI_CRM\jsp_class\hicrm\cust\custrelation 
\CuCrSearchFrm.jsp 조회폼 
\CuCrListFrm.jsp 검색 결과 리스트(수정) 
list ->  listCustBasic(req, res); 
\CuCrBasicinsertFrm.jsp 등록(수정) 
write -> writeCust(req, res); 

\ where = where + " and c.cust_name like '" + cust_name + "%'";   // 고객성명 

basicManager = new CuCrBasicManager(); 
custList = basicManager.getList(where, page); 
count = basicManager.countAll(where); 

- C:\HI_CRM\jsp_class\WEB-INF\classes\hicrm\cust\custrelation\dbmgr 
\CuCrBasicManager.java 

public java.util.Vector getList(String where, int nPage) throws Exception { 
CuCrBasicWrap cucrbasicWrap = new CuCrBasicWrap(connection); 
return cucrbasicWrap.selectAll(where,nPage); 
} 

 \CuCrBasicWrap.java 수정(고객 조회) - CuCrListFrm.jsp 
 public java.util.Vector selectAll(String where, int nPage) throws SQLException, DataNotFoundException { 
} 
 \CuCrBasicWrap.java 수정(고객 등록) - CuCrBasicinsertFrm.jsp 
public int insert(CuCrBasic basic) throws SQLException { 
} 
 \CuCrBasicWrap.java 수정(고객 상세조회) - CuCrBasicselectFrm.jsp 
public CuCrBasic selectCust(String cust_no) throws SQLException, DataNotFoundException { 
} 
  \CuCrBasicWrap.java 수정(고객 수정) - CuCrBasicselectFrm.jsp 
public void updateCust(CuCrBasic basic) throws SQLException, DataNotFoundException { 
} 
===============================================================================================================

<frameset name="hicrm" rows="82,*" frameborder="0" border="0" framespacing="0"> 
  <frame name="hicrmtop"  src="/menu.jsp?chkshow=<%= chkshow %>" scrolling="no" marginwidth="0" marginheight="0" 
  noresize marginheight="0" maginwidth="0"> 
  <frame name="hicrmbody" src="/redirect.jsp?go=<%=request.getParameter("go")%>" scrolling="auto" marginwidth="0" 
  marginheight="0" noresize> 
</frameset> 

<frameset name="hicrmframe" rows="150,*" frameborder="0" border="0" framespacing="0">  
  <frame name="condition"    noresize  src="/servlet/hicrm.cust.custrelation.CuCrBasicServlet?go=cust_search&flag=Y" 
  scrolling="no" marginwidth="0" marginheight="0"> 
  <frame name="result"  noresize  src="/hicrm/cust/custrelation/comments.jsp?go=<%=go%>" scrolling="auto" 
  marginwidth="0" marginheight="0"> --  변경 
</frameset> 

<frame name="condition"..>에 의해 frame name="result"  데이타값 수시로 변경 
===============================================================================================================

// 고객조회 Qeury(변경 전) 
select seq,cust_no,cust_name, 
decode(from_dm,'01',home_ddd,'02',ocu_ddd)' 'decode(from_dm,'01',home_tel_no,'02',ocu_tel_no) as tel, 
town' 'district' 'street' 'decode(from_dm,'01',addr,'02',ocu_addr) as address 
from ( 
select rownum seq,cust_no,cust_name,from_dm,home_ddd,ocu_ddd,home_tel_no,ocu_tel_no, 
town,district,street,addr,ocu_addr 
from( 
select /*+ ORDERED */ 
 c.cust_no,c.cust_name,c.from_dm,nvl(c.home_ddd,'&nbsp;') home_ddd,nvl(c.ocu_ddd,c.home_ddd) ocu_ddd, 
 nvl(c.home_tel_no,'&nbsp;') home_tel_no,nvl(c.ocu_tel_no,c.home_tel_no) ocu_tel_no ,p.town,p.district,p.street, 
 nvl(c.addr,'&nbsp;') addr,nvl(c.ocu_addr,'&nbsp;') ocu_addr 
 from cust_master c, post p 
 where c.zip_code = p.zip_code(+) 
and c.cust_name like '태만%' 
order by c.cust_no desc) 
)  
------------------------------------------------------------------------------------- 

// 고객조회 Qeury(변경 후) 
select seq,cust_no,cust_name, 
decode(from_dm,'01',home_ddd,'02',ocu_ddd)' 'decode(from_dm,'01',home_tel_no,'02',ocu_tel_no) as tel, 
New_town' 'New_district' 'New_street' 'decode(from_dm,'01',addr,'02',ocu_addr) as address 
from ( 
select rownum seq,cust_no,cust_name,from_dm,home_ddd,ocu_ddd,home_tel_no,ocu_tel_no, 
New_town,New_district,New_street,addr,ocu_addr 
from( 
select /*+ ORDERED */ 
 c.cust_no,c.cust_name,c.from_dm,nvl(c.home_ddd,'&nbsp;') home_ddd,nvl(c.ocu_ddd,c.home_ddd) ocu_ddd, 
 nvl(c.home_tel_no,'&nbsp;') home_tel_no,nvl(c.ocu_tel_no,c.home_tel_no) ocu_tel_no ,c.New_town,c.New_district,c.New_street, 
 nvl(c.addr,'&nbsp;') addr,nvl(c.ocu_addr,'&nbsp;') ocu_addr 
 from cust_master c  
 where  c.cust_name like '태만%' 
 order by c.cust_no desc 
 ) 
) 
===============================================================================================================
  
// 디버깅 
System.out.print(query); // .java에 사용  
System.out.println("[TAMA] CuCrBasicWrap :: insert :: \n "+query); 
LLog.debug.println("[TAMA] CuCrBasicWrap :: insert :: \n "+query); 
LLog.err.println("[TAMA] CuCrBasicWrap :: insert :: \n "+query);  // EOS 
out.println("[TAMA]  :: CuCrBasicWrap :: uery :: "+ query); // .jsp에 사용 
// 디버깅(java스크립트에서) 
alert("[TAMA] CuCrBasicWrap :: S_No :: \n "+sform.S_No.value); 
===============================================================================================================

// 고객조회 Query 
select cust_no, cust_name, system_date, zip_code, addr,new_town,new_district, new_street, insert_date  
from cust_master 
--where cust_name like '태만%' 
order by system_date desc 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.07.19(토) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 13:00 

- HI_CRM 고객관리 수정
- 시, 구, 동 수정 
===============================================================================================================

- EVC 백업 
- Client 소스 분석  
- EVC TEST 서버(시판용- 아이디) 
id/pwd  - 50273 / 5133 

- EVC TEST 서버(백화점용- 아이디) 
id/pwd  - 50299 / 1603 / 1152940 / 12345678 

- EOS TEST 서버(아이디) 
id/pwd  - 1152822 / 123 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.07.21(월) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 09:30 

- EVC 백업
- Client 소스 분석 
ex) StockW.cpp 
1. C:\Wire_V52_SSL\scripts폴더\Stock_w.widl파일에서 INPUT, INPUT 분석 
2. 웹서버(Tomcat)에서 hiplaza/store/Stock_w_search.jsp 소스의 해당 부분을 Wireless서버에서 BINDING하여 가져 옴 
=================================================================================================================

<WIDL NAME="StockW" COMMENT="물류재고정보">     
  <!-- ========================================================================= --> 
  <SERVICE NAME="Search" 
    INPUT="BI_Search" 
    OUTPUT="BO_Search" 
    METHOD="POST" 
    URL="http://156.147.149.27:8080/hiplaza/store/Stock_w_search.jsp" 
    COMMENT="물류재고정보 조회"/>     
     
  <BINDING NAME="BI_Search" TYPE="INPUT"> 
    <VARIABLE NAME="MODEL_CODE"  FORMNAME="MODEL_CODE" COMMENT="모델"/> 
    <VARIABLE NAME="FR_MLCT"     FORMNAME="FR_MLCT"    COMMENT="물류1"/> 
    <VARIABLE NAME="TO_MLCT"     FORMNAME="TO_MLCT"    COMMENT="물류2"/> 
  </BINDING> 

  <BINDING NAME="BO_Search" TYPE="OUTPUT"> 
    <VARIABLE NAME="stodata" TYPE="STRING[][]" NULLOK="TRUE" COMMENT="">doc.table[0].tr[1-end].td[].text</VARIABLE> 
  </BINDING>   
</WIDL> 
=================================================================================================================

Stock_w_search.jsp에서 첫 번재 테이블 tr 두번째(제목 제외)줄 부터 시작해서 td 첫번째 줄의 stodata를 가져옴 
=================================================================================================================

- 물류재고 조회 결과
물류명 현재고 가능재고 LGE대기재고 LGEOWS수 보류주문수 출하지시수 발주취소수 OWS발주수 잔여보류재고  
양재물류센터 1000 1000 95 0 0 0 0 0 0 
=================================================================================================================

- EVC 실행 파일 등록 
1. C:\VC++_Hiplaza\시판\1.80\HiMobile(물류재고조회수정)에서 해당 구문 컴파일 
1. \ARMRel에서 HiMobile.exe 복사 
2. Mobile Device\My Pocket PC\Windows\Start Menu에 붙여 넣음 
---------------------------------------------------------------------------------------------------------- 

- wcscpy() 함수: String을 붙여 주는 역할을 함(=strcpy) 
---------------------------------------------------------------------------------------------------------- 

String temp = "Z1"; 
String temp2 = "용인 물류센타"; 

wcscpy(temp3,temp); 
wcscat(temp3,_T(" - ")); 
---------------------------------------------------------------------------------------------------------- 

결과) Z1 - 용인 물류센타 

String uTemp2 = "Z1- 용인 물류센타"; 
String uTemp2 = "수원"; 
wcsncpy( uTemp2, pSource, 5 ); 

결과) Z1 - 수원 물류센타 
---------------------------------------------------------------------------------------------------------- 

- wcscmp(wszBuffer,TEXT("")) 함수: wszBuffer과 TEXT("")를 비교하는 함수 
 =================================================================================================================

-  자동이체 등록 
- 청약저축 055207-04-003873 20,000원 03.08.02 
- 근로자 우대 750056-04-001291 10,000원 03.07.27 
- 관악인터넷요금 납입자번호[00032801], 지로번호[6124223] 27,500원 03.07.27 
=================================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.07.022(화) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:15 ~ 19:00 

- EVC 백업
Hiplaza CRM 실 DB( leader / solomon)  
=================================================================================================================

-- select * from cust where cust_name='진태만' 
select * from cust order by cust_no desc 

- Wire 서버 세팅(client.h)  
#define HOST_ADDR       "156.147.149.27" // Local Wire 서버 
//#define HOST_ADDR       "165.243.115.18" // 실 Wire 서버 IP(☎ 2630-3432) 
=================================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.07.23(수) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 21:00 

- EVC 백업
- 인스톨 쉴드(Install Shield) 실습 
=================================================================================================================

- LG 직원 
- 이상훈 주임(Hiplaza PDA 담당 - 9층) 
- 이경민 주임(B2C 담당 홈페이지 담당 - 9층) 
- 서정화(B2C 디자이너 담당 - 9층) ==> 내선 ☎9275 

1. 단독(5개 파일, 지점용 일때 6개 파일) =====================> 
- Project Information 
Apllication name: HiMobileD 
Out folder: C:\VC++_Hiplaza\PDA CAP Files\HiMobileD(임의로 설정) 

- Destination Information 
Default Destination folder: 
iPAQ File Store(최상위 아래 폴더 수동으로 생성) 
HiMobileD 

- Files 
Specity all files to install on the device: 
Source file: C:\VC++_Hiplaza\백화점\1.70\HiMobileD\ARMRel Himobile.exe 
Destination: \Windows\Start Menu 
Platform: Pocket PC 
Processor: StrongARM 
Source file: C:\VC++_Hiplaza\addFiles\wireclient.dll (Dlogin.JPG, Dmain.jpg, PrintDll.dll: 지점용일때) ==> 동일 
Destination: \Windows 
Platform: Pocket PC 
Processor: StrongARM 
Source file: C:\VC++_Hiplaza\백화점\1.70\HiMobileDDownload.exe 
Destination: \Windows 
Platform: Pocket PC 
Processor: StrongARM 

- Shortcuts 
Specity all Shortcuts to install on the device: 
Display name: Shortcut to HiMobileA.exe 
Target: \Windows\Start Menu\HiMobileA.exe 
Platform: Pocket PC 
Destination: \Windows\StartUp 

- DeskTop Icon Information 
Select Icon 
File name: C:\VC++_Hiplaza\백화점\1.70\HiMobileD\HiMobile.ICO 
  
- Dialog Boxes: 모든 check 해제 

2. iPAQ File Store(2개 파일 더 추가됨) =====================> 
- Project Information 
Apllication name: HiMobileD 
Out folder: C:\VC++_Hiplaza\PDA CAP Files\HiMobileD(임의로 설정) 

- Destination Information 
Default Destination folder: 
iPAQ File Store(최상위 아래 폴더 수동으로 생성) 
HiMobileD 
- Files 
Specity all files to install on the device: 
Source file: C:\VC++_Hiplaza\백화점\1.70\HiMobileD\ARMRel Himobile.exe 
Destination: \Windows\Start Menu 
Platform: Pocket PC 
Processor: StrongARM 
Source file: C:\VC++_Hiplaza\addFiles\wireclient.dll (Dlogin.JPG, Dmain.jpg, PrintDll.dll: 지점용일때) ==> 동일 
Destination: \Windows 
Platform: Pocket PC 
Processor: StrongARM 
Source file: C:\VC++_Hiplaza\백화점\1.70\HiMobileDDownload.exe 
Destination: \Windows 
Platform: Pocket PC 
Processor: StrongARM 
Source file: C:\VC++_Hiplaza\백화점\1.70\HiMobileDSetup.exe ----- iPAQ File Store 일때 추가됨 
Destination: \iPAQ File Store 
Platform: Pocket PC 
Processor: StrongARM 
Source file: C:\VC++_Hiplaza\PDA CAP Files\HiMobileD\1.70_2\단독\HiMobileD.CAB ----- iPAQ File Store 일때 추가됨 
Destination: \iPAQ File Store\HiMobileD 
Platform: Pocket PC 
Processor: StrongARM 

- Shortcuts 
Specity all Shortcuts to install on the device: 
Display name: Shortcut to HiMobileA.exe 
Target: \Windows\Start Menu\HiMobileA.exe 
Platform: Pocket PC 
Destination: \Windows\StartUp 

- DeskTop Icon Information 
Select Icon 
File name: C:\VC++_Hiplaza\백화점\1.70\HiMobileD\HiMobile.ICO 
  
- Dialog Boxes: 모든 check 해제 
=================================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.07.24(목) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 21:30 

- EVC 백업
- 여름 휴가(8월 18 ~21일) 
한빛아이티㈜ Tel)02-3446-1053 i-kit 관련 문의 
=================================================================================================================

- Hiplaza_B2C 백업
- 터미널 서비스 
LGEHIDWSE2S 
administrator / admin 
=================================================================================================================

- 소스보기 
 \\156.147.149.9\d$ 
  user / user 
=================================================================================================================

- log 설정 
\\156.147.149.9\d$\WebSphere\AppServer\logs 
b2c_stdout.log파일에 log 내용 저장
jcc MasterController.java 
=================================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.07.25(금) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 17:30 

- Hiplaza_B2C 백업
- 터미널 서비스 
LGEHIDWSE2S 
administrator / admin 
=================================================================================================================

- 소스보기 
 \\156.147.149.9\d$ 
  user / user 
- log 설정 
\\156.147.149.9\d$\WebSphere\AppServer\logs 
b2c_stdout.log파일에 log 내용 저장 
=================================================================================================================

 - 경로 설정 
WebSphere\AppServer\installedApps\Dynamo.ear\dyn.war 
JSP: www 
JAVA: src 
CLASS: WEB-INF 
=================================================================================================================

- 회원가입: 18세 미만의 경우 부모의 실명확인을 한다. 
 18세 미만은 신용정보의 데이타가 존재하지 않는다. 
=================================================================================================================

-  SP에서 dsp tag를 사용하기 위해 선언 
 <!-- 다이나모 관련 필요한 소스시작 -->  
<%@ taglib uri="/dspTaglib" prefix="dsp" %>  
<%@ page import="atg.servlet.*"%> 
<dsp:page>로 시작 </dsp:page>로 끝 

www.hiplaza.co.kr/shop/main/home 
/shop/ --> plugin_cfg.xml 설정(application directory가 Dynamo.ear로 정의되어 있다) 

(SERVLET)  MasterController.java   (===> dyn.war\src\com\hiplaza\framework) 

Master Page으로 넘길 때 
*: Reload시킬 때 내부적으로 만들어진 URL로 넘어가지 않음. 
따라서 그 URL로 sendredirect함. 

cmd: sub controller 
db: db access 
entity: beans 
framework: 
util 

Web serber: IBM HTTP Server 
Webshere  LDataSourceProxy(WAS Connection Pool연결), GetInstance) 

Repository 
dynamo가 올라갈 때 설정된 1000개 정보 가지고 올라 간다. 
=================================================================================================================
 
login인시에 ID와 PWD를 가지고 Repository에서 회원정보를 가지고 옴. 
localconfig/tag/userprofiling/lguserProfile.xml mileage만 cach-mode="disable"되어 있음. 
cach-mode가 하나라도 disable이 되어 있으면 요청시 DB에서 데이타 조회해 오는데 
해당 컬럼만 조회해 와서 Repository에 있는 다른값과 전송하므로 Repository를 안 쓰는 것 
보다는 효율적임. 
그러나 기본적으로  cach-mode="enable"로 사용하는 걸 권장. 마일리지는 c/s 프로그램에서 
매출확정되었을 때 변경되므로 매번 DB로 부터 읽어 오도록 설정했음. 
로그인 관련 수정시에는 Repository에에 변경시키고 내부적으로 Repository가 변경되면 DB를 
변경시킨다. 

AdmQnaCmd.java 
testAdmin  =====> http://156.147.149.9/shop/www/admin/FramSet.jsp 
=================================================================================================================

- VB Setup파일 설치시 오류 
msadodc.ocx 구성요소나 종속성이 정확하게 등록되어 있지 않습니다. 
=================================================================================================================

얼마전에 저도 그것땜에 한나절을 다 보냈습니다. 
MS공식 버그구요.. 

windows system\msdbrptr.dll 
windows system\msstdfmt.dll 
progrom files\common files\designers\msderun.dll 

etc  
msdatrep.ocx 
msbind.dll 
msdatsrc.tlb (-> 포함시키지 마세요) 

위 3개 포함시키시구요 
안되면 아래 2개도 포함시켜보세요.. 
=================================================================================================================

제가 배포패키지를 만들때 멀 빠뜨려서 그런걸까요?  
msdatgrd.ocx랑, msadodc.ocx 두개 포함했고요, 필요한 dll들은 다 넣은거 같습니다. 
=================================================================================================================

- ocx 등록방법 
MDAC 을 구하셔서 설치해 보세요... (MDAC_Typ.exe ..) 
=================================================================================================================

msado20.tlb는 일종의 라이브러리 파일로서 등록을 하지 않아도 됩니다.  
대신 msadodc.ocx를 등록하는데 있어서 같은 디렉토리(예: winnt\system32)에  
반드시 존재해야 모든 ado의 기능을 사용하실수 있습니다. 
=================================================================================================================

msadodc.ocx입니다. windows\system폴더에 없으면 비주얼스튜디오 셋업프로그램을  
실행후 추가/삭제를 선택하신뒤 active x만 추가하세요. 비베설치할때 같이 깔리는 건데 실수로 지워졌나봅니다. 
=================================================================================================================

음 먼저 adodc는요... 
MSADODC.OCX 이구요... 
ADODB을 이용할실때는요... 
MSADO15.DLL 입니다요... 
=================================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.07.26(토) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:40 ~ 21:30 

- Hiplaza_B2C 백업
- B2C DB 서버 접속 
HIBCDB.world ==> B2C 개발 서버 db 환경 DB( hipdb / hipdb01)  
HIBCPDB.world ==> B2C 실서버 db 환경 DB( hipdb / hipdb01) 
=================================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.07.28(월) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:40 ~ 21:30 

- B2C 소스 분석
백화점 임직원 Mall 
S/N확인 후 아울렛 매장(/shop/main/prdbrandstore?etcStoreSeq=S300) 으로 이동 
r\www\product\StaffMall.jsp(백화점 임직원 Mall)에서 수정 
=================================================================================================================

- B2C 소스 분석 - 2]  
- 공동구매(usrjoint) 
/shop/main/home에서 공동구매를 클릭하면 /shop/main/usrjoint?time=291059442472495으로 이동 
MasterController.java에서 usrjoint을 찾음  (===> dyn.war\src\com\hiplaza\framework) 

commands.put("/usrjoint", new UsrJointCmd("$/www/joint/usrJointList.jsp","$/www/common/ErrorPage.jsp","$/www/joint/usrJointNext.jsp")); 
이므로 /www/joint/usrJointList.jsp로 이동하고 UsrJointCmd소스를 hiplaza\cmd\joint\UsrJointCmd.java에서 찾음  

hiplaza\cmd\joint\UsrJointCmd.java에서 
try{ 
	conn = lds.getConnection(); 
	JointListDb db = new JointListDb( conn ); 

	jle = db.selectJointAll(); 

	if (jle.getTotalCount() <= 0 ) retPage = this.nextPage; 
	else retPage = this.successPage; 
} 
=================================================================================================================

여기서 JointListDb db 이므로 \hiplaza\db\JointListDb.java를 찾는다. 
public JointListEntity selectJointAll() throws Exception{ 

// 공동구매 회차 정보를 얻는다.(\db\JointListDb.java에서) 
SELECT joint_round_id,  
start_date,  --시작 일자 
start_time,  --시작 시간 
end_date,  --종료 일자 
end_time, --종료 시간 
joint_name,  
nvl(joint_detail,' ') joint_detail,  
status_flag  
FROM joint_round   
WHERE (start_date  start_time) <= to_char(sysdate,'yyyymmddhh24miss')  
AND (end_date  end_time) >= to_char(sysdate,'yyyymmddhh24miss')  
AND scr_display_yn = 'Y'   
} 
=================================================================================================================

$/www/joint/usrJointList.jsp에서  
JointListEntity jle = (JointListEntity)request.getAttribute("jointListEntity"); 이므로 
\hiplaza\entity\JointListEntity.java에서 JointListEntity를 찾는다. 

sPeriod = jle.getStartDate() 
jle.getEndDate() + jle.getEndTime() 
jle.getJointRoundId() 
를 얻는다.  
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.07.29(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:20 ~ 21:30  

- HI_CRM 수정
- 상권 관리 Excel로 출력 
=================================================================================================================

- 상권 등록(->조회) jsp 파일 
/hicrm/cust/tradarea/CuTaregisterlistviewFrm.jsp 
=================================================================================================================

- trim 따기(in JSP) 
cudmbasic.district.trim()  
=================================================================================================================

ex) 1. 상권 등록(->조회) 
http://156.147.135.156:8082/servlet/hicrm.cust.tradarea.CuTaregisterServlet  
====> CuTaregisterlistviewFrm.jsp 호출 

2. Excel Down image 클릭 
<a href="/servlet/hicrm.cust.tradarea.CuTaregisterServlet?go=dmpopupall&Flag=excel&&where=<%=request.getParameter("year")%>"> 
go_excel<img src="/images/popup/dm/butt_excel.gif" width="82" height="18" name="save" border="0"></a> 
====> CuTaPopupSuExcelFrm.jsp 호출 
===============================================================================================================

ex) 1. 대상자 List조회 
http://156.147.135.156:8082/servlet/hicrm.cust.targetmg.CuTmBasicServlet?go=detailist&nPage=1&campaign_id=354
&channel_flag=H&branch_code=A02 
====>/dm/CuDmDetailListFrm.jsp 호출(\cust\dm\CuDmBasicServlet.java) --> viewDetailist(req, res); 

2. 전체 DM발행 image 클릭 
http://156.147.135.156:8082/servlet/hicrm.cust.dm.CuDmBasicServlet?go=dmpopupall&display=cutm&printpop=printpop
&Flag=All&display=cutm&campaign_id=354&channel_flag=H&branch_code=A02&nPage=1 
====> /dm/CuDmPopupDmAllFrm.jsp호출(\cust\dm\CuDmBasicServlet.java) --> dmPopupAll(req, res, Flag); 

3. Excel Down image 클릭 
<a href="/servlet/hicrm.cust.dm.CuDmBasicServlet?go=dmpopupall&Flag=excel&campaign_id=<%= campaign_id %>
&channel_flag=<%= channel_flag %>&branch_code=<%= branch_code %>"> 
=================================================================================================================

- HI_EOS 수정
 ex) 1. Q&A 리스트 
http://156.147.149.9:8181/eos/main/qnaList 
==> /eos/main/qnaList?actType=list&i_currentPage= 호출(\hiplaza\cmd\board\QnaCmd.java) --> execute(res, res); 

2. 질문작성 image 클릭 
http://156.147.149.9:8181/eos/main/qnaWrite?actType=insert&write_flag= 
==> /www/board/qnawrite.jsp 호출 

2. 저장 image 클릭 
/eos/main/qnaList 
==>$/www/board/qnalist.jsp 호출 
===============================================================================================================

 ex) 1. 게시판 리스트 
http://156.147.149.9:8181/eos/main/qnaList 
==> /eos/main/qnaList?actType=list&i_currentPage= 호출(\hiplaza\cmd\board\QnaCmd.java) --> execute(res, res); 

2. 질문작성 image 클릭 
http://156.147.149.9:8181/eos/main/qnaWrite?actType=insert&write_flag= 
==> /www/board/qnawrite.jsp 호출 

2. 저장 image 클릭 
/eos/main/qnaList 
==> $/www/board/qnalist.jsp 호출 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.07.30(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:00 

- HI_EOS 수정
게시판 Tabel ===> l_webnotice 
Q&A Tabel ===> l_webqa 
===============================================================================================================

- HI_CRM 수정
- JSP  printJspPage() 함수 에러 
printJspPage(req, res, "/hicrm/cust/tradarea/CuTaPopupSuExcelFrm.jsp"); 에러 
\common\HicrmServlet.java에서 수정 
=================================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.07.31(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:30 

- PDA 분석
- 백화점용(전화연결로 접속): i-kit(통신팩) 
- 지점용(무선랜으로 접속): IP 설정 
(주)인트정보(☎ 3281-1777)에서 IP 직접 설정 해줘야 함 
=================================================================================================================

- 오라클 ODBC연결 전송 데이타 문제 
1. 오라클에서 TAMAora라는 데이타베이스 만듬 
2. MS-SQL에서 tb_test라는 테이블 오라클 TAMAora로 Export 
3. 오라클에서 Table에서는 보임 
4. Select * from tb_test라고 하면 테이블이 없다고 나옴 

- 해결책 
1. MS-SQL에서 처음부터 테이블명을 대문자로 표기(TB_TEST)  
1. select * from "tb_test" 이런식으로 강제로 테이블명을 소문자로 만들어 줘야 함 

- 원인 
오라클은 내부적으로 오브젝트명을 대문자로 관리  
ODBC를 통해 ms-sql 테이블 목록을 그대로 가지고 오다보니 테이블명 생성시 소문자로 만들어 버림 
=================================================================================================================

c.f) drop table "DB_Calendar"  
c.f) SELECT * FROM DB_CALENDAR 

DB link를 걸수 있지. 
MS-SQL서버에서 다이렉트로 오라클에 접속 가능하다. 
=================================================================================================================

- TAMAora DB( system / manager)
( tama / tama339 ) 
=================================================================================================================

- Oracle SQL PLUS에서 작업 
-- TABLESPACE 생성 예제[tama_data] 
SQL> CREATE TABLESPACE tama_data 
DATAFILE 'C:\oracle\OHome\tama_data.dbs' SIZE 6M 
DEFAULT STORAGE( INITIAL 50K 
NEXT 50K 
MINEXTENTS 10 
MAXEXTENTS 121 
PCTINCREASE 50); 

-- TABLESPACE 생성 예제[temporary_data] 
SQL> CREATE TABLESPACE temporary_data 
DATAFILE 'C:\oracle\OHome\temporary_data.dbs' SIZE 6M 
DEFAULT STORAGE( INITIAL 50K 
NEXT 50K 
MINEXTENTS 10 
MAXEXTENTS 121 
PCTINCREASE 50); 
  
-- 사용자 table 생성 예제[temporary_data] 
SQL> CREATE USER tama 
       IDENTIFIED BY tama339 
       DEFAULT    TABLESPACE tama_data 
       TEMPORARY  TABLESPACE temporary_data 
       QUOTA 5M   ON tama_data 
       QUOTA 3M   ON temporary_data; 

-- tama 사용자를 DBA 권한 주기 
GRANT CONNECT, DBA TO tama; 
CONNECT tama/tama339 
=================================================================================================================

-- 불완전한 사용자 생성 
CREATE USER incomplete 
       IDENTIFIED BY incomplete; 

-- 생성한 사용자에게 CONNECT 오라클 역할 부여 
GRANT CONNECT TO incomplete; 

-- 생성한 사용자로 오라클 데이터베이스 접속 
CONNECT incomplete/incomplete; 

-- 완전한 사용자로 수정 
CONNECT system/manager 

ALTER USER incomplete 
      IDENTIFIED BY complete 
      DEFAULT TABLESPACE user_data 
      QUOTA 5M ON user_data; 
=================================================================================================================

- 날짜 타입 변경
- 일반 string형에서 date형으로 전환 
to_date(a.FROM_DATE, 'yyyy-mm-dd') 
c.f) 기존에 날짜 타입이 정상(yyyy-mm-dd)인데 to_date()함수를 쓰면 에러가 떨어짐 
===============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■