

�����������������������������������������������������������
+---------------------------------------------// Memo(2008.12) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2008.12.01(��) �۾� �����������������
---> 07:50 ~ 21:30 

- �ϳ����� Prj
- ��ܱ���뺸 
���������۾� 
��ܱ���뺸(http://127.0.0.1:9002/DP015_Workobject.do?workObjectId=37B1CD8CBA8811DCA63D0003BA29841F&queueName=Inbox&method=detail&)  
÷�ι��� ÷���ϱ�(http://127.0.0.1:9002/dpfi_LegacyInfoPublish.do?method=uploadRequest&imgKey=05150096500000130020080104144724516)  
÷�ι��� ÷�� ����(/dpfi_AttachFileUpload.do?method=upload)    
==============================================================================================================

- 16. ������������ eMail �߼۰��� ������û_�뷮���� �ٿ�ε�� ����. 
-STATUS: LCT 
-DATE: 2008-11-11 
-�ݿ�������:  
-�޴� : �䱸����������� > RECORD CLICK! > ��ܱ���뺸 
-���� : 
�̸��� �߼����� �ۼ��� �ڷ� ����� 20MB�� �Ѵ� ��� SPAM BROKER�� ���� ���ܵ�. 
�ڷ� ����� 20MB�� �Ѵ� ��� `�뷮 ���� �ٿ�ε�`�� ���� 

÷������ ����� 20MB�� �ʰ��Ͽ����ϴ�.  [09. ��뷮 ���� �ٿ�ε�]�� �̿��� �ֽʽÿ�.  
  
- /MailSender.java ���Ͽ��� 
System.out.println("passwdzip.length() : "+passwdzip.length()); //test+++ 

long twentyMegaByte = 1024 * 1024 * 20; // 20Mbyte 
if (passwdzip.length() > twentyMegaByte) { 
setErrCode("2"); 
setErrMsg("20Mbyte �̻��� ÷���� �� �����ϴ�."); 
throw new RuntimeException(getErrMsg()); 
}  
------------------------------------------------------------------------------------------------------------------- 
  
- /dpb015_detail.jsp ���Ͽ���   
<img src="<bean:message key="image.url"/>/button/registration_ok_s3.gif" width="48" height="17" hspace="2" onclick="doneWithUpload()"> 
÷�οϷ�  ==> Ŭ���ϸ� 

function doneWithUpload() {     //÷�οϷ� �̸� 

}   
------------------------------------------------------------------------------------------------------------------- 

<img id="pub_img" src="<bean:message key="image.url"/>/button/send_s.gif"  align="absmiddle" onclick="publishing()"> 
�߼� ==> Ŭ���ϸ� 
	function publishing(  ) {  //�߼� �̸�(��ܱ���뺸) 
		new Ajax.Request('/dpfi_LegacyInfoPublish.do?method=publish', '');
	} 
}  
  
- /DpfiLegacyInfoPublishAction.java  ���Ͽ���   
public ActionForward publish(ActionMapping mapping, ActionForm form, 
	HttpServletRequest request, HttpServletResponse response) { 

	if(executeImageDownload(imageList, fullPath, userAccount.getEmp_no())) {  
		wb = legacyJDAO.createWorkbook(wob, fullPath, userAccount.getEmp_no(), userAccount.getEmp_nm(), hostListMap); 
		
		if(wb!= null){ 
			result = mailSending(imageKey,mailTo,subject ,contents.toString(), fullPath,faxNo); //÷������ ����� 20Mb�� ���� ��� "2"     

			if(result.equals("2")) {    
				result = "false÷������ ����� 20MB�� �ʰ��Ͽ����ϴ�.  `��뷮 ���� �ٿ�ε�`�� �̿��� �ֽʽÿ�. ";  
			} 
		} 
	} 
} 
   
private String mailSending(String imageKey, String to,  String subject ,String contents, String fullPath, String tel) {  
	if(file.isDirectory()){ 
	fileList = file.list(); 
	for(int i = 0; i < fileList.length;i++){ 
	String tmp = fileList[i];   //���ϸ�  
	tmp = tmp.substring(tmp.lastIndexOf(".") + 1,tmp.length());  //Ȯ���� 
	   
	if (tmp.equals("������������ ����.zip" )) { 
	continue; 
	} 
	if(!tmp.toUpperCase().equals("EXE")) ms.addFile(new File(fullPath +  fileList[i])); 
	} 
	} 
	if(!ms.send()) result = ms.getErrCode(); 

	return result; 
} 
------------------------------------------------------------------------------------------------------------------------------ 
  
var attch_file_size = $F('workObject.info_offer_mtd_cd');  	// ÷������ ũ�� 
if (pubMthd == "05" && attch_file_size > 20) {  	// ���ͳ� �̸�(����) 
	alert("÷�� �̹����� 20MB �̻��̸�  9.��뷮�� �ٿ�ε带 �̿��� �ֽñ� �ٶ��ϴ�."); 
	return false; 
}   
==============================================================================================================

- ������ ���� 
/depo_project/src/depoEar/depoWebApp/com/hana/depo/dpb/body/dpb050_list.jsp 
/depo_project/src/depoEar/depoWebApp/com/hana/depo/dpb/body/dpb050_request.jsp  
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpb/action/DPB050WorkfloAction.java 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpb/form/DPB050WorkfloForm.java 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfi/dao/DpfiLegacyInfoPublishJDAO.java  
==============================================================================================================

- Orange���� DB ����(������4) 
1. ������ ����(���콺�� ���ϴ� ���� ����) 
2. Action --> Run Selection(Ctrl + L) 
==============================================================================================================

- ��ĵ URL 
URL(AS IS)  --> http://111.15.1.4:5006/scanFxLogin.do 
URL(TO BE) --> http://111.15.1.7:5006/scanFxLogin.do 
0000130/036   ===> ������ȣ: hana123  
==============================================================================================================

- map �̹��� �۾� 
DP015_������������_��Ÿv1.0 DP020_������������_�������ڷ��ûv1.0  
DP030_������������_�����뺸v1.0 DP040_������������_������v1.0 
DP050_������������_�뺸������v1.3 
==============================================================================================================

- �������� ���� ���̺� 
DEPO_WF_MASTER(������ Table), DEPO_WF_DETAIL(�������� Table) 
DEPO_INF_ETL_NTF(�ۼ� ���� ��� Table), DEPO_WF_NM_NTF(�뺸����ڵ� Table) 
DEPO_WF_NTFCOST(�뺸������ Table), DEPO_ITEMS_SLT(��� �ʵ� ���� Table) 
DEPO_WF_HOSTDATA2(��Ÿ CRM���� Table), DEPO_WF_HOSTDATA1(����,����,����,��ȭ ���� Table)  
DEPO_WF_HOSTDATA3(Ÿ�ý��ۿ��� Table),   
DEPO_WF_HOSTDATA4(�뺸����� Table)  ==> �뺸����� �ӽ� ������ �ϴ� Table  
DEPO_WF_HOST_ACCT(�������� Table), DEPO_WF_RCPT_DETAILS(�������� ��Ͽ� Table) 
DEPO_WF_RET_NTF(�߼۳��� Table), COMM_CM_HISTORY(����_CM_�̷� Table)  
COMM_CM_SAM_HISTORY(������ ��ǥ���� Table), COMM_CM_URL_HISTORY(�ۼ��� ���� ��û���� Table)   
COMM_CM_HISTORY(����_CM_�̷� Table) COMM_CM_URL_FUNC(�����Լ� Table) 
COMM_CM_JIKMU_EMP(������ ����� Table) COMM_CM_JIKMU(�������� Table) 
COMM_CM_BUJE_LOG(���� �α� Table) COMM_CM_USER(�������� Table) 
COMM_CM_USER_ROLE(����ں� ���� Table) 
COMM_CM_MENU(�޴���� Table)   
COMM_CM_PROGRAM(���α׷���� Table) COMM_CM_PROGRAM_ROLE(���α׷� �� Table)  
==============================================================================================================

- �Ż�����ȸ ȸ�� ���� 
���� 465101-01-187230   ������: ���Ͽ�  ==> 24����(2008�� ��) 
==============================================================================================================

- ����Ʈ��(nate On) ���̵�(�̸���): * 
����ȭ ����: *@*.* *(*) 
���� ����: *@*.* 017-228-6646(*) 
���¿�: *@*.* 010-2846-2776(*) 
��ȣ��: *@*.* 016-402-5479(*) 
Ȳ����: *@*.* 010-6848-2000(*) 
==============================================================================================================

������������������� 2008.12.02(ȭ) �۾� �����������������
---> 07:50 ~ 20:00   --> ������(�̰���): �̰���(18��°) ==> ��ȭ �� �޾Ƽ� ã�ư�(��㿡 ����) 

- �ϳ����� Prj
- �����ڵ�ϰ��� �������� 
�������(http://111.16.1.128/ad_bujelog_AdminBujeLogListAction.do) 
������(http://111.16.1.128/ad_bujeinput_AdminBujeInputAction.do?method=inputList) 
��������(http://111.16.1.128/ad_bujelog_AdminBujeLogAction.do?method=releaseAdminBujeLog&bujeEmpNo=1810521)  
�����ڼ���(http://111.16.1.128/CmBujeDajicAction.do?method=list&title=�����ڼ���&empNo=1710283) 

COMM_CM_JIKMU_EMP(������ ����� Table) COMM_CM_JIKMU(�������� Table) 
COMM_CM_BUJE_LOG(���� �α� Table) COMM_CM_USER(�������� Table) 
------------------------------------------------------------------------------------------------ 

--- �������� Į�� �߰�  --------- 
ALTER TABLE COMM_CM_BUJE_LOG ADD (  
DEJIK_DT CHAR (8), --�������� 
DEJIK_DT2 CHAR (8) --��������2 
); 
------------------------------------------------------------------------------------------------ 

- /admin_buje_input_list.jsp ���Ͽ��� 
<SCRIPT LANGUAGE="javascript" SRC="<bean:message key="script.url"/>/CoCalendar_2.js"></SCRIPT>  
<script language="JavaScript"> 
<!--   
var cal2 = new CalendarPopup();   // Calendar �ٽ� ���� 
cal2.ShowYearNavigation(); 
//--> 
</script> 

<html:text name="bujeInput" property="dejik_dt_fr" size="10" maxlength="10" />  <-- �������� -->  
<IMG SRC="<bean:message key="image.url"/>/button/date.gif" ALIGN="absmiddle" CLASS="hnd"  
onClick="cal2.Select(document.adminbujeInputForm.dejik_dt_fr, 'dejik_dt_fr', 'yyyy-MM-dd')"> 
------------------------------------------------------------------------------------------------ 
  
/depo_project/src/depoEar/depoWebApp/com/hana/depo/admin/body/cm_buje_dajic.jsp 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/common/admin/action/CmBujeDajicAction.java  
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/common/admin/form/AdminBujeInputForm.java  --> ����  
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/common/admin/model/AdminBujeInputModel.java 
==============================================================================================================

������������������� 2008.12.03(��) �۾� �����������������
---> 08:30 ~ 21:30 

- �ϳ����� Prj
 - ������������ �䱸�����������(http://127.0.0.1:9002/dpfi_ProviderInformList.do) 
 - ��ܱ���뺸(http://127.0.0.1:9002/DP015_Workobject.do?workObjectId=37B1CD8CBA8811DCA63D0003BA29841F&queueName=Inbox&method=detail&)  
�䱸��� ����������� ����: ���ͳ�: /÷������ ����� 20MB �ʰ� �̸� --> ���� �߼� �Ұ�   
[WF_NO]37B1CD8CBA8811DCA63D0003BA29841F  ==>  9999999  --> 0000135(�������) 

 - /dpb015_detail.jsp ���Ͽ���   
 <img id="pub_img" src="<bean:message key="image.url"/>/button/send_s.gif"  align="absmiddle" onclick="publishing()"> 
�߼� ==> Ŭ���ϸ� 
function publishing(  ) {  //�߼� �̸�(��ܱ���뺸) 
new Ajax.Request('/dpfi_LegacyInfoPublish.do?method=publish',  
{ 
var tmp = response.split(''); 
if(tmp[0] == 'false' && tmp[1] != ''){   //÷������ ����� 20MB �ʰ� �̸�   
if(confirm('���� �߼� �� ÷������ �뷮�� 20MB �̻��� ÷�εǾ� �߼��� ���� �߽��ϴ�.\n  
��뷮 ���� �ٿ�ε带 �����Ͻðڽ��ϱ�?')){ 
$('workObject.info_offer_mtd_cd').selectedIndex = 9;   //09. ��뷮 ���� �ٿ�ε� �޺� �ڽ�  
} 
}  
} 
}  
------------------------------------------------------------------------------------------------------ 
   
 - ������ ���� 
/depo_project/src/depoEar/depoWebApp/com/hana/depo/dpb/body/dpb015_detail.jsp 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfi/action/DpfiLegacyInfoPublishAction.java 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfi/dao/DpfiProviderInformListJDAO.java 
==============================================================================================================

- 10���� ��������EDMS ����ڷ� 
��������EDMS �����Ǽ�: 3,244 �� 
��������EDMS �뺸�Ǽ�: 3,903 ��   
==============================================================================================================

-- FILE NET Workplace(BPM) 
1. http://111.18.1.56:8080/WorkplaceDP   ==> peadmin / peadmin 
2. Admin ==> Process Administrator ==> Workplace(��â ����) 
Search 
Look for: Workflows 
Value: 37B1CD8CBA8811DCA63D0003BA29841F -> Insert: Ŭ��-> Find Now: Ŭ�� 
����Ÿ: ���콺 ������ Ŭ��(Open Item -> Tracker) --> Open Tracker 
------------------------------------------------------------------------- 
3. �ݼ� 
007_�������(Status�� In Process �̸�) Ŭ�� ==> Complete Work(�׸�üũ �̹���) Ŭ�� 
Response: �ݼ� -> Applay -> OK 
==============================================================================================================

- ���� ���� �ڷ� ���� 
KBLCM.zip�� ������ ����(mymap.*@*.*)���� ����(����ȭ ����) 
���¸� *@*.* 
==============================================================================================================

������������������� 2008.12.04(��) �۾� �����������������
---> 08:00 ~ 19:10  --> �̽��� ���� ����(������), �ϳ����� ����ī�� ��� ����(2����), ����� ����(�����, ����,����) 

- �ϳ����� Prj
 - ������������ �䱸�����������(http://127.0.0.1:9002/dpfi_ProviderInformList.do) 
 - ��ܱ���뺸(http://127.0.0.1:9002/DP015_Workobject.do?workObjectId=37B1CD8CBA8811DCA63D0003BA29841F&queueName=Inbox&method=detail&)  
�䱸��� ����������� ����: ���ͳ�: /÷������ ����� 20MB �ʰ� �̸� --> ���� �߼� �Ұ�   
[WF_NO]37B1CD8CBA8811DCA63D0003BA29841F  ==>  9999999  --> 0000135(�������) 
==============================================================================================================

- �뺸�����Ⱓ 6���� ����  
--�뺸�����Ⱓ ����(�������� ������)  @@@@@@@@@@@@@   
UPDATE DEPO_WF_DETAIL  
SET  GET_TIME='20090610',    --�뺸���� 
GET_TIME_ASSIGN='6'   --�뺸��������(0: ����, 1:1����, 2:2����, 3:2����, 6:����) 
WHERE WF_NO='34DA1AEE35EC11DDAB4F0003BA0D8E19' 
   
--�뺸�����Ⱓ ����(����_WF_������)  @@@@@@@@@@@@@   
UPDATE DEPO_WF_MASTER  
SET NTF_DATE='20090610'   --�뺸������  
WHERE WF_NO='34DA1AEE35EC11DDAB4F0003BA0D8E19'  
==============================================================================================================

- SCGetGrade ���� 
/dpb015_report.jsp ���Ͽ��� 
//var isAuthOK  = SCGetGrade.IsAuthority("HNBK-76CA-7191-3670-0001","0000027", "3","����������������");  
var isAuthOK  = "1" //TEST 
==============================================================================================================

- ���������ۼ� ����Ʈ ��ȸ(������ ����) 
������������ Ÿ�ý��� ����(http://127.0.0.1:9002/DP015_Workobject.do?method=mgrpop&gubun=X&pop=crm) 
/dpb015_crm.jsp 
������ �ŷ�����  ==>  ��  �����·� �Ⱓ�� �ŷ����� ��ȸ: üũ 
COMM_CM_URL_HISTORY  
���豸��(fetch_gubun) ==> (08:�������ŷ�����, 21:����, 22:����, 23:��ȯ, 24:��������) 
==============================================================================================================

������������������� 2008.12.05(��) �۾� �����������������
---> 08:00 ~ 19:00  --> �λ꺹��(�湫�ο� ��ó), ����(������, �ڰ���, �ɰ���, ������, �ϳ����� �ֱ��� �븮), �¿��ڰ� �� 

- �ϳ����� Prj
- �������� ��ɰ��� �����Ȳ �� �׽�Ʈ(���� �׽�Ʈ) 
1) �뺸���->������ ���������ۼ��� �������� 
2) �뺸��� �����ٿ�ε� �������� 
3) �뺸��� ������ ��ɰ��� 
4) ������ �뺸��� ���� 
5) ������ ������ȣ �̻��� Ȯ�ο�û 
-> ������ȣ�� ����� �����Ǹ� ��û�Ͻ� ���� �������� ������ Ȯ���Ͽ����ϴ�. 
��ü ��������� ������ȣ�� �������� ���� ��� �����Ͽ����� ������ȣ �̻������� Ȯ���ϱ� ���� 
�α׸� �������.  
6) ��ǥ �� ������ ��û��� �� �Ϸ���� ��û����Ʈ���� ����  
==============================================================================================================

---  Į�� �߰�  --------- 
ALTER TABLE COMM_CM_BUJE_LOG ADD (  
DEJIK_DT CHAR (8), --�������� 
DEJIK_DT2 CHAR (8) --��������2 
); 
----------------------------------------------------------------------- 

--  Į�� ����  --------- 
ALTER TABLE COMM_CM_BUJE_LOG MODIFY (  
   CART_DT CHAR(8)   --��ٱ��� ���� 
 ); 
----------------------------------------------------------------------- 

 --- Į�� ����  --------- 
ALTER TABLE COMM_CM_BUJE_LOG  DROP COLUMN CART_DT RETURNACCEPTDATE  
-- ; 
==============================================================================================================

- ��ȭ ���� 
����ö �ƹ��� ��: ��ȭ ����(6�� 3õ��) 
��������: ���� �ﰡ������ ���� ���ϴ�.(��� �ȳ� �̹��� ó�� �Ϻ� ���ڷ� ���) 
�޴� ��: *  �޴� ����:��� 
���׽� ���� ���ᵿ 270-1 ���� ���𺴿� ���Ƚ� ����ö  
�θ�Ի�: 50����(43���� �۱�) 
����: 717109-52-027262( 71710952027262 ) ������: ������(�ֳ����� ����) 43���� �۱� 
==============================================================================================================

������������������� 2008.12.06(��) �۾� �����������������
---> 09:40 ~ 18:00---> ���ٹ� ���� �(����: ���޿� ������� ����), �̰�����(19��°): ���� �簨 

- �ϳ����� Prj
 - ������������ �䱸�����������(http://127.0.0.1:9002/dpfi_ProviderInformList.do) 
 - ��ܱ���뺸(http://127.0.0.1:9002/DP015_Workobject.do?workObjectId=37B1CD8CBA8811DCA63D0003BA29841F)   
- ����������� ���ͳ�(Email)���� ��뷮 ���� �ٿ�ε�� ���� 
UPDATE DEPO_INF_ETL_NTF   
SET  INFO_OFFER_MTD_CD = '09', --�����������(01.������, 02:�Ϲݿ���, 03:FAX, 05:���ͳ�(Email), 09:��뷮 ���� �ٿ�ε�) 
INFO_OFFER_MTD_SUMM = NULL  
WHERE WF_NO =  '37B1CD8CBA8811DCA63D0003BA29841F' 
AND INFO_OFFER_MTD_CD = '05'   
--; 
==============================================================================================================

- �ݼ۳��� �뷮���� UPLOAD ��� 
�����뺸����(http://127.0.0.1:9002/dpfi_ReturnNtfInform.do?method=main)  
1. �ϳ����� ���� ���ε�(/dpfi_return_ntf_file_upload.jsp) 
2. /DpfiReturnNtfFileUploadAction.java ���Ͽ��� 
public void processUploadedFileItem(HttpServletRequest request, FileItemStream item) {  
batchquery = makeNtfQuery();   //�����뺸���� �����ϴ� �Լ�(3.������ �뺸(+����ȣ)�� ����) 
pstmtUp = workfloJDAO.getConnection().prepareStatement(batchquery ); 

// �ߺ� Ȥ�� �����Ͱ� �ִ��� Ȯ��   
String query = "SELECT COUNT(IDX) X FROM DEPO_WF_RET_NTF   \n";  
query += " WHERE TRIM(POST_NUM) = ?          \n";   //�����ȣ 
query +=  "    AND TRIM(NM) LIKE ?          \n"; //����  
query +=  "    AND POST_STATUS IN ('00','10') ";  
log.debug("[processUploadedFileItem()] [query]"+ query); 

ResultSet rs = pstmt2.executeQuery(); 

if (rs!= null && rs.next()) {  
int xCnt = rs.getInt("x"); 
log.debug("[processUploadedFileItemReturn()] [�ߺ� ����Ÿ ��(�ݼ�)] ==> [xCnt]"+ xCnt); 

if (xCnt ==1>  {   //idx���� 1�̸�(���� idx�� 1���� ���� ==> ����ȣ�� ������Ʈ �� �� ����)  
pstmtUp.setString(idx++, afterRow[4]);  //����ȣ 
//pstmtUp.setString(idx++, afterRow[6]);  //���� �������  
pstmtUp.setString(idx++, "20081206");  //���� �������(20081206) 
pstmtUp.setString(idx++, afterRow[1]);  //�����ȣ 
pstmtUp.setString(idx++, afterRow[2]+"%");  //����   

pstmtUp.addBatch(); 
} 
}  
} 

private String makeNtfQuery() {   
sql  = "  UPDATE DEPO_WF_RET_NTF \n"; 
sql += "  SET   POST_NO = NVL(?, ' '),     \n";   //����ȣ 
sql += "     EXCEL_UPLOAD_DT = ?, \n";   //���� ������� 
sql += "      POST_STATUS = '20'       \n"; //�뺸����(20: 3.������ �뺸(+����ȣ)) 
sql += "  WHERE TRIM(POST_NUM) = ? \n";  //�����ȣ 
sql += "   AND TRIM(NM) LIKE ?          \n"; //����  
sql += "    AND POST_STATUS IN ('00','10')   ";  
log.debug("[makeNtfQuery()] [sql]"+ sql); 

return sql; 
}  
---------------------------------------------------------------------------------------------------------- 

- ������ ����(2,059���� ������ ������ ��) 
��������: 2008. 12. 9. ���� 8�� 14�� 24�� KST> <Warning> <WebLogicServer> <BEA-000337>  
<ExecuteThread: '14' for queue: 'weblogic.kernel.Default' has been busy for "648" seconds working on the  
equest "Http Request: /dpfi_ReturnNtfFileUpload.do",  
which is more than the configured time (StuckThreadMaxTime) of "600" seconds.>  
����: �ش� �޼����� /media//visual.swf ��� ��û�� ������ 10��(600��)�����̳� ������ �ʾҴٴ� ���̰�, 
������ Thread�� ���ٴ� ���� ��Ÿ���ϴ�. �׷���, �� �޼��������� Ȯ���� �� �ִ� ������ ����� 
�����ϴ�.   
Thead time out ������ ���� ���� �ִ� ��, �̰��� Stuck Thread Max Time �̶� �ϰ� default ���� 600���Դϴ�..  
�����ϰ� �������ڸ�, �ϳ��� thread�� �ϳ��� request�� �ް� ���� ó���� �ϴ� ��..�� �ð��� 600�ʰ�  
�Ѿ�� �ֽ� ������ ���� �αװ� ��Ÿ���� �˴ϴ�. ������������ �̷� ��� thread�� refresh ���ִ�  
����� ���� ������, ���� �̷��� �ð��� ���� ����, �α� �󿡼� warning�� �����ְ� �˴ϴ�. 
�ƽð� ��ð�����, hang ���¿����� thread dump�� �����ؼ� � application���� hang�� ������ ����  
Ȯ���� �ϴ� ���� ����, �ִ��� ���� �������� �籸���ϴ� �� ���� ���� ��ġ ����Դϴ�. 
�ذ�å: �Ǽ��� 2,000���� ��� ������ ��(���α׷� ���� �ð��� 10���� �ȳѰ� �� ��) 
==============================================================================================================

������������������� 2008.12.07(��) �۾� ����������������� 
---> 08:50 ~ 22:30  
 
- �̰�����
07:00 ���(����1�� �̰�����): ������ ==> �౸ ��� ì�� �Դµ� �౸�Ϸ� �� �� 
13:00 ����(�˵���): ���
14:00 �ٶ��� ȭ��(����): 2ȸ
16:00 ��ȭ �ٿ� �޾� ��
22:40 �̰����� ���(���� ���� �� ��� ��)
23:50 �Ͱ�
==============================================================================================================

������������������� 2008.12.08(��) �۾� �����������������
---> 08:50 ~ 22:30  --> �ʰ� �Ͼ �� �°� ��� 

- �ϳ����� Prj
- ��޹ݿ� ��û 
���_����_�_���¸�_20081208_01.xls 
==============================================================================================================

- ��޹ݿ� ��û ���� 
/depo_project/src/depoEar/depoWebApp/com/hana/depo/dpb/body/dpb015_detail.jsp 
/depo_project/src/depoEar/depoWebApp/com/hana/depo/dpb/body/dpb050_list.jsp 
/depo_project/src/depoEar/depoWebApp/com/hana/depo/dpb/body/dpb050_request.jsp 
/depo_project/src/depoEar/depoWebApp/com/hana/depo/dpb/body/dpb050_appv.jsp 
/depo_project/src/depoEar/depoWebApp/com/hana/depo/dpb/body/dpb050_list_excel.jsp 
/depo_project/src/depoEar/depoWebApp/com/hana/depo/dpb/body/dpb060_list_excel.jsp 
/depo_project/src/depoEar/depoWebApp/com/hana/depo/dpb/body/dpb070_list_excel.jsp 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpb/action/DPB050WorkfloAction.java 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpb/form/DPB050WorkfloForm.java 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpb/dao/DPB050WorkfloJDAO.java 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpb/dao/DPB060WorkfloJDAO.java 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfi/action/DpfiLegacyInfoPublishAction.java 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfi/dao/DpfiLegacyInfoPublishJDAO.java 
==============================================================================================================

- CRM ��ȸ ��� ���� 
��2�ڸ� ����� 00 �̸� ���¼������(1011235) ������� ��ȸ ���� 
protected final String CRM_USERID = "1011235"; 
//if ( firstChar.equals("80")  firstChar.equals("00") ) {  //��2�ڸ� �����  00 �̸�(00: �׽�Ʈ ���) 
if ( firstChar.equals("00")) {  //��2�ڸ� �����  00 �̸�(00: �׽�Ʈ ���) 
workfloForm.setUserid(CRM_USERID );  //���(1011235) 
} 

- ��޹ݿ� ��û 
(CRM ��ȸ ��� ����: ��2�ڸ� ����� 00 �̸� ���¼������(1011235) ������� ��ȸ ����) 
���_����_�_���¸�_20081209_01.xls, ���_����_�_���¸�_20081208_02.xls 

- ��޹ݿ� ��û ���� 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpb/action/DPB015WorkfloCrmAction.java 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpb/action/DPB015WorkfloCrmOJJAction.java  
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpb/dao/DPB015WorkfloJDAO.java 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfi/action/DpfiBondLinkAction.java 
==============================================================================================================

- �ڷ����� ��� ����(Batch ����)   
http://127.0.0.1:9002/dpfi_LegacyInfoPublish.do?method=publish_TEST 

/DpfiLegacyInfoPublishAction.java ���Ͽ��� 
public ActionForward publish_TEST()  {  //�߼� �̸�(��ܱ���뺸) 
result = mailSending(imageKey, mailTo, subject, contents.toString(), fullPath, faxNo); //���� �߼� 
faxSending(fullPath, filename); //Fax �߼� 
} 

public ActionForward publish()  {  //�߼� �̸�(��ܱ���뺸) 
result = mailSending(imageKey, mailTo, subject, contents.toString(), fullPath, faxNo); //���� �߼� 
faxSending(fullPath, filename); //Fax �߼� 
} 
--------------------------------------------------------------------------------------------------------- 

- Agent(Batch ����)  ==> �ǽð� Batch 
/URLAgent.java 
--------------------------------------------------------------------------------------------------------- 

- crontab ���� ==> �ð��� ���� Batch 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpbatch/DPMain.java 
  
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfibatch/PublishLaunch.java 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfi/action/DpfiLegacyInfoPublishAction.java 
------------------------------------------------------------------ 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpbatch 
com.hana.depo.dpfibatch.PublishLaunch 
  

telnet 111.15.20.23 fnsw/fnsw_dev  
[fnsw@devpsvr1]/fnsw > crontab -l   
00 01 * * * /usr/bin/ksh /vwapp/dpbatch/startPublishbatch.sh 
  
[fnsw@devpsvr1]/fnsw > vi /vwapp/dpbatch/startdpbatch.sh  
"/vwapp/dpbatch/startdpbatch.sh" 15 ??, 347 -+??  
#!/bin/sh 
# $Id$ 
# Batch Agent 

JAVA_HOME=/fnsw/jsdk1.4.2_04 

DPBATCH_CLASSPATH=.:/vwapp/lib/ojdbc14.jar:/fnsw/bin/pw.jar:/vwapp/dpbatch/dpbatch.jar 

DPBATCH_INI=/vwapp/dpbatch/dpbatch.ini 

JAVA_OPTIONS=-cp 
JAVA=$JAVA_HOME/bin/java 

$JAVA $JAVA_OPTIONS $DPBATCH_CLASSPATH com.hana.depo.dpbatch.DPLaunch $DPBATCH_INI 1>  
dpbatch.out 2> dpbatch.err    
==============================================================================================================

������������������� 2008.12.09(ȭ) �۾� �����������������
---> 07:50 ~ 19:00  --> �ϳ����� Prj ȸ��(�ѱ�1ȸ��(�ٵ����� ����): 19:00 ~ 22;00) 

- �ϳ����� Prj
- �ڷ����� ��� ����(Batch ����)  
http://127.0.0.1:9002/dpfi_LegacyInfoPublish.do?method=publish_TEST 

<%  
//out.println("[/dpb015_detail.jsp] [getMethod()]"+ form.getMethod() +"[å����_��������]"+ form.getWorkObject().getAppr_date()); 
if ((!form.getWorkObject().getAppr_date().trim().equals("")) && (form.getMethod().equals("publish"))) {  //�߼� ������ �Ǹ�(å����_�������� ����) %>                   
                    <img id="pub_img" src="<bean:message key="image.url"/>/button/send_s.gif" align="absmiddle" onclick="publishing()"> <!-- �߼�, ��� �̹��� --> 
<% } %>   
   
query.append(" UPDATE DEPO_INF_ETL_NTF SET "); 
if(flag.equals(DpfiLegacyInfoPublishJDAO.EMAIL)) query.append(" EMAIL_STATUS = ? "); 
else if(flag.equals(DpfiLegacyInfoPublishJDAO.FAX)) query.append(" FAX_STATUS = ? ");      
query.append("\n  WHERE WF_NO = ? "); 

-- �������� ��ܱ���뺸 ��ȸ(��ܱ���뺸 Tab:6��°)  ===> FAX, �̸��� �߼��� �ȵ� �� 
SELECT  INFO_OFFER_MTD_CD AS �䱸���_�����������,  --�����������(01.������, 02:�Ϲݿ���, 03:FAX, 05:���ͳ�(Email), 09:��뷮 ���� �ٿ�ε�) 
INFO_OFFER_MTD_SUMM AS �󼼹��, OFFER_MEMBERS, EMAIL_STATUS, FAX_STATUS, B.APPR_DATE AS ��������,  
OFFER_REQ_ACCT_CNT, PRT_DOC_TPL_MGR, PRT_SUMM_TPL_MGR,  
MODIFIER, MODIFY_DATE, PRE_OFFER_DATE,  
DISUSE_YN AS �۾���������  --�۾���������(null:ó��, D:�۾�����, N:�۾�������, Y:�ۼ���(�뺸����� �ۼ��Ϸ�:å���� ��Ű���))  
FROM DEPO_INF_ETL_NTF A, DEPO_WF_MASTER B    --�ۼ� ���� ��� Table  
WHERE A.WF_NO IS NOT NULL 
AND A.WF_NO = B.WF_NO 
AND A.WF_NO = C.WF_NO  
AND C.EMAIL_STATUS IS NULL 
AND C.FAX_STATUS IS NULL 
AND A.APPR_DATE IS NOT NULL    -- �������� 
AND C.INFO_OFFER_MTD_CD IN ('03', '05') --�����������( 03:FAX, 05:���ͳ�(Email))  
--; 
==============================================================================================================

/DpfiLegacyInfoPublishAction.java ���Ͽ��� 
public ActionForward publish_TEST()  {  //�߼� �̸�(��ܱ���뺸) 
result = mailSending(imageKey, mailTo, subject, contents.toString(), fullPath, faxNo); //���� �߼� 
faxSending(fullPath, filename); //Fax �߼� 
} 

public ActionForward publish()  {  //�߼� �̸�(��ܱ���뺸) 
result = mailSending(imageKey, mailTo, subject, contents.toString(), fullPath, faxNo); //���� �߼� 
faxSending(fullPath, filename); //Fax �߼� 
} 
--------------------------------------------------------------------------------------------------------- 
  
-  �ð��� ���� Batch 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpbatch/DPMain.java  
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfibatch/PublishLaunch.java 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfi/action/DpfiLegacyInfoPublishAction.java 
--------------------------------------------------------------------------------------------------------- 

telnet 111.15.20.23 fnsw/fnsw_dev 
[fnsw@devpsvr1]/fnsw > crontab -l 
00 01 * * * /usr/bin/ksh /vwapp/dpbatch/startPublishbatch.sh 

[fnsw@devpsvr1]/fnsw > vi /vwapp/dpbatch/startPublishbatch.sh 
#!/bin/sh 
# $Id$ 
# Batch Agent 

JAVA_HOME=/fnsw/jsdk1.4.2_04  
DPBATCH_CLASSPATH=.:/vwapp/lib/ojdbc14.jar:/fnsw/bin/pw.jar:/vwapp/dpbatch/publishBatch.jar 

DPBATCH_INI=/vwapp/dpbatch/dpbatch.ini 

JAVA_OPTIONS=-cp 
JAVA=$JAVA_HOME/bin/java 

$JAVA $JAVA_OPTIONS $DPBATCH_CLASSPATH com.hana.depo.dpfibatch.PublishLaunch $DPBATCH_INI 1>  
publishBatch.out 2> publishBatch.err  
==============================================================================================================

- chmod: ���� ������ ���� 
     -    - - -       - -- - -- 
����Ÿ��  ������(owner) �����׷�(owner) �ٸ� �����(others)   
   �б�(r:4), ����(w:2), ����(x:1) 
 -------------------------------------------------------------------------------------- 

��ȣ ǥ���� [ugoa][+-][rwx] �̴�. �̰��� u (user=file owner), g (group), o(others), a(all=u and g and o)��  
������ ������ ���������� �����ϴ� + �Ǵ� - �׸��� r(read) w(write) x(execute)���� ��Ե� ���� ��ȣ ǥ����  
���ڷ� ǥ���� ���̴�. "file.txt"�� ���(all)���� ���� ����(writable)�ϰ� �ϱ� ���ؼ���: 
> chmod a+w  file.txt    
>chmod 666   file.txt    
-rw-rw-rw-   1 alice   users   79 Jan 1 16:14 file.txt 
  
> chmod 755   mydir    
drwxr-xr-x    2 alice    users    1024 Dec 31 22:32 mydir 

> chmod 666   file.txt    
-rw-rw-rw-   1 alice   users   79 Jan 1 16:14 file.txt 

> chmod 755   startdpPublishbatch.sh    ===> ���� ���� �ֱ� 
-rwxr-xr-x   1 fnsw     fnusr        368 Dec  9 15:44 startdpPublishbatch.sh* 
==============================================================================================================

������������������� 2008.12.10(��) �۾� �����������������
---> 07:50 ~ 21:00  --> �̰�����(20��°): ����(��� ����), ȣ�� �簨 

- �ϳ����� Prj
 - �ڷ����� ��� ����(Batch ����)  
http://127.0.0.1:9002/dpfi_LegacyInfoPublish.do?method=publish_TEST 

<%  
//out.println("[/dpb015_detail.jsp] [getMethod()]"+ form.getMethod() +"[å����_��������]"+ form.getWorkObject().getAppr_date()); 
if ((!form.getWorkObject().getAppr_date().trim().equals("")) && (form.getMethod().equals("publish"))) {  //�߼� ������ �Ǹ�(å����_�������� ����) %>                   
                    <img id="pub_img" src="<bean:message key="image.url"/>/button/send_s.gif" align="absmiddle" onclick="publishing()"> <!-- �߼�, ��� �̹��� --> 
<% } %>   
   
query.append(" UPDATE DEPO_INF_ETL_NTF SET "); 
if(flag.equals(DpfiLegacyInfoPublishJDAO.EMAIL)) query.append(" EMAIL_STATUS = ? "); 
else if(flag.equals(DpfiLegacyInfoPublishJDAO.FAX)) query.append(" FAX_STATUS = ? ");      
query.append("\n  WHERE WF_NO = ? ");  
==============================================================================================================

- ������(DP040) �뺸��� tab�� ���ͼ۱ݰ��°� �� ����   
�������¹�ȣ(accept_acct_no)�� �������� �����Ƿ� ���ͼ۱ݰ��°� �� ������ 
(���� Ȯ���ÿ��� �������¹�ȣ ����)  
�뺸���(http://111.16.1.128/DP040_Workobject.do?workObjectId=05EA1634C50D11DDAB620003BA0D8E19&method=search&)  
==============================================================================================================

 -/DPB040WorkfloAction.java ���Ͽ��� 
public ActionForward detail() { 
// ���� Ȯ���ÿ��� ���¹�ȣ ���� 
if (  !workfloForm.getWorkObject().getRpt_omit_yn().equals("Y")  
  &&  workfloForm.getWorkObject().getAccept_acct_no().equals("") )  {  
String vacct = vacctJDAO.getAccount( workfloJDAO.getConnection(), workObjectId 
  , workfloForm.getWorkObject().getMapId(), workfloForm.getWorkObject().getOrg_type() 
  , workfloForm.getWorkObject().getCr_br_cd()) ;  
  
workfloForm.getWorkObject().setAccept_acct_no( vacct);   //�������¹�ȣ 
} 
} 

 - /DpfiVirtualAccountJDAO.java ���Ͽ��� 
public String getAccount(Connection conn, String wfno, String mapcd, String org_type,  String br_cd) throws DatabaseException { 
String vacct = "";  
if ( org_type.equals("02")  org_type.equals("03")  org_type.equals("06") ) { 
 vacct = getFixAccount(conn,wfno, org_type); 
} 
else { 
 vacct = getOneAccount(conn,wfno); 
} 
  
return vacct; 
} 

//����,����û, ����û ���¹�ȣ�� �����´�  (�� ������ ���� ������¸� ���  = 02,03,06)  
public String getFixAccount(Connection conn, String wfno, String org_type) throws DatabaseException { 
String sql = "select vacct  from  DEPO_WF_HOST_VACC where org_type = ? and rownum = 1 "; 
String sql = "select vacct  from  DEPO_WF_HOST_VACC where org_type = ? and rownum = 1 "; 
}2008-12-10 

//�̹� �Ҵ�� ���¸� �ʱ�ȭ �Ѵ� (�� ���� �Ҵ� ����-"�����ڵ� 3"-�� �ش�ȴ�.  
public String getOneAccount(Connection conn, String wfno) throws DatabaseException { 
String sql = "SELECT VACCT  FROM  DEPO_WF_HOST_VACC WHERE ORG_TYPE = ? AND ROWNUM = 1 ";  
}   
----------------------------------------------------------------------------------- 

- /dpb040_detail.jsp ���Ͽ��� 
���ͼ۱ݰ���: <html:text name="DPB040WorkfloForm" property="workObject.accept_acct_no" size="20" readOnly="true"/>  
-----------------------------------------------------------------------------------  

�ֱ���[�ϳ���������������] 
05EA1634C50D11DDAB620003BA0D8E19 
�ֱ���[�ϳ���������������] 
�������ε���.. 
�ֱ���[�ϳ���������������] 
1020950 228 ������.. 4960 �����̰ŵ��. 
�ֱ���[�ϳ���������������] 
�뺸��뿡.. �۱ݰ��°� ���׿�.. 
==============================================================================================================

1. ����ȯ�ޱ� ��û(����û 1544-2030) ==> ���������� ���� 
��õ ������ ����(���).... ����� ��õ¡�� ������  ===> 11���� 
http://s.nts.go.kr/menu/main/main1.asp?tax_code=119 
(151-869) ���� ���Ǳ� �Ÿ�1�� 438-2 (�����ͳ� ��) ����ȯ�ޱ� ����ھ� ��ǥ��ȭ : 02-850-4200 

����������� T) 554-4940: ��û(�Ϸ�): 2,3,4,5�� 
Ŭ���� ���� T) 774-0031: ��û(�Ϸ�): 8, 9, 10�� 
�ѿ츮 T) 2205-0354: ��û(�Ϸ�): 11, 12�� ==> �� 9���� 
���� �� ==> �ϳ����� �� ��� 5�� Fax)02-331-3669, Tel)02-331-3377(����) 
- �ϳ����� �� ��� �ּ� 
(100-021) ����Ư���� �߱� ��1�� 59-5 ��HUB B/D 5F EDMS��  
==============================================================================================================

������������������� 2008.12.11(��) �۾� �����������������
---> 08:30 ~ 19:00  --> �Ｚ ��Ʈ�� ����(���뿷 ��ó �Ｚ AS ��Ÿ�� �ñ�� ��, OS �缳ġ): �̹� 

- �ϳ����� Prj
 - �ڷ����� ��� ����(Batch ����)  
http://127.0.0.1:9002/dpfi_LegacyInfoPublish.do?method=publish_TEST 
  
-- �������� ��ܱ���뺸 ��ȸ(��ܱ���뺸 Tab:6��°)  ===> FAX, �̸��� �߼��� �ȵ� �� 
SELECT  INFO_OFFER_MTD_CD AS �䱸���_�����������,  --�����������(01.������, 02:�Ϲݿ���, 03:FAX, 05:���ͳ�(Email), 09:��뷮 ���� �ٿ�ε�) 
INFO_OFFER_MTD_SUMM AS �󼼹��, OFFER_MEMBERS, EMAIL_STATUS, FAX_STATUS, A.APPR_DATE AS ��������,  
OFFER_REQ_ACCT_CNT, PRT_DOC_TPL_MGR, PRT_SUMM_TPL_MGR,  
MODIFIER, MODIFY_DATE, PRE_OFFER_DATE,  
DISUSE_YN AS �۾���������  --�۾���������(null:ó��, D:�۾�����, N:�۾�������, Y:�ۼ���(�뺸����� �ۼ��Ϸ�:å���� ��Ű���))  
FROM DEPO_WF_MASTER A, DEPO_WF_DETAIL B, DEPO_INF_ETL_NTF C  
WHERE A.WF_NO IS NOT NULL 
AND A.WF_NO = B.WF_NO 
AND A.WF_NO = C.WF_NO  
AND C.EMAIL_STATUS IS NULL 
AND C.FAX_STATUS IS NULL 
AND A.APPR_DATE IS NOT NULL    -- �������� 
AND C.INFO_OFFER_MTD_CD IN ('03', '05') --�����������( 03:FAX, 05:���ͳ�(Email))  
--; 

-- �߼� �Ϸ� �� FAX, �̸��� �߼� ó�� 
query.append(" UPDATE DEPO_INF_ETL_NTF SET "); 
if(flag.equals(DpfiLegacyInfoPublishJDAO.EMAIL)) query.append(" EMAIL_STATUS = ? "); 
else if(flag.equals(DpfiLegacyInfoPublishJDAO.FAX)) query.append(" FAX_STATUS = ? ");      
query.append("\n  WHERE WF_NO = ? "); 
--;  

F90651CEB52911DCA63D0003BA29841F 
561BEB20BDAA11DCA63D0003BA29841F 
A7C7D674D87011DCA6470003BA29841F 
F11785F8DF6A11DCA6470003BA29841F 
10DDABBADFA711DCA6470003BA29841F 
DC3EB8BEF09911DCA6480003BA29841F 
==============================================================================================================

- �ڷ����� ��� ����(dpfibatch Batch: Java Application���� ����)  ==> D:\java_projects\dpfibatch �� ���� 
1.  java ���� ��� 
Run --> Run Configurations --> Java Application  --> PublishLaunch Ŭ�� ==> Arguments Tab  
Program arguments: D:/java_projects/dpfibatch/dpfibatch.ini  ==> Run: Ŭ�� 
2. jar ���� ���빰 Ȯ�� 
devpsvr1(fnsw)/vwapp/dpbatch> jar -tvf dpPublishBatch.jar  
==============================================================================================================

- log4j: �α� ���� 
log4j:WARN No appenders could be found for logger (org.apache.struts.util.MessageResourcesFactory). 
log4j:WARN Please initialize the log4j system properly. 
����: ���������� "log4j.xml" Ȥ�� "log4j.properties"�� classpath ���� �ִ´�.   
==============================================================================================================

 - �Ｚ��Ʈ�� ���� �ϵ� ����(15:00 ~ 18:00) 
����: ��Ŭ���� ���� ������ ���������ϰ� ������� �ϴ� �ϵ� �д� �Ҹ��� ��� ���� ������ �ȵ� 
����: ������ XP ����� ������ ���� ��(�Ｚ AS��Ÿ ���� ��: ����� ���� ������ ���� �Ǿ �ϵ带 ��ü�ؾ� ��) 
ó��: ����Ÿ ��� �� �ϵ� ��ü(�ڱ��� �븮 T)756-2653) 
--------------------------------------------------------------------------------------------------------- 

- �Ｚ��Ʈ�� ���� �缳ġ 
F4: Ŭ�� --> ��ü ���� ��ġ: Ŭ�� ==> CD�� �������� �ʰ� �缳ġ �� 
============================================================================================================== 

- flex3 ����    
http://blog.naver.com/xldhtl?Redirect=Log&logNo=90036901951 
==============================================================================================================

������������������� 2008.12.12(��) �۾� �����������������
---> 09:50 ~ 22:00   --> �Ｚ AS��Ÿ ��Ʈ�� ã�� ��(XP Ȩ ��ġ�� ���¿��� �޾ƿ�), �ϳ� ����ī�� ���� 

- �ϳ����� Prj
 - ���α׷� ���ġ 
1. TAMA's HouseK_Book ���� 
2. DB ��ġ(Oracle9i Client, Toad 8.0) 
3. ������ ��ġ 
4. ��Ŭ���� ��ġ(depo_project, dpfibatch) 
==============================================================================================================

- �ϳ����� EDMS ������ ���� Proj(����(��������)) 
����: http://127.0.0.1:9002/loginForm.do  ==> depodomain  
���忡�� ����: 
BUILD FAILED 
D:\java_projects\depo_project\src\depoEar\build.xml:40: The following error occurred while executing this line: 
D:\java_projects\depo_project\src\depoEar\build.xml:114: c:\depo_project\lib not found. 
����: D:\java_projects�� �� ��(C:\java_projects�� ��� ��� ��)  
==============================================================================================================

- �ڹ� ������ ���� ���� 
��������: Exception in thread "main" java.lang.UnsupportedClassVersionError 
����: ��Ŭ���� �ڹ� ������ ���� ���� ���� 
��ġ: ��Ŭ����(eclipse)���� Window > Preferences > Compiler > JDK Compliance ����  
Compiler compliance level: 1.4 �� ���� ==> Apply 
==============================================================================================================

- TEST 
[depo01@sun450-03]/sun450-04/dom_depo > find ./ -name "dpb015_detail.jsp" xargs ls -al 
[depo01@sun450-03]/sun450-04/dom_depo > find ./ -name "DPB050WorkfloAction.*" xargs ls -al 
[depo01@sun450-03]/sun450-04/dom_depo > find ./ -name "DPB015WorkfloCrmAction.*" xargs ls -al 
==============================================================================================================

������������������� 2008.12.13(��) �۾� �����������������
---> 09:10 ~ 17:00   --> ���ٹ�,  ����(���޿� ������� ����), �뱸 ����(���� ��ȥ): �̰��� 

- �ϳ����� Prj
- �ڷ����� ��� ����(dpfibatch Batch: Java Application���� ����) 
java jar ���� ã�Ƽ� ���� 
==============================================================================================================
 
- ���� ��ȥ
17:00 ���(�ϳ����� �� Hub) 
17:20 ���� ���(�̰���): �� ��ȯ���� ���� ��ó 
19:00 ������ IC 
19:20 ���� �ްԼ�(�߾� ��ӵ��� -> ȣ��   �б��� -> ���� �б��� -> �ߺγ�����ӵ���) 
22:00 �ϴ뱸IC   ==> 5�ð� �ҿ� 
22:20 ����(������ ������ ��ó) 
23:20 ����(����)  
23:50 ��ħ
==============================================================================================================

������������������� 2008.12.14(��) �۾� ����������������� 
---> 09:10 ~ 17:00  

- ���� ��ȥ2
10:00 ���( �뱸 ������ ��ó) 
12:00 ����(Į����) 
13:00 ���崺�� ����(�뱸�� ������ ���� ����ȣ�� ��): �̰��� ������ ��ٸ� 
14:00 ����(����): ���ǰ ������ ������ �� => ���� 20���� 
14:20 �뱸 ��� 
15:00 ĥ�� �ްԼ�(��õ �б��� -> �ߺγ�����ӵ���) 
17:00 ���� �ްԼ�(���� �б��� -> ȣ�� �б��� -> �߾� ��ӵ��� -> ���ϳ� -> ���� IC) 
19:00 ����IC 
19:20 �Ͱ�   ==> 5�ð� �ҿ� 
23:00 ��ħ 
------------------------------------------------------------------------------------------------------------------------------

- ���� ��ȥ 
�Ͻ�: 2008�� 12�� 14��(��) 13�� 
���: ���崺�� ����(�뱸�� ������ ���� ����ȣ�� ��) 
==============================================================================================================

������������������� 2008.12.15(��) �۾� �����������������
---> 08:40 ~ 22:00 --> �ϳ����� Prj �ҽ� ��� CD ����(�ＺAS ��Ÿ): �� 

- �ϳ����� Prj
- �ڷ����� ��� ����(dpfibatch Batch: Java Application���� ����)   
devpsvr1(fnsw)/vwapp/dpbatch> jar -tvf dpPublishBatch.jar  
==============================================================================================================

- EDMS������Ʈ ��ü ȸ��(���޿�PM) 
- ����: 1. PL �߽� �(PL ���� ����) 
   2. å�Ӱ� ���� 
   3. EDMS Proj ������ ���� ��(�������, ��ȯ, ��������(����)) 
- ��� : 6�� ȸ�ǽ�(���̳�2) -> ���� ū�� 
- �ð� : 12��15��(��) 10�� 30�� ~ 
- ��� : ������ ��ü 
==============================================================================================================

- ������ �����������⿹�� ���� ���� 
�Ⱓ: 12 ����,  ��ġ�ݾ� 2,000,000 ��, ������: 7.20 %  
�������޹��: �����Ͻ�����(����), �������� 2009/12/15 
�Ǽ��ɾ�: 2,135,052 ��(����:13,450 ��(�ҵ漼 )) 
----------------------------------------------------------------  
- ������ �����������⿹�� �ű�  ==> ���ݿ�� 
�Ⱓ: 12 ����,  ��ġ�ݾ� 5,600,000 ��, ������: 9.05 %  
�������޹��: �����Ͻ�����(����), �������� 2009/12/15  
- ������ �����������⿹�� �ű� ==> �Ϲ� 
�Ⱓ: 12 ����,  ��ġ�ݾ� 400,000 ��, ������: 9.05 % 
�������޹��: �����Ͻ�����(����), �������� 2009/12/15 
==============================================================================================================

������������������� 2008.12.16(ȭ) �۾� �����������������
---> 07:50 ~ 22:00  --> �Ｚ��Ʈ�� ���� OS �缳ġ(2��°) 

- �ϳ����� Prj
- �ڷ����� ��� ����(dpfibatch Batch: Java Application���� ����)  
- db ���� 
java.lang.ClassCastException: oracle.sql.BLOB 
==============================================================================================================

- �Ｚ ��Ʈ�� ���� 
����: NTLDR is missing 
����: ������ �ջ� 
1. NTLDR ���� �ջ��̳� ���� 
2. HDD�� MBR�����ջ� 
3. BOOTFONT.BIN �̳� NTDETECT.COM ������ �ջ� 
��ġ: F4 + ��ü ���� 
------------------------------------------------------------------ 
- �Ｚ��Ʈ�� ���� �缳ġ(2��°) 
F4: Ŭ�� --> ��ü ���� ��ġ: Ŭ�� ==> CD�� �������� �ʰ� �缳ġ �� 
�̽¹�(�������� ���ڸ�): * 
============================================================================================================== 

- Error 404--Not Found ���� 
����: http://127.0.0.1:9002/loginForm.do  ==>  Error 404--Not Found  
��ġ: 1. ���÷��� ����(��ġ: �޴� -> Run -> External Tools -> depo_project build.xml ����)  
 2. installed JRE �ٽ� �߰�(Window -> Prefrerence > Java -> installed JRE --> add: C:\j2sdk1.4.2_04 �߰�)  
==============================================================================================================

- �ϳ���Ż URL ����( Tel)2887) 
http://portal.hanafn.com:8206  
1. SafePC ��ġ(���պ������α׷�) 
2. HELP��SSO.exe ��ġ -> �ϳ���Ż ��ġ�� 
3. http://111.15.1.46:9082 ==> EDMS ��ġ 
- EDMS ��ġ 
1. http://111.15.1.4:9082 �� ���� edmsverctl.exe�� ��ġ(C:\EDMS ���� ����) 
2. ����� �� http://111.15.1.4:9082 �� �ٽ� ���� ��ġ ���� �ٿ��� ���� 
(C:\EDMS ������ OZ35 ������ ���� ���� ������ ����� �� �ٽ� ��ġ ���� �ٿ��� ���� �� 
==============================================================================================================

������������������� 2008.12.17(��) �۾� �����������������
---> 07:50 ~ 21:30  --> �ڸ� �̵�, �̰�����(22��°): ������(��ȥ�� ���ǰ) ������, â���� ������ �շ� 

- �ϳ����� Prj
- �ڷ����� ��� ����(dpfibatch Batch: Java Application���� ����)  
/dpb015_detail.jsp ���Ͽ��� 
function publishing() {    //�߼� �̸�(��ܱ���뺸) 
if (pubMthd == "03"   pubMthd == "05"  ) { //FAX, �̸��� �߼� �̸�  
 var xPdf = makePdf(); //��ǥ������ ����� ���� ������ �ø� ������... 
  
 if (!isMakePdf) { 
alert("���ڹ��� ����⿡ ���� �߽��ϴ�. \n\n����� �ٽ� �õ��� �ֽñ� �ٶ��ϴ�.");  
return false; 
 }  
}  

function makePdf() {    //�⺻ ��°�����+ ������������ ���� ���� 
var strUrl  = "/com/hana/depo/dpb/sub/dpb015_report_save.jsp?wf_no=" + wf_no +"&cnt=1" ; 
strUrl += "&output="+ outputz; 
strUrl += "&imgkey="+ imgkey; 
strUrl += "&mtd="+ mtd;  

pop = window.showModalDialog(strUrl, 'pop', str); 
}  
}  
--------------------------------------------------------------------------------------------------------- 

/dpb015_report_save.jsp ���Ͽ��� 
<script language = "JavaScript" for="ozviewer" event="OZExportCommand(code, path, filename)">  
//�������� �������� (code=1:����, code=0:����) 
if (code==1) {  
send('<%=getMtd%>', '<%=todayDate%>', '<%=getImgKey%>', filename, path+filename); 
}else { 
alert('���� ���ۿ� �����߽��ϴ�.\n\n ����� �ٽ� �õ��� �ֽñ� �ٶ��ϴ�.');  
}  
</script> 

function send(sendgb, date, imgkey, filename, localfile) {   //������ ������ �ø��� 
httpupload.hostname = "<%=hostip%>"; 
httpupload.port = "<%=hostport%>"; 
httpupload.url = "/ozfileupload.do?method=upload"; 
} 
  
<div id="OZEmbedControlLocation2" style="padding-left:10;"> 
<script LANGUAGE="Javascript">  
var tag = '<OBJECT id="ozviewer" width="'+obj_width+'" height="'+obj_height+'" CLASSID="CLSID:0DEF32F8-170F-46f8-B1FF-4BF7443F5F25"></OBJECT>';  
var paramTag = new Array(); 
//============================= ���� ���� ���� =============================== 
if (outputArr.length >= 1){  
reportGubun(outputArr[0]);  //report �̸� ��������  
paramTag[paramTag.length] = '<param name="connection.reportname" value="' + reportozr + '.ozr">';    
  
// OZ odi setting  
paramTag[paramTag.length] = '<param name="odi.odinames" value="' + reportodi + '">'; 
paramTag[paramTag.length] = '<param name="odi.' + reportodi + '.pcount" value="5">'; 
paramTag[paramTag.length] = '<param name="odi.' + reportodi + '.args1" value="wf_no=<%=getWfNo%>">'; 
paramTag[paramTag.length] = '<param name="odi.' + reportodi + '.args2" value="fetch_gubun=' + outputArr[0] + '">'; 
paramTag[paramTag.length] = '<param name="odi.' + reportodi + '.args3" value="emp_nm=<%=curUserNm%>">'; 
paramTag[paramTag.length] = '<param name="odi.' + reportodi + '.args4" value="branch_nm=<%=curBrNm%>">';     
paramTag[paramTag.length] = '<param name="odi.' + reportodi + '.args5" value="mtd=<%=getMtd%>">';    
} 
//============================= ���� ���� �� =============================== 

oz_activex_build(OZEmbedControlLocation2, tag, paramTag);  
</script> 
</div> 
--------------------------------------------------------------------------------------------------------- 

/dpcmscript.js ���Ͽ��� 
function oz_activex_build(parent, tag, paramTag){    //���� ���� ���� 
var OZViewerObjectElement = document.createElement(tag);  
for(var i = 0 ; i < paramTag.length; i++){  
 var OZViewerParamElement = document.createElement(paramTag[i]); 
 OZViewerObjectElement.appendChild(OZViewerParamElement);  
 } 

 parent.appendChild(OZViewerObjectElement);  
} 
--------------------------------------------------------------------------------------------------------- 

- �ڷ����� ��� ���� Batch�� �� ������ ����: 
1. dpb015_report_save.jsp ���Ͽ���report-1.ozr(��°�����), report-54.ozr(�߰�����)  ������ ���� �ϴµ�  
����� ����� �������� .ocx�� ��� 
2. Batch �۾��� Java Application���� ����� ���Ƿ� .ocx�� ��� �� ��(.ocx�� ���� �� ��Ŵ) 
(311: report-1.ozr(��°�����), 312: report-54.ozr(�߰�����) ���� ������) 
- �Ǽ��� �̸��� ���� ��ġ(2008��  5�� 21�� ���ķ� �Ǽ����� ����Ÿ �������� ���� ������ �Ǵܵ�) 
[depo01@sun450-03]/sun450-04/dom_depo > cd /home/apps/dom_depo/depofiles/email 
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
����� �����丮: /home/apps/dom_frex2/applications/frexEar/frexWebApp 
6. ����Ʈ �̸�: 52. ��ȯ �׽�Ʈ ����(OZ) 
FTP: 111.15.1.4 (frex01/frex01_dev) 
����� �����丮: /home/apps/dom_frex2/applications/oz35 
7. ����Ʈ �̸�: 53. ��ȯASIS �׽�Ʈ ����(OZ) 
FTP: 111.15.1.4 (frex01/frex01_dev) 
����� �����丮: /home/apps/dom_frex/applications/oz30/repository_file  
==============================================================================================================

������������������� 2008.12.18(��) �۾� �����������������
---> 08:40 ~ 22:00  --> ��ο� ������ ���� ��(������, ����): �̸��� ���(�ֱ��� �븮 <-> �ɼ��� ����) 

- �ϳ����� Prj
- �������뺸(�������뺸 ��ȸ_�μ�) �μ� �� ��ȸ(http://111.16.1.128/dpfi_PrintRegisterPerson.do) 
-- �������뺸 �μ�(����) ó�� @@@@@@@@@@@@@ ===> 100�� �ٽ� ����Ϸ�� ȯ��: 4 -> 1 �� ���� 
-- UPDATE DEPO_WF_NM_NTF   
SET  NTF_YN  = '1',  --�뺸����( 1:�뺸, 2:�뺸���, 3:������, 4:����Ϸ�, 5:���뺸)  
OFFER_DATE  = TO_CHAR(SYSDATE, 'YYYYMMDD')  --���������  
WHERE IDX IN ('618908', '618908', '618908') 
--; 
  
 -- �����뺸�� ��ȸ @@@@@@@@@@@@@    
SELECT WF_NO, IDX, NM ����, SSN_BIZ_NO AS �ֹι�ȣ, ZIPCODE AS �����ȣ, 
   NTF_YN AS �뺸����, NTF_DATE AS �뺸����, OFFER_DATE AS ��������� 
FROM DEPO_WF_NM_NTF 
WHERE IDX IS NOT NULL        
 AND OFFER_DATE >= '20081201'  --��������� 
 AND NTF_YN  = '1'   --�뺸����( 1:�뺸, 2:�뺸���, 3:������, 4:����Ϸ�, 5:���뺸)  
ORDER BY OFFER_DATE DESC 
--;  
==============================================================================================================

- �������뺸 ��ȸ/�μ� ��ȸ ����(TEST��������) (http://111.15.1.4:9082/dpfi_PrintRegisterPerson.do) 
/DpfiPrintRegisterPersonAction.java ���Ͽ���(/dpfi_print_register_person.jsp) 
public class DpfiPrintRegisterPersonAction {  
public ActionForward print(  
listForm.setListInbox(listJDAO.getInboxList(listForm.getEmpNo(),  listForm.getConditions(),  
listForm.getCurrentPage() ) );  //List ��ȸ 
}  
} 

/DpfiPrintRegisterPersonJDAO.java ���Ͽ��� 
public List getInboxList(String empNo, String htCons, int curPage) {   
pstmt = getInboxPreparedStatement(empNo, htCons, QUERY_LIST);     
resultSet = pstmt.executeQuery();  //���� �� 
} 
public PreparedStatement getInboxPreparedStatement( 
pstmt = dbcon.prepareStatement(strSql.toString(), 
                                       ResultSet.TYPE_SCROLL_INSENSITIVE, 
                                       ResultSet.CONCUR_UPDATABLE); 
} 
==============================================================================================================

- ��ȭ ���� 
����: ������ ���ߴ³� 
CGV �̾���(2008�� 12�� 24�� 22�� 00��) 
==============================================================================================================

������������������� 2008.12.19(��) �۾� �����������������
---> 07:50 ~ 21:00  --> �̰�����(23��°): â���� ������ �շ�, ����, ��ȭ ���� ���� 

- �ϳ����� Prj
- �������뺸(�������뺸 ��ȸ_�μ�) �μ� �� ��ȸ(http://111.16.1.128/dpfi_PrintRegisterPerson.do) 
-- �������뺸 �μ�(����) ó�� @@@@@@@@@@@@@ ===> 100�� �ٽ� ����Ϸ�� ȯ��: 4 -> 1 �� ���� 
-- UPDATE DEPO_WF_NM_NTF   
SET  NTF_YN  = '1',  --�뺸����(1:�뺸, 2:�뺸���, 3:������, 4:����Ϸ�, 5:���뺸)  
OFFER_DATE  = TO_CHAR(SYSDATE, 'YYYYMMDD')  --���������  
WHERE IDX IN ('618908', '618908', '618908') 
--;  
---------------------------------------------------------------------------------------------------------- 

/DpfiPrintRegisterPersonJDAO.java ���Ͽ��� 
public void insertRetNtf(String[] keys, String emp_no) {  
//MAX ���� ���Ѵ�. 
 sql  = "SELECT NVL(max(idx),0) maxNum FROM depo_wf_ret_ntf "; 
   
 pStmt = dbcon.prepareStatement(sql ); 
 rs = pStmt.executeQuery(); 
  
 if (rs != null && rs.next()) { 
 maxNum = StringUtil.checkNull(rs.getString("maxNum")); 
 } 

sql  = "\n  INSERT INTO depo_wf_ret_ntf  \n"; 
sql += "\n      (idx, wf_no, nm, input_date, emp_no, offer_date, ntf_date,  official_doc_no"; 
sql += "\n   , post_no, ret_cause, ret_gubun, ret_date, post_name, post_status, req_facts, use_cause, addr, post_num )  ";  
sql += "\n  SELECT  /*+ INDEX ( a DEPO_WF_NM_NTF_U1) */                       "; 
sql += "\n      "+maxNum+"+ rownum, a.wf_no wf_no,  a.nm nm                 "; 
sql += "\n     ,  TO_CHAR(SYSDATE, 'YYYYMMDD') input_date, '"+ emp_no +"' emp_no   "; 
sql += "\n     ,  c.offer_date offer_date , TO_CHAR(SYSDATE, 'YYYYMMDD') ntf_date  "; 
sql += "\n     ,  c.official_doc_no  official_doc_no                               "; 
sql += "\n     ,  a.zipcode post_no, '' as ret_cause,  '' as ret_gubun, '' as ret_date    "; 
sql += "\n     ,  '' as post_name,  '00' as post_status                            "; 
sql += "\n     , b.req_facts req_facts, b.use_cause use_cause, a.addr1  , a.zipcode  "; 
sql += "\n  FROM depo_wf_nm_ntf a , depo_wf_detail b  , depo_wf_master c          "; 
sql += "\n  WHERE a.wf_no = b.wf_no   \n"; 
sql += "\n AND a.wf_no = c.wf_no   \n"; 
sql += inIdx ;  
}  
==============================================================================================================

-  �����뺸����(http://127.0.0.1:9002/dpfi_ReturnNtfInform.do?method=main)  
1. �����뺸����(/dpfi_ntf_person_status.jsp) 
2. /DpfiReturnNtfInformAction.java ���Ͽ��� 
public ActionForward list( 
lst = jdao.listReturnInform(nm, searchDate1, searchDate2,  dateYn, gubun,printtype, currentPage); 
} 

2. /DpfiReturnNtfInformJDAO.java ���Ͽ��� 
public List listReturnInform( 
if(searchDate1.equals("")) {   //ó�� �����̸� 
lst = null; 
} else { //��ȸ ��ư�� ������ 
String query = listReturnInform(nm, searchdate1, searchdate2,  dateYn, gubun, printtype, curPage); 
} 
} 

public List listReturnInform( 
String query = listPrepareStatement(nm, searchdate1, searchdate2,  dateYn, gubun, printtype, curPage); 
} 

private String listPrepareStatement( 
String query = "";  //query �� 
query = DatabaseUtil.getPagingSqlString(query, startRecord, endRecord); //����¡ ó�� 
} 
-------------------------------------------------------- 
  
1. �ϳ����� ���� ���ε�(/dpfi_return_ntf_file_upload.jsp) 
2. /DpfiReturnNtfFileUploadAction.java ���Ͽ��� 
==============================================================================================================

-- �����뺸���� ��ȸ @@@@@@@@@@@@@  
SELECT * 
FROM DEPO_WF_RET_NTF 
WHERE POST_STATUS = '10'  --�뺸����(00:������ �뺸(�ٿ�ε���), 10:�����ٿ�ε�, 20:������ �뺸(+����ȣ), 99:��⼭�� �ݼ�) 
  AND NTF_DATE BETWEEN '20081110' AND '20081219'  --�뺸�� 
--;  

-- �����뺸���� ���� @@@  
UPDATE DEPO_WF_RET_NTF 
SET POST_STATUS = '00'    --�뺸����(00:������ �뺸(�ٿ�ε���), 10:�����ٿ�ε�) 
WHERE POST_STATUS = '10'   --�뺸���� 
  AND NTF_DATE BETWEEN '20081110' AND '20081219'  --�뺸�� 
--;  
==============================================================================================================  

- ������ ���� 
/depo_project/src/depoEar/depoWebApp/com/hana/depo/dpfi/body/dpfi_ntf_person_status.jsp 
/depo_project/src/depoEar/depoWebApp/com/hana/depo/dpfi/body/dpfi_return_inform_ntf_write.jsp 
/depo_project/src/depoEar/depoWebApp/com/hana/depo/dpfi/body/dpfi_return_ntf_file_upload.jsp 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfi/dao/DpfiReturnNtfInformJDAO.java  
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfi/action/DpfiReturnNtfFileUploadAction.java  
==============================================================================================================

- �ϳ����� ����(������: 2008.12.19) 
���¹�ȣ: 190-910229-12107   ������: ���¸� 
��й�ȣ: 5**1, ATM��� ��й�ȣ: 5***2 
==============================================================================================================

������������������� 2008.12.20(��) �۾� �����������������
---> 11:20 ~ 18:00  --> �̰�����(24��°): â���� ������ �շ�, ����(130:125, 125:125, 125:119): 2�� 1�� 

- �ϳ����� Prj
- �������뺸 ��ȸ/�μ� ��ȸ ����(TEST��������) (http://111.15.1.4:9082/dpfi_PrintRegisterPerson.do) 
/DpfiPrintRegisterPersonAction.java ���Ͽ���(/dpfi_print_register_person.jsp) 
public class DpfiPrintRegisterPersonAction {  
public ActionForward print(  
listForm.setListInbox(listJDAO.getInboxList(listForm.getEmpNo(),  listForm.getConditions(),  
listForm.getCurrentPage() ) );  //List ��ȸ 
}  
} 

/DpfiPrintRegisterPersonJDAO.java ���Ͽ���(�������뺸�ۼ� -> /DpfiListRegisterPersonJDAO.java) 
public List getInboxList(String empNo, String htCons, int curPage) { 
pstmt = getInboxPreparedStatement(empNo, htCons, QUERY_LIST); 
resultSet = pstmt.executeQuery();  //���� �� 
} 
public PreparedStatement getInboxPreparedStatement( 
pstmt = dbcon.prepareStatement(strSql.toString(), ResultSet.TYPE_SCROLL_INSENSITIVE, 
ResultSet.CONCUR_UPDATABLE); 
} 
--------------------------------------------------------------------------------------------------- 

����: case when (TO_DATE(C.NTF_DATE) <= SYSDATE) and (length(G.addr1) > 0) then 'Y' else 'N' end ntfDateYn, 
--�뺸������ ���� & �ּ� ����");  
��ġ: (case when (C.NTF_DATE <= TO_CHAR(SYSDATE ,'yyyymmdd') and length(G.addr1) > 0) then 'Y' else 'N' end) ntfDateYn,   
==============================================================================================================

������������������� 2008.12.21(��) �۾� ����������������� 
---> 08:40 ~ 21:00 

- �̰�����  
08:00 ���(����1�� �̰�����) ==> ���� ���� 3���� ó�� �ǰ��ؼ� �౸�Ϸ� �� �� 
10:00 ��ħ(û����) 
16:00 ����(�˵���): ���  
16:30 ���� ���� ������ ��û(�ʱ�, �߱�) 
20:00 ����(���)
23:30 ��ħ 
==============================================================================================================

������������������� 2008.12.22(��) �۾� �����������������
---> 08:40 ~ 21:00 

- �ϳ����� Prj
- ��Ȳ�м�(���) ��ȸ ������û 
��Ȳ�м�(http://111.16.1.128/dpfi_AnalizeTrendList.do?method=list) 
�������� ���������� ���ּ���. ���������θ� ��ü �Ǽ��� ��ȸ�Ǿ� �մϴ�.  
log.debug("[����]-> [appv()] [tna]"+ tna);  
System.out.println("[����] [/DPDBTool.java]-> [pubsh()] [rs]===> "+ rs);  
==============================================================================================================

- ��Ű��(����) ����(http://www.owski.co.kr/): ���Ÿ�� 
������: 2008.12.28(��) 
���ϱ�(09 : 00 ~ 16 : 45): 30,000�� 
���� - 260 1�� / ��ȣ���(����, ������ ��ȣ��): 5,000�� 
���� - 235 1�� / �Ƿ� ����1�� /��ȣ���(����, ������ ��ȣ��): 5,000�� 
���� ����(6�� �̻�: �δ� 5���� ���� ���)  
�� �ݾ�: 210,000��  
--------------------------------------------------------------------- 
���� ���� �ݾ� �ݾ�    
����Ʈ ���(���ı�) 2 30,000 60,000 
���� �뿩 2 10,000 20,000 
��ȣ��� �뿩 2 5,000 10,000 
���庹 �뿩 1 10,000 10,000 
�尩(�̰���) 1 10,000 10,000 
���� ���� 2 50,000 100,000 
�Ѿ� 115,000 210,000  
==============================================================================================================

- �ڵ���ü ���� 
HSBC���࿡�� �� �ڵ���ü ���� 1,876,600�� 
(�ſ� 24�� HSBC���࿡�� �������� ����(640-21-0052-309)�� 75���� �ڵ���ü ���� �ݾ�) 

1. �ڵ���ü ���� 
���� ��������� �ݾ�   
15 ���� ������ 110,000�� 
22 LG�Ŀ���(���ͳ�) 25,100�� 
24 �������� �ڵ���ü  750,000��(640-21-0052-309) 
24 �θ�� ��Ȱ�� 200,000��(606401-04-083394) 
24 ������ ���� ���� 300,000��(400490-61-473440) 
24 ���� �ݵ� ���� 100,000��(801390-60-429074) 
24 myLG070 5,000�� 
25 PCA���׺���� 300,000�� 
25  Met���ź���� 86,500�� 
25 ����ī����(����) 300,000�� 
--> HSBC���� �հ� 1,876,600�� 
2. �������� �ڵ���ü ���� 
10  ���ο��� 88,870��   
25  �����ݵ�(�̷�����) 100,000��(617455-04-007599) 
25  ������ø������� 10,000��(470348-01-002266) 
25  �Ｚ���� �ݵ� 100,000��   
25  ������ݺ���� 200,000�� 
25  �޴��� ��� 30,000�� 
27 ����ī����(����) 50,000�� 
���� �ǰ������ 45,000�� 
--> �������� �հ� 623,870�� 
==============================================================================================================

������������������� 2008.12.23(ȭ) �۾� �����������������
---> 08:00 ~ 21:00  --> �̰�����(25��°): ����(��:������) 

- �ϳ����� Prj
-  ��Ȳ�м�(���) ��ȸ ���� ��û 
��Ȳ�м�(http://111.16.1.128/dpfi_AnalizeTrendList.do?method=list) 
�������� ���������� ���ּ���. ���������θ� ��ü �Ǽ��� ��ȸ�Ǿ� �մϴ�.  

- ������ ���� 
/depo_project/src/depoEar/depoWebApp/com/hana/depo/dpfi/body/dpfi_analize_trend_list.jsp 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfi/action/DpfiAnalizeTrendListAction.java 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfi/form/DpfiAnalizeTrendListForm.java 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfi/dao/DpfiAnalizeTrendListJDAO.java  
==============================================================================================================

-- DB ��ũ 
SELECT * FROM user_db_links --// DB LINK Ȯ�� 
--; 

--// DB ��ũ ���� 
CREATE DATABASE LINK REAL_BPM 
CONNECT TO frexadm IDENTIFIED  --// DB LINK  ���� 
BY frexadm11 USING 'DBBPM1' 
--; 
==============================================================================================================

- ��DB ����Ÿ�� ����(�α����� ��DB�� ���� �ϱ� ���ؼ� ������ ��) 
/leftmenu.jsp ���Ͽ��� 
eventResponse = (MenuEventResponse)request.getAttribute("MenuEventResponse"); 
   
   if (eventResponse != null) 
   { 
menuList = (ArrayList)eventResponse.getMenu(); 
   subPidList   = eventResponse.getPidList(menuList); 
   mainMenuList = eventResponse.getMenuList(menuList, "1", null); 
   }  

/MenuProcessor.java ���Ͽ��� 
public void processEvent(HttpServletRequest request, String screenName) { 
if( !centerTF ) { // �������� ��� 
menuList = menuDao.getMenuListWithBranchDI(center_result, screenName,"DIB001"); 

} else {   //��Ÿ�� ��� 
menuList = menuDao.getMenuListWithDI(center_result, screenName, userId); 
} 
} 

/MenuJDAO.java ���Ͽ��� 
public Collection getMenuListWithBranchDI(String topPosition, String requestURI, String roleCd) { 

} 
---------------------------------------------------------------------------------------------- 

-> ���� ���̺�(COMM_CM_MENU, COMM_CM_PROGRAM, COMM_CM_PROGRAM_ROLE)  
SELECT  *  FROM COMM_CM_MENU_20081223                                                                
--; 
SELECT COUNT(*) FROM COMM_CM_MENU@REAL_BPM 
--; 
1. TEST DB ���̺� �ӽ����� �� ���� 
-- �뺸������ Table ����  @@@@@@@@@@@@@ 
-- CREATE TABLE COMM_CM_MENU_20081223 AS SELECT * FROM COMM_CM_MENU 
--; 
-- �뺸������ Table ���� 
-- DROP TABLE COMM_CM_MENU 
--; 
--  CREATE TABLE COMM_CM_MENU  AS SELECT * FROM COMM_CM_MENU@REAL_BPM 
--; 
==============================================================================================================

- ���Ṯ�� 
http://empireks.tistory.com/427 
==============================================================================================================

������������������� 2008.12.24(��) �۾� �����������������
---> 08:40 ~ 19:00  --> �̰�����(26��°): ����(�̸�Ʈ), ��ȭ(������ ���ߴ³�:�̾�CGV), ���� ���� ����(�ϳ�����) 

- �ϳ����� Prj
- �������Ҵ� ������ ǥ�� ��û 
�������Ҵ�(http://111.16.1.128/ad_reassign_AdminReassignAction.do) 
��������û �Ǵ� ��ǥ��û ������ �ΰǵ� ������¸� ���������� ǥ�����ּ���.   
SELECT WF_NO, DISUSE_YN		--�۾���������(null:ó��, D:�۾�����, N:�۾�������, Y:�ۼ���(�뺸����� �ۼ��Ϸ�:å���� ��Ű���))   
FROM DEPO_INF_ETL_NTF G		--�ۼ� ���� ��� Table 
WHERE G.WF_NO IN ('41D9112E288011DDA64D0003BA29841F') 
--; 
==============================================================================================================

- ��ȯ ���� 
1. /edms_project2/src/frexEar/frexWebApp/WEB-INF/src/com/hana/common/intf/test/EAIClientTest.java Ŭ�� 
2. Run --> Run Configurations --> JUnit  --> Name: EAIClientTest 
3. ClassPath ��: User Entries: Ŭ�� --> Advanced  --> Add folders 
C:\edms_project2\build\frexEar\frexWebApp\WEB-INF\classes\config ����  
4. Run --> Run as --> EAIClientTest ���� 
==============================================================================================================

- EAI ���� ���(http://111.15.1.7:9062/eaimanager.do?method=list) 
Exception : ���� �迭 ���� !! 
com.hana.common.intf.eai.EAIClient.getServiceInfo EAIClient.java 480 line . 
����: C:GRID_ID_ROWCOUNT:5:��ȸ�Ǽ� ���� �ʵ� A�� �ۼ��� �� 
---------------------------------------------------------------------------------------------- 

// LG�߱޿���-OZ(TAMA) 
EAIClient FXE0028 = new EAIClient("FXE0028"); 
FXE0028.setString("INQ_DV_CD", "EAI0113");   //�������� 
FXE0028.setString("ERR_CODE", "000000000"); 
FXE0028.setString("ERR_CTT", ""); 
FXE0028.setString("REF_NO", "00000000000000000000"); 
eaitest.put("FXE0028", FXE0028);  
============================================================================================================== 
  
- ���� ���� License ���� ���(����) 
1. �߱޹��� ����� License ����(ozlicense_�ϳ�����_081127_temp_3.5De.xml)�� ���� ������ ��ġ 
�� ���丮/license �ؿ� ozlicense.xml ���ϸ����� �ø��ϴ�. 
2. ���� �����  
---------------------------------------------------------------------------------------------- 

- ���� ���� License ���� ���(�׽�Ʈ ����):  http://111.15.1.4:9082/oz/server 
1. �߱޹��� ����� License ����(ozlicense_�ϳ�����_081127_temp_3.5S.xml)�� ���� ������ ��ġ 
�� ���丮(/home/apps/dom_depo/applications/oz35/license) �ؿ� ozlicense.xml ���ϸ����� �ø��ϴ�. 
2. ���� ����� - WebLogic : ������ �����ֿܼ��� OZ �����ø����̼� ��� redeploy   
============================================================================================================== 

������������������� 2008.12.25(��) �۾� �����������������
---> 08:40 ~ 21:00

- �̰�����(ũ��������) 
09:00 ��� 
10:00 ��ħ(����) 
16:00 ����(�˵���): ���  
21:00 ����(���) 
23:30 ��ħ 
==============================================================================================================

������������������� 2008.12.26(��) �۾� �����������������
---> 08:40 ~ 21:00   --> �۳�ȸ ȸ��(���ޱ�, ȸ), ���� �۳� ����(����, �Ӹ�) �ѿ��, ����, �ż� ������ 

- �ϳ����� Prj
- EAI ���� ���(http://111.15.1.7:9062/eaimanager.do?method=list) 
FXE0028(���� LG�߱޿���-OZ), FXE0028(���� LG�߱޿���-OZ), FXE0030�μ�����ȸ-OZ) 

// FXE0029 ���� �����⺻����-OZ(TAMA) 
EAIClient FXE0029 = new EAIClient("FXE0029"); 
FXE0029.setString("INQ_DV_CD", "EAI0114");   //�������� 
FXE0029.setString("ERR_CODE", "000000000");  //�����ڵ� 
FXE0029.setString("ERR_CTT", "");  //�������� 
FXE0029.setString("REF_NO", "M1235706NS00018");  //LG�Ϸù�ȣ 
eaitest.put("FXE0029", FXE0029); 
------------------------------------------------------------------------- 

���� Data : [EM00000663SFFC5090B001000000000SPFM00016 9       0002SPFM00029�����ӿ�ũ ��Ÿó�� �����Դϴ�.    
SFFC5090B::pfmServiceFrame.c::pfmServiceMainProcessing::00221      SPFM00016       
SFFC5090B::pfmFlowControlFrame.c::pfmCallServiceFlow::00653  00@@]  
�ڼ���: �޼����� �������� ���� 
============================================================================================================== 
   
- �������Ҵ� ������ ǥ�� ��û 
�������Ҵ�(http://111.16.1.128/ad_reassign_AdminReassignAction.do) 
��������û �Ǵ� ��ǥ��û ������ �ΰǵ� ������¸� ���������� ǥ�����ּ���.   
SELECT WF_NO, DISUSE_YN --�۾���������(null:ó��, D:�۾�����, N:�۾�������, Y:�ۼ���(�뺸����� �ۼ��Ϸ�:å���� ��Ű���))   
FROM DEPO_INF_ETL_NTF G --�ۼ� ���� ��� Table 
WHERE G.WF_NO IN ('41D9112E288011DDA64D0003BA29841F') 
--; 
==============================================================================================================

-- �������뺸(�������뺸 ��ȸ_�μ�) ��ȸ @@@@@   ===> �������뺸 ����Ÿ ����� 
SELECT G.WF_NO, G.NM, G.SSN_BIZ_NO, G.OFFER_DATE, G.ZIPCODE, G.ADDR1, G.ADDR2 
-- SELECT COUNT(*)   
FROM DEPO_WF_NM_NTF G  
WHERE G.WF_NO IS NOT NULL 
AND G.OFFER_DATE = '20081226' --���������   
AND G.NTF_YN = '5'   --�뺸����(1:�뺸, 2:�뺸���, 3:������, 4:����Ϸ�, 5:���뺸)   
AND G.ZIPCODE > '552008-12-270786' 
ORDER BY G.OFFER_DATE DESC 
--; 
--------------------------------------------------------------------------- 
  
-- �������뺸(�μ�) ���� @@@@@   ===> �������뺸 ����Ÿ �����  
-- UPDATE DEPO_WF_NM_NTF G  
SET NTF_YN = '4',  --�뺸����(1:�뺸, 2:�뺸���, 3:������, 4:����Ϸ�, 5:���뺸)  
OFFER_DATE = TO_CHAR(SYSDATE, 'YYYYMMDD') --���������   
WHERE G.NTF_YN = '5'550786--�뺸����(1:�뺸, 2:�뺸���, 3:������, 4:����Ϸ�, 5:���뺸)   
  AND G.ZIPCODE > '650786' 
--; 
==============================================================================================================

- ���� ���� �۱� 
�츮����: 018-746138-02-001 ������:�̿���(�ܿ���)  
�ܿ��� �ּ�: ��⵵ ��õ�� ���̸� ������ 723-10 �̿��� 
��Ű ���(�غ�): ��Ű��, ��Ű�尩, �縻, ���� 
==============================================================================================================

������������������� 2008.12.27(��) �۾� �����������������
---> 09:20 ~ 18:00  

- �ϳ����� Prj
-- �������뺸(�������뺸 ��ȸ_�μ�) ��ȸ @@@@@   ===> �������뺸 ����Ÿ ����� 
SELECT G.WF_NO, G.NM, G.SSN_BIZ_NO, G.OFFER_DATE, G.ZIPCODE, G.ADDR1, G.ADDR2 
-- SELECT COUNT(*)   
FROM DEPO_WF_NM_NTF G  
WHERE G.WF_NO IS NOT NULL 
AND G.OFFER_DATE = '20081226' --���������   
AND G.NTF_YN = '5'   --�뺸����(1:�뺸, 2:�뺸���, 3:������, 4:����Ϸ�, 5:���뺸)   
AND G.ZIPCODE > '550786' 
ORDER BY G.OFFER_DATE DESC 
--; 
--------------------------------------------------------------------------- 
  
-- �������뺸(�μ�) ���� @@@@@   ===> �������뺸 ����Ÿ �����  
-- UPDATE DEPO_WF_NM_NTF G  
SET NTF_YN = '4',  --�뺸����(1:�뺸, 2:�뺸���, 3:������, 4:����Ϸ�, 5:���뺸)  
OFFER_DATE = TO_CHAR(SYSDATE, 'YYYYMMDD') --���������   
WHERE G.WF_NO IS NOT NULL 
AND G.OFFER_DATE = '20081226' --���������   
AND G.NTF_YN = '5'   --�뺸����(1:�뺸, 2:�뺸���, 3:������, 4:����Ϸ�, 5:���뺸)   
AND G.ZIPCODE > '550786' 
--; 
--------------------------------------------------------------------------- 

- ROWNUM �м�  
rownum �� db���� �ҷ��� �ö� �ٿ���(�ټ�), ������ �ٽ� �ѹ� SELECT �� 
--  INSERT INTO DEPO_WF_RET_NTF                                                  
(IDX, WF_NO, NM, INPUT_DATE, EMP_NO, OFFER_DATE,   
NTF_DATE, OFFICIAL_DOC_NO, POST_NO, RET_CAUSE, RET_GUBUN,  
RET_DATE, POST_NAME, POST_STATUS, REQ_FACTS, USE_CAUSE,    
ADDR, POST_NUM)   
SELECT  58653+ROWNUM, M.WF_NO, M.NM, M.INPUT_DATE, M.EMP_NO, M.OFFER_DATE,  
M.NTF_DATE, M.OFFICIAL_DOC_NO, M.POST_NO, M.RET_CAUSE, M.RET_GUBUN,  
M.RET_DATE, M.POST_NAME, M.POST_STATUS, M.RET_CAUSE, M.USE_CAUSE,  
M.ADDR1, M.ZIPCODE  
FROM            
(           
SELECT  /*+ INDEX ( A DEPO_WF_NM_NTF_U1) */                       
A.WF_NO WF_NO,  A.NM NM                 
,  TO_CHAR(SYSDATE, 'YYYYMMDD') INPUT_DATE, '0000131' EMP_NO   
,  C.OFFER_DATE OFFER_DATE , TO_CHAR(SYSDATE, 'YYYYMMDD') NTF_DATE   
,  C.OFFICIAL_DOC_NO  OFFICIAL_DOC_NO                                
,  A.ZIPCODE POST_NO, '' AS RET_CAUSE,  '' AS RET_GUBUN, '' AS RET_DATE     
,  '' AS POST_NAME,  '00' AS POST_STATUS                     
, B.REQ_FACTS REQ_FACTS, B.USE_CAUSE USE_CAUSE, A.ADDR1 , A.ZIPCODE   
FROM DEPO_WF_NM_NTF A, DEPO_WF_DETAIL B, DEPO_WF_MASTER C           
WHERE A.WF_NO = B.WF_NO  
AND A.IDX IN ('0', '54522', '51189', '53974', '51411', '53891', '51105', '54492', '54638', '51431', '54344', '54764', '51007') 
ORDER BY A.NM 
) M 
--; 
==============================================================================================================

- ������ ����  
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfi/action/DpfiPrintRegisterPersonAction.java 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfi/dao/DpfiPrintRegisterPersonJDAO.java 
/report-24.odi 
==============================================================================================================

������������������� 2008.12.28(��) �۾� �����������������
---> 07:20 ~ 20:00 

- ���Ÿ�� ��Ű��(����1������ 50�� �Ÿ�, ����� �к��� �ʾ� ������) 
07:00 ���(����1�� �̰�����): ���� �̰������� ����(�������� �� ���޶�� ��) 
08:00 ���(���): 47�� ����(�¸� -> ����IC -> �ϵ����� -> ��õ�� -> �������б�) 
09:20 �ܿ��� ����(��õ�� �������б� ��): �ܱ� 11���� ���(�� 21����) 
10:00 ���Ÿ�� ��Ű�� �� ��Ű��(�߸� �˰� ��) 
10:25 ���Ÿ�� ��Ű�� �ð�ž ��(�� 4��) 
10:30 ���� ����(�� ����, �� ����) 
12:30 ����(������) 
10:30 ���� ����(�ʱ��� �ڽ� 2��, �߻���� �ڽ� 2��): �Ͼ�� ���� �� ����� ��(���� �Ѿ���) 
16:30 ���� 
17:30 ��� �ݳ�(����, ��ȣ���) 
18:00 ����(����) 
19:00 �̰����� 
20:40 �Ͱ�(�̰���� ���� ��) 
21:20 ���� 
22:00 ��ħ 
==============================================================================================================

������������������� 2008.12.29(��) �۾� �����������������
---> 07:20 ~ 20:00   --> �ѿ츮 �۳� ȸ��(Ƚ��, ������, �뷡��), �̰�����(03:00) 

- �ϳ����� Prj
- EAI ���� ���(http://111.15.1.7:9062/eaimanager.do?method=list) 
FXE0028(���� LG�߱޿���-OZ), FXE0028(���� LG�߱޿���-OZ)  
����迭ó�� ��û(�輱�� �븮(��������:3338)) 

// ���� LG�߱޿���-OZ(TAMA) 
EAIClient FXE0028 = new EAIClient("FXE0028"); 
FXE0028.setString("INQ_DV_CD", "EAI0113");   //�������� 
FXE0028.setString("ERR_CODE", "000000000");  //�����ڵ� 
FXE0028.setString("ERR_CTT", "");  //�������� 
FXE0028.setString("REF_NO", "M1236812EU00018");  //LG�Ϸù�ȣ 
eaitest.put("FXE0028", FXE0028); 
   
[���� Data]  ==> EM00000563SFFC5090B001000000000OCOM14105 9       0001OCOM14105�Է°��� �������մϴ�.                 
SFFC5090B::mffcbiz_usr_atht_base.c::b000_inputvalid_proc::00229       01OCOM14105������ȣ�� �ʼ� �Է��׸��Դϴ�.             
@@  
============================================================================================================== 

- ��ȯTOBE �׽�Ʈ ���� �α� ���� 
[frex01@sun450-03]/users/frex01 > vi .profile 
[frex01@sun450-03]/users/frex01 > log 
[frex01@sun450-03]/home/apps/log/weblogic/frex2 > tail -f frex2Admin.out 
1020045 / 1 / �� : 0065  
============================================================================================================== 

- ������������ �ɻ� ���(http://111.15.1.7:5006/Ip030_ReceiveList.do?method=searchCenter)  
- /ip_030_detail.jsp ���Ͽ���  
function printBl() {   //���Ծ������������� ��� 
setValuse();  
for (i = 1; i < 19; i++) { 
    hajaForm = eval("document.IP030WorkfloForm['workObject.haja" + i + "']"); 
    if (hajaForm.checked == true) { 
    if (hajaText != "") { 
    hajaText = hajaText + ", "; 
    } 
hajaText = hajaText + arrHaja[i-1]; 
hajaYN = "Y"; 
    } 
} 
if (form['workObject.hajaMemo'].value != "") { 
    hajaText = hajaText + "(" + form['workObject.hajaMemo'].value + ")"; 
} 

printBlInfo.reset();  
   
if (printBlInfo['AFEX_IPB_LGM.INDO_NO'].value != "") { 
    printBlInfo.submit(); 
} else { 
    return; 
} 

lock();  
} 

<form name="printBlInfo" method="post" action="/com/hana/frex/ip/body/ip_030_print_bl_info.jsp" target="print"> 
<input type="hidden" name="AFEX_IPB_LGM.REF_NO"> 
<input type="hidden" name="AFEX_IPB_LGM.BR_CD">  
</form> 
------------------------------------------------------------------------------------------------ 

- /ip_030_print_bl_info.jsp ���Ͽ��� 
<OBJECT id = "ozviewer" 
   CLASSID="CLSID:64DA633F-E73B-4344-83BF-48483346CD53" width="800" height="600"> 
   <param name="connection.servlet" value="<%=messages.getMessage(defaultLocale, "connection_servlet")%>"> 
   <param name="connection.reportname" value="lgm.ozr"> 
   <param name="viewer.configmode" value="jsp"> 
   <param name="viewer.mode" value="print"> 
   <param name="print.mode" value="silent"> 
   <param name="print.copies" value="<%=request.getParameter("PRINT_COUNT")%>"> 
   <param name="odi.odinames" value="AFEX_IPB_LGM"> 
   <param name="odi.AFEX_IPB_LGM.pcount" value="29"> 
   <param name="odi.AFEX_IPB_LGM.args1" value="REF_NO=<%=request.getParameter("AFEX_IPB_LGM.REF_NO")%>"> 
   <param name="odi.AFEX_IPB_LGM.args2" value="BR_CD=<%=request.getParameter("AFEX_IPB_LGM.BR_CD")%>">  
</OBJECT>  
==============================================================================================================

������������������� 2008.12.30(ȭ) �۾� ����������������� 
---> 07:20 ~ 20:00   -->

- �ϳ����� Prj
- EAI ���� ���(http://111.15.1.7:9062/eaimanager.do?method=list) 
FXE0028(���� LG�߱޿���-OZ), FXE0028(���� LG�߱޿���-OZ)  
����迭ó�� ��û(�輱�� �븮(��������:3338)) 

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

- ���� connection_servlet ���� 
/edms_project2/src/frexEar/frexWebApp/WEB-INF/src/com/hana/frex/resources 
(/home/apps/dom_frex2/applications/frexEar/frexWebApp/WEB-INF/classes/com/hana/frex/resources) 
/ApplicationResources.properties ���Ͽ��� 
#oz 
codebase=http://111.15.1.4:5006/oz30/ozviewer/ztransferx.cab#version=1.0.2.2 
download_Server=http://111.15.1.4/oz30/ozviewer 
download_Port=5006 
connection_servlet=http://111.15.1.4:5006/oz30/server 
--> connection_servlet=http://111.15.1.7:5006/oz30/server 
- ���� ���� Ȯ�� 
/home/apps/dom_frex/applications/oz30/WEB-INF/classes/ozserver.properties 
- weblogic ConnectionPool ���� 
/home/apps/dom_frex/applications/oz30/conf/db.properties ���Ͽ��� 
DBBPMConnectionPool�� user=frex�� ���� user=frex2�� ���� ��û �帳�ϴ�. 
��ο� ������� user=frex�� ���� ������� �ʴ´ٰ� user=frex2�� �Űܶ�� �մϴ� 
============================================================================================================== 

- Form �Ķ����(connection.pcount, connection.args1) 
<OBJECT id = "ozviewer" 
   CLASSID="CLSID:64DA633F-E73B-4344-83BF-48483346CD53" width="800" height="600"> 
   <param name="connection.servlet" value="<%=messages.getMessage(defaultLocale, "connection_servlet")%>"> 
   <param name="connection.reportname" value="lgm.ozr"> 
   <param name="viewer.configmode" value="jsp">   
   <param name="connection.pcount" value="1">  <!--// Form �Ķ���� -->  
   <param name="connection.args1" value="sb_IPB_LGM=<%=sb_IPB_LGM.toString()%>"> <!--//L/G �߱�����(��ȸ�� ����Ÿ) -->  
</OBJECT> 

- ���� �����̳ʿ��� ���� 
OZFormParam ==> �ʵ��̸�: sb_IPB_LGM 
- ���� �����̳ʿ��� �ҽ� ���� 
����(T) -> ����������(P)  -> �ҽ����� 
============================================================================================================== 

 - EAI ���� ���� 
��������: Exception : PROPRETY File[config\eai.properties]�� �������� �ʽ��ϴ� . 
com.hanabank.eai.client.adpt.util.AdapterPropertiesManager.getFile AdapterPropertiesManager.java 437 line ... 

����: ��ȯ ���� config ���� ������ ������ 
ó��: �ٽ� ��ȯ   ����   
1. /edms_project2/src/frexEar/frexWebApp/WEB-INF/src/com/hana/common/intf/test/EAIClientTest.java Ŭ�� 
2. Run --> Run Configurations --> JUnit  --> Name: EAIClientTest 
3. ClassPath ��: User Entries: Ŭ�� --> Advanced  --> Add folders 
C:\edms_project2\build\frexEar\frexWebApp\WEB-INF\classes\config ����  
4. Run --> Run as --> EAIClientTest ���� 
FXE0029 �ٽ� �� ������. �ɰ̴ϴ�.  
------------------------------------------------------------------------------------------------------ 
��������: EAIHttpAdapter httpCilent = EAIHttpAdapter.getInstance();  // 2. ���� �����Ͽ�  ȣ�� 
 Exception : PROPRETY File[config\eai.properties]�� �������� �ʽ��ϴ� . 
ó��: ���� ���������� EAI �׽�Ʈ�� �ϱ� ���ؼ��� �Ʒ��� ���� �����ؾ� ��.  
EAI���� �׽�Ʈ�� ���ؼ� ���� startWebLogic.cmd�� CLASSPATH�� �Ʒ�ó�� �����ؾ� �մϴ�. 
set EAI_CONFIG=C:\edms_project2\build\frexEar\frexWebApp\WEB-INF\classes\config 
set CLASSPATH=%WEBLOGIC_CLASSPATH%;%POINTBASE_CLASSPATH%;%JAVA_HOME%\jre\lib\rt.jar;%WL_HOME% 
\server\lib\webservices.jar;%CLASSPATH%;%EAI_CONFIG%; 
==============================================================================================================

============== input data [START] ============ 
INQ_DV_CD                      :[EAI0114] 
ERR_CODE                       :[000000000] 
ERR_CTT                        :[] 
REF_NO                         :[M1233810ES00598] 
============== input data [END] ============== 

[/EAIClient.java][��ȯ]-> [send()] [rtn]true 
[��ȯ]-> [testPrivate()] [����  ���� ����] [send result:true 
[��ȯ]-> [printMap()] ============ [output start] ============== 
DEPO_BNK_CD:[7119] 
ERR_CTT:[            ] 
SHPM_DT:[20081130] 
OVRS_BNK_COMM_ADV_CD:[1] 
DCRSE_ALWN_RT:[     0.000000000] 
PRSN_DUDT:[        ] 
PAT_PAYM_YN:[N] 
EXPI_DT:[0       ] 
REIM_BNK_BIC_CD:[HNBNCNBJXXX] 
ICRS_ALWN_RT:[     0.000000000] 
APTC_BNK_BIC_CD:[HNBNCNBJXXX] 
INQ_DV_CD:[EAI0114] 
ERR_CODE:[         ] 
OPEN_AMT:[         154100.00] 
[��ȯ]-> [printMap()] ============ [output end] ============== 
==============================================================================================================

������������������� 2008.12.31(��) �۾� �����������������
---> 08:00 ~ 19:00   --> ������(�ϳ�����), �̰�����(����) 

- �ϳ����� Prj
- EAI ���� ���(http://111.15.1.7:9062/eaimanager.do?method=list) 
FXE0028(���� LG�߱޿���-OZ), FXE0028(���� LG�߱޿���-OZ)    
============================================================================================================== 

- ������ǥ ��û ���� ���ε� 
http://127.0.0.1:9002/DP015_Workobject.do?method=mgrpop&gubun=upload&pop=5&wfno=F572EADAB8F411DCA63D0003BA29841F 

������ǥ ��û 
���� ���ε尡 �ȵȴ�ϴ�.  
Ȯ���Ͻð� ������ �ּ���. 
���������� �質���Դϴ�.  
���� ������ȣ�� ����1��5332(694)�̱���,  
���� ÷���ؼ� �����帱����.   
============================================================================================================== 

- ���� �׽�Ʈ(���� �����) 
write("[������ lbl]--> [#OZFormParam.AMT_MORE# ]"+ #OZFormParam.AMT_MORE#); 
Ctrl + Z ==> �ֿܼ� write ������� ���� 
============================================================================================================== 

- ������(��ũ��Ʈ) 
string a, b, c; 
  
if (#OZFormParam.AMT_MORE#  != null) {   //�������� 
  a = #OZFormParam.AMT_MORE#;  //�������� 
} else { 
  a = "0"; 
}  
if (#OZFormParam.AMT_LESS# != null) {  //��������� 
  b = #OZFormParam.AMT_LESS#;  //��������� 
} else { 
  b = "0"; 
} 

c = a + "/" + b;  
setattr("caption", c); 
==============================================================================================================

- ������ ������  
- ���� ���, �ų� ��ǥ 
������ ����(����) 
==============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������