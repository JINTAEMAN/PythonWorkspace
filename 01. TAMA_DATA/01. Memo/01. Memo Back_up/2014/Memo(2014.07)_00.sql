

�����������������������������������������������������������
+---------------------------------------------// Memo(2014.07) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2014.07.01(ȭ) �۾� ����������������
---> 07:50 ~ 21:00 --> �߱�(����)

- SMART TV App Mgt Prj
1. App Info ��ȭ�� ��� �۾�
http://localhost:8080/Sapphire/app/registration/detail/view/1404070000001/14001/10TV
@RequestMapping(value = "/{siteId}/app/registration/detail/view/{appId}/{appVerSeqNo}/{mdlGrpId}", method = RequestMethod.GET)
==> /front/application/appmgmt/appmgmt_detail
-------------------------------------------------------------------------------------------------------

http://localhost:8080/Sapphire/app/registration/list
@RequestMapping(value = "/{siteId}/app/registration/list", method = RequestMethod.GET)
==> /front/application/appmgmt/appmgmt_list  
==============================================================================================================

- Ap Info lIST  ���� ��ȸ @@@@@@@@@@@@@ ==> /front-app-query.xml/selectAppMgmtList()
logger.debug("[/AppManagementController.java][appDetailInfo()] ==> [test]"); 
selectAppMgmtList
==============================================================================================================
 
http://localhost:8080/Sapphire/app/registration/detail/view/1404070000001/14001/10TV
- ����(NO ����Ÿ)
http://localhost:8080/Sapphire/app/registration/detail/view/1405010000005/2/all

- ����(����Ÿ ����)
http://localhost:8080/Sapphire/app/registration/detail/view/A201406000928/1/all
[DEBUG] 2014-07-01 15:19:43.330 com.samsung.sapphire.ui.front.application.appmgmt.controller.AppManagementController - 
[/AppManagementController.java][mdlGrpList()] ==>
[mlGrpAppInfoList][{OPEN_CLOSE=Open 0Critical 0, APP_MDL_STAT_NM=Request Test, APP_VER_SEQ_NO=1, 
UPDATE_DATE=2014-06-26, APP_VER_INFO=1.234, APP_MDL_STAT_CD=AP.CS.VF.2010, APP_TTL=appId2014, 
SALES_APP_VER= , MDL_GRP_NM=14TV, APP_OPEN_TTL=TV�� ����� �� ������ �� �°� �Է��ϼ���, 
MDL_GRP_ID=006, APP_ID=A201406000928}]

- ����(����Ÿ ����)  ==> �ذ�
http://localhost:8080/Sapphire/app/registration/detail/view/1404070000001/14002/all 
- [/AppManagementController.java][mdlGrpList()] ==> [mlGrpAppInfoList][{OPEN_CLOSE=Open 0Critical 0, 
APP_VER_SEQ_NO=14002, UPDATE_DATE=2014-06-30, APP_VER_INFO=2.010, APP_MDL_STAT_CD=AP.CS.VF, 
PP_TTL=app_ttl_test_1, SALES_APP_VER= , MDL_GRP_NM=10TV, APP_OPEN_TTL=app_open_ttl, MDL_GRP_ID=10TV, 
APP_ID=1404070000001}] ==> APP_MDL_STAT_CD=AP.CS.VF �ʵ忡 ����Ÿ�� ���� ������ ��
==============================================================================================================

- appmgmt.js ���Ͽ���
AppManager.prototype.appFileDownLoad1 = appFileDownLoad1;
AppManager.prototype.appFileDownLoad2 = appFileDownLoad2;
AppManager.prototype.appFileDownLoad3 = appFileDownLoad3;
-----------------------------------------------------------------------------------------------------

AppManager.prototype.setAppImgUrl = setAppImgUrl;
AppManager.prototype.appImgUrl = appImgUrl; 
==============================================================================================================

������������������� 2014.07.02(��) �۾� ����������������
---> 07:50 ~ 18:00 -->  

- SMART TV App Mgt Prj1. App Info ��ȭ�� ��� �۾�
http://localhost:8080/Sapphire/app/registration/detail/view/1404070000001/14001/10TV
==============================================================================================================

- DB ���̺� ����
1. DBA���� ���̺��, �ʵ� �Ϻ� ���� ó��
==============================================================================================================

- �Ŀ�����Ʈ ��ũ
==============================================================================================================

������������������� 2014.07.03(��) �۾� ����������������
---> 07:50 ~ 18:00 --> 

- SMART TV App Mgt Prj1. App Info ��ȭ�� ��� �۾�
http://localhost:8080/Sapphire/app/registration/detail/view/1404070000001/14001/10TV
==============================================================================================================

- DB ���̺� ����
1. DBA���� ���̺��, �ʵ� �Ϻ� ���� ó��
==============================================================================================================

- eclipse ���� ����
7�� 03, 2014 12:57:05 ���� org.apache.catalina.core.ApplicationContext log
�ɰ�: StandardWrapper.Throwable
org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named 'cxf' is defined
---------------------------------------------------------------------------------------------------------

1. ����: mySingleApprovalTask ���� �߰� /Calendar-Event-query.xml ���Ͽ��� ==> EventVo ���� �ν� ����
 2. ��ġ: /com.samsung.sapphire ���� �� �ٽ� �ް� /com.samsung.element ���� �ϳ��� Clean Up((Run as > Ant Build)
==============================================================================================================

- eclipse ���� �����ɰ�: Exception sending context initialized event to listener instance of class org.springframework.
web.context.ContextLoaderListenerorg.springframework.beans.factory.BeanCreationException: Error creating bean with name 
'mySingleApprovalTask':Injection of autowired dependencies failed; nested exception is org.springframework.beans.factory.
BeanCreationException: Could not autowire field: private com.samsung.element.manager.system.service.ApprovalService 
com.samsung.element.engines.mysingle.task.MySingleApprovalTask.approvalService; nested exception is 
org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'ElementApprovalServiceImpl': 
Injection of autowired dependencies failed; nested exception is org.springframework.beans.factory.BeanCreationException:
Could not autowire field: private com.samsung.element.engines.file.service.AttachFileService 
com.samsung.element.manager.system.service.impl.ApprovalServiceImpl.fileService; nested 
exception is org.springframework.beans.factory.BeanCreationException: Error creating bean with nam
e 'ElementAttachFileServiceImpl': Injection of autowired dependencies failed; nested exception is
org.springframework.beans.factory.BeanCreationException: Could not autowire field: private com.
samsung.element.engines.file.dao.AttachFileDao com.samsung.element.engines.file.service.impl.AttachFileServiceImpl.
attachFileDao;nested exception is org.springframework.beans.factory.BeanCreationException: Error creating bean 
with name'ElementAttachFileDao': Injection of autowired dependencies failed; nested exception is 
org.springframework.beans.factory.BeanCreationException: Could not autowire method: public final void 
org.mybatis.spring.support.SqlSessionDaoSupport.setSqlSessionFactory(org.apache.ibatis.session
.SqlSessionFactory);nested exception is org.springframework.beans.factory.BeanCreationException: 
Error creating bean with name 'sqlSessionFactory' defined in file [D:\sapphire\webapp\WEB-INF\classes\spring\context-common.xml]: 
Invocation of init method failed; nested exception is org.springframework.core.NestedIOException: Failed to parse mapping resource:
'file [D:\sapphire\webapp\WEB-INF\classes\query\element\calendar-Admin-query.xml]'; 
nested exception is java.lang.RuntimeException: Error parsing Mapper XML.  Cause: java.lang.IllegalArgumentException: 
Mapped Statements collection already contains value for Calendar.Admin.getLanguageList
---------------------------------------------------------------------------------------------------------

1. ����: mySingleApprovalTask ���� �߰� /Calendar-Event-query.xml ���Ͽ��� ==> EventVo ���� �ν� ���� 
2. ��ġ: /com.samsung.sapphire ���� �� �ٽ� �ް� /com.samsung.element ���� �ϳ��� Clean Up((Run as > Ant Build)
==============================================================================================================

- clipse ���� ����
�ɰ�: Exception sending context initialized event to listener instance of class org.springframework.web.context.ContextLoaderListener
org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'mySingleApprovalTask': Injection of 
autowired dependencies failed; nested exception is org.springframework.beans.factory.BeanCreationException: 
Could not autowire field: private com.samsung.element.manager.system.service.ApprovalService c
om.samsung.element.engines.mysingle.task.MySingleApprovalTask.approvalService; 
nested exception is org.springframework.beans.factory.BeanCreationException: Error creating bean with name 
'ElementApprovalServiceImpl': Injection of autowired dependencies failed; nested exception i
s org.springframework.beans.factory.BeanCreationException: Could not autowire field: 
private com.samsung.element.engines.file.service.AttachFileService com.samsung.element.manager.system.service.impl.ApprovalServiceImpl.fileService; 
nested exception is org.springframework.beans.factory.BeanCreationException: Error creating bean with name
'ElementAttachFileServiceImpl': Injection of autowired dependencies failed; nested exception is 
org.springframework.beans.factory.BeanCreationException: Could not autowire field: 
private com.samsung.element.engines.file.dao.AttachFileDao com.samsung.element.engines.file.service.impl.AttachFileServiceImpl.attachFileDao; 
nested exception is org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'ElementAttachFileDao': Injection of autowired dependencies failed; 
nested exception is org.springframework.beans.factory.BeanCreationException: Could not autowire method:
public final void org.mybatis.spring.support.SqlSessionDaoSupport.setSqlSessionFactory(org.apache.ibatis.session.SqlSessionFactory); 
nested exception is org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'sqlSessionFactory' 
defined in file [D:\sapphire\webapp\WEB-INF\classes\spring\context-common.xml]: Invocation of init method failed; 
nested exception is org.springframework.core.NestedIOException: Failed to parse mapping resource: 
'file [D:\sapphire\webapp\WEB-INF\classes\query\sapphire\front-app-query.xml]'; nested exception is org.apache.ibatis.builder.BuilderException: 
Error creating document instance.  Cause: org.xml.sax.SAXParseException; lineNumber: 4356; columnNumber: 4; 
The element type "mapper" must be terminated by the matching end-tag "</mapper>".
at org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor.postProcessPropertyValues(AutowiredAnnotationBeanPostProcessor.java:289)
---------------------------------------------------------------------------------------------------------

1. ����: mySingleApprovalTask ���� �߰� /Calendar-Event-query.xml ���Ͽ��� ==> EventVo ���� �ν� ����
 2. ��ġ: D:\sapphire\webapp ���� ���� �� �ٽ� �ް� Clean Up((Run as > Ant Build)
==============================================================================================================

������������������� 2014.07.04(��) �۾� ���������������� 
---> 07:50 ~ 18:00 --> 
 
 - SMART TV App Mgt Prj1. App Info ��ȭ�� ��� �۾�
 http://localhost:8080/Sapphire/app/registration/detail/view/1404070000001/14001/10TV 
 1) modal �۾� /appmgmt_detail_modify.jsp 
 // 01. button Modify App Info(Link)@RequestMapping(value = "/{siteId}/app/registration/detail/edit/{appId}/
 {appVerSeqNo}", method = RequestMethod.GET)http://localhost:8080/Sapphire/app/registration/detail/edit
 /1404070000001/14001/modal_quick_release.jsp 
 // 02. button Quick Release  ==> �Ϸ�/modal_quick_release.jsp
 // 03. button Version Up(Link)2) modal �۾� /modal_request_drop.jsp
 // 51. Drop ==>  test ===>/modal_request_add_model_group.jsp
 // 52. Request Add Model Group  /modal_request_launch.jsp
 // 53. Request Launch 3) Tab �۾�01. Tab(App Information) 
 ==> /appmgmt_detail_appinfo.jsp(/appmgmt_detail_modify.jsp)0
 2. Tab(Defect) ==> /appmgmt_detail_defect.jsp03. Tab(History) ==>
 /appmgmt_detail_history.jsp 
 
 SMART TV App Mgt Prj ����: http://localhost:8080/Sapphire/portal/main
==============================================================================================================

������������������� 2014.07.05(��) �۾� ���������������� 
---> 06:30 ~ 18:00 -->

-�ָ�
09:00 ���
09:30 ����(�Ļ�)
10:00 ����(����): �翺 �񰨱�
10:20 �������б�(506��)
10:40 ���Ǵ��Ա���
11:20 �е���
11:30 ���̸� �����ǿ�
11:40 ���� ����(������ �����): 21�� 5õ��
12:00 ����
12:20 ���＼�� ��Ÿ�(6411��)
13:30 �Ͱ�
13:50 �߽�
14:00 ����
17:00 ���
17:30 �̸�Ʈ ����(���� �佺Ʈ�� ����) ==> �Ŷ�� 5��(5���� �̻� 3�� �湮 �̺�Ʈ)
20:00 ����
21:00 �Ͱ�
23:00 ��ħ
==============================================================================================================

������������������� 2014.07.06(��) �۾� ����������������  
---> 06:30 ~ 18:00 --> ���� �����ؼ� �౸ �� ��

- �ָ�2
09:00 ���
09:30 ����(�Ļ�)
10:00 ��û��
12:00 �߽�(�����)
12:50 ����(����, ���̽�ũ��)
13:10 ��� �湮(��, å ���� ����), ���� �ƹ��� ���� ����ġ ���Ǳ�(5����) ����
14:20 ����
17:00 ����
18:30 ����(�Ұ�����, ��������): �� 4õ��
19:00 �Ͱ�
23:00 ��ħ
==============================================================================================================

������������������� 2014.07.07(��) �۾� ����������������\
---> 07:50 ~ 19:30 --> ������Ʈ �ٰ�ȸ(�Ĵ�)

- SMART TV App Mgt Prj
1. App Info ��ȭ�� ��� �۾�http://localhost:8080/Sapphire/app/registration/detail/view/1404070000001/14001/10TV  
1) modal �۾� /appmgmt_detail_modify.jsp // 01. button Modify App Info(Link)@RequestMapping(value = "/{siteId}
/app/registration/detail/edit/{appId}/{appVerSeqNo}", method = RequestMethod.GET)http://localhost:8080/Sapphire/app/registration/detail/edit/1404070000001/14001http://localhost:8080/Sapphire/app/registration/detail/edit/A201407001207/1/modal_quick_release.jsp // 02. button Quick Release  ==> �Ϸ�Request Launch ����(AP.CS.FR.3070 -> AP.CS.FR.3010�� �����)/modal_quick_release.jsp // 03. button Version Up(Link)2) modal �۾� /modal_request_drop.jsp// 51. Drop ==>  test ===>/modal_request_add_model_group.jsp// 52. Request Add Model Group  /modal_request_launch.jsp// 53. Request Launch    ===>==> Waiting Launch �� �͸� ó�� 3) Tab �۾�01. Tab(App Information) ==> /appmgmt_detail_appinfo.jsp(/appmgmt_detail_modify.jsp)02. Tab(Defect) ==> /appmgmt_detail_defect.jsp03. Tab(History) ==> /appmgmt_detail_history.jsp SMART TV App Mgt Prj ����: http://localhost:8080/Sapphire/portal/main========================================================================================================= =========================================================================================================- ���� ���1. ������(�ٿ뵵 �� Ȳ�� �¿�������): http://itempage3.auction.co.kr/DetailView.aspx?itemno=A524269299&frm3=V22. ������3. ����û����(������)========================================================================================================= =========================================================================================================������������������� 2014.07.01(��) �۾� ���������������� +---------------------------------// 2014.07.08(ȭ) �۾� //---------------------------------------+ ������������������� 2014.07.01(��) �۾� ���������������� ---> 07:50 ~ 19:30 --> �� �°� �����- SMART TV App Mgt Prj 2) modal �۾� /modal_request_drop.jsp// 51. Drop ==>  test ===>/modal_request_add_model_group.jsp// 52. Request Add Model Group  /modal_request_launch.jsp// 53. Request Launch    ===>==> Waiting Launch �� �͸� ó�� ==> Waiting Launch(AP.CS.RL.5010 ~ AP.CS.RL.5050)/modal_request_drop.jsp// 51. Drop ==>  test ===>========================================================================================================= =========================================================================================================������������������� 2014.07.01(��) �۾� ���������������� +---------------------------------// 2014.07.09(��) �۾� //---------------------------------------+ ������������������� 2014.07.01(��) �۾� ���������������� ---> 07:50 ~ 18:10 --> ���� ���� �ش� ǰ(������)- SMART TV App Mgt Prj 2) modal �۾� /modal_request_drop.jsp// 51. Drop ==>  test ===>/modal_request_add_model_group.jsp// 52. Request Add Model Group  ==> /appmgmt_step2.jsp   -> S_AP_MDL_GRP: 20_�𵨱׷� TB/modal_request_launch.jsp// 53. Request Launch    ===>==> Waiting Launch �� �͸� ó�� ==> Waiting Launch(AP.CS.RL.5010 ~ AP.CS.RL.5050) /modal_request_drop.jsp// 51. Drop ==>  test ===>========================================================================================================= =========================================================================================================- Hostway�� ��ġ�� �����̾� ����DB ��ȭ�� �����۾��� �Ϸ�  tnsname.ora SAPPAD =    (DESCRIPTION =       (ADDRESS =          (PROTOCOL = TCP)         (HOST = 207.**.**.**)         (PORT = 1521)      )      (CONNECT_DATA =          (SERVICE_NAME = **)      )   ) ========================================================================================================= ========================================================================================================= # DIAMOND DB(DB ����)  ==> /config.properties ���Ͽ���webapp.driverClassName=net.sf.log4jdbc.DriverSpywebapp.url=jdbc:log4jdbc:oracle:thin:@203.***:1666:DIAMONDwebapp.username=SPPHR_Wwebapp.password=spphrwas4!========================================================================================================= =========================================================================================================������������������� 2014.07.01(��) �۾� ���������������� +---------------------------------// 2014.07.10(��) �۾� //---------------------------------------+ ������������������� 2014.07.01(��) �۾� ���������������� ---> 07:50 ~ 19:40 --> - SMART TV App Mgt Prj 2) modal �۾� /modal_request_drop.jsp// 51. Drop ==>  test ===>/modal_request_add_model_group.jsp// 52. Request Add Model Group  ==> /appmgmt_step2.jsp   -> S_AP_MDL_GRP: 20_�𵨱׷� TB/modal_request_launch.jsp// 53. Request Launch    ===>==> Waiting Launch �� �͸� ó�� ==> Waiting Launch(AP.CS.RL.5010 ~ AP.CS.RL.5050)  ========================================================================================================= =========================================================================================================- Doc Base Ȯ��1. D:\sapphire\webapp --> D:\_sapphire\webapp ���� ��û => D:\sapphire\webapp�� ����D:\sapphire\webapp\WEB-INF\classes\query\sapphire defectLibraryMgmt-query.xml, release-query.xml, testRefMgmt-query.xml --> 3�� ���� ����========================================================================================================= =========================================================================================================-  ���� �ڷᤷ Seller Office �ҽ� ��� :[File ����]\document\04. �����ڷ� (Reference)\99.ASIS_���⹰\SellerOffice\�ҽ��ڵ�\AStore-Seller-2014.07.03-KCY.zip�� Seller Office ���� URL : http://seller.samsungapps.com/  ID/PWD = *@gmail.com / **�� ȭ�� : \WebContent\WEB-INF\jsp\TVStore\account\calculate�� Action : osp.tvstore.accounting.calculate.action�� service : osp.tvstore.accounting.calculate.service ========================================================================================================= =========================================================================================================������������������� 2014.07.01(��) �۾� ���������������� +---------------------------------// 2014.07.11(��) �۾� //---------------------------------------+ ������������������� 2014.07.01(��) �۾� ���������������� ---> 07:50 ~ 19:50 --> ����(������ �Ļ� 3�� ������ ��)- SMART TV App Mgt Prj 2) modal �۾� /modal_request_drop.jsp// 51. Request Drop ==>  test ===>/modal_request_add_model_group.jsp// 52. Request Add Model Group==> /appmgmt_step2.jsp   -> S_AP_MDL_GRP: 20_�𵨱׷� TB/modal_request_launch.jsp// 53. Request Launch    ===>==> Waiting Launch �� �͸� ó�� ==> Waiting Launch(AP.CS.RL.5010 ~ AP.CS.RL.5050)  ========================================================================================================= =========================================================================================================- Model Group Status �ڵ�1. Pre Test --> 2. Doc Review --> 3. Verification--> 4. Defect Review --> 5. Contents Review -->  6. SP Review========================================================================================================= =========================================================================================================S_CF_APP_VER_TEST E,               -- 30_�۹����׽�Ʈ TBS_CF_APP_VER_TEST_DFCT F       -- 30_�۹����׽�Ʈ���� TB S_CF_DFCT_LIB  --  30_���Զ��̺귯�� TB ========================================================================================================= =========================================================================================================insertRequestDropDiscntnuinsertRequestDropDiscntnuMdlGrpRelDISCNTNU_IDS_AP_DISCNTNU_MDL_GRP_REL   -- 20_�ߴܾ۹����𵨱׷����========================================================================================================= =========================================================================================================������������������� 2014.07.01(��) �۾� ���������������� +---------------------------------// 2014.07.12(��) �۾� //---------------------------------------+ ������������������� 2014.07.01(��) �۾� ���������������� ---> 06:30 ~ 18:00 -->- �ָ�08:00 ���08:30 ����(�Ļ�)09:00 �������б�(506��)09:10 ���Ǵ��Ա��� 09:25 �е���09:30 ���̸� �����ǿ�09:40 ���� ���� �ǹ� ǰ(������ �����): 2�� �ɸ�09:45 ����09:50 ���＼�� ��Ÿ�(6411��)10:30 �Ͱ�11:50 �����12:30 ���ε����п�13:00 ��ǰ�丮�п�(�ٹ�ȭ �丮 ���� ����: ¥��� �����)14:00 �翺 ¥��� ���� ���� ����14:30 ����15:00 �̸�Ʈ ����(��, ���� ��)17:00 ����18:00 �Ͱ�20:00 �Ϻ��� ����� ����23:00 ��ħ========================================================================================================= =========================================================================================================������������������� 2014.07.01(��) �۾� ���������������� +---------------------------------// 2014.07.13(��) �۾� //---------------------------------------+ ������������������� 2014.07.01(��) �۾� ���������������� ---> 06:30 ~ 18:00 --> ���� ���� ������ ����� �� �ܢ������౸05:00 ���05:10 ����� ������ 3,4����(�״����� 3:0 �����)06:30 �������� ��õ������ ��(�������� ��) 07:00 �ű��ʵ��б� 07:30 ������(1:0 ��)08:00 ����(6:4 ��) ==> 40��, 50�� ���ڳ��� ���ӿ��� ��10:30 ������(1:0 ��)10:45 ����11:30 �߽�(������: �������): ���� ��12:20 ����13:20 �Ͱ�15:00 ����16:00 ���18:00 ����(���뱹��)19:30 ����(��� �ƿ﷿: �翺 ����(29,000��)20:00 �Ͱ�23:00 ��ħ========================================================================================================= =========================================================================================================������������������� 2014.07.01(��) �۾� ���������������� +---------------------------------// 2014.07.14(��) �۾� //---------------------------------------+ ������������������� 2014.07.01(��) �۾� ���������������� ---> 07:50 ~ 19:50 -->  ����� ������ �����(���� 1:0 �Ƹ���Ƽ��[������]), ����(������ �Ļ� 4�� ������ ��)- SMART TV App Mgt Prj 2) modal �۾� /modal_request_drop.jsp// 51. Request Drop ==> �Ϸ�insertRequestDropDiscntnuinsertRequestDropDiscntnuMdlGrpRe ==> S_AP_DISCNTNU_MDL_GRP_REL( 20_�ߴܾ۹����𵨱׷���� TB)  ========================================================================================================= =========================================================================================================������������������� 2014.07.01(��) �۾� ���������������� +---------------------------------// 2014.07.15(ȭ) �۾� //---------------------------------------+ ������������������� 2014.07.01(��) �۾� ���������������� ---> 07:20 ~ 19:50 --> ������Ʈ ���[(��)�Ƹ��� ������ ����, 530, 9������]- SMART TV App Mgt Prj 2) modal �۾�/modal_request_add_model_group.jsp// 52. Request Add Model Group==> /appmgmt_step2.jsp   -> S_AP_MDL_GRP: 20_�𵨱׷� TBhttp://localhost:8080/Sapphire/app/registration/verUp/edit/A201407000001/1 ========================================================================================================= =========================================================================================================- CLOB ����1. ���� ����: ->java.util.HashMap["TV_DESC_CTNT"]->oracle.sql.CLOB["characterStream"])2. ����
/* [by tamario2.jin(2014.07.14)] ==> [�۹������� �����ȸ] - [/front-app-query.xml > selectListAppVerSvcLang()]  */  
SELECT A.APP_ID,
<!-- <br>A.TV_DESC_CTNT,<br>A.WEB_DESC_CTNT,<br>--> 
DBMS_LOB.SUBSTR(A.TV_DESC_CTNT, DBMS_LOB.GETLENGTH(A.TV_DESC_CTNT),1) TV_DESC_CTNT,
DBMS_LOB.SUBSTR(A.WEB_DESC_CTNT, DBMS_LOB.GETLENGTH(A.WEB_DESC_CTNT),1) WEB_DESC_CTNT,
 FROM  S_AP_SVC_LANG A
--;
==============================================================================================================

- �� ���
1. /AppManagementController.java ���Ͽ���
@RequestMapping(value = "/{siteId}/app/registration/new", method = RequestMethod.POST)
public ModelAndView appRegi(@PathVariable("siteId") String siteId, @RequestParam HashMap appInfo, 
@AuthenticationPrincipal Member member) throws Exception {
int nAppSeqMaxNo = appService.createAppRegi(appInfo);   // �� ���
}

2. /AppServiceImpl.java ���Ͽ���
@Transactional(rollbackFor={Exception.class})
public int createAppRegi(HashMap<String>, String> paramMap) throws Exception{

if ( "T".equals(sTblInclude) ) {
updateAppVerMdlGrpRel(hTempMap);//���� ����Ǿ��� ��뿩�θ� Nó���� �� ������Ʈ�� �ؾ� �������� �� �͵� �� 
���ܵȰ͵��� �����Եȴ�.

for(int i = 0; i < saMdlGrpId.length; i++) { 
hFixMap.put("mdlGrpId", saMdlGrpId[i]);
hFixMap.put("appTrTypCd", saAppTrTypCd[i]);
hFixMap.put("certStepCd", saCertStepCd[i]);
hFixMap.put("dfctRvwStatCd", saDfctRvwStatCd[i]); 
mergeAppVerMdlGrpRel(hFixMap);  // MERGE
}
}
==============================================================================================================
 
������������������� 2014.07.01(��) �۾� ���������������� 
+---------------------------------// 2014.07.16(��) �۾� //---------------------------------------+ 
������������������� 2014.07.01(��) �۾� ���������������� 
---> 07:50 ~ 19:50 --> 

- SMART TV App Mgt Prj 
2) modal �۾�
/modal_request_add_model_group.jsp// 52. Request Add Model Group
==> /appmgmt_step2.jsp   -> S_AP_MDL_GRP: 20_�𵨱׷� TB
http://localhost:8080/Sapphire/app/registration/verUp/edit/A201407000001/1 
==============================================================================================================
- ���� �� ���� ����(FNL_APP_VER_SEQ_NO)  ����
SELECT A.APP_ID appId,
        A.FNL_APP_VER_SEQ_NO "���� �� ���� ����",
 FROM S_AP_APP A 
;
1. App ��Ͻ� �� ���� ����(FNL_APP_VER_SEQ_NO) INSERT ==> 1.0000 , 1
2. Version Up�ÿ� ���� �� ���� ����(FNL_APP_VER_SEQ_NO) ������Ʈ 
==============================================================================================================
 
������������������� 2014.07.01(��) �۾� ���������������� 
+---------------------------------// 2014.07.17(��) �۾� //---------------------------------------+ 
������������������� 2014.07.01(��) �۾� ���������������� 
---> 07:20 ~ 21:50 --> TeamB ȸ��(22�ϱ��� ���� �Ϸ�, ��� �ٹ�, �Ĵ�:��å���� Ŀ�� ����)

- SMART TV App Mgt Prj03. Tab(History) ==> /appmgmt_detail_history.jsp
http://localhost:8080/Sapphire/app/registration/verUp/edit/A201407000001/1 
==============================================================================================================
- eclipse tomcat ���� ���� ����
1. ����:
�ɰ�: Exception sending context initialized event to listener instance of class org.springframework.web.context.ContextLoaderListener
org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'org.springframework.web.servlet.mvc
.method.annotation.RequestMappingHandlerMapping#0': Invocation of init method failed; nested exception is java.lang.IllegalStateException: 
Ambiguous mapping found. Cannot map 'SapphireAppAssignModalController' bean method 
public org.springframework.web.servlet.ModelAndView com.samsung.sapphire.ui.backoffice.normalapp.assign.controller.
AppAssignModalController.appAssign(java.lang.String,java.util.Map<java.lang.String>, java.lang.String>,org.springframework.ui.Model) 
throws java.lang.Exception
2. ��ġ: appAssign() �ּ� ó��
==============================================================================================================
 
D:\sapphire\workspace\com.samsung.sapphire\src\main\webapp\resources\img\samsung-bi
D:\sapphire\workspace\com.samsung.sapphire\src\main\webapp\resources\img\samsung-default
/img/samsung-default/glyphicons-halflings.png')
==============================================================================================================
http://localhost:8080/Sapphire/app/registration/detail/view/1404070000001/14001/10TV
http://localhost:8080/Sapphire/app/registration/detail/view2/1404070000001/14001/ALL
http://localhost:8080/Sapphire/app/registration/detail/view/A201407001301/1/all#
==============================================================================================================

������������������� 2014.07.01(��) �۾� ���������������� 
+---------------------------------// 2014.07.18(��) �۾� //---------------------------------------+ 
������������������� 2014.07.01(��) �۾� ���������������� 
---> 07:20 ~ 21:50 --> 

- SMART TV App Mgt Prj03. Tab(History) ==> /appmgmt_detail_history.jsp
http://localhost:8080/Sapphire/app/registration/verUp/edit/A201407000001/1 
==============================================================================================================

������������������� 2014.07.01(��) �۾� ���������������� 
+---------------------------------// 2014.07.19(��) �۾� //---------------------------------------+ 
������������������� 2014.07.01(��) �۾� ���������������� 
---> 08:40 ~ 18:00 --> �ָ� �ٹ�(�� å���� SDS ��å������ �ſ�ī�� �޾Ƽ� ���� ����)

- SMART TV App Mgt Prj
/modal_request_add_model_group.jsp// 52. Request Add Model Group ==> �Ϸ�
==============================================================================================================
03. Tab(History) ==> /appmgmt_detail_history.jsp
1. ÷�� ���� Ȯ��
TN_CF_FILE: ÷������ ���� : ÷������ TB
S_AP_APP_VER_ATTCH_FILE: 20_�۹���÷������ TB
==============================================================================================================
  
������������������� 2014.07.01(��) �۾� ���������������� 
+---------------------------------// 2014.07.20(��) �۾� //---------------------------------------+ 
������������������� 2014.07.01(��) �۾� ���������������� 
---> 06:30 ~ 18:00 --> 

�������౸
06:15 ���
06:30 �������� ��õ������ ��(�������� ��) 
07:00 �ű��ʵ��б� 
07:30 ������(1:0 ��)
08:00 ����(6:4 ��) 
10:00 ����ȸ��(������� ����̿��� ���� �Ļ� �����ߴٰ� ȭ��)
10:20 ���� ==> �翺�� ���� ���� �����ٰ� ��ȭ��(5�� �������� ��� �ҷ��� �ذ�����)
11:00 �߽�(������: �Ĵ�): ȿ�������� ��
12:20 ����
13:00 �Ͱ�(�翺 �ŵ����� �Ƿη� 3D ���� ��)
13:00 ����
16:00 ���
18:00 ����(����, �ø�, ��ȱ�, ���): ������
20:00 �Ͱ�
23:00 ��ħ
==============================================================================================================

������������������� 2014.07.01(��) �۾� ���������������� 
+---------------------------------// 2014.07.21(��) �۾� //---------------------------------------+ 
������������������� 2014.07.01(��) �۾� ���������������� 
---> 07:20 ~ 20:50 --> ���� �Ϸ� ���(�ҽ� ������ �ø���)

- SMART TV App Mgt Prj
1. ÷�� ���� Ȯ��
TN_CF_FILE: ÷������ ���� : ÷������ TB
S_AP_APP_VER_ATTCH_FILE: 20_�۹���÷������ TB
==============================================================================================================

������������������� 2014.07.01(��) �۾� ���������������� 
+---------------------------------// 2014.07.22(ȭ) �۾� //---------------------------------------+ 
������������������� 2014.07.01(��) �۾� ���������������� 
---> 07:20 ~ 19:50 --> ���� �Ϸ�(�� �ÿ�)

- SMART TV App Mgt Prj
03. Tab(History) ==> /appmgmt_detail_history.jsp
http://localhost:8080/Sapphire/app/registration/detail/view/A201407002181/1/all/all
==============================================================================================================
- UploadController_���� �ٿ�ε� ��� ����(/UploadController.java ���Ͽ���)
@RequestMapping(value = "/{siteId}/download/{fileKey}", method = RequestMethod.GET)
public void download(HttpServletRequest request, HttpServletResponse response, @PathVariable("fileKey") String fileKey, 
@PathVariable("siteId") String siteId, @RequestParam(value = "thumb", required = false) boolean thumb, 
@AuthenticationPrincipal Member member) throws Exception {
 
try {
//attachFileService.createFileDownLog(UUID.randomUUID().toString(), fileId, fileSeq, 
member.getUser(siteId).getUserId()); 
fis = new FileInputStream(file);
FileCopyUtils.copy(fis, out); 
} 
}
==============================================================================================================
 
- ũ��(Crome) �����
http://opentutorials.org/course/580/4152
http://cafe.naver.com/webmarkup/2009

var console = window.console  {log:function(){}};    // javascript���� ��� @@@
console.log("[/appmgmt_detail_history.jsp] [gridVersionHistoryList()] ==> [aData.APP_VER_NM]"+  aData.APP_VER_NM
+"[aData.APP_VER_SEQ_NO]"+  versionNm01 );
==============================================================================================================

������������������� 2014.07.01(��) �۾� ���������������� 
+---------------------------------// 2014.07.23(��) �۾� //---------------------------------------+ 
������������������� 2014.07.01(��) �۾� ���������������� 
---> 07:20 ~ 19:50 --> �帶(��ٱ� �� ���� ��)

- SMART TV App Mgt Prj
03. Tab(History) ==> /appmgmt_detail_history.jsp
http://localhost:8080/Sapphire/app/registration/detail/view/A201407001301/1/all/all
http://localhost:8080/Sapphire/app/registration/detail/view/A201407002181/1/all/all
http://localhost:8080/Sapphire/app/registration/detail/view/A201407000022/1/all/all
==============================================================================================================

������������������� 2014.07.01(��) �۾� ���������������� 
+---------------------------------// 2014.07.24(��) �۾� //---------------------------------------+ 
������������������� 2014.07.01(��) �۾� ���������������� 
---> 07:20 ~ 19:50 --> 

- SMART TV App Mgt Prj
03. Tab(History) ==> /appmgmt_detail_history.jsp
1) 02. App Info Change History  ==> DB ����Ÿ INSERT(S_AP_APP_CHNG, S_AP_APP_CHNG_DTL_LST)
http://localhost:8080/Sapphire/app/registration/detail/view/A201407001301/1/all/all
http://localhost:8080/Sapphire/app/registration/detail/view/A201407002181/1/all/all
http://localhost:8080/Sapphire/app/registration/detail/view/A201407000022/1/all/all
==============================================================================================================

������������������� 2014.07.01(��) �۾� ���������������� 
+---------------------------------// 2014.07.25(��) �۾� //---------------------------------------+ 
������������������� 2014.07.01(��) �۾� ���������������� 
---> 07:30 ~ 19:50 --> 

- SMART TV App Mgt Prj
03. Tab(History) ==> /appmgmt_detail_history.jsp
/modal_app_version_info.jsp
==============================================================================================================

������������������� 2014.07.01(��) �۾� ���������������� 
+---------------------------------// 2014.07.26(��) �۾� //---------------------------------------+ 
������������������� 2014.07.01(��) �۾� ���������������� 
---> 08:40 ~ 18:00 --> �ָ�(�ݻ꿡�� ���� �湮)

- SMART TV App Mgt Prj
08:15 ��� 
09:00 ����(�Ļ�)
10:00 �����
10:30 ����͹̳ο�
10:35 ����(����͹̳ο� ��): �翺 Ƽ(����) ����
12:20 ���� ����(ȫ�� 2�ڽ� �θ�� ������ ���)
13:20 �߽�(���� 2, ���, �����): ������ ��
13:50 �Ͱ�
14:00 ����
18:00 ���
19:00 ����
20:00 �Ͱ�
23:00 ��ħ
==============================================================================================================
  
������������������� 2014.07.01(��) �۾� ���������������� 
+---------------------------------// 2014.07.27(��) �۾� //---------------------------------------+ 
������������������� 2014.07.01(��) �۾� ���������������� 
---> 06:30 ~ 18:00 --> 

�������౸
06:15 ���
06:30 �������� ��õ������ ��(�������� ��) 
07:00 �ű��ʵ��б� 
07:30 ������(1:0 ��)
08:00 ����(2:0 ��): ���� ����ȸ 
08:00 ����(1:1 ��): 4������
11:30 ����
11:50 �߽�(������: �������): ���� ��
1:240 ����
13:20 �Ͱ�
13:00 ����
16:00 ���
18:00 ����
20:00 �Ͱ�
23:00 ��ħ
==============================================================================================================

������������������� 2014.07.01(��) �۾� ���������������� 
+---------------------------------// 2014.07.28(��) �۾� //---------------------------------------+ 
������������������� 2014.07.01(��) �۾� ���������������� 
---> 07:30 ~ 19:50 -->  

- SMART TV App Mgt Prj
03. Tab(History) ==> /appmgmt_detail_history.jsp
/modal_app_version_info.jsp
==============================================================================================================

������������������� 2014.07.01(��) �۾� ���������������� 
+---------------------------------// 2014.07.29(ȭ) �۾� //---------------------------------------+ 
������������������� 2014.07.01(��) �۾� ���������������� 
---> 07:30 ~ 20:00 --> �߰� ���� �䱸 ���� �ٽ� ��

- SMART TV App Mgt Prj
2) modal �۾� 
/modal_request_drop.jsp// 51. Drop ==>  test ===>
/modal_request_add_model_group.jsp// 52. Request Add Model Group  
/modal_request_launch.jsp// 53. Request Launch
/modal_app_version_info.jsp// 54. ���� ����
http://localhost:8080/Sapphire/app/registration/m_app_version_info/3201407002622/1 
==============================================================================================================

������������������� 2014.07.01(��) �۾� ���������������� 
+---------------------------------// 2014.07.30(��) �۾� //---------------------------------------+ 
������������������� 2014.07.01(��) �۾� ���������������� 
---> 07:30 ~ 20:00 --> 7.30 �纸��(�������� �н�), ���� � �湮(ä���Ⱓ ����, ���� �ް�)

- SMART TV App Mgt Prj
/modal_app_version_info.jsp// 54. ���� ����(���� UP DOWN ���� �����ϱ�� ��) 
/modal_language.jsp// 55. ��� ���� ==> ���������� �ϱ�� ��
/modal_country.jsp// 56. ���� ����
==============================================================================================================

- ���̱̽�(�ӽ�) ��й�ȣ ����
diamond.sds / sds##1212  ===> ����ڸ�: DIAMOND.SDS
diamond.sds@samsung.com
==============================================================================================================

������������������� 2014.07.01(��) �۾� ���������������� 
+---------------------------------// 2014.07.31(��) �۾� //---------------------------------------+ 
������������������� 2014.07.01(��) �۾� ���������������� 
---> 07:30 ~ 19:50 --> 

- SMART TV App Mgt Prj
/modal_country.jsp// 56. ���� ����  ==> �Ϸ�
/modal_quick_release.jsp // 02. button Quick Release  ==> ��¥ ����  ==> �Ϸ�
1. ����, ������ ���� ����   ==> �Ϸ�
==============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������