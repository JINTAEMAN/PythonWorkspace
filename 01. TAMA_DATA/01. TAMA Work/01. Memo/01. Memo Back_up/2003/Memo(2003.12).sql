

�����������������������������������������������������������
+---------------------------------------------// Memo(2003.12) //----------------------------------------------------------+
�����������������������������������������������������������


==============================================================================================================
---> 6:00 ~ 19:00 ==> ���� 

- B2C �̺�Ʈ
- 5ȸ�� ====>  �������� 370�� ����(���� 357��, ���� 13) 
===============================================================================================================

- ��ȹ �̺�Ʈ  
- ������ �븶�� �İݼ��� 
==============================================================================================================

������������������� 2003.12.02(ȭ) �۾� �������������������
---> 8:00 ~ 19:00 ==> ���� 

- B2C �м�
- Websphere ����
eosEAR.ear eosWAR.war 
http://localhost:8181  
==============================================================================================================

������������������� 2003.12.03(��) �۾� ������������������� 
---> 8:00 ~ 19:00 ==> ���� 

- B2C �̺�Ʈ
��ȹ �̺�Ʈ 
- �����ǰ���� ��Ư���� - �ʸ����� 
==============================================================================================================

������������������� 2003.12.04(��) �۾� ������������������� 
---> 7:30 ~ 19:00 ==> ���� 

- B2C ����
- �����ȣ(��, ��, �� ����Ÿ ����)  
SELECT a.id, b.first_name, b.login, b.registration_date, a.home_zip,  
	a.home_town, a.home_district, a.home_street, a.home_addr 
FROM edps_user a, dps_user b 
WHERE home_zip IS NOT NULL 
	-- AND  b.first_name ='������' 
	-- AND b.login='tamario' 
	AND home_town IS NULL 
	AND a.id = b.id 
ORDER BY registration_date DESC 
------------------------------------------------------------------------------------------------------------------------ 

SELECT branch_zip, func_get_addr('T',branch_zip,town), func_get_addr('D',branch_zip,district),func_get_addr('S',branch_zip,street)  
FROM h_branch  
WHERE branch_zip='151811'    --//152090  137779  157884 137071 121836   122030   151811  121801  156030  133800  402020  135120  683807  134771 
ORDER BY town, district, street   --// 151811: ���Ǳ� ��õ��    132030: ������ �ֹ���  
------------------------------------------------------------------------------------------------------------------------ 

SELECT a.home_zip, a.home_town, a.home_district, a.home_street, a.home_addr 
FROM edps_user a 
WHERE a.id ='2053081' 
------------------------------------------------------------------------------------------------------------------------ 

SELECT * 
FROM  dps_user b 
WHERE b.id ='2053081'  
==============================================================================================================

SELECT a.home_zip, a.home_town, a.home_district, a.home_street, a.home_addr 
FROM edps_user a 
WHERE a.id ='2063293' // 206329 
------------------------------------------------------------------------------------------------------------------------ 

SELECT * 
FROM  edps_user 
WHERE id ='2063293'  

DELETE  FROM edps_user 
WHERE id ='2063293'  
------------------------------------------------------------------------------------------------------------------------ 

SELECT * 
FROM  dps_user 
WHERE id ='2063293'  

DELETE  FROM dps_user 
WHERE id ='2063293'  
==============================================================================================================

������������������� 2003.12.05(��) �۾� ������������������� 
---> 7:30 ~ 19:00 ==> ���� 

- B2C ����
- �������� �����ǰ�̺�Ʈ 
http://156.147.149.9/index7.html 
------------------------------------------------------------------------------------------------------------------------ 

- �ָ����� 
------------------------------------------------------------------------------------------------------------------------ 

- atg dynamoȸ�� ����(id/pwd) 
admin/admin   
------------------------------------------------------------------------------------------------------------------------ 

- [replace �Լ�] 
JSP�� String Ŭ������ �ִ� replace�޽��� char 1���ۿ� ġȯ�� �� �˴ϴ�.  
�׷��� �������ڸ� ġȯ���ֽ÷��� �޽�带 ���������ϼž��� 

- /joint/usrJointList.jsp���� 
<%!  
    public static String replace(String line, String oldString, String newString)  
    {  
        for(int index = 0; (index = line.indexOf(oldString, index)) >= 0; index += newString.length())  
              line = line.substring(0, index) + newString + line.substring(index + oldString.length());  
        return line;  
    }  
%> 
<%   
      out.println("<br>[TAMA] usrJointList.jsp:: [jle.getModelCode()]"+ jle.getModelCode());   
      String ModelCode  = replace(jle.getModelCode(), ".KMS", "");  
%> 
===============================================================================================================

<%  
//Ȱ�뿹��  
String content ="abcddefefghijklmnsagde";  
out.println(content+"<br>");  

out.println(replace(content,"def","<font color=red>def</font>"));  
//content ���� def�� ���ڰ� ���������� ��  
%>  
Ȱ���� 
�ٲ� ����=replace( ��������, �ٲ� ���ڿ�(Ȥ ����) , �ٲ��ڿ�(Ȥ ����));   
===============================================================================================================

- �α��ν� -> �α���Ȯ�εɶ� �˷��޼��� �ѷ��ְ� Ȯ�ι�ư ������ Ȩ������ �������� ���� 
ȸ�����Խ� -> ����Ȯ�������������κп��� �˷��޼��� �ѷ��ְ� Ȯ�ι�ư ������ �׳� �״�� ���̱� 
����Ȯ�� �������������� ��ȹ�� ��� �־��ֽð��...  
==============================================================================================================

������������������� 2003.12.06(��) �۾� ������������������� 
---> 7:00 ~ 13:00 ==> ���� 

- B2C ����
- �������� �����ǰ�̺�Ʈ ���� 
==============================================================================================================

������������������� 2003.12.08(��) �۾� ������������������� 
---> 7:20 ~ 19:00 �� 

- B2C ����
- ��ǰ �ڵ�� ���� 
��ǰ �ڵ���� �����ϴ� jsp ���� ��ġ ã�� 
------------------------------------------------------------------------------------------------------------------------ 

- �˶��� 
- ��������  
------------------------------------------------------------------------------------------------------------------------ 

--// �������� ȸ�� ���� @@@@@@@@@@@ 
SELECT joint_round_id, start_date, start_time, end_date, end_time, joint_name,  
NVL(joint_detail,' ') joint_detail, status_flag 
FROM joint_round 
WHERE (start_date  start_time) <= TO_CHAR(SYSDATE,'yyyymmddhh24miss') 
AND (end_date  end_time) >= TO_CHAR(SYSDATE,'yyyymmddhh24miss') 
AND scr_display_yn = 'Y' 
------------------------------------------------------------------------------------------------------------------------ 

--// �������� ��ǰ���� @@@@@@@@@@@ 
SELECT  d.model_code,  
d.joint_market_amt currentprice, NVL(d.applicant_cnt,0) applicant_cnt,  
d.joint_amt, d.joint_to_cnt,NVL(f.maker_name,'-') maker_name, REPLACE(NVL(pet_nm,'-'),'<br>','') pet_nm,  
NVL(img_name_sm,'noImg_st.gif') img_name_sm, NVL(img_name_md,'noImg_st.gif') img_name_md, 
NVL(img_name_st,'noImg_st.gif') img_name_st, NVL(joint_rec_prd_yn,'N') joint_rec_prd_yn  
FROM model_if c, joint d, maker f  
WHERE d.joint_round_id  = '17'  
AND (d.status_flag IS NULL OR d.status_flag = '1')  
AND d.model_code = c.model_code  
AND c.maker_code = f.maker_code(+) 
ORDER BY joint_rec_prd_yn DESC, model_code  
------------------------------------------------------------------------------------------------------------------------ 

SELECT * FROM joint_round WHERE joint_round_id='17' 
DELETE FROM joint_round  WHERE joint_round_id='17' 
-------------------------------------------------------- 

SELECT * FROM joint WHERE joint_round_id='17' 
DELETE FROM joint WHERE joint_round_id='17' 
==============================================================================================================

������������������� 2003.12.09(ȭ) �۾� ������������������� 
---> 7:30 ~ 19:00 ==> ���� 

- B2C ����
integer Ÿ�� ����  
int RespTime = 1215; // 1��° �̹��� �ð�  
// int =  Integer.parseInt(int + string) (1215 + "10" = 121510) 
int RespTime_10 = Integer.parseInt(RespTime + "10");  
// int = int + int(1215 + 10 = 1225) 
int RespTime_10 = RespTime+10; 
-------------------------------------------------------------------------------- 

- [��â ����]  
- post ������� ��â ����(�Ķ���͸� code, service�� ������ �� ��)  @@@@@@@@@@@@@@  
/MyPage.jsp����  
<script language="JavaScript"> 
<!-- 
function CForm() 
{ 
var f = document.payForm; 
  
noticeWindow  =  window.open('','popup','toolbar=yes,location=yes,directories=yes,status=yes,menubar=yes
,scrollbars=yes,resizable=yes,width=950,height=700,top=10,left=20'); 
noticeWindow.opener = self; 

f.target = 'popup'; 
f.action = '/shop/www/index_dmc.jsp';  // ��â ���� 
f.submit();  
} 
//--> 
</script> 

<form name="payForm" method="post"  target="pop" OnSubmit="JavaScript:CForm();"> 
  <table width="387" border="0" cellpadding="0" cellspacing="0"> 
    <tr>  
      <td height="25" colspan="2"><img src="/img/mypage/p_main_m11.gif" width="387" height="96"></td> 
    </tr> 
    <tr>  
      <td width="321"><img src="/img/mypage/p_main_m11_1.gif" width="321" height="32"></td> 
      <td width="66" valign="baseline"><!---  form �� �ѱ��(�̹��� Ŭ��)--> 
      <input type=image src="/img/mypage/p_main_m_go.gif" width="66" height="29" border="0" align="absmiddle" 
      name="Image324190" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image324190','
      ','/img/mypage/p_main_m_go_on.gif',1)"></td> 
    </tr> 
  </table> 
<input type=hidden name="code" value="dmc"> 
<input type=hidden name="service" value="SVC_USE"> 
</form> 
------------------------------------------------------------------------------------------------------------------------ 
 
-  /index_dmc.jsp����(frame �����) 
<html>  
	  <head> 
	    <title>LG ����������</title> 
	    <link rel="stylesheet" href="/css/css" type="text/css"> 
	  </head> 
	  <frameset frameborder=no> 
	    <frame src="/shop/www/order/dmc_point2.jsp?code=<%=code%>&service=<%=service%>" name="body"> 
	  </frameset> 
</html>  
===================================================================================================================

- �Ϲ����� ��â ����(�Ķ���͸� �� ������ �� ��)  @@@@@@@@@@@@@@   
/MyPage.jsp���� 
<script language="JavaScript"> 
<!-- 
function browseOpen3( code,service) { 
noticeWindow  =  window.open('/shop/www/index_dmc.html','popup','toolbar=yes,location=yes,directories=yes
,status=yes,menubar=yes,scrollbars=yes,resizable=yes,width=950,height=700,top=10,left=20'); 
noticeWindow.opener = self; 
} 
//--> 
</script> 

<table width="387" border="0" cellpadding="0" cellspacing="0"> 
    <tr><td width="1" height="6">&nbsp;</td> 
<td width="161" height="22" class="contents2"><a href="javascript:browseOpen3('dmc','default');">������ ����� ī��</a></td> 
    </tr> 
 </table> 
------------------------------------------------------------------------------------------------------------------------ 
 
 - /index_dmc.html����(frame �����)  
<html>  
  <head> 
    <title>LG ����������</title> 
    <link rel="stylesheet" href="/css/css" type="text/css"> 
  </head> 
  <frameset frameborder=no> 
    <frame src="/shop/www/order/dmc_point2.jsp" name="body"> 
  </frameset> 
</html>  
===================================================================================================================

- ��ǰ �ڵ�� ����
SELECT * FROM model_if c WHERE c.model_code='CJ9' 
UPDATE model_if SET model_code='CJ9.KMS' WHERE model_code='CJ9' 

SELECT * FROM joint d WHERE d.model_code='CJ9' 
UPDATE joint SET model_code='CJ9.KMS' WHERE model_code='CJ9' 
------------------------------------------------------------------------------------------------------------------------ 

<%!  
public static String replace(String line, String oldString, String newString)  
    {  
        for(int index = 0; (index = line.indexOf(oldString, index)) >= 0; index += newString.length())  
              line = line.substring(0, index) + newString + line.substring(index + oldString.length());  
        return line;  
    }  
%> 
<%   
out.println("<br>[TAMA] usrJointList.jsp:: [jle.getModelCode()]"+ jle.getModelCode());   
String ModelCode  = replace(jle.getModelCode(), ".KMS", ""); 
//out.println("<br>[TAMA] usrJointList.jsp:: [ModelCode]"+ ModelCode); 
%> 
==============================================================================================================

������������������� 2003.12.10(��) �۾� ������������������� 
---> 7:40 ~ 19:00 ==> ���� 

- B2C ����
- �α�/�Ż�ǰ ��ȸ(��ǰ�ڵ�� ������ ����) 
/common/mainPopularGoods.jsp ���� 
------------------------------------------------------------------------------------------------------------------------ 

--// �α�/�Ż�ǰ  @@@@@@@@@@@@@@@ 
SELECT a.store_seq, a.model_code, REPLACE(a.model_name ,'<br>' , CHR(13)) model_name, 
 DECODE( NVL(c.period_price, -1),-1, DECODE(a.price_flag, 'A', a.admin_price, 'S', a.store_price ), c.period_price)  current_price, 
 DECODE( NVL(c.period_price, -1),-1, a.price_flag, 'P')  price_flag, a.store_price, a.admin_price, b.img_name_st, a.detail, 
 NVL(c.period_price, 0) period_price 
FROM store_model a,  store_model_price c ,model_if b 
WHERE a.store_seq = c.store_seq(+) 
 AND a.model_code = c.model_code(+) 
 AND c.period_from_date(+) <= TO_CHAR(SYSDATE,'yyyymmdd') 
 AND c.period_to_date(+)  >= TO_CHAR(SYSDATE,'yyyymmdd') 
 AND c.use_yn(+) = 'Y' 
 AND a.model_code = 'CJ9.KMS' 
 AND a.store_seq = (SELECT store_seq FROM store WHERE store_flag = 'H') 
 AND a.model_code = b.model_code(+) 
------------------------------------------------------------------------------------------------------------------------ 

SELECT * FROM store_model WHERE model_code='CJ9' AND store_seq ='S100' 
UPDATE store_model SET model_code='CJ9.KMS' WHERE model_code='CJ9' AND store_seq ='S100' 
------------------------------------------------------------------------------------------------------------------------ 

SELECT * FROM model_if WHERE  model_code='CJ9.KMS' 
UPDATE model_if SET model_code='CJ9.KMS' WHERE model_code='CJ9'
==============================================================================================================

������������������� 2003.12.11(��) �۾� ������������������� 
---> 8:10 ~ 19:00 ==> ���� 

- B2C ����
- ��������(��õ���� ��ǰ) image ��ġ ����(1, 2�� ��ǰ��ϵ� image �������� �ʰ� ����) 
- /joint/usrJointList.jsp ���� 
/img/jnt/p_joint_bgimg.gif   ===> ����̹��� 
768*270  --> 768*329 
==============================================================================================================

������������������� 2003.12.12(��) �۾� ������������������� 
---> 7:35 ~ 19:00 ==> ���� 

- B2C ����
- ��ȹ �̺�Ʈ 
1. IH�з¹�� ������ ����ġ 
2. �ܿ���� ���а��θ� ���� CDP/�������� ������ 
- �ָ����� 
- TO_NUMBER, TO_CHAR, SUBSTR �Լ� �м�(Oracle8i) 
------------------------------------------------------------------------------------------------------------------------ 

-- ��ȭ�� ����Ʈ ���� ȸ������(���� ����Ÿ)==> HIBCDB  @@@@@@@@@@@@ 
SELECT c.event_user_lst_id AS NO, a.login AS ȸ��ID, a.first_name AS �̸�, 
     CASE  WHEN SUBSTR(b.ssn,7,1)='1'    THEN '��'    ELSE  '��' END   ��,    --// ����    
	   TO_NUMBER( TO_CHAR(SYSDATE,'YYYY')) +1 - TO_NUMBER('19' '' SUBSTR(b.ssn,1,2))  AS ����, 
	   b.ssn  AS �ֹι�ȣ,  ( c.apply_date ' ' apply_time) AS event_�����, TO_CHAR( a.registration_date,'YYYY_MM.DD HH24:MI') AS ������, 
	   ( trim(b.home_town) ' '  trim(b.home_district) ' '  trim(b.home_street) ' '  trim(b.home_addr)) AS �ּ�, 
	   (b.home_ddd '-' b.home_telno) AS ��ȭ, mobile_telno AS �ڵ�����ȣ, 
	   CASE  WHEN  TO_CHAR( a.registration_date,'YYYYMMDDHH24MISS') >= '200312080100'  --// �������� 2003�� 12�� 08�� ���� �̸�(�ű�) 
	THEN '�ű�'   
	ELSE  '����'  END  �ű԰��Կ��� 
FROM DPS_USER a, EDPS_USER b, event_user_lst c 
WHERE a.ID = b.ID 
	AND c.user_id = a.login 
	AND c.event_id = '1000000133' 
ORDER BY c.event_user_lst_id DESC 
==============================================================================================================

- [eclipse] 
 rt.jar 
C:\WebSphere\AppServer\installedApps\nEosEAR.ear\nEosWAR.war\WEB-INF\lib  ==> ���� �� �� 
C:\WebSphere\AppServer\java\jre\lib  ====> ����(����) 

servlet.jar 
C:\WebSphere\AppServer\java\jre\lib\ext  ====> ���� �� �� 
C:\jdk1.3.1\jre\lib\ext ====> �̹� ���� �ϹǷ� �ٽ� ���� �� �ص� �� 

activation.jar 
C:\WebSphere\AppServer\java\jre\lib\ext   
==============================================================================================================

������������������� 2003.12.13(��) �۾� ������������������� 
---> 13:10 ~ 15:00 ==> ���� 

- PDA �۾�
tomcat�� �ٽ� ��� ������ Ȯ��(13:39:04 ���� Ȯ��) 
se85:/array1/tas007> ps -ef  grep tomcat 
tas007  4726     1  0 13:39:04 pts/6    0:20 /usr/bin/../bin/../java/bin/../bin/sparc/native_threads/java -Dtomcat.home=/usr 
/classes/himobile.properties ����( SE1BDB DB������ �ȵ�) 
------------------------------------------------------------------------------------------------------------- 

drivers=oracle.jdbc.driver.OracleDriver 
mobile.url=jdbc:oracle:thin:@156.147.135.65:1521:SE1BDB 
mobile.user=leader 
mobile.password=solomon 
==============================================================================================================

se85:/usr/local/tomcat/webapps/mobile/Debug> tail -45 20031213 
���� �α� ���� 
se85:/array1/tas007/mobile/Wire_V52_SSL> tail -45 wirelog.txt 
���� wire �α� ���� 
Tomcat�� �ٽ� ��쵵 �ȵ�(Local������ �� ��) 
==============================================================================================================

������������������� 2003.12.15(��) �۾� ������������������� 
---> 07:30 ~ 19:00 ==> ���� 

- CRM ����
http://156.147.135.156:8082/ .27 
�������/ HC����   
HC����(redirect.jsp?go=F2)  
------------------------------------------------------------------------------------------------------------- 

<frameset name="hicrmframe" rows="200,*" frameborder="0" border="0" framespacing="0">  
  <frame name="condition"    noresize  src="/servlet/hicrm.cust.happycall.CuHcBasicServlet?go=movejsp" scrolling="no" marginwidth="0" marginheight="0" > 
  <frame name="result"  noresize  src="/servlet/hicrm.cust.happycall.CuHcBasicServlet?go=explain&nPage=1" scrolling="auto" marginwidth="0" marginheight="0"> 
</frameset> 
====================================================================================================================

printJspPage(req, res, "/hicrm/cust/happycall/CuHcTopFrm.jsp"); 
-> HC���� ��ȸŬ��(CuCrSearchFrm.jsp) 
<script language="javascript">  
	function send() { 
		document.f.go.value="list"; 
		document.f.target = "result"; 
		document.f.action = "/servlet/hicrm.cust.happycall.CuHcBasicServlet"; 
		document.f.method="post"; 
		document.f.submit(); 
	} 
</script> 

/classe/hicrm/cust/happycall/dbmgr/CuHcBasicWrap.java ���� 
------------------------------------------------------------------------------------------------------------- 

--// HC���� ��ȸ 
SELECT  branch_code,NVL(emp_name,'&nbsp;') emp_name,seq , cust_no ,sale_date,cust_name,home_ddd, home_tel_no, 
SUBSTR(zip_code,1,3)'-'SUBSTR(zip_code,4,3) zip_code, town, district, addr, first_fg AS �ܰ�_1, sencond_fg AS �ܰ�_2 
FROM 
(SELECT d.branch_code,e.emp_name,ROWNUM seq , a.sale_date,a.cust_no , cust_name, home_ddd,home_tel_no, 
d.zip_code, c.town, c.district, b.addr, a.first_fg, a.sencond_fg 
 FROM 
     (SELECT a.sale_date, a.cust_no, a.branch_code, a.first_fg, a.sencond_fg 
FROM cust_hc_target a 
WHERE a.sale_date BETWEEN TO_CHAR(TO_DATE(TO_DATE('20031212','yyyymmdd'))-3,'yyyymmdd') 
AND TO_CHAR(TO_DATE(TO_DATE('20031212','yyyymmdd'))-3,'yyyymmdd') 
AND a.branch_code = 'A02' 
GROUP BY  a.sale_date, a.cust_no, a.branch_code, a.first_fg, a.sencond_fg)a ,cust_master b, ed_post c, branch d, employee e 
WHERE a.cust_no = b.cust_no 
AND b.emp_code = e.emp_code(+) 
AND b.zip_code = c.zip_cd 
AND d.branch_code=a.branch_code 
     ) 
WHERE seq >= 1 
AND seq <= 10 
==============================================================================================================

HC���� ����ȸ(CuHcListFrm.jsp)(redirect.jsp?go=F21)  
------------------------------------------------------------------------------------------------------------- 

<script language="javascript"> 
	location.href="/servlet/hicrm.cust.happycall.CuHcBasicServlet?go=read&cust_no=<%= cust_no %>&nPage=<%= nPage %> 
	&sale_date=<%= sale_date %>&branch_code=<%= branch_code %>&branch_name=<%= branch_name %> 
	&emp_code=<%=emp_code %>&emp_name=<%=emp_name %>&call_step=<%= call_step %> 
	&search_date1=<%=search_date1%>&search_date2=<%=search_date2%>"  
</script> 
==============================================================================================================
  
--// �� �⺻ ���� ��ȸ 
SELECT c.cust_no, c.cust_name, SUBSTR(c.person_no,0,6) AS person_no1, SUBSTR(c.person_no,8,13) AS person_no2, 
 DECODE(c.from_dm,01,'����',02,'ȸ��') from_dm, DECODE(c.from_dm,01,c.home_ddd,02,c.ocu_ddd)  AS tel_ddd, 
 SUBSTR(DECODE(c.from_dm,01,c.home_tel_no,02,c.ocu_tel_no),0,INSTR(DECODE(c.from_dm,01,c.home_tel_no,02,c.ocu_tel_no),'-')-1) AS tel_no1, 
 SUBSTR(DECODE(c.from_dm,01,c.home_tel_no,02,c.ocu_tel_no),INSTR(DECODE(c.from_dm,01,c.home_tel_no,02,c.ocu_tel_no),'-')+1) AS tel_no2, 
 SUBSTR(p.zip_cd,0,3) AS zip_code1, SUBSTR(p.zip_cd,4,6) AS zip_code2,  p.town' 'p.district' 'p.street AS addr1, 
 DECODE(c.from_dm,01,c.addr,02,c.ocu_addr) AS addr2, SUBSTR(c.hand_no,0,INSTR(c.hand_no,'-')-1) AS hand_no1, 
 SUBSTR(c.hand_no,INSTR(c.hand_no,'-')+1,INSTR(c.hand_no,'-',2)-1) AS hand_no2, 
 SUBSTR(c.hand_no,INSTR(c.hand_no,'-',INSTR(c.hand_no,'-'),2)+1) AS hand_no3, 
 NVL(DECODE(c.birth_gb,'01','����','02','���'),' ') birth_gb, c.birthday, c.marryday, DECODE(SUBSTR(c.birthday,0,1),' ',' ', 
 (TO_CHAR(SYSDATE,'yyyy')-SUBSTR(c.birthday,0,4)+1)) AS age, 
 c.children_cout, c.oldest_age,c. family_top_job,c. gender, 
 (SELECT memo1 
 FROM cust_comm_code 
 WHERE major_code = 'house_having_tp' 
AND minor_code=c.house_type) house_type, c.house_size, 
 DECODE(c.agree_fg,'Y','������','N','���Ǿ���') agree_fg,DECODE(c.reg_mail,'Y','���','N','�̻��') reg_mail, c.e_mail, 
 NVL((SELECT emp_name FROM employee WHERE emp_code=c.emp_code),' ') emp_name,emp_code, 
 DECODE(c.cust_gb,01,'����',02,'��ü') cust_gb, c.insert_date AS insert_date1,  NVL(c.etc,' ') etc, 
 NVL((SELECT memo1  FROM cust_comm_code WHERE c.hobby = minor_code AND major_code = 'HOB'),'����') hobby, 
 NVL((SELECT memo1 FROM cust_comm_code WHERE c.hobby = minor_code AND major_code = 'CSP'),'����') car_spec, 
 NVL((SELECT memo1 FROM cust_comm_code WHERE c.hobby = minor_code AND major_code = 'JOB'),'����') job, 
 NVL((SELECT memo1 FROM cust_comm_code WHERE c.hobby = minor_code AND major_code = 'DMR'),'����') dm_result, 
 NVL((SELECT memo1 FROM cust_comm_code WHERE c.grade = minor_code AND major_code = 'GRD'),' ') grade 
FROM cust_master c, ed_post p 
WHERE c.zip_code = p.zip_cd 
AND c.cust_no =2835484 
==============================================================================================================

--// ��ǰ ���� ��ȸ 
SELECT bu.buy_date, br.branch_name,mk.maker_name,je.jepm_name, mo.model_code, bu.vol,bu.sale_price,  
      NVL((SELECT memo1   
 FROM cust_comm_code  
 WHERE bu.buy_reason_type = minor_code  
   AND major_code = 'buy_reason_tp'),'����') buy_reason_type 
FROM cust_buy bu, model mo, branch br, maker mk,jepm je      
WHERE bu.cust_no='2835484'  
     AND bu.branch_code = br.branch_code 
     AND bu.model_code = mo.model_code 
     AND mo.maker_code = mk.maker_code 
     AND mo.grand_code = je.grand_code 
     AND mo.jepm_code = je.jepm_code 
==============================================================================================================

- ���ڸ� �޸��� ���� ���(����) @@@@@@@@@@@@@@@@@@@@  
<%@page import="java.text.*" %>  
jle.getJointAmt() = "32000";   // 32000�� String -> Double�� ����ȯ 
double val2 = Double.parseDouble(jle.getJointAmt()); 
String result = NumberFormat.getInstance().format(val2); 
out.println("<br>[TAMA] 200312_cdp.jsp:: [result]"+result);  // ���� �׽�Ʈ(��) ===> 3�ڸ� ���� �޸� 
------------------------------------------------------------------------------------------------------------- 
  
DecimalFormat df = new DecimalFormat("000"); 
int val = 6; // ���� 
out.println("<br>[TAMA] 200312_cdp.jsp:: [df.format(val)]"+df.format(val)); // ���� 3�ڸ� ǥ�� 
------------------------------------------------------------------------------------------------------------- 
  
DecimalFormat df2 = new DecimalFormat("#,##0.00"); 
double val2 = 1234.564d; // �Ǽ� 
out.println("<br>[TAMA] 200312_cdp.jsp:: [df.format(val2)]"+df2.format(val2)); //  �Ǽ� 2, 3�ڸ� ǥ�� 
==============================================================================================================

String buy_date =  cuhcbasic.buy_date;  // ����� ������ 
buy_date = buy_date.substring(0,4)+"/"+buy_date.substring(4,6)+"/"+buy_date.substring(6,8); 
==============================================================================================================

- �˶���  
==============================================================================================================

������������������� 2003.12.16(ȭ) �۾� ������������������� 
---> 07:30 ~ 19:00 ==> ���� 

- CRM ����
// ���ó�¥(systemdate)  
java.text.SimpleDateFormat formatter  = new java.text.SimpleDateFormat("yyMMdd");   // �������� 
String today= formatter.format(new java.util.Date()); 
==============================================================================================================
 
- nEos ���� �߻�
[03.12.16 09:49:51:377 GMT+09:00] 5f872a48 OSEListenerDi X PLGN0021E: Servlet �� 
û ���μ��� ����: ���� ȣ��Ʈ/WebGroup�� ã�� �� �����ϴ�. : / �� �׷��� ���ǵ� 
�� ���� �ʽ��ϴ�. 
------------------------------------------------------------------------------------------------------------- 

[03.12.16 10:29:15:086 GMT+09:00] 54642ef2 ServletEngine X SRVE0146E: ������ �� 
������ ���߽��ϴ�. ���� ������ ������ ��Ʈ�� �̹� ��� ���� ���Դϴ�. �ٸ� ����  
���α׷��� �� ��Ʈ�� ��� ���� �ƴ��� Ȯ���ϰ� ������ �ٽ� �����Ͻʽÿ�. com.ibm 
.servlet.engine.TransportException: Failed to start transport http: java.net.Bin 
dException: Address in use: bind 
        at com.ibm.servlet.engine.http11.HttpTransport.startTransport(HttpTransp 
==================================================================================================================

������������������� 2003.12.17(��) �۾� ������������������� 
---> 07:50 ~ 19:00 ==> ���� 

- CRM ����
- ������� 7���� ���� �� ���� �Ⱓ ���� 
var year1 = document.f.deliv_date1.value.substring(0,4); //��  ex) 20031210 
var month1 = document.f.deliv_date1.value.substring(4,6); //�� 
var day1 = document.f.deliv_date1.value.substring(6,8); //��  
var year2 = document.f.deliv_date2.value.substring(0,4); //��   ex) 20031217 
var month2 = document.f.deliv_date2.value.substring(4,6); //�� 
var day2 = document.f.deliv_date2.value.substring(6,8); //�� 

var startday = new Date( year1, month1, day1); 
var enday = new Date( year2, month2, day2); 

var nc = (enday.getTime() - startday.getTime()) / (24*60*60*1000);  
//alert("[TAMA]:: [Math.ceil(nc)]"+ Math.ceil(nc));   // ���� �� 

if(Math.ceil(nc)>= 8) { 
   alert("������� �˻� �Ⱓ�� 7���� ���� �� �����ϴ�."); 
   document.f.deliv_date2.focus(); 
   return; 
} 
==================================================================================================================

-- Update����(�ʵ� ������Ʈ)  @@@@@@@@@@@@@@@ 
--// cust_buy ���̺��� deliv_date�ʵ带 buy_date�� �̿��Ͽ� ����  @@@@@@@@@@@@@@@  @!!!!!!!!! 
UPDATE cust_buy a 
SET a.deliv_date=(SELECT TO_CHAR(TO_DATE(TO_DATE(b.buy_date,'yyyymmdd'))+3,'yyyymmdd') FROM cust_buy b  
    WHERE  a.cust_no= b.cust_no 
   AND a.seq= b.seq) 
WHERE EXISTS (SELECT 'X' FROM cust_buy b WHERE  a.cust_no= b.cust_no 
           AND a.seq= b.seq); 
------------------------------------------------------------------------------------------------------------- 

--// cust_buy ���̺��� deliv_date�ʵ� ��ȸ  @@@@@@@@@@@@@@@ 
SELECT (SELECT b.buy_date FROM cust_buy b  
    WHERE  a.cust_no= b.cust_no 
   AND a.seq= b.seq) AS Hname2��_�ٲ� 
FROM cust_buy a 
WHERE EXISTS (SELECT 'X' FROM cust_buy b WHERE  a.cust_no= b.cust_no 
           AND a.seq= b.seq); 
==============================================================================================================

--// Tbl1 ���̺��� Hname �ʵ带 ����(���̺� 2���� Hname�� ������Ʈ ��)  @@@@@@@@@@@@@@@ 
UPDATE Tbl1 
SET Hname=(SELECT Hname2 FROM Tbl2 WHERE IDX=Tbl1.IDX) 
WHERE EXISTS (SELECT 'X' FROM Tbl2 WHERE Tbl2.IDX = Tbl1.IDX); 
------------------------------------------------------------------------------------------------------------- 

--// Tbl1 ���̺��� Hname �ʵ带 ��ȸ  @@@@@@@@@@@@@@@ 
SELECT (SELECT Hname2 FROM Tbl2 WHERE IDX=Tbl1.IDX) AS Hname2��_�ٲ� 
FROM Tbl1 
WHERE EXISTS (SELECT 'X' FROM Tbl2 WHERE Tbl2.IDX = Tbl1.IDX); 
==============================================================================================================

 --// Tbl1 ���̺��� Hname �ʵ带 ����(���̺� 1���� Hname�� ������Ʈ ��)  @@@@@@@@@@@@@@ 
UPDATE Tbl1 a 
SET Hname=(SELECT idx FROM Tbl1 b WHERE b.IDX= a.IDX) 
WHERE EXISTS  (SELECT 'X' FROM  Tbl1 b WHERE b.IDX = a.IDX); 
------------------------------------------------------------------------------------------------------------- 

SELECT (SELECT idx FROM Tbl1 b WHERE b.IDX=a.IDX) AS Hname2��_�ٲ� 
FROM Tbl1 a 
WHERE EXISTS (SELECT 'X' FROM  Tbl1 b WHERE b.IDX = a.IDX); 
==============================================================================================================

������������������� 2003.12.18(��) �۾� ������������������� 
---> 08:20 ~ 19:00 ==> ���� 

- B2C ����
- ������ �̹��� ����  
brand.swf / \main \theme \tree 
brand_02_tromm.swf \theme \tree 
brand_03_dios.swf \theme \tree 
brand_04_1124.swf \main \theme \tree 
------------------------------------------------------------------------------------------------------------- 
event_top.swf \evt \prd 
home_network.swf \prd \theme 
------------------------------------------------------------------------------------------------------------- 
navi_auc.swf \auc \jnt \prd 
navi_customer.swf \cus \prd 
navi_est.swf \ord 
navi_jnt.swf \jnt 
navi_login.swf \mem 
navi_main.swf \evt_main \main 
navi_mypage.swf \mypage 
------------------------------------------------------------------------------------------------------------- 

navi_sto_best.swf \store 
navi_sto_valu.swf \store 
navi_top_cart01.swf \ord 
navi_top_cart02.swf \ord 
navi_top_cart03.swf \ord 
navi_top_cart04.swf \ord 
navi_top_cart05.swf \ord 
------------------------------------------------------------------------------------------------------------- 

premessenger_navi.swf \prd 
search_navi.swf \prd 
------------------------------------------------------------------------------------------------------------- 
sub_01_prd.swf \prd 
sub_02_sound.swf \prd 
sub_03_computer.swf \prd 
sub_05_living.swf \prd 
sub_06_season.swf \prd 
sub_08_detail.swf \prd  
==============================================================================================================
 
������������������� 2003.12.19(��) �۾� ������������������� 
---> 08:20 ~ 19:00 ==> ���� 

- CRM ����
- �� ���� ���� ��ȸ 
- PDA ���
- Tomcat���� ��ġ, wire���� ��ġ  
==============================================================================================================

������������������� 2003.12.20(��) �۾� �������������������  
---> 08:00 ~ 13:00 ==> ���� 

- CRM ����
- �� ���� ���� ��ȸ 
==============================================================================================================

������������������� 2003.12.22(��) �۾� ������������������� 
---> 08:00 ~ 19:00 ==> ���� 

- PDA ���
- EVC++ �Ǽҽ� �м�  
EVC++ --> Tools --> Options 
==============================================================================================================

- Directories/include files ���� 
C:\Windows CE Tools\wce300\Pocket PC 2002\include 
C:\Windows CE Tools\wce300\Pocket PC 2002\mfc\Include 
C:\Windows CE Tools\wce300\Pocket PC 2002\atl\Include 

C:\Windows CE Tools\wce300\Pocket PC 2002\include ���� �ؿ� wire�� �����Ͽ� ��� 
/Binding.h /Connector.h /supp.h  /Wire.h 
------------------------------------------------------------------------------------------------------- 

- Directories/Library files ���� 
C:\Windows CE Tools\wce300\Pocket PC 2002\lib\arm 
C:\Windows CE Tools\wce300\Pocket PC 2002\mfc\Lib\ARM 
C:\Windows CE Tools\wce300\Pocket PC 2002\atl\Lib\ARM 

C:\Windows CE Tools\wce300\Pocket PC 2002\lib\arm ���� �ؿ� �����Ͽ� ��� 
/PrintDll.lib /wireclient.lib 
==============================================================================================================

- CRM ����
- �� ���� ���� ��ȸ 
http://156.147.135.156:8082/servlet/hicrm.cust.targetmg.CuTmTargetServlet?go=magijung 
------------------------------------------------------------------------------------------------------- 

 /********** �������� Pop_up *************/ 
function GijungPop() 
{  
   var window_left =(screen.width-307)/2; 
   var window_top = (screen.height-400)/2; 
   popup= window.open('about:blank', 'Popup','width=307,height=400,scrollbars=yes,status=no,top=' + window_top + ',left=' + window_left + ''); 
    
   document.frm.go.value="gijungpop"; 
   document.frm.action="/servlet/hicrm.cust.targetmg.CuTmTargetServlet"; 
   document.frm.method="post"; 
   document.frm.target="Popup"; 
   document.frm.submit(); 
} 

printJspPage(req, res, "/hicrm/cust/targetmg/CuTmGijungPopupFrm.jsp"); 

<tr> 
	<td bgcolor="#E3EBCC" width="80" class="crm_style">���ñ���</td> 
	<td colspan="5">  
	  <textarea name="gijung_name" cols="60"></textarea> 
	  &nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:GijungPop();"><img src="/image/targetmg/choice_button.gif" width="71" height="23" border="0"></a>  
	  <br> 
	</td> 
</tr> 
==============================================================================================================

������������������� 2003.12.23(ȭ) �۾� ������������������� 
---> 06:40 ~ 19:00 ==> ���� 

- CRM ����
- �� ���� ���� ��ȸ 
SELECT * FROM cust_hc_result 
WHERE cust_no='1851078'  AND call_step='1' AND branch_code ='B65'  
==============================================================================================================

������������������� 2003.12.24(��) �۾� ������������������� 
---> 06:50 ~ 19:00 ==> ���� 

- CRM ����
- �� ���� ���� ��ȸ 
// HC ��ȭ ���� ����(����) 
update cust_hc_result   
set memo = '',  update_date =  to_char(sysdate,'yyyymmdd') , update_emp =  '10326',  hc_date =  '2003122418',   
claim_desc =  '������(����)',  claim_fg =  '03',  claim_desc =  '������(����)',  claim_handle =  '',   
gijung_code =  '',  gijung_desc =  '',  call_flag =  'N'   
where sale_date = '20031209'  and branch_code = 'A02'   and cust_no = '2835484'  and call_step = '1'  
==============================================================================================================
 
������������������� 2003.12.26(��) �۾� ������������������� 
---> 06:40 ~ 19:00 ==> ���� 

- CRM ����
- �� ���� ���� ��ȸ 
��ü���ų��� ��ȸ Pop_up 
==============================================================================================================

������������������� 2003.12.29(��) �۾� ������������������� 
---> 07:40 ~ 19:00 ==> ���� 

- PDA ����
- ���� PDA ���� ����
F-3130CD YPZ(50130/2637613)
==============================================================================================================

������������������� 2003.12.30(ȭ) �۾� ������������������� 
---> 06:50 ~ 24:10 ���� 

- PDA ����
- ���� PDA ���� ���� 
--// Claim ó�� ��ȸ   @@@@@@@@@@@@@@@@@@   
SELECT  seq, hc_date, cust_name, home_tel_no, claim_fg, claim_desc, claim_handle   
FROM  
    ( SELECT  ROWNUM seq, a.hc_date, b.cust_name, b.home_tel_no, a.claim_fg, a.claim_desc, a.claim_handle     
 FROM cust_hc_result a, cust_master b, cust_hc_target c 
 WHERE a.cust_no = b.cust_no 
       AND a.hc_date BETWEEN TO_CHAR(TO_DATE(TO_DATE('20031224','yyyymmdd')),'yyyymmdd')   
          AND TO_CHAR(TO_DATE(TO_DATE('20031228','yyyymmdd')),'yyyymmdd') 
GROUP BY  a.hc_date, b.cust_name, b.home_tel_no, a.claim_fg, a.claim_desc, a.claim_handle 
) 
WHERE seq >= 1 
	AND seq <= 10 
==============================================================================================================

SELECT  branch_code, seq, hc_date, cust_name, home_tel_no, claim_fg, claim_desc, claim_handle   
FROM  
    ( SELECT  ROWNUM seq, a.branch_code, a.hc_date, b.cust_name, b.home_tel_no, a.claim_fg, a.claim_desc, a.claim_handle     
 FROM      
    ( SELECT a.sale_date, a.branch_code, a.cust_no, a.hc_date, a.claim_fg, a.claim_desc, a.claim_handle  
    FROM cust_hc_result a, cust_master b 
   WHERE a.cust_no = b.cust_no 
       AND a.branch_code = 'A02' 
   AND a.branch_code = b.branch_code  
       AND a.hc_date BETWEEN TO_CHAR(TO_DATE(TO_DATE('20031224','yyyymmdd')),'yyyymmdd')   
          AND TO_CHAR(TO_DATE(TO_DATE('20031228','yyyymmdd')),'yyyymmdd') 
  GROUP BY a.sale_date, a.branch_code, a.cust_no, a.hc_date, a.claim_fg, a.claim_desc, a.claim_handle) a, cust_master b, cust_hc_target c 
 WHERE a.cust_no = b.cust_no 
    -- AND a.hc_date BETWEEN TO_CHAR(TO_DATE(TO_DATE('20031224','yyyymmdd')),'yyyymmdd')   
      --AND TO_CHAR(TO_DATE(TO_DATE('20031228','yyyymmdd')),'yyyymmdd') 
   AND a.branch_code = c.branch_code 
   AND a.sale_date = c.sale_date 
) 
WHERE seq >= 1 
	AND seq <= 10 
==============================================================================================================
  
SELECT /*+ index (bu PK_CUST_BUY)*/ ROWNUM seq, bu.buy_date, bu.deliv_date, br.branch_name,  
DECODE( bu.buy_flag, 1,'�ڵ�ĳ��',02,'�������',03,'��Ź���') AS buy_flag,        
bu.buy_flag, mk.maker_name,je.jepm_name, mo.model_code, bu.vol, NVL(bu.out_vol,0) AS out_vol, bu.sale_price,        
NVL((SELECT memo1   
FROM cust_comm_code  
WHERE bu.buy_reason_type = minor_code  
AND major_code = 'buy_reason_tp'),'����') buy_reason_type       
FROM cust_buy bu, model mo, branch br, maker mk,jepm je       
WHERE bu.cust_no ='2835484'   
	AND seq >= 1 AND seq <=10  
--------------------------------------------------------------------------------------------------------- 

SELECT  branch_code,NVL(emp_name,'&nbsp;') AS �����,seq , cust_no ,sale_date,cust_name,home_ddd, home_tel_no, 
SUBSTR(zip_code,1,3)'-'SUBSTR(zip_code,4,3) zip_code, town, district, addr, first_fg AS �ܰ�_1, sencond_fg AS �ܰ�_2,  
third_fg AS �ܰ�_3, fourth_fg AS �ܰ�_4, fifth_fg AS �ܰ�_5 
FROM 
(SELECT d.branch_code,e.emp_name,ROWNUM seq , a.sale_date,a.cust_no , cust_name, home_ddd,home_tel_no, 
d.zip_code, c.town, c.district, b.addr, a.first_fg, a.sencond_fg, a.third_fg, a.fourth_fg, a.fifth_fg 
 FROM 
     (SELECT a.sale_date, a.cust_no, a.branch_code, a.first_fg, a.sencond_fg, a.third_fg, a.fourth_fg, a.fifth_fg 
FROM cust_hc_target a,  cust_buy b 
WHERE b.deliv_date = '20031212'  --// ������� 
  AND a.cust_no = b.cust_no 
  AND a.sale_date = b.buy_date  --// ��������(�Ǹ�����) 
  AND a.branch_code = b.branch_code 
  AND a.branch_code = 'A02' 
GROUP BY  a.sale_date, a.cust_no, a.branch_code, a.first_fg, a.sencond_fg, a.third_fg, a.fourth_fg, a.fifth_fg)a ,cust_master b, ed_post c, branch d, employee e 
WHERE a.cust_no = b.cust_no 
AND b.emp_code = e.emp_code(+) 
--AND b.cust_name  LIKE '������%' 
AND b.zip_code = c.zip_cd 
AND d.branch_code=a.branch_code 
     ) 
WHERE seq >= 1 
	AND seq <= 10 
==============================================================================================================
 
������������������� 2003.12.31(��) �۾� ������������������� 
---> 06:50 ~ 19:00 ==> ���� 

- PDA ����
- ���� PDA �Ǽ��� �ҽ� ��� 
------------------------------------------------------------------------------------------------------------- 

SELECT  
    *  
FROM  
    ( 
    SELECT  
        /* + INDEX_DESC(guestbook pk_guestbook) */  
        ROWNUM rseq,  
        seq, 
        name,  
        email,  
        homepage,  
        subject,  
        logtime  
    FROM  
        guestbook  
    WHERE  
    ROWNUM <= ? 
    ) A  
WHERE A.rseq > ?  

�̷��� ���ø� �� ���̽���? 
�Խ����� ������ ������ �߶� �����ֱ� ���ؼ� ����Ŭ���� �̷��� ����մϴ�. 
A.rseq �� �� ���������� ���� �������� Ȥ�� �ζ��κ��� �ϴ� ��ȣ�� �ִ� �κ��� ���̽���? 
�� �������� A ��� �ӽ� ���̺��� �Ǿ��ٰ� ���ø� �˴ϴ�. 
A ��� ���̺��� rseq ������ ��Ī�ϴ°��� �ǰ���? 
�׸���, /*+~~~*/ �� guestbook�̶�� ���̺��� pk_guestbook�ε����� ������������ ����ϰڴٴ� �� 
===============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������