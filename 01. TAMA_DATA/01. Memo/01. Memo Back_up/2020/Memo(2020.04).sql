

����������������������������������������������������������
+----------------------------------------------// Memo(2020.04) //----------------------------------------------+
����������������������������������������������������������


������������������� 2020.04.01(��) �۾� �������������������
---> 07:00 ~ 21:00 ==> ������ö �Ĵ� �ı� ����(10��, 40�� 216,000��(�� ��: 5,400��), ���� ��ü[����])

- ������ö ����ȭ�й��� MAP ���� Prj[��]
- ��ü ȭ��(������) (/admin2020noxMat::MainDiscAdmin.xfdl) ȭ�� ���� ==> �Ϸ� @@@
1. 3�� ȭ�� ����(3���� Div�� �и�)
 1) 00. ��ü ȭ�� ������ Div(div_RightGrdList)
 2) 01. ���� ȭ�� ������ Div(div_RightGrdList_01)
 3) 02. ���� ȭ�� ������ Div(div_RightGrdList_02)
==============================================================================================================

- ��ư, St, Grid �����(��), ���̱�(��) ����
/***************************************************************************
 * Even   : div_RightGrdList_01_btn_ListWorkHidden_onclick
 * Desc   : �۾���Ȳ(����) �����(��) ��ư Ŭ�� �̺�Ʈ(�����) [01. ���� ȭ�鿡��]
 ****************************************************************************/
this.div_RightGrdList_01_btn_ListWorkHidden_onclick = function(obj:nexacro.Button,e:nexacro.ClickEventInfo)
{
	trace("[/MainDisc.xfdl] [div_RightGrdList_01_btn_ListWorkHidden_onclick()] ==> [TEST_01] [�۾���Ȳ (����) �����(��)]" );
	
	// �۾���Ȳ(����)  ���� �����
	this.div_RightGrdList_01.form.btn_ListWorkShow.set_visible(true);		// �۾���Ȳ (����) ���̱�(��) ��ư ���̱�: true
	this.div_RightGrdList_01.form.btn_ListWorkHidden.set_visible(false);		// �۾���Ȳ (����) �����(��) ��ư �� ���̱�	
	this.div_RightGrdList_01.form.grd_ListWork.set_height(0);		// �۾���Ȳ (����) Grid �� ���̱� 
	
	// ���峻 ���� �� ����ȭȮ���� ���� 
	this.div_RightGrdList_01.form.btn_Nx4FctFacilShow.set_top("st_TitleOutWorkStat:0");		
	// ���峻 ���� �� ����ȭȮ���� ���̱�(��) ��ư ==> �۾���Ȳ (����) St���� �ٷ� �ؿ� ��ġ ��Ŵ
	this.div_RightGrdList_01.form.btn_Nx4FctFacilHidden.set_top("st_TitleOutWorkStat:0"); 	
	// ���峻 ���� �� ����ȭȮ���� �����(��) ��ư 
	this.div_RightGrdList_01.form.st_TitleNx4FctFacil.set_top("st_TitleOutWorkStat:0");			
	// ���峻 ���� �� ����ȭ�й��� ���� St ==> �۾���Ȳ (����) (����) St �ٷ� �ؿ� ��ġ ��Ŵ
	this.div_RightGrdList_01.form.btn_Nx4FctFacilPop.set_top("st_TitleOutWorkStat:0");			
	// ���峻 ���� �� ����ȭ�й��� ���� �˾� ��ư
	this.div_RightGrdList_01.form.grd_NoxMatInfo4FctFacil.set_top("st_TitleNx4FctFacil:-1");	
	// ���峻 ���� �� ����ȭ�й��� ���� Grid ==> ���峻 ���� �� ����ȭ�й��� ���� St -1 �ؿ� ��ġ ��Ŵ
	
	// ����ȭȮ���� �϶�ǥ ���� 
	this.div_RightGrdList_01.form.btn_NxIlamShow.set_top("grd_NoxMatInfo4FctFacil:0");		
	// ����ȭ�й��� �϶�ǥ ���̱�(��) ��ư ==> ���峻 ���� �� ����ȭ�й��� ���� Grid���� �ٷ� �ؿ� ��ġ ��Ŵ
	this.div_RightGrdList_01.form.btn_NxIlamHidden.set_top("grd_NoxMatInfo4FctFacil:0");		
	// ����ȭ�й��� �϶�ǥ ���̱�(��) ��ư  
	this.div_RightGrdList_01.form.st_TitleNxIlam_01.set_top("grd_NoxMatInfo4FctFacil:0");		// ����ȭ�й��� �϶�ǥ St
	this.div_RightGrdList_01.form.grd_NoxMatIlam.set_top("st_TitleNxIlam_01:-1");		
	// ����ȭ�й��� �϶�ǥ Grid ==> ����ȭ�й��� �϶� St -1 �ؿ� ��ġ ��Ŵ
	trace("[/MainDisc.xfdl] [div_RightGrdList_01_btn_ListWorkHidden_onclick()] ==> [TEST_91] [�����]" );
};
==============================================================================================================

- ��ü ȭ��(/noxMat2020noxMat::MainDisc.xfdl) ȭ�� ���� ==> �Ϸ� @@@
1. 3�� ȭ�� ����(3���� Div�� �и�)
 1) 00. ��ü ȭ�� ������ Div(div_RightGrdList)
 2) 01. ���� ȭ�� ������ Div(div_RightGrdList_01)
 3) 02. ���� ȭ�� ������ Div(div_RightGrdList_02)
==============================================================================================================

������������������� 2020.04.02(��) �۾� �������������������
---> 07:00 ~ 20:20 ==> 22:24 �ν��� �� ��ü(255U, 26U ����)

- ������ö ����ȭ�й��� MAP ���� Prj[��]
- ��ü ȭ��(������) (/admin2020noxMat::MainDiscAdmin.xfdl) ȭ�� ���� ==> �Ϸ� @@@
1. ���ع��� �ϴ� Tab �ݱ�, ���� Ŭ�� �ȵǴ� ����
 1) div_RightGrdList_01(01. ���� ȭ�� ������ Div, div_RightGrdList_02(02. ���� ȭ�� ������ Div) right ��ġ �����ؼ� �ذ�
 <Button id="btn_tabHidden" taborder="10" width="45" height="45" right="436" onclick="btn_tabHidden_onclick" 
	bottom="240" cssclass="btn_MF_Close" tooltiptext="���ع��� �ϴ� Tab �ݱ�"/>
<Div id="div_RightGrdList_01" taborder="2" width="485" right="-505" top="0" bottom="0" formscrollbartype="none"
	ext="01. ���� ȭ�� ������ Div" visible="false"> 
/***************************************************************************
 * Even   : fn_GotoPage
 * Desc   :  ȭ�� �̵�
 ****************************************************************************/ 
this.fn_GotoPage = function(nNo)
{
	//trace("[/MainDiscAdmin.xfdl] [fn_GotoPage()] ==> [TEST_01]"); 
	
	var sViewNm;
 	this.div_RightGrdList.set_visible(false);		// 00. ��ü ȭ�� ������ Div �� ���̱�(0: ��ü ȭ��, 1: ����, 2: ����)
	this.div_RightGrdList_01.set_visible(false);	// 01. ���� ȭ�� ������ Div �� ���̱�(0: ��ü ȭ��, 1: ����, 2: ����)
	this.div_RightGrdList_02.set_visible(false);	// 02. ���� ȭ�� ������ Div ���̱�(0: ��ü ȭ��, 1: ����, 2: ����)
	
	if(nNo == "1")		// 01. ���� ȭ������ �̵�
	{  
		sViewNm = "01. ���� ȭ�� Display";
		this.fv_sFctFacilGb = 1;			// ����, ���� ���� ����(0: ��ü, 1: ����, 2: ����)
		this.fv_ID_FACILITY = "66";			// �ü��ڵ� ����(ȭ�� �̵�)  //  TEST @@@ ====>
		this.div_RightGrdList_01.set_visible(true);	// 01. ���� ȭ�� ������ Div ���̱�(0: ��ü ȭ��, 1: ����, 2: ����) 
		this.div_RightGrdList_01.set_right(0);		// 01. ���� ȭ�� ������ Div right �� ����(-505���� ���� ��ġ�� ����) @@@@
		this.fn_TotCtrlToolSearch_01(); 		// ��ü�������� ��ȸ[01. ���� ȭ��] 
		 
	}
	else if(nNo == "2")		// 02. ���� ȭ������ �̵�
	{ 
		sViewNm = " 02. ���� ȭ�� Display";
		this.fv_sFctFacilGb = 2;			// ����, ���� ���� ����(0: ��ü, 1: ����, 2: ����)
		this.fv_ID_FACILITY = "66";			// �ü��ڵ� ����(ȭ�� �̵�)  //  TEST @@@ ====>
		this.div_RightGrdList_02.set_visible(true);	// 02. ���� ȭ�� ������ Div ���̱�(0: ��ü ȭ��, 1: ����, 2: ����) 
		this.div_RightGrdList_02.set_right(0);		// 02. ���� ȭ�� ������ Div right �� ����(���� ��ġ�� ����) @@@@
		this.fn_TotCtrlToolSearch_02(); 		// ��ü�������� ��ȸ02. ���� ȭ��] 
	}
	trace("[/MainDiscAdmin.xfdl] [fn_GotoPage()] ==> [TEST_91] [ȭ�� �̵� ��� @@@] [nNo]"+ nNo +"[ȭ�� ��ġ]"+ sViewNm );
}; 
==============================================================================================================

- Image Viewer���� Ŭ���� ��ġ ��ǥ �޴� ��� ����
1. (��)�������Ʈ �ݼ��Ϳ� �� �÷��� ����
this.ImageViewer_onclick = function(obj:nexacro.ImageViewer,e:nexacro.ClickEventInfo)
{	 
	var nRow = new nexacro.Number(this.ds_OutWorkStat.rowposition);
	var nRow2 =  parseInt(nRow) + 1;
	var objComp = new Edit();		// Edit ����(������Ʈ ����)
	trace("[/noxOutWorkStatDmiP.xfdl] [ImageViewer_onclick()] ==> [TEST_01] [nRow]"+ nRow +"[�ش� Row]"+ nRow2 
		+"[ds_OutWorkStat.RMRK]"+ this.ds_OutWorkStat.getColumn(nRow, "RMRK") );
	
	if(!this.gfn_IsNull(this.ds_OutWorkStat.getColumn(nRow, "RMRK")))		 // �ش� Row�� �񱳰� ���� �ƴϸ�
	{  
		trace("[/noxOutWorkStatDmiP.xfdl] [ImageViewer_onclick()] ==> [TEST_02] [�ش� Row]"+ nRow2 +"[objComp ���� ����]"+ 
		this.components["edit_PositNm_"+ nRow2] );
		
		if(this.components["edit_PositNm_"+ nRow2] instanceof Edit) 		// �ش� Row�� objComp�� �����ϸ�
		{
			trace("[/noxOutWorkStatDmiP.xfdl] [ImageViewer_onclick()] ==> [TEST_11] [�ش� Row]"+ nRow2 +"[�ش� Row�� objComp�� �����ϸ�] ==> Pass" );
		}
		else
		{  
			trace("[/noxOutWorkStatDmiP.xfdl] [ImageViewer_onclick()] ==> [TEST_21] [�ش� Row]"+ nRow2 +"[�ش� Row�� objComp�� ���� ���ϸ�] ==> Edit �߰�" );
	  
			objComp.init("edit_PositNm_"+ nRow2, e.clientx + obj.getOffsetLeft(), e.clienty + obj.getOffsetTop(), 40, 27);  	// objComp �ʱ�ȭ
			var nAddChild = this.addChild(objComp.name, objComp);		// �ڽ� ������Ʈ�� �߰��ϴ� �޼ҵ� 
			objComp.show(); 
			objComp.set_value(this.ds_OutWorkStat.getColumn(nRow, "RMRK"));		// ��ǥ�� ����
			objComp.set_tooltiptext("��ǥ��"+ nRow2);
			objComp.set_readonly(true) 		// readonly ����	
			trace("[/noxOutWorkStatDmiP.xfdl] [ImageViewer_onclick()] ==> [TEST_81] [enAddChildt]"+ nAddChild +"[objComp.get_id]"+ 
			objComp.get_id +"[objComp.left]"+ objComp.left +"[objComp.top]"+ objComp.top 
				+"[objComp.width]"+ objComp.width +"[objComp.height]"+ objComp.height );
		}
	}  
};
==============================================================================================================

������������������� 2020.04.03(��) �۾� �������������������
---> 07:00 ~ 15:00 ==> ������ ���� ����, ������(15:05 ~ 17:10): (��)�̳� ��Ƽ�� ������ �� ��� Ž(�� 3��) --> 16:30 õ�տ� 2�� �ⱸ
									--> 16:40 �븲�� --> 17:07 �Ͱ�, �̹�(��ī�� �̿��)
									
- ������ö ����ȭ�й��� MAP ���� Prj[��]
- ���� ���ε� �˾�(/admin2020noxMat::noxUploadFileP.xfdl) ȭ�� ���� ==> �Ϸ� @@@
1. �̹��� ���ϻ���(/[/File.js)
var sFolder = this.FILE_DS.getColumn(0, "FPATH");		// ���� ��� �߰�[������: 2020.03.23(v1.0), by ���¸�]
trace("[/File.js] [gfn_Filecallback()] ==> [TEST_21] [������ȸ ����] [this.FILE_GUBUN]"+ this.FILE_GUBUN );

2. �̹��� ���ϻ���(/deleteFile.jsp)
<%
var sFolder = this.FILE_DS.getColumn(0, "FPATH");		// ���� �߰�[������: 2020.03.23(v1.0), by ���¸�]
trace("[/File.js] [gfn_Filecallback()] ==> [TEST_21] [������ȸ ����] [this.FILE_GUBUN]"+ this.FILE_GUBUN );

<%
System.out.println("[/deleteFile.jsp] ==> [TEST_01] [���� ����]" ); 

PlatformData platformData = new PlatformData();
HttpPlatformRequest platformRequest = new HttpPlatformRequest(request);

platformRequest.receiveData();
PlatformData pData = platformRequest.getData();

String osName = System.getProperty("os.name");

String spr = File.separator; 
String realPath = request.getParameter("path");	// ���� ���� ���
String realFlolerPath = request.getParameter("folder");	// ���� ���� ���

if(osName.indexOf("Window") > -1)
{
	realPath.toString().replace('/', '\\'); 
}

File folder = new File(realFlolerPath);
 
try {
	System.out.println("[/deleteFile.jsp] ==> [TEST_11] [folder.exists()]"+ folder.exists() );
	
	if(file.exists()) 	// ������ �����ϸ� @@@
	{
		if(file.delete())		// ���� ���� ó��
		{
			returnString += "'"+ realPath +"' Delete Success[01. ���� ���� ����]";
		} 
		else
		{
			succ = false;
			returnString += "'"+ realPath +"' Delete failed[���� ���� ����]";
		} 
	}
	else
	{
		succ = true;
		returnString += "'"+ realPath +"' File not available[���� ��� �Ұ�]";
	}	 // end of if  --> // ������ �����ϸ� @@@
	System.out.println("[/deleteFile.jsp] ==> [TEST_51] [returnString]"+ returnString );
	
	File[] folder_list = folder.listFiles(); 	// ���� ����Ʈ ������ 		

	System.out.println("[/deleteFile.jsp] ==> [TEST_61] [������ �ִ� ���� ����]"+ folder_list.length +"[folder.isDirectory()]"+ folder.isDirectory() );
	
	if(folder_list.length < 1)		// ������ ������ ���� ���ϸ�
	{
		if(folder.isDirectory())			// ������ �����ϸ�
		{ 
			System.out.println("[/deleteFile.jsp] ==> [TEST_71] [folder.isDirectory()]"+ folder.isDirectory() );
			
			folder.delete(); 		// ��� ���� ����
			System.out.println("[/deleteFile.jsp] ==> ������ �����Ǿ����ϴ�.[02. ���� ���� ����]");
		}
	}	// end of if  --> // ������ ���� ���ϸ�  
}  
%>
==============================================================================================================

- TEST ����� �߰�
-- ����� ��й�ȣ ���� @@@  
UPDATE TB_GQ_CM_USERINFO
SET EMP_NO = '1521662'
WHERE 1=1
	AND EMP_NO = '1521222'		-- ���: 1521666(���¸�),  1521662(���¸�2)
;
==============================================================================================================  

- ��������(/admin2020noxMat::EqupInfo.xfdl) ȭ�� ����
1. �����ϰ����: Ŭ��
/***************************************************************************
 * Even   : btn_ExcelDownload_onclick
 * Desc   : ���� �ٿ�ε�
 ****************************************************************************/ 
this.btn_ExcelDownload_onclick = function(obj:nexacro.Button,e:nexacro.ClickEventInfo)
{
	trace("[/EqupInfo.xfdl] [btn_ExcelDownload_onclick()] ==> [TEST_01]" ); 
	
	this.gfn_ExcelExport(this.grd_List,  "Sheet1", "��������"); 
}; 

<Grid id="grd_List" taborder="0" left="53" top="195" right="53" autoenter="select" bottom="53" cssclass="grd_WF_Admin">

- /theme.xcss ���Ͽ���(..\_theme_\NoxMatRetMot\)
/*** ������ȭ�� �׸��� ***/
.Grid.grd_WF_Admin
{
	-nexa-border : 1px solid #d2d2d2;
} 
==============================================================================================================

- ������[��]
14:15 ���
14:20 (��)�̳� ��Ƽ�� ������ �� ��� Ž(�� 3��)
15:37 õ�տ� ����
16:07 �Ͱ�
16:10 �����(������)
16:20 �뵿�� ��������(������ ������ ��)
16:40 �Ͱ�
17:00 �翺 ���
17:10 �����(������)
17:20 �̹�(��ī�� �̿��, 8õ��)
17:50 ���� ������ ���� ����(16,500��, �̸�Ʈ ������)
18:05 �Ͱ�
18:10 ����
18:40 �ǳ� ������ Ÿ��: ���� �濡��
		 ==> [���] �ؽ� �庸��, 4�� ��û, KBS2 2004.11.24. ~ 2005.05.25.�濵���� 51����
		 --> http://program.kbs.co.kr/1tv/drama/jangbogo/pc/list.html?smenu=a51fb5
18:40 ����
20:10 ������ ������(�뵿�� 1-1) ���� ��ȭ ==> 4�� 20��(��)�¶��� ����(e-�н��� SW�� �¶��� ����)
		 ==> 4�� 9��(��) 10�� �뵿������ ���(���� ���� �����Կ��� �����ش޶�� ��Ź �帲), ��Ź����� ���Ǽ� �ۼ�
		 ==> �ٹ�ȭ Ư�� �б�: �ʿ� ���ٰ� ��
20:20 ���ͳ� ���� ==> ������ö VPN ���� �ȵ�
20:40 ����(�翺�� ����)
21:40 3�� ����� ���� ���
23:00 ��ħ(���� �� ħ�뿡�� ��ħ)
==============================================================================================================

������������������� 2020.04.04(��) �۾� �������������������
---> 08:00 ~ 18:00 ==> 

- �ָ�[��]
08:00 ���
08:26 ����
09:00 �ǳ� ������ Ÿ��: ���� �濡��
10:00 ����
10:30 ������ ������ ����(����Ʈ ��)
11:20 �����(������)
11:30 ���̼� �븲2ȣ�� ==> ������ �ڹ���(10mm*80cm, ������ ������) ����, TG ������ �̾���(E500S) ����
		 , ���� �� ���� ���� ���̵� ũ���� Į��(N5 ���� ����), Ʈ����ź�� ����(450ml): ������, �ո��� ���� ���콺 �е� ���� 
12:40 �ǳ� ������ Ÿ��
13:00 �翺 ���
13:30 ����
14:00 ���ͳ� ����
15:00 ������ ������ ����(����Ʈ ��)
16:00 ���ͳ� ����
18:00 ����
18:30 �ǳ� ������ Ÿ��(1�ð�)  
19:30 ����
20:00 ���ͳ� ����
21:20 �翺 �Ͱ�(�ɳ��� ���� ��)
21:40 TV ��û ==> KBS1 Ư�Ŀ� ���� ����� ���� ��û
22:30 ��ħ
==============================================================================================================

- TG ������ �̾���(E500S) ����(5õ��)
https://blog.naver.com/jmmmlp/221240935128
==============================================================================================================

- ������ ��ġ(�ڵ����� ��ġ: ������-�����õ���ð��� ����� ������)
https://play.google.com/store/apps/details?id=com.biller.scg&hl=ko
1. ���ð��� ��ħ(������ �ڵ������� �� ��)
==============================================================================================================

- 41. �䷻Ʈ
http://www.torrent.kr
==============================================================================================================

������������������� 2020.04.05(��) �۾� �������������������
---> 08:00 ~ 18:00 ==>

- �ָ�2[��]
07:30 ���
08:05 ����
08:30 �ǳ� ������ Ÿ��
09:30 ����
09:00 ���ͳ� ����
12:10 �߽�
12:30 �ǳ� ������ Ÿ��
13:30 ����
13:50 �翺(����) ������� � ��
14:00 ���ͳ� ����
16:00 �¿������� ��ȭ ��
16:40 ���� �±ǵ� ������ ���忡�� ��ȭ ==> ���Ϻ��� ������ ���� ���ǿ��� �����̸� 16�ÿ� ������ �ͼ� �±ǵ� ���忡�� �Ʒ� ��Ŵ
		--> 18:30 �翺�� �±ǵ��� ���� ������ ���� ������ ��
17:00 ����
17:30 �ǳ� ������ Ÿ��
18:30 ����
18:30 ���ͳ� ����
19:20 �����
19:40 �¼��� 2�� �ⱸ ���� ==> (��)�̳� ��Ƽ�꿡�� ���� �� ��� Ž(������ ����� 3��)
20:00 ���� ���
21:06 ���� ���� �ֺ� ����
21:10 �Ͱ�
23:00 ��ħ
==============================================================================================================

������������������� 2020.04.06(��) �۾� �������������������
---> 07:00 ~ 21:00 ==> ���� �±ǵ� �� ����(2�� �ް� �� ����: �±ǵ� ����� ���� �����̸� 18�� �ݿ� �Ͱ� ��Ŵ)
								 , ���̼� ���콺 �е� ���(2õ��, �ε巴�� �����)

- ������ö ����ȭ�й��� MAP ���� Prj[��]
- SSO �м�
1. (18.07.17) ���հ����ý���_�űԾ����ý��ۿ���.pptx
���λ� ����(IM): ����� �Ի�/���/��ȣ����ȭ��  �μ�����IF�� ����
�����շα���(SSO): �׷���� �α����� �������� SingleSignOn ���� 
 1) NSSO(NETS SSO) Agent��, SSO�� ������ ��� Application ������ ������ ���� ���̺귯��, ȯ�漳�� ����, ���� ���� ���� ���� 
==============================================================================================================
 
- imgscalr-lib.4.2.jar �߰�(eclipse���� NoxMatRetMot Prj ������ ����)
- /pom.xml ���Ͽ���
<!--imgscalr-lib.4.2.jar �߰� ==> 2020.04.06, by ���¸�  -->
<dependency>
	<groupId>org.imgscalr</groupId>
	<artifactId>imgscalr-lib</artifactId>
	<version>4.2</version>
</dependency>
==============================================================================================================

- ��������(/admin2020noxMat::EqupInfo.xfdl) ȭ�� ����
1. �����ϰ����: Ŭ��
/***************************************************************************
 * Even   : btn_ExcelDownload_onclick
 * Desc   : �����ϰ���� ��ư Ŭ�� �̺�Ʈ(���� �ٿ�ε�)
 ****************************************************************************/ 
this.btn_ExcelDownload_onclick = function(obj:nexacro.Button,e:nexacro.ClickEventInfo)
{
	trace("[/EqupInfo.xfdl] [btn_ExcelDownload_onclick()] ==> [TEST_01] [grd_List.cssclass]"+ this.grd_List.cssclass ); 
	
	this.grd_List.set_cssclass("grd_WF_Admin_02");		// grd_List Grid css ����(���� �ٿ�ε��� �� ���) [������: 2020.04.06, by ���¸�]
	this.gfn_ExcelExport(this.grd_List,  "Sheet1", "�������� ����Ʈ"); 	
	this.grd_List.set_cssclass("grd_WF_Admin");			// grd_List Grid css ����(���� css�� ����)[������: 2020.04.06, by ���¸�] 
};

<Grid id="grd_List" taborder="0" left="53" top="195" right="53" autoenter="select" bottom="53" cssclass="grd_WF_Admin">  
<!--// �������� ����Ʈ Grid //-->
-----------------------------------------------------------------------------------------------------------------------------

- /theme.xcss ���Ͽ���(..\_theme_\NoxMatRetMot\)
/*** ������ȭ�� �׸���_02 ==> �߰�[������: 2020.04.06, by ���¸�] ***/
.Grid.grd_WF_Admin_02
{ 
	-nexa-border : 0px none, 1px solid #d2d2d2;
}

.Grid.grd_WF_Admin_02 .head
{
	background : #f7f8f8;
	-nexa-border : 0px none, 0px none, 1px solid #d2d2d2, 0px none;
}

.Grid.grd_WF_Admin_02 .head .row .cell
{
	-nexa-border : 0px none, 1px solid #d2d2d2;
	background : #f7f8f8;
	font : 16px "HDharmony M","HDharmony","���� ���";
	color : #005982;
}
==============================================================================================================

- Data export(DBeaver����)
1. ���̺� ��ȸ
-- ������ ���� ��ȸ  @@@ ==> 180��
SELECT  A.*
FROM TB_HCM_ADMINACCOUNT A 		 -- ������ ���� TB 
;
2, ��ȸ�� ����Ÿ ����: ���콺 �� Ŭ�� ==> ����Ÿ ����  
3. Data transfer target type and format(��â)
 1) Target: SQL ���� 
 2) Exported:  ������ ���� ��ȸ  @@@ 
  ==> ����(N): Ŭ��
4. Settings(���̺� to ����, SQL) (��â)
 1) Extraction settings
   ��. Extraction type: Single query  ==> ����
 2) Format settings
   ��. Expoter settings
    ��): INSERT ���� �� �ο� ����: 1  ==> 1���� ������ �� @@@@
  ==> ����(N): Ŭ��
5. Output (��â)
 1) Directory: D:\01. TAMA_DATA\02. TAMA Project\2020.01(������ö ���ع��� ���� ����͸� �ý��� ���� Prj)\41. DB query\44. Export SQL
 2) File name pattern: ${table}_${timestamp}
 3) Encoding: UTF-8
 4) Timestamp pattern: yyyyMMddHHmm
  ==> ����(N): Ŭ��
==============================================================================================================

- �ڱ��ħ�Է�(�ڵ��� ������ ���)
1. 2020��.04������ ���� ==> 03774ml
==============================================================================================================

- �Ƶ� ���� ���� ��û
1. 40���� �������� ����, �����ູī��(��������)���� ��û�� ��
https://online.bokjiro.go.kr/apl/ccca/aplChldCareCoupCrti.do
==============================================================================================================

������������������� 2020.04.07(ȭ) �۾� �������������������
---> 07:00 ~ 21:00 ==> �ƺ� �Ѹ� �Ϻ� ��� ���� ����(�ڷγ�19 �ɰ�)

- ������ö ����ȭ�й��� MAP ���� Prj[��]
- SSO �м�
1. (18.07.17) ���հ����ý���_�űԾ����ý��ۿ���.pptx
���λ� ����(IM): ����� �Ի�/���/��ȣ����ȭ��  �μ�����IF�� ����
�����շα���(SSO): �׷���� �α����� �������� SingleSignOn ���� 
 1) NSSO(NETS SSO) Agent��, SSO�� ������ ��� Application ������ ������ ���� ���̺귯��, ȯ�漳�� ����, ���� ���� ���� ���� 
==============================================================================================================

1. SSO���� �α���[���� �׽�Ʈ��] ===> http://localsso.Hyundai-steel.com:9000/sample.jsp
2. SSO���� Link ������(���� ȭ��) ===> https://devsmnew.hyundai-steel.com/cm/nsso.jsp  
 1) sample.jsp�� JSP����(<%~1���κ��� 114���α��� %>) �� �߰��Ͽ� ���շα���ID(logonID) �� ���� ���� ���� ���� ������ 
 �̾������� ����
==============================================================================================================

- jsp Ȩ������ �ּ� ��������(jsp����)
1. request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort();
==============================================================================================================
 
- ���շα���(SSO) ����(/sample.jsp ���Ͽ���)
1. ����:
com.nets.sso.common.AgentException: ��ϵ��� ���� SSO ����Ʈ �� ������ ���� ��û�Ǿ����ϴ�., Exception Code = 13000003
	at com.nets.sso.agent.configuration.SSOSite.downloadSSOPolicy(SSOSite.java:241)
2. ����: ����������� ���������ʴ°��, agentconfig.xml������ġ�� �߸��Ǿ� ���о���� ���
==============================================================================================================
 
- ����ȯ�� SSO������ ==> http://gqms.hyundai-steel.com/index_she_new.jsp
http://gqms.hyundai-steel.com
-----------------------------------------------------------------------------------------------------------------------------

Sample
- safety.hyundai-steel.com/HSKC   (������ö 100�⿪�������ȭ��) 
- safety.hyundai-steel.com/HSKU  (������ö ���־����۾�����)
https://visit.hyundai-steel.com/reserve/index.do 	==> 1. ����缺 �湮: �湮���� �ý���
http://safety.hyundai-steel.com/HSKU/	==> 2. ���缺 �湮: ���־�ü �������� �ý��� 
- safety.hyundai-steel.com/HSMS  (������ö ���������۾�����_�����)
- safety.hyundai-steel.com/HSMU   (������ö ���־������԰���_�����)
==============================================================================================================

- nsso-agent-15.jar �߰�(/pom.xml ���Ͽ���)
<!-- nsso-agent-15.jar �߰�(SSO����) ==> 2020.04.07, by ���¸�  -->
<dependency>
	<groupId>spring</groupId>
	<artifactId>nsso-agent-15</artifactId>
	<version>15</version>
	<scope>system</scope>  
	<systemPath>${basedir}/src/main/webapp/WEB-INF/lib/nsso-agent-15.jar</systemPath>  
</dependency>
==============================================================================================================

������������������� 2020.04.08(��) �۾� �������������������
---> 07:00 ~ 18:10 ==> �߱� ���� ���� ����(�ڷγ�19), �赵�� �븮 ����(ĵĿ��[����, 1,900��], ������ö �ߵ� Prj ����, 10������)
									, 21:20 �ν��� �� ��ü(270U, 5U ����) 
									
- ������ö ����ȭ�й��� MAP ���� Prj[��]
- SSO �м�
1. (18.07.17) ���հ����ý���_�űԾ����ý��ۿ���.pptx
���λ� ����(IM): ����� �Ի�/���/��ȣ����ȭ��  �μ�����IF�� ����
�����շα���(SSO): �׷���� �α����� �������� SingleSignOn ���� 
 1) NSSO(NETS SSO) Agent��, SSO�� ������ ��� Application ������ ������ ���� ���̺귯��, ȯ�漳�� ����, ���� ���� ���� ���� 
==============================================================================================================
 
- InnoR3D WebRenderProgram Source
1. InnoR3D Source Code.zip: ��Ȳ ���忡�� ���Ϸ� ���� ==> eclipse �缳��
 1) resources ���� �߰�
  ��. \InnoR3D Source Code\WebContent\resources  ==> /NoxMatRetMot/src/main/resources ������ �ֱ� 
 2) /InnoIndex.jsp ���� ��ġ ����
  ��.  \InnoR3D Source Code\WebContent  ==> webapp\NoxMatRetMot\3D_render ������ �ֱ�
 3) /ResultBuffer.java, /UserDAO.java ���� �߰�
  ��. \workspace\NoxMatRetMot\src\main\java\DBConnection ������ �ٿ��ֱ�
 4) /ojdbc6.jar �߰�
  ��. ���� eclipse�� ����   
==============================================================================================================

- ���� ���� ���� 
1. �ҽ� ��ġ: /u01/app/HSSK/webapp/HSCM/
5. ��Ĺ ���� �����(tomcat���� �α���) @@@
> sh /u01/infra/apache-tomcat-8.5.43/bin/shutdown.sh
> sh /u01/infra/apache-tomcat-8.5.43/bin/startup.sh
> tail -f /u01/infra/apache-tomcat-8.5.43/logs/catalina.out 
==============================================================================================================

- ����, � ���� ���� ���� ����
1. ������ ���忡�� ����
- ������ö ����ȭ�й��� MAP ���� �ý��� ������
1. ���������ý���AP1(����) ���� IP: 10.10.180.237 ==> safety.hyundai-steel.com/HSCM
2. ���������ý���AP1(�) ���� IP: 10.10.221.235  ==> safetydev.hyundai-steel.com/HSCM
==============================================================================================================

- ����ȭ�й��� MAP �ý��� ��Ĺ ���� ���� ��û ���� ����
1. ������ ���忡�� ���� 
 1) ���� ��Ĺ ����(/u01/infra/apache-tomcat-8.5.43) 1��� ���� ���� 4���� ����Ʈ�� ����ϰ� ���� 
 2) ����ȭ�й��� MAP �ý����� 3D ���� �ε��ϹǷ� ��û�� ���ϰ� �߻��� ������ ������.  
 3) ���� infra ���� ���� �ܿ� ��Ĺ ������ �߰����� ���� ��û �帲(����)
  ==> 1���� �������� ����ϸ� ��Ĺ �������� ��Ʈ�� �����ؼ� ����� ���� ��õ(����ö ������ ��õ)
==============================================================================================================

- ������(IPIN) ��� ����
1. tamario /hp��*!6*1@, 2��, hp��*!6*1
============================================================================================================

- Super Putty(���� �Ѷ�) ȯ�� ����
 0. PuTTY Sessions > New > Create New Session(��â)
1. Session Name: 02. DWS ID(����)
2. Host Name: 117.103.37.28, Port: 22 
3. PuTTy Sessopm Profile: 01. DWS ID   ==> ���� @@@ 
4. Login Username: wadmin 
5. Extra PuTTy Argumnetst: -pw dws4004!  ==> ��й�ȣ ���� @@@ 
============================================================================================================

-  �索 �Ҹ�ǰ ����
1. ���ϸ����� �ֹ� ==> 202,500�� ȯ�� ����
1. http://sooilmall.com/shop/orderinquiryview.php?od_id=2020040821573283&uid=085498db81cb499a59ade251f959016b
2. ���� ���� 
 1) �ٳ���ƼĮ ���۶���-ST[�ٴ� ����: 6.5mm]	 15 	 4,000 	 60,000��
 2) �ٳ� 3cc �ֻ��(�ٳ� �÷���, �ٳ� ��)	 15 	 1,500 	 22,500�� 
 �� �ݾ�				 82,500�� 
==============================================================================================================

������������������� 2020.04.09(��) �۾� �������������������
---> 07:00 ~ 21:00 ==> ������ 1�г� ������ ���(�������� ==> �±ǵ� ���� ==> �Ͱ� �Ҷ� ������ ����)

- ������ö ����ȭ�й��� MAP ���� Prj[��]
- ���� ���� ���� 
1. �ҽ� ��ġ: /u01/app/HSSK/webapp/HSCM/
5. ��Ĺ ���� �����(tomcat���� �α���) @@@
> sh /u01/infra/apache-tomcat-8.5.43/bin/shutdown.sh
> sh /u01/infra/apache-tomcat-8.5.43/bin/startup.sh
> tail -f /u01/infra/apache-tomcat-8.5.43/logs/catalina.out 
==============================================================================================================

- ���� ���� ���� ����
1. /u01/app/HSSK/webapp/HSCM ������ ����ϸ� /u01/app/HSSK/webapp/WEB-INF/classes, /lib ������ �ɹ� ���� ����Ʈ(4��)��
���� ����ؾ� �� ==> /u01/app/HSSK/webapp/HSCM/HSCM ����ϸ� classes, /lib ���� �ν� ����
--> ����ȭ�й��� MAP �ý����� ������ ����Ʈ�� ������ ��(�ڹ��� PM���� ���������� ��û)
==============================================================================================================

- ���� ���� ���� ����
1. ��å �δ�ǥ���� ��ȭ, �ڹ��� PM ���
 1) ���� ��Ĺ ����(/u01/infra/apache-tomcat-8.5.43) 1��� ���� ���� 4���� ����Ʈ�� ����ϰ� ����
 ==> ���ع� Prj�� ������ ��Ĺ ���� ��û(��å �δ�ǥ��  ó������ ������ ������ ��û �ߴٰ� ��)
==============================================================================================================

- Default output foder ��� ����
1. NoxMatRetMot Prj: ���콺 �� Ŭ�� ==> Propterties ==> Propterties for NoxMatRetMot(��â)
 1) Default output foder: NoxMatRetMot/target/classes
==> Default output foder: NoxMatRetMot/src/main/webapp/WEB-INF/classes
=============================================================================================================

- ������ ���� ���� ����
> cd /u01/webapps
[itteam@hspngqdap1 ~]$ cd /u01/app/HSSK/webapp/HSCM/HSCM/_resource_/_theme_/NoxMatRetMot
[itteam@hspngqdap1 /u01/app/HSSK/webapp/HSCM/HSCM/_resource_/_theme_/NoxMatRetMot]$ chmod -R 777 images			
-- images�� ���� ����, ���Ͽ� ��� ���� �ο� @@@@
[itteam@hspngqdap1 /u01/app/HSSK/webapp/HSCM/HSCM/_resource_/_theme_/NoxMatRetMot]$ ls -al
 
drwxrwxrwx 2 itteam itteam 16384 11�� 12 08:35 images
============================================================================================================

������������������� 2020.04.10(��) �۾� �������������������
---> 07:00 ~ 14:50 ==> ������(14:50 ~ 17:00): (��)�̳� ��Ƽ�� ������ �� ��� Ž(�� 4��) --> 17:00 ���Ÿ��  	
									, ������ ���� ö��(�� �ű�, ���� �� ���� ���� �´ٰ� ��)
									
- ������ö ����ȭ�й��� MAP ���� Prj[��]
- ���� ���� �̸� ����  
1. NoxMatRetMot Prj ==> HSCM Prj
 1) File > Switch Workspace ==> Other: Ŭ�� ==> Workspace Launcher(��â)
  ��. Workspace: C:\NoxMatRetMot\workspace  --> C:\HSCM\workspace 
==============================================================================================================
 
- HSCM Prj ����
0. ���� NoxMatRetMot Prj���� HSCM Prj�� ���� 
A. Nexacro ȯ�� ����
1. ��� > Tools�޴� > Options: Ŭ�� > Options(��â)
  1) Project
    ��. General ==> Base Lib Path: C:\HSCM\workspace\HSCM\src\main\nxui\HSCM\nexacro17lib
    ��. Generate ==> Generate Path: C:\HSCM\workspace\HSCM\src\main\webapp\HSCM
    ��. Deploy ==> Deploy Path: ��� ����
  2) Environment
   ��. General ==> Working Folder: C:\HSCM\workspace\HSCM\src\main
  ===> Applicatin: Ŭ��    
---------------------------------------------------------------------------------------------------------------------------
 
- Java Build Path(���� NoxMatRetMot Prj �ҽ��� HSCM Prj�� ����)
1. JRE System Library ����
 1) eclipse ==> Properties ==> java Build Path ==> JRE System Library: ���� Ŭ�� ==>JRE System Library(��â)
  ��. Alternate JRE --> Intalled JREs ��ư: Ŭ�� ==> Intalled JREs(��â) --> Edit ��ư: Ŭ�� ==> Intalled Definition(��â)
 ��. JREs Home: C:\HSCM\eclipse(����) --> Finish ��ư: Ŭ��
==> ��ó: https://yongtech.tistory.com/98 [����ũ�� ���ϸӴ�]
---------------------------------------------------------------------------------------------------------------------------
 
2. Maven Dependencies
 1) maven�� ��ġ �Ǿ� �ִ� ����� conf ���� �Ʒ� setting.xml ������ ���� <localRepository>���</localRepository> �� ����
- / NoxMatRetMot/mavenRepository/settings.xml ���Ͽ��� 
<localRepository>C:\NoxMatRetMot\workspace\NoxMatRetMot\mavenRepository\</localRepository>
==>   <localRepository>C:\HSCM\workspace\HSCM\mavenRepository\</localRepository>
<localRepository>C:\HSCM\workspace\HSCM\mavenRepository\</localRepository>
 
 2) window -> preferences -> maven -> user Setttings �� user Settings�� �κ��� ��θ� ����� settings.xml �� ����ش�.
user Setttings : C:\NoxMatRetMot\workspace\NoxMatRetMot\mavenRepository\settings.xml
==> user Setttings : C:\HSCM\workspace\HSCM\mavenRepository\settings.xml
 
 3) Local Reository: C:\HSCM\workspace\HSCM\mavenRepository  ---> ����Ǿ��� �� Ȯ���� �� @@@
 
 4) ��Ŭ���� �� ���� �� ������Ʈ�� �����Ͽ� maven�� ��θ� Ȯ��
==> ��ó: https://developstory.tistory.com/9 [DevelopStory] 
 
3. Maven Active Maven Profile ����
1) eclipse ==> HSCM: ���콺 �� Ŭ�� ==> Properties for HSCM(��â) 
 ��. Active Maven Profile: C:\HSCM\workspace\HSCM\mavenRepository
 C:\HSCM\workspace\HSCM\mavenRepository
 ==> Ȯ��: e eclipse ==> HSCM: ���콺 �� Ŭ�� ==> Properties for HSCM(��â) ==> Java Build Path ==> Library(��)
  ===> Maven Dependencies: ���ϵ��� ��ΰ� C:\HSCM\workspace\HSCM\mavenRepository�� ���� �Ǿ����� Ȯ���� �� @@@
---------------------------------------------------------------------------------------------------------------------------
 
- Server classpath ����
1. Servers ==> 01_HSCM Server[9000]: ���� Ŭ�� ==> Overview(ȭ��)
 1) Open launch configuration: Ŭ�� ===> Edit launch configuration properites(��â)
1. Arguments(��) ==> VM arguments:
-Dcatalina.base="C:\HSCM\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp2" -Dcatalina.home="C:\HSCM\WAS\apache-tomcat-8.0.32" 
-Dwtp.deploy="C:\HSCM\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp2\wtpwebapps" -Djava.endorsed.dirs="C:\HSCM\WAS\apache-tomcat-8.0.32\endorsed" 
2. Classpath(��) ==> User Entries:
 1) C:/HSCM/WAS/apache-tomcat-8.0.32/bin/bootstrap.jar
 1) C:/HSCM/WAS/apache-tomcat-8.0.32/bin/tomcat-juli.jar
==============================================================================================================
 
- �� ���� ���� �˻� ���(�������� ��ȭ ��, ������ �ο���: ���� �޾���)
1. ��ȭ������(A1C): 5.4%
2. �ν���(����): 0.57%  ==> �ν����� ���� ���´ٰ� ��(����: 1.5% �̻�, �ν��� ���� ��� �����϶�� ��)
3. ������ �� ���ٰ� ��
==============================================================================================================
  
- ������[��]
14:50 ���
14:55 (��)�̳� ��Ƽ�� ������ �� ��� Ž(�� 4��)
17:00 ���Ÿ�� ==> (��)�̳� ��Ƽ�� ��ǥ, �δ�ǥ, ����: ���, ����[���־ ���� ����] --> https://place.map.kakao.com/25607402			
18:10 ���� �߽���(ȣ����)
19:50 ����(�߰��� ȥ�� ���� ����)
20:26 õ�տ� 3�� �ⱹ(������ 30�� �ɸ�)
20:50 �븲�� 
21:00 �Ͱ�
21:00 �ǳ� ������ Ÿ��: ���� �濡�� ==> [���] �ؽ� �庸��, 14�� ��û(�ڵ�������)
22:00 ����
23:00 ��ħ(���Ŀ��� ��ħ, ���� �� ħ�� �����̰� ���)
==============================================================================================================

������������������� 2020.04.11(��) �۾� �������������������
---> 08:00 ~ 18:00 ==> 

- �ָ�[��]
05:00 ���
05:19 ����
05:30 �ǳ� ������ Ÿ��: ���� �濡��
06:00 ����
06:15 �����
06:22 �븲�� ������(6411�� ���� ������ ���̷� ��ħ)
06:28 �븲2�� �ֹμ��� ������ǥ��(21�� �Ѽ� ���� ��ǥ, 1�� ���Ҿ� ���ִ� ��μ�, ���Ǵ翡 ��ǥ)
		--> ����ũ ����, �ռҵ���, 1ȸ�� ��� �尩[�ڷγ�19 ����)
06:35 �븲�� ������(6411�� ���� ž��[1,200��])
07:30 ������ ������ ����
08:06 ���׾Ȱ�����(�ּ�: ���� ������ ������ 404) ���� ==> ���� 1��
08:30 2�� �Ȱ� �˻�
09:10 ����(���ֿ� ����) 
09:15 ���� ���� ������ �ü��� ���� ���� �κ� �ణ �ξ��ٰ� ��(���� �ֻ� ���� ������ �ƴ϶�� ��) ==> 2�� �� �ٽ� ����� ��
09:20 ����(1��) ==> �����: �� 49,900�� 
09:30 6411�� ���� ž��(���׾Ȱ����� ������)
10:40 ����4����ü��.��뱸�κ������� ������ ����
10:45 �����������ǿ�(����, ��뱸�κ��� ������, 3��) ����
10:30 ����(������ ����), ��ȭ������ �˻�: 5.2%(�ǻ���), ���� �˻� --> ����� 2�� 5õ�� ==> �˻� ��� 3�� �� �湮�ؼ� Ȯ��
		==> ��ΰ� �� �̴°� �ʹ� ������
11:20 ���� �౹ ==> �ν���(�뺸���ǵ���100����/mL) 6�� ����(�մ��� ���Ƽ� ���� ��ٸ�)
11:40 ����
12:10 �Ͱ�
12:20 �߽�
12:50 �ǳ� ������ Ÿ��
13:50 ���� 
14:00 ���ͳ� ����
15:00 ������ ������ ����(����Ʈ ��)
15:40 �����(������)
15:50 �븲�������� ==> ������ 2��[[CITYO] FPL ����Ʈ ���� ���� 36W ����(�� �� ������ 2�� ��α�ü)
		 ==> �������� ���̼ҿ��� �ʸ��� ������ ������ �� --> https://blog.naver.com/alkwer/221529110853
16:00 ���̼� �븲2ȣ�� ==> ���� �� å���� 2��(4�� å����, ��������)����
16:40 �Ͱ�
16:50 ���� �� å�� �����(���� å��, ����, å����, ���ĵ�)
17:40 �����(������)
18:10 ���߲� ��������  ==> ���� ����ũ(����: 10,900��) ���� 
18:20 �Ͱ�
18:30 ���� 
19:00 �ǳ� ������ Ÿ��(1�ð�) 
20:00 ���� 
20:10 ���ͳ� ���� ==> �뵿�� ������ ���� �ڷ� �ۼ� �� ��ĵ
21:40 TV ��û ==> KBS1 Ư�Ŀ� ���� ����� ���� ��û
22:30 ��ħ
==============================================================================================================
 
- �뵿�� ������ ���� �ڷ� �ۼ� �� ��ĵ
01. �л� ���� ȯ�� �ڷ�
02. ���� ���� Ȱ�� ���Ǽ�
03. �����ںδ��� ���� ��� ��û ��� ���� �ȳ�
==> �뵿�� 1�г� 1�� ������ �����Կ��� īī�������� ����(1�г� 1�� ���� 13��)
----------------------------------------------------------------------------------------------------------------------------

- ���� ����(�뵿��)
1. ���� ����: �������࿹Ź��, ���¹�ȣ: 356-1274-9556-83, ������: ���¸� 
==> 10���� �۱��� ��(�ĺ� �߰���, ���к� ������ ���)   
----------------------------------------------------------------------------------------------------------------------------

- ������(����, ����) 
1. ������: JIN SOOJONG 
2. ����: ��(��Ǯ, ����), ��(���ﴫ), ��(����): ������
3. �ֹι�ȣ: 130924-3067711
==============================================================================================================
 
������������������� 2020.04.12(��) �۾� �������������������
---> 08:00 ~ 18:00 ==>

- �ָ�2[��]
07:30 ���
08:05 ���� ==> ���� ������ ���� ���� �� ���ڷ������� ������ ����
08:30 �ǳ� ������ Ÿ��
09:30 ����
09:00 ���ͳ� ���� ==> ���� üũ(222U, ���ڸ԰� ���� ���� ��)
12:10 �߽� 
12:30 �ǳ� ������ Ÿ��
13:30 ���� 
14:00 ���ͳ� ���� 
17:00 ���� 
17:30 �ǳ� ������ Ÿ�� ==> [���] �ؽ� �庸��, 21�� ��û(�ڵ�������)
18:30 ����
18:30 ���ͳ� ����
19:20 ����� ==> ���� ������ ���� ���� �� ������ ��(1�� ��), �索 �Ҹ� ���(���۶���-ST, �� 3cc �ֻ��) 3��Ʈ ������ ��
19:40 �¼��� 2�� �ⱸ ���� ==> (��)�̳� ��Ƽ�꿡�� ���� �� ��� Ž(�� 4��), �赵�� �븮(���� ���� 239ȣ) ���� ��� Ž
20:00 ���� ���
21:06 ���� ���� �ֺ� ����
21:10 �Ͱ�
23:00 ��ħ
==============================================================================================================

- �Ƶ��������� �������� �����û
1. ����Ʈī�� ���� �ּ�: ����Ư���� �������� ����õ�� 391, 101�� 1806ȣ (�븲��, �븲������ĭŸ��������Ʈ)
2. ���޾�: 40���� ��� = 40���� X �ο��� 1��
�� ���� ���� : 129�ݼ���, ����Ư���� �������� �븲��2�� �ֹμ��� (02-2670-1404) , ������ ���� ����(02-6323-0700)
==============================================================================================================

- [����2] �ڰ��� ��� ġ���� ���ΰ�?
1. https://www.youtube.com/watch?v=CZRu42s89IE
2. ���� ��ġ(����), , ��б�(����, �պ��� ����), ����ġ��
==============================================================================================================

������������������� 2020.04.13(��) �۾� �������������������
---> 07:00 ~ 21:00 ==> 
 
- ������ö ����ȭ�й��� MAP ���� Prj[��] 
- resources ��� ����
1. /innoactiveapi.js ���Ͽ���
// ���ҽ� �ҷ��� ���� �ּ� 
const server = { 
	protocol: 'http', 
	ip: location.hostname,     // ip ����[������: 2020.04.13, by ���¸�] 
	port: '8080',
	app: 'HSCM',    // app ����[������: 2020.04.13, by ���¸�] ve',    // map Path ����[������: 2020.04.13, by ���¸�]
}
==============================================================================================================
 
- ���ǵ���(/admin2020noxMat::noxBlindFloorPlanP.xfdl) ȭ�� ����
1. ���� �̹��� ��� ���̺� ���� ==> �Ϸ� @@@
 1) TB_HCM_ATTACH_FILE_02 --> TB_HCM_IMAGE�� ���� /* �ü� �ڷ� �̹��� ���� TB */  
 2) ���� �̹��� �ڵ�(BP: ���ǵ���, EE: �����Ƿ�, MI: ��������, DP: �󼼵���, OW: ���� �۾���Ȳ) 
==============================================================================================================
  
- �Ｚ ��Ʈ�� ��ȣ(��й�ȣ) ����
1. DN119100022, as*s12**!  --> sd*d12**!
==============================================================================================================
 
������������������� 2020.04.14(ȭ) �۾� �������������������
---> 07:00 ~ 18:10 ==> ���ع��� Pr ���� �� ȸ��(09:30 ~ 12��, �� ����, ��å �δ�ǥ, ������ ����, ��Ȳ ����, ������ å��, ����� PM)
							--> ��å �δ�ǥ, ��Ȳ ���� ȸ�� ���� �� ��ü �����Ϸ� ���, 17��(�蹮�� ���, ������ ���� ���)
							, 21:26 �ν��� �� ��ü(246U, 19U ����)
							 
- ������ö ����ȭ�й��� MAP ���� Prj[��] 
- 3D �ҽ� ���� ����
1. STS_CD_09 ��ġ ����
var objDoc = this.wb_NoxMat.getProperty("document");  // WebBrowser document
var objDom = objDoc.getProperty("all");
// objDom.getProperty("STS_CD_09").setProperty("value", "16"); // �����ڵ�_07(16: ���鿡 �������� ���� ��û)
objDom.getProperty("ID_FK_PARENT_09").setProperty("value", sID_CFPK_PARENT); // ������ �θ� �ü��ڵ�
objDom.getProperty("STS_CD_09").setProperty("value", "16"); // �����ڵ�_07(16: ���鿡 �������� ���� ��û)
==============================================================================================================
 
- �۾���Ȳ ���� �˾�(/noxOutWorkStatP.xfdl) ���� 
1. Grid���� ���� �߰�
<Cell edittype="normal" textAlign="center" text="expr:currow + 1"/>  <!--// ����(����) //-->
-----------------------------------------------------------------------------------------------------------------------------
 
- /TA11101Mapper.xml ���Ͽ���
<select id="searchOutWorkStat" parameterType="java.util.Map" resultType="Map"> 
	/* �۾���Ȳ ���� ���� ��ȸ  ==> [/TA11101Mapper.xml] [searchOutWorkStat()] [2020.02.24, by ���¸�] */    
	SELECT  0 AS MMO /* ���� */
				, A.WORK_GUBUN   /* ���� */
				, A.CONST_CORP_NAME /* �����ü�� */
				, A.AREA     /* �۾���ġ(��������) */
				, A.CONST_NAME    /* �����(�۾���) */
				, A.CORP_SAFE_EMPNM /* �����ü����å����(����) */
				, A.CORP_WORK_NO     /* �����ü�۾��ο�(�۾��ο�) */
				, (A.CONST_ETIME - A.CONST_STIME) AS WORK_TIME   /* �۾� �ð�(�۾�����ð� - �۾����۽ð�) */
				, #{FCT_FACIL_GB} AS FCT_FACIL_GB_TEST     /* ����, ���� ���� ���� */
				, #{ID_FACILITY} AS ID_FACILITY_TEST     /* �ü��ڵ� */
				, #{ID_PARENT_FACILITY} AS ID_PARENT_FACILITY_TEST_02     /* �θ� �ü��ڵ� */
				,  (CASE WHEN A.CONTRACT_COM_PHONE IS NOT NULL THEN  
				SUBSTR(A.CONTRACT_COM_PHONE, 0, 3) || '-'||  SUBSTR(A.CONTRACT_COM_PHONE, 4, 4)  || '-'||  SUBSTR(A.CONTRACT_COM_PHONE, 8, 4) 
				ELSE '' END) AS PHONE_NO 
	FROM SMT_CONST A  /* �����۾��㰡_���� TB */
	WHERE 1 = 1
	<if test="FCT_FACIL_GB != '' and FCT_FACIL_GB != null and FCT_FACIL_GB == 1">
	<if test="ID_FACILITY != '' and ID_FACILITY != null">
	 AND A.ID_PARENT_FACILITY = #{ID_FACILITY}   /* �ü��ڵ�[ @@ ������ �� �θ� �ü��ڵ�(����_T) = �ü��ڵ�] */
	</if>
	</if>    
	<if test="FCT_FACIL_GB != '' and FCT_FACIL_GB != null and FCT_FACIL_GB == 2">    
	<if test="ID_PARENT_FACILITY != '' and ID_PARENT_FACILITY != null">
	 AND A.ID_FACILITY = #{ID_PARENT_FACILITY}   /* �θ� �ü��ڵ�[ @@ ������ �� �ü��ڵ�(����_T) = �θ� �ü��ڵ�] */
	</if>
	</if>
	AND ROWNUM  <![CDATA[ < ]]> 201  
</select>
==============================================================================================================
 
- ũ�� �������� �缳ġ
1. ChromeStandaloneSetup.exe(����: 81.0.4044.92) ��ġ
 1) ���� �߻�: ���� �ڵ�: STATUS_INVALID_IMAGE_HASH
  2) ��ġ: ũ�� ������: ���콺 �� Ŭ�� ==> �Ӽ�(R): Ŭ�� ==> Chrome �Ӽ�(��â) 
    ��. �ٷΰ���(T): �� Ŭ�� ==> ���(T): "~~~~.exe"  --no-sandbox �߰� @ ---> ����(A): Ŭ�� ==> ���ȼ� ���� �߻�(����) @@@
��. ȣȯ��: �� Ŭ�� ==> ȣȯ�� ���� �ذ�� ����: Ŭ��  ==> ���� @@@
2. ChromeStandaloneSetup64.exe(����: 79.0.3945.130) ��ġ  ==> ���� �߻�
==============================================================================================================
 
- EBS �ʵ�� Ư��(������ ȸ�� ����) 
0. EBS ������ ȸ�� ����==> https://www.ebs.co.kr/main, tamario2/hp��*��160*1@  --> soo05008@
1. EBS �ʵ�� Ư��  ==> http://www.ebs.co.kr/schedule?channelCd=PLUS2&onor=PLUS2&date=20200324 
2. �ʵ�1�г� �б���Ȱ����(��Ȱ��) ==> http://primary.ebs.co.kr/course/view?courseId=10204681
 ==============================================================================================================
 
������������������� 2020.04.15(��) �۾� �������������������
---> 07:00 ~ 18:10 ==> 21�� ��ȸ�ǿ� ����(�ӽ� ������)
 
- ������ö ����ȭ�й��� MAP ���� Prj[��] 
- �θ� �ü��ڵ�(ID_FK_PARENT_02) �߰� ��û(3D_render����)
1. ���� ȭ������ �̵��� �� ==> �Ϸ� @@@
/***************************************************************************
* Even   : sendContent_92
* Desc  : 92. SCREEN_CLICK �̺�Ʈ[���� ȭ������ �̵�]
****************************************************************************/
function sendContent_92()
{
	//alert("[/WebBrowser3D_Admin.html] [sendContent_92()] ==> [TEST_01] [Send ��ư Ŭ�� �̺�Ʈ]" );
	 
	var sStr = "EVENT_NM=SCREEN_CLICK";    // �̺�Ʈ��: 02. SCREEN_CLICK: ȭ�� Ŭ���� ��ġ �� ���� ���� ��ȯ
	sStr = sStr +"&STS_CD_02="+ document.getElementById('STS_CD_02').value;    // 99. ����ڵ�
	sStr = sStr +"&ID_FACILITY="+ document.getElementById('ID_FACILITY').value;    // 01. �ü� �ڵ�
	sStr = sStr +"&ID_FK_PARENT_02="+ document.getElementById('ID_FK_PARENT_02').value;    // 02. �θ� �ü� �ڵ�  ==> �߰� @@@
	alert("[/WebBrowser3D_Admin.html] [sendContent_92()] ==> [TEST_51] [Send_92 ��ư Ŭ�� �̺�Ʈ(���� ȭ������ �̵�)] [str]"+ sStr );
	 
	window.NEXACROHTML.FireUserNotify(sStr); // nexacro������ ������ ���� ó��
}
==============================================================================================================
 
- LAYER LIST ����Ÿ �ޱ� ==> �Ϸ� @@@
/***************************************************************************
 * Even   : wb_NoxMat_onusernotify
 * Desc   : wb_NoxMat  ==> MainDiscAdmin�� �ε�� ������������ nexacro������ ������ ������ �� �߻��ϴ� �̺�Ʈ(02. 3D���� ����Ÿ �ޱ�)
 ****************************************************************************/ 
this.wb_NoxMat_onusernotify = function(obj:nexacro.MainDiscAdmin,e:nexacro.WebUserNotifyEventInfo)
{
	if(arrEvent[1] == "LAYER_LIST_CALL")   // �̺�Ʈ���� LAYER_LIST_CALL �̸�(16. ���� ���鿡 ����� ��� ���̾� ����Ʈ ��ȯ): 
	3D �ε� ���� �� �ڵ� ȣ������ ������ ����
	{    
		arrRST_CD = String(arrColList[1]).split("=");   // 99. ����ڵ� =�� ���� �ڸ���
		 
		if(arrRST_CD[1] == "15")   // 99. ����ڵ尡 �����̸�
		{   
			trace("[/MainDisc.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_16_2] [����Ÿ �ޱ�] [16. LAYER_LIST_CALL �̺�Ʈ �ޱ� 
			����( ==> ����Ʈ�� ������)............]" );
			 
			var sColList = String(arrColList[2]).split("=");   // ���̾� �� =�� ���� �ڸ���
			 
			if(sColList[0] == "LAYER_SEARCH_CNT")   // ��ȸ�� �̸�
			{ 
				var sLAYER_SEARCH_CNT = sColList[1];   // ���̾� ��				 
				var sLAYER_ID; // ���̾� ID
				var sLAYER_NM; // ���̾� �� 
				var nNum = 0; 
				var nRow = 0;
				var nLAYER_ID = 0;
				var nLAYER_NM = 0;
				this.ds_ListView.clearData();
				 
				for(var i=0; i < sLAYER_SEARCH_CNT; i++)
				{ 
					nLAYER_ID = nNum + 3; // ���̾� ID ����(3, 5, 7...��?)
					nLAYER_NM = nNum + 4;  // ���̾� �� ����(4, 6, 7...��?)
					sLAYER_ID = String(arrColList[nNum+3]).split("=");  // ���̾� ID =�� ���� �ڸ���   
					sLAYER_NM = String(arrColList[nNum+4]).split("="); // ���̾� �� =�� ���� �ڸ���    
					trace("[/MainDisc.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_31_1] [i_��°]"+ i +"[��ȸ��]"+ sLAYER_SEARCH_CNT 
					+"[���̾� ID ����]"+ nLAYER_ID 					+"[���̾� �� ����]"+ nLAYER_NM +"[nNum]"+ nNum +"[LAYER_ID[i+1]]"+ 
					sLAYER_ID[1] +"[sLAYER_NM[1]]"+ sLAYER_NM[1]  );
					 
					nRow = this.ds_ListView.addRow(); // Ds Row �߰�   
					this.ds_ListView.setColumn(nRow, "LAYER_ID",  sLAYER_ID[1]); // ���̾� ID
					this.ds_ListView.setColumn(nRow, "LAYER_NM", sLAYER_NM[1]); // ���̾� ��
					this.ds_ListView.setColumn(nRow, "LAYER_CHK_YN", "Y"); // ���̾� üũ ����
					nNum = nNum + 2;  
				} 	// end of for() 
				trace("[/MainDisc.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_41] [ds_ListView.CNT]"+ this.ds_ListView.getRowCount() 
				+"[ds_Search.ds_ListView()] \n"+ this.ds_ListView.saveXML() ); 
			} // end of if --> ��ȸ�� �̸� 
		}
	}   
};
==============================================================================================================
 
������������������� 2020.04.16(��) �۾� �������������������
---> 07:00 ~ 21:00 ==> 21�� ��ȸ�ǿ� ���� ���(����[����� ���ִ�] 180�� Ȯ��: �н�, ���մ� Ȳ���� ��ǥ ���� å������ ������)
 
- ������ö ����ȭ�й��� MAP ���� Prj[��] 
- ���� �����۾� ��Ȳ �˾�(/noxOutWorkStatDmiP.xfdl) ���� 
1. �Ϲ��۾�, �����۾� ��Ȳ ����(Grid �߰�) ==> �Ϸ� @@@
==============================================================================================================
 
 ������������������� 2020.04.17(��) �۾� �������������������
---> 07:00 ~ 00:00 ==> ��ٱ濡 �� ����(���), �뵿�� �������� ���������� ��ȭ(10:30, �����ֺ��� ����� �߽� �����Ѵ� ��)
								  
- ������ö ����ȭ�й��� MAP ���� Prj[��]
- �����Ƿ�(������) ȭ�� �м�
1. �����Ƿ�(������) ȭ��(/noxEmgEvaRoutP.xfdl)
==============================================================================================================
 
- �̹��� ���� ��� �׸��� ����(/CompExt_Sketch.xfdl) ȭ�� ����  
1.  Sketch ������Ʈ ���(�ڹٿ��� Canvas[ĵ����]�� ����)
 /***************************************************************************
 * Even   : btn_save_onclick
 * Desc   : save ��ư Ŭ�� �̺�Ʈ
 ****************************************************************************/
this.btn_save_onclick = function(obj:nexacro.Button,e:nexacro.ClickEventInfo)
{ 
	trace("[/CompExt_Sketch.xfdl] [btn_save_onclick()] ==> [TEST_01]" );
	
	var result = this.skc_sign.saveSketch();		// Sketch�� ǥ�õǴ� �̹����� Base64�� ���ڵ� �� �����ͷ� value �Ӽ��� ���� 
	var skcValue = this.skc_sign.value; 
	this.skc_view.loadSketch(skcValue);
	this.ImageViewer00.set_image(skcValue);
 
	var result2 = this.skc_sign.saveSketchToFile( "img_sign_91.png", "png", 100 );  		// Sketch�� ǥ�õǴ� �̹����� ���Ϸ� ���� 
	==> ������ ������ ����(��� ���� �ȵ�), nexacro Browser������ ��� ���� ==> ����ó���� �Ǵ� �ܺ� ����� �����ؾ� ��
	trace("[/CompExt_Sketch.xfdl] [btn_save_onclick()] ==> [TEST_91] [result2]"+ result2 ); 
};
==============================================================================================================
 
- ���� ���� ���� ==> �Ϸ� @@@
1. ���� ���信�� �������� ������ å���� ���̵� ���� ==> context�� /HSCM�� ����
==> 1���� ������ ������ 2���� ��Ĺ(����Prj, ���蹰Prj)�� ����: context�� �� �����ؾ� ��
- ������ö ����ȭ�й��� MAP ���� �ý��� ������
1. ����ȭ�й��� MAP ���� �ý���(����) ���� IP: 101.1.43.39 ==> ������: safetymap.hyundai-steel.com
2. ����ȭ�й��� MAP ���� �ý���AP1(�) ���� IP: 101.1.43.39 ==> ������: safetymapdev.hyundai-steel.com
==> � ������ ���� ������ �ڹ��� PM�� �Ǽ��� ��û �� �ؼ� ������ �����Ͽ� �����ϱ�� ��
==> ����ȭ�й��� MAP ���� �ý��� ���� ���� --> http://safetymapdev.hyundai-steel.com
==============================================================================================================

- ROOT ��� ����
2. /ROOT.xml ���Ͽ���(/u01/infra/apache-tomcat-8.5.43_map/conf/Catalina/localhost)
<?xml version='1.0' encoding='utf-8'?>
<Context path="/"
         docBase="/u01/app/HSCM"
         reloadable="true">
</Context>
==============================================================================================================
 
- HSCM ���� ���� URL
- �ǽð� �α� Ȯ��
> tail -f  /u01/infra/apache-tomcat-8.5.43_map/logs/catalina.out

- ��Ĺ ���� ����, ����  @@@
> cd /u01/infra/apache-tomcat-8.5.43_map/bin/
> sh startup.sh
> sh /u01/infra/apache-tomcat-8.5.43_map/bin/shutdown.sh
> sh /u01/infra/apache-tomcat-8.5.43_map/bin/startup.sh
==============================================================================================================

- port ����
1. null 
http://safetymapdev.hyundai-steel.com/HSCM/_resource_/_theme_/HSCM/innor3ds/innoactive/IDLAYOUT.InnoR3D
2. /innoactiveapi.js ���Ͽ���
// ���ҽ� �ҷ��� ���� �ּ�
const server = {
	protocol: 'http',
	// ip: 'localhost',
	ip: location.hostname,		// ip ����[������: 2020.04.13, by ���¸�] 
	port: '8080', 		// ip ����(�����̸�)[������: 2020.04.17, by ���¸�] 
	// port: '', 		// ip ����(������ �ƴϸ�: port ���� ��)[������: 2020.04.17, by ���¸�]  
	app: 'HSCM',			// app ����[������: 2020.04.13, by ���¸�] 
 
	iconPath: '_resource_/_theme_/HSCM/img',		// iconPath ����[������: 2020.04.13, by ���¸�] 
	// mapPath: 'resources/innor3ds/innoactive',
	// mapPath: '_resource_/_theme_/NoxMatRetMot/innor3ds',	 	// �ּ� ó�� // TEST @@@ ===>
	mapPath: '_resource_/_theme_/HSCM/innor3ds/innoactive',   	// map Path ����[������: 2020.04.13, by ���¸�]  
}
==============================================================================================================

- �ý��� ������� ó��(�蹮�� ��� ��û: 19��)
1. ��������  ==> ���� ����(���� �������� �׽�Ʈ�ϰ� �̻� ������ �ٽ� ��û �ٶ�)
7. Ʈ���� ==> ���� �Ϸ� @@@
8.	�������� ���� ==> ���� �Ϸ� @@@
9.	�������� ����(���� ��� �ٸ�) ==> ���� �Ϸ� @@@
10. ����������� ==> ���� �Ϸ� @@@ 
==============================================================================================================

- �ݿ��� ��Ȳ
18:30 �蹮�� ����� �ý��� �������.xlsx ���� �ָ鼭 �� �س��� ����϶�� �� ==> ���޾Ƽ� ¥����
        --> �ڱ� �Ѹ� ������ �� ������ ���ٰ� �ؼ� �Ȱ��� ���� �Ļ絵 ���ڷ� ����
19:10 (��)�̳� ��Ƽ�� ��å �δ�ǥ���� ��ȭ ==> �� ���� �̾߱⵵ ���� ���� ���� �ָ鼭 ��� �� �ϰ� �ϳİ� ����
		, ������ ������ ���� ���忡�� ���� �ִٰ� ��[��ȭ�� �ȵǼ� ����
19:40 ���¹� �̻翡�� ��ȭ ==> ��Ȳ ��� ������ �����ֿ� (��)�̳� ��Ƽ�꿡 Ŭ���� �Ǵٰ� ��
		, ����� ö�� ������ �̾߱� ��(������ö���� ����� ö�� ���ϰ� �ϰ� �ִٰ� ��: �����ֿ� �ڹ���PM�� �����Ѵٰ� ��)
12:00 ��� ==> �蹮�� ����� ���� ���� �� �س��� ����ϳİ� �ؼ� ���޾Ƽ� ¥���� 
12:50 ���ҷ� �Ͱ� ==> ���¹� �̻翡�� ī������ ���� ��Ȳ ���� ����		
==============================================================================================================

������������������� 2020.04.18(��) �۾� �������������������
---> 09:00 ~ 21:00 ==> �ָ� �ٹ�, ����Prj ������ ���(10�� ~ 15��), ��Ȳ, �蹮���� ���(20�ÿ� ������)
								  , [��� ��û] �ؽ� �庸��, 22��, 23�� ��û(���ҿ��� ��Ʈ������)  
								 
- ������ö ����ȭ�й��� MAP ���� Prj[��] 
- �ý��� ������� ó��(�蹮�� ��� ��û)
1. �󼼵���(�̹��� ũ�� ����: ���� ����)  ==> 
4.	����/����ȭ�� ȭ����ȯ: �ü��� DB ��ȸ �� �߰�(/MainDisc.xfdl, MainDiscAdmin.xfdl ���� ����) ==> ���� �Ϸ� @@@
12. �ʰ�������(/MainDiscAdmin.xfdl ���� ����) ==> ���� �Ϸ� 
3. ������Ƽ Ű��	URL ���� ==> http://gqms.hyundai-steel.com/SheReceiveXp2.jsp?user_id=1234567 ==> ���� �Ϸ� 
var sUrl = "http://gqms.hyundai-steel.com/SheReceiveXp2.jsp?user_id="+ nexacro.getApplication().gv_global1;	// ������Ƽ Ű�� URL ����
trace("[/MainDiscAdmin.xfdl] [btn_FctSafeData_onclick()] ==> [TEST_02] [sUrl]"+ sUrl );  
system.execBrowser(sUrl);		// ���޵� URL �� ���������� ����
==============================================================================================================

- 00. ���� �ҽ� ���� �ݿ� ��û ��� �ۼ�
1. ��Ȳ ���忡�� ���Ϸ� ����
==============================================================================================================

- ���� �ҽ� ���� �ݿ� �Ϸ�
1. 2020.04.18_�Ϸ�(1613)
2. ���� �ҽ� ���� �ݿ��ϴ� �� 3D_render�� Display �ȵǾ ��Ȳ ���忡�� ȭ��(2port �����϶�� 2�� ���� ������ ó�� ����)
const server = { 
	protocol: 'http', 
	ip: location.hostname,		// ip ����[������: 2020.04.18, by ���¸�]  
}  
if(server.ip == 'localhost') server.ip =" localhost:8080";		// HOST���� localhost�̸� 8080����[������: 2020.04.18, by ���¸�]
==============================================================================================================

������������������� 2020.04.19(��) �۾� �������������������
---> 09:00 ~ 18:10 ==> 15�� ���� �� ���� ��(��ٽ� ���), ����Prj ���� ���(10�� ~ 16��), 
								 , [��� ��û] �ؽ� �庸��, 24��, 25�� ��û(���ҿ��� ��Ʈ������)  

- ������ö ����ȭ�й��� MAP ���� Prj[��] 
- �ý��� ������� ó��(�蹮�� ��� ��û)
1. �󼼵���(�̹��� ũ�� ����: ���� ����) ==> �Ϸ� @@@
 1) ���� ��ü ȭ�� �˾�(/noxFullImageP.xfdl) ���� ����
 2) ���ǵ��� ȭ�� �˾�(����)(/noxBlindFloorPlanP.xfdl) ���� ����
<ImageViewer id="ImageViewer" taborder="4" left="306" top="35" right="11" bottom="58" cssclass="img_WF_PopView" 
	onclick="ImageViewer_onclick" cursor="pointer" tooltiptext="���� ��ü ȭ�� �˾�" stretch="fixaspectratio"/>
==============================================================================================================

- ���� �ҽ� ���� �ݿ� �Ϸ�
1. Z:\4.����\99. Nexacro\00. ���� �ҽ� ���� �ݿ� ��û\2020.04.18_[�Ϸ�_04.19_09.14]
==============================================================================================================

������������������� 2020.04.20(��) �۾� �������������������
---> 07:00 ~ 21:00 ==> 06:09 �ν��� �� ��ü(268U, 22U ����), ���� �¶��� ����(�뵿�� 1�г�). TG �̾��� ����(������ ����� ���� �鸲)
								   , ���� ���� ���� ����Ϸ� ����(������ å�� �ڽ� ���), ������ ���� ���� ����ؼ� 13�ÿ� ���
										   
- ������ö ����ȭ�й��� MAP ���� Prj[��]
- � ���� ���� ==> �Ϸ� @@@
1. DB ���̺� ���� ==> �Ϸ� @@@
2. /u01/app HSCM ���� ���� ==> ������ å���� ���� ���� �ο�
3. ������ ���� ���� ����
[itteam@hspngqdap1 /u01/app/HSCM/HSCM/_resource_/_theme_/HSCM]$ chmod -R 777 images			
-- images�� ���� ����, ���Ͽ� ��� ���� �ο� @@@@
==============================================================================================================
 
- � ���� ���� ==>  
1. ���� ���信�� �������� ������ å���� ���̵� ���� ==> context�� /HSCM�� ����
==> 1���� ������ ������ 2���� ��Ĺ(����Prj, ���蹰Prj)�� ����: context�� �� �����ؾ� ��
- ������ö ����ȭ�й��� MAP ���� �ý��� ������
1. ����ȭ�й��� MAP ���� �ý���(����) ���� IP: 101.1.43.39 ==> ������: safetymap.hyundai-steel.com
2. ����ȭ�й��� MAP ���� �ý���AP1(�) ���� IP: 101.1.43.39 ==> ������: safetymapdev.hyundai-steel.com
==> ����ȭ�й��� MAP ���� �ý��� � ���� --> http://safetymap.hyundai-steel.com
==============================================================================================================

- �۾���Ȳ ���� ���� ��ȸ ���� ==> �Ϸ� @@@
<select id="searchOutWorkStat" parameterType="java.util.Map" resultType="Map"> 
/* �۾���Ȳ ���� ���� ��ȸ  ==> [/TA11101Mapper.xml] [searchOutWorkStat()] [2020.02.24, by ���¸�] */    
SELECT   A.AREA2_MAP_NM AS WORK_SPOT		/* �۾���ġ */
			, A.WORK_GUBUN  			/* ���� */
			, A.CONST_CORP_NAME	/* �����ü�� */
			, A.AREA    						/* �۾���ġ(��������) */
			, A.CONST_NAME   			/* �����(�۾���) */
			, A.CORP_SAFE_EMPNM	/* �����ü����å����(����) */
			, A.CORP_WORK_NO    		/* �����ü�۾��ο�(�۾��ο�) */
			, (A.CONST_ETIME - A.CONST_STIME) AS WORK_TIME  		/* �۾� �ð�(�۾�����ð� - �۾����۽ð�) */
			, A.CONST_SDATE, A.CONST_EDATE		/* �۾�������, �۾������� */ 
			, (A.CONST_EDATE - A.CONST_SDATE) AS WORK_DAY  		/* �۾� �Ⱓ(��)(���������� - ���������) */ 
			, #{FCT_FACIL_GB} AS FCT_FACIL_GB_TEST    	/* ����, ���� ���� ���� */
			, #{ID_FACILITY} AS ID_FACILITY_TEST    	/* �ü��ڵ� */
			, #{ID_PARENT_FACILITY} AS ID_PARENT_FACILITY_TEST_02    	/* �θ� �ü��ڵ� */
			,  (CASE WHEN A.CONTRACT_COM_PHONE IS NOT NULL THEN  
								SUBSTR(A.CONTRACT_COM_PHONE, 0, 3) || '-'||  SUBSTR(A.CONTRACT_COM_PHONE, 4, 4)  || '-'||  
								SUBSTR(A.CONTRACT_COM_PHONE, 8, 4) 
						ELSE '' END) AS PHONE_NO 
			  , A.RMRK 	/* ��� */ 
FROM SMT_CONST A 	/* �����۾��㰡_���� TB */
WHERE 1 = 1
	AND A.CONST_EDATE >= TO_CHAR(SYSDATE,'YYYYMMDD')    		/* ������������ ���� ��¥�� ���� �ų� ū �� ��ȸ */ 
	<if test="FCT_FACIL_GB != '' and FCT_FACIL_GB != null and FCT_FACIL_GB == 1">
		<if test="ID_FACILITY != '' and ID_FACILITY != null">
			 AND A.ID_PARENT_FACILITY = #{ID_FACILITY}	 	/* �ü��ڵ�[ @@ ������ �� �θ� �ü��ڵ�(����_T) = �ü��ڵ�] */
			 AND A.AREA2_MAP_CD = #{ID_FACILITY}}		 		/* ���������ұ׷�MAP�� ==> ���� ���̵�(�ü��ڵ�, 2) */
		</if>
	</if>   	
	<if test="FCT_FACIL_GB != '' and FCT_FACIL_GB != null and FCT_FACIL_GB == 2">   	
		<if test="ID_PARENT_FACILITY != '' and ID_PARENT_FACILITY != null">
			 AND A.ID_FACILITY = #{ID_PARENT_FACILITY}	 	/* �θ� �ü��ڵ�[ @@ ������ �� �ü��ڵ�(����_T) = �θ� �ü��ڵ�] */
			 AND A.AREA2_MAP_NM = #{ID_PARENT_FACILITY}	/* ���������ұ׷�MAP�� ==> �θ� �ü��ڵ�(�ü��ڵ�, 4) */
		</if>
	</if> 
</select>
==============================================================================================================
  
- ���� ����(TB_HCM_FCT) ���̺� ���� ==> �Ϸ� @@@
1. ���� ����(TB_HCM_FCT) ���̺� ���� ó��
/* ���� ���� �˾� ��ȸ ==> [/COMFCTMapper.xml] [selectList()] [2020.02.19, by ���¸�] */ 
SELECT  A.ID_PK_FACILITY AS ID_FCT,  A.NM_FACILITY AS NM_FCT
			, A.*   
FROM TB_HCM_FACILITYBASE A		/* MAP �ü� ���� TB */
WHERE A.E_FACILITYTYPE = '2'  	/* �ü��� ����(2: AREA) */
<if test="NM_FCT  != '' and NM_FCT  != null">
	AND NM_FCT LIKE '%'|| #{NM_FCT } ||'%'			 /* ����� */ 
 </if>
ORDER BY A.NM_FACILITY 
==============================================================================================================
 
- ���� ���� ����==> �Ϸ� @@@
1. ���� �ü� �ڵ� �߰�
trace("[/MainDiscAdmin.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_51] [����Ÿ �ޱ�] [03. OBJ_INSERT_END: ���� ���, ����) 
�̺�Ʈ �ޱ� ����.@@@] [02. X��]"+ sN_X +"[03. Y��]"+ sN_Y +"[04. Z��]"+ sN_Z +"[�ٿ��ü��ڵ�]"+ sID_FK_ROOT +"[���� ����]"+ sFacilGubun );
 
if(arrEvent[1] == "OBJ_INSERT_END")	 	// �̺�Ʈ���� 03. OBJ_INSERT_END: �Է��� ������ ��ü�� ȭ�鿡 ���� �Ϸ���(���� ���, ���� ����)
{   
	if(sColList[0] == "ID_FACILITY_IMSI")	 	// ���� �ü� �ڵ� 
	{  
		var sID_FACILITY_IMSI = sColList[1];		// ���� �ü� �ڵ� 
	}  
}
==============================================================================================================

- ���� ���鿡 ����� ��� ���̾� ����Ʈ ��ȯ ���� ==> �Ϸ� @@@
if(arrEvent[1] == "MAP_LOAD_CALL")	 	// �̺�Ʈ���� MAP_LOAD_CALL �̸�(16. ���� ���鿡 ����� ��� ���̾� ����Ʈ ��ȯ): 
3D �ε� ���� �� �ڵ� ȣ������ ������ ���� 
{   
	if(sColList[0] == "ID_FACILITY_IMSI")	 	// ���� �ü� �ڵ� 
	{  
		var sID_FACILITY_IMSI = sColList[1];		// ���� �ü� �ڵ� 
	}  
}
==============================================================================================================

������������������� 2020.04.21(ȭ) �۾� �������������������
---> 07:00 ~ 21:00 ==> � ���� ����(15��)

- ������ö ����ȭ�й��� MAP ���� Prj[��]
- � ���� ���� �� ���� ==> �Ϸ� @@@ 
1. ����ȭ�й��� MAP ���� �ý���(����) ���� IP: 101.1.43.39 ==> ������: safetymap.hyundai-steel.com
==============================================================================================================

- �������� ���ε� ��� ����
- ���� �ٿ�ε�
1. ��������(/EqupInfo.xfdl) �������� �������� ���ε� ���(200313).xlsx
2. ������ �ɸ� ���� ���ε��� ��
 1) ����: nexacro (103756)> UD 8:32:30:629  [/Excel.js] [gfn_ImportOnerror()] ==> [TEST_01] [���� ���ε� ����] 
[e.statuscode]9901[e.errormsg]Could not create Grid Importer. [Unsupported excel format] 
/***************************************************************************
 * Even   : btn_excellExDdown_onclick
 * Desc   : ���� ��� ���� �ٿ� ��ư Ŭ�� �̺�Ʈ
 ****************************************************************************/
this.btn_excellExDdown_onclick = function(obj:nexacro.Button,e:nexacro.ClickEventInfo)
{
	trace("[/EqupInfo.xfdl] [btn_excellExDdown_onclick()] ==> [TEST_01]" );
	
	var  sFpath = "_theme_\HSCM\images\03_File";		// ���� ���  
	var  sRfnm = "EqupInfo_excelSample.xlsx";	// ���� ���� ��
	var  sFnm = "EqupInfo_excelSample.xlsx";		// ���� ��
	
	this.gfn_FileDirectDown(sFpath, sRfnm, sFnm, "this.fn_ComMFileCallback")		// ���� �ٿ�ε� ó��
};
==============================================================================================================

- �α��� ���� ����
1. �α��� ȭ��(//loginFrame.xfdl)���� ���� â ��
 1) ����:  java.sql.SQLRecoverableException: ���� ���� (IO ����: Connection reset)
SystemBase_HTML5.js:33 [/loginFrame.xfdl] [btn_Login_onclick()] ==> [TEST_01] [�α��� ��ư Ŭ��]  
SystemBase_HTML5.js:33 [/Transaction.js] [gfn_Transaction()] ==> [TEST_52] [strSvcId]loginAdmin959[strSvcUrl]COM/COMLOGIN/loginAdmin
[inData]ds_Login=ds_Login[outData]gds_UserInfo=ds_User[strArg][strServiceUrl]http://safetymap.hyundai-steel.com/COM/COMLOGIN/loginAdmin.do[isSession]true
SystemBase_HTML5.js:33 [/Transaction.js] [gfn_Callback()] ==> [TEST_41] [�ݹ� ó��] [objSvcID.svcId]loginAdmin[errorCode]-1[errorMsg]
### Error querying database.  Cause: java.sql.SQLRecoverableException: IO ����: Connection reset
### The error may exist in file [/u01/app/HSCM/WEB-INF/classes/egovframework/sqlmap/LMIS/mybatis/COM/COMLOGINMapper.xml]
### The error may involve egovframework.COM.dao.COMLOGINMapper.selectUserAdmin-Inline
### The error occurred while setting parameters
### SQL: /* ������ �α��� ���� ��ȸ ==> [/COMLOGINMapper.xml] [selectUserAdmin()] [2020.02.06, by ���¸�] */          SELECT          A.ID_PFK_EMPLOYEE        
AS USERID    /* �α��� */         , A.ID_PFK_EMPLOYEE        AS EMPID  /* ��� */       , A.NAME_K        AS EMPNM       /* ����� */         
, B.PASS_WORD  AS USERPW         , A.NAME_K        AS USERNM         , B.NAME_E        AS NAME_E         , B.COM_GP       AS COM_GP        
 , A.DEPT_CD AS DEPTCD             , A.DEPT_NM AS DEPTNM           ,'1' AS PASS_OK          , '0' AS ACL_GRP_CD  
 /* ���ѱ׷��ڵ�(1: ������, 0: ���) ���� */         , A.E_ACCOUNTTYPE  AS ACNT_TYPE  /* ���� ����(1:�Ѱ�, 2:�Ϲ�, 0:�����) */     
 FROM TB_HCM_ADMINACCOUNT A   /* ������ ���� TB */       ,  TB_GQ_CM_USERINFO B   /* ��������� TB */      
 WHERE 1=1     AND A.ID_PFK_EMPLOYEE = B.EMP_NO     AND A.ID_PFK_EMPLOYEE = ?    /* ��� */
### Cause: java.sql.SQLRecoverableException: IO ����: Connection reset

 2) ����: 11g JDBC ����̹��� ���ÿ��� connect string�� ��ȣȭ�ϱ� ���ؼ� /dev/random�� �̿��ؼ� 40byte�� ������ ������ ������ 
 connect string�� ��ȣȭ �Ѵٰ� �մϴ�. �׷��� /dev/random�� ������ ���� �ý��ۿ����� ���� ������ �ߴ�(block)�ȴٴ� �������� �߻��� 
 �̷��� �ְ� ev/random�� OS level���� ������ �ý����� �����ϸ� /dev/random�̿�� ���������� �������� �ʾƼ� /dev/random���κ��� 
 40byte�� ������ �������� JDBC�� connect string�� ��ȣȭ���� ���ϰ� ��ȣȭ�� ���� �ʾƼ� DB������ ���ϴ� ������ �߻�
 
 3) ��ġ: /u01/infra/apache-tomcat-8.5.43_map/bin/catalina.sh ���� ����
# 2020.04.21 JinTaeMan
export CATALINA_OPTS=" ${CATALINA_OPTS} -Djava.security.egd=file:/dev/./urandom"
 
 4) ��ġ2: /Transaction.js ���Ͽ��� his.gfn_Alert("E00003") �ڵ带 "���� ������.."�� ���� 
pForm.gfn_Callback = function(svcID, errorCode, errorMsg)
{
	var objSvcID = JSON.parse(svcID);
	
	// ���� ���� ó��
	if(errorCode != 0) {
		trace("[/Transaction.js] [gfn_Callback()] ==> [TEST_41] [�ݹ� ó��] [objSvcID.svcId]"+  objSvcID.svcId 
			+"[errorCode]"+ errorCode +"[errorMsg]"+ errorMsg );
		
		if(errorCode == -1) {
			if(this.gfn_IsNull(errorMsg, "", "", "gfn_SetSessionChk")) {
				// this.gfn_Alert("E00003"); 	// ���� ������ �߻��Ͽ����ϴ�.  ===> �ּ� ó�� @@@
				this.gfn_Alert("���� ������ �߻��Ͽ����ϴ�.\n�����ڿ��� �������ֽʽÿ�."); 	// ���� ������ �߻��Ͽ����ϴ�.  
			} else {
				this.gfn_Alert(errorMsg, "", "", "gfn_SetSessionChk");
			}	 
		}
	} 
};
==============================================================================================================
 
- ���� Prj HSKU ���� ���� ����(�ڹ��� PM)
1. SQL DB ������ ������(���� DB�� � DB ���� IP ���) ==> /dev/random ����
### Cause: java.sql.SQLRecoverableException: IO ����: Connection reset
==============================================================================================================
 
- eclipse ���� ���� 
1. ����:
4�� 21, 2020 11:25:07 ���� org.apache.catalina.core.StandardContext listenerStart
�ɰ�: Exception sending context initialized event to listener instance of class org.springframework.web.context.ContextLoaderListener
org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'startupScripts' defined in file 
[C:\HSCM\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp3\wtpwebapps\HSCM\WEB-INF\classes\egovframework\spring\context-initialize.xml]: 
Invocation of init method failed; nested exception is org.springframework.jdbc.datasource.init.UncategorizedScriptException: 
Failed to execute database script; nested exception is org.springframework.jdbc.CannotGetJdbcConnectionException: Could not get JDBC Connection; 
nested exception is org.apache.commons.dbcp.SQLNestedException: Cannot create PoolableConnectionFactory 
(IO ����: The Network Adapter could not establish the connection)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.initializeBean(AbstractAutowireCapableBeanFactory.java:1568)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.doCreateBean(AbstractAutowireCapableBeanFactory.java:540)
	at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.createBean(AbstractAutowireCapableBeanFactory.java:476)
2. ����: DB ������ ������(�ڹ��� PM ���δ� DB �����ڰ� Blocking  �ߴٰ� ��)
==============================================================================================================

- �ҽ� ���� �ݿ� �Ϸ�
1. Z:\4.����\99. Nexacro\00. ���� �ҽ� ���� �ݿ� ��û\2020.04.21_1353_[�Ϸ�_15.41]
==============================================================================================================

- DB Safer ��ġ
1. [������ö]DBSAFERAGENT_TDI_3.1.12.3_win8����.exe
==============================================================================================================

������������������� 2020.04.22(��) �۾� �������������������
---> 07:00 ~ 07:00 ==> ö��(07�� ���) ==> ���ҿ��� �ڰ� �ִµ� ������ ��ö ��ǥ�� �ͼ� ����(���� ������ �̻��� �ִٰ� ��)
									  
- ������ö ����ȭ�й��� MAP ���� Prj[��] 
- ������ ���� ó�� ==> �Ϸ� @@@
/***************************************************************************
 * Even   : fn_DeleteIconRst
 * Desc   :  ������ ���� ó��
 ****************************************************************************/ 
this.fn_DeleteIconRst = function(sID_CPK_ICON, sID_CFPK_PARENT)
{  
	var sArgs	= "ID_CPK_ICON="+ sID_CPK_ICON				/* 02. ������ �ڵ� */ 
				+" ID_CFPK_PARENT="+ sID_CFPK_PARENT;	/* 03. ������ �θ� �ü��ڵ� */   
	trace("[/MainDiscAdmin.xfdl] [fn_DeleteIconRst()] ==> [TEST_32] [Args]"+ sArgs );
	
	var sSvcID        = "DeleteIcon";
	var sController   = "TK/TK11004/DeleteIcon";		// ������ ���� ó��
	var sInDatasets   = "";
	var sOutDatasets  = "";
	var sArgument     = sArgs;			// �Ķ���ͷ� ������
	var sCallbackFunc = "fn_Callback";
	var bAsync        = true;

	this.gfn_Transaction(sSvcID, sController, sInDatasets, sOutDatasets, sArgument, sCallbackFunc, bAsync); 
};
==============================================================================================================

- �������� �׼� ��� ���� ==> �Ϸ� @@@
<!--// �׼� ��� ����(100 ��� ��û(ACTION_CANCEL)) //-->
<td>
	<input type='text' id='STS_CD_40' value=''>
</td>
 1. ��û�ÿ� STS_CD_40�� 100�� ���� �Է� �� �ֽø�, ���� �������� ��� ��Ұ� ����
 2. �� ����� ����� ICON_INSERT_CALL, ICON_DELETE_CALL, OBJ_INSERT_CALL���� �ش� �˴ϴ�. OBJ_MOVE�� ����� �ȵ�
==============================================================================================================
 
- [Oracle] getConnection ���� ����
1. �ڹ���PM���� ���Ϸ� ����, ���¹� �̻翡�� ��ȭ�� ���� ==> ���信������ �ذ��� ������� ��
==============================================================================================================

- securerandom.source ���� ��û
1. /usr/lib/jvm/java-1.8.0-openjdk-1.8.0.222.b10-1.el7_7.x86_64/jre/lib/security/java.security ���Ͽ���
# securerandom.source=file:/dev/random
# 2020.04.22 JinTaeMan 
securerandom.source=file:///dev/urandom
==> �������� ������ å�ӿ��� java.security  ���� ���� ���� ����
==============================================================================================================

- �ҽ� ���� �ݿ� �Ϸ�
1. Z:\4.����\99. Nexacro\00. ���� �ҽ� ���� �ݿ� ��û\2020.04.21_2148_[�Ϸ�_04.22_07.25]
==============================================================================================================

- eclipse ����(���ÿ���)
1. ����: ���� ����� �ϸ� ������
java.sql.SQLRecoverableException: ���Ͽ��� ���� �����Ͱ� �����ϴ�
	at oracle.jdbc.driver.T4CMAREngine.unmarshalUB1(T4CMAREngine.java:1157)
2. ����: DB Safer�� �������� ���� �������� ������
3. ��ġ: eclipse ���� ���� �����
==============================================================================================================

- [���� ��ö] ���蹰 Prj ö��(0��, �����)
1. 04.22(��) 9�� (��)�̳� ��Ƽ�� ��ö �δ�ǥ�� ������ ���� �湮 ==> ���� ���� ���� ����(���� �����϶�� ��)
2. 04.23(��) 5�� ���� ���� ���� �Ϸ� ==> ������ ������ ����ϰ� 4�ð� �ڰ� 9�ÿ� ����϶�� �ؼ� ������
3. 04.23(��) 7�� ���
4. 04.23(��) 8�� ��ħ
5. 04.23(��) 11�� 30�� ���ҿ� ��ö�� ��ö �δ�ǥ�� �ͼ� ����(��ö �δ�ǥ�� ������ �Ű� ��)
5. 04.23(��) 11�� 50�� ���(�蹮�� ����� �������� �ͼ� �¿���)
5. 04.23(��) 12�� 30�� �߽�(�蹮�� ���, ������ ����)
5. 04.23(��) 14�� ���(���� ��� ���� ���� ����ȭ ��Ŵ)
==============================================================================================================

������������������� 2020.04.23(��) �۾� �������������������
---> 12:40 ~ 18:00 ==> 11:50 �蹮�� ��� ��, 12:30 �߽�(���� ���� ����, ������ ����, �蹮�� ���)
								 , ���ǵ��� ȭ�� ���� ����(13��, ���߼��� ������ ��), ������ö ����ȭ�й��� MAP ���� Pr ���� ���� ����(16��)
								, ȸ��(18:30 ~ 20:40, �����[�Ƹ��� �Ĵ�, ���ִ���], ��ö �δ�ǥ, ������ ����, ��Ȳ ����, �蹮�� ���)

- ������ö ����ȭ�й��� MAP ���� Prj[��] 
- ���� ȭ�� ���� ����(/HSCM.xadl ���Ͽ���)
objApp.MainFrame.set_titletext(objApp.MainFrame.titletext +" - ����(��)");	 // Frame ����
objApp.MainFrame.set_titletext(objApp.MainFrame.titletext +"(����S)");  	 // Frame ����: HSCM - ���� ����, HSCM(����S) 
objApp.MainFrame.set_titletext(objApp.MainFrame.titletext +" - ���� ����");   // Frame ����
==============================================================================================================

- [Oracle] getConnection ���� ���� ��ġ
1. ������ å���� ���� ������ java.security ���� ���� �� tomcat ������ ��⵿ �Ϸ��ߴٰ� ���� ������
==> � �������� ó�� ��û ���� ����
==============================================================================================================

- ������ö ����ȭ�й��� MAP ���� Pr ���� ���� ����(16��)
1. � ������ ����(������ å��)�� ����Ÿ�� �����ϰ� �׽�Ʈ �� �ߴٰ� ��(�ٸ� ����, �߰� �䱸 ���� �� �����س�)
==> ���������� 4���� ö���Ѵٰ� ��
==============================================================================================================

������������������� 2020.04.24(��) �۾� �������������������
---> 07:00 ~ 14:20 ==> ������(14:20 ~ 16:20): (��)�̳� ��Ƽ�� ������ �� ��� Ž(�� 2��) --> 16:00 õ�տ� 2�� �ⱸ --> 16:20 �Ͱ�
									
- ������ö ����ȭ�й��� MAP ���� Prj[��]
- �߰� �䱸 ���� �۾� ==> �Ϸ� @@@
1. ��������(/admin2020noxMat::EqupInfo.xfdl) ȭ�� ����
 1) ��޹��� A~C �޺� �ڽ���  "[����]" ǥ�� ����
2. ü ȭ��(������) (/admin2020noxMat::MainDiscAdmin.xfdl) ȭ�� ����
 1) ����ȭ�鿡�� �۾���Ȳ (����) Grid���� UI�� �������� Ȯ�� ��ư�� ������� ���� 
 2) ����ȭ�鿡�� ����, ��� ��ư ��� �߰�
3. �۾���Ȳ(����) ���� �˾�(/admin2020noxMat::noxOutWorkStatDmiP.xfdl) ȭ�� ����
 1) ����� ȭ�鿡�� �̹��� ���, ���� ��ư ��� �߰�
==============================================================================================================

- ������
16:20 �Ͱ�
17:00 �����(������)
17:20 ���̼� �븲2ȣ�� ==> EARMAC �˹̴� �̾���(������ Ÿ��, ���, 5õ��), IRIVER ���� ������ �̾���(������, 5õ��) ����
17:20 ����Ʈ
17:30 �Ͱ�
18:00 ����
18:30 �ǳ� ������ Ÿ��(1�ð�)  ==> [���] �ؽ� �庸��, 26�� ��û(�ڵ�������)
19:30 ����
20:00 ���ͳ� ���� 
21:00 �����(������)
21:20 ���̼� �븲2ȣ�� ==> ����ƽ� ���� ������(R6) 8P, �Ϲ� ������(23*23mm) (20��): ���� �п�ǰ��
		, ���� ���� ������ 2P(19mm*10m) ����
21:30 �Ͱ�
21:30 ��ħ
==============================================================================================================

������������������� 2020.04.25(��) �۾� �������������������
---> 08:00 ~ 18:00 ==> 

- �ָ�[��]
07:30 ���
08:10 ����
08:30 �ǳ� ������ Ÿ��: ���� �濡��
09:30 ����
10:00 ���ͳ� ���� ==> ����� �ҽ��� ���� --> https://www.youtube.com/watch?v=MRXvIddWt2E
12:10 �߽� 
12:30 �ǳ� ������ Ÿ��
13:30 ����
13:30 �翺 ���
14:00 ���ͳ� ����
13:30 ���� �濡 �ִ� ������ �ǿ� e�н��� ��ġ ==> ������ ���� ���� ��û
15:00 �����(������, �����̵� ������ ������ ��)
15:10 ������ ������ ����(����� ����)
16:40 ����� ���� �տ��� ������ ���ο��� �������� �ȴ� ���ܸ� ���Ϸ��� ������Ÿ�� �Ѿ���(��������)
16:50 ���̼� �븲2ȣ�� ==> ���� ���� �� ����
17:20 �Ͱ�
17:40 �����(������)
17:50 ���߲� �������� ==> ���� ����ũ(����: 10,900��) ���� 
18:10 �Ͱ�
18:20 ���� 
19:00 �ǳ� ������ Ÿ��(1�ð�) 
20:00 ���� 
20:10 TV ��û ==> �����̶� ���� �ڳ�(��ȭ ��ȭ) ��û 
21:30 ��ħ
23:00 �翺 �Ͱ�(ģ�� ���� �ڰ� ��)
==============================================================================================================

- 01. e�н��� ȸ�� ����[2020.04.24(��)]
1. e�н��� ������ ȸ�� ���� ==> https://cls1.edunet.net, tamario2/hp��*��160*1@
==============================================================================================================

- ������ ���� �Ⱓ ����(i-pin)[2020.04.25(��)]
1. �߱ޱ��: �ѱ��ſ������� ==> https://www.siren24.com ==> tamario / hp��*16*1@ --> 2�� ��й�ȣ: hp��*16*1
2. ���� �Ⱓ: 2021�� 4�� 25��
========================================================================================================= 

- ��ȭ���غ��� ���� �뺸
1. ����� �ѾƸ� �ູ �÷��� ���պ���1404(�Ǽ� ����)
2. ���� �Ⱓ: 2014.0512 ~ 2071.05.12, ���Ա⳪: 20�ⳳ
3. �ڵ� ���� �Ⱓ: 2020�� 05��
4. �����
 1) ���� �� �����: 52,250��
 2) ���� �� �����: 66,179�� 
========================================================================================================= 

������������������� 2020.04.26(��) �۾� �������������������
---> 08:00 ~ 18:00 ==>

- �ָ�2[��]
07:30 ���
08:05 ����
08:30 �ǳ� ������ Ÿ�� ==> [���] �ؽ� �庸��, 30�� ��û(�ڵ�������)
09:30 ����
09:00 ���ͳ� ���� ==> [EBS ����] ���� �����ϴ� ��¥ ����--> https://www.youtube.com/watch?v=EA358CrHn9A
12:00 �赵�� �븮�� ��ȭ ==> ���̻����� ���� �İ� ���ϰڴٰ� ö�� ��û: ���̻簡 ����ؼ� ������ö �������忡�� ö�� �ߴٰ� ��.
12:10 �߽�
12:30 �ǳ� ������ Ÿ��
13:30 ����
13:50 �翺(����) ������� � ��
14:00 ���ͳ� ���� 
14:10 �翺 ģ���� ���� ����
15:10 ������ ����(�翺 �ƴ� ���) �湮 ==> �̻簡�� 1�� ���� �츮������ ���� ��Ȱ���ڰ� ��û��(��� ��)
17:00 ����
17:30 �ǳ� ������ Ÿ�� ==> [���] �ؽ� �庸��, 33�� ��û(�ڵ�������)
18:30 ����
18:30 ���ͳ� ����
19:20 �����
19:40 �¼��� 2�� �ⱸ ���� ==> (��)�̳� ��Ƽ�꿡�� ���� �� ��� Ž(������ ����� 3��)
20:00 ���� ���
21:06 ���� ���� �ֺ� ����
21:10 �Ͱ�
23:00 ��ħ
==============================================================================================================

������������������� 2020.04.27(��) �۾� �������������������
---> 07:00 ~ 21:00 ==> 06:12 �ν��� �� ��ü(267U, 22U ����), ���̻� �ߵ�Prj ���� ����(10:10), �赵�� �븮 ��� �湮(PDA ����)
								, �蹮�� ����� ���� ���� ���� ���ε� �˾�(/noxUploadFileMatP.xfdl) �ڱ� ������� �����ش޶�� �ϰ� �� �ٽ�
								���� �ش޶�� �ؼ� �� �޾Ƽ� �Ҹ�����, 20:10), ���� ���� ������ ����(21:30)
 
- ������ö ����ȭ�й��� MAP ���� Prj[��]
- ��ü ȭ��(������) (/MainDiscAdmin.xfdl) ȭ�� ����
1. ���ǵ���(/admin2020noxMat::noxBlindFloorPlanP.xfdl) ȭ�� ����
 1) �������� �˾� ���� ==> �Ϸ� @@@
/* ��������(for �ü��ڵ�) ��ȸ ==> [/TK11002Mapper.xml] [selectMatterInfo4Facill()] [2020.04.27, by ���¸�] */  
SELECT A.ID_FACILITY 
			, (SELECT RFNM		/* ���� ���ϸ� */ 
			  FROM TB_HCM_ATTACH_FILE 		/* ���� ÷�� ���� TB */ 
				WHERE 1=1 AND REQGB = F.MATTER_ID AND REQNO = '2' AND DEL_YN = 'N'  AND USE_YN = 'Y') AS FP_IMAGE_NM          
				/* ���� ���ϸ� */  
			, ('theme://images/01_IMG/' || F.MATTER_ID || '/' || 
			(SELECT RFNM		/* ���� ���ϸ� */ 
			  FROM TB_HCM_ATTACH_FILE 		/* ���� ÷�� ���� TB */ 
			WHERE 1=1 AND REQGB = F.MATTER_ID AND REQNO = '2' AND DEL_YN = 'N'  AND USE_YN = 'Y')
			) AS FP_IMAGE_PATH   /* ���� �̹��� ��� */ 
			, '1' AS REQ_GB_CD		/* �Ƿڱ����ڵ�(1: ���� ����, 2: ���� �̹��� ����) */  
FROM TB_HCM_EQUIPMENTBASE A 				/* ���� �⺻ ���� TB */
		, TB_HCM_FACILITYBASE B 						/* MAP �ü� ���� TB(���� ����) */
		, TB_HCM_EQUIPMENTTYPE C 					/* ���� ���� ���� TB */ 
		, TB_HCM_HCFACILITYINSPECTION D 		/* ���� �˻� ���� TB */
		, TB_HCM_EQUIPMENTHC E						/* ���� ��޹��� ���� TB */
		, TB_HCM_HAZARDCHEMICAL F 				/* ����ȭ�й��� ���� TB */ 
		, TB_HCM_LICENSE G								/* ���� ���㰡 ���� TB */ 
WHERE 1=1 
	AND A.ID_FCT = B.ID_PK_FACILITY
	AND A.STR_CPK_TYPE = C.STR_CPK_TYPE  
	AND A.ID_FACILITY = D.ID_FACILITY
	AND A.ID_FACILITY = E.ID_FACILITY(+)  
	AND E.MATTER_ID = F.MATTER_ID(+)
	AND A.ID_FACILITY = G.ID_FACILITY(+)
	AND A.DEL_YN = 'N'   		/* �������� */
	AND B.DEL_YN = 'N'   		/* �������� */
	AND C.DEL_YN = 'N'   		/* �������� */
	AND D.DEL_YN = 'N'   		/* �������� */
	AND E.DEL_YN(+) = 'N'   	/* �������� */
	AND F.DEL_YN(+) = 'N' 		/* �������� */
	AND G.DEL_YN(+) = 'N'		/* �������� */
	AND A.ID_FACILITY = #{ID_FACILITY} 		 /* �ü��ڵ� */  
;
==============================================================================================================
 
- OBJ_LOOK_CALL �̺�Ʈ ��� �߰�	==> �Ϸ� @@@
1. Ʈ���� Grid ���� Ŭ��, ȭ�� �̵�
if(arrEvent[1] == "SCREEN_CLICK" || arrEvent[1] == "OBJ_LOOK_CALL")	 	// �̺�Ʈ���� SCREEN_CLICK �̸�(02. SCREEN_CLICK: 
ȭ�� Ŭ���� ��ġ �� ���� ���� ��ȯ)(ȭ�� �̵�)
	// �̺�Ʈ���� OBJ_LOOK_CALL �̸�(04. OBJ_LOOK_CALL: �Է��� ��ü�� �ٶ󺸵��� ��û)(ȭ�� �̵�) ==> OBJ_LOOK_CALL 
	�̺�Ʈ �߰�[������: 2020.04.27, by ���¸�]
{ 
	trace("[/MainDisc.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_12] [arrRST_CD[0]]"+ arrRST_CD[0] +"[arrRST_CD[1]"+ arrRST_CD[1] );
}
==============================================================================================================
 
- [Oracle] getConnection ���� ���� ��� �߻�
1. ������ å���� �ָ��� ��ġ�� �ߴٴµ� ���� ������ ��� �߻���.
 [?2020-?04-?25 ���� 8:25] ������ å��/���������Ͼ� ö������ý�����: 
�ý��� �ʱ� ���� �� �������� ����� �����Ͽ� �ָ��� ������ ������ �����ؼ� ������ ���ҽ��ϴ�.
������ ����Ͻ� �Ŀ� ������ ����ϴ��� ���� ��Ź�帳�ϴ�. 
���� �����Ѱ� DNS ������ �����Դϴ�. 
2. �߰� ��ġ: (/context-datasource.xml ���Ͽ���)
<!--// oracle DB(02. ����ȭ�й��� MAP ���� Prj ���� DB) ���� �߰�[������: 2020.01.28, by ���¸�] //-->
<bean id="dataSourceSpied" class="org.apache.commons.dbcp.BasicDataSource" destroy-method="close"> 
	<property name="driverClassName"  value="oracle.jdbc.driver.OracleDriver" />
	<property name="url" value="jdbc:oracle:thin:@10.216.133.53:1521:MASDB" />
	<property name="username" value="USRSHD"/>
	<property name="password" value="shdusrdb"/>
	<!-- Ư�� �ð����� validationQuery�� ���� ���� ����  3600000 : 1�ð�--> 
	<property name="validationQuery" value="select 1 from dual"/> 
	<property name="testWhileIdle" value="true"/> 
	<property name="timeBetweenEvictionRunsMillis" value="1800000"/> 
	<!-- Ư�� �ð����� validationQuery�� ���� ���� �� -->
</bean> 
==============================================================================================================

- eclipse ����(���ÿ���)
1. ����:
�ɰ�: Exception sending context initialized event to listener instance of class org.springframework.web.context.ContextLoaderListener
org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'startupScripts' defined in file 
[C:\HSCM\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp3\wtpwebapps\HSCM\WEB-INF\classes\egovframework\spring\context-initialize.xml]: 
Invocation of init method failed; nested exception is org.springframework.jdbc.datasource.init.UncategorizedScriptException: 
Failed to execute database script; nested exception is org.springframework.jdbc.CannotGetJdbcConnectionException: Could not get JDBC Connection; 
nested exception is org.apache.commons.dbcp.SQLNestedException: Cannot create PoolableConnectionFactory (IO ����: The Network Adapter could not establish the connection)
 at org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.initializeBean(AbstractAutowireCapableBeanFactory.java:1568)
2. ����: DB Safer�� ������ �� �Ǿ��ų� �������� ���� �������� ������
3. ��ġ: eclipse ���� ���� �����
==============================================================================================================

������������������� 2020.04.28(ȭ) �۾� �������������������
---> 07:00 ~ 21:00 ==> ������ö �Ĵ� �ı� �ݳ�(15��, 40�� 216,000��(�� ��: 5,400��), ���� ����]), �߽�(12:30, ����, ���� �Ĵ�, �̳� ��Ƽ��
								��ǥ, �δ�ǥ, ��Ȳ ����, �蹮�� ���, ����� ����), (��)�̳� ��Ƽ�� �蹮�� ������� �ı� 2�� ����(���ϱ��� �ٹ� ����)
								, (��)�̳� ��Ƽ�� ��Ʈ�� �����ϰ� ö����(17��)

- ������ö ����ȭ�й��� MAP ���� Prj[��]
- ��ü ȭ��(������) (/MainDiscAdmin.xfdl) ȭ�� ����
1. UI�ϴܸ���Ʈ ���庰 ���� ==> �Ϸ� @@@ 
2. �϶�ǥ ���庰 ����
==> �׷��ڵ�(NOX1001: PSM, NOX1002: ����, NOX1003: ������, NOX1004: ���蹰)
==============================================================================================================

- ��ü ȭ��(������) (/MainDiscAdmin.xfdl) ȭ�� ����
1. �������� ����, ��� ó��(������/�������� �����ϰ� ����, ��� �ȵ�) ==> �Ϸ� @@@ 
==============================================================================================================

- ������ö ����ȭ�й��� MAP ���� Prj �μ��ΰ�(14:00 ~ 15:00)
1. (��) EHN Network ����� ������ �μ��ΰ� ����(UI�� �� ���� ������ �־� �δ㽺���� ��)
==============================================================================================================
 
�� safety map
    - ���� : 10.10.180.237:8081
    - � : 10.10.221.235:8081 
ping safetymap.hyundai-steel.com
==============================================================================================================

������������������� 2020.04.29(��) �۾� �������������������
---> 07:00 ~ 17:30 ==> 3, 4�� ������Ǽ� Ȯ��(���, 744,060�� û��), Prj ö��(17:40, ������ �ݳ�)
								, ������(17:40  ~ 21:00): (��)�̳� ��Ƽ�� ������ �� ��� Ž(��2��) --> 20:30 õ�տ� 2�� �ⱸ --> 20:50 �Ͱ�
 
- ������ö ����ȭ�й��� MAP ���� Prj[��]
- ��ü ȭ��(������) (/MainDiscAdmin.xfdl) ȭ�� ����
2. �϶�ǥ ���庰 ���� ==> �Ϸ� @@@ 
==> �׷��ڵ�(NOX1001: PSM, NOX1002: ����, NOX1003: ������, NOX1004: ���蹰)
/* ����ȭ�й��� �϶� ���� ��ȸ ==> [/TA11101Mapper.xml] [searchNoxMatIlam()] [2020.02.24, by ���¸�] */
 /* ����ȭ�й��� �϶� ���� ��ȸ(����ID�� ��ȸ) */
SELECT B.GROUP_CD
	, A.MATTER_ID	AS ����ID, A.MATTER_NM AS ������	
	--,COUNT(A.MATTER_ID) AS NOT_MAT_CNT  	/* ���� �׷쿡 �ְ� ��������(������ ȭ��)���� ��޹��� A, B, C�� ���� */
FROM TB_HCM_HAZARDCHEMICAL A /* ����ȭ�й��� ���� TB */
	, TB_HCM_HAZARDCHEMICAL_GROUP B
	, TB_HCM_HAZARDCHEMICAL_GROUPMAP C  /* ����ȭ�й��� �׷� ���� TB */ 
	, TB_HCM_EQUIPMENTBASE AA 				/* ���� �⺻ ���� TB @@@@ */
	, TB_HCM_FACILITYBASE BB 						/* MAP �ü� ���� TB(���� ����) */
	, TB_HCM_EQUIPMENTTYPE CC					/* ���� ���� ���� TB */ 
	, TB_HCM_HCFACILITYINSPECTION DD 		/* ���� �˻� ���� TB */
	, TB_HCM_EQUIPMENTHC EE						/* ���� ��޹��� ���� TB */
	, TB_HCM_LICENSE GG									/* ���� ���㰡 ���� TB */ 
WHERE 1 = 1
	AND A.MATTER_ID = C.MATTER_ID
	AND B.GROUP_CD = C.GROUP_CD 
	AND A.MATTER_ID = EE.MATTER_ID
	AND AA.ID_FCT = BB.ID_PK_FACILITY		/* ���� �⺻ ���� TB @@@@ */
	AND AA.STR_CPK_TYPE = CC.STR_CPK_TYPE  
	AND AA.ID_FACILITY = DD.ID_FACILITY
	AND AA.ID_FACILITY = EE.ID_FACILITY  
	AND AA.ID_FACILITY = GG.ID_FACILITY(+)
	AND A.USE_YN = 'Y'		/* ��뿩�� */  
	AND A.DEL_YN = 'N' 		/* �������� */
	AND B.DEL_YN = 'N' 		/* �������� */
	AND C.DEL_YN = 'N'		/* �������� */  
	AND AA.ID_FCT = 'H15'			/* 1. ������ ��: ���� �ڵ� = �ü��ڵ�] */   	/* �����ڵ�(H14: 1��������, H15: 2��������, H26: 1�ÿ�����) */
	AND B.GROUP_CD = 'NOX1001'	 	/* �׷��ڵ�(NOX1001: PSM, NOX1002: ����, NOX1003: ������, NOX1004: ���蹰) */
	-- GROUP BY B.GROUP_CD   	/* �׷��ڵ�(NOX1001: PSM, NOX1002: ����, NOX1003: ������, NOX1004: ���蹰) */
; 
==============================================================================================================

- �θ� �ü��ڵ�(ID_PARENT_FACILITY), �ü��ڵ�(ID_FACILITY) �ʵ� ������
/* �۾���Ȳ ���� ���� ��ȸ ==> [/TA11101Mapper.xml] [searchOutWorkStat()] [2020.02.24, by ���¸�] */    
SELECT  A.AREA2_MAP_NM AS WORK_SPOT		/* �۾���ġ */
			, A.ID_FACILITY, A.WORK_GUBUN  			/* ���� */ 
FROM SMT_CONST A 	/* �����۾��㰡_���� TB */
WHERE 1 = 1
	AND A.ID_PARENT_FACILITY = 'H01'	 /* 1. ������ �� �θ� �ü��ڵ�(����_T) = �ü��ڵ�] */  
	AND A.ID_FACILITY = 'H01  	/* 2. ������ �� �ü��ڵ�(����_T) = �θ� �ü��ڵ�] */
;
==============================================================================================================
 
- �ҽ� ���� �ݿ� �Ϸ�
1. ���� ������ �ݿ�(10:30)
2. � ������ �ݿ�(13:48)
==============================================================================================================

- � ���� 3D ���� ����(��ü ȭ��(������) (/MainDiscAdmin.xfdl) ȭ�鿡��
(anonymous) @ InnoIndex.jsp:964
drawer.js:271 Uncaught TypeError: Failed to execute 'drawImage' on 'CanvasRenderingContext2D': The provided value is not 
of type '(CSSImageValue or HTMLImageElement or SVGImageElement or HTMLVideoElement or HTMLCanvasElement 
or ImageBitmap or OffscreenCanvas)'
    at DesignFunction (drawer.js:271)
==============================================================================================================

- SSO ����
1. jsso ó��(/pom.xml ���Ͽ���)
<!-- nsso-agent-15.jar �߰�(SSO����) ==> 2020.04.27, by ���¸�  -->
<dependency>
  <groupId>jsso</groupId>
  <artifactId>nsso-agent-15</artifactId>
  <version>5.0.1-SNAPSHOT</version>
</dependency>

2. maven ==> UPDATE ó�� �� nsso-agent-15.jar ������ nsso-agent-15-5.0.1-SNAPSHOT.jar �� �� �Ʒ� ������ �ٿ��ֱ� ó��
C:\HSCM\workspace\HSCM\mavenRepository\jsso\nsso-agent-15\5.0.1-SNAPSHOT\nsso-agent-15-5.0.1-SNAPSHOT.jar

3. ���� �α��� �׽�Ʈ(C:\HSCM\workspace\HSCM\src\main\webapp\HSCM\sample.jsp ���Ͽ���)
try
{
	System.out.println("[/sample.jsp] ==> [TEST_03]" );
	
	AuthCheck auth = new AuthCheck(request, response);	// ������ü���� �� ����Ȯ��
	
	AuthStatus status = auth.checkLogon(); 		// ����Ȯ��
}	
==============================================================================================================
 
- [���� ��ö] ���蹰 Prj ö��(17:40, ����)
07:00 ���
10:30 ���� ���� �ݿ�
11:00 �ڹ��� PM ���(������ �ݳ�)
12:10 �߽�(�蹮�� ���)
13:48 � ���� �ݿ�
14:00 ��Ȳ ����(������ ���� �ִ� ���� �۾� ��� ������ ��)
14:10 eclipse���� SSO ȯ�� ����
16:00 (��)�̳� ��Ƽ�� �蹮�� ����� ����� ���� ������ 16�ñ��� ��ü --> ���� �ߴٰ� ��ȭ ��
17:30 eclipse���� SSO ȯ�� �����ϴ��� 17:30�п� ö��(�ڹ��� PM���� eclipse ȯ�� ���� ���� ���� ���شٰ� ����ϰ� ö�� ��) 
17:40 ���� ���: (��)�̳� ��Ƽ�� ������ �� ��� Ž(��2��) 
20:40 õ�տ� 2�� �ⱸ(�� ���� ����)
21:00 �Ͱ�
21:10 ����
21:40 �ǳ� ������ Ÿ��(1�ð�) ==> [��� ��û] �ؽ� �庸��, 35�� ��û
22:40 ����
23:30 ��ħ
==============================================================================================================
   
������������������� 2020.04.30(��) �۾� �������������������
---> 08:00 ~ 18:00 ==> ����ź����(������)

- ����ź����[��]
07:00 ���
08:05 ����
08:30 �ǳ� ������ Ÿ��: ���� �濡��
09:30 ����
10:00 ���ͳ� ���� ==>
12:10 �߽�
12:30 �ǳ� ������ Ÿ��
12:50 �翺, ���� �Ѱ��� � ��
13:30 ���� 
14:00 ���ͳ� ����
18:20 ���� 
19:00 �ǳ� ������ Ÿ��(1�ð�) 
20:00 ���� 
20:10 ���ͳ� ����
20:50 �翺, ���� �Ͱ�(�翺 ģ���� ���� ��) 
21:00 ������, ������ ���� �湮(�ڰ� ��)
22:00 ����� ���� ���
23:00 ��ħ(3�� �츮������ �ڰ� ��)
============================================================================================================== 

- VPN ���� ��� ���� ���� �м�
1. ����: https://hdsteel-bcpvpn.hyundai.com/my.policy ����....
��ġ �Ǵ� ���ҽ�(hdsteel-bcpvpn.hyundai.com)�� ��Ʈ "https"��(��) ���� ������ �����ϵ��� �������� �ʾҽ��ϴ�. �˻��� �˻��� 
��Ʈ��ũ �����ڿ��� �����Ͻʽÿ�. �Ϸ� 
hdsteel-bcpvpn.hyundai.com��(��) ������ �ź��߽��ϴ�.
2.����:
https://blog.naver.com/oyabung9464/221643549711
----------------------------------------------------------------------------------------------------------------------------

- VPN ���� ���
1. ���� PC(TAMA, DJCDN119100022) ����
 1) IP �ּ�: 10.216.139.55, 1521666, asas1212! ==> ����: MSTSC
2. �� PC �������� ���
 1) �� PC ��Ŭ���Ͽ� �Ӽ� Ŭ�� > ���ݼ��� Ŭ�� > �� ��ǻ�Ϳ� ���� ���� ���� ��� üũ �� ��� Ŭ���Ͽ� �ִ� �ð� ���
 (�ָ� ���� 72�ð� ==> 29�Ϸ� ����)
 2) Ÿ PC���� �������� �Ǵ��� Ȯ���Ұ�
 3) ��ٽ� PC ON ���� ���� 
3 ������ Ȯ��  
 1) https://hdsteel-bcpvpn.hyundai.com/my.policy 
============================================================================================================

- Microsoft(����ũ�μ���Ʈ) Ȩ������ �α��� ����
https://www.microsoft.com, tamario@naver.com/��*����16*1@
==============================================================================================================
����������������������������������������������������������
+----------------------------------------------------// End //----------------------------------------------------+
����������������������������������������������������������
 
