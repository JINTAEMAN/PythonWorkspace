

�����������������������������������������������������������
+---------------------------------------------// Memo(2009.01) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2009.01.01(��) �۾� �����������������
---> �̰����� 
   
- [2009�� �����(����Ҵ) �ų� ��ǥ]
��ǥ: �絵���� �� 
 1. �����ڷμ��� ���� ���(���� ����, ��� ��� ����)  
 2. W ������Ʈ ��ȹ ö��(����) 
 3. M ������Ʈ(3õ: 1,8õ) 
 (2008��: 18,279,547,   2007��:24,037,888 ) 
==============================================================================================================

������������������� 2009.01.02(��) �۾� �����������������
---> 08:40 ~ 21:40   --> �̰�����(���� �簨) 

- �ϳ����� Prj
- SBC(Server Based Computing) �ý��� ���� ����(DB, FTP���� �ȵ�)   
==============================================================================================================

- ������ǥ��ȸ(http://127.0.0.1:9002/dpfi_ReceiptSlip.do?method=list&imageKey=05150003600000130020080307113455590)  
==> /dpfi_receipt_slip_list.jsp  

- ������ǥ ��û ���� ���ε� 
http://127.0.0.1:9002/DP015_Workobject.do?method=mgrpop&gubun=upload&pop=5&wfno=F572EADAB8F411DCA63D0003BA29841F 
==> /com/hana/depo/dpb/sub/dpb015_cvs_file_upload.jsp 
������ǥ ��û: ���� ���ε尡 �ȵ� 
���� ������ȣ�� ����1��5332(694)  
-------------------------------------------------------------------------------------------------------------------- 

CREATE SYNONYM DEPO.DEPO_WF_NTFCOST FOR DEPO_WF_NTFCOST;  
���� �����ͺ��̽� �ȿ� �θ��� ������ �ִ�.  
����A,  ����B  
����A�� ����B�� ���̺��� �̿��� �� ���̺��� �����.  
create table table_name as select * from ����B.table_name;  
���̺��� ������ �ʰ� ������ �Ϸ� �Ѵٸ� synonym(���Ǿ�)�� ����� ������ �ο� �ϸ� �˴ϴ�.   

-���� DEPO�� ���̺� JESI_23_INFO�� ���� ������ �� 
CREATE SYNONYM DEPO.JESI_23_INFO FOR JESI_23_INFO; 
-���� DEPO�� ���� DELETE, INSERT, SELECT, UPDATE ������ �� 
GRANT DELETE, INSERT, SELECT, UPDATE ON  FREX_CM_USER TO DEPO; 
==============================================================================================================

- �ϳ����� ���: 9811673/ssj***** 
==============================================================================================================

- DB ����(db �н�����) 
�������� �Ǽ���: DBBPM1 111.18.1.52 frexadm/frexadm11 
�������� ����: DBBPM1_TEST 111.15.20.23 depo/depo11 frexadm/frexadm11 
�������� TOBE ����: DBBPM1_TEST 111.15.20.23 depo2/depo2 
��ȯ TOBE ����: DBBPM1_TEST 111.15.20.23 frex2/frex2 
==============================================================================================================

- FTP ���� 
1. ����Ʈ �̸�: 01. �׽�Ʈ ����(jsp) 
FTP: 111.15.1.4(depo01/depo01_dev) 
����� �����丮: /home/apps/dom_depo/serverclasses/depoEar/depoWebApp/com/hana/depo 
2. ����Ʈ �̸�: 02. �׽�Ʈ ����(class) 
FTP: 111.15.1.4(depo01/depo01_dev) 
����� �����丮: /home/apps/dom_depo/serverclasses/depoEar/depoWebApp/WEB-INF/classes/com/hana/depo 
3. ����Ʈ �̸�:03. �׽�Ʈ ����(OZ) 
FTP: 111.15.1.4(depo01/depo01_dev) 
����� �����丮: /home/apps/dom_depo/applications/oz35/repository_files 
4. ����Ʈ �̸�: 04. �׽�Ʈ ����(cron) 
FTP: 111.15.20.23(fnsw/fnsw_dev) 
����� �����丮: /vwapp/dpbatch 
5. ����Ʈ �̸�: 51. ��ȯ �׽�Ʈ ����(jsp, class) 
FTP: 111.15.1.4 (frex01/frex01_dev) 
����� �����丮: /home/apps/serversource/frex2/src/frexEar/frexWebApp 
(���� ���: /home/apps/dom_frex2/applications/frexEar/frexWebApp) 
6. ����Ʈ �̸�: 52. ��ȯ �׽�Ʈ ����(OZ) 
FTP: 111.15.1.4 (frex01/frex01_dev) 
����� �����丮: /home/apps/dom_frex2/applications/oz35 
7. ����Ʈ �̸�: 53. ��ȯASIS �׽�Ʈ ����(OZ) 
FTP: 111.15.1.4 (frex01/frex01_dev) 
����� �����丮: /home/apps/dom_frex/applications/oz30/repository_file 
==============================================================================================================

- ������ ����(����): ���ڸ� �Ұ����� �ٰ� �� 
==============================================================================================================

������������������� 2009.01.03(��) �۾� �����������������
---> 09:10 ~ 18:00 

- �ϳ����� Prj
- ������ǥ ��û ���� ���ε� 
http://127.0.0.1:9002/DP015_Workobject.do?method=mgrpop&gubun=upload&pop=5&wfno=F572EADAB8F411DCA63D0003BA29841F  
==> /com/hana/depo/dpb/sub/dpb015_cvs_file_upload.jsp 
������ǥ ��û: ���� ���ε尡 �ȵ� 
���� ������ȣ�� ����1��5332(694) 
==> ����:  
1. ��ȯ���� ������(��¥ ����) ==> ��ġ �Ϸ� 
2. ���ε� ����(����)�� �������� ���پ� �ٿ��� ���� ==> ���� �ٿ��� �� 
==============================================================================================================

- ��¥ ���� ó��(���� ����Ÿ: 2008-07-01 ==> 20080701): /DpfiReceiptSlipFromFileAction.java ���� 
if(row[0].substring(4, 5).equals("-")){ //��ȯ���� "-" �̸� ==> 2008-07-01 
   exchage_dt = row[0].substring(0, 4) + row[0].substring(5, 7) + row[0].substring(8, 10); //��ȯ�� 
} else if(row[0].substring(4, 5).equals(".")){ //��ȯ���� "." �̸� ==> 2008.07.01 
   exchage_dt = row[0].substring(0, 4) + row[0].substring(5, 7) + row[0].substring(8, 10); //��ȯ�� 
} else if(row[0].substring(2, 3).equals(".")){ //��ȯ���� "." �̸� ==> 08. 7. 2. 
   String p_year = row[0].substring(0, 2).trim(); 
   String p_month = row[0].substring(3, 5).trim(); 
   String p_day = row[0].substring(6, 8).trim(); 
   if(p_year.length() < 4)  p_year = "20" + p_year; 
   if(p_month.length() == 1)  p_month = "0" + p_month; 
   if(p_day.length() == 1)  p_day = "0" + p_day; 
   exchage_dt = p_year + p_month + p_day; //��ȯ�� 
} 
==============================================================================================================

- ������ ���� 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfi/action/DpfiReceiptSlipFromFileAction.java 
==============================================================================================================

������������������� 2009.01.04(��) �۾� ����������������� 
----> 07:30 ~ 15:00 

�������౸
07:30 ���  
08:20 �ű��ʵ��б� 
09:20 ���� 
10:00 �ų� ���(������ ȸ��, ������ �ѹ�), �ٶ� ��Ʈ ����(20���� ���) 
10:20 ���� ���� ���� 
11:50 ����  
12:30 300 �籸�� 
14:30 ���� 
15:00 �Ͱ� 
==============================================================================================================

������������������� 2009.01.05(��) �۾� �����������������
---> 08:00 ~ 21:00   -->  �̰�����: ���� ����(���, ��) 

- �ϳ����� Prj
- �����뺸 ����Upload(/DpfiReturnNtfFileUploadAction.java) ����  
-------------------------------------------------------------------------------------------------------- 

-  ���� üũ �Լ�(checkNumber, isNumber) 
private int checkNumber(String str) {  //���� üũ �Լ� 
int gubun = 1; //����(0:����, ����:1) 
String delims = "1234567890";  
String str_tr = str.trim(); 
String delim_char = ""; 
String str_char = ""; 

for ( int i = 0; i < delims.length(); i++ ) { //���� Loop 
delim_char = delims.substring(i, i + 1); 

for ( int j = 0; j < str_tr.length(); j++ ) { //�� ���� Loop 
str_char = str_tr.substring(j, j + 1); 
//log.debug("[processUploadedFileItem()] [delim_char]"+ delim_char +"[str_char]"+ str_char); 
if (delim_char.equals(str_char)) {  //���� �̸� 
gubun = 0; 
break; 
} 
    } 
}   
return gubun; 
}  
==============================================================================================================

- ��ȸ ���� 
���� ����: EXCEPTION raised String index out of range: 
����: String index out of range: -1 ������ String�������� ���̿� ���� �����Դϴ�. ...  
��ġ: String �̳� substring�κ��� ���������� ���ñ� �ٶ��ϴ� 
==============================================================================================================

������������������� 2009.01.06(ȭ) �۾� �����������������
---> 08:50 ~ 21:00  

- �ϳ����� Prj
- �����뺸 ����Upload(/DpfiReturnNtfFileUploadAction.java) ����  
==============================================================================================================

- ��� -> ��Ȳ�м�(1620359/182) 
/DpfiAnalizeTrendListAction.java ���Ͽ��� 
SignonUserAccount userAccount = getUserAccount(request);  
String strBrcd = userSession.getBrcd();      // �����ڵ� 
==============================================================================================================

- ���� ��ũ ����: ���¸�: *@*.*, ����ȭ ����: *@*.* 
==============================================================================================================

������������������� 2009.01.07(��) �۾� �����������������
---> 08:00 ~ 21:30  -->  �̰�����: ����(���� �簨) 

- �ϳ����� Prj
- �������� ���� �׽�Ʈ 
����: �̺��� ����, �����־� 
------------------------------------------------------------------------------------------------------------------ 

 - �������� ������(http://111.16.1.128/dpfi_WorkAppListInbox.do)   
- �������뺸����(/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpb/dao/DPB030WorkfloJDAO.java)  
public void insertRetNtf(String ntf_wf_no, String emp_no) {   // ��� ���� 
	// INSERT INTO DEPO_WF_RET_NTF 
}  

- DEPO_WF_RET_NTF ���� ���� ����(����: ������ ����, ����: �μ� �� ����) 
�������뺸���� ȭ�鿡�� ���縦 �ϰ� �������뺸 ��ȸ/�μ� ȭ�鿡�� �μ⸦ �� ������ ����  
==============================================================================================================

- zipcode ����Ÿ ���� 
SELECT A.WF_NO WF_NO,  A.NM NM, A.ADDR1 , A.ZIPCODE  
FROM DEPO_WF_NM_NTF A 
WHERE   A.WF_NO = '840B8864AAD611DDAB600003BA0D8E19' 
--  WHERE  A.ZIPCODE ='�����ŷ�����' 
---------------------------------------------------------  

-- UPDATE DEPO_WF_NM_NTF A 
SET A.ZIPCODE =NULL 
WHERE  A.WF_NO = '1183D100AADD11DDAB600003BA0D8E19'  
==============================================================================================================

������������������� 2009.01.08(��) �۾� �����������������
---> 08:40 ~ 21:30  

- �ϳ����� Prj
- Batch �۾�  
[/DPDBTool.java] ->[publish()] [getStatusLine()]HTTP/1.1 200 OK 
[/DPDBTool.java] ->[publish()] [getStatusLine()]HTTP/1.1 500 Internal Server Error 
http://127.0.0.1:9002/com/hana/depo/dpb/sub/dpb015_report_createFile.jsp?wf_no=F90651CEB52911DCA63D0003BA29841F
&cnt=1&output=311,312&imgkey=05150096500000130020071228185223306&mtd=email 
http://127.0.0.1:9002/com/hana/depo/dpb/sub/dpb015_report_save.jsp?wf_no=F90651CEB52911DCA63D0003BA29841F&cnt=1
&output=311,312&imgkey=05150096500000130020071228185223306&mtd=email 
==============================================================================================================

1. HttpClient 3.1 ��� 
commons-httpclient-3.0.1.zip �� �޾Ƽ� ������ Ǯ��,  
commons-httpclient-3.0.1.jar �� CLASSPATH �� �߰� 
��ġ: Propertites of depo_project => Java Build Path ==> Libraries  
JRE Sytem Library(���콺 ������ Ŭ��) -> Add JARs 
JAR Selection: commons-httpclient-3.1.jar üũ ==> OK  
==============================================================================================================

- ���콺 ������ Ŭ�� ���� 
<script type=text/javascript> 
document.oncontextmenu = new function ('return false'); 
document.ondragstart = new function ('return false'); 
//document.onselectstart = new function ('return false');   //���콺 ������ Ŭ�� ���� 
</script> 
==============================================================================================================

 -- �����뺸���� ��ȸ   ==============> IDX: 76241, POST_NUM: 137070, NM: ����ȫ 
SELECT IDX, A.POST_NUM AS �����ȣ, A.NM AS ����, A.POST_STATUS AS �뺸����, A.POST_NO AS ����ȣ,  
      NTF_DATE AS �뺸����, OFFICIAL_DOC_NO AS ���ð���, A.RET_DATE AS �ݼ���, INPUT_DATE, A.EXCEL_UPLOAD_DT AS ����_������� 
-- SELECT COUNT(*) 
FROM DEPO_WF_RET_NTF A  
WHERE A.IDX IS NOT NULL 
-- AND A.POST_STATUS IN ('00')   --�뺸����(00:������ �뺸(�ٿ�ε���), 10:�����ٿ�ε�, 20:������ �뺸(+����ȣ), 99:��⼭�� �ݼ�)  
--AND A.INPUT_DATE = '20090107'  --�������   
--AND A.IDX IN ( '57091', '57093')     
ORDER BY A.IDX DESC 
--;   
--------------------------------------------------------------------------------------------------------------------------------- 

-- �ߺ� ����Ÿ ��ȸ 
SELECT IDX, A.POST_NUM AS �����ȣ, A.NM AS ����, A.POST_STATUS AS �뺸����, A.POST_NO AS ����ȣ,  
      NTF_DATE AS �뺸����, OFFICIAL_DOC_NO AS ���ð���, A.RET_DATE AS �ݼ���, INPUT_DATE, A.EXCEL_UPLOAD_DT AS ����_������� 
FROM DEPO_WF_RET_NTF A 
WHERE ROWID > ( SELECT MIN(ROWID)   
FROM DEPO_WF_RET_NTF B 
WHERE B.POST_NUM = A.POST_NUM  --�����ȣ  
AND B.NM = A.NM  --����  
) 
--AND A.IDX > 76241   --IDX 
ORDER BY A.NM DESC 
--;  
==============================================================================================================

- ��Ű 
������Ű: ������ ������ ���� ������ 416-1 
����Ǯ ���: ������ ������ ���� ������ 778-1 
==============================================================================================================

������������������� 2009.01.09(��) �۾� �����������������
---> 08:00 ~ 22:00  -->  �̰�����: ����, ���� ������ ���� ö�� 

- �ϳ����� Prj
- Batch �۾�  
[/DPDBTool.java] ->[publish()] [getStatusLine()]HTTP/1.1 200 OK 
[/DPDBTool.java] ->[publish()] [getStatusLine()]HTTP/1.1 500 Internal Server Error 

java Exception in thread "main" java.lang.NoClassDefFoundError  
�̿����� ȯ�湮���� ������  ���� �ڹٸ� �����Ű�µ� �ʿ��� Ŭ���� ������ �� ã�� �ִٴ� �Ҹ��Դϴ�.  
�ѹ� c:/ �ٷ� �ؿ��ٰ� �ڹ� ���� ����  ������ �غ�����  ���ڸ����� �ѹ� ������Ѻ�����  
==============================================================================================================

- ������ ��â ����(IE7.0) 
����(T) -> ���ͳ� �ɼ�(O): �Ϲ� --> ��: ����(T) 
�˾� ǥ�� ��� ->  �׻� �� �ǿ��� �˾� ����(T): Ŭ�� --> Ȯ�� 
==============================================================================================================

- ��ȯ(frex)�� ���� ���� ��� 
/home/apps/dom_frex/applications/oz30/repository_file 
- ��ȯ TOBE(frex2)�� ���� ���� ���  
/home/apps/dom_frex/applications/oz30/repository_file/TOBE(���� ���� ���� ���) 
/home/apps/dom_frex/applications/oz30/repository_file(���� ����) 
--> /home/apps/dom_frex2/applications/oz30/oz30/repository_file(�����û ����)  
1. ���� �����̳ʿ��� --> 
 1) �۾����� ����: D:\01. Programming\52. OZ\01. hana\02. ��ȯ 
 2) ODIŸ��: ī�װ� �ּ�:TOBE�� ���� 
2. /ip_030_print_bl_info.jsp ���Ͽ��� 
<param name="connection.reportname" value="TOBE/lgm.ozr"> ���� 
----------------------------------------------------------------------------------------- 

//SELECT FREXADM2.FREX_CM_GET_BRNM_F('#OZParam.BR_CD#') BR_NM 

SELECT FREX_CM_GET_BRNM_F('0120') BR_NM 
FROM DUAL]
   
FTP: 111.15.1.4   
����� �����丮: /home/apps/dom_frex2/applications/oz35  ====> ���� ���   
==============================================================================================================

- LogMein(���� ����): �α׹��� 
https://secure.logmein.com/computers.asp 
TAMA (����): ��ǻ�� �׼��� �ڵ�: tama1212 
ALLORNOT (����): ��ǻ�� �׼��� �ڵ�: lee20280 
*@*.* / 123edc 
��ġ: http://www.download.com/LogMeIn-Free/3000-7240_4-10317491.html?tag=mncol 
http://macrouni.tistory.com/553 

https://tama--1--phzpgmszkr.app55.logmein.com/main.html  ==> Get Pro 
https://secure.logmein.com/welcome/pro3995/  ==> *@*.* / 123edc 
==============================================================================================================

������������������� 2009.01.10(��) �۾� �����������������
---> 08:40 ~ 18:00  

- �ϳ����� Prj
- frexadmin2 ���̱�   
lgm.ozr(���Ծ��� ���� ������) --> AFEX_IPB_LGM.odi ===> /ip_030_print_bl_info.jsp 
printHaja.ozr(�����뺸�� ���) --> HAJA_PRINT.odi ===> /ip_030_print_haja_info.jsp 
chuDoc.ozr(�߽ɼ��� ����������) --> GET_BRANCH_NM.odi ===> /ip_030_print_chu_info.jsp 

SELECT FREX_CM_GET_BRNM_F('#OZParam.BR_CD#') BR_NM FROM DUAL  ==> 
SELECT FREXADM2.FREX_CM_GET_BRNM_F('#OZParam.BR_CD#') BR_NM FROM DUAL 
--------------------------------------------------------------------------------------------------------- 

- ���� ���� 
��������: ��ť��Ʈ:  ���ε��� �������� �������� �ʽ��ϴ�. 
��ġ: ������ "������ ���" �� �ִµ� ��ȸ �Ǽ��� 0�̸� ������ ��� ��ü�� �׷����� �ʱ� ������  
�̷� �޽����� ���� �� �ֽ��ϴ�. (���� ������ ����� �ݺ�Ƚ���� ���� �������� �ʴ� ��쿡 �ش�˴ϴ�)  
<param name="viewer.showerrormessage" value="false">   ===> �߰� 

- obj_stream ���� ó�� 
������ �� ozr, obj_stream ���� (obj_stream ������ odi�� ��Ÿ������ ������ ���Ϸ� odi�� ���ϳ�¥��  
obj_stream ���� �ֽ��� ��� odi�� �ٽ� obj_stream ���Ϸ� ������)  
==============================================================================================================

- �������� ���� �˾�(/edms_project2/src/frexEar/frexWebApp/com/hana/frex/ip/body/ip_030_detail.jsp) 
function printDoc() { 
	var gb = document.IP030WorkfloForm['workObject.dpdaGb'].value; 

	if (gb == '0') { 
	    getSimsaEmpNo();  //���Ծ��� ���� ������ ���(/ip_030_print_bl_info.jsp) 
	} else { 
	    printDadp();  //�߽ɼ������������� ���(/ip_030_print_chu_info.jsp) 
	} 
} 

<table cellspacing="0" cellpadding="0" class="hnd" onClick="printDoc()" ALIGN="right"> 
    <tr> 
    <td class="btnLeft1"></td> 
    <td class="btnCenter1">�����</td> 
    <td class="btnRight1"></td> 
    </tr> 
</table>  
<hana:contains name="IP030WorkfloForm" property="workObject.stepId" value="050, 000, "> 
    <!-- BUTTON ����  --> 
<table cellspacing="0" cellpadding="0" class="hnd" onClick="printHaja()" ALIGN="right"> 
    <tr> 
    <td class="btnLeft1"></td> 
    <td class="btnCenter1">�����뺸��</td>  ==> /ip_030_print_haja_info.jsp 
    <td class="btnRight1"></td> 
    </tr> 
</table> 
     <!-- BUTTON ���� --> 
</hana:contains> 
==============================================================================================================

������������������� 2009.01.11(��) �۾� �����������������
----> 07:30 ~ 15:00 

�������౸
07:50 ���  
08:50 �ű��ʵ��б� 
09:20 ���� 
11:00  ���� ���� ����(�����ǿ��� ���� ��) 
11:30 ����  
11:50 ��� �δ���(���� ��) 
13:00 ���콺 �籸��(������, �Ⱥ�ä) 
15:30 �丮��(����APT �� ȣ������ ����) 
18:00 �Ͱ� 
==============================================================================================================

������������������� 2009.01.12(��) �۾� �����������������
---> 07:50 ~ 20:30 -->  �̰�����: ����(�̸�, �ݿ� �ǰ��ѵ� �������� ������ �޷�), ���� �̼�ȣ ���� ���� 

- �ϳ����� Prj
- setAttribute ����  
 /IP030WorkfloJDAO.java ���Ͽ��� 
public List getOzPrint_IPH_BASE( 
	p_StRtn = eai.sendNew(); 

	if(!p_StRtn.equals("1")) {  //���� ���� �̸�  
		request.setAttribute("p_msg2", p_StRtn);   
	} 
} 

 /ip_030_print_bl_info.jsp ���Ͽ��� 
List list_IPB_LGM = (new com.hana.frex.ip.dao.IP030WorkfloJDAO()).getOzPrint_IPB_LGM(request, ref_no, account);   
//L/G �߱�����(��ȸ�� ����Ÿ) 

if(list_IPB_LGM == null) {  //EAI���� ������ ����   
p_msg = (String) request.getAttribute("p_msg");    
}  
if(size_IPB_LGM < 1  size_IPH_BASE < 1) {  //EAI���� ������ ����  
%>   
<script>   
<% if(size_IPB_LGM < 1 && size_IPH_BASE < 1) { //EAI���� ������ ����(list_IPB_LGM)  %> 
alert("EAI ���谡 ���� �Ǿ����ϴ�. \n[���� LG�߱޿��� ���� ����]: <%=p_msg%>\n[L/C ���� ���� ����]: <%=p_msg2%>");     
<% } else {   %> 
<% if(size_IPB_LGM < 1 ) {  //EAI���� ������ ����(list_IPB_LGM)  %> 
alert("EAI ���谡 ���� �Ǿ����ϴ�. \n[���� LG�߱޿��� ���� ����]: <%=p_msg%>");   
<% }    %> 
<% if(size_IPH_BASE < 1) {  //EAI���� ������ ����(list_IPH_BASE)  %>  
alert("EAI ���谡 ���� �Ǿ����ϴ�. \n[L/C ���� ���� ����]: <%=p_msg2%>");   
<% }  %> 
<% }  %> 
</script>  
<% } %>  
==============================================================================================================

- ��⸮��Ʈ ���ε� ���� ó�� 
12�� 02��: 1299, 12�� 05��: 1294,   ==> EXCEL_UPLOAD_DT: 20090110 
12�� 18��: 2595, 12�� 23��: 997, 12�� 29��: 798  ==> EXCEL_UPLOAD_DT: 20090112 
01�� 06��: 996  ==> EXCEL_UPLOAD_DT: 20090113 

01. 2008�� 12�� 02�� ���߼۸���Ʈ(ó��).xls ~ 05. 2009�� 01�� 06�� ���߼۸���Ʈ(ó��).xls 
==============================================================================================================

- 11���� ��������EDMS ����ڷ� 
��������EDMS �����Ǽ�: 3,246 �� 
��������EDMS �뺸�Ǽ�: 6,209 ��   
==============================================================================================================

������������������� 2009.01.13(ȭ) �۾� �����������������
---> 08:40 ~ 20:30 -->  �̰�����: ����(Batch�۾� ���� ó��: HttpClient) 

- �ϳ����� Prj
- ������ �� ���������� ����� �ŷ��� ���� 
--ȯ�� ���� ��ȸ @@@@@@@@@@@@@   
SELECT SUBSTR ( B.CR_ILSI, 1, 8 ) AS M_DAY, COUNT(*) AS M_CNT  
FROM DEPO_WF_HOSTDATA3 A, DEPO_WF_MASTER B 
WHERE A.WF_NO = B.WF_NO 
AND SUBSTR ( B.CR_ILSI, 1, 8 ) >= '20081201'  --���ʻ�������(12��)   
AND SUBSTR ( B.CR_ILSI, 1, 8 ) <= '20081231'  
AND A.FETCH_GUBUN = '51'  --����Ÿ����(51:ȯ������)  
GROUP BY SUBSTR ( B.CR_ILSI, 1, 8 )  
--;   
------------------------------------------------------------------------------------------- 

51 ȯ�� ����, 64 ������ ����, 69 ��ǥ ����(������) 
53 ī���ȣ�� �ſ�ī�� ����, 61 ���¹�ȣ�� �ſ�ī�� ����, 66 �ſ�ī�� ����(��) 
52 ������ ���⳻��  
==============================================================================================================

- ���� ���� ��޹ݿ� ��û  
�������ϸ�: report-24.ozr 
��������: �������뺸 ����(�뺸���� ������ �ϰ������� '����������û��� ���ǿ��'���� ����) 
==============================================================================================================

- ����ڸŴ���_����������(������������) 
������������ ==> ������������ ==> �����ŷ�����������ĵ  ==> (��� -> ��ϰ�����) 
1520314 ������  ��ź������(652) 
==============================================================================================================

- �߼۳��� ó��: 404�� ��ȸ �� 
-- �߼۳��� ��ȸ @@@@@@  
SELECT G.IDX,  G.NM AS ����, G.ADDR1 AS �ּ� 
FROM DEPO_WF_DETAIL F, DEPO_WF_NM_NTF G  
WHERE F.WF_NO = G.WF_NO  
AND G.NTF_YN = '1' 
AND G.offer_date = '20090112' 
AND (F.org_type <> '13' and  (F.prt_type <> '08' or F.prt_type is null) )  --����з�(13:���Ǻ�����, 08:����û)  
ORDER BY  G.NM 
--;  
----------------------------------------------------------------------------------------------------------------- 

-- �����뺸���� ��ȸ: 401�� ��ȸ �� 
SELECT A.IDX,  A.NM AS ����, A.ADDR AS �ּ� 
-- SELECT COUNT(*)  
FROM DEPO_WF_RET_NTF A  
WHERE A.IDX IS NOT NULL 
   AND A.POST_STATUS IN ('10')   --�뺸����(00:������ �뺸(�ٿ�ε���), 10:�����ٿ�ε�, 20:������ �뺸(+����ȣ))  
    AND A.INPUT_DATE = '20090112'  --�������  
ORDER BY  A.NM     
--;  
----------------------------------------------------------------------------------------------------------------- 

- �߼۳��� ó��: 
���̺� ���� ���� �� ���� excel���Ϸ� ���� ���ε� ó�� 
76384 ��ȣ�� ==>  20090112 ==> ����ȣ: 1138202549215 
76630 ������ ==>  20090112 ==>  ����ȣ: 1130601452977 
76384 ���Ϳ� ==>  20090112 ==>  ����ȣ: 1138202548023 
==============================================================================================================

������������������� 2009.01.14(��) �۾� �����������������
---> 08:50 ~ 22:20  --> ������ ��� 

- �ϳ����� Prj
- �̹��� ���� ���� 
�Ʒ������� ��ȭ�� �� ���� 
�̹����������� 34��(��ǥ ����)�� �ִµ� EDMS������ 17�常 ���δٰ� �մϴ�.  
096B206EE04211DDAB630003BA0D8E19  ����1��5332862 EMP_NO: 1741120  
==============================================================================================================

- �ڷ����� ��� ���� Batch�� �� ������ ���� 
1. dpb015_report_save.jsp ���Ͽ���report-1.ozr(��°�����), report-54.ozr(�߰�����)  ������ ���� �ϴµ�  
����� ����� �������� .ocx�� ��� 
2. Batch �۾��� Java Application���� ����� ���Ƿ� .ocx�� ��� �� ��(ActiveX ��� ����) 
(311: report-1.ozr(��°�����), 312: report-54.ozr(�߰�����) ���� ������) 
----------------------------------------------------------------------------------------------------------------- 

1. HttpClient: Script ��� ����, ActiveX ��� ���� 
2. Junit: Script ��� ����, ActiveX ��� ���� 
==============================================================================================================

- ����� �۾� ����� 
1. batch ���� ����(/test_batch.bat ����) 
cd C:\Program Files\Internet Explorer 
iexplore.exe -new "http://127.0.0.1:9002/com/hana/depo/dpb/sub/dpb015_report_createFile.jsp? 
wf_no=F90651CEB52911DCA63D0003BA29841F&cnt=1&output=311,312 
&imgkey=05150096500000130020071228185223306&mtd=email" 

2. ����� �۾� 
���� --> ���α׷�(P) --> �������α׷� --> �ý��� ���� --> ����� �۾�: Ŭ�� 
���� �۾� �߰� --> ���� �۾� ������ 
�۾��̸�: iexplore,  �۾�����: ���� 
==============================================================================================================

- TeraStream 
CoSORT�� ������ ������ ����(Sorting) �� ����(Trans-formation)�� ���� �ٽɿ������� ����ϴ� ETT�� �����  
���� Batch �۾� �����̴�. Unix/Windows/Linuxȯ�濡�� ���� �� DB ������ �����͸� ��ȯ/����/����/����  
���� �ſ� ������ ���ϰԿ䱸 ���׿� �°� ó�������ν� ETTȤ�� EAI�� ���� �������� ������ ������ �ϵ���  
����� �Ű���� �����̴�.  
==============================================================================================================

- �ϳ����� ������ ������Ʈ(�ѿ츮 �Ž��� ���� ��ȭ��: �ϳ� TeraStream SM) 
�ϳ����� ������ ������Ʈ���� EDMS ������ ���� ������ ��ϰ� �߰� �����ϴ� ������ ����Ͽ� BPM 
�ַ�ǰ� Batch �۾� �ַ���� Agent�� ����Ͽ� ���� ȿ��ȭ�� ���. 
��, ��ȯ������ EAI�� �����ϴ� ���� ���� 
JAVA,JSP,ORACLE, STRUTS,EAI,BPM,EDMS 
==============================================================================================================

- ��ӹ��� ������ ���� 
2009.01.25(��) 06:30  ���� -> ���� ��� 29,400�� 
2009.01.25(��) 11:00  ���� -> ���� ��� 29,400�� 
2009.01.27(ȭ) 24:00  ���� -> ���� �ɾ߿�� 32,300�� 
==============================================================================================================

������������������� 2009.01.15(��) �۾� �����������������
---> 07:40 ~ 21:00  --> �̰�����(ī���� ����, ���� �簨) 

- �ϳ����� Prj
- ���� ����(����� �븮(��ȯ������)�� ����   331-3629 1720774   0060): M1216-810NS03459 
lgm.ozr(���Ծ��� ���� ������) --> AFEX_IPB_LGM.odi ===> /ip_030_print_bl_info.jsp 
printHaja.ozr(�����뺸�� ���) --> HAJA_PRINT.odi ===> /ip_030_print_haja_info.jsp 
chuDoc.ozr(�߽ɼ��� ����������) --> GET_BRANCH_NM.odi ===> /ip_030_print_chu_info.jsp 

�� ==> ǥ������: mask_#_####/##/##  -> ����(2009/01/15)  ===> ���� 3.0 �̻� 
�� ==> ǥ������: mask_#_#,###  -> �ݾ�(2009/01/15) 
�� ==> ǥ������: #,##0.00  -> �ݾ�(55766355.47  ==> 55,766,355.47)   
write("[����Ʈ]--> [i]"+ (string)i);   //����� ==> �����̸�((string)�� ����) 
����_���4 == > �Ⱥ��� ===> �ذ�: �ݺ�Ƚ��: 1�� ���� 
=================================================================================================== 

string str; 
write("[���ñ��� l lbl]--> [test]"); 

if (#OZFormParam.PRSN_DUDT#  != null) {   //���ñ����� �����ϸ�  
	if (#OZFormParam.PRSN_DUDT# == ""  #OZFormParam.PRSN_DUDT# == "0") { 
		str = "";  
	} else { 
		write("[���ñ��� lbl]--> [TEST] [���ñ����� �����ϸ�]"); 
		str = formatDate(parseDate(#OZFormParam.PRSN_DUDT#, "yyyyMMdd"), "yyyy/MM/dd");  //���ñ���  
	}  

	setattr("caption", str);  
}   
------------------------------------------------------------------------------ 

- slit ���(����: java.util.StringTokenizer) 
String[] p_icrs_alwn_rts = p_ICRS_ALWN_RT_Ori.split("[.]");    //��������  
if(p_icrs_alwn_rts.length > 0) {  
	p_icrs_alwn_rt = p_icrs_alwn_rts[0];   //��������  
} 
==============================================================================================================

������������������� 2009.01.16(��) �۾� �����������������
---> 09:00 ~ 21:00  --> �� 

- �ϳ����� Prj
- ���� ����(����� �븮(��ȯ������)�� ����   331-3629 1720774   0060): M1216-810NS03459 
lgm.ozr(���Ծ��� ���� ������) --> AFEX_IPB_LGM.odi ===> /ip_030_print_bl_info.jsp 

�׽�Ʈ��: �ſ����ȣ: M1216812XS08068  USD149,600.00      
��ȯ AS-IS �Ǽ���: http://111.16.1.87:6011/loginForm.do 
==============================================================================================================

- ���࿬��ȸ �뺸��� ���� 
1. ���࿬��ȸ �뺸��� ������ 
 1) �����: ����û(2008.7.1 ~ 12.31), ����û(7.1 ~ 12.31), ����û(7.1 ~ 12.31), ����û(12.1 ~ 12.31)  
����ڵ�(02:����û, 03:����û, 06:����û, 08:����û)  
==============================================================================================================

- ���� ���� ���� ����(���� Grid ��ȸ �Ǽ� ���̱�) 
Option --> Options --> SQL Tool Options 
Fetch of Need ==> Initial Fetch: 90000�� ����(����Ʈ: 100�� �Ǿ� ����) 
==============================================================================================================

- �ڵ����� 1��ġ ����(1��ġ: 10%����: ����� ���Ǳ�û)  
������ȣ: 6205751-10106001-2009013-5024652, ����: �ڵ����� �ڵ���, �ΰ��ݾ�: 153,040�� 
==============================================================================================================

������������������� 2009.01.17(��) �۾� �����������������
---> 08:00 ~ 18:00  --> ������ �ù��� �׽�Ʈ �ǽ�(�ϳ����࿡�� ���� ���), �º�(���� 93 �Ĺ�) ��ȥ 

- �ϳ����� Prj
- �̹��� ���� ���� 
�Ʒ������� ��ȭ�� �� ���� 
�̹����������� 34��(��ǥ ����)�� �ִµ� EDMS������ 17�常 ���δٰ� �մϴ�.  
096B206EE04211DDAB630003BA0D8E19  ����1��5332862 EMP_NO: 1741120  
==============================================================================================================

- Pro-C 
SQL�� �̿��Ͽ� ������ ó���� �� �� �ִ� ����������� �ϳ��Դϴ�.(C Code ���) 
==============================================================================================================

- �ѱ� ������ ��� ��û(�����) 
��Ұ�  ==> 1��: 22����, 2��: 33����(�����) 
==============================================================================================================

- �Ż�����ȸ �� ȸ�� ���(HSBC �ſ� 28��) 
��������: 110-260-713275, ������: ����ȣ(�繫) ==> �� 2����(ȸ��)   
==============================================================================================================

������������������� 2009.01.18(��) �۾� �����������������
----> 07:30 ~ 12:00 

�������౸
07:40 ���  
08:30 �ű��ʵ��б� 
09:20 ����  
11:50 ����  
13:00 �Ͱ� 
==============================================================================================================

������������������� 2009.01.19(��) �۾� �����������������
---> 08:00 ~ 20:00   --> ����(EDMS��), �̰�����(��* ������) 

- �ϳ����� Prj
- �̹��� ���� ���� 
�Ʒ������� ��ȭ�� �� ���� 
�̹����������� 34��(��ǥ ����)�� �ִµ� EDMS������ 17�常 ���δٰ� �մϴ�.  
096B206EE04211DDAB630003BA0D8E19  ����1��5332862 EMP_NO: 1741120  
==============================================================================================================

- ����Ÿ �̰� 
SELECT * 
FROM F_SW.VWVQ14_INBOX A 
WHERE A.F_WOBNUM = '5E3E182E9B1B11DDAB600003BA0D8E19'  
--; 
------------------------------------------------------------------------------ 

-- CREATE OR REPLACE VIEW VWVQ14_INBOX 
(F_WOBNUM, F_WORKSPACEID, F_LOCKED, F_LOCKMACHINE, F_LOCKUSER,  
 F_LOCKTIME, F_LASTUSER, F_BOUNDUSER, F_BOUNDMACHINE, F_TAG,  
 F_UNIQUEID, F_OPERATIONID, F_WORKCLASSID, F_ENQUEUETIME, F_CREATETIME,  
 F_INSTRSHEETID, F_WORKORDERID, "F_TimeOut", "F_Subject", "F_Overdue",  
 "iwfDisplayLevel", "iwfNormal", "swfBankCode", "swfBranchCode", "swfMapId",  
 "swfPrevResponse", "swfPrevUser", "swfStepId", "swfCurGroup", "swfRoleCode",  
 "iwfPrimeWork", "swfScanOpId", "swfRejectYN", "swfMapVer", "iwfSeqNo",  
 "swfRouteInfo", "swfCurUserId", "swfOrderType") 
AS  
SELECT RAWTOHEX(F_WobNum) F_WobNum, F_WorkSpaceId, F_Locked, F_LockMachine, F_LockUser,  
F_LockTime, F_LastUser, F_BoundUser, F_BoundMachine, F_Tag, F_UniqueId, F_OperationId,  
F_WorkClassId, F_EnqueueTime, F_CreateTime, F_InstrSheetId, F_WorkOrderId,  
F_TimeOut "F_TimeOut", F_Subject "F_Subject", F_Overdue "F_Overdue",  
iwfDisplayLevel "iwfDisplayLevel", iwfNormal "iwfNormal", swfBankCode "swfBankCode",  
swfBranchCode "swfBranchCode", swfMapId "swfMapId", swfPrevResponse "swfPrevResponse",  
swfPrevUser "swfPrevUser", swfStepId "swfStepId", swfCurGroup "swfCurGroup",  
swfRoleCode "swfRoleCode", iwfPrimeWork "iwfPrimeWork", swfScanOpId "swfScanOpId",  
swfRejectYN "swfRejectYN", swfMapVer "swfMapVer", iwfSeqNo "iwfSeqNo",  
swfRouteInfo "swfRouteInfo", swfCurUserId "swfCurUserId", F_UF021 "swfOrderType"  
FROM F_SW.VWQueue14_344  
WHERE F_Locked < 2 AND F_QueueWPClassId = 1 WITH READ ONLY;  

- �ʵ� Ÿ�� ���� 
ORA-00997: illegal use of LONG datatype  
to_lob() �����Լ�: long�Լ��� lob�� ��ȯ  ===> �ȵ� 
==============================================================================================================

- SQL PLUS ���� 
����� �̸�(U): depo, ��ȣ(P): depo1, ȣ��Ʈ ���ڿ�(H): DBBPM1 
����� �̸�(U): depo, ��ȣ(P): depo1, ȣ��Ʈ ���ڿ�(H): DBBPM1_TEST 
����� �̸�(U): frexadm, ��ȣ(P): frexadm11, ȣ��Ʈ ���ڿ�(H): DBBPM1_TEST 
------------------------------------------------------------------------------ 

- COPY FROM 
COPY FROM �� SQLPLUS ��ɾ��̰�, ���� �ٸ� DB�� ���� ���̺��� �����͸� �״�� �����ϰ��� �� �� ��� 
(���̺��� ����Ҷ� ���� �ش� ���̺� BLOB,CLOB,LONG RAW,LONG�� �÷��� �ִٸ�)   

SQL> connect frexadm/frexadm11@DBBPM1_TEST 
����Ǿ����ϴ�.   
SQL> COPY FROM depo/depo1@DBBPM1  CREATE VWVQ14_INBOX USING SELECT * FROM F_SW.VWQUEUE14_344  
--;    
�迭�� ����/���ε� ũ��� 15�Դϴ�. (�迭 ũ��� 15) 
�۾��� �ϼ��Ǹ� Ŀ�Ե˴ϴ�. (���� �Ϸ�: 0) 
�ִ� �� ũ��� 80 �Դϴ�. (�� 80) 

ERROR: 
ORA-01727: ��ġ�� ���� ����(38 �ڸ� �̳�)�� �ʰ��߽��ϴ� 
------------------------------------------------------------------------------ 

- ��ġ �ʵ尡 126 �̿��� ������ ���� ������ ���� ��  ===> ���� 
CREATE TABLE VWQUEUE14_344 
( 
	F_UNIQUEID        FLOAT(126)                  NOT NULL, 
} 

SQL> SELECT COUNT(*) FROM VWVQ14_INBOX   --;     
==============================================================================================================

- VWQueueQuery ��� 
import filenet.vw.api.VWQueueQuery; 
vwQueueQuery = vwQueue.createQuery("F_WobNum", minValue, maxValue, 1+2+32+64, null, null, 1); 
C:\depo_project\lib\workflo\pw\filenet\vw\api\VWQueueQuery  ===> pw.jar 
 ==============================================================================================================

������������������� 2009.01.20(ȭ) �۾� �����������������
---> 08:50 ~ 20:00   --> �̱� 44�� ����� ���ٸ� ���� 

- �ϳ����� Prj
- �̹��� ���� ���� 
�Ʒ������� ��ȭ�� �� ���� 
�̹����������� 34��(��ǥ ����)�� �ִµ� EDMS������ 17�常 ���δٰ� �մϴ�.   
096B206EE04211DDAB630003BA0D8E19  ����1��5332862 EMP_NO: 1741120  
==============================================================================================================

- ���װ� ����, �뺸, �Ǻΰ�, �帲 �Ȱ�(����: ������) 
���װ� ȸ��: 4����, �������� 11���� ã�� ==> �������ݿ� 15���� �۱� �Ϸ� 
==============================================================================================================

- ��ƼŬ���� �Ǻΰ� ġ��(ȸ����ȣ: 0000823)  
http://www.beauty-classic.com 
- �帲 ���� �Ȱ� ġ�� 
http://www.hellolasik.com 
==============================================================================================================

������������������� 2009.01.21(��) �۾� �����������������
---> 07:50 ~ 20:00 

- �ϳ����� Prj
- �̹��� ���� ���� 
�Ʒ������� ��ȭ�� �� ���� 
�̹����������� 34��(��ǥ ����)�� �ִµ� EDMS������ 17�常 ���δٰ� �մϴ�.  
096B206EE04211DDAB630003BA0D8E19  ����1��5332862 EMP_NO: 1741120 
--------------------------------------------------------------------------------------------------------- 

- �̹��� ���(/DPB015WorkfloAction.java ����) 
public ActionForward detail(ActionMapping mapping, ActionForm form, 
            HttpServletRequest request, HttpServletResponse response) 
workfloJDAO.getImageInfo(workfloForm.getWorkObject());   // �̹�������  
} 

- �̹��� ���(/DpfiCommonJDAO.java ����) 
public final void getImageInfo(WorkfloModel workfloModel) { 
try { 
    strSql = new StringBuffer(); 
    strSql.append("SELECT B.FORM_NM FORM_NM,         \n"); 
    strSql.append("       A.FORM_CD FORM_CD,         \n"); 
    strSql.append("       NVL(A.IMG_DID,'') IMG_DID,  \n"); 
    strSql.append("       NVL(A.EIDX,'') IMG_DID2  \n"); 
    strSql.append("FROM COMM_CM_IMG A, COMM_CM_DOC B   \n"); 
    strSql.append("WHERE A.IMG_KEY = ?              \n"); 
    strSql.append(" AND A.UPMU_GB = '05'           \n"); 
    strSql.append(" AND A.DEL_YN <> 'Y'             \n"); 
    strSql.append(" AND A.FORM_CD = B.FORM_CD \n"); 
    strSql.append("ORDER BY B.FORM_ORD, A.IMG_SEQ ASC \n");  
}      

pStmt = dbcon.prepareStatement(strSql.toString()); 
pStmt.setString(1, StringUtil.checkNull(workfloModel.getImageKey()).trim()); 
resultSet = pStmt.executeQuery(); 

while (resultSet.next()) { 
if (!isPrint1  && resultSet.getString("FORM_CD").toString().equals("9-09-0002")) { 
imageList.add(new ImageInfoModel("< �۾��Ƿ� >", ""));  //���� ���� �߰�.. 
isPrint1 = true; 
} 
if (!isPrint2  && resultSet.getString("FORM_CD").toString().equals("5-08-0156")) { 
imageList.add(new ImageInfoModel("< �߼��̹���  >", ""));  //���� ���� �߰�.. 
isPrint2 = true; 
} 
if (!isPrint3  &&  
(   resultSet.getString("FORM_CD").toString().equals("5-08-1000")  
      resultSet.getString("FORM_CD").toString().equals("5-08-0157")  
    ) 
   )  
{ 
imageList.add(new ImageInfoModel("< ��ǥ,��ǥ,��Ÿ  >", ""));  //���� ���� �߰�.. 
isPrint3 = true; 
} 
String form_nm = resultSet.getString("FORM_NM"); 
if ( resultSet.getString("FORM_CD").toString().equals("5-08-0157") ) { 
form_nm += Integer.toString(supyoCnt); 
supyoCnt++; 
} 

ImageInfoModel imgModel = new ImageInfoModel( form_nm  ,  
StringUtil.checkNull(resultSet.getString("IMG_DID")) + StringUtil.checkNull(resultSet.getString("IMG_DID2")) ); 
   
imgModel.setFormCd( resultSet.getString("FORM_CD").toString() ); 
imageList.add(imgModel); 
} 

workfloModel.setImageInfo(imageList);  
} 

- �̹��� ����(/dpb015_detail.jsp ����) 
<select name="image" id="image" size="4" style="width:290;" onclick="viewImageDpfi(this.value)"> 
<logic:notEmpty name="DPB015WorkfloForm" property="workObject.imageInfo"> 
<logic:iterate id="imageInfo" name="DPB015WorkfloForm" property="workObject.imageInfo"> 
<option value="<bean:write name="imageInfo" property="imageId"/> 
~~<bean:write name="imageInfo" property="formCd"/>"> 
<bean:write name="imageInfo" property="formName"/> 
</option> 
  </logic:iterate> 
</logic:notEmpty> 
</select>  

- �̹��� ����(/dpcmscript.js ����) 
function viewImageDpfi(docId) {  // �̹��� ���� 
var strUrl = "/com/hana/depo/dpfi/common/dpfi_utils_imageview.jsp?did=" + strImagez +"&bkmark="+ arrParams[1]+"&frmcode="+ frmCD; 
 parent.hidden.location.href = strUrl; 
} 

- �̹��� ����(/dpfi_utils_imageview.jsp ����) 
HanaFxLink hdn = new HanaFxLink(); 
rs = hdn.getFile( did, drmUserName );  // did ==> docID: ex) fxedmD0000010n  
imagepath = (String)rs.get("path");  
status = (String)rs.get("STATUS");  

if ("0".equals(status))  
{ 
imagepath = imageDownLoadUrl + filename;  
} else if (status == null)  
{  
} else { 

%> 
<script language="javascript">alert("EDMS �������� �̹��������� �������� ���߽��ϴ�.");</script>   
<% 
} 
--------------------------------------------------------------------------------------------------------- 

- �̹��� ����(/dpb015_detail.jsp ����) 
function editImagePopup() {   //�̹��� ���� 
pop = window.showModalDialog("/com/hana/depo/dpb/sub/dpb015_edit_image.jsp", window, str);  
} 

<span class="btn05" onclick="editImagePopup()" style="cursor:hand">�̹�������</span><span class="btn_back"></span><br><br> 

/dpb015_edit_image.jsp ���� 
<body onLoad="init()" topmargin="5" leftmargin="0" marginheight="0" marginwidth="0"> 
<form action="/com/hana/scan/dpfi/scan_ImageIndexCall.jsp" method="post" name="frm" id="frm">   
</form>    
 �̹��� �������Դϴ�. 
</body> 

/scan_ImageIndexCall.jsp ���� 
<COMMENT id=__NSID__> 
<OBJECT ID="VisIndex" WIDTH=350 HEIGHT=95 CLASSID="CLSID:FD8305FF-A372-4BE0-A68E-F89E033F7FEF"> 
<PARAM NAME="CallProgramName" VALUE="VisImageIndex.exe"> <!-- ȣ���� ���α׷��� --> 
</OBJECT> 
</COMMENT>   
==============================================================================================================

- ���� ���� ���� 
invalid protocol version. the peer seem's to be not an OZServer. 
Please check the following URL of ozserver. 
http://111.15.1.7:5006/oz30/server/TOBE 
���� TOBE ==> /home/apps/dom_frex2/applications/oz35/repository_files  
connection_servlet=http://111.15.1.7:5006/oz30/server 
--> connection_servlet=http://111.15.1.7:5006/oz35/server 
==============================================================================================================

- ��ƼŬ���� �Ǻΰ� ġ��(ȸ����ȣ: 0000823) ==> 2��°, �� ��ȸ(���� ó��), ���װ� �μ� 
http://www.beauty-classic.com  
==============================================================================================================

������������������� 2009.01.22(��) �۾� �����������������
---> 07:50 ~ 20:30   --> �� ����(�ѿ츮 �Ż���: ������� Giftī��: 5����) 

- �ϳ����� Prj
- �̹��� ���� ���� 
�Ʒ������� ��ȭ�� �� ���� 
�̹����������� 34��(��ǥ ����)�� �ִµ� EDMS������ 17�常 ���δٰ� �մϴ�.  
096B206EE04211DDAB630003BA0D8E19  ����1��5332862 EMP_NO: 1741120 
==> ��ĵ�� ��ǥ ������ ��ĵ�� �Ǿ��µ� EDMS �������� ��ǥ �̹��������� ������ ���� �� �� 
       (�Ͻ������� EDMS ���� �̻��̳� ��Ʈ�� ��ְ� �־��� ������ ���� ��) 
Ŀ��������(���Ϳ�)(1��) + �����ŷ����������䱸��(���Ϳ�)(1��) + ÷�ι���(2��) + ��ǥ(16��) 
�����ŷ��������� ��ܹ߼۹��� ��ǥ(13��)  ===> ���� ��: 17��(��ǥ �̹��� �� ����) 
==> ���� �� ����: 33��(��ǥ �̹��� 16�� ����) 
==============================================================================================================

- �̹��� ���� ����(ocx) 
1. HanaBankImageEdit.exe ��ġ 
2. C:\EDMS\Image\DPA\VisIndexCall.ocx ���� �� ��� 
REGSVR32  C:\EDMS\Image\DPA\VisIndexCall.ocx 
3. C:\EDMS\Image\ImageEdit ���� ocx ���� �� ��� 
REGSVR32 C:\EDMS\Image\ImageEdit\imgedit.ocx 
==============================================================================================================

������������������� 2009.01.23(��) �۾� ����������������� 
---> 07:50 ~ 18:30   --> ����(������: �̰���), ����(��� ȣ����), �̰�����(��, ��) 

- �ϳ����� Prj
- �������Ҵ� ������ ǥ�� ��û 
�������Ҵ�(http://111.16.1.128/ad_reassign_AdminReassignTreeAction.do) 
--> �������Ҵ�(http://111.16.1.128/ad_reassign_AdminReassignAction.do) 
���� ������������ �����뺸, ������������ �뺸����� ��� "-"�� ǥ�� �Ǿ� ���� 

/AdminReassignDAO.java ���Ͽ��� 
public HashMap findReassignList(int currentPage, int countPerPage, String empNo, String prevEmpNo,  
     String roleCd, String masterBrcd) {  
if ( StringUtil.checkNull(rs.getString("DISUSE_YN")).equals("X") ) { 
reassign.setDisuse_yn("������");  
} 
else if ( StringUtil.checkNull(rs.getString("DISUSE_YN")).equals("Y") ) { 
reassign.setDisuse_yn("�ۼ��Ϸ�");  
} 
else { 
reassign.setDisuse_yn("������"); 
} 
} 

/admin_reassign_center.jsp ���Ͽ��� 
<logic:equal name="reassign" property="stepCd" value="004"> <!-- 1. ���������� ������������ ��Ÿ �̸� --> 
<logic:equal name="reassign" property="disuse_yn" value="������"> <!-- 1.1. ������°� ������ �̸� --> 
<td colspan="2"  bgcolor="#f6e690" class="top_5 bottom_3 center"><bean:write name="reassign" property="disuse_yn"/></td> 
</logic:equal> 
<logic:notEqual name="reassign" property="disuse_yn" value="������"> <!-- 1.2. ������°� �������� �ƴϸ� --> 
<td colspan="2" class="top_5 bottom_3 center"><bean:write name="reassign" property="disuse_yn"/></td> 
</logic:notEqual> 
</logic:equal>  
<logic:notEqual name="reassign" property="stepCd" value="004"> 
<!-- 2. ���������� ������������ ��Ÿ�� �ƴϸ�(������������ �����뺸, ������������ �뺸���) --> 
<td  width="60" colspan="2"  class="top_5 bottom_3 center">-</td> 
</logic:notEqual>  
--------------------------------------------------------------------------------------------------------- 

-- �ۼ� ���� ��ȸ 
SELECT WF_NO, DISUSE_YN --�۾���������(null:ó��, E:������, D:�۾�����, N:������, Y:�ۼ���(�뺸����� �ۼ��Ϸ�:å���� ��Ű���))   
FROM DEPO_INF_ETL_NTF G --�ۼ� ���� ��� Table 
WHERE G.WF_NO IN ('41D9112E288011DDA64D0003BA29841F') 
--;  
==============================================================================================================

-- �������뺸(�������뺸 ��ȸ_�μ�) ��ȸ @@@@@   ===> �������뺸 ����Ÿ �����  
SELECT G.WF_NO, G.NM, G.SSN_BIZ_NO, G.OFFER_DATE AS ���������, G.ZIPCODE AS �����ȣ, G.ADDR1, G.ADDR2 
-- SELECT COUNT(*)   
FROM DEPO_WF_NM_NTF G  
WHERE G.WF_NO IS NOT NULL 
AND G.NTF_YN = '1'    --�뺸����(1:�뺸, 2:�뺸���, 3:������, 4:����Ϸ�, 5:���뺸)   
AND G.OFFER_DATE = '20090107' --���������    
-- AND G.ZIPCODE > '550786'     --�����ȣ 
ORDER BY G.OFFER_DATE DESC 
--;   
------------------------------------------------------------------------------------------------------ 

-- �����뺸���� ��ȸ   ==============> TEXT�� ����Ÿ ���� -->  DIX:58554, 58555   
SELECT IDX, A.POST_NUM AS �����ȣ, A.NM AS ����, A.POST_STATUS AS �뺸����, A.POST_NO AS ����ȣ,  
      NTF_DATE AS �뺸����, OFFICIAL_DOC_NO AS ���ð���, A.RET_DATE AS �ݼ���, INPUT_DATE,  
   A.EXCEL_UPLOAD_DT AS ����_������� 
-- SELECT COUNT(*) 
FROM DEPO_WF_RET_NTF A 
-- WHERE A.POST_STATUS ='00'  --POST_NO(����ȣ)  
WHERE A.IDX IS NOT NULL 
   AND A.POST_STATUS IN ('20')   --�뺸����(00:������ �뺸(�ٿ�ε���), 10:�����ٿ�ε�,  
20:������ �뺸(+����ȣ), 99:��⼭�� �ݼ�)  
   -- AND A.INPUT_DATE = '20090105'  --�������  
   AND A.EXCEL_UPLOAD_DT = '20090107'  --����_������� 
   --AND A.IDX IN ( '57091', '57093')     
ORDER BY A.IDX 
--;   
==============================================================================================================

- Flex 
��� �÷���, 2004�� ��ũ�ι̵� ���Ͽ� ������� ��ġ���ͳݾ��ø����̼��� �����ϱ� ���� ��� 
==============================================================================================================

- ���� ��Ӵٿ� �ڽ� ����(�޺��ڽ�, ����Ʈ �ڽ�) 
����Ÿ(D) --> ��ȿ�� �˻�(L) --> ����Ÿ ��ȿ�� 
���Ѵ��(A): ���, ��Ӵٿ� ǥ��(I): üũ 
����(S): ����,����Ұ�(TFT),����Ұ�(������),�̰��� 
==============================================================================================================

- ���� ��Ӵٿ� �ڽ� ����(�޺��ڽ� + �޺��ڽ� + �޺��ڽ�) 
1. �޺��ڽ� ���������� ����� ����ǥ�� �־�߰���  
Sheet1 ����� 
2. Sheet2�� ������ ����� ��������ϴ�  
�޺��ڽ��� �޴����� [���� - �������� - ���]���� ���� �ֱ���   
���ϴ� ������� ����� �ٸ��ּ��� 
�״��� �� �޺��ڽ��� ���콺 ���������� ������ [��Ʈ�Ѽ���(F)]���� ���ϴ�  
�׸��� [�Է¹���]�� [������]�� �Ʒ� �׸�ó�� �Է��� �ݴϴ�  
�Է¹����� �޺��ڽ��� Ŭ���ϸ� ������ �����۵��� �ִ� �����̰�  
�������� �޺��ڽ��� �������� �����ϸ� ��ȯ�Ǵ� [�ε���]�� ��ϵ� ���Դϴ�  
INDIRECT�� �ؽ�Ʈ�� ������ ���������� ������������ �Լ�����  
C7�� 2�̹Ƿ� =INDIRECT("Sheet1!F"&C7+1)�� =INDIRECT("Sheet1!F3")�� �Ǵ°��� 
=INDIRECT("Sheet1!B"&C3+1)  --> �ܰ� 
=INDIRECT("Sheet1!D"&C5+1)  --> �ܰ�2 
=INDIRECT("Sheet1!F"&C7+1)  --> �ܰ�3 
==============================================================================================================

- ��ӹ��� ������ ���� 
2009.01.25(��) 06:50  ���� -> ���� ��� 29,400��(���) 
2009.01.27(ȭ) 24:00  ���� -> ���� �ɾ߿�� 32,300��(���) 
���꼾Ÿ: 02)536-6460~3 
- ��ӹ��� �뼱(������ -> ����͹̳�): 643��, 8541��, 5413�� 
==============================================================================================================

������������������� 2009.01.28(��) �۾� �����������������
---> 07:50 ~ 19:00   --> ����� ����(����, ���帶��), �̰�����(1���� ö�� ����) 

- �ϳ����� Prj
- �������Ҵ� ������ ǥ�� ��û 
�������Ҵ�(http://111.16.1.128/ad_reassign_AdminReassignTreeAction.do) 
--> �������Ҵ�(http://111.16.1.128/ad_reassign_AdminReassignAction.do) 
���� ������������ �����뺸, ������������ �뺸����� ��� "-"�� ǥ�� �Ǿ� ����  
==============================================================================================================

������������������� 2009.01.29(��) �۾� �����������������
---> 08:50 ~ 20:00  --> ������ ����(������):14��(4���� 2����): �� 15���� --> 152,100��(DC20%) (��ƼŬ���� �Ǻΰ�: �۹���) 

- �ϳ����� Prj
- ��ȯEDMS ����Ÿ ���� ���� �۾� 
��ȯEDMS����Ÿ�����ڷ�_�ڼ���.xls 
==============================================================================================================

- ����ó 
(��)3rdinfo ������ ����(*, *@*.*)(���缺PM �Ұ�) ==> ��ȭ ��ȭ �� 
(��)SK C&C ���¿� ����(*) ==> ��ȭ ��ȭ �� 
--------------------------------------------------------------------------------------------------- 

- �̷¼� ����(�̸���) 
1. ������� ���ž��� ���� ������Ʈ(���� ���� �����ϳ� ������� ������ �ʼ� ����) 
- Java JSP,Servlet ���� ������ �߱� 2�� 
- 2009.02.02 ~ 2009.08.31 ���� 7���� ������Ʈ 
- ��� 08:30 ~ ��� 22:00 �ٹ� ������ ���� �Ҽ� �ִ� �и� ���� �ϼ���. 
��ü�� : ������ ����� ����(*@*.*): * 
Ȩ������ : www.solintech.co.kr 

2. �츮���� IFRS���� ������Ʈ 
-�Ⱓ : 2���߼�~ 12���� 
-�ο� : 100�� ���� 
-��ų : java,ȸ����� ������Ʈ ������ 
��ü�� : �ٸ��������(��) ��ȣ�� ��(*@*.*)  
Ȩ������ : www.dareun.co.kr 
==============================================================================================================

������������������� 2009.01.30(��) �۾� �����������������
---> 08:10 ~ 18:00   --> �̰�����(Prj ö��, LCD ������ �����: �ý�) 

- �ϳ����� Prj
- �������Ҵ� ������ ǥ�� ��û 
�������Ҵ�(http://111.16.1.128/ad_reassign_AdminReassignTreeAction.do) 
--> �������Ҵ�(http://111.16.1.128/ad_reassign_AdminReassignAction.do) 
���� ������������ �����뺸, ������������ �뺸����� ��� "-"�� ǥ�� �Ǿ� ���� 
==============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������