

����������������������������������������������������������
+----------------------------------------------// Memo(2018.07) //----------------------------------------------+
����������������������������������������������������������
 
 
������������������� 2018.07.01(��) �۾� �������������������
---> 07:00 ~ 23:00 ==>

�� �౸
06:30 ���
06:35 ����(��)
06:50 �븲�� ������(6411�� ����)
07:30 �е��� ������ ����(�� ���� ��)
07:45 �ű��ʱ� ����
07:50 �Ż� ����ȸ ȸ����� �λ�(��������, ��������, ������(ȸ��), ��������(�ѹ�))
09:00 ����(���� ��, �� ���� ��): 1����, ��ȫ�� ����, �·�����(����)
10:30 ����2(�� ��): 1����
10:50 ����
11:30 �߽�(�ѽĴ�): �� ���� ����
15:30 ����
16:00 �Ͱ�
16:30 ����
19:00 ����
21:00 TV ��û
23:00 TV ������ ��û(������ 1(1):1(4) ���þ�)
01:00 ��ħ
==============================================================================================================

������������������� 2018.07.02(��) �۾� �������������������
---> 08:00 ~ 21:00 ==> ������(05:43 ~ 07:35, �������� -> �𱳿�), �߽�(����, �β��� �Ĵ�: ������ -> �̻�Ź ������ ��)

- ������ö AP ǰ������ �ý��� ���� Prj [��] 
- FSP ���� License ��å
1. FSP ���� ���� License: 6���� ���� ����Ʈ�� Ȩ���������� �ٿ�ε� ==> http://www.softzam.com:8080/download.html
==> tamario12 / hp��*16*1@
2. FSP ���� ���� License: 2���� ���� ����Ʈ�� Ȩ���������� Q&A �Խ��ǿ��� ��û�� �ۼ� ==> http://www.softzam.com:8080/board.html
3. Ȳ������ �Ͽ��� ����ؼ� FSP ���� ���� License ���� �Ǿ��ٰ� �� ���� �ҹ� ��
--------------------------------------------------------------------------------------------------------------------------------

 1) FSP ���� ���� License ��û ��
�ȳ��ϼ��� �� ������ö AP ǰ������ �ý��� ���� Pr ���¸� �Դϴ�. 
���� ���̼��� ��û�մϴ�.
IP: 10.10.180.91 
�̸��� :tamario@hyunai-steel.com, tamario@daum.net
--------------------------------------------------------------------------------------------------------------------------------

- FSP ���� License ����� ���� ����
uxs (4648): UD 8:12:27:256  [/commLogin.xfdl][fn_callback()] ==> [�ݹ�_S][nErrorCode]-999999999[sErrorMsg]FSPManager#nDefaultAction[sSvcId]find
==============================================================================================================

- ������ ���̺� ��� 
01. TB_CM_MENUINFO: �޴����� TB ==> HSSCM100: �޴� ���� TB -> ���� ó�� �Ϸ� @@@  TEST @@ ==>  
02. TB_CM_MYMENUINFO: ���̸޴� ==> HSSCM110: ���̸޴� ���� TB -> ���� ó�� �Ϸ� @@@
 ==> AAA_TEST_SELECT  --> TB_FSP_TEST TB  
--------------------------------------------------------------------------------------------------------------------------------

- ������ ���̺� ��� 
01. TB_CM_ACLGRPUIINFO:���ѱ׷�ȭ�� ���� TB ==> HSSCR120: �����׷캰 ȭ��������� TB 
-> "�����׷캰 ������Ȳ" ȭ�� �����ڰ� ���� �Ϸ� �� ���� �ؾ� ��  
02. TB_CM_LOGINLOG: �α����̷� TB ==> HSSCU210: LOGIN�õ� ���� TB 
-> "�Ⱓ�� �α��� ��Ȳ" ȭ�� �����ڰ� ���� �Ϸ� �� ���� �ؾ� �� 
===========================================================================================================

- �޴����(/SY_MenuInput.xadl) ����[�޴� ����]
1. ��������(NC) > ������Ʈ����
 1) ������ ���� ���:NC_TechSpecReviReqtInput.xfdl	 
==> ������ �����Ƿ� ���: NC_TechSpecReviReqtInput.xfdl 
==> ������ ����Ϸ� ���: NC_TechSpecReviCmplInput.xfdl 
==> ������ ����Ȯ�� ���: NC_TechSpecOordFixInput.xfdl 
==============================================================================================================

- �޴� ���� TB UNIQUE INDEX ����
1. ����: CREATE UNIQUE INDEX QMSMGR.HSSCM100_PK
ON QMSMGR.HSSCM100 (BIZ_GP,MENU_ID,MENU_NM)  ==> HSSCM100 ���̺���
2. ����: CREATE UNIQUE INDEX QMSMGR.HSSCM100_PK
ON QMSMGR.HSSCM100 (MENU_ID)
==============================================================================================================

- NULL ���� ��ȯ�ϱ�
1.  NVL2
 1) SELECT NVL2(COMM, 0, 1) FROM EMP; 
==> COMM�� NULL ���̸� 0�� ��ȯ �ƴҽ� 1�� ��ȯ
2. DECODE 
SELECT DECODE(COMM, NULL, '��', 300, '���', '���Ǿ���') FROM EMP;  
==> COMM �� NULL �̸� �� 300 �̸� ��� ���� ���ǿ� ������ �ʴٸ� ���Ǿ����� ��µȴ�. 
==============================================================================================================

- ���� ����Ʈ UbiService �⵿ ��� [Windows �迭] 
1. ������ ���񽺿� ���
 1) svcregist.bat UbiService�� ������ ���񽺿� ����ϴ� �����Դϴ�. ������ ���񽺿��� UbiService�� �⵿�ϰ� ���� �� �� �ֽ��ϴ�.
  ��. C:\Users\hsaqmad1sa\Downloads\UbiService\bin> svcregist.bat install
2. UbiService ���� �⵿ ���
 1) svcregist.bat UbiService�� ������ ���񽺿� ����ϴ� �����Դϴ�. ������ ���񽺿��� UbiService�� �⵿�ϰ� ���� �� �� �ֽ��ϴ�. 
  ��. C:\Users\hsaqmad1sa\Downloads\UbiService\bin> echo off 
 2) svcregist.bat�� ������ ���񽺿� ����� �Ǿ��ִٸ� ���񽺽����� �����μ� �⵿�˴ϴ�.
  ��. �۾�������  > ���� Tab> UbiService: ���콺 �� Ŭ�� > ���� ����(V): Ŭ��  ==> UbiService: ������(����), �ڵ�(���� ����)
==============================================================================================================
  
- /CM_BscCdMngm.xfdl ���� ����
Get content for 'CM_BscCdMngm.xfdl' failed.
svn: E200005: 'D:\QMS\APQMS\workspace\APQMS\apqms\CM\CM_BscCdMngm.xfdl' is not under version control
--------------------------------------------------------------------------------------------------------------------------------

- svn ���� ������ missing ����
1. ����: svn ���� ���� commit�� �ϸ� missing�̶�� ǥ�� �ǰ� ������ �ȵ�
1. ����1: ��Ŭ����/Eclipse SVN ���ε��� ...is already under version control ���� �߻�(delete��� �Ǿ� �־�� ���� ������)
2. ����: �̹� �ٸ� SVN Repositorie�� ����Ǿ� �ְų� SVN�� ������ ���� �ִ� ��찡 ���� �� �ֽ��ϴ�. 
3. ��ġ: SVN ������ �ٽ� ����� ��
 1) �ش� ������Ʈ���� ��Ŭ�� �� Team -> Disconnect... �� ���� �մϴ�. Disconnect...�� �����ϸ� �Ʒ��� ���� �˾�â�� �߻� �մϴ�
 2) Disconnect �˾�â�� �߸� 'Also delete the SVN meta information from the file system' �ɼ��� ���� �մϴ�. �ý����� ������ 
 �ִ� SVN meta �����͸� ����� ���� ����Ǿ��ְų� ������ �ִ� SVN meta �����Ͱ� ���� ���� �˴ϴ�. 
 3) �׸��� �ٽ� SVN�� �����ؼ� ���ε带 �ϰ� �Ǹ� ���� ���� SVN�� �ö󰡴� ����� Ȯ�� �� �� �ֽ��ϴ�.
3. ��ġ2: SVN Repository ���� CM_CstrPopup.xfdl ���� ���� ��
 1) https://10.10.180.91:8443/svn/Repository > APQMS > apqms > CM > CM_CstrPopup.xfdl ����: ���콺 �� Ŭ�� => Delete
 2) Synchronize���� APQMS > apqms > CM > CM_CstrPopup.xfdl ����: ���콺 �� Ŭ�� => Override and Update...
http://arabiannight.tistory.com/entry/��Ŭ����Eclipse-SVN-���ε���-is-already-under-version-control-����-�߻�
==============================================================================================================

- CM ���� ���� ó��
CM_CstrMngm: �ŷ�ó����
CM_BscCdMngm: �����ڵ� ����
CM_ItemMngm: ǰ�� ����
CM_BscCdMngm: �����ڵ� ����
CM_TskGrpLyMenuAuthMngm: �����׷����
CM_UsrtMngm: ����ڰ���
CM_Mngm.xfdl
==============================================================================================================

������������������� 2018.07.03(ȭ) �۾� �������������������
---> 07:40 ~ 21:20 ==>  ���󹫴� ���� �� ���� ���� ���(18��)

- ������ö AP ǰ������ �ý��� ���� Prj [��] 
- SVN ���� ���
71. SVN ���� ���(AP QMS).pptx ���� �ۼ�
==============================================================================================================

������������������� 2018.07.04(��) �۾� �������������������
---> 07:40 ~ 18:00 ==> �뵿 ����(ȭ������ ��), �ְ����� �ۼ�, ���̻� �湮(�� ���� �ؽ�: PL�� ���� ����, ������ ö��)

- ������ö AP ǰ������ �ý��� ���� Prj [��] 
- ���� ���ε�(/fsp_fileUpload.xfdl)���� �ѱ� ���� ���ε� �� �� ���̴� ����
this.FileUpload_onsuccess = function(obj:FileUpload,  e:nexacro.FileUploadEventInfo)
{ 
	trace("[/fsp_fileUpload.xfdl][FileUpload_onsuccess()] ==> [����][TEST_01]" );
	  
	this.edt_FileName.set_value(e.datasets[0].getColumn(0,"FILE_NAME"));	// ���ϸ�
	this.edt_FileNameServer.set_value(e.datasets[0].getColumn(0,"FILE_NAME"));	// ���� ����  
	this.sUrl = application.services["svcurl"].url +"FileUploader?mode=download&subDir="+ encodeURI(this.edt_SubDir.value);  
	this.sUrl +="&fileName="+ encodeURI(this.edt_FileNameServer.value.replace(/\+/,"%2B")); // ���ϸ�
	  
	this.ImageViewer.set_image(this.sUrl);  	// �̹��� ��� ����
	 
	this.fn_save();	// ����
}
-------------------------------------------------------------------------------------------------

1. ��ġ: ��Ĺ �������� URIEncoding="UTF-8" ó��
- /server.xml ���Ͽ���
<Connector connectionTimeout="20000" port="80" protocol="HTTP/1.1" redirectPort="8443" URIEncoding="UTF-8"/>
<Connector port="8009" protocol="AJP/1.3" redirectPort="8443" URIEncoding="UTF-8"/>
==============================================================================================================

- ȸ��
18:00 ���
18:30 ����(���: ���� ������, ���̻�, ����, Ȳ����, ������, ������, ��븮) --> ������ ���� �߰��� ���� ���ٰ� ��
		==> ���̻簡 ���� ������Ʈ�� ���� ���ٰ� �̾߱� ��(���� ����  PL �Ѵٰ� �ߴµ� ������: Ȳ���� ��� �δ�)
			, ������ ���� ���� ���� ���� �ؾ� �� 
21:00 ȣ��(���ٸ�) ==> Ȳ���忡 ���� �� ���� ��ٰ� �ؼ� �ѹ�����
22:30 ����
23:00 �Ͱ� 
23:10 ��ħ
==============================================================================================================
 
������������������� 2018.07.05(��) �۾� �������������������
---> 07:40 ~ 22:00 ==> �ý�Ÿ�� ����� ��(ó��, 5õ��)

- ������ö AP ǰ������ �ý��� ���� Prj [��] 
- ���� ���԰˻�(/QI_SteelPipeImpInsp.xfdl) ����
==============================================================================================================
  
������������������� 2018.07.06(��) �۾� �������������������
---> 07:40 ~ 19:40 ==> ������(20:12 ~ 22:07, �𱳿� -> ��������), ȭ������ ��ȸ 3��°(�������� ��� ���� ���� �뵿 ���� ��)

- ������ö AP ǰ������ �ý��� ���� Prj [��] 
- ���� ���԰˻�(/QI_SteelPipeImpInsp.xfdl) ����
==============================================================================================================
  
/* ���� ���԰˻� Master ��ȸ ==> [/qi/QI_SteelPipeImpInsp_S01.xml] [2018.05.31, by LEEJH] */    	-- ==> ds_list
SELECT A.IQC_NO AS �˻��ȣ, A.IQC_DT AS �˻�����, A.IQC_TIME AS �˻�ð�, FN_CM_GET_USER_NAME(A.IQC_ENO) AS �˻��� 
			, A.IN_FAC AS �����ڵ�, B.FAC_NM  AS �����--, A.LINE_CD AS ȣ���ڵ�, A.MODEL_CD AS �����ڵ�,  A.SHIFT_CD AS �ٹ���  
			, (SELECT M.LINE_NM FROM HSBCC400 M JOIN HSBCC300 N ON M.FAC_CD = N.FAC_CD
			WHERE 1 = 1  AND M.FAC_CD = '4200' AND M.LINE_CD  = A.LINE_CD) AS ȣ���
			, ( SELECT DECODE(MAIN_CD, 'QM480', SUB_CD || ' - ' || TITLE, TITLE) AS TITLEM FROM HSBCA200
			WHERE	MAIN_CD = 'QM480'  AND USE_YN = 'Y' AND BASE_CD = A.MODEL_CD) AS ������ 
			, A.IQC_DT, A.INSP_BC, A.IQC_SQ, A.IN_FAC, B.FAC_NM
			, A.LINE_CD, C.LINE_NM, A.IQC_TIME, A.SHIFT_CD, A.IQC_ENO 
			, FN_CM_GET_USER_NAME(A.IQC_ENO) IQC_ENM, A.RMKS
			, A.EXAM_UID, FN_CM_GET_USER_NAME(A.EXAM_UID) EXAM_UNM, A.EXAM_DT 
			, A.EXAM_RET, A.CONF_UID, FN_CM_GET_USER_NAME(A.CONF_UID) CONF_UNM
			, A.CONF_DT, A.CONF_RET, A.CONF_NO, A.FCE_GUB, A.MODEL_CD
			, A.CID, FN_CM_GET_USER_NAME(A.CID) CID_NM, TO_CHAR(TO_DATE(A.CDT)) CDT
			, A.MID, FN_CM_GET_USER_NAME(A.MID) MID_NM, TO_CHAR(TO_DATE(A.MDT)) MDT 
			, FN_CM_GET_APPROVE_STATUS(A.CONF_NO) AS CONF_STATE
FROM HSQMM140 A 	 -- �������԰˻� ���� TB
LEFT JOIN HSBCC300 B ON A.IN_FAC = B.FAC_CD	-- �������� TB
    LEFT JOIN HSBCC400 C ON A.IN_FAC = C.FAC_CD AND A.LINE_CD = C.LINE_CD	-- ȣ������ TB
    LEFT JOIN HSCMA100 D ON A.CONF_NO = D.WORK_FLOW_NO	-- ����FLOW������� TB
WHERE 1 = 1
-- AND A.IQC_DT BETWEEN '20180605' AND '20180705'
ORDER BY A.IQC_NO DESC
 ;
==============================================================================================================

- �׸��� dataset �� ���� �� Ÿ�� ����
this.ds_listMaster.setColumn(this.ds_listMaster.rowposition, "IQC_NO", v_iqcNo);

this.ds_listMaster.set_enableevent(false); 	// �̺�Ʈ�� �߻���ų�� ���θ� �����ϴ� �Ӽ� 
this.ds_listMaster.set_updatecontrol(false);	 // RowType�� �ڵ����� ������ ������ ���θ� �����ϴ� �Ӽ�
var bSucc = this.ds_listMaster.setRowType(this.ds_listMaster.rowposition, Dataset.ROWTYPE_UPDATE);   // �����ͼ¿��� ������ ��(row)�� Ÿ�� ����
var sRowSts = this.ds_listMaster.getRowType(this.ds_listMaster.rowposition);  // �����ͼ¿��� ������ ��(row)�� Ÿ���� ���ϴ� �޼ҵ�
this.ds_listMaster.set_updatecontrol(true);	  // RowType�� �ڵ����� ������ ������ ���θ� �����ϴ� �Ӽ�
this.ds_listMaster.set_enableevent(true); 	// �̺�Ʈ�� �߻���ų�� ���θ� �����ϴ� �Ӽ� 
trace("[/QI_SteelPipeImpInsp.xfdl][fn_saveall()]==> [���� ó��][TEST_04][ds_listMaster.rowposition]"+ this.ds_listMaster.rowposition
+"[v_iqcNo]"+ v_iqcNo +"[bSucc]"+ bSucc +"[sRowSts]"+ sRowSts );
============================================================================================================== 	

- ���� ��ư�� '���', '����' ���� ����
1. ���  ==> �ű� �˻���� ����
2. ����  ==> �Է� �Ǵ� ������� Ȯ��/����
this.fn_drawButton = function(objId, sText, right)
{
	//trace("[/frmWork.xfdl][fn_drawButton()]==> [������ ȭ�鿡 ��ư ����][TEST_01][objId]"+ objId +"[sText]"+ sText +"[right]"+ right );

	if(objId == "btn_add")	// ���� ��ư�� '���' �̸�
	{  
		objButton.set_tooltiptext("�ű� �˻���� ����");  	// ��ư ���� 
	}
		else if(objId == "btn_save")	// ���� ��ư�� '����' �̸�
	{  
		objButton.set_tooltiptext("�Է� �Ǵ� ������� Ȯ��/����");  	// ��ư ���� 
	}
	else
	{
		objButton.set_tooltiptext(sText);  	// ��ư ����
	}
}
==============================================================================================================

������������������� 2018.07.07(��) �۾� �������������������
---> 07:40 ~ 19:40 ==>  

- �ָ�
08:00 ���
08:35 ����(���)
11:00 �����(����)
11:10 �븲�� ������(6511�� ����: ����)
12:00 ����� ������ ����
12:10 ���ǹ�ȭ������ 1�� 
13:00 ���ǹ�ȭ������ �Ĵ�(���� ����[4õ 5���]: ����[2õ��]) 
13:40 ���ǹ�ȭ������ 3��
14:10 ����
15:00 �븲�� ������ ����  
15:30 ���θ� ����(����: �� ���� ��)
17:00 �Ͱ�
17:30 ����
16:30 ���
16:40 �̸�Ʈ ������(����: ���� ����)
19:30 ����(����)
23:00 ��ħ
==============================================================================================================

������������������� 22018.07.08(��) �۾� �������������������
---> 07:00 ~ 23:00 ==> ���� �帲

�� �౸
09:00 ���
09:30 ����(��)
10:00 Nexacro �۾�(������ö addEventHandler ���� ó��)
12:00 �߽�(¥�İ�Ƽ)
14:30 ����� 
15:40 �븲��� 
16:00 ����(������ȸ��: ��︲ ==> 4 ���� ��): �޺� ��, ü�� ����
18:00 ����
18:10 �÷�����Ʈ(����, ���̽�ũ�� 30��)
18:40 �Ͱ�
19:00 ���̼�(ġ�� ����)
19:20 ����Ʈ(����, �� ����)
20:00 �Ͱ�
20:30 ����
21:00 TV ��û
24:00 ��ħ
==============================================================================================================

������������������� 2018.07.09(��) �۾� �������������������
---> 09:10 ~ 00:00 ==> ������(05:43 ~ 07:35, �������� -> �𱳿�): ���� ���ٰ� �𱳿����� ������, ȫ�������� ���ƿ�, ö��
								 , ȭ������ ���� ö��(18��)

- ������ö AP ǰ������ �ý��� ���� Prj [��] 
- ���� ���԰˻�(/QI_SteelPipeImpInsp.xfdl) ����
==============================================================================================================

- FSP ���� ���� ����
1. ����:
2018/07/09 16:03:44,SYSTEM_ERROR,[SUIA_00007]It failed to execute SQL[SQL_ID:
INSERT_SQL_ID:qi:QI_SteelPipeImpInsp_I01
UPDATE_SQL_ID:qi:QI_SteelPipeImpInsp_U01
DELETE_SQL_ID:
KEY_SQL_ID:0
KEY_INCREMENT:0
SAVE_FLAG_COLUMN:
TYPE:S].
2018/07/09 16:03:44,SYSTEM_ERROR,[SUIA_00003]It failed to execute (action:nDefaultAction/execute)(client:all).
com.sz.service.sqlmap.SqlMapRecordNotFoundException: 0
2. ����:
this.fn_saveall = function()
{
	trace("[/QI_SteelPipeImpInsp.xfdl][fn_saveall()]==> [���� ó��][TEST_01]" ); 

	this.fsp_addSave( "qi:QI_SteelPipeImpInsp_I01"	// insert[�������԰˻� ���� ���]	 
					, "qi:QI_SteelPipeImpInsp_U01"	// update[�������԰˻� ���� ����]
					// , "qi:QI_SteelPipeImpInsp_D01"	// delete[�������԰˻� ���� ����]   ==> �ּ� ó�� --> �ּ� Ǯ��� ��
					, ""							// flag column ��
					, ""							// key sql id
					, 0								// key ���� ��
					, ""
					, 0
					, "B"							// ����Ÿ��
					);
}
==============================================================================================================

- FSP ���� ��ȸ ����
1. ����:
2018/07/12 16:44:13,SYSTEM_ERROR,[SUIA_00007]It failed to execute SQL[SQL_ID:hsteel/test:TEST_S01
INSERT_SQL_ID:
UPDATE_SQL_ID:
DELETE_SQL_ID:
KEY_SQL_ID:
KEY_INCREMENT:0
SAVE_FLAG_COLUMN:
TYPE:N].
2018/07/12 16:44:13,SYSTEM_ERROR,[SUIA_00003]It failed to execute (action:nDefaultAction/execute)(client:all).
com.sz.service.sqlmap.SqlMapRecordNotFoundException: hsteel/test:TEST_S01
2. ����: fsp_addSearch() ��ȸ���� hsteel/test:TEST_S01�� �ν� �� ��
3. ��ġ: fsp_addSearch() ��ȸ���� hsteel/test/TEST_S01�� ������ �� 
this.btn_search_onclick = function() 
{ 
	trace("[/excelExport_sample.xfdl][fn_search_onclick()] ==> [��ȸ][TEST_01]" ); 
 
	this.fsp_clear();	// [FSP ����] fsp clear(Dataset�� ������ ����)
 
	// this.fsp_addSearch("hsteel/test:TEST_S01", false);	// [FSP ����] ��ȸ�� ���� SQLMAP ���� �߰�(TEST ��ȸ)
	this.fsp_addSearch("hsteel/test/TEST_S01", false);	// [FSP ����] ��ȸ�� ���� SQLMAP ���� �߰�(TEST ��ȸ)
	trace("[/excelExport_sample.xfdl][fn_search_onclick()]==> [TEST_41][ds_cond,_CNT]"+ this.ds_cond.getRowCount() 
	+"[ds_cond.saveXML()]  \n"+ this.ds_cond.saveXML() );  	 

	this.fsp_callService(	// [FSP ����] ���� ȣ��
		""					// Action ��(without java)
		,""
		,"ds_cond=ds_cond"	// inDs
		,"ds_list=ds_list"	// outDs
		,""	// args
		,"fn_callback"		// �ݹ� �Լ� ��
		, false				// error�� callback ȣ�� ���� 
		, false				// "ó�� ���Դϴ�."��� â ǥ�� ����
		, false				// �������� ��� ������� ��������� ó������ ����(true: ����, false: �񵿱�)	
		, "sid_find"		// ���� ��û ���̵�(�ݹ� �Լ����� ��� ����)
	);	
} 
==============================================================================================================
 
- ���� Ÿ�� �ƿ�: 60��
==============================================================================================================
 
������������������� 2018.07.10(ȭ) �۾� �������������������
---> 00:00 ~ 20:00 ==> 

- ������ö AP ǰ������ �ý��� ���� Prj [��] 
- ���� ���԰˻�(/QI_SteelPipeImpInsp.xfdl) ���� ==> �Ϸ�
==============================================================================================================

- � ���� ����
1. localhost �м�
==============================================================================================================

- localhost ó��(/server.xml����)
1. ��Ĺ�� �⺻������ server.xml ���� <Host> �׸��� webapp ������ �⺻���� �Ѵ�.
 1) �̰��� ����� �̹Ƿ� [Tomcat ��ġ���丮]/webapps �� �⺻ ���ø����̼� ���̽����丮�� �ȴ�.
 2) appBase ���丮�� �����Ǹ� URL ���� �⺻����Ʈ�� [appBase]/ROOT/ ���� ���� �����Ѵ�.
<Host name="localhost" appBase="webapps" ....>
==> <Host appBase="webapps" autoDeploy="true" name="localhost" unpackWARs="true">
 3) ���� <Context path=.... docBase=....> ���� path �� URL���� �ּҰ� �ǰ� docBase �� ���ø����̼��� ������ ��ġ�� �ȴ�. 
���� docBase�� ����θ� appBase ������ ����ΰ� �Ǹ�, �����η� �����Ǹ� ������ �����ΰ� �ȴ�.
<Context path="/" docBase="/web" .... /> 
 4) ���� ���� �����Ǿ� �ִٸ�, null ��  "/web/test.jsp" �� ����ϰ� �ȴ�.
==> http://egloos.zum.com/playgame/v/287965 
==============================================================================================================

- �׼����� �źεǾ����ϴ�
java.io.FileNotFoundException: D:\QMS\APQMS\workspace\APQMS\upload\N\A (�׼����� �źεǾ����ϴ�)
	at java.io.FileInputStream.open(Native Method)
	at java.io.FileInputStream.<init>(FileInputStream.java:120)
	at com.sz.service.ui.xplatform.DefaultHttpFileManagerService.download(Unknown Source)
=============================================================================================================
 
������������������� 2018.07.11(��) �۾� �������������������
---> 07:40 ~ 17:00 ==> �ְ����� �ۼ�, ���̻� �湮(���� ������: Ȳ���� ���� PL ��Ż, ���� ��ǻ� PL�� ���� ����), ����(17��)

- ������ö AP ǰ������ �ý��� ���� Prj [��] 
- � ���� ����
1. localhost �м�
==============================================================================================================

- Tomcat8_FSP(���� ����) ==> \Tomcat\conf
- protocol="HTTP/1.1"
<Connector connectionTimeout="20000" port="80" protocol="HTTP/1.1" redirectPort="8443" URIEncoding="UTF-8"/>
<!--// protocol="HTTP/1.1" // -->

- protocol="AJP/1.3"
 <Connector port="8009" protocol="AJP/1.3" redirectPort="8443" URIEncoding="UTF-8"/>
 <!--// protocol="AJP/1.3" // -->

- protocol="org.apache.coyote.http11.Http11Protocol" 
<Connector port="443" protocol="org.apache.coyote.http11.Http11Protocol" 
	   SSLEnabled="true"
           maxThreads="150" scheme="https" secure="true"
	   keystoreFile="D:\QMS\Tomcat\SSL_KEYSTORE\star_hyundai-steel_com.jks" 
	   keystorePass="hdsteel1" 
	   clientAuth="false" 
	   SSLVerifyClient="optional"
	   SSLProtocol="TLS" 
	   URIEncoding="UTF-8"
           ciphers="TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256,TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA
		   ,TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384,TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA,TLS_ECDHE_RSA_WITH_RC4_128_SHA
		   ,TLS_RSA_WITH_AES_128_CBC_SHA256,TLS_RSA_WITH_AES_128_CBC_SHA,TLS_RSA_WITH_AES_256_CBC_SHA256
		   ,TLS_RSA_WITH_AES_256_CBC_SHA,SSL_RSA_WITH_RC4_128_SHA"
	   />
==============================================================================================================

- Tomcat8_FSP(� ����(FSP���� ��ġ)) ==> \Tomcat\conf
1. /server.xml ����(Tomcat\conf)
- protocol="HTTP/1.1"
<Connector port="8000" protocol="HTTP/1.1"  connectionTimeout="20000"   redirectPort="8443" URIEncoding="UTF-8"/>

<Host name="localhost"  appBase="webapps" unpackWARs="true" autoDeploy="true">  
</Host>

2. /ROOT.xml ����(Tomcat\conf\Catalina\localhost)
<Context crossContext="true" docBase="d:/QMS/APQMS/" path="/" reloadable="true">  
</Context> 
===> http://10.10.221.91:8000/test.jsp  --> D:\QMS\APQMS\test.jsp
==============================================================================================================
 
- Tomcat8_FSP(� ����[41. ���� ǰ�� ����͸� �ý���(:80]) ==> ASIS
1. /server.xml ����(Tomcat\conf)
- protocol="HTTP/1.1"
<Connector port="80" protocol="HTTP/1.1"  connectionTimeout="20000"   redirectPort="8443" URIEncoding="UTF-8"/>

<Host name="localhost"  appBase="webapps" unpackWARs="true" autoDeploy="true">  
</Host>

2. /ROOT.xml ����(Tomcat\conf\Catalina\localhost)
<Context crossContext="true" docBase="d:/QMS/APQMS/" path="/" reloadable="true">  
</Context> 
===> http://10.10.221.91/mon/  --> D:\QMS\APQMS\test.jsp
------------------------------------------------------------------------------------------------ 

- Tomcat8_FSP(� ����[41. ���� ǰ�� ����͸� �ý���(:8080]) ==> TOBE
1. /server.xml ����(Tomcat\conf)
- protocol="HTTP/1.1"
<Connector port="8080" protocol="HTTP/1.1"  connectionTimeout="20000"   redirectPort="8443" URIEncoding="UTF-8"/>

<Host name="localhost"  appBase="webapps" unpackWARs="true" autoDeploy="true">  
</Host>

2. /ROOT.xml ����(Tomcat\conf\Catalina\localhost)
<Context crossContext="true" docBase="d:/QMS/APQMS/" path="/" reloadable="true">  
</Context> 
===> http://10.10.221.91:8080/mon/  --> http://10.10.221.91:8080/mon/index.jsp  ==> D:\Tomcat\webapps\mon
==============================================================================================================

-Tomcat8_FSP(https�� 9443 ��Ʈ) ���
1. <Connector port="443" protocol="org.apache.coyote.http11.Http11Protocol" ...> 
https://apqms.hyundai-steel.com:9443/ 
D:/QMS/APQMS/workspace/APQMS/WebContent/APQMS/

- Tomcat8_FSP(9443 ��Ʈ) ���
1. <Connector port="8443" protocol="org.apache.coyote.http11.Http11Protocol" ...> �ּ� ó�� �ؾ� ��
http://apqms.hyundai-steel.com:9443/ 
D:/QMS/APQMS/workspace/APQMS/WebContent/APQMS/

https://apqms.hyundai-steel.com/  ==> apqms.hyundai-steel.com���� ������ �ź��߽��ϴ�. --> ERR_CONNECTION_REFUSED
https://apqms.hyundai-steel.com:9443/  ==> ����Ʈ�� ���� ������ �� ���� --> ERR_SSL_PROTOCOL_ERROR
==============================================================================================================

- ���� ���� �޸� ���� �߻�
1. ����:
java.lang.OutOfMemoryError: Java heap space
	at java.util.Arrays.copyOf(Arrays.java:2882)
	at java.lang.AbstractStringBuilder.expandCapacity(AbstractStringBuilder.java:100)
	at java.lang.AbstractStringBuilder.append(AbstractStringBuilder.java:390)
2. ����: ���� ������ �޸�(RAM) �뷮�� 8GB���� ���� ����ڰ� ���ÿ� ���� �۾��� �ϸ� ������ �ٿ��.
3. ��ġ: eclipse �ܿ��� -Xmx256m(��Ŭ������ ����ϴ� �ִ� Heap �޸� ũ��)�� -Xmx1024m�� ����
==> �ٺ����� �ذ�å�� �ƴ�. ���� ������ �޸�(RAM) �뷮�� �ø���� ������ �����ؾ� ��.
--------------------------------------------------------------------------------------------------------------------------------

- Xms1024m
��Ŭ������ ����ϴ� �ִ� Heap �޸� ũ��, �翬�� �ּҴ� �ִ�ũ��� ���� �� ������ �� Ŭ ���� ����. �� ������ ���Ͽ� ��Ŭ���� 
�ڿ� �ɷ�ġ�� �ִ�� ���� �� �� ������ �ڽ��� ��ǻ���� �޸𸮸� ��� �����Ѵٸ� ��Ŭ���� ���� �ٸ� �۾� �� ������ ��� ���� 
�����Ÿ� ���̴�. �Ϲ������� ����޸��� 4���� 1�� �ּ�, �ִ� Heap �޸𸮷� �����Ͽ� ����Ѵ�. 
==> ���� ������ �޸�(RAM) �뷮�� 8GB������ -Xmx1024m�� ������
==============================================================================================================

[Eclipse] ��Ŭ���� - ���� ���� ���� ����ȭ ���
https://www.google.co.kr/search?newwindow=1&hl=ko&q=��Ŭ���� �޸� ����ȭ&ved=0ahUKEwjM_om-kJbcAhVGUbwKHQhPDrgQsKwBCEgoATAC&biw=1904&bih=928
==============================================================================================================
 
- ������ö 1���� ���� ����
17:10 ������ö 1���忡 ���ڱ� ���Ⱑ ����
17:30 ����(������ö 1���� �Ĵ�)
18:00 1�� �ްԽǿ��� ��ٸ�
18:40 �̻�Ź ����, ���󹫴� 1���忡 ���� �Ϸ���(21�ñ���)
20:10 20�ÿ� ���Ⱑ �´ٰ� �ߴµ� �ȿ�
20:10 ���(��븮, ������� ���� �ɾ ���)
20:40 �Ͱ�(����)
21:30 TV ��û(��� ���������� ���� ������) ==> ���̻翡�� ���ڷ� ���� �ű�ٰ� ��� ����
23:00 ���� �̻� ����(�޸ս� �� 406ȣ[������ ��й�ȣ[1234(1234*)�� ������] --> �ϴ� ä 303ȣ[LG ������, ����� ���� �����ϰ� ��ħ])
23:30 ������ ����� ��й�ȣ ����(�� ���� ��� ������ ��й�ȣ(*5*8) ������ ��� ������ �Ҹ���)
         --> ������ ��й�ȣ: *5*8*(5�ڸ�), 1�� ���Թ� ��й�ȣ: #7890#(6�ڸ�)
00:20 ���� �̻� �Ϸ�(�� 4�� �Դ� ���� ��)
00:50 ������
02:00 ��ħ(������ö 1���� ���� ���� 22���뿡 ���� �Ǿ��ٰ� ��)
==============================================================================================================
 
������������������� 2018.07.12(��) �۾� �������������������
---> 07:40 ~ 22:00 ==> ���� ����(ȸ�� ����, �Ŷ�� ��� ����),  �̻�Ź ����, ���󹫴� ��� ���� ����(10:40 ~ )

- ������ö AP ǰ������ �ý��� ���� Prj [��]  
- � ����  Tomcat_v8.0�� SSL ��ġ
- Tomcat8_FSP(� ����) ==> ASIS --> http://apqms.hyundai-steel.com:8000/
1. /server.xml ����(Tomcat\conf)
- protocol="HTTP/1.1"
<Connector port="8000" protocol="HTTP/1.1"  connectionTimeout="20000"   redirectPort="8443" URIEncoding="UTF-8"/> 	<!--// protocol="HTTP/1.1" //-->

2. /ROOT.xml ����(Tomcat\conf\Catalina\localhost)
<Context crossContext="true" docBase="d:/QMS/APQMS/" path="/" reloadable="true">  
</Context> 
===> http://10.10.221.91:8000/test.jsp  --> D:\QMS\APQMS\test.jsp
------------------------------------------------------------------------------------------------ 

- Tomcat8_FSP(� ����) ==> TOBE --> server_http_80.xml ����
1. /server.xml ����(Tomcat\conf)
- protocol="HTTP/1.1"
<Connector port="80" protocol="HTTP/1.1"  connectionTimeout="20000"   redirectPort="8443" URIEncoding="UTF-8"/> 	
<!--// protocol="HTTP/1.1" //-->
 
2. /ROOT.xml ����(Tomcat\conf\Catalina\localhost)
<Context crossContext="true" docBase="D:/QMS/APQMS/workspace/APQMS/WebContent/" path="/" reloadable="true">  
</Context> 
===> http://apqms.hyundai-steel.com/	 -->  D:\QMS\APQMS\workspace\APQMS\WebContent\index.jsp	
------------------------------------------------------------------------------------------------ 

- Tomcat8_FSP(� ����) ==> TOBE --> server_https_80.xml ����
1. /server.xml ����(Tomcat\conf)
- protocol="HTTP/1.1"
<Connector port="80" protocol="HTTP/1.1"  connectionTimeout="20000"   redirectPort="8443" URIEncoding="UTF-8"/> 	
<!--// protocol="HTTP/1.1" //-->
 
<!--// �߰�[ protocol="org.apache.coyote.http11.Http11Protocol(SSL(https) port)]: 2018.07.11 by ���¸� //-->
<Connector port="443" protocol="org.apache.coyote.http11.Http11Protocol" 
   SSLEnabled="true"
	   maxThreads="150" scheme="https" secure="true"
   keystoreFile="D:\QMS\Tomcat\SSL_KEYSTORE\star_hyundai-steel_com.jks" 
   keystorePass="hdsteel1" 
   clientAuth="false" 
   SSLVerifyClient="optional"
   SSLProtocol="TLS" 
   URIEncoding="UTF-8"
	   ciphers="TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256,TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA,TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384
	   ,TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA,TLS_ECDHE_RSA_WITH_RC4_128_SHA,TLS_RSA_WITH_AES_128_CBC_SHA256
	   ,TLS_RSA_WITH_AES_128_CBC_SHA,TLS_RSA_WITH_AES_256_CBC_SHA256,TLS_RSA_WITH_AES_256_CBC_SHA,SSL_RSA_WITH_RC4_128_SHA"
/>

2. /ROOT.xml ����(Tomcat\conf\Catalina\localhost)
<Context crossContext="true" docBase="D:/QMS/APQMS/workspace/APQMS/WebContent/" path="/" reloadable="true">  
</Context> 
===> https://apqms.hyundai-steel.com/ -->  D:\QMS\APQMS\workspace\APQMS\WebContent\index.jsp
==============================================================================================================

- Tomcat] http������ https�� �����̷�Ʈ ��Ű��	 
��Ĺ���� ���� �� http������ ������ https�� ������ ����Դϴ�.
��Ĺ �⺻�� http�� 8080���� �����ϰ� https�� 8443���� �����ϰ� �����Ǿ� ������, ����ó�� 80���� �Ǿ��ִ� ���� 443���� 
�����̷�Ʈ ��Ű���� �ؾ߰�����.
http://hwangji.kr/sub/dev_leader/link/os/default.aspx?NHBBSID=NHBoardWebTip&NHBBSIDX=81
<Connector port="8080" protocol="HTTP/1.1"   connectionTimeout="20000"   URIEncoding="UTF-8"  redirectPort="8443" />
 
- ��Ĺ server.xml ��� ����
https://m.blog.naver.com/PostView.nhn?blogId=gy801110&logNo=147258849&proxyReferer=https://www.google.co.kr/
 
- ����ġ ��Ĺ ���� �ǽð����� �ܼ� ȭ���� ���� �����
/tomcat/logs/tail -f catalina.out  ==> D:\QMS\Tomcat\logs
==============================================================================================================
 
- 41. ���� ǰ�� ����͸� �ý��� port ����(�̻�Ź ���� ��û)
1. http://10.10.221.91/mon/ ==> http://10.10.221.91:8080/mon/
==============================================================================================================

- ���� ���԰˻�(/QI_SteelPipeImpInsp.xfdl) ����
1. ���� ����: div ���� �� �þ� ��
2. ����: div ���̸� �����ϸ� �ȵ�(width="722"�� ������ ��)
 1) sta_line_01���� width="722"�� ������ ��, sta_line_02���� width="722"�� ������ ��
<Div id="div_detail" taborder="15" text="Edit" left="532" top="25" height="101" width="722" scrollbars="none" cssclass="div_WF_DetailBg" right="6">
<Layouts>
	<Layout>
	  <Static id="sta_line_01" taborder="18" cssclass="sta_WF_DetailLabel02" left="3" top="3" height="29" right="4"  width="722" />
	  <Static id="Static06" taborder="2" text="�˻�����" cssclass="sta_WF_DetailLabel01" left="227" top="3" width="82" height="29"/>
	  <Static id="Static19" taborder="3" text="�˻�ð�" cssclass="sta_WF_DetailLabel01" left="432" top="3" width="82" height="29"/>
	  <Static id="sta_line_02" taborder="19" cssclass="sta_WF_DetailLabel02" left="3" top="31" height="29" right="4" width="722" />
	  <Static id="Static02" taborder="6" text="����" cssclass="sta_WF_DetailLabel01" left="3" top="31" width="82" height="29"/>
	  <Static id="Static03" taborder="8" text="ȣ��" cssclass="sta_WF_DetailLabel01" left="227" top="31" width="82" height="29" visible="false"/> 
	</Layout>
</Layouts>
</Div>
--------------------------------------------------------------------------------------------------------------------------------

- ���� ���԰˻�(/QI_SteelPipeImpInsp.xfdl) ����
1. Q0024: �������� ���� ����Ÿ�� �ֽ��ϴ�. \n�����Ͻðڽ��ϱ�? ����[Ds�� ���� �� �����ϱ� �ʰ� �ٸ� �׼��� ���� ���]
 1) this.fn_search_02();		// ��ȸ ó�� 
 gfn_confirm(this, "Q0024", "", "fn_saveConfirmCallback");		// Q0024: �������� ���� ����Ÿ�� �ֽ��ϴ�. \n�����Ͻðڽ��ϱ�?[fn_search_02()]
 
 2) this.ds_list_onrowposchanged();		// ds_list Row ���� �̺�Ʈ
 gfn_confirm(this, "Q0024", "", "fn_saveConfirmCallback");		// Q0024: �������� ���� ����Ÿ�� �ֽ��ϴ�. \n�����Ͻðڽ��ϱ�?[ds_list_onrowposchanged()]
 
 3) this.fn_add_02();		// 02. ��� 
gfn_confirm(this, "Q0024", "", "fn_saveConfirmCallback");		// Q0024: �������� ���� ����Ÿ�� �ֽ��ϴ�. \n�����Ͻðڽ��ϱ�?[fn_add_02()]

gfn_confirm(this, "Q0002", "", "fn_saveConfirmCallback");		// Q0002: ���� �Ͻðڽ��ϱ�?[fn_save_02()]

/***********************************************************************
 * �Լ���  	: fn_save_02
 * ���� 		: 03. ���� ó�� 
***********************************************************************/
this.fn_save_02 = function()
{
	trace("[/QI_SteelPipeImpInsp.xfdl][fn_save_02()]==> [03. ���� ó��][TEST_01][�˻��ȣ]"+ this.div_detail.edt_iqcNo.text ); 
  
	if(bRst) 	// Validation Check ���� �̸�
	{    
		v_nAlertId = 51;	// alert ID(51: �˻��ȣ �ڵ� ä�� ó��)
		gfn_confirm(this, "Q0002", "", "fn_saveConfirmCallback");		// Q0002: ���� �Ͻðڽ��ϱ�?[fn_save_02()]
	} 
}

/***********************************************************************
 * �Լ���  	: fn_saveConfirmCallback
 * ���� 		: ���� ���� �ݹ�  
***********************************************************************/
this.fn_saveConfirmCallback = function(sid, rtn)
{
	trace("[/QI_SteelPipeImpInsp.xfdl][fn_saveConfirmCallback()] ==> [���� ���� �ݹ�][TEST_01][sid]"+ sid +"[rtn]"+ rtn +"[v_nAlertId]"+ v_nAlertId );
	
	if(v_nAlertId == 51)	// �˻��ȣ �ڵ� ä�� ó�� �̸�
	{
		v_nAlertId = 0;			// alert ID
		
		if(rtn)	// ���� ������ '��' �̸�
		{
			this.fn_getIqcNo();		// �˻��ȣ �ڵ� ä�� ó��
		}
	}
	else
	{
		if(rtn)		// ���� ������ '��' �̸�
		{
			this.fn_save_02();		// 03. ����
		}
		else
		{ 
			this.ds_listMaster.clearData();
			this.ds_detail.clearData();
			
			if(v_mod == "ADD" && gfn_isNull(this.ds_listMaster.getColumn(this.ds_listMaster.rowposition, "IQC_NO")))   // ��� �̸�
			{
				this.fn_addrow();	// ��� ó��
				v_mod = "";
			}
			else	 // ��ȸ �̸�
			{
				if(gfn_isNull(v_iqcNo))
				{
					this.fn_MainSearch();		// ���� ���԰˻� Main ��ȸ
				}
				else
				{
					this.fn_sub1_search();		// ���� ���԰˻� SUB ��ȸ[�������԰˻� ������ info Ds(ds_listMaster), �� ���� ��ȸ Ds(ds_detail) ó��]
				}
			}
		} 
	}  
}
--------------------------------------------------------------------------------------------------------------------------------

/***********************************************************************
 * �Լ���  	: ds_list_onrowposchanged
 * ���� 		: ds_list Row ���� �̺�Ʈ(�����ͼ��� rowposition �Ӽ��� ����� �Ŀ� �߻��ϴ� �̺�Ʈ ) 
***********************************************************************/
this.ds_list_onrowposchanged = function(obj:Dataset, e:nexacro.DSRowPosChangeEventInfo)
{ 
	if(this.ds_listMaster.getRowCount() > 0)
	{ 
		if(this.ds_listMaster.getRowType(this.ds_listMaster.rowposition) != 1)		// ������ ����(ds_detail) Ds getRowType�� �ʱ� ���� ����(ROWTYPE_NORMAL=1)�� �ƴϸ�
		{
			v_row = v_row + 1;
			trace("[/QI_SteelPipeImpInsp.xfdl][ds_list_onrowposchanged()] [01. ������ ����_����� ������ ����]");	
		}
		
		for (i=0; i<this.ds_detail.getRowCount(); i++)
		{
			if(this.ds_detail.getRowType(i) != 1)	// �� ����(ds_detail) Ds getRowType�� �ʱ� ���� ����(ROWTYPE_NORMAL=1)�� �ƴϸ�
			{
				v_row = v_row + 1;
				trace("[/QI_SteelPipeImpInsp.xfdl][ds_list_onrowposchanged()] [02. ds_detail_����� ������ ����]");
			}
		}
	} 
} 
--------------------------------------------------------------------------------------------------------------------------------

/***********************************************************************
 * �Լ���  	: fn_saveall
 * ���� 		: ���� ó�� 
***********************************************************************/
this.fn_saveall = function()
{
	trace("[/QI_SteelPipeImpInsp.xfdl][fn_saveall()]==> [���� ó��][TEST_01]" ); 
 
	v_iqcNo = this.ds_cond_01.getColumn(0, "IQC_NO"); 	   // �˻��ȣ 
	this.ds_listMaster.setColumn(this.ds_listMaster.rowposition, "IQC_NO", v_iqcNo);   // �˻��ȣ	 
	trace("[/QI_SteelPipeImpInsp.xfdl][fn_saveall()]==> [���� ó��][TEST_02][CRUD ���]"+ v_crudMod +"[edt_iqcNo]"+ this.div_detail.edt_iqcNo.text +"[v_iqcNo]"+ v_iqcNo );
	
	if(v_crudMod == "C")		// CRUD ��尡 ��� �̸�
	{ 
		this.ds_listMaster.set_enableevent(false);		// �̺�Ʈ�� �߻���ų�� ���θ� �����ϴ� �Ӽ� 
		this.ds_listMaster.set_updatecontrol(false); 	// RowType�� �ڵ����� ������ ������ ���θ� �����ϴ� �Ӽ�
		var bSucc = this.ds_listMaster.setRowType(this.ds_listMaster.rowposition, Dataset.ROWTYPE_INSERT); 	 // �����ͼ¿��� ������ ��(row)�� Ÿ�� ����[2: �߰��� ���� ����] 
		this.ds_listMaster.set_updatecontrol(true); 
		this.ds_listMaster.set_enableevent(true);
		trace("[/QI_SteelPipeImpInsp.xfdl][fn_saveall()]==> [���� ó��(���)][TEST_04][ds_listMaster.rowposition]"+ this.ds_listMaster.rowposition 
			+"[v_iqcNo]"+ v_iqcNo +"[RowType ���� ���� ����]"+ bSucc +"[sRowSts]"+ this.ds_listMaster.getRowType(this.ds_listMaster.rowposition) );
	}
	v_crudMod = "";		// CRUD ���
}
==============================================================================================================

- �ػ�ũ�� ����
1. ����:" native_exist_id" : ["�ش� ID�� ���� Object �� �����մϴ�. id = [", "%0", "]"], 
2. D:\QMS\APQMS\workspace\APQMS\apqms\nexacro14lib\framework\ErrorDefine.js(
  
if (this.nexacro) {
	nexacro._errortable = 
		{
		"ko" : 
			{
	"native_exist_id" : ["�ش� ID�� ���� Object �� �����մϴ�. id = [", "%0", "]"],  
	"comm_fail_duplication_svcid" : ["ó������ ������ ���� ���̵� �ֽ��ϴ�. ���� ���̵� [", "%0", "]"],  
	}
} 
==============================================================================================================

-  FSP ���� �Ķ���� �ѱ��
/*******************************************************************************
* ��      ��   : ��ȸ 
********************************************************************************/
this.btn_search_onclick = function()
{ 
	trace("[/excelExport_sample.xfdl][fn_search_onclick()] ==> [��ȸ][TEST_01]" ); 
 
	var sMenuNm2 = ""; // �޴���2
	trace("[/excelExport_sample.xfdl][fn_search_onclick()] ==> [��ȸ][TEST_02][this.div_search.edt_menuNm2.value]"+ 
		this.div_search.edt_menuNm2.value ); 
	
	if(!gfn_isNull(this.div_search.edt_menuNm2.value))	// ��ȸ���� �޴���2 ���� �ƴϸ�
	{
		sMenuNm2 = this.div_search.edt_menuNm2.value;	// �޴���2
	}
	
	var sArgs = "MENU_NM_SRCH="+ sMenuNm2 +"";		// Argument(�����, �˻籸) 
	trace("[/excelExport_sample.xfdl][fn_search_onclick()] ==> [��ȸ][TEST_31][sArgs]"+ sArgs ); 
	
	this.fsp_clear();	// [FSP ����] fsp clear(Dataset�� ������ ����)
	
	this.fsp_addSearch("hsteel/test/TEST_S01", false);	// [FSP ����] ��ȸ�� ���� SQLMAP ���� �߰�(TEST ��ȸ)
	trace("[/excelExport_sample.xfdl][fn_search_onclick()]==> [TEST_41][ds_cond,_CNT]"+ this.ds_cond.getRowCount() 
		+"[ds_cond.saveXML()]  \n"+ this.ds_cond.saveXML() );  	 

	this.fsp_callService(	// [FSP ����] ���� ȣ��
		""					// Action ��(without java)
		,""
		,"ds_cond=ds_cond"	// inDs
		,"ds_list=ds_list"	// outDs
		, sArgs					// args(������ ������ ��Ÿ Argument) 
		,"fn_callback"		// �ݹ� �Լ� ��
		, false				// error�� callback ȣ�� ���� 
		, false				// "ó�� ���Դϴ�."��� â ǥ�� ����
		, false				// �������� ��� ������� ��������� ó������ ����(true: ����, false: �񵿱�)	
		, "sid_find"		// ���� ��û ���̵�(�ݹ� �Լ����� ��� ����)
	);	
}
--------------------------------------------------------------------------------------------------------------------------------

- /TEST_S01.xml ���Ͽ���
<statement>  
/* �׽�Ʈ ���� ��ȸ ==> [/hsteel/test/TEST_S01.xml] [2018.05.01, by ���¸�] */  
SELECT 
		 EMP_NO AS EMP_NO
		, MENU_ID AS MENU_ID
		, MENU_NM
		, GROUP_NM AS GROUP_NM
		, '' AS FLG
FROM TB_TEST    -- �׽�Ʈ ���� TB
WHERE 1=1  
<isNotNull col="MENU_NM">
	AND MENU_NM LIKE '%'||#MENU_NM#||'%'	-- �޴���
</isNotNull>	
<isNotNull col="MENU_ID">
	AND MENU_ID LIKE #MENU_ID#||'%'		-- �޴�ID
</isNotNull>
<isNotNull col="MENU_NM_SRCH" > 	<!--// Argument �߿� �޴���2�� ���� �ƴϸ� //-->
	AND 1=1    -- Argument �߿� MENU_NM_SRCH�� ���� �ƴϸ�
	<isEqual col="MENU_NM_SRCH"  value="�����">		<!--// �޴���2�� '�����' �̸� //--> 
		AND 1=1    -- 01. �޴���2�� '�����' �̸�
		AND MENU_NM LIKE '%'||#MENU_NM_SRCH#||'%'		-- �޴���
	</isEqual> 
	<isNotEqual col="MENU_NM_SRCH"  value="�����">	<!--// �޴���2�� '�����'�� �ƴϸ� //-->
		AND 1=1    --  02. �޴���2�� '�����'�� �ƴϸ�
		AND MENU_NM LIKE '%'||#MENU_NM_SRCH#||'%'		-- �޴���
	</isNotEqual> 
</isNotNull>	
ORDER BY REG_DDTT DESC
</statement>

<input default-name="ds_cond">
	<col name="MENU_NM" size="255" type="VARCHAR" description="" options="" /> 
	<col name="MENU_ID" size="255" type="VARCHAR" description="" options="" /> 
	<col name="ORD" size="255" type="VARCHAR" description="" options="" />   
</input>

<output default-name="ds_list">
	<col name="EMP_NO" size="10" type="VARCHAR" description="EMP_NO" options="" /> 
	<col name="MENU_ID" size="12" type="VARCHAR" description="MENU_ID" options="" /> 
	<col name="MENU_NM" size="50" type="VARCHAR" description="MENU_NM" options="" /> 
	<col name="GROUP_NM" size="50" type="VARCHAR" description="GROUP_NM" options="" /> 
</output>
==============================================================================================================

������������������� 2018.07.13(��) �۾� �������������������
---> 06:40 ~ 19:40 ==> ������(20:12 ~ 22:07, �𱳿� -> ��������), �̻�Ź ����, ���󹫴� ��� ���� ����(��� ���)

- ������ö AP ǰ������ �ý��� ���� Prj [��]  
- � ���� Tomcat_v8.0�� SSL ��ġ 
==============================================================================================================

- ���� ���԰˻�(/QI_SteelPipeImpInsp.xfdl) ����(����) ==> �Ϸ�
1. ds ����Ÿ getRowType ���� ==> �Ϸ� @@@
 1) ROWTYPE_INSERT --> ROWTYPE_NORMAL ����  �Ϸ�
if(this.ds_list.getRowCount() > 0)
{  
	this.ds_listMaster.set_enableevent(false);		// �̺�Ʈ�� �߻���ų�� ���θ� �����ϴ� �Ӽ�   
	this.ds_listMaster.set_updatecontrol(false); 	// RowType�� �ڵ����� ������ ������ ���θ� �����ϴ� �Ӽ�
	var nRow = this.ds_listMaster.addRow();			// �������԰˻� ������ Ds
	this.ds_listMaster.copyRow(0, this.ds_list, this.ds_list.rowposition);	// ds_listMaster Ds�� ����   
	var bSucc = this.ds_listMaster.setRowType(this.ds_listMaster.rowposition, Dataset.ROWTYPE_NORMAL); 	 
	// �����ͼ¿��� ������ ��(row)�� Ÿ�� ����[1: �ʱ� ���� ����]
	this.ds_listMaster.set_updatecontrol(true);  
	this.ds_listMaster.set_enableevent(true);  
	//trace("[/QI_SteelPipeImpInsp.xfdl][fn_sub1_search()]==> [TEST_90][nRow]"+ nRow +"[bSucc]"+ bSucc 
	+"[ds_listMaster,_CNT]"+ this.ds_listMaster.getRowCount() +"[ds_listMaster.saveXML()] \n"+ this.ds_listMaster.saveXML() );
}
==============================================================================================================

- ���� import
1. [JTM] ExcelImport ���� ������� �������� TO-BE�� �� �ø���
==============================================================================================================

- ���� Frame���� main Frame �̵�
1. global vale�� global Ds�� �ذ��� ��
==============================================================================================================

������������������� 2018.07.14(��) �۾� �������������������
---> 07:40 ~ 19:40 ==>  

- �ָ�
08:00 ���
08:35 ����(���)
11:00 �����(����):������
11:10 �Ŵ�� ���� �󶼺� ������(150�� ���� ž��: ����)
12:20 ����3�� ������ ����
12:30 �̹�(���̹߰�):4õ��
13:00 ����
13:40 ���� ����(�������� ����1��): ������ �峭���̸���(���� ������)
14:10 ����
14:20 �߽�(¥���, ������, �����,������: �� 3õ��):
14:50 ����
15:20 ������(����, ��ȭ�� �м���)
15:50 ����
16:00 ��ȭ�� => ��â�� ���� ������(����)
16:10 ��â�� ���� ������(501�� ���� ž��: ����)
16:40 �ſ�꿪 ������ ����
16:40 �ſ�꿪 ����ö ž��
17:20 ���ε����п� ����(1,550��) 
17:40 ������ ž��(�Ŵ�� ���� �󶼺� ������ ��ó)
17:50 �Ͱ�
20:30 ����
21:00 TV ��û
24:00 ��ħ
==============================================================================================================

������������������� 2018.07.15(��) �۾� �������������������
---> 07:00 ~ 23:00 ==> 

�� �౸
08:00 ���
08:30 ����(����)
12:00 �߽�
15:30 ����� 
15:40 �븲��� 
16:00 ����(������ȸ��: ��︲ ==> 2���� ��): ��ô ���� ���� �ٸ��� ���� ���� ��  ��
18:00 ���� 
18:20 ����Ʈ(�� ����)
19:00 �Ͱ�
19:10 ����
19:50 �����
20:00 �븲�� 7ȣ�� �������� ������(ž��)
20:20 �������� ����
20:49 ������(20:49 ~ 22:36, �������� -> �𱳿�) ž��[ó������ �Ͽ��Ͽ� ���� Ž]
22:20 �𱳿� ����
23:00 �Ͱ�
23:40 TV ��û ==> 2018 ���þ� ������ ����� ==> ������ 4:2 ũ�ξ�Ƽ��
02:00 ��ħ
==============================================================================================================
 
������������������� 2018.07.16(��) �۾� �������������������
---> 07:40 ~ 22:00 ==> Ŀ�� ����(12��), ������ö ���� ����(15:00 ~ 15:30)

- ������ö AP ǰ������ �ý��� ���� Prj [��] 
- ���� ���԰˻�(/QI_SteelPipeImpInsp.xfdl) ����
==============================================================================================================

- � ���� Tomcat_v8.0�� SSL ��ġ
1. �۾� ������ > ���� Tab >  Apache Tomcat 8.5 Tomcat8_FSP: ���콺 �� Ŭ�� > ���� ����(V) > ����(��â) > 
 Apache Tomcat 8.5 Tomcat8_FSP(����)....���� ����, ���� �ٽ� ����: Ŭ��
--------------------------------------------------------------------------------------------------------------------------------

- ��Ĺ �α׸� �м��� ���� SSL(443) ������� ���� 
1. ����: ��Ĺ �α׸� �м��� ���� SSL(443) ������� ���� 
2. ����: SSLProtocol="TLS"
3. ��ġ: SSLProtocol="TLS"�� SSLProtocol="TLSv1+TLSv1.1+TLSv1.2"�� ����
<!--// �߰�[ protocol="org.apache.coyote.http11.Http11NioProtocol(SSL(https) port)]: 2018.07.16 by ���¸� //-->
<Connector port="443" protocol="org.apache.coyote.http11.Http11NioProtocol" 
   SSLEnabled="true"
	   maxThreads="150" scheme="https" secure="true"
   keystoreFile="SSL_KEYSTORE\star_hyundai-steel_com.jks" 
   keystorePass="hdsteel1" 
   clientAuth="false" 
   SSLVerifyClient="optional"
   SSLProtocol="TLSv1+TLSv1.1+TLSv1.2"
   URIEncoding="UTF-8"
	   ciphers="TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256,TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA
	   ,TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384,TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA
	   ,TLS_ECDHE_RSA_WITH_RC4_128_SHA,TLS_RSA_WITH_AES_128_CBC_SHA256,TLS_RSA_WITH_AES_128_CBC_SHA
	   ,TLS_RSA_WITH_AES_256_CBC_SHA256,TLS_RSA_WITH_AES_256_CBC_SHA,SSL_RSA_WITH_RC4_128_SHA"
/> 
--------------------------------------------------------------------------------------------------------------------------------

- NamingException key is MESJNDI ����
1. ����: NamingException key is MESJNDI 
2. ����: /ROOT.xml(Tomcat\conf\Catalina\localhost) ������ XML ���°� �ƴ�
3. ��ġ: /ROOT.xml ���¿� ����� ���������� Displasy �Ǵ� �� Ȯ���� ��
--------------------------------------------------------------------------------------------------------------------------------

- Query execution failed 
1. ����:
Reason:
SQL Error [JDBC-8033:42S02]: JDBC-8033:Specified schema object was not found.   
at line 3, column 9:
  FROM HSSCV100 A 		 -- �޴� ���� TB
2. ����: ���� HSSCV100 ���̺��� ���� �ȵǾ� ����(��ü ���̺� ������ ��)
--------------------------------------------------------------------------------------------------------------------------------

- Occurs error when call DataSource.getConnection().
1. ����:
 Occurs error when call DataSource.getConnection(). 
2. ��ġ:  url="jdbc:tibero:thin:@10.10.111.17:8629:RWMESPR" ==> url="jdbc:tibero:thin:@10.10.111.17:8629:RWMESPRD"
- /ROOT.xml(Tomcat\conf\Catalina\localhost)
<!--// 01. Hyundai Steel AP QMS Prj Web Setting //-->
<Context crossContext="true" docBase="D:/QMS/APQMS/workspace/APQMS/WebContent/" path="/" reloadable="true">

	<!--// 02. MESJNDI Setting(tibero PRD DB) //-->
  	<Resource name="MESJNDI" auth="Container"                                                    
   		type="javax.sql.DataSource" driverClassName="com.tmax.tibero.jdbc.TbDriver"
   		url="jdbc:tibero:thin:@10.10.111.17:8629:RWMESPRD"
		username="QMSMGR" password="QMSMGR" maxTotal="500" maxIdle="100" maxWaitMillis="-1"   />    
</Context> 
==============================================================================================================
 
- Xmx ����(catalina.bat�� ���� �߰�)
1. /catalina.bat(D:\QMS\Tomcat\bin) ���Ͽ���
rem SET JAVA_HOME=C:\Program Files\Java\jdk1.8.0_112
rem SET JAVA_OPTS=%JAVA_OPTS% -Xms2018m -Xmx2048m -XX:PermSize=512m	--> Xmx: �ִ� JVM �� ���� �� �ִ� �޸�
==============================================================================================================

- ���� ����Ʈ � ���� License ����
1. ���� �ݼ��Ϳ��� �߱� ����
------------------------------------------------------------------------------------------------

- ���� ����Ʈ � ���� ����
1. ubiservice.xml, lib_Report.xjs.js ���� ���� ==> Url ����(null���� https://apqms.hyundai-steel.com)
==============================================================================================================

- scrollbars ����
TextArea.set_scrollbars("none");
TextArea.set_scrollbars("autoboth");
==============================================================================================================

������������������� 2018.07.17(ȭ) �۾� �������������������
---> 07:40 ~ 21:30 ==> ������ ����(������ �� Ž)

- ������ö AP ǰ������ �ý��� ���� Prj [��] 
- � ���� DB ���� ����Ÿ ����(���� DB ����)
1. ����ڵ�� ���� TB(HSSCU100)
2. �޴� ���� TB(HSSCU100)
3. �޼��� ���� TB(HSSCU100) 
==============================================================================================================

- addEventHandler ���� ó��
 1. ����: TypeError: Cannot call method 'addEventHandler' of undefined
 2. ����: fn_addTabpage() �Լ����� �̹� �����ϴ� �޴�ID�� �ٽ� �߰��� �ؼ� ������ �߻�
 3. ��ġ: Tab �߰��� �̹� �����ϴ� �޴�ID�� �����ϰ� �߰��ϰ� ����
-----------------------------------------------------------------------------------------------------------

/***********************************************************************
 * �Լ���  	: frmWork_onload
 * ���� 		: �� �ε� 
***********************************************************************/
this.frmWork_onload = function(obj:Form, e:nexacro.LoadEventInfo)
{
	trace("[/frmWork.xfdl][frmWork_onload()] ==> [�� �ε�][TEST_01][T: Mamin ���� ȭ��]" );
	
	var nRow = application.gds_openMenu.findRow("MENU_ID", this.menuId);		// �����ͼ��� ������ ���� ��ġ�ϴ� �� ã��   
	//trace("[/frmWork.xfdl][frmWork_onload()]==> [TEST_10][nRow]"+ nRow +"[this.menuId]"+ this.menuId +"[�޴���]"+ 
		this.menuTitle +"[gds_openMenu,_CNT]"+ application.gds_openMenu.getRowCount() ); 
	
	if(application.gds_openMenu.getRowCount() < 1)	// gds_openMenu�� ���� �� �ϸ�(gds_openMenu �߰�) 
	{
		gfn_addOpenMenu(this.menuId, this.winKey);	// �޴� ID�� gds_openMenu�� �Է�
		//trace("[/frmWork.xfdl][frmWork_onload()]==> [TEST_11][winKey]"+ this.winKey +"[�޴�ID]"+ this.menuId +"[�޴���]"+ this.menuTitle ); 
		application.av_mdiFrame.form.fn_addTabpage(this.winKey, this.menuTitle);	// �޴� ���� �� TabPage�� �����ϴ� �Լ� ȣ��
	}
	else
	{
		if(nRow < 0)	// gds_openMenu���� �߰��Ϸ��� menuId�� ������(gds_openMenu �߰�), 2018.07.08, by ���¸�
		{
			gfn_addOpenMenu(this.menuId, this.winKey);	// �޴� ID�� gds_openMenu�� �Է�
			//trace("[/frmWork.xfdl][frmWork_onload()]==> [TEST_12][winKey]"+ this.winKey +"[�޴�ID]"+ this.menuId +"[�޴���]"+ this.menuTitle ); 
			application.av_mdiFrame.form.fn_addTabpage(this.winKey, this.menuTitle);	// �޴� ���� �� TabPage�� �����ϴ� �Լ� ȣ��
		}
	}
	//trace("[/frmWork.xfdl][frmWork_onload()]==> [TEST_41][gds_openMenu,_CNT]"+ application.gds_openMenu.getRowCount() 
		+"[gds_openMenu.saveXML()] \n"+ application.gds_openMenu.saveXML() );  
}
==============================================================================================================

- ��Ĺ � ���� ���� ����
1. ����:
 index.html:6 The key "target-densitydpi" is not supported. 
index.html:8 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/framework/SystemBase.js 404 ()
index.html:9 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/framework/SystemBase_HTML5.js 404 ()
index.html:10 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/framework/SystemBase_Runtime.js 404 ()
index.html:11 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/framework/BasicObjs.js 404 ()
index.html:12 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/framework/ErrorDefine.js 404 ()
index.html:13 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/framework/Platform_HTML5.js 404 ()
index.html:14 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/framework/Platform_Runtime.js 404 ()
index.html:15 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/framework/Platform.js 404 ()
index.html:16 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/framework/CssObjs.js 404 ()
index.html:18 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/framework/Device_Android.js 404 ()
index.html:17 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/framework/Device.js 404 ()
index.html:19 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/framework/Device_iOS.js 404 ()
index.html:65 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/component/Grid/GridInfo.js 404 ()
index.html:66 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/component/Grid/Grid.js 404 ()
index.html:102 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/component/UbiReport4/UbiReport4.js 404 ()
index.html:103 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/component/UbiReport4/ubihtml.js 404 ()
index.html:104 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/component/UbiReport4/ubiexcanvas.js 404 ()
index.html:105 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/component/UbiReport4/ubinonax.js 404 ()
index.html:106 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/component/UbiReport4/msg.js 404 ()
index.html:18 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/framework/Device_Android.js 404 ()
index.html:19 GET https://apqms.hyundai-steel.com/APQMS/nexacro14lib/framework/Device_iOS.js 404 ()
Element_HTML5.js:14 Uncaught ReferenceError: nexacro is not defined
    at Element_HTML5.js:14
2. ����: D:\QMS\APQMS\workspace\APQMS\WebContent\APQMS\nexacro14lib�� ������ ��� ���� ����
3. ��ġ: ���� ������ nexacro14lib ������ �����Ͽ� �ٿ��ֱ�
==============================================================================================================

- �޴� �߰�
1. �˻���� �̵�� ��Ȳ(/QI_InspStdIUninputStat.xfdl)  ==> ���󹫴� ��û
2. S-18-0829-03-APǰ������_�޴�������_v1.9.xls �����ؼ� ������Ʈ�� ���
==============================================================================================================

- - � ���� ���� �� TB ���� ����Ÿ ���(���� DB ����)
1. ����ڵ�� ���� TB(HSSCU100)
2. �޴� ���� TB(HSSCM100)
3. �޽����ڵ� ���� TB(HSSCV100) 
-----------------------------------------------------------------------------------------------------------------------------------

 -- Į�� �߰� @@@
ALTER TABLE QMSMGR.HSSCM100 ADD
(  
	CID             VARCHAR(20),
    CDT             VARCHAR(14),
    MID             VARCHAR(20),
    MDT             VARCHAR(14)
)
; 
COMMENT ON COLUMN QMSMGR.HSSCU100.CDT IS '������';
COMMENT ON COLUMN QMSMGR.HSSCU100.CID IS '������ID';
COMMENT ON COLUMN QMSMGR.HSSCU100.MDT IS '������';
COMMENT ON COLUMN QMSMGR.HSSCU100.MID IS '������ID';
--; 
--------------------------------------------------------------------------------

 -- Į�� ���� @@@
ALTER TABLE HSSCR100
DROP (
    REGISTER 
    , REG_DDTT
    ,  MODIFIER
    ,  MOD_DDTT
)
;  
==============================================================================================================

-- �����ڵ�-�Һз� ���� ��ȸ[db link ��ȸ] @@@
SELECT *
FROM QMSMGR.HSBCA200@HSMESDEV_RW   -- HSMESDEV_RW: AP QMS ���� DB ����
;
---------------------------------------------------------------------------------

-- �����ڵ�-�Һз� ���� ���[db link ��ȸ] @@@
INSERT INTO QMSMGR.HSBCA200
    SELECT *
    FROM QMSMGR.HSBCA200@HSMESDEV_RW    -- HSMESDEV_RW: AP QMS ���� DB ����
;
--------------------------------------------------------------------------------- 

-- �����ڵ�-�Һз� ���� ��ȸ  @@@ ==> 180��
SELECT  A.*
FROM HSBCA200 A 		 -- �����ڵ�-�Һз� TB
WHERE 1=1 
    AND A.MAIN_CD = 'SC100'		-- ��з��ڵ�(BC111: ���α���, CM110: �������, SC100: module)
ORDER BY A.MAIN_CD, A.ORD_SQ  
; 
==============================================================================================================

- Windows PowerShell�� ���
1. ������ ��ġ �۾� ���̵� tail�� ����� ��ɾ ����� �� �ֽ��ϴ�.
PS D:\QMS\Tomcat\bin> Get-Content ��.\catalina.bat�� -Wait -Tail 100
 
��θ� ������ �� -Wait �ɼ��� ���̸� �߰� ���� ��¿� ���� ��� ���¿� �ִٴ� �ǹ��̸� ������ ������Ʈ�Ǹ� ���������� ����ϰ� �˴ϴ�.
-Tail �ɼǰ� ���� ���� ���̸� ������ ������ �ٺ��� -n��° �ٱ��� ����ϰڴٴ� �ǹ��Դϴ�.
==> https://blog.jooylee.com/p/20180129634
----------------------------------------------------------------------------------------------------------------------------------

- ������� Tail ���α׷� 
1. tomcat cmd ���������Ʈ â���� ���� �α� Ȯ��
2. baretail ==> http://bigenergy.tistory.com/405
==============================================================================================================

������������������� 2018.07.18(��) �۾� �������������������
---> 07:40 ~ 22:00 ==> �޴� ���� ������ �̻�Ź ������ ¥����(�������� ���Ѻ� �޴� ���α׷� �߸� ����), �ְ����� �ۼ�

- ������ö AP ǰ������ �ý��� ���� Prj [��] 
- � ���� ���� upload ��� ����
1. D:\  ==> Z:\ 
 1) ���� ���ε� ��� ���� ���������� D ����̺� ��� 
 2) � ���� ���Ͽ��� ��Ʈ��ũ ����̺�(Z:)�� ���  --> ���̻翡�� ��� ���� ����
--------------------------------------------------------------------------------------------------------------------------------

- /service.xml ���Ͽ���  � ���� ���� upload ��� ����
<!-- File Uploader --> 
<service name="HttpFileManagerService"  code="com.sz.service.ui.xplatform.DefaultHttpFileManagerService"> 
	<!-- <attribute name="FileRootDir">Z:\QMS\APQMS\upload\</attribute>   -->  	 	<!-- ���ε�� ������ ����� �ֻ��� ���丮
	(��� ���: ���߼���). WORK_DIR �Ӽ����κ��� ���۵Ǵ� ����� �Ǵ� �����η� ���� ���� -->
	<attribute name="FileRootDir">\\10.10.111.17\\QMS\\APQMS\\upload\\</attribute>	 <!-- ���ε�� ������ ����� �ֻ��� ���丮
	(��Ʈ��ũ ���: �����).  -->
	<!-- <attribute name="FileRootDir">D:\QMS\APQMS\workspace\APQMS\upload\</attribute>	  --> 	<!-- ���ε�� ������ �����
	�ֻ��� ���丮(��� ���: ���߼���). WORK_DIR �Ӽ����κ��� ���۵Ǵ� ����� �Ǵ� �����η� ���� ���� -->
	<attribute name="AppendTime">true</attribute>	    	<!-- ���ε�� ���ϸ� ���ε�� �ð��� �߰��Ͽ� ���ϸ��� �������� ���� -->
	<attribute name="SystemEncoding">utf-8</attribute>	   	<!-- ���ϸ� ���� �ý��� ���ڵ� -->
	<attribute name="SubDirList">	<!-- ���� ���丮�� key=sub ���丮�� ���·� ���� -->
		img=img/apqms
		doc=img/apqms/doc
	</attribute> 
	<attribute name="SupportDynamicDir">true</attribute>	<!-- ��û�� ���丮 Ű ������ SubDirList�� �������� ���� ��� ���丮�� 
	���� ������ �������� ���θ� �����Ѵ�. ������ ��� true -->
	 <!-- <attribute name="ApprovedFileExtension">ppt,pdf,txt</attribute> --> 	<!-- Ư�� Ȯ���ڸ� ���ε� �����ϵ��� �ϴ� �ɼ� -->
	<attribute name="UnapprovedFileExtension">http</attribute>		<!-- ���� ���ε� �� ����� �� ���� ������ Ȯ���� --> 
</service>

2. ����: 
log4j:WARN No appenders could be found for logger (com.nexacro.xapi.tx.HttpPlatformRequest).
log4j:WARN Please initialize the log4j system properly.
java.io.FileNotFoundException: Z:\QMS\APQMS\upload\img\apqms\20180718\alert_03_20180718095605612.png (������ ��θ� ã�� �� �����ϴ�)
==============================================================================================================
 
-- ���� ���̵� �ش��ϴ� ���� ����
SELECT QMSMGR.FN_CM_GET_FILE_PATH( 
            'USER'      -- P_IN_PATH_NAME(PATH��)
            ,'1519107'  -- P_IN_FILE_ID(�����ID)
            ,''         -- P_IN_INSP_BC
            ,''         -- P_IN_REV_NO
            ,''         -- P_IN_ITM_DESC_GUB
         ) AS FILE_IMAGE   -- ���� ���̵� �ش��ϴ� ���� ����
FROM DUAL 
;
--------------------------------------------------------------------------------------------------------------------

SELECT FILE_ID, 'D:\QMS\APQMS\workspace\APQMS\upload\ '|| FILE_PATH ||'\'|| SFILE_NM 
FROM HSCMF100   -- �������� �������� TB
WHERE 1=1
    AND FILE_ID = '20180716081618161'   	-- FILE_ID
	-- AND FILE_ID = (SELECT SIGN_SEQ FROM HSSCU100 WHERE USER_ID = '1519107' )  			-- FILE_ID
;
==============================================================================================================

- ����
15:00 ���̻� ���� �湮
15:20 ���̻� ���(������ �����Ͽ� ������ 2��(�̽��� ����, ����� �븮: 87�� ��) ����: ���� ö���� �϶�� ��)
15:40 FSP ���� ���ȣ ��ǥ ���� ����[� ���� ���� upload ��� ����: ��Ʈ��ũ ����̹� �� ����)
--------------------------------------------------------------------------------------------------------------------

- ��Ʈ��ũ ����̺� ����
1. IP�� ���� �־ ��Ʈ��ũ ����̹� �ν� �� �Ѵٰ� ��
2. hsrwmesdb1FH ��Ʈ��ũ ����̹� �ٽ� ���� ==> \\hsrwmesdb1\data3, \administrator/adm234
==============================================================================================================

- ���� ���� eclipse ���� �߻�(2��°)
1. ����:
An internal error has occurred.
Java heap space
java.lang.OutOfMemoryError: Java heap space
2. ����: ���󹫴��� ������ �ϸ鼭 ����Ÿ ����(Ȳ���� ��ȸ ������ �� ��ĵ�ϸ鼭 ���� ������ ����)
3. ��ġ: �����ڵ��� DB ������ ����� ¥����(DB index, Ǯ ��ĵ ����)
==============================================================================================================

������������������� 2018.07.19(��) �۾� �������������������
---> 07:40 ~ 22:00 ==> FSP ���� ���ȣ ��ǥ ���� ����(10:00: ~ 12:00): hsrwmesdb1�� ���� ��Ʈ��ũ ID, PWD ��û

- ������ö AP ǰ������ �ý��� ���� Prj [��] 
- � ���� ���� upload ��� ����
1. D:\  ==> Z:\ 
 1) ���� ���ε� ��� ���� ���������� D ����̺� ��� 
==============================================================================================================

- ���� ���԰˻�(/QI_SteelPipeImpInsp.xfdl) ����
1. ds_listMaster Ds ����
==============================================================================================================
 
������������������� 2018.07.20(��) �۾� �������������������
---> 07:40 ~ 19:40 ==> �߽�(������, ¥���, ��¥�� �밡: ������ -> ���󹫰� ��), ������(20:12 ~ 22:07, �𱳿� -> ��������)

- ������ö AP ǰ������ �ý��� ���� Prj [��] 
- � ���� ���� upload ��� ����
1. D:\  ==> Z:\ 
 1) ���� ���ε� ��� ���� ���������� D ����̺� ��� 
==============================================================================================================

- ���� ���԰˻�(/QI_SteelPipeImpInsp.xfdl) ����
1. ds_listMaster Ds ����
==============================================================================================================

- ��ǰ DB ���丮�� ��Ʈ�� ����̺� ���� ���Ͼ��ε� ��� ���� ������û ==> �̻�Ź ���忡 ��û�ؼ� ����: �Ϸ�
1. 10,10.221.91(was����)���� ��Ʈ������̹� �����Ͽ� ���� ���ε带 �ҷ��� was������ ������ ����/��ȣ �� ��Ʈ������̹� ������
�Ǿ� �־�� ����  
 1) �� �������� ���丮���� Ư�� ���� ���б�/����/���� ������ �ְ� ��������  ��Ʈ������̹�  ������ �ؾ� �մϴ�.
2. 10.10.111.17 (���丮�� ����) �� hsaqmap1sa/hsaqmap1s@  �� ��������
--------------------------------------------------------------------------------------------------------------------------------

- Apache Tomcat 8.5 Tomcat8_FSP���� ��Ʈ��ũ ���� �ֱ�
1. ����(����) > Apache Tomcat 8.5 Tomcat8_FSP: ���콺 �� Ŭ�� > �Ӽ�(R) > Apache Tomcat 8.5 Tomcat8_FSP �Ӽ�
(���� ��ǻ��) (��â) > �α׿�(Tab) > ���� �������� �α׿�: ���� ����(T): .\hsaqmap1sa, ��ȣ(P): hsaqmap1s@Ȯ��(Ŭ��) 
==============================================================================================================

- FSP ���� ���ȣ ��ǥ ���� ����(14:00: ~ 16:00)
1. ���ȣ ��ǥ�� ��Ʈ�� ����̺�� �����Ͽ� ���Ͼ��ε� �Ұ��� �ϴٰ� �ߴٰ� �� ==> �űԷ� ���� �ؾ� �Ѵٰ� ��
 1) �̻�Ź ������ �������(. D:\  ����̺�� �����Ͽ� ���Ͼ��ε� ó��) �϶�� ��
==============================================================================================================

- �޴����(/SY_MenuInput.xadl) ����[�޴� ����]
1. TOOL����(TL) > �˻籸
 1)  �˻籸 �������� ���(/TL_InspPortReprChngInput): ����
�˻籸 �������� ��Ȳ(/TL_InspPortReprChngStat): ����
==============================================================================================================

������������������� 2018.07.21(��) �۾� �������������������
---> 07:40 ~ 19:40 ==>  

- �ָ�
08:00 ���
08:35 ����(���)
11:00 �����(����)
11:10 �븲�� ������(6511�� ����: ����)
12:00 ����� ������ ����
12:10 ���ǹ�ȭ������ 1�� 
13:00 ���ǹ�ȭ������ �Ĵ�(���� ����[4õ 5���]: ����[2õ��])  
14:10 ����
15:00 ���ǻ� ��� ��� �������� �湮(ȭ����� �ָ� ����, ���� ������ ��): �����̰� ���� ��
16:00 ����
16:05 Ż�ǽ� ����� ���
17:00 �Ͱ�
17:30 ����
16:30 ���
19:30 ����
23:00 ��ħ
==============================================================================================================

������������������� 2018.07.22(��) �۾� �������������������
---> 07:00 ~ 23:00 ==> 

�� �౸
08:00 ���
08:30 ����
10:30 �翺, ���� ������� ���
10:30 TV ��û
11:00 �߽�
15:30 �����
15:40 ���̼� �븲�� ==> ������, �� Ÿ�� ���� �� ������ ��ġ�� �ߴٰ� �ؼ� ���� ������ ȭ���� ���� 
15:40 �븲��� 
16:00 ����(������ȸ��: ��︲ ==> 3���� ��): 38��, ��ô ������ ����
		--> ��︲������ ���� ����
18:00 ����(���� ������ ����ƾ���丮 �ڹٶ� ����10L�� �� ����)
18:20 �÷�����Ʈ(���̽�ũ��, ���, ��� ����)
18:40 ����Ʈ(��, ���� ����)
19:00 �Ͱ�
19:10 ���̼� ��������(������, �� Ÿ�� ����)
19:20 ���� ����(�����ν���)
19:30 �Ͱ�
19:50 �����
20:05 �븲�� 7ȣ�� �������� ������(������04 ���� ž��)
20:30 �������� ����
20:49 ������(20:49 ~ 22:36, �������� -> �𱳿�) ž��[ó������ �Ͽ��Ͽ� ���� Ž]
22:45 �𱳿� ����(15�� ����)
23:10 �Ͱ�
23:40 TV ��û, Memo ����
01:00 ��ħ
==============================================================================================================

������������������� 2018.07.22(��) �۾� �������������������
---> 07:00 ~ 23:00 ==> 

�� �౸
08:00 ���
08:30 ����
10:30 �翺, ���� ������� ���
10:30 TV ��û
11:00 �߽�
15:30 �����
15:40 ���̼� �븲�� ==> ������, �� Ÿ�� ���� �� ������ ��ġ�� �ߴٰ� �ؼ� ���� ������ ȭ���� ���� 
15:40 �븲��� 
16:00 ����(������ȸ��: ��︲ ==> 3���� ��): 38��, ��ô ������ ����
		--> ��︲������ ���� ����
18:00 ����(���� ������ ����ƾ���丮 �ڹٶ� ����10L�� �� ����)
18:20 �÷�����Ʈ(���̽�ũ��, ���, ��� ����)
18:40 ����Ʈ(��, ���� ����)
19:00 �Ͱ�
19:10 ���̼� ��������(������, �� Ÿ�� ����)
19:20 ���� ����(�����ν���)
19:30 �Ͱ�
19:50 �����
20:05 �븲�� 7ȣ�� �������� ������(������04 ���� ž��)
20:30 �������� ����
20:49 ������(20:49 ~ 22:36, �������� -> �𱳿�) ž��[ó������ �Ͽ��Ͽ� ���� Ž]
22:45 �𱳿� ����(15�� ����)
23:10 �Ͱ�
23:40 TV ��û, Memo ����
01:00 ��ħ
==============================================================================================================

������������������� 2018.07.23(��) �۾� �������������������
---> 07:40 ~ 22:00 ==> ������ MK240 NANO ���콺 ������ ������ ��(����忡�� ���), �̻�Ź ���� ���� ��(���), ���̻� �湮(11:00 ~ 11:50)

- ������ö AP ǰ������ �ý��� ���� Prj [��] 
- ���� ���԰˻�(/QI_SteelPipeImpInsp.xfdl) ����
1. �������԰˻� ȭ�� ����ȭ(ds_listMaster Ds ����) --> ���� ���� ����
--------------------------------------------------------------------------------------------------------------------------------

- ���� ���԰˻� ȭ�� CRUD ó��
1. 02. �ű�(����)
 1) this.fn_add();  ==> �ű�(����)
 2) this.fn_add_02();	 ==> 02. �ű� ó��
 3) this.fn_add_02();  ==> ���߰� ó��(���� �� ��)
-------------------------------------------------------

2. 03. ����(����)
 1) this.fn_save  ==> 03. ����(����)
 
 2) this.fn_save_02(); ==> 03. ���� ó��
if(this.fn_save_valid_check() == false)  		// 01. Validation Check 

bRst = gfn_validGrid(this.grd_detail, false); 		// 02. grd_detail Grid�� Validation Check  
this.fn_getIqcNo(); 	 // 03. �˻��ȣ �ڵ� ä�� ó��

this.fn_setDs_list();	  // 04. Ds_list Ds ����

this.fn_saveAll();	// 05. ��ü ���� ó��
============================================================================================================== 

- ���� �η� ����
1. �̽��� ����(010-3835-0293)  --> 1520224,/1234!
2. ����� �븮(010-9899-1929)  --> 1520225,/1212!
==============================================================================================================

- ������ ����
1. 14:00 ~ 16:00
2. ���� ��Ʈ�� �� PC ���� ���� �ȵ�
---------------------------------------------------------------------------------------------------------------

- ���� ��Ʈ�� ����(�� ��Ʈ��)
1. ���� ��Ʈ�� �ѱ� ==> HYUNDAISTEEL\yn113088002/����2!
2. ��Ʈ��ũ ���� �α���: 1519927/ asas1212!  ==> �ߺ� ����
3. �۾������� > ���μ���Tab > SSOLOGIN.exe: ����
4. ���� > ����(O): mstsc ==> ���� ����ũ�� ����(��â) --> MSTSC(Microsoft Terminal Service Client)
 1) ���� ����ũ�� ���� > ��ǻ��(C): 10.245.178.43[�� PC], ����(N): Ŭ��
5. �� PC �α��� ==> HYUNDAISTEEL\dp116050204 / asas1212! 
6. ����
 1) ��������(HS): 1519927/ asas1212! ==> �ߺ� �Ұ� 
 2) ��Ʈ��ũ ���� �α���: 1519927/ asas1212!  ==> �ߺ� ����
==============================================================================================================

- ����� Ű���� �н� Ȯ��
1. �̻�Ź ���忡�� ���� ==> "�ְ����� ���� �� �� ���ƿ�. Ű����� �� �� �ϴ� �Ű澲�� ���ƿ�."��� ��
==============================================================================================================

������������������� 2018.07.24(ȭ) �۾� �������������������
---> 07:40 ~ 22:00 ==> 7�� ��������(13��, ����)

- ������ö AP ǰ������ �ý��� ���� Prj [��] 
- ���� ���԰˻�(/QI_SteelPipeImpInsp.xfdl) ���� ==> �Ϸ� @@
1. �������԰˻� ȭ�� ����ȭ(ds_listMaster Ds ����) --> ���� ���� ����
============================================================================================================== 

- gfn_confirm ����
1. ����: uxs (3556): SE 11:19:38:463 �ش� ID�� ���� Object �� �����մϴ�. id = [ConfirmPopup]
2. ����: gfn_confirm�� 2�� ���
3. ��ġ: v_noSveDataExstYn == "Y" ���
this.fn_search_02 = function()
{
	trace("[/QI_SteelPipeImpInsp.xfdl][fn_search_02()] ==> [TEST_51]" );
	v_noSveDataExstYn = "Y";	// �������� ���� ����Ÿ ���� ����
	gfn_confirm(this, "Q0024", "", "fn_saveConfirmCallback");		// Q0024: �������� ���� ����Ÿ�� �ֽ��ϴ�. \n�����Ͻðڽ��ϱ�?[fn_search_02()]
}

this.fn_saveConfirmCallback = function(sid, rtn)
{ 
	if(rtn)		// ���� ������ '��' �̸�
	{
		trace("[/QI_SteelPipeImpInsp.xfdl][fn_saveConfirmCallback()]==> [03. ���� ó��][TEST_41]"); 
		this.fn_save_02();		// 03. ����
	}
}

this.fn_save_02 = function()
{
	if(bRst) 	// Grid�� Validation Check ���� �̸�
	{     
		if(v_noSveDataExstYn == "Y") 	// �������� ���� ����Ÿ �����ϸ� ==> ��ȸ, �ű�, ds_list_onrowposchanged���� �Ѿ��
		{
			this.fn_setDs_list();	// 04. Ds_list Ds ����
			v_noSveDataExstYn = "N";	// �������� ���� ����Ÿ ���� ����
			trace("[/QI_SteelPipeImpInsp.xfdl][fn_save_02()]==> [03. ���� ó��][TEST_05_3][bRst]"+ bRst); 
		}
		else
		{
			v_nAlertId = 51;	// alert ID(51: �˻��ȣ �ڵ� ä�� ó��) 
			trace("[/QI_SteelPipeImpInsp.xfdl][fn_save_02()]==> [03. ���� ó��][TEST_05_4][bRst]"+ bRst); 
			gfn_confirm(this, "Q0002", "", "fn_saveConfirmCallback");		// Q0002: ���� �Ͻðڽ��ϱ�?[fn_save_02()] 
		}
	}
}
============================================================================================================== 
 
- ������ ����2
1. 19:00 ~ 20:10
==============================================================================================================

- ���� ���� eclipse ���� �߻�(3��°)
1. ����:
An internal error has occurred.
Java heap space
java.lang.OutOfMemoryError: Java heap space
2. ����:  
3. ��ġ: �����ڵ��� DB ������ ����� ¥����(DB index, Ǯ ��ĵ ����)
==============================================================================================================

- eclipse + tomcat ���� tomcat log ����� ����(Tomcat v7.0 Server at localhost)
1. ������Ʈ: ���콺 �� Ŭ�� > Run -> Run Configurations (��â) > Common ��
 1) Standara Input and Output   
 2) File�� üũ�ڽ��� üũ�� �Ŀ� File system: Ŭ�� > D:\QMS\APQMS\apache-tomcat-7.0.86\logs\apache-tomcat-7.0.86..2018-07.log
  ==> Apply: Ŭ�� 
==============================================================================================================

������������������� 2018.07.25(��) �۾� �������������������
---> 07:40 ~ 22:00 ==> �ְ����� �ۼ�

- ������ö AP ǰ������ �ý��� ���� Prj [��] 
- �޴� ���� ����
1. �����׷캰 �޴����� ��� ȭ��(/CM_TskGrpLyMenuAuthInput.xfdl) ���� ����
============================================================================================================== 

- �ػ�ũ�� ����
1. ����  native_exist_id" : ["�ش� ID�� ���� Object �� �����մϴ�. id = [", "%0", "]"], 
uxs (54552): SE 21:51:28:938 ó������ ������ ���� ���̵� �ֽ��ϴ�. ���� ���̵� [fn_afterSearch&true&&1234]
uxs (54552): SE 21:51:29:170 TypeError: Object [object Object] has no method 'fn_afterSearch'

 1) D:\QMS\APQMS\workspace\APQMS\apqms\nexacro14lib\framework\ErrorDefine.js(
  
if (this.nexacro) {
	nexacro._errortable = 
		{
		"ko" : 
			{
	"native_exist_id" : ["�ش� ID�� ���� Object �� �����մϴ�. id = [", "%0", "]"],  
	"comm_fail_duplication_svcid" : ["ó������ ������ ���� ���̵� �ֽ��ϴ�. ���� ���̵� [", "%0", "]"],  
	}
} 
2. ����:  fn_afterSearchGrp �ݹ� �Լ��� �ߺ��� ���
this.form_onload = function(obj:Form, e:nexacro.LoadEventInfo) 
{
   trace("[/CM_TskGrpLyMenuAuthInput.xfdl][form_onload()]==> [�� �ε�][TEST_01][T: �����׷캰 �޴����� ��� ȭ��]" );
 
	this.fn_search_tskGrp(); 	// �����׷챸���� ��ȸ
	this.fn_search_menu(); 	// �޴� �׷� ��ȸ   ==> 
}

this.fn_search_tskGrp = function() 
{ 
	this.fsp_clear();	// [FSP ����] fsp clear(Dataset�� ������ ����)
	
	this.fsp_addSearch("cm:CM_TskGrp_S01", false);		// [FSP ����] ��ȸ�� ���� SQLMAP ���� �߰�[�����׷챸���� ��ȸ]
 
	this.fsp_callService(	// [FSP ����] ���� ȣ��
		""					// Action ��(without java)
		,""
		,"ds_cond=ds_cond"	// inDs
		,"ds_tskGrpRescue=ds_list"	// outDs 
		,"fn_afterSearchGrp"
		,true
	);
}

this.fn_afterSearchGrp = function(ErrorCode, ErrorMsg) 
{
	this.fn_search_menu();		// �޴� �׷� ��ȸ   ==>  
}
==============================================================================================================

- 77. Instant SQL Formatter
1. www.dpriver.com/pp/sqlformat.htm
2. Format SQL ==> SQL Formatter(Ctrl+Shift+F)
==============================================================================================================

- �α��� ��ȸ ����
1. ����: 
2018/07/25 15:42:06,SYSTEM_ERROR,[SUIA_00007]It failed to execute SQL[SQL_ID:sy:SY_MenuLstInq_S02
INSERT_SQL_ID:
UPDATE_SQL_ID:
DELETE_SQL_ID:
KEY_SQL_ID:
KEY_INCREMENT:0
SAVE_FLAG_COLUMN:
TYPE:N].
2018/07/25 15:42:06,SYSTEM_ERROR,[SUIA_00003]It failed to execute (action:nDefaultAction/execute)(client:all).
java.lang.IllegalStateException: Unable to add column: duplicatedName=MENU_SEQ, duplicatedIndex=1
	at com.nexacro.xapi.data.DataSet.checkDuplicatedColumn(DataSet.java:5073)
2. ����: MENU_SEQ �ʵ尡 2�� �Է��ؼ� ���� ����
/* �޴�  ���� ���� ��ȸ ==> [/sy:SY_MenuLstInq_S01.xml] [2018.05.25, by ���¸�] */   
SELECT  A.MENU_SEP,
			A.MENU_SEQ,  
			A.MENU_SEQ,     //  1�� ����
==============================================================================================================

- Grid edittype ����
this.fn_callback = function(nErrorCode, sErrorMag, sid)
{ 
	switch(sid) 
	{
		case "sid_inqyTskGrpMenuAuth" : 	// �����׷캰 �޴����� ��ȸ
			trace("[/CM_TskGrpLyMenuAuthInput.xfdl][fn_callback()]==> [TEST_53][ds_tskGrpMenuAuth.CNT]"+ 
				this.ds_tskGrpMenuAuth.getRowCount() +"[ds_tskGrpMenuAuth.saveXML()] \n"+ this.ds_tskGrpMenuAuth.saveXML() );  	 
	 
			// this.grd_resultAuth.setCellProperty("body", 1, "edittype", "expr:TREE_LEVEL=='0'||TREE_LEVEL=='1'?'none':'checkbox'");		
			// TREE_LEVEL �ʵ尡 0, 1 �� �� checkbox�� ��� �Ұ��� ó��
			
			// UI_ID �ʵ尡 Null �� �� checkbox�� ��� �Ұ��� ó��
			this.grd_resultAuth.setCellProperty("body", 1, "edittype", "expr:UI_ID !=null ?'checkbox':'none'");		// Grid edittype ����(��ü ���� Į��)
			this.grd_resultAuth.setCellProperty("body", 2, "edittype", "expr:UI_ID !=null ?'checkbox':'none'");		// Grid edittype ����(��ȸ ���� Į��)
			this.grd_resultAuth.setCellProperty("body", 3, "edittype", "expr:UI_ID !=null ?'checkbox':'none'");		// Grid edittype ����(�ű� ���� Į��)
			this.grd_resultAuth.setCellProperty("body", 4, "edittype", "expr:UI_ID !=null ?'checkbox':'none'");		// Grid edittype ����(���� ���� Į��)
			this.grd_resultAuth.setCellProperty("body", 5, "edittype", "expr:UI_ID !=null ?'checkbox':'none'");		// Grid edittype ����(���� ���� Į��)
			this.grd_resultAuth.setCellProperty("body", 6, "edittype", "expr:UI_ID !=null ?'checkbox':'none'");		// Grid edittype ����(�μ� ���� Į��)
			this.grd_resultAuth.setCellProperty("body", 7, "edittype", "expr:UI_ID !=null ?'checkbox':'none'");		// Grid edittype ����(���� Į��)
		break;
	}
} 
==============================================================================================================

������������������� 2018.07.26(��) �۾� �������������������
---> 07:40 ~ 22:00 ==> STGClient 4.0.exe ���α׷� ���(AP QMS ����, � ���� ����, ������)

- ������ö AP ǰ������ �ý��� ���� Prj [��] 
- �޴� ���� ���� ==> �Ϸ� @@@
1. �����׷캰 �޴����� ��� ȭ��(/CM_TskGrpLyMenuAuthInput.xfdl) ���� ����
 1) �����׷캰 ����� ���(CM_TskGrpLyUsrInput.xfdl) ȭ�鿡�� �޴�������(Y) �ʵ带 �߰��ؼ� �׷캰�� ���ѱ׷��ڵ带 �����ؾ� ��
============================================================================================================== 

- ��ȸ�� Wait Ŀ�� ǥ��
1. /APQMS.xadl ���Ͽ��� loadingimage="URL('img::waitimage.gif')"
<Application id="APQMS" codepage="utf-8" language="Korean" loginformurl="" loginformstyle="" windowopeneffect="" 
	windowcloseeffect="" version="" tracemode="none" themeid="APQMS.xtheme" onload="application_onload" 
	onloadforms="application_onloadforms" httptimeout="60" loadingimage="URL('img::waitimage.gif')" 
	onbeforeexit="application_onbeforeexit">
	<Layout>
    </Layout>
 </Application>
2. setWaitCursor: Wait Ŀ���� ǥ���Ͽ� �Է��� �����ϰų�, ǥ�� ���¸� �����ϴ� �޼ҵ�  
/***********************************************************************
 * �Լ���  	    : fn_search
 * ���� 		: 01. ��ȸ(����) Master, Detail, Sample ���� ��ȸ  
***********************************************************************/
this.fn_search = function()
{ 
	trace("[/SY_ScreenInput.xfdl][fn_search()]==> [TEST_01]" ); 
	
	this.setWaitCursor(true);		// Wait ���� ����   ===> setWaitCursor ������ �ʿ� ����(���� �Լ����� ����)
 
	this.fsp_callService(
		  ""
		, ""
		, "ds_cond=ds_cond"
		, "ds_listMaster=ds_listMaster"
		, "" 
			,"fn_callback"		// �ݹ� �Լ� ��
		, false				// error�� callback ȣ�� ���� 
		, false				// "ó�� ���Դϴ�."��� â ǥ�� ����
		, true				// ������ ��� ���(true: �񵿱�(Default), false: ����)	
		, "sid_find"		// ���� ��û ���̵�(�ݹ� �Լ����� ��� ����)
	); 
} 
==============================================================================================================
 
������������������� 2018.07.27(��) �۾� �������������������
---> 07:40 ~ 19:40 ==> ������(20:12 ~ 22:07, �𱳿� -> ��������) 

- ������ö AP ǰ������ �ý��� ���� Prj [��] 
- SSO ����
1. �α��� ȭ��(commLogin.xfdl)����
this.fn_onloadFirst = function()
{
	if(!gfn_isNull(application.gv_token)) 	// ��Ÿ ����(SSO)�� ���� token ���� ���޵� ���
	{ 
		trace("[/commLogin.xfdl][fn_onloadFirst()] ==> [TEST_32][application.gv_token]"+ application.gv_token );
 
		// ���޵� ���������͸� ����Ͽ� ����, �޴�, ���̸޴� ���� ȣ��
		ds_cond.setColumn(0, "USER_ID", application.gv_token);		// �����ID
		ds_cond.setColumn(0, "IS_SSO", "Y");		// SSO����
		
		this.fn_loginTr();	// ��������� ��������(�� ó�� -> �޴�&����, �����ڵ�)
	}
}

- SSO ���� ó��(1515940: ������)
https://apqmsdev.hyundai-steel.com/APQMS/index.jsp?gv_token=1515940

http://10.10.180.108:8081/install/xInstallPlugin.jsp 

- Nexacro Browser(Runtime) ���� ����  ==> /nexacro14Runtime.zip
============================================================================================================== 

- Calendar.essential �߰�(/Common.css ���Ͽ���)
1. Calendar �ʼ� �̹��� ���̰� ����
/* Calendar */
/* �߰�[Calendar.essential �߰�]: 2018.07.27, by ���¸� */
Calendar.essential  
{
	background		: #ffffff URL('theme://WorkFrame/img_WF_Essential.png');
}
============================================================================================================== 

- ���� ������ ��� �޴�, ���� �޴� ��ư ����
/***********************************************************************
 * �Լ���  	: afn_loadCommonData
 * ���� 		: �α��� �˾� �ݹ� �Լ� 
***********************************************************************/
this.afn_popup_callback = function(sid, rtn)
{
	trace("[/APQMS.xadl][afn_popup_callback()]==> [�α��� �˾� �ݹ� �Լ�][TEST_01][sid]"+ sid +"[rtn]"+ rtn ); 

	if(rtn) 
	{  
		this.av_leftFrame.form.fn_getUserMenu();	// left Frame ��� ������ Menu ��ȸ  
		this.av_topFrameSet.set_visible(true);		// top Frame ���̱� 
 
		if(application.gv_userId == "1519927") { 	// ����� 1519927 �̸�
			this.av_mainFrame.set_openstatus("maximize");		 // ���� ȭ�� �ִ� ũ��� ����(normal: ����, maximize: �ִ�)   
			application.av_leftFrame.form.div_menu.set_visible(false);	// div_menu �� ���̱� ó��
			application.av_leftFrame.form.div_myMenu.set_visible(true);	// div_myMenu ���̱� ó��  
			application.av_leftFrame.form.btn_myMenu.set_cssclass("btn_LF_MyMenu_S");	// div_myMenu css ���� ó��(���� ���� ó��)  
			--> ���� �޴����� ��� MyMenu ��ư ����(����) ó�� @@@
			gfn_ShowLeftMenuFrame(240);		// Left �޴� ���� ó��
			fn_showLeftMenuOpen();		// Left �޴� ���� ó��(Left Menu ������ ������, ���̱�)
		}	
		else
		{
			application.av_leftFrame.form.div_menu.set_visible(true);	// div_menu ���̱� ó��
			application.av_leftFrame.form.div_myMenu.set_visible(false);	// div_myMenu �� ���̱� ó��  
			application.av_leftFrame.form.btn_menu.set_cssclass("btn_LF_Menu_S");		// div_myMenu css ���� ó��: ���� �޴����� 
			��� Menu ��ư ����(����) ó�� @@@	
		}
		trace("[/APQMS.xadl][afn_popup_callback(()]==> [TEST_02] [gds_session,_CNT]"+ application.gds_session.rowcount 
		+"[gds_session.saveXML()] \n"+ application.gds_session.saveXML() );
 	
		var sUserNmDeptNm = application.gds_session.getColumn(0, "KO_NM") +" ["+ application.gds_session
		.getColumn(0, "DEPT_NAME")+"]";		// ����, �μ�
 
		application.av_topFrame.form.st_userNmDept.set_text(sUserNmDeptNm); 	// ����[�μ�] ���� (TOP ������)  
	}
}
--------------------------------------------------------------------------------------------------------------------------------

- ���� �޴�(/frmLeft.xfdl) ���Ͽ���
/***********************************************************************
 * �Լ���  	: btn_menu_onclick
 * ���� 		: Menu ��ư Ŭ�� �̺�Ʈ
***********************************************************************/
this.btn_menu_onclick = function(obj:Button,  e:nexacro.ClickEventInfo)
{
	trace("[/frmLeft.xfdl][btn_menu_onclick()]==> [���� �޴����� �޴� ��ư Ŭ�� �̺�Ʈ][TEST_01] ===========> " ); 
   
	this.div_menu.set_visible(true);		// div_menu ���̱� ó��
	this.btn_menu.set_cssclass("btn_LF_Menu_S");  // �޴� css ����	--> ���� �޴����� ��� Menu ��ư ����(����) ó�� @@@
	
	this.div_myMenu.set_visible(false);		// ddiv_myMenu  �� ���̱� ó��
	this.btn_myMenu.set_cssclass("btn_LF_MyMenu");  // �޴� css ����(���� ���� ó��)	--> ���� �޴����� ��� MyMenu ��ư ���� ó�� @@@
    
	this.ds_subMenu.copyData(application.gds_menu, true);  		// ���� Frame ds_subMenu Ds�� ���� 
}
--------------------------------------------------------------------------------------------------------------------------------

/***********************************************************************
 * �Լ���  	: btn_myMenu_onclick
 * ���� 		: my Menu ��ư Ŭ�� �̺�Ʈ 
***********************************************************************/
this.btn_myMenu_onclick = function(obj:Button,  e:nexacro.ClickEventInfo)
{
	//trace("[/frmLeft.xfdl][btn_myMenu_onclick()]==> [My Menu ��� ��ȸ][TEST_01]" ); 
 
	this.div_menu.set_visible(true);		// div_menu �� ���̱� ó��
	this.btn_menu.set_cssclass("btn_LF_Menu");  // �޴� css ���� --> ���� �޴����� ��� Menu ��ư ���� ó�� @@@
	
	this.div_myMenu.set_visible(true);		// div_myMenu ���̱� ó��
	this.btn_myMenu.set_cssclass("btn_LF_MyMenu_S");  // �޴� css ���� --> ���� �޴����� ��� MyMenu ��ư ����(����) ó�� @@@)
	
	this.fn_getMyMenu();	// my Menu ��ȸ
}
============================================================================================================== 
 
- ���� ���԰˻�(/QI_SteelPipeImpInsp.xfdl) ���� ==> �Ϸ� @@
1. ����: ��ȸ  ��ư Ŭ�� --> �ű�  ��ư Ŭ��  -->  �������԰˻� ��Ȳ Grid Ŭ�� ==> ������, �����ڰ� Ʋ����
��ȸ ����:  2018-07-06 ~ 2018-07-27
[TEST_40][nRow]7[�˻��ȣ]20180720-14-0007[������]����ö[������]����
[TEST_40][nRow]7[�˻��ȣ]20180720-14-0007[������]���¸�2[������]���¸�2
2. ����: �� �߰���  this.fn_get_confirmer() �Լ����� this.ds_list.setColumn�� ó����
this.ds_list.setColumn(nRow, "EXAM_UNM", this.ds_confirmer.getColumn(0, "EXAM_UNM"));  	// ������
3. ��ġ: his.fn_get_confirmer() �Լ� ��� ����(�Լ� �ּ� ó��)
/***********************************************************************
 * �Լ���  	: fn_addrow
 * ���� 		: ���߰� ó��  
***********************************************************************/
this.fn_addrow = function()
{
	trace("[/QI_SteelPipeImpInsp.xfdl][fn_addrow()]==> [�� �߰� ó��][TEST_01]" );
 
	//this.fn_get_confirmer();	// ������, ������ ����  ==> ��� ����(�Լ� �ּ� ó��) 
}
============================================================================================================== 

- ���� ���԰˻�(/QI_SteelPipeImpInsp.xfdl) ���� ==> �Ϸ� @@
1. ����: ds_detail Ds ���߰��� �ؾ߸� ����� �� �ְ� �����ϰ� ������ �ϸ� ���� �߻�(fn_save_02 �Լ� 2�� ȣ���) 
uxs (92832): UD 13:11:9:136  [/QI_SteelPipeImpInsp.xfdl][fn_save_02()]==> [03. ���� ó��][TEST_01][�˻��ȣ]
uxs (92832): UD 13:11:9:137  [/QI_SteelPipeImpInsp.xfdl][fn_setDs_list()]==> [TEST_02][ds_detail,_CNT]1
uxs (92832): UD 13:11:9:138  [/QI_SteelPipeImpInsp.xfdl][fn_save_valid_check()]==> [valid_check][TEST_01]
uxs (92832): UD 13:11:9:141  [/QI_SteelPipeImpInsp.xfdl][fn_save_02()]==> [03. ���� ó��][TEST_05][bRst]true
uxs (92832): UD 13:11:9:142  [/QI_SteelPipeImpInsp.xfdl][fn_save_02()]==> [03. ���� ó��][TEST_05_2][bRst]true[v_noSavDataExstYn]N
uxs (92832): UD 13:11:9:144  [/QI_SteelPipeImpInsp.xfdl][fn_save_02()]==> [03. ���� ó��][TEST_05_4][bRst]true[v_noSavDataExstYn]N
uxs (92832): UD 13:11:9:146  [/QI_SteelPipeImpInsp.xfdl][fn_save_02()]==> [03. ���� ó��][TEST_05_6][bRst]true
uxs (92832): UD 13:11:10:452 [/QI_SteelPipeImpInsp.xfdl][fn_saveConfirmCallback()] ==> [���� ���� �ݹ�][TEST_01][sid]ConfirmPopup[rtn]true[v_nAlertId]51
uxs (92832): UD 13:11:10:452 [/QI_SteelPipeImpInsp.xfdl][fn_saveConfirmCallback()]==> [03. ���� ó��][TEST_41]
uxs (92832): UD 13:11:10:458 [/QI_SteelPipeImpInsp.xfdl][fn_save_02()]==> [03. ���� ó��][TEST_01][�˻��ȣ]
uxs (92832): UD 13:11:10:462 [/QI_SteelPipeImpInsp.xfdl][fn_setDs_list()]==> [TEST_02][ds_detail,_CNT]1
uxs (92832): UD 13:11:10:465 [/QI_SteelPipeImpInsp.xfdl][fn_save_valid_check()]==> [valid_check][TEST_01]
uxs (92832): UD 13:11:10:469 [/QI_SteelPipeImpInsp.xfdl][fn_save_02()]==> [03. ���� ó��][TEST_05][bRst]true
uxs (92832): UD 13:11:10:469 [/QI_SteelPipeImpInsp.xfdl][fn_save_02()]==> [03. ���� ó��][TEST_05_2][bRst]true[v_noSavDataExstYn]N
uxs (92832): UD 13:11:10:473 [/QI_SteelPipeImpInsp.xfdl][fn_save_02()]==> [03. ���� ó��][TEST_05_4][bRst]true[v_noSavDataExstYn]N
uxs (92832): UD 13:11:10:473 [/QI_SteelPipeImpInsp.xfdl][fn_save_02()]==> [03. ���� ó��][TEST_05_6][bRst]true
uxs (92832): SE 13:11:10:477 �ش� ID�� ���� Object �� �����մϴ�. id = [ConfirmPopup]

/***********************************************************************
 * �Լ���  	: fn_save_02
 * ���� 		: 03. ���� ó�� 
***********************************************************************/
this.fn_save_02 = function()
{
	v_nAlertId = 51;	// alert ID(51: �˻��ȣ �ڵ� ä�� ó��) 
	//trace("[/QI_SteelPipeImpInsp.xfdl][fn_save_02()]==> [03. ���� ó��][TEST_05_4][bRst]"+ bRst +"[v_noSavDataExstYn]"+ v_noSavDataExstYn ); 
	
	if(v_noSavDataExstYn == "Y") 	// �������� ���� ����Ÿ �����ϸ� ==> ��ȸ, �ű�, ds_list_onrowposchanged���� �Ѿ��
	{ 
		v_noSavDataExstYn = "N";	// �������� ���� ����Ÿ ���� ����
		this.fn_getIqcNo(); 	// 03. �˻��ȣ �ڵ� ä�� ó��
	}
	else
	{ 
		gfn_confirm(this, "Q0002", "", "fn_saveConfirmCallback");		// Q0002: ���� �Ͻðڽ��ϱ�?[fn_save_02()] 
	}
}

/***********************************************************************
 * �Լ���  	: fn_saveConfirmCallback
 * ���� 		: ���� ���� �ݹ� 
***********************************************************************/
this.fn_saveConfirmCallback = function(sid, rtn)
{
	trace("[/QI_SteelPipeImpInsp.xfdl][fn_saveConfirmCallback()] ==> [���� ���� �ݹ�][TEST_01][sid]"+ sid +"[rtn]"+ rtn +"[v_nAlertId]"+ v_nAlertId );
 
	if(v_nAlertId == 51)	// �˻��ȣ �ڵ� ä�� ó�� �̸�  ==> �߰� @@@
	{
		v_nAlertId = 0;			// alert ID
		
		if(rtn)	// ���� ������ '��' �̸�
		{
			this.fn_getIqcNo();		// 03. �˻��ȣ �ڵ� ä�� ó��  ==> �߰� @@@
		}
	}
	else
	{ 
		if(rtn)		// ���� ������ '��' �̸�
		{
			trace("[/QI_SteelPipeImpInsp.xfdl][fn_saveConfirmCallback()]==> [03. ���� ó��][TEST_41]"); 
			this.fn_save_02();		// 03. ����
		}  
	}
}
============================================================================================================== 

������������������� 2018.07.28(��) �۾� �������������������
---> 07:40 ~ 19:40 ==>  

- �ָ�
08:00 ���
08:35 ����(���)
11:00 �����(����)
11:20 �߽�(����� ����, ġ�����, ���õ�� �븲��) ����
12:00 �Ͱ�(��� ������ ��)
12:10 �븲�� ������(6511��, 150�� ����, �븲�� -> ����Ź���)
13:00 ����Ź��� ����: �ҳ��Ⱑ ��û �ͼ� �� �� ����(�ڵ��� ������/USB ��Ʈ�� ���� ��
13:30 ���� ���� ����(���� ���� ȭ��ǿ��� �� ���� ����): ������ �� ���� ���� ==> å, �峭�� ����
14:30 ��ȭ�� ���� ����(�� ��ħ)
15:30 ����1�� ������(150�� ����, ����1�� -> �Ŵ�� ���� �󶼺�)
17:00 �Ͱ�
17:30 ����
16:30 ���
19:30 ����
23:00 ��ħ(��ǳ�� ���� ��: �ʹ� ����)
==============================================================================================================

������������������� 2018.07.29(��) �۾� �������������������
---> 07:00 ~ 23:00 ==> 

�� �౸
08:00 ���
09:35 ����(���)
10:30 �翺, ���� ����õ �������忡 ���
10:30 TV ��û
11:00 �߽�(�ø�)
11:30 TV ��û
19:00 ����� 
19:20 ����Ʈ(��, ���� ����)
19:30 �Ͱ� ==> �翺, ���� �Ͱ��ؼ� ���� ����
19:30 ����
20:00 �����
20:10 �븲�� 7ȣ�� �������� ������(������04 ���� ž��)
20:30 �������� ����
20:49 ������(20:49 ~ 22:36, �������� -> �𱳿�) ž��
		==> �� �ڸ��� �������� 3�� ���� ���ڸ� ħ --> �� �޾Ƽ� ���� �ϴ� ���� �ڸ��� �ڷ� ���� �粸�� �׷��ٰ� �� --> �� ���޾Ƽ� ���� �θ�
22:45 �𱳿� ���� 40�� ����) ==> ?�� ��� -> ���սǿ� ���� �������� ���� �޾ƿ�(�ڷ��Ͽ� Ȩ���������� �������� ���� ���ϸ��� 1,000�� ����)
		--> ���� �Ǿ Ȩ���������� �������� ���ϸ� ó���ϸ� ��
		����������� ��û ȭ�� ==> http://www.letskorail.com/ebizcom/EbizComMypagePr14200W_pr14260.do 
		������ ���ϸ��� ���� ��û ==> http://www.letskorail.com/ebizcom/EbizComMypagePr14200W_pr14260.do 
23:40 �Ͱ�
24:40 TV ��û, Memo ����
01:00 ��ħ
==============================================================================================================

������������������� 2018.07.30(��) �۾� �������������������
---> 07:40 ~ 21:30 ==> 2���� ����(������ ���� -> ������ ����(10:40] -> ����[11:00]), �߽�(�ӹ�, ������ �Ĵ�: ������ -> �̻�Ź ������ ��)

- ������ö AP ǰ������ �ý��� ���� Prj [��] 
- SSO ����
1. �α��� ȭ��(commLogin.xfdl)����
"http://spmes.hyundai-steel.com/sso_steel.jsp", "CMES");'>����MES

- SSO ���� ó��(1515940: ������)
https://apqmsdev.hyundai-steel.com/APQMS/index.jsp?gv_token=1515940

http://10.10.180.108:8081/install/xInstallPlugin.jsp
http://spmes.hyundai-steel.com/sso_steel.jsp  ==> ����MES
"C:\Program Files\TOBESOFT\XPLATFORM\9.2\XPlatform.exe"  -K '_DEV'  -X 'http://10.10.180.108:8081/xui/humes.xadl' -OO 'true'

ping spmes.hyundai-steel.com    ===> 10.10.111.110
https://apqmsdev.hyundai-steel.com/APQMS/sso_steel.jsp  ==> ����MES

http://10.10.180.108:8081/sso_steel.jsp  ==> �������̽��� ���� MES
http://10.10.180.108:8081/xui/sso_steel.jsp  ==> �������̽��� ���� MES

https://apqmsdev.hyundai-steel.com/sso_steel.jsp  ==> ������ö AP QMS ���� ����

null  ==> �������̽��� ���� MES
--> com.nets.sso.common.AgentException: ��ϵ��� ���� SSO ����Ʈ �� ������ ���� ��û�Ǿ����ϴ�., Exception Code = 13000003 
"C:\Program Files\TOBESOFT\XPLATFORM\9.2\XPlatform.exe"  -K 'HUMES_LOCAL'  -X 'null' -OO 'true'

 https://myit.hyundai-steel.com/cp/index.jsp
==============================================================================================================

- �޴����(/SY_MenuInput.xadl) ����[�޴� ����]
1. ������� (UM) > 4M �������
 1) 4M���� �뺸 ���(UM-01-030, UM_4MChngNotiInput) ����
 
2. ������� (UM) > ISIR����
 1) �� ISIR �Ƿ�/���� ���(UM-02-010, UM_CustISIRReqtAprvInput) ==> ISIR ���/���� (UM_ISIRInputAprv)
 2) �� ISIR ���⼭�� ���(UM-02-020, UM_CustISIRPstPapersInput) ==> ����
 3) �� ISIR ���� ���(UM-02-030, UM_CustISIRRBlackacreOtpt) ==> ISIR ���� ���(UM_ISIRRBlackacreOtpt)
 
3. ������� (UM) > ���»� 4M �������
 1) ���»� 4M���� �Ƿ� ���(UM-03-010, UM_Vndr4MChngReqtAprvInput) ==> ���»� ISIR ����/���� ���(UM_VndrISIRAccpAprvInput) 
 2) ���»� 4M���� ���� ���(UM-03-020, UM_Vndr4MChngRsltInput) ==> �� ISIR ���⼭�� ���(UM_CustISIRPstPapersInput)
 3) ���»� 4M���� ��ȹ/���� ��Ȳ(UM-03-030, UM_Vndr4MChngPlanRsltStat) ==> �߰�
 
4. ������� (UM) > ���»� ISIR����
 1) ���»� ISIR ���/����(UM-04-010, UM_VndrISIRReqtAprvInput) ==> �߰�  
 2) ���»� ISIR ���� ���(UM-04-020, UM_VndrISIRRBlackacreOtpt) ==> �߰�  
 
5. �������� (NC) > ������Ʈ����
 1) WBS ���(���ø�): ��ġ ����(4��°) 
 
6. �������� (NC) > ����EO����
 1) ����EO ���� ���(NC-03-020, NC_DvlpEOTskInput) ==> ����EO �������� ���(NC_DvlpEOTskMngmInput)

7. �������� (NC) > ���EO����
 1) ���EO ���(NC-04-010, NC_MassProductionEOInput ==> ���EO ���� ���(NC_MassProductionEOAccpInput)
 2) ���EO ���� ���(NC-04-020, NC_MassProductionEOTskInput) ==> ���EO �������� ���(NC_DvlpEOTskMngmMngmInput)   
==============================================================================================================
  
- �̹��� ���ε� �̰�  ó��
1. ���� ���� --> � ����
D:\QMS\APQMS\workspace\APQMS\upload\img\apqms

- Ubi ���� ���� �̰�  ó��
1. ���� ���� --> � ����
D:\QMS\APQMS\workspace\APQMS\WebContent\ubi4\work
==============================================================================================================

������������������� 2018.07.31(ȭ) �۾� �������������������
---> 07:40 ~ 22:00 ==> ȸ��(22:30 ~ 01:30, ȣ����, ������ ����, �赵�� �븮): ���𵷱ȣ��

- ������ö AP ǰ������ �ý��� ���� Prj [��] 
- �α� �ƿ� ó��
1. TOP ������(/frmTop.xadl)���� �α� �ƿ� ó�� �� �α��� ȭ��(commLogin.xfdl)���� �̵�
this.btn_exit_onclick = function(obj:Button,  e:nexacro.ClickEventInfo)
{
	trace("[/frmTop.xfdl][btn_exit_onclick()] ==> [�ý��� ����][TEST_01]" ); 
	
	gfn_confirm(this, "Q0021", "", "exitConfirmCallback"); // Q0021: �α� �ƿ� �Ͻðڽ��ϱ�? 
}

/***********************************************************************
 * �Լ���  	: exitConfirmCallback
 * ���� 		: �ݹ� �Լ�
 * params  		: None
 * return Type 	: None 
***********************************************************************/
this.exitConfirmCallback = function(sid, rtn)
{
	trace("[/frmTop.xfdl][exitConfirmCallback()] ==> [�ý��� ���� �ݹ�][TEST_01][sid]"+ sid +"[rtn]"+ rtn ); 
	
	if(rtn) 
	{ 
		application.JSESSIONID = ""; 
		application.gds_session.clearData();
		application.gds_openMenu.clearData();
		application.gds_menu.clearData();
		application.gds_myMenu.clearData();
		application.gds_message.clearData();
		application.gv_userId = "";	// �α��� ID
		application.gv_token = "";	// �α��� ID(SSO)
		
		this.afn_loginPopup();		// �α��� �˾� �Լ� ȣ�� ȣ�� 
	}
} 
==============================================================================================================

- �޴� ���� ����
1. �����׷캰 �޴����� ��� ȭ��(/CM_TskGrpLyMenuAuthInput.xfdl) ���� ����
 1) ���� Į�� ==> ���̱� Į�� ����
==============================================================================================================  
���������������������������������������������������������� 
+----------------------------------------------------// End //----------------------------------------------------+
����������������������������������������������������������
