

�����������������������������������������������������������
+---------------------------------------------// Memo(2016.03) //----------------------------------------------------------+
�����������������������������������������������������������
 

������������������� 2016.03.01(ȭ) �۾� �������������������
---> 07:40 ~ 18:10 ==> ������

�� �����౸
06:00 ���(���� 5��: �߿�)
07:20 ����(6411��, �븲�� -> �е���)
08:20 �ű��ʵ��б�(���� �׿��� �� ġ��)
08:30 ������
08:40 ����
09:00 ����
10:30 ����
10:50 �������� ��
11:40 Ÿź üũ �ܿ� �Ž�ȭ:(���̼� �븲��): �翺 ����
12:00 �Ͱ�
12:30 �߽�(���, ��)
13:30 ���α� ����(�� 7õ��: �ʹ� ��μ� ����)
14:00 ����
17:00 ���
18:30 ������ ���� ����(�̸�Ʈ ������), �̸�Ʈ ���� 7���� ��(���� �� ����)
19:30 ����
23:00 ��ħ
==============================================================================================================
 
������������������� 2016.03.02(��) �۾� �������������������
---> 07:30 ~ 18:10 ==> 

- �Ｚ���� MES 3.0 ���� Proj[��]
- ����ں� Role����(/RoleUserMgmtView.xfdl) �۾�(/RoleUserMgmtFilter.xfdl) 
/* semcomes.adm.rolemgmt.roleusermgmt.select[����ں� Role���� ��ȸ]*/
01. ���� ����
 1) ��ǰ �޺� ���ý� Role ID ����
 2) ����� ����� ���Ͽ� �ý��� ����� �߰�
02. Grid ���� ����
1. ȸ���(bind:com_name) --> ����
2. ȸ���(����) --> ���� 
8. �ý��۸�(bind:app_id, app_name) [ds_app] --> �߰�  
9. ��ǰ��(bind:div_code, div_name) [ds_siteDiv] --> �߰� 
10. Role��(bind:role_id, bind:role_name) [ ]  --> �߰� 
11. �����(bind:com_name) --> �߰�
12. ����Ͻ�(bind:com_name) --> �߰�
13. ����(bind:com_name) --> �߰�
14. �����Ͻ�(bind:com_name) --> �߰�  
ADM_USER(ADM_����ڰ���), ADM_SYS_USER(ADM_�ý��ۻ����), ADM_ROLE(ADM_����)
--------------------------------------------------------------------------------------------------------------------------------

91. ����
 1) Role����(/RoleMgmtView.xfdl) �۾�
 2) ����ڸ���Ʈ(/UserListView.xfdl) �۾�
==============================================================================================================

- suppress �м�
1. ����: �������� �࿡�� ���� ���� �ִ� ���� ���� ���� ��쿡 �̸� �ϳ��� ���ϴ� ������ �����ϴ� �Ӽ�
suppress="1",suppress="2" , suppress="3"  
==============================================================================================================

- MES 3.0 ���� ȸ��(09:40 ~ 10:40)
1. ������: �Ｚ���� �ֵ��� å��, ������ ����, ���� ����, ������ ����, �Ȱ���
2. ����: MES 3.0 HQ �κ� �����ߴµ� ������ ���Ƽ� �Ｚ���� �׷����� ���� �ݷ�
3. ���� ���� ó���Ͽ� �ٽ� ���� �Ѵٰ� �� 
==============================================================================================================

- CHART ActiveX ��ġ �ݿ�
1. �α��� ����(/Login.xfdl ���Ͽ���)
function fn_loginSuss() 
{
	gv_sLogin= "Y";
	gv_sSite= cbo_site.value;

	gfn_CheckInstallChart(XChart1);  // CHART ActiveX ��ġ �Լ� ȣ��(����: CHART ActiveX ��ġ �Լ� ��ġ)[ó����: 2016.02.17, by ���¸�]

	close( "OK" );
}
---------------------------------------------------------------------------------------------------------

- Top5 Menu ����
1. /Dashboard.xfdl, /Dashboard2.xfdl
2. DB QUERY ==> /* semcomes.common.recentmenu.select.top5 */
---------------------------------------------------------------------------------------------------------

- G-ERP, Q-portal URL ����
G-ERP ==> http://166.79.59.37:3300/GERP_EP
Q-portal ==> http://166.79.59.37:7600/
==============================================================================================================

- (��)����Ʈ�� ������ ����� ��ȭ
1. (��)�����̵���Ÿ 3���������� �ٴϱ�� ���
2. ���� ���� ���� �ذ��� ��
3. (��)�����̵���Ÿ �̼��� ����� ��ȭ ==> 5�������� �ٳ���� �� ����
 1) ���� 200���� �λ�, ���� ����, ���� ���� ��������
==============================================================================================================

������������������� 2016.03.03(��) �۾� �������������������
---> 07:30 ~ 18:50 ==> 

- �Ｚ���� MES 3.0 ���� Proj[��]
- ����ں� Role����(/RoleUserMgmtView.xfdl) �۾�(/RoleUserMgmtFilter.xfdl) 
/* semcomes.adm.rolemgmt.roleusermgmt.select[����ں� Role���� ��ȸ]*/  
==============================================================================================================

- Top5 Menu ����
1. /Dashboard.xfdl, /Dashboard2.xfdl
2. DB QUERY ==> /* semcomes.common.recentmenu.select.top5 */
---------------------------------------------------------------------------------------------------------

- CHART ActiveX ��ġ �Լ� ���� ��ġ ����
1. ����(/Login.xfdl)
function fn_loginSuss() 
{  
	gfn_CheckInstallChart(XChart1); // CHART ActiveX ��ġ �Լ� ȣ��(����: CHART ActiveX ��ġ �Լ� ��ġ)[ó����: 2016.02.17, by ���¸�] 
	close( "OK" ); // â�ݱ�
}

2. ����(/Top_Frame_Recent.xfdl)
function Top_Frame_onload( obj:Form, e:LoadEventInfo ) 
{
	gfn_CheckInstallChart(XChart1); // CHART ActiveX ��ġ �Լ� ȣ��(����: CHART ActiveX ��ġ �Լ� ��ġ)[ó����: 2016.02.17, by ���¸�]
}
==============================================================================================================

������������������� 2016.03.04(��) �۾� �������������������
---> 07:30 ~ 18:10 ==> 

- �Ｚ���� MES 3.0 ���� Proj[��]
- ����ں� Role����(/RoleUserMgmtView.xfdl) �۾�(/RoleUserMgmtFilter.xfdl) 
/* semcomes.adm.rolemgmt.roleusermgmt.select[����ں� Role���� ��ȸ]*/  
==============================================================================================================

- ����ں� Role����(/RoleUserMgmtView.xfdl) ��ȸ ����
1. ����
#### Xplatform Exception Trace Start ####
** userid = 00001
** cause = Query Service : Fail to find queryId [semcomes.adm.rolemgmt.roleusermgmt.select] in query mappings.
** LogKey = null 
2. ����
/mapping-query-roleusermgmt.xml ���Ͽ��� �ּ��� �߸� ó���ؼ� ���� ����
<queryservice xmlns="http://www.anyframejava.org/schema/query/mapping"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://www.anyframejava.org/schema/query/mapping http://www.anyframejava.org/schema/query/anyframe-query-mapping-1.0.xsd ">
    <queries>
    
      <!-- 1. ���� : [RoleUserMgmtView] ������- ���¸�
             2. ��   �� : ����ں� Role���� ��ȸ
        --> 
        <query id="semcomes.adm.rolemgmt.roleusermgmt.delete"  isDynamic="true" mappingStyle="lower">
            <statement><![CDATA[
/* semcomes.adm.rolemgmt.roleusermgmt.delete[����ں� Role���� ����] */
DELETE
FROM ADM_USER_ROLE
 WHERE 1 = 1
AND EMP_NO = :emp_no/* ��� */ 
    AND APP_ID = :app_id/* �ý��� */
    AND DIV_CODE = :div_code/* ��ǰ���ڵ� */  
            ]]></statement>
        </query> 
        
    </queries>
</queryservice>

 </queries>		===> ������ ��(ó�� 2�� ����) @@@@
</queryservice>		===> ������ ��(ó�� 2�� ����) @@@@
==============================================================================================================

- ������ ���(21:00 ~ 21:40)
1. ����� ����(�뵿 ���׼�����, �ű�����, 010-4554-0418)
2. ���� �ݿ��� 20:30�� �湮 ��û(���� ����)
3. ������ �ѱ�(39,000��) 3�� 11��(��)���� �����ϱ�� ��
4. 3���� ������ 29,000�� ī�� ����
5. ��� ����: ����� ������(010-5387-6464)
6. ������ Ȩ������ ȸ�� ���� --> tamario2 /  h*��*16*1@
http://www.noonnoppi.com/util/logon.aspx?returnURL=http%3a%2f%2fwww.noonnoppi.com%2fMain.aspx&ssosite=www.noonnoppi.com
==============================================================================================================

������������������� 2016.03.05(��) �۾� �������������������
---> 07:40 ~ 18:10 ==> �� ���� ��

- �ָ�
03:00 ���
03:30 �Ｚ���� MES 3.0 ���� Proj ���� �۾�
09:30 ���� 
11:30 �߽�
15:30 (��)�������Ʈ �ݼ��Ϳ� �� �ø�[Grid �޺� ó�� ����]
19:00 ����: ¥���, «��(9,500��); ���ٸ� �߱��� ���
23:00 ��ħ
==============================================================================================================

- �Ｚ���� MES 3.0 ���� Proj[��]  
- ���� ����
1. Grid �޺� ó��

2. �׸����� Ư������ editype ����(edittype =combo, none)
edittype =expr:dataset.getRowType(currow)==2?'text':'none'
expr:(getRowType(currow) == '16') ? 'normal' : 'combo'

3. suppress ���� ó��
<Formats>
<Format id="default">
  <Columns>
    <Column size="50" />
    <Column size="50" />
    <Column size="50" />
    <Column size="50" />
    <Column size="100" />
  </Columns>
  <Rows>
    <Row size="24" band="head" />
    <Row size="24" />
  </Rows>
  <Band id="head">
    <Cell text="NO"/>
    <Cell col="1" text="COL0"/>
    <Cell col="2" text="COL1"/>
    <Cell col="3" text="COL2"/>
    <Cell col="4" text="COL3"/>
  </Band>
  <Band id="body">
    <Cell text="expr:currow&#32;+&#32;1"/>
    <Cell col="1" text="bind:COL0" suppress="1" suppressalign="middle"/>
    <Cell col="2" text="bind:COL1" suppress="2" suppressalign="middle,over"/>
    <Cell col="3" text="bind:COL2" suppress="3" suppressalign="middle"/>
    <Cell col="4" text="bind:COL3"/>
  </Band>
</Format>
</Formats> 
==============================================================================================================

- �Ź߲� ��ӱ�
1. �Ź߲���ӱ�/ �ڵ������̱�, ����: 4,500��(�ù�� ����, �� ��)
http://itempage3.auction.co.kr/DetailView.aspx?ItemNo=A621259905&frm3=V2
==============================================================================================================

������������������� 2016.03.06(��) �۾� �������������������
---> 07:40 ~ 18:10 ==>  

�� �����౸
06:00 ���
07:20 ����(6411��, �븲�� -> �е���)
08:20 �ű��ʵ��б�
08:30 ������
08:40 ����(������: ����, ��ö������ �ͼ� �츮���� ������ �� ����)
09:00 ���� ==> �� 3���� ��(������ ���� ���ͼ� 3���� ��: ��ü ���� 2���� ��)
11:50 ����
12:30 �߽�(������, «��: �ϰ����): �������� ������ 30���� �༭ ��¥�� ����): �ְ�ȸ�� �����ϰ� ���� ��	
	==> ����� �����(�ű��ʱ� �������� �ʹ� ��δٰ� ������û�� �ο� �־ ������ ���� �� ���شٰ�
	     ������� ©���ٰ� ��)
13:50 �������� �� 
14:30 �Ͱ� 
16:00 ����
17:30 ���
17:50 �̸�Ʈ ����(���� �巹�� 76905 ����(255cm, 59,000��) ����(�翺 ����)
19:30 ����(�����, ����: �̸�Ʈ ������ 3�� �Ĵ�)
20:10 �Ͱ�
23:00 ��ħ
==============================================================================================================

- TV ����(��Ƽ �ó�eye W4813S)
48��ġ(121.9cm) / UHD / �ܻ�����:60Hz / 400cd / ������Ϻ� 500��:1 / ����ӵ�:8ms / ����:20W(2ä��) 
/ MHL / USB���(������,����,����) / ����:HDMI(4��),USB / �β�:8.75cm / ��ռҺ�����:71.6W, ����: 429,000��
http://www.ticketmonster.co.kr/deal/256670817?opt_deal_srl=289015637&utm_source=enuri&utm_medium=affiliate
&utm_term=&utm_content=&utm_campaign=%EC%97%90%EB%88%84%EB%A6%AC_DB
==============================================================================================================

������������������� 2016.03.07(��) �۾� �������������������
---> 08:10 ~ 18:10 ==> ������ �Ȱ����� ���� ��� ���� �� Ž(����ö Ÿ�� ���)

- �Ｚ���� MES 3.0 ���� Proj[��]
- ����ں� Role����(/RoleUserMgmtView.xfdl) �۾�(/RoleUserMgmtFilter.xfdl) 
/* semcomes.adm.rolemgmt.roleusermgmt.select[����ں� Role���� ��ȸ]*/  
-------------------------------------------------------------------------------------------------------

- grd_list Grid���� �޺��� ����
1. �ý���(ds_app_id), ��ǰ��(ds_div_code)�ϰ�� ���� ���� ����
2. Role(ds_role_id)�� �ý���(ds_app_id), ��ǰ��(ds_div_code)�� ���� ���� �����.
3. ��Ÿ: grd_list Grid���� �ý���(ds_app_id), ��ǰ��(ds_div_code), Role(ds_role_id)
==============================================================================================================

- �޺� Ŭ���� �ѹ��� �޺� �ڽ� ���̱�
grd_list.dropdownCombo();// Grid Comb �ڽ��� �ѹ� Ŭ������ Display
grd_list.dropdownCalendar();// Grid �޷��� �ѹ� Ŭ������ ������ ���°� �ǵ��� ����
==============================================================================================================
  
- Ŀ��(16��)
1. (��)�����̵���Ÿ �Ű����� ����(������, ������, �Ű���)
==============================================================================================================
 
������������������� 2016.03.08(ȭ) �۾� �������������������
---> 07:20 ~ 18:20 ==>  

- �Ｚ���� MES 3.0 ���� Proj[��]
- ����ں� Role����(/RoleUserMgmtView.xfdl) �۾�(/RoleUserMgmtFilter.xfdl) 
/* semcomes.adm.rolemgmt.roleusermgmt.select[����ں� Role���� ��ȸ]*/   
==============================================================================================================

- ������ �ѱ� ù ����(21��, ��)
1. ������ ���� ���ݾ� ��
==============================================================================================================

- TV ���� �� ��ġ
1. ��Ƽ �ó�eye W4813S) 8��ġ(121.9cm), ����: 429,000��
http://www.ticketmonster.co.kr/deal/256670817?opt_deal_srl=289015637&utm_source=enuri&utm_medium=affiliate
&utm_term=&utm_content=&utm_campaign=%EC%97%90%EB%88%84%EB%A6%AC_DB
2. HDMI �������� �� �¾Ƽ� ��ȣ ������ �߸� ��.
==============================================================================================================

- Properties ȭ�� ���� ==> ��������������(/zAdminInfoView) ȭ�� ����
1. ds_listPropCol DS���� ����
M: �ʼ�, O: �Ϲ�, E:��Ÿ  
2. ds_listPropData
==============================================================================================================

1. /RoleUserMgmtView.xfdl ���Ͽ���
<Formats>
<Format id="default">
  <Columns>
    <Column size="30" />
    <Column size="40" />
    <Column size="40" />
    <Column size="80" />
    <Column size="80" />
    <Column size="150" />
    <Column size="100" />
    <Column size="117" />
    <Column size="127" />
    <Column size="139" />
    <Column size="71" />
    <Column size="98" />
    <Column size="140" />
    <Column size="98" />
    <Column size="140" />
  </Columns>
  <Rows>
    <Row size="24" band="head" />
    <Row size="24" />
  </Rows>
  <Band id="head">
    <Cell/>
    <Cell col="1" text="��ȣ"/>
    <Cell col="2" displaytype="checkbox" edittype="checkbox"/>
    <Cell col="3" displaytype="normal" text="���"/>
    <Cell col="4" displaytype="normal" text="����"/>
    <Cell col="5" displaytype="normal" text="�μ���" suppress="1"/>
    <Cell col="6" displaytype="normal" text="����"/>
    <Cell col="7" text="�ý���"/>
    <Cell col="8" text="��ǰ��"/>
    <Cell col="9" text="Role"/>
    <Cell col="10" text="����"/>
    <Cell col="11" text="�����"/>
    <Cell col="12" displaytype="normal" text="����Ͻ�"/>
    <Cell col="13" text="������"/>
    <Cell col="14" displaytype="normal" text="�����Ͻ�"/>
  </Band>
  <Band id="body">
    <Cell/>
    <Cell col="1" text="expr:currow + 1" suppress="3"/>
    <Cell col="2" displaytype="checkbox" edittype="checkbox" text="bind:chk"/>
    <Cell col="3" displaytype="normal" text="bind:emp_no" suppress="expr:fn_changeSuppress(currow, 1)"/>
    <Cell col="4" displaytype="normal" edittype="expand" style="align:left;cursor:EXPR(fn_changeCursor(currow));" text="bind:user_name" 
    suppress="expr:fn_changeSuppress(currow, 1)"/> 
    <Cell col="5" displaytype="normal" style="align:left;" text="bind:dept_name" suppress="expr:fn_changeSuppress(currow, 1)"/> <!--// 5. �μ���  //-->
    <Cell col="6" displaytype="normal" style="align:left;" text="bind:mysng_jbgd_name" suppress="expr:fn_changeSuppress(currow, 1)"/> <!--// 6. ����  //-->
    <Cell col="7" displaytype="combo" edittype="expr:fn_changeEditypes(currow)" style="align:left;background:
    EXPR(getRowType(currow)=="2"?"#ffffff":"#E6F3FFFF");background2:EXPR(getRowType(currow)=="2"?"#ffffff":"#E6F3FFFF");color:
    #003366ff;color2:#003366ff;cursor:EXPR(fn_changeCursor(currow));" text="bind:app_id" editdisplay="edit" suppress="expr:
    fn_changeSuppress(currow, 2)" combodataset="ds_app" combocodecol="app_id" combodatacol="app_name" combodisplay="display" combotype="search"/>
    <Cell col="8" displaytype="combo" edittype="expr:fn_changeEditypes(currow)" style="align:left;background:
    EXPR(getRowType(currow)=="2"?"#ffffff":"#E6F3FFFF");background2:EXPR(getRowType(currow)=="2"?"#ffffff":"#E6F3FFFF");color:
    #003366ff;color2:#003366ff;cursor:EXPR(fn_changeCursor(currow));" text="bind:div_code" suppress="expr:
    fn_changeSuppress(currow, 3)" combodataset="ds_siteDiv" combocodecol="div_code" combodatacol="div_name" combodisplay="display" combotype="search"/>
    <Cell col="9" displaytype="combo" edittype="expr:fn_changeEditypes(currow)" style="align:left;background:
    EXPR(getRowType(currow)=="2"?"#ffffff":"#E6F3FFFF");background2:EXPR(getRowType(currow)=="2"?"#ffffff":"#E6F3FFFF");color:
    #003366ff;color2:#003366ff;cursor:EXPR(fn_changeCursor(currow));" text="bind:role_id" suppress="0" combodataset="ds_role" 
    combocodecol="role_id" combodatacol="role_name_view" combodisplay="display" combotype="search"/>
    <Cell col="10" displaytype="combo" edittype="combo" style="align:left;background:
    EXPR(getRowType(currow)=="2"?"#ffffff":"#E6F3FFFF");background2:EXPR(getRowType(currow)=="2"?"#ffffff":"#E6F3FFFF");color:
    #003366ff;color2:#003366ff;cursor:pointer;" text="bind:status_code" suppress="0" combodataset="ds_roleStatus" 
    combocodecol="comm_code" combodatacol="comm_code_name_view" combodisplay="display" combotype="search"/>
    <Cell col="11" text="bind:create_user_name"/> <!--// 13. ������  //-->
    <Cell col="12" displaytype="normal" text="bind:create_date"/>
    <Cell col="13" text="bind:update_user_name"/>
    <Cell col="14" displaytype="normal" text="bind:update_date"/>
  </Band>
</Format>
</Formats> 
-------------------------------------------------------------------------------------------------

- �� �߰� @@@ 
function fn_Add() 
{ 
	v_addYn= "1";  // �ű� ����  
	var nRow = gfn_addRowWithoutUseYn( ds_list, 0 ); 

	ds_list.setColumn( nRow, "app_id", gv_sAdmApp);  // �ý���(app_id)
	ds_list.setColumn( nRow, "div_code", semco_bizDiv); // ��ǰ��(div_code)
 
	/**  �� �߰� - "USE_YN" �÷�(X)   */
	function gfn_addRowWithoutUseYn( objDs, nRow ) {
	var iRow;
	if( gfn_isNull(nRow) )iRow = objDs.addRow();
	elseiRow = objDs.insertRow( nRow );

	objDs.setColumn( iRow, "rowstatus", "I" );
	return iRow;
}
----------------------------------------------------------------------------------------------------

- Grid �޺� Editypes ���� �Լ� @@@ 
function fn_changeEditypes(row)
{
	var sDoneResult = "";

	if(ds_list.getRowType(row) == 2)  // �߰��� �� �϶� ==> ������ ��(row)�� Ÿ���� ���ϴ� �޼ҵ�(1: �ʱ� ��, 2: �߰��� ��, 4: ������ ��, 8: ������ ��)
	{
		sDoneResult = "combo";  // combo ����
		//trace("[/RoleUserMgmtView.xfdl] [fn_changeEditypes()] ==>  [41. �޺� Editypes combo�� ����] [ds_list.getRowType(row)]"+ 
		ds_list.getRowType(row) +"[sDoneResult]"+ sDoneResult );  
	}
	else
	{ 
		sDoneResult = "none";  // combo ��� ���� ����
		//trace("[/RoleUserMgmtView.xfdl] [fn_changeEditypes()] ==>  [42. �޺� Editypes none�� ����] [ds_list.getRowType(row)]"+ 
		ds_list.getRowType(row) +"[sDoneResult]"+ sDoneResult );  
	}

	return sDoneResult;
}
1. ����
expr:( getRowType(currow) == Dataset.ROWTYPE_INSERT ) ? 'expand' : 'none'
expr:( getRowType(currow) == Dataset.ROWTYPE_INSERT ) ? 'show' : 'hide'
----------------------------------------------------------------------------------------------------

- Grid �޺� Supress ���� �Լ�  @@@ 
function fn_changeSuppress(nRow, nNum)
{
	var sDoneResult = 0;
	//trace("[/grid_comboTest.xfdl] [fn_changeSuppress()] ==> [40. Supress ó��] [ds_list.getRowType(nRow)]"+ ds_list.getRowType(nRow) 
	+"[nRow]"+ nRow +"[nNum]"+ nNum );

	if(ds_list.getRowType(nRow) == 2)  // �߰��� �� �϶� ==> ������ ��(row)�� Ÿ���� ���ϴ� �޼ҵ�(1: �ʱ� ��, 2: �߰��� ��, 4: ������ ��, 8: ������ ��)
	{
	sDoneResult = 0;
	}
	else// �Ϲ� �� �϶�
	{    
	if(nNum < 1)  // nNum�� 1���� ������(Grid �޺� Supress ���� �Լ� ���� ����)
	{   
	sDoneResult = 0; // �־��� ���ڴ� �켱����(0�̸� �� �и�, 1�̸� �ֿ켱 �� �պ�) 
	}
	else
	{
	if(nNum == 2) // �ý���(app_id) 
	{
	sDoneResult = 2;  // �������� �࿡�� ���� ���� �ִ� ���� ���� ���� ��쿡 �̸� �ϳ��� ��ħ(�־��� ���ڴ� �켱����)
	}
	else if(nNum == 3) //  ��ǰ��(div_code)    
	{
	sDoneResult = 3;   // �־��� ���ڴ� �켱����
	}
	else
	{
	sDoneResult = 1; // �־��� ���ڴ� �켱����(0�̸� �� �и�, 1�̸� �ֿ켱 �� �պ�)
	} 
	}
	//trace("[/grid_comboTest.xfdl] [fn_changeSuppress()] ==> [40-1. Supress ó��(�Ϲ� ��)] [nNum]"+ nNum +"[sDoneResult]"+ sDoneResult ); 
	}

	return sDoneResult;
}

- Grid �޺� Cursor ���� �Լ�  @@@  
function fn_changeCursor(row)
{
	var sDoneResult = "";

	if(ds_list.getRowType(row) == 2)  // �߰��� �� �϶� ==> ������ ��(row)�� Ÿ���� ���ϴ� �޼ҵ�(1: �ʱ� ��, 2: �߰��� ��, 4: ������ ��, 8: ������ ��)
	{
		sDoneResult = "pointer";  // Ŀ�� ������ ����  
	else
	{ 
		sDoneResult = "";// Ŀ�� ���� ����  
	}

	return sDoneResult;
} 
==============================================================================================================
 
- Ŀ��(16��)
1. (��)�����̵���Ÿ ������ ������ ����(������, ������, �Ű���)
==============================================================================================================

- ������ �ѱ� ù ����(20:30, ��)
1. ������ ���� ���ݾ� ��
==============================================================================================================

- TV ���� �� ��ġ
1. ��Ƽ �ó�eye W4813S) 8��ġ(121.9cm), ����: 429,000��
http://www.ticketmonster.co.kr/deal/256670817?opt_deal_srl=289015637&utm_source=enuri&utm_medium=affiliate&utm_term=
&utm_content=&utm_campaign=%EC%97%90%EB%88%84%EB%A6%AC_DB
2. HDMI �������� �� �¾Ƽ� ��ȣ ������ �߸� ��.
==============================================================================================================

������������������� 2016.03.09(��) �۾� �������������������
---> 07:30 ~ 18:50 ==>  

- �Ｚ���� MES 3.0 ���� Proj[��]
- ����ں� Role����(/RoleUserMgmtView.xfdl) �۾�(/RoleUserMgmtFilter.xfdl)   ==> �Ϸ� @@@
/* semcomes.adm.rolemgmt.roleusermgmt.select[����ں� Role���� ��ȸ]*/   
==============================================================================================================
 
- ����Ű ��â ����(/������ - �⺻(/zPattern04ApprView.xfdl ���� ����)
1. ����Ű, ����
<Col id="miskey">E100ACPG02SPCA201601142038472777</Col>
 <Col id="status">not exist</Col>
==============================================================================================================

- autoupdatetype(Grid �Ӽ�)
1. ����: �׸��忡�� �޺�, �޷��� ���õ��� ��, ���ε�� �����ͼ����� setColumn �޼ҵ带 �����ϴ� ������ �����ϴ� �Ӽ� 
 1) autoupdatetype: itemselect ==> �޺��� �޷¿��� Ư�� �׸��� ���õǾ� ����Ǵ� ������ setColumn�� �մϴ�.
==============================================================================================================

- Table scipt ��ȸ(Toad ����)
1. SELECT * FROM ADM_USER_ROLE A
2. Ctrl Ű�� ������ ADM_USER_ROLE ���̺� Ŭ��
3. ���̺� Scipt ȭ�� ��â�̶�
==============================================================================================================
 
������������������� 2016.03.10(��) �۾� �������������������
---> 07:20 ~ 18:50 ==>  

- �Ｚ���� MES 3.0 ���� Proj[��]
- ����ں� Role����(/RoleUserMgmtView.xfdl) �۾�(/RoleUserMgmtFilter.xfdl)   ==> �Ϸ� @@@
/* semcomes.adm.rolemgmt.roleusermgmt.select[����ں� Role���� ��ȸ]*/   
==============================================================================================================
    
- �����۾� ��ûó��[��] 
2. 378��(���Ƿ�[010-9415-7203]) "�ش�ȭ�鿡�� ���� ��½� LOT Cpk �� �����ߴµ� sheet�� 3�� ���ɴϴ�.
sExcelSheetName �� �Է¾��������� ���������� ���ɴϴ�." 
- ����: ���м�Data��ȸ(/StatisticAnalysisDataInquiryRawdataView.xfdl)
 1) ����ڿɼ�: �����׽�Ʈ(���Ƿ�)
 2) Raw Data(Tab) > Cir > ����: Ŭ��(��â)
 3) [Ca] Raw Data_1: ���� > OK: Ŭ��
- ó��: SheetName�� Ư�� ������ "["�� ������ �̿� ���� ���� ���ϴ�.
������ ������ ������ SheetName�� "["�� ������ ������ �ȵ˴ϴ�.(���� SheetName ������ Ư��)
��: [Ca] Raww Dataa_1  ==> (Ca) Raww Dataa_1 �� �����ϸ� ��
==============================================================================================================
 
- ���Ƿ�(010-9415-7203)
1. 377��
��ް���(/GradeManageView.xfdl)
TPS ���μ��� TYPE #4 - �뺸 ==> cpy �� paste
 oncolumnchanged�� �� Ž...
 (��Ŀ�� �� ������ ��ü���� �ȵ�) 
==> auotoupdatetype: none���� comboselect�� ���� --> 
TPS ���μ��� TYPE #4 - �뺸  ==> alert �� �� 
==============================================================================================================
 
������������������� 2016.03.11(��) �۾� �������������������
---> 07:20 ~ 18:20 ==>  

- �����۾� ��ûó��[��]
1. 377��(���Ƿ�[010-9415-7203] ����) "���� �ٿ��ֱ�� �̻�߻� Process(OOC) ����� �����ͼ�  oncolumnchanged �� Ÿ�ߵǴµ� �̺�Ʈ 
ȣ���� �ȵ˴ϴ�.  �ش� ȭ��ó�� �ٿ��ֱ�� ���������ᰡ �߻��մϴ�. ( Hold Type(OOC) : ��Ʈ������ 
�̻�߻� process(OOC) ���� TPS ���μ��� TYPE#4-�뺸�� �ٿ��ֱ�� ))"
- ����: ��ް���(/GradeManageView.xfdl)
TPS ���μ��� TYPE #4 - �뺸 ==> cpy �� paste
 oncolumnchanged�� �� Ž... (��Ŀ�� �� ������ ��ü���� �ȵ�) 
- ó��: SheetName�� Ư�� ������ "["�� ������ �̿� ���� ���� ���ϴ�.
������ ������ ������ SheetName�� "["�� ������ ������ �ȵ˴ϴ�.(���� SheetName ������ Ư��)
��: [Ca] Raww Dataa_1  ==> (Ca) Raww Dataa_1 �� �����ϸ� ��
==============================================================================================================

1. 3817��(������[010-2466-7369] ����) "�������� ������ ī�� �� �׸��忡 �ٿ��ֱ� �Ҷ� �޺� ���ϰ�� oncolumnchanged 
�̺�Ʈ�� �߻����� ����. - �������� �Ǿ���.
(�ڵ常 ī�� �� �ٿ��ֱ�� name�÷��� �ڵ忡 �ش��ϴ� name���� oncolumnchanged �̺�Ʈ���� �����ϰ� ����.)"
- ����: 
- ó��: �������� ������ ī�� �� �׸��忡 �ٿ��ֱ� �Ҷ� �޺� ���� ��� ���� �޺��� text�� ����� ������ �޺� �ڵ尪����
�����ϴ� �̺�Ʈ�� �߻��մϴ�. �׷��� orgDataset.enableevent = false;�� �Ͽ� oncolumnchanged �̺�Ʈ�� �߻����� �ʽ��ϴ�. 
����, Grid �޺��� oncolumnchanged �̺�Ʈ�� �߻��ϰ� �Ǹ� oncolumnchanged �Լ� ���� ���μ����� ���Ƽ�
�ý����� �ٿ�Ǵ� ��찡 ���ܼ� Grid �޺��� ���ؼ� oncolumnchanged �̺�Ʈ�� ���ҽ��ϴ�.

- grd_std.xjs ���Ͽ���
/*------------------------------------------------------------------------------
* ��   ��:copy / paste �� ���� keydown 
------------------------------------------------------------------------------*/
function event_onkeydown(obj:grd_std, e:KeyEventInfo)
{ 
	if(e.ctrlKey == true && e.keycode == 67 && fv_copyandpasteFlage=="true")// Ctrl + C
	{
		xfn_ClipboardCopy(obj, strSeparator); 
	} 
	else if( e.ctrlKey == true && e.keycode == 86 && fv_copyandpasteFlage=="true")// Ctrl + V
	{ 
		xfn_ClipboardPaste(obj, strSeparator, arrEditColor);
	}
}  

// /*********************************************************************
//  * ��� : Clipboard�� Copy�� ������ �׸����� ���õ� ������ Paste �Ѵ�.  
//  *********************************************************************/
function xfn_ClipboardPaste(objGrid, strSeparator, arrEditColor, isEdit)
{
	// Combo �ٿ��ֱ� �߰� �� valid üũ
	if (strEditType == "combo")
	{
		   var comboDsName = this.getCellProperty( "body", nCell, "combodataset" );
		   var objComboDs  = null; 
		   var dataColumn  = "";
		   var codeColumn  = "";

		   if (!gfn_isNull( oBizForm[comboDsName])) 
		   {
			objComboDs = eval(comboDsName);
			dataColumn =  this.getCellProperty( "body", nCell, "combodatacol" );
			codeColumn =  this.getCellProperty( "body", nCell, "combocodecol" );

			var codRow  =  objComboDs.findRow(codeColumn, strValue) ;
			var dataRow =  objComboDs.findRow(dataColumn, strValue) ;

			// combo copy�� code�� �´�
			orgDataset.enableevent = false;   // ������Ʈ�� �̺�Ʈ�� �߻���Ű�� ����  @@@@
			if ( codRow >= 0 )
			{
			orgDataset.setColumn(nRow,strColID,"");
			orgDataset.setColumn(nRow,strColID, strValue);
			}
			else if ( dataRow >= 0 ) // ���� ��� name�� copy�� ���
			{
				orgDataset.setColumn(nRow, strColID,"");
				orgDataset.setColumn(nRow, strColID, objComboDs.getColumn(dataRow, codeColumn) );   
				// �ش� strColID Į���� objComboDs DS���� �ҷ���  codeColumn���� �Է� 
			}else{
				orgDataset.setColumn(nRow,strColID,"");
				orgDataset.setColumn(nRow,strColID,strValue);
			}
			orgDataset.enableevent = true;// ������Ʈ�� �̺�Ʈ�� �߻� ��Ŵ  @@@@ 
		 }
	}
}
==============================================================================================================

- SVN ��ũ ����(eclipse����)
1. igrnore�� svn �� ������ �ö� ���� ���� ���¿��� ����� �մϴ� 
��, svn�� �ִ� org.eclipse.wst.common.component �� ���� �� igrnore �� ���ָ� Ŀ�Խ� ����  
2. ���: ��WorkSpace > ������Ʈ ���� > .setting > org.eclipse.wst.common.component�� ���Ͽ� ���� ������ ���� ������ ����ִ�. 
C:\SEMCO_WEB_DEV\workspace\DEV-LOCAL_RPT\.settings 
==============================================================================================================
 
- ���� ���� �ϱ�(/ESCORT����)
Taregt IP(���� PC IP): 16.3.53.119,
Password:==> �ʿ� ���� @@@
==============================================================================================================

- TeeChart ����ȸ��(15:10 ~ 30)
1. Histogram ���� ����
1. multi Histogram ���� ����(�輺�� ����: BoxPlot Chart ����)
2. SPC���� ���� ���� ��û ==> ����: 4�� 1��
4. ����
 1) Histogram ����(/amugae30.xfdl) 
 2) ���м�Data��ȸ(/StatisticAnalysisDataInquiryRawdataView.xfdl) > CHART_Chart(/StatisticAnalysisChartSinglePopup.xfdl)
==============================================================================================================

- PC ���� �н����� ����
1. PC ���� > Del or F2 > Set Bios(��â) 
2. ȭ��ǥŰ�� ���� "PASSWORD SETTING" ���� > �н����� ���� > "SAVE & EXIT SETUP" ����
==============================================================================================================

������������������� 2016.03.12(��) �۾� �������������������
---> 07:40 ~ 18:10 ==> 

�� �����౸
03:00 ���
03:10 IBK_ORMS �۾�
05:40 ���
06:00 ����(6411��, �븲�� -> �е���)
07:00 �ű��ʵ��б�
07:05 ����(�������� ȸ����: �ʰ� ���Դٰ� ����� ����� ��)
	==> 4�� �԰� ��� ���ݼ��� �ε��ļ� �Ӹ� �� �ٴڿ� �ε�ħ --> ��Ű�� �� �ٲ� �شٰ� �Ҹ� ħ
	--> ��Ű�� �ʰ� ���� �Ĺ�� �ٲ�
07:30 �ѹ��� ��� ������ ����� �� ������� �ٲپ��ٰ� ȭ�� --> ���� �� ���� ��Ű�� ���� �ϳİ� �´��� �� 
08:00 ���� ==> �� 3���� ��
08:30 ����
10:30 �Ͱ�
10:50 ����(��Ҿư��ǿ�): ���� ����
11:10 �� ����(�Ｚ�����Ȱ��ǿ�): �翺 �� �˻�(����, �ǰ��ؼ� ���ð� ���� �ִٰ� ��)
11:30 ����(�ѵ������ھ౹)
12:00 ����(���̼�)
12:50 ����(���[�ѹ��� �ƿ�����] ����: �� 5õ��)
13:00 �Ͱ�
13:10 �߽�(ī�� ����)
13:30 ������������ ��ȭ�ؼ� ��� ���ݼ��� �ε��ļ� �Ӹ� �� �ٴڿ� �ε��ļ� ������ �ʱ� ���� �ִٰ�
	��а� �౸ �� �����ٰ� ��(��� �İ� ����) ==> �Ż� ����ȸ �� ������� �����
15:30 ����
18:30 ���
19:10 ����
23:00 ��ħ
==============================================================================================================

- �Ｚ���� MES 3.0 ������Ʈ ����Ȳ ����(05��, ��)
1. (��)�����̵���Ÿ �̼��� ���忡�� TeeChart ���߷� ���� ���濡 ���� ���� ����
==============================================================================================================

- TV ��ǰ�� �ø���(05��, ����)
1. TV ��ǰ�� �ۼ� �� ���� ������
==============================================================================================================
 
- ��Ʈ�� ��ġ�� ��ġ(�Ｚ���� ȸ�� ��Ʈ��)
1. ũ���� �̴� CRF-103(��Ʈ�� ��ġ��) -->����: 25,500�� 
http://cafe.naver.com/sssens/47869
--------------------------------------------------------------------------------------------------

1. �Ｚ���� ȸ�� ������ ���峭 ������ ������
==============================================================================================================

- ��Ʈ�� ��ġ�� ����
1. [ICODA] �ڽ�(COSY) NS906 ��Ʈ�� ��ħ��, ����: 8,050��, ������ũ
http://www.interpark.com/product/MallDisplay.do?_method=detail&sc.shopNo=0000100000&sc.dispNo=016001&sc.prdNo=2387122212
==============================================================================================================

������������������� 2016.03.13(��) �۾� �������������������
---> 07:40 ~ 18:10 ==> 

- �Ͽ���
06:00 ��� 
06:10 IBK_ORMS �۾�
07:06 �븲3�� ����ȸ �ѹ� Ȳ���(010-3556-1982)���� ��ȭ ==> ȸ�� ���� ����(������ �Ȼ� ���� ���ٰ� ����)
	--> ���Ժ� 15����, �� ȸ�� 2����
09:00 ����
10:00 ����(ī�� ����)
11:00 �����̰� ��������Ʈ �����Ϳ��� ���� ���� �ִµ� ��� �������� �ͼ� �������� "��, �ϼ���?"���
	�ؼ� ���޾Ƽ� ȭ��(2���޿� �и� ������ �� �������� ���ߵ� �Ͱ� �ο��� ����)
11:30 ��쳪(��[8õ��], ����[5õ]): �����Ǿ� ��쳪
	==> ���� ó�� ��쳪�ͼ� �� ������ �����
11:10 ���(�� ü��: 72,65kg, ���� ü��: 15kg)
12:00 ��� ����
12:10 ����(�ް� 2��, ���� ���� ��, ����)
12:30 ����
12:30 ����ö(���ε����д����� -> ������Ա���)
13:30 �߽�(���κ�, ��Ǭ�� �����, ��� 3��): ������
13:50 ����(���̼� ��õ1ȣ��)
14:30 ����ö, ����(������Ա��� -> �븲��)
15:00 �Ͱ�
19:00 ����
23:00 ��ħ
==============================================================================================================

- USB ������ CD�� ����
1. Coms USB������CD��, ����: 17,580��, 11����
http://www.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=41933409&xfrom=&xzone=
==============================================================================================================

������������������� 2016.03.14(��) �۾� �������������������
---> 07:30 ~ 18:50 ==>  

- �Ｚ���� MES 3.0 ���� Proj[��]
- TeeChart �м�[��]
1. Histogram ����(/amugae30.xfdl, /amugae32.xfdl)
2. ���м�Data��ȸ(/StatisticAnalysisDataInquiryRawdataView.xfdl) > CHART_Chart(/StatisticAnalysisChartSinglePopup.xfdl)
==============================================================================================================

- �����̵����� Ȯ��(12��)]
0. �ڵ���ü ���� �ٽ� �ѹ� Ȯ���� ��
1. �����̵�����  ==> ����������(https://www.payinfo.or.kr/guide/useguide3.do)���� 9�ú��� 17�ñ��� ����
2. �������� ����Ʈ OTP Ÿ�� ���� ó�� Ȯ�� ==> ����
-------------------------------------------------------------------------------------------------------

- �ڵ����� �����û �������� 
����ȸ����¹�ȣû�����������¹�ȣ
SC����130205***41PCA������(��)�������� 1104377***30
SC����130205***41��ȭ������������� 1104377***30
SC����130205***41KB����ī��������� 1104377***30
SC����130205***41SK�ڷ��޽������� 1104377***30 
==============================================================================================================

������������������� 2016.03.15(ȭ) �۾� �������������������
---> 07:50 ~ 18:50 ==> ��� �� ���ڼ� �������� �� ����(30�� �ɾ ���), ������ �۾��ؼ� IBK_ORMS ���� ���� �Ϸ�

- �Ｚ���� MES 3.0 ���� Proj[��]
- TeeChart �м�[��] 
1. ���м�Data��ȸ(/StatisticAnalysisDataInquiryRawdataView.xfdl) > CHART_Chart(/StatisticAnalysisChartSinglePopup.xfdl)
==> ��â�� ����(011-9815-1669)
-------------------------------------------------------------------------------------------------------

- ���м�Data��ȸ Histogram DB���� ����
1. ���� �׷����� ���� ==> DB���� ����Ÿ �м��� ��
==============================================================================================================

- Histogram ����
1. �ű�ȣ ����(16:30, A9 �湮�Ͽ� 10�а� ���� ����
==============================================================================================================

������������������� 2016.03.16(��) �۾� �������������������
---> 07:30 ~ 18:50 ==> MSI ��Ʈ�� ����

- �Ｚ���� MES 3.0 ���� Proj[��] 
1. ���м�Data��ȸ(/StatisticAnalysisDataInquiryRawdataView.xfdl) > CHART_Chart(/StatisticAnalysisChartSinglePopup.xfdl)  
==============================================================================================================

- MSI ��Ʈ��(MSI GT683DX-i7) ���峲
08:00 MSI ��Ʈ�� ���� �ٽ� ������ ����ũ �Ͼ ���峲
09:00 (��)�����̵���Ÿ �̼��� ���忡�� ����
10:00 (��)�����̵���Ÿ ������ ������ �߰��� �����ϰ� �ִ� ��Ʈ�� �μ� ����
==> 
15:00 MSI ��Ʈ��(MSI GT683DX-i7) �Ｚ���� �ݼ��Ϳ��� ����Ÿ ��� ����
16:50 ���� -> ���� �Ｚ���� �ݼ��Ϳ��� ��Ʈ�� SSD Raw ���� ���شٰ� ��(16�ÿ� ã�Ƽ� ��Ʈ�Ͽ� ���� �� ������ ��)
17:00 ��� ���Ϸ� ���α׷� �缳ġ
18:50 ���
----------------------------------------------------------------------------------------------------------

- (��)�����̵���Ÿ���� ���� ���� ��Ʈ��
1. �𵨸�: Lenovo G580
2. S/N: CB19797956
- PC ����
1. ������ȣ:  2997471102659
2. �𵨸�: 20150 
==============================================================================================================

- MES 3.0 Prj IP �ּ� �� ����
1. IP �ּ�: 16.3.70.30
2. S/M: 255.255.255.0
3. GW: 16.3.70.1
4. �⺻ DNS: 203.241.132.34
 ���� DNS: 203.241.135.130
==============================================================================================================
  
- escort���� 
1. mySingle ID: ZZ2016101187, mySingle ��ȣ: ZZ101187 
==============================================================================================================

- SVN ����
1. ZZ009169, / ZZ009169
==============================================================================================================
 
- �����ػ� ��̺��� �ڵ���ü ���� ���� ��û
1. ��ǰ��: ����� �¾ر¾��CI����(Hi1304)(�����ػ�, ������)
2. ���� ����: SC����
3. ���� ����: ��������: 110-437-783130(110437783130), ������: ���¸�
==============================================================================================================

- �Ǻ� ��ȯ ó��(���� �Ｚ���� �μ� �ǿ� �湮)
1. ����: � ������
2. ó��: �󺥴� ũ�� ����(�������� �Ǻ���ȯ ġ����)
==============================================================================================================

- �̴� Ű���� ����
1. [B225856186] Actto ���� �̴� Ű����(KBD-36), ����: 11,850��
http://itempage3.auction.co.kr/DetailView.aspx?itemNo=B225856186&frm3=V2
2. insert Ű ����, function Ű ����
==============================================================================================================

������������������� 2016.03.17(��) �۾� �������������������
---> 07:30 ~ 18:50 ==>  

- �Ｚ���� MES 3.0 ���� Proj[��] 
1. ���м�Data��ȸ(/StatisticAnalysisDataInquiryRawdataView.xfdl) > CHART_Chart(/StatisticAnalysisChartSinglePopup.xfdl) 
-------------------------------------------------------------------------------------------------------

- ���м�Data��ȸ Histogram DB���� ����
1. ���� �׷����� ���� ==> DB���� ����Ÿ �м��� ��
==============================================================================================================

������������������� 2016.03.18(��) �۾� �������������������
---> 07:30 ~ 18:50 ==>  �����, Ű���� �Ｚ���� Prj�� ���� ��

- �Ｚ���� MES 3.0 ���� Proj[��] 
1. ���м�Data��ȸ(/StatisticAnalysisDataInquiryRawdataView.xfdl) > CHART_Chart(/StatisticAnalysisChartSinglePopup.xfdl) 
==> 1�� ���� �Ϸ�
-------------------------------------------------------------------------------------------------------

- ���м� Data��ȸ���� Histogram ����
==============================================================================================================

- Histogram ���� ȸ��
1. ������: ��â�� ����(011-9815-1669), �Ű��� ����(010-3820-4280, ������ ����Ʈ)
2. ���м� Data��ȸ���� Histogram ���� ����
3. �߰� �䱸 ����
01. ���ڽ�
02. X�� ����
==============================================================================================================

- IP �ּ�, Mac Address(XPlatform����)
var objExtCommon = new ExtCommon(); 
trace("[/Login.xfdl] [fn_loginSuss()] ==> [IP�ּ�(sIpAdress)]"+ objExtCommon.getIPAddress() 
+"[Mac Address]"+ objExtCommon.getMacAddress() +"[IP, Mac Address)]"+ objExtCommon.getIPAdapterInfo() );   
==============================================================================================================
 
- �����, Ű���� �Ｚ���⿡ ����
1. ������ �ۼ�
2. LG  ����� S/N
3. actto Ű���� S/N
==============================================================================================================

������������������� 2016.03.19(��) �۾� �������������������
---> 07:40 ~ 18:10 ==> 

�� �����౸
04:00 ���
04:10 XPlatform ���� ���� �۾�
06:10 �����  
06:30 �븲3�� ���
06:50 �븲3�� ����ȸ �ѹ�, ȸ����� �λ�
07:00 ������: �ʹݿ� ������ �ߴµ� �ణ ������ ��, �Ĺݿ� ���� ���ַ� ���� ��.
07:50 ����
08:10 ��� �Ĵ�(����ȸ ���� ��)
08:40 ���������� ����, ���ɸ�(����ȸ ���� ��)
09:40 �Ͱ� ==> SK ��ε��� ��簡 �̹� �Դ� ���ٰ� ��
10:40 SK ��ε��� ��簡 �ٽ� �ͼ� KT �������� ��ġ���ְ� ��(������: 010-3825-0717)
	==> KT ���ͳ� ������ �� 
13:00 �߽�(¥��� 3�׸�(13,500��): ���� ���� ���)
14:00 ����
17:30 ���
18:20 ����ö(�븲�� <-> ������Ա���)
18:50 ����(��� ����: ���ѵ���): �翺, ����
19:40 ����(��վƿ﷿: Y���� 2��)
20:30 �Ͱ�
22:40 XPlatform ���� ���� �۾�
01:00 ��ħ
==============================================================================================================

- ���ͳ� ��ü(SK ��ε���)
1.  [���� ��������] 3�� 19��(��) 10:30 Home����(�湮���) �湮���� 
[�ű԰��� ��ǰ�ȳ�]
�� B���ͳ�
�� ������: 3��
�� �ΰ����� ��û����: ����Ʈ��
�� ����ǰ: �ż��� ����� ��ǰ�� 15����(150,000)

�� B tv
�� ������: 3��
�� ��ǰ��: (N)����Ʈ_UHD2
�� �ΰ����� ��û����: ���������(IDS)
-----------------------------------------------------------------------------

[�߰� �ȳ�����]
�� ������ û������ ��û�Ͻ� ���񽺿� ���� �űԼ�ġ�� û��(ȸ����)�˴ϴ�.

�� ����ǰ�� ���� �� ���޵ǹǷ� �������ڿ� ���� �߼� ������ �� �ֽ��ϴ�.

�� ������ ������� Ÿ�� ����(KT,LG,�������̺� ��)�� Ÿ�翡 ���� ������û�� �ϼž� �մϴ�. (��, ��ȣ�̵� ��ȭ�� �ڵ�������)

�� �����Ⱓ�� ������ �ش����ο� ���� ���ι�ȯ���� û���Ǹ�, 1�� �̳� �����ÿ��� ����ǰ�� ���� ������� û���˴ϴ�.

�� ��ǰ/����ǰ ���� ���� : ����Home������(M)(02-1600-0216)
==============================================================================================================

- XPlatform ���� ���� @@@
1. 01. ActiveX ���(/XP-ActiveX-Install.jsp ���Ͽ���)
http://127.0.0.1:9080/XP-ActiveX-Install.jsp
<SCRIPT LANGUAGE="javascript">
function fn_load()
{ 
	XPlatformAXCtrl.xadl = "http://127.0.0.1:9080/EDU_XP_Deploy/XP_Source/RIA_Project/RIA_Project.xadl";   // ADL ���� @@@
	alert("[/XP-ActiveX-Install.jsp] [fn_load()] [01. ActiveX ��� ADL ����_01(XPlatformAXCtrl.xadl)]"+ XPlatformAXCtrl.xadl );

	//autosize
	XPlatformAXCtrl.autosize = true;
 
	//key
	XPlatformAXCtrl.key = "RIA_Project";

	//retry
	XPlatformAXCtrl.retry = 2;
 
	//timeout
	XPlatformAXCtrl.timeout = 30;

	//run, getvariablevalue
	XPlatformAXCtrl.run();	 
	}
</SCRIPT>	

<SCRIPT LANGUAGE="JavaScript">
	document.write('<OBJECT ID="XPlatformAXCtrl" CLASSID="CLSID:7E0D6AB0-6E1E-441C-969A-CD85DCA58DFB" ');
	document.write('width="90%" height="90%" ');
	document.write('CODEBASE="http://127.0.0.1:9080/EDU_XP_Deploy/XP_Module/XPLATFORM9.2.1_SetupEngine.cab#VERSION=9.2.1.120"> ');
	document.write('</OBJECT>');
</SCRIPT>
-------------------------------------------------------------------------------------------------------------

2. 02. Runtime ���(/XP-Runtime-Install.jsp ���Ͽ���)
http://127.0.0.1:9080/XP-Runtime-Install.jsp
<SCRIPT LANGUAGE="javascript"> 
function fn_make_shortcut()
{ 
	XLauncher.key = "RIA_Project"; 
	XLauncher.version = "9.2.1";   // XLauncher ����
	
	XLauncher.xadl = "http://127.0.0.1:9080/EDU_XP_Deploy/XP_Source/RIA_Project/RIA_Project.xadl";   // ADL ���� @@@ 
	alert("[/XP-ActiveX-Install.jsp] [fn_load()] [02. Runtime ��� ADL ����_01(XLauncher.xadl)]"+ XLauncher.xadl );
	
	XLauncher.componentPath = "%USERAPPLOCAL%\\TOBESOFT\\RIA_Project\\Component\\";    // component�� ���� PC�� �ٿ�ε�Ǵ� ���
	// USERAPPLOCAL ==> C:\Users\TAMA\AppData\Local
	// C:\Users\TAMA\AppData\Local\TOBESOFT\RIA_Project\Component ��ο� Component dll ������ ������
 	
	XLauncher.loadingimage="http://127.0.0.1:9080/EDU_XP_Deploy/image/loading_img.gif";		// loading image 
	
	XLauncher.makeshortcut("RIA_Project","http://127.0.0.1:9080/EDU_XP_Deploy/image/logo.ico", "desktop");	 // ����Ű ������ @@@
 
	XLauncher.launch(); 
	self.close(); 
}  
</SCRIPT>

<BODY onload="fn_make_shortcut()">

<SCRIPT LANGUAGE="JavaScript">
	document.write('<OBJECT ID="XLauncher" CLASSID="CLSID:A30D5481-7381-4dd9-B0F4-0D1D37449E97" ');
	document.write('width="0" height="0"  ');
	document.write('CODEBASE="http://127.0.0.1:9080/EDU_XP_Deploy/XP_Module/XPLATFORM9.2.1_XPLauncher.cab#VERSION=2015,12,29,1"> ');
	document.write('</OBJECT>'); 
</SCRIPT>t.write('</OBJECT>');
</SCRIPT>   
==============================================================================================================

- XPlatform ���� ����[HS_ERP_Deploy] @@@
1. 01. ActiveX ���(/XP-ActiveX-Install.jsp ���Ͽ���) 
http://127.0.0.1:9080/HS_ERP_Deploy/XP-ActiveX-Install.jsp

<SCRIPT LANGUAGE="javascript">
function fn_load()
{ 
	XPlatformAXCtrl.xadl = "http://127.0.0.1:9080/HS_ERP_Deploy/XP-Source/HS_ERP/HS_ERP.xadl";   // ADL ���� @@@
	alert("[/XP-ActiveX-Install.jsp] [fn_load()] [HS_ERP_Deploy] [01. ActiveX ��� ADL ����_01(XPlatformAXCtrl.xadl)]"+ XPlatformAXCtrl.xadl );

	//autosize
	XPlatformAXCtrl.autosize = true;
 
	//key
	XPlatformAXCtrl.key = "HS_ERP";

	//retry
	XPlatformAXCtrl.retry = 2;
 
	//timeout
	XPlatformAXCtrl.timeout = 30;

	//run, getvariablevalue
	XPlatformAXCtrl.run();	 
	}
</SCRIPT>	

<SCRIPT LANGUAGE="JavaScript">
	document.write('<OBJECT ID="XPlatformAXCtrl" CLASSID="CLSID:7E0D6AB0-6E1E-441C-969A-CD85DCA58DFB" ');
	document.write('width="90%" height="90%" ');
	document.write('CODEBASE=http://127.0.0.1:9080/HS_ERP_Deploy/XP-Module/XPLATFORM9.2.1_SetupEngine.cab#VERSION=9.2.1.120"> ');
	document.write('</OBJECT>');
</SCRIPT
-------------------------------------------------------------------------------------------------------------

2. 02. Runtime ���(/XP-Runtime-Install.jsp ���Ͽ���)
http://127.0.0.1:9080/HS_ERP_Deploy/XP-Runtime-Install.jsp

<SCRIPT LANGUAGE="javascript"> 
function fn_make_shortcut()
{ 
	//alert("[/XP-ActiveX-Install.jsp] [fn_make_shortcut()] [TEST_01]");
 	
	XLauncher.key = "RIA_Project"; 
	XLauncher.version = "9.2.1";   // XLauncher ����
	
	XLauncher.xadl = "http://127.0.0.1:9080/HS_ERP_Deploy/XP-Source/HS_ERP/HS_ERP.xadl";   // ADL ���� @@@  
	alert("[/XP-ActiveX-Install.jsp] [fn_load()]  [HS_ERP_Deploy] [02. Runtime ��� ADL ����_01(XLauncher.xadl)]"+ XLauncher.xadl ); 
	
	XLauncher.componentPath = "%USERAPPLOCAL%\\TOBESOFT\\HS_ERP\\Component\\";    // component�� ���� PC�� �ٿ�ε�Ǵ� ���
	// USERAPPLOCAL ==> C:\Users\TAMA\AppData\Local
	// C:\Users\TAMA\AppData\Local\TOBESOFT\HS_ERP\Component ��ο� Component dll ������ ������
 	
	XLauncher.loadingimage="http://127.0.0.1:9080/HS_ERP_Deploy/image/loading_img.gif";		// loading image 
	
	XLauncher.makeshortcut("HS_ERP","http://127.0.0.1:9080/HS_ERP_Deploy/image/logo.ico", "desktop");	 // ����Ű ������ @@@
  
	XLauncher.launch();
	//alert("[/XP-ActiveX-Install.jsp] [fn_make_shortcut()] [TEST_end]");
	//se
</SCRIPT>

<BODY onload="fn_make_shortcut()">

<SCRIPT LANGUAGE="JavaScript">
	document.write('<OBJECT ID="XLauncher" CLASSID="CLSID:A30D5481-7381-4dd9-B0F4-0D1D37449E97" ');
	document.write('width="0" height="0"  ');
	document.write('CODEBASE="http://127.0.0.1:9080/EDU_XP_Deploy/XP-Module/XPLATFORM9.2.1_XPLauncher.cab#VERSION=2015,12,29,1"> ');
	document.write('</OBJECT>'); 
</SCRIPT> 
==============================================================================================================

- jsp ���� ����
1. ����
HTTP Status 500 - java.lang.ClassNotFoundException: org.apache.jsp.XP_002dActiveX_002dInstall_jsp

2. ����:
java.lang.ClassNotFoundException: org.apache.jsp.XP_002dActiveX_002dInstall_jspp ��Ĺ���� ���� �Ľ̵� ��������
������ ���� ������ ���乮���Դϴ�. 

3. ��ġ:
XP-ActiveX-Install.jsp ������ �����ϰ� ������ ������� ��
http://127.0.0.1:9080/XP-ActiveX-Install.jsp
http://127.0.0.1:9080/XP-Runtime-Install.jsp 
---------------------------------------------------------------------------------------------------------

1. ��Ŭ���� ������ java jre ������ �� �� �� ��� �Ľ��� �ȵǾ� ���� ���� ������ �߻��� �� �� �ֽ��ϴ�.
2. �ش��ϴ� Ŭ������ ���� ����Դϴ�.
3. WEB-INF/classes �� Ŭ���� �н������� �ȵ� ��쿡�� ������ �� �� �ֽ��ϴ�.   
    ������Ʈ ���� �� ������ ��ư(properties) â -> java build path -> source tab �ؿ� ��� ����
==============================================================================================================

- ���콺 �е� ����
1. [A866333967] wezel WEZEL WZ-GMP11m ���콺�е�(��), ����: 5,680��
http://itempage3.auction.co.kr/DetailView.aspx?itemno=A866333967&frm3=V2
==============================================================================================================

������������������� 2016.03.20(��) �۾� �������������������
---> 07:40 ~ 18:10 ==> �븲3�� ����ȸ ����

�� �����౸
06:00 ���
06:30 ������(����APT -> �븲���)
06:50 �븲���
07:00 ������ 
07:30 ���� ==> 3������(�ּ��� ���ϰ� �� �ߴٰ� ��)
10:00 ����
10:30 �߽�(�����屹: �������屹) ===> ����ȸ���� ��
--> �̼��� ȸ���� ���� ��� ����� ���� ������ ������ �ɼ� �ִٰ� ��.(������ ����)
12:10 ����  
12:30 �Ͱ�
13:40 ����
16:40 ���
17:30 ����(���̼� �븲��)
19:00 ����: �����屹(2�׸�, ����ũ �ƿ�): �������屹
22:00 ���ͳ� ���� ==> ���콺 Ŭ���� �� �ȵǰ� �ϴ� ���̷��� �߻�(���콺�� Ŭ���ϸ� ���� ������ ��)
23:00 ��ħ
==============================================================================================================

 ������������������� 2016.03.21(��) �۾� �������������������
---> 07:30 ~ 18:50 ==>

- �Ｚ���� MES 3.0 ���� Proj[��] 
- Histogram ����
1. DB ���� ó��(/mapping-query-statisticaldatainquiry_TEST.xml ���Ͽ���
SELECT MODEL.GODS_PRGS_STATUS_CODE
	, RESULT.OCC_SYS_ID
	, '' AS RECALC_TIMES�� ó��
FROM SPC_SITE_VENDOR SITE
;
==============================================================================================================

- �����̵����� Ȯ��(12��)]
0. �ڵ���ü ���� �ٽ� �ѹ� Ȯ���� ��
1. �����̵�����  ==> ����������(https://www.payinfo.or.kr/guide/useguide3.do)���� 9�ú��� 17�ñ��� ����
2. �������� ����Ʈ OTP Ÿ�� ���� ó�� Ȯ�� ==> ����
-------------------------------------------------------------------------------------------------------

- �ڵ����� �����û ��������(���� �Ϸ� ��) 
����ȸ����¹�ȣû�����������¹�ȣ
SC����130205***41PCA������(��)�������� 1104377***30
SC����130205***41��ȭ������������� 1104377***30
SC����130205***41KB����ī��������� 1104377***30
SC����130205***41SK�ڷ��޽������� 1104377***30 
==============================================================================================================
 
- �ڵ����� ���º��� ���� ó��(���ͳ����� ó��)
1. ��Ʈ������ ���ź���(SC���� -> ��������[110-437-783130]) ==>http://www.metlife.co.kr
2. �����ػ� ��̺���(SC���� -> ��������[110-437-783130]) ==> https://www.hi.co.kr
==============================================================================================================

- ���콺 Ŭ���� �� �ȵǰ� �ϴ� ���̷��� �߻�(���콺�� Ŭ���ϸ� ���� ������ ��) @@@
0. Ű���带 ��ü�� �� ��: ���� ��ó ==> http://blog.naver.com/lozarahim/90144136743 
1. rundll32.exe ����(C:\Windows\System32) ����
 1) trustedInstaller���� ��� ���� �ο��ؼ� ����
2, dllhost.exe  ����(C:\Windows\System32) ����
 1) trustedInstaller���� ��� ���� �ο��ؼ� ����  
3. rundll32 ���� ����
 1) ����-����-msconfig�� �ؼ� �ý��� ���� ��ƿ��Ƽ-�������α׷��� ���ô� rundll32 ��¼�� ������ ������
 ���� üũ�����ؼ� ���������� �ٲߴϴ�. �׷��� ��ǻ�͸� ������մϴ�.
4. rundll3  ����
 1) ����-�˻�-��� ���� �� �������� rundll32�� �˻� > ����  
---------------------------------------------------------------------------------------------------------

- trustedInstaller���� ��� ���� �ο�: admin(������) �������� ���� ������ ���� ���� 
http://blog.naver.com/r2d/220258051386
==============================================================================================================
 
- ����� CD ����(FreeRIP) 
1. .cda ������ .mp3 ���Ϸ� ����ó�� ��(USB�� ����)
http://www.powerove.com/220
http://wiinemo.tistory.com/1105
==============================================================================================================
- �� ���� 
1. �ø��� �̰����� ó���� 2015 ������ �޶ѱ�� ���, ��20kg, ����: 34,900�� ==> ����
http://item2.gmarket.co.kr/Item/detailview/Item.aspx?goodscode=751010570&GoodsSale=Y&jaehuid=200002673
==============================================================================================================

������������������� 2016.03.22(ȭ) �۾� �������������������
---> 07:30 ~ 18:50 ==> TeeChart ���� ����

- �Ｚ���� MES 3.0 ���� Proj[��] 
- Histogram ���� 
1. ��ġ�� TeeChart ���α׷�(����)
 1) TeeChart Pro v2015 ActiveX Evaluation
2. [����] TeeChart  ��� ���� ���� ���� ��â�� ����, �ȿ��� �������� ����
 1) �̼��� ���忡�� ��ȭ�ؼ� TeeChart ���� ������� �����Ѵٰ� ȭ��
==============================================================================================================

- KT ���ͳ� ����(10��, ȸ��)
1. 100�� ��ȭ�ؼ� ������ �� ==> ��ȭ�ؼ� 1�ð� ��ٷ��� ��ȭ �� ����
  ==> SK��ε��� �������� ���ܸ��� ��� ���� ��û ���شٰ� ��
http://blog.naver.com/hyunma00/220596421485
==============================================================================================================

������������������� 2016.03.23(��) �۾� ������������������� 
---> 07:30 ~ 18:50 ==> UI�������� ����

- �Ｚ���� MES 3.0 ���� Proj[��] 
- �����۾� ��ûó��(408��: �Ű���: 010-3820-4280)
1. ����: ������ popup excel download Ȯ�� ��û
2. ���� ��ġ: SPC> ������ >������ > ������ popup
3. ó��:
/common_Grid.xjs ���Ͽ��� gfn_ExportExcel() �����ؼ� ���� excel download �� �� �ֵ��� ���� �߽��ϴ�.
==============================================================================================================
  
- ������ ���� ����Ŀ(WINDOW MEDI�����/���� ���� ���� ���� ���α׷�)
1. ������ �������̶�� ������ ������� ��� ����ִ� wmv ����: WMV(Windows Media Video)
http://kin.naver.com/qna/detail.nhn?d1id=1&dirId=1020401&docId=234526516&qb=66y067mE66mU7J207LukIOyCrOyaqeuylQ==
&enc=utf8��ion=kin&rank=1&search_sort=0&spq=1

http://kin.naver.com/qna/detail.nhn?d1id=1&dirId=1020401&docId=240353029&qb=7Jik65SU7JikIOu5hOuUlOyYpOuhnCDrs4Dqsr0=
&enc=utf8��ion=kin&rank=17&search_sort=0&spq=0
==============================================================================================================

- �Ż�����ȸ ����(�̽¿� ��)���� ��ȭ��
1. �̹� �ֿ� ��� �İ� ���ٰ� �� ==> ���� �������� ��꿡 �־� ���� �౸ �� ���� �Ŷ�� �뺸��.
==============================================================================================================

������������������� 2016.03.24(��) �۾� ������������������� 
---> 07:30 ~ 18:20 ==> �߽�(�̽��� �������[����� ����]): (��)�����̵���Ÿ ������ ������ ��(�ſ��� ����)

- �Ｚ���� MES 3.0 ���� Proj[��] 
- �����۾� ��ûó��(409��: ������[010-2466-7369] ����)
1. ����: 
1) �׸��尡 3���� ��� 3���� �����ٿ�ε� ������� �ߴµ�
    visible = false �� ���� ���� �ٿ�ε� ��Ͽ� ���̰� ���� �ʽ��ϴ�.
 2) �׸��� ȭ�鿡 �׸��尡 �������� ��� Ư�� �׸��常 �����ٿ�ε� ��Ͽ� ���̵��� �ϰ� �ͽ��ϴ�.
2. ���� ��ġ: ȭ�� �����ư���� ������ư Ŭ���� 
3. ó��:
 "ȭ�� �����ư���� ������ư Ŭ����  
 1) Grid�� 3���� ��� 1���� Grid�� visible = false�� �ϸ� Excel Download ȭ��(��â)���� Grid�� 2�� �� ���̵��� ���� �߽��ϴ�.  
 2) ���� Excel Download ȭ��(��â)���� Grid üũ �ڽ��� üũ�� �� Grid �� ���� �ٿ�ε尡 �ǵ��� �Ǿ� �ֽ��ϴ�. 
==============================================================================================================
  
- ����ī��
1. KT ���ͳ� ��� �ڵ���ü ����
==============================================================================================================

- ���� ���� ����(eclipse ����)
1. ����:
2016-03-24 09:22:06,074 [ERROR] [qtp31427481-5143] [com.semco.system.web.servlet.mvc.handler.xplatform
.XplatformExceptionResolver.resolveException(XplatformExceptionResolver.java:139)] com.semco.system.exception
.xplatform.XplatformException: �۾� ����!!!
���� ����� �� �����ϴ�.
2. ����: jetty-env.xml ���� ���� �����
==============================================================================================================
 
������������������� 2016.03.25(��) �۾� �������������������
---> 07:30 ~ 18:20 ==> �ݿ����� 18�� 30�� ��� ���� ����(18�� ���� Ż ��)

- �Ｚ���� MES 3.0 ���� Proj[��] 
- �����۾� ��ûó��(410��: ������[010-2466-7369] ����)
1. ����: �׸��� ȭ�鿡 �׸��尡 �������� ��� Ư�� �׸��常 �����ٿ�ε� ��Ͽ� ���̵��� �ϰ� �ͽ��ϴ�.
2. ���� ��ġ: ȭ�� �����ư���� ������ư Ŭ���� 
3. ó��:
Pattern01.xfdl(����)���� �ش� Grid���� User Properites ����Ͽ� grd_main.excelDownYn = "N"�� �Ͻø� grd_main
Grid�� Excel Download ȭ��(��â)���� ������ �ʵ��� �����߽��ϴ�.
==============================================================================================================

- /InheritStyle_functiontitlebar.xfdl ���Ͽ���
grd_main  --> Menu Structure_0
grd_tab00Tabp1Std00  --> Menu Structure2_1
grd_std00  --> testtest_5
--------------------------------------------------------------------------------------------

- Grid���� User Properites ���(Grid excel Download ���� ������ �� �ְ� ����)
1. Add a New User Properites: excelDownYn ���� --> �Ϸ�
 
/*------------------------------------------------------------------
* ��   ��: Excel Export ó��(ExcelExport Ŭ�� �̺�Ʈ �߻�: ExcelExport ��â ����)
* ��   ��: N/A
* Return : N/A
------------------------------------------------------------------*/
function Button00_onclick(obj:Button,  e:ClickEventInfo)
{ 
	//grd_main.excelDownYn = "N";   // grd_main Grid�� excel Download �ȵǰ� ó��(Y: excel DownYn OK, N: excel DownYn NO)
	//grd_std00.excelDownYn = "N";   // grd_std00 Grid�� excel Download �ȵǰ� ó��(Y: excel DownYn OK, N: excel DownYn NO) 
	//trace("[/Pattern01.xfdl] [Button00_onclick()] ==> [grd_maini.excelDownYn_02]"+ grd_main.excelDownYn );

	super.div_function.div_functionIcons_btn_excel_onclick(obj,e);
} 
==============================================================================================================

- ���콺 Ŭ���� �� �ȵǰ� �ϴ� ���̷��� �߻�(���콺�� Ŭ���ϸ� ���� ������ ��) @@@
0. Ű���带 ��ü�� �� ��: ���� ��ó ==> http://blog.naver.com/lozarahim/90144136743 
1. rundll32.exe ����(C:\Windows\System32) ����
 1) trustedInstaller���� ��� ���� �ο��ؼ� ����
2, dllhost.exe  ����(C:\Windows\System32) ����
 1) trustedInstaller���� ��� ���� �ο��ؼ� ����  
3. rundll32 ���� ����
 1) ����-����-msconfig�� �ؼ� �ý��� ���� ��ƿ��Ƽ-�������α׷��� ���ô� rundll32 ��¼�� ������ ������
 ���� üũ�����ؼ� ���������� �ٲߴϴ�. �׷��� ��ǻ�͸� ������մϴ�.
4. rundll3  ����
 1) ����-�˻�-��� ���� �� �������� rundll32�� �˻� > ����  
---------------------------------------------------------------------------------------------------------

- trustedInstaller���� ��� ���� �ο�: admin(������) �������� ���� ������ ���� ���� 
http://blog.naver.com/r2d/220258051386
==============================================================================================================

- X-PUSH �м�
http://www.tobesoft.co.kr/product/XPush.do
1. X-PUSH�ý����� �޽����� �ɵ������� Ǫ���� �ִ� X-PUSH ������ �޽����� ���۹޴� Ŭ���̾�Ʈ(�ػ�ũ�� Ŭ��
�̾�Ʈ) �׸��� Ŭ���̾�Ʈ�� ������ �޽����� �����ϴ� �޽��� ������(Message Provider)�� �����˴ϴ�

- XPUSH ���� ���
C:\Users\Administrator> cd C:\xpush-2.5.4\bin
C:\xpush-2.5.4\bin> type set_xpush.bat
C:\xpush-2.5.4\bin> install_as_service.bat

C:\xpush-2.5.4\bin> startup.bat ==> ���� ���� @@@
==============================================================================================================

- XPUSH ���� ��� ���� @@@
1. ����: Failed to install X-PUSH
C:\xpush-2.5.4\bin> install_as_service.bat
The X-PUSH service is already installedan error in attempting to install the ser
vice
Failed to install X-PUSH as a system service
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .

2. ��ġ: �� �� uninstall_from_service �� �� ����
C:\xpush-2.5.4\bin> uninstall_from_service.bat
C:\xpush-2.5.4\bin> install_as_service.bat
==============================================================================================================
 
- KT ���ͳ� ����(3:40, ȸ��)
1. 100�� ��ȭ�ؼ� ������ �� ==> ��ȭ�ؼ� 1�ð� ��ٷ��� ��ȭ �� ����
  ==> SK��ε��� �������� ���ܸ��� ��� ���� ��û ���شٰ� ��
http://blog.naver.com/hyunma00/220596421485
==============================================================================================================

- �����̵����� Ȯ��(12��)]
0. �ڵ���ü ���� �ٽ� �ѹ� Ȯ���� ��
1. �����̵�����  ==> ����������(https://www.payinfo.or.kr/guide/useguide3.do)���� 9�ú��� 17�ñ��� ����
2. �������� ����Ʈ OTP Ÿ�� ���� ó�� Ȯ�� ==> ����
-------------------------------------------------------------------------------------------------------

- �ڵ����� �����û ��������(���� �Ϸ� ��) 
����ȸ����¹�ȣû�����������¹�ȣ
SC����130205***41PCA������(��)�������� 1104377***30
SC����130205***41��ȭ������������� 1104377***30
SC����130205***41KB����ī��������� 1104377***30
SC����130205***41SK�ڷ��޽������� 1104377***30 
==============================================================================================================
 
- �ڵ����� ���º��� ���� ó��(���ͳ����� ó��)
1. ��Ʈ������ ���ź���(SC���� -> ��������[110-437-783130]) ==>http://www.metlife.co.kr
2. �����ػ� ��̺���(SC���� -> ��������[110-437-783130]) ==> https://www.hi.co.kr
==============================================================================================================

- ����� CD ����(FreeRIP) 
1. .cda ������ .avi ���Ϸ� ����ó�� �� 
http://www.powerove.com/220
http://wiinemo.tistory.com/1105
---------------------------------------------------------------------------------------------------------

- ����� ���� ��ȯ
https://support.google.com/youtube/answer/1696878?topic=2888648&hl=ko
==============================================================================================================

- �� ���� 
1. �ø��� �̰����� ó���� 2015 ������ �޶ѱ�� ���, ��20kg, ����: 34,900�� ==> ����
http://item2.gmarket.co.kr/Item/detailview/Item.aspx?goodscode=751010570&GoodsSale=Y&jaehuid=200002673
==============================================================================================================

������������������� 2016.03.26(��) �۾� �������������������
---> 07:40 ~ 18:10 ==> 

�� �����౸
06:00 ���  
06:30 �븲3�� ���
06:40 ������
08:00 ����
08:10 ���� ����ȸ�� ����(2���� ��)
10:00 ����
10:20 �Ͱ�
10:30 ����
12:00 ���
12:10 �߽�
16:00 ���
16:20 �Ｚ ������������ ������(���� ������ ����) ==> �ڵ����� 2~3�Ͽ� �ѹ��� ���� �״� �϶�� ��.
17:00 �Ͱ�
17:30 ����(�̸�Ʈ ������)  ==> SK ���ͳ� ����ǰ(�̸�Ʈ ��ǰ�� ��ȯ: 15����)
19:20 ����(����: �̸�Ʈ ������)
20:20 �Ͱ�
01:00 ��ħ
==============================================================================================================
 
������������������� 2016.03.27(��) �۾� �������������������
---> 07:40 ~ 18:10 ==> �� 4ȸ ������ �ݰ�� �౸ ��ȸ

�� �����౸
02:00 ���
02:10 ������ ����� ������ Vedio ���� ����(02��, ��)
07:00 �����
07:10 �븲 ���
07:20 �븲3�� ����ȸ ���Ժ� ����(15����, Ȳ��� �ѹ�)
08:00 �� 4ȸ ������ �ݰ�� �౸ ��ȸ ù ����(��ȣ 1:0 �븲1 ��)
08:40 ����(�븲3�� 2:1 �븲����) ==> �ҽ���(���� �ž ���� ����)
09:20 ���� ���� ������ ���� ��(��忡�� ������ ��)
11:30 ����((�븲3�� 0:0 ����) ==> �� 2���� �ذ�� ����
12:20 ���� ���� ������ ��
12:30 ����((�븲3�� 0:1 ��ȣ) ==> 4�� Ż��(���� 3��)
	--> 4��, 9��, 44�� ���� ������, ����Ʈ ���� �̿��� �÷��̿� ġ��, ���� �������� ����, �н� ��Ȯ�� ����
14:00 �߽�(�δ����: �ټ� �Ĵ�): ȸ���� ��
15:00 ����((���� 0:1 ��ȣ) ==> ��ȣ ���
15:30 �Ͱ�
19:30 �߽�
20:00 ��ħ
==============================================================================================================

- ������ ����� ������ Vedio ���� ����(02��, ��)
1. ������ ���� ����Ŀ ���
2. �����꿡 �ø���  ==> https://www.youtube.com/my_videos?o=U
==============================================================================================================

������������������� 2016.03.28(��) �۾� �������������������
---> 07:30 ~ 18:20 ==> 

- �Ｚ���� MES 3.0 ���� Proj[��] 
- X-PUSH �м�
http://www.tobesoft.co.kr/product/XPush.do

- XPUSH ���� ��� ==> �ڼ��� ����(010-9118-5805)
C:\Users\Administrator> cd C:\xpush-2.5.4\bin
C:\xpush-2.5.4\bin> type set_xpush.bat
C:\xpush-2.5.4\bin> uninstall_from_service.bat
C:\xpush-2.5.4\bin> install_as_service.bat

C:\xpush-2.5.4\bin> startup.bat ==> ���� ���� @@@ 

C:\Users\Administrator> cd C:\xpush-2.5.4\bin
C:\xpush-2.5.4\bin> run_provider_demo_Push.bat localhost 10082 id pw==> �Ϲ� �޽��� @@@
C:\xpush-2.5.4\bin> run_provider_demo_Reli.bat localhost 10082 id pw==> �ŷڼ� �޽��� @@@
C:\xpush-2.5.4\bin> run_provider_demo_Mont.bat localhost 10082 id pw==> ����� ��Ƽ �޽��� @@@
--------------------------------------------------------------------------------------------------------

- XPUSH ���� ���� ȯ�� ����
JAVA_HOME --> C:\Program Files\Java\jdk1.6.0_45
XPUSH_HOME --> C:\xpush-2.5.4
==============================================================================================================

- NET HELPMSG 3534 ���� �߻�
1. ��θ� ã�� ���� ��쿡�� �߻��� �� �ִ� 
2. ��ġ: xpush_config - reliabilityProtocol,noDB,noNode.xml ������ xpush_config.xml ���Ϸ� ����
==============================================================================================================

- PUSH ����(H2O)
http://h2osystech.com/products/reportshop.html 
==============================================================================================================

- �����е� ���׷��̵�(22��, ��)
1. IOS 6 ==> IOS 8 
==============================================================================================================

- PCA ����� �ڵ���ü ����
1. PCA ��ŸƮ ��� �������Ϲ��Ⱥ��� II(������) ==> PCA �ݼ��Ϳ� ��ȭ�ؼ�
SC���࿡�� ������������ �ڵ���ü ���� ��û
2. �ּ� ���� ó�� ==> Ÿ ���൵ �ϰ� ����(�����ּ��ѹ������񽺽�û ȭ�鿡��)
==============================================================================================================

������������������� 2016.03.29(ȭ) �۾� �������������������
---> 07:30 ~ 18:20 ==> �Ｚ���� Ȳ��ö ���� ����(10��, (��)�����̵���Ÿ ��������), �߽�(�̽��� �������: �������� ��)

- �Ｚ���� MES 3.0 ���� Proj[��] 
- X-PUSH �м�
http://www.tobesoft.co.kr/product/XPush.do

- XPUSH ���� ��� ==> �ڼ��� ����(010-9118-5805)
C:\Users\Administrator> cd C:\xpush-2.5.4\bin
C:\xpush-2.5.4\bin> startup.bat ==> ���� ���� @@@ 
C:\Users\Administrator> cd C:\xpush-2.5.4\bin
C:\xpush-2.5.4\bin> run_provider_demo_Push.bat localhost 10082 id pw==> 01. �Ϲ� �޽���_Push(51P, 110P) @@@
C:\xpush-2.5.4\bin> run_provider_demo_Reli.bat localhost 10082 id pw==> 02. �ŷڼ� �޽���_Reli(53P, 112P) @@@
C:\xpush-2.5.4\bin> run_provider_demo_Mont.bat localhost 10082 id pw==> ����� ��Ƽ �޽��� @@@  
==============================================================================================================

- java Application ����(eclipse����)  @@@@@@@ 
1. /DEV-LOCAL_RPT/src/main/java/com/semco/xpush/message_provider/DemoProvider_Push.java
2. DemoProvider_Push.java(���콺 �� Ŭ��) > Run As > java Application(Ŭ��) 

- java Application ȯ�� ����
1. Name: 51. �Ϲ� �޽���_Push
2. Project: DEV-LOCAL_RPT
3. Maiin Class: com.semco.xpush.message_provider.DemoProvider_Push
4. Arguments: Arguments> VM Arguments: 
==============================================================================================================

������������������� 2016.03.30(��) �۾� �������������������
---> 07:30 ~ 18:20 ==> 

- �Ｚ���� MES 3.0 ���� Proj[��]  
- /MenuMgmtView.xfdl: �޴����� - �� XPUSH ����
==> ����� ���� �ִ� ����ڿ��� �޼��� ����(DIV ����) 
==============================================================================================================

- XPUSH ����
1. Message Provider ����: Message Provider�� X-PUSH ������ MessageProvider ��Ʈ(�⺻�� 10082)�� ���� ������ 
�����ϰ� ������û ��Ŷ�� �����ϰ�, ���� ��� ��Ŷ�� �޽��ϴ�. �ʿ信 ���� �޽����� �����ϰ� ������ ������ �� ���Ḧ
�����մϴ�.
 1) Message Provider���� 3���� ����(�Ϲ� �޽���, �ŷڼ� �޽���, ����� ��Ƽ �޽���)�� �ֽ��ϴ�.

2. �޽��� ����
 1) Topic Type �� �޽����� � ���������� ��Ÿ���� ������ �׷��Դϴ�. �پ��� �޽��� �߿� ���� �ְ�, �����, ��
�� ������ �� �޽����� Ÿ���� �з��� �� �ֽ��ϴ�.
 2) Topic Id �� �ϳ��� Topic Type �ȿ��� �޽����� �����ϱ� ���� ���Դϴ�. ���� ���� �ְ� �����Ͷ� �ϴ��� �� ��
���� �����ڵ忡 ���� �޽����� ���е� �� �ֽ��ϴ�.
 3) Field Values�� ���� �����ϰ��� �ϴ� �����Դϴ�. ���ε� �� ���ڵ���� �ʵ� ����ŭ�� ����� �����Ǹ�, ������ 0x
11�� ���Ͽ� ���еǾ� ���޵˴ϴ�.
==============================================================================================================

- ���� �޽��� ������(Embedded MessageProvider, 116P)
1. X-PUSH ������ ����Ǿ� �޽����� ���� ����
==============================================================================================================

������������������� 2016.03.31(��) �۾� �������������������
---> 07:30 ~ 18:20 ==> MSI ��Ʈ�� ö��(18��, �Ｚ����, ���� -> ���(�Ǹ�)�� ��)

- �Ｚ���� MES 3.0 ���� Proj[��]  
- /MenuMgmtView.xfdl: �޴����� - �� ==> XPUSH ����  ==> �Ϸ� @@@
==> ����� ���� �ִ� ����ڿ��� �޼��� ����(DIV ����) 
1. 04. XPUSH ����(MES) ���� �ۼ�
==============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������