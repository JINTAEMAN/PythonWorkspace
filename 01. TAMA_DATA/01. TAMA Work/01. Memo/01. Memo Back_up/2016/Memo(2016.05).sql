

�����������������������������������������������������������
+---------------------------------------------// Memo(2016.05) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2016.05.01(��) �۾� �������������������
---> 07:40 ~ 18:20 ==> 

�� �����౸
06:00 ���
06:20 ����(����APT -> �븲���)
06:50 �븲���
07:10 �븲��� ���(ȸ��� �� ��� Ž)
07:50 ȭ�� �ۻ����б�(ȭ���� �ۻ�� �ۻ������� 162 ����) ���� ==> �Ƕ�(���� ��ȣ�� ��)
08:20 �븲3�� ����ȸ ������ ���� ����(�Ķ���, ������ �� ��, ������ �� ��Ƽ, ��Ÿŷ)
08:30 ����(����FC): ���� ���� ���̿��� ��â ����, �츮���� 20���� ���� �� ==> 4���� ��
12:00 ����
13:30 �߽�(���� �Ĵ�[�Ȼ�], �ߵ�����): ==> ����ȸ���� ��
15:00 �Ͱ� 
19:30 ����(�̸�Ʈ: ������ ��̳� ����[�Ƿη� ��� ����[54,800��] ����)
20:00 ����(�δ����(�翺): �Ѿ������Ĵ�): ���� ��ģ���ϰ� ���� ���� ����.
21:00 �Ͱ�
22:00 ��ħ
==============================================================================================================

������������������� 2016.05.02(��) �۾� �������������������
---> 07:30 ~ 18:20 ==> 

- �Ｚ���� MES 3.0 ���� Prj[��]
- �����۾� ��ûó��(486�� ����: ������[010-2466-7369] ����) ==>   @@@
1. ����: "�޴����� A, B, C��� ȭ���� ������ �� B��� ȭ�鿡�� A��� ȭ������ �� ��ȯ�� Aȭ���� Apply �̺�Ʈ�� 
ȣ���Ͽ� ����ȸ �ϰ� �ͽ��ϴ�. � �̺�Ʈ�� �־�� ���� �˷��ּ���. (������ onactivate �̺�Ʈ�� onsetfocus 
�̺�Ʈ�� �̿��Ϸ��� �Ͽ����� ������ �ȵ˴ϴ�. ȭ�� �� �� ��ȯ�� ȣ��Ǳ⸦ ����.)"
2. ���� ��ġ:
3. ó��: Timer ������ Form�� ontimer�� �����ϴ� ���Դϴ�. A*.xfdl ���Ͽ��� Timer �����ϰ� B*.xfdl ���Ͽ��� 
A*.xfdl ������ Timer ������ �ҷ� ���� ���� �Ұ��� �մϴ�. 
ȭ�� �� �� ��ȯ�� ȣ���� �Ϸ��� DB�� ����ϰų� global ������ ����ؾ� �� ������ �Ǵܵ˴ϴ�. �׸��� �̷�
������ ������ �ƴ϶� *.xfdl ���Ͽ��� �����ڰ� ���� �����ؾ� �� ������ �Ǵܵ˴ϴ�.
==============================================================================================================

- ���� ���� ȸ��
1. ���: �帲 ������ 2��
2. ������: �ȿ��� ����, Ȳ����, �Ű���, ������
3. ����:
 1) MES3.0 BUSAN�� ������ ���� ����
 2) 2016�� 07�� ��Ʈ�� DIM ����, 2016�� 08�� ��Ʈ�� ACI ����
 3) Ȯ�� ����
  ��. ��뷮 ����Ÿ �ӵ� ���� Ȯ��(300 Į��, 30�� ��): (��)�������Ʈ �����ҿ� ����
  ��. �ٱ��� ó�� Ȯ��
  ��. Xpush ���� ==> Class ���̾� �׷�
==============================================================================================================
 
- Timer ����
<?xml version="1.0" encoding="utf-8"?>
<FDL version="1.5">
  <TypeDefinition url="..\default_typedef.xml"/>
  <Form id="Top_Frame" classname="Top_Frame" inheritanceid="" position="absolute 0 0 1278 105" titletext="
  [��_01] Top ������" onload="Top_Frame_onload" scrollbars="none" onsize="Top_Frame_onsize" 
  ontimer="Top_Frame_ontimer" onkeyup="Top_Frame_onkeyup">
    <Layouts>
<Layout> 
</Layout>
    </Layouts>
   <Objects> 
<Dataset id="ds_menu" firefirstcount="0" firenextcount="0" useclientlayout="false" updatecontrol="true" 
enableevent="true" loadkeymode="keep" loadfiltermode="keep" reversesubsum="false"/>
  </Objects>
  <Script type="xscript4.0"><![CDATA[/*******************************************************************************
* ȭ  ��  �� : Top ������
* ȭ  ��  ID : Top_Frame_Recent.xfdl
********************************************************************************/
include "Lib::common.xjs";

var g_timerid=1187;
var g_timerPeriod = 1000*60*5;   // 5�ð� ==> 1��*60��*5�ð�  ===> TEST @@@ ===>
// objForm.setTimer( g_timerid, g_timerPeriod );  // setTimer ���� ===> TEST @@@ ===>

/******************************************************************************* 
********************************************************************************/ 
function Top_Frame_onload( obj:Form, e:LoadEventInfo ) {
 
if( gv_sLogin == "Y" ) 
{  
fn_initSesstionTime();// sesstion time �ʱ�ȭ
} 
}

function Top_Frame_ontimer(obj:Form, e:TimerEventInfo)
{
if(e.timerid == 9986)//1�ð� 55���� �������� ===> 6900 000
{  
this.killTimer(9986);  // kill Timer
 
var iWidth  = 350;
var iHeight = 180;

if(!application.popupframes["ConfirmPopup"]){ 
//if(application.confirm("�������Ͻðڽ��ϱ�?")){
gfn_popupReturnName("ConfirmPopup", "frame_common::confirm_popup.xfdl", this, false,-1,-1, iWidth, iHeight, false, true);
}else{
//if(application.confirm("�������Ͻðڽ��ϱ�?")){
application.popupframes["ConfirmPopup"].form.close();
gfn_popupReturnName("ConfirmPopup", "frame_common::confirm_popup.xfdl", this, false,-1,-1, iWidth, iHeight, false, true);
}

//�޸� ��ȯ ó��
var extComapi = new ExtCommon();
var ret = extComapi.EmptyWorkingSet();
}
 
//sesstion time �ʱ�ȭ
function fn_initSesstionTime()
{ 
this.killTimer(9986); 
this.setTimer(9986, 6900000);  //1�ð� 55�� ==> timerid 9986�� 1�ð� 55��(6900000) ���� ���� 
//this.setTimer(9986, 5000); // 5��  ==> 1000[1��] 
}
]]></Script>
  </Form>
</FDL>
==============================================================================================================

- Xpush ����
1. (��)�������Ʈ �ڼ��� �������� Xpush ���� 2���� ���̼��� ��û
==============================================================================================================

������������������� 2016.05.03(ȭ) �۾� �������������������
---> 07:30 ~ 18:20 ==> �Ϸ� ���� ���

- �Ｚ���� MES 3.0 ���� Prj[��]
- Xpush ����
1. sendMessageFromXpush �Լ� ����(/CommonXPServiceImpl.java ���Ͽ���)
public VariableList sendMessageFromXpush(VariableList inVl, DataSetList inDl, VariableList outVl, DataSetList outDl) throws Exception
{
try { 
String strContent = null;  

DataSet ds_xpushList = inDl.get("q1");

if (ds_xpushList != null && ds_xpushList.getRowCount() > 0) {  
strContent = ds_xpushList.getString(0,  "content");// content �ʵ�(Input DS)
}
logger.info("[��] [01. Message Provider] --->> [/CommonXPServiceImpl.java] [sendMessageFromXpush()] ==>
[strContent]"+ strContent +"[ds_xpushList.getRowCount()]"+ ds_xpushList.getRowCount() );

// create push message
PushMessage pushMessage = new PushMessage();
 
pushMessage.setCharsetName("utf-8");

// set message type.;  // TopicType: �޽��� ���ݿ� ���� Ÿ��. ���� ��� �˸� "NOTI", ���� �ְ��� ��� "CPDT", 
� ������ ��� "OPDT", ������ ��� "NEWS" ������ �ý��ۿ� �°� �����ؼ� ����� �� ����.
pushMessage.setTopicType("NOTI");

//set mesage id. // topicId: Topic Id�� Ư�� Ÿ���� �޽��� �߿��� �޽����� �����ϱ� ���� Ű�� ����. ���� ���
"CPDT"�� ���� ���� �ְ� �޽��� �߿��� �����ڵ� "1234"�� �ְ��� �����ϴ� �޽������ topicId�� "1234"�� ��. 
pushMessage.setTopicId("ALL");
 
//add data as defined in layout
//String strContent = "�޴�����[FCBGA] ȭ���� ���� ó�� �Ǿ����ϴ�.";// �޴�����[FCBGA] ȭ�� ���� ó�� ����
pushMessage.addData(strContent); // ���� �ʵ�(content)

SimpleDateFormat formatter = new SimpleDateFormat("HH:mm:ss");
String currentTime = ""+ formatter.format(new Date());
pushMessage.addData(currentTime);   // Message ���� �ð� �ʵ�(currentTime) 
logger.info("[��] [01. Message Provider] --->> [/CommonXPServiceImpl.java] [sendMessageFromXpush()] 
==> [���� �޼���(pushMessage)]"+ pushMessage );

//send message
provider.sendPushMessage(pushMessage);  // �޼��� ������ ó�� @@@
logger.info("[��] [01. Message Provider] --->> [/CommonXPServiceImpl.java] [sendMessageFromXpush()] 
==> [Send Message !] @@ --> OK" );
 
//close connection
provider.close();

} catch (IOException e) {
e.printStackTrace();
logger.info("Exception e="+e);

} catch (XPushMessageException e) {
e.printStackTrace();
}  
}
==============================================================================================================
 
������������������� 2016.05.04(��) �۾� �������������������
---> 07:30 ~ 16:50 ==> �ڸ� �̵�(12:30, ȭ�����), �ٴ� û��(17��)

- �Ｚ���� MES 3.0 ���� Prj[��]
- Xpush ����
1. 
==============================================================================================================

- Xpush Use Case �̺�Ʈ �÷ο�(UML �м�) @@@
 1.1 ����
   1�� ����: �����
   2�� ����: ������

 1.2. ��������
  ����ڰ� �α��� ������ �����Ѵ�.

 1.3. �̺�Ʈ �÷ο�
  1) ���ʹ� ���� ����(id, password)�� �Է��ϰ� �ý��ۿ��� ������ ��û�Ѵ�.
  2) �ý����� ���Ͱ� �Է��� ���� ������ ��ȿ�ϸ� Xpush �޼����� ���۹��� �غ�(XPlatform Client Connect, 
  fn_Subscribe_Noti_Data())�� �Ѵ�.
  3) �����ڴ� �޴������� �����Ѵ�.
  4) �ý����� ���Ͱ� ó���� ������ ��ȿ�ϸ� Xpush �������� �޼��� ������ ��û�Ѵ�.
  5) Xpush ������ �ش� ������ �α��ε� ��ü ����ڿ��� �޽����� �ϰ� �����Ѵ�.

  1.4. �������� 
  1) �ý����� ���� ���� �޼����� alert�� ��� ��ü ����ڿ��� ���۹��� �޽����� �뺸�Ѵ�.

  1.5. �������
--------------------------------------------------------------------------------------------------------

- ���� ã��
1. �����, Xpush ����, ��ü�����
- Use Case ã��
1. �޴����� ����, Xpush �޼��� ó��, Xpush �޼��� ����
==============================================================================================================

- Class ��: ChageMenu
saveMst()

- Class ��: Xpush 
PushConnect() 
fn_Subscribe_Noti_Data()
Callback_PushNoti()
==============================================================================================================

������������������� 2016.05.05(��) �۾� �������������������
---> 07:40 ~ 18:10 ==> ��̳�, ��ȥ 3�ֳ�

�� �����౸
03:00 ��� 
03:30 UML ������ ����(OJT KOERA)
04:30 UML �ۼ�(Xpush(01.UseCase Diagram), Xpush(02. Sequence Diagram), Xpush(03. Class Diagram))
06:00 ����
06:40 ������(����APT -> �븲���)
06:30 �븲���
07:00 ������(�㿡 �� �ͼ� ���� ���� �־���, �౸ȭ ������)
08:00 ����
08:20 �Ͱ�
09:30 ����Ű���(����, �翺: ��̳� ���) ==> �ҹ��� ���� ����, ���Ǵ� �ù� 
--> ������(�̴Ͻ��� �������)���� �Ŷ��, ���� �����
14:00 ����
15:00 �Ͱ�
16:00 ����
19:00 ���
20:00 ����(�׳�ġŲ: ���� �ݹ� ġŲ(19,000��), ���信�� �ֹ�, ���־���)
23:00 ��ħ
==============================================================================================================

- UML ������ ����(OJT KOERA)
http://www.ojtkorea.com/contents/e-learning/?code=uml
==============================================================================================================

������������������� 2016.05.06(��) �۾� �������������������
---> 07:40 ~ 18:10 ==> ����� �帲

- �ӽð�����
06:00 ���
11:40 �߽�
13:00 ����
16:40 ���
16:00 �븲�� -> ������3����(����ö: ������ ��) -> ����3���� 9�� �ⱸ(����)
16:30 ����(18K ����� ����: 3���� �ٴ�) ==> ������ ���(������ ��ǥ; 02)766-0258, 010-8742-3409)���� 18K 
	���� ����� 34������ ����
	--> ����: 2����, 32���� �۱��� ��(��������: 674302-01-230177 ������), 7�� 13��(��)�� �ù�� �´ٰ� ��.
17:30 ��
17:50 ����(����[37,000��]: ȫ��Į����)
18:30 �� ����
19:30 ������ �Ա��� -> �븲��
20:30 �Ͱ�
23:00 ��ħ
==============================================================================================================

������������������� 2016.05.07(��) �۾� �������������������
---> 07:40 ~ 18:10 ==>  

�� �����౸
06:00 ���
06:10 ������(����APT -> �븲���)
06:30 �븲���
06:40 ������ 
08:00 ����  
08:30 �Ͱ�
10:00 �����: ����, �翺
10:15 �븲��[���, ������ ����[3,000��] -> �ŵ����� -> �۳���(1�� �ⱸ)
11:00 �۳� ����������(909�� ����): ���� ������ ������ �ڷ� Ž.
11:20 ���굿(����)
11:30 ��õ �ƶ����� ����(����: 3�� 38,000��) ==> 40�� ���� ���� ���� �԰� 500g �� 3�� ��� ��.
--> ��θ��� ����.
12:30 ����
13:40 �߽�(������, ����[9,500��]: ���õ��)
14:00 �ζ� ���� ��ġ ���� ==> ��� ��
15:30 �Ͱ�
17:00 ����Ʈ ������(�����̶� ��)
19:30 ����(�峭��: ���̼�)
19:40 ����(����, ġ��, ����: ���︶Ʈ)
20:00 �Ͱ�
20:30 ����
23:00 ��ħ
==============================================================================================================

������������������� 2016.05.08(��) �۾� �������������������
---> 07:40 ~ 18:10 ==>  

�� �����౸
06:00 ���
06:30 ������(����APT -> �����ʵ��б�)
06:50 �����ʵ��б�
07:30 ��Ǯ��, �Ʒ�
08:30 ������
09:30 ����
09:50 �����ʵ��б�
10:30 �Ÿ�3�� �� �౸ ��ȸ(��ǳ��) �����
10:40 ����(���̼� �븲��)
11:00 �Ͱ�
11:20 �����(������, ������ �¿�)
11:40 �����ʵ��б�
11:50 �߽�(������ �� �� ����, �ڵ������� ������ ��)
14:00 ����(�븲 3�� 1:0 �ű�7��)
15:00 �߽�(������ �� �� ����, ���̶� ���� ��)
15:30 ����(���� ����: ���� ��Ʈ)
16:00 4��(�븲 3�� 0:1 �ű�) ==> ���� 3����.
--> �����̰� ��� ���� �� ����. ��, �̵��ʵ尡 ����. �������� ���� ��.
--> ��� �ѹ� ��߷��ϰ� �纹 �԰� �����̶� ���� ��.
17:00 ����
17:30 �Ͱ�
20:30 ����(���)
23:00 ��ħ
==============================================================================================================

������������������� 2016.05.09(��) �۾� �������������������
---> 07:40 ~ 17:20 ==> �翺 ����

- �Ｚ���� MES 3.0 ���� Prj[��]
- Xpush ����, ���� ó�� ����
1. /push_message_layout.xml, /Top_Frame_Recent.xfdl, /MenuMgmtView.xfdl
2. /CommonXPService.java, /CommonXPServiceImpl.java
==============================================================================================================

- �翺 ����
17:20 ���
17:30 ��� ����
18:50 ���ε����д����� ����
19:10 ���̽�ũ�� ���� ����(�̸�Ʈ ���� 1�� ����Ų���)
19:20 �Ͱ�
19:40 ����(�Ұ����, ��, �ø�[29,000��]: �ؼ��� ������ ==> ���� ����)
20:30 ����
20:40 �Ͱ�
21:30 �翺 ���� ��Ƽ(����, ������)
23:00 ��ħ
==============================================================================================================

- īī�� �۱�
1. PAY ��й�ȣ: 52**0*
==============================================================================================================

������������������� 2016.05.10(ȭ) �۾� �������������������
---> 07:30 ~ 18:20 ==>  

- �Ｚ���� MES 3.0 ���� Prj[��]
- Xpush ����, ���� ó��
1. 
==============================================================================================================
 
- Xplatform Transaction ȣ�� �Լ� :  UI ���� ���̵� ���� 
4.1 Transaction �⺻ ����
gfn_Transaction ("searchMain", ds_Service);

- ds_Service  xml ���� 
    <Col id="SERVICE_ID">searchMain</Col>
    <Col id="CONTROLLER"/>
    <Col id="OUTPUT_DS">ds_main=q1</Col>
    <Col id="CALL_BACK">fn_CallBack</Col>
    <Col id="INPUT_DS"/>
    <Col id="SERVICE"/>:: default : commonXPService
    <Col id="METHOD">select</Col>:: select, save
    <Col id="Q_COUNT">1</Col>
    <Col id="QUERY_LIST">q1=semcomes.common.sampleEduR</Col>
    <Col id="ASYNC"/>              
    <Col id="SERVICE_URL"/>                         :: default : CommonXPController.do
    <Col id="LOG_FLAG">Y</Col>               :: �����α�
  
 4.2 Transaction ���� ó�� 
gfn_Transaction ("searchMain", ds_Service);

- ���� ���� ����� ���� ���� ���� output_ds �� ���� �����ؾ���
<Row>
    <Col id="SERVICE_ID">getMenuList</Col>
    <Col id="METHOD">select</Col>
    <Col id="Q_COUNT">3</Col>
    <Col id="QUERY_LIST">q1=semcomes.common.menu.fullMenuTreeList
    q2=semcomes.common.menu.findMenuTreeList 
   q3=semcomes.common.menu.userRoleFullMenuList</Col>
    <Col id="OUTPUT_DS">gds_FullMenuList=q1 gds_MenuList=q2 gds_MenuRole=q3</Col>
    <Col id="CALL_BACK">fn_CallBack</Col>
  </Row>

  4.3 Transaction ���� ó��  
gfn_Transaction ("saveMain", ds_Service);

- ���� ó���� �߰�,����,���� �ϰ� ó��
<Row>
    <Col id="SERVICE_ID">saveMain</Col>
    <Col id="CONTROLLER"/>
    <Col id="CALL_BACK">fn_CallBack</Col>
    <Col id="SERVICE"/>
    <Col id="METHOD">save</Col>
    <Col id="Q_COUNT">1</Col>
    <Col id="INPUT_DS">q1=ds_main:U</Col>
    <Col id="QUERY_LIST">q1=semcomes.common.sampleEduC,
                    semcomes.common.sampleEduU,
semcomes.common.sampleEduD</Col>
    <Col id="ASYNC"/>
    <Col id="SERVICE_URL"/>
    <Col id="LOG_FLAG">Y</Col>
  </Row>
=========================================================================================================
 
- ds_Service @@@  ==> /Top_Frame_Recent.xfdl ���Ͽ���
<ColumnInfo>
  <Column id="SERVICE_ID" type="STRING" size="256"/>
  <Column id="CONTROLLER" type="STRING" size="256"/>
  <Column id="SERVICE" type="STRING" size="256"/>
  <Column id="METHOD" type="STRING" size="256"/>
  <Column id="Q_COUNT" type="STRING" size="256"/>
  <Column id="QUERY_LIST" type="STRING" size="256"/>
  <Column id="INPUT_DS" type="STRING" size="256"/>
  <Column id="OUTPUT_DS" type="STRING" size="256"/>
  <Column id="CALL_BACK" type="STRING" size="256"/>
  <Column id="ASYNC" type="STRING" size="256"/>
  <Column id="SERVICE_URL" type="STRING" size="256"/>
  <Column id="LOG_FLAG" type="STRING" size="256"/>
</ColumnInfo>
<Rows> 
  <Row>
    <Col id="SERVICE_ID">getUserRoleList</Col>
    <Col id="METHOD">select</Col>
    <Col id="Q_COUNT">1</Col>
    <Col id="QUERY_LIST">q1=semcomes.common.userrole.list</Col>
    <Col id="OUTPUT_DS">gds_UserRole=q1</Col>
    <Col id="CALL_BACK">fn_CallBack</Col>
  </Row> 
    <Row>
    <Col id="SERVICE_ID">getMenuList</Col>
    <Col id="METHOD">select</Col>
    <Col id="Q_COUNT">3</Col>
    <Col id="QUERY_LIST">q1=semcomes.common.menu.fullMenuTreeList q2=semcomes.common.menu.
    findMenuTreeList q3=semcomes.common.menu.userRoleFullMenuList</Col>
    <Col id="OUTPUT_DS">gds_FullMenuList=q1 gds_MenuList=q2 gds_MenuRole=q3</Col>
    <Col id="CALL_BACK">fn_CallBack</Col>
  </Row>
  <Row>
    <!--// 01. send Message From Xpush[ó����: 2016.05.09, by ���¸�] //-->
    <Col id="SERVICE_ID">sendMessageFromXpush</Col>
    <Col id="Q_COUNT"/>
    <Col id="METHOD">sendMessageFromXpush</Col>
    <Col id="QUERY_LIST"/>
    <Col id="INPUT_DS">q1=ds_xpushList</Col>
    <Col id="OUTPUT_DS">ds_xpushList=q1</Col>
    <Col id="CALL_BACK">fn_CallBack</Col>
    <Col id="LOG_FLAG">Y</Col>
  </Row>
</Rows>
==============================================================================================================

- ���� ��û�� �ۼ� �� ���� ��û
1. �Ｚ���� ������ ������ ���� ��û�� �ۼ��Ͽ� �����Ѵٰ� �� ==> 2016.05.13(��)�� ���� �����ϴٰ� ��.
2. ������ ��ǰ
 1) ��Ʈ��(������ ������ ó���Ѵٰ� ��), �����, Ű����, ���콺 2��
==============================================================================================================

- ������ ���� ���콺 �嵥�� ��ü(ȸ�� ������ ���콺)
1. ����: 2015.08.05(��) --> 1���� �嵥�� ��ü: 2016.05.10(ȭ)[7����]
-------------------------------------------------------------------------------------------------------

- ������ ���� ���콺 ����(2015.08.05(��) ����)
1. [B259804871] ������ B175[�Ϲ�] ������ ��ǰ �������콺, ũ��(W*H*D): 9.5 * 5.5 * 3.7 cm, ����: 11,460��
http://itempage3.auction.co.kr/DetailView.aspx?itemNo=B259804871&frm3=V2
==============================================================================================================

- ��ũ���� īī��(īī�� ����)
1. ���� ��й�ȣ: *3*90*  --> 3*9 + 0*08
==============================================================================================================

������������������� 2016.05.11(��) �۾� �������������������
---> 07:30 ~ 18:50 ==>  

- �Ｚ���� MES 3.0 ���� Prj[��]
- �� ��ȯ �� �ڵ� �̺�Ʈ �Լ� ȣ�� ����
1. 
==============================================================================================================

- Main �Լ� ȣ��
1. /Top_Frame_Recent.xfdl ���Ͽ��� 
2. /Work_Form.xfdl ���Ͽ��� 
/*------------------------------------------------------------------
* ��   ��: ���� Ȱ��ȭ�Ǿ��� �� �߻��ϴ� �̺�Ʈ
* ��   ��: N/A
* Return : N/A
------------------------------------------------------------------*/
function Work_Form_onactivate(obj:Form, e:ActivateEventInfo)
{  
var sMenuId = vsMenuId+semco_bizMenuSeq;
var oTab = eval(gv_sModule+".VFset_AIO.CF_mdi").form.tab_openedTab; 
trace("[/Work_Form.xfdl] [Work_Form_onactivate()] ==> [02. ���� Ȱ��ȭ�Ǿ��� �� �߻��ϴ� �̺�Ʈ] [TEST_01] [nApply]"+ nApply 
+"[vsMenuId]"+ vsMenuId +"[semco_bizMenuSeq]"+ semco_bizMenuSeq +"[oTab.getTabpageCount()]"+ oTab.getTabpageCount() );  

for(i=0; i<oTab.getTabpageCount(); i++) 
{
//trace("[/Work_Form.xfdl] [Work_Form_onactivate()] ==> [TEST_02] [i_��°]"+ i 
+"[oTab.tabpages[i].name]"+ oTab.tabpages[i].name +"[sMenuId]"+ sMenuId );  

if(oTab.tabpages[i].name == sMenuId) 
{
//trace("[/Work_Form.xfdl] [Work_Form_onactivate()] ==> [TEST_03] [i_��°]"+ i 
+"[oTab.tabpages[i].name]"+ oTab.tabpages[i].name +"[sMenuId]"+ sMenuId );  

oTab.tabindex = i;

if(oTab.getTabpageCount() > 1)   // Tab�� �ϳ� �̻��� ��  ==> �߰�[ó����: 2016.05.12, by ���¸�]
{  
//trace("[/Work_Form.xfdl] [Work_Form_onactivate()] ==> [TEST_04] [gv_nApply]"+ gv_nApply +"[gv_nApply_ori]"+ gv_nApply_ori );
 
 if(gv_nApply == 1)  // �̺�Ʈ ���� �̸�
 {     
if(gv_nApply_ori == 0) // nApply_ori�� 0 �̸�
{
trace("[/Work_Form.xfdl] [Work_Form_onactivate()] ==> [��ȸ �Լ� ȣ��(Apply [F5]) ��ư Ŭ��]  ==> 
####[gv_nApply_ori]"+ gv_nApply_ori +"[vsMenuId]"+ vsMenuId +"[semco_bizMenuSeq]"+ semco_bizMenuSeq
+"[sMenuId]"+ sMenuId +"[oTab.getTabpageCount()]"+ oTab.getTabpageCount() );  

btn_apply_onclick();   // ��ȸ �Լ� ȣ��(Apply [F5])  ==> �̺�Ʈ �߰� 
gv_nApply_ori = toNumber(gv_nApply_ori) + 1;
  
if(vsMenuId == "MOS51707")  // Dispatch Main List �̸�(MOS51707)  
{  
// div_left.div_filter.div_filterView.fn_DispatchingListFilter();    // TEST �̺�Ʈ �߰�(DispatchingListFilter.xfdl)
// trace("[/Work_Form.xfdl] [Work_Form_onactivate()] ==> [TEST �̺�Ʈ �߰�(DispatchingListFilter.xfdl)]" );

// div_body.fn_DispatchingListView();  // TEST �̺�Ʈ �߰�(DispatchingListView.xfdl)
// trace("[/Work_Form.xfdl] [Work_Form_onactivate()] ==> [TEST �̺�Ʈ �߰�(DispatchingListView.xfdl)]" );   
}
}
 }
}  
}
}
}

3. /Bottom_Frame.xfdl ���Ͽ���  ==> workMain(CF)[/Work_Form.xfdl] ȣ��
/*------------------------------------------------------------------
* ��   ��: CTab���� ���õ� TabPage�� �ٲ� ���� �߻��ϴ� �̺�Ʈ 
* ��   ��: N/A
* Return : N/A
------------------------------------------------------------------*/
function tab_openedTab_onchanged(obj:Tab, e:TabIndexChangeEventInfo)
{ 
var sMenuId = obj.tabpages[e.postindex].name; 
trace("[/Bottom_Frame.xfdl] [tab_openedTab_onchanged()] ==> [01. TabPage�� �ٲ� ���� �߻��ϴ� �̺�Ʈ] 
[TEST_01] [e.postindex]"+ e.postindex +"[sMenuId]"+ sMenuId ); 

if(sMenuId.indexOf("51707") > -1)  // Dispatch Main List �̸�(MOS51707)  ==> �߰�[ó����: 2016.05.12, by ���¸�] 
{  
gv_nApply = 1;// �̺�Ʈ ����
}
else
{
gv_nApply = 0; 
}

gv_nApply_ori = 0;  // nApply_ori �ʱ�ȭ
trace("[/Bottom_Frame.xfdl] [tab_openedTab_onchanged()] ==> [TEST_04] [gv_nApply]"+ gv_nApply +"[gv_nApply_ori]"+ gv_nApply_ori );

if(e.postindex < 0) return;

//�ʱ�ȭ
st_totalValue.visible = false;
st_totalValue.text = "";

this.setTimer(1001, 100);

fn_tabBtnEnable();  
}
==============================================================================================================

������������������� 2016.05.12(��) �۾� �������������������

- �Ｚ���� MES 3.0 ���� Prj[��]
- �� ��ȯ �� �ڵ� �̺�Ʈ �Լ� ����
1. ���� �ҽ� Ȳ��ö ����� �ſ��� ���忡�� ���Ϸ� ����(MOS ������ ���� ��û���� ������ ���� ����)
==============================================================================================================

- �ƿ�Ȩ Prj ���� ���� 
1. ������ : �ƿ�Ȩ ���������ý��� 
2. ��    �� : Nexacro 
3. ��    �� : ���밳��
4. ��    �� : 5��13��(��) 08:30
5. ����� : ���߱� ���� ����Ʈ��(010-4050-3626)
6. ������ : ���� ���� LG CNS �ƿ�Ȩ(010-2673-8098) 
7. ��Ÿ: �����Ͻø� ����Ʈ�� ���� �븮�� ���߱� ����Կ��� ��ȭ�ؼ� �ȳ� ��������.
 1) ������ 2�� �ⱸ �Ÿ���Ÿ�� 6��
==============================================================================================================

- �翺 ����� ���Ժ� �۱�(22��, ��)
1. ������ ���: �츮���� 1002-041-575698, ������, 32���� �۱� �Ϸ�.
==============================================================================================================

- �ػ�ũ���÷��� 14 / �ػ�ũ�� ��Ʃ��� ���̵�
http://docs.tobesoft.com/nexacro_studio_guide_nexacro_14_ko
==============================================================================================================
	
������������������� 2016.05.13(��) �۾� �������������������
---> 07:30 ~ 18:50 ==>  

- �Ｚ���� MES 3.0 ���� Prj[��] ö��
06:00 ���
07:30 ����ö(�븲�� -> ������ 3�� �ⱸ)
09:00 �Ÿ���Ÿ��
09:30 ����(��������: ���� ����) 
10:10 ����
10:20 M5422�� ����(������ -> �Ｚ����)
11:00 ���
11:40 �߽�
14:00 ����� ��Ʈ�� ���� �ñ�	
	--> 1. ���� 2�ÿ� ��û�� �ؼ� 4�ð� �ɸ��ٰ� ��.(C: SSD 256G, D: 1T)
	--> 2. ������ ������ ������ ������ A/S���ͷ� ã���� ���ٰ� ��.
16:00 �Ｚ SDS �ȿ��� �������� �λ�
16:30 ��� ==> ������(�����, ���콺 2��, Ű����) ���� �޾� ������(������ �ʿ� ����)
17:20 �Ｚ���� ��� ���� Ž(����Ͱ� ���ſ�)
18:20 ������(������ ��Ʈ5 S�� �н���)
18:40 (��)�����̵���Ÿ �繫�� �湮(�Ｚ ���Ϻ��� 20��) ==> �̼��� ������ ���� ó�� �ʿ� ���ٰ� ��.(���� 
	�Ű� �Ѵٰ� ��), �λ� �İ�, �ָ� �ٹ�, �߱� ����(2016.04) ������ ����
19:00 ġ��(�̼��� ������ ����) ==> KT�� �ڹ� ������ 40�� ���� �ߴٰ� ��. 1�� �Ŀ� �ٽ� (��)�����̵���Ÿ�� ����� ��.\
23:00 ����
23:50 �ý�(������ -> �븲��): �����̵���Ƽ �̼��� ������ 2���� ��
01:00 �Ͱ� 
==============================================================================================================

- (��)����Ʈ�� Prj ����(08:30, ������) 
1. ������ : �ƿ�Ȩ ���������ý��� 
2. ��    �� : Nexacro 
3. ��    �� : ���밳��
4. ��    �� : 5��13��(��) 08:30
5. ����� : ���߱����� ����Ʈ��(010-4050-3626)
6. ������ : �������� LG CNS �ƿ�Ȩ(010-2673-8098) 
7. ��Ÿ: �����Ͻø� ����Ʈ�� ����븮�� ���߱�����Կ��� ��ȭ�ؼ� �ȳ� ��������.
 1) ������ 3�� �ⱸ �Ÿ���Ÿ�� 4��
8. ���� ����: ���� PL�� DBA�� �þƼ� �Ѵٰ� ��. ü�谡 �� ����. �߸� �ϴٰ� (��)�Ѽ� Prj�� �� ������ �����.
==============================================================================================================
 
������������������� 2016.05.14(��) �۾� �������������������
---> 07:40 ~ 18:10 ==>  

- �ָ�
12:00 ���(�� ���� ������)
13:30 �߽�
14:50 ����
15:00 ���
15:30 �庸��(����, ����2��: ����M)
18:00 ����(�̸�Ʈ: ���̼��� 2��, ���� ==> �¸� 6�� ���� ����)
19:30 ����(�̸�Ʈ 3�� �Ĵ�: �ø��)
20:30 �Ͱ�
23:00 ��ħ
==============================================================================================================

������������������� 2016.05.15(��) �۾� �������������������
---> 07:40 ~ 18:10 ==>  

�� �����౸
06:00 ��� 
06:20 ������(����APT -> �븲���)
06:30 �븲���
07:00 ������
08:00 ���� 
08:20 �ŵ� ����ȸ�� ���� ==> 4���� ��.
12:00 ����
12:30 �߽�(����, ����Ĵ�)  ==> ��âȣ �Ĺ�� ���� ��ȥ�� ���� �̾߱���.
14:00 ����
14:30 �뷡�� ���ݾƼ� �����ϰ� �Ͱ�(�� ���� ��)
14:40 �Ͱ�
20:00 ����(¥��� 2�׸�, ���ٸ�): ��� ��Ŵ
21:00 �̹�, ����(�翺�� ����)
23:00 ��ħ
==============================================================================================================
	
������������������� 2016.05.16(��) �۾� �������������������
---> 09:00 ~ 18:30 ==> (��)����Ʈ�� ù ���
 
- (��)����Ʈ�� ù ���(9��)
1. ȸ���: (��)����Ʈ��, ��ǥ�̻�: ��ȫ��
 1) �ּ�: ����Ư���� ������ ��õ�� 583, B�� 901ȣ(��â��, �츲��糪��)  ==> �Ҽ�: IT�����
 2) ��ȭ) 02-2093-2050~5  [FAX]:02-6280-2122, http://www.esoftone.co.kr
 3) �޿� ����: ���� 5õ 0��(���� ���� ����)
 4) ��������� ���� ��¿�, ������ ����
==============================================================================================================
 
- LG ��Ʈ�� ���� ����( (��)����Ʈ�� ������ �������� ���� ����) ==> 2016.05.16(��)
1. �𵨸�: LG S53
2. S/N: 309QCVU557847
3. �⺻ ����: 
CUP: i5-3230M 2.6GHz
RAM: 8GB
HD: SSD 512G(C:244G, D:221G)
�ý��� ����: 64��Ʈ � ü��
�ػ�: 1600*900
�׷���ī��: AMD Radeon HD 7650M Series
4. ��Ʈ�� �ð� ��ġ(��Ʈ�� ���) ==> 03** 
==============================================================================================================

- ����Ʈ�� �׷����
http://webmail.esoftone.co.kr ==> tamario / hp��*16*1@
����� ==> ���̿����� �ٿ�ε� --> tamario@esoftone.co.kr / hp��*16*1@
==============================================================================================================
 
- �ػ�ũ���÷��� 14 / �ػ�ũ�� ��Ʃ��� ���̵�
http://docs.tobesoft.com/nexacro_studio_guide_nexacro_14_ko
==============================================================================================================
 
- �߽�(��ȫ�� ��ǥ���� ��)
1. ��������: IT����� ���¿� �̻� ���� ==> 2003�� 9�� (��)���̿����� ������ǥ
==============================================================================================================

- �����ó�Ʈ5 S��(����÷�Ƽ��) ����
http://storefarm.naver.com/fivestar5/products/126749646, ����: 20,927��
==============================================================================================================

- ���� ����� Ư���� ����
1. ��������[19], ������[18], ����ü��[8])  ==> �� 4�� 5õ��(��� ���̵��� �Ѵٰ� ��)
==============================================================================================================

������������������� 2016.05.17(ȭ) �۾� �������������������
---> 09:00 ~ 18:30 ==> �߽�(����������̶� �Ļ�: �� ���ܹ�(�� õ��))
 
- (��)����Ʈ�� ���� ���
1. nexacro �м�

-[Tip] �ػ�ũ�� �÷����� ���õ� URL ����
http://www.playnexacro.com/index.html#show:article

- nexacro platform 14 ȥ�ڼ� �����ϱ�
http://demo.nexacro.com/nexacroSelfStudy/nexacroSelfStudy_Beginner/root_ko.html

- Showcase  
http://support.tobesoft.co.kr/Next_JSP/nexacro/index.jsp

- ������� 
http://docs.tobesoft.com:1975/nexacro_technical_note_ko
==============================================================================================================

- ��й�ȣ ����[2016.05.17(ȭ)]
1. ��Ʈ�н�(LastPass)[����] ==> ��ġ --> https://lastpass.com/misc_download2.php
C:\Users\Administrator\AppData\LocalLow\LastPass\iehome2.html
1) LassPass ==> tamario@naver.com / hp��*@
==============================================================================================================

������������������� 2016.05.18(��) �۾� �������������������
---> 09:00 ~ 18:30 ==> 
 
- (��)����Ʈ�� ���� ���
1. nxui �м�(nexacro �ҽ�) 
D:\04. TAMA Program\71. Nexacro\01. Nexacro �ڷ�\01. nexacro ���� ����\2.��ġ\
�ǽ���ġ_ǥ�������ӿ�ũ3.2��� nexacroplatform ������ ���̵�.docx
==============================================================================================================

- nexacro ���� ���� �ڷ�
1. C:\eGovFrame-3.2\workspace\nexacroplatform\src\main\nxui\00. nxui.xprj
2. Runtime�� �ȵ� ==> MySQL DB ���
3. MySQL DB ����  ==> C:\eGovFrame-3.2\mysql-5.6.21\startup.bat
 01. nxui_NX ==> http://localhost/nxui/index.html  ==> chulsoo/test123 
System.out.println("[/LogInOutController.java] [loginCheck()] ==> [TEST_01]" ); 
==============================================================================================================

- nexacro alert �м�
this.btn_hello_onclick = function(obj:Button,  e:nexacro.ClickEventInfo)
{
	trace("[/base_hello.xfdl] [btn_hello_onclick()] ==> [TEST_01]");
   
	this.alert("[/base_hello.xfdl] [btn_hello_onclick()] ==> Hello");
  
	alert("[/base_hello.xfdl] [btn_hello_onclick()] ==> [this.edit_hello.value(Edit value)]"+ this.edit_hello.value );
	
	application.alert("[/base_hello.xfdl] [btn_hello_onclick()] ==> [obj.text(��ư Text)]"+ obj.text );
}
==============================================================================================================

- ��Ʈ�� �÷���(LG CNS) ���� ����
1. http://partnercampus.lgcns.com ���� > log-in > ����븮�� ���� ���� ==> DEV109094 / hp��*@
2. �ҼӾ�ü ����:  (��)�������Ʈ --> (��)����Ʈ��
3. ȸ��, ������Ʈ ��� ����
==============================================================================================================

- ���� ����((��)����Ʈ�� ���������
1. �ѿ���: !õ !��(��: !,!85,000��) ==> ������(1�� �� ������ ����[�츮���� ��������])
2. �޿���: 25�� 
==============================================================================================================

������������������� 2016.05.19(��) �۾� �������������������
---> 09:00 ~ 18:30 ==> �츮 ��糪�� A�� 3������ �ҳ�(11���뿡 ���ͼ� �������, �̸�Ʈ �湮 �� �߽�)
 
- (��)����Ʈ�� ���� ���
1. nxui �м�(nexacro �ҽ�)
==============================================================================================================

- Nexacro ����
 01. nxui_NX ==> http://localhost/nxui/index.html  ==> chulsoo/test123 

- Nexacro ������Ʈ(/nxui.xprj) XPlatform�� ����
==============================================================================================================

- Component dll ����
 (7120): Error: Component dll�� ã�� �� ���� Load�� �����Ͽ����ϴ�. (ExtCommon)
 (7120): Error: Component dll�� ã�� �� ���� Load�� �����Ͽ����ϴ�. (XWrapComp)
 (7120): Error: Component dll�� ã�� �� ���� Load�� �����Ͽ����ϴ�. (XResponse)
 (7120): Error: Component dll�� ã�� �� ���� Load�� �����Ͽ����ϴ�. (XPrintEx)
 (7120): Error: Component dll�� ã�� �� ���� Load�� �����Ͽ����ϴ�. (XInitechAdp64)
 (7120): Error: Ŭ����(ExtCommon) ������ �����Ͽ����ϴ�.
 (7120): Error: Ŭ����(WebBrowser) ������ �����Ͽ����ϴ�.
 (7120): Error: Ŭ����(Response) ������ �����Ͽ����ϴ�.
 (7120): Error: Ŭ����(PrintEx) ������ �����Ͽ����ϴ�.
==============================================================================================================

- Do it! �ȵ���̵� �� ���α׷���[���� 3�� ���ø��] 
1. ������ �ۺ��� ===> http://easyspub.co.kr/50_Menu/VideoList
2. ������ ===>https://www.youtube.com/watch?v=WmijI0ip1No&feature=youtu.be 
-------------------------------------------------------------------------------------------------------

- �ȵ���̵� ���α׷��� ����(4��. ���� ���� �Ѻ� �̵��) ==> ����
http://www.soen.kr/book/android
==============================================================================================================

- ������� �������� ��Ź����(������IRP ����) ����
1. (��)�����̵���Ÿ ���� ���� ���� ����(������� ��â�� ����)  ==> 2016.05.19(��) @@@
 1) ���¹�ȣ: 009-114608-94-001, ������: ���¸�
 2) 2106�� 6�� ���� (��)�����̵���Ÿ���� 360���� ���� �Ա��� ������ �����.
==============================================================================================================
 
������������������� 2016.05.20(��) �۾� �������������������
---> 09:00 ~ 18:30 ==> 
 
- (��)����Ʈ�� ���� ���
1. nxui �м�(nexacro �ҽ�)
==============================================================================================================

- nexacro HTML5 ��� ������
0. nxui.xprj ���� ���� Ŭ�� ==> 00. nxui(��� ����).xprj ���� �ƴ�
1. Working Folder, Generate Path, Base Lib Path �⺻ ����
 1) Working Folder: C:\eGovFrame-3.2\workspace\nexacroplatform\src\main\nxui
 2) Generate Path: C:\eGovFrame-3.2\workspace\nexacroplatform\src\main\webapp
 ==> C:\eGovFrame-3.2\workspace\nexacroplatform\src\main\webapp\nxui\index.html ==> ����
 3) Base Lib Path: C:\eGovFrame-3.2\workspace\nexacroplatform\src\main\nxui\nexacro14lib

2. ���� db ����
����Db ������ : C:\eGovFrame-3.2\bin\mysql-5.6.21\ startup.bat

3. Generate Application ����(nexacro����)
nexacro generator (5976): Start Generate Project : nxui
nexacro generator (5976): [Warning:] Not exist default layout : <Div>
nexacro generator (5976): [Warning:] Not exist default layout : <Div>
nexacro generator (5976): [Warning:] Not exist default layout : <Div>
nexacro generator (5976): [Warning:] Not exist default layout : <Div>
nexacro generator (5976): [Warning:] Not exist default layout : <Div>
nexacro generator (5976): ====== Generate Project [nxui] : Success 65, Fail 0, Copy 949 ======
nexacro generator (5976): Total Time : 3.494 sec

4. ��ó ����(nexacro����)
 1) Chrome, IE ���� > Launch Project: Ŭ��
 2) Input the index.html URL: http://localhost/nxui/index.html �Է� > OK: Ŭ��

5. �α��� ID/PW �Է�(chulsoo/test123)(Chrome����)

6. Chrome ���� > F12  > Console > trace �α� Ȯ�� ����(this.alert���� â ���� ����)
==============================================================================================================

- nexacro �α�
trace("[/userMgmt.xfdl] [fn_search()] ==> [�����ȸ] [TEST_01]");
application.trace("[/userMgmt.xfdl] [fn_search()] ==> [�����ȸ] [TEST_01]");
 
this.alert("[/userMgmt.xfdl] [fn_search()] ==> [�����ȸ] [TEST_01]"); 
==============================================================================================================

������������������� 2016.05.21(��) �۾� �������������������
---> 07:40 ~ 18:10 ==>  

- �ָ�
06:00 ��� 
06:20 ������(����APT -> �븲���)
06:30 �븲���
07:00 ������
08:00 ���� 
08:20 �Ͱ�
11:00 �߽�
17:00 ����(��������)
16:30 ���� ���(2��, �����ν��� �ʼ�����)
19:30 �Ͱ�
19:40 ����(������, 2�׸�: �������屹): ����ũ�ƿ�
23:00 ��ħ
==============================================================================================================

������������������� 2016.05.22(��) �۾� �������������������
---> 07:40 ~ 18:10 ==>  

�� �����౸
06:00 ���
06:10 �ױ۷��� FA�� ��û(���� 2:1 ũ����Ż �Ӹ���): ������ ���� �ܿ� ���� �����.
07:20 ������(����APT -> �븲���)
07:30 �븲���
08:00 ���� ==> 4���� ��(������ �������: ���� ����)
11:20 ���� 
12:30 �߽�(�ø�, ȭ�� Ȳ������)  ==> ȸ���� ��
13:30 �Ͱ� 
13:40 �븲3�����(�౸ȭ �� ������: ������ �ִ� �� �ܿ� ã����)
13:20 �Ͱ� 
14:00 TV ��û
18:00 ����(���� ����: �����ν���)
18:20 ���θ� ����(������ ����� ģ�� ������ �� �����)
18:50 �Ͱ�
19:30  ����(�Ұ����: ������ ���� ����)
23:00 ��ħ
==============================================================================================================

������������������� 2016.05.23(��) �۾� �������������������
---> 09:00 ~ 18:30 ==> 
 
- (��)����Ʈ�� ���� ���
1. nxui �м�(nexacro �ҽ�)
==============================================================================================================

- MySQL �м�
- /context-datasource.xml ���Ͽ���
<!-- mysql -->
<bean id="dataSource" class="org.apache.commons.dbcp.BasicDataSource" destroy-method="close">
	<property name="driverClassName" value="com.mysql.jdbc.Driver"/>
	<property name="url" value="jdbc:mysql://localhost:3306/test"/>
	<property name="username" value="nexacro"/>
	<property name="password" value="nexacro"/>
</bean>

- /sql-map-config.xml ���Ͽ���
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE sqlMapConfig PUBLIC "-//iBATIS.com//DTD SQL Map Config 2.0//EN" "http://www.ibatis.com/dtd/sql-map-config-2.dtd">
<sqlMapConfig> 
	<sqlMap resource="egovframework/sqlmap/rte/sample/LogInOut.xml" />
	<sqlMap resource="egovframework/sqlmap/rte/sample/User.xml" />
	<sqlMap resource="egovframework/sqlmap/rte/sample/Code.xml" />
	<sqlMap resource="egovframework/sqlmap/rte/sample/Board.xml" />
	<sqlMap resource="egovframework/sqlmap/rte/sample/Group.xml" />
	<sqlMap resource="egovframework/sqlmap/rte/sample/GroupUser.xml" />
	<sqlMap resource="egovframework/sqlmap/rte/sample/Menu.xml" />
	<sqlMap resource="egovframework/sqlmap/rte/sample/Page.xml" />
	<sqlMap resource="egovframework/sqlmap/rte/sample/GroupMenu.xml" />
	<sqlMap resource="egovframework/sqlmap/rte/sample/Sample.xml" /> 
</sqlMapConfig> 
==============================================================================================================

- eclipse console log �ٸ� ���α׷����� ����� �ϱ�
1. i-Tail
http://mainia.tistory.com/169

2. mtail
http://egloos.zum.com/namomo/v/3586763
==> �� �� �ѱ� ����.(��� �Ұ�)
-------------------------------------------------------------------------------------------------------

- ��Ŭ����(eclipse)���� ����(tomcat) �ܼ�(console) �α�(log) ���� ����
1. ����: eclipse > Server > Tomcat v7.0 Server at localhost: ����Ŭ�� > Overview(��â)
> Open launch configuration: Ŭ�� > Edit Configuration(��â) > Common�� Ŭ�� �� �α����� ���� > Standard Input and Output 
File ==> C:\eGovFrame-3.2\apache-tomcat7\logs\tomcat.log(���� �Է�), Append: üũ > Apply: OK: Ŭ��
==============================================================================================================

- Toad for MySQL �ٿ�ε�(http://www.toadworld.com/m/freeware)
1. ToadforMySQL_Freeware_7.7.0.579.zip �ٿ�ε� �� ��ġ
2. Dell Software Sign In(https://account.software.dell.com/)  ==> tamario@naver.com  / hptnwhd1601@
-------------------------------------------------------------------------------------------------------------------------------

- MySQL DB ����
- Create New Connection
1. Connection type: TCP
2. Host: localhost
3. User: nexacro
4. Password: nexacro
5. Database: test
6. Port: 3306
-------------------------------------------------------------------------------------------------------------------------------

- MySQL Database test ���
C:\eGovFrame-3.2\mysql-5.6.21\data\test
==============================================================================================================

- LG ����� ���� ����( (��)����Ʈ�� ������ �������� ���� ����) ==> 2016.05.23(��)
1. �𵨸�: LG FLATRON 23EA53VQ
2. S/N: 311NDPH5M920 
==============================================================================================================

- WebSquare ������
https://www.youtube.com/watch?v=sevB2h0NbKI&list=PLh3WQjkIHzwLlEi7gUtDPXCd4lCndNq3b
==============================================================================================================

- �� ����
1. [B281763226] �һ�� 2015 ��ħ���[20kg], ����: 30,900�� ==> ����
http://itempage3.auction.co.kr/DetailView.aspx?ItemNo=B281763226&frm3=V2
==============================================================================================================

- ��Ʈ�� ��ġ�� ����
1. ���̸��� IM1000 �� 5�� �������� ��ü�� ���� ��Ʈ�ϰ�ġ��, ����: 9,400�� ==> 11����
http://deal.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=405943165&xzone=order^list&xfrom=order^list
==============================================================================================================
 
������������������� 2016.05.24(ȭ) �۾� �������������������
---> 09:00 ~ 18:30 ==> �� ���� ��
 
- (��)����Ʈ�� ���� ���
1. nxui �м�(nexacro �ҽ�)
==============================================================================================================

- Chrome ���������� �ҽ� ������ �ȵ� ��
1. Chrome ���� > ��� ���� ǥ�� > �������� > ���ͳ� ��� ��� ����(��â)
 1) ��Ű, ��Ÿ ����Ʈ �� �÷α��� ������: üũ
 2) ĳ�õ� �̹��� �Ǵ� ����: üũ 
==> ���ͳ� ��� ��� ���� ��ư: Ŭ��
==============================================================================================================

- �����(MRO) �м�, ���� ����
1. ����� �̻��(Ŀ�� ����): �߱� ����Ʈ ���(JAVA, JSP)
==============================================================================================================

[���ͺ�] "�ѱ� ����, ���� �� ������ó�� �׾��"
http://www.pressian.com/news/article.html?no=136889&ref=nav_mynews
==============================================================================================================
 
������������������� 2016.05.25(��) �۾� �������������������
---> 09:00 ~ 18:30 ==> �ٶ� �ڸ��� ������Ʈ ����(14��)

- (��)����Ʈ�� ���� ���
1. nxui �м�(nexacro �ҽ�) ==> �Ϸ� @@@
==============================================================================================================

- (��)����Ʈ�� ���� ������ ��ġ(����) ==> �������� �� �����ٰ� ��(��ġ ����)
01. ������: HP LaserJet 1536dnf MFP
http://support.hp.com/kr-ko/drivers/selfservice/HP-LaserJet-M1530-Multifunction-Printer-series/3974271/model/3974278 
02. ������(��ĵ��): HP Color LaserJet CM1312nfi MFP 
==============================================================================================================

- �ٶ� �ڸ��� ������ ����ERP Proj ����(9��, ����) Prj[��] 
0. ������Ʈ��: Fila Korea ������ ����ERP ������Ʈ[10���� ���� �Ϸ� ����]
 1) ��ġ: ���� ���ʱ� ��޷� 6(������ ���� ��ó)
 2) ����: ����/�� ����
1. ���¿� �̻��((��)����Ʈ�� ���� �̻�, HP: 010-8894-9086) �μ�
 1) �������: ����� ���� �ڸ����� ó��
2. ������Ʈ �η�
 1) ����� ����(010-2328-2005, (��)LG CNS, PM) 
 2) ������ �̻�(010-8149-8520, (��)����Ʈ��, ���� ������ �� PM) 
 3) ������ ����(010-2499-9518, (��)����Ʈ��, SCM PL)
==============================================================================================================

- �ٶ� �ڸ��� ������Ʈ IP �ּ� ����(IP ����) 
1. IP �ּ�: 192.168.133.18
2. S/M: 255.255.255.0
3. GW: 192.168.133.202
4. �⺻ DNS: 168.126.63.1
 ���� DNS: 168.126.63.2
-------------------------------------------------------------------------------------

- ���� ����: 192.168.133.250
��Ʈ��ũ > ��Ʈ��ũ ����̺� ����(N)(��â)
����(D): \\192.168.133.250\�۾���	 --> ��ħ(F)
-------------------------------------------------------------------------------------

- ������: 192.168.133.100
- SCM SVB ����
1. svn://172.16.41.114:23033/repository ==> tamario / tama339
==============================================================================================================

- ����� ����
1. ����: ����� ���̺� ����[���� ���÷���(M): ���÷��� Ȯ�� ����]�ϸ� 2~30�� ������ ���� ����ٰ� ������.
2. ����: 
1) ����� ���̺� ���� ���� �����̰ų� ����� ����ȭ�� ������ ������ ���� ==> �ƴ�
2) ��Ʈ�� �׷��� ī�� ������ ���̶� ������(AMD Radeon HD 7650M Series)
 ��. ����͸� ������ ���� ��Ʈ�Ͽ� ���̸� ����.  --> ����� ����.
 ��. �������� �����(���� ����)�� �� ��Ʈ�Ͽ� ���̸� ���� ����� ���� �Ÿ� .--> ��Ʈ�� �� ����
==============================================================================================================

������������������� 2016.05.26(��) �۾� �������������������
---> 07:00 ~ 20:30 ==>

- �ٶ� �ڸ��� ������ ����ERP Prj[��]
- WebSquare5 �⺻ ��� ���� - 2014(������ ����)
https://www.youtube.com/playlist?list=PL7a9HhkvOVb0N5bNlkfuqPip0LvAwaMPH
==============================================================================================================

- ���� ȯ�� ����
1. C:\FilaKoreaERP ==> (��)����Ʈ�� Ȳ���� ����� ��������
2. PL/SQL ��ġ
==============================================================================================================

- WebSquare5 ��ġ
1. MDI.xml
C:\FilaKoreaERP\workspace\FilaKoreaERP\FilaKoreaERP.web-resources\src\main\webapp\wqui\cm\MDI.xml
==============================================================================================================

- �����ڵ����
/CM_CmmCdMngm.xml
==============================================================================================================

- WebSquare5 �α�
$w.log("[/CM_CmmCdMngm.xml] ==> [TEST_01]");
$w.log("[/CM_CmmCdMngm.xml] [doInit()] ==> [ȭ�� �ʱ�ȭ ����] [TEST_01]");
------------------------------------------------------------------------------------------------

- Transaction ��ȸ ��� �α�
alert(e.responseText);    // ��ȸ ���
alert(e.responseBody);
alert(e.responseJSON); 
alert(e.responseStatusCode);   // ��ȸ ������
------------------------------------------------------------------------------------------------

- Grid ��ư Ŭ����
scwin.grd_cmcdMstList_oncellclick = function(row,col) {
	var tmpID = gridView3.getColumnID(col):  // Į�� ID��

	if (tmpID == "btn") {
		alert(userList.getCellData( row, "name"));
	}
};
==============================================================================================================

- �ٶ� �ڸ��� ����� ���� �ϼҿ�
1. �м�, ����� ���������� �ǰ� �ִµ� ������ ���� �����ȴٰ� ��.(���� �м��� ����)
==============================================================================================================

������������������� 2016.05.27(��) �۾� �������������������
---> 07:00 ~ 20:30 ==>

- �ٶ� �ڸ��� ������ ����ERP Prj[��]
- �ٶ� �ڸ��� ������ ����ERP Proj �ҽ� �м�
1. ������ ����(����PL, (��)����Ʈ�� ��������)
==============================================================================================================

- DB ����(�ٶ� �ڸ��� ������ ����ERP Proj) ����
1. ����:
2016-05-27 08:55:09,943  INFO [org.springframework.web.socket.config.WebSocketMessageBrokerStats] 
WebSocketSession[0 current WS(0)-HttpStream(0)-HttpPoll(0), 0 total, 0 closed abnormally (0 connect failure, 0 send limit, 0 transport error)], 
stompSubProtocol[processed CONNECT(0)-CONNECTED(0)-DISCONNECT(0)], stompBrokerRelay[null], 
inboundChannel[pool size = 0, active threads = 0, queued tasks = 0, completed tasks = 0], 
outboundChannelpool size = 0, active threads = 0, queued tasks = 0, completed tasks = 0], sockJsScheduler[pool size = 1,
active threads = 1, queued tasks = 0, completed tasks = 0]
==============================================================================================================

- WebSquare ���� ����
1. ����: Loading License. PATH: C:\FilaKoreaERP\workspace\FilaKoreaERP\FilaKoreaERP.web-resources\src\main\webapp\websquare_home\license\license
2. ����: License ������ �ƴ�.(�ҽ� ���� ������� ������)
3. ��ġ: ������ �ҽ� ���� �� ���� �۵�
==============================================================================================================

- DB ����(�ٶ� �ڸ��� ������ ����ERP Proj)
1. ���߼��� Oracle DB ����: 172.16.41.114, PORT: 1521 --> ERPDEV: SCMADM/!dlatl00, FKDW: fkerp/fkerp, FS21: fkerp/!dlatl00
---------------------------------------------------------------------------------------------------

- /tnsnames.ora ���Ͽ���
ERPDEV = 
	(DESCRIPTION =
    (ADDRESS = (PROTOCOL = TCP)(HOST = 172.16.41.114)(PORT = 1521))
    (CONNECT_DATA =
      (SERVER = DEDICATED)
      (SERVICE_NAME = ERPDEV)
    )
  )

FKDW =
  (DESCRIPTION =
    (ADDRESS_LIST =
      (ADDRESS = (PROTOCOL = TCP)(HOST = 172.16.0.2)(PORT = 1541))
    )
    (CONNECT_DATA =
      (SERVICE_NAME = FKDW)
    )
  )
==============================================================================================================

- ibatis �ּ�ó��
<select id="selectCommCdList" parameterType="HashMap" resultType="HashMap">
SELECT /* kr.co.fila.cm.dao.CommCodeDao.selectCommCatList - �����ڵ� ��ȸ(/CommCode_sqlmap.xml) */  
SELECT /* selectCommCdList[�����ڵ� ��ȸ(/CommCode_sqlmap.xml)] */
       GRP_CD
     , CODE
FROM TB_T
</select> 

/* [02. ���α׷� ��ô��Ȳ ��ȸ] hse.cm.cmm.dao.prgrArslMngmDAO.selectPrgrArslDgrMngm*/
==============================================================================================================

 - LG ��Ʈ�� �� ���� ����((��)����Ʈ�� ������ �������� ���� ����: ��� �� ����� �ٽ� ��) ==> 2016.05.27(��) 
1. �𵨸�: LG Xnote 15UD560-KX7DK
2. S/N: 605NZDC027786
3. �⺻ ����: 
CUP: Intel i7-6500U(2.5GHz)
RAM: 8GB DDR3
HD: 1TB
�׷���ī��: NVIDIA Geforce 940M 2GB
������/�ػ�: 15.6��ġ/1920*1080 
�ý��� ����: 64��Ʈ � ü�� 
4. ��Ʈ�� �ð� ��ġ(��Ʈ�� ���) ==> 03** 
http://www.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=1421461641#tabProductReturn
==> ����: 1,167,340��,  SSD 256G�߰�: 1,264,700��
-------------------------------------------------------------------------------------------------------

- LG ����� ���� ����( (��)����Ʈ�� ������ �������� ���� ����) ==> 2016.05.23(��) 
1. �𵨸�: LG FLATRON 23EA53VQ(23EA53VQ-PA.BKRHJVN)  
2. S/N: 311NDPH5M920  
==============================================================================================================

- ��Ʈ�� ������
18:00 ��� 
18:05 ���� ����(�ٶ��ڸ��� -> ��翪)
18:15 ����ö(��翪 -> �븲��)
18:30 �Ͱ�(�Ｚ SSD 256 ã�ư� ������ ��)
18:40 ����� 
19:00 ����(�븲�� -> �鼮�ʱ�(���̿�)) : ��Ʈ�� ������
20:00 �ͻ� ==> LG ��Ʈ��[LG Xnote 15UD560-KX7DK] �� ���� ����((��)����Ʈ�� ������ �������� ���� ����)
        --> ���� ���ϰ� ������ ��, ��Ʈ�� ���̺�� ����� ���̺��� �ٲ���ٴ� �� ����
21:30 �Ͱ� 
21:40 ����
23:00 ��ħ
==============================================================================================================

������������������� 2016.05.28(��) �۾� �������������������
---> 07:40 ~ 18:10 ==>  

- �ָ�
06:00 ��� 
06:20 ������(����APT -> �븲���)
06:30 �븲���
07:00 ������
08:00 ���� 
08:20 �Ͱ�
08:50 ����(���)
09:30 �����
09:50 LG���ڼ��� ����(���Ǽ��񽺼���) �湮(������, ����)
10:00 LG ��Ʈ��(��Ʈ��) USB ���� �������� WIN7 OS ��ġ�� USB2.0 �ν� �ȵ� ����
       ==> ���� ����̺� ��� ����, WIN7 OS ��ġ
11:10 ����
11:20 ����� ����(����)
11:50 �Ͱ�
12:30 �߽�
12:50 �翺, ���� �ٿ����� ���
13:00 ��Ʈ�� ���α׷� ��ġ
15:00 ����
18:00 ���
18:30 �翺, ���� ����
19:30 ����(�Ұ����, ��, �ø�[42,000��]: �ؼ��� ������ ==> ���� ����)
23:00 ��ħ
==============================================================================================================

- LG ��Ʈ�� �ֽ� ���̿��� USB �����ϱ�  
0. Ű������ F2���� �����ݴϴ�. �ʱ� ���̿��� ȭ������ ����
1. advanced �κп� UEFI BOOT �κ��� OFF  
2. security �κп� bootconfiguration �� ������ ����ó�� secure boot option �� off �س����ø� �� !! 
http://blog.naver.com/skyeye7953/220648536056
==============================================================================================================

- LG ��Ʈ��(��Ʈ��) USB ���� �������� WIN7 OS ��ġ�� USB2.0 �ν� �ȵ�
1. ����: WIN7 OS ��ġ�� USB2.0 �ν� �ȵ�.
2. ��ġ: ���� ã�ƺ���(��â)���� USB3 32bit���� 2�� ��ġ�ϸ� USB2.0 �νĵ�.
 1) ��ǻ�� > DnA(C:) > USB3\Drivers\Win7\x86
--------------------------------------------------------------------------------------------------------

- LG ��Ʈ��(��Ʈ��) ��Ʈ��� SSD ��ġ
1. mSATA(SATA3) SSD�� ������ ��ġ�ؾ� ��.
 1) �Ｚ 850 EVO mSATA �ø��� ==> 256G -> ����:109,490��, 526G -> ����: 197,390��
http://www.interpark.com/product/MallDisplay.do?_method=detail&sc.shopNo=0000100000&firpg=01&sc.prdNo=3403703907&sc.dispNo=016001&sc.dispNo=016001
==============================================================================================================
 
- LG���ڼ��� ����
1. ���Ǽ��񽺼���: ���� ���Ǳ� �Ÿ���   1444-8 LG BEST SHOP ������ 2��
https://www.lgservice.co.kr/center/selectCenterSearchDetail.do?cSeq=194
==============================================================================================================

������������������� 2016.05.29(��) �۾� �������������������
---> 07:40 ~ 18:10 ==>  

�� �����౸
06:00 ���
06:10 UEFA è�� ���(���� M: AT M): 03:45 ==>  ���� ���帮�� ���
07:20 ������(����APT -> �븲���)
07:30 �븲���
08:00 ������
08:30 ���� ==> 5���� ��(������ ��û)
11:30 ����
12:30 �߽�(���ɸ�, �κ�: �Ȱ���)  ==> �ߵ����� ���
14:00 46�� ���� ���� ������
14:20 �����ν���(����, �ٳ��� ==> �� 3õ��)
14:30 �Ͱ�
15:00 ����
17:00 ���
19:30 ����
23:00 ��ħ
==============================================================================================================

������������������� 2016.05.30(��) �۾� �������������������
---> 07:00 ~ 21:00 ==> ȸ�ǽǷ� �ڸ� �̵�

- �ٶ� �ڸ��� ������ ����ERP Prj[��]
- ���� ����
1. ������ ����(����PL), ������ ����(����)
==============================================================================================================
 
- ��ȹ, ����, ����, ���¾�ü ��Ż ���� �۾�  
1. ��ȹ(�����ȹ��ȹ): 13��
2. ����: 15��  ===> 26�� 
3. ����: 11��
4. ���¾�ü: 0��(�����׽�Ʈ ���̽� ������)  ===> 11��
==============================================================================================================

- ���߼���(172.16.41.114)�� �����Ͽ�(������: svnadm/!dlatl00)
$ slog.sh  
$ tail -f
--------------------------------------------------------------------------------------------------------

- ���߼���
http://172.16.41.114:10090/websquare/websquare.html?w2xPath=/wqui/cm/MDI.xml#none
==============================================================================================================

- LG ��Ʈ�� ��Ʈ�� ���� ���� �ȵ�
1. ��Ʈ��Ͽ� ������ �����ؾ� ��(USB ���� ��Ʈ �־�� ��) 
==> USB ���� ��Ʈ ������ ������ ������ ���� ������
--------------------------------------------------------------------------------------------------------

- LG ��Ʈ�� ��Ʈ�� ����� ���� ���̺� �ȵ�
1. ��Ʈ�� ����� ���� ���̺� ���� ���ڰ� ����
2. HDMI ���̺��� �־�� ��.
==============================================================================================================

- msvcr71.dll ���� ���� �ذ��� 
�ѱ�2007�̳� ���� ���α׷����� ����ϴ� ���ڱ� msvcr71.dll�̶�� ������ ���ٸ鼭 ������ �ȵǴ� ������
�߻��� ���� �ֽ��ϴ�. ���̷����� ���� �ջ��� �߻������� �̷� ������ �߻��ϴµ� �׷���� �����ϰ� 
�� �Ʒ� ���ϸ� �ٿ�޾� �ý��� ������ �־��ֱ⸸ �ϸ� ������ �ذ�Ǵ� ��찡 �����ϴ�. 
���� msvcr71.dll ������ �߻��Ѵٸ� �Ʒ� ������ �ٿ�޾� �ּ���.

������XP : C:\Windows\System32
������Vista : C:\Windows
������7 (32bit) : C:\Windows\System32
������7 (64bit) : C:\Windows\SysWOW64   ===> �ٿ� �ֱ��� �� @@@
==============================================================================================================

- ��Ʈ���� �߰� �η� ����
1. ������ ����(010-4244346, �м�, ����) ����, �ڱ��� ���(010-4244346, ���� ����) ����
==============================================================================================================

- ������ ���忡�� ����
1. USB ��ǳ�� ������
2. ��Ʈ�� Ŀ�� 1�� ��
==============================================================================================================
 
- ����� �ֽ��� ���(KT �ڵ������� ���ͳ� ����)
1. ������ ��Ʈ5���� ���� >  ����� �ֽ���> ��� ����
2. ��Ʈ�Ͽ��� ���� >  ������Ʈ��ũ ����
==============================================================================================================

- �����(/CS_CustInput.xml)  ==> ����, ����
1. ķ���α׷����(/CS_CmpgGrpMngm.xml) 
2. ��������(/CS_CS_CponMngm.xml) 
==============================================================================================================

������������������� 2016.05.31(ȭ) �۾� �������������������
---> 07:00 ~ 20:30 ==> �ڱ��� ����� �ο�

- �ٶ� �ڸ��� ������ ����ERP Prj[��]
- ��ȹ, ����, ����, ���¾�ü ��Ż ���� �۾�  
1. ��ȹ(�����ȹ��ȹ): 13��
2. ����: 15��  ===> 26��  
3. ������: ���� ��ȹ, ����, ����, ���¾�ü ��Ż ��ȹ��
==============================================================================================================
 
- ��ȹ ���� �۾�  ==> ���� ���� �Ǽ�: 5��
1. PN-001 ITEM��ȸ(/PN_ItemInqy.xml, R) ==> �Ϸ�(���� ����)
2. PN-002 ��������ȸ(/PN_SizeInqy.xml, R) ==>  �Ϸ�(���� ����)
3. PN-003 �����λ�������(/PN_DsgnSmplInfr.xml, CRUD)  ==> CRUD ���α׷�(����)
4. PN-005 �����λ��ó�ǰ��û(/PN_DsgnSmplDlvrAsk.xml, CR) ==> ���� ��
5. PN-006 �����λ����԰�Ȯ��(/PN_DsgnSmplInFix.xml, CRUD) ==> ���� ��

6. PN-007 �����λ�������(/PN_DsgnSmglSttl.xml, CRUD)  ==> ���� ��
7. PN-009 �����λ���������Ȳ(/PN_DsgnSmplPrgsStat.xml, C) ==>  �Ϸ�(���� ����)
8. PN-010 ��Ÿ������(/PN_StylInfr.xml, R)    ==> ���� ��
9. PN-016 QR Alert����(/PN_QrAlertStdInput.xml, CRUD) ==> ���� ��
10. PN-019 �ŷ�ó��Ͽ�û(/PN_CstrInputAsk.xml, CRUD)   ==> CRUD ���α׷�(����)

11. PN-021 �ŷ�ó��ȸ(/PN_CstrInqy.xml, R) ==> �Ϸ�(���� ����)
12. PN-050 �ŷ�ó��Ͻ���(/PN_CstrAprv.xml, CRU)   ==> CRUD ���α׷�(����)
13. PN-011 Ȯ���Һ��ڰ� ���(/PN_FnlCnsmPrceInput.xml, R) ==> �Ϸ�(���� ����)
14. PN-012 KAN�ڵ���(/PN_KanCdInput.xml, R):    ==> ���� ��
--------------------------------------------------------------------------------------------------------
 
- ���� ���� �۾� ==> ���� ���� �Ǽ�: 2��
1. PO-001 �����ڵ�(/PO_MtrlCd.xml, CRUD): ==> CRUD ���α׷�(����)
2. PO-002 ����â�����(/PO_MtrlWrhsMngm.xml, R):   ==> ���� ��
3. PO-003 BOM�����׼ҿ䷮(/PO_BomSpecAccper.xml, CRUD)  ==> CRUD ���α׷�(����)
4. PO-004 ����ҽ�������Ȳ(/PO_MtrlSrcngPrgsStat.xml, R):   ==> �Ϸ�(���� ����)
5. PO-005 ������ֵ��(/PO_MtrlOrdrInput.xml, CRUD):  ==> ���� ��

6. PO-006 ������ֹ̹�����Ȳ(/PO_MtrlNotOrdrStat.xml, CRUD): ==> ���� ��
7. PO-007 ���������Ȳ(/PO_MtrlSrcngPrgsStat.xml, C):  ==> ���� ��
8. PO-008 ������ּ������(/PO_MtrlOrdrUpdtCanc.xml, R):  ==> �Ϸ�(���� ����)
9. PO-009 ������ּ��������Ȳ(/PO_MtrlOrdrUpdtCancStat.xml, R) ==> ���� ��
10. PO-010 ���¾�ü�����԰���Ȯ��(/PO_VndrMtrlWinscFix.xml, R) ==> ���� ��

11. PO-011 �����԰�ݼۿ�û(/PO_MtrlInInrtnAsk.xml, CRUD) ==> ���� ��
12. PO-012 �Ⱓ�������԰���Ȳ(/PO_TermLyMtrlInStat.xml, R) ==> ���� ��
13. PO-013 �����԰�Ϸ���(/PO_MtrlInCmplInput.xml, CRUD) ==> ���� ��
14. PO-014 �����԰�����(/PO_MtrlInSttl.xml, CRUD) ==> ���� ��
15. PO-015 �����԰��������(/PO_MtrlInSttlCanc.xml, CRUD) ==> ���� ��
==============================================================================================================

- �м� ���� ���� @@@
FILA Korea ȸ�Ƿ�
FILA Korea �䱸���� ���Ǽ�
FILA Korea To-Be ���μ��� ����Ʈ
FILA Korea To-Be ���μ��� ���Ǽ�
FILA Korea ȭ��_���� ���Ǽ�
==============================================================================================================

- �佺(�۱�) ��й�ȣ
1. �佺 ��й�ȣ: 03**A --> ��Ʈ: 339
==============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������