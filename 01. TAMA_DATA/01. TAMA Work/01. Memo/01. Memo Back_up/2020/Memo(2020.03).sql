

����������������������������������������������������������
+----------------------------------------------// Memo(2020.03) //----------------------------------------------+
����������������������������������������������������������


������������������� 2020.03.01(��) �۾� ������������������� 
---> 08:00 ~ 18:00 ==> 3.1��

- �ָ�2[��]
07:30 ���
08:00 ���� 
08:30 �ǳ� ������ Ÿ��
09:30 ����
09:00 ���ͳ� ���� ==> ����� ���� ���[��ü] ó��
12:00 �߽�
12:30 �ǳ� ������ Ÿ�� 
14:00 ���� 
14:20 ���ͳ� ���� ==>������Ǽ�_���¸�(2020.03.04) ���� ���� 
		[������] 12ȸ : ������ ������ ȸ��, �ƹ����� �׸��ڸ� �Ѿ��! ==> https://www.youtube.com/watch?v=9moR6cc4U7Q
15:40 �翺(����) ���
17:00 ����
17:20 �ǳ� ������ Ÿ��
18:20 ����
18:30 ���ͳ� ���� ==> ����Ŭ DB ��ġ ��� �м�(Oracle Client 11g R2 ��ġ)
19:20 ����� ==> ��, ����, ĳ��� ü�� �˻���(4��) ������
19:40 �¼��� 2�� �ⱸ ���� ==> (��)�̳� ��Ƽ�꿡�� ���� �� ��� Ž(������ ���� �� 3��)
20:00 ���� ���
21:06 ���� ���� �ֺ� ����
21:10 �Ͱ�
23:00 ��ħ
==============================================================================================================

- ���� ��ǰ ���̼��� ����(7��, ��)
1. ���� ������ Nexacro 2���� ���̼��� �޾Ƽ� ������ ��
2. ���� ������ Xplatform, Nexacro 2���� ���̼��� �޾Ƽ� ������ �� 
==============================================================================================================
 
������������������� 2020.03.02(��) �۾� �������������������
---> 07:00 ~ 21:00 ==> ���� �뵿�� ���н� �ڷγ�19 ������ 3���� ����(3�� 23�� ����), ����� ��� ö��(16:30, ��å �δ�ǥ)
								, ������ö �Ĵ� �ı� ����(10��, 44�� 237,600��(�� ��: 5,400��), ���� ��ü[����])
								, ������ �뵿�� 1�г� 1������ ����(������ ������(010-6370-3498)���� ���� ���� ��ȭ��)

- ������ö ����ȭ�й��� MAP ���� Prj[��]
- ���� ����(������) (/admin::FmiAdmin.xfdl) ȭ�� ����
1. Grid���� Ư�� Į�� ����Ÿ ��� WebBrowser�� �÷� ����
==============================================================================================================

- split �Լ�(�ڸ���)
/***************************************************************************
 * Even   : wb_NoxMat_onusernotify
 * Desc   : wb_NoxMat  ==> FmiAdmin�� �ε�� ������������ nexacro������ ������ ������ �� �߻��ϴ� �̺�Ʈ(02. 3D���� ����Ÿ �ޱ�)
 ****************************************************************************/
this.wb_NoxMat_onusernotify = function(obj:nexacro.FmiAdmin,e:nexacro.WebUserNotifyEventInfo)
{
	trace("[/FmiAdmin.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_01] [e.userdata]"+ e.userdata ); 
	// [e.userdata]ID_FACILITY=100011&N_X=11&N_Y=12&N_Z=13&Name=���¸�&hire_date=2018-02-01

	var arrColList = String(e.userdata).split("&");		// String �ڸ���
	trace("[/FmiAdmin.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_03] [arrColList[0]]"+ arrColList[0] +"[arrColList[1]"+ 
		arrColList[1] +"[arrColList[2]"+ arrColList[2] );
 
	var sName = String(arrColList[0]).split("=");	 // 01. �ü� �ڵ� �ڸ���
	
	if(sName[0] == "ID_FACILITY")	 	// 01. �ü� �ڵ� �̸�
	{  
		//this.edt_ID_FACILITY.set_value(sName[1] );		// 01. �ü� �ڵ� 
		trace("[/CallingHtmlMethod.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_13] [����Ÿ �ޱ�_����] [01. �ü� �ڵ�]"+ sName[1] ); 
	}  
}; 
============================================================================================================== 
 
- ȸ��(14:30)
1. ������ö ����ȭ�й��� MAP ���� ���� ==> ������ ����, ��Ȳ ����, ��å �δ�ǥ, �ڹο� PM, ������ å��
 1) ���� �߰� ����: ���� ��Ȳ ����
 2) ���� (TT) ==> �󼼵��� ����
 3) ���� ����
  ��. 4�� 15�� ���� �Ϸ�
==============================================================================================================
   
- ��ȭ���غ��� �Ǻ� û��(2019�� 6����� ����) �Աݵ�
1. �� ���� �δ��: 1,246,100��, �Ǻ� ���޾�: 1,088,500��
==============================================================================================================
  
������������������� 2020.03.03(ȭ) �۾� �������������������
---> 07:00 ~ 21:00 ==>  

- ������ö ����ȭ�й��� MAP ���� Prj[��]
- ���� ����(������) (/admin::FmiAdmin.xfdl) ȭ�� ����
1. WebBrowser�� �̿��� Ÿ �ý��۰��� ����Ÿ ��ȯ ==> �Ϸ� @@@ 
 1) Grid���� Ư�� Į�� ����Ÿ ��� WebBrowser�� �÷� ����
2. WebBrowser�� �̿��� Ÿ �ý��۰��� ����Ÿ ��ȯ �Ŵ��� �ۼ�
 1) ������ ����, ��Ȳ ����, ���� ����, ���¿� ���忡�� ���� ����  
==============================================================================================================- 

- ���� ����(������) (/admin::FmiAdmin.xfdl) ȭ�� ���� ==> �Ϸ� @@@
1. Ʈ����, ����Ʈ�� ����
==============================================================================================================

- ����������(/admin::EqupInfo.xfdl) ȭ�� ����==> �Ϸ� @@@
1. ���� �����۾� ��Ȳ �˾�(/admin::noxOutWorkStatDmiP.xfdl) ȭ�� �߰�  
==============================================================================================================

- ���� �������� ����Ʈ(/admin::MatterInfoLst.xfdl) ȭ�� ���� ==> �Ϸ� @@@
1. ���� ��� �ִ� 50���� ���� 
==============================================================================================================

- ��������(/admin::EqupInfo.xfdl) ȭ�� ���� ==> �Ϸ� @@@
1. ���� ���㰡 ����(TB_HCM_LICENSE) ���̺� �߰�
==============================================================================================================

- ȸ��(10:00)
1. WebBrowser�� �̿��� Ÿ �ý��۰��� ����Ÿ ��ȯ
 1) ������ ����, ��Ȳ ����, �ڹο� PM, ���� ����, ���¿� ����
==============================================================================================================

- ȸ��(14:00)
1. ����, ���� �ܿ� �з� ȸ��
 1) ������ ����, ��Ȳ ���� ==> 3�� 25��(��): ���� �׽�Ʈ, 3�� 30��(��): ����
==============================================================================================================
  
������������������� 2020.03.04(��) �۾� �������������������
---> 07:00 ~ 21:00 ==>  

- ������ö ����ȭ�й��� MAP ���� Prj[��] 
- ���� ����(/noxMat::Fmi.xfdl) ȭ�� ���� ==> �Ϸ� @@@
1. ���� ����(/noxMat::Dmi.xfdl) ȭ�� ���ֱ�
==============================================================================================================
 
- ���� ����(/noxMat::Fmi.xfdl) ȭ�� ����  
1. ��������(/noxFacilInfoP::Dmi.xfdl) ȭ�� ����
 1) �������� ��ȸ ==> ����ID A, B, C, ��뷮, ���差 Į�� ����
==============================================================================================================
   
������������������� 2020.03.05(��) �۾� �������������������
---> 07:00 ~ 21:00 ==> 06:10 �ν��� �� ��ü(256U, 21U ����: �迡�� �ǰ� ���� ��Ƽ�� ����, ��Ƽ ��Ź) ������ ���� ����(���ϱ���)

- ������ö ����ȭ�й��� MAP ���� Prj[��] 
- ���� ����(/noxMat::Fmi.xfdl) ȭ�� ����  
1. ��������(/noxFacilInfoP::Dmi.xfdl) ȭ�� ���� ==> �Ϸ� @@@
 1) �������� ��ȸ ==> ����ID A, B, C, ��뷮, ���差 Į�� ����(CASE WHEN ������ ó��)
 /* ���� ���� ��ȸ ==> [/TK11004Mapper.xml] [selectList()] [2020.02.18, by ���¸�] */
SELECT  M.ID_FACILITY, M.NM_EQUP, M.DT_INSPECTION, M.NO_FACILITY, M.ID_FCT 
			, (CASE WHEN (MAX(DECODE(M.D_RANK, '1', M.USE_AMT)) IS NOT NULL
							AND MAX(DECODE(M.D_RANK, '1', M.SAV_AMT)) IS NOT NULL) THEN   '��뷮(��)  / ���差(��)'
						WHEN MAX(DECODE(M.D_RANK, '1', M.USE_AMT)) IS NOT NULL THEN   '��뷮(��)'
						WHEN MAX(DECODE(M.D_RANK, '1', M.SAV_AMT)) IS NOT NULL THEN   '���差(��)'
						ELSE '' END) AS MATTER_ID_A_TITLE2		/* ���� ����ID_A */
			, (CASE WHEN (MAX(DECODE(M.D_RANK, '1', M.USE_AMT)) IS NOT NULL
							AND MAX(DECODE(M.D_RANK, '1', M.SAV_AMT)) IS NOT NULL
						) THEN MAX(DECODE(M.D_RANK, '1', M.USE_AMT)) || ' / ' || MAX(DECODE(M.D_RANK, '1', M.SAV_AMT))
						WHEN MAX(DECODE(M.D_RANK, '1', M.USE_AMT)) IS NOT NULL THEN  MAX(DECODE(M.D_RANK, '1', M.USE_AMT))
						WHEN MAX(DECODE(M.D_RANK, '1', M.SAV_AMT)) IS NOT NULL THEN MAX(DECODE(M.D_RANK, '1', M.SAV_AMT))
						ELSE '' END) AS MATTER_ID_A_VALUE 		/* ����ID_A_�� */
FROM
;
==============================================================================================================

- ��������(/admin::EqupInfo.xfdl) ȭ�� ����
1. ���, ���� Ȯ�� ==> �ü��ڵ尡 ����ID�� NULL �϶� ��� �����ϵ��� ����
 1) ��ȸ�� MATTER_ID_1=NULL, MATTER_ID_2=10001, MATTER_ID_2=10002�� ��ȸ��...
	/* ���� ����_02 ��ȸ ==> [/TK11004Mapper.xml] [selectList_02()] [2020.03.06, by ���¸�] */
 SELECT  M.ID_FACILITY,  
			, (CASE WHEN (MAX(DECODE(M.D_RANK, '1', M.MATTER_ID)) IS NULL
								AND MAX(DECODE(M.D_RANK, '2', M.MATTER_ID)) IS NOT NULL) THEN MAX(DECODE(M.D_RANK, '2', M.MATTER_ID))  
						ELSE MAX(DECODE(M.D_RANK, '1', M.MATTER_ID)) END) AS MATTER_ID_A  		/* ����ID_A  @@@ */
FROM
;
==============================================================================================================
 
- ���� ����
1. DENSE_RANK �Լ�(����Ŭ �����Լ�) ��)�� ==> SUBSTR(E.MATTER_ID, 0, 1) DESC, PRRT_RANK ������ ó��(NULL �� ������ ���ĵ�)
/* ���� ����_02 ��ȸ ==> [/TK11004Mapper.xml] [selectList_02()] [2020.03.06, by ���¸�] */
SELECT  M.ID_FACILITY, M.NM_EQUP,
FROM (   
	/*  ;    --  ===============================================================================================> */  
	SELECT DENSE_RANK() OVER(ORDER BY SUBSTR(E.MATTER_ID, 0, 1) DESC 
			    	, (SELECT PRRT_RANK
						FROM TB_HCM_HAZARDCHEMICAL 		/* ����ȭ�й��� ���� TB */
	                WHERE 1=1 AND MATTER_ID = E.MATTER_ID AND DEL_YN = 'N')) AS D_RANK		 /*  ����ID RANK */   
	            	, E.MATTER_ID			/* ����ID */
					, F.MATTER_NM		/* ������ */   
		 			, A.*
		FROM TB_HCM_EQUIPMENTBASE A 				/* ���� �⺻ ���� TB */ 
				, TB_HCM_EQUIPMENTHC E						/* ���� ��޹��� ���� TB */
			    , TB_HCM_HAZARDCHEMICAL F 				/* ����ȭ�й��� ���� TB */  
		WHERE 1=1 
			AND A.ID_FCT = B.ID_FCT
			AND A.STR_CPK_TYPE = C.STR_CPK_TYPE   
	           AND A.ID_FCT = #{ID_FCT}		/* ���� �ڵ� */
	       </if>  
		/*  ;    --  ===============================================================================================> */  
		) M
GROUP BY  M.ID_FACILITY, M.NM_EQUP, M.DT_INSPECTION, M.NO_FACILITY, M.ID_FCT
ORDER BY M.ID_FACILITY	 
==============================================================================================================
     
������������������� 2020.03.06(��) �۾� �������������������
---> 07:00 ~ 14:30 ==> ��� ���� ��û(9��, �뵿�� ������, ������ ���� 2�ְ� ���� ���Ƿ� �(9�� ~ 17��), ����ũ, ���ö� ����)
								, �ֳ����� ��Ʈ�� �ֹ�(9��, �ù�� �츮������ ����: OS ������ 10 ��ġ, SW ��ġ�� ��)
								, ������(14:14 ~ 16:05): (��)�̳� ��Ƽ�� ������ �� ��� Ž --> 16:10 õ�տ� 2�� �ⱸ ���� 
								--> 16:30 �븲�� --> 16:40 �Ͱ�
								
- ������ö ����ȭ�й��� MAP ���� Prj[��] 
- ��������(/admin::EqupInfo.xfdl) ȭ�� ����
1. ���, ����(/TK11004ServiceImpl.java) Ȯ�� ==> 
 1) ����ID ������� ������ ������ ������ �߻�
==============================================================================================================

- GQMS_Tst �ҽ� �м� @@@
1. C:\GQMS_Tst\workspace\GQMS_Tst\src\main\java\egovframework\TK\web\TK12002Controller.java  
==> KOLAS �ο���Ȳ Controller @@@
--> \TK12002ServiceImpl.java   ==>   
==============================================================================================================

- �Ŀ���ŷ, Ȯ���� �� ���ְ� ���� �����ϰ� �ϴ� �ȱ��
https://www.youtube.com/watch?v=6L69KxP-Wro
==============================================================================================================
 
- Grid���� �� ���� �߰� �� ���� ����
1. ���� ����Ʈ�� �� �ø� ==> http://support.tobesoft.co.kr/Support/index.html
==============================================================================================================
 
������������������� 2020.03.07(��) �۾� �������������������
---> 08:00 ~ 18:00 ==> 

- �ָ�[��]
07:50 ���
08:10 ���� 
08:30 �ǳ� ������ Ÿ��
09:30 ����
10:20 �����(������)  
12:30 �ǳ� ������ Ÿ��
13:30 ���� 
14:00 �ֳ������� ��ġ ��Ź�� ��Ʈ�� ���� ==> Win 10 ��ġ, SW ��ġ
14:20 �翺(����) ���� ���� ���� ����ġ�� ���
18:40 ���� 
19:00 �ǳ� ������ Ÿ��(1�ð�)  
20:00 ���� 
20:10 �����(������) 
20:20 GS25 �븲���� ������: �ֳ����� LG ��Ʈ�� �ù� ������(6,900��)
20:40 �Ͱ�
21:10 TV ��û ==>  
22:00 �翺(����) �Ͱ�
22:30 ��ħ
==============================================================================================================

- ����(3��, 4��, ���� �±ǵ�) �۱�
1. ���� �±ǵ� ����� ���忡�� 20���� �۱� ==> ����� ���忡�� ������ ���ϱ� ���� ��û(�: 08:30, �ϱ�: 15~ 16��)
==============================================================================================================
 
- �ֳ������� ��ġ ��Ź�� ��Ʈ�� ����
1. Win 10 ��ġ, SW ��ġ(V3, MS ���ǽ� 2013, HWP 2010)
2. �������� �ù� ����: ���׽� �ϱ� ������ 8���� 14 �ֳ뼼Ź��(054 256 9990): GS25 �븲���� ������(6,900��)
3. LG ��Ʈ�� ���
1. �𵨸�: 15U370 
2. S/N: 908PGJK318436
3. �ĺ���ȣ: MSIP-RMM-LGE-15U370 
4. ����: 1.65kg
5. ��Ʈ�� �α��� ID(���ֳ�), ��й�ȣ�� 1212
==> http://www.enuri.com/detail.jsp?modelno=25332872&cate=&IsDeliverySum=N
==============================================================================================================

������������������� 2020..03.08(��) �۾� �������������������
---> 08:00 ~ 18:00 ==>

- �ָ�2[��]
07:30 ���
08:05 ����
08:30 �ǳ� ������ Ÿ��
09:30 ����
09:00 ���ͳ� ���� ==> Oracle 11g R2 ��ġ  
12:10 �߽�
13:00 �ǳ� ������ Ÿ��
14:00 ����
14:20 ���ͳ� ���� ==> Oracle 11g R2 ��ġ
17:00 ����
17:20 �ǳ� ������ Ÿ��
18:20 ����
19:20 �����
19:40 �¼��� 2�� �ⱸ ���� ==> (��)�̳� ��Ƽ�꿡�� ���� �� ��� Ž(������ ����� 3��)
20:00 ���� ���
21:06 ���� ���� �ֺ� ����
21:10 �Ͱ�
23:00 ��ħ
==============================================================================================================

- 3�� oracle 11g database install(����Ŭ 11g ��ġ) [����Ʈķ�۽�softcampus]
https://www.youtube.com/watch?v=rTBj8wkbZHY
==============================================================================================================

������������������� 2020.03.09(��) �۾� �������������������
---> 07:00 ~ 21:00 ==> ���� ���� �±ǵ� �ٽ� ����(�ް�: 2�� 24��(��) ~ 3�� 06��(��))
								
- ������ö ����ȭ�й��� MAP ���� Prj[��] 
- ��������(/admin::EqupInfo.xfdl) ȭ�� ����
1. ���, ����(/TK11004ServiceImpl.java) Ȯ�� ==> �Ϸ� @@@
 1) ����ID A, B, C ��� ==> �����δ� ����ID���� 27�� ��ȸ��(����ID ��� �Ƴ��ϸ� Null ����) 
 ==> for�� ����Ͽ� MATTER_ID_A, MATTER_ID_B, MATTER_ID_C Į���� �ֱ�
 /* ���� ����_02 ��ȸ ==> [/TK11004Mapper.xml] [selectList_02()] [2020.03.06, by ���¸�] */ 
SELECT  M.ID_FACILITY AS �ü��ڵ�, M.NM_FCT AS �����	
			, MAX(DECODE(M.D_RANK, '1', M.MATTER_ID)) AS MATTER_ID_1   	/* ����ID_1 @@@ */
			, MAX(DECODE(M.D_RANK, '2', M.MATTER_ID)) AS MATTER_ID_2		/* ����ID_2 */
			, MAX(DECODE(M.D_RANK, '3', M.MATTER_ID)) AS MATTER_ID_3		/* ����ID_3 */ 
			, MAX(DECODE(M.D_RANK, '4', M.MATTER_ID)) AS MATTER_ID_4 		/* ����ID_4 */
			, MAX(DECODE(M.D_RANK, '5', M.MATTER_ID)) AS MATTER_ID_5        /* ����ID_5 */
FROM TB_HCM_EQUIPMENTBASE A 				/* ���� �⺻ ���� TB */ 
			, TB_HCM_EQUIPMENTHC E						/* ���� ��޹��� ���� TB */
			, TB_HCM_HAZARDCHEMICAL F 				/* ����ȭ�й��� ���� TB */  	'
------------------------------------------------------------------------------------------------------------------------------------

- ��������(/admin::EqupInfo.xfdl) ȭ�鿡��
/***************************************************************************
 * Even   : fn_Callback
 * Desc   : Transaction call back
 ****************************************************************************/
this.fn_Callback = function( svcID, errorCode, errorMsg ) 
{
	trace("[/EqupInfo.xfdl] [fn_Callback()] ==> [TEST_01] [�ݹ�] [svcID]"+ svcID +"[errorCode]"+ errorCode +"[errorMsg]"+ errorMsg); 
	
	if(svcID == "search") 
	{  
		this.fn_ResetColumn(); 	// Grid���� ��޹���, ��뷮, ��뷮 A, B, C Į�� ����Ÿ ����
		
		this.grd_List.setFormatColProperty(6, "band", "left");    // �� ����(Ʋ ����: 6��° Į������ ����
	} 
};

**************************************************************************
 * Even   : fn_ResetColumn
 * Desc   : Grid���� ��޹���, ��뷮, ��뷮 A, B, C Į�� ����Ÿ ���� ==> 51���� ����Ÿ�� ������ ��뷮 A, B, C Į���� �ֱ�
 ****************************************************************************/
this.fn_ResetColumn = function()
{ 
	// trace("[/EqupInfo.xfdl] [fn_ResetColumn()] ==> [fn_ResetColumn] [Grid Į�� ����Ÿ �籸�� @@@@@
		===>] [this.ds_List.getRowCount()]"+ this.ds_List.getRowCount() ); 
	
	var bSucc = "";    
	var sJnum  = "";  
	var nMatBUsed = 0;
	var nMatCUsed = 0; 
	
	for(var i=0; i < this.ds_List.getRowCount(); i++)		// ds_List ��ȸ�� ���� ��ŭ ������
	{     
		sJnum = ""+ (i+0);  
		nMatBUsed = 0;
		nMatCUsed = 0;
		
		// trace("[/EqupInfo.xfdl] [fn_ResetColumn()] ==> [TEST_06] [i_��°]"+ i +"[�ü��ڵ�]"+  this.ds_List.getColumn(i, "ID_FACILITY") 
			+"[�����]"+ this.ds_List.getColumn(i, "NM_FCT") +"[i_��°]"+ i +" @@@ ==> [ds_List.MATTER_ID_i_��°]"+ this.ds_List.getColumn(i, "MATTER_ID_"+ sJnum) ); 
		
		for(var j=1; j < 52; j++)   	// ����ID ���� ��ŭ ������(�ִ� 50��)
		{ 
			sJnum = ""+ (j);
			sJnum = ""+ (j); 
		 
			if(!this.gfn_IsNull(this.ds_List.getColumn(i, "MATTER_ID_"+ sJnum))) 		 // ����ID�� null�� �ƴϸ� (MATTER_ID_1, MATTER_ID_2,....)
			{ 
				if(this.gfn_IsNull(this.ds_List.getColumn(i, "MATTER_ID_A")))		 // ����ID_A�� null �̸� 
				{ 
					// trace("[/EqupInfo.xfdl] [fn_ResetColumn()] ==> [TEST_10] [�����]"+ this.ds_List.getColumn(i, "NM_FCT") +"[i_��°]"+ i +"[j_��°]"+ j 
						+"[ds_List.MATTER_ID_i]"+ this.ds_List.getColumn(i, "MATTER_ID_"+ sJnum) );
					
					this.ds_List.setColumn(i, "MATTER_ID_A", this.ds_List.getColumn(i, "MATTER_ID_"+ sJnum) );		 // ����ID_A ����
					this.ds_List.setColumn(i, "ID_FACIL_MATTER_A", this.ds_List.getColumn(i, "ID_FACIL_MATTER_"+ sJnum) );		 // ���� ����ID_A ����
					this.ds_List.setColumn(i, "USE_AMT_A", this.ds_List.getColumn(i, "USE_AMT_"+ sJnum) );		 // ��뷮_A ����
					this.ds_List.setColumn(i, "SAV_AMT_A", this.ds_List.getColumn(i, "SAV_AMT_"+ sJnum) );		 // ���差_A ���� 
					// trace("[/EqupInfo.xfdl] [fn_ResetColumn()] ==> [TEST_11_2] [�����]"+ this.ds_List.getColumn(i, "NM_FCT") +"[i_��°]"+ i 
						+"[j_��°]"+ j +"[ds_List.MATTER_ID_]"+ this.ds_List.getColumn(i, "MATTER_ID_"+ sJnum) +"[ds_List.MATTER_ID_A]"+ this.ds_List.getColumn(i, "MATTER_ID_A") ); 
				}
				
				if(!this.gfn_IsNull(this.ds_List.getColumn(i, "MATTER_ID_A")) && this.gfn_IsNull(this.ds_List.getColumn(i, "MATTER_ID_B")))		 // ����ID_B�� null �̸� 
				{  
					// trace("[/EqupInfo.xfdl] [fn_ResetColumn()] ==> [TEST_20] [�����]"+ this.ds_List.getColumn(i, "NM_FCT") +"[i_��°]"+ i 
						+"[ds_List.MATTER_ID_i]"+ this.ds_List.getColumn(i, "MATTER_ID_"+ sJnum) ); 
					
					for(var k=1; k < 51; k++)   	// ����ID ���� ��ŭ ������(�ִ� 50��)
					{ 
						sJnum = ""+ (j + k);   	// sJnum �ٽ� ����
						// trace("[/EqupInfo.xfdl] [fn_ResetColumn()] ==> [TEST_22_1] [�����]"+ this.ds_List.getColumn(i, "NM_FCT") +"[i_��°]"+ i 
							+"[sJnum_��°]"+ sJnum +"[ds_List.MATTER_ID_i]"+ this.ds_List.getColumn(i, "MATTER_ID_"+ sJnum) ); 
						
						if(nMatBUsed < 1)     // ����ID B�� ó�� ����� ��
						{
							if(!this.gfn_IsNull(this.ds_List.getColumn(i, "MATTER_ID_"+ sJnum))) 		 // ����ID�� null�� �ƴϸ� (MATTER_ID_1, MATTER_ID_2,....)
							{ 
								this.ds_List.setColumn(i, "MATTER_ID_B", this.ds_List.getColumn(i, "MATTER_ID_"+ sJnum) );		// ����ID_B ����
								this.ds_List.setColumn(i, "ID_FACIL_MATTER_B", this.ds_List.getColumn(i, "ID_FACIL_MATTER_"+ sJnum) );		 // ���� ����ID_B ����
								this.ds_List.setColumn(i, "USE_AMT_B", this.ds_List.getColumn(i, "USE_AMT_"+ sJnum) );		 // ��뷮_B ����
								this.ds_List.setColumn(i, "SAV_AMT_B", this.ds_List.getColumn(i, "SAV_AMT_"+ sJnum) );		 // ���差_B ����
								nMatBUsed = 1;
								// trace("[/EqupInfo.xfdl] [fn_ResetColumn()] ==> [TEST_22_2] [�����]"+ this.ds_List.getColumn(i, "NM_FCT") +"[i_��°]"+ i +"[j_��°]"+ j 
									+"[ds_List.MATTER_ID_B]"+ this.ds_List.getColumn(i, "MATTER_ID_B") ); 
							}
						}
					}	// end of for()  
				}
			}
			
			if(!this.gfn_IsNull(this.ds_List.getColumn(i, "MATTER_ID_A")) && !this.gfn_IsNull(this.ds_List.getColumn(i, "MATTER_ID_B"))
				&& this.gfn_IsNull(this.ds_List.getColumn(i, "MATTER_ID_C")))		 // ����ID_C�� null �̸� 
			{  
				// trace("[/EqupInfo.xfdl] [fn_ResetColumn()] ==> [TEST_30] [�����]"+ this.ds_List.getColumn(i, "NM_FCT") +"[i_��°]"+ i +"[j_��°]"+ j 
					+"[ds_List.MATTER_ID_i]"+ this.ds_List.getColumn(i, "MATTER_ID_"+ sJnum) );

				for(var k=1; k < 51; k++)   	// ����ID ���� ��ŭ ������(�ִ� 50��)
				{ 
					sJnum = ""+ (j + k);   	// sJnum �ٽ� ����
					// trace("[/EqupInfo.xfdl] [fn_ResetColumn()] ==> [TEST_31_1] [�����]"+ this.ds_List.getColumn(i, "NM_FCT") +"[i_��°]"+ i 
						+"[sJnum_��°]"+ sJnum +"[MATTER_ID_B]"+ this.ds_List.getColumn(i, "MATTER_ID_B") +"[ds_List.MATTER_ID_i]"+ this.ds_List.getColumn(i, "MATTER_ID_"+ sJnum) ); 
					
					if(nMatCUsed < 1)     // ����ID_C�� ó�� ����� ��
					{
						if(!this.gfn_IsNull(this.ds_List.getColumn(i, "MATTER_ID_"+ sJnum))
							&& (this.ds_List.getColumn(i, "MATTER_ID_"+ sJnum) != this.ds_List.getColumn(i, "MATTER_ID_B")) ) 		 // ����ID�� null�� �ƴϰ� ����ID_B�� ���� ������
						{ 
							// trace("[/EqupInfo.xfdl] [fn_ResetColumn()] ==> [TEST_32_1] [�����]"+ this.ds_List.getColumn(i, "NM_FCT") +"[i_��°]"+ i +"[sJnum_��°]"+ sJnum 
								+"[MATTER_ID_B]"+ this.ds_List.getColumn(i, "MATTER_ID_B") +"[ds_List.MATTER_ID_i]"+ this.ds_List.getColumn(i, "MATTER_ID_"+ sJnum) ); 
					
							this.ds_List.setColumn(i, "MATTER_ID_C", this.ds_List.getColumn(i, "MATTER_ID_"+ sJnum) );		// ����ID_C ����
							this.ds_List.setColumn(i, "ID_FACIL_MATTER_C", this.ds_List.getColumn(i, "ID_FACIL_MATTER_"+ sJnum) );		 // ���� ����ID_C ����
							this.ds_List.setColumn(i, "USE_AMT_C", this.ds_List.getColumn(i, "USE_AMT_"+ sJnum) );		 // ��뷮_B ����
							this.ds_List.setColumn(i, "SAV_AMT_C", this.ds_List.getColumn(i, "SAV_AMT_"+ sJnum) );		 // ���差_B ���� 
							nMatCUsed = 1;
							// trace("[/EqupInfo.xfdl] [fn_ResetColumn()] ==> [TEST_32_3] [�����]"+ this.ds_List.getColumn(i, "NM_FCT") +"[i_��°]"+ i +"[j_��°]"+ j +"[sJnum_��°]"+ sJnum 
								+"[ds_List.MATTER_ID_4]"+ this.ds_List.getColumn(i, "MATTER_ID_4") +"[ds_List.MATTER_ID_C]"+ this.ds_List.getColumn(i, "MATTER_ID_C") ); 
						}
					}
				}	// end of for()   
			}
		}	// end of for()  
	}	// end of for()   
 }; 
==============================================================================================================
 
- Grid���� Į�� ���� �� �ٲ�
1. MATTER_NM = "�����Ҵ�"+"&#13;&#10;"+" ��뷮(��)  / ���差(��)"     /// ===> �����Ҵ� <br> ��뷮(��)  / ���差(��) 
/***************************************************************************
 * Even   : fn_ResetGridFacilInfo
 * Desc   : ��ü Tab���� ���� ��ư(������) Ŭ�� �̺�Ʈ
 ****************************************************************************/
this.fn_ResetGridFacilInfo = function()
{	
	trace("[/noxFacilInfoP.xfdl] [fn_ResetGridFacilInfo()] ==> [TEST_01]" );

	if(this.ds_List.getColumn(0, "MATTER_ID_A")  == "") 		// ����ID_A�� ���̸�
	{
		trace("[/noxFacilInfoP.xfdl] [fn_Callback()] ==> [TEST_52_1]" ); 
	}
	else
	{
		this.grd_List.appendContentsRow();		// ��  �߰�  
		var nRow = 38;
 
		this.grd_List.setCellProperty("body", nRow, "textAlign", "center");			// body(��ġ)
		this.grd_List.setCellProperty("body", nRow, "displaytype", "text");		// body(��ġ)  
		 	var bSucc = this.grd_List.setCellProperty("body", nRow, "text",  this.ds_List.getColumn(0, "MATTER_NM_A") 
				+ String.fromCharCode(13) + String.fromCharCode(10) + this.ds_List.getColumn(0, "MATTER_ID_A_TITLE2") );		
				// ��޹�����B ����[����}
		
		this.grd_List.setCellProperty("body", nRow+1, "textAlign", "right");			// body(��ġ) 
		var bSucc = this.grd_List.setCellProperty("body", nRow+1, "text",  this.ds_List.getColumn(0, "MATTER_ID_A_VALUE") );			
		// ��޹�����A �� ���� 
	}
	 
	this.grd_List.setRealRowSize(0, 40);		// grd_List �� ������ ����	
};
==============================================================================================================
 
- ȸ��(18:30 ~ 21:00, �Һ긣 �粿ġ[���ִ���])
1. ������ö ����ȭ�й��� MAP ���� ȸ�� ==> ������ ����, ��Ȳ ����, �ڹ��� ���, �ڹο� PM
 1) �븮���� �ҷ��� �Ͱ�
==============================================================================================================
 
������������������� 2020.03.10(ȭ) �۾� �������������������
---> 07:00 ~ 21:00 ==> 06:15 �ν��� �� ��ü(281U, 22U ����), ����� �� �� ����(��� ���� ���� ���), ������ ����� ��ȭ(17��,
									�ڷγ�19 ������ �繫�ǿ� ���� 10�� ���: ��� �����, �� ����, ��� �ñ�)

- ������ö ����ȭ�й��� MAP ���� Prj[��] 
- ��������(/admin::EqupInfo.xfdl) ȭ�� ����
1. ���, ����(/TK11004ServiceImpl.java) Ȯ��
 1) ����ID A, B, C ���� ó�� ==> ����ID(10000, [����]) ó��  ==> �Ϸ� @@@
 2) ����ID A, B, C ��Ͻ� Validataion üũ(fn_ChekValidataion)  ==> �Ϸ� @@@
 /***************************************************************************
 * Even   : fn_Save
 * Desc   : Validation üũ
 ****************************************************************************/ 
this.fn_Save = function()
{
	trace("[/EqupInfo.xfdl] [fn_Save()] ==> [TEST_01]" );
	
	if(this.fn_CheckValidation() == false)			// Validation üũ
	{
		return false;
	}
	
	var sSaveChkArr = "�������� ���:this.ds_List;";
 
	this.gfn_SaveConfirm(this, sSaveChkArr, 350, 250, function (sId, sResult) 		 // ���� �� Confirm  
	{    
		if(sResult == "YES") 
		{	
			var sSvcID        = "save";
			var sController   = "TK/TK11004/saveList"; 
			var sInDatasets   = "ds_List=ds_List:u";
			var sOutDatasets  = "";
			var sArgument     = "";
			var sCallbackFunc = "fn_Callback";
			var bAsync        = true;
		 
			this.gfn_Transaction(sSvcID, sController, sInDatasets, sOutDatasets, sArgument, sCallbackFunc, bAsync); 
		}
	}); 
};
};

***************************************************************************
 * Even   : fn_CheckValidation
 * Desc   : ����
 ****************************************************************************/ 
this.fn_CheckValidation = function()
{
	trace("[/EqupInfo.xfdl] [fn_CheckValidation()] ==> [TEST_01]" );
	
	for(var i=0; i < this.ds_List.getRowCount(); i++)		// ds_List ��ȸ�� ���� ��ŭ ������
	{       
		trace("[/EqupInfo.xfdl] [fn_CheckValidation()] ==> [TEST_06] [i_��°]"+ i +"[�ü��ڵ�]"+ this.ds_List.getColumn(i, "ID_FACILITY") 
			+"[�����]"+ this.ds_List.getColumn(i, "NM_FCT") +"[ds_List.getRowType(i)]"+ this.ds_List.getRowType(i) +"[@@@ ==> 
			[ds_List.MATTER_ID_A]"+ this.ds_List.getColumn(i, "MATTER_ID_A") +"[ds_List.USE_AMT_A]"+ this.ds_List.getColumn(i, "USE_AMT_A") 
			+"[ds_List.SAV_AMT_A]"+ this.ds_List.getColumn(i, "SAV_AMT_A") ); 
		
		if(this.ds_List.getRowType(i) == 2 && this.ds_List.getColumn(i, "MATTER_ID_A") == "10000")		 
			// Grid Ÿ���� ���(2)�̰� MATTER_ID_A�� [����]�̸�  @@@
		{
			this.alert("��Ͻÿ��� ��޹���A [����]�� ������ �� �����ϴ�..\n��޹���A��  �ٽ� �����ϼ���.");	
			this.ds_List.set_rowposition(i); 	// ���� Row ����
			this.grd_List.setCellPos(24);		// ������ ���� ��ġ ���� ==> ��Ŀ��(focus) ����
			this.grd_List.showEditor(true); 	// ������ ���� ���� ���� ����
		}
	}	// end of for()	
};
---------------------------------------------------------------------------------------------------------

Dataset.ROWTYPE_EMPTY 		==> 0: �������� �ʴ� ���� ����
Dataset.ROWTYPE_NORMAL	==> 1: �ʱ� ���� ����
Dataset.ROWTYPE_INSERT		==> 2: �߰��� ���� ���� 
Dataset.ROWTYPE_UPDATE	 	==> 4: ������ ���� ����  
Dataset.ROWTYPE_DELETE 		==> 8: ������ ���� ����
==============================================================================================================
 
- Grid Į�� �ʼ� �Է� ����
this.ds_list.set_rowposition(i);	 // ���� Row ����
this.grd_list.setCellPos(1);			// ������ ���� ��ġ ���� ==> ��Ŀ��(focus) ����
this.grd_list.showEditor(true); 	// ������ ���� ���� ���� ����  
==============================================================================================================

- ȸ��(10:30, ��ȸ�ǽ�)
1. ������ö ����ȭ�й��� MAP ���� ���� ==> ������ ����, ��Ȳ ����, ��å �δ�ǥ, �ڹο� PM, ������ å��, ���� ����(��������) 
 1) XP --> Nexacro ����Ÿ ��ȣ ���� ���� ����(���񿡼� �׽�Ʈ �ҽ� �޾Ҵٰ� ��)
 2) ������ ���� ������ 9�� ȸ��(����ȭ)
 3) WEB �ϼ� �� ��
==============================================================================================================
 
������������������� 2020.03.11(��) �۾� �������������������
---> 07:00 ~ 21:00 ==> ��Ȳ ���� ���(���� �ʰԱ��� ����), WHO �ڷγ�19 �ҵ���(������ ������) ����

- ������ö ����ȭ�й��� MAP ���� Prj[��]
- ���� ����(������) (/admin::FmiAdmin.xfdl) ȭ�� ����  ==> �Ϸ� @@@
1. 71. TB_HCM_FACILITYBASE_MAP �ü� ���� TB ���̺� ����
2. 71. TB_HCM_FACILITYBASE_MAP �ü� ���� TB ����Ÿ ���
==============================================================================================================
 
- 3D���� ����Ÿ �޾Ƽ� ����
/***************************************************************************
 * Even   : wb_NoxMat_onusernotify
 * Desc   : wb_NoxMat  ==> FmiAdmin�� �ε�� ������������ nexacro������ ������ ������ �� �߻��ϴ� �̺�Ʈ(02. 3D���� ����Ÿ �ޱ�)
 ****************************************************************************/ 
this.wb_NoxMat_onusernotify = function(obj:nexacro.FmiAdmin,e:nexacro.WebUserNotifyEventInfo)
{
	trace("[/FmiAdmin.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_01] [e.userdata]"+ e.userdata ); 
	
	var sID_FACILITY;		// 01. �ü� �ڵ� 
	var sN_X;		// 02. X�� 
	var arrColList = String(e.userdata).split("&");		// String �ڸ���
	//trace("[/FmiAdmin.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_03] [arrColList[0]]"+ arrColList[0] +"[arrColList[1]"+ 
		arrColList[1] +"[arrColList[2]"+ arrColList[2] );
 
	var arrID_FACILITY = String(arrColList[0]).split("=");	 // 01. �ü� �ڵ� �ڸ���
	
	if(arrID_FACILITY[0] == "ID_FACILITY")	 	// 01. �ü� �ڵ� �̸�
	{  
		sID_FACILITY = arrID_FACILITY[1];		//  01. �ü� �ڵ�
	} 
	
	var arrN_X = String(arrColList[1]).split("=");	 // 02. X�� �ڸ���

	if(arrN_X[0] == "N_X")	 	// 02. X�� �̸�
	{  
		sN_X = arrN_X[1];		// 02. X�� 
	}
	
	trace("[/FmiAdmin.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_51] [����Ÿ �ޱ�] [01. �ü� �ڵ�]"+ sID_FACILITY 
		+"[02. X��]"+ sN_X +"[03. Y��]"+ sN_Y +"[04. Z��]"+ sN_Z );
	 
	if(!this.gfn_IsNull(sID_FACILITY))		 // 01. �ü� �ڵ� �� �� �ƴϸ�  @@@
	{ 
		this.fn_SaveMapInfo( sID_FACILITY		// 01. �ü� �ڵ�(ID_FACILITY)
										, sN_X 			// 02. X��
										, sN_Y			// 03. Y��
										, sN_Z 			// 04. Z��
									);		// ��ǥ ���� ����
			
};

/***************************************************************************
* Even   : fn_SaveMapInfo
* Desc   : ��ǥ ���� ����
****************************************************************************/
this.fn_SaveMapInfo = function(sID_FACILITY, sN_X, sN_Y, sN_Z)
{  
	trace("[/FmiAdmin.xfdl] [fn_SaveMapInfo()] ==> [TEST_01] [����Ÿ �ޱ�_���� ==> ��ǥ ���� ����] @@@ ===> ");
	
	var sArgs	= "ID_FACILITY="+ sID_FACILITY		/* �ü��ڵ� */
					+" N_X="+ sN_X		/* 02. X�� */
					+" N_Y="+ sN_Y		/* 03. Y�� */
					+" N_Z="+ sN_Z;	/* 04. Z�� */
	trace("[/FmiAdmin.xfdl] [fn_SaveMapInfo()] ==> [TEST_32] [Args]"+ sArgs ); 
 
	var sSvcID        = "saveMapInfo";
	var sController   = "TK/TK11004/saveMapInfo";
	var sInDatasets   = "";
	var sOutDatasets  = ""; 
	var sArgument     = sArgs;	// �Ķ���ͷ� ������
	var sCallbackFunc = "fn_Callback";
	var bAsync        = true;

	this.gfn_Transaction(sSvcID, sController, sInDatasets, sOutDatasets, sArgument, sCallbackFunc, bAsync); 
};
==============================================================================================================
 
������������������� 2020.03.12(��) �۾� �������������������
---> 07:00 ~ 21:00 ==> �ν��� ���� ����(����: 10U, �߽�: 12U, ����: 8U --> ��: 30U)

- ������ö ����ȭ�й��� MAP ���� Prj[��]
- ���� ����(������) (/admin::FmiAdmin.xfdl) ȭ�� ����
1. �ʰ������� ����
/***************************************************************************
 * Even   : fn_Map_onclick
 * Desc   : Map ��ư Ŭ�� �̺�Ʈ(01. 3D�� ����Ÿ ������)
 ****************************************************************************/
this.fn_Map_onclick = function(sMap)
{
	var objDoc = this.wb_NoxMat.getProperty("document"); 		// WebBrowser document
	var objDom = objDoc.getProperty("all");	  
	var sMapUrl = nexacro.getApplication().gv_svcUrl +"/NoxMatRetMot/_resource_/_theme_/NoxMatRetMot/img/";		// ���ϸ� ���
	
	if(sMap == "MAP_01") 	// 01. ���� ������
	{ 
		var sMapFileNm =  "btn_RF_Map01.png";		// 01. ���� ������ ���ϸ�
		
		objDom.getProperty("MAP_01").setProperty("value", sMapUrl + sMapFileNm);
		//	http://localhost:9000/NoxMatRetMot/_resource_/_theme_/NoxMatRetMot/img/btn_RF_Map01.png
	} 
}
==============================================================================================================

- Grid���� Row �� �պ�
1. ���峻 ���� ���� ȭ�й��� ����(�˾�) (/admin::noxNoxMatInfo4FctFacilP.xfdl) ȭ�鿡��
 1) suppress�� 1�� ����: �������� �࿡�� ���� ���� �ִ� ���� ���� ���� ��쿡 �̸� �ϳ��� ���ϴ� ������ �����ϴ� �Ӽ� 
<Band id="body">
	<Cell text="bind:NM_FACILITY" textAlign="center" color="black" suppress="1" suppressalign="middle"/>  	<!--// ����� //-->
	<Cell col="1" text="bind:MATTER_NM" textAlign="center" tooltiptext="bind:MATTER_NM"/>	<!--// ������ //-->
</Band>
==============================================================================================================

- �޺����� ��ü �޺� �߰�
/***************************************************************************
 * Even   : fn_Callback
 * Desc   : Transaction call back
 ****************************************************************************/
this.fn_Callback = function( svcID, errorCode, errorMsg ) 
{
	trace("[/FmiAdmin.xfdl] [fn_Callback()] ==> [TEST_01] [�ݹ�] [svcID]"+ svcID +"[errorCode]"+ errorCode +"[errorMsg]"+ errorMsg); 
	
	if(svcID == "searchFct") 	// ���� ���� ��ȸ
	{ 
 		var nRow = this.ds_Fct_02.addRow();		// Ds Row �߰� 
		this.ds_Fct_02.setColumn(nRow, "ID_FCT",  "");	 			// ����ID
		this.ds_Fct_02.setColumn(nRow, "NM_FCT", "=== [��ü] ==="); 		// ����� ==> ��ü �޺� �߰�
 
		for(var i=0; i < this.ds_Fct.getRowCount(); i++)    
		{  
			nRow = this.ds_Fct_02.addRow();		// Ds Row �߰� 
			this.ds_Fct_02.setColumn(nRow, "ID_FCT",  this.ds_Fct.getColumn(nRow - 1, "ID_FCT") );	// ����ID
			this.ds_Fct_02.setColumn(nRow, "NM_FCT", this.ds_Fct.getColumn(nRow- 1, "NM_FCT") );		// �����
		}	// end of for() 
		//trace("[/FmiAdmin.xfdl] [fn_Callback()] ==> [TEST_79] [ds_Fct_02.CNT]"+ this.ds_Fct_02.getRowCount() 
		// +"[this.ds_Fct_02.saveXML()] \n"+ this.ds_Fct_02.saveXML() );  
	}
};
==============================================================================================================

- ȸ��(8��)
1. ������ö ����ȭ�й��� MAP ���� ���� ȸ�� ==> ������ ����, ��Ȳ ����
 1) ���� ����(������) (/admin::FmiAdmin.xfdl) ȭ��[Nexacro --> 3D] ����Ÿ �ְ� �ޱ� ����
  ��. TB_HCM_FACILITYBASE_MAP �ü� ���� TB ����Ÿ ���(Update)�� �� ���� �⺻ ���� TB(TB_HCM_EQUIPMENTBASE)����
   �޾ƿ� �ü� �ڵ�(ID_FACILITY) ������Ʈ ó��
  ��. Ʈ���� ���̺�(TB_HCM_FACILITYBASE_MAP), ����Ʈ�� String���� ��Ȳ ������ �������شٰ� ��
  ��. Ʈ���信�� ����Ÿ ����, ���� ó��(����� ����)
  �� �����Ƿ� �˾� ȭ��(JSP�� ����)�� ��Ȳ ������ �����ϱ�� �Լ�
  ��. ���� ����(������) (/admin::DmiAdmin.xfdl) ȭ�� �����ϰ���� ó��(���� ������ ��� �ȵ�) ������ ������ ������ ������ �����Ѵٰ� ��
==============================================================================================================

������������������� 2020.03.13(��) �۾� �������������������
---> 07:00 ~ 14:30 ==> ������ ���� ����, ������(14:14 ~ 16:05): (��)�̳� ��Ƽ�� ������ �� ��� Ž --> 16:10 õ�տ� 2�� �ⱸ ����
									--> 16:30 �븲�� --> 16:40 �Ͱ�

- ������ö ����ȭ�й��� MAP ���� Prj[��] 
- ���� ����(������) (/admin::FmiAdmin.xfdl) ȭ�� ����
1. Ʈ���信�� ��ġ ����, ���� ó��
==============================================================================================================

- Popup Menu ó��, ���� �Լ� ȣ��
this.nRow = "";		// �� ��ġ
this.nCell = "";		// �� ��ġ

/***************************************************************************
 * Even   : grd_TreeView_onlbuttondown
 * Desc   : Ʈ����  Grid ���� ��ư Ŭ�� �̺�Ʈ
 ****************************************************************************/
this.grd_TreeView_onlbuttondown = function(obj:nexacro.Grid,e:nexacro.GridMouseEventInfo)
{  
	trace("[/FmiAdmin.xfdl] [grd_TreeView_onlbuttondown()] ==> [TEST_01] [e.row]" + e.row +"[e.cell]"+ e.cell \
		+"[cellValuel]" + obj.getCellValue(e.row, e.cell) );  
	
	this.nRow = e.row;
	this.nCell = e.cell; 
	var arr = obj.getCellRect(e.row, e.cell);	
 
	this.PopupMenu.trackPopupByComponent(obj, arr.left+ 100, 22 + arr.top, "", "", "");  	
	// ������ ������Ʈ�� ���������� PopupMenu ������Ʈ�� ȭ�鿡 ��Ÿ���� �����ϴ� �޼ҵ� 
};
 
/***************************************************************************
 * Even   : PopupMenu_onmenuclick
 * Desc   : PopupMenu Ŭ�� �̺�Ʈ
 ****************************************************************************/
this.PopupMenu_onmenuclick = function(obj:nexacro.PopupMenu,e:nexacro.MenuClickEventInfo)
{ 
	trace("[/FmiAdmin.xfdl] [PopupMenu_onmenuclick()] ==> [TEST_01] [e.id]"+ e.id +"[this.nRow]"+ this.nRow +"[this.nCell]" + this.nCell );   
 
	if(e.id == "1")	 	// ��ġ �����̸�
	{ 
		trace("[/FmiAdmin.xfdl] [PopupMenu_onmenuclick()] ==> [TEST_51] [��ġ ���� ó�� @@@] [e.id]"+ e.id +
		"[this.nRow]"+ this.nRow +"[this.nCell]" + this.nCell );   
	}
	else if(e.id == "2")	 	// ��ġ �����̸�
	{
		trace("[/FmiAdmin.xfdl] [PopupMenu_onmenuclick()] ==> [TEST_52] [��ġ ���� @@@]] [e.id]"+ e.id 
			+"[this.nRow]"+ this.nRow +"[this.nCell]" + this.nCell );    
		
		tthis.gfn_Confirm(this, "��ġ ������ �Ͻðڽ��ϱ�?", ["������"], "", "", function (sId, sResult)		// ���� �Լ� ȣ��
			if(sResult == "YES") {
				trace("[/FmiAdmin.xfdl] [PopupMenu_onmenuclick()] ==> [TEST_61] [��ġ ���� ó�� @@@]] [e.id]"+ e.id +"[sResult]"+ sResult ); 
			}
		}); 
	}
};
==============================================================================================================

- �� ��Ʈ�� ����
1. �ۺ��� �ڸ� ��Ʈ�� ����: 10.216.139.56
 1) �ۺ��� �ڸ� ��Ʈ�� ����(DN114120007) / qwqw1221!
==============================================================================================================

- ������ ���� ��ȭ��(17��, ��)
1. ������(������ 1-3�� ����, ���� ������): Ȳ������: �������� �Դٰ� �� ==> 2020�� 10�� 1�� �߼��� ������� ��
==============================================================================================================

������������������� 2020.03.14(��) �۾� �������������������
---> 08:00 ~ 18:00 ==> ������: 74kg

- �ָ�[��]
07:50 ���
08:10 ���� 
08:30 �ǳ� ������ Ÿ��
09:30 ����
10:00 ���ͳ� ���� ==> Oracle 11g R2 ��ġ
12:30 �ǳ� ������ Ÿ��
13:30 ���� 
14:00 ���ͳ� ���� ==> Oracle 11g R2 ��ġ
17:40 �����(������)
18:10 ���߲� ��������  ==> ���� ����ũ(����: 10,900��) ���� 
18:30 �Ͱ�
18:40 ���� 
19:00 �ǳ� ������ Ÿ��(1�ð�)  
20:00 ����  
20:40 �Ͱ�
21:50 TV ��û ==> 
22:30 ��ħ
==============================================================================================================

- GQMS_Tst DB ���� ����(Tibero DB --> Oracle DB)
1. /context-datasource.xml  ���Ͽ���
<!--// 01. GQMS_Tst ����DB ���� �߰�[������: 2020.03.14, by ���¸�], Oracle DB //-->
<bean id="dataSourceSpied" class="org.apache.commons.dbcp.BasicDataSource" destroy-method="close">
	<property name="driverClassName"  value="oracle.jdbc.driver.OracleDriver" />
	<property name="url" value="jdbc:oracle:thin:@TAMA_HOME:1521:TAMADB" />
	 <property name="username" value="GQMS_TST"/>
	<property name="password" value="tama339"/>
</bean> 

<!--// 02. GQMS_Tst ����DB ���� �߰�[������: 2019.09.23, by ���¸�], Tibero DB //-->
<!-- 	<bean id="dataSourceSpied" class="org.apache.commons.dbcp.BasicDataSource" destroy-method="close"> -->
<!--         <property name="driverClassName" value="com.tmax.tibero.jdbc.TbDriver" /> -->
<!--         <property name="url"  value="jdbc:tibero:thin:@10.10.180.177:8629:hspngqddb" /> -->
<!--         <property name="username" value="USRGQD"/> -->
<!--         <property name="password"  value="GQDUSR"/>  -->
<!--     </bean>    --> 
==============================================================================================================

������������������� 2020..03.15(��) �۾� �������������������
---> 08:00 ~ 18:00 ==>

- �ָ�2[��]
07:30 ���
08:05 ����
08:30 �ǳ� ������ Ÿ��
09:30 ����
09:00 ���ͳ� ���� ==> GQMS_Tst DB ���� �� ����Ÿ ���
12:10 �߽�
13:00 �ǳ� ������ Ÿ��
14:00 ����
14:20 ���ͳ� ���� ==> GQMS_Tst DB ����Ÿ ���
14:40 (��)�̳� ��Ƽ�� ������ ���忡�� ��ȭ ��: ������ �߿� �ڷγ�19 �˻縦 ����(ȭ���ϱ��� ��� �� �ϰ� �ڰ� �ݸ��϶�� ��)
		==> ������������(T: 1339)�� ��ȭ: ���� ������ �ڰ��ݸ� �� ������ �˻� ����� Ȯ���� ������ �˻� ������� �� 
		==> ü�� ����: 36.7��
17:00 ����
17:20 �ǳ� ������ Ÿ��
18:20 ����
19:20 ���ͳ� ���� ==> GQMS_Tst ����
23:00 ��ħ
==============================================================================================================

- Oralce SQL Developer 19.2 ��ġ
1. https://www.oracle.com/kr/tools/downloads/sqldev-v192-downloads.html
 1) Windows 64-bit with JDK 8 included ==> sqldeveloper-19.2.1.247.2212-x64.zip
==============================================================================================================
 
������������������ 2020.03.16(��) �۾� �������������������
---> 09:00 ~ 21:00 ==> 07:54 �ν��� �� ��ü(257U, 19U ����), ���ñٹ�, ���� ����ũ�� ����(������ö VPN ����, 9��)
							, (��)�̳� ��Ƽ�� ������ ���忡�� ��ȭ��(�ڷγ� �˻� ��� �������� ����: ���ῡ �������� ���� ���ڰ� ��)
 
- ���ñٹ�[��]
07:30 ���
08:05 ����
08:30 �ǳ� ������ Ÿ��
09:30 ����
09:00 ���ͳ� ���� ==> GQMS_Tst ����
12:10 �߽�
13:00 �ǳ� ������ Ÿ��
14:00 ����
14:20 ���ͳ� ���� ==> NoxMatRetMot ����
17:00 ����
17:20 �ǳ� ������ Ÿ��
18:20 ����
19:20 �����
19:40 �¼��� 2�� �ⱸ ���� ==> (��)�̳� ��Ƽ�꿡�� ���� �� ��� Ž(������ ����� 3��)
20:00 ���� ���
21:06 ���� ���� �ֺ� ����
21:10 �Ͱ�
23:00 ��ħ
==============================================================================================================

- GQMS_Tst ����
1. ��ȸ, ���� ó��
2. ���� ���ε� ó�� ==> NoxMatRetMot ���� �� ������ ��
==============================================================================================================
 
- NoxMatRetMot ����
1. GQMS_TstPrj �����Ͽ� NoxMatPrj ����(GQMS_Tst������ NoxMatRetMot������ ����) 
 1) C:\NoxMatRetMot
2. eclipse���� ����
 1) File ==> New ==> Proejct ==> New Proejct(��â) ==> General >> Project >> Next >:Ŭ�� ==> Project name: NoxMatRetMot
Location: C:\NoxMatRetMot\workspace ==> Finish: Ŭ��
3. eclipse �̸��� ����
 1) C:\NoxMatRetMot\eclipse\01. NoxMatPrj.exe  -->  C:\GQMS_Tst\eclipse\02. GQMS_TstPrj.exe   ==> ����
==============================================================================================================
    
������������������� 2020.03.17(ȭ) �۾� �������������������
---> 07:00 ~ 21:00 ==> VR �Կ�((��)�̳� ��Ƽ�꿡�� �η� 2��[����� ��� ����] ����)

- ������ö ����ȭ�й��� MAP ���� Prj[��] 
- ���� ����(/noxMat::Dmi.xfdl) ȭ�� ����
1. �����ϰ����(���� ���ε�) ��ư Ŭ�� �̺�Ʈ
/***************************************************************************
 * Even   : btn_excellUpload_onclick
 * Desc   : �����ϰ����(���� ���ε�) ��ư Ŭ�� �̺�Ʈ
 ****************************************************************************/
this.btn_excellUpload_onclick = function(obj:nexacro.Button,e:nexacro.ClickEventInfo)
{
	trace("[/EqupInfo.xfdl] [btn_excellUpload_onclick()] ==> [TEST_01]" );  
 
	this.ds_List.clearData(); 
	this.ds_ExcelTemp.clearData();
 	
	var excelParam = 
	{
		sheet:""			// sheet Name 
		, startrow:3   	// �����ϴ� ��(���� ����) 
		, bindcolumns:["NM_FCT", "NM_EQUP", "NO_FACILITY", "STR_CPK_TYPE", "EQUP_OPER_DEPT"		
				//  "NM_FCT""(�����), "NM_EQUP"(�����), "NO_FACILITY"(�ü� ��ȣ), "STR_CPK_TYPE"(���񱸺��ڵ�), "EQUP_OPER_DEPT"(�����μ�)
				, "CHRG_USR", "CHRG_USR_SUB", "REPAIR_TEAM", "N_VOLUME", "N_VOLUME_SIZE"	  		
				// ,"CHRG_USR"(�����(��)), "CHRG_USR_SUB"(�����(��)), "REPAIR_TEAM"(������), "N_VOLUME"(�뷮), "N_VOLUME_SIZE"(�뷮(ũ��))
				, "N_PRESSUREDRIVE", "N_PRESSUREDESIGN", "N_TEMPERATUREDRIVE", "N_TEMPERATUREDESIGN", "PMSS_PERMS_PSM"	  		
				// ,"N_PRESSUREDRIVE"(���� �з�), "N_PRESSUREDESIGN"(���� �з�), "N_TEMPERATUREDRIVE"(���� �µ�), "N_TEMPERATUREDESIGN"(���� �µ�), "PMSS_PERMS_PSM"(���㰡 PSM))
				, "PMSS_PERMS_FLOWCORN", "PMSS_PERMS_DANGER", "N_LOCATION", "N_HANDLING_FACILITY_NUMBER", "N_INSTALLATION_YMD"	  		
				// ,"PMSS_PERMS_FLOWCORN"(���㰡 ȭ����), "PMSS_PERMS_DANGER"(���㰡 ���蹰), "N_LOCATION"(��ġ),"N_HANDLING_FACILITY_NUMBER"(��޽ü���ȣ), "N_INSTALLATION_YMD"(��ġ�����))
				, "N_PURPOSE", "DT_INSPECTION", "STR_REMARK"	// ,"N_PURPOSE"(�뵵), "DT_INSPECTION"(�˻��̷�), "STR_REMARK"(���)
				, "MATTER_ID_A", "USE_AMT_A", "SAV_AMT_A"	  		// ,"MATTER_ID_A"(��޹���A), "USE_AMT_A"(��޹���A ��뷮), "SAV_AMT_A"(��޹���A ���差)
				, "MATTER_ID_B", "USE_AMT_B", "SAV_AMT_B"	  		// ,"MATTER_ID_B"(��޹���B), "USE_AMT_B"(��޹���B ��뷮), "SAV_AMT_B"(��޹���B ���差)
				, "MATTER_ID_C", "USE_AMT_C", "SAV_AMT_C"	  		// ,"MATTER_ID_C"(��޹���C), "USE_AMT_C"(��޹���C ��뷮), "SAV_AMT_C"(��޹���C ���差)
			]     	// Į�� ���� ==>
		, callback:"fn_callbackExcelImport"
	}; 
	
	this.gfn_ExcelImport(this.ds_ExcelTemp, excelParam);
};

/***************************************************************************
 * Even   : fn_callbackExcelImport
 * Desc   : �������ε� call back  ==> Grid���� ���� for�� ó��
 ****************************************************************************/
this.fn_callbackExcelImport = function()
{ 
	trace("[/EqupInfo.xfdl] [fn_callbackExcelImport()] ==> [�ݹ�_S] [TEST_01] [ds_ExcelTemp.CNT]"+ this.ds_ExcelTemp.rowcount 
		+"[ds_ExcelTemp.saveXML()] \n"+ this.ds_ExcelTemp.saveXML() );  
 
	if( this.ds_ExcelTemp.rowcount > 0 ) 
	{
		this.ds_List.appendData(this.ds_ExcelTemp, true);
		
		for(var i=0; i < this.ds_List.getRowCount(); i++)		// �������ε��� ����Ÿ(ds_List Ds) ������
		{   
			trace("[/EqupInfo.xfdl] [fn_callbackExcelImport()] ==> [TEST_51] [i_��°]"+ i +"[ds_List.STR_CPK_TYPE]"+ this.ds_List.getColumn(i, "STR_CPK_TYPE") 
				+"[ds_List.PMSS_PERMS_PSM]"+ this.ds_List.getColumn(i, "PMSS_PERMS_PSM")  ); 
			
			for(var j = 0; j < this.ds_Fct.getRowCount(); j++)		// ���� ���� ����Ÿ(ds_Fct Ds) ������
			{
				trace("[/EqupInfo.xfdl] [fn_callbackExcelImport()] ==> [TEST_71] [i_��°]"+ i +"[j_��°]"+ j +"[ds_List.NM_FCT]"+
					this.ds_List.getColumn(i, "NM_FCT") +"[ds_Fct.NM_FCT]"+ this.ds_Fct.getColumn(j, "NM_FCT") +"[ds_Fct.ID_FCT]"+ this.ds_Fct.getColumn(j, "ID_FCT") );
				
				if( this.ds_List.getColumn(i, "NM_FCT") == this.ds_Fct.getColumn(j, "NM_FCT"))	// ������� ������
				{
					trace("[/EqupInfo.xfdl] [fn_callbackExcelImport()] ==> [TEST_71_2] [i_��°]"+ i +"[j_��°]"+ j +"[ds_List.NM_FCT]"+ 
						this.ds_List.getColumn(i, "NM_FCT") +"[ds_Fct.NM_FCT]"+ this.ds_Fct.getColumn(j, "NM_FCT") +"[ds_Fct.ID_FCT]"+ this.ds_Fct.getColumn(j, "ID_FCT") );
				
					this.ds_List.setColumn(i, "ID_FCT", this.ds_Fct.getColumn(j, "ID_FCT"));		// �����ڵ� ����
				}
			}	// end of for()
		}	// end of for() 
	}  
};
==============================================================================================================

- ���� �ɸ� ���� ���� Ǫ�� ���
1. PC �����
2. �α��� ����
3. �������� ���ε� ���(200313).xlsx ���� ��� ���� ó�� ==> ���ڸ� ��Ʈ�Ͽ��� ó��
4. �α���
==============================================================================================================

- ������ŷ ��û ���� üũ ���� �ۼ�
1. ������ŷ ��û ���� üũ ����_20200317.xlsx ���� ���� �ۼ��Ͽ� �ڹο� PM���� ���Ϸ� ����
==============================================================================================================
 
- ������ ����
1. /admin ==> /admin2020noxMat,  admin:: ==> admin2020noxMat::
2. /frame ==> /frame2020noxMat,  frame:: ==> frame2020noxMat::
3. /com ==> /com2020noxMat,  com:: ==> com2020noxMatt::
4. /noxMat  ==> /noxMat2020noxMat,  noxMat:: ==> noxMat2020noxMat::
==============================================================================================================

������������������� 2020.03.18(��) �۾� �������������������
---> 07:00 ~ 21:00 ==> ��� �濡 �Ȱ� ���ϰ� ��

- ������ö ����ȭ�й��� MAP ���� Prj[��]
- ���� ����(/noxMat::Dmi.xfdl) ȭ�� ����
1. �����ϰ����(���� ���ε�) ��ư Ŭ�� �̺�Ʈ ==> �Ϸ� @@@
==============================================================================================================

- Grid RowTyp ���� ó�� @@@
if(this.fv_ExcelUploadYn == "Y")		// �������ε尡 �Ǿ�����
{
	for(var i = 0; i < this.ds_List.getRowCount(); i++)
	{  
		//trace("[/EqupInfo.xfdl] [fn_Save()] ==> [TEST_51] [i_��°]"+ i +"[ds_List.getRowType]"+ this.ds_List.getRowType(i) );
		
		this.ds_List.set_enableevent(false);		// �̺�Ʈ�� �߻���ų�� ���θ� �����ϴ� �Ӽ�  
		this.ds_List.set_updatecontrol(false); 	// RowType�� �ڵ����� ������ ������ ���θ� �����ϴ� �Ӽ�

		var bSucc = this.ds_List.setRowType(i, Dataset.ROWTYPE_INSERT);	// RowTyp ���� ����(1: �ʱ� ��, 2: �߰��� ��, 4: ������ ��, 8: ������ ��)
		this.ds_List.set_updatecontrol(true);
		this.ds_List.set_enableevent(true);
		trace("[/EqupInfo.xfdl] [fn_Save()] ==> [TEST_51_2] [i_��°]"+ i +"[ds_List.getRowType]"+ this.ds_List.getRowType(i));
	} // end of for()
}
==============================================================================================================
 
- ��¥ expr ó��
1. expr:DT_INSPECTION ==null || DT_INSPECTION=='' ? '': 'date'		// �˻��̷� ���� ó��
<Cell col="21" textAlign="center" edittype="date" editdisplay="display" calendardisplay="display" calendardateformat="yyyy-MM-dd" 
	displaytype="expr:DT_INSPECTION ==null || DT_INSPECTION=='' ? '': 'date'" text="bind:DT_INSPECTION"/>
-------------------------------------------------------------------------------------------------------------------------------

- STRING Ÿ������ ��¥�� �ޱ�
1. �˻��̷� ����(DT_INSPECTION)�� STRING Ÿ���� ��� 2020-03-11 00:00:00 ����Ÿ �Է� �Ұ� ==> 20200311�� �����ؼ� �Է� �ؾ� ��.
/***************************************************************************
 * Even   : fn_callbackExcelImport
 * Desc   : call back
 ****************************************************************************/
this.fn_callbackExcelImport = function()
{  
	for(var i=0; i < this.ds_ExcelTemp.getRowCount(); i++)		// �������ε��� ����Ÿ(ds_ExcelTemp Ds) ������ 
	{  
		//trace("[/EqupInfo.xfdl] [fn_callbackExcelImport()] ==> [TEST_41] [i_��°]"+ i +"[ds_ExcelTemp.N_INSTALLATION_YMD]"+ 
			this.ds_ExcelTemp.getColumn(i, "N_INSTALLATION_YMD");
		
		if(!this.gfn_IsNull(this.ds_ExcelTemp.getColumn(i, "DT_INSPECTION")))		 // �˻��̷� ������ ���� �ƴϸ� @@@
		{ 
			var arrColList2 = String(this.ds_ExcelTemp.getColumn(i, "DT_INSPECTION")).split("-");		// String �ڸ���  
			//this.ds_ExcelTemp.setColumn(i, "DT_INSPECTION_R",  arrColList2[0] + arrColList2[1] + arrColList2[2] );		
			// �˻��̷� ����_R(DATE Ÿ��) ���� @@@
			this.ds_ExcelTemp.setColumn(i, "DT_INSPECTION",  arrColList2[0] + arrColList2[1] + arrColList2[2] );			
			// �˻��̷� ����(STRING Ÿ��) ���� @@@
		} 
	}	// end of for()
};
==============================================================================================================

- ����ũ ����
1. ���ƾ��� źź �׿��÷� ����ũ 3P��Ʈ(6P ��Ʈ, 21,300��) ==> ���� �ݾ�: 16,943��
http://www.livingpick.com/shop/shopdetail.html?branduid=1965598
==============================================================================================================

������������������� 2020.03.19(��) �۾� �������������������
---> 07:00 ~ 21:00 ==> �Ϸ� ���� ���� �ٶ�

- ������ö ����ȭ�й��� MAP ���� Prj[��]
- ���ǵ���(/admin2020noxMat::noxBlindFloorPlanP.xfdl) ȭ�� ����
1. ���� �̹��� ���
 1) �̹����� ���ó ����(BP: ���ǵ���, EE: �����Ƿ�, DP: �󼼵���, OW: ���� �۾���Ȳ)
 ==> TB_HCM_IMAGE A 	/* �ü� �ڷ� �̹��� ���� TB */  @@@ --> TB_HCM_ATTACH_FILE_02  A       /* ���� ÷�� ����_02 TB */
 2) ���� �̹��� �ڵ�(BP: ���ǵ���, EE: �����Ƿ�, MI: ��������, DP: �󼼵���, OW: ���� �۾���Ȳ) 
==============================================================================================================
 
<select id="searchReqGb_02" parameterType="java.util.Map" resultType="Map"> 
	/* �Ƿڱ���2 ��ȸ ==> [/TK11002Mapper.xml] [searchReqGb_02()] 2020.02.18, by ���¸�] */  
	SELECT FLOORPLAN_SEQ.nextval AS REQ_GB	 	/* �Ƿڱ���2(���� �̹��� ����) */
	FROM DUAL
</select>
==============================================================================================================

- ȸ��(11:50, ȸ�ǽ�)
1. ���Ȱ��� ���α׷� ���� ���� ���� ==> ������ ����, ��å �δ�ǥ
 1) SSO ��� ����
 2) ���Ȱ��� ������ �⺻������ �� �ص� ��: ��å �δ�ǥ�� ��Ȳ �ľ��ؼ� ��ó�Ѵٰ� ��
 ==> SSO ����ϱ�� �ߴٰ� ��å �δ�ǥ���� �ٽ� ������ ��
==============================================================================================================
 
������������������� 2020.03.20(��) �۾� �������������������
---> 07:00 ~ 15:00 ==> ������ ���� ����, ������(16:20 ~ 19:20): (��)�̳� ��Ƽ�� ������ �� ��� Ž(�� 4��, ��Ȳ ������ ��ü�ؼ� �ʰ� ���)
								--> 18:56 õ�տ� 2�� �ⱸ	--> 19:10 �븲�� --> 17:20 �Ͱ�

- ������ö ����ȭ�й��� MAP ���� Prj[��]
- ���ǵ���(/admin2020noxMat::noxBlindFloorPlanP.xfdl) ȭ�� ���� ==> �Ϸ� @@@
1. ����(FloorPlan) �̹��� ��ȸ, ����
 1) �̹����� ���ó ����(BP: ���ǵ���, EE: �����Ƿ�, DP: �󼼵���, OW: ���� �۾���Ȳ)
 ==> TB_HCM_IMAGE A 	/* �ü� �ڷ� �̹��� ���� TB */  @@@ --> TB_HCM_ATTACH_FILE_02  A       /* ���� ÷�� ����_02 TB */
 2) ���� �̹��� �ڵ�(BP: ���ǵ���, EE: �����Ƿ�, MI: ��������, DP: �󼼵���, OW: ���� �۾���Ȳ) 
==============================================================================================================

- NoxMatRetMot DB ���� ����(Tibero DB --> Oracle DB): ������ ����
1. /context-datasource.xml  ���Ͽ���
<!--// 01. NoxMatRetMot ����DB ���� �߰�[������: 2020.03.20, by ���¸�], Oracle DB //-->
<bean id="dataSourceSpied" class="org.apache.commons.dbcp.BasicDataSource" destroy-method="close">
	<property name="driverClassName"  value="oracle.jdbc.driver.OracleDriver" />
	<property name="url" value="jdbc:oracle:thin:@TAMA_HOME:1521:TAMADB" />
	 <property name="username" value="NOXMAT_MAP"/>
	<property name="password" value="tama339"/>
</bean> 
==============================================================================================================

- ��� ���� ���� ��û(�뵿��, 1�г� 1��)
1. 3�� 23��(��) ~ 4�� 3��(��): ��ȭ�� ��û
==============================================================================================================

������������������� 2020.03.21(��) �۾� �������������������
---> 08:00 ~ 18:00 ==> ������: 73.6kg

- �ָ�[��]
08:00 ���
08:10 ���� 
08:30 �ǳ� ������ Ÿ��
09:30 ����
10:00 ���ͳ� ���� ==> NoxMatRetMot Prj ����(������ö VPN ����)
12:00 �翺(����) ���[�ڰ� ��]
12:30 �ǳ� ������ Ÿ��
13:30 ���� 
14:00 ���ͳ� ���� ==> NoxMatRetMot Prj ���� 
18:00 ���� 
18:30 �ǳ� ������ Ÿ��(1�ð�)  
19:30 ����
19:40 ����
20:07 �ν��� �� ��ü(269U, 21U ����)
20:10 ���ͳ� ���� ==> NoxMatRetMot Prj ����
21:40 TV ��û ==> 
22:30 ��ħ
==============================================================================================================

- NoxMatRetMot Prj ����
0. ����[���� ����]���� �ҽ�, ����Ÿ �ޱ�
1. �ҽ� ����
2. DB ����
==============================================================================================================

- NoxMatRetMot ������ ����(���� ��ȭ)
1. /admin ==> /admin2020noxMat,  admin:: ==> admin2020noxMat:: --> �ű�
2. /frame ==> /frame2020noxMat,  frame:: ==> frame2020noxMat:: --> ����
3. /com ==> /com2020noxMat,  com:: ==> com2020noxMatt:: --> ����
4. /noxMat  ==> /noxMat2020noxMat,  noxMat:: ==> noxMat2020noxMat:: --> �ű�
==> ���� ���: C:\NoxMatRetMot\workspace\NoxMatRetMot\src\main\nxui\NoxMatRetMot
==============================================================================================================

������������������� 2020..03.22(��) �۾� �������������������
---> 08:00 ~ 18:00 ==>

- �ָ�2[��]
07:30 ���
08:05 ����
08:30 �ǳ� ������ Ÿ��
09:30 ����
09:00 ���ͳ� ���� ==> NoxMatRetMot �۾�
12:10 �߽�
12:30 �ǳ� ������ Ÿ��(ȭ��ǿ���)
13:30 ����
13:40 ���� �� û��, ħ�� �ݴ������� �ű�� ==> �ǳ� ������ ���� ������ �ű��(â���� �ְ� ���� �ÿ��ؼ� �ű�)
14:00 ���ͳ� ���� ==> NoxMatRetMot �۾�
17:00 ����
17:20 �ǳ� ������ Ÿ��
18:20 ����
19:20 �����
19:40 �¼��� 2�� �ⱸ ���� ==> (��)�̳� ��Ƽ�꿡�� ���� �� ��� Ž(������ ����� 3��)
20:00 ���� ���
21:06 ���� ���� �ֺ� ����
21:10 �Ͱ�
23:00 ��ħ
==============================================================================================================

- NoxMatRetMot Prj ���� ==> �Ϸ� @@@
1. �� ��Ʈ�Ͽ� 01. NoxMatPrj.xprj ���� ����
/* ���� ���� ��ȸ ==> [/TA11101Mapper.xml] [searchMatter()] [2020.02.20, by ���¸�] */  
WITH NOT_MAT_CNT_T1 AS 	/* NOT_MAT_CNT_T1(�������� ��ȸ) @@@@@@@ */
 ( 
 )
, GROUP_CD_STAT  AS 		/* GROUP_CD_STAT(�׷� ��ȸ) @@@@@@@ */
(       	  
	SELECT M.GROUP_CD AS GROUP_CD, M.GROUP_NM 
	FROM
	(        
		SELECT  'NOX1001' AS GROUP_CD, 'PSM' AS GROUP_NM
		FROM DUAL
		UNION ALL
		SELECT 'NOX1002' AS GROUP_CD, '����' AS GROUP_NM
		FROM DUAL
		UNION ALL
		SELECT 'NOX1003' AS GROUP_CD, '���ع�' AS GROUP_NM
		FROM DUAL
		UNION ALL
		SELECT 'NOX1004' AS GROUP_CD, '���蹰' AS GROUP_NM
		FROM DUAL   
	) M
	WHERE 1 = 1  
	MAX(M.GROUP_CD)   ===> ORDER BY M.GROUP_CD 		// ���� ó�� @@@
)   
SELECT 0 AS NOT_MAT_CNT_SUM  	/* �������� �հ� */ 
			, MAX(CASE WHEN G.GROUP_CD = 'NOX1003' THEN SUM(T1.NOT_MAT_CNT) ELSE 0 END) NOT_MAT_CNT_01    /* �������� 1 */   
FROM NOT_MAT_CNT_T1 T1, NOT_MAT_CNT_T2 T2, NOT_MAT_CNT_T3 T3, NOT_MAT_CNT_T4 T4
				, GROUP_CD_STAT G
WHERE 1 = 1
	AND G.GROUP_CD = T1.GROUP_CD
	AND G.GROUP_CD = T2.GROUP_CD(+)
	AND G.GROUP_CD = T3.GROUP_CD(+)
	AND G.GROUP_CD = T4.GROUP_CD(+)
GROUP BY G.GROUP_CD
;
==============================================================================================================
 
������������������� 2020.03.23(��) �۾� �������������������
---> 07:00 ~ 21:00 ==> ���� �±ǵ� �������� ��ȭ ��(8:40, ��û���� 2�ְ� �޾� �ǰ�: ���� �ϱ� �����شٰ� ��)

- ������ö ����ȭ�й��� MAP ���� Prj[��]
- ���� ���ε� �˾�(/admin2020noxMat::noxUploadFileP.xfdl) ȭ�� ���� ==> �Ϸ� @@@
1. �̹��� ���ϻ���(/deleteFile.jsp)
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
String realPath = request.getParameter("path");		// ���� ���� ���
String realFlolerPath = request.getParameter("folder");		// ���� ���� ��� 

if(osName.indexOf("Window") > -1)
{
	realPath.toString().replace('/', '\\'); 
}

File folder = new File(realFlolerPath);
 
try {
	System.out.println("[/deleteFile.jsp] ==> [TEST_11] [folder.exists()]"+ folder.exists() );
	
	while(folder.exists()) 
	{
		File[] folder_list = folder.listFiles(); 	// ���ϸ���Ʈ ������ 		
		
		for (int j = 0; j < folder_list.length; j++) 
		{
			System.out.println("[/deleteFile.jsp] ==> [TEST_51] [j_��°]"+ j +"[folder_list[j].isFile()]"+ folder_list[j].isFile() );
			
			folder_list[j].delete(); 	// ���� ����  			
			System.out.println("������ �����Ǿ����ϴ�."); 
		}
		
		if(folder_list.length == 0 && folder.isDirectory())		// ������ ��� ���� �Ǿ��� ������ �����ϸ�
		{ 
			System.out.println("[/deleteFile.jsp] ==> [TEST_61] [folder_list.length]"+ folder_list.length +"[folder.isDirectory()]"+ folder.isDirectory() );
			
			folder.delete(); 	// ������� ���� 			
			System.out.println("������ �����Ǿ����ϴ�.");
		}
	}
}  
%>
==============================================================================================================

- ���� ����(������) (/admin::FmiAdmin.xfdl) ȭ�� ���� ==> �Ϸ� @@@
1.  3D���� ����Ÿ �ޱ�
/***************************************************************************
 * Even   : wb_NoxMat_onusernotify
 * Desc   : wb_NoxMat  ==> FmiAdmin�� �ε�� ������������ nexacro������ ������ ������ �� �߻��ϴ� �̺�Ʈ(02. 3D���� ����Ÿ �ޱ�)
 ****************************************************************************/ 
this.wb_NoxMat_onusernotify = function(obj:nexacro.FmiAdmin,e:nexacro.WebUserNotifyEventInfo)
{
	trace("[/FmiAdmin.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_01] [e.userdata]"+ e.userdata ); 
	// [e.userdata]EVENT_NM=SCREEN_CLICK&ID_FACILITY=100011&N_Y=12&N_Z=13&ID_FACILITY_02=100000&ID_MAP=9
 
	var sID_FACILITY;	// 01. �ü� �ڵ�   
	var sN_X;			// 02. X��
	var sN_Y;			// 03. Y��
	var sN_Z;			// 04. Z��
	var sID_FACILITY_02;		//05. ���� �ü� �ڵ�
	var sID_MAP;		 // 06. ID_MAP
	
	var arrColList = String(e.userdata).split("&");		// String �ڸ���
	trace("[/FmiAdmin.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_03] [arrColList[0]]"+ arrColList[0] +"[arrColList[1]"+ arrColList[1]
		+"[arrColList[2]"+ arrColList[2] +"[arrColList[3]"+ arrColList[3] +"[arrColList[4]"+ arrColList[4] );
	
	var arrEvent = String(arrColList[0]).split("=");	 	// �̺�Ʈ ==> 01. SCREEN_CLICK �̺�Ʈ
	trace("[/FmiAdmin.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_03] [arrEvent[0]]"+ arrEvent[0] +"[arrEvent[1]"+ arrEvent[1]  );
	
	if(arrEvent[1] == "SCREEN_CLICK")	 	// �̺�Ʈ���� SCREEN_CLICK �̸�
	{  
		var arrID_FACILITY = String(arrColList[1]).split("=");	 	//  01. �ü� �ڵ�
	 
		if(arrID_FACILITY[0] == "ID_FACILITY")	 	// 01. �ü� �ڵ� �̸�
		{  
			sID_FACILITY = arrID_FACILITY[1];		//  01. �ü� �ڵ�
		} 
		
		var arrN_X = String(arrColList[2]).split("=");	 // 02. X�� �ڸ���
		
		if(arrN_X[0] == "N_X")	 	// 02. X�� �̸�
		{  
			sN_X = arrN_X[1];		// 02. X�� 
		} 
		trace("[/FmiAdmin.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_51] [����Ÿ �ޱ�] [01. �ü� �ڵ�]"+ sID_FACILITY +"[02. X��]"+ sN_X 
			+"[03. Y��]"+ sN_Y +"[04. Z��]"+ sN_Z +"[05. ���� �ü� �ڵ�]"+ sID_FACILITY_02 +"[06. ID_MAP]"+ sID_MAP );
		
		if(!this.gfn_IsNull(sID_FACILITY))		 // 01. �ü� �ڵ尡 �� �ƴϸ�  @@@
		{ 
			this.fn_SaveMapInfo( sID_FACILITY		// 01. �ü� �ڵ�(ID_FACILITY) 
											, sN_X 			// 02. X��
											, sN_Y			// 03. Y��
											, sN_Z 			// 04. Z��
											, sID_FACILITY_02 			// 05. ���� �ü� �ڵ�
											, sID_MAP 		// 06. ID_MAP
										);		// ��ǥ ���� ����
			//trace("[/FmiAdmin.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_91]" ); 
		}
	} 
};
==============================================================================================================

- ��ü ȭ��(/noxMat::MainDisc.xfdl) ȭ�� ���� ==> �Ϸ� @@@
1. Ʈ����  ���� ��ȸ
<select id="searchTreeView" parameterType="java.util.Map" resultType="Map"> 
	SELECT LPAD(' ',(LEVEL-1)*2,' ') || NM_FACILITY AS VIEW_NM
				, '1' AS CHK_YN		/* üũ ���� */
				, LEVEL AS V_LEVEL
				, A.*
	FROM TB_HCM_FACILITYBASE A 	/* MAP �ü� ���� TB	*/
	START WITH ID_FK_PARENT IS NULL
	CONNECT BY PRIOR ID_PK_FACILITY = ID_FK_PARENT
</select>
==============================================================================================================

- ���ü������� NoxMatRetMot.war ���� ����(WAR ���Ϸ� Export�ؼ� ��Ĺ�� �����ϱ�)
1. Nexacro���� Refresh �� Applcation
2. eclipse����
 1) webapp ���� Refresh
 2) NoxMatRetMot ���� ���콺 �� Ŭ�� ==> Export ==> WAR file ==> WAR Export(��â)
  ��. WAR project: NoxMatRetMot
  ��. Destination: D:\01. TAMA_DATA\91. Back up_[����]\NoxMatRetMot ����\NoxMatRetMot.war
==============================================================================================================

- ������ ���� ��� ȸ��(19:40, ��Ȳ ����)
1. ������ ���� ��� �޼���.xlsx
==============================================================================================================
 
������������������� 2020.03.24(ȭ) �۾� �������������������
---> 07:00 ~ 21:00 ==> ���� ���� ���������� ��ȭ��(9 ~ 17, ���� ���� ��� �ð� ���� ���)

- ������ö ����ȭ�й��� MAP ���� Prj[��]
- ���� ����(������) (/admin::FmiAdmin.xfdl) ȭ�� ����
1. EVENT_NM=MAP_LOAD_DRAW_CALL";    // �̺�Ʈ��: 01. MAP_LOAD_DRAW_CALL:  �� ���, �׸��� ==> �Ϸ� @@@
==============================================================================================================
 
- ȸ��(15:30)
1. ������ö ����ȭ�й��� MAP ���� ==> ������ ����, ��Ȳ ����, ��å �δ�ǥ
 1) 3D�� ����Ÿ ������ ==> DB(4�� ���̺�) ��ȸ �� ����Ÿ ������ �ʹ� ���̼� �ӵ� ������ �߻� ==> DB �ѹ��� ��ȸ �� String���� ����
  ==> ��û��� ��ȸ���ϰ� ����Ÿ ������ �ϸ� �ּ� 2~30�ʰ� �ҿ�� ������ ����(user�� ��� ���� ������ �Ǵܵ�)
 2) SSO ���
 3) ����: �ڹ��� PM�ʿ��� ��ġ ���شٰ� ��
 4) ���� ����
  ��. 4�� 17��(ȭ) ���� ����
==============================================================================================================
   
������������������� 2020.03.25(��) �۾� �������������������
---> 07:00 ~ 21:00 ==> ��Ȳ ���� ��Ҹ� �ʹ� �ò������� ������ �϶�� ���� ��(������ ��� ��, 11��)

- ������ö ����ȭ�й��� MAP ���� Prj[��]
- ���� ����(������) (/admin::FmiAdmin.xfdl) ȭ�� ����
1. EVENT_NM=SCREEN_CLICK";    // �̺�Ʈ��: 02. SCREEN_CLICK: ȭ�� Ŭ���� ��ġ �� ���� ���� ��ȯ ==> �Ϸ� @@@
==============================================================================================================

- Webbrowser���� form_onload �� ����Ÿ ȣ�� ���� (��)���� ����Ʈ �ݼ��Ϳ� ����
1. form_onload�ÿ� this.wb_NoxMat.getProperty("document"); ���� �߻�
 /***************************************************************************
 * Even   : form_onload
 * Desc   :  �� �ε�
 ****************************************************************************/ 
this.form_onload = function(obj:nexacro.Form,e:nexacro.LoadEventInfo)
{
	trace("[/FmiAdmin.xfdl] [form_onload()] ==> [TEST_01] [�� �ε�]" );
	
	var sURL = nexacro.getApplication().gv_svcUrl +"util/noxMatWebBrowser/WebBrowserLoad.html";  	// WebBrowser Load ȭ��
	this.wb_NoxMat.set_url(sURL); 
};

/***************************************************************************
 * Even   : wb_NoxMat_onusernotify
 * Desc   : wb_NoxMat  ==> FmiAdmin�� �ε�� ������������ nexacro������ ������ ������ �� �߻��ϴ� �̺�Ʈ(02. 3D���� ����Ÿ �ޱ�)
 ****************************************************************************/ 
this.wb_NoxMat_onusernotify = function(obj:nexacro.FmiAdmin,e:nexacro.WebUserNotifyEventInfo)
{
	trace("[/FmiAdmin.xfdl] [wb_NoxMat_onusernotify()] ==> [TEST_01] [e.userdata]"+ e.userdata ); 
  
	var arrColList = String(e.userdata).split("&");		// String �ڸ���
 
	var arrEvent = String(arrColList[0]).split("=");	 	// �̺�Ʈ 
 
	if(arrEvent[1] == "MAP_LOAD")	 	// �̺�Ʈ��: 00. MAP_LOAD: Load
	{  
		arrRST_CD = String(arrColList[1]).split("=");	 	// 99. ����ڵ�
	 
		if(arrRST_CD[1] == "0")	 	// 99. ����ڵ尡 �����̸�
		{ 
			this.fn_3DMapLoadSearch(); 	// 3D�� ���� ��ȸ
		}
	}  
};

/***************************************************************************
 * Even   : fn_MapLoadCall
 * Desc   : Map ��ư Ŭ�� �̺�Ʈ(01. 3D�� ����Ÿ ������)
 ****************************************************************************/
this.fn_MapLoadCall = function()
{ 
	var sDRAW_QUERY = "35����DRAW_TYPE=1&FILE_NM=1������.InnoR3D
		����&DRAW_TYPE=3&ID_PK_FACILITY=H02&ID_FK_ROOT=undefined&NM_FACILITY=2����
		&N_X=18669.78&N_Y=40800&N_Z=1147.292&E_FACILITYTYPE=2���";
	trace("[/TEST.xfdl] [fn_MapLoadCall()] ==> [TEST_02] [sDRAW_QUERY]"+ sDRAW_QUERY );
	
	var objDoc = this.wb_NoxMat.getProperty("document"); 		// WebBrowser document   
 
	var objDom = objDoc.getProperty("all");
	
	var sSTS_CD = "2";		// �����ڵ�
	objDom.getProperty("STS_CD").setProperty("value", sSTS_CD); 			// �����ڵ� ==> ���� �߻� @@@@
	objDom.getProperty("LOAD_DRAW_QUERY").setProperty("value", sDRAW_QUERY); 			// �� ���, �׸��� ����  
};
==============================================================================================================

- setProperty ���� �߻�
1. ����:
nexacro (108052)> file://C:/NoxMatRetMot/workspace/NoxMatRetMot/src/main/webapp/NoxMatRetMot/admin2020noxMat/FmiAdmin.xfdl.js(1826):
Uncaught TypeError: Cannot read property 'setProperty' of undefined
  objDom.getProperty("STS_CD").setProperty("value", sSTS_CD); 			// �����ڵ�

2. ����: /WebBrowserLoad.html���Ͽ��� �����ڵ带 STS_CD_T2�� �߸� ǥ��
<td><input type="text"  id="STS_CD_T2" value="9"></td>		 <!--// �����ڵ� //-->
==> <td><input type="text"  id="STS_CD" value="9"></td>		 <!--// �����ڵ� //-->  ==> ���� ó�� @@@
==============================================================================================================

- TEST ����� �߰�
var nSucc = nexacro.getApplication().setVariable("gv_global1", this.objApp.gds_UserInfo.getColumn(0, "USERID") );	  
// gv_global1 ����(�α���ID) �߰�[������: 2020.03.25, by ���¸�] 
trace("[/loginFrame.xfdl] [fn_Callback()] ==> [TEST_42] [�ݹ�] [Succ]"+ nSucc +"[USERID]"+ this.objApp.gds_UserInfo.getColumn(0, "USERID") );
 
/* �α��� ���� ��ȸ ==> [/COMLOGINMapper.xml] [selectUserInfo()] [020.02.06, by ���¸�] */
SELECT *
FROM TB_GQ_CM_USERINFO 
WHERE 1=1
 AND EMP_NO = '1521222'
   -- AND NAME_K LIKE '%���¸�2%'
;
==============================================================================================================
   
������������������� 2020.03.26(��) �۾� �������������������
---> 07:00 ~ 21:00 ==> ����� �� ���� ���� �� �ͼ� �� ����(���� �帲, �㿡 �� ����)

- ������ö ����ȭ�й��� MAP ���� Prj[��]
- ���� ����(������) (/admin::FmiAdmin.xfdl) ȭ�� ����
1. EVENT_NM=OBJ_INSERT_START_CALL";    // �̺�Ʈ��: 03. OBJ_INSERT_START_CALL: �Է��� ������ ��ü�� ȭ�鿡 �����ϵ��� ��û 
 1) ���� ���: INSERT ==> �Ϸ� @@@
----------------------------------------------------------------------------------------------

 2) ���� ����
 1)  ���� �ü� �ڵ�(�����): UPDATE ==> �Ϸ� @@@
==============================================================================================================

- ���� �ε��� 3D ����Ÿ ȣ�� ����
1.  ((��)�̳� ��Ƽ�� ��Ȳ ������ ��ü DB�� ����Ѵٰ� ��
/***************************************************************************
 * Even   : fn_3DMapLoadSearch
 * Desc   :  3D�� ���� ��ȸ ==> 01. LOAD_DRAW_CALL: �� ���. �׸��� ��û(4�� �׾ƺ� ��ȸ: ��� ����)
 ****************************************************************************/ 
this.fn_3DMapLoadSearch = function()
{ 
	var sSvcID        = "search3DMapLoad"
	var sController   = "TA/TA11101/search3DMapLoad";			// 3D�� ���� ��ȸ
	var sInDatasets   = "ds_Search=ds_Search";
	var sOutDatasets  = "ds_3DMapLoad=ds_List"; 
	
	this.gfn_Transaction( sSvcID, sController, sInDatasets, sOutDatasets, sArgument, sCallbackFunc, bAsync );
};
==============================================================================================================

- OBJ_MOVE_START_CALL(��ġ ����)(Ʈ���信��) 
1. EVENT_NM=OBJ_MOVE_START_CALL";    // �̺�Ʈ��: 05. OBJ_MOVE_START_CALL: ��ġ ���� ==> �Ϸ� @@@
==============================================================================================================

- OBJ_DELETE_CALL(��ġ ����: �Է��� ������ ��ü�� ���� ��û) (Ʈ���信��) ==> �Ϸ� @@@
1. EVENT_NM=OBJ_DELETE_CALL";    // �̺�Ʈ��: 06. OBJ_DELETE_CALL: ��ġ ����(Ʈ���信��)
==============================================================================================================

������������������� 2020.03.27(��) �۾� �������������������
---> 07:00 ~ 14:30 ==> ������ ���� ����, ������(14:30 ~ 16:10): (��)�̳� ��Ƽ�� ������ �� ��� Ž --> 15:50 õ�տ� 2�� �ⱸ
									--> 16:00 �븲�� --> 16:10 �Ͱ�

- ������ö ����ȭ�й��� MAP ���� Prj[��] 
- 12. OBJ_SHOW: �Է��� ������ ��ü�� ȭ�鿡 ǥ�� ��û  ==> �Ϸ� @@@
OBJ_SHOW: �Է��� ������ ��ü�� ȭ�鿡 ǥ�� ��û
OBJ_HIDE: �Է��� ������ ��ü�� ȭ�鿡 ����� ��û 
==============================================================================================================

- 11. OBJ_DELETE_CALL: �Է��� ������ ��ü�� ���� ��û ==> �Ϸ� @@@
this.fn_TreeViewInfo(sID_FACILITY, sVIEW_NM);		// Ʈ���� ��ġ ���� ����
his.fn_SaveMapInfo();
==============================================================================================================
 
- 20. SCREEN_SAVE_CALL: ���� ȭ���� ��ũ���� ���� ��û ==> �Ϸ� @@@
1. this.fn_ScreenSaveCall();		// ���� ȭ���� ��ũ���� ���� ��û: �����Ƿ� ��ư Ŭ�� �̺�Ʈ�� ��(this.btn_EmgEvaRout_onclick)
==============================================================================================================
  
- 14. LAYER_SHOW: �Է��� ���̾ ���Ե� ��ü�� ȭ�鿡 ǥ�� ��û ==> �Ϸ� @@@
LAYER_SHOW	13	13	0	�Է��� ���̾ ���Ե� ��ü�� ȭ�鿡 ǥ�� ��û
LAYER_HIDE	13	14	0	�Է��� ���̾ ���Ե� ��ü�� ȭ�鿡 ����� ��û
==============================================================================================================

- 16. LAYER_LIST_CALL	15	15	0	���� ���鿡 ����� ��� ���̾� ����Ʈ ��ȯ ==> ���� �� @@@
1. 3D �ε� ���� �� �ڵ� ȣ������ ������(String)���� ����
==============================================================================================================
 
- 17. ICON_INSERT_START_CALL: ���鿡 �������� ���� ��û ==> ���� �� @@@
ICON_INSERT_START_CALL
ICON_INSERT_RUNNING
ICON_INSERT_END 
this.fn_IconlReg(sN_X 			// 02. X��
										, sN_Y		// 03. Y��
										, sN_Z 		// 04. Z�� 
										, sID_FK_ROOT 		// �ٿ��ü��ڵ� 
										,  sFacilGubun	// ���� ����(1: ���, 2: ����)
			);		// ������ ���
------------------------------------------------------------------------------------------------------

-- ������ �ڵ� Ÿ��  ==> @@@  ID_FK_TYPE
SELECT  A.*
FROM TB_HCM_ICONBASE  A 		 /* MAP �������� TB */ 
;
 
-- ID_CPK_ICON,  --> SEC_NO.....,  
-- ������ �ڵ� Ÿ��  ==> @@@  ID_FK_TYPE
--  �������� �θ� �ü��ڵ� /  ==> @@@  ID_CFPK_PARENT 
--   DDD ==> @@@  ID_FK_ROOT
==============================================================================================================

- ������[��]
16:10 �Ͱ� ==> ���濡 ���, ������, Ŀ�� ������ ��
16:10 �����(������)
16:20 �뵿�� ��������(������ ������ ��)
16:40 �Ͱ�
17:10 �����(������)
17:20 ���߲� ��������  ==> ���� ����ũ(����: 10,900��) ���� 
17:30 �Ͱ�(�翺 ���)
17:35 ����
17:50 �ǳ� ������ Ÿ��: ���� �濡��
		 ==> [��ũ���͸� �����] 196ȸ [�����ټ������] ������-��Ż���� ���� 2 (��Ż���� ����, ��������), �������: 2020.03.25
		 --> http://tv.dema.mil.kr/web/home/warhistory/mov/homeMovieView.do
18:50 ����
19:00 ����,  ������: 73.6kg
19:30 �ν��� �� ��ü(277U, 17U ����)
19:40 ���ͳ� ���� ==> ������ö VPN ���� �ȵ�
21:20 TV ��û ==> 
22:00 ��ħ(���� �� ħ�뿡�� ��ħ)
==============================================================================================================

������������������� 2020.03.28(��) �۾� �������������������
---> 08:00 ~ 18:00 ==> 

- �ָ�[��]
08:00 ���
08:26 ���� 
09:00 �ǳ� ������ Ÿ��: ���� �濡�� ==> ������ ���� ����(2020.02.11[ȭ]) ���
10:00 ����
10:00 ���ͳ� ���� ==> NoxMatRetMot Prj ���� �۾�
12:00 �翺(����) ���[�ڰ� ��]
12:30 �ǳ� ������ Ÿ��
13:30 ���� 
14:00 ���ͳ� ���� ==> NoxMatRetMot Prj ���� �۾�
18:00 ���� 
18:30 �ǳ� ������ Ÿ��(1�ð�)  
19:30 ���� 
21:40 TV ��û ==> 
22:30 ��ħ
==============================================================================================================

- NoxMatRetMot Prj ���� �۾�
1. ���� ���� ȭ��(������) (/DmiAdmin.xfdl) ���� ����
==============================================================================================================

- ���� ���� ȭ��(/FmiAdmin.xfdl)���� ���� ���� ȭ������ ����
/***************************************************************************
 * Even   : st_AreaTitle_onclick
 * Desc   : ���� ���� Ŭ�� �̺�Ʈ
 ****************************************************************************/  
this.st_AreaTitle_onclick = function(obj:nexacro.Static,e:nexacro.ClickEventInfo)
{ 
	// ���� ���� ȭ������ ���� @@@@@
}
==============================================================================================================
 
- ���� ���� ȭ��(/Fmi.xfdl)���� ���� ���� ȭ������ ����
/***************************************************************************
 * Even   : st_AreaTitle_onclick
 * Desc   : ���� ���� Ŭ�� �̺�Ʈ
 ****************************************************************************/  
this.st_AreaTitle_onclick = function(obj:nexacro.Static,e:nexacro.ClickEventInfo)
{ 
	// ���� ���� ȭ������ ���� @@@@@
}
==============================================================================================================

- ���� Y���� �м�
1. ���� ���� ��е� ���� ���̼��� ���� ���̵�, ����: 32,000��
https://smartstore.naver.com/gkiro/products/3160200661?NaPm=ct%3Dk8a4484w%7Cci%3D0AK0002YTlPsH90Qavmu%7Ctr%3Dpla%7Chk%3D5ba8fbce03010c8b009f9d0cb8ed7e59f8a5df3a
==============================================================================================================

������������������� 2020..03.29(��) �۾� �������������������
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
14:10 �����(������)
14:20 G��Ʈ ==> �ζ� ��ȯ(5õ��), �ζ� ����(G��Ʈ: 10��, ����)
14:40 ���̼� �븲2ȣ�� ==> ġ�� 2��, ��ġ ��, ����� û�ұ�(2��) 
15:10 �Ͱ�
15:30 ���ͳ� ����
17:00 ����
17:20 �ǳ� ������ Ÿ��
18:20 ����
19:20 ����� ==> ���濡 ��ġ, ����, ��ġ��, ����� û�ұ� ������ ��
19:40 �¼��� 2�� �ⱸ ���� ==> (��)�̳� ��Ƽ�꿡�� ���� �� ��� Ž(������ ����� 3��)
20:00 ���� ���
21:06 ���� ���� �ֺ� ����
21:10 �Ͱ�
21:15 ����
23:00 ��ħ
==============================================================================================================

- ����� ����(�翺�� ��Ź�ؼ� ������ ����)
1. [���] ���� ��ä ����� ����� �����ּ��� �޷� ���ױ�, ����: 58,350��, ��� ���(�߱�): �������������ȣ �߱�(P190020517082, JIN TAEMAN)
http://shopping.interpark.com/product/productInfo.do?prdNo=7064845836&uaTp=1&
==============================================================================================================

������������������� 2020.03.30(��) �۾� �������������������
---> 07:00 ~ 21:00 ==> 2020 ���� �ø��� ����(2021�� 7�� 23��(��): �ڷγ�19 Ȯ��?��)

- ������ö ����ȭ�й��� MAP ���� Prj[��] 
- ��ü ȭ��(������) (/admin::MainDiscAdmin.xfdl) ȭ�� ����
1. 3�� ȭ�� ���� 
==============================================================================================================

- WebBrowser�� �̿��� ����Ÿ ��ȯ
1. ��Ȳ ����(������ ���� ����)���� ���� ����
==============================================================================================================

4.  OBJ_LOOK_CALL: �Է��� ��ü�� �ٶ󺸵��� ��û(Ʈ���信��) ==> �Ϸ� @@@
/***************************************************************************
 * Even   : grd_TreeView_oncelldblclick
 * Desc   : Ʈ���� Grid ���� Ŭ�� �̺�Ʈ(01. 3D�� ����Ÿ ������)   
 ****************************************************************************/
this.grd_TreeView_oncelldblclick  = function(obj:nexacro.Grid,e:nexacro.GridClickEventInfo)
{
	var sSTS_CD = "3";		// �����ڵ�_10(3: ��û)
	var sID_FACILITY = this.ds_TreeView.getColumn(e.row, "ID_PK_FACILITY");	// �ü��ڵ� 
	var sVIEW_NM = this.ds_TreeView.getColumn(e.row, "NM_FACILITY"); 		// �� ��	 
 
	var objDoc = this.wb_NoxMat.getProperty("document"); 		// WebBrowser document
	var objDom = objDoc.getProperty("all");
	objDom.getProperty("STS_CD_10").setProperty("value", sSTS_CD);		// �����ڵ�_10
	objDom.getProperty("ID_FACILITY_10").setProperty("value", sID_FACILITY);		// �ü��ڵ� 
};
==============================================================================================================

������������������� 2020.03.31(ȭ) �۾� �������������������
---> 07:00 ~ 21:00 ==> 

- ������ö ����ȭ�й��� MAP ���� Prj[��] 
- ��ü ȭ��(������) (/admin::MainDiscAdmin.xfdl) ȭ�� ����
1. 3�� ȭ�� ����(3���� Div�� �и�)
 1) 00. ��ü ȭ�� ������ Div(div_RightGrdList)
 2) 01. ���� ȭ�� ������ Div(div_RightGrdList_01)
 3) 02. ���� ȭ�� ������ Div(div_RightGrdList_02)
==============================================================================================================

- Ư�� ����
https://wepplication.github.io/tools/charMap/#emoticon

~ ! @ # $ % ^ & * \ " ' + = ` | ( ) [ ] { } : ; - _ - �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��
�� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��
�� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��
�� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��
�� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��
�� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��
============================================================================================================
���������������������������������������������������������� 
+----------------------------------------------------// End //----------------------------------------------------+
����������������������������������������������������������
