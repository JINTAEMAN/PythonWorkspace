 

�����������������������������������������������������������
+---------------------------------------------// Memo(2015.09) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2015.09.01(ȭ) �۾� ����������������
---> 07:00 ~ 19:10 ==> �߼�ǥ ����(KTX, 6��): ����ڰ� �ʹ� ���Ƽ� ����

- �Ѽ� ERP �籸�� Prj[��] 
- ����(/MAIN.xfdl) ȭ�� ����
==============================================================================================================

- ���߼��� ���̼��� ���
1. XPLATFORM_Client_License.xml ���̼��� ���
 1) 00. XPlatform ���̼���(2015.08~09)/XPLATFORM_Client_License.xml �� �ٿ�ε� ����
 2) ���߼��� C:\hsdocs\hse\docroot\XIContent\HsDeploy������ �ٿ� �ֱ�
2. XPLATFORM_Server_License.xml ���̼��� ���
 1) 00. XPlatform ���̼���(2015.08~09)/XPLATFORM_Server_License.xml �� �ٿ�ε� ����
 2) ��Ŭ���� C:\HS_ERP\workspace\handsome\src\main\webapp\WEB-INF\lib������ �ٿ� �ֱ� ��
 Ŀ���� �� 
3. Jenkins ���� ==> http://172.168.110.41:6060/jenkins/ 
==============================================================================================================

- XPlatform ȯ�� ����
1. titletext�� ǥ��
 1) UXSTUDIO�� Tools�޴� > Options: Ŭ�� > Environment > Prject Explorer �׸�: ����  
FDL Parsing(Prject open) : All ����
Show Title : at Prject Explorer ���� 
-----------------------------------------------------------------------------------------------

 - Script ��Ʈ ����
1. Tools > Options > Environment > Font and COlor > Script: ���� ũ�� ����
 1) ȭ�� ���� �� ��, �� �ƿ�: Ctrl + ���콺 ��
-----------------------------------------------------------------------------------------------

- �ּ� ó��
1. /: �ּ� ����
2. Atl + /: �ּ� Ǯ��
-----------------------------------------------------------------------------------------------

- �ҽ��� ���� �߰�
 Tools > Options > Environment > Font and COlor > Source(Ŭ��): 
View Indentation Guide(üũ), Auto Indent(üũ) ==> OK(Ȯ��) ---> Message, Script, CSS�� ��� üũ 
==============================================================================================================
 
- ǥ�� ���� ����(14��)
1. �Ͻ�: 2015�� 9�� 1��(ȭ) 14�� 
2. ���: (��)�Ѽ� ���� 4�� ȸ�ǽ�
3. ���: ��ü ������
==============================================================================================================
 
- KT �÷� ������(IP Time) ��ġ(olleh WiFi home) ==> ��ü�ش޶�� �ؼ� ��ü ��
1. 17�ÿ� KT ��簡 ���� �湮�ؼ� ��ġ����
2. ��ǰ ���
 1) ��ǰ��: olleh WiFi home
 2) �𵨸�: KM05-410H
 3) ������: (��)��ť��
 4) �������: 2015.08]
 5) ��������: olleh_WiFi_4C74 ==> 0000005680
 6) MAC ADDRESS: 085DDD294C74
 7) ����������ȣ: 201508055680
 8) KT BARCODE: HMAP9182974055680 
==============================================================================================================

������������������� 2015.09.02(��) �۾� ����������������
---> 07:00 ~ 19:10 ==> 

- �Ѽ� ERP �籸�� Prj[��]
- default.xtheme ���� ���� �� ���߼����� xtheme �̹��� �ݿ� �ȵ�  
1. ����: �� �� ���� �����̳ʰ� default.xtheme�� �����ϰ� ���� ���� �� ö���� �߽��ϴ�.
�׷��� ���ÿ����� �� �Ǵµ� ���� ������ �ø��� �̹����� �� ���Դϴ�.
  1) HandsomeERP.xadl ���Ͽ���
<Application id="DefautTheme"  themeid="CSS::HS_ERP.xtheme" filesecurelevel="all" usecontextmenu="form" >
  <Layout>
<MainFrame id="mainframe">

</MainFrame>
</Layout>
     <Style url="theme://HS_TEM.css"/>
    <Style url="theme://HS_CSS.css"/>
    <Style url="theme://HS_MDI.css"/>  
</Application>

3. ����:  default_typedef.xml ���Ͽ��� CSS�� static�ε� version �� �ٲٰ� ����ؼ� ���� ����
4. ��ġ: ����� �� ���� static�ε� version�� �ø��ų� cachelevel="dynamic"���� ������ ��
- CSS, IMG�� static ���(�� ������ �ȵ�)
<!-- CSS ����(static�� CSS�� ����Ǹ� version�� �ٲپ�� ��, dynamic����, ���� ���� �� static���� ���� �� ) -->
<Service prefixid="CSS" type="file" url="./CSS/" version="20150902001" communicationversion="0" cachelevel="dynamic"/> 
<!-- IMG ����(static�� CSS��  ����Ǹ� version�� �ٲپ�� ��, dynamic����, ���� ���� �� static���� ���� �� ) -->
<Service prefixid="IMG" type="file" url="./Images/" version="20150902001" communicationversion="0" cachelevel="dynamic"/> 
==============================================================================================================

- ������ ��Ʈ5 ����(N920KGD_64G)
1. �Ｚ ���� ��Ī �̺�Ʈ ���� --> ������ȣ: 15F-12TB-TRB9-N9TN,
==> ���� �޼� ���� ������(�𵨸� : EP-PN920BBKG, ��) ���� ==> 5õ�� 
==============================================================================================================

- ����Ű ����Ʈ Ȯ��
1. ���� F4�� ��� ��(F4: ȭ�� debugâ ����)
==============================================================================================================

- ������ shell(�͹̳�)
1. Babun - a windows shell  ==> http://babun.github.io
- ���߼��� �α�
1. C:\hslog\hse\server1\JeusServer.log
==============================================================================================================

������������������� 2015.09.03(��) �۾� ����������������
---> 07:00 ~ 19:10 ==> 

- �Ѽ� ERP �籸�� Prj[��]
- /nhGrid.xjs ����
==============================================================================================================

- SYSTEM �� ����
1. HS_ERP(�ػ�: 1208)==> http://172.168.110.41:7070/XIContent/HsDeploy/index.htm
2. HS_SCM(�ػ�: 1024)==> http://172.168.110.41:7070/XIContent/HsDeploy/SCMindex.htm
3. HS_POS(�ػ�: 1024)==> http://172.168.110.41:7070/XIContent/HsDeploy/POSindex.htm
4. HS_TRADE(�ػ�: 1024)==> http://172.168.110.41:7070/XIContent/HsDeployTRADEindex.htm
5. HS_BI(�ػ�: 1024)==> http://172.168.110.41:7070/XIContent/HsDeployBIindex.htm
==============================================================================================================

- �Ѽ� ERP ���� �ٷΰ��� URL ����  
1. �ٷΰ��� URL ���� ���
 1) ����ȭ�� > HS_ERP(������ �� Ŭ��) > �Ӽ�(R) > ���(T) > HS_ERP �Ӽ�(��â)
  : "C:\Program Files (x86)\TOBESOFT\XPLATFORM\9.2.1\XPlatform.exe"  -K 'HS_ERP'  -X 'http://172.168.110.41:7070/XIContent/HandsomeERP.xadl'
  ==> "C:\Program Files (x86)\TOBESOFT\XPLATFORM\9.2.1\XPlatform.exe"  -K 'HS_ERP'  -X 'http://172.168.110.41:7070/XIContent/HS_ERP.xadl'
  �� ���� > Ȯ��(Ŭ��)
----------------------------------------------------------------------------------------------------------------------

- SYSTEM �� ���� URL
1. HS_ERP(�ػ�: 1208)==> http://172.168.110.41:7070/XIContent/HsDeploy/index.htm
2. HS_SCM(�ػ�: 1024)==> http://172.168.110.41:7070/XIContent/HsDeploy/SCMindex.htm
----------------------------------------------------------------------------------------------------------------------

- ���� ��û ����
1. Grid ���� ���ֱ� ==> �Ϸ� @@@
2. Grid TOTAL: 3�� ���̱�  ==> �Ϸ� @@@
2. Excel(ctrl + v)
3. �̸�: ��*��  ==> �Ϸ� @@@
4. �޽��� ���� ==> Menu
==============================================================================================================

- ����Ȯ��(HTML Color Picker)
http://html-color-codes.info/
==============================================================================================================

- ��Ÿ�±� - IE ȣȯ������ ��ư ����
1. http://lab.hv-l.net/75847
==============================================================================================================

- ���� ������ ����[2015.09.03(��)] ==> �� 010-2649-1964 
1. �����: KTF ����ī��(�� �������� ����)
==> http://freephonephone.co.kr/front/php/product.php?product_no=92&main_cate_no=33&display_group=1 
�Ա��ڸ�: ���¸�, ��������ȣ: 010-2649-1964(����), ����ī�� ����: KTF ����ī�� 30,000��
==> 010-8071-3990�� ���� ���� ��
==============================================================================================================

- �翣 ���� ���� ��û
HRD Net: http://www.hrd.go.kr/jsp/HRDP/main/index.jsp
==============================================================================================================

- 4�뺸�� 5������ ������ �ȵ� �� ó��
1. Re: [Re: 4�뺸�� 5������ ������ �ȵ� ��� ���� ����
2. ������ �̻翡�� ��ȭ�ͼ� 30���� ������ �� ������ �����϶��� ��
 1) 30������ ������ �޿��� �߰��ȴٰ� ��
==============================================================================================================

������������������� 2015.09.04(��) �۾� ����������������
---> 07:00 ~ 19:10 ==> LG CNS �ӿ��� �ͼ� ������Ʈ ������ ���� ��å��

- �Ѽ� ERP �籸�� Prj[��]
- /nhGrid.xjs ����
1. ToDoList.xfdl ���� ==> D:\99. Back up\2015.09.01\�Ѽ�ERP\Quick/ToDoList.xfdl
==> AC10P358601.xfdl(��û����İ���) --> ����
--------------------------------------------------------------------------------------------------------

- nhGrid Grid ���� @@@
_check: true(Grid�� üũ�ڽ� ����)
_checkHeadEnable: true(rid�� üũ�ڽ��� ��� ���°� �ɼ�)
_checkDisplayType: true
_more: ������
_number: No(Grid��  �ٹ�ȣ(No) ����)
_sort: true(Grid�� ��� ���� ����)
_status: true(Grid�� ����ǥ�� �̹��� ����)
_tooltip: true(Grid�� ���� ����) 
--------------------------------------------------------------------------------------------------------

- Grid �z�� ���� @@@
F2F2F2: ���� ȸ��
B7FFF7: ���� �ϴû�  
DFDAD0: ���� ȸ�� 
F4F4F4: ���� ȸ��2
==============================================================================================================

- Clip Report
http://172.168.110.41:3040/hseReport.jsp?rptname=cm/common/sample
\\172.168.110.45\�Ѽ�erp\�Ѽ� ERP�籸�� ������Ʈ\04.���\02.AA\02. ������&����&����\008_20150902_ClipReport_XPlatform���� 

- Clip Report SVN
https://172.168.110.41:7443/svn/D_HS/trunk/clipReport4   ==> tamario / 0898
==============================================================================================================

- ���ڵ����(Embeded) ���
function btn_barcode_onclick(obj:Button,  e:ClickEventInfo)
{ 
	var _extCommon = new ExtCommon(); 
	var strValue = 9000; // 9000:IE9�� <--IE������ url���� : (https://msdn.microsoft.com/en-us/library/ie/ee330730(v=vs.85).aspx) 
	var strKey = "HKEY_LOCAL_MACHINE"; 
	var strPath = "SOFTWARE\\Microsoft\\Internet Explorer\\MAIN\\FeatureControl\\FEATURE_BROWSER_EMULATION"; 
	var strName = "XPlatform.exe"; 
	var rtn = _extCommon.regSetValue(strKey,strPath,strName,strValue); 

	var strKey = "HKEY_CURRENT_USER"; 
	var strPath = "SOFTWARE\\Microsoft\\Internet Explorer\\Main\\FeatureControl\\FEATURE_BROWSER_EMULATION"; 
	var strName = "XPlatform.exe";  
	var rtn = _extCommon.regSetValue(strKey,strPath,strName,strValue);

	var repeat = edt_repeat.value;  
	var url = "http://localhost:3040/hseReport.jsp?rptname=cm/common/barcode_test&repeat="+repeat;

	MSIE00.Navigate2(url);
}
==============================================================================================================

- 9�� ��ü ȸ��((��)�����̵���Ÿ, 19��)
07:00 ���
07:30 ������
07:35 ���� ���� ���� ������ ���� 
07:40 ����(����): ������ �̻� ������ ��Ʈ5 ����
21:30 ����  
22:00 �Ͱ�
23:00 ��ħ
==============================================================================================================

������������������� 2015.09.05(��) �۾� ����������������
---> 07:00 ~ 20:40 

- �ָ�(�� �����౸)
05:00 ���
05:30 ����ö(�븲�� -> ������Ա���)
05:50 ������Ա��� 1�� �ⱸ 
06:00 �������� ��
06:20 ������(������ �¿�� ��, ��� �� ��[1�� ����])
06:50 ��ġ ������ ü������
07:10 ����(��ġFC: ���� ����)
07:40 ���������� ������ �����̿� ���� �� ������ �ߴµ� ������ �Ȱ��ٰ� �� 
08:00 ��(11��)�� ���̰� ���� �־ �ʹ� ���� 
08:40 ����(��ġFC: 2�� 0���� �̱�) ==> �Ƿ��� �츮�� ���� ���ڶ���(���� ���� ��)
09:10 ȭ��ǿ��� �����̿� �ο�(�ٽô� �������� �� ��)
09:20 ��ġ ������ ü������ ���(������ -> ������Ա���)
10:10 ������Ա��� ����(�ҳ��� ��)
10:30 �翺, ���� ����(�翺 �ٹ�ȭ ����(13��, ���Ǳ�û)�� ��ä�� �����Ϸ� ��)
10:40 ������Ա��� -> �븲��(��� 2��, ���� ����0
11:00 �Ͱ�
11:20 ���� ����(��� ���� ����, �� �� ����)
14:00 �÷� ��� �湮(�÷� ��� �������̷� ��ü ����: �ӵ� ����)
16:00 ���� �� �μ� ������ ����
16:20 ����(�̸�Ʈ ������): ���� ���� �缭 ���ڸ� ��� ���ƿ� 
17:20 �Ͱ�
18:00 ����(�翣 �� ��ͼ� ����)
00:00 ��ħ
==============================================================================================================

- KT �÷� �Ⱑ �������� ������ ��ġ(olleh GiGA WiFi home)
1. ��ǰ ���
 1) ��ǰ��: olleh Giga WiFi home
 2) �𵨸�: DW02-412H
 3) ������: ����Ƽ�ؾ���(��)
 4) �������: 2015.07
 5) ��������: olleh_GiGa_WiFi_4962(pwd: 0000000624)  ===> : olleh_GiGa_WiFi_1806(pwd: 0000000508) �� �����
 6) MAC ADDRESS: 000789324962
 7) ����������ȣ: 20150806300624
 8) KT BARCODE: GHAP9183061300624
-------------------------------------------------------------------------------------------------------------------

- KT �÷� �Ⱑ �������� ������ ��������, ��й�ȣ ���� ���
1. http://172.30.1.254 
2. ���� ���� 
 1) IP: ktuser ==> homehub
3. �������� / ���� ==> ��й�ȣ�� �ٲ۴�. 
==============================================================================================================

������������������� 2015.09.06(��) �۾� ����������������
---> 07:00 ~ 20:40 ==> 

�� �����౸
06:00 ���
06:30 ����(6411��, �븲�� -> ��Ƽ��)
07:30 �����ʵ��б� 
08:00 ����(FC ��񼿷γ� 5�� ����) ==> 3����(���� ���� ��)
11:30 ����
11:40 ����ȸ�� 
==> 1. ��� ��� ����ȸ���� �����ϱ�� ��(240���� ��) ==> �ӿ����� 10������ �����϶�� ��
      2. ��� ���� ==> 1�� 2õ����(�ֹ� 70% ����: 640���� --> �� ����: 400������ �����ߴٰ� ��)
      3. ������ ����� ���� �ű��ʱ� ��� ��� ����
11:50 �߽�(��ġ���, ������ ����): ���� ��
12:50 ����
13:50 �Ͱ�(�翺 �ٿ����� � ��)
14:00 TV ��û
18:40 �翺, ���� �Ͱ�(�翺 ���ε� ����� ���� ��� 10���� ���� ���� ==> ���� ����� ��)
19:40 ����(�Ŷ��, ��)
23:00 ��ħ
==============================================================================================================

������������������� 2015.09.07(��) �۾� ����������������
---> 07:00 ~ 19:10 ==> ������ ���� ���Ե�(���ڸ� �����ڰ� ����)

- �Ѽ� ERP �籸�� Prj[��]
- /nhGrid.xjs ����(���� ó��) 
function btn_delete_onclick(obj:Button,  e:ClickEventInfo)
{  
	var selectedRows = grd_msgCdMgmt.getCheckedRow(); 
	 
	if (selectedRows.length == 0) 
	{
		gfn_alert("NOR021", ["��"]); // ������ @ ��(��) ���� �Ͻʽÿ�. 
		return ;
	}
	else
	{
		if( gfn_confirm("CFM002") )  // CFM002: �����Ͻðڽ��ϱ�? 
		{   
			var deletedRows = gfn_deleteRowsGrid(ds_msgCdMgmt, grd_msgCdMgmt);  
			// �׸��� ����Ÿ�� �ٷ����� �����ϴ� �Լ� ȣ�� 
			trace("[/MssgMngm.xfdl] [btn_delete_onclick()] ==> [���� DB ó�� �غ�[DB @@@]] 
			[deletedRows.length]"+ deletedRows.length +"[selectedRows]"+ selectedRows );
			 
			for (var delrowi=0; delrowi<deletedRows.length; delrowi++)
			{
				trace("[/MssgMngm.xjs] [btn_delete_onclick()] ==> [���õ� ���� ���� ��(row)[DB @@@]] 
				[i_��°]"+ delrowi +"[selectedRows[delrowi])]"+ selectedRows[delrowi] );
				 
				ds_msgCdMgmt.updatecontrol = false;
				ds_msgCdMgmt.setRowType(delrowi, Dataset.ROWTYPE_DELETE);
				ds_msgCdMgmt.updatecontrol = true;
			}
			btn_save_onclick();// ����ó�� ��� �ο쿡 ���Ͽ� �ο� Ÿ�� ������, ����ó�� 
		}
	}
}
==============================================================================================================

- ���� lib ���ϸ� ���� �� ����[ó����: 2015.09.07 by ���¸�]
1. ���� ����: ���ϸ��� �ϰ��� ����
2. ������ ���� lib ���� ������ �������� ����
 1) commonForm.xjs ==> lib_commForm.xjs 
 2) commonSys.xjs ==> lib_commSys.xjs  
 3) commonUtil.xjs ==> lib_commUtil.xjs
3. ������ ���� lib ���� ��� ��Ģ(level1 ����)
 1) cm_commUtil.xjs
 2) md_commUtil.xjs
==============================================================================================================
 
- ��Ŭ���� ����Ű ����
�޴��� Windows - Preferences - General - Keys ���� ���ϴ� Ű����� ����Ű ���õ� ���� �˻��� ����Ű�� 
�����ϰ� Binding�� Ŀ���� ��ġ��Ű�� Ű���带 ������ ���� Ű�� �״�� ���ε� �Ǹ�, ACCEPT������ ��.

1. Name: clean up    ==> USER�� ���� @@@@
Binding: Ctrl+V---> ���� ������ ��
When: In Windeows

2. Name: Synchronize with Repository 
Binding:  Ctrl+Alt+S---> Default ��
When: In Windeows 
------------------------------------------------------------------------------------------------------

- ��Ŭ���� ���־��� ����Ű
Ctrl + / : �ּ� ó�� - �� ����/��Ͽ� ���� �ּ� ó�� (�߰� �� ����) 
Ctrl + L : Ư�� �������� �̵�
------------------------------------------------------------------------------------------------------

- egovframe Eclipse SVN ��ũ ����Ű �ȸԴ� ����
1. ��ġ: Window > Customize Perspective > Command Groups Availability Ŭ��, ���Ŀ� Availability Command Groups 
�ǿ��� SVN üũ
 ==> Package Explorer���� ������Ʈ ���� �� Ctrl + Alt + S�� ������ ��ũ�γ���� �۵� 
==============================================================================================================

- �α��� �� gds ȣ��
1. gds_menu(�޴�), gds_message(�޼��� �ڵ�), gds_brnd(�귣��), gds_cbcAtht(��������), gds_userSessionInfo(���� ����)
gds_commonCode(�����ڵ�)
==============================================================================================================

������������������� 2015.09.08(ȭ) �۾� ����������������
---> 07:00 ~ 19:10 ==>

- �Ѽ� ERP �籸�� Prj[��]
- ���� component�� �ִ� nh�� ����
1. nh -> hse�� ����
==============================================================================================================

- ���� �ٿ�ε� Ȯ��
1. ExportObject �� ��ġ
<!--// �⺻ ������Ʈ(ExportObject: ����)[�ּ� ó����: 2015.09.08, by ���¸�]  //--> 
<Component type="Bin" id="ExportObject" classname="ExportObject" module="XExtAPI" version="2015.4.28.1"/>  
==============================================================================================================

- �޽���(/uCap.exe) ����
1. ExtCommon ���
var objExt = new ExtCommon();
var rtn = objExt.executeProcess("C:\\UCAP\\uCap.exe", "", "");
-------------------------------------------------------------------------------------------------------

2. execShell: ������ ��(Shell) ��ɾ �����ϴ� �޼ҵ�
system.execShell("notepad");  
system.execShell("http://www.tobesoft.com");
system.execShell("C:\UCAP\uCap.exe");
==============================================================================================================

- ������ �Խ���
1. SMART F&D�� �Խù����/��ȸ ����
2. 2015_03.20_AIG_TM �Խ��� ���� �ҽ�
SYSS0101_M012.xfdl(�Խ��� ����)
SYSS0101_M015.xfdl(�Խ��� ����2)
SYSS0101_M019.xfdl(�Խ��� ��ȸ)
==============================================================================================================

- SYSTEM �� ���� �̹��� �ݿ�
1. HS_ERP(�ػ�: 1208)==> http://172.168.110.41:7070/XIContent/HsDeploy/index.htm
2. HS_SCM(�ػ�: 1024)==> http://172.168.110.41:7070/XIContent/HsDeploy/SCMindex.htm
3. HS_POS(�ػ�: 1024)==> http://172.168.110.41:7070/XIContent/HsDeploy/POSindex.htm
4. HS_TRADE(�ػ�: 1024)==> http://172.168.110.41:7070/XIContent/HsDeployTRADEindex.htm
5. HS_BI(�ػ�: 1024)==> http://172.168.110.41:7070/XIContent/HsDeployBIindex.htm
---------------------------------------------------------------------------------------------

function fn_onload(obj:Form, e:LoadEventInfo)
{   
	// trace("[/LOGIN.xfdl] [fn_onload()] ==> [gv_systemNm]"+ gv_systemNm );
	   
	if(gv_systemNm == "HS_SCM")
	{ 
		div_login.h2_login.class = "h2_login_scm";  // �ý��۸�(2. HS_SCM)
	} 
	else if(gv_systemNm == "HS_POS")
	{ 
		div_login.h2_login.class = "h2_login_pos";  // �ý��۸�(3. HS_POS)
	}
	else if(gv_systemNm == "HS_TRADE")
	{
		div_login.h2_login.class = "h2_login_trade";  // �ý��۸�(4. HS_TRADE)
	}
	else if(gv_systemNm == "HS_BI")
	{
		div_login.h2_login.class = "h2_login_bi";  // �ý��۸�(5. HS_BI)
	}
	else
	{
		div_login.h2_login.class = "h2_login";  // �ý��۸�(1. HS_ERP)
	}
}
==============================================================================================================
 
- ǥ�� ���� ����(15��)
1. �Ͻ�: 2015�� 9�� 8��(ȭ) 14�� 
2. ���: ȸ�ǽ�
3. ���: ������ 4��
==============================================================================================================

- HP Fortify ����(15��)
1. �Ͻ�: 2015�� 9�� 8��(ȭ) 13�� 
2. ���: ȸ�ǽ�
3. ����: �ҽ� üũ ���� �ַ��
==============================================================================================================

- �츮ī�� ���ξ˸� SMS����
1. �� 300�� ==> https://sccd.wooribank.com/ccd/Dream?withyou=CDMWC0035
==============================================================================================================

- �翺���� �츮ī�� ������ �� ����
1. 18�� õ�� ���� ==> �� 28�� õ �� ����(������ ����� ��)
2. �翺 ģ��(������)���� 16���� �۱�[2015.09.10(��)] ==> ������ ����� ��
==============================================================================================================

������������������� 2015.09.09(��) �۾� ���������������� 
---> 07:00 ~ 19:10 ==>

- �Ѽ� ERP �籸�� Prj[��] 
- ���� component�� �ִ� nh�� ����
1. nh -> hse�� ����
nh_base_title  ==> hseBaseTitle
==============================================================================================================

- barcode ��� URL ����
function application_onload(obj:Object, e:LoadEventInfo)
{ 
	trace("[/HS_SCM.xfdl] [application_onload()] ==> [TEST_01]");
	 
	// ������ URL �� ����
	if(application.xadl.split("/")[0] == "file:" 
	 e.url.indexOf("local") != -1 
	 e.url.indexOf("127.0.0.1") != -1) // �������� �����̸�
	{    
		gv_domain_url = "127.0.0.1:8080";  // ������ URL
		gv_domain_urlNm = "local";  // ������ URL ��
	}
	else 
	{    
	//alert("[/HS_SCM.xfdl] [application_onload()] ==> [����] [e.url]"+ e.url);  
	// http://172.168.110.41:7070/XIContent/HS_ERP.xadl

	var sDomainPort_01 = e.url.split(":")[2];  // ������ Port_01 ==> 7070/XIContent/HS_ERP.xadl 
	var sDomainPort = sDomainPort_01.split("/")[0];  // ������ Port  ==> 7070 
	var sDomainUrl_01 = e.url.split(":")[1];  // ������_01 ==> //172.168.110.41 
	var sDomainUrl = sDomainUrl_01.substring(2, sDomainUrl_01.length+1);  // ������ Port_01 ==> 172.168.110.41  
	gv_domain_url = sDomainUrl +":"+ sDomainPort;  // ������ URL 

	if(e.url.indexOf("http://172.168.110.41") != -1)  // ���� �����̸�
	{
		gv_domain_urlNm = "dev";  // ������ URL ��
	}
	//alert("[/HS_SCM.xfdl] [application_onload()] ==> [e.url]"+ e.url +"[sDomainPort]"+ sDomainPort 
	+"[gv_domain_url]"+ gv_domain_url +"[gv_domain_urlNm]"+ gv_domain_urlNm ); 
	} 
}
-------------------------------------------------------------------------------------------------------

1. Barcode_Test.xfdl����
function btn_barcode_onclick(obj:Button,  e:ClickEventInfo)
{ 
	if(gv_domain_urlNm == "local")  / ������ URL ���� �����̸�
	{ 
		sUrl = "http://127.0.0.1:3040"; 
	} 
	else if(gv_domain_urlNm == "dev") // ������ URL ���� ����(clipReport) ���
	{  
		sUrl = "http://172.168.110.41:3040";
	}
	var sTargetUrl = sUrl +"/hseReport.jsp?rptname=cm/common/barcode_test&repeat="+ repeat +"&x_point="+ xPoint; 
}
==============================================================================================================
 
- �ؾ��� ��
1. HS ERP eclipse ����̺� ����(C => D): �̹��ֿ� ó���� ��
2. HS ERP eclipse �ҽ� �̸��� ������
3. XPlatform_����_���̵�, ǥ�ؾ� �ۼ�
==============================================================================================================
 
- ����̺� ��� �ٲ�ÿ� ��Ŭ���� �缳�� �Ұ�
1. workspace ����
 1) eclipse > Preferences(��â)
 General -> Startup ans Shutdown > Workspaces(��â)
 ��. Prompt for workspace on startup(üũ)
 ��. D:\HS_ERP(����) ==> Apply(Ŭ��) ==> OK(Ŭ��) 

2. tomcat ��� ����
 1) Window > Preferences[��â] ����, Server > Runtime Environments(Ŭ��) > Server Runtime Environments(��â)  
 2)  Name: Apache Tomcat v7.0
  Tomcat installatiton directory: C:\HS_ERP\tomcat7 ==> D:\HS_ERP\tomcat7 
==============================================================================================================

- HS ERP eclipse ����̺� ����(C => D)
1. File > Switch Workspace ���� ���氡��
 1) C:\HS_ERP ==> D:\HS_ERP
2. eclipse.ini ���� ����(D:\HS_ERP\eclipse)
 1) C:\HS_ERP\jdk1.7.0_79\bin\javaw.exe ==> D:\HS_ERP\jdk1.7.0_79\bin\javaw.exe 
==============================================================================================================

- eclipse���� mysql ���
1. �������� mysql
==============================================================================================================

- Ecplise���� MySQL ���� 
http://blog.naver.com/dnaodtjs/70184350174 
C:\Program Files (x86)\MySQL\MySQL Connector J������ mysql-connector-java-5.1.35-bin.jar ���� �����Ͽ�
�Ʒ� ������ �ٿ� �ֱ�
C:\Program Files\Java\jdk1.7.0_72\jre 
D:\HS_ERP\tomcat7\lib
----------------------------------------------------------------------------------------------------

- /context-datasource.xml ���Ͽ���
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:schemaLocation="http://www.springframework.org/schema/beans http://www.springframework.org/schema/beans/spring-beans-2.5.xsd">
 
<!-- 01. oracle  DB -->
<bean id="dataSource_02" class="org.apache.commons.dbcp.BasicDataSource" destroy-method="close">
	<property name="driverClassName" value="net.sf.log4jdbc.DriverSpy"/>
	<property name="url" value="jdbc:log4jdbc:oracle:thin:@172.168.110.41:1522:HSED" />
	<property name="username" value="HSE_APP"/>
	<property name="password" value="apphse#$"/>
</bean>

<!-- 02. mysql DB[ó����: 2015.09.09 by ���¸�] -->  
<bean id="dataSource" class="org.apache.commons.dbcp.BasicDataSource" destroy-method="close">
	<property name="driverClassName" value="com.mysql.jdbc.Driver"/>
	<property name="url" value="jdbc:mysql://127.0.0.1:3306:test"/>    <!-- // Local ���� DB //--> 
	<property name="username" value="nexacro"/>
	<property name="password" value="nexacro"/>
	</bean>   
</beans> 
==============================================================================================================

������������������� 2015.09.10(��) �۾� ���������������� 
---> 07:00 ~ 19:10 ==>

- �Ѽ� ERP �籸�� Prj[��] 
- ���� component�� �ִ� nh�� ����
1. UserForm ���� ����: nh -> uForm(UserForm)�� ����
nh_base_title  ==> uForm_baseTitle
-------------------------------------------------------------------

2. Composite ���� ����: nh -> uComp(user Composite)�� ����
CommonBtn ==> uComp_cmmGridBtn
Compo_setCount ==> uComp_setCount 
-------------------------------------------------------------------

3. Script ���� ����: nh -> uComp(user Component)�� ����
nhCalendar ==> uComp_calendar 
nhCombo  ==> uComp_combo
nhGrid ==> uComp_grid
==============================================================================================================

������������������� 2015.09.11(��) �۾� ���������������� 
---> 07:00 ~ 19:10 ==> LG CNS PM ����ȣ ����, ���� ������ ���� ö��

- �Ѽ� ERP �籸�� Prj[��] 
- ���� component�� �ִ� nh�� ����
1. UserForm ���� ����: nh -> uForm(UserForm)�� ���� 
==============================================================================================================

- [��ü ����] ���� user Component �̸��� ����
�ȳ��ϼ���.  �Ѽ� ERP ������Ʈ���� UI������ ����ϰ� �ִ� ���¸��Դϴ�. 
�ٸ��� �ƴ϶�,  ������ ������� ���÷� ���� user Component �� ���ڸ� �̸��� nh�� ��
���ϸ��� ���� ����� �̸�(uComp: user Component)���� ���� �߽��ϴ�.

��� ������ ������ �ƴ� ���� �����, ������ �е鲲���� SVN���� �ҽ��� ���� �޾Ƽ�
������ ���� �ϼž� �մϴ�.

������ ���ϸ��� ���� ������ �÷� �����ϴ�.
���� ���� ��ġ ===> \\172.168.110.45\�Ѽ�erp\�Ѽ� ERP�籸�� ������Ʈ\05.����\02.XPlatform\00. ���߰���\91. ��Ÿ
\01 ���� user Component �̸��� ����.txt

�׷�, �����ϼ���.
==============================================================================================================

������������������� 2015.09.12(��) �۾� ����������������
---> 07:00 ~ 20:40 
 
- �ָ�
08:00 ���
08:30 ����(����)
09:30 ����(��Ҿư��ǿ�): ���� ����
09:50 ����(�ѵ������ھ౹)  
10:10 ����(����� �Ǻΰ� �ǿ�): �Ǻ� ���� ==> http://map.naver.com/local/siteview.nhn?code=13140339
==> ���� ������ �Ǻο�
10:30 ����(�ٴ� �౹): �Ǻ� ����
10:50 �Ͱ�
12:10 �߽�
13:00 �翺 ��� ü������ ���� ���� ��(���� ����)
14:00 TV ��û(2015~16 ���γ� ������ ==> ��� 66: 77 ����)
15:00 ���� ��
16:30 ����(�̸�Ʈ ������)
18:30 �Ͱ�(���� ���� �����)
19:30 �翺 �Ͱ�
20:30 ����(���)
00:00 ��ħ
==============================================================================================================

- �� ����[2015.09.12(��)] 
1. [2014�� �ݽ�[������޶ѱ��]���20/2014�� ���, ����: 37,560��(�������� ���� ����, ���� ����: 40,390��)
http://www.interpark.com/product/MallDisplay.do?_method=detail&sc.shopNo=0000100000&sc.dispNo=016001&sc.prdNo=1518386202
==============================================================================================================

- ��������(���ڰ���) ���
1. ������ũ, G���� ���� ==> ��й�ȣ: *3**0
http://cafe.naver.com/momsblog79/293130
==============================================================================================================

������������������� 2015.09.13(��) �۾� ����������������
---> 07:00 ~ 20:40 ==> 

�� �����౸
06:00 ���
06:30 ����(6411��, �븲�� -> ��Ƽ��)
07:30 �����ʵ��б� 
08:00 ����(FC ��񼿷γ� 5�� ����, ȸ�� ���� ����) ==> 3����(���� ���� ��)
11:30 ����
11:50 �߽�(��ġ���, ������ ����), ġ�������� LA ����(10����) ��
12:50 ����
13:50 �Ͱ�(�翺 �ٿ����� � ��)
14:00 TV ��û
18:00 �翺, ���� �Ͱ�
18:30 ����(������ ����)
19:40 ����(��¥��[������ ����], ¥���2, ������)
23:00 ��ħ
==============================================================================================================

������������������� 2015.09.14(��) �۾� ����������������
---> 07:00 ~ 19:10 ==> ������ PM ù ���(PM ��ü)

- �Ѽ� ERP �籸�� Prj[��]
- ���� ���� 
1. �α���(â �ݱ� �Ŀ� ����â���� �̵�) ==> ���� �Ϸ� @@@
2. ��ȭ�� �ݱ�(����, ���� ���� �� ȭ���� �������� ���� �� ����)  ==> ���� �Ϸ� @@@
3. ��ȭ�� ȭ��ǥ �̵� �ȵ�(����, ���� �޴�)
4. ��ȭ�� �ݱ�(���� ȭ�� �� ����)
5. ȭ�� Ȯ��, ��� �ÿ� �̹��� ��ġ ���� �Űܱ�= => ���� �Ϸ� @@@
 1) gfn_setUseButton �Լ� ����
 /*****************************************************************************************
* Function�� : gfn_setUseButton
* ����       : ���� ��ư ���� ��뿩�� visible ó���ϴ� �Լ�
* Params     : use_btn : ȭ�� �����ư
* Return     :
* ��  �� �� : ���¸�
* ��  �� �� : 2015.07.07
*****************************************************************************************/     
function gfn_setUseButton(use_btn)
{ 
	var iBaseX = super.div_titleGroup.position.width - 17;  
	super.div_titleGroup.edt_zoomRate.visible = false;  // 00. zoomIn ���� text  
	super.div_titleGroup.btn_zoomIn.visible  = false;  // 01. zoomIn ��ư
	super.div_titleGroup.btn_zoomOut.visible = false;   // 02. zoomOut ��ư
	super.div_titleGroup.btn_init.visible = false; // 03. init ��ư
	super.div_titleGroup.btn_bookmark.visible = false; // 04. bookmark ��ư
	super.div_titleGroup.btn_capture.visible = false;  // 05. capture ��ư 
	super.div_titleGroup.btn_print.visible = false;  // 06. print ��ư 
	super.div_titleGroup.btn_help.visible = false;   // 07. help ��ư
	super.div_titleGroup.btn_popUp.visible = false;  // 08. popUp ��ư 
	 
	var aShowBtns = new Array();   
	trace("[/lib_commForm.xjs] [gfn_setUseButton_02()] ==> [���� ��ư ���� ��뿩�� visible ó��_90]1\
	==========================================================> ");
	 
	if(use_btn.popUp == "true") aShowBtns.push(super.div_titleGroup.btn_popUp); // 08. popUp ��ư  
	if(use_btn.help == "true") aShowBtns.push(super.div_titleGroup.btn_help);  // 07. help ��ư 
	if(use_btn.print == "true") aShowBtns.push(super.div_titleGroup.btn_print);  // 06. print ��ư 
	if(use_btn.capture == "true") aShowBtns.push(super.div_titleGroup.btn_capture);  // 05. capture ��ư
	if(use_btn.bookmark == "true") aShowBtns.push(super.div_titleGroup.btn_bookmark);  // 04. bookmark ��ư 
	if(use_btn.init == "true") aShowBtns.push(super.div_titleGroup.btn_init);  // 03. init ��ư  
	if(use_btn.zoomOut == "true") aShowBtns.push(super.div_titleGroup.btn_zoomOut);  // 02. zoomOut ��ư  
	if(use_btn.zoomIn == "true") aShowBtns.push(super.div_titleGroup.btn_zoomIn);  // 01. zoomIn ��ư  

	for(var i=0; i< aShowBtns.length; i++)// ��� ������ ���� ��ư ��ġ ��迭
	{
		var btn = aShowBtns[i];
		trace("[/lib_commForm.xjs] [gfn_setUseButton()] ==> [i��°]"+ i +"[[btn)]"+ btn 
		+"[aShowBtns.length_ó�� ���� ��ư ��]"+ aShowBtns.length );

		iBaseX -= btn.position.width;
		btn.position.x = iBaseX;
		btn.visible = true;

		iBaseX -= 3; //��ǥ�� 3 �ٽ� �̵� 
	}
}

6. �ʱ�ȭ(2���� ��ȭ�鿡��  ���� �ʱ�ȭ �� ���� ����) ==> ���� �Ϸ� @@@
7. ���� �ٿ�ε�(����) ==> ���� �Ϸ� @@@
8. ���� �ٿ�ε� ==> ���� �Ϸ� @@@
9. ��Ƽ ���� ==> ���� �Ϸ� @@@
10. ��Ƽ ���� ==> ���� �Ϸ� @@@
11. ��Ƽ ���� ==> ���� �Ϸ� @@@
12. ��Ƽ ����==> DB �߰��� ���� @@@
13. Ʋ ����==> ���� �Ϸ� @@@
14. ÷������ ��� ==> AA�� �����ؾ� �� @@@
==============================================================================================================
 
- �Ұ� �� ���� ���� �ȵ� 
==============================================================================================================

- Orcle DB export 
==============================================================================================================

- ����(PicPick) ����(http://wiziple.tistory.com)
1. ȭ�� ĸó, ���� ����
2. ����Ű
 ==> ����(PicPick) > ���� > ���α׷� ����(D) >  ȯ�� ����(��â) > ����Ű(Tab): ȭ�� ĸó ����  
 1) ���� ������: Shift + Ctrl + 1
 2) ������ ĸó�ϱ�: Shift + Ctrl + 9
 3) ������ �����Ͽ� ĸó�ϱ�: Shift + Ctrl + 0
==============================================================================================================

������������������� 2015.09.15(ȭ) �۾� ����������������
---> 07:00 ~ 19:10 ==>

- �Ѽ� ERP �籸�� Prj[��] 
- ���� ����  
9.  ��Ƽ ���� ==> �簳�� �Ϸ� @@@
10. ��Ƽ ���� ==> �簳�� �Ϸ� @@@
11. ��Ƽ ����==> �簳��(DB �߰��� ����) �Ϸ� @@@
12. Ʋ ����==> ���� �Ϸ� @@@
13. ÷������ ��� ==> AA�� �����ؾ� �� @@@
==============================================================================================================

- formTest_onclick ==> form count(�� �� Ȯ��)
/*****************************************************************************************
* ��  ��  �� : formTest_onclick()
* ��      �� : form Test(���� ���ȴ� �� Ȯ��)
*****************************************************************************************/   
function btn_test_01_onclick(obj:Button,  e:ClickEventInfo)
{
	trace("[/Top.xfdl] [btn_test_01_onclick()] ==> [TEST_01] [atab_button_info.aTabButtonDiv.length_�� ��]"+ 
	tab_button_info.aTabButtonDiv.length );

	adv_cf_workMain.formurl = "Frame::MAIN.xfdl";
	//adv_cf_workMain.form.visible = true;  // Main ȭ�� ȣ��(Frame::Main.xfdl) 
	// trace("[/Top.xjs] [btn_test_01_onclick()] ==> [Main ȭ�� ȣ��] [adv_cf_workMain.form.visible]"+ adv_cf_workMain.form.visible ); 

	for(var i=0; i<tab_button_info.aTabButtonDiv.length; i++)   // Tab ����
	{
		var oTabButtonDiv = tab_button_info.aTabButtonDiv[i]; 
		var tab_menu_id = oTabButtonDiv.tab_menu_id;

		trace("[/Top.xfdl] [btn_test_01_onclick()] ==> [i_��°]"+ i +"[gtab_menu_id]"+ tab_menu_id );  
	}

	trace("[/Top.xfdl] [btn_test_01_onclick()] ==> [TEST_01] [adv_fs_work.all.length]"+ adv_fs_work.all.length ); 
	for(var i=0; i< adv_fs_work.all.length; i++)
	{ 
		//cf_left.form.sta_LeftBack.position = "absolute 296 -2 340 553";
		//adv_fs_work.all[i].background = "blue";
		//"[adv_fs_work.all[i].position]"+ adv_fs_work.all[i].position +"[adv_fs_work.all[i].background]"+ adv_fs_work.all[i].background 
		// objDiv.style.background = "#f3f3f3ff";
		trace("[/Top.xfdl] [btn_test_01_onclick()] ==> [i_��°]"+ i +"[gv_fs_work.all[i].name]"+ adv_fs_work.all[i].name 
		+"[adv_fs_work.all[i].position]"+ adv_fs_work.all[i].position +"[adv_fs_work.all[i].style.background.color]"+ 
		adv_fs_work.all[i].style.background.color ); 
	}  
}
--------------------------------------------------------------------------------
 
objBtnTemp.btn_Filter.style.background.color = "#f7f7f7ff";
objBtnTemp.btn_Filter.style.background.image = "url('IMG::btnFF.png')";
objBtnTemp.btn_Filter.style.background.position = "center middle";
objBtnTemp.btn_Filter.style.background.color = "bisque";
==============================================================================================================

- �翺 ��������(HRD-NET) ȸ�� ���� �� ������ ��û
1. ������������ Ȯ��(����������) ==> �ܱ��� ����� �̸� Ȯ��[DINH THI LUYEN 940509-6100024]
2. http://www.hrd.go.kr --> luyen94 / lulu339A@
==============================================================================================================

������������������� 2015.09.16(��) �۾� ����������������
---> 07:00 ~ 19:10 ==>

- �Ѽ� ERP �籸�� Prj[��] 
- ���� ���� 
1. �α���(â �ݱ� �� ����â���� �̵�) ==> ���� �Ϸ� @@@
2. ��ȭ�� �ݱ�(����, ���� ���� �� ȭ���� �������� ���� �� ����)  ==> ���� �Ϸ� @@@
3. ��ȭ�� ȭ��ǥ �̵� �ȵ�(����, ���� �޴�) ==> ���� �Ϸ� @@@
TabButtonInfo.prototype.setTabButtonPosition = function(tab_menu_id) 
{ 
	// trace("[/lib_tabButtonInfo.xjs] [setTabButtonPosition()] ==> [TEST_01] 
	[�ش� tab_menu_id�� tab button�� �������� Ȱ��ȭ ��Ű�� �Լ�] "); 
	    
	var div_mdi = adv_cf_top.form.div_topNavi;   // ��� Frame(CF) topNavi Div ����  
	div_mdi.position.width = "985";   // MID div ����
}
4. ���� ���� ���� ���� ���� �� ��ȭ�� �ݱ�(���� ȭ�� �� ����) 
adv_cf_workMain.form.visible = true;  // Main ȭ�� ȣ��(Frame::Main.xfdl) 

6. �ʱ�ȭ(2���� ��ȭ�鿡�� ���� �ʱ�ȭ �� ���� ����) ==> ���� �Ϸ� @@@
==============================================================================================================

- ��ũ���� īī�� ����
1. ��й�ȣ: 03***0* --> 03***0
==============================================================================================================
 
������������������� 2015.09.17(��) �۾� ����������������
---> 07:00 ~ 19:10 ==>

- �Ѽ� ERP �籸�� Prj[��] 
- ���� ����  
1. ���� ���� ���� ���� ���� �� ��ȭ�� �ݱ�(���� ȭ�� �� ����) ==> ���� �Ϸ� @@@
if(adv_fs_work.all.length > 1)    // ���� â�� ������ ��(/MAIN.xfdl ����)
{
	gv_workFrame = "1";   // work Frame ȭ�� ����(0: MAIN.xfdl, 1: WorkFrame.xfdl) 
} 
else  // ���� â�� ���� �� 
{
	// trace("[/lib_tabButtonInfo.xjs] [tab_close_onclick()] ==> [Main ȭ�� Display] 
	[adv_fs_work.all.length]"+ adv_fs_work.all.length +"[adv_cf_workMain.form.visible]"+ adv_cf_workMain.form.visible ); 
	adv_fs_work.frames["cf_workMain"].openstatus = "maximize";  // frame �ִ�ȭ[Main ȭ�� Display]
}
----------------------------------------------------------------------------------------------------

- Frame ȭ��
- adv_fs_work[Frame Set]
  - adv_cf_workMain[Child Frame]  ===> cf_workMain
==============================================================================================================
 
- Erwin 7.2.9 ��ġ
1. LG CNS DBA���� ����
==============================================================================================================

- ��Ŷ �м���
1. http analyzer ==>  http://parkcla.tistory.com/6
==============================================================================================================

- ���߰��� ���� �м�
A. ���� ���� �Ϸ��� ȭ��
1. ���α׷� ��� ����(/PrgrMngm)
2. ���α׷� ���� ����(/PrgrArslMngm)
3. ���α׷� ������Ȳ(/PrgrArslCrst)
B. ���� �ؾ��� ȭ��
1. Q&A(��ü)==>  /����/Q&A
2. Q&A(IT�� ����)==>  /Q&A(��ġ �� �� ����)
C. �� ���� �ؾ��� ������ �� �� ���� ȭ��
1. ��ô����==>  /����/��ô����
-------------------------------------------------------------------------------------------------------------

- ���� ��ư(��� Tab ��ư)
��� Tab ��ư �� ���� ��ư�� Ŭ���ϸ�
���� â�� ������
1. ����, 2. Q&A, 3. ��ô���� Tab�� ����
3. ��ô���� ==> ����?
==============================================================================================================

- 2015�� 9�� 11�� ��� �����ȭ�� �۱���, ���� ���� ȭ�����Ǽ�(.ppt)
==> ������ �ۼ��� ������ ������ �ǳ� ���� �� ����, ��¹��� ����
1. Q&A - HELP(2��)
2. Q&A(1��)
==============================================================================================================

������������������� 2015.09.18(��) �۾� ����������������
---> 07:00 ~ 19:10 ==>

- �Ѽ� ERP �籸�� Prj[��] 
- Calendar ����
==============================================================================================================

- �����ٿ�ε�(����) ����
1. ���� ���� �� ���� ����
==============================================================================================================
 
- ���α׷� ��� ����(/PrgrMngm) �׽�Ʈ �� ����
1. ����� ���� ��ȸ �˾�(/ComUserP.xfdl) ����
 1) ���� ��ȸ �� �ٽ� ��ȸ �ȵ�==> ���� �Ϸ� @@@
 2) ��ȸ �������� ��ȸ �� ���� Ŭ���ϸ� ������ ��==> ���� �Ϸ� @@@
 3) ��ȸ ���� �Է� �� ����Ű ġ�� ��ȸ �ȵ�(������ �ƴ����� ������)==> ���� �Ϸ� @@@
==============================================================================================================

������������������� 2015.09.19(��) �۾� ����������������
---> 07:00 ~ 20:40 
 
- �ָ�
08:00 ���
09:30 ����(���)
10:30 �����
10:40 �븲�� -> ��꿪 -> ���̿�(2�� �ⱸ)
11:30 ���� ����������(���� ������ ��õ��61�� 101)
12:00 ���� ����ȸ, ����FC(7�� ���� ��)
12:05 ����FC(�ѱ� ���� ���ε�� ����) ==> �Ƿ��� ���� �������� �켼��
12:10 ����(2������ --> ���ݿ� �����ϴµ� �ڿ��� �� ���� �־ �߰��� �۵� ����� �� ����)
14:00 ����
15:00 �Ĵ�(���� Į����): ȸ���� ��
16:00 ����
16:40 �븲��(�����̰� �¿���) ==> ����FC ȸ�� 15����(���� ���� �ʿ伺 �� ���� ==> ������ �� ��)
16:50 �౹(��ַ��� ����: ���� �߰��� �ο�)
17:00 �Ͱ�(�翺 ��꿪�� ���)
18:00 �翺 �Ͱ�(���� �ڰ� �־ �븲���� ������ ��)
20:00 ����
00:00 ��ħ
==============================================================================================================

������������������� 2015.09.20(��) �۾� ����������������
---> 07:00 ~ 20:40 ==>

�� �����౸
06:00 ���
06:30 ����(6411��, �븲�� -> ��Ƽ��)
07:30 �����ʵ��б�: ���� �߰��� �λ����� ����� �� ����
08:00 ����(FC ��񼿷γ� 5�� ����, ȸ�� ���� ����) ==> 3����(���� �߰��� �λ����� ����)
10:30 ����
11:20 �߽�(��ġ���, ������ ����), ���� ��(������ �߽ĺ�: �߰� ���� �� ��)
==> ���ְ� ������, ���������̶� �ο�(����ȸ �ȳ��´ٰ� ��)
==> ���ְ� 7������ Ŀ�� ��
12:20 ����
13:50 �Ͱ�(�翺 �ٿ����� � ��)
14:00 TV ��û
20:00 �翺, ���� �Ͱ�
20:20 ����(���)
20:50 �̹�, ���� ==> �翺�� ����
23:00 ��ħ
==============================================================================================================

������������������� 2015.09.21(��) �۾� ���������������
---> 07:00 ~ 19:10 ==> ���ǿ� �湮(�������ǿ�. �� õ��): ħ(���� �߰���), �߱�(����: PM, ����� ������ ��)

- �Ѽ� ERP �籸�� Prj[��] 
- Q&A(/QnaBlbrTab) ����
1. QNA ���� �ڵ� ���� 
QNA_CLSS_CD: QNA_�з��ڵ� 
QNA_STTS_CD: QNA_�����ڵ�

2. ���μ����ڵ� ����(PRCS_CD)
10: ����, 20: ����, 30: �׽�Ʈ1(����), 40: �׽�Ʈ2(IT), 50: �׽�Ʈ3(����), 60: Ȯ�����, 70: �����Ϸ�
==============================================================================================================

- ���߰��� �� ���� ��û ���� ����  �׽�Ʈ �� ����
1. ���α׷� ��� ����(/PrgrMngm) ���� ����ڸ� ���� ���� ������ �� �ֵ��� ���� 
2, ���α׷� ���� ����(/PrgrArslMngm)���� ��ȸ�� ���� ���¿� �ش��ϴ� ���μ��� �� Display�� ��
 1) �򰡰������� ���հ��� �����ϸ� �ܰ�(����)�� ����ڰ� �����Ͽ� ������ �� �ְ� ����
 2) ���°� ������ ��� ���� �ٰ� ���� ��(2��)�� Display�� �� 
3. ��ô����
 1) HELP > ��ô������ ���α׷� ���� ����(/PrgrArslMngm)�� �����ϰ� ���
 2) �ش� ����ڿ��� �ش��ϴ� ���μ��� ������ ��� �򰡰����� ó��
 2) �� �ش� ����ڿ��� �ش��ϴ� ���μ��� ������ ��� Display�� ��
==============================================================================================================

- ���߰��� ����
1. ���α׷� ��� ����(/PrgrMngm)
2. ���α׷� ���� ����(/PrgrArslMngm)
3. ���α׷� ������Ȳ(/PrgrArslCrst)
==============================================================================================================

������������������� 2015.09.22(ȭ) �۾� ����������������
---> 07:00 ~ 21:00 ==> �߱�(����, 5,800��): û���� ��, ���ö �������� �ҽ� �ٲ� �� ������ ȭ��(����� ���忡�Ե� �뺸)
			==> ����ؼ� �翺�� ¥�����鼭 �߷� ���� ���� ��û ȭ��

- �Ѽ� ERP �籸�� Prj[��] 
- ���߰��� �� ���� ��û ���� ����  �׽�Ʈ �� ����
1. ���α׷� ��� ����(/PrgrMngm) ���� ����ڸ� ���� ���� ������ �� �ֵ��� ���� ==> ���� �� @@@
  ===> DB ���� �������� ���� ��� ȭ�鿡 ������ ��ĥ ������ �Ǵܵ�(�ܰ谡 PK���� ���ܵǰ� ����ID�� �߰���)
  ===> 22. TB_CM_PRGR_FNDT_PLN(CM_���α׷��⺻��ȹ) ���� �� �� ���� => PLN_ID(��ȹID) �ʵ� ���� 

2, ���α׷� ���� ����(/PrgrArslMngm)���� ��ȸ�� ���� ���¿� �ش��ϴ� ���μ��� �� Display�� �� ==> ���� �Ϸ� @@@
 1) �򰡰������� ���հ��� �����ϸ� �ܰ�(����)�� ����ڰ� �����Ͽ� ������ �� �ְ� ����  
    ==> ���� ����(���� �����ؼ� ���ϵ��� ����): ������ �ȵ� @@@
 2) ���°� ������ ��� ���� �ٰ� ���� ��(2��)�� Display�� �� ==> ���� �Ϸ� @@@

3. ��ô����[/Help > ��ô����]
4. Q&A[/Help > Q&A]
5. Q&A����[/���� > Q&A����]
==============================================================================================================

- MyBatis���� if else ����
1. IF��
 <select id="getContentsP" parameterType="hashmap" resultType="com.test.vo.TestVo">  
SELECT
    id, name
FROM
    TB_test a
WHERE 
    type = 'A'  
    <if test="age != null AND age != ''">
AND age = #{age}
    </if> 
</select>
----------------------------------------------------------------------------------------------

2. Choose��
�츮�� ���� �����Ҷ� ����ϴ� if else�� ���ٰ� ���� �ȴ�
<select id="prgrArslMngmDAO.selectPrgrArslDgrMngm" resultType="hsMap">
      /*hse.cm.cmm.dao.prgrArslMngmDAO.selectPrgrArslDgrMngm*/
     SELECT A.PRGR_ID
       ,(SELECT X.PRGR_NM 
    FROM TB_CM_PRGR X 
   WHERE X.PRGR_ID   = A.PRGR_ID) AS PRGR_NM
       ,B.DGR AS DGR     /* ����ܰ迡�� ��ô���� �����Ͱ� �����Ƿ� nvló������ */
       ,A.PRGS_STTS_CD
       ,B.ASK_DT
       ,A.COML_PLN_DT
       ,A.CHPR_ID
       ,C.USR_NM AS CHPR_ID_NM
  FROM TB_CM_PRGR_FNDT_PLN A       /* ���α׷� ���� �⺻ ��ȹ */
      ,TB_CM_PRGR_DGR         B       /* ���α׷� ���� ��ô ���� */
      ,TB_CM_USR                 C
 WHERE 1 = 1   
     AND A.PRGR_ID = B.PRGR_ID(+)     
     AND A.PRGR_ID = #{prgrId}
     AND B.DGR(+)   = #{dgr}
 <choose> 
<when test="prgsSttsCd != null and prgsSttsCd == '50' ">   /* ����(�ܰ�)��  �׽�Ʈ3(����)[����] �̸�*/   
AND (A.PRGS_STTS_CD = '50' OR A.PRGS_STTS_CD = '60' )
</when>  
<otherwise>
 AND A.PRGS_STTS_CD = #{prgsSttsCd} 
</otherwise> 
</choose> 
     AND A.PRGS_STTS_CD = B.PRGS_STTS_CD(+)
     AND A.CHPR_ID = C.USR_ID(+)
 ORDER BY A.PRGR_ID
      ,A.PRGS_STTS_CD
</select>    
==============================================================================================================

- DB �α��� ����(DB �ּ�)
1. 172.168.110.41:1522:HSED --> HSE_MGR/ mgrhse[Object �����ڿ��� ����] ==> TOAD���� ��� 
2. 172.168.110.41:1522:HSED --> HSE_APP/ apphse#$[������, WAS ����� ����] ==> eclipse ���� ���
3. 172.168.110.41:1522:HSED --> HSE_DEV/ devhse[������ ����]  
D:\app\TAMA\product\11.2.0\client_1\network\admin\tnsnames.ora 
==============================================================================================================

������������������� 2015.09.23(��) �۾� ����������������
---> 07:00 ~ 18:35 ==> �ڸ� �̵�(18:30, ȸ�ǽǷ�), ���� ���

- �Ѽ� ERP �籸�� Prj[��] 
- ���߰��� �� ���� ��û ���� ����  �׽�Ʈ �� ����
1. ���α׷� ��� ����(/PrgrMngm) ���� ����ڸ� ���� ���� ������ �� �ֵ��� ���� ==> ���� �� @@@
  ===> DB ���� �������� ���� ��� ȭ�鿡 ������ ��ĥ ������ �Ǵܵ�(�ܰ谡 PK���� ���ܵǰ� ����ID�� �߰���)

3. ��ô����[/Help > ��ô����]
4. Q&A[/Help > Q&A]
5. Q&A����[/���� > Q&A����]
==============================================================================================================

- SYNONYM(�óʴ�, ���Ǿ�) ó�� 
1. SYNONYM ����(HSE_APP�� ����)
-- CREATE SYNONYM �ó�Ը�  FOR  ������.�Լ���  
0. �α���
1) SYNONYM�� �����Ϸ��� ���� �α��� �� ��
==> HSE_APP�� �α���(HSE_APP/ apphse#$[������, WAS ����� ����]) ==> eclipse ���� ��� 

-- 1. SYNONYM ��ȸ  @@@@@     
SELECT *
FROM ALL_SYNONYMS
WHERE SYNONYM_NAME = 'TB_CM_PRGR_FNDT_PLN'     --TB_CM_PRGR_FNDT_PLN
;

-- 2. SYNONYM ����  @@@@@     
CREATE SYNONYM HSE_APP.TB_CM_PRGR_FNDT_PLN FOR HSE_MGR.TB_CM_PRGR_FNDT_PLN;
;

-- 2. SYNONYM �����ϱ�  @@@@@    
DROP SYNONYM HSE_APP.TB_CM_PRGR_FNDT_PLN;  ---> �ش� �������� ����ϴ� ��ũ ����
-- DROP public database link DBLK_TEST;   ---> ��ü ����Ÿ���̽����� ����ϴ� ��ũ ���� 

-- HSE_APP�� C, U, R, D ���� �ο�
GRANT DELETE, INSERT, SELECT, UPDATE ON HSE_MGR.TB_CM_PRGR_FNDT_PLN TO HSE_APP;
==============================================================================================================

- PLN_ID(��ȹID) �ʵ� ä��(����Ŭ����)
<insert id="prgrMngmDAO.insertPrgrPlan">
/*hse.cm.cmm.dao.prgrMngmDAO.insertPrgrPlan*/
<![CDATA[
     INSERT INTO TB_CM_PRGR_FNDT_PLN  
      (
      PRGR_ID
,PLN_ID 
      ,PRGS_STTS_CD
      ,COML_PLN_DT
      ,CHPR_ID
      ,RGPS_ID
      ,RGST_DTM
      ,UPPS_ID
      ,UPDT_DTM)
    VALUES 
      (#{prgrId}
       ,(SELECT NVL(MAX(PLN_ID)+1, 1) AS PLN_ID FROM TB_CM_PRGR_FNDT_PLN)
      ,#{prgsSttsCd}
      ,#{comlPlnDt}
      ,#{chprId}
      ,#{usrId}
      ,SYSDATE
      ,#{usrId}
      ,SYSDATE)
]]>
</insert>
==============================================================================================================

- ����ȯ(java����)
plnId = Integer.parseInt(String.valueOf(outMap.get("plnId"))); 	// PLN_ID(��ȹID) 
 
for (int i = 0; i < list2.size(); i++) {		/* ������ ������ ó�� */
	Map map = list2.get(i); 
	map.put("usrId", usrId);

	int rowType = ((Integer) map.get(XPlatformConstant.DATASET_ROW_TYPE)).intValue();  
	List<Map> userInfo = prgrMngmDAO.plnIdCheck(map);  //  PLN_ID(��ȹID) ��ȸ
	 
	if(userInfo.size() > 0) {
		Map outMap  = userInfo.get(0); 
		plnId = Integer.parseInt(String.valueOf(outMap.get("plnId"))); // PLN_ID(��ȹID) 
		log.debug("[/PrgrMngmSImpl.java] [savePrgrMngm()] [TEST_01] ==> [plnId]"+ plnId );  
		
		map.put("plnId", plnId); // PLN_ID(��ȹID) map�� �ֱ�
	}
	  
	if ( rowType == DataSet.ROW_TYPE_INSERTED ){
		prgrMngmDAO.insertPrgrPlan(map);  // 01. ���α׷� ���� �⺻��ȹ ���� ���� 
	} 
} // end of for()
-------------------------------------------------------------------------------------------

Long p_count = Long.parseLong(str_count);	// �Ǽ��� 
int p_count =  Integer.parseInt(str_count);	 // ��û���� ���� �� ��    
lng_obj = Double.parseLong(s); 
==============================================================================================================

- Argument ����Ÿ �ޱ�
1. ����(XP����)
function btn_saveAprsMngm_onclick(obj:Button,  e:ClickEventInfo)
{   
	var cRow = ds_prgrArslChprMngm.rowposition; 
	ds_prgrArslChprMngmInfo.clearData(); 
	ds_prgrArslChprMngmInfo.addRow(); 
	ds_prgrArslChprMngmInfo.copyRow(0, ds_prgrArslChprMngm, cRow);

	var sRemark = div_regDetailBox.ta_remark.value;  // Comment
	 
	// �����ͼ� ī��Ʈ�� 0 �̸� ����
	if(ds_prgrArslChprMngmInfo.rowcount == 0) return;

	// �� ���� �׸� VALIDATION CHECK
	if(!fn_preSave()) return; 

	// �����Ͻðڽ��ϱ�?
	if( !gfn_confirm("CFM001"))
	{
	return false;
}

var sSvcID = "savePrgrArslMngm";
var sTargetUrl= "DataURL_HSE_cm::cmm/savePrgrArslMngm.do";
var sInDatasets = "ds_input=ds_prgrArslChprMngmInfo:U";
var sOutDatasets  = "";
var sArgument  = "rmk="+ sRemark;   // Argument ����Ÿ �ѱ��
var sCallbackFunc = "fn_callback";
trace("[/PrgrArslMngm.xfdl] [btn_saveAprsMngm_onclick()] ==> [this]"+ this +"[sSvcID]"+ sSvcID +"[sTargetUrl]"+ sTargetUrl 
+"[sInDatasets]"+ sInDatasets +"[sOutDatasets]"+ sOutDatasets +"[sArgument]"+ sArgument +"[sCallbackFunc]"+ sCallbackFunc); 

// Ʈ������ �����Լ� ȣ��
gfn_transaction(this,
	sSvcID,
	sTargetUrl, 
	sInDatasets, 
	sOutDatasets, 
	sArgument, 
	sCallbackFunc);
	}

2. ����(/PrgrArslMngmC.java����)
@RequestMapping(value = "/cm/cmm/savePrgrArslMngm.do")
public ModelAndView savePrgrArslMngm(XPlatformMapDTO xpDto) throws Exception {
  
ModelAndView mav = null;

try { 
	Map <String, DataSetMap> inDataset = getInDataSet(xpDto);
	Map <String, Object> inVar = getInVar(xpDto);
	  
	prgrArslMngmService.savePrgrArslMngm(inDataset,inVar);
	 
	mav = sendClient(xpDto, "0", "");

	} catch ( Exception e ) {
		log.error(e, e);
		mav = sendClient(xpDto, "-1", TraceID.getTxID());
	}

	return mav;
}

3. ����(/PrgrArslMngmC.java����) 
@Override
public int savePrgrArslMngm(Map inDataSetMap, Map <String, Object> inVarMap) throws Exception {  
	DataSetMap list = getList(inDataSetMap, "ds_input");
	 
	String usrId = (String)inVarMap.get("usrId");
	String rmk = (String)inVarMap.get("rmk");// Comment[Argument ����Ÿ �ޱ�]
	log.debug("[/PrgrMngmSImpl.java] [savePrgrArslMngm()] [rmk]"+ rmk );  

	for (int i = 0; i < list.size(); i++) { 
		Map map = list.get(i);

		map.put("usrId", usrId); 
		map.put("rmk", rmk); // PLN_ID(��ȹID) map�� �ֱ�
		log.debug("[/PrgrMngmSImpl.java] [savePrgrArslMngm()] [PLN_ID(��ȹID) map�� �ֱ�] [rmk]"+ rmk );  

		String sJdgmCd      = (String)map.get("jdgmCd");// �������� 
		String sPrgsSttsCd = (String)map.get("prgsSttsCd");// ���μ��� ID

		// ���α׷� ���� ���� ���� ���μ��� ������Ʈ
		prgrArslMngmDAO.updatePrgrArsl(map);
		 
		if (sJdgmCd.equals("03")) // ���հݽ� �ű� ���� ����
		{
			// ���α׷� ���� ��Ͽ� ���� 1 ���ؼ� �ű� ������ �Է� (���°� 10:����, ������ �������� +1)
			prgrArslMngmDAO.updateNextPrgr(map);

			// ���α׷� ���� ��ô ���� ���̺� �ű� �Է� (���� ���� +1, ���μ���ID : 10)
			prgrArslMngmDAO.insertNextPrgrDgr(map);

			// ���α׷� ���� ���� ���� �ű� �Է�
			prgrArslMngmDAO.insertNextPrgrArsl(map);
		}  
	}  // end of for()

	return 0;
}     
==============================================================================================================

- ������ô���� ȸ��(15��, ȸ�ǽ�)
1. �Ͻ�: 2015�� 9�� 23��(��) 15�� 
2. ���: ȸ�ǽ�
3. ���: IT��(�̵��� ����)
4. ����: ������ô���� ���� ����(10�� 31�Ͽ� ������ ��)
==============================================================================================================

������������������� 2015.09.24(��) �۾� ����������������
---> 07:00 ~ 22:07 ==> �߱�(����[����], 8,000��), ���� ����[�߼� ���� ǥ ������ ���׿� ���� ���� ��ġ��)

- �Ѽ� ERP �籸�� Prj[��] 
- ���߰��� �� ���� ��û ���� ����  �׽�Ʈ �� ����
1. Q&A[/Help > Q&A]
2. ��ô����[/Help > ��ô����]
==============================================================================================================

- ȭ�麯��׼�����û(IT��) ����
1. �˾��� ��� �� �Լ� ����(����: ȭ�� �����Ÿ�)
// gfn_showModal("ComHelp_P", "Common::ComHelp_P.xfdl", gv_menuId);	 // ����� ����Ʈ ȣ�� �˾�(����)
var rVal = gfn_OpenPopup("helpPop", "cm_cmm::ComHelp_P.xfdl", "", 200, 250);	// ����� ����Ʈ ȣ�� �˾� 
---------------------------------------------------------------------------------------------------------------------

2. ȭ�鿡�� scroll bar �������� ���� ������ �� ���� ���
 1) �� �ҽ� ����(/PrgrArslMngm.xfdl) �ܿ� sub ����(/PrgrArslMngmSub.xfdl)
 2) �� �ҽ� ���Ͽ��� div ����(div_prgrArslMngm)�Ͽ� url ��ũ(cm_cmm::PrgrArslMngmSub.xfdl)
  ��. sub ���Ͽ��� scrollbar�� fixedvert�� ����
 3) �� �ҽ� ���Ͽ���  scrollbar�� none���� ����
function fn_onload(obj:Form, e:LoadEventInfo)
{
	trace("[/PrgrArslMngm.xfdl] [fn_onload()] ==> [TEST_01]]"+ ); 

	obj.scrollbars = "none";   // PrgrArslMngm ������ scrollbars ���ֱ�
}
-------------------------------------------------------------------------------------------

3. image ��� ����� theme ������� ���뿡 �ϰ� ����
1. CSS ��Ŀ��� theme ������� ����
 1) ����
 IMG::bg_Div_WFDA_Data.png 
==> URL('theme://images/btn_WFSA_SearchN.png')
==============================================================================================================

������������������� 2015.09.25(��) �۾� ����������������
---> 07:00 ~ 00:00 ==> �߱�(����[������], 7,500��), ö��

- �Ѽ� ERP �籸�� Prj[��] 
- ȭ�麯��׼�����û(IT��) ����
1. ���� �޴��� âũ�� �Ѿ
 1) ERP �ػ� 1280�� ����, ��Ÿ �ý���(SCM, POS, TRADE, BI) �ػ� 1024�� ��� ���� �޴��� ũ�� ������
---------------------------------------------------------------------------------------------------------

2. �� ��ư �̹��� ����
HS_CSS.css ���Ͽ���
Button.btn_WF_MDI  /* Tab ��ư(ȸ��) */  
{ 
	accessibility: ;
	align : center middle ;
	background : #a19d94ff ;  /* Tab ��ư(ȸ��) */    
	border: 0 none #808080 ;
	bordertype : round 10 10  lefttop righttop ; 
	color: white ;
	cursor: pointer ; 
	font: ����,9 ; 
	margin: 0 0 0 2 ;     /* ������Ʈ�� ���� �������� ������ �����ϴ� �Ӽ�  */  
	/* padding : 9 15 5 15 ; */
	padding :  ;   /* padding ����[����: Tab ��ư�� �簢�� �ڱ� ������ ����(������: 2015.09.25, by ���¸�)] */  
	 /* padding: ������Ʈ�� ���� �������� ������ �����ϴ� �Ӽ�  */  
}

3. ��(Tab)  CSS ����
/***** Tab ����[����: Tab Page�� ��� ������ �� ����[��� �� ����], ������: 2015.09.25, by ���¸�] *****/ 
Tab 
{
	background: transparent; 
	border: 2 solid #459fd0, 0 solid #dadada, 1 solid #459fd0, 0 solid #dadada;
	bordertype: normal ;
	align: center middle;
	font : Dotum,9 ;
	color : #777777;
	buttonborder: 1 #c0c5cf ;
	buttonbordertype: round 3 3  lefttop righttop;
	buttonbackground: @gradation ;
	buttongradation: liner 0,0 #ffffff 0,100 #eceff3 ;
	buttonpadding: 5 15 5 15;
	buttonmargin : 0 3 0 0 ;
	padding         : 0 0 0 0;
}
---------------------------------------------------------------------------------------------------------

- Coordinage System
1. Position
left, top, right, bottom���� XComponent�� ��ġ�� �����մϴ�. 
left,top,right,bottom�� ���� ��ǥ�� �������� Box ���� �����մϴ�. 
Ex)component.position = ��absolute 10 10 100 100�� 

2. Position2
position2�� left top, width, height�� Box ���� �����մϴ�. 
position2�� positiontype�� position2 �϶� �����ϸ� position���� �׻� �����˴ϴ�. 
���� position2�� ���� �����ϸ� position�� anchor�� �����ϰ� �����ǰ� �˴ϴ�. 
position2 �� left,top,right,bottom�� �ش� component�� �θ� �����̳� ( form,div �� )�� �������κ����� �̰ݰ��Դϴ�. 
������� right�� 30 �̸� �θ�form �̳� div �� ������ �����κ��� 30pixel ��ŭ ������ ��ġ�� �ش� ������Ʈ�� 
������ ��ǥ�� �˴ϴ�. 
����, �θ� �����̳ʰ� Resize �Ǹ� anchor�� �����ȰͰ� ���� �����Ǿ� �����ϰ� �˴ϴ�. 
==============================================================================================================

- ������ ����(����Ʈ�� ����)�� ���� ��ȯ
==============================================================================================================

- ���װ� ��� ����(�۱�)
1. 2015.03 ~ 09(�� 7����) + ���Ӻ�(2��) ==> �� 9����
==============================================================================================================

������������������� 2015.09.26(��) �۾� ����������������
---> 07:00 ~ 20:40 ==> �߼� ����(ö��)
 
- �ָ�
04:00 ���(�Ѽ� ERP Prj ��� ����)
05:10 ���
05:20 4318�� ����(������ȣ�� -> ����͹̳�)
05:40 ����͹̳�
06:05 ���� ���(���� -> ����, �Ϲ� ���, 37��)
08:35 õ�� �ްԼ�(ȭ��� ���ؼ� ���ڰ� ��û)
13:40 ���� ��ô(���� 8�ð� �ɸ� -> ���� �������� �߰� ��ӹ��� Ż ��)
13:50 101�� ����(���װ���͹̳� -> ��ȣ�ֹμ���)
14:20 �Ͱ�
14:40 ����
17:00 ���
17:20 �����
18:00 �������� ������ �强�� ����(���װ� ���� ���)
18:20 ��ö, ��ö, ����, ����, ��ǥ, ��ȣ��(����, ��2��) --> �ֳ����� �ƹ��� ���ļ� ����
18:30 ����(������) --> �ܼ�Ʈ ������ ����
20:00 ���� 
20:20 �Ͱ�(��ö�� ��) ==> ��ӴϿ��� �翺�ϰ� �ο��� �� �� �Ѵٰ� �� �Ҹ� ����
00:00 ��ħ
==============================================================================================================

������������������� 2015.09.27(��) �۾� ����������������
---> 07:00 ~ 20:40 ==> �߼�

- �߼�
08:30 ���
09:30 ���� ������
10:00 ����
10:20 ����(���ݸ� ����)
10:30 ���� 
15:00 ū������ ����(�ɰ氰�� �� ��)
16:30 �����(�ý�: 4,400�� --> ����)
16:50 �̸���(����1�� 103�� 1502ȣ): �̻��ϰ� ó�� �湮(1�� 5õ�� �����ؼ� ���𵨸�(2õ) ����ٰ� ��)
	==> �������ϰ� ���� ��Ҵٰ� ��, ���� ������ �о�(110����), ���� ������ ���� ���� ��
	==> ������ �������� 2����, �������� ����, �μ� ���������� ���� ����
20:30 �߽�(�̸���)
20:50 �Ͱ�(�μ� ������ �¿��� ��)
23:00 ��ħ
==============================================================================================================

������������������� 2015.09.28(��) �۾� ����������������
---> 07:00 ~ 20:40 ==> �߼� ����

- �߼� ����
09:00 ���
09:30 ���� 
15:00 �����
15:30 ȯȣ ����(ū���� ��, �ƹ���, ��Ӵ�, ����, �翺 --> ���� ���� ����)
16:30 �Ͱ�
17:00 ������ ���� ��
20:30 ���� 
23:50 �Ͱ� �غ�
00:15 �����(����, ��ġ��)
00:20 �ý�(������ -> ����͹̳�: 5,400��)
00:30 ����͹̳� ����(09.29 01:00 ����- > ����, �ɾ� ��� ���, 6��)
01:00 ���� ��� 
==============================================================================================================

������������������� 2015.09.29(ȭ) �۾� ����������������
---> 07:00 ~ 20:40 ==> �߼� ����

- �߼� ����
05:10 ���� ����(4�ð� 10�� �ɸ�)
05:30 642����(����͹̳� -> �븲��)
06:30 �Ͱ�(�� ����)
07:10 ����(6411��, �븲�� -> �е���)
08:30 �ű��ʵ��б� 
09:00 ���� ==> 2����(ó������ ���α� �����ܵ𿡼� �౸��(����), ������ ����Ź �ͼ� �ణ �ǰ���)
10:30 ����
10:40 �ӽ�ȸ�� 
	==>1. ��� ��� ����ȸ���� �����ϱ�� ��(160���� ��) ==> �ӿ������ּ� 5������ �����϶�� ��
2. ���� ȸ�� ���� ==> ��ȸ��, ��ȸ�� �� �ޱ�� �� 
3. �������� ���ְ� ������, ���������̶� �ο� �̾߱�, ���� ������ �ο� �̾߱� ����
11:30 �߽�(��ġ���, ������ ����): ���� ��
12:50 ����
13:50 �Ͱ�
15:00 ����
17:00 ���
19:40 ����(���)
23:00 ��ħ
==============================================================================================================

������������������� 2015.09.30(��) �۾� ����������������
---> 07:00 ~ 23:30 ==> �߱�(����[���õ��], 5,500��), ���￪(�翺 ����, �ý�(���￪ -> �븲��: 13,080��)

- �Ѽ� ERP �籸�� Prj[��]  
- ���߰��� �� ���� ��û ���� ����  �׽�Ʈ �� ����
1. Q&A[/Help > Q&A]
==============================================================================================================

- UI����, ���� ������ ����� ���忡�� ���� ����
1. (��)�������Ʈ ����� ����� �ں��� ��ȭ ��ȭ
  ==> �־��� ��� ö������ ������ ��
==============================================================================================================

- ORA-01465: 16������ ������ �������մϴ� 
1. ���� 
- INSERT, UPDATE �Ϸ��� �÷��� TYPE�� BLOB�� ��� ���ڿ��� ���� �Է��Ϸ��� ��� �߻� 
INSERT INTO TB_TEST (T_BLOB) VALUES ('TEST') 
  
2. �ذ��� 
- INSERT INTO TB_TEST (T_BLOB) VALUES (UTL_RAW.CAST_TO_RAW('TEST')) 
UTL_RAW.CAST_TO_RAW ��� RAWTOHEX �� ����ص� �ȴ�.

3. �߰����� 
��ȯ ����� ���ڿ��� Ȯ���Ϸ��� �Ʒ��� ������ ����ϸ� �ȴ�. 
SELECT UTL_RAW.CAST_TO_VARCHAR2(T_BLOB) FROM TB_TEST
==============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������