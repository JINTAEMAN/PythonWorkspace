

����������������������������������������������������������
+----------------------------------------------// Memo(2018.11) //----------------------------------------------+
����������������������������������������������������������


������������������� 2018.11.01(��) �۾� �������������������
---> 07:00 ~ 20:00 ==> 

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- �̸��� �߼� �̷� ����
1. �̸��� �߼� �̷� ����(for ������ ���鼭 ���� �߼۵� �̸��� ���� ����)
/SY_MailAction.java ���Ͽ��� ���� �߻�
public void Send_03(BusinessContext ctx) throws Exception{
	System.out.println("[/SY_MailAction.java] [Send_03()] ==> [���� �߼� ó��] [TEST_01]" ); 
	
	DataSet dsMail = (DataSet)ctx.getInputObject("ds_mail");		  // ��ȸ���� DataSet(���۵� �̸��� ���� Ds)
	
	if(dsMail != null && dsMail.getRowCount() > 0) 
	{
		for(int i = 0; i < dsMail.getRowCount(); i++)
		{ 
			iExcCnt = service.executeByRow("cm:CM_SendEmailLog_I01", dsMail, i, false, false); 		
			// ���� �߼� �̷� ����[sql ��û ��ü] ȣ��(CM_SendEmailLog_I01: �̸��� �߼� �̷� ���� ȣ��) ==> ����: 2�� ����Ÿ��
			���� ����Ÿ�� 2�� �����.			
		}
	}
}
============================================================================================================== 

- dash ���� �޴�â���� â�ݱ⸦ �ϸ� ���� ��
1. ����: ȭ��ID(SCR_ID)�� �߸� �Է���.(RP::RP_GenDashBoard.xfdl ==> RP_GenDashBoard�� ����)
/***********************************************************************
 * �Լ���  	: fn_loginAfter
 * ���� 		: �α��� ID ���� ��, ȭ�� �ݱ� 
***********************************************************************/
this.fn_loginAfter = function()
{ 
	// gfn_chkOpenMenu("RP-06-010", "RP::RP_GenDashBoard.xfdl", application.gds_menu)
	gfn_chkOpenMenu("RP-06-010", "RP_GenDashBoard", application.gds_menu); 		// �ű� ������ ȭ���� �����ϰ� open ��Ű�� �Լ� ȣ�� 

	this.close(true);
}
============================================================================================================== 

- ���� �ڵ� �߼� ���α׷� ���� ��û
1. ��ħ 6�ÿ� �ڵ����� ���� �߼��� �� �ְ� ó��.(�̻�Ź ����)
============================================================================================================== 

������������������� 2018.11.02(��) �۾� �������������������
---> 07:00 ~ 19:40 ==> ������(20:12 ~ 22:07, �𱳿� -> ��������), (��)�����̵���Ÿ ��ü ȸ��(19��, ������ ��ó): ����

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- �̸��� �߼� �̷� ���� 
1. �̸��� �߼� �̷� ����(/SY_MailAction.java)���� executeBatch �Լ� ������ ���� FSP���� ������ �븮�� ���� ������ �༭ �ܿ� �ذ�
public void Send_03(BusinessContext ctx) throws Exception{
	System.out.println("[/SY_MailAction.java] [Send_03()] ==> [���� �߼� ó��(���� TEST��)] [TEST_01]" ); 
  
	String sQueryId = "cm:CM_SendEmailLog_I01";		// Query ID[���� �߼� �̷� ����(CM_SendEmailLog_I01: �̸��� �߼� �̷� ���� Query ȣ��)   
	int iExcCnt = 0;
	
	DataSet dsMail = (DataSet)ctx.getInputObject("ds_mail");		  // ��ȸ���� DataSet(���۵� �̸��� ���� Ds)
	
	if(dsMail != null && dsMail.getRowCount() > 0) 
	{
		for(int i = 0; i < dsMail.getRowCount(); i++)
		{   
			System.out.println("[/SY_MailAction.java] [Send_03()] ==> [���� �߼� �Ϸ�] [TEST_80][���� �߼� �̷� ���� ���_iExcCnt]"+ iExcCnt +"[i_��°]"+ i );  
		}   
		
		iExcCnt = service.executeBatch(sQueryId, dsMail); 		// ���� �߼� �̷� ����[sql ��û ��ü] ȣ��(CM_SendEmailLog_I01: �̸��� �߼� �̷� ���� ȣ��)   
		System.out.println("[/SY_MailAction.java] [Send_03()] ==> [���� �߼� �̷� ����] [TEST_92]" );
	} 
} 

- /AqqmsCommonNexacroService.java ���Ͽ���
public int executeBatch(String sQqueryId, DataSet ds_List) throws Exception { 
 
	int iRtnRst = 0;
	int cnt = 0;
	
	SqlExecutor sqlExecutor = SqlMapFactoryHelper.makeSqlExecutor(getConnection(), SqlMapFactoryHelper.NEXACRO);		// SqlExecutor ���� 
	DataSetSqlRequest sqlRequest = SqlMapFactoryHelper.makeDataSetSqlRequest(sQqueryId, SqlMapFactoryHelper.NEXACRO);	// DataSetSqlRequest ���� 
 
	ds_List.setName("ds_mail");  	// �߰�[ds_List �߰�(FSP���� �߰��϶�� ��), ������: 2018.11.02, by ���¸�]
	sqlRequest.addParamObject("ds_mail", ds_List);		// �Ķ���� ���ε�

	cnt = 0;

	for(int i=0; i<ds_List.getRowCount(); i++)
	{			  
		sqlRequest.setRowIndex(i);		// row�� �̵��ϸ鼭 ����.
	 
		if(cnt == 0)
		{ 
			sqlExecutor.startBatch(sqlRequest);		// ��ġ ����
			System.out.println("[/AqqmsCommonNexacroService.java] [executeBatch()] ==> [TEST_11][��ġ ����][i_��°]"+ i );
		}
		else
		{ 
			sqlExecutor.addBatch(sqlRequest);		// ��ġ �߰�
			System.out.println("[/AqqmsCommonNexacroService.java] [executeBatch()] ==> [TEST_12][��ġ ����][i_��°]"+ i );
		}
		cnt++;
	}
	 
	if(cnt > 0)
	{ 
		iRtnRst = 1;
		sqlExecutor.executeBatch();		// ��ġ ����
		System.out.println("[/AqqmsCommonNexacroService.java] [executeBatch()] ==> [TEST_77][��ġ ����]" );
	}
	
	return iRtnRst;
}	 
============================================================================================================== 

- ���� ����� ���� ���
1. �� ����� ��� ���� ��û ��[�̻�Ź �������� ���� ����] ==> �� ���ø����̼� ����� ���� ����(�� ���ø����̼� ����� ���� ����.pdf)
 1) ���˰���Դϴ�. �����Ҽ� �ִ� ���丮�� ����ε�  �̰Ŵ� ū ������ �ƴϹǷ� ��ġ�ϸ� ������ ���ص� ������ ���ῡ�� 
���������ϴ�.
 2) ���� �� ���丮 �̸� ����(Prefix) 1��
 ==> ���� url: /APQM/frame
  ��. ��ġ�� ����: frame --> frameNx70,  common --> commonNx70,  -- popup --> popupNx70
============================================================================================================== 

������������������� 2018.11.03(��) �۾� �������������������
---> 06:20 ~ 23:00 ==> ü��: 69.1kg

- �ָ�
06:20 ���
06:30 ����
07:20 �����
07:20 ����õ�� ����
08:20 �񵿱� ����
08:30 �޽�(������� ��ġ: 20��)
08:50 �ٷ� �(�븲�� ����õ�� � �ⱸ)
		==> Ǯ����Ʈ(TM12-01): ��� � , ���� ������(TM12-05): ����� �
09:20 �Ͱ�
12:00 �߽�
12:30 �����(������)
13:00 ����� ����(����) ==> ���� ������ �����ſ� �ư� ��. ���� �� �ð�.
16:20 ����
16:30 ���̼� �븲 2ȣ��(������ 2��, �Ƕ�����, �峭�� ����: ����), ��ǳ�� ����(5M: õ��)
17:00 ����
17:20 �Ͱ�(�翺 �Ͱ�) 
17:30 ����
18:10 �����(������): ����A -> ����õ -> �Ÿ��� -> ������Ա��� -> ��翪(50�� �ɸ�)
19:00 ��� ���� ���� ==> ȣ�� ����, ���� ���� �� �Դ´ٰ� ����.
19:20 �¿� ����
19:30 ���� �ع���, �Ʊ��� �� ������(�ع���: ȣ��, �¿�): ȣ���� ��
		==> ȣ�� �ŵ��� �켺 ����Ʈ �����ؼ� 10�� ������ �����ٰ� ��(���� 3��), �¿��̴� ���ֿ� ����Ʈ �����ؼ� 4õ ����
			�ôٰ� ��. ȣ�� ���� �޾Ҵٰ� ��.
20:00 ���� ���� ���� ����(205mg/dl ����): �����ϰ� �, ��(2��), �ؾ(3��) ����
21:30 ����
20:30 ���籸��(3��) ==> ���� �����ؼ� �� ��(2�� õ��)
23:00 ����
23:00 ��翪 ���(������): ������Ա��� -> �Ÿ��� -> ����õ -> ����A(40�� �ɸ�)
23:50 �Ͱ�
20:20 ��ħ
==============================================================================================================
 
������������������� 2018.11.04(��) �۾� �������������������
---> 06:20 ~ 23:00 ==> ü��: 67.4kg

�� �౸
07:20 ���(�ǰ���, �����̰� ����)
07:30 ��ħ ���� ���� ����(105mg/dl ����) 
07:30 ����
08:20 �����
08:30 ����õ�� ����
09:20 �񵿱� ����
09:45 �޽�(������� ��ġ: 20��)
10:30 �ٷ� �(�븲�� ����õ�� � �ⱸ)
		 ==> Ǯ����Ʈ(TM12-01): ��� � , ���� ������(TM12-05): ����� �
11:00 �Ͱ�
11:50 �߽�
12:30 ��� ������(����Ʈ 18�� ��� 2�� ���� ����) 
14:00 ���� ���� ���� ����(88mg/dl ����)
14:10 ���ͳ� ����(�翺, ���� �ܽ��Ϸ� ��)
15:30 �����
15:50 �븲���
16:00 �౸ ����(������ȸ��: ��︲��) ==> 4���� ��: �� ���°� ������.(�ణ ����)
18:00 ����
18:20 �������� ���(80����: �翺 �Ʒ��� ���ö�Ʈ ���)
18:30 �Ͱ�
18:40 ���� 
19:50 �����
19:10 �������� ���(80����: �翺 ���� �Ʒ��� ������Ʈ ���) 
19:20 �Ͱ�
19:30 ����
19:50 �����
20:00 �븲�� 7ȣ�� �������� ������(ž��)
20:20 �������� ����
20:40 �������� ȭ��ǿ��� ���� ���� ���� ����(115mg/dl ����)
20:49 ������(20:49 ~ 22:36, �������� -> �𱳿�) ž��  ==> ��ȭ '�Ƚü�' ��û.
22:45 �𱳿� ����
23:10 �Ͱ�
23:10 TV ��û
23:20 ��ħ
==============================================================================================================

������������������� 2018.11.05(��) �۾� ������������������� 
---> 07:00 ~ 21:30 ==> �̻�Ź ���� ��� �ٹ�

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- ���⹰ �ۼ�
1. S-18-0829-05-����ڸŴ��� �ۼ�
============================================================================================================== 

- ���� ����� ���� ��ġ
1. ���� �� ���丮 �̸� ����(Prefix) 1�� 
 1) ��ġ�� ����: frame --> frameNx70
============================================================================================================== 

- ������ö AP QMS �ý��� TESET ����
1. D:\QMS\APQMS_51\01. ������ö Prj_eclipse.exe
2. Eclipse ��ġ
Eclipse Java EE IDE for Web Developers.
Version: Kepler Release
Build id: 20130614-0229
Eclipse Kepler ==>  http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/kepler/SR2/eclipse-jee-kepler-SR2-win32-x86_64.zip
http://www.eclipse.org/downloads/packages/release/kepler/sr2
============================================================================================================== 

- �谹 ������ ����(Eclipse����)
1. Server Name: Tomcat v7.0 Server at localhost ==> APQMS_51
============================================================================================================== 

- /context.xml ���Ͽ���  @@@
<Context reloadable="true">  
	<!--// 01. Hyundai Steel AP QMS Prj MESJNDI Setting(tibero DEV DB) //-->
  	<Resource name="MESJNDI" auth="Container"                                                    
   		type="javax.sql.DataSource" driverClassName="com.tmax.tibero.jdbc.TbDriver"
   		url="jdbc:tibero:thin:@10.10.180.175:8639:HSMESDEV"
		username="QMSMGR" password="QMSMGR" maxActive="3" maxIdle="3"
		maxWait="-1"  factory="org.apache.tomcat.dbcp.dbcp.BasicDataSourceFactory" /> 
</Context>
-------------------------------------------------------------------------------------------------- 

- ���� DB ����
jdbc:tibero:thin:@10.10.180.175:8639:HSMESDEV  --> QMSMGR, QMSMGR
- � DB ����
jdbc:tibero:thin:@10.10.111.17:8629:RWMESPRD  --> QMSMGR, QMSMGR
==============================================================================================================
 
- Maria DB
0. https://mariadb.com/kb/ko/basic-sql-statements/
1. MariaDB 10.3.10 Stable(2018-10-04), mariadb-10.3.10-win32.msi �ٿ�ε� ==> https://downloads.mariadb.org/mariadb/10.3.10/
 1) root pwd: 1212, port: 3306
============================================================================================================== 

1. [Admin][MariaDB] DB ���� �� ���̺� ����(DDL, DML) ==> http://estenpark.tistory.com/358
============================================================================================================== 

- ������Ǽ�_���¸�(2018.07 ~ 09) �ݾ� �Ա�
1. 2018.07 ~ 09 ���� ���� �հ� �ݾ�: 524,900�� �������� ���忡 �Ա� �Ϸ�
==============================================================================================================

������������������� 2018.11.06(ȭ) �۾� ������������������� 
---> 07:00 ~ 20:30 ==> �赿�� ������ ȭ���� ��������ȸ�� ���α׷� �ÿ� ������ �����϶�� ��, ���� ���ε� �� Ư�� ���� ���Ե�
								������ ���ε� �ȵǰ� ���� ��(Ȳ���� ���α׷�).

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- ���⹰ �ۼ�
1. S-18-0829-05-����ڸŴ���(S-18-0829-05-����ڸŴ���-APǰ�������ý���_00.�ý��ۿ��_v1.0.pptx) �ۼ� 
============================================================================================================== 

- ���ε� ���� � ���α׷� �����̷�
1. D:\QMS\APQMS\workspace\APQMS\upload\img\apqms\20181106 ������ �ִ� ���� ����
==> ���Ͼ��ε�� ���ϸ� Ư������(#) ����
============================================================================================================== 

- MariaDB Driver Info  ==> 51. APQMS_����[MariaDB]
1. Driver Name: MariaDB, 	2. Driver Type: MySQL
3. Class Name: org.mariadb.jdbc.Driver
4. URL Template: jdbc:mariadb://{host}[:{port}]/[{database}] ==> jdbc:mariadb://localhost:3306/qmsmgr
5. Default Port: 3306 ==> [test Database] User name: root, pwd: 1212 --> [qmsmgr Database] User name: apqms, pwd: apqms12
6. Description: MySQL standard driver  ==> mariadb-java-client-1.5.5.jar
7. MariaDB(MariaDB 10.3.7 Stable) �ٿ�ε� ==> https://downloads.mariadb.org/mariadb/10.3.7/
--------------------------------------------------------------------------------------------------

- MySQL Driver Info  ==> 91. Nexacro14 �ű����ø�[MySQL]
1. Driver Name: MySQL, 	2. Driver Type: MySQL
3. Class Name: com.mysql.jdbc.Driver
4. URL Template: jdbc:mysql://{host}[:{port}]/[{database}] ==> jdbc:mysql://localhost:3306/MySQL
5. Default Port: 3306 ==> [qmsmgr Database] User name: root, pwd: 1212 
6. Description: MySQL standard driver  ==> myslq-connector-java-5.1.44.jar
============================================================================================================== 

������������������� 2018.11.07(��) �۾� ������������������� 
---> 07:00 ~ 19:30 ==> �� ���� ��. �ְ����� �ۼ�, ���̻� �湮(14:00 ~ 15:30: ������ 12�� 2°�� ���� ����, ���࿬��ȸ ���� ����, �̻�Ź
								�䱸 ����: ��ġ�� ���� �߼�, ���� ���ε� �� ���α׷��� �� ���� ==> �� ���ָ� �ܱ�(30% �� �شٰ� ��)
								, �赵�� �븮, Ȳ���� ������ ���Ե� ����), ���󹫰� ���α׷� ������ �����Ѵٰ� ���� ����϶�� ��(19:30)

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- � ���� �ݿ� ���� �߻�
1. lib_Comm.xjs ���Ͽ��� ���� ����� ���� ��ġ�� ���� frame ���� ������ ���� ������ ����Ǿ� �ִ� �� ��븮�� � ������ �ݿ� ó����.
objNewWin.set_formurl("frame::frmWork.xfdl");  	// ����
==> objNewWin.set_formurl("frameNx70::frmWork.xfdl");	// ����[�˺��� ����� ���� ��ġ�� ���� frame ������ ����, ������: 2018.11.02, by ���¸�] 
============================================================================================================== 

- java MySQL ������ ���� MySQL Connector ��ġ���
http://blog.naver.com/PostView.nhn?blogId=50after&logNo=220912861796&categoryNo=0&parentCategoryNo=0&viewDate=&currentPage=1&postListTopCurrentPage=1&from=postView
1. mysql-connector-java-5.1.47.zip ���� �ٿ�ε��Ͽ� ���� Ǯ�� ==> mysql-connector-java-5.1.47-bin.jar�� ����
2. D:\QMS\APQMS\apache-tomcat-7.0.86\lib������ �ٿ��ֱ�(mariadb-java-client-1.5.5.jar)
3. eclipse�� ��ġ
 1) ��Ŭ���� �������� ������Ʈ Properties���� ava Build Path �׸��� Libraries - Add External JARs�� ���� �߰�
============================================================================================================== 

- MySQL DB���� TO_CHAR ����
1. ����:
SQL Error [1305] [42000]: FUNCTION qmsmgr.TO_CHAR does not exist
FUNCTION qmsmgr.TO_CHAR does not exist

2. ��ġ: DATE_FORMAT �Լ� ���
DATE_FORMAT(now(), '%Y-%m-%d') // 2011-06-14
2.DATE_FORMAT(now(), '%Y-%M-%D') // 2011-June-14th
3.DATE_FORMAT(now(), '%H:%i:%s')  // 22:26:11  ( 24�ð� ǥ�� )
4.DATE_FORMAT(now(), '%h:%i:%s')  // 10:26:11 ( 12�ð� ǥ�� )

3. ����:
/* LOGIN �õ� ���� ���� ���� ��ȸ ==> [cm:CM_LoginTryCnt_S01.xml] [2018.11.07, by ���¸�] ==> MySQL*/ 
SELECT (CASE WHEN ((LOGIN_TRY_LMT_YN IS NOT NULL AND LOGIN_TRY_LMT_YN = 'Y') AND TO_CHAR(TO_DATE(LATEST_LOGIN_DT), 'YYYYMMDDHH24MI') 
						   <  TO_CHAR(TO_DATE(SYSDATE - (1 / 24 / 60 * 60)), 'YYYYMMDDHH24MI') ) THEN 'N' 		-- (N: �α��� �õ� ���� ���� Y�̰�, 60�� ��� ����)
					  WHEN LOGIN_TRY_LMT_YN IS NULL OR LOGIN_TRY_LMT_YN = 'N' THEN 'N' 		-- (N: �α��� �õ� ���� ���� N)
					  ELSE 'Y' END) AS LOGIN_TRY_LMT_YN		  -- 41. �α��� �õ� ���� ���� 
			, DATE_FORMAT(now(), '%Y%m%d%H%i%s') as NOW_DATE_01, now() as NOW_DATE  
	, A.*
FROM HSSCU100 A		-- ����ڵ�� ���� TB
WHERE 1 = 1  
	AND A.USER_ID = '1519927'		-- �����ID
;
--------------------------------------------------------------------------------------------------------------------------------

- ��Ŭ����(eclipse)���� ���� ��ġ
D:\QMS\APQMS_51\workspace\.metadata\.plugins\org.eclipse.wst.server.core
============================================================================================================== 
 
������������������� 2018.11.08(��) �۾� ������������������� 
---> 07:00 ~ 20:00 ==> �� ��(��� ���� ���),  ��������ȸ(15:00 ~ 16:00): ������ ������ �ҽ� ���� ���� ����϶�� ����.
								, �߽�, ���� �� ���忡�� ����(12:20 ~ 12:50, 18:20 ~ 19:30): ���� ���� ���� 201mg/dl ����.
								, ��, �ٶ��� ���ؼ� ����� �븮 ���� ���.

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- ���⹰ �ۼ�
1. S-18-0829-05-����ڸŴ���(S-18-0829-05-����ڸŴ���-APǰ�������ý���_00.�ý��ۿ��_v1.0.pptx) �ۼ� 
============================================================================================================== 
	
- FSP sqlmap ����(91. ������ö APQMS_51) ==> MySQL�� ��ȣ ������.(�ϼ�)
1. web.xml ����(D:\QMS\APQMS_51\workspace\APQMS\WebContent\WEB-INF)
<filter>
	<filter-name>FSP_Filter</filter-name>
	<filter-class>com.sz.ui.ServiceLoaderFilter</filter-class>
	<init-param>
		<param-name>servicePath</param-name>
		<!-- <param-value>D:/wasapps/edu/WEB-INF/fsp/conf/service.xml</param-value>  -->
		<param-value>D:/QMS/APQMS/workspace/APQMS_51/WebContent/WEB-INF/fsp/conf/service.xml</param-value>	
		<!--// ����[servicePath ����]: 2018.04.19, by ���¸� //-->
		<param-value>D:/QMS/APQMS_51/workspace/APQMS/WebContent/WEB-INF/fsp/conf/service.xml</param-value>	
		<!--// ����[ APQMS_51�� ���]: 2018.11.0, by ���¸� //-->
	</init-param>
	<init-param>
		<param-name>workingRootDirPath</param-name>
		<!-- <param-value>D:/wasapps/edu/WEB-INF/fsp/</param-value>  -->
		<param-value>D:/QMS/APQMS_51/workspace/APQMS/WebContent/WEB-INF/fsp/</param-value>	
		<!--// ����[workingRootDirPath ����]: 2018.04.19, by ���¸� //-->
		<param-value>D:/QMS/APQMS_51/workspace/APQMS/WebContent/WEB-INF/fsp/</param-value>	
		<!--// ����[ APQMS_51�� ���]: 2018.11.0, by ���¸� //-->
	</init-param> 
</filter>
--------------------------------------------------------------------------------------------------------------------------------
 
- 91. ������ö APQMS_51�� ���
D:/QMS/APQMS/workspace/APQMS/WebContent/WEB-INF/fsp/conf/service.xml
==> D:\QMS\APQMS_51\workspace\APQMS/WebContent/WEB-INF/fsp/conf/service.xml
-------------------------------------------------------------------------------------------------------------------------------- 
 
- MariaDB Driver ����(eclipse����) 
- /APQMS/WebContent/META-INF/context.xml ���Ͽ���
<Resource name="MESJNDI" auth="Container"       
	type="javax.sql.DataSource" driverClassName="org.mariadb.jdbc.Driver"  ==> org.mariadb.jdbc.Driver ���� ��.
	url="jdbc:mariadb://localhost:3306/qmsmgr"
	username="apqms" password="apqms12" maxActive="3" maxIdle="3"
	maxWait="-1"  factory="org.apache.tomcat.dbcp.dbcp.BasicDataSourceFactory" />  
-----------------------------------------------------------------------------------------------------------------

- MariaDB ����
1. ������ DB ���� ��Ƴ��� ��α� - Jaejin's blog ==> http://blog.naver.com/PostView.nhn?blogId=hmkuak&logNo=220583392375
2. MariaDB ��ġ (for Windows) ==> http://sqlmvp.kr/220325416253
3. [MariaDB] Oracle �Լ��� MariaDB �Լ��� ���� ==> http://blog.naver.com/PostView.nhn?blogId=sensate1024&logNo=220439813849&parentCategoryNo=55&categoryNo=&viewDate=&isShowPopularPosts=true&from=search
============================================================================================================== 

- MariaDB ����
1. TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS') ==> DATE_FORMAT(now(), '%Y%m%d%H%i%s')		-- ��������
2. DECODE ==> CASE��
/*	SELECT  DECODE(BIZ_GP
	, 'QI', 1   	-- ǰ���˻�(QI)
	, 'VQ', 2   	-- ���»�ǰ���˻�(VQ)
	, 'NC', 3  	-- ��������(NC)
	, 'UM', 4  	-- �������(UM)
	, 'DS', 5    	-- ǥ�ط�����(DS)
	, 'VD', 6    	-- ���»�ǥ�ط�����(VD)
	, 'TL', 7     	-- TOOL����(TL)
	, 'RP', 8		-- ���պм�(RP)
	, 'CM', 9		-- ��������(CM)
	, 'SY', 10		-- �ý��۰���(SY)
) AS MENU_SEQ_90,*/
SELECT (CASE BIZ_GP	
	WHEN 'QI' THEN 1 		 -- ǰ���˻�(QI)
	WHEN 'VQ' THEN 2   	-- ���»�ǰ���˻�(VQ) 
	ELSE  10 	-- �ý��۰���(SY)
	end)  AS MENU_SEQ,
============================================================================================================== 

- MariaDB ����
1. ����:
Reason:
SQL Error [1064] [42000]: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB 
server version for the right syntax to use near ') 
 			VALUES ('','100','','1','','20160429111100','1515533','','A00','AP PRODU' at line 2
2. ����: TREE_YN, )  ==> TREE_YN)�� ����
-- �μ��� ���� TB ����� @@@@@@@ ==> 2��   
INSERT INTO HSHRA200( ACC_DEPT, BS_CD, BUD_DEPT, BUD_YN, CC_CD, CDT, CID, DEPT_BC, DEPT_CD, DEPT_ENM, DEPT_KD, DEPT_NM, 
	DIV_CD, FLD_YN, FR_DT, GRP1_BC, GRP2_BC, GRP3_BC, GRP_CD, HEAD_EMP, MDT, MID, OLD_DEPT, PRT_SQ, RMKS, RT_BC, RT_KD,
	 TO_DT, TO_YN, TREE_YN, ) 
 			VALUES ('','100','','1','','20160429111100','1515533','','A00','AP PRODUCT DIVISION','','AP�����','','','20180529','','','','',''
			,'20180529160516','1515533','',0,'������ö(��)','','','','',''); 
============================================================================================================== 

- MariaDB ������ ���̺� �� ����
/* �޴�  ���� ���� ��ȸ(�α��� �� ó��) ==> [/sy:SY_MenuLstInq_S02.xml] [2018.05.25, by ���¸�] */   
SELECT  M.MENU_SEP,
				M.MENU_SEQ,  
				M.SEQ,   -- ����
FROM (			
	SELECT  MENU_SEP,
				 MENU_SEQ,
				 SEQ,   -- ����
				LEVEL-1 AS LVL_NO,
	FROM HSSCM100			-- �޴� ���� TB
	WHERE USE_YN = 'Y'
	START WITH UP_MENU_ID IS NULL    	-- oracle�� START WITH CONNECT BY ����
	CONNECT BY PRIOR MENU_ID = UP_MENU_ID
	ORDER SIBLINGS BY SORT_SEQ, SUBSTR(MENU_ID,1,5)) X ) M
	)
;
============================================================================================================== 

������������������� 2018.11.09(��) �۾� ������������������� 
---> 07:00 ~ 19:40 ==> ���� �ް�(����� �Ƶ� ��ȥ), ������(20:12 ~ 22:07, �𱳿� -> ��������)

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- ���⹰ �ۼ� ==> �Ϸ� @@@
1. S-18-0829-05-����ڸŴ���(S-18-0829-05-����ڸŴ���-APǰ�������ý���_00.�ý��ۿ��_v1.0.pptx) �ۼ� 
============================================================================================================== 

- �������� ��ü ������� ���콺 ��Ŭ�� ���� �ϴ� ���
1. https://mastmanban.tistory.com/877
============================================================================================================== 
 
- MariaDB ������ ���̺� �� ����
1. [MSSQL] WITH / CTE ==> http://developerking.tistory.com/48 
/* �޴�  ���� ���� ��ȸ(�α��� �� ó��) ==> [/sy:SY_MenuLstInq_S02.xml] [2018.05.25, by ���¸�] */   
WITH RECURSIVE empCTE(MENU_ID_02, UP_MENU_ID, level)
AS
(
	SELECT    MENU_ID, 
				 UP_MENU_ID,  
          	  0   
	FROM HSSCM100			-- �޴� ���� TB
	WHERE 1=1
		 AND SUBSTRING(MENU_ID,4,9) = '00-000' 	-- �ֻ��� �޴� 
	UNION all 
	SELECT A.MENU_ID, 
           		 A.UP_MENU_ID, 
	         	-- 	SUBSTRING(A.MENU_ID,4,9) AS MENU_PID,  
		           B.level+1  
	FROM HSSCM100 AS A 
	INNER JOIN empCTE AS B
		ON A.UP_MENU_ID = B.MENU_ID_02
		  AND SUBSTRING(A.MENU_ID, 1, 5) = 'CM-01' 	-- �޴�  
)
SELECT MENU_ID_02 as MENU_ID , UP_MENU_ID, level AS LVL_NO
FROM empCTE 
ORDER BY level
;
-------------------------------------------------------------------------------------------

WITH RECURSIVE empCTE 
AS
(
	SELECT   
           		BIZ_GP AS MENU_SEP,
           		MENU_ID, 
				-- UP_MENU_ID,  
          	  0 AS LVL_NO
	FROM HSSCM100			-- �޴� ���� TB
	WHERE 1=1
		 AND SUBSTRING(MENU_ID,4,9) = '00-000' 	-- �ֻ��� �޴� 
	UNION all 
	SELECT A.BIZ_GP AS MENU_SEP,
				A.MENU_ID, 
           			-- A.UP_MENU_ID, 
	         	-- 	SUBSTRING(A.MENU_ID,4,9) AS MENU_PID,  
		           B.level+1 AS LVL_NO
	FROM HSSCM100 AS A 
	INNER JOIN empCTE AS B
		ON A.UP_MENU_ID = B.MENU_ID
)
SELECT MENU_SEP, MENU_ID, LVL_NO
FROM empCTE 
ORDER BY LVL_NO, LVL_NO
;
-------------------------------------------------------------------------------------------

SELECT @RNUM := @RNUM + 1 AS ROWNUM, t.*
FROM
( 
	 WITH RECURSIVE empCTE(empName, mgrName, dept, level)
	AS
	(
		SELECT emp, manager, department , 0
		FROM empTbl
		WHERE manager IS NULL 	-- �ֻ��� �޴� 
		UNION all 
		SELECT AA.emp, AA.manager, AA.department, BB.level+1
		FROM empTbl AS AA INNER JOIN empCTE AS BB
		ON AA.manager = BB.empName
	)
	SELECT   level AS "����", empName, LPAD(empName , level+4, ' ��') AS "�����̸�"
			 , mgrName "����̸�", dept "�����μ�"	
	-- SELECT level AS "����", LPAD(empName  ,level, ' ��') AS "�����̸�", dept "�����μ�"
	FROM empCTE ORDER BY dept, level
) t,
( SELECT @RNUM := 0 ) R
 ORDER BY ROWNUM DESC
;
-------------------------------------------------------------------------------------------

 WITH RECURSIVE empCTE(empName, mgrName, dept, level)
AS
(
	SELECT emp, manager, department , 0
	FROM empTbl
	WHERE manager IS NULL	 -- �ֻ��� �޴� 
	UNION all 
	SELECT AA.emp, AA.manager, AA.department, BB.level+1
	FROM empTbl AS AA INNER JOIN empCTE AS BB
	ON AA.manager = BB.empName
)
	SELECT   level AS "����", empName, LPAD(empName , level+4, ' ��') AS "�����̸�"
				 , mgrName "����̸�", dept "�����μ�"	
-- SELECT level AS "����", LPAD(empName  ,level, ' ��') AS "�����̸�", dept "�����μ�"
FROM empCTE ORDER BY dept, level
;
============================================================================================================== 

- ����Ʈ�� ���ȣ ��ǥ���� ���� ����
1. �̻�Ź ������ ����Ʈ�� ���ȣ ��ǥ���� ��ȭ�ؼ� SP ���� �̸��� ��ġ ������ ����
2. ���ȣ ��ǥ�� ervice.xml ���� �� �����ϸ� �ȴٰ� ��.
 1) FSP ���� �̸��� ��ġ ������ ==> service.xml ���� ÷���ؼ� ����
  ��. �����췯(scheduler) ==> https://softzam.atlassian.net/wiki/spaces/svrdoc/pages/15007963/scheduler
============================================================================================================== 

������������������� 2018.11.10(��) �۾� �������������������
---> 06:20 ~ 23:00 ==> ü��: 66.3kg

- �ָ�
06:20 ���
06:30 ����
07:40 �����
07:20 ����õ�� ����
08:20 �񵿱� ����
08:50 �޽�(������� ��ġ: 20��)
09:50 �ٷ� �(�븲�� ����õ�� � �ⱸ)
		==> Ǯ����Ʈ(TM12-01): ��� � , ���� ������(TM12-05): ����� �
10:06 �Ͱ�
10:50 ���ͳ� ���� ==> FSP ���� �����췯(scheduler) �м�
12:00 �߽�
12:30 �����(������)
13:00 ����� ����(����) ==> ���� ������ �����ſ� �ư� ��. ���� �� �ð�.
13:30 �ػ���(����, 2õ��): ����Ű��� ���� ==> �¿��̿� ��ȭ(Ȳ���� ��ģ��, ���� 17�ÿ� �뱸 ��Ƽ�� �������� ���� ���)
16:00 ���� Ƣ��(����, 2õ��): ����Ű��� ����
16:50 ����
17:30 ����(ġ��, �����, ��⸸��): ���� --> �����̰� ���� �Ծ �� ó�� �Ѵٰ� �ణ ����.
18:00 ���θ� ����(����) ==> ���� �� �ð�.
19:00 ����
19:10 (��)���̼� �븲2ȣ�� ==> ���� ��ǳ��(��, 15mm*5m, 5P, 5õ��), ����(5M*19mm, 2õ��)
19:40 �Ͱ�(�翺 �Ͱ�)
20:50 �Ž� â��, ������ â���� ��ǳ�� ���̱� ==> ����� ���Թ��� �� ���� ��.
21:10 ����
21:40 ��ħ
==============================================================================================================
 
������������������� 2018.11.11(��) �۾� �������������������
---> 06:20 ~ 23:00 ==>  

- �ָ�2
06:20 ���
06:30 ����
07:40 �����
07:20 ����õ�� ����
09:40 �񵿱� ����
09:00 �޽�(������� ��ġ: 20��)
09:50 �ٷ� �(�븲�� ����õ�� � �ⱸ)
		==> Ǯ����Ʈ(TM12-01): ��� � , ���� ������(TM12-05): ����� �
10:20 �Ͱ�
10:50 (��)���̼� �븲2ȣ�� ==> ���� ��ǳ��(��, 15mm*5m, 3P, 3õ��),  ���� ��ǳ��(��, 2P, 3õ��)
11:00 �Ͱ� 
11:10 ���Ϸ��� â��, ���Թ�, ���� â���� ��ǳ�� ���̱�
11:30 ����
11:50 �߽�
12:20 �����
12:40 �븲�� 7ȣ�� ���� ������(ž��)
13:20 ���� ����͹̳� ����
13:35 ���� ����͹̳� �߿� ���սǿ��� ���� ���� ���� ����(138mg/dl ����)
13:40 ���� ����͹̳� ���: ��ӹ���(���� -> ���뱸, 13:40, �Ϲݰ��) ==> ����(ȯ�� ����: ���Ѱ� ��)
16:40 ĥ��� IC ���� �� �տ��� �� ��� �� ==> ������ ����� ���� ���� ó����.
17:20 ���뱸�͹̳� ���� ==> ���� �ǹ� ó�� ��(�ż��� ��ȭ��, ���뱸�� ���嵵 ������)
17:45 ���뱸 ��Ƽ�� ���� ���Ƚ� 1�� ���� ==> �¿�, ��ȯ, ȣ��, �ϳ� ����
17:50 ���뱸 ��Ƽ�� ���� ���Ƚ� 3��(301ȣ) ���� ==> ����(����, ���� ����): ���Ǳ� 5���� ����.
17:55 ���� ==> ������ ȭ���� ö��(�Ǽ��� ����: ��ȯ�̿� �����̰� ���� ���ٰ� ��)
19:00 ����
19:20 Ŀ��?(�¿�, ��ȯ, �ϳ�, �º�: ���� ��): �¿��̰� �� ==> ���� ���� ���� ����(195mg/dl ����)
20:10 ����
20:20 ���뱸�͹̳� ����
20:35 KTX(���뱸�� -> õ�Ⱦƻ꿪, 20:35) ==> ����(ȯ�� ����: ���Ѱ� ��)
21:40 õ�Ⱦƻ꿪 ����
21:50 �ƻ꿪 ����
22:04 ������ ����(20:19, �������� -> �𱳿�, ����ȭȣ): �ƻ꿪 ȯ�� ==> ����(ȯ�� ����: ���Ѱ� ��)
22:45 �𱳿� ����
23:00 �Ͱ�
23:20 ����
23:55 ��ħ
==============================================================================================================

������������������� 2018.11.12(��) �۾� ������������������� 
---> 07:00 ~ 20:00 ==> ���̻翡�� ��ȭ(�����췯 ����Ͽ� Email ����: FSP ���� ��û), SK �ѱ� �ø��� ���(�λ꿡 ��, SK 4�� 2��)

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- �����췯 ����Ͽ� Email ����
1. �����췯(scheduler) ==> https://softzam.atlassian.net/wiki/spaces/svrdoc/pages/15007963/scheduler
1) FSP ���� ���ȣ ��ǥ���� batch.zip ���� ���Ϸ� ����
/ServiceControl.java
/SendMailScheduleTaskService.java
/nexacro17-xapi-1.0.jar
============================================================================================================== 

- MariaDB ��ܽ� ����
/* �޴�  ���� ���� ��ȸ(�α��� �� ó��) ==> [/sy:SY_MenuLstInq_S02.xml] [2018.11.12, by ���¸�] ==> MySQL*/ 
SELECT @RNUM := @RNUM + 1 AS SEQ,  		-- ����  
		M.SCR_ID,
		M.PATH_NM, 
		M.MENU_ID, 
		(CASE M.SCR_ID	
						WHEN '' THEN NULL 		 -- ǰ���˻�(QI) 
						ELSE (CASE M.MENU_ID	
												WHEN '' THEN NULL 		  -- null �̸�
												WHEN 'SY-08-010' THEN CONCAT('sample_fsp::', M.SCR_ID, '.xfdl')  -- ���� ���ε�(fsp_fileUpload)
												WHEN 'SY-08-020' THEN CONCAT('sample_fsp::', M.SCR_ID, '.xfdl')  -- �˾� ����(popUp_sample)
												WHEN 'SY-08-030' THEN CONCAT('sample_fsp::', M.SCR_ID, '.xfdl')  -- ���� Export ����(excelExport_sample)
												WHEN 'SY-08-040' THEN CONCAT('sample_fsp::', M.SCR_ID, '.xfdl')  -- Paging ��ȸ ����(paging_sample)
												WHEN 'SY-08-050' THEN CONCAT('sample_fsp::', M.SCR_ID, '.xfdl')  -- Paging ��ȸ ����_02(paging_samplr)
												ELSE CONCAT(M.PATH_NM, '::', M.SCR_ID, '.xfdl')
										END)
					END) AS MENU_URL,
			(CASE M.SCR_ID	
							WHEN '' THEN NULL 		 -- null �̸�
							ELSE CONCAT(M.PATH_NM, '::', M.SCR_ID, '.xfdl')
					END) AS MENU_URL_90,
				M.BIZ_GP AS MENU_SEP,		
				M.MENU_SEQ,		
				SUBSTR(M.MENU_ID, 4, 9) AS MENU_PID,
				M.MENU_ID, 
				M.SCR_ID,  				-- ȭ��ID
				M.SCR_ID AS UI_ID,		-- ȭ��ID_2
				M.MENU_NM,
				M.LVL_NO,
				M.PATH_NM, 
				'100' AS ACL_GRP_CD,	-- ���ѱ׷��ڵ�
				'Y' AS AUTH_INQ,			-- �޴� ��ȸ ���� 
				'Y' AS  AUTH_REG,	 		-- �޴� �ű� ����
				'Y' AS AUTH_MOD,			-- �޴� ���� ����
				'Y' AS AUTH_DEL,			-- �޴� ���� ����
				'Y' AS  AUTH_PRT,			-- �޴� �μ� ����
				'Y' AS  DISP_YN		 	-- �޴� ���� 
	FROM (  
		WITH RECURSIVE empCTE(MENU_ID_02, UP_MENU_ID, BIZ_GP, SCR_ID, MENU_ID, MENU_NM,
												PATH_NM, level)
		AS
		(
			SELECT  MENU_ID, 
						 UP_MENU_ID, 
						 BIZ_GP,	
						 SCR_ID,
						 MENU_ID,
						 MENU_NM,
						 PATH_NM, 
		          	  0   
			FROM HSSCM100			-- �޴� ���� TB
			WHERE 1=1
				 AND SUBSTRING(MENU_ID, 4, 9) = '00-000' 		-- �ֻ��� �޴� 
			UNION all 
			SELECT A.MENU_ID, 
		           		 A.UP_MENU_ID,
			         	 A.BIZ_GP,
			         	 A.SCR_ID,
			         	 A.MENU_ID,
			         	 A.MENU_NM,
			         	 A.PATH_NM,
				         B.level+1
			FROM HSSCM100 AS A 
			INNER JOIN empCTE AS B
				ON A.UP_MENU_ID = B.MENU_ID_02
				 -- AND SUBSTRING(A.MENU_ID, 1, 5) = 'CM-01' 	-- �޴�  
		)
		SELECT MENU_ID_02 as MENU_ID , UP_MENU_ID, BIZ_GP
					, (CASE BIZ_GP	
		    		 		WHEN 'QI' THEN 1 		 -- ǰ���˻�(QI)
		    		 		WHEN 'VQ' THEN 2   	-- ���»�ǰ���˻�(VQ) 
		    		 		WHEN 'NC' THEN 3  	-- ��������(NC) 
							WHEN 'UM' THEN 4  	-- �������(UM)
		    		 		WHEN 'DS' THEN 5    	-- ǥ�ط�����(DS)
		    		 		WHEN 'VD' THEN 6    	-- ���»�ǥ�ط�����(VD)
							WHEN 'TL' THEN 7     	-- TOOL����(TL)
							WHEN 'RP' THEN 8		-- ���պм�(RP)
		    		 		WHEN 'CM' THEN 9		-- ��������(CM) 
		      				ELSE  10 					-- �ý��۰���(SY)
		  			END)  AS MENU_SEQ
		  			, SCR_ID
		  			, MENU_NM
		  			, PATH_NM
		  			, level AS LVL_NO 
		FROM empCTE 
		ORDER BY MENU_ID_02
	) M, 
	( SELECT @RNUM := 0 ) R
	WHERE 1=1 
	  -- AND M.BIZ_GP = 'SY' 		-- ���� �׷�
	 ORDER BY  M.MENU_SEQ, M.MENU_ID
;
==============================================================================================================

- MariaDB ����(syntax ����)
1. SUBSTR ==> SUBSTRTING
2. DECODE �� ==> CASE ��
SELECT
	-- DECODE(BIZ_GP 
								, 'SY', 10		-- �ý��۰���(SY)
		) AS MENU_SEQ_90,*/
	, (CASE BIZ_GP	
				WHEN 'QI' THEN 1 		 -- ǰ���˻�(QI) 
				ELSE  10 					-- �ý��۰���(SY)
		END)  AS MENU_SEQ
FROM HSSCM100			-- �޴� ���� TB AS MENU_SEQ
				
3. JOIN ���� ����
4. ||  ==> CONCAT
 1)  ('01. TEST' || '.xfdl')  AS MENU_URL_20,  ==> CONCAT(  '01. TEST', '.xfdl')  AS MENU_URL_20,  
--------------------------------------------------------------------------------------------------------------------------------

-- Mysql ���̺� ENGINE TYPE Ȯ���ϴ¹��
SELECT TABLE_SCHEMA,TABLE_NAME,ENGINE FROM INFORMATION_SCHEMA.TABLES
-- WHERE TABLE_SCHEMA='MYSQL'; 
==============================================================================================================

- ���� ���� ���� �ý���(���� �����ý���) �α��� �Ұ�
1. https://10.10.111.232/, �α���: 1519927, /asas3333 ���� �ȵ�
 1) ����, � ���� ���� �Ұ� ==> �̻�Ź ���忡�� ����
============================================================================================================== 
 
- ��ġ�� ���� �ɷ� ���� �� ==> �Ϸ� @@@
1. �뵿 �ʱ� ������ ġ�� ����� ��� ���� ���� ==> http://eoehd1111.eduk01.kr, p153 / hptn*16*1@
 1) �̵��� ������(���� ���� ����), ����: �Ƹ���
============================================================================================================== 

������������������� 2018.11.13(ȭ) �۾� ������������������� 
---> 07:00 ~ 20:00 ==> 

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- �����췯 ����Ͽ� Email ����
1. �����췯(scheduler) ==> https://softzam.atlassian.net/wiki/spaces/svrdoc/pages/15007963/scheduler 
============================================================================================================== 
 
- MySQL mysqldump�� �̿��ؼ� export�ϰ� ,dump ���� Import �ϱ�
1. https://java.ihoney.pe.kr/215
------------------------------------------------------------------------------------------------------

- [MySQL] dump�� import
1. http://dev-smc.tistory.com/12
------------------------------------------------------------------------------------------------------

- mysql function �����ϱ�
1. http://choija.tistory.com/26
============================================================================================================== 

- MariaDB syntax ����
1. ����:
SQL Error [1064] [42000]: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server 
version for the right syntax to use near 'LIMIT 0, 200' at line 10
2. ����:   --- �α���ID  ==>   -- �α���ID�� ������ ��
SELECT   A.* 
FROM HSSCU100 A
WHERE 1=1
	AND A.USER_ID = '1519929'     -- �α���ID 
;
============================================================================================================== 

- ���� ũ�� ������ ���콺 Ŭ�� ���� (���߹��� ����) �ϱ� �Ǳ� ���ڽ�
1. https://boogong.tistory.com/41

- �� ���� ���� C Browser(�� ������) 3.3 ���ͺ� �ٿ�ε�[IE ��ü]
1. http://ksutil.uu.gl/121  ==> http://chyoti235.tistory.com/entry/MySQL-coalesce-ifnull-�Լ�
==============================================================================================================

- eclipse ����(���� ��Ʈ��)
1. ����:
An internal error occurred during: "Building workspace". GC overhead limit exceeded
 1) �ش� ���� �� The "java.lang.OutOfMemoryError: GC overhead limit exceeded" �޽����� � ������ ���� garbage collector �� 
������ �ð��� �Һ��ϰ� ������ �ǹ��Ѵ�. 
2. ��ġ: http://geekstar.tistory.com/191
 1) eclipse > ��� �ǿ��� Project > Properties �� ���� ���� �޴� �� Builders > JavaScript Validator�� üũ ����
--------------------------------------------------------------------------------------------------------------------------------
  
- javax.servlet.http.HttpServletRequest cannot be resolved ����
1. ����:
import javax.servlet.http.HttpServletRequest
2. ��ġ: 
http://blueray21.tistory.com/58
============================================================================================================== 

- ���� ��ȸ �౸�� ȸ�� ����  ==> �Ϸ� @@
1. 2018.08 ~ 12�� ȸ�� 5���� ==> KEB �ϳ����� �����(�̿����� ������) �������� �۱�
==============================================================================================================
 
- �Ż� ����ȸ �Ȼ�� ������ ��ȭ ��.
1. ����ȸ ȸ��(������) ���⿡ ��ü�Ǵ� �ٽ� ����ȸ ������� ��. ==> �˾Ҵٰ� �� ��.
==============================================================================================================
 
������������������� 2018.11.14(��) �۾� ������������������� 
---> 07:00 ~ 20:00 ==> �ְ����� �ۼ�

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- �����췯 ����Ͽ� Email ����
1. �����췯 ����(���� 8�ÿ� �ڵ� �̸��� ����)
2. JAVA�ܿ��� �̸��� �߼� ��� ����
============================================================================================================== 
 
-- MariaDB���� DB ���̺� ���� ��ȸ @@@
-- ��ü ���̺� ��� ���� @@@ 
SHOW TABLES
;

-- ���̺� ��� ���� @@@ 
SELECT A.TABLE_NAME as "���̺��(������)", A.TABLE_COMMENT as "���̺��(����)", A.TABLE_ROWS as  "���̺� row"
			-- , A.* 
FROM INFORMATION_SCHEMA.TABLES A 
WHERE 1=1
	AND A.TABLE_SCHEMA = 'qmsmgr' -- ���̺� ��Ű��
	AND A.TABLE_NAME = UPPER('hsbca200') 	 -- ���̺��(������)
ORDER BY A.TABLE_NAME
; 
-- -------------------------------------------------------- COMMIT,    ROLLBACK

-- ���̺� Į�� ���� @@@ 
SELECT TABLE_NAME, COLUMN_NAME, COLUMN_COMMENT 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE 1=1
	AND TABLE_SCHEMA = 'qmsmgr'		-- ���̺� ��Ű��
	-- AND TABLE_NAME = 'hsbca200'   	-- ���̺��(������)
	AND TABLE_NAME = UPPER('hsbca200') 	 -- ���̺��(������)
ORDER BY COLUMN_NAME
; 
-- ============================================================================================================== 

- ���� ȸ�� ��Ʈ�Ͽ� ������ö APQMS ���� �Ϸ�
1. eclipse 64��Ʈ ==> MariaDB�� ����(���̺� ����, �α���, ���� ���԰˻� ��ȸ ����)
 1) null ���� ����
============================================================================================================== 
  
������������������� 2018.11.15(��) �۾� ������������������� 
---> 07:00 ~ 20:00 ==> �߽�(�ӹ� ����[������ �Ĵ�], ������, �赿�� ������ ��): �߽� �� �ɾ ����� ����

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- �����췯 ����Ͽ� Email ����
1. �����췯 ����(���� 8�ÿ� �ڵ� �̸��� ����) ==> �����뿡 ���� ���� ��û(���Ŀ� ���� �شٰ� ��): ���� �� ��.
 1) /service.xml
2. JAVA�ܿ��� �̸��� �߼� ��� ���� ==> �Ϸ� @@@
 1) /SendMailScheduleTaskService.java
============================================================================================================== 

- MySQL mysqldump�� �̿��ؼ� export�ϰ�,dump ���� Import �ϱ�
1. https://java.ihoney.pe.kr/215
------------------------------------------------------------------------------------------------------

- [MySQL] dump�� import
1. http://dev-smc.tistory.com/12
------------------------------------------------------------------------------------------------------

- mysql function �����ϱ�
1. http://choija.tistory.com/26
============================================================================================================== 

- Dump database(DBeaver����: ���� ��Ʈ�Ͽ��� ó��)
1. DBeaver���� > ��� �޴� > Database > Tools > Dump database: Ŭ�� 
==> dump-qmsmgr-201811152214.sql ���� ����
============================================================================================================== 

- �ɾ��N ��������� �ֹ�
1. ������ũ �ɾ��N ��������� 500��(10��), ����100��(2,500��), ����: 126,540��(����: 248��)
==> http://shopping.interpark.com/product/productInfo.do?prdNo=5535621826&dispNo=016001&utm_medium=affiliate&utm_source=enuri&utm_campaign=shop_p11713_p00335&utm_content=main
============================================================================================================== 
 
������������������� 2018.11.16(��) �۾� ������������������� 
---> 07:00 ~ 19:40 ==> ������(20:12 ~ 22:07, �𱳿� -> ��������), ���� �ް�(�ǰ� ����)

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- �����췯 ����Ͽ� Email ����
1. �����췯 ����(���� 8�ÿ� �ڵ� �̸��� ����) ==>  
 1) /service.xml
2. JAVA�ܿ��� �̸��� �߼� ��� ���� ==> �Ϸ� @@@
 1) /SendMailScheduleTaskService.java
============================================================================================================== 

- �μ��ΰ� ���(15��, �̻�Ź ����)
1. ��ȣȭ ����(��� üũ ����)
2. �α��� ����
3. ���� ���� ����(1�ð� �ڵ��α׾ƿ� ����)
4. ȭ�� ����̷� ����
============================================================================================================== 

- 2018.04.16_������ö apqms_OffLine_11.20 ����(OffLine)
1. OffLine ó�� 
/***********************************************************************
 * �Լ���  	: fn_MainSearch
 * ���� 		: ���� ���԰˻� Main ��ȸ 
***********************************************************************/
this.fn_MainSearch = function()
{
	// 77. OffLine ó�� @@@ ===>  
// 	this.fn_afterSearchMarster(		// fn_afterSearchMarster
// 		0, 				// nErrorCode
// 		"succ"	// sErrorMsg 
// 	); 
	
	// 77. OffLine ó�� @@@ ===>  
	this.fn_callback_OffLine(		// fn_callback_OffLine
		0, 				// nErrorCode
		"succ", 		// sErrorMsg
		"sid_find" 		// ���� ��û ���̵�(�ݹ� �Լ����� ��� ����)
	); 
} 

/***********************************************************************
 * �Լ���  	: fn_callback_OffLine
 * ���� 		: �ݹ� �Լ�(���� ����) 
***********************************************************************/  
this.fn_callback_OffLine = function(nErrorCode, sErrorMsg, sid)
{
	trace("[/QI_SteelPipeImpInsp.xfdl][fn_callback_OffLine()]==> [�ݹ�][TEST_01][sid]"+ sid 
		+"[nErrorCode]"+ nErrorCode +"[sErrorMsg]"+ sErrorMsg ); 
    
	switch(sid)
	{
		case "sid_find" :   	// ��ȸ �̸�  
		
			// 77. OffLine ó�� @@@ ===>  
			this.ds_list.clearData();
			this.ds_list.copyData(this.ds_list_DBServer, true);		
			// ds_list_DBServer Ds���� ����(ds_list_DBServer Ds�� DB ���� ���� ����)
			trace("[/QI_SteelPipeImpInsp.xfdl][fn_callback_OffLine()]==> 
				[TEST_21][ds_list.CNT]"+ this.ds_list.getRowCount() +"[ds_list.saveXML()] \n"+ this.ds_list.saveXML() );    
	}
}
2. �̸��� ������
============================================================================================================== 

- ������ö ���� ���α׷� ����
1. DiskPhySerial_Win.exe
============================================================================================================== 

������������������� 2018.11.17(��) �۾� �������������������
---> 06:20 ~ 23:00 ==> ü��: 65.8kg[��ü�߿��� ���� ü������ ��ȯ��), ������

- �ָ�
07:00 ���
07:30 ����
08:00 �����
08:20 ����õ�� ����
08:20 �񵿱� ����
09:00 �޽�(������� ��ġ: 20��)
09:50 �ٷ� �(�븲�� ����õ�� � �ⱸ)
		==> Ǯ����Ʈ(TM12-01): ��� � , ���� ������(TM12-05): ����� �
10:20 �Ͱ�
10:25 ū�������� ī�� ��(�þ�Ӵ� ����) 
10:30 �̹�(��ī�� �̿��: 8õ��)
11:10 �Ͱ�
11:20 ����(�翺�� ����)
11:40 �߽�
12:00 �����
12:10 7ȣ�� �븲�� ������(6411�� ���� ž��): ���� ==> 40�� �ҿ� 
12:50 ���� �͹̳� ����
13:20 ���� �͹̳� ���(����): ��� ��ӹ��� ����.
13:40 �߼��� ���� ���� ����(206mg/dl ����): �����ϰ� �
17:20 ���� �͹̳� ���� ==> 4�ð� �ɸ�(���� ��õ ��ӵ��� ���ܼ� ������)
17:30 ���� �͹̳� ���� ������(101�� ���� ž��)
17:50 ������ ���� ==> Ŀ�� ������ ��. �޴��� ������ ��.
18:10 ����
18:30 ���̼����� ��ȣ��(���� ��Ÿ��(��): ��ʽ����, Ŭ���� ���� ����[����] ����)
19:10 ������ ���
19:20 �ý�(��ȣ�� ������ -> ����������ʽ���: 3�� 5õ�� �޶�� ��): ū���� �þ�Ӵ� ��
20:00 ����������ʽ��� ����
20:10 ���� ==> ��Ӵ� ��(20����)���� �� �̸� ���� ���Ǳ� ��.
20:20 �ٰ� ==> �ɰ���, �ɰ��� ������ ������ ��ô ������. ��ī�� �빫�� �հ� �ߴٰ� ��.
21:00 ����
21:10 ����������ʽ��� ���(ū���� ��) ==> ���� �������� 5���� ����
21:40 ������ ���� 
22:00 ��ħ
==============================================================================================================
 
������������������� 2018.11.18(��) �۾� �������������������
---> 06:20 ~ 23:00 ==> ���� ����

- �ָ�2
07:00 ���
07:30 ����
08:20 �����
08:30 ���ϴ� �ؼ����� -> ȯ�� ���� ���� -> ���� ���� �͹̳� -> ��� -> �Ͱ�: ���� ���� �� �Ǿ� ����.(���ؾ� ��)
10:40 �Ͱ� ==> ���� ���� ���ż� ���� �غ��ϰ� ����.
10:50 �๮ �ۼ�
11:30 �ϻ��� ���� �湮 ==> �๮ �� ���� ��.
11:40 ���� �ƹ���, ���, ��ȣ ����(����), �߿� ����, ����� ���(���),  ������ ����
12:10 ���� ==> �ϻ��� ���� ��� �๮ ����. ȸ�� 6���� ��.
		==> ���� ���� �� ��ҿ� ���� ���� ������� ��.(�ϻ���, ������ ���� ������)
		==> ���� ����, ���� ����, ���, ����, ��ȣ �������� ������ ����
12:40 ����
12:45 ��ȣ ����(����) �ʰ� ��
12:50 �Ļ�
13:20 ���� ���� ==> �� �÷���(����, �ø��� ���� ���)
		==> ���� ���ﵿ�� ����(��Ʈ�� ȣġ�� ���� �ٹ� ���)
15:00 ģô�� �� �Ͱ� ��. ==> ���� �ҸӴ����� 5���� ����
15:20 ������ ���(����: ����) ==> ���� ���ſ�, ���ϰ� ��� ���� ����.
		==> �̾���, �޴��� ������ ������ ��.
15:50 ���� �뺯(��â�� �ֹμ��� ��ó �ǹ�)
16:00 �������� ���� ������(107�� ���� ž��)
16:15 ���׿� ����
16:25 ���׿� ��� ==> �ڸ� �ϳ��� ������ �ؼ� �ſ� ������.
18:55 ���￪ ����(����)
19:10 ���￪ 1ȣ��
19:40 �븲�� ���� ==> �翺���� ����, ���� �ñ�(�����̰� ���� �뵷 16���� ����)
							==> �߸� �縻(10 �ӷ�): �븲�� ����
20:10 �������� ���� 
20:49 ������ ����(20:19, �������� -> �𱳿�, ����ȭȣ)
22:40 �𱳿� ����
23:00 �Ͱ�
23:20 ����
23:55 ��ħ
==============================================================================================================

������������������� 2018.11.19(��) �۾� ������������������� 
---> 07:00 ~ 20:30 ==> �̻�Ź ���� ��� �ٹ�

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- �����췯 ����Ͽ� Email ����
1. �����췯 ����(���� 8�ÿ� �ڵ� �̸��� ����) ==>  
 1) /service.xml
2. JAVA�ܿ��� �̸��� �߼� ��� ���� ==> �Ϸ� @@@
 1) /SendMailScheduleTaskService.java 
 2) /SendMailScheduleTaskService_02.java 
============================================================================================================== 
 
- ���̻翡�� ��� ��ȭ
1.  2018.11.21(��) 19�� ȸ�� �� ö��
2. ��¥ �ֱ�� �����ϴ� �����ٷ� �ȵ� ==> �����뿡 ���� ���� ��û  ==> �����뿡 ��ǥ�� ��ȭ �� �޴´ٰ� ��.
============================================================================================================== 
 
- ������ö_���̺� ���� db script �۾� ==> �Ϸ� @@@
1. HSSCF100_ȭ������ ==> �⺻ ����Ÿ �ʿ� @@@  ==> �Ϸ� @@@
============================================================================================================== 
 
- MySQL ���̺� �� ����Ÿ���̽� �̸� ��ҹ��� ���� ����(/my.ini)
0. show variables like 'lower_case_table_names'; 			
--  ���� 2�̸� �����쿡�� ���̺�� ��ҹ��ڸ� ����, 0�̸� ��ҹ��� ����, 1�̸� ��ҹ��� ���� ����

1. /my.ini ���Ͽ���) C:\Program Files\MariaDB 10.3\data)
[mysqld]
datadir=C:/Program Files/MariaDB 10.3/data
port=3306
innodb_buffer_pool_size=407M
character-set-server=utf8 
lower_case_table_names = 2	# ��������� ��ҹ��ڸ� �����Ͽ� ���̺���� ����.
 
- 0 : ���̺�� ��ҹ��� ���� (Linux)
- 1 : �Է°��� ������� ������ �ҹ��ڷ� �ν��Ͽ� ��ҹ��� ���о��� ��°��� (Windows)
- 2 : �����쿡�� ���̺�� ��ҹ��ڸ� ���� (Mac)
 
2. MySQL ���� �����
 1) Window �۾� ������(��â) > ����(Tab): MySQL: ���� ����(S): Ŭ�� ==> ���� ����(S): Ŭ��
============================================================================================================== 
 
������������������� 2018.11.20(ȭ) �۾� ������������������� 
---> 07:00 ~ 20:40 ==> �̻�Ź ���� ��� �ٹ�

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- �����췯 ����Ͽ� Email ����
1. �����췯 ����(���� 8�ÿ� �ڵ� �̸��� ����) ==>  �Ϸ� @@@
 1) /service.xml
2. �̻�Ź ������ �� �ҽ�(/fsp�����켳��.sql)�� �м��ؼ� ���� ó�� ��.
3. �߼۵� ���� ���� ���� ��û
 1) HTML ����(table ����)
============================================================================================================== 

-  91. ������ö APQMS_51(MariaDB ����)���� FN_QI_SEQ_GEN �Լ� ����
1. INSERT INTO HSBCD100() ����, RETURN �� �� ������ ��.(Function �Լ� ���� ȣ��)
/* �˻��ȣ �ڵ� ä�� ==> [/qi/QI_SteelPipeImpInsp_S07.xml] [2018.11.13, by ���¸�] ==> MySQL*/
SELECT FN_QI_SEQ_GEN('QM49014') IQC_NO FROM DUAL;

set V_RET_CODE = CONCAT(V_BASE_DATE, V_STEP, LPAD(V_SEQ, 4, 0));
RETURN V_RET_CODE;	 /* �� ���ν����� ������ ��� select�� result ���� ���ϵȴ�. */
============================================================================================================== 

-  91. ������ö APQMS_51(MariaDB ����) ����
1. DECLARE ����  ==> ��� ����.
 1) ���� ����: 
 You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the 
right syntax to use near 'DECLARE v_nCount  INT; 
  2) �ҽ�
	/* �˻��ȣ �ڵ� ä�� ==> [/qi/QI_SteelPipeImpInsp_S07_02.xml] [2018.11.13, by ���¸�] ==> MySQL*/ 	   
	BEGIN 
	
		DECLARE v_nCount  INT; 
	 
				SELECT COUNT(*) INTO v_nCount 
				FROM QMSMGR.HSBCD100	 	-- ������ ä�� ���� TB
     			WHERE 1=1
            		AND SEQ_CODE = 'QM49014'		-- ������ ���� ����
           			AND SEQ_DATE = DATE_FORMAT(now(), '%Y%m%d'); 		 -- �⺻ ��¥(���� ��¥)
           			 
	            IF v_nCount  = 0 THEN
			       INSERT INTO HSBCD100   	-- ������ ä�� ���� TB
			       ( 
						SEQ_CODE, 
						SEQ_DATE, 
						LAST_SEQ, 		-- ����������
						SEQ_NAME, 		-- ������������
						CID, 
						CDT, 
						MID, 
						MDT
					)
					VALUES
					(
					  'QM49014',			-- ������ ���� ����
					   DATE_FORMAT(now(), '%Y%m%d') ,					-- ����������
					   v_nCount +1,													-- ����������
					   '���� ���԰˻�',													-- ������������ 
					   'SYSTEM',														-- �����ID
						DATE_FORMAT(now(), '%Y%m%d%H%i%s'), 		-- �������
					  	'SYSTEM',														-- ������ID
					 	DATE_FORMAT(now(), '%Y%m%d%H%i%s') 		-- ��������
					);
		         END IF;
		         
	             IF v_nCount  = 1 THEN 
					UPDATE	  HSBCD100	-- ������ ä�� ���� TB
					SET LAST_SEQ = v_nCount, 													-- ����������
							MDT = DATE_FORMAT(now(), '%Y%m%d%H%i%s') 		-- ��������
             		WHERE 1=1
                 		AND SEQ_CODE = 'QM49014'		-- ������ ���� ����
           				AND SEQ_DATE = DATE_FORMAT(now(), '%Y%m%d'); 		 -- �⺻ ��¥(���� ��¥)
				END IF;		 
		END;
============================================================================================================== 
  
-- ����� PC MariaDB ���̺� ��� ���� @@@   ===> 165��
SELECT A.TABLE_NAME as "���̺��(������)", A.TABLE_COMMENT as "���̺��(����)", A.TABLE_ROWS as "���̺� row"
			-- , A.* 
FROM INFORMATION_SCHEMA.TABLES A 
WHERE 1=1
	AND A.TABLE_SCHEMA = 'qmsmgr' -- ���̺� ��Ű��
-- AND A.TABLE_NAME = 'hssch900'  -- ���̺��(������)

   --   AND A.TABLE_NAME = UPPER('HSBCA200') 	 -- ���̺��(������)  ==> HSBCA100, HSBCA200
ORDER BY A.TABLE_NAME
; 
============================================================================================================== 
  
- mysql ���ν��� ����� ��(30�� ���� ����)
1. dbForge Studio Express for MySQL(����) ��ġ ==> https://download.cnet.com/dbForge-Studio-Express-for-MySQL/3001-10254_4-10128038.html
3. dbForge Studio for MySQL, v8.0 Professional Trial ==> https://www.devart.com/dbforge/mysql/studio/download.html#anchorDowload 
============================================================================================================== 

- .NET Framework 4.5.2 �̻� ��ġ
1. .NET Framework 4.5.2 �ٿ�ε� �� ��ġ ==>  https://www.deploymaster.com/dotnetfx.html
============================================================================================================== 
   
������������������� 2018.11.21(��) �۾� ������������������� 
---> 07:00 ~ 20:30 ==> ���� �ް�(���� �ٸ� ����), �� ���� ��(�߽� �� �� ������ ����, ���� �� ���忡�� ����)

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- �����췯 ����Ͽ� Email ���� 
1. �߼۵� ���� ���� ���� ==> �Ϸ� @@@
 1) HTML ����(�Ұ� rowspan ó��)
============================================================================================================== 

- JSP ROWSPAN ��ġ�� 
1. ���̺�� ���� �����ٶ� 1��� 2���� ù��° ���� ���� ������ ������ rowspan���� �����ְ��� �Ҷ� 
------------------> -------------------
| AAA | ȫ�浿 |.. ->|         | ȫ�浿    |..
|---------------- ->| AAA  |------------
| AAA | ȫ�α� | . ->|         | ȫ�α�    |..
----------------- ->-------------------
<%
 
	if(infoArray.length > 0) // ��ȸ�� �����Ͱ� 1�� �̻��� ���
	{
		int iRowSpanCnt = 0;		// RowSpan ��
		boolean bRowspanYN = false;		// RowSpan ����

		for(int i=0 ; i < infoArray.length; i++)
		{ 
	%>
		<TR>
	<% 
			if( iRowSpanCnt == 0 )		// RowSpan ���� 0 �̸�
			{ 
			   iRowSpanCnt += 1; 	// iRowSpanCnt���� 1�� ���� 
			   
				for(int j = i+1; j < infoArray.length; j++ )
			   { 
					bRowspanYN = true; 	// ù°���� rowspan�� �ֵ� ���� �ش缿�� �׷���� �ϹǷ� 

					//���� �̸��� ���� row�� �� ���������� üũ
					if( infoArray[i].getTitle().equals( infoArray[j].getTitle() ) )
					{  
						iRowSpanCnt++; // iRowSpanCnt�� ���� 
					}else{ 
						break; 
					}	//end if  
				}	// end of for() ==> J 
			}//end if

			if( bRowspanYN ){	// rowspan�� ����
			%>
				  <TD rowspan="<%=iRowSpanCnt%>" align="left" width="190"><%=infoArray[i].getTitle()%>  </TD>
			<%
				}//end if
				
				bRowspanYN = false; 	// rowspan�� �����ߴٰ� �����ϰ� ���� row������ �ش缿�� �׸��� �ʵ���

				// iRowSpanCnt ���� 0�̸� �ش� row������ �������Ƿ� �ʱ�ȭ    
				if( --iRowSpanCnt == 0 )
				{ 
					bRowspanYN = true; 
				}	//end if
			%>
				<TD align="left" width="310"><%=infoArray[i].getKpiNm()%></TD> 
		%>
		</TR>
	<% 
		}		 // end of for() ==> I
	}	//end if	
%>  
==============================================================================================================
   
������������������� 2018.11.22(��) �۾� ������������������� 
---> 07:00 ~ 18:00 ==> ö��(18��), ȸ��(19:00 ~ 21:00)

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- �����췯 ����Ͽ� Email ���� 
1. �߼۵� ���� ���� ���� ==> �Ϸ� @@@
 1) HTML ����(2��° �Ұ� colsapn='2' ó��)
============================================================================================================== 

- �μ� �ΰ� ����
1. �ڷ� Ȯ�� 
--------------------------------------------------------------------------------------------------------------------------------

- �н����� 3���� ����
1. �α��� ȭ��(/commLogin.xfdl])����
 /* ����� ���� �������� ==> [sy:SY_UserInfoInq_S01.xml] [2018.06.18 by ���¸�] */ 
 SELECT M.USER_ID    				-- �����ID 
				, M.PWD_NEXT_CHG_YN           		-- ��й�ȣ ���� ���� ���� 
				, (CASE WHEN (M.PWD_NEXT_CHG_YN IS NULL AND M.PWD_CHG_DT IS NOT NULL 
				AND TO_CHAR(TO_DATE(M.PWD_CHG_DT), 'YYYYMMDD')
								<![CDATA[<]]> TO_CHAR(SYSDATE - 90, 'YYYYMMDD')) THEN 'Y' 		
								-- ��й�ȣ ���� ���� NULL, ��й�ȣ �������� ���� ��¥ - 90�� ���� ������ 
							WHEN (M.PWD_NEXT_CHG_YN IS NOT NULL AND M.PWD_CHG_DT IS NOT NULL 
							AND TO_CHAR(TO_DATE(M.PWD_CHG_DT), 'YYYYMMDD') 
								<![CDATA[<]]> TO_CHAR(SYSDATE - 30, 'YYYYMMDD')) THEN 'U' 		
								-- ��й�ȣ ���� ���� NOT NULL, ��й�ȣ �������� ���� ��¥ - 30�� ���� ������("������ ����") 
							ELSE 'N' END) AS PWD_CHG_DT_ELAP_YN	 	
							-- ��й�ȣ ������ ��� ����
				, (CASE WHEN (M.LOGIN_DT IS NOT NULL AND TO_CHAR(TO_DATE(M.LOGIN_DT), 'YYYYMMDD') 
								<![CDATA[<]]> TO_CHAR(SYSDATE - 30, 'YYYYMMDD')) THEN 'Y' 
							ELSE 'N' END) AS LOGIN_DT_ELAP_YN    			
							-- �α��� �õ��� ��� ����(������ 3���� �̻� ����� ������ ���ӱ��� ȸ��)  
FROM
FROM HSSCU100 A 	 -- ����ڵ�� ���� TB 

2. gds_session�� ����
<Dataset id="gds_session" useclientlayout="false">
	<Column id="PWD_CHG_DT_ELAP_YN" type="STRING" size="256" description="��й�ȣ ������ ��� ����"/>
<ColumnInfo>

3. APQMS.xadl ���Ͽ��� ����
/***********************************************************************
 * �Լ���  	: afn_popup_callback
 * ���� 		: �α��� �ݹ� �Լ� 
***********************************************************************/
this.afn_popup_callback = function(sid, rtn)
{
	trace("[/APQMS.xadl][afn_popup_callback()]==> [�α��� �ݹ� �Լ�][TEST_01][sid]"+ sid +"[rtn]"+ rtn ); 

	if(rtn) 
	{  	
		this.gfn_setPopPropile();		// ��й�ȣ ���� �˾� ó��
	}
}	

4. /lib_Util.x ���Ͽ���
/*****************************************************************************************
* ��  ��  �� : gfn_setPopPropile()
* ��   ��    : ��й�ȣ ���� �˾� ó�� 
*****************************************************************************************/    
this.gfn_setPopPropile = function()
{   
	if(application.gds_session.getRowCount() > 0)
	{ 
		if(application.gds_session.getColumn(0,"PWD_CHG_DT_ELAP_YN") == "Y"   
		// ��й�ȣ ������ ��� ���ΰ� '��й�ȣ �ֱ� ������(90��)'�� ��������
		==> ��й�ȣ ���� ȭ������ �̵�
			|| application.gds_session.getColumn(0,"PWD_CHG_DT_ELAP_YN") == "U") 
		// ��й�ȣ ������ ��� ���ΰ� '������ ����'�̰� ��й�ȣ �ֱ� ������(30��)�� �������� 
		==> ��й�ȣ ���� ȭ������ �̵�
		{ 
			//trace("[/lib_Util.xjs][gfn_setPopPropile()]==> [TEST_81]");
			application.av_topFrame.form.fn_popChgPwd();		// �������� �˾� ȣ��
		}
	}
}

/***********************************************************************
 * �Լ���  	: fn_popChgPwd
 * ���� 		: ��й�ȣ ���� �˾� �̺�Ʈ 
***********************************************************************/ 
this.fn_popChgPwd = function()
{  
	var sOption = "popupType=modal";		// �˾� Ÿ��
		sOption += ", showtitlebar=false";		// Ÿ��Ʋ�� ��� ���̱� ����(showtitlebar) 
		sOption += ", resizable=false";		// �˾� �������� ���� ���� 
		sOption += ", width=430";			// �˾� ����(width=800, width=1200) ==> top, left
		sOption += ", height=303";			// �˾� ����(height=500, height=900)  
 
	var sPopupUrl = "popup::pop_chgPwd.xfdl";		// �˾� Url(pop_chgPwd.xfdl:��й�ȣ ���� �˾� ȭ��)
 
	this.gfn_openPopup("frmTop", sPopupUrl, params, sOption, "fn_openpopCallback");   
}

4. ��й�ȣ ���� �˾�(/pop_chgPwd.xfdl)) ȭ�鿡�� ��й�ȣ ���� 
/* ����� ���� ���� ==> [cm:CM_UsrtMngm_U02.xml] [2018.08.30, by ���¸�] */ 
UPDATE HSSCU100
SET EMAIL= #EMAIL# 			-- �̸���  
		<isNotNull col="NEW_PWD"> 
			, PWD  = TRIM(#NEW_PWD#) 		-- ��ȣ(���ο� ��ȣ)
			, PWD_CHG_DT = TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS') 			-- ��й�ȣ ������ 
		</isNotNull>  
		, PWD_NEXT_CHG_YN = #PWD_NEXT_CHG_YN#				-- ��й�ȣ ���� ���� ���� 
		, PHONE = #PHONE# 				-- �ڵ���
		, SIGN_SEQ = #SIGN_SEQ# 		-- ���� SEQ
		, MID = #MID#						-- ������ID
		, MDT= TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS') 		-- ������
WHERE USER_ID  = #USER_ID#		-- �����ID  
==============================================================================================================

- ������ö Prj ö��(17��)
1. ö�� Ȯ�μ� �ۼ�(�̻�Ź ����)
2. �����, PC �ݳ�(������ ����)
3. ���� ����� �ڽ�
4. �ӽ� ������(�湮��) �ݳ� �� �ֹ��� ã��(����)
==============================================================================================================

- ������ö Prj ö��
05:00 ���
05:20 ����
05:30 ������(ħ��, ��Ʈ, ����)
06:20 �Ӽ� ���
07:00 ���(�ɿ����� 1����)
07:05 ����
07:30 �߼۵� ���� ���� ���� ==> HTML ����(2��° �Ұ� colsapn='2' ó��)
12:00 �߽�
12:20 ���� 
12:40 ���� 
13:30 �߼۵� ���� ���� ���� ==> HTML ����(2��° �Ұ� colsapn='2' ó��)
15:00 �̻�Ź �������н����� 3���� ���� ���� �ش޶�� �ؼ� ȭ��.
16:30 ���̻�, ������ ���� ����
17:00 �� �߼۵� ���� ���� ���� �Ϸ�, ���� ����, � ������ ����
17:30 ����
17:40 ������(�����)
18:00 �����(���� ������): ������, �̻�Ź ����, ���� ����
19:10 ���ҿ� ���� ������
20:10 ���� ��� ==> ���̻�(����), ������ ����
20:40 ���� ��ӵ��� ��ó���� �� ������ ���� ��ó ���� ������ �ɷ��� ����(��� �� �� ��)
20:55 ��� ����(���̻簡 ��: 2�� 5õ��: �� ���� ���� ����)
21:20 �ż� �ް���(�����: ����)
22:00 ����A ����
22:10 ����õ(�߰� ����)
23:00 �Ͱ�
23:20 ��ħ
==============================================================================================================

- ö���� �̻���
1. ö���Ͽ� ������ �� ��
 1) ��(����, �縻, �ӿ�: ����)
 2) �̺�(ħ��, ��Ʈ, ����: ����) 
 3) �������� ������(����)
 4) ��Ʈ��(����)
 5) ����� ����(����, �����[���濡 ���� ��])
 6) ���̽� ����(����)
 7) �� �����(�����) 
---------------------------------------------------------------------------------------------------------------------------

- ö���� �̻��� @@@
1. ����� ĳ����(28��ġ, ������ �и��͸�)
 1) �̺�(ħ��, ��Ʈ, ����)  
 2) ��Ź ���� 
---------------------------------------------------------------------------------

2. ����
 1) ��(����, �縻, �ӿ�)
---------------------------------------------------------------------------------

3. ����(hp)
 1) ��Ʈ��
 2) ����� ����(����, �����) 
---------------------------------------------------------------------------------

4. ��Ÿ
 1) ���̽� ����(����)
 2) �� �����(�����) ==> ���̻� ���� ����(������ ȸ�翡 ���� �شٰ� ��)
==============================================================================================================

������������������� 2018.11.23(��) �۾� �������������������
---> 06:20 ~ 23:00 ==> ü��: 64.6kg(���� ü��)  

- �ް�
07:00 ���
07:30 ����
08:30 �����(������): ����
08:35 �뵿�� ��ġ��: ����
08:45 �Ͱ�
08:50 �����
09:00 ����õ�� ����
09:40 �񵿱� ����
10:10 �޽�(������� ��ġ: 20��)
10:50 �ٷ� �(�븲�� ����õ�� � �ⱸ)
		==> Ǯ����Ʈ(TM12-01): ��� � , ���� ������(TM12-05): ����� �
11:00 �Ͱ�
12:00 �߽�
14:00 �߽� �� ���� ���� ����(1612mg/dl ����)
14:05 �����(������)
14:25 ��Ȱ� ����
14:30 ���� Ȯ��(1�� �ȳ� ����ũ)
14:40 6�� �ȳ� ����ũ(����) ==> ���� �Ȱ� �˻� ==> ����: 114/74��Hg, �ƹڼ�: 105bpm		
15:20 ����(��±� ����, 6�� 61ȣ) ==> �� ������: 63,800�� ����(�Ǻ� ���� ���� ���: 2���� ���Ե�)
		--> �����ֺ��� 2�� ���� ������ ���� ���ڰ� ��.  �÷�: 0.4, 0.5 �Ȱ� ���� ����(�� ���� ���ٰ� ��)
15:30 ����
16:00 �뵿�� ��ġ��: ���� ������ ��,
16:30 �Ͱ�(��, �峭�� ������ ��)
16:40 �����(������)
17:00 ���ﰡ�����а��ǿ� �湮(���� �� ����)
17:10 ����(���� �񰨱��: ���̾ȳ����౹)  
17:20 ���� ����(����)
18:20 ����  
18:30 ����(ġ��, �����): ����
19:00 �Ͱ�
20:40 ��ħ
==============================================================================================================

������������������� 2018.11.24(��) �۾� �������������������
---> 06:20 ~ 23:00 ==> ù ��, ü��: 66.6kg(�� ü��)

- �ָ�
07:00 ���
07:30 ����
08:00 �����: ����
08:20 ����õ��(�����̰� ����� ����)
08:50 �Ͱ�
09:00 �޽�
12:00 �߽�
13:00 ���߹�
13:10 ����� ����(����) 
13:40 ����
16:30 ����  
17:00 ġŲ(���߰�): ���� ����ũ(����)
18:30 �Ͱ� 
18:50 ����(ġŲ) 
19:20 ��� ������(����Ʈ 18�� ��� ���� ����) 
20:20 ��ħ
==============================================================================================================
  
������������������� 2018.11.25(��) �۾� �������������������
---> 06:20 ~ 23:00 ==> ü��: 67kg(�� ü��)

- �ָ�2
06:00 ���
06:30 ����
07:00 ���ͳ� ����
08:00 �����
08:10 ����õ�� ����
09:00 �񵿱� ����
09:30 �޽�(������� ��ġ: 20��)
10:00 �ٷ� �(�븲�� ����õ�� � �ⱸ)
		==> Ǯ����Ʈ(TM12-01): ��� � , ���� ������(TM12-05): ����� �
10:20 �Ͱ�   
12:00 �߽�
12:30 ���ͳ� ����
14:00 ��� ������(����Ʈ 18�� ��� ���� ����) 
14:30 �����
14:50 �븲���
15:10 �౸ ����(������ȸ��: ��︲��) ==> 5���� ��: ����� �ణ ������. �ణ �ǰ�
18:00 ����
18:25 �Ͱ� 
18:30 ����
18:50 ���� 
19:20 ��� ������(����Ʈ 18�� ��� ���� ����) 
19:45 ���ͳ� ����
23:00 ��ħ 
==============================================================================================================
 
- 44. ������� ��ø_2018.11.xlsx ���Ͽ��� ���� ����(���� ���� ����)
A. Ȩ > ���Ǻ� ���� > ��Ģ����(R) > ���Ǻ� ���� ��Ģ ������(��â)
1. �� ��Ģ(N): ������ ����Ͽ� ������ ������ �� ����: Ŭ��
 1) ���� ������ ���� ���� ���� ����(O): =$C9>120 
   --> ����(F): ���� ���� ==> Ȯ��: Ŭ��
 2) ���� ��� ==> =$C$9:$C$91
------------------------------------------------------------------------------

B. Ȩ > ���Ǻ� ���� > ��Ģ����(R) > ���Ǻ� ���� ��Ģ ������(��â) 
1. �� ��Ģ(N): ������ �����ϴ� ���� ���� ����: Ŭ��
 1) ������ �����ϴ� ���� ���� ����(O): ����: ���� >==120
����(F): ���� ����
   --> ����(F): ���� ���� ==> Ȯ��: Ŭ��
 2) ���� ��� ==> =$C$9:$C$91
==============================================================================================================

������������������� 2018.11.26(��) �۾� ������������������� 
---> 09:10 ~ 15:30 ==> ���� ����

- ���� ���[��]
- �����췯 ����Ͽ� Email ���� 
1. ������ ����[(��)�����̵���Ÿ ����] 
============================================================================================================== 

- 2018�� 10 ~ 11�� ������Ǽ� �ۼ�(13��, ȸ��)
1. 2018.10 ~ 11���� ���� �հ� �ݾ�:  202,100��
2. ����ؼ� �渮(������ �븮)���� �����Ұ�	
============================================================================================================== 

- �Ｚ ������ ��Ƽ ȸ�� ����
1. https://www.sdigitalcity.com ==> tamario2/hptnwhd160 	
2. ȸ�� ����
 1) ��ü��: �񿡳׽� ����Ʈ, 1208602209, �ڻ�ȣ
3. �Ｚ ������ ��Ƽ �湮 ���� ==> �񿡳׽� ����Ʈ���� �Ѵٰ� ��.
==============================================================================================================

- �ν��� ���� ���� ��ȭ(T: 1544-8454)
1. ġ���: 220����(�Կ��� ���� 300���� ����)
2. �Կ�: 2��
3. �߰� ���: �� �޿� 4 ~ 5���� �ҿ�
----------------------------------------------------------------------------------------------------------------------

- �ּ��� ���� ���� ����(13:00, ���� �Ǵ뺴��) 
1. �Ͻ�: 2018�� 11�� 27��(ȭ) 13��
2. �⺻ �˻� ==> ����
==============================================================================================================

- �ް�
09:10 ���
11:30 �߽�(�̼��� ������ ��, ������ ����, ���¹� �̻�)
12:00 ����(����, ����)
13:00 �ͻ�
15:30 ���
16:00 ������ ���� ������ ==> 6411�� ž��
17:30 �Ͱ�
17:35 �����(������)
17:45 �뵿�� ��ġ��: ���� ������ ��. 
18:00 ���ﰡ�����а��ǿ� �湮(���� �� ����)
18:10 ����(���� �񰨱��: ���̾ȳ����౹)  
18:20 ���� ����(����)
19:00 ����  
19:10 ����(ġ��, �����): ����
19:30 �Ͱ�
20:40 ��ħ
==============================================================================================================

������������������� 2018.11.27(ȭ) �۾� ������������������� 
---> 09:10 ~ 15:30 ==> 

- ���� ����
06:00 ���
06:30 ����
07:00 �����
07:20 ����(�ŵ����� 2�� �ⱸ) 
08:00 �Ͱ�   
08:45 �����
08:56 �븲�� ������(6411�� ���� ž��)
09:50 �����͹̳�
10:00 ������ ��ӹ��� ž��
11:50 ���� �͹̳� ���� 
12:10 ����(CU ������, ��� ��� ��ġ ����2 ���ö�, ����: 3,800��)
12:30 ���� �Ǳ����б� ���� ����
13:00 2�� ����ó ==> 13�� ������ �ȵǾ� �ִٰ� ��.
13:10 ���к�� ==> ���� �˻�(�� �˻�, ���� �˻�)
16:10 �ּ��� ���� ���� ==> �索 ���������� ���� �� �ص� �ȴٰ� ��(�ν��� ���� ġ�Ḧ �ϸ� ���� ���� ���ٰ� ��)
		==> ������ ������(12/3) �Կ��ϱ�� ����.		==> �索 ������: 5.7% ����.(�����)
16:20 ����(���к���, 2��ġ ��, �ν���), �˻� ����� ���� �߱�(������ 2õ��)
16:30 ���� ==> ����ȣ �系������ ��ȭ ��(������ ������ ���� �͹̳η� �¿췯 �´ٰ� ��)
16:35 ����
16:55 ���� �͹̳� ���� 
17:05 ���� ���
19:02 �����͹̳� ����
20:10 �Ͱ�
20:15 ����
23:00 ��ħ 
==============================================================================================================
 
- �ν��� ���� ġ�� ���
1. ���� �Ǳ����б� ����
? ��ȭ : 043-845-2129
? �ּ�: ��� ���ֽ� ������� 82

2. ����ȣ �系��(��. �Ǳ��� ���� �索����)
? ��ȭ : 043-853-0995
? �ּ�: ��� ���ֽ� ����� 342 

3. ���� ���� ���ǿ�
? ��ȭ : 02-575-8222
? �ּ�: ����Ư���� ������ ���μ�ȯ�� 2725 
==============================================================================================================    
 
- Maria DB �ٿ�ε� �� ��ġ
1. MariaDB 10.3.11 Stable(2018-10-04), mariadb-10.3.11-winx64.msi �ٿ�ε� ==> https://downloads.mariadb.org/mariadb/10.3.11/
 1) root pwd: 1212, port: 3306
 2) Use UTF8 as default server's character set: üũ 
 3) Install as service ==> Service Name: MySQL
 4) nable networking ==> TCP port: 3306
============================================================================================================== 

- MariaDB, Mysql DB Dump export & import ���
1. mysql/mariaDB ��ü �����ͺ��̽� ����ϱ�
$ mysqldump -uroot -p -A > [File Name].sql  

Microsoft Windows [Version 6.1.7601]
Copyright (c) 2009 Microsoft Corporation. All rights reserved.
C:\Users\Administrator> cd C:\Program Files\MariaDB 10.3\bin 
C:\Program Files\MariaDB 10.3\bin> mysqldump -uapqms -papqms12 -A > 00_backup_testDB.sql
==>  C:\Program Files\MariaDB 10.3\bin\00_backup_testDB.sql ������ ������.
------------------------------------------------------------------------------------------------

5. mysql/mariaDB ������� �����ϱ� 
$ mysql -uroot -p < backup_testDB.sql

C:\Users\Administrator> mysql -uapqms -papqms12  -data QMSMGR< 00_backup_testDB.sql
==>  C:\Program Files\MariaDB 10.3\bin\00_backup_testDB.sql ������ database QMSMGR�� ������.
-- ======================================================================================================

������������������� 2018.11.28(��) �۾� ������������������� 
---> 09:00 ~ 21:00 ==> �Ｚ���� WatchQ Prj ù ���(09:00): ������ ���� ����, (��)�񿡳׽�  ��ȯ�� �� ����

- RMA �̻��� ���� �� ����� Localization Tool ���� Prj[��] 
- ����� ����(����ö �̿��) ==> �ＺSDS ��Ȱ���� ����1��
1. ����A -> �븲��(4-2) > �ŵ�����(8-1) > ������(4-4) > ������(5�� �ⱸ) -> 2���� ����1��(��Ȱ���� �����) 
==> 1,850��[1�ð� 20�� ����] --> �����: ��������� ��Ȱ���� ����1�� 3�� ������
==============================================================================================================    

- Watch Q ����
1. ����ȯ ����(BS Net ����, ������)
 1) java, DB(���ǽ�: PostgreSQL[����Ʈ �׷���] DB ����Ŭ DB ȣȯ ��): Mybatis
 2) SN �̷� ��ȸ(4�� Tab) ==> Data Display: ���� �̹��ֱ��� �Ϸ� ��û
==============================================================================================================    

- ȸ��(10:00 ~ 10:30)
1. SDS �ڰ�� ����(PM), SDS ������ å��(� å����)
2. Data ���� ����
 1) �缳ġ Data ���� ����
  ��. inventory --> log --> SN �ľ� ����[���� ���� �����]
 2) �ʱ� ��ġ, RMA
-----------------------------------------------------------------------------------------------------------------------------

3. �Ｚ���� ��
 1) ��ȫ�� ����, ȫ���� ����
==============================================================================================================    

- ��Ʈ��, ����� ���� Ȯ����
1. ��Ʈ�� ==> ��Ʈ�� ��Ʈ ���� ����(ö���� �� �������� ��Ʈ ���� ���� ���� �ۼ��� ��: ���� ������ ����)
 1) �ø��� ��ȣ(S/N): NKN850HJY007B00572
 2) ������ȣ: GIGABYTE SABRE 15  
---------------------------------------------------------------------------------
2. �����
 1) �ø��� ��ȣ(S/N): CN-0NJRO1-QDC00-7CP-4KAU-AO2 
============================================================================================================== 

- �Ｚ���� Prj IP �ּ� ����(IP ����) @@@@
1. IP �ּ�: 10.240.229.248
2. S/M: 255.255.255.0
3. GW: 10.240.229.1
4. �⺻ DNS: 10.32.192.11, ���� DNS: 10.32.193.11 
---------------------------------------------------------------------------------

-��Ʈ��ũ ����
1. \\10.240.151.89\Watchq_2018�̻�������, SEC / dlfdltka!23
-��Ʈ��ũ ����2
1, \\10.240.151.89\Watchq_�μ��ΰ�, SEC / dlfdltka!23
==============================================================================================================    
 
- ������ ����Ʈ���� �ٿ�ε� ==> http://165.213.118.100:5055/
1. [64bit] ESCORT ��ġ����
 1) ESCORT_v5.17(64bit)_SEC_Suwon-2018.10.30.0.exe 
2. [64bit] NASCA SD ��ġ����
 1) NASCA+SD_SEC_Suwon_5.00_2017091404_64.exe 
3. [ �Ϲ� / ���Ͻ�(Proxy) ]
 1) DigitalCity ���Ͻ� ���� ���� (�������ڵ���ġ)
4. ������ġ�� / SecuPrint(�����Ǹ���) ] 
 1) secuprint_client3264_653_2017-08-17_SAMSUNGELEC.exe  ==> ���� �н�����: tjdghkdi!021[��ȭ��@021]
5. [ �Ϲ� / ��� ] 
 1) [PC��]��� V3 9.0 ��ġ����
==============================================================================================================    
 
- WatchQ  ���� ȯ�� ����
II. ���� ���� ȯ�� ��ġ
1. JDK ��ġ
 1) 80-windows-i586.exe
2. STS(Eclipse Integrated Development Environment) ��ġ
 1) STS �ٿ�ε� ==> http://sdp.sec.samsung.net
3. TOMCAT ��ġ
 1) Tomcat 7�̻� �ٿ�ε� ==> http://tomcat.apache.org/download-60.cgi
4. SVN ��ġ
 1) �ٿ�ε� ==> https://tortoisesvn.net/downloads.html
 2) SVN ��ġ
     TortoiseSVN-1.X.X.X-XXX.exe
     LanguagePack_1.X.X.X-XXX-ko.exe
5. Dbeaver ��ġ
 1) �ٿ�ε�==> https://dbeaver.jkiss.org/    
 
II. ���� ���� ȯ�� ����
1. Eclipse �����ϱ�   
 1.1 Eclipse ����
  1.1.1 D:\SDP-3.0.0\eclipse-4.3.2\eclipse.exe�� ������ Eclipse�� ����
 1.2 ������Ʈ check out
  1.2.1. check out wizard â�� �����Ѵ�. 
  1.2.2. SVN Url ���� �� check out �� ���� ==> https://10.240.151.89/svn/WatchQ/trunk, 
  1.2.3. SVN Repositories �� ������ Project �� ���÷� check out �Ѵ�.
  1.2.4 ���� workspace �� WatchQ ������Ʈ�� �������� Ȯ���Ѵ�.
 1.3. JDK ����
   1.3.1. ���ÿ�  ��ġ�� Java Complier ������ �����Ѵ�. 
 1.4 Server ����
  1.4.1. Preference wizard â�� �����Ѵ�. 
  1.4.2. ��ġ�� Tomcat ������ �����Ѵ�.
  1.4.3. Tomcat directory ���� ��, Tomcat server�� �߰����� Ȯ�� ==> D:\SDP-3.0.0\apache-tomcat-7.0.81
 1.5 Server ����
  1.5.1. Server �߰� wizard�� �����Ѵ�.
  1.5.2. �߰��� Server ��,  WatchQ ������Ʈ�� ������ �� �ֵ��� �����Ѵ�
  1.5.3. Servers View�� Server�� �������� Ȯ���� ��,  ���� Ŭ���Ͽ� Timeouts ���� start �ð� �����Ѵ�. 
  1.5.4. Servers View�� Server�� �������� Ȯ���� ��,  ���� Ŭ���Ͽ� Timeouts ���� start �ð� �����Ѵ�. 
  1.5.5. Servers View ���� Start��ư�� Ŭ���� ���� �⵿���� Ȯ���Ѵ�.   
2. ���� ȭ�� Ȯ��
  1) Web Browser �ּ�â�� [http://localhost:8080/Watchq]�� �Է��ϸ� �Ʒ��� ���� Watch-Q Main ȭ���� �� �� �ִ�.
----------------------------------------------------------------------------------------------------------------------
 
3. DBeaver �����ϱ�
  3.1 DBeaver ����[���� ����]: DB ����
Host : 10.40.86.185/5447
Database : WatchQDEV
User : watchq/watchq#12345
===================================================================================================    

- org.eclipse.jdt.core.prefs ���Ͽ���
org.eclipse.jdt.core.compiler.codegen.targetPlatform=1.6
==> org.eclipse.jdt.core.compiler.codegen.targetPlatform=1.7
===================================================================================================    

- WatchQ eclipse����
1. C:\WatchQ
 1) C:\WatchQ\eclipse-4.3.2
 2) C:\WatchQ\workspac
 3) C:\WatchQ\apache-tomcat-7.0.81
===================================================================================================    

������������������� 2018.11.29(��) �۾� ������������������� 
---> 08:00 ~ 21:00 ==> ��Ʈ�� �ð� ��ġ, ���콺 �嵥��(4��) ������ ������.

- RMA �̻��� ���� �� ����� Localization Tool ���� Prj[��] 
- WatchQ �ҽ� �м�
System.out.println("[/ti10300Controller.java] [selectTiBlSave()] ==> [TEST]" ); 
out.println("[/ti10300Controller.java] [selectTiBlSave()] ==> [TEST]" ); 

1. RMA List ȭ�� ȣ��
http://localhost:8080/Watchq/Watchq/rma/rma/rmaList.do?_menuId=AVFyHyh6AD0oVkKX&_menuF=true

2. /RmaController.java ���Ͽ���
@RequestMapping("/Watchq/rma/rma/rmaList.do")
public String WatchqRmaList(@ModelAttribute("search") RmaCommon searchVO, Model model, HttpServletRequest request) throws Exception {
	
	Calendar cal = Calendar.getInstance();
	Date endDate = cal.getTime();
	cal.add(cal.MONTH, -1);
	Date startDate = cal.getTime();
	SimpleDateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");
	
	if(CommonUtil.isEmpty(searchVO.getStartDate()) || CommonUtil.isEmpty(searchVO.getEndDate())){
		searchVO.setStartDate(fmt.format(startDate));
		searchVO.setEndDate(fmt.format(endDate));
	}
	
	List<WatchqCommon> period = WatchqCommonService.getPeriodList();
	
	String userId = Identity.currentUser().getUserId();				//�������� ID							
	String compCode = Identity.currentUser().getCompCode();			//�������� ȸ���ڵ�
	String currentLocale = languageService.getCurrentLanguage();	//������
	 
	String actionType = WatchqCommonService.checkRole(userId, new String[]{"SYSTEM_ADMIN", "R_EXTERNAL"}) ? "ALL" :"REP";	//�����μ� ����
		
	searchVO.setUserId(userId);									
	searchVO.setCompCode(compCode);								
	searchVO.setCurrentLocale(currentLocale);	
	searchVO.setActionType(actionType);
	
	List<CommCode> pageSize = commonCodeService.codeListByLang("PAGESIZE");					//������ ������ ���
	List<CommCode> rmaStList = commonCodeService.codeListByLang("R01");						//RMA Status �ڵ�
	List<CommCode> rmaDtList = commonCodeService.codeListByLang("R08");						//RMA Status ��¥ ���
	List<WatchqCommon> repVndrList = WatchqCommonService.getAuthRepairVendorList(searchVO);	//���Ѻ� ������ü ���
	
	List<CommCode> countryList = WatchqCommonService.getAuthCountryList(searchVO);			//�����ڵ�
	List<WatchqCommon> customerList = new ArrayList<WatchqCommon>();
	if(null != countryList && countryList.size() > 0){
		if(null == searchVO.getNationCode()){
			searchVO.setNationCode(countryList.get(0).getCode());
		}
		
		customerList = WatchqCommonService.getAuthCustomerList(searchVO);
	}
	if(null == searchVO.getCustCode() && null != customerList && customerList.size() > 0){
		searchVO.setCustCode(customerList.get(0).getCustCode());
	}
	
	List<SdpBoardCommu> boardCommus = sdpBoardCommuService.getPopupList();

	model.addAttribute("boardCommus", boardCommus);
	model.addAttribute("languageService", languageService);
	
	//Product Category ��� ����
	setProdCategoryList(searchVO, model);
		
	model.addAttribute("pageSize", pageSize);
	model.addAttribute("rmaStList", rmaStList);
	model.addAttribute("rmaDtList", rmaDtList);
	model.addAttribute("period", period);
	model.addAttribute("repVndrList", repVndrList);
	model.addAttribute("countryList", countryList);
	model.addAttribute("customerList", customerList);
	model.addAttribute("search", searchVO);
	
	return "Watchq/rma/rma/rmaList"; 
}

3. /rmaList.jsp ���Ͽ���  ==> S/N: S2L3208977�� ��ȸ @@@
<script type="text/javascript">
/**
* RMA ��� �ű� ��ȸ�� Paging �ʱ�ȭ
*/
function initSearch(searchType){
	if($("#rmaForm input[name='pageIndex']").length > 0){
		$("#rmaForm input[name='pageIndex']").val("1");
	}
	searchRma(searchType);
}

/**
* RMA ��� ��ȸ
*/
function searchRma(searchType){

	var url = contextPath + "/Watchq/rma/rma/getRmaList.do?_jsp=true";  	// RMA ��� ��ȸ
	$.ajax({ 
		type: "POST", 
		url: url,
		data: searchData,
		dataType: "html",
		success: function(data){
			$("#listBody").html(getExprAjaxData(data));
		} ,
		error:function (request, err, ex) { 
		}
	});
}
</script>

[�� ��ȸ ��ư]<a href="javascript:initSearch('Q');">
<img src="${contextPath}/images/button/btn_quicksearch.png" style="margin" width="100" height="21" /></a>

4. /RmaController.java ���Ͽ���
@RequestMapping("/Watchq/rma/rma/getRmaList.do")
public String getRmaList(@ModelAttribute("search") RmaCommon search, Model model) throws Exception {
	
	search.setUserId(Identity.currentUser().getUserId());		// �������� ID
	search.setCompCode(Identity.currentUser().getCompCode());			/ /�������� ȸ���ڵ�
	search.setCurrentLocale(languageService.getCurrentLanguage());		// ������
	
	if("Q".equals(search.getSearchType())) {		// Quick Search�� ��� ���ѳ� Customer RMA ��ü ��ȸ (2018-01-11 ldh7262.lee) 
		RmaCommon quickSearch = new RmaCommon();
		quickSearch.setUserId(Identity.currentUser().getUserId());
		quickSearch.setCurrentLocale(languageService.getCurrentLanguage());
		
		List<WatchqCommon> customerList = WatchqCommonService.getAuthCustomerList(quickSearch);		// RMA ��� ��ȸ
		String[] chks = new String[customerList.size()];
		
		for(int i=0 ; i < customerList.size() ; i++ ) {
			chks[i] = customerList.get(i).getCustCode();
		} // end for
		
		search.setChks(chks); 
	}
	
	List<RmaCommon> rmaList = rmaService.getRmaList(search);	// RMA ���
	
	model.addAttribute("rmaList", rmaList);
	model.addAttribute("size", rmaList == null ? "0" : rmaList.size());
	
	return "Watchq/rma/rma/rmaListAjax";
}

5. /mapper-mybatis-WatchqCommon.xml ���Ͽ���
<select id="selectAuthCustomerList" parameterType="WatchqCommon" resultMap="customerListResult">
	/* RMA ��� ��ȸ ==> [selectAuthCustomerList/mapper-mybatis-WatchqCommon.xml] [2018.11.29, by ���¸�] */ 
	SELECT *
	  FROM (
			SELECT C.CUST_CD, C.${currentLocale}_NM CUST_NAME, C.NAT_CD, CD.${currentLocale}_LABEL NATION_NM,
				   DECODE(CD.CODE, 'KR' , '#01', 'US' , '#02', 'JP' , '#03', 'IN' , '#04', 'GB' , '#05', 'RU' , '#06', CD.${currentLocale}_LABEL) NAT_ORD,
				   DECODE(C.CUST_CD, 'SKT', '#01', 'KT', '#02', 'LGT', '#03', C.${currentLocale}_NM) CUST_ORD
			FROM TN_CM_CUST C, TC_CF_COMM_CODE CD, TN_CM_USER_CUST_AUTH A
			<trim prefix="WHERE" prefixOverrides="AND|OR">
				AND C.NAT_CD = CD.CODE
				AND C.USE_YN = 'Y'
				AND CD.COMM_CODE_TYPE_CODE = '08'
				AND CD.DELETE_YN = 0
				AND C.CUST_CD = A.CUST_CD	
				AND A.USE_YN = 'Y'
				<if test="@SDPComparator@isNotEmpty(nationCode)">
					AND C.NAT_CD = #{nationCode}
				</if>
				<if test="@SDPComparator@isNotEmpty(custName)">
					AND LOWER(C.${currentLocale}_NM) LIKE '%'||LOWER(#{custName})||'%'
				</if>
				<if test="@SDPComparator@isNotEmpty(userId)">
					AND A.USER_ID = #{userId}
				</if>
			</trim>
		  )
	ORDER BY NAT_ORD, CUST_ORD
</select>

==============================================================================================================    

- 70. WatchQ[����]
1. localhost:8080/Watchq/identity/anonymous/loginPage.do?_frameF=true, tamario2/samsung123
 1) http://localhost:8080/Watchq, tamario2/samsung123
 
- 71. WatchQ[����S]
1. 10.40.86.210:8240/Watchq/identity/anonymous/loginPage.do?_frameF=true, tamario2/samsung123
 1) 10.40.86.210:8240/Watchq, tamario2/samsung123
==============================================================================================================    

-- PostgreSQL DB���� ���̺�/�÷� ���� ��ȸ
-- ���̺� COMMENT ��ȸ @@@
SELECT UPPER(PS.RELNAME) AS "���̺��(PHYSICAL)", PD.DESCRIPTION AS "���̺��(LOGICAL)"
FROM PG_STAT_USER_TABLES PS, PG_DESCRIPTION PD
WHERE LOWER(PS.RELNAME) = LOWER('TN_CM_CUST') 	 -- ���̺��
	AND PS.RELID = PD.OBJOID
	AND PD.OBJSUBID = 0
; 
----------------------------------------------------------------------------------------- 

-- ���̺�, Į�� COMMENT ��ȸ @@@
SELECT UPPER(PS.RELNAME) AS "���̺��(PHYSICAL)"
			, (SELECT PD.DESCRIPTION AS "���̺��(LOGICAL)"
				FROM PG_STAT_USER_TABLES PS, PG_DESCRIPTION PD
				WHERE LOWER(PS.RELNAME) = LOWER('TN_CM_CUST') 	 -- ���̺��
					AND PS.RELID = PD.OBJOID
					AND PD.OBJSUBID = 0
					AND ROWNUM < 2
					)  AS "���̺��(PHYSICAL)" 
			, PA.ATTNAME AS "Į����(PHYSICAL)", PD.DESCRIPTION AS "Į����(LOGICAL)"
FROM PG_STAT_ALL_TABLES PS, PG_DESCRIPTION PD, PG_ATTRIBUTE PA
WHERE PS.SCHEMANAME = (SELECT SCHEMANAME
												FROM PG_STAT_USER_TABLES
												WHERE LOWER(RELNAME) = LOWER('TN_CM_CUST') -- ���̺��
											)	  
	AND LOWER(PS.RELNAME)  = LOWER('TN_CM_CUST') 	 -- ���̺�
	AND PS.RELID = PD.OBJOID
	AND PD.OBJSUBID <> 0
	AND PD.OBJOID = PA.ATTRELID
	AND PD.OBJSUBID = PA.ATTNUM
ORDER BY PS.RELNAME, PD.OBJSUBID
; 
==============================================================================================================

- ǥ��ȭ�� SQL���� �����ϴ� ��� (SQL Formatter)
http://www.gurubee.net/lecture/2728 
A. SQL Formatter ����
1. Standard Formatting
 1) Indent: \t						2) Indent Width: 4
 3) Max Width: 999			
 4) Statement  Breaks:2		
 5) Clause  Breaks: 1
2. Expand Comma Lists: üũ  --> �Ʒ� 4, 5�� �̿��� �ٸ� �׸��� ��� üũ �� ��.
 1) Space After Comma: üũ
4. Uppercase Keyword: üũ[�빮�� ����]
5. Enable Coloringd: üũ[���� �� ����]
==============================================================================================================
  
- KNOX Portal ��ġ �� ȸ�� ����
1. www.samsung.net/portal/default.jsp?mode=logout, taeman.jin[�̱� ���̵�] /h*��*1601@
 1) �����ڵ�: C60BB591, TAEMAN JIN
 2) KNOX �޽��� ��ġ
-----------------------------------------------------------------------------------------------------------------------------

- ��Ʈ�ʻ� ���� Portal System ȸ�� ����
1. https://www.smart-together.com:2016/srm/, tamario2/h*��*1601@
==============================================================================================================
    
- ��Ʈ�ʻ� ���� �� �̷¼� ���
1. ���̹����� ����Ʈ���Դ���� �˻�
2. https://www.smart-together.com:2016/srm/
============================================================================================================== 
 
/* TopMenu ��ȸ ==> [selectUsedMenuInfo/mapper-mybatis-menu.xml] [2018.11.29, by ���¸�] */ 
SELECT A.MENU_ID, A.KO_LABEL, A.EN_LABEL, A.LABEL, A.MENU_URL 
			, A.MENU_SEQUENCE, A.USE_YN, B.UPPER_SYS_RESOURCE_ID 
			, B.SYS_ID, B.SYS_RESOURCE_TYPE_CODE_ID 
			, B.DESCRIPTION, A.MENU_IMAGE_URL, A.POPUP_VERTICAL_LENGTH, A.POPUP_WIDTH_LENGTH 
			, A.MENU_LEVEL, A.MENU_TYPE_CODE_ID
			, A.MENU_USE_PERIOD_CODE, A.ONCLICK, A.MENU_KEY, A.LAYOUT 
FROM TN_CF_MENU A INNER JOIN TN_CF_SYS_RESOURCE B 
	ON A.MENU_ID = B.SYS_RESOURCE_ID 
WHERE A.MENU_LEVEL = 1 AND A.USE_YN = true AND (A.DELETE_YN IS NULL OR 
	A.DELETE_YN != true) 
ORDER BY A.MENU_SEQUENCE ASC
; 
==============================================================================================================

- 70. SN �̷���ȸ ����
1. http://localhost:8080/watchq/watchq/report/rmaInfo/rmaInfoInitList.do?_menuId=AWYZzTn6JH4oVtyM&_menuF=true
  1) rmaInfo.jsp ==> 4���� ��
   ��. Basic Info ��ȸ
   ��. T_01. ����/�����̷�, T_02. ��ġ/����̷�, T_03. RMA �̷�, T_04. ��� �̷�
==============================================================================================================    

-- ������ ���� ��ȸ @@@  ==>
SELECT  P.* 
FROM TN_CF_PAGE P     -- ������ ���� TB
WHERE 1 = 1
	AND (P.PAGE_URL LIKE '/watchq/rma/rma/getRmaList.do' || '%')		-- ������URL ==> ����Ÿ ����
	AND (P.PAGE_URL LIKE '/watchq/rma/rma/getSNHistInfo.do' || '%')		-- ������URL ==> ����Ÿ �� ����
; 
-- ==============================================================================================================    

������������������� 2018.11.30(��) �۾� ������������������� 
---> 08:00 ~ 21:00 ==> �索 �Կ� ����(12�� 3��(��) --> 12�� 17��(��), �ۼ����� ��û) 

- RMA �̻��� ���� �� ����� Localization Tool ���� Prj[��] 
- 70. SN �̷���ȸ ����
1. http://localhost:8080/watchq/watchq/report/rmaInfo/rmaInfoInitList.do?_menuId=AWYZzTn6JH4oVtyM&_menuF=true
  1) rmaInfo.jsp ==> 4���� ��
   ��. Basic Info ��ȸ
   ��. T_01. ����/�����̷�, T_02. ��ġ/����̷�, T_03. RMA �̷�(���� �Ϸ�), T_04. ��� �̷�
==============================================================================================================    

- Menu Mgmt ȭ�鿡�� ������ ���
1. http://10.40.86.210:8240/watchq/commMenu/menuList.do?_menuId=1IBjUR8utii_GAAD&_menuF=true]
  1) ������: /watchq/report/rmaInfo/searchSnList.do ==> ��ȸ
==============================================================================================================    

- PC ����� ���� ��û �̸��� �߼�
1. ������: ����PC����
2. ���� ��Ʈ�� ����� ����: �ۼ�ȣ -> ���¸�(taeman.jin: �̱� ���̵�]
==============================================================================================================     
���������������������������������������������������������� 
+----------------------------------------------------// End //----------------------------------------------------+
����������������������������������������������������������
