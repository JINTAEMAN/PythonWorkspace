

����������������������������������������������������������
+----------------------------------------------// Memo(2019.10) //----------------------------------------------+
����������������������������������������������������������


��������������� 2019.10.01(ȭ) �۾� �������������������
---> 07:00 ~ 21:00 ==> ���� ��������(14��, 6�� ȸ�ǽ�)

- ������ö ���� ���� ������� �ý��� ���� Prj[��]
- JSP ����Ͽ� URL�� �ٸ� ����Ʈ(Nexa --> XP) ��ũ
1. xplatform_IE_test ��� ==> Nexacro 17�� Launcher ������ �ȵǾ ��� ����
2. ���� ����Ʈ �ݼ��Ϳ��� index.jsp�� ����϶�� ���̵� ��
==> ���¹� �̻翡�� ��� ������ ��û ���� �߼�
==============================================================================================================

- ���� ����
1. Nexacro 17 SW ��ġ ==> nexacro17_SetupStudio.exe
2. Nexacro 17 ���� �ҽ� ����
==============================================================================================================

- GQMS Prj  ���� ����(Xplatform����)
1. ����: eclipse ����� �Ʒ��� ���� ���� �߻�, �α��� �ȵ�
Could not load the Tomcat server configuration at \Servers\01_GQMS_Tst Server[9001_IP]-config.
The configuration may be corrupt or incomplete.n
2. ����: eclipse���� Tomcat server configuration�� ������
3. ��ġ: Tomcat server ���� �� �ٽ� �߰�
==============================================================================================================

- Nexacro platform17 ��Ÿ�� ���� ���̵� �м� ==> ���� �߻�
1. exacro platform17 �� ���, Launcher�� ������ ���� �ʱ� ������ ���� ����� �ϴ� ����� �̿��Ͽ�
��Ÿ�� ������ �����Ͽ� ������ �����ϰ� �� �Ǿ� �ֽ��ϴ�.
÷�ε� ���Ͽ��� newLauncher.html �������� �ϴ� �κп� 125 Line �������� site ȯ�濡 �°� �����Ͽ� �ݿ��� ���ֽñ� �ٶ��ϴ�.
strEnginesetupkey �� ���, Tool ���� Build App �� �����Ͻ� �� ����� ���� engine Setup Key�� ������ �ֽñ� �ٶ��ϴ�.

2. �������� ����� �ٽ� ���
TPLSvc_Setup.exe: ���� �������� Engine ������ TPLSvc_Setup.exe ������ �ֽ��ϴ�.
�ش� ������ ��ġ�� ���ּž� ��������� ���������� �̷������ nexacro Engine ������ ��ġ�� �Ͻ� ���� �ֽ��ϴ�.

3. engine.exe �����
1) Nexacro17 UX-Studio ���� ����� Deploy -> Build App �� ���� �մϴ�.
(nexacro Studio �� 17.0.0.700 ���� �Դϴ�. )  ==> 17.0.0.2201 --> 17.0.0.1401
2) Build Target
   ��. Window x86: üũ
   ��. Window x64: üũ
   ��. Window XP: üũ
3) Window OS bit �Ǵ� ���� ����
   ��. Window Setup x86 Execute Module ==> C:\nexacro17\engine\nexacro17_SetupRuntime_x86.exe
   ��. Window Setup x64 Execute Module ==> C:\nexacro17\engine\nexacro17_SetupRuntime_x64.exe
   ��. Window Setup XP Execute Module ==> C:\nexacro17\engine\nexacro17_SetupRuntime_XP.exe  
4) ���� �Ϸ�ÿ� Engine ������ ��µǴ� Output Path ����
   ��. Setup Information
    ��) Output Path ==> C:\nexacro17\Desktop_App\
    ��) Program Name: GQMS_Tst
    ��) Install Location: nexacro\17\GQMS_Tst\
   ��. Project Information
    ��) Resource Path ==> C:\nexacro17\Desktop_App\
  ===> C:\GQMS_Tst\workspace\GQMS_Tst\src\main\webapp\deploy\GQMS_Tst\_windows_
    ��) Bootstrap URL Name: /start.json  
   ��. Window Setup x86
    ��) Setup Name ==> nexacro17_SetupRuntime_x86.exe
    ��) Engine Setup Key: DFC74642-2DFB-455B-879D-A097E4B97C9E
   ��. Window Setup x64
    ��) Setup Name ==> nexacro17_SetupRuntime_x64.exe
    ��) Engine Setup Key: DB2D4086-A192-4FCB-A24D-77A7373B02AA
   ��. Window Setup XP
    ��) Setup Name ==> nexacro17_SetupRuntime_XP.exe
    ��) Engine Setup Key: DFC74642-2DFB-455B-879D-A097E4B97C9E
  5) Optiopns
============================================================================================================

- �޴� ���� ==> ��з�(ta: ���� �м�) > ���� ��ȸ > ������ö��
����[����>���], �ο���[����>���], �ο���(����)[����>���], �ο���(����)[����>���], �Ұ�[����>���], �밭[����>���]
����[����>�����], �ο���[����>�����], �����[����>�����]
����[��ǰ], �ÿ�[��ǰ], ����[��ǰ], Ư����[��ǰ]
--------------------------------------------------------------------------------------------------------------

- ����(������Ʈ�����_����_V0.3_02)
�����:  ElectricOven: ElctricOven,���: ShaftFurnace(ShtFurn)
�Ұ�: sinter,�밭: valor
����: enthu,�ÿ�: cold hearted
����: Rear Plate,Ư����: Special Steel
ö��: iron
--------------------------------------------------------------------------------------------------

���躰: TstEach TSTEACH,����: Fct
��: CMPRCmpr,�׸�: ITEMItem  
��ǰ: MNFGMnfg,����: RawMatr
����GND_MINGndMin,����DTYDty
ǰ��: QLTYQlty
==============================================================================================================

- ��Ĺ localhost ����(/eclipse����) ==> 01_GQMS Server[8080]
1. GQMS ���� ����
1) Tomcat admin port: 8085
2) HTTP/1.1: 8080
3) AJP/1.3: 8089
----------------------------------------------------------------------------------------------------

2. GQMS_Tst ���� ����(������� Prj) ==> 01_GQMS_Tst Server[9001_IP]
1) Tomcat admin port: 6001
2) HTTP/1.1: 9001
3) AJP/1.3: 7001
4) Server name: 01_GQMS_Tst Server[9001]
5) Host name: localhost  ==> 10.216.143.133
----------------------------------------------------------------------------------------------------

3. LMIS ���� ����(�̷��ſ����� Prj)   ==> 02_LMIS Server[9002]
1) Tomcat admin port: 6002
2) HTTP/1.1: 9002
3) AJP/1.3: 7002
----------------------------------------------------------------------------------------------------

4. GQMS_New ���� ����(GQMS_New Prj)   ==> 04_GQMS_New[9004]
1) Tomcat admin port: 6004
2) HTTP/1.1: 9004
3) AJP/1.3: 7004
==============================================================================================================

��������������� 2019.10.02(��) �۾� �������������������
---> 07:00 ~ 22:00 ==> ��ǳ '��Ź'���� �������� ���, ����� �� ���߱� �븮 �� ��� Ÿ�� ��

- ������ö ���� ���� ������� �ý��� ���� Prj[��]
- ����[��ǰ](/taEnthuMnfg.xfdl) ����
1. �׸�����_20190919.xls ���Ͽ��� ����(����_�ÿ�_����)
==> C:\01. TAMA_DATA\02. TAMA Project\2019.09(������ö ���� ������� Prj)\01.�󼼼���\01.���̺��輭
1) ��������
2) ��������
3) ���н���
--> ���� ����: ������������ ��ȸ(/qtHrCoilDetailInfoInq.xfdl)
2. �������̽��� �ȵǾ ���� ����
==============================================================================================================

- �޴� ����
1. ��ü �޴� ����
==============================================================================================================

- 04. ���� �̿��� XP_Nexa ����(�������Ʈ �ݼ��Ϳ��� �ҽ� ��������)
1. WebBrowser�� �����ϸ� ������ ������(Display ����) gfn �Լ��� �� ������ �ͼ� ��ȸ�ϸ� ������ ��
2. /piClaimProgCurState.xfdl ���Ͽ���(Xplatform����)
function Button00_onclick(obj:Button,  e:ClickEventInfo)
{
	trace("[/piClaimProgCurState.xfdl] [Button00_onclick()] ==> [TEST_01] [��ư Ŭ�� �̺�Ʈ]" );  
	this.WebBrowser00.url = "http://10.216.143.133:9011/GQMS_Tst/quickview.html?screenid=ScreenDeskTop&formname=bz::bzPrgMgrM.xfdl&gv_global1=abc";
}
3. ���� ����:
bzPrgMgrM.xfdl.js:274 [/bzPrgMgrM.xfdl] [btn_Search_onclick()] ==> [TEST_01]
bzPrgMgrM.xfdl.js:285 [/Transaction.js] [gfn_Transaction()] ==> [TEST_01] [strSvcId]search[strSvcUrl]BZ/BZ10101/selectList[
inData]ds_Search=ds_Search[outData]ds_ListPgm=ds_ListPgm[strArg]
SystemBase_HTML5.js:33 0 : TypeError: Cannot read property 'fn_SessionReset' of undefined 
==============================================================================================================

- LG ����� ������ö ����� PC�� ����
1. LG �����(LG M2450D, 24��ġ TV ���)�� DVI(DVI-D Dual) ���̺� ���� ==> LG ����Ϳ��� �޴����� DVI ������ �ؾ� ��
2. ����ǿ��� �ƴ�Ÿ �ڽ� ������ �ͼ� ����� ��ħ��� ��� ==> ���� 24��ġ ����Ͱ� ȭ���� �о ����
==============================================================================================================

- ���� Grid TEST
1. ���� Grid TEST(/zzDynamicGridTest.xfdl)
==============================================================================================================

��������������� 2019.10.03(��) �۾� �������������������
---> 07:30 ~ 18:20 ==> ��õ��, 06:26 �ν��� �� ��ü(283U, 26U ����), �߽�(12:30, ������ �ѽ� ����(2�� õ��: û����): 3��(���߱� �븮, �ڼ�â��) 

- ������ö ���� ���� ������� �ý��� ���� Prj[��]
- KOLAS �����(/tkKolasTstlab.xfdl) ����
1. 01. tkKolasTstlab.jpg �̹���
==============================================================================================================

- KOLAS �����׸�(/tkKolasRcgnItem.xfdl) ����
1. 02. tkKolasRcgnItem.jpg �̹���
==============================================================================================================

- KOLAS ����԰�(/tkKolasTstSpec.xfdl) ����
1. 03. tkKolasTstSpec.jpg �̹����� �´��� Ȯ�� ==>
==============================================================================================================

- KOLAS ǥ��(/tkKolasStnd.xfdl) ����
1.  
==============================================================================================================

- KOLAS ����(/tkKolasOrgt.xfdl) ����
1. 05. tkKolasOrgt.jpg �̹���
==============================================================================================================

- KOLAS ������Ȳ(/tkKolasRcgnStat.xfdl) ���� ==> KOLAS ����
1. ������ ÷�� ==> �˾�?
==============================================================================================================

- KOLAS �ο���Ȳ(/tkKolasNmprStat.xfdl) ����
1. ���� ������ ���� ���� ����?(����: ������ ȭ��?)
==============================================================================================================

- KOLAS ǰ������(/tkKolasQltyDcmn.xfdl) ����
1. ǰ������ �� ���� ��� ÷��?, ����� ���� ������ �� ���� ���� ����?
2. KOLAS ��� ����
- KOLAS ��� ÷�� �� ������Ȳ ���?
==============================================================================================================

- KOLAS ������ȹ(/tkKolasRcgnPlan.xfdl) ����
1) KOLAS ���� ��Ȳ ���
- �ɻ� �� �ο� ����� ó�� �ñ�
- �������� �� Ư�̻���(������ ��)
2) KOLAS ���� ���� ���?
- ���� �ɻ� �������� ����
==============================================================================================================

- KOLAS ����ڿ��� ���� ����
1. STEEL GQMS �ý����� �����ϴ� ��?
==============================================================================================================

- ���� Grid TEST
1. ���� ����(���� Ds ==> ���� Ds)
2. ���� Grid TEST(/zzDynamicGridTest.xfdl)
this.Button01_onclick = function(obj:nexacro.Button,e:nexacro.ClickEventInfo)
{  
	trace("[/zzDynamicGridTEST.xfdl] [Button01_onclick()] ==> [TEST_02] [this.ds_list.getRowCount()]"+ this.ds_list.getRowCount() );

	for(var i=0; i < this.ds_list.getRowCount(); i++)
	{
		var a = this.grd_list.appendContentsCol(); // Į�� �߰�
		//trace("[/zzDynamicGridTEST.xfdl] [Button01_onclick()] ==> [TEST_51] [i_��°]"+ i +"[a]"+ a );
	}   // end of for()
	trace("[/zzDynamicGridTEST.xfdl] [Button01_onclick()] ==> [TEST_31] [ds_list.CNT]"+ this.ds_list.getRowCount()
	+"[ds_list.saveXML()] \n"+ this.ds_list.saveXML() );

	for(var i=0; i < this.ds_list.getRowCount(); i++) // �׸��� �߰��� col�� ����
	{  
		this.grd_list.setCellProperty("head", i+1,"text",  this.ds_list.getColumn(i, "GND_MIN") );// head(����)
		this.grd_list.setCellProperty("body", i+1, "text", this.ds_list.getColumn(i, "TEST_DATA"));// body(��ġ)
		
		var bSucc = this.grd_list.setCellProperty( "body",  i+1, "color", "red");// body(��ġ)
		var bSucc2 = this.grd_list.setCellProperty( "body",  i+1, "textAlign", "right");// body(��ġ) 
		trace("[/zzDynamicGridTEST.xfdl] [Button01_onclick()] ==> [TEST_72] [i_��°]"+ i +"[bSucc]"+ bSucc
		+"[ds_list.GND_MIN]"+ this.ds_list.getColumn(i, "GND_MIN") +"[ds_list.TEST_DATA]"+ this.ds_list.getColumn(i, "TEST_DATA") );
	}  // end of for()
};
----------------------------------------------------------------------------------------------------------

<Dataset id="ds_list">
	<ColumnInfo>
	  <Column id="GND_MIN" type="STRING" size="32" description="����"/>
	  <Column id="TEST_DT" type="STRING" size="32" description="�˻�����"/>  <!--// ==> ���� ��� ���� @@@ //-->
	  <Column id="TEST_DATA" type="STRING" size="32" description="����ġ"/>
	</ColumnInfo>
	<Rows>
	  <Row>
	<Col id="GND_MIN">Si</Col>
	<Col id="TEST_DT">20191002</Col>
	<Col id="TEST_DATA">1</Col>
	  </Row>
	  <Row>
	<Col id="GND_MIN">Si</Col>
	<Col id="TEST_DT">20191001</Col>
	<Col id="TEST_DATA">2</Col>
	  </Row>
	  <Row>
	<Col id="GND_MIN">Co2</Col>
	<Col id="TEST_DT">20190927</Col>
	<Col id="TEST_DATA">3</Col>
	  </Row>
	  <Row>
	<Col id="GND_MIN">Co2</Col>
	<Col id="TEST_DT">20190924</Col>
	<Col id="TEST_DATA">4</Col>
	  </Row>
	  <Row>
	<Col id="GND_MIN">Na</Col>
	<Col id="TEST_DT">20190920</Col>
	<Col id="TEST_DATA">5</Col>
	  </Row>
	  <Row>
	<Col id="GND_MIN">Na</Col>
	<Col id="TEST_DT">20190927</Col>
	<Col id="TEST_DATA">6</Col>
	  </Row>
	</Rows>
</Dataset>
==============================================================================================================

- �˾� ����
1. ���� ȸ������(/BE00301P5.xfdl) ���Ͽ���
/***************************************************************************
* Even   : fn_SearhCust
* Desc   : ���� ã��.
****************************************************************************/
this.fn_SearhCust  = function()
{
	var sPopId = "edtPop";
	var sPopUrl = "bb::BB01001P3.xfdl";
	var oArg = {
	argOutDs:this.ds_PopRtn   // Ds
	//, argText:this.edt_Code.value   // �Ķ����
};

var oOption = {title:"���� ��ȸ"};
var sPopupCallBack = "fn_PopCallback";

this.gfn_OpenPopup(sPopId, sPopUrl, oArg, sPopupCallBack, oOption);
}

2. ���� ȸ������(/BB01001P3.xfdl) ���Ͽ���
/***************************************************************************
* Even   : grd_ListRgt_oncelldblclick
* Desc   : ����Ŭ��.
****************************************************************************/
this.grd_ListRgt_oncelldblclick = function(obj:nexacro.Grid,e:nexacro.GridClickEventInfo)
{
	var aRow,
	nRow = this.ds_List.rowposition,
	oDs = this.getOwnerFrame().argOutDs,
	sSetVal, sGetVal, sSetCol, sGetCol;

	oDs.copyData(this.ds_List);   	// ds_List Ds ���� @@@
	oDs.clearData();

	var arrChkCol = this.grd_ListRgt.getSelectedDatasetRows();

	if(arrChkCol.length > 0) {
		for(var i = arrChkCol.length - 1; i >= 0; i--)
		{
			aRow = oDs.addRow();

			oDs.copyRow(aRow, this.ds_List, arrChkCol[i]);
			}  // end of for()
	}
	else
	{
		oDs.addRow();

		oDs.copyRow(0, this.ds_List, nRow);
	}

	this.close("OK");
};
==============================================================================================================

- ������Ǽ�_���¸�(2019.00) �ۼ� 
1. 2019�� 9��: 327,730��
1) ���̹������_������Ȳ_20190901~20190930.xls���� �ٿ�ε� �޾Ƽ� �ۼ��� ��
==============================================================================================================

��������������� 2019.10.04(��) �۾� �������������������
---> 07:20 ~ 21:00 ==> ������Ǽ�_���¸�(2019.09) �ۼ�, ������ö �Ĵ� �ı� ����(20�� 106,000��(�� ��: 5,300��), ���� ��ü[����])
								, ������(19:40 ~ 20:50), ����T --> 18:05 ��� ����[7��]�� ����T�� ���)

- ������ö ���� ���� ������� �ý��� ���� Prj[��]  
- launchtml �̿��� XP_Nexa ����(�������Ʈ �ݼ��Ϳ��� �ҽ� ��������)
1. piClaimProgCurState.html ���Ͽ���(Xplatform����)
function Button00_onclick(obj:Button,  e:ClickEventInfo)
{
	trace("[/piClaimProgCurState.xfdl] [Button00_onclick()] ==> [TEST_01] [��ư Ŭ�� �̺�Ʈ]" );

	this.WebBrowser00.url = "http://10.216.143.133:9011/GQMS_Tst/launchXpNexa.html?screenid=ScreenDeskTop2&gv_NexaUrl=bz::bzPrgMgrM.xfdl&gv_global1=abc";
}

2. launchXpNexa.html ���Ͽ���(Nexacro 17����)
nexacro.setInitialVariable("application", "gv_NexaUrl", urlParams.gv_NexaUrl); // �ػ� URL �Ķ���� �߰�[������: 2019.10.04(v1.0), by ���¸�]
nexacro.setInitialVariable("application", "gv_global1", urlParams.gv_global1);    // global1 �Ķ���� �߰�[������: 2019.10.04(v1.0), by ���¸�]

var screeninfo = [
	{"id":"ScreenDeskTop","type":"desktop","key":"GQMS_TstXpNexa","tracemode":"append","httpretry":"0","httptimeout":"120","filesecurelevel":"0",
	"networksecurelevel":"0","themeid":"theme::NMIS","xadl":"GQMS_TstXpNexa.xadl.js"}
];

3. GQMS_TstXpNexa.xadl ���Ͽ���
<?xml version="1.0" encoding="utf-8"?>
<ADL version="2.0">
  <Application id="GQMS_TstXpNexa" screenid="ScreenDeskTop2">
    <Layout>
      <MainFrame id="mainframe" showtitlebar="true" showstatusbar="true" width="1280" height="720">
        <ChildFrame id="ChildFrameXP" formurl="com::comXpNexa.xfdl" showtitlebar="false"/>   <!--// comXpNexa.xfdl ���� ����(������ ����) //-->
      </MainFrame>
    </Layout>
  </Application>
</ADL>

4. comXpNexa.xfdl ���Ͽ���
/************************************************************************************************
* FORM EVENT ����(onload, onbeforeclose)
************************************************************************************************/
this.form_onload = function(obj:nexacro.Form,e:nexacro.LoadEventInfo)
{
	trace("[/comXpNexa.xfdl] [form_onload()] ==> [TEST_01] [�� �ε�]" );

	this.divUrl.set_url(nexacro.getApplication().gv_NexaUrl);    // �ػ� URL ����
	trace("[/cm_pop.xadl] [Application_onload()] ==> [TEST_51] [this.divUrl]"+ this.divUrl.url );
};
==============================================================================================================

- global ���� ó��
this.divUrl.set_url(nexacro.getApplication().gv_NexaUrl);    // �ػ� URL ===> global ���� �ޱ�

<Variables>
	<Variable id="gv_global1"/>
	<Variable id="gv_NexaUrl" initval="bz::bzPrgMgrM.xfdl"/> // �ػ� URL ===> global ���� ����
</Variables>
==============================================================================================================

- GQMS �����ڵ� ����
1. /bzPrgMgrM.xfdl ���Ͽ���
<!--// GQMS �����ڵ� Ds //-->
<Dataset id="ds_ComCode">
	<ColumnInfo>
	  <Column id="SID" type="STRING" size="256" description="SID"/>
	  <Column id="CID" type="STRING" size="256" description="��з�"/>
	  <Column id="MID" type="STRING" size="256" description="�ߺз�"/>
	  <Column id="OBJ_ID" type="STRING" size="256" description="OBJ_ID"/>
	  <Column id="USE_YN" type="STRING" size="256"/>
	  <Column id="NOT_CD" type="STRING" size="256"/>
	  <Column id="P1" type="STRING" size="256"/>
	  <Column id="P2" type="STRING" size="256"/>
	  <Column id="P3" type="STRING" size="256"/>
	  <Column id="P4" type="STRING" size="256"/>
	  <Column id="P5" type="STRING" size="256"/>
	  <Column id="SELECT_TYPE" type="STRING" size="256" description="�޺� ��ȸ Ÿ��(A:��ü, S:����)"/>
	  <Column id="SELECT_TYPE_TEXT" type="STRING" size="256"/>
	  <Column id="BIND_COLUMN" type="STRING" size="256"/>
	  <Column id="CHANGE_CD" type="STRING" size="256"/>
	  <Column id="CHANGE_CD_NM" type="STRING" size="256"/>
	</ColumnInfo>
	<Rows>
	  <Row>
	<Col id="CID">CM</Col>
	<!--// ��з�(CM: ����) //-->
	<Col id="MID">GQ0030</Col>
	<!--// �ߺз�(GQ0030: ��뿩��) //-->
	<Col id="OBJ_ID">this.div_Search.form.cmb_UseYn</Col>
	<Col id="SID"/>
	  </Row>
	  <Row>
	<Col id="CID">BIZOFFICE_GP</Col>
	<!--// ��з�(BIZOFFICE_GP: �����) //-->
	<Col id="MID">GQ0000</Col>
	<!--// �ߺз�(GQ0000: �����) //-->
	<Col id="OBJ_ID">this.div_Search.form.cmb_Bplc</Col>
	<Col id="SELECT_TYPE">A</Col>
	<Col id="SID"/>
	  </Row>
	</Rows>
</Dataset> 
---------------------------------------------------------------------------  -------------------

2. /DataSet.js ���Ͽ���
pForm.gfn_SetComCode = function(objForm, objInfoDs)
{
	trace("[/DataSet.js] [gfn_SetComCode()] ==> [TEST_01] [���� �ڵ� ��ȸ]" );

	sSvcID        = "searchComCode"+ nexacro.round(Math.random(), 3);
	// sController   = "BA/BA00601M/getSelectData";
	sController   = "COM/COMCODE/getSelectData";    // GQMS �����ڵ� ���� ==> ����[������: 2019.10.03(v1.0), by ���¸�]
	sInDatasets   = "data=" + sSearchDsNm;
	sOutDatasets  = sDsNm + "=data";
	sCallbackFunc = "gfn_getComCodeCallback";
	bAsync        = true;
};
-----------------------------------------------------------------------------------------------

3. /COMCODEMapper.xml ���Ͽ���
/* ���� �ڵ� ���� ��ȸ ==> [/COMCODEMapper.xml] [getSelectData()] [2019.10.03, by ���¸�] */
SELECT A.CD_VAL AS CD
			, A.CD_MNNG AS CD_NM
FROM TB_GQ_CM_CODES A -- �����ڵ� ���� TB
WHERE A.CD_EN_ID = #{CID} -- ��з�
	AND CD_CAT_ID = #{MID} -- �ߺз�
	AND A.DEL_YN = 'N'
ORDER BY A.SORT_SEQ
-----------------------------------------------------------------------------------------------

- �����  
������ö��
��õ����
���װ���
������
AP����
��õ��������
==============================================================================================================

������������������� 2019.10.05(��) �۾� �������������������
---> 07:30 ~ 18:00 ==>  

- �ָ�
05:00 ���
05:10 ��� �ڰ��(30��)
05:40 ����
06:10 �����
06:22 6411�� ���� ž��(�븲�� ������)
07:20 ������ ����
07:10 ����
07:20 ȸ�� ���� ==> ������Ǽ��� ������(9����) ������ �� ==> ������ �븮 å�� ����
08:20 ���׾Ȱ�����(�ּ�: ���� ������ ������ 404) ���� ==> ���� 1��
08:30 2�� �Ȱ� �˻�
08:50 3�� ���� �˻� ==> ���� ���� �˻�(�ֻ�): �ƹٽ�ƾ(20����, �ǰ����� ���� �ȵ�)
09:20 ���� �˻�
09:30 ����(���ֿ� ����) ==> Ȳ���� �ξ��ٰ� ��(������ �� ���� �ֻ� ���� :������ �� ������ �ü��� �����ֿ� �ϱ�� ��)
09:40 ������ �� ���� �ֻ�
09:50 ����(1��)  ==> �����(�˻��: 38,921��, ���� �ֻ��: 200,000��[�ǰ����� ������], ������: 6,083��): �� 245,100��
09:66 ����
10:00 6411�� ���� ž��(���׾Ȱ����� ������)
11:00 �븲�� ������ ����
11:10 �Ͱ�
12:10 ����
12:30 �����(������)
12:40 �ѵ������ھ౹ ==> �����÷�����, ũ���Ʈ ���Ⱦ�, �����Ʈ��, �츮�� ���� Ư����� ����
12:50 �Ͱ�
13:00 ����õ�� ����
13:50 �Ͱ�
14:00 �翺(����) ���
14:00 �޽�
16:00 �����(������, ����)
16:10 ���̼� �븲2ȣ�� ==> �����̰� ��ġ�� ���� ��� �ʹٰ� ��
16:40 �̸�Ʈ ������ ==> ������ ���� Ʈ��ŷȭ(265cm) ����(49,800��)
17:00 ���̼� ��������
17:20 ����(�����, ġ�����[���õ�� ��������]) 
18:00 �Ͱ�  
19:00 ����õ�� ����(����)
20:00 �Ͱ�
20:10 ���ͳ� ����
22:00 ��ħ 
==============================================================================================================  

������������������� 2019.10.06(��) �۾� �������������������
---> 07:10 ~ 21:00 ==> ������(07:30 ~ 08:45), ����C): ó��, �Ͽ� �ٹ�

- �ָ�2
05:00 ���
05:10 ��� �ڰ��(30��)
05:40 ����
06:10 �����
06:22 6411�� ���� ž��(�븲�� ������)
07:20 ������ ����
07:10 ����
07:20 ȸ�� ���� ==> Ŀ�� ����
08:20 ���׾Ȱ�����(�ּ�: ���� ������ ������ 404) ���� ==> ���� 1��
08:55 2�� �Ȱ� �˻�
09:07 3�� ����(���ֿ� ����): ���� ������ �� ���� �ֻ� ���� �κ� ������ �� ����ٰ� ��(�� �� �� ���� ����)
09:15 ����
09:20 6411�� ���� ž��(�������� ������)
09:40 �����͹̳�(ȣ����) ����
09:50 ���� ���
11:06 �����͹̳� ���� 
11:30 31�� ���� ž��(10�� �ۻ�)
11:55 ��븮 ������ ����
12:05 ���(������ö �������� 6��) 
12:10 �߽�(������ö �Ѹ��� �Ĵ�) 
12:30 ���� �޴� ���� ���� ==> ���� �Ϸ� @@@
18:10 ����(���) 
18:20 ����(������ö �Ѹ��� �Ĵ�)
18:40 ����
19:10 �Ͱ�
19:20 ����
20:00 ����
20:10 ���ͳ� ����
22:30 ��ħ
==============================================================================================================

- adl �̿� XP_Nexa ����
1. ���α׷�����[�׽�Ʈ](/bzPrgMgrM.fxdl) ȭ�� ���� ó��
1) ���� ��ư üũ�� ���� �߻� ==> ó�� �Ϸ� @@@
- /Frame.js ���Ͽ���  gv_NexaMenuID
  pForm.gfn_ComBtnChk = function(objForm, objBtn)
{
	trace("[/Frame.js] [gfn_ComBtnChk()] ==> [TEST_01] [���� ��ư üũ] [objForm]"+ objForm +"[objBtn]"+ objBtn );

	var objApp = objForm.gfn_GetApplication(),
	objMenuBtnList = objApp.gds_MenuBtnList,
	sWinKey;

	if(objForm.parent instanceof nexacro.ChildFrame) {   // parent�� ChildFrame �̸�
		sWinKey = objForm.parent.name;

		sWinKey = sWinKey.substr(0, sWinKey.indexOf("_POP"));
	} else {  
	trace("[/Frame.js] [gfn_ComBtnChk()] ==> [TEST_33] nexacro.getApplication().gv_NexaMenuID]"+ nexacro.getApplication().gv_NexaMenuID);

	if(nexacro.getApplication().gv_NexaMenuID != '')   // gv_NexaUrl_R�� �����ϸ�  ===> �߰�
	{
		sWinKey = nexacro.getApplication().gv_NexaMenuID;      // �޴�ID
	}
	else
		{
		trace("[/Frame.js] [gfn_ComBtnChk()] ==> [TEST_39] [getOwnerFrame.menuId]"+ objForm.getOwnerFrame().arguments["menuId"] );
		sWinKey = objForm.getOwnerFrame().arguments["menuId"];      // �޴�ID ==> ���� �߻� @@@@
	}  
	}
};

2) ��ȸ ��ư üũ�� ���� �߻� ==> ó�� �Ϸ� @@@
  ��. form_onload�� �α��� ó���� �ذ�
   /***************************************************************************
* Even   : form_onload
* Desc   : �ʱ�ȭ ����
****************************************************************************/
this.form_onload = function(obj:nexacro.Form,e:nexacro.LoadEventInfo)
{
	trace("[/comXpNexa.xfdl] [form_onload()] ==> [TEST_01] [�� �ε�]" );

	var nSucc = "";
	nSucc = nexacro.getApplication().setVariable("gv_NexaUrl", "bz::bzPrgMgrM.xfdl");   // �ػ� URL ����  ===> TEST @@@ ===>
	nSucc = nexacro.getApplication().setVariable("gv_global1", "1521666");   // gv_global1 ����(�α���ID)  ===> TEST @@@ ===>
	this.sUserId = nexacro.getApplication().gv_global1;

	this.fn_Login();// �α��� ó��
	
	this.divUrl.set_url(nexacro.getApplication().gv_NexaUrl);    // �ػ� URL ����
	trace("[/comXpNexa.xfdl] [form_onload()] ==> [TEST_50] [�ػ� URL��(gv_NexaUrl)]"+ nexacro.getApplication().gv_NexaUrl
	+"[nSucc]"+ nSucc +"[�ػ� URL��(divUrl)]"+ this.divUrl.url );
	};
==============================================================================================================

- theme ����(/environment.xml ���Ͽ���)
<ScreenDefinition>
  <Screen id="ScreenDeskTop" type="desktop" key="GQMS_Tst" tracemode="append" httpretry="0" httptimeout="120"
  filesecurelevel="all" networksecurelevel="all" themeid="theme::GQMS_Tst"/> <!--// theme ����(GQMS_Tst)[������: 2019.10.06, by ���¸�] //-->
  <Screen id="ScreenDeskTop2" type="desktop" key="GQMS_TstXpNexa" themeid="theme::GQMS_Tst"/>
  <!--// theme ����(GQMS_Tst)[������: 2019.10.06, by ���¸�] //-->
</ScreenDefinition>
==============================================================================================================

- ��Ĺ localhost ����(/eclipse����) ==> 01_GQMS Server[8080]
1. GQMS ���� ����
1) Tomcat admin port: 8085
2) HTTP/1.1: 8080
3) AJP/1.3: 8089
----------------------------------------------------------------------------------------------------

2. GQMS_Tst ���� ����(������� Prj) ==> 02_GQMS_Tst Server[9001]
1) Tomcat admin port: 6001
2) HTTP/1.1: 9001
3) AJP/1.3: 7001
4) Server name: 02_GQMS_Tst Server[9001]
5) Host name: localhost
----------------------------------------------------------------------------------------------------

3. LMIS ���� ����(�̷��ſ����� Prj) ==> 03_LMIS Server[9002]
1) Tomcat admin port: 6003
2) HTTP/1.1: 9003
3) AJP/1.3: 7003
----------------------------------------------------------------------------------------------------

4. GQMS_New ���� ����(GQMS_New Prj) ==> 04_GQMS_New[9004]
1) Tomcat admin port: 6004
2) HTTP/1.1: 9004
3) AJP/1.3: 7004
----------------------------------------------------------------------------------------------------

5. GQMS_Tst ���� ����(������� Prj) ==> 11_GQMS_Tst Server[9011]
1) Tomcat admin port: 6011
2) HTTP/1.1: 9011
3) AJP/1.3: 7011
4) Server name: 11_GQMS_Tst Server[9011]
5) Host name: localhost  ==> 10.216.143.133
==============================================================================================================

��������������� 2019.10.07(��) �۾� �������������������
---> 07:00 ~ 21:30 ==> ���� ���� ���

- ������ö ���� ���� ������� �ý��� ���� Prj[��]  
- adl �̿� XP_Nexa ����
1. XP, �ػ� ����(/comXpNexa.fxdl) ȭ�� ����
==============================================================================================================

- ���� ���� ����
1. HI-TAM4.0(HI Ware) ��ġ ==> http://10.10.111.232
2. ������ö_����ڸŴ���_WEB_v1.0.doc
3. �������ս������(GQS_Tst) ���� ���� ==> /u01/infra/webapps/
1) MTPuTTY ��ġ(�͹̳�)
==============================================================================================================

- null ó��
if(this.gfn_IsNull(nexacro.getApplication().gv_LoginYn)) // �α��� ���ΰ� null �̸�
{
trace("[/comXpNexa.xfdl] [form_onload()] ==> [TEST_52] [�α��� ����]"+ nexacro.getApplication().gv_LoginYn );  
this.fn_LoginData();// �α��� ó��
}
==============================================================================================================

- KOLAS ���� ���� ���� ȸ��(15��)
1. ������ö ����.������ �ŵ��� �븮
==============================================================================================================

- KOLAS ����԰�(/tkKolasTstSpec.xfdl) ����
1. KOLAS ����԰� ����(TB_KOLAS_TST_SPEC) ���̺� ����
2. TK11003Controller.java ���� ����
==============================================================================================================

��������������� 2019.10.08(ȭ) �۾� �������������������
---> 07:00 ~ 21:00 ==> ���� ��������(14��)

- ������ö ���� ���� ������� �ý��� ���� Prj[��]
- KOLAS ����԰�(/tkKolasTstSpec.xfdl) ����
1. GQMS �����ڵ� ���� ��� ==> �ߺз�(GUBUN_CD: �����ڵ�, CLAS_CD_02: �з��ڵ�2): GQMS �����ڵ� Ds(ds_ComCode)
2. Grid���� �޺� ������Ʈ�� Ŭ���ؼ� �����ϸ� ���� �ȵ�
1) ����: ���� ds_List Ds�� �ش� Į���� ���� �� �Ͼ(ET1 Į�� �� ����)
==>
<!--// GQMS �����ڵ� Ds //-->
<Dataset id="ds_ComCode">
<ColumnInfo>
  <Column id="SID" type="STRING" size="256" description="SID"/>
  <Column id="CID" type="STRING" size="256" description="��з�"/>
  <Column id="MID" type="STRING" size="256" description="�ߺз�"/>
  <Column id="OBJ_ID" type="STRING" size="256" description="OBJ_ID"/>
  <Column id="USE_YN" type="STRING" size="256"/>
  <Column id="NOT_CD" type="STRING" size="256"/>
  <Column id="P1" type="STRING" size="256"/>
  <Column id="P2" type="STRING" size="256"/>
  <Column id="P3" type="STRING" size="256"/>
  <Column id="P4" type="STRING" size="256"/>
  <Column id="P5" type="STRING" size="256"/>
  <Column id="SELECT_TYPE" type="STRING" size="256" description="�޺� ��ȸ Ÿ��(A:��ü, S:����)"/>
  <Column id="SELECT_TYPE_TEXT" type="STRING" size="256"/>
  <Column id="BIND_COLUMN" type="STRING" size="256"/>
  <Column id="CHANGE_CD" type="STRING" size="256"/>
  <Column id="CHANGE_CD_NM" type="STRING" size="256"/>
</ColumnInfo>
<Rows>
  <Row>
<Col id="CID">KOLAS_TST_SPEC</Col>
<!--// ��з�(TB_KOLAS_TST_SPEC: �����) //-->
<Col id="MID">CLAS_CD_02</Col>
<!--// �ߺз�(CLAS_CD_02: �з��ڵ�2) //-->
<Col id="OBJ_ID">this.grd_List</Col>
<Col id="BIND_COLUMN">CLAS_CD_02</Col>
<Col id="NOT_CD"/>
<Col id="CHANGE_CD">CD</Col>   ===> ET1�� CD�� ������ ��
  </Row>
  </Rows>
</Dataset>
==============================================================================================================

- 44. ���߽� ���� ��û ��� �ۼ�
1. ���� ������ ���, �����ڿ��� �뺸
==============================================================================================================

- ���� ��������(14��)
1. ���� �ڼ��� �븮�� ����(�������� �İ� ��)
2. ���� �̹��� ���� ��� ���� ==> image ������� ���� ��û(����ö ����): �����
==============================================================================================================

��������������� 2019.10.09(��) �۾� �������������������
---> 07:00 ~ 18:20 ==> �ѱ۳�(������), ���� �ҽ�����(���), �߽�(�ѽ� ����, �ڼ�â��: û���� ��)

- ������ö ���� ���� ������� �ý��� ���� Prj[��]
- GQMS_Tst ���� �ڵ� ���� ==> �Ϸ� @@@
-- 1. �����ڵ� ���� ���(GQMS DB ����)  ==> CM017(��뿩��), TK001(�����ڵ�), TK002(�з��ڵ�2)
SELECT A.CD_ID AS CD, A.CD_NM AS CD_NM
FROM TB_GQ_CM_CDCOMM A     -- �����ڵ� ���� TB  ==> CD_EN_ID, CD_CAT_ID, CD_VAL)
ORDER BY A.SORT_SEQ
;
-------------------------------------------------------------------------------------------------------

-- 1. �����ڵ� ���� ���(GQMS_Tst DB ����)  ==> CM017(��뿩��), TK001(�����ڵ�), TK002(�з��ڵ�2)
/* �����ڵ� ���� ��ȸ */
SELECT A.*
FROM TB_GQ_CM_CDCOMM A     -- �����ڵ� ���� TB  ==> CD_EN_ID, CD_CAT_ID, CD_VAL)
WHERE 1=1
-- AND A.CD_ID =  'CM017'    -- �ڵ� ID ==> CM017(��뿩��), TK001(�����ڵ�), TK002(�з��ڵ�2)
;
--------------------------------------------------------------------

-- 1. �����ڵ� ���� ���(GQMS_Tst DB ����)  ==> CM017(��뿩��), TK001(�����ڵ�), TK002(�з��ڵ�2)
/* �����ڵ峻�� ���� ��ȸ */  
SELECT A.*
FROM TB_GQ_CM_CDITEM A     --  �����ڵ峻�� ����  TB  
WHERE 1=1
AND A.CD_ID =  'CM017'    -- �ڵ� ID ==> CM017(��뿩��), TK001(�����ڵ�), TK002(�з��ڵ�2)
;    
==============================================================================================================-

- 01. GQMS �����ڵ� ���� ���
1. GQMS ����(Xplatform)�� �α��� >> ������ >> �����ڵ� �������� �ڵ�ID ���
2. GQMS_Tst ����(Nexacro 17)���� Tibero DB ����
  1) 01. TB_GQ_CM_CDCOMM_�����ڵ� TB.sql ���� �����Ͽ� GQMS �����ڵ� ���� ���(INSERT INTO TB_GQ_CM_CDCOMM) ó��
  2) 02. TB_GQ_CM_CDITEM_�����ڵ峻�� TB.sql ���� �����Ͽ� GQMS �����ڵ峻�� ���� ��� INSERT INTO TB_GQ_CM_CDITEM) ó��
3. /tkKolasTstSpec.xfdl ���Ͽ��� ó�� QMS �����ڵ� Ds(ds_ComCode) ���� ó��
==============================================================================================================

- GQMS ���� �������� �޴� ���
1. ȭ�� ����(/cmUiReg.xfdl) ==>
2. �޴� ���(/cmMenuReg.xfdl) ==>
3. ���� �׷� ����(/cmAclGrpReg.xfdl) ==>  

- �޴� ����(GQMS_����Ŭ) ���
1. DBeaver���� ��ȸ ���  Grid: ���콺 �� Ŭ�� ==> ������ ����: Ŭ�� ==> Data Transfer: SQL: ���� ==> �Ϸ�(F)
-------------------------------------------------------------------------------------------------------------------------

- T1: ����������
TT: ����
TA: ���� �м�
TM: ���� ����
TK: KOLAS ����
==============================================================================================================

- default_typedef.xml ���Ͽ��� �߰�
<Service prefixid="tt" type="form" cachelevel="session" url="./tt/" version="0" communicationversion="0"/>
<!--// tt: ���� ���� �߰�[������: 2019.10.09, by ���¸�] //-->
<Service prefixid="ta" type="form" cachelevel="session" url="./ta/" version="0" communicationversion="0"/>
<!--// ta: ����м� ���� �߰�[������: 2019.10.09, by ���¸�] //-->
<Service prefixid="tm" type="form" cachelevel="session" url="./tm/" version="0" communicationversion="0"/>
<!--/ /tm: ������� ���� �߰�[������: 2019.10.09, by ���¸�] //-->
<Service prefixid="tk" type="form" cachelevel="session" url="./tk/" version="0" communicationversion="0"/>
<!--// tk: KOLAS ���� ���� �߰�[������: 2019.10.09, by ���¸�] //-->
==============================================================================================================

��������������� 2019.10.10(��) �۾� �������������������
---> 07:00 ~ 21:00 ==> �ְ�����(14��)

- ������ö ���� ���� ������� �ý��� ���� Prj[��]
- KOLAS ����԰�(/tkKolasTstSpec.xfdl) ����
1. ��ȸ, CRUD ����, ���� ==> ��ȸ �߽�
2. �ۺ��� ǥ�� ���
==============================================================================================================

- KOLAS ǥ��(/tkKolasStnd.xfdl) ����
1. ��ȸ, CRUD ����, ����, ÷������: pdf, ppt(�뷮 ���� ����) ==> ��� �߽�
==============================================================================================================

- 01. GQMS �����ڵ� ����� ���� �ڵ� ����
/* ���� �ڵ� ���� ��ȸ ==> [/COMCODEMapper.xml] [getSelectData()] [2019.10.03, by ���¸�] */  
<![CDATA[
	SELECT CD_ID, CD_ID_NM, CD, CD_NM
	FROM
	(
	SELECT A.CD_ID AS CD_ID, A.CD_NM AS CD_ID_NM
	, B.CD_ITEM AS CD, B.CD_CNTS_K AS CD_NM, B.SORT_SEQ
	FROM TB_GQ_CM_CDCOMM A, TB_GQ_CM_CDITEM B
	WHERE 1=1
		AND A.CD_ID = B.CD_ID
		AND A.CD_ID <> 'CM015'    -- �ڵ� ID(����� �ڵ尡 �ƴϸ�)
	UNION ALL
	SELECT A.CD_ID AS CD_ID, A.CD_NM AS CD_ID_NM, B.CD_ITEM
				, (CASE WHEN B.CD_ITEM = 'DJ' THEN '������ö��'
				WHEN B.CD_ITEM= 'IC' THEN '��õ����'
				WHEN B.CD_ITEM= 'PH' THEN '���װ���'
				WHEN B.CD_ITEM= 'US' THEN '������'
				WHEN B.CD_ITEM= 'AP' THEN 'AP����'
				WHEN B.CD_ITEM= 'SD' THEN '��õ��������'  
				ELSE B.CD_ITEM END) AS CD_NM, B.SORT_SEQ
	FROM TB_GQ_CM_CDCOMM A, TB_GQ_CM_CDITEM B
	WHERE 1=1
		AND A.CD_ID = B.CD_ID
		AND A.CD_ID = 'CM015'    -- �ڵ� ID(����� �ڵ� �̸�)
	)
	WHERE 1=1
		AND CD_ID = #{CID} -- �ڵ� ID
	ORDER BY SORT_SEQ, CD_NM
]]>
==============================================================================================================

- Notepad++(��Ʈ �е� �÷���) ���� ����(2�� ����)
1. Atl + F6
==============================================================================================================

- �ְ�����(14��)
1. GQMS ����(Xplatform)���� GQMS_Tst ����(Nexacro 17)���� ���� �ÿ� ==> ����ö ������ ������ ��.
2. 10�� 14��(��) �������̽� ȸ��(��ǰ,  ������ ȸ��, ����, ȭ��: ������)
3. �� �޼ҽ� ����:Tibero DB
==============================================================================================================

- LG CNS ���� ���༭ �ۼ�: �Ϸ� @@@
http://securityplus.lgcns.com/index.html   ===> ������ ���غ��� ������Ʈ(������ ���� PM), ���¹� �̻� ��û
=========================================================================================================
  
- ������ �븮(�渮)�ϰ� ���ο�(���� ���� �� �� ����)
1. ����� ���̺� 1�� �߸� ������ �ͷ� �Ӷ� ��.
2. 8�� 20�� �̷��ſ����� Prj ��� ���ٰ� ���� û���� �� �ϳİ� �� ==> 7�� 19�� �ڴ� Prj ��� ���� û���Ѵٰ� ��.
==============================================================================================================

��������������� 2019.10.11(��) �۾� �������������������
---> 07:00 ~ 17:40 ==> ������(19:40 ~ 20:50), ����T --> 18:05 ��� ����[7��]�� ����T�� ���), ������ ������ ������ ���� ���� ����

- ������ö ���� ���� ������� �ý��� ���� Prj[��]
- KOLAS ����԰�(/tkKolasTstSpec.xfdl) ���� �� ==> �Ϸ� @@@
1. ��ȸ, CRUD ����, ���� ==>  \ �߽�
-----------------------------------------------------------------------------------------------------------------------------

-- KOLAS ����԰� ���� Sequence �ѹ� ����(sequence)
-- DROP SEQUENCE USRGQD.TB_KOLAS_TST_SPEC;
CREATE SEQUENCE USRGQD.TB_KOLAS_TST_SPEC_SEQ
START WITH 1 -- 10001 --> 1�� ����(�ڿ� ����)
MAXVALUE 999999999999999999999999999
MINVALUE 0
NOCYCLE
NOCACHE
NOORDER;
---------------------------------------------------------------------------------------
  
-- KOLAS ����԰� Sequence ���� ��ȸ @@@
SELECT TB_KOLAS_TST_SPEC_SEQ.nextval FROM DUAL
;
==============================================================================================================

- KOLAS ǥ��(/tkKolasStnd.xfdl) ����
1. ��ȸ, CRUD ����, ���� ==> ��� �߽�
2. ÷������: pdf, ppt(�뷮 ���� ����)  ==> 04. TB_GQ_CM_COMFILE_���� ���ε� ���� TB ����
1) ���� ���ε� Sequence ���� ��ȸ @@@
SELECT TB_KOLAS_TST_SPEC_SEQ.nextval FROM DUAL
;
==============================================================================================================

- GQMS ���� ������ ������� �޴� ��� ==> �Ϸ� @@@
1. ���� �ҽ� ���: /Apps/xp
2. ����Ű: "C:\Program Files (x86)\TOBESOFT\XPLATFORM\9.1\XPlatform.exe" -K 'biz_intra_dev_HS'  -X 'https://10.216.253.99/xp/biz_intra.xadl'
==============================================================================================================

������������������� 2019.10.12(��) �۾� �������������������
---> 07:30 ~ 18:00 ==>  

- �ָ�
05:00 ���
05:10 ��� �ڰ��(30��)
05:40 ����
06:10 �����
06:22 6411�� ���� ž��(�븲�� ������)
07:20 ������ ����
07:10 ����
07:20 ȸ�� ���� ==> Ŀ�� ���� �԰� ����
08:40 ���׾Ȱ�����(�ּ�: ���� ������ ������ 404) ���� ==> ���� 1��
08:50 2�� �Ȱ� �˻�
08:50 ����(�̻�� ����[����])
09:30 ������ �� ������ �ü�(������) ==> ������ �, 5�� �̻� �ɸ� ��[������ ���]
09:50 ����(1��)  ==> �����(�˻��: 14,225��, ������ �ü���: 165,437��, ������: 6,043��): �� 185,800��
10:00 ����
10:10 6411�� ���� ž��(���׾Ȱ����� ������)
11:20 �븲�� ������ ����
11:30 �Ͱ�
12:10 ���� ==> �翺 � ��
12:50 ����õ�� ����(����)
13:50 �Ͱ�
14:30 �����(����) ==> �翺 ������ ����(����, �ֺ� ��ü, ����)
14:50 ���̼� �븲2ȣ�� ==> ġ�� 2��, ���� ����, ���� �����(2��) ����
15:30 ����Ʈ ==> ���� ����
16:20 �Ͱ� 
15:20 �����(������, ����)  
15:40 ���߲�, ��������)
18:10 �Ͱ�
18:20 ����(���߲�, ���� ����ũ) 
18:50 ����õ�� ����(����)
19:50 �Ͱ� ==> �翺 �Ͱ�
20:10 ���ͳ� ����
21:30 ��ħ 
============================================================================================================== 

������������������� 2019.10.13(��) �۾� �������������������
-----> 10:00 ~ 18:20 ==> ������(07:30 ~ 08:45), ����C), �Ͽ� �ٹ�, �ν��� ���� �ٴ� �ٽ� �ɱ�(������ �� ==> ���� ��)

- �ָ�2
05:00 ���
05:10 ��� �ڰ��(30��)
05:40 ����
06:10 ����� ==> ���濡 ��(2��), ��ġ ���� ������ ��
06:22 6411�� ���� ž��(�븲�� ������)
07:00 �����͹̳�(ȣ����) ���� ==> ȭ���(����)
07:35 ���� ���
08:50 �����͹̳� ���� 
09:30 31�� ���� ž��(10�� �ۻ�)
09:55 ��븮 ������ ����
10:10 ���(������ö �������� 6��)
10:10 ÷������ ����
12:10 �߽�(������ö �Ѹ��� �Ĵ�) ==> ������ �븮 ���
12:30 ÷������ ����
18:10 ����(���) 
18:20 ����(������ö �Ѹ��� �Ĵ�)
18:40 ����
19:10 �Ͱ�
19:20 ����
20:00 ����
20:10 ���ͳ� ����
22:30 ��ħ
============================================================================================================== 

- KOLAS ǥ��(/tkKolasStnd.xfdl) ����
1. ��ȸ, CRUD ����, ���� ==> ��� �߽�
2. ÷������: pdf, ppt(�뷮 ���� ����) ==> ���� ���ε�(/saveFile.jsp), ���� �ٿ�ε�(/downloadFile.jsp, ���� ����(/deleteFile.jsp)
1) ���� ���: C:\new_image\FILE\  ==> C:\GQMS_Tst\workspace\GQMS_Tst\src\main\new_image\FILE\
==============================================================================================================

- eclipse �谹���� ���� ����(/eclipse����)
1. ����: the currently selected server type does not support remote hosts.(Define a New Server)
2. ��ġ: 11_GQMS_Tst Server[9011] ���� ���� ==> C:\GQMS_Tst\workspace\Servers ���� ���� �� �� ���
==============================================================================================================

��������������� 2019.10.14(��) �۾� �������������������
---> 07:00 ~ 21:00 ==> ������ ���忡�� ��ȭ ��(10:30, ���� 10���뿡 ���� ����)

- ������ö ���� ���� ������� �ý��� ���� Prj[��]
- KOLAS ǥ��(/tkKolasStnd.xfdl) ����
1. ��ȸ, CRUD ����, ���� ==> ��� �߽�
2. ÷������: pdf, ppt(�뷮 ���� ����) ==> ���� ���ε�(/saveFile.jsp), ���� �ٿ�ε�(/downloadFile.jsp, ���� ����(/deleteFile.jsp)
1) ���� ���: C:\new_image\FILE\  ==> C:\GQMS_Tst\workspace\GQMS_Tst\src\main\new_image\FILE\
==============================================================================================================

- ����S���� 11_GQMS_Tst ���� ��û(16�� ���� ��� ȸ��)
1. AE Prj���� �ۺ����� �̻��ϴٰ� Claim �ɸ� ==> ������ ���� 7MM�ε� ������ �����̶�� ��û ȭ���ٰ� ��(���� ȣ�� ����)
==============================================================================================================

- ���� ����
1. Grid���� tooltiptext: hover,mouseleave�� ����
/***************************************************************************
* Even   : div_Menu_grd_Menu_onmousemove
* Desc   : �޴� Grid�� ���콺�� ���� ��
****************************************************************************/
this.grd_ListFile_onmousemove = function(obj:nexacro.Grid,e:nexacro.GridMouseEventInfo)
{
	//trace("[/leftFrame.xfdl] [div_Menu_grd_Menu_onmousemove()] ==> [TEST_01]");  
	  
	this.grd_ListFile.set_tooltiptext("");

	if(obj.getCellProperty("Head", e.cell, "text") == "����ũ��")  // Head�� �ִ� "����ũ��" Į�� �̸�
	{
		if (this.ds_File.getColumn(e.row, "FNM") != undefined)/	/ ���� ���� �����ϸ�
		{
			//trace("[/leftFrame.xfdl] [div_Menu_grd_Menu_onmousemove()] ==> [TEST_51] [ds_File.FNM]"+ this.ds_File.getColumn(e.row, "FNM") );  
			this.grd_ListFile.set_tooltiptext(this.ds_File.getColumn(e.row, "RFNM"));// ���� ���� �� ���� ����
		} 
		else if(obj.getCellProperty("Head", e.cell, "text") == "����")  // Head�� �ִ� "����ũ��" Į�� �̸�
		{
			if (this.ds_File.getColumn(e.row, "FNM") != undefined)// ���� ���� �����ϸ�
			{
				//trace("[/leftFrame.xfdl] [div_Menu_grd_Menu_onmousemove()] ==> [TEST_52] [ds_File.FNM]"+ this.ds_File.getColumn(e.row, "FNM") );  
				this.grd_ListFile.set_tooltiptext( "���ϸ�:"+ this.ds_File.getColumn(e.row, "FNM") +" ����");// ���� ���� �� ���� ����
			}
		}
	}
};
==============================================================================================================

- KOLAS �����(/tkKolasTstlab.xfdl) ����  ==> �Ϸ� @@@
1. kKolasTstlab.jpg �̹���(�ϴ� �Ϸ�) ==> �̹��� ���� ���� ���� Ȯ��
\GQMS_Tst\workspace\GQMS_Tst\src\main\new_image\IMAGE\tkKolasOrgt_1_0.jpg
==============================================================================================================

��������������� 2019.10.15(ȭ) �۾� �������������������
---> 07:00 ~ 22:00 ==> �ڸ� �̵�(7��, ���߱� �븮 ������ �̵�), ������ ���� ����(10��), ���� ��������(14��, 6�� ȸ�ǽ�)
								 , �߽�(��¥��[�ϰ�]: ������, �δ븮, �ڼ�â��: 26,00��(û���� ��)), LG ����� �ڽ� ���ҿ� ���� ����(22:00)

- ������ö ���� ���� ������� �ý��� ���� Prj[��]
- KOLAS ǥ��(/tkKolasStnd.xfdl) ����
1. KOLAS ǥ�� ���� ���� ���
1) /saveFile.jsp ���Ͽ���
System.out.println("[/saveFile.jsp] ==> [TEST_01] [���� ���ε�]" );

PlatformData resData = new PlatformData();
VariableList resVarList = resData.getVariableList();

//Check that we have a file upload request
boolean isMultipart = ServletFileUpload.isMultipartContent(request);

DataSet ds = new DataSet("ds_File");
ds.addColumn(new ColumnHeader("FNO", DataTypes.STRING));// ���Ϲ�ȣ
ds.addColumn(new ColumnHeader("FNM", DataTypes.STRING));// ���� ��
ds.addColumn(new ColumnHeader("FSIZE", DataTypes.STRING)); // ���� ũ�� ==> [���� ũ�� �߰�, ������: 2019.10.14(v1.0), by ���¸�]

if(isMultipart) {
	Date date = new Date();
			TimeZone gmtTime = TimeZone.getTimeZone("GMT");
			DateFormat gmtFormat = new SimpleDateFormat("yyyyMMdd");
			gmtFormat.setTimeZone(gmtTime);

	String spr = File.separator;
	String realPath = spr +"GQMS_Tst"+ spr +"workspace"+ spr +"GQMS_Tst"+ spr +"src"+ spr +"main";// ���ε� �� ������ ���� ������ ����
	realPath += spr + "new_image" + spr;
	String osName = System.getProperty("os.name");
	String bsGb = request.getParameter("bsGb");// ��������(L:LOGO / I:IMG / O:OZ / F:FILE)
	String reqNo = request.getParameter("reqNo")// �Ƿڹ�ȣ
	System.out.println("[/saveFile.jsp] ==> [TEST_11] [���� ���(realPath)]"+ realPath +"[bsGb]"+ bsGb +"[reqNo]"+ reqNo );

	//String pathDate = "";
	if("I".equals(bsGb)) { // �̹���
		realPath = spr +"GQMS_Tst"+ spr +"workspace"+ spr +"GQMS_Tst"+ spr +"src"+ spr +"main";// ���ε� �� ������ ���� ������ ����(webapp ��ο� �־�� �ٷ� ����)
		realPath += spr +"webapp"+ spr +"GQMS_Tst"+ spr +"_resource_"+ spr +"_theme_";
		realPath += spr +"GQMS_Tst"+ spr +"images";

		if("1".equals(reqNo)) 		// �Ƿڹ�ȣ�� 1 �̸�(01: ��������, 02: KOLAS �����, 03: KOLAS ����)
		{
			realPath += spr +"01";
		}
	}
}
---------------------------------------------------------------------------------------------------------------------------

2) /tkKolasTstlab.xfdl ���Ͽ���
this.fv_ReqNo = "2";  // �Ƿڹ�ȣ(1: ��������, 2: KOLAS �����, 3: KOLAS ����)
/************************************************************************************************
* CALLBACK �ݹ� ó���κ�(Transaction, Popup)
************************************************************************************************/
this.fn_ComMFileCallback = function(svcId, objDs)
{
	trace("[/tkKolasTstlab.xfdl] [fn_ComMFileCallback()] ==> [TEST_01] [�ٿ�ε� ��� �ݹ�] [svcId]"+ svcId +"[objDs]"+ objDs );

	iif(svcId == "search")
	{
	this.ds_File.clearData();

	this.ds_File.appendData(objDs, true);
	this.FV_FNO = this.ds_File.getColumn(0, "FNO");
	var sRfNm = this.ds_File.getColumn(0, "RFNM");// ���� ���ϸ�

	var sReqNo = this.fv_ReqNo; // �Ƿڹ�ȣ(1: ��������, 2: KOLAS �����, 3: KOLAS ����)
	var sImage = "theme://images/0"+ sReqNo +"/"+ sRfNm;     // KOLAS ����� �̹���(01: ��������, 02: KOLAS �����, 03: ��������)

	this.ImageViewer.set_image(sImage);  // �̹��� ��� ����
	trace("[/ttTstOrgt.xfdl] [fn_ComMFileCallback()] ==> [TEST_41] [this.ImageViewer.image]"+ this.ImageViewer.image );  
	}
};
==============================================================================================================

- KOLAS �����׸�(/tkKolasRcgnItem.xfdl) ���� ==> �Ϸ� @@@
1. Grid�� CRUD ��ȸ, ����
1) 42. TB_KOLAS_RCGN_ITEM_KOLAS �����׸� ���� TB ����
==============================================================================================================

/***************************************************************************
* Even   : fn_ExcelDownload
* Desc   : ���� �ٿ�ε�
****************************************************************************/
this.fn_ExcelDownload = function()
{
	var sSearchTitle = "";
	/*
	sSearchTitle = "ù��° ��ȸ����" + "/";
	sSearchTitle += "�ι�° ��ȸ���� ";
	*/
	this.gfn_ExcelExport(this.div_Main.form.grd_List,  "SheetName", "�Ƿ� ���", sSearchTitle);
}

/***************************************************************************
* Even   : fn_ExcelUpload
* Desc   : ���� ���ε�
****************************************************************************/
this.fn_ExcelUpload = function()
{
	this.ds_ExcelUpload.clearData();

	var excelParam =
	{
	  sheet:""
	, startrow:2
	, bindcolumns:["ACPDAT", "EMPID", "CUSTNO", "CTMNAM", "RSDID", "HOMADR1", "HOMADR2", "RSDAMT", "RSDKIN"
				   , "HOMTEL", "OFFTEL", "HNDTEL", "IVGPUO", "OWNKIND", "OWNNAM", "OWNRSD", "ADDR01", "ADDR02"
	   , "OWNTEL", "OWNOTEL", "OWNHTEL", "HLSNO", "PREEMP", "MEMO", "CMPMGTNO"]
	, callback:"fn_callbackExcelImport"
	};

	this.gfn_ExcelImport(this.ds_ExcelUpload, excelParam);
}
==============================================================================================================

- ���� ��������(14��)
1. ���� �ڼ��� �븮 �� 2�� ����(Ȳ���� ����, ������ ���� �İ�)
2. �̹��� ���� ��� ���� ==> image ��� �ÿ�(Ȯ����)
3. ���� ��Ʈ �߰� 2�� ���� ��û ==> ����ö ������ �����Ѵٰ� ��.
4. ���� ����(XPlatform���� ���� �ҽ��� �߰��ؾ��� ������ ������)
5. ���� ����(/P-55-0001-QM-001_ȭ�鼳�輭_sample.ppt) �ۼ� ��û ==> ����ö ����
6. �ڼ�õ�� ���� ���� ���ؼ� ���� �ٽ� �ؾ� ��, �ڱ� ������� �ڱ� ���� ��ǥ
==============================================================================================================

��������������� 2019.10.16(��) �۾� �������������������
---> 07:00 ~ 20:40 ==> �� ����(08:30 �ڼ�õ������ ���� �������� �� �϶�� ����)

- ������ö ���� ���� ������� �ý��� ���� Prj[��]
- KOLAS ������Ȳ(/tkKolasRcgnStat.xfdl) ����  
1. ��ȸ, CRUD ����, ������ ÷��(����, ���� ����), �ϴ� Grid ������ ��  ==> TK12001
1) 43. TB_KOLAS_RCGN_STAT ������Ȳ ���� TB ����
==============================================================================================================

-- Į�� �߰� @@@
ALTER TABLE TB_GQ_CM_COMFILE ADD (
    RETRUN_DT CHAR(8) NULL        -- ��ǰ����
    , REG_ID VARCHAR2(20) NULL     -- �����ID  
    , REG_IP VARCHAR2(20) NULL     -- �����IP  
    , REG_DT DATE -- �����  
);  
-----------------------------------------------------------------------------------

-- Į�� ���� @@@
ALTER TABLE TB_GQ_CM_COMFILE MODIFY
(
    PWD_03 VARCHAR(200)  NULL         -- �Ƿڱ��� Į�� ����
);  
==============================================================================================================

- Tibero DB ���� ���̺� Į�� �߰�, ���̺� DROP�� ���� �߻�
1. ����
ALTER TABLE TB_GQ_CM_COMFILE
    ADD  REQGB  VARCHAR(30) NULL            -- �Ƿڱ��� Į�� �߰�
;
2. ����: SQL Error [JDBC-5072:ERRDT]: JDBC-5072:Failure converting NUMBER to or from a native type.
3. ��ġ: DB ������(������, DBeaver)�� ������� ��
==============================================================================================================

- xeni ���׷��̵�
1. xeni ���� �ٿ�ε�, ���ε�� ���
2. nexacro17-xeni.war ==> 2018.11.28.070939 --> 2019.09.03
1) ���: C:\GQMS_Tst\workspace\GQMS_Tst\mavenRepository\com\nexacro\nexacro17-xeni\1.0.0-SNAPSHOT\
==============================================================================================================

��������������� 2019.10.17(��) �۾� �������������������
---> 07:00 ~ 21:00 ==> ������ö �Ĵ� �ı� ����(20�� 106,000��(�� ��: 5,300��), ���� ��ü[����]), �ְ�����(15��, ȸ�ǽ�)
								, ���� ���� �̱Լ� �븮 �׸��� ����(16��, 1���ϰ�)

- ������ö ���� ���� ������� �ý��� ���� Prj[��]
- KOLAS ������Ȳ(/tkKolasRcgnStat.xfdl) ���� ==> �Ϸ� @@@
1. ������ ÷��[���� ���ε�](����, ���� ����)
==============================================================================================================

- KOLAS �ο���Ȳ(/tkKolasNmprStat.xfdl) ����
1. GQMS ID�� ���� üũ�� �ؼ� ���� ���� �ο�
2. Grid�� �������� �
1) (��)ǰ�� ������, ���������, ���м���, �����ý�����
2) �������(�Ǹ�), ǰ��å���� (�Ǹ�), ���å����, �ǹ��� (�ο�)
---------------------------------------------------------------------------------------------------------------

/* KOLAS �ο���Ȳ ���� ��ȸ */
SELECT A.GUBUN_NM
			, MAX(CASE WHEN A.TEAM_CD = 'CD1001' THEN A.GUBUN_DATA ELSE '0' END) GUBUN_DATA
			, MAX(CASE WHEN A.GUBUN_DATA = '1' THEN '0' ELSE  A.GUBUN_DATA END) GUBUN_DATA_02
FROM TB_KOLAS_NMPR_STAT A, TB_KOLAS_NMPR_STAT_TEAM B
WHERE 1=1
GROUP BY A.GUBUN_NM
;
==============================================================================================================

- ���̻����� ��ȭ ��(10:10)
1. AE Prj ��ȣ�� ���� ���� �̷��ſ����� Prj �������� ����(���信������ �������ٰ� ��)
1) ������ ���� AE Prj ������ 1~2�� ���� ���� ���� �ֶ�� ��(�����忡�� �����Ѵٰ� ��: Ȳ��ö ����)
==============================================================================================================

��������������� 2019.10.18(��) �۾� �������������������
---> 07:00 ~ 17:40 ==> ������ ���� �ߵ忡 ����(16��), ������(19:40 ~ 20:50), ����T --> 18:05 ��� ����[7��]�� ����T�� ���)

- ������ö ���� ���� ������� �ý��� ���� Prj[��]
- KOLAS �ο���Ȳ(/tkKolasNmprStat.xfdl) ����
1. GQMS ID�� ���� üũ�� �ؼ� ���� ���� �ο�
2. Grid�� �������� �
1) (��)ǰ�� ������, ���������, ���м���, �����ý�����
2) �������(�Ǹ�), ǰ��å���� (�Ǹ�), ���å����, �ǹ��� (�ο�)
==============================================================================================================

- ���� ����Ÿ�� ���η� ��ȸ @@@
WITH KOLAS_NMPR_STAT_TEAM AS
(
    SELECT A.TEAM_CD, A.TEAM_NM
    FROM TB_KOLAS_NMPR_STAT_TEAM A
    ORDER BY A.SEQ
  )
  , KOLAS_NMPR_STAT  AS
(
    SELECT  A.TEAM_CD, A.GUBUN_NM, A.GUBUN_DATA
    FROM TB_KOLAS_NMPR_STAT A
    ORDER BY A.SEQ
  )
SELECT   Z.GUBUN_NM-- , Z.TEAM_NM, Z.GUBUN_DATA
			, MIN(DECODE(Z.TEAM_CD, 'CD1001', T.TEAM_NM)) TEAM_NM
			, MIN(DECODE(Z.GUBUN_NM, 'CD1001', '', Z.GUBUN_DATA)) GUBUN_DATA
			, MAX(DECODE(Z.GUBUN_NM, 'CD1002', '', Z.GUBUN_DATA)) GUBUN_DATA_02
			  FROM KOLAS_NMPR_STAT_TEAM T, KOLAS_NMPR_STAT Z
WHERE T.TEAM_CD = Z.TEAM_CD
GROUP BY Z.GUBUN_NM
;
==============================================================================================================

������������������� 2019.10.19(��) �۾� �������������������
---> 07:30 ~ 18:00 ==>  

- �ָ�
05:00 ���
05:10 ��� �ڰ��(30��)
05:40 ����
06:10 �����
06:30 ����õ�� ����(����)
07:30 �Ͱ� 
07:50 ���ͳ� ���� ==> ���� Grid �м�(�ڴ� �ҽ� ����)
09:00 ����
09:30 �����(������, ����)  
09:40 �뵿 ��ġ��
10:00 �θ� ���� ���� ���� ==> �����
10:10 1�ð� ==> �屸 ������ �����
10:40 2�ð� ==> �� �����, ���� �����
11:10 3�ð� ==> ��Ʈ�� �ݹ� �ܹ��� �����
11:40 4�ð� ==> ��� �ױ� ����
12:00 ����
12:10 ��ġ�� ������(���� �����̶� �پ��)
12:40 ����
12:50 �Ͱ�
13:00 ����
13:30 �����
13:30 ����õ�� ����(����)
14:30 �Ͱ�
15:10 �����(������, ����)   
15:20 �븲��(6511�� ����, ����)
16:00 ����� ������ ���� 
16:10 ���ǵ�����(1��, ����) ==> ���� å ����
16:30 ����
16:50 ����� ������ ���� 
17:50 �븲��(6511�� ����, ����)
18:00 ����(�����, ġ�����): ����
18:30 �Ͱ�  
18:50 ����õ�� ����(����)
19:50 �Ͱ� ==> �翺 �Ͱ�
20:10 �ǰ��ؼ� ����
22:30 ����
22:51 �ν��� �� ��ü(270U, 24U ����), ü��: 74.kg
21:30 ��ħ 
============================================================================================================== 

������������������� 2019.10.20(��) �۾� �������������������
-----> 10:00 ~ 18:20 ==> ������(07:30 ~ 08:45), ����C), �Ͽ� �ٹ�

- �ָ�2
05:00 ���
05:10 ��� �ڰ��(30��)
05:40 ����
06:10 ����� ==> ���濡 ����, �� �ڹ� ���� ������ ��
06:22 6411�� ���� ž��(�븲�� ������)
07:00 �����͹̳�(ȣ����) ����
07:35 ���� ���
08:50 �����͹̳� ���� 
09:30 31�� ���� ž��(10�� �ۻ�)
09:55 ��븮 ������ ����
10:10 ���(������ö �������� 6��)
10:10 ���� Grid ����
12:10 �߽�(������ö �Ѹ��� �Ĵ�)
12:30 ���� Grid ����
18:10 ����(���) 
18:20 ����(������ö �Ѹ��� �Ĵ�)
18:40 ����
19:10 �Ͱ�
19:20 ����
20:00 ����
20:10 ���ͳ� ����
22:30 ��ħ
============================================================================================================== 

- KOLAS �ο���Ȳ(/tkKolasNmprStat.xfdl) ����
1. Grid�� �������� �
1) (��)ǰ�� ������, ���������, ���м���, �����ý�����
2) �������(�Ǹ�), ǰ��å���� (�Ǹ�), ���å����, �ǹ��� (�ο�)
==============================================================================================================

-  KOLAS �ο���Ȳ �� ���� ��ȸ(���� ����Ÿ�� ���η� ��ȸ) @@@
WITH KOLAS_NMPR_STAT_TEAM AS
(
    SELECT A.TEAM_CD, A.TEAM_NM, A.CLAS_CD_01
    FROM TB_KOLAS_NMPR_STAT_TEAM A
  )
  , KOLAS_NMPR_STAT  AS
(
    SELECT  A.TEAM_CD, A.GUBUN_NM, A.GUBUN_DATA, A.CLAS_CD_01, A.GUBUN_CD
    FROM TB_KOLAS_NMPR_STAT A
    ORDER BY A.GUBUN_CD, A.SEQ
  )
SELECT   Z.GUBUN_NM
, MAX(Z.GUBUN_CD) AS GUBUN_CD /* �����ڵ� */
, MAX(Z.CLAS_CD_01) AS CLAS_CD_01 /* ����(�����) */
, MAX(CASE WHEN T.TEAM_CD = 'CD1001' THEN T.TEAM_CD ELSE '' END) TEAM_CD
, MAX(CASE WHEN T.TEAM_CD = 'CD1001' THEN T.TEAM_NM ELSE '' END) TAEM_NM
, MAX(CASE WHEN T.TEAM_CD = 'CD1001' THEN Z.GUBUN_DATA ELSE '' END) TAEM_DATA
, MAX(CASE WHEN T.TEAM_CD = 'CD1002' THEN T.TEAM_CD ELSE '' END) TEAM_CD2
, MAX(CASE WHEN T.TEAM_CD = 'CD1002' THEN T.TEAM_NM ELSE '' END) TAEM_NM2
, MAX(CASE WHEN T.TEAM_CD = 'CD1002' THEN Z.GUBUN_DATA ELSE '' END) TAEM_DATA2
, MAX(CASE WHEN T.TEAM_CD = 'CD1003' THEN T.TEAM_CD ELSE '' END) TEAM_CD3
, MAX(CASE WHEN T.TEAM_CD = 'CD1003' THEN T.TEAM_NM ELSE '' END) TAEM_NM3
, MAX(CASE WHEN T.TEAM_CD = 'CD1003' THEN Z.GUBUN_DATA ELSE '' END) TAEM_DATA3
, MAX(CASE WHEN T.TEAM_CD = 'CD1004' THEN T.TEAM_CD ELSE '' END) TEAM_CD4
, MAX(CASE WHEN T.TEAM_CD = 'CD1004' THEN T.TEAM_NM ELSE '' END) TAEM_NM4
, MAX(CASE WHEN T.TEAM_CD = 'CD1004' THEN Z.GUBUN_DATA ELSE '' END) TAEM_DATA4
FROM KOLAS_NMPR_STAT_TEAM T, KOLAS_NMPR_STAT Z
WHERE T.TEAM_CD = Z.TEAM_CD
    AND  T.CLAS_CD_01 = Z.CLAS_CD_01
    AND  Z.CLAS_CD_01  = 'DJ'           /* ����(�����) */
GROUP BY Z.GUBUN_NM
ORDER BY GUBUN_CD
;  
==============================================================================================================

- ������ ���� ���� ��Ʈ���� ����
1. ��ǰ���� / 7�� ���� ��Ʈ����(6cm) + ���� ��Ŀ�� ��Ƽ�̱�(75cm) | 2..������ / ���̺�], ����: 29,000��
http://www.enuri.com/detail.jsp?modelno=37355254&cate=120216&IsDeliverySum=N
http://shopping.interpark.com/product/productInfo.do?prdNo=6090205996
==============================================================================================================

��������������� 2019.10.21(��) �۾� �������������������
---> 07:00 ~ 21:30 ==>  

- ������ö ���� ���� ������� �ý��� ���� Prj[��]
- KOLAS �ο���Ȳ(/tkKolasNmprStat.xfdl) ���� ==> �Ϸ� @@@
1. Grid�� �������� �
1) (��)ǰ�� ������, ���������, ���м���, �����ý�����
2) �������(�Ǹ�), ǰ��å���� (�Ǹ�), ���å����, �ǹ��� (�ο�)
==============================================================================================================

- �޺��� ó��
this.div_Search.form.cmb_Bplc.set_value("PH"); // ����� �޺��� 'PH' ����
trace("[/tkKolasNmprStat.xfdl] [btn_AddDtl_onclick()] ==> [�� �߰� ó��] [TEST_9] [this.div_Search.form.cmb_Bplc.value]"+ this.div_Search.form.cmb_Bplc.value );
==============================================================================================================

- Grid RowTyp ���� ó�� @@@
for(var i = 0; i < this.ds_List.getRowCount(); i++)
{  
this.ds_List.set_enableevent(false);// �̺�Ʈ�� �߻���ų�� ���θ� �����ϴ� �Ӽ�  
this.ds_List.set_updatecontrol(false); // RowType�� �ڵ����� ������ ������ ���θ� �����ϴ� �Ӽ�

var bSucc = this.ds_List.setRowType(i, Dataset.ROWTYPE_INSERT);// RowTyp ���� ����(2: �߰�(��� ��)) 
==> ������ ��(row)�� Ÿ���� ���ϴ� �޼ҵ�(1: �ʱ� ��, 2: �߰��� ��, 4: ������ ��, 8: ������ ��)
this.ds_List.set_updatecontrol(true);
this.ds_List.set_enableevent(true);
trace("[/tkKolasNmprStat.xfdl] [fn_Save()] ==> [TEST_51] [i_��°]"+ i +"[ds_List.getRowType]"+ this.ds_List.getRowType(i) +"[bSucc]"+ bSucc);
trace("[/tkKolasNmprStat.xfdl] [fn_Save()] ==> [TEST_52] [i_��°]"+ i +"[ds_List.CNT]"+ this.ds_List.saveXML() +"[ds_List.saveXML()] \n"+ this.ds_List.saveXML() );  
} // end of for()
==============================================================================================================

- null ó��
if(this.gfn_IsNull(nexacro.getApplication().gv_LoginYn)) // �α��� ���ΰ� null �̸�
{
trace("[/comXpNexa.xfdl] [form_onload()] ==> [TEST_52] [�α��� ����]"+ nexacro.getApplication().gv_LoginYn );  
this.fn_LoginData();// �α��� ó��
}  
==============================================================================================================

��������������� 2019.10.22(ȭ) �۾� �������������������
---> 07:00 ~ 21:30 ==> ����ȸ��(14��), ���� ��Ʈ ����(22��: ó�� ���: ���� �� �� ��)

- ������ö ���� ���� ������� �ý��� ���� Prj[��]
- KOLAS ������ȹ(/tkKolasRcgnPlan.xfdl) ���� ==> �Ϸ� @@@
1. ��ȸ, CRUD ����, ������ ÷��[���� ���ε�] pdf, ppt(�뷮 ���� ����)
2.  KOLAS ������ȹ ���� �ڵ� �߰�(TK003) ==> ���� ��� �߰��� ���� ����
3. KOLAS ������ȹ ���� TB(TB_KOLAS_RCGN_PLAN) ����
4. ���� ������ ��� Ȯ�� ==> ���� ���� ����
==============================================================================================================

- ���� combo�� index ����
this.div_Search.form.cmb_PreYYYY.set_index(1);   // ���� combo�� index ����(��Ŀ�� ����, focus)
// trace("[/tkKolasRcgnPlan.xfdl] [form_onload()] ==> [TEST_91] [cmb_PreYYYY.index]"+ this.div_Search.form.cmb_PreYYYY.index );

this.div_Search.form.cmb_PreYYYY.setFocus();// ���� combo�� ��Ŀ�� ó��
==============================================================================================================

- ��¥ ���(Grid���� �����)
1. �򰡿�����
<Cell col="2" textAlign="center" text="bind:ESTM_SCHD_DT" displaytype="date" edittype="date" editdisplay="display" calendardisplay="display"/>
-------------------------------------------------------------------------------------------------------------------------------

- ��¥ �Լ�
//var sToday = this.gfn_GetDate().substr(0, 4) +"-"+ this.gfn_GetDate().substr(4, 2) +"-"+ this.gfn_GetDate().substr(6, 2);// ���� ��¥
//trace("[/tkKolasRcgnPlan.xfdl] [btn_Add_onclick()] ==> [TEST_12] [sToday]"+ sToday );

this.ds_List.setColumn(nRow, "ESTM_SCHD_DT", this.gfn_GetDate()); // �򰡿�����(���� ��¥�� ����)
this.ds_List.setColumn(nRow, "ESTM_CMPL_DT", this.gfn_GetDate()); // �򰡿Ϸ���(���� ��¥�� ����)
==============================================================================================================

- ����ȸ��(14��)
1. ����Ʈ �� ��û(����ö ������ ���� �ߴٰ� ��)
2. ������ ������ ���� ��迡 ���� ����
1) GQMS: �̴���(SPC)���� ��踦 ����(���� �ɷ� �м�) ==> ����� ���� ��� ����� ���ؼ� �Ⱦ(��� 2õ����)
2) �̹� ������Ʈ������ ��谡 �ƴ϶� ���� ������ ������ �� �ۿ� ���ٰ� ��(����ö ����: ������ �� ���)
3. ������ ȭ���� 10�ÿ� ������ö ���翡�� ȸ��(������ ���� �ְ�)
==============================================================================================================

- KOLAS ǰ������(/tkKolasQltyDcmn.xfdl) ����
1. ��ȸ, CRUD ����, ������ ÷��[���� ���ε�] pdf, ppt(�뷮 ���� ����)
2. KOLAS ǰ������ ���� TB(TB_KOLAS_QLTY_DCMN) ����
==============================================================================================================

- Grid���� Text �Է½� ����, ���ڸ� ���
1. editinputtype: english,number
==============================================================================================================

/* �μ� ���� ��ȸ */  
SELECT  A.PRNT_DEPT_CD AS �����μ��ڵ�, A.*
FROM TB_GQ_CM_DEPT_CD A        -- KOLAS ǰ������ ���� TB  
WHERE 1=1  
    -- AND A. DEPT_CD = '0279'     -- �μ��ڵ�
AND A. DEPT_NM LIKE '%����%'     -- ���� ��ö��(0279), ��õ����(17867), ���װ���(0052), ������(14968), ��õ��������(16043), AP����()
ORDER BY A.DEPT_NM
;  
----------------------------------------------------------------------------------------------------------------

-- �μ� ���� ��ȸ  @@@
SELECT LEVEL, DEPT_CD, PRNT_DEPT_CD, DEPT_NM
FROM USRGQD.TB_GQ_CM_DEPT_CD
WHERE LEVEL NOT IN (1, 2)    -- ������ 1, 2�� �ƴ� ��
START WITH DEPT_CD = '0279'   -- �μ��ڵ� ==> ���� ��ö��: 206��(189��, 17��)
CONNECT BY PRIOR DEPT_CD = PRNT_DEPT_CD
-- AND LEVEL < 4
ORDER BY LEVEL
;
==============================================================================================================

��������������� 2019.10.23(��) �۾� �������������������
---> 07:00 ~ 17:00 ==> �߽�(12��, �δ��(�뼭��� �δ��), �δ븮, ������, �ڼ�õ��), ������ö Prj ǲ��(18��1, 12��, 1��, ¥���)

- ������ö ���� ���� ������� �ý��� ���� Prj[��]
- KOLAS ǰ������(/tkKolasQltyDcmn.xfdl) ���� ==> �Ϸ� @@@
1. ��ȸ, CRUD ����, ������ ÷��[���� ���ε�] pdf, ppt(�뷮 ���� ����)
==============================================================================================================

- Grid Į�� �ʼ� �Է� ����
this.ds_list.set_rowposition(i); // ���� Row ����
this.grd_list.setCellPos(1);// ������ ���� ��ġ ���� ==> ��Ŀ��(focus) ����
this.grd_list.showEditor(true); // ������ ���� ���� ���� ����  
-----------------------------------------------------------------------------------------------------------------

- �޺� �ڽ� ��Ŀ��(focus) ����
var objBefComp = this.div_Search.form.cmb_Bplc.setFocus();// ����� �ڵ� ��Ŀ��(focus) ����  
trace("[/tkKolasQltyDcmn.xfdl] [div_List_btn_Pop_onclick()] ==> [TEST_03] [objBefComp]"+ objBefComp );
==============================================================================================================

- Grid���� �޺� ����� �߻��ϴ� �̺�Ʈ
1. oncellposchanged: Grid ���� Cell �� ������ġ�� ����� �� �߻��ϴ� �̺�Ʈ
2. ncloseup: Grid���� ���� �߿� �޺��� ����Ʈ�ڽ��� �޷��� ����Ʈ ��Ŀ�� ���� �� �߻��ϴ� �̺�Ʈ
/***************************************************************************
* Even   : grd_List_oncloseup
* Desc   :  Grid���� ���� �߿� �޺��� ����Ʈ�ڽ��� �޷��� ����Ʈ��Ŀ�� ���� �� �߻��ϴ� �̺�Ʈ
****************************************************************************/
this.grd_List_oncloseup = function(obj:nexacro.Grid,e:nexacro.GridEditEventInfo)
{
trace("[/tkKolasQltyDcmn.xfdl] [grd_List_oncloseup()] ==> [TEST_01] [e.row]"+ e.row +"[e.cell]"+ e.cell +"[e.oldvalue]"+ 
e.oldvalue +"[e.newvalue]"+ e.newvalue );  

if(obj.getCellProperty("Head", e.cell, "text") == "�����")  // ����� Į�� Ŭ�� ��
{
var sCLAS_CD_01 = this.ds_List.getColumn(this.ds_List.rowposition, "CLAS_CD_01"); // ������ڵ�  this.fv_ClasCd01_2;	
// ����� �ڵ�2
this.ds_List.setColumn(this.ds_List.rowposition, "TEAM_CD",  ""); // ���ڵ�
this.ds_List.setColumn(this.ds_List.rowposition, "TEAM_NM",  ""); // ����
trace("[/tkKolasQltyDcmn.xfdl] [grd_List_oncloseup()] ==> [TEST_22] [ds_List.rowposition]"+ this.ds_List.rowposition 
+"[TEAM_CD]"+ this.ds_List.getColumn(this.ds_List.rowposition, "TEAM_CD") +"[TEAM_NM]"+ this.ds_List.getColumn(this.ds_List.rowposition, "TEAM_NM") );
}
};
==============================================================================================================

��������������� 2019.10.24(��) �۾� �������������������
---> 07:00 ~ 21:30 ==> �ְ�����(14��)

- ������ö ���� ���� ������� �ý��� ���� Prj[��]
- ���� Grid �м�
1. ���� DataList ����
1) ���� Ds: dlt_ProGdList, �߰� Ds(T1, T2 Į��): dlt_GlassList
for( var g=1; g<=dlt_GlassList.getRowCount()+1; g++ ) {       // dlt_GlassList Ds�� ������ ���鼭 dlt_ProGdList Ds�� �߰��� ��Ŵ 
==> ���� ���� @@@
var T = "T"+ g;
//console.log("[/PD01P01.xml] [setColumnID()] ==> [TEST_51] [g_��°]"+ g +"[T]"+ T );
dataListStr1 += '  <w2:column dataType="text" id="'+T+'" name=""></w2:column>'
}  // end of for()

2. ���� Grid ����
1) Glass �⺻ ���� : TB_AM_GLASS_BASIS --> dlt_GlassList   -->  ITEM_CODE, ITEM_NAME Į�� �߰�(�����)
2) ���ں� ���� ���� : TB_AM_GLASS_COMP
==============================================================================================================

/* KOLAS �ο���Ȳ ���� ��ȸ_02 ==> [/TK12002Mapper.xml] [selectList_02()] [2019.10.24, by ���¸�] */
SELECT SEQ
    ,CLAS_CD_01
    ,GUBUN_CD
    ,GUBUN_NM
    ,GUBUN_DATA
    ,NVL(TEAM_CD, 0) AS T2     ---> TEAM_CD, TEAM_CD2, ......50�� Į�� �߰� @@@@
    ,NVL(TEAM_CD2, 0) AS T3
FROM TB_KOLAS_NMPR_STAT_02
WHERE 1 = 1
    AND CLAS_CD_01 = 'DJ' /* ����(�����) */
ORDER BY SEQ
;
-------------------------------------------------------------------------------------------------------------

-- KOLAS �ο���Ȳ �� ���� ��ȸ */    ---> TEAM_CD, TEAM_NM Į�� ����Ÿ �߰� @@@@
SELECT A.*
FROM TB_KOLAS_NMPR_STAT_TEAM_02 A        -- KOLAS �ο���Ȳ ���� TB
WHERE 1 = 1
    -- AND A.CLAS_CD_01 = 'GQ0000'          -- ����(�����)
;
==============================================================================================================

��������������� 2019.10.25(��) �۾� �������������������
---> 07:00 ~ 17:40 ==> ������(19:40 ~ 20:50), ����T --> 18:05 ��� ����[7��]�� ����T�� ���), �޿� ���� ==> ���� 25����(7�� �ڴ� 
									����: 5����, 9��, 10�� ����: 10����), ���� ���� ����(�ڰ��� �ɸ�)

- ������ö ���� ���� ������� �ý��� ���� Prj[��]
- ���� Grid �м�
1. ���� DataList ����
1) ���� Ds: dlt_ProGdList, �߰� Ds(T1, T2 Į��): dlt_GlassList
for( var g=1; g<=dlt_GlassList.getRowCount()+1; g++ ) {       // dlt_GlassList Ds�� ������ ���鼭 dlt_ProGdList Ds�� �߰��� ��Ŵ ==> ���� ���� @@@
var T = "T"+ g;
//console.log("[/PD01P01.xml] [setColumnID()] ==> [TEST_51] [g_��°]"+ g +"[T]"+ T );
dataListStr1 += '  <w2:column dataType="text" id="'+T+'" name=""></w2:column>'
}  // end of for()

2. ���� Grid ����
1) Glass �⺻ ���� : TB_AM_GLASS_BASIS --> dlt_GlassList   -->  ITEM_CODE, ITEM_NAME Į�� �߰�(�����)
2) ���ں� ���� ���� : TB_AM_GLASS_COMP
==============================================================================================================

- ���� ���� ���� Ȯ��
0. ö������ý����� ������ ���忡�� ���� ���� ����
1. ���� ���� ==> http://10.10.180.176/GQMS_Tst/index.html
2. ���� ���� ==> http://10.216.143.133:9011/GQMS_Tst/index.html
==============================================================================================================

������������������� 2019.10.26(��) �۾� �������������������
---> 07:30 ~ 18:00 ==>  

- �ָ�
05:00 ���
05:10 ��� �ڰ��(30��)
05:40 ����
06:10 �����
06:30 ����õ�� ����(����)
07:30 �Ͱ� 
07:50 ���ͳ� ���� ==> ���� Grid �м�(�ڴ� �ҽ� ����)
09:00 ����
09:30 �����(������, ����)  
09:40 �뵿 ��ġ��
10:00 �θ� ���� ���� ���� ==> �����
10:10 1�ð� ==> �屸 ������ �����
10:40 2�ð� ==> �� �����, ���� �����
11:10 3�ð� ==> ��Ʈ�� �ݹ� �ܹ��� �����
11:40 4�ð� ==> ��� �ױ� ����
12:00 ����
12:10 ��ġ�� ������(���� �����̶� �پ��)
12:40 ����
12:50 �Ͱ�
13:00 ����
13:30 �����
13:30 ����õ�� ����(����)
14:30 �Ͱ�
15:10 �����(������, ����)   
15:20 �븲��(6511�� ����, ����)
16:00 ����� ������ ���� 
16:10 ���ǵ�����(1��, ����) ==> ���� å ����
16:30 ����
16:50 ����� ������ ���� 
17:50 �븲��(6511�� ����, ����)
18:00 ����(�����, ġ�����): ����
18:30 �Ͱ�  
18:50 ����õ�� ����(����)
19:50 �Ͱ� ==> �翺 �Ͱ�
20:10 �ǰ��ؼ� ����
22:30 ����
22:51 �ν��� �� ��ü(270U, 24U ����), ü��: 74.kg
21:30 ��ħ 
============================================================================================================== 

������������������� 2019.10.27(��) �۾� �������������������
-----> 10:00 ~ 18:20 ==> ������(07:30 ~ 08:45), ����C), �Ͽ� �ٹ�

- �ָ�2
05:00 ���
05:10 ��� �ڰ��(30��)
05:40 ����
06:10 ����� ==> ���濡 ����, �� �ڹ� ���� ������ ��
06:22 6411�� ���� ž��(�븲�� ������)
07:00 �����͹̳�(ȣ����) ����
07:35 ���� ���
08:50 �����͹̳� ���� 
09:30 31�� ���� ž��(10�� �ۻ�)
09:55 ��븮 ������ ����
10:10 ���(������ö �������� 6��)
10:10 ���� Grid ����
12:10 �߽�(������ö �Ѹ��� �Ĵ�)
12:30 ���� Grid ����
18:10 ����(���) 
18:20 ����(������ö �Ѹ��� �Ĵ�)
18:40 ����
19:10 �Ͱ�
19:20 ����
20:00 ����
20:10 ���ͳ� ����
22:30 ��ħ
============================================================================================================== 

- KOLAS �ο���Ȳ(/tkKolasNmprStat.xfdl) ����
1. Grid�� �������� �
1) (��)ǰ�� ������, ���������, ���м���, �����ý�����
2) �������(�Ǹ�), ǰ��å���� (�Ǹ�), ���å����, �ǹ��� (�ο�)
==============================================================================================================
 
- ���� ���� ���� ������ ����(����, ó��)
1. 2019�� 9����, 59,100��
2. �۱� ����: ��������: 342301-04-168689, ������: (��)��������ũ��������(����������) �۱� ==> ó�� �Ϸ�
 1) ȣ��, ����: 202ȣ, ���¸� ==> ���� �繫��: 041-352-8771
==============================================================================================================

��������������� 2019.10.28(��) �۾� �������������������
---> 07:00 ~ 21:10 ==> �̷��ſ����� Prj ����(8��), ���� �ƹ��� ��ȭ(11�� 17�� �� ����: ���� �뺸, 6���� �۱� �䱸)

- ������ö ���� ���� ������� �ý��� ���� Prj[��]
- ����[��ǰ](/taEnthuMnfg.xfdl) ����
1. HR�������ս������_��ǰ����_���� ���� TB(�������̽����� ����)[Tab1] ==> TB_GQ_QM_GDSINFO_HR
2. �������ս������_���н���_�������� ���� TB(�������̽����� ����)[Tab2] ==> TB_GQ_QM_IGWR_HRPL
==============================================================================================================

- GQMS_Tst ���� ���� ���� ���� ������
1. GQMS_Tst.war ���� ���� ==> C:\GQMS_Tst\workspace\GQMS_Tst\src\main\webapp\GQMS_Tst.war
2. GQMS_Tst ���� ������ ��� ==> /u01/webapps/GQMS_Tst.war
3. GQMS_Tst ���� ���� URL ���� ���� ==> http://10.10.180.176
1)  /u01/infra/apache-tomcat-9.0.8/conf/Catalina/localhost/ROOT.xml ���Ͽ���
<?xml version='1.0' encoding='utf-8'?>
<Context path="/"
         docBase="/u01/webapps/"
         reloadable="true">
</Context>
--------------------------------------------------------------------------------------------------------

- GQMS_Tst ���� ���� URL
1. http://10.10.180.176
- �ǽð� �α� Ȯ��
> tail -f /u01/infra/apache-tomcat-9.0.8/logs/catalina.out

- ��Ĺ ���� ����, ����  @@@
> cd /u01/infra/apache-tomcat-9.0.8/bin/
> sh startup.sh
> sh /u01/infra/apache-tomcat-9.0.8/bin/shutdown.sh
> sh /u01/infra/apache-tomcat-9.0.8/bin/startup.sh
==============================================================================================================

- Eclipse ������Ʈ WAR ���Ϸ� export�ؼ� ��Ĺ�� �����ϱ�
1. https://na27.tistory.com/215
2. SP ���α׷��� - Eclipse Project�� war ���Ϸ� export/import�ϱ� ==> https://www.youtube.com/watch?v=YPgf4_DpnYE
3. [��Ŭ����] WAR �����̶�? ��Ŭ���� WAR ���� ���� ���
1) WAR(WebApplication Archive): WAR�� WebApplication Archive�� ���ڷ� ���״�� �� ���ø����̼� ������̸� �� ���ø����̼���
������ ������ ���� �����̶�� �����Ͻø� �˴ϴ�. ==> https://dololak.tistory.com/31
==============================================================================================================

- HR�������ս������_��ǰ����_���� ���� TB(TB_GQ_QM_GD)���� ���� Į��
1. ��������   --> ������������?     -> TB_GQ_QM_GDSINFO_HR.MILL_INI_DATE(�п�) / SHEAR_WRSLT_DATE(����)
2. ��ó���������       --> ����
==============================================================================================================

��������������� 2019.10.29(ȭ) �۾� �������������������
---> 07:00 ~ 22:00 ==> ������ ����(����: ���� ���� 510ȣ): ���޾Ƽ� ���°� Ƽ���� ���� ö���϶�� ��, �ɾ ���(22��, �δ븮 20�ÿ� ���� �����)

- ������ö ���� ���� ������� �ý��� ���� Prj[��]
- ����[��ǰ](/taEnthuMnfg.xfdl) ���� ==> �Ϸ� @@@
1. �������ս������_��������_�������� ���� TB(�������̽����� ����)[Tab1] ==> TB_GQ_QM_STQLTYWR_HRPL, TB_GQ_QM_STQLTYWR_HRPL2
==============================================================================================================

- AE Prj �ۺ��� ����
1. css font�� �� �Դ´ٰ� ��(�ڽ��� �븮) ==> ���� ���� Ȳ��� ������ ���� ��û(���ĵ� ��� ��û ��)
1) ����: ����(Ctrl + F6)�� ���α׷� �����ϸ� �� ����(environment.xml ���Ͽ��� themeid="theme::GQMS_Tst" ȣ�� ����)
2) ��ġ:
  ��. taEnthuMnfg.xfdl���Ͽ��� Static ���۳�Ʈ(stc_testNm: �¸�����2) ���� �� cssclass="sta_LF_userBox" ����
  ��. Launch(Ctrl + F5)�� Chrome���� F12 >> Elements >> ȭ��ǥ: Ŭ�� >> �¸�����2: Ŭ�� >> �ش� ����: Copy > Copy outerHTML: Ŭ��
  ==> sta_LF_userBox �� ����Ǿ��� �� Ȯ��
<div id="MainFrame.VFrameSet.HFrameSet.WorkFrame.TA11110.form.div_Work.form.stc_testNm" class="Static sta_LF_userBox"
tabindex="-1" style="left:408px;top:116px;width:152px;height:35px;"><div id="MainFrame.VFrameSet.HFrameSet.WorkFrame.TA11110.form.
div_Work.form.stc_testNm:text" class="nexacontentsbox" style="left:0px;top:0px;width:152px;height:35px;">�¸�����2</div></div>
==============================================================================================================

- AE Prj �ۺ��� ����2
1. ������ css(themee)�� �� �Դ´ٰ� ��
==============================================================================================================

- GQMS_Tst GQMS_Tst ���� ���� URL ���� �Ϸ�(����ö ���忡�� ��ȭ�ؼ� �ذ�)
0. GQMS_Tst.war ���� ���� Ǯ� /u01/webapps ������ ����
1. http://10.10.180.176   ==> /u01/webapps/
2. �ǽð� �α� Ȯ��
> tail -f /u01/infra/apache-tomcat-9.0.8/logs/catalina.out
3. ��Ĺ ���� ����, ���� @@@
> cd /u01/infra/apache-tomcat-9.0.8/bin/
> sh startup.sh
> sh /u01/infra/apache-tomcat-9.0.8/bin/shutdown.sh
> sh /u01/infra/apache-tomcat-9.0.8/bin/startup.sh
==============================================================================================================

��������������� 2019.10.30(��) �۾� �������������������
---> 07:00 ~ 22:00 ==> ������ö �Ĵ� �ı� ����(20�� 106,000��(�� ��: 5,300��), ���� ��ü[����])

- ������ö ���� ���� ������� �ý��� ���� Prj[��]
- ����[��ǰ](/taRearPlateMnfg.xfdl) ���� ==> �Ϸ� @@@
1. TB_GQ_QM_STQLTYWR_HRPL_�������ս������_��������_�������� TB���� ����Ȯ�强���踸 ����
<Column id="HER_TST_WR_CMPL_LOC" type="STRING" size="32" description="����Ȯ�强��������Ϸ���ġ_grd_List2_05: ����"/>
==============================================================================================================

- ������ �븮�� DB ���̺� Į�� ������ �ο�(16��)
1. ������ �븮 �ڽ��� �������̽��� ������ DB�� Į���� �ڱⰡ �𸣴� ���� ����ڿ��� ���� ���� ����� ��.
==> 12���� ö�� �ɰ��ϰ� ���
==============================================================================================================
  
- ����, ����[��ǰ) Į�� ���� ���� ���� ����
1. Ȳ���� ���忡�� ����(�������� ��ȸ.xlsx) ÷���ؼ� ���� ����
==============================================================================================================

��������������� 2019.10.31(��) �۾� �������������������
---> 07:00 ~ 22:00 ==> ����ȸ��(10��, �������� 3�� ��������� �� ȸ�ǽ�), �ְ�����(14��, ������ ��ü)

- ������ö ���� ���� ������� �ý��� ���� Prj[��]
- ���� Grid �� ����
1. bzPrgMgrM.xfdl ���Ͽ��� �׽�Ʈ ==> ��ȸ, ���� �Ϸ� @@@
1) ���� Grid���� T1, T2, T3 Į�� ������ �ֱ� ���� ==> ���� �Ϸ� @@@
2) TEAM_T_CD(��T�ڵ�) Į�� �߰� ==> TEAM_COLUMN_MAX_CNT(�� Į�� �ִ� ��) Į�� �߰�[TB_KOLAS_NMPR_STAT_TEAM TB]
  ��. Table Į�� ���(mybatis����)
<insert id="insertTeam" parameterType="java.util.Map">  
/* KOLAS �� ��� ���� Į�� �߰� ==> [/TK12002Mapper.xml] [insertTeam()] [2019.10.31, by ���¸�] */
ALTER TABLE TB_KOLAS_NMPR_STAT ADD (
T4 VARCHAR(8)  NULL         -- ��T�ڵ�
)
</insert>            
-----------------------------------------------------------------------------------------------------

--  KOLAS �ο���Ȳ �� ���� ��ȸ @@@  ==>  (��)ǰ�� ������, ���������, ���м���, �����ý�����
/* KOLAS �� ��� ���� ��ȸ ==> [/TK12002Mapper.xml] [selectTeam()] [2019.10.24, by ���¸�] */  
SELECT A.TEAM_T_CD AS ��T�ڵ�, A.TEAM_CD AS ���ڵ�, A.TEAM_NM AS ����, A.CLAS_CD_01 AS ������ڵ�
, A.TEAM_COLUMN_MAX_CNT AS "�� Į�� �ִ� ��", A.*
FROM TB_KOLAS_NMPR_STAT_TEAM A
WHERE 1=1
--    AND A.CLAS_CD_01  = 'DJ' 	/* ����(�����) */
ORDER BY A.SEQ
;  
-----------------------------------------------------------------------------------------------------

-- Į�� 10�� �߰� @@@
ALTER TABLE TB_KOLAS_NMPR_STAT ADD (
     T2 VARCHAR(8)  NULL         -- ��T�ڵ�
    , T3 VARCHAR(8)  NULL         -- ��T�ڵ�
    , T4 VARCHAR(8)  NULL         -- ��T�ڵ�
    , T5 VARCHAR(8)  NULL         -- ��T�ڵ�
    , T6 VARCHAR(8)  NULL         -- ��T�ڵ�
    , T7 VARCHAR(8)  NULL         -- ��T�ڵ�
    , T8 VARCHAR(8)  NULL         -- ��T�ڵ�
    , T9 VARCHAR(8)  NULL         -- ��T�ڵ�
    , T10 VARCHAR(8)  NULL       -- ��T�ڵ�
, T11 VARCHAR(8)  NULL        	 -- ��T�ڵ�
)
;
==============================================================================================================

- rMateChartH5 ���� ���� ��ġ
1. rMateChartH5Web_v6.0_EN_Trial �������� ���� LicenseKey ����, rMateChartH5 ����, rMateChartH5.json ������ �����Ͽ�
C:\GQMS_Tst\workspace\GQMS_Tst\src\main\nxui\GQMS_Tst\nexacro17lib\component\ ������ �ٿ��ֱ�
2. taGen.xfdl ���Ͽ��� �׽�Ʈ
==============================================================================================================

- ������ �븮�� DB ���̺� Į�� ������ �ο�(8��, 1�� ���߽�)
1. 12�� ���� ö���Ѵٰ� ��. �������̽� ����ڰ� DB ���̺� �����ؾ� �Ѵٰ� ��(����ö ���忡�� ���ض�� ��)
2. ����ö ���� ��� ==> �������̽� ����ڰ� DB ���̺� �����ϴ� ���� �翬�ϴٰ� ���� ������.
==============================================================================================================

- ����ȸ��(10��, ���� �������� 3�� ��������� �� ȸ�ǽ�)
1. ����ö ������ ȸ�� ��� �� Ÿ�� ���� ��(������ �븮, ������ ����)
2. ��� �����ؼ� �ַ� ����
1) �ÿ�: ������ �븮(��ǰ��) ==> �ڽ� ��Ʈ(�߰�ġ, ����) ���� �䱸(�����غ��ٰ� ��)
2) ����: Ȳ���� ����, ������ ���� ==> ������׷�
============================================================================================================== 
����������������������������������������������������������
+----------------------------------------------------// End //----------------------------------------------------+
����������������������������������������������������������
 
  