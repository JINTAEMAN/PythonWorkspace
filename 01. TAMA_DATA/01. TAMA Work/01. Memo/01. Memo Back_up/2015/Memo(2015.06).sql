 

�����������������������������������������������������������
+---------------------------------------------// Memo(2015.06) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2015.06.01(��) �۾� ����������������
---> 09:00 ~ 21:00 ==>  

- ������ �ߵ�����ý��� Prj 
1. �ݱ� ����(/WorkFrame.xfdl/btn_close_onclick()) 
==============================================================================================================

- ������ �� idx ��������
function btn_MDI_WinIn_onclick(obj:Button,  e:ClickEventInfo)
{ 
var bSucc;
var WorkFrame = "WorkFrameSet";
var strFormURL = "Frame::WorkFramePopup.xfdl";
var oArg = {a:'aaa', b:'bbb'};
 
targetIdx = gv_TabFrame.form.div_Tab.getIndex(e.clientX, e.clientY);    // ������ �� idx �������� 
trace("[/TabFrame.xfdl] [btn_MDI_WinIn_onclick()] ==> [TEST_01] [targetIdx]"+ targetIdx +"[WorkFrame]"+ WorkFrame +"[strFormURL]"+ strFormURL ); 

if(targetIdx < 0)
{
alert("[/TabFrame.xfdl] [btn_MDI_WinIn_onclick()] ==> [������ ���� �����ϴ�.]" ); 
} 
else
{
bSucc = application.open("modeless", strFormURL, WorkFrame, oArg, "showtitlebar=false showstatusbar=false", 0, 0, 1078, 762); 
}  
}

tabId = GetItem(div_Tab, i).name; 

trace("[/TabFrame.xfdl] [lfn_activeTabpage()] ==> [TEST_02]" ); 

div_Tab.components[naviCD].class = "btn_M
DI_S"; 
div_Tab.components[naviCD].setFocus();

ar objBtn = div_Tab.components[obj.name.toString().replace("__EX", "")];

var winId = obj.tabpages[e.postindex].name;
for (var i=0; i<this.tab_navi.getTabpageCount(); i++){
if (this.tab_navi.tabpages[i].name == winId){
this.tab_navi.set_tabindex(i);
}
    }

var winId = gv_TabFrame.form.tab_navi.tabpages[e.postindex].name;
==============================================================================================================

- ������ �ߵ�����ý��� Prj  ���� �۾�
1. ���̸޴�
2. ����
3. �޸�
4. �������(�ڵ�����,��������) �����
==============================================================================================================

function btn_MDI_Allclose_onclick(obj:Button,  e:ClickEventInfo)
{  
//trace("[/TabFrame.xfdl] [btn_MDI_Allclose_onclick()] ==> [TEST_01] [gds_openMenu.rowcount]"+ gds_openMenu.rowcount +"[obj.userdata]"+ obj.userdata ); 
 
var tabId = "";
var div_Tab_TotCnt = div_Tab.getTabpageCount() - 1;

if(gds_openMenu.rowcount > 0 )
{     
lfn_TabFrameBtnVisF();
gfn_ArrangeWin(obj.userdata);
trace("[/TabFrame.xfdl] [btn_MDI_Allclose_onclick()] ==> [div_Tab_TotCnt]"+ div_Tab_TotCnt 
+"[gds_openMenu.rowcount]"+ gds_openMenu.rowcount +"[div_Tab.getTabpageCount()]"+ div_Tab.getTabpageCount() +"[div_Tab_TotCnt]"+ div_Tab_TotCnt ) 
 
for(var i = div_Tab_TotCnt; i>=0; i--)
{
tabId = GetItem(div_Tab, i).name;  
//trace("[/TabFrame.xfdl] [btn_MDI_Allclose_onclick()] ==> [i_��°]"+ i +"[tabId]"+ tabId ); 
 
div_Tab.removeTabpage(i);// div_Tab �� �ݱ�
gfn_closeWindow(tabId);  // ȭ�� ��Ͽ��� ȭ�� ���� �� ȭ�� �ݱ�
}  
trace("[/TabFrame.xfdl] [btn_MDI_Allclose_onclick()] ==> [TEST_02]");

gv_WorkFrame.WorkMain.visible = true;
} 

trace("[/TabFrame.xfdl] [btn_MDI_Allclose_onclick()] ==> [TEST_end]");
}
==============================================================================================================

������������������� 2015.06.02(ȭ) �۾� ����������������
---> 06:00 ~ 21:30 ==>  

- ������ �ߵ�����ý��� Prj 
1. �ҽ� ����
2. ���̸޴�(/Left_MyMenu.xadl]) ����
 1) ���ã��(/COMC0106_P050.xfdl)
==============================================================================================================

-  ���¹� �޴��� Ŭ�� �̺�Ʈ
/*****************************************************************************************
* ��  ��  �� : btn_titlebar_normal_onclick()
* ��      �� : itlebar_normal Ŭ��(�Ϲ� ȭ�� ����) 
*****************************************************************************************/   
function btn_titlebar_normal_onclick(obj:Button,  e:ClickEventInfo)
{
mainframe.openstatus = "normal";
//trace("[/TitlebarFrame.xfdl] [btn_titlebar_normal_onclick()] ==> [TEST_01]" ); 
 
btn_titlebar_normal.visible = false;
btn_titlebar_max.visible = true; 

//mainframe.openstatus = "minimize";
//mainframe.openstatus = "normal";===> btn_titlebar_normal_onclick
//mainframe.openstatus = "maximize";===> btn_titlebar_maximize_onclick
//exit();
}  
==============================================================================================================

- ���ϼ���
\\192.168.151.252\CheckIn\01.���⹰\02. ���� ���⹰, developer/ict1#
==============================================================================================================

������������������� 2015.06.03(��) �۾� ����������������
---> 06:00 ~ 18:00 ==> ȸ��(���佺 ������ �ͼ� ���� ��� ��������� ȸ����)

- ������ �ߵ�����ý��� Prj 
1. ���̸޴�(/Left_MyMenu.xadl]) ����
 1) ���ã��(/COMC0106_P050.xfdl)
==============================================================================================================

- theme�� �̹��� ��� �� ���
UXSTUDIO�� ������ �������� ���� �� �׸� ������ ���� �Ǹ� 
C:\Program Files (x86)\TOBESOFT\XPLATFORM\9.2.1\TEMPORARY\SUN.xtheme0\Img_com 
==============================================================================================================

- XPlatform license �Ⱓ ���� ����(eclipse ����)
1. ����: Invalid license: jarResource=file:/C:/eduPrj/mid/apache-tomcat-7.0.53/wtpwebapps/eduPrj/WEB-INF/lib/XPLATFORM_Server_License.xml
com.tobesoft.xplatform.license.InvalidLicenseException: License has expired: expireDate=2015-06-01, currentDate=2015-06-03
2. ��ġ
 1) http://support.tobesoft.co.kr/Support/index.html ==> Downloads > ü����: Products: XPlatform(����) �ٿ�ε�
 2) XPLATFORM_Dev_License_20150601.zip���� ���� Ǯ� XPLATFORM_Server_License.xml ���� ����
 3) C:\eduPrj\work\eduPrj\Web\WEB-INF\lib�� �ٿ��ֱ�
==============================================================================================================
 
- MYSQL SYSDATE ���� ó��
1. SELECT TO_CHAR(SYSDATE, 'YYYYMMDD')  FROM DUAL 
 ==> SELECT date_format( now(), '%Y-%m-%d') DDDD  FROM TB_MENU 
 ==> SELECT date_format( now(), '%Y-%m-%d %h:%i:%s') DDDD  FROM TB_MENU 

select date_format(now(), '%Y-%m-%d');  
select date_format(now(), '%Y/%m/%d'); 
select date_format(now(), '%Y-%m-%d %h:%i:%s');  
select date_format(now(), '%W'); -- ���ù�������
select date_format(now(), '%d');  -- ���ø���
select date_format(now(), '%D');  -- ����ǥ�� 28th like that 
select date_format(now(), '%M'); -- ������ / March 
--------------------------------------------------------------------------------------------

- ä��(����)

- MySQL ����������  
DROP TABLE IF EXISTS  TB_SEQ_FORUM ;
 
CREATE TABLE TB_SEQ_FORUM 
(
ID bigint(8) unsigned NOT NULL auto_increment,
PRIMARY KEY  (ID)
) ENGINE=MyISAM AUTO_INCREMENT=1000
;
 
SELECT MAX(SEQ_FORUM)+1 AS NEXTVAL FROM FORUM 
;

SELECT IFNULL(MEMO_ID, 1000) +1 AS MEMO_ID FROM TB_MEMOLIST 
; 
num int  AUTO_INCREMENT,
 
----------------------------------------------------------------------------------

���ڿ��� : concat('���ڿ�1', '���ڿ�2'[,'���ڿ�3']) 
����ȯ : cast(�ʵ�� as char) 
NVL : COALESCE(�ʵ��, �⺻��), IFNULL(�ʵ��, �⺻��) 
=========================================================================================================

- MYSQL START WITH
1. Mysql �̶� CONNECT BY ������ ����� �� �����ϴ�.
2. �ذ�å: VIEW�� �̿�(http://kakaodbe.blogspot.kr/2014/10/with.html) 
CREATE VIEW V_TB_MENU AS (SELECT PGM_ID,  
PGM_NM,
PGM_URL,
PGM_ORDER,
PARENT_PGM_ID,
POPUP_YN ,
FOLDER_YN,
LEV,
ENABLE,
USE_YN
FROM TB_MENU)
;   
 
SELECT V1.PGM_ID, V1.PGM_NM,
V1.PGM_URL,
V1.PGM_ORDER,
V1.PARENT_PGM_ID,
V1.POPUP_YN ,
V1.FOLDER_YN,
V1.LEV,
V1.ENABLE,
V1.USE_YN
FROM
 V_TB_MENU AS V1,
 V_TB_MENU AS V2
WHERE --V1.USE_YN = 'Y'
 AND V1.PGM_ID = V2.PGM_ID 
ORDER BY V1.PGM_ID
;   

-- DROP VIEW V_TB_MENU
;
==============================================================================================================
 
-- ����Ŭ �������� ���� @@@@
SELECT org_id
  FROM organization
 START WITH class2 IN (...)
 CONNECT BY PRIOR class2 = class1
;
--------------------------------------------------------------------------------

-- ����Ŭ 11G ���� ���� ������ WITH ���� ����� ��� ����
-- (Ÿ DBMS ������ ���Ǵ� ���) --
WITH t(org_id) AS
(
SELECT org_id
  FROM organization
 WHERE class2 IN (...)
 UNION ALL
SELECT o.org_id
  FROM organization o, t
 WHERE t.class2 = o.class1
)
SELECT * FROM t
;
==============================================================================================================

-- �������� ���� @@@@
SELECT LEVEL
     , CATEGORY_ID
     , CATEGORY_NAME
FROM ITV_CATEGORY
WHERE LEVEL < 3
START WITH DEPTH = 1
CONNECT BY REF_CATEGORY_ID = PRIOR CATEGORY_ID
--// CATEGORY_ID(�ڽ��÷�), REF_CATEGORY_ID(�θ��÷�)
==============================================================================================================

- ���� �м�
1. ������ û��(22�� ~ 23��)
 1) 01. ���� ����(XPlatform).txt  ==> [XP9.2]XPlatform ��������_20120320.pdf���� 179 ������
==============================================================================================================
    
������������������� 2015.06.04(��) �۾� ����������������
---> 06:00 ~ 21:30 ==> �߽�(�и�, �ֱԸ� ����� ���⿡�� ���� �� ����)

- ������ �ߵ�����ý��� Prj 
1. ���̸޴�(/Left_MyMenu.xadl]) ����
 1) ���ã��(/COMC0106_P050.xfdl)
 2) ������ �缳��(/TitlebarFrame.xfdl) ==> (/COMC0106_P050.xfdl)
 3) �޸�(/RightFrame.xadl)
==============================================================================================================

- memo ���
1. ��ȸ, ���, ����, ����
 1) ����(����, ������)
 2) ��ȸ list
(���¸�)��������
 3) ����(��â ����)
==============================================================================================================

<ColumnInfo>
  <Column id="Column0" type="STRING" size="256"/>
  <Column id="Column1" type="STRING" size="256"/>
  <Column id="Column2" type="STRING" size="256"/>
  <Column id="Column3" type="STRING" size="256"/>
</ColumnInfo>
<Rows>
  <Row>
    <Col id="Column0">0</Col>
    <Col id="Column1">�޸�Ÿ��Ʋ 01</Col>
    <Col id="Column2">Guilldong,Hong</Col>
    <Col id="Column3">/ 16:54</Col>
  </Row>
  -----------------------------------------------------------------
 
--- Į�� �߰�[add column] ======> DB Į�� �߰� 
ALTER TABLE TB_MENU ADD ( 
    HOTKEY VARCHAR(4)    
)
--;
=========================================================================================================

- DS
gds_menu.saveXML();  // DS �α� ���� 
gfn_traceDS(gds_menu);  // DS �α� ����
var nRow = objDs.findRow("PGM_ID", menuId);   // DS Į�� ã��
var nRow = gds_myMenu.insertRow(gds_myMenu.rowposition + 1);   //DS�� ����  ��
var nRow = gds_memoList.rowposition;  // Ŭ���� ���� ��
==============================================================================================================

- mysql ���
�ڡ� �����͸� �ؽ�Ʈ ���Ͽ� �������� - export �ڡ�  
mysql> SELECT * INTO OUTFILE 'C:/data/out.csv' FILELDS TERMINATED
BY', ' FORM tab1; 

C:\Users\TAMA> TYPE  C:/data/out.csv'
-----------------------------------------------------------------------

�ڡ� �����͸� �ؽ�Ʈ ���Ͽ� �������� - import �ڡ�  
mysql> LOAD DATA INFILE  'C:/data/in.csv' INTO TABLE tab1N FILELDS TERMINATED
BY', ' ;
==============================================================================================================

- ���̺� ���̺� ����ϱ� 
C:\Users\TAMA> cd C:\eGovFrame-3.2\mysql-5.6.21\bin 
C:\eGovFrame-3.2\mysql-5.6.21\bin> mysql -u nexacro -p nexacro test TB_MENU > TB_MENU_back.sql 
mysqldump -u ������ -p ����Ÿ���̽��� ��������̺�� > ������ ���ϸ�.sql (�����Է�)

 - ���̺� ����Ÿ �����ϱ� 
C:\Users\TAMA> cd C:\eGovFrame-3.2\mysql-5.6.21\bin 
C:\Users\TAMA> cd C:\eGovFrame-3.2\mysql-5.6.21\bin > mysql -u nexacro -p nexacro test < TB_MENU_back.sql 
mysql -u ������ -p ����Ÿ���̽��� < ���̺������ϸ� (�����Է�) 
==============================================================================================================

- Mysql ���ӹ��
C:\Users\TAMA> cd C:\eGovFrame-3.2\mysql-5.6.21\bin 
C:\eGovFrame-3.2\mysql-5.6.21\bin> mysql -u nexacro -p test
Enter password:  nexacro   ---> ��й�ȣ �ֱ�
mysql>
==============================================================================================================

- SQL Developer �� MySQL �����ϱ�
http://blog.naver.com/varkiry05/220029476727
==============================================================================================================
    
������������������� 2015.06.05(��) �۾� ����������������
---> 06:00 ~ 20:30 ==> ��, �߽�(�и�, ��ȿ�� ����� ���⿡�� ���� �� ����), �ֱԸ� �����̶� �ο�

- ������ �ߵ�����ý��� Prj 
1. �޸�(/RightFrame.xadl)
==============================================================================================================

- �޴� �� ��ȸ ����
���� �� �����Ͱ� �ٷ� �ݿ��� ���� �ʾ� �߻��ϴ� �����̿����� 
menu item �� ���ε� �Ǿ��ִ� gds_menu �����ͼ¸� �ٽ� ���ε��Ͽ� ó�� �Ͽ����ϴ�.
/left_frame.xfdl���Ͽ���
function fn_CallBack(sSvcID, errorCode, errorMsg) 
{   
	if (sSvcID == "svc_menu") 
	{  
	trace("[/left_frame.xfdl] [fn_CallBack()] ==> [gds_menu DS] \n " + gds_menu.saveXML());// DS �α� ���� 

	gv_TopFrame.form.mu_topFrame.innerdataset = "";  
	gv_TopFrame.form.mu_topFrame.innerdataset = "gds_menu"; // inner dataset �� ���� 
	}
}
==============================================================================================================

- expr ��� @@@
1. expr �Ϲ� ���
expr="expr:META_NM_8==nullMETA_NM_8==''?'':META_NM_8"

2. expr�� �����  fn_code() �Լ� ó�� 
expr:fn_code(ZIPCODE, 1)
function fn_code(strZipcode, strNo)
{ 
	var strZipcodeNew = "" 
	var strZipcode_2 = wrapQuote(strZipcode); 
	strZipcodeNew = "152";
	 
	if(strNo == "1") { 
	strZipcodeNew = strZipcode_2.substring(1,4);
	trace("[/CoaZipCodeReg.xfdl][fn_code()_01_1]==> [strZipcode_2]"+ strZipcode_2 +"[strZipcodeNew_90]"+ strZipcodeNew );
	}
	else 
	{ 
	strZipcodeNew = strZipcode_2.substring(5,8);
	trace("[/CoaZipCodeReg.xfdl][fn_code()_01_1]==> [strZipcode_2]"+ strZipcode_2 +"[strZipcodeNew_90]"+ strZipcodeNew );
	}  

	return strZipcodeNew;
}
----------------------------------------------------------------------------------------------

<Cell colspan="3" style="align:left;" expr="expr:getRowCount() + " ��""/>
<Cell col="18" text="bind:META_NM_16" expr="expr:META_NM_16==nullMETA_NM_16==''?'':META_NM_16"/> 
<Cell row="1" col="2" displaytype="checkbox" edittype="checkbox" style="align:center middle;" text="bind:USE_BTN_1" expr="expr:USE_BTN_1 == 'Y'  USE_BTN_1 == '1' ? 1 : 0"/> 
==============================================================================================================
 
- [MSSQL/ORACLE/MYSQL] DATE ��¥ ���ð� ����  SQL    
[MYSQL] 
DATE_FORMAT(NOW(), '%Y%m%d%h%i%s'), = ����� �ú��� 
DATE_FORMAT(NOW(), '%Y%m%d'), = ����� 

[ORACLE] 
TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS'), = ����� �ú��� 
TO_CHAR(SYSDATE, 'YYYYMMDD'), = ����� 

[MSSQL] 
CONVERT(VARCHAR, GETDATE(),120) = ����� �ú��� 
CONVERT(VARCHAR(10), GETDATE(),120) = ����� --> Convert(varchar(10),Getdate(),112)
==============================================================================================================

- memo ���
1. ��ȸ, ���, ����, ����
 1) ����(����, ������)
 2) ��ȸ list
(���¸�) TEST
 3) ����(��â ����)
==============================================================================================================

<!--// DataURL_PYMS ADD(2015.05.22) //-->
<Service prefixid="DataURL_PYMS" type="JSP" url="http://127.0.0.1:8080/PYMS/" version="0" communicationversion="0" cachelevel="none"/>

<!--// DataURL_PYMS_02 ADD(2015.06.05) //-->
<Service prefixid="DataURL_PYMS_02" type="JSP" url="http://127.0.0.1:9080/JSP_PYMS/" version="0" communicationversion="0" cachelevel="none"/>
==============================================================================================================
    
������������������� 2015.06.06(��) �۾� ����������������
---> 06:30 ~ 20:40 ==> �ָ� ���, ������

- ������ �ߵ�����ý��� Prj 
1. glue ����
1. COM_RightFrame.glue_uml_ad  ==> �Ϸ�
2. COM_LeftFrame.glue_uml_ad
2. COM_TitlebarFrame.glue_uml_ad
==============================================================================================================

- ������ �ߵ�����ý��� Prj  
1. �޸�(/RightFrame.xadl) ���� ���
==============================================================================================================

- glue ���� 
1. emptest.glue_uml_ad ����(�� ���� ȭ��)  ==> ���� �� Generate Service ���ְ� ���� ������� ��
 ==> D:\eclipse\workspace\PYMS\model
 ==> D:\eclipse\workspace\PYMS\src\query
 ==> D:\eclipse\workspace\PYMS\src\service   ==> �� ���� �� service xlml �ݿ���

 1) ��ȸ
pyms.common.XplatformSearchNamed
pyms_dao
ds_cond
ds_result
EMPTEST.SELECT
0  
==> find: ��ȸ(EMPTEST.SELECT) ==> sql-key: EMPTEST.SELECT

2. /PYMS/src/query/emptest-query.glue_sql����
ID: EMPTEST.SELECT
SELECT 0 ROWCHK,
       EMPNO,
        ENAME,
        JOB,
        MGR,
        HIREDATE,
        SAL,
        DEPTNO
  FROM EMP
 WHERE EMPNO LIKE ISNULL(:EMPNO, '%') + '%'
   AND ENAME LIKE ISNULL(:ENAME, '%') + '%'
ORDER BY 1

3./PYMS/src/service/emptest-service.xml����
 <activity name="��ȸ" class="pyms.common.XplatformSearchNamed">
        <transition name="success" value="end"/>
        <property name="out-ds" value="ds_result"/>
        <property name="sql-key" value="EMPTEST.SELECT"/>
        <property name="dao" value="pyms_dao"/>
        <property name="in-ds" value="ds_cond"/>
        <property name="param-count" value="0"/>
    </activity>
-----------------------------------------------------------------------------------------------------

1. ��ȸ
pyms.common.XplatformSearchNamed
pyms_dao
ds_cond
ds_result
EMPTEST.SELECT
0 
==============================================================================================================

- /comSvc_script.xjs] [gfn_CallBack() ���� �α�
uxs (7888): [/comSvc_script.xjs] [gfn_CallBack()] ==> [svcID]find:fn_CallBack:::true:false[errorCode]-1[sErrorMsg]PreparedStatementCallback; SQL 
[-- 61. �޸� ����Ʈ ���� ��ȸ @@@    
SELECT M.MEMO_ID, M.MEMO_TITLE, M.MEMO_CNTN  
, M.MAKE_ID, M.MAKE_NM
, M.MAKE_DT, M.USE_YN  
FROM TB_MEMOLIST M   
WHERE M.USE_YN = 'Y'                   
ORDER BY MAKE_DT DESC]; ��ü 'TB_MEMOLIST', �����ͺ��̽� 'PYMS', ��Ű�� 'dbo'�� ���� SELECT ������ �źεǾ����ϴ�.; 
nested exception is com.microsoft.sqlserver.jdbc.SQLServerException: ��ü 'TB_MEMOLIST', �����ͺ��̽� 'PYMS', ��Ű�� 'dbo'�� ���� SELECT ������ �źεǾ����ϴ�.
uxs (7888): [/comSvc_script.xjs] [gfn_CallBack()] ==> [strExpr]fn_CallBack('find', -1, 'PreparedStatementCallback  SQL [-- 61. �޸� ����Ʈ ���� ��ȸ @@@    
SELECT M.MEMO_ID  M.MEMO_TITLE  M.MEMO_CNTN  
  M.MAKE_ID  M.MAKE_NM
  M.MAKE_DT  M.USE_YN  
FROM TB_MEMOLIST M   
WHERE M.USE_YN =  Y                    
ORDER BY MAKE_DT DESC]  ��ü  TB_MEMOLIST   �����ͺ��̽�  PYMS   ��Ű��  dbo �� ���� SELECT ������ �źεǾ����ϴ�. 
nested exception is com.microsoft.sqlserver.jdbc.SQLServerException  ��ü  TB_MEMOLIST   �����ͺ��̽�  PYMS   
��Ű��  dbo �� ���� SELECT ������ �źεǾ����ϴ�.') ==> [arrSvcID[1]]fn_CallBack[arrSvcID[0]]find[errorCode]-1[errorMsg]PreparedStatementCallback  SQL
[-- 61. �޸� ����Ʈ ���� ��ȸ @@@    
SELECT M.MEMO_ID  M.MEMO_TITLE  M.MEMO_CNTN  
  M.MAKE_ID  M.MAKE_NM
  M.MAKE_DT  M.USE_YN  
FROM TB_MEMOLIST M   
WHERE M.USE_YN =  Y                    
ORDER BY MAKE_DT DESC]  ��ü  TB_MEMOLIST   �����ͺ��̽�  PYMS   ��Ű��  dbo �� ���� SELECT ������ �źεǾ����ϴ�.  
nested exception is com.microsoft.sqlserver.jdbc.SQLServerException  ��ü  TB_MEMOLIST   �����ͺ��̽�  PYMS   ��Ű��  dbo �� ���� SELECT ������ �źεǾ����ϴ�.
uxs (7888): Error: [D:/eclipse/workspace/PYMS/WebContents/PYMS/lib/comSvc_script.xjs][line:212] ������� ���� ���ڿ� ����Դϴ�. (��: 212)
==============================================================================================================

- DB �α��� ����
/PYMS/src/applicationContext.xml
<bean id="mastSource" class="org.apache.commons.dbcp.BasicDataSource" destroy-method="close">
        <property name="driverClassName" value="com.microsoft.sqlserver.jdbc.SQLServerDriver"/>
        <property name="url" value="jdbc:sqlserver://192.168.151.226:1433;DatabaseName=PYMS"/>  
        <property name="username" value="gluemast"/>
        <property name="password" value="gluemast"/>
        <property name="defaultAutoCommit" value="false"/>
</bean> 

<bean id="mast-tx" class="com.poscoict.glueframework.transaction.GlueDataSourceTransactionManager">
<property name="dataSource" ref="mastSource"/>
</bean>

<bean id="mast_dao" class="com.poscoict.glueframework.dao.jdbc.GlueJdbcDao">
<property name="dataSource" ref="mastSource"/>
<property name="queryManager" ref="queryManager"/>
<property name="columnManager" ref="columnManager"/>
<property name="batchUpdateLimit" value="30000"/>
</bean>  
==============================================================================================================

- ���� ����
1. ���� > ����(O): mstsc   ==> Ȯ��(Ŭ��)
2. \\192.168.151.226  ==> administrator / poslo1!
==============================================================================================================

- ������ 
06:30 ���(����): ������ ICT
07:00 Glue ����
09:30 ������ ���(��ö�� ����)
12:00 �߽�(�����, ��������� ��): ��õ�� ������ �Ĵ�
18:00 ���
18:10 ���� ��Ÿ�
18:20 102�� ����
19:10 â�� ��Ÿ� ����
19:20 �Ͱ�(������)
19:40 ����(�����) 
21:40 ��ħ
==============================================================================================================

������������������� 2015.06.07(��) �۾� ����������������
---> 07:00 ~ 20:40 ==> ������

- �Ͽ��� 
08:00 ���
08:20 TV ��û
14:20 ū����, ���� ����(ȸ �� ��)
14:40 �߽�
16:00 �̹�(������ ����)
16:20 SKT ����� ����(T���� 35[����],  LTE �Ƚɿɼ�5[����] -> band ����Ÿ 36)
17:20 ������ ���(������ �� �¿� ��, ���� SMS5 �� �� ����)
17:50 ���� ����
21:00 ȭ�� ��ȭ(�翺, ����)
22:00 ����(������ �� ����)
00:00 ��ħ
==============================================================================================================

- ������ �ߵ�����ý��� Prj 
1. ���� �޴� â�ݱ� ���� ���� ó��
function gfn_AddGblDSMenu_02(strID, nRow, objDs) 
{
	//gds_menu.filter("");  //  gds_menu DS filter ����
	var curRow = gds_openMenu.addRow(); 
	trace("[/comSvc_script.xjs] [gfn_AddGblDSMenu_02()] ==> [TEST_01] [curRow]"+ curRow +"[PGM_ID]"+ 
	objDs.getColumn(nRow, "PGM_ID") +"[PGM_NM]"+ objDs.getColumn(nRow, "PGM_NM") ); 
	  
	gds_openMenu.setColumn(curRow, "WIN_ID", strID);
	gds_openMenu.setColumn(curRow, "PGM_ID", objDs.getColumn(nRow, "PGM_ID"));
	gds_openMenu.setColumn(curRow, "PGM_NM", objDs.getColumn(nRow, "PGM_NM"));
}

2. �˻� ó��
/*****************************************************************************************
* ��  ��  �� : grd_menu_oncelldblclick()
* ��      �� : grd menu ���� Ŭ�� �̺�Ʈ(����ȭ�� URL ȣ��)
* �Ķ����  :  
* �ۼ���    : ���¸�
* �ۼ���    : 2015.05.18
*****************************************************************************************/ 
function grd_menu_oncelldblclick(obj:Grid, e:GridClickEventInfo)
{ 
	var nRow = gds_menu.rowposition;
	 
	var sPgmId = gds_menu.getColumn(nRow, "PGM_ID");
	trace("[/Left_Menu.xfdl] [grd_menu_oncelldblclick()] ==> [nRow]"+ nRow +"[sPgmId]"+ sPgmId ); 

	gfn_ChkOpenMenu(sPgmId, gds_menu);  // �޴� Ŭ���� ����ȭ�� ȣ�� 
}
==============================================================================================================

- ���� Ŭ���� ����Ʈ ���  
1. �ް�����̺� (50Gb) 
2. ���۵���̺�(����) (15Gb)
3. N����̺�(���̹�) - 30Gb  ==> ��� ��
4. ����Ŭ����(�����̺���) - 5Gb   
5. ��ӹڽ� - 2Gb 
6. ONE����̺�(MS) - 15Gb 
7. TŬ����(SK) - 20Gb(sk ȸ���� ���, Ÿ�� ȸ���ϰ�� 5Gb) 
8. ��Ŭ����(KT - 50Gb(kt ȸ���� ���) 
9. U+Box(LG) - 10Gb(lgȸ���� ��� +5Gb) 
==============================================================================================================

- ���ڽ�
http://www.enuri.com/view/Listmp3.jsp?cate=0363&islist=Y&from=search&cate_keyword=Y&hyphen_2=false&skeyword=%EB%B8%94%EB%9E%99%EB%B0%95%EC%8A%A4
1. ���̳��� QXD900 View PLUS(2ä��) ��ũ���� ==> ADAS��Ű��,�������,32G
http://www.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=1258654476
2. ���̳��� Real Shot (2ä��)  ==> �������,32G
http://www.enuri.com/move/Redirect.jsp?cmd=move_link&from=detail&cmd=move_1865937689&vcode=5910&modelno=10618832&pl_no=1865937689&cate=03631601
==============================================================================================================

- �븲�� ���ǿ� �˻�
1. �ر����ǿ�
http://place.map.daum.net/9574620
2. �������ǿ�
http://place.map.daum.net/16528990
3. �������ǿ�
http://place.map.daum.net/9378388
4. �������ǿ�
http://place.map.daum.net/9574620
http://place.map.daum.net/16934972
==============================================================================================================

������������������� 2015.06.08(��) �۾� ����������������
---> 06:30 ~ 21:40 ==> ��. �ֱԸ� �����̶� DataURL_PYMS ������ �� �ο�, �Ⱓ ����(�� -> ��)

- ������ �ߵ�����ý��� Prj 
1. glue ����
1. COM_RightFrame.glue_uml_ad  ==> �Ϸ�(���� �ȵ�)
2. COM_LeftFrame.glue_uml_ad==> �Ϸ� 
3. COM_TitlebarFrame.glue_uml_ad ==> �Ϸ�(���� �ȵ�)  
==============================================================================================================

- ����(9��)
1. XPlatform ��ǰ CD Key
 1) Products: XPLATFORM V9.2 Runtime: 6CORE, UX-Studio: 1DEV
 2) License: N5XF1-SYF48-HJHF4-RX7GN-H5UJJ-RFJBU-ABQ
2. ���� ���� ����(192.168.151.226)
3. � ���� ����(192.168.151.225) ==> 192.168.151.222
-------------------------------------------------------------------------------------------------------

01. PYMS ���߼��� ���� URL: http://192.168.151.226:8080/PYMS-XP-Deploy/index.htm 
51. Glue Master: http://192.168.151.226:8080/GlueMaster/
=========================================================================================================

- ������ ������Ʈ UpdateURL �� ã�� ���� �߻�
(XCompCmp) ������Ʈ ���ҽ��� �������� ���Ͽ� ������Ʈ ������ �ߴ��մϴ�. 
Component.dll�� ã�� �� ���� Load�� �����Ͽ����ϴ�.(XCompCmp)
1. ����: Component UpdateURL�� �߸� �Ǿ� �־ ���� ����
==> Component UpdateURL : http://192.168.151.226:8080/PYMS-XP-Deploy/XP-Module/components
=========================================================================================================

- hortcut�κп��� ������ Ŭ���� �ϸ� ���� â ��
1. ����: 
������ ������ �Ǿ��µ� shortcut�κп��� ������ Ŭ���� �ϸ�
�׸��� ���� ������ 2~3�� �� �Ŀ� �α��� ȭ���� �����ϴ�.
 1) ���ν��� ���� ������ ã�� �� �����ϴ�.
2. ����: �������� ���� �ְų� �ش� ���α׷��� ����� ��ġ�� �ȵǾ ���� ����
3. ��ġ: PC ����� �� �ٽ� ��ġ�� ��
------------------------------------------------------------------------------------------------

<SCRIPT LANGUAGE="javascript">
function fn_make_shortcut()
{ 
	var sServerPath = "http://192.***.***.***:8080/PYMS-XP-Deploy/"; // � ����

	XLauncher.key = "PYMS";
	XLauncher.xadl = "http://192.***.***.***:8080/PYMS-XP-Deploy/XP-Source/PYMS.xadl";

	XLauncher.makeshortcut("PYMS","http://192.***.***.***:8080/PYMS-XP-Deploy/image/PYMS.ico", "desktop");
	XLauncher.launch(); 
}
</SCRIPT> 
==============================================================================================================

- ���� ���̺� ����
1. TB_COM_MENU(�޴� ����Ʈ  ���� TB)
2. TB_COM_MYMENU(���̸޴� ����Ʈ  ���� TB)
3. TB_COM_FRAMERESET(������ �缳�� TB)
4. TB_COM_MEMOLIST(�޸� ����Ʈ  ���� TB)
5. TB_COM_SHARELIST(���� ����Ʈ  ���� TB)
6. TB_COM_MENUSRCH(�޴� �˻�  ���� TB)
==============================================================================================================
 
������������������� 2015.06.09(ȭ) �۾� ����������������
---> 06:00 ~ 21:00 ==> �ֱԸ� �����ʿ��� ���߼����� Glue class �۾��� ���ؼ� ������ ���� DB �˻� �ȵ�

- ������ �ߵ�����ý��� Prj 
1. glue ����
1. COM_RightFrame.glue_uml_ad  ==> �Ϸ�(���� �ȵ�)
2. COM_LeftFrame.glue_uml_ad==> �Ϸ� 
3. COM_TitlebarFrame.glue_uml_ad ==> �Ϸ�(����)  
==============================================================================================================

- ������ �ߵ�����ý��� Prj ���� �ػ�
1. ǥ�� �ػ�: 1366 * 768  
2. ���� ��Ʈ��(Dell) �ػ�: 1920 * 1080
==============================================================================================================

- Glue ���� 
===========================
Start XplatformDeleteNamed !
dao        => pyms_dao
sql-key    => TITLEBARFRAME.DELETE
in-ds      => ds_cond
result-cnt => fv_deleteCnt
===========================
Do not support Input DataSet Type (glueRowSet)!
com.poscoict.glueframework.GlueException: Do not support Input DataSet Type (glueRowSet)!
1. �ذ�å
/left_frame.xfdl] [btn_selt_onclick()���� sInDatasets�� frameReset�� ����
/COM_TitlebarFrame.glue_uml_ad �𵨿��� in-ds: frameReset �� ����
var sSvcID = "svc_save_frameReset";
var sUrl = "DataURL_PYMS::handle.do?ServiceName=COM_TitlebarFrame-service&save";    
var sInDatasets  = "frameReset=gds_frameReset";
var sOutDatasets = "fv_saveCnt=fv_saveCnt";
var sOutDatasets  = "";
var sArgument = " userId="+ wrapQuote(gv_UserId);   
var sCallbackFunc = "fn_CallBack";  
trace("[/left_frame.xfdl] [btn_selt_onclick()] ==> [gds_frameReset_��ȸ��]"+ gds_frameReset.getRowCount() 
+"[gds_frameReset.saveXML()]"+ gds_frameReset.saveXML() );  // DS �α� ����  
gfn_Transaction(sSvcID, sUrl, sInDatasets, sOutDatasets, sArgument, sCallbackFunc);
-----------------------------------------------------------------------------------------------------

- Glue ����2 
===========================
Start XplatformSearchNamed !
dao     => pyms_dao
sql-key => MENUSRCH.SELECT
in-ds   => 
out-ds  => ds_result
===========================
Please Check query!
com.poscoict.glueframework.GlueException: Please Check query!
1. �ذ�å
/left_frame.xfdl] [btn_selt_onclick()���� sInDatasets�� frameReset�� ����
/COM_TitlebarFrame.glue_uml_ad �𵨿��� in-ds: frameReset �� ����
var sSvcID = "svc_save_frameReset";
var sUrl = "DataURL_PYMS::handle.do?ServiceName=COM_TitlebarFrame-service&save";    
var sInDatasets  = "frameReset=gds_frameReset";
var sOutDatasets = "fv_saveCnt=fv_saveCnt";
var sOutDatasets  = "";
var sArgument = " userId="+ wrapQuote(gv_UserId);   
var sCallbackFunc = "fn_CallBack";  
trace("[/left_frame.xfdl] [btn_selt_onclick()] ==> [gds_frameReset_��ȸ��]"+ gds_frameReset.getRowCount() 
+"[gds_frameReset.saveXML()]"+ gds_frameReset.saveXML() );  // DS �α� ����  
gfn_Transaction(sSvcID, sUrl, sInDatasets, sOutDatasets, sArgument, sCallbackFunc);
==============================================================================================================
 
- SSD ���� ����(�� ��Ʈ�Ͽ� ���)
1. �Ｚ���� 840 EVO Series (250GB, MZ-7TE250B/KR, ��ǰ), ����: 126,890��
http://www.interpark.com/product/MallDisplay.do?_method=detail&sc.shopNo=0000100000&firpg=01&sc.prdNo=3327928046&sc.dispNo=016001&sc.dispNo=016001
SATA3(6Gb / s) / 250GB / �б� 540MB / s , 97,000 IOPS / ���� 520MB / s , 66,000 IOPS / 2.5��(6.4cm) / 
�Ｚ 3-CORE MEX / TLC(���) / TRIM ���� / GC ��� / �β�6.8mm / Samsung 1x nm Toggle DDR 2.0 NAND 
==============================================================================================================
 
������������������� 2015.06.10(��) �۾� ����������������
---> 06:00 ~ 21:30 ==>  

- ������ �ߵ�����ý��� Prj 
1. glue ����
1. COM_RightFrame.glue_uml_ad  ==> �Ϸ�(����: �Ϸ�)
2. COM_LeftFrame.glue_uml_ad==> �Ϸ� 
3. COM_TitlebarFrame.glue_uml_ad ==> �Ϸ�(����) 
==============================================================================================================

- ���̸޴� ����(/Popup_MyMenu.xfdl) ==> �Ϸ� 
==============================================================================================================
 
- ���� ���̺� ���� 
1. TB_COM_MEMOLIST(�޸� ����Ʈ  ���� TB)
2. TB_COM_SHARELIST(���� ����Ʈ  ���� TB)
3. TB_COM_EMP(���� ���� TB)   ==> ����
==============================================================================================================

- ���̺� ���� �ο�(MS-SQL ������ �� ��) ==> http://blog.naver.com/nkind/110167567884
use PYMS
grant select on dbo.TB_COM_MEMOLIST to pyms_usr
;

use PYMS
grant insert on dbo.TB_COM_MEMOLIST to pyms_usr
; 

use PYMS
grant delete on dbo.TB_COM_MEMOLIST to pyms_usr
; 
==============================================================================================================
 
������������������� 2015.06.11(��) �۾� ����������������
---> 06:00 ~ 21:00 ==> 10�� �ÿ�(ȭ�� ������ ���� �ٽ� �ϱ�� ��: ������) ==> ���ῡ ���α׷� ���� ����

- ������ �ߵ�����ý��� Prj 
1. ��ü ����
==============================================================================================================

1. glue ����
1. COM_LeftFrame.glue_uml_ad(�޴�, ���̸޴�)  
 1) �޴�, ���̸޴� --> �Ϸ�
 2) �޴� �˻�
2. COM_RightFrame.glue_uml_ad(�޸�, ����)  
 1) �޸� --> �Ϸ� 
 2) ���� --> �Ϸ�
3. COM_TitlebarFrame.glue_uml_ad(������ �缳��) ==> �Ϸ� 
==============================================================================================================

- ���� ���� URL
http://192.168.151.226:8080/PYMS/PYMS/PYMS.xadl

1. ���� dll ����
XAppletComp.dll ===> ���� ���� 2015.4.28.1(7�� ���� ���� ���� ���� ����)
ExtCommon.dll   ===> 2015.2.27.1
==============================================================================================================
 
- �α� ��ȸ(log ��ȸ)
[wadmin@_DEV_~]: cd /usr/share/tomcat/logs  ===> ���� ����  @@@
[wadmin@_DEV_~]: grep 'header.jsp]' /usr/share/tomcat/logs/catalina.out -A10 -B10  less ==> �α� ��ȸ @@@
[wadmin@_DEV_~]:  tail -f /usr/share/tomcat/logs/catalina.out  grep 'Exception' ==> �ǽð� ��ȸ @@@
tail -f /iosp/comp/auth/logs/catalina.out  
==============================================================================================================
 
������������������� 2015.06.12(��) �۾� ����������������
---> 06:20 ~ 00:00 ==> ö��, ���� Prj ö�� ����(18��, ��ö�� ���� ���� �������� ���μ� ��), ����(�������� ��)

- ������ �ߵ�����ý��� Prj 
1. ��ü ����
2. �ڼ��� �븮 ö�� ==> 1�� ���� 1���� �� �ߴٰ� ��, �ｺ(�� 7����)
==============================================================================================================
 
- �߰� ���� ����
1. ����â, �޸�â ���̱�, ����� ==> �Ϸ�(�ٽ� Ȯ���� ��)
2. ��â ���� ȭ�� ũ�� ���� ==> �Ϸ�
3. ���� �̹��� �ε� �� ó�� ==> �Ϸ�
4. � ���� �� ���� ==> �Ϸ�
5. ���⹰ �ۼ� ==> �Ϸ�
6. openList ���� ==> �Ϸ�
==============================================================================================================

- �̹��� �ε� 
this.ImageViewer00.image ="";
trace(this.ImageViewer00.imageheight); 
this.ImageViewer00.image = "http://img.naver.net/static/www/u/2013/0731/nmms_224940510.gif";
==============================================================================================================
 
- ���� �̹��� �ε� �� ó�� ����
/XP-Runtime-Install.htm ���Ͽ��� ó��
<SCRIPT LANGUAGE="javascript">
function fn_make_shortcut()
{ 
	var sServerPath = "http://192.168.151.226:8080/PYMS-XP-Deploy/";// PYMS ���� ���� 

	XLauncher.key = "PYMS"; 
	XLauncher.xadl = "http://192.168.151.226:8080/PYMS/PYMS/PYMS.xadl";   // xadl(PYMS ���� ����) ==> 1�� ����: 2015.06.11 �����

	XLauncher.loadingimage="http://192.168.151.226:8080/PYMS-XP-Deploy/image/loading_img.gif";	// PYMS ���� ���� loading image 

	XLauncher.makeshortcut("PYMS","http://192.168.151.226:8080/PYMS-XP-Deploy/image/PYMS.ico", "desktop");
	XLauncher.launch(); 
}
</SCRIPT>
</HEAD>
==============================================================================================================

- grd_openedList ����
1. ���� Grid ����Ÿ�� ũ�� ������ �ȵ�)  ==> class(grd_LF_openMenu) ����
/*****************************************************************************************
* ��  ��  �� : btn_openedList_onmouseenter()
* ��      �� : ���� â ����Ʈ�� ���콺�� �÷��� �� �̺�Ʈ(���� â ����Ʈ ����)
* �Ķ����  :  
* �ۼ���    : ���¸�
* �ۼ���    : 2015.05.21       
*****************************************************************************************/  
function btn_openedList_onmouseenter(obj:Button, e:MouseEventInfo)
{ 
	this.pdv_popupOpenList.visible = true; 
	if(pdv_popupOpenList.isPopup) pdv_popupOpenList.closePopup();
	trace("[/TabFrame.xfdl] [btn_openedList_onmouseenter()] ] ==> [TEST_01] [obj.position.height]"+ obj.position.height ); 

	pdv_popupOpenList.trackPopupByComponentAsync(obj, 0, obj.position.height);
	//trace("[/TabFrame.xfdl] [btn_MDI_OpenList_onmouseenter()] ==> [TEST_end]" ); 
}
==============================================================================================================

gv_TabFrame.form.btn_leftMenuHide.visible = true;// Left Menu ����� ��ư(Main)
==> btn_leftMenuHide -> btn_MDI_LeftHide :

gv_TabFrame.form.btn_leftMenuShow.visible = false; // Left Menu ���̱� ��ư 
==> btn_leftMenuShow -> btn_MDI_RightHide : absolute 20 0 45 33

gv_TabFrame.form.btn_rigthtMenuHide.visible = true;// RIGHT Menu ����� ��ư (Main) 
==> btn_rigthtMenuHide -> btn_MDI_RightHide

gv_TabFrame.form.btn_rigthtMenuShow.visible = false;// RIGHT Menu ���̱� ��ư
==> btn_rigthtMenuShow ->  btn_MDI_LeftHide 
=========================================================================================================    
 
//gv_TabFrame.form.btn_leftMenuShow.position = "absolute -150 0 165 33";//absolute 140 0 165 33  ==. absolute 140 0 165 33 
gv_TabFrame.form.btn_leftMenuShow.position = "absolute -150 0 25 33";//absolute 140 0 165 33  ==. absolute 140 0 165 33 

//gv_TabFrame.form.btn_leftMenuShow.position = "absolute -150 0 165 33";//absolute 140 0 165 33  
gv_TabFrame.form.btn_leftMenuShow.position = "absolute -150 0 25 33";//absolute 140 0 165 33 
=========================================================================================================    
 
gv_TabFrame.form.btn_leftMenuShow.move(-200,0);
==============================================================================================================
 
������������������� 2015.06.13(��) �۾� ����������������
---> 00:00 ~ 21:00 ==> ö��, ���� Prj ö��(16��, ������ ICT ����â ������ ���� �¿� �� => KTX�� ���￪���� ����)

- ������ �ߵ�����ý��� Prj
1. ��ü ����
==============================================================================================================
  
- �߰� ���� ����
1. ����â, �޸�â ���̱�, ����� ==> �Ϸ�
2. myMenu ���� ���� ==> �Ϸ�
3. ȭ�� ����� �����ư ����� ��� ==> ���� ��(1�� �Ϸ�)
4. ��ܽ� ���⿡�� ȭ�� Ŭ���� �ǵ� ���� ���� ==> Ȯ�� ��[���� �ڹ� �����ؾ� ��]
 1) �� ������ �ذ�
==============================================================================================================

- ö��
00:30 ����â, �޸�â ���̱�, ����� ��� ����
09:50 �μ��ΰ� �ڷ� ����
10:30 GIDATA �̼��� ����Կ��� ��Ȳ ����
12:30 �߽�(��������): ����â ������ ��
15:00 ����
16:00 ������ ICT ���(����â ���� ��)
16:30 ���׿� ����
17:00 ���� ���(KTX ��õ)
19:40 ���￪ ����(�ٰܴ� �������� �� ����)
20:00 ����ö ž��(���￪(1ȣ��) -> �ŵ����� -> �븲��(2ȣ��))
20:40 �� ����(���� ��� �λ�)
21:00 ����
23:00 ��ħ
==============================================================================================================

������������������� 2015.06.14(��) �۾� ����������������
---> 07:00 ~ 20:40 ==> 
 
�� �����౸
06:00 ���(�� ��)
06:30 ����(6411��, �븲�� -> ��Ƽ��)
07:20 �����ʵ��б�(�� ��ħ, ��� ���� ����)
08:20 ����(3����)
10:30 ����(�߱��� ������ �� �ð��� ������ �Ѵٰ� ��)
11:30 �߽�(����: �ҽ��ѿ�): ȿ�������� ��
12:40 ����
13:20 �Ͱ� 
14:00 ����
18:30 ���
19:00 ����
00:00 ��ħ
==============================================================================================================

- ��������������� ��û: �븲3�� ��������� �ϰ� ��û�ϱ�� ��
1. �Ƶ��� ��� ��û�� �ۼ�( �븲3�� ��������� ����)
2. http://blog.nsok.co.kr/220365293055   ==> 
1) ��ȭ�����
http://place.map.daum.net/12503423
==============================================================================================================

������������������� 2015.06.15(��) �۾� ����������������
---> 07:10 ~ 19:00 ==> ���� ����

- ������ �ߵ�����ý��� Prj  �߰� ó�� ����
1. ��ܽ� ���⿡�� ȭ�� Ŭ���� �ǵ� ���� ����(TabFrame.xfdl) ==> �Ϸ� 

2. ȭ�� ����� �����ư ����� ���(WorkFrame.xfdl)  ==> �Ϸ�
 1) ����: /M800200006.xfd(��񺰻�����������, Common::M800200006.xfdl)
 2) �޴� ��ư ������ �����ϰ� ������ gds_menuInfo�� ���� �ش� ���α׷� ID�� ��ư ������ �����ϸ� ��

3. ����� �����ư ����� ���(��â ȭ��)(WorkFramePopup.xfdl) ==> �Ϸ�
==============================================================================================================

- ��ܽ� ���⿡�� ȭ�� Ŭ���� �ǵ� ���� ����
/************************************************************************************************
 * 01. �Լ����� : MainTemp_onactivate()
 * 02. EVENT : MainTemp onactivate
 * 03. ��� : ������������ Ȱ��ȭ�Ǿ��� �� �߻��ϴ� �̺�Ʈ
 ************************************************************************************************/ 
function MainTemp_onactivate(obj:Form, e:ActivateEventInfo)
{ 
if(gfn_IsNull(pv_winKey) == true) return;

div_subMain.redraw(); 
gfn_ActiveForm(pv_winKey);    // ������ Ű�� �������� �����ִ� ȭ���� ��� Frame�� focus, maximize ó��
}
----------------------------------------------------------------------------------------------------------

/*****************************************************************************************
* ��  ��  �� : btn_MDI_Fullsize_onclick()
* ��      �� : �⺻ ���� 
*****************************************************************************************/  
function btn_MDI_Fullsize_onclick(obj:Button,  e:ClickEventInfo)
{
	if(gv_cascadeYn > 0 )
	{
	if(gds_openMenu.rowcount > 0 )
	{     
	lfn_TabFrameBtnVisF();
	gfn_ArrangeWin(obj.userdata);
	    
	var naviCD = tab_navi.tabpages[0].name; 
	gfn_ActiveFrame(gv_activeWinId);    // ������ Ű�� �������� �����ִ� ȭ���� ��� Frame�� focus, maximize ó��
	}
	}
} 
==============================================================================================================

- 2. ȭ�� ����� �����ư ����� ���
1. ����: /M800200006.xfdl
==============================================================================================================
 
- ������ ����[(��)�����̵���Ÿ ����]  ==> 01. HP Officejet Pro 8660[GIDATA_����)]
1. HP Officejet Pro 8660 ==> http://[fe80::a22b:b8ff:fe6d:627e]/
http://support.hp.com/kr-ko/drivers/selfservice/hp-officejet-pro-8660-e-all-in-one-printer-series/5398139/model/5387678 
==============================================================================================================

������������������� 2015.06.15(��) �۾� ����������������
---> 07:10 ~ 19:00 ==> ���� ����

- ������ �ߵ�����ý��� Prj  �߰� ó�� ����
1. ���� ����2
==============================================================================================================

- MySQL, Apache Tomcat, Eclipse �����ϱ�(JSP) 
- MySQL DB ����
- ������ �ߵ�����ý��� Prj MySQL ����
- AIG_TM �ҽ� MySQL ����
- ����� Nexacro �ҽ� MySQL ����
==============================================================================================================

- ������ �ߵ�����ý��� Prj  �ҽ����� �ٿ�ε� ���� �ҽ�
1. ����� �ҽ�
2. AIG_TM �ҽ�
2. tamaPrj �ҽ�
==============================================================================================================

- ������ �ߵ�����ý��� Prj 
1. �ڼ��� �븮 (��)�����̵���Ÿ �̼��� ������ ���� ���״ٰ� �� ==> ������ �ڼ��� �븮�� ���� ���� ��
 1) ������ �ٽ� ���ͺ� ���� ���´ٰ� ��
==============================================================================================================

- �� ����
1. ������ ��뷮 23kg /�����/�� ����(�ְ�޹����)35����, ����: 7,500��
http://www.interpark.com/product/MallDisplay.do?_method=detail&sc.shopNo=0000100000&sc.dispNo=016001&sc.prdNo=1734615445
==============================================================================================================

������������������� 2015.06.16(ȭ) �۾� ����������������
---> 07:10 ~ 19:00 ==> ���� ����

- ���� ���� 
00:00 ö��
06:00 ��ħ
09:00 ���
09:10 ����(�ұ���)
09:20 �����
09:40 �븲3�� �����(���� ������ ��)
09:50 ħ(���� �): �������ǿ�
11:00 ����: �پƼ� ���ν�����
11:20 ����: ����DC�ƿ﷿(â�� ���Ĺ��������� 8.5L)
12:40 �Ͱ� 
14:00 �߽�
16:00 �����(���� � �������� ���ư�: �翺 ���)
16:10 �븲3�� �����(���� ���� ��)
16:20 ���� ����Ʈ ������(���� �� ��)
17:20 �Ͱ�
17:50 ����
20:00 ���
20:10 ����
22:00 ��ħ
==============================================================================================================

- ���� ����(�ٿ��� ��Ź)
1. [��������] XO���丮�� 800g 3ĵ+���ϸ���5õ��/����, 54,000�� ==> ���� �Ϸ� 
http://item2.gmarket.co.kr/Item/detailview/Item.aspx?goodscode=538264949
==============================================================================================================
 
- �ٿ��� �� �ּ�
1. ���� ���Ǳ� �Ÿ��� 412-103 101ȣ  ����ȣ��(�ٿ��� ����) ����
==============================================================================================================
 
������������������� 2015.06.17(��) �۾� ����������������
---> 07:10 ~ 19:00 ==> ���� ����(10��, ����S 5��): ���翡�� 9�� 10�п� ���(9�� 45�� ����)

- ���� ����(10��, ����S 5��)
01. ���������� :  XPlatform ���� ����
02. �Ͻ� : 2�� 10�� 10:00~ 2�� 11�� 17:00 
03. ����:  XPlatform �Ȼ��� ����(010-8759-3999): �����û������ / ���������������� 
04. ������� : TOBESOFT 5�� ���콺��
05. ��Ÿ: �蹮�� ����(010-2846-0551. (��)����S), ������ ����(010-7204-8977, 010-7204-8977)�� ���� ���� ����
==============================================================================================================

- ���� ����
1. DB ������ �츮 ������ �ƴ� ==> Frame ������ �츮 ����
2. Transaction ���� ����
3. ��� ���� ����(������ �ƴ� ==> ���� ��� ���� ��û) --> ��ü ���� ��û ����(�������� ����) 
http://www.xplatform.co.kr/Miplatform/NewHome/asp/support/TotalBoard.asp?PCategory1=Support&PCategory2=XPLATFROM&PCategory3=QA&dispGubun=ALL
4. XPlatform�� CSS2 ���
5. Nexacro ==> XP V14
6. ��Ʈ ��: XChart(���� ��ǰ, ����), ��������(http://www.ng-shop.co.kr/), �˵�
7. ���� ����
 1) Frame, Library, gfn_Transaction, File up-down, Excel Exp-Imp, Grid sort-filter, Dataset, Model, Message
 2) ����
 3) 3rd Party: Report, Chart, Web Editor(����) ==> ��� ���� ������ ��
==============================================================================================================

- ����(��������� üũ)
1. XPLATFORM9.2 win8_ie11�̻� ���� ���������Դϴ�.
http://www.xplatform.co.kr/Miplatform/NewHome/asp/support/TotalView.asp?PCategory1=Support&PCategory2
=XPLATFROM&PCategory3=Tip&page=1&display_cnt=20&str_boardid=A05&searchfield=����&searchgubun=OR&keyword
=%B9%E8%C6%F7&BusinessSection=%&str_an=1725
 1) MS ������ �� ���� ���ĸ�Ÿ ȯ�� ����(ActiveX ��� �� ��)
==============================================================================================================

- ���� ������ ����[(��)�������Ʈ]
1. TOBE-SAP-AP3 / tobesapap0701#3==> �����
2, Zeus AP/ tobesoftap  ==> ���� �ȵ�
==============================================================================================================

- nexacro Ȩ������
1. www.playnexacro.com
==============================================================================================================

- D3 Chart ==> ���� �ҽ�(�����꿡�� nexacro �˻� --> ���������� �����)
==============================================================================================================

- HTML5 �ҽ�
1. caniuse.com ==> http://caniuse.com/#cats=HTML5
2. w3shools.com
----------------------------------------------------------------------------------------

- js DOC
- base Library
- Eco Library
/**
 * Represents a book.
 * @constructor
 * @param {string} title - The title of the book.
 * @param {string} author - The author of the book.
 */
function Book(title, author) {
}
==============================================================================================================

- Shock StartUp ����
01. MySQL_startup
"D:\mysql-5.6.21\bin\mysqld.exe"
"C:\eduPrj\mid\mysql-5.6.21\bin\mysqld.exe" /startup    --> ��� ����
==============================================================================================================

- mysql �ڵ� ����
http://www.mysqlkorea.com/sub.html?mcode=manual&scode=01_1&m_no=22196&cat1=749&cat2=773&cat3=833&lang=k
==============================================================================================================

- tamaPrj ����(eclips����) @@@
1. D:\eduPrj ���� �����Ͽ� �ٿ��ֱ�
2. eduPrj -> etamaPrj�� �̸� �ٲٱ�
3. D:\tamaPrj\eclipse\eclipse.ini ���Ͽ���
D:\eduPrj\mid\jdk1.6.0_30\jre\bin\javaw.exe
==> D:\tamaPrj\mid\jdk1.6.0_30\jre\bin\javaw.exe�� ����
4. eclipse.exe ����
5. eduPrj_90 ������Ʈ�� ����
6. .metadata ����
6. New > Dynamic Web Prject ����
 1) Prject name: tamaPrj
 2) Prject location: D:\tamaPrj\work\tamaPrj ==> �ڵ� ����
7. Source folders on build path: Next(Ŭ��)
8. Configure web module settings
 1) Context root: tamaPrj 
 2) Context directory: Web   ==> Finish(Ŭ��)
9. tamaPrj ������Ʈ ������ ==> �ݱ� 
10. D:\tamaPrj\work\tamaPrj_90 ���� ����
11. D:\tamaPrj\work\tamaPrj������ �ٿ��ֱ�
12. tamaPrj ������Ʈ �����
13. Web Modues ����
==> /, tamaPrj 
14. Tomcat v7.0 ���� Server Locations ����
==> Server path: D:\tamaPrj\mid\apache-tomcat-7.0.53
 1) Server > Runtime Environments: 
  Name: Apache Tomcat v7.0
  Tomcat installatiton directory: D:\tamaPrj\mid\apache-tomcat-7.0.53
15. ���� �����
16. �׽�Ʈ
 http://127.0.0.1:9080/test.jsp
http://127.0.0.1:9080/JSP_PYMS/pyms.jsp 
==============================================================================================================

- eclipse ����
A Prject already exists on the file system at this location: D:\tamaPrj\work\tamaPrj.  
Either use "Import Existing Prjects into Workspace" to create a Prject at this location or 
==============================================================================================================
 
- ���� Prj ����(2015.06) ���
1. ���� Prj ���� ����Ͽ� ��ü������ ���� ���(12��) ==> 6�� ���� 170,600�� û��
==============================================================================================================

������������������� 2015.06.18(��) �۾� ����������������
---> 09:00 ~ 19:00 ==>  

- �Ѽ� ERP �籸�� Prj ����(9��, ����)
1. �Ѽ� Prj(������) - XPlatform ����(8����)
 1) ��ġ: ����� ������ ������ 523 �Ѽ����� ��ó ���� ������ ��(�츮���� ��û������ �ǹ� 3��) 
2. ������Ʈ �η�
 1) ����ȣ ����(010-2247-9565, khkwak@lgcns.com, LG CNS ������ũ�������, PM)  ��� ==> ���꼺 ����
 2) ����� ����(010-8241-4516, jwanpark@lgcns.com, LG CNS ������ũ�������, ERP1�� PL)
 3) ������ ����(010-8178-6699, youngbseo@lgcns.com,  LG CNS ������ũ�������, ���� PL)
3. ������Ʈ �η�(��)
 1) ����� ���ӿ�����(010-2958-4150, (��)�Ѽ� �����) 
 2) �̿뼷 ����(010-7226-7879, (��)�Ѽ� IT��) 
==============================================================================================================

- �Ѽ� ERP �籸�� Prj ��Ȳ
1. WAS: JEUS, Middleware: TMAX
2. ���߼���: ���� ��(������ ���), �����: Ȯ��(������ ���)
3. XPLATFORM ����: 9.2.1(�ֽ� ����)
==============================================================================================================

- ���� ������ ����[�Ѽ� ERP �籸�� Prj]
1. cn2 / 20150429a==> �����
==============================================================================================================

- LG CNS ȸ������
1. https://partnerplus.lgcns.com/lgcns/pp/common/dev_login/portalIndex.dev ==> DEV109094 / hpxoaks1**
==============================================================================================================

- �ÿ� ȭ�� ���� �۾�
1. ppt �۾�
==============================================================================================================

- ���� ����  ����(������ UI ���� --> DB ��� ����)
1. Frame, Library, gfn_Transaction, File up-down, Excel Exp-Imp, Grid sort-filter, Dataset, Model, Message
2. ����
==============================================================================================================
 
������������������� 2015.06.19(��) �۾� ����������������
---> 08:10 ~ 19:10 ==> �����̳� ���Ե�(������ ����[010-6355-0272, hyonejun@daum.net)

- �Ѽ� ERP �籸�� Prj
1. NH���� �ҽ� �м�(user_component) 
==============================================================================================================

- Load�� ����(NH���� �ҽ�)
 (5124): Error: Component dll�� ã�� �� ���� Load�� �����Ͽ����ϴ�. (XResponse)
 (5124): Error: Component dll�� ã�� �� ���� Load�� �����Ͽ����ϴ�. (XPrintEx)
 (5124): Error: Component dll�� ã�� �� ���� Load�� �����Ͽ����ϴ�. (XInitechAdp64)

1. ��ġ: �ش� ���ϵ��� ������Ʈ ���� ���(C:\Program Files (x86)\TOBESOFT\XPLATFORM\9.2.1)�� �����Ͻ� �� 
������Ʈ�� ����� �Ͻø� ���������� load�� �ǽǰ̴ϴ�. 

- Load�� �߰� ����((��)Ʈ�����Ʈ�� �������� ��û)
(3900): Error: Component dll�� ã�� �� ���� Load�� �����Ͽ����ϴ�. (XWrapComp)
(3900): Error: Ŭ����(WebBrowser) ������ �����Ͽ����ϴ�.
TypeDefinition �κп� WebBrowser�� �߰� �Ǿ��ִ��� üũ�� ���ñ� �ٶ��ϴ�. 
TypeDefinition > Edit > Objects �� > 

*************** �߰��ȳ� **************************
XWrapComp.dll �� ��� ���� �����̱⿡ ��ġ�� ��Ƚ��ϴ�. 
==> ����: C:\Program Files (x86)\TOBESOFT\XPLATFORM\9.2.1�� ���� XWrapComp.dll ������ XPLATFORM
9.2.1 ������ �� ����(���� ������ 2105.2.24.1 �̿��� ��)
==> NH���ؿ��� dll�� ������� ��(XInitechAdp64.ll ������ �ذ� �Ұ�)
==============================================================================================================
 
- Load�� ����(NH���� �ҽ�)
1. ����
(2868): Error: Component dll�� ã�� �� ���� Load�� �����Ͽ����ϴ�. (XWrapComp)  ==> ���Ϲ���: 2015.4.28.1 

2. ��ġ: ���� ����(2015.4.28.1 --> 2015.4.28.1)
<Component type="Bin" id="WebBrowser" classname="WebBrowser" module="XWrapComp" version="2013.5.16.1"/> 
--> 
<Component type="Bin" id="WebBrowser" classname="WebBrowser" module="XWrapComp" version="2015.4.28.1"/>
==============================================================================================================

- XPlatform �����(Debugging)
http://xplatform.tistory.com/15
http://onjoraclejava.blogspot.kr/2014/04/xplatform-debugging-alerttrace.html
==============================================================================================================

- ����븮�� ���� ��ȭ (�����н�) ������ û��
1. http://partnercampus.lgcns.com ���� > log-in > ����븮�� ���� ���� ==> DEV109094 / hpxoaks12!@ 
2. LG CNS ���Ѽ� ERP �籸�࡯�� �����ϰ� �� ����ȸ�� ��(��)�������Ʈ���� ����븮������ ���� 
==============================================================================================================

- ����(PicPick) ����(http://wiziple.tistory.com)
1. ȭ�� ĸó, ���� ����
2. ����Ű
 1) ���� ������: Shift + Ctrl + 1
 2) Ȱ��ȭ�� ������ ĸó�ϱ�: Shift + Ctrl + 9
 3) ������ �����Ͽ� ĸó�ϱ�: Shift + Ctrl + 0
==============================================================================================================

- ���� ����(�ٿ��� ��Ź)
1. [��������] XO���丮�� 800g 3�ܰ� 3ĵ, 54,000�� ==> ���� �Ϸ�[2015.06.17(��)]
http://item2.gmarket.co.kr/Item/detailview/Item.aspx?goodscode=538264949
----------------------------------------------------------------------------------------

2. [��������] XO���丮�� 800g 4�ܰ� 6ĵ, 118,570�� ==> ���� �Ϸ�[2015.06.19(��)]
http://item2.gmarket.co.kr/Item/detailview/Item.aspx?goodscode=538264949
==============================================================================================================

- ���� ���� �� �ݾ�: 172,570��
1. �۱� ����: SC����, ���¹�ȣ: 130-20-502841, ������: ���¸�
==============================================================================================================

- �ݿ���
19:00 ���
20:00 ��������Ʈ ����(��������Ʈ ���峪 ����)
20:10 ��������� ��ȭ(�������� �ϰ��ϱ淡 �� ������)
20:20 �Ͱ�(����Ʈ ��� �ɾ �ö��)
20:30 ���� 
00:00 �������忡 ��������Ʈ ���ƴٰ� ��ȭ, ���� ����(�� ����)
00:20 ��ħ
==============================================================================================================

������������������� 2015.06.20(��) �۾� ����������������
---> 07:00 ~ 20:40 ==> 
 
- �ָ� 
08:00 ���
08:30 ���� ����Ʈ �ο� �� �ۼ�(�μ�)
08:50 ���� ����Ʈ �ο� �� ����Ʈ ���Ա��� ����
09:00 ���� ����Ʈ �ο� ��������û �ο��ǿ� ���(�븲2�� ��������Ʈ ��������Ʈ ���� �������� ��û)
12:30 �߽�
19:00 ����
00:00 ��ħ
==============================================================================================================

- BBQ ġŲ �ֹ�(BBQ �븲��)
1. ��ũ�� ���ġŲ, ����: 17,000�� 
https://www.bbq.co.kr/menu_new/menu_view_R.asp?mid=10666&cate=B0101&cate2=&SCHKEY=&SCHTEXT=&catenm=%EC%B9%98%ED%82%A8
==============================================================================================================

������������������� 2015.06.21(��) �۾� ����������������
---> 07:00 ~ 20:40 ==> 
 
�� �����౸
06:00 ���
06:30 ����(6411��, �븲�� -> ��Ƽ��)
07:20 �����ʵ��б� 
08:00 ����(4����: ��������ϰ� ���������ϰ� �ο�)
11:00 ����
11:30 �߽�(����: �ҽ��ѿ�): ���� ��
12:40 ����
14:00 6411�� ���� 
14:30 LG �ڷ���(���� ����� ���� ��): ����ī�� ���, 2�� ����, �� 3�������� ������ 6 ����� �� �ִٰ� ��
        ==> SKT ���� 1�� �� ���� �־ ��� ��
15:00 �Ͱ� 
15:40 ����
18:30 ���
18:35 ����(�����ν���)
19:50 ����
00:00 ��ħ
==============================================================================================================
   
- �ұ���
1. �һ�� �������� ǳ��ο� �� ǳ��(20kg), 35,890��
http://www.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=1185816850&xfrom=&xzone=
==============================================================================================================

������������������� 2015.06.22(��) �۾� ����������������
---> 08:10 ~ 19:10 ==>  

- �Ѽ� ERP �籸�� Prj
1. NH���� �ҽ� �м�(user_component) 
1) Component(Binary, User Object, Composite) 
2) LEFT �޴�: ds_left_menu(gds_SubMenu DS�� ����)
==============================================================================================================

- LEFT �޴� ��ȸ ó��
/*********************************************************************
 * �� �� �� : f_leftMenuSet
 * �Լ����� : top �޴� Ŭ���� ����Ʈ �޴� Ȱ��ȭ
 *********************************************************************/
function f_leftMenuSet(strHgrkMnCd)
{ 
    var stKey = strHgrkMnCd.replace("_","/");
    tab_leftMenu.tabindex = 0;   
    PopupDiv02.divPopupLeft.tab_leftMenu.tabindex = 0;
    ds_left_menu.clearData();
    gds_SubMenu.filter("MENU_DPTH_CN > 4 && HGRK_MENU_CODE == '"+stKey+"'");
    ds_left_menu.copyData(gds_SubMenu,true);// gds_SubMenu DS�� �����Ͽ� ds_left_menu DS�� �ٿ��ֱ�
    gds_SubMenu.filter("");

   if(!isExpandLeft) showHideLeftMenu();// �޴��� ����������쿡�� ��ħ  
}
==============================================================================================================
 
- Component, ȭ���� �м�
1. Binary
2. User Object
3. Composite
4. ȭ����
==============================================================================================================

- xtheme ����(/NH_Theme.xtheme ���Ͽ���)
1. ����(LWRMM108200.xfdl[��Ȱ������ȸ] ��ȸ�� �Ʒ� ���� �߻�
uxs (6464): Warning: Theme ȭ�Ͽ��� (theme://images/btn_spindown_D.png center middle)�� ã�� �� �����ϴ�.
uxs (6464): Error: �������� ResponseItem(id=theme://images/btn_spindown_D.png center middle,hr=ffffffff)
uxs (6464): Error: �̹��� ���� (theme://images/btn_spindown_D.png center middle) �� ã�� �� �����ϴ�.

2. ����: NH_FIRE_CE_CSS.css ���Ͽ��� Calendar>#spindownbutton:disabled���� image�� url ������ center middle;
���� ==> center middle�� imagealign���� ���� ������ ��
#spindownbutton
}Calendar>#spindownbutton:disabled
{
background: url('theme://images/spin_btn_bg_D.png'); 
/* image: url('theme://images/btn_spindown_D.png') center middle;  ==> ���� �� */
image: url('theme://images/btn_spindown_D.png');
imagealign: center middle;/* ���� ��(�߰�) */
}
==============================================================================================================

- �ڵ��� ����ó(�� ����ó: 300��)
1. �ڵ��� ����ó ��ǻ�ͷ� �ű��  ==> http://blog.naver.com/jjjung_yun/220294139859 
2. PC���� ���̹� �ּҷϿ��� ���� �۾�
3. ���̹� �ּҷ� ������ ���� �ø���
 1) ����� �� �ִ� ������ ũ��� 120*120�ȼ� �̻�, �ִ�뷮�� 5MB�̸� �Դϴ�.
==============================================================================================================

- ��ȭ(�翺)
==============================================================================================================

- �뿩�� �Ҽ� �븮
==============================================================================================================

- ���̼� �̾��� ����
==============================================================================================================

- ������ 6+ 16G ����Ÿ ����
1. ���� Ŭ����((iPhone))
�⺻ �뷮�� �ټ� ���� ���¶�� ����Ŭ���带 ����ϰų� ������̺�/��ӹڽ� ���� �̿��Ͽ� �����ٰ� 
���ε� �ؼ� ������ �ϰ� ������������ ������ �Ͽ� ���� Ȯ���� �غ� �� �ֽ��ϴ�.  
��� �������� ����� �����Ѱ����� ���ּž� ������ ������� ���� �����ź�� ���Ͻ� �� �ֽ��ϴ� 
==============================================================================================================

������������������� 2015.06.23(ȭ) �۾� ����������������
---> 08:00 ~ 19:10 ==>  

- �Ѽ� ERP �籸�� Prj
1. NH���� �ҽ� �м�(user_component) 
1) öȸ��Ұ���(lw_psttanss::LWPAM107000.xfdl) ==> \ni\fw\SAMPL00139_BTNAUTHTEST.xfdl
==============================================================================================================

- ���� ��ȸ �Լ� ��� ���
1. user_form::nh_base_title.xfdl ���� ����(�˾�: /nh_popup_title.xfdl)

2. /default_typedef.xml�� ���
<Component type="UserForm" id="nh_base_title" classname="nh_base_title" module="user_form::nh_base_title.xfdl" version="1000"/>
<Component type="UserForm" id="nh_popup_title" classname="nh_popup_title" module="user_form::nh_popup_title.xfdl" version="1000"/>

3. /LWPAM107000.xfdl ���Ͽ��� inheritanceid="nh_base_title"�� ��� ����
<Form id="LWPAM107000" classname="LWPAM107000" inheritanceid="nh_base_title" position="absolute 0 0 846 578" 
titletext="öȸ��Ұ���" visible="true" onload="LWPAM107000_onload" onsize="LWPAM107000_onsize">
</Form> 
==============================================================================================================

- �þ� ���� ȸ��(16��, ȸ�ǽ�)
1. ������ �þ� ���� ȸ��
2. 6�� 30��(ȭ)���� ������ �þ� �Ϸ��϶�� ��
3. ����� ��(���� ��� ��)
==============================================================================================================

- �Ѽ� ERP �籸�� Prj ���� �ػ�
1. ǥ�� �ػ�: 1280 * 1080
2. ���� ��Ʈ��(Dell) �ػ�: 1920 * 1080
==============================================================================================================

- �޷� ����(/Calendar.xfdl, Calendar_Period.xfdl)
==> /M800300005.xdl(���˼�ó���̷���ȸ) ���Ͽ��� 
Div01.url = "Common::Calendar_Period.xfdl"

- ����ȯ(/comDate_script.xjs ���Ͽ���)
function gfn_GetDiffDate2(sStartDate, sEndDate)
{ 
	var sStartDateChgStr = ""+ sStartDate;   // ����ȯ(��¥ -> String)
	var sEndDateChgStr = ""+ sEndDate;    
	var vFromDate = new Date(parseInt(sEndDateChgStr.substring(0,4),  10), parseInt(sEndDateChgStr.substring(4,6)-1,  10), 
	parseInt(sEndDateChgStr.substring(6,8), 10));
	var vToDate = new Date(parseInt(sStartDateChgStr.substring(0,4),  10), parseInt(sStartDateChgStr.substring(4,6)-1,  10), 
	parseInt(sStartDateChgStr.substring(6,8), 10));

	return parseInt((vFromDate - vToDate)/(1000*60*60*24));
}
==============================================================================================================

- ���Թ� ���� ���
1. ������ ���� �հ������� ���(�Ｚ ������)
==============================================================================================================

������������������� 2015.06.24(��) �۾� ����������������
---> 07:20 ~ 19:10 ==> ���ɽð��� ����[(��)ȿ�� �������̼� �ý��� �ٴ�]�� ����(Ŀ��), ���ҸӴ� ���(������ ���� 20�� �� �ߴٰ� ��)

- �Ѽ� ERP �籸�� Prj
1. �Ѽ�ERP Prj ����(ȯ�� ����)
==============================================================================================================
 
- ��Ŭ����(Eclipse) PHP ����ȯ�� ����(Eclipse, PHP)
http://lunaticlobelia.tistory.com/423
http://arisu1000.tistory.com/27706
==============================================================================================================

- ���ڵ�� ������Ʈ ����
1. ����: �ּ����� ������ �Һ��Ͽ� ���콺�� Ŭ���̳� �����Ǹ����� �ٷ��� �������� ��ȸ�� �� �ְ� �ϴ� 
�������̽� ��Ʈ�ѷ��� ���Ѵ�.
==============================================================================================================

- (���� �����̴�)HTML5 & CSS3 ����Ʈ ������ ��� �� / ��뼮 ���� 
http://roadbook.co.kr/77

- Do it! �ȵ���̵�[���� 2�� �Ѹ���] Day01 01[youtube ������]
https://www.youtube.com/watch?v=xO1TlHzZHFU&list=PLG7te9eYUi7vXZf7O6Fd2YCnJlx5YG9qq
==============================================================================================================

- ������ ��� �ӵ�
1. Crome ������ ���� > ���� > �ӵ�(�ְ� �ӵ�: 2)
2. EI ������ ���� > https://www.youtube.com/html5����
HTML5 �÷��̾� ��û'��ư�� ���� �� �������� ���ΰ�ħ(F5)�ϸ� �÷��̾� ������ �ӵ����� ����� ����
> ���� > �ӵ�(�ְ� �ӵ�: 2)  ==> http://infomoa.kr/890
==============================================================================================================

������������������� 2015.06.25(��) �۾� ����������������
---> 07:20 ~ 19:10 ==> ����

- �Ѽ� ERP �籸�� Prj
1. �Ѽ�ERP Prj ����(ȯ�� ����) 
==============================================================================================================

- PropertyAnimation ���
1. /globalvars.xml ���Ͽ���
<PropertyAnimation id="gPropAni" onend="gPropAni_onend"/>

2. /LEFT.xfdl ���Ͽ���
/************************************************************************************************
 * 01. �Լ����� :  btn_leftMenuHide_onclick()
 * 02. EVENT : ���� �޴� ����� ��ư �̺�Ʈ(���� �޴� �����) 
 ************************************************************************************************/
function btn_LF_ShowHide_onclick(obj:Button,  e:ClickEventInfo)
{
objDiv.visible= false;
showHideLeftMenu();
}

3. /HandsomeERP_LOCAL.xfdl ���Ͽ��� 
var isExpandLeft = true;
 /************************************************************************************************
* 01. �Լ����� : showHideLeftMenu()
* 02. EVENT : left menu�� ������/ ��ٰ� �̺�Ʈ�� ����
* 03. ��� : 
************************************************************************************************/ 
function showHideLeftMenu()  
{ 
trace("[/HandsomeERP_LOCAL.xfdl] [showHideLeftMenu()] ==> [isExpandLeft]"+ isExpandLeft );
 
if( isExpandLeft == true ) // left menu ����� Ŭ���̸� 
{ 
cf_menuShowWidth = cf_left.position.width;
var PropAni1 = new PropertyAnimation();
var PropAni2 = new PropertyAnimation();
var CompAni = new CompositeAnimation();
trace("[/HandsomeERP_LOCAL.xfdl] [showHideLeftMenu()] ==> [left menu ����� Ŭ���̸�] [isExpandLeft]"+ isExpandLeft );

gPropAni.menuType = "LEFT";
gPropAni.hide = true;
gPropAni.duration = 100;
gPropAni.targetcomp = cf_left; 
gPropAni.interpolation = Interpolation.expoOut;
gPropAni.fromvalue = cf_left.position.x;
gPropAni.tovalue   = cf_menuHideWidth - cf_left.position.width; 
gPropAni.targetprop = "position.x";
gPropAni.endingmode = "to";

PropAni1.duration = 100;
PropAni1.targetcomp = cf_VFrameSet;
PropAni1.interpolation = Interpolation.expoOut; 
PropAni1.fromvalue = cf_VFrameSet.position.x;
PropAni1.tovalue = cf_menuHideWidth; 
PropAni1.targetprop = "position.x";
PropAni1.endingmode = "to";

PropAni2.duration = 100;
PropAni2.targetcomp = cf_VFrameSet;
PropAni2.interpolation = Interpolation.expoOut; 
PropAni2.fromvalue = cf_VFrameSet.position.width;
PropAni2.tovalue = cf_VFrameSet.position.width+(cf_VFrameSet.position.x-cf_menuHideWidth);
PropAni2.targetprop = "position.width";
PropAni2.endingmode = "to";

CompAni.addItem(gPropAni);
CompAni.addItem(PropAni1);
CompAni.addItem(PropAni2);
CompAni.run();

cf_left.form.sta_LeftBack.visible = true;
cf_left.form.btn_LF_ShowHide.position.x = 2;
cf_left.form.btn_LF_ShowHide.class = "btn_LF_ShowOpen";  // left menu ����� Ŭ�� �� ���̱� image Display ==> url('theme://images/img_LF_ShowOpen.png');
cf_left.form.btn_LF_ShowOpen = true;
isExpandLeft = false; 
}  
else  // left menu ���̱� Ŭ���̸� 
{ 
cf_left.form.btn_LF_ShowHide.position.x = 164;

var PropAni1 = new PropertyAnimation();
var PropAni2 = new PropertyAnimation();
var CompAni = new CompositeAnimation();
trace("[/HandsomeERP_LOCAL.xfdl] [showHideLeftMenu()] ==> [left menu ���̱� Ŭ���̸�] [isExpandLeft]"+ isExpandLeft );

gPropAni.menuType = "LEFT";
gPropAni.hide = false;
gPropAni.duration = 200;
gPropAni.targetcomp = cf_left;
gPropAni.interpolation = Interpolation.expoOut;
trace("[/HandsomeERP_LOCAL.xfdl] [showHideLeftMenu()] ==> [left menu ���̱� Ŭ���̸�] [cf_menuShowWidth]"+ cf_menuShowWidth );

fs_main.separatesize = cf_menuShowWidth + "," + "*, 5";    // lelft frame �缳��(left menu Display)
gPropAni.fromvalue = cf_left.position.x - cf_menuShowWidth;
gPropAni.tovalue = cf_left.position.x; 
gPropAni.targetprop = "position.x";
gPropAni.endingmode = "to";

PropAni1.duration = 200;
PropAni1.targetcomp = cf_VFrameSet;
PropAni1.interpolation = Interpolation.expoOut; 
PropAni1.fromvalue = cf_menuHideWidth;
PropAni1.tovalue = cf_menuShowWidth; 
PropAni1.targetprop = "position.x";
PropAni1.endingmode = "to";

PropAni2.duration = 200;
PropAni2.targetcomp = cf_VFrameSet;
PropAni2.interpolation = Interpolation.expoOut; 
PropAni2.fromvalue = cf_VFrameSet.position.width+(cf_VFrameSet.position.x-cf_menuHideWidth);
PropAni2.tovalue = cf_VFrameSet.position.width;
PropAni2.targetprop = "position.width";
PropAni2.endingmode = "to";

CompAni.addItem(gPropAni);
CompAni.addItem(PropAni1);
CompAni.addItem(PropAni2);
CompAni.run();

cf_left.form.btn_LF_ShowHide.class = "btn_LF_ShowHide"; // left menu ���̱� Ŭ�� �� ����� image Display ==> url('theme://images/img_LF_ShowHide.png');
cf_left.form.sta_LeftBack.visible = false;
isExpandLeft = true;
}
}

/************************************************************************************************
* 01. �Լ����� : gPropAni_onend()
* 02. EVENT : PropertyAnimation�� onend ���� ��(Frame �缳�� ����)
* 03. ��� : 
************************************************************************************************/ 
function gPropAni_onend(obj:PropertyAnimation, e:AnimationEventInfo)
{
trace("[/HandsomeERP_LOCAL.xfdl] [gPropAni_onend()] ==> [TEST_01] [gPropAni.menuType]"+ gPropAni.menuType );

if(gPropAni.menuType == "TOP")
{
if(gPropAni.hide == false)
{
} 
else
{
trace("[/HandsomeERP_LOCAL.xfdl] [gPropAni_onend()] ==> [cf_menuHideWidth]"+ cf_menuHideWidth );
application.mainframe.vf_set.separatesize = cf_menuHideWidth + "," + "*"; // TOP frame �缳��(���� ������ ����[������ ������])   
}
}

else if(gPropAni.menuType == "LEFT")
{
if(gPropAni.hide == false)  
{ 
} 
else
{
trace("[/HandsomeERP_LOCAL.xfdl] [gPropAni_onend()] ==> [cf_menuHideWidth]"+ cf_menuHideWidth );
fs_main.separatesize = cf_menuHideWidth + "," + "*, 5"; // lelft frame �缳��(���� ������ ����[������ ������])   
}
}
}
==============================================================================================================

- ������ Apple ID ����
1. �翺 Apple ID ����� ==> https://appleid.apple.com/account
 1) vnluyen@naver.com --> l*l*3**A
==============================================================================================================

������������������� 2015.06.26(��) �۾� ����������������
---> 07:20 ~ 19:10 ==> ��������ȸ, ȸ��(16��, 19��)

- �Ѽ� ERP �籸�� Prj
1. �Ѽ�ERP Prj ����(ȯ�� ����) 
==============================================================================================================

- popupdiv �ܿ� �ٸ����� Ŭ���ϸ� popupdiv�� ������� ���� �ذ�
1. popupdiv�� onKillfocus �̺�Ʈ���� popupdiv.setFocus() ó���Ͽ� ���������� ��Ŀ���� �༭ 
ó�� �غ��ñ� �ٶ��ϴ�. �����մϴ�. PopupDiv �� ����� ��쿡�� ���콺 Ŀ���� ��ư��
�ű�⸸ �ص� PopupDiv �� ����� �� �ֽ��ϴ�.
==> popupdiv�� ��� ��Ŀ���� ���� ��쿡 �˾��� ������ô°� ���� ���� �Դϴ�.
==============================================================================================================

- 2015��(2014�� �ͼ�) ���ռҵ漼 ȯ��
==> 6�� 26��(��) ���ۼ��������� 3,068,360�� �Ա� ��
==============================================================================================================

- �ݿ���
18:20 ���
18:30 ������(��������ȸ �� ȸ��) ==> ���� ���� ����
23:00 ����
24:00 �Ͱ�
00:20 ��ħ
==============================================================================================================

������������������� 2015.06.27(��) �۾� ����������������
---> 07:00 ~ 20:40 ==> 
 
- �ָ� 
09:00 ���(�� �� ��)
14:00 �߽�(�翺, ���� �ٿ����� � ��)
15:00 �븲�� ������(5618�� ���� -> ���ǵ� ���б�): ����FC ����
15:30 ���ǵ� ���б�(3�� ���� ����ġ�� �־���, �Ƕ�) ==> ����(������ 59ȸ, 9��, ö��, ����, 12�� 26�� ��ȥ ����)
, �α�(������ 59ȸ,10��, ������ ������ â��) --> 3�� ����
��ȭ��(����,������ ����), �̼�ȣ(����, ��� �ڵ��� ����, ������ ������ ������ ��)
16:00 ���� ����ȸ���� 8�� 8�� ������(���α� ���� ��, �������� �� ��)
19:00 ����(4������)
20:00 �Ͱ�(�����̰� �¿���)
21:00 ����(���)
00:00 ��ħ
==============================================================================================================

- ����� ���߱���(����ö/����)����λ�, ���� ���Ե� �������� ���� 
1. ����ö: 1,050�� --> 1,250��
2. ����: 1,050�� --> 1,200��
3. ���� ����(���� 6�� 30�� ������ ����ī�带 ����ϴ� �°��� ���� 20% ����)
 1) ����ö: 1,050�� --> 1,000��
 2) ����: 1,050�� --> 960��
==============================================================================================================

������������������� 2015.06.28(��) �۾� ����������������
---> 07:00 ~ 20:40 ==> 
 
�� �����౸
06:30 ���
07:00 �翺 ���
07:30 �����(�翺, ����)
07:40 �븲�� -> ������(�źд缱 ȯ��) -> û����Ա���
08:40 û����Ա���(2�� �ⱸ�� ����)
09:00 û��� �Ա����� ������ ����(�� �� �ö�)
09:20 ���� ���(����� ���� ���θ�): ����(�ѹ�)��, ������, ������ --> ���� �غ� 
11:30 û��� ����� ���� ==> ���� ����ġ ���Ǳ��̶�� �������� ������ �Ⱦ� 10���� ���� ����
11:40 ��� ���� ����(â������ ����, �������� ����[���� �ʹ� ������], ���� ���� ��)
15:30 ����
15:40 ȿ������ �� ��� Ÿ�� ��
16:00 ������ ����
17:00 �Ͱ�
21:00 ����(¥�� ��� 2��)
00:00 ��ħ
==============================================================================================================

������������������� 2015.06.29(��) �۾� ����������������
---> 07:10 ~ 19:10 ==>  

- �Ѽ� ERP �籸�� Prj
1. ���� �޴� ����
==============================================================================================================

- Static, ��ư�� div �ȿ� �ִ� ���
1. st_logTopImg(Static) ����
2. div_leftMenuTopView(Div)�ȿ� Ŭ�� �� �ٿ��ֱ�
3. ���콺�� st_logTopImg(Static) �����Ͽ� div_leftMenuTopView(Div)������ ��������
==============================================================================================================

- �Ѽ� ERP �籸�� Prj�� Prj IP �ּ�[���� ��]
1. IP �ּ�: 192.168.0.61, GW: 192.168.0.1
SM: 255.255.255.0, DNS: ����(���� ��Ʈ��ũ��) ==> �������� ���
2. ���� ����
\\192.168.0.2  --> �Ѽ�ERP, 20160101a 
==============================================================================================================

- �Ѽ� ERP �籸�� Prj�� Prj IP �ּ�  ==> 2015.07.07(ȭ) 
1. IP �ּ�: 172.168.110.79, GW: 172.168.110.254
SM: 255.255.255.0, DNS: 59.10.4.200  
==============================================================================================================

������������������� 2015.06.30(ȭ) �۾� ����������������
---> 07:10 ~ 19:10 ==>  

- �Ѽ� ERP �籸�� Prj
1. ���FR(Top.xfdl) �޴� ����
==============================================================================================================

- 1. /NOTI_POINT.xfdl ���Ͽ���
function NOTI_POINT_onload(obj:Form, e:LoadEventInfo)
{
	trace("[/NOTI_POINT.xfdl] [NOTI_POINT_onload()] ==> [TEST_01]" );

	form_onload(obj);// onload ����Ǵ� �Լ�(�����ڵ�, �����ư ����ó��, title ����, valid �޼��� �ʱ⼳��, ȭ�� ����Ű)
}

- 2. /lib_formcommon.xjs���Ͽ���
/*********************************************************************
 * �� �� �� : form_onload
 * �Լ����� : onload ����Ǵ� �Լ�(�����ڵ�, �����ư ����ó��, title ����, valid �޼��� �ʱ⼳��, ȭ�� ����Ű) 
 *********************************************************************/
function form_onload(obj)
{ 
_FORM_OBJ = this;
_FORM_NAME = (isForm() == "P" ? this.name : getCurMenuId());

//fn_createAuthDs();  //���Ѽ��� ������ ���� �ӽõ���Ÿ�� ����
//quick ���� ���� ��ΰ� ��������.
local_code_path= system.convertRealPath("%DOCUMENT%") + "/nh";//���ð��
var startTime = (new Date()).getTime();
     
// ó�� ȭ�鿡 �ѷ��� button��
try 
{
if(isGetHost() != "�")
{
createCommonButton(obj);   // ����ȭ���� ���� ���۳�Ʈ ���� �̺�Ʈ
} 
} 
catch(e)
{
}

//ȭ�� ĸ�ĸ� ���� �ӽ� key event handling
obj.onkeydown.addHandler(form_onkeydown);

//form �� drag event �� �����ؼ� �����ϵ��� �ص���.
this.ondragmove.addHandler( form_divBox_ondragmove );
this.onlbuttonup.addHandler( form_divBox_onlbuttonup );

//div �̵��� ����
this.onvscroll.addHandler( form_onvscroll );
this.onhscroll.addHandler( form_onhscroll );

// �������� ����ϴ� event ���
try 
{ 
addBaseTitleButtonEvent();
} 
catch(e)
{
}

// ���� ����
try 
{ 
if( isForm()=="P")
{
if(obj instanceof Div)
{
}
else
{ 
obj.style.border = "2 solid #667375FF";
 
if(obj.name == "CB10P978005" &&  indn_param[7] == "����ڷα���")  // ��α��� titletext ����
{ 
obj.titletext = indn_param[7]; 
} 
trace("[/lib_formcommon.xjs] [form_onload()] ==> [obj.name]"+ obj.name +"[obj.titletext]]"+ obj.titletext +"[indn_param[7]]"+ indn_param[7] );

setBaseTitle(obj.name, obj.titletext);
}
}
else
{ 
setBaseTitle(getCurMenuNo(), getCurMenuNm());
}
}
catch(e)
{
}

//�θ�â ������ ����
try 
{
setFormSize();
}
catch(e)
{
}
     
scanAllComponent(obj);//component �� ��ȸ�ؼ� �����ڵ带 �����Ѵ�.

var endTime = (new Date()).getTime();
     
try 
{
resetScroll();
} 
catch(e)
{
} 
}
==============================================================================================================

- ����Ʈ(Report) ��
0. Ŭ�� ����Ʈ(��� ����)  ==> http://clipsoft.co.kr/wp/clip-report/overview
1. ���� ����Ʈ(UBI Report) --> http://www.ubireport.com
2. ML ����Ʈ
3. OZ ����Ʈ
4. RD ����Ʈ
5. ����Ʈ �����̳�
==============================================================================================================

- �Ż�����ȸ ȸ�� ����(2015��) 
1. 2015.06.30(ȭ) �۱�: ���¸�(1~6��): 12���� ==> ���� �Ϸ� 
2. ��������: 110.*2870, ������: ����� 
==============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������