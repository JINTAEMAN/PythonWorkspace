

�����������������������������������������������������������
+---------------------------------------------// Memo(2003.07) //----------------------------------------------------------+
�����������������������������������������������������������


�������������������  2003.07.09(��) �۾� �������������������
---> 08:00 ~ 10:00

- JSP ����
- ȯ�溯�� ���� 
�����̸�(N): CATALINA_HOME  ������(V): C:\Tomcat 4.1 

C:\> cd C:\Tomcat 4.1\bin 
C:\Tomcat 4.1\bin> startup 

- �� ����(index.jsp) 
C:\Program Files\Apache Group\Tomcat 4.1\webapps\ROOT 
===============================================================================================================

- PDA ��ġ
1. �ѱ� ���� DioOpen ��ġ 
2. HiMobile ��ġ 
3. ��ȭ�ɱ�iPhone ��ġ 
===============================================================================================================

- PDA ���� ���α׷�
1. Installshield 
2. Toad 
3. Oracle 
4. Tomcat 
5. EVC 
6. Active Sync 
===============================================================================================================

- Tomcat ȯ�漳��
- C:\jakarta-tomcat-3.2.1\conf\server.xml ���Ͽ��� ������ �߰�  
<Context path="/himail" docBase="webapps/ROOT" debug="0"/> 
<Context path="/hiplaza" docBase="webapps/hiplaza" debug="0"/> 
===============================================================================================================

 �߿��� �Ӽ� �� ������ �������ڸ� Host �±��� appBase �Ӽ��� �� ���ø����̼�(Context)���� ���� ���丮�� �˴ϴ�.  
 Context �� �ִ� docBase �� ������� ��� ������ġ�� �ȴٴ� ������. ���� ��� ycpa.or.kr �� ROOT Context��  
 ��Ʈ���丮�� /home/vhost/ycpahome/ROOT �� �˴ϴ�. unpackWARs �� �Ӽ����� "true" �� ��� appBase ����  
 ���� ���丮�� WAR ������ ���� ��� Tomcat �� �ڵ����� �� �� ���ø����̼��� ������ Ǯ�� Context�� �����ϰ� �˴ϴ�.  
 �ڵ���ġ(auto deployment) ��� �մϴ� 
===============================================================================================================

������������������� 2003.07.10(��) �۾� ������������������� 
---> 6:10:00 ~ 07:00 

- JSP ����
**** jakarta-tomcat-3.2.1���� �� ���� **** 
===============================================================================================================

- ȯ�溯�� ���� 
�����̸�(N): CATALINA_HOME  ������(V): C:\jakarta-tomcat-3.2.1  
- servlet ������ �߰� 
�����̸�(N): CLASSPATH  ������(V): C:\jakarta-tomcat-3.2.1\lib\servlet.jar 

C:\> cd C:\jakarta-tomcat-3.2.1 
C:\jakarta-tomcat-3.2.1> set JAVA_HOME=C:\jdk1.3.1 
C:\jakarta-tomcat-3.2.1> set TOMCAT_HOME=C:\jakarta-tomcat-3.2.1 

C:\jakarta-tomcat-3.2.1> set 
C:\> cd C:\jakarta-tomcat-3.2.1\bin 
C:\jakarta-tomcat-3.2.1\bin> startup 
===============================================================================================================

- PDA ����
1. ���� 
��ȭ���� ��Ʈ�� �̹� ����ϰ� �ֽ��ϴ�. 
- ���ͳ� ��Ʈ�� ���� ����ϸ� �ȵ�--- 2�� �ϳ��� ���� ��Ű�� �ٽ� �õ� 
===============================================================================================================

- DA ���� ����
-16:20 ~ 18:00 ȸ�ǽ� 
===============================================================================================================

- PDA ���
- Compaq iPAQ H3800 Series(PE2030) 
S/N: 4G27DW3390VC --> ��ȭ���� 
S/N: 4G25DW33H0GE --> ����(������) 
===============================================================================================================

- ��Ʈ�� ���
- �Ｚ SENS710 
S/N: 683191BR600422 S710-SSG 
===============================================================================================================

- ���� ��� 
�������ͳ�(837-6008) -> 27,500��(2�����), �𵩺�����(5����), �ص��(����), ���̺�TV 2�� ���� 
���ð��� ��ġ(859-7810) -> 24,000�� 
===============================================================================================================

- IP ����(Hiplaza)]
IP�ּ�: 156. 147.149.27 
S.M: 255.255.255.128 
G.W: 156. 147.149.1 
DNS: 165. 243.17.15 
===============================================================================================================

- ħ�뺸 ���� 
- �輼��, ������ ���� 
- ħ�뺸 ����(�輼��) 
- 20:00 ǻ�� �Ĵ�(����)���� ����(33,500��) 
- 21:20 �� ������ ���� ����(12,000��) 
===============================================================================================================

������������������� 2003.07.11(��) �۾� ������������������� 
---> 07:00 ~ 10:00 

- �ҽ��м�- Himobile
- Debug ���� 
C:\jakarta-tomcat-3.2.1\webapps\hiplaza\WEB-INF\classes\common\Debug.java����  
===============================================================================================================

private static String dir = "C:/jakarta-tomcat-3.2.1/webapps/hiplaza/Debug"; 
===============================================================================================================

- Log ����   
C:\jakarta-tomcat-3.2.1\webapps\hiplaza\WEB-INF\classes\common\Log.java����
rivate static String dir ="C:/jakarta-tomcat-3.2.1/webapps/hiplaza/log"; 
===============================================================================================================

- DB ���� 
C:\jakarta-tomcat-3.2.1\webapps\hiplaza\WEB-INF\classes\test.properties(�� DB���� himobile.properties)����  
===============================================================================================================

drivers=oracle.jdbc.driver.OracleDriver 
mobile.url=jdbc:oracle:thin:@156.147.135.108:1523:1BDEV 
mobile.user=leader 
mobile.password=leader01 
===============================================================================================================
  
C:\jakarta-tomcat-3.2.1\webapps\hiplaza\WEB-INF\classes\common\DBConnectionManager.java����  
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
/test.properties�� �����ϰ� �ٽ� compile�Ѵ�.  
===============================================================================================================
 
-  MG ��ȭ 
- ȸ�� �� 1588-1553 ��켷�̻� �� 011-9902-4247 
- Ź��� ��ǳ��(19,000��) 
===============================================================================================================

������������������� 2003.12(��) �۾� ������������������� 
---> 07:00 ~ 09:30 ==> ��� �޹�

- �ڰ��� ����(19,000 ��), �׸�(10,000 ��), ���� 4��(20,000��) 
- ���� �ݳ� 
- MG�湮
===============================================================================================================

������������������� 2003.07.14(��) �۾� ������������������� 
---> 07:00 ~ 09:30 

- �ҽ��м�- Himobile
- servlet ���� 
1. ȯ�溯������ C:\jakarta-tomcat-3.2.1\lib\servlet.jar�߰� 
2. C:\jakarta-tomcat-3.2.1\webapps\hiplaza\WEB-INF\classes\SnoopServlet.java ���� ���� Ȯ�� 
3. http://156.147.149.27:8080/servlet/SnoopServlet �Ʒ��� ���� ���� ���̸� ����  
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

- Entera ���� 
- Entera ����(�̵����) Stub�� �̿��Ͽ� ������, �ٸ� ����(���� ����, �Ǹ� ����)�� ��� 
- <%@ page import="odet40.*" %>,  <%@ page import="Vartype.*" %> ��� 
----------------------------------------------------------------------------------------------------------------

- Entera ���� ���� �κ�
- �̰����(Trans_request.jsp), SVC �����Ǹ�(SVC_input.jsp), �����ȸ(Delivery_search.jsp) 
- ī�������(Card_no_split.jsp), ī����λ󼼳���(Card_appr_print.jsp), ī�����(Card_approval.jsp) 
- setEnv ����(Entera ���� ����) 
environ = Environment.setEnv("C:\\jakarta-tomcat-3.2.1\\webapps\\hiplaza\\WEB-INF\\classes\\client.env"); 
----------------------------------------------------------------------------------------------------------------

- Debug
- �ش� �ҽ� ���� �κ� �ڵ带 ��� ���� �� ����� �Ѵ�. 
ex) out.print(request.getParameter("as_it_elevator")+"[as_it_elevator]<br>"); 
===============================================================================================================

������������������� 2003.07.15(ȭ) �۾� ������������������� 
---> 07:00 ~ 07:00 

- �ҽ��м�- Himail
- Servlet ��� 
C:\jakarta-tomcat-3.2.1\webapps\ROOT\WEB-INF\web.xml���� ��� ���� 
 res.sendRedirect("/himail/mail/list?category=($Inbox)");  �� ��� 
web.xml���� url-pattern�� mail/list�� ���� ã���� �װ��� servlet-name�� MailList �̴�. 
�� servlet-name�� servlet-class�� ã���� com.kwapizen.hiplaza.mail.MailListServlet�� ���´�. 
===============================================================================================================

- ���� ���� ��� (XML) 
http://156.147.135.88/mail1/XT001.nsf/ByCategory?ReadViewEntries&count=6&restrictToCategory=($Inbox)&start=1    
msadodc.ocx ������ҳ� ���Ӽ��� ��Ȯ�ϰ� ��ϵǾ� ���� �ʽ��ϴ�. 
===============================================================================================================

- KYPNȸ�� 
- 20:00 ��õ�� �����ȭ�� �ⱸ 
- 20:10 ����� 
- 23:00 �뷡�� 
- 24:00 ���� �� 
- 24:50 �Ͱ� 
===============================================================================================================

- �ڵ���ü ��� 
- ����ȸ ��� 
- ��ȣ�������������� 884-01-0001-978  15,000�� 03.07.27 
===============================================================================================================

������������������� 2003.07.16(��) �۾� ������������������� 
---> 07:15 ~ 07:00 

- �ҽ��м�- EVC
C:\Windows CE Tools\wce300\Pocket PC 2002 
-\include ������ 
imgrendr.h, message.h, imgdecmp.h ���� �߰� 
- \include\wire ������ 
Binding.h, Connector.h, supp.h, Wire.h ���� �߰� 
-\lib\arm ������ 
PrintDll.lib, wireclient.lib ���� �߰� 
===============================================================================================================

- �ҽ��м�- EVC
- HI_CRM TEST ���� 
TEST Url - http://156.147.135.156:8082/ 
id/pwd  - 10326/pwd���� 

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

HICRM ����Ÿ���̽��� �ƴ϶� SU_HICRM ����Ÿ���̽��� ��� ������ ����(DB ���� ���� ���ٿ�) 
===============================================================================================================

- JP1 ���� - Window2000 �͹̳� ������ ���� 
������Ʈ: 156.147.135.156 
ID: jp1 PWD: adcjp1 
===============================================================================================================

- �ҽ� ������ JP1 ���� ȭ�鿡�� ���������� Ŭ���ؼ� �����Ͽ� ������  
D:\Websphere\Appserver\installedApps\DevhicrmApp.ear\DevhicrmApp.war\ 
�� hicrm������ WEB-INF\classes���� �۾� 
===============================================================================================================

- java ��� 
D:\���200307\hicrm\������ java ��� 
===============================================================================================================

- log ���� 
E:\Devhicrm\logs�� stdout(print.out �۾�), stderr(print.err �۾�) 
- System.out.println("[TAMA] CuCrBasicWrap :: insert :: \n "+query); 
===============================================================================================================

- HI_CRM ������ ����
cust_master ���̺�  
����No, ���ּҿ��� ��(new_Town), ��(new_District), ��(new_Street) �߰� 
�����ȣ ���̺��� ���� ���� 
===============================================================================================================

������������������� 2003.07.18(��) �۾� ������������������� 
---> 07:30:00 ~ 07:00 

- HI_CRM ������ ����
slect * from cust_master 
===============================================================================================================

- C:\HI_CRM\jsp_class\hicrm\cust\custrelation 
\CuCrSearchFrm.jsp ��ȸ�� 
\CuCrListFrm.jsp �˻� ��� ����Ʈ(����) 
list ->  listCustBasic(req, res); 
\CuCrBasicinsertFrm.jsp ���(����) 
write -> writeCust(req, res); 

\ where = where + " and c.cust_name like '" + cust_name + "%'";   // ������ 

basicManager = new CuCrBasicManager(); 
custList = basicManager.getList(where, page); 
count = basicManager.countAll(where); 

- C:\HI_CRM\jsp_class\WEB-INF\classes\hicrm\cust\custrelation\dbmgr 
\CuCrBasicManager.java 

public java.util.Vector getList(String where, int nPage) throws Exception { 
CuCrBasicWrap cucrbasicWrap = new CuCrBasicWrap(connection); 
return cucrbasicWrap.selectAll(where,nPage); 
} 

 \CuCrBasicWrap.java ����(�� ��ȸ) - CuCrListFrm.jsp 
 public java.util.Vector selectAll(String where, int nPage) throws SQLException, DataNotFoundException { 
} 
 \CuCrBasicWrap.java ����(�� ���) - CuCrBasicinsertFrm.jsp 
public int insert(CuCrBasic basic) throws SQLException { 
} 
 \CuCrBasicWrap.java ����(�� ����ȸ) - CuCrBasicselectFrm.jsp 
public CuCrBasic selectCust(String cust_no) throws SQLException, DataNotFoundException { 
} 
  \CuCrBasicWrap.java ����(�� ����) - CuCrBasicselectFrm.jsp 
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
  marginwidth="0" marginheight="0"> --  ���� 
</frameset> 

<frame name="condition"..>�� ���� frame name="result"  ����Ÿ�� ���÷� ���� 
===============================================================================================================

// ����ȸ Qeury(���� ��) 
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
and c.cust_name like '�¸�%' 
order by c.cust_no desc) 
)  
------------------------------------------------------------------------------------- 

// ����ȸ Qeury(���� ��) 
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
 where  c.cust_name like '�¸�%' 
 order by c.cust_no desc 
 ) 
) 
===============================================================================================================
  
// ����� 
System.out.print(query); // .java�� ���  
System.out.println("[TAMA] CuCrBasicWrap :: insert :: \n "+query); 
LLog.debug.println("[TAMA] CuCrBasicWrap :: insert :: \n "+query); 
LLog.err.println("[TAMA] CuCrBasicWrap :: insert :: \n "+query);  // EOS 
out.println("[TAMA]  :: CuCrBasicWrap :: uery :: "+ query); // .jsp�� ��� 
// �����(java��ũ��Ʈ����) 
alert("[TAMA] CuCrBasicWrap :: S_No :: \n "+sform.S_No.value); 
===============================================================================================================

// ����ȸ Query 
select cust_no, cust_name, system_date, zip_code, addr,new_town,new_district, new_street, insert_date  
from cust_master 
--where cust_name like '�¸�%' 
order by system_date desc 
===============================================================================================================

������������������� 2003.07.19(��) �۾� ������������������� 
---> 07:00 ~ 13:00 

- HI_CRM ������ ����
- ��, ��, �� ���� 
===============================================================================================================

- EVC ��� 
- Client �ҽ� �м�  
- EVC TEST ����(���ǿ�- ���̵�) 
id/pwd  - 50273 / 5133 

- EVC TEST ����(��ȭ����- ���̵�) 
id/pwd  - 50299 / 1603 / 1152940 / 12345678 

- EOS TEST ����(���̵�) 
id/pwd  - 1152822 / 123 
===============================================================================================================

������������������� 2003.07.21(��) �۾� ������������������� 
---> 07:30 ~ 09:30 

- EVC ���
- Client �ҽ� �м� 
ex) StockW.cpp 
1. C:\Wire_V52_SSL\scripts����\Stock_w.widl���Ͽ��� INPUT, INPUT �м� 
2. ������(Tomcat)���� hiplaza/store/Stock_w_search.jsp �ҽ��� �ش� �κ��� Wireless�������� BINDING�Ͽ� ���� �� 
=================================================================================================================

<WIDL NAME="StockW" COMMENT="�����������">     
  <!-- ========================================================================= --> 
  <SERVICE NAME="Search" 
    INPUT="BI_Search" 
    OUTPUT="BO_Search" 
    METHOD="POST" 
    URL="http://156.147.149.27:8080/hiplaza/store/Stock_w_search.jsp" 
    COMMENT="����������� ��ȸ"/>     
     
  <BINDING NAME="BI_Search" TYPE="INPUT"> 
    <VARIABLE NAME="MODEL_CODE"  FORMNAME="MODEL_CODE" COMMENT="��"/> 
    <VARIABLE NAME="FR_MLCT"     FORMNAME="FR_MLCT"    COMMENT="����1"/> 
    <VARIABLE NAME="TO_MLCT"     FORMNAME="TO_MLCT"    COMMENT="����2"/> 
  </BINDING> 

  <BINDING NAME="BO_Search" TYPE="OUTPUT"> 
    <VARIABLE NAME="stodata" TYPE="STRING[][]" NULLOK="TRUE" COMMENT="">doc.table[0].tr[1-end].td[].text</VARIABLE> 
  </BINDING>   
</WIDL> 
=================================================================================================================

Stock_w_search.jsp���� ù ���� ���̺� tr �ι�°(���� ����)�� ���� �����ؼ� td ù��° ���� stodata�� ������ 
=================================================================================================================

- ������� ��ȸ ���
������ ����� ������� LGE������ LGEOWS�� �����ֹ��� �������ü� ������Ҽ� OWS���ּ� �ܿ��������  
���繰������ 1000 1000 95 0 0 0 0 0 0 
=================================================================================================================

- EVC ���� ���� ��� 
1. C:\VC++_Hiplaza\����\1.80\HiMobile(���������ȸ����)���� �ش� ���� ������ 
1. \ARMRel���� HiMobile.exe ���� 
2. Mobile Device\My Pocket PC\Windows\Start Menu�� �ٿ� ���� 
---------------------------------------------------------------------------------------------------------- 

- wcscpy() �Լ�: String�� �ٿ� �ִ� ������ ��(=strcpy) 
---------------------------------------------------------------------------------------------------------- 

String temp = "Z1"; 
String temp2 = "���� ������Ÿ"; 

wcscpy(temp3,temp); 
wcscat(temp3,_T(" - ")); 
---------------------------------------------------------------------------------------------------------- 

���) Z1 - ���� ������Ÿ 

String uTemp2 = "Z1- ���� ������Ÿ"; 
String uTemp2 = "����"; 
wcsncpy( uTemp2, pSource, 5 ); 

���) Z1 - ���� ������Ÿ 
---------------------------------------------------------------------------------------------------------- 

- wcscmp(wszBuffer,TEXT("")) �Լ�: wszBuffer�� TEXT("")�� ���ϴ� �Լ� 
 =================================================================================================================

-  �ڵ���ü ��� 
- û������ 055207-04-003873 20,000�� 03.08.02 
- �ٷ��� ��� 750056-04-001291 10,000�� 03.07.27 
- �������ͳݿ�� �����ڹ�ȣ[00032801], ���ι�ȣ[6124223] 27,500�� 03.07.27 
=================================================================================================================

������������������� 2003.07.022(ȭ) �۾� ������������������� 
---> 07:15 ~ 19:00 

- EVC ���
Hiplaza CRM �� DB( leader / solomon)  
=================================================================================================================

-- select * from cust where cust_name='���¸�' 
select * from cust order by cust_no desc 

- Wire ���� ����(client.h)  
#define HOST_ADDR       "156.147.149.27" // Local Wire ���� 
//#define HOST_ADDR       "165.243.115.18" // �� Wire ���� IP(�� 2630-3432) 
=================================================================================================================

������������������� 2003.07.23(��) �۾� ������������������� 
---> 07:00 ~ 21:00 

- EVC ���
- �ν��� ����(Install Shield) �ǽ� 
=================================================================================================================

- LG ���� 
- �̻��� ����(Hiplaza PDA ��� - 9��) 
- �̰�� ����(B2C ��� Ȩ������ ��� - 9��) 
- ����ȭ(B2C �����̳� ��� - 9��) ==> ���� ��9275 

1. �ܵ�(5�� ����, ������ �϶� 6�� ����) =====================> 
- Project Information 
Apllication name: HiMobileD 
Out folder: C:\VC++_Hiplaza\PDA CAP Files\HiMobileD(���Ƿ� ����) 

- Destination Information 
Default Destination folder: 
iPAQ File Store(�ֻ��� �Ʒ� ���� �������� ����) 
HiMobileD 

- Files 
Specity all files to install on the device: 
Source file: C:\VC++_Hiplaza\��ȭ��\1.70\HiMobileD\ARMRel Himobile.exe 
Destination: \Windows\Start Menu 
Platform: Pocket PC 
Processor: StrongARM 
Source file: C:\VC++_Hiplaza\addFiles\wireclient.dll (Dlogin.JPG, Dmain.jpg, PrintDll.dll: �������϶�) ==> ���� 
Destination: \Windows 
Platform: Pocket PC 
Processor: StrongARM 
Source file: C:\VC++_Hiplaza\��ȭ��\1.70\HiMobileDDownload.exe 
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
File name: C:\VC++_Hiplaza\��ȭ��\1.70\HiMobileD\HiMobile.ICO 
  
- Dialog Boxes: ��� check ���� 

2. iPAQ File Store(2�� ���� �� �߰���) =====================> 
- Project Information 
Apllication name: HiMobileD 
Out folder: C:\VC++_Hiplaza\PDA CAP Files\HiMobileD(���Ƿ� ����) 

- Destination Information 
Default Destination folder: 
iPAQ File Store(�ֻ��� �Ʒ� ���� �������� ����) 
HiMobileD 
- Files 
Specity all files to install on the device: 
Source file: C:\VC++_Hiplaza\��ȭ��\1.70\HiMobileD\ARMRel Himobile.exe 
Destination: \Windows\Start Menu 
Platform: Pocket PC 
Processor: StrongARM 
Source file: C:\VC++_Hiplaza\addFiles\wireclient.dll (Dlogin.JPG, Dmain.jpg, PrintDll.dll: �������϶�) ==> ���� 
Destination: \Windows 
Platform: Pocket PC 
Processor: StrongARM 
Source file: C:\VC++_Hiplaza\��ȭ��\1.70\HiMobileDDownload.exe 
Destination: \Windows 
Platform: Pocket PC 
Processor: StrongARM 
Source file: C:\VC++_Hiplaza\��ȭ��\1.70\HiMobileDSetup.exe ----- iPAQ File Store �϶� �߰��� 
Destination: \iPAQ File Store 
Platform: Pocket PC 
Processor: StrongARM 
Source file: C:\VC++_Hiplaza\PDA CAP Files\HiMobileD\1.70_2\�ܵ�\HiMobileD.CAB ----- iPAQ File Store �϶� �߰��� 
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
File name: C:\VC++_Hiplaza\��ȭ��\1.70\HiMobileD\HiMobile.ICO 
  
- Dialog Boxes: ��� check ���� 
=================================================================================================================

������������������� 2003.07.24(��) �۾� ������������������� 
---> 07:00 ~ 21:30 

- EVC ���
- ���� �ް�(8�� 18 ~21��) 
�Ѻ�����Ƽ�� Tel)02-3446-1053 i-kit ���� ���� 
=================================================================================================================

- Hiplaza_B2C ���
- �͹̳� ���� 
LGEHIDWSE2S 
administrator / admin 
=================================================================================================================

- �ҽ����� 
 \\156.147.149.9\d$ 
  user / user 
=================================================================================================================

- log ���� 
\\156.147.149.9\d$\WebSphere\AppServer\logs 
b2c_stdout.log���Ͽ� log ���� ����
jcc MasterController.java 
=================================================================================================================

������������������� 2003.07.25(��) �۾� ������������������� 
---> 07:00 ~ 17:30 

- Hiplaza_B2C ���
- �͹̳� ���� 
LGEHIDWSE2S 
administrator / admin 
=================================================================================================================

- �ҽ����� 
 \\156.147.149.9\d$ 
  user / user 
- log ���� 
\\156.147.149.9\d$\WebSphere\AppServer\logs 
b2c_stdout.log���Ͽ� log ���� ���� 
=================================================================================================================

 - ��� ���� 
WebSphere\AppServer\installedApps\Dynamo.ear\dyn.war 
JSP: www 
JAVA: src 
CLASS: WEB-INF 
=================================================================================================================

- ȸ������: 18�� �̸��� ��� �θ��� �Ǹ�Ȯ���� �Ѵ�. 
 18�� �̸��� �ſ������� ����Ÿ�� �������� �ʴ´�. 
=================================================================================================================

-  SP���� dsp tag�� ����ϱ� ���� ���� 
 <!-- ���̳��� ���� �ʿ��� �ҽ����� -->  
<%@ taglib uri="/dspTaglib" prefix="dsp" %>  
<%@ page import="atg.servlet.*"%> 
<dsp:page>�� ���� </dsp:page>�� �� 

www.hiplaza.co.kr/shop/main/home 
/shop/ --> plugin_cfg.xml ����(application directory�� Dynamo.ear�� ���ǵǾ� �ִ�) 

(SERVLET)  MasterController.java   (===> dyn.war\src\com\hiplaza\framework) 

Master Page���� �ѱ� �� 
*: Reload��ų �� ���������� ������� URL�� �Ѿ�� ����. 
���� �� URL�� sendredirect��. 

cmd: sub controller 
db: db access 
entity: beans 
framework: 
util 

Web serber: IBM HTTP Server 
Webshere  LDataSourceProxy(WAS Connection Pool����), GetInstance) 

Repository 
dynamo�� �ö� �� ������ 1000�� ���� ������ �ö� ����. 
=================================================================================================================
 
login�νÿ� ID�� PWD�� ������ Repository���� ȸ�������� ������ ��. 
localconfig/tag/userprofiling/lguserProfile.xml mileage�� cach-mode="disable"�Ǿ� ����. 
cach-mode�� �ϳ��� disable�� �Ǿ� ������ ��û�� DB���� ����Ÿ ��ȸ�� ���µ� 
�ش� �÷��� ��ȸ�� �ͼ� Repository�� �ִ� �ٸ����� �����ϹǷ� Repository�� �� ���� �� 
���ٴ� ȿ������. 
�׷��� �⺻������  cach-mode="enable"�� ����ϴ� �� ����. ���ϸ����� c/s ���α׷����� 
����Ȯ���Ǿ��� �� ����ǹǷ� �Ź� DB�� ���� �о� ������ ��������. 
�α��� ���� �����ÿ��� Repository���� �����Ű�� ���������� Repository�� ����Ǹ� DB�� 
�����Ų��. 

AdmQnaCmd.java 
testAdmin  =====> http://156.147.149.9/shop/www/admin/FramSet.jsp 
=================================================================================================================

- VB Setup���� ��ġ�� ���� 
msadodc.ocx ������ҳ� ���Ӽ��� ��Ȯ�ϰ� ��ϵǾ� ���� �ʽ��ϴ�. 
=================================================================================================================

������ ���� �װͶ��� �ѳ����� �� ���½��ϴ�. 
MS���� ���ױ���.. 

windows system\msdbrptr.dll 
windows system\msstdfmt.dll 
progrom files\common files\designers\msderun.dll 

etc  
msdatrep.ocx 
msbind.dll 
msdatsrc.tlb (-> ���Խ�Ű�� ������) 

�� 3�� ���Խ�Ű�ñ��� 
�ȵǸ� �Ʒ� 2���� ���Խ��Ѻ�����.. 
=================================================================================================================

���� ������Ű���� ���鶧 �� ���߷��� �׷��ɱ��?  
msdatgrd.ocx��, msadodc.ocx �ΰ� �����߰��, �ʿ��� dll���� �� ������ �����ϴ�. 
=================================================================================================================

- ocx ��Ϲ�� 
MDAC �� ���ϼż� ��ġ�� ������... (MDAC_Typ.exe ..) 
=================================================================================================================

msado20.tlb�� ������ ���̺귯�� ���Ϸμ� ����� ���� �ʾƵ� �˴ϴ�.  
��� msadodc.ocx�� ����ϴµ� �־ ���� ���丮(��: winnt\system32)��  
�ݵ�� �����ؾ� ��� ado�� ����� ����ϽǼ� �ֽ��ϴ�. 
=================================================================================================================

msadodc.ocx�Դϴ�. windows\system������ ������ ���־�Ʃ��� �¾����α׷���  
������ �߰�/������ �����Ͻŵ� active x�� �߰��ϼ���. �񺣼�ġ�Ҷ� ���� �򸮴� �ǵ� �Ǽ��� �����������ϴ�. 
=================================================================================================================

�� ���� adodc�¿�... 
MSADODC.OCX �̱���... 
ADODB�� �̿��ҽǶ��¿�... 
MSADO15.DLL �Դϴٿ�... 
=================================================================================================================

������������������� 2003.07.26(��) �۾� ������������������� 
---> 07:40 ~ 21:30 

- Hiplaza_B2C ���
- B2C DB ���� ���� 
HIBCDB.world ==> B2C ���� ���� db ȯ�� DB( hipdb / hipdb01)  
HIBCPDB.world ==> B2C �Ǽ��� db ȯ�� DB( hipdb / hipdb01) 
=================================================================================================================

������������������� 2003.07.28(��) �۾� ������������������� 
---> 07:40 ~ 21:30 

- B2C �ҽ� �м�
��ȭ�� ������ Mall 
S/NȮ�� �� �ƿ﷿ ����(/shop/main/prdbrandstore?etcStoreSeq=S300) ���� �̵� 
r\www\product\StaffMall.jsp(��ȭ�� ������ Mall)���� ���� 
=================================================================================================================

- B2C �ҽ� �м� - 2]  
- ��������(usrjoint) 
/shop/main/home���� �������Ÿ� Ŭ���ϸ� /shop/main/usrjoint?time=291059442472495���� �̵� 
MasterController.java���� usrjoint�� ã��  (===> dyn.war\src\com\hiplaza\framework) 

commands.put("/usrjoint", new UsrJointCmd("$/www/joint/usrJointList.jsp","$/www/common/ErrorPage.jsp","$/www/joint/usrJointNext.jsp")); 
�̹Ƿ� /www/joint/usrJointList.jsp�� �̵��ϰ� UsrJointCmd�ҽ��� hiplaza\cmd\joint\UsrJointCmd.java���� ã��  

hiplaza\cmd\joint\UsrJointCmd.java���� 
try{ 
	conn = lds.getConnection(); 
	JointListDb db = new JointListDb( conn ); 

	jle = db.selectJointAll(); 

	if (jle.getTotalCount() <= 0 ) retPage = this.nextPage; 
	else retPage = this.successPage; 
} 
=================================================================================================================

���⼭ JointListDb db �̹Ƿ� \hiplaza\db\JointListDb.java�� ã�´�. 
public JointListEntity selectJointAll() throws Exception{ 

// �������� ȸ�� ������ ��´�.(\db\JointListDb.java����) 
SELECT joint_round_id,  
start_date,  --���� ���� 
start_time,  --���� �ð� 
end_date,  --���� ���� 
end_time, --���� �ð� 
joint_name,  
nvl(joint_detail,' ') joint_detail,  
status_flag  
FROM joint_round   
WHERE (start_date  start_time) <= to_char(sysdate,'yyyymmddhh24miss')  
AND (end_date  end_time) >= to_char(sysdate,'yyyymmddhh24miss')  
AND scr_display_yn = 'Y'   
} 
=================================================================================================================

$/www/joint/usrJointList.jsp����  
JointListEntity jle = (JointListEntity)request.getAttribute("jointListEntity"); �̹Ƿ� 
\hiplaza\entity\JointListEntity.java���� JointListEntity�� ã�´�. 

sPeriod = jle.getStartDate() 
jle.getEndDate() + jle.getEndTime() 
jle.getJointRoundId() 
�� ��´�.  
===============================================================================================================

������������������� 2003.07.29(ȭ) �۾� �������������������
---> 07:20 ~ 21:30  

- HI_CRM ����
- ��� ���� Excel�� ��� 
=================================================================================================================

- ��� ���(->��ȸ) jsp ���� 
/hicrm/cust/tradarea/CuTaregisterlistviewFrm.jsp 
=================================================================================================================

- trim ����(in JSP) 
cudmbasic.district.trim()  
=================================================================================================================

ex) 1. ��� ���(->��ȸ) 
http://156.147.135.156:8082/servlet/hicrm.cust.tradarea.CuTaregisterServlet  
====> CuTaregisterlistviewFrm.jsp ȣ�� 

2. Excel Down image Ŭ�� 
<a href="/servlet/hicrm.cust.tradarea.CuTaregisterServlet?go=dmpopupall&Flag=excel&&where=<%=request.getParameter("year")%>"> 
go_excel<img src="/images/popup/dm/butt_excel.gif" width="82" height="18" name="save" border="0"></a> 
====> CuTaPopupSuExcelFrm.jsp ȣ�� 
===============================================================================================================

ex) 1. ����� List��ȸ 
http://156.147.135.156:8082/servlet/hicrm.cust.targetmg.CuTmBasicServlet?go=detailist&nPage=1&campaign_id=354
&channel_flag=H&branch_code=A02 
====>/dm/CuDmDetailListFrm.jsp ȣ��(\cust\dm\CuDmBasicServlet.java) --> viewDetailist(req, res); 

2. ��ü DM���� image Ŭ�� 
http://156.147.135.156:8082/servlet/hicrm.cust.dm.CuDmBasicServlet?go=dmpopupall&display=cutm&printpop=printpop
&Flag=All&display=cutm&campaign_id=354&channel_flag=H&branch_code=A02&nPage=1 
====> /dm/CuDmPopupDmAllFrm.jspȣ��(\cust\dm\CuDmBasicServlet.java) --> dmPopupAll(req, res, Flag); 

3. Excel Down image Ŭ�� 
<a href="/servlet/hicrm.cust.dm.CuDmBasicServlet?go=dmpopupall&Flag=excel&campaign_id=<%= campaign_id %>
&channel_flag=<%= channel_flag %>&branch_code=<%= branch_code %>"> 
=================================================================================================================

- HI_EOS ����
 ex) 1. Q&A ����Ʈ 
http://156.147.149.9:8181/eos/main/qnaList 
==> /eos/main/qnaList?actType=list&i_currentPage= ȣ��(\hiplaza\cmd\board\QnaCmd.java) --> execute(res, res); 

2. �����ۼ� image Ŭ�� 
http://156.147.149.9:8181/eos/main/qnaWrite?actType=insert&write_flag= 
==> /www/board/qnawrite.jsp ȣ�� 

2. ���� image Ŭ�� 
/eos/main/qnaList 
==>$/www/board/qnalist.jsp ȣ�� 
===============================================================================================================

 ex) 1. �Խ��� ����Ʈ 
http://156.147.149.9:8181/eos/main/qnaList 
==> /eos/main/qnaList?actType=list&i_currentPage= ȣ��(\hiplaza\cmd\board\QnaCmd.java) --> execute(res, res); 

2. �����ۼ� image Ŭ�� 
http://156.147.149.9:8181/eos/main/qnaWrite?actType=insert&write_flag= 
==> /www/board/qnawrite.jsp ȣ�� 

2. ���� image Ŭ�� 
/eos/main/qnaList 
==> $/www/board/qnalist.jsp ȣ�� 
===============================================================================================================

������������������� 2003.07.30(��) �۾� �������������������
---> 07:00 ~ 22:00 

- HI_EOS ����
�Խ��� Tabel ===> l_webnotice 
Q&A Tabel ===> l_webqa 
===============================================================================================================

- HI_CRM ����
- JSP  printJspPage() �Լ� ���� 
printJspPage(req, res, "/hicrm/cust/tradarea/CuTaPopupSuExcelFrm.jsp"); ���� 
\common\HicrmServlet.java���� ���� 
=================================================================================================================

������������������� 2003.07.31(��) �۾� �������������������
---> 07:00 ~ 21:30 

- PDA �м�
- ��ȭ����(��ȭ����� ����): i-kit(�����) 
- ������(���������� ����): IP ���� 
(��)��Ʈ����(�� 3281-1777)���� IP ���� ���� ����� �� 
=================================================================================================================

- ����Ŭ ODBC���� ���� ����Ÿ ���� 
1. ����Ŭ���� TAMAora��� ����Ÿ���̽� ���� 
2. MS-SQL���� tb_test��� ���̺� ����Ŭ TAMAora�� Export 
3. ����Ŭ���� Table������ ���� 
4. Select * from tb_test��� �ϸ� ���̺��� ���ٰ� ���� 

- �ذ�å 
1. MS-SQL���� ó������ ���̺���� �빮�ڷ� ǥ��(TB_TEST)  
1. select * from "tb_test" �̷������� ������ ���̺���� �ҹ��ڷ� ����� ��� �� 

- ���� 
����Ŭ�� ���������� ������Ʈ���� �빮�ڷ� ����  
ODBC�� ���� ms-sql ���̺� ����� �״�� ������ ���ٺ��� ���̺�� ������ �ҹ��ڷ� ����� ���� 
=================================================================================================================

c.f) drop table "DB_Calendar"  
c.f) SELECT * FROM DB_CALENDAR 

DB link�� �ɼ� ����. 
MS-SQL�������� ���̷�Ʈ�� ����Ŭ�� ���� �����ϴ�. 
=================================================================================================================

- TAMAora DB( system / manager)
( tama / tama339 ) 
=================================================================================================================

- Oracle SQL PLUS���� �۾� 
-- TABLESPACE ���� ����[tama_data] 
SQL> CREATE TABLESPACE tama_data 
DATAFILE 'C:\oracle\OHome\tama_data.dbs' SIZE 6M 
DEFAULT STORAGE( INITIAL 50K 
NEXT 50K 
MINEXTENTS 10 
MAXEXTENTS 121 
PCTINCREASE 50); 

-- TABLESPACE ���� ����[temporary_data] 
SQL> CREATE TABLESPACE temporary_data 
DATAFILE 'C:\oracle\OHome\temporary_data.dbs' SIZE 6M 
DEFAULT STORAGE( INITIAL 50K 
NEXT 50K 
MINEXTENTS 10 
MAXEXTENTS 121 
PCTINCREASE 50); 
  
-- ����� table ���� ����[temporary_data] 
SQL> CREATE USER tama 
       IDENTIFIED BY tama339 
       DEFAULT    TABLESPACE tama_data 
       TEMPORARY  TABLESPACE temporary_data 
       QUOTA 5M   ON tama_data 
       QUOTA 3M   ON temporary_data; 

-- tama ����ڸ� DBA ���� �ֱ� 
GRANT CONNECT, DBA TO tama; 
CONNECT tama/tama339 
=================================================================================================================

-- �ҿ����� ����� ���� 
CREATE USER incomplete 
       IDENTIFIED BY incomplete; 

-- ������ ����ڿ��� CONNECT ����Ŭ ���� �ο� 
GRANT CONNECT TO incomplete; 

-- ������ ����ڷ� ����Ŭ �����ͺ��̽� ���� 
CONNECT incomplete/incomplete; 

-- ������ ����ڷ� ���� 
CONNECT system/manager 

ALTER USER incomplete 
      IDENTIFIED BY complete 
      DEFAULT TABLESPACE user_data 
      QUOTA 5M ON user_data; 
=================================================================================================================

- ��¥ Ÿ�� ����
- �Ϲ� string������ date������ ��ȯ 
to_date(a.FROM_DATE, 'yyyy-mm-dd') 
c.f) ������ ��¥ Ÿ���� ����(yyyy-mm-dd)�ε� to_date()�Լ��� ���� ������ ������ 
===============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������