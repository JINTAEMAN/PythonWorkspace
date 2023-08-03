

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2003.12) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


==============================================================================================================
---> 6:00 ~ 19:00 ==> 맑음 

- B2C 이벤트
- 5회차 ====>  총참여수 370명 참여(정답 357명, 오답 13) 
===============================================================================================================

- 기획 이벤트  
- 가습기 노마진 파격세일 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.12.02(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 8:00 ~ 19:00 ==> 맑음 

- B2C 분석
- Websphere 설정
eosEAR.ear eosWAR.war 
http://localhost:8181  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.12.03(수) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 8:00 ~ 19:00 ==> 맑음 

- B2C 이벤트
기획 이벤트 
- 세계명품가전 초특가전 - 필립스편 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.12.04(목) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 7:30 ~ 19:00 ==> 맑음 

- B2C 수정
- 우편번호(시, 구, 동 데이타 오류)  
SELECT a.id, b.first_name, b.login, b.registration_date, a.home_zip,  
	a.home_town, a.home_district, a.home_street, a.home_addr 
FROM edps_user a, dps_user b 
WHERE home_zip IS NOT NULL 
	-- AND  b.first_name ='진선숙' 
	-- AND b.login='tamario' 
	AND home_town IS NULL 
	AND a.id = b.id 
ORDER BY registration_date DESC 
------------------------------------------------------------------------------------------------------------------------ 

SELECT branch_zip, func_get_addr('T',branch_zip,town), func_get_addr('D',branch_zip,district),func_get_addr('S',branch_zip,street)  
FROM h_branch  
WHERE branch_zip='151811'    --//152090  137779  157884 137071 121836   122030   151811  121801  156030  133800  402020  135120  683807  134771 
ORDER BY town, district, street   --// 151811: 관악구 봉천동    132030: 도봉구 쌍문동  
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

■■■■■■■■■■■■■■■■■■ 2003.12.05(금) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 7:30 ~ 19:00 ==> 맑음 

- B2C 수정
- 러브액츄얼리 퀴즈경품이벤트 
http://156.147.149.9/index7.html 
------------------------------------------------------------------------------------------------------------------------ 

- 주말판촉 
------------------------------------------------------------------------------------------------------------------------ 

- atg dynamo회원 관리(id/pwd) 
admin/admin   
------------------------------------------------------------------------------------------------------------------------ 

- [replace 함수] 
JSP서 String 클래스에 있는 replace메쏘드는 char 1개밖에 치환이 안 됩니다.  
그래서 여러글자를 치환해주시려면 메쏘드를 직접구현하셔야죠 

- /joint/usrJointList.jsp에서 
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
//활용예제  
String content ="abcddefefghijklmnsagde";  
out.println(content+"<br>");  

out.println(replace(content,"def","<font color=red>def</font>"));  
//content 에서 def란 문자가 빨간색으로 됨  
%>  
활용방법 
바꾼 내용=replace( 원본내용, 바꿀 문자열(혹 문자) , 바뀔문자열(혹 문자));   
===============================================================================================================

- 로그인시 -> 로그인확인될때 알럿메세지 뿌려주고 확인버튼 누르면 홈페이지 메인으로 가기 
회원가입시 -> 가입확인축하페이지부분에서 알럿메세지 뿌려주고 확인버튼 누르면 그냥 그대로 보이기 
가입확인 축하페이지에서 기획전 배너 넣어주시고요...  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.12.06(토) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 7:00 ~ 13:00 ==> 맑음 

- B2C 수정
- 러브액츄얼리 퀴즈경품이벤트 수정 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.12.08(월) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 7:20 ~ 19:00 눈 

- B2C 수정
- 상품 코드명 변경 
상품 코드명이 존재하는 jsp 파일 위치 찾기 
------------------------------------------------------------------------------------------------------------------------ 

- 알뜰경매 
- 공동구매  
------------------------------------------------------------------------------------------------------------------------ 

--// 공동구매 회차 정보 @@@@@@@@@@@ 
SELECT joint_round_id, start_date, start_time, end_date, end_time, joint_name,  
NVL(joint_detail,' ') joint_detail, status_flag 
FROM joint_round 
WHERE (start_date  start_time) <= TO_CHAR(SYSDATE,'yyyymmddhh24miss') 
AND (end_date  end_time) >= TO_CHAR(SYSDATE,'yyyymmddhh24miss') 
AND scr_display_yn = 'Y' 
------------------------------------------------------------------------------------------------------------------------ 

--// 공동구매 상품정보 @@@@@@@@@@@ 
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

■■■■■■■■■■■■■■■■■■ 2003.12.09(화) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 7:30 ~ 19:00 ==> 맑음 

- B2C 수정
integer 타입 변경  
int RespTime = 1215; // 1번째 이미지 시간  
// int =  Integer.parseInt(int + string) (1215 + "10" = 121510) 
int RespTime_10 = Integer.parseInt(RespTime + "10");  
// int = int + int(1215 + 10 = 1225) 
int RespTime_10 = RespTime+10; 
-------------------------------------------------------------------------------- 

- [새창 띄우기]  
- post 방식으로 새창 띄우기(파라미터를 code, service를 가지고 갈 때)  @@@@@@@@@@@@@@  
/MyPage.jsp에서  
<script language="JavaScript"> 
<!-- 
function CForm() 
{ 
var f = document.payForm; 
  
noticeWindow  =  window.open('','popup','toolbar=yes,location=yes,directories=yes,status=yes,menubar=yes
,scrollbars=yes,resizable=yes,width=950,height=700,top=10,left=20'); 
noticeWindow.opener = self; 

f.target = 'popup'; 
f.action = '/shop/www/index_dmc.jsp';  // 새창 띄우기 
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
      <td width="66" valign="baseline"><!---  form 값 넘기기(이미지 클릭)--> 
      <input type=image src="/img/mypage/p_main_m_go.gif" width="66" height="29" border="0" align="absmiddle" 
      name="Image324190" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image324190','
      ','/img/mypage/p_main_m_go_on.gif',1)"></td> 
    </tr> 
  </table> 
<input type=hidden name="code" value="dmc"> 
<input type=hidden name="service" value="SVC_USE"> 
</form> 
------------------------------------------------------------------------------------------------------------------------ 
 
-  /index_dmc.jsp에서(frame 만들기) 
<html>  
	  <head> 
	    <title>LG 하이프라자</title> 
	    <link rel="stylesheet" href="/css/css" type="text/css"> 
	  </head> 
	  <frameset frameborder=no> 
	    <frame src="/shop/www/order/dmc_point2.jsp?code=<%=code%>&service=<%=service%>" name="body"> 
	  </frameset> 
</html>  
===================================================================================================================

- 일반적인 새창 띄우기(파라미터를 안 가지고 갈 때)  @@@@@@@@@@@@@@   
/MyPage.jsp에서 
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
<td width="161" height="22" class="contents2"><a href="javascript:browseOpen3('dmc','default');">디지털 멤버쉽 카드</a></td> 
    </tr> 
 </table> 
------------------------------------------------------------------------------------------------------------------------ 
 
 - /index_dmc.html에서(frame 만들기)  
<html>  
  <head> 
    <title>LG 하이프라자</title> 
    <link rel="stylesheet" href="/css/css" type="text/css"> 
  </head> 
  <frameset frameborder=no> 
    <frame src="/shop/www/order/dmc_point2.jsp" name="body"> 
  </frameset> 
</html>  
===================================================================================================================

- 상품 코드명 변경
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

■■■■■■■■■■■■■■■■■■ 2003.12.10(수) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 7:40 ~ 19:00 ==> 맑음 

- B2C 수정
- 인기/신상품 조회(상품코드명 변경을 위해) 
/common/mainPopularGoods.jsp 에서 
------------------------------------------------------------------------------------------------------------------------ 

--// 인기/신상품  @@@@@@@@@@@@@@@ 
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

■■■■■■■■■■■■■■■■■■ 2003.12.11(목) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 8:10 ~ 19:00 ==> 맑음 

- B2C 수정
- 공동구매(추천공구 상품) image 배치 수정(1, 2개 상품등록도 image 깨어지지 않고 가능) 
- /joint/usrJointList.jsp 에서 
/img/jnt/p_joint_bgimg.gif   ===> 배경이미지 
768*270  --> 768*329 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.12.12(금) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 7:35 ~ 19:00 ==> 맑음 

- B2C 수정
- 기획 이벤트 
1. IH압력밥솥 고객사은 대잔치 
2. 겨울방학 어학공부를 위한 CDP/아하프리 모음전 
- 주말판촉 
- TO_NUMBER, TO_CHAR, SUBSTR 함수 분석(Oracle8i) 
------------------------------------------------------------------------------------------------------------------------ 

-- 영화사 사이트 통한 회원가입(최종 데이타)==> HIBCDB  @@@@@@@@@@@@ 
SELECT c.event_user_lst_id AS NO, a.login AS 회원ID, a.first_name AS 이름, 
     CASE  WHEN SUBSTR(b.ssn,7,1)='1'    THEN '남'    ELSE  '여' END   성,    --// 성별    
	   TO_NUMBER( TO_CHAR(SYSDATE,'YYYY')) +1 - TO_NUMBER('19' '' SUBSTR(b.ssn,1,2))  AS 나이, 
	   b.ssn  AS 주민번호,  ( c.apply_date ' ' apply_time) AS event_등록일, TO_CHAR( a.registration_date,'YYYY_MM.DD HH24:MI') AS 가입일, 
	   ( trim(b.home_town) ' '  trim(b.home_district) ' '  trim(b.home_street) ' '  trim(b.home_addr)) AS 주소, 
	   (b.home_ddd '-' b.home_telno) AS 전화, mobile_telno AS 핸드폰번호, 
	   CASE  WHEN  TO_CHAR( a.registration_date,'YYYYMMDDHH24MISS') >= '200312080100'  --// 가입일이 2003년 12월 08일 이후 이면(신규) 
	THEN '신규'   
	ELSE  '기존'  END  신규가입여부 
FROM DPS_USER a, EDPS_USER b, event_user_lst c 
WHERE a.ID = b.ID 
	AND c.user_id = a.login 
	AND c.event_id = '1000000133' 
ORDER BY c.event_user_lst_id DESC 
==============================================================================================================

- [eclipse] 
 rt.jar 
C:\WebSphere\AppServer\installedApps\nEosEAR.ear\nEosWAR.war\WEB-INF\lib  ==> 존재 안 함 
C:\WebSphere\AppServer\java\jre\lib  ====> 존재(수정) 

servlet.jar 
C:\WebSphere\AppServer\java\jre\lib\ext  ====> 존재 안 함 
C:\jdk1.3.1\jre\lib\ext ====> 이미 존재 하므로 다시 설정 안 해도 됨 

activation.jar 
C:\WebSphere\AppServer\java\jre\lib\ext   
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.12.13(토) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 13:10 ~ 15:00 ==> 맑음 

- PDA 작업
tomcat이 다시 띄워 졌는지 확인(13:39:04 변경 확인) 
se85:/array1/tas007> ps -ef  grep tomcat 
tas007  4726     1  0 13:39:04 pts/6    0:20 /usr/bin/../bin/../java/bin/../bin/sparc/native_threads/java -Dtomcat.home=/usr 
/classes/himobile.properties 에서( SE1BDB DB연결이 안됨) 
------------------------------------------------------------------------------------------------------------- 

drivers=oracle.jdbc.driver.OracleDriver 
mobile.url=jdbc:oracle:thin:@156.147.135.65:1521:SE1BDB 
mobile.user=leader 
mobile.password=solomon 
==============================================================================================================

se85:/usr/local/tomcat/webapps/mobile/Debug> tail -45 20031213 
에서 로그 점검 
se85:/array1/tas007/mobile/Wire_V52_SSL> tail -45 wirelog.txt 
에서 wire 로그 점검 
Tomcat을 다시 띄우도 안됨(Local에서는 잘 됨) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.12.15(월) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 19:00 ==> 맑음 

- CRM 수정
http://156.147.135.156:8082/ .27 
실행관리/ HC실행   
HC실행(redirect.jsp?go=F2)  
------------------------------------------------------------------------------------------------------------- 

<frameset name="hicrmframe" rows="200,*" frameborder="0" border="0" framespacing="0">  
  <frame name="condition"    noresize  src="/servlet/hicrm.cust.happycall.CuHcBasicServlet?go=movejsp" scrolling="no" marginwidth="0" marginheight="0" > 
  <frame name="result"  noresize  src="/servlet/hicrm.cust.happycall.CuHcBasicServlet?go=explain&nPage=1" scrolling="auto" marginwidth="0" marginheight="0"> 
</frameset> 
====================================================================================================================

printJspPage(req, res, "/hicrm/cust/happycall/CuHcTopFrm.jsp"); 
-> HC실행 조회클릭(CuCrSearchFrm.jsp) 
<script language="javascript">  
	function send() { 
		document.f.go.value="list"; 
		document.f.target = "result"; 
		document.f.action = "/servlet/hicrm.cust.happycall.CuHcBasicServlet"; 
		document.f.method="post"; 
		document.f.submit(); 
	} 
</script> 

/classe/hicrm/cust/happycall/dbmgr/CuHcBasicWrap.java 에서 
------------------------------------------------------------------------------------------------------------- 

--// HC실행 조회 
SELECT  branch_code,NVL(emp_name,'&nbsp;') emp_name,seq , cust_no ,sale_date,cust_name,home_ddd, home_tel_no, 
SUBSTR(zip_code,1,3)'-'SUBSTR(zip_code,4,3) zip_code, town, district, addr, first_fg AS 단계_1, sencond_fg AS 단계_2 
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

HC실행 상세조회(CuHcListFrm.jsp)(redirect.jsp?go=F21)  
------------------------------------------------------------------------------------------------------------- 

<script language="javascript"> 
	location.href="/servlet/hicrm.cust.happycall.CuHcBasicServlet?go=read&cust_no=<%= cust_no %>&nPage=<%= nPage %> 
	&sale_date=<%= sale_date %>&branch_code=<%= branch_code %>&branch_name=<%= branch_name %> 
	&emp_code=<%=emp_code %>&emp_name=<%=emp_name %>&call_step=<%= call_step %> 
	&search_date1=<%=search_date1%>&search_date2=<%=search_date2%>"  
</script> 
==============================================================================================================
  
--// 고객 기본 정보 조회 
SELECT c.cust_no, c.cust_name, SUBSTR(c.person_no,0,6) AS person_no1, SUBSTR(c.person_no,8,13) AS person_no2, 
 DECODE(c.from_dm,01,'자택',02,'회사') from_dm, DECODE(c.from_dm,01,c.home_ddd,02,c.ocu_ddd)  AS tel_ddd, 
 SUBSTR(DECODE(c.from_dm,01,c.home_tel_no,02,c.ocu_tel_no),0,INSTR(DECODE(c.from_dm,01,c.home_tel_no,02,c.ocu_tel_no),'-')-1) AS tel_no1, 
 SUBSTR(DECODE(c.from_dm,01,c.home_tel_no,02,c.ocu_tel_no),INSTR(DECODE(c.from_dm,01,c.home_tel_no,02,c.ocu_tel_no),'-')+1) AS tel_no2, 
 SUBSTR(p.zip_cd,0,3) AS zip_code1, SUBSTR(p.zip_cd,4,6) AS zip_code2,  p.town' 'p.district' 'p.street AS addr1, 
 DECODE(c.from_dm,01,c.addr,02,c.ocu_addr) AS addr2, SUBSTR(c.hand_no,0,INSTR(c.hand_no,'-')-1) AS hand_no1, 
 SUBSTR(c.hand_no,INSTR(c.hand_no,'-')+1,INSTR(c.hand_no,'-',2)-1) AS hand_no2, 
 SUBSTR(c.hand_no,INSTR(c.hand_no,'-',INSTR(c.hand_no,'-'),2)+1) AS hand_no3, 
 NVL(DECODE(c.birth_gb,'01','음력','02','양력'),' ') birth_gb, c.birthday, c.marryday, DECODE(SUBSTR(c.birthday,0,1),' ',' ', 
 (TO_CHAR(SYSDATE,'yyyy')-SUBSTR(c.birthday,0,4)+1)) AS age, 
 c.children_cout, c.oldest_age,c. family_top_job,c. gender, 
 (SELECT memo1 
 FROM cust_comm_code 
 WHERE major_code = 'house_having_tp' 
AND minor_code=c.house_type) house_type, c.house_size, 
 DECODE(c.agree_fg,'Y','동의함','N','동의안함') agree_fg,DECODE(c.reg_mail,'Y','사용','N','미사용') reg_mail, c.e_mail, 
 NVL((SELECT emp_name FROM employee WHERE emp_code=c.emp_code),' ') emp_name,emp_code, 
 DECODE(c.cust_gb,01,'개인',02,'업체') cust_gb, c.insert_date AS insert_date1,  NVL(c.etc,' ') etc, 
 NVL((SELECT memo1  FROM cust_comm_code WHERE c.hobby = minor_code AND major_code = 'HOB'),'없음') hobby, 
 NVL((SELECT memo1 FROM cust_comm_code WHERE c.hobby = minor_code AND major_code = 'CSP'),'없음') car_spec, 
 NVL((SELECT memo1 FROM cust_comm_code WHERE c.hobby = minor_code AND major_code = 'JOB'),'없음') job, 
 NVL((SELECT memo1 FROM cust_comm_code WHERE c.hobby = minor_code AND major_code = 'DMR'),'없음') dm_result, 
 NVL((SELECT memo1 FROM cust_comm_code WHERE c.grade = minor_code AND major_code = 'GRD'),' ') grade 
FROM cust_master c, ed_post p 
WHERE c.zip_code = p.zip_cd 
AND c.cust_no =2835484 
==============================================================================================================

--// 상품 내역 조회 
SELECT bu.buy_date, br.branch_name,mk.maker_name,je.jepm_name, mo.model_code, bu.vol,bu.sale_price,  
      NVL((SELECT memo1   
 FROM cust_comm_code  
 WHERE bu.buy_reason_type = minor_code  
   AND major_code = 'buy_reason_tp'),'없음') buy_reason_type 
FROM cust_buy bu, model mo, branch br, maker mk,jepm je      
WHERE bu.cust_no='2835484'  
     AND bu.branch_code = br.branch_code 
     AND bu.model_code = mo.model_code 
     AND mo.maker_code = mk.maker_code 
     AND mo.grand_code = je.grand_code 
     AND mo.jepm_code = je.jepm_code 
==============================================================================================================

- 숫자를 콤마가 들어가게 사용(가격) @@@@@@@@@@@@@@@@@@@@  
<%@page import="java.text.*" %>  
jle.getJointAmt() = "32000";   // 32000원 String -> Double로 형전환 
double val2 = Double.parseDouble(jle.getJointAmt()); 
String result = NumberFormat.getInstance().format(val2); 
out.println("<br>[TAMA] 200312_cdp.jsp:: [result]"+result);  // 가격 테스트(원) ===> 3자리 마다 콤마 
------------------------------------------------------------------------------------------------------------- 
  
DecimalFormat df = new DecimalFormat("000"); 
int val = 6; // 정수 
out.println("<br>[TAMA] 200312_cdp.jsp:: [df.format(val)]"+df.format(val)); // 정수 3자리 표현 
------------------------------------------------------------------------------------------------------------- 
  
DecimalFormat df2 = new DecimalFormat("#,##0.00"); 
double val2 = 1234.564d; // 실수 
out.println("<br>[TAMA] 200312_cdp.jsp:: [df.format(val2)]"+df2.format(val2)); //  실수 2, 3자리 표현 
==============================================================================================================

String buy_date =  cuhcbasic.buy_date;  // 년월일 나누기 
buy_date = buy_date.substring(0,4)+"/"+buy_date.substring(4,6)+"/"+buy_date.substring(6,8); 
==============================================================================================================

- 알뜰경매  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.12.16(화) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 19:00 ==> 맑음 

- CRM 수정
// 오늘날짜(systemdate)  
java.text.SimpleDateFormat formatter  = new java.text.SimpleDateFormat("yyMMdd");   // 기준일자 
String today= formatter.format(new java.util.Date()); 
==============================================================================================================
 
- nEos 에러 발생
[03.12.16 09:49:51:377 GMT+09:00] 5f872a48 OSEListenerDi X PLGN0021E: Servlet 요 
청 프로세서 예외: 가상 호스트/WebGroup을 찾을 수 없습니다. : / 웹 그룹이 정의되 
어 있지 않습니다. 
------------------------------------------------------------------------------------------------------------- 

[03.12.16 10:29:15:086 GMT+09:00] 54642ef2 ServletEngine X SRVE0146E: 전송을 시 
작하지 못했습니다. 가장 가능한 원인은 포트가 이미 사용 중인 것입니다. 다른 응용  
프로그램이 이 포트를 사용 중이 아닌지 확인하고 서버를 다시 시작하십시오. com.ibm 
.servlet.engine.TransportException: Failed to start transport http: java.net.Bin 
dException: Address in use: bind 
        at com.ibm.servlet.engine.http11.HttpTransport.startTransport(HttpTransp 
==================================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.12.17(수) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:50 ~ 19:00 ==> 맑음 

- CRM 수정
- 배송일자 7일을 넘을 수 없게 기간 설정 
var year1 = document.f.deliv_date1.value.substring(0,4); //년  ex) 20031210 
var month1 = document.f.deliv_date1.value.substring(4,6); //월 
var day1 = document.f.deliv_date1.value.substring(6,8); //일  
var year2 = document.f.deliv_date2.value.substring(0,4); //년   ex) 20031217 
var month2 = document.f.deliv_date2.value.substring(4,6); //월 
var day2 = document.f.deliv_date2.value.substring(6,8); //일 

var startday = new Date( year1, month1, day1); 
var enday = new Date( year2, month2, day2); 

var nc = (enday.getTime() - startday.getTime()) / (24*60*60*1000);  
//alert("[TAMA]:: [Math.ceil(nc)]"+ Math.ceil(nc));   // 일자 차 

if(Math.ceil(nc)>= 8) { 
   alert("배송일자 검색 기간은 7일을 넘을 수 없습니다."); 
   document.f.deliv_date2.focus(); 
   return; 
} 
==================================================================================================================

-- Update문장(필드 업데이트)  @@@@@@@@@@@@@@@ 
--// cust_buy 테이블의 deliv_date필드를 buy_date를 이용하여 수정  @@@@@@@@@@@@@@@  @!!!!!!!!! 
UPDATE cust_buy a 
SET a.deliv_date=(SELECT TO_CHAR(TO_DATE(TO_DATE(b.buy_date,'yyyymmdd'))+3,'yyyymmdd') FROM cust_buy b  
    WHERE  a.cust_no= b.cust_no 
   AND a.seq= b.seq) 
WHERE EXISTS (SELECT 'X' FROM cust_buy b WHERE  a.cust_no= b.cust_no 
           AND a.seq= b.seq); 
------------------------------------------------------------------------------------------------------------- 

--// cust_buy 테이블의 deliv_date필드 조회  @@@@@@@@@@@@@@@ 
SELECT (SELECT b.buy_date FROM cust_buy b  
    WHERE  a.cust_no= b.cust_no 
   AND a.seq= b.seq) AS Hname2로_바뀜 
FROM cust_buy a 
WHERE EXISTS (SELECT 'X' FROM cust_buy b WHERE  a.cust_no= b.cust_no 
           AND a.seq= b.seq); 
==============================================================================================================

--// Tbl1 테이블의 Hname 필드를 수정(테이블 2개로 Hname를 업데이트 함)  @@@@@@@@@@@@@@@ 
UPDATE Tbl1 
SET Hname=(SELECT Hname2 FROM Tbl2 WHERE IDX=Tbl1.IDX) 
WHERE EXISTS (SELECT 'X' FROM Tbl2 WHERE Tbl2.IDX = Tbl1.IDX); 
------------------------------------------------------------------------------------------------------------- 

--// Tbl1 테이블의 Hname 필드를 조회  @@@@@@@@@@@@@@@ 
SELECT (SELECT Hname2 FROM Tbl2 WHERE IDX=Tbl1.IDX) AS Hname2로_바뀜 
FROM Tbl1 
WHERE EXISTS (SELECT 'X' FROM Tbl2 WHERE Tbl2.IDX = Tbl1.IDX); 
==============================================================================================================

 --// Tbl1 테이블의 Hname 필드를 수정(테이블 1개로 Hname를 업데이트 함)  @@@@@@@@@@@@@@ 
UPDATE Tbl1 a 
SET Hname=(SELECT idx FROM Tbl1 b WHERE b.IDX= a.IDX) 
WHERE EXISTS  (SELECT 'X' FROM  Tbl1 b WHERE b.IDX = a.IDX); 
------------------------------------------------------------------------------------------------------------- 

SELECT (SELECT idx FROM Tbl1 b WHERE b.IDX=a.IDX) AS Hname2로_바뀜 
FROM Tbl1 a 
WHERE EXISTS (SELECT 'X' FROM  Tbl1 b WHERE b.IDX = a.IDX); 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.12.18(목) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 08:20 ~ 19:00 ==> 맑음 

- B2C 수정
- 프래쉬 이미지 수정  
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
 
■■■■■■■■■■■■■■■■■■ 2003.12.19(금) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 08:20 ~ 19:00 ==> 맑음 

- CRM 수정
- 고객 구매 정보 조회 
- PDA 백업
- Tomcat서버 설치, wire서버 설치  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.12.20(토) 작업 ■■■■■■■■■■■■■■■■■■  
---> 08:00 ~ 13:00 ==> 맑음 

- CRM 수정
- 고객 구매 정보 조회 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.12.22(월) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 08:00 ~ 19:00 ==> 맑음 

- PDA 백업
- EVC++ 실소스 분석  
EVC++ --> Tools --> Options 
==============================================================================================================

- Directories/include files 에서 
C:\Windows CE Tools\wce300\Pocket PC 2002\include 
C:\Windows CE Tools\wce300\Pocket PC 2002\mfc\Include 
C:\Windows CE Tools\wce300\Pocket PC 2002\atl\Include 

C:\Windows CE Tools\wce300\Pocket PC 2002\include 폴더 밑에 wire를 복사하여 등록 
/Binding.h /Connector.h /supp.h  /Wire.h 
------------------------------------------------------------------------------------------------------- 

- Directories/Library files 에서 
C:\Windows CE Tools\wce300\Pocket PC 2002\lib\arm 
C:\Windows CE Tools\wce300\Pocket PC 2002\mfc\Lib\ARM 
C:\Windows CE Tools\wce300\Pocket PC 2002\atl\Lib\ARM 

C:\Windows CE Tools\wce300\Pocket PC 2002\lib\arm 폴더 밑에 복사하여 등록 
/PrintDll.lib /wireclient.lib 
==============================================================================================================

- CRM 수정
- 고객 구매 정보 조회 
http://156.147.135.156:8082/servlet/hicrm.cust.targetmg.CuTmTargetServlet?go=magijung 
------------------------------------------------------------------------------------------------------- 

 /********** 관리기종 Pop_up *************/ 
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
	<td bgcolor="#E3EBCC" width="80" class="crm_style">선택기종</td> 
	<td colspan="5">  
	  <textarea name="gijung_name" cols="60"></textarea> 
	  &nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:GijungPop();"><img src="/image/targetmg/choice_button.gif" width="71" height="23" border="0"></a>  
	  <br> 
	</td> 
</tr> 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.12.23(화) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 06:40 ~ 19:00 ==> 맑음 

- CRM 수정
- 고객 구매 정보 조회 
SELECT * FROM cust_hc_result 
WHERE cust_no='1851078'  AND call_step='1' AND branch_code ='B65'  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.12.24(수) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 06:50 ~ 19:00 ==> 맑음 

- CRM 수정
- 고객 구매 정보 조회 
// HC 통화 내용 저장(수정) 
update cust_hc_result   
set memo = '',  update_date =  to_char(sysdate,'yyyymmdd') , update_emp =  '10326',  hc_date =  '2003122418',   
claim_desc =  'ㄹㅇㄴ(수정)',  claim_fg =  '03',  claim_desc =  'ㄹㅇㄴ(수정)',  claim_handle =  '',   
gijung_code =  '',  gijung_desc =  '',  call_flag =  'N'   
where sale_date = '20031209'  and branch_code = 'A02'   and cust_no = '2835484'  and call_step = '1'  
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2003.12.26(금) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 06:40 ~ 19:00 ==> 맑음 

- CRM 수정
- 고객 구매 정보 조회 
전체구매내역 조회 Pop_up 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.12.29(월) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:40 ~ 19:00 ==> 맑음 

- PDA 수정
- 시판 PDA 세팅 문제
F-3130CD YPZ(50130/2637613)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.12.30(화) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 06:50 ~ 24:10 맑음 

- PDA 수정
- 시판 PDA 세팅 문제 
--// Claim 처리 조회   @@@@@@@@@@@@@@@@@@   
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
DECODE( bu.buy_flag, 1,'핸드캐리',02,'가정배달',03,'취탁배송') AS buy_flag,        
bu.buy_flag, mk.maker_name,je.jepm_name, mo.model_code, bu.vol, NVL(bu.out_vol,0) AS out_vol, bu.sale_price,        
NVL((SELECT memo1   
FROM cust_comm_code  
WHERE bu.buy_reason_type = minor_code  
AND major_code = 'buy_reason_tp'),'없음') buy_reason_type       
FROM cust_buy bu, model mo, branch br, maker mk,jepm je       
WHERE bu.cust_no ='2835484'   
	AND seq >= 1 AND seq <=10  
--------------------------------------------------------------------------------------------------------- 

SELECT  branch_code,NVL(emp_name,'&nbsp;') AS 담당사원,seq , cust_no ,sale_date,cust_name,home_ddd, home_tel_no, 
SUBSTR(zip_code,1,3)'-'SUBSTR(zip_code,4,3) zip_code, town, district, addr, first_fg AS 단계_1, sencond_fg AS 단계_2,  
third_fg AS 단계_3, fourth_fg AS 단계_4, fifth_fg AS 단계_5 
FROM 
(SELECT d.branch_code,e.emp_name,ROWNUM seq , a.sale_date,a.cust_no , cust_name, home_ddd,home_tel_no, 
d.zip_code, c.town, c.district, b.addr, a.first_fg, a.sencond_fg, a.third_fg, a.fourth_fg, a.fifth_fg 
 FROM 
     (SELECT a.sale_date, a.cust_no, a.branch_code, a.first_fg, a.sencond_fg, a.third_fg, a.fourth_fg, a.fifth_fg 
FROM cust_hc_target a,  cust_buy b 
WHERE b.deliv_date = '20031212'  --// 배송일자 
  AND a.cust_no = b.cust_no 
  AND a.sale_date = b.buy_date  --// 구매일자(판매일자) 
  AND a.branch_code = b.branch_code 
  AND a.branch_code = 'A02' 
GROUP BY  a.sale_date, a.cust_no, a.branch_code, a.first_fg, a.sencond_fg, a.third_fg, a.fourth_fg, a.fifth_fg)a ,cust_master b, ed_post c, branch d, employee e 
WHERE a.cust_no = b.cust_no 
AND b.emp_code = e.emp_code(+) 
--AND b.cust_name  LIKE '허정아%' 
AND b.zip_code = c.zip_cd 
AND d.branch_code=a.branch_code 
     ) 
WHERE seq >= 1 
	AND seq <= 10 
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2003.12.31(수) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 06:50 ~ 19:00 ==> 맑음 

- PDA 수정
- 시판 PDA 실서버 소스 등록 
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

이렇게 보시면 잘 보이시져? 
게시판을 페이지 단위로 잘라서 보여주기 위해서 오라클에서 이렇게 사용합니다. 
A.rseq 는 위 쿼리문에서 흔히 서브쿼리 혹은 인라인뷰라고 하는 괄호가 있는 부분이 보이시져? 
그 쿼리문이 A 라는 임시 테이블이 되었다고 보시면 됩니다. 
A 라는 테이블의 rseq 퀄럼을 지칭하는것이 되겠져? 
그리고, /*+~~~*/ 는 guestbook이라는 테이블의 pk_guestbook인덱스를 내림차순으로 사용하겠다는 것 
===============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■