

�����������������������������������������������������������
+---------------------------------------------// Memo(2003.03) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2003.03.03(��) �۾� �������������������  
---> 07:30 ~ 18:00 ==> �ְ����� 03_03 1°��
 
- ����� SP ���� 
- --<NAME> �߰�: SELFS01, SKDB00(���� DB) 
- [LSTD ���] ���� 
- [LSTD ���] ����� ���� 
- Saved Excel Open(O) ���� - Upload(U) ��� ���� 
Ex) C:\LOTTESK_TIS\����\Tools\Excel\FrmEF105.xls 
===============================================================================================================

������������������� 2003.03.04(ȭ) �۾� �������������������
---> 07:30 ~ 18:00 ==> 

- IO�����۾� 
- �����, ��������(LSTD) 
- DB�����۾� ���� 
- --<NAME> �߰� 
- �μ����ο� ���(������): EG142  
------------------------------------------------------------------------------------------------------------------  

SELECT * FROM EGB_T_05 --�μ����ļ��ο� DB 
ORDER BY Work_DT DESC, IO_YM DESC 

SELECT C.Bsn_Part, C.Bsn_Part_Nm, C.Bsn_Part_Nm FROM ACCT..AAA_T_00 as C  WHERE C.Bsn_Part = 01 --�����   
SELECT B.DEPT_ID, B.Bsn_Part FROM HRMS..HHA_T_01 B WHERE B.DEPT_ID = 0  --�μ��ڵ�  
------------------------------------------------------------------------------------------------------------------  
EGB_T_05: �μ����ļ��ο� 
�߻��μ� DEPT_ID int NOT NULL Yes 
��� IO_YM char(7) NOT NULL Yes 
�ͼӺμ� DEPT_ID2 int NOT NULL Yes 
�ļ��ο� Food_eatcnt int NOT NULL No 
����μ� DEPT_ID3 int NOT NULL No 
�ۼ��� WORK_ID int NULL No 
�ۼ����� Work_DT smalldatetime NULL No  
===============================================================================================================

������������������� 2003.03.05(��) �۾� �������������������  
---> 07:30 ~ 18:00

- �μ����ο� ���(������): EG142 
- �����ڷ� �������� cmd 
===============================================================================================================

If iBeforeIO_YM = 1 Then    '�����ڷ� ���������̸� 
	strIO_YM = Format(DateAdd("m", -1, strIO_YM), "yyyy-mm") 
Else 
	strIO_YM = txtIO_YM.Text 
End If 

txtIO_YM.Text = strIO_YM 
===============================================================================================================

- �ļ��ο�  
lblFood_EatCnt.Caption = Format(lblFood_EatCnt.Caption, "##,##") 
===============================================================================================================

- ������ ���Խ��� ��Ȳ: EG140 
EGB_T_03: ������ ���Ҹ� 
���ⱸ�� IO_SW char(1) NOT NULL Yes 
�߻��μ� DEPT_ID int NOT NULL Yes 
�������� IO_DT char(10) NOT NULL Yes 
�Ϸù�ȣ IO_NO int NOT NULL Yes 
���� IO_NO2 int NOT NULL Yes 
������ǰ�� FoodItem_ID char(5) NOT NULL No 
���� QTY decimal(15,3) NOT NULL No 
�ܰ� REQ_UP decimal(15,3) NOT NULL No 
�ݾ� Supp_Amt decimal(18,0) NOT NULL No 
�ΰ��� Vat decimal(18,0) NOT NULL No 
��� Remark varchar(60) NULL No 
-----------------------------------------------------------------------------------------  

SELECT * FROM EGB_T_03 ORDER BY IO_DT DESC --������ ���Ҹ� DB 
SELECT * FROM EGB_T_01 ORDER BY FoodItem_ID --������ ǰ��Master DB 

EGB_T_01: ������ ǰ��Master 
ǰ���ڵ� FoodItem_ID char(5) NOT NULL Yes 
ǰ��� FoodItem_NM varchar(50) NOT NULL No 
��ǰ���� Food_GRP char(5) NOT NULL No -- ��з� 
���� UNIT char(5) NOT NULL No 
���������� STK_MNG_TY char(1) NOT NULL No 
�ΰ������� VAT_TY char(1) NOT NULL No 
Ÿ�ý����ڵ� EtcSysCd1 varchar(20) NOT NULL No 
Ÿ�ý����ڵ�2 EtcSysCd2 varchar(20) NOT NULL No 
������� Remark varchar(50) NOT NULL No 
�۾��� WORK_ID int NOT NULL No 
�۾����� WORK_DT smalldatetime NULL No 
-----------------------------------------------------------------------------------------  

combo DB ã��( SP-> EXMPS����) 
  dbo.UP_GetCombo '700' 

combo �Һз����� ã�� => EGB_T_01 DB����(Food_GRP:��ǰ����(��з�)) 
SELECT L_CD, S_CD, S_Nm FROM ACCT..AAA_T_09 WHERE L_CD='751' -- (��ǰ����: '751'): cboFoodGubun 
---------------------------------------------------------------------------------------------------------------

751 00001 ä�ҷ� 
751 00002 ��ġ�� 
751 00003 ���� 
751 00004 ����Ǿ 
751 00005 ������ 
751 00006 ��� 
751 00007 �� 
751 00008 ���� 
751 00009 ��Ÿ 
---------------------------------------------------------------------------------------------------------------

SELECT L_CD, S_CD, S_Nm FROM ACCT..AAA_T_09 WHERE L_CD='700' and SCAT_NM1 = 1 -- (���ұ���-: '700'): Cbo_FoodInOut 
SELECT L_CD, S_CD, S_Nm FROM ACCT..AAA_T_09 WHERE L_CD='752'  -- (���������-: '752'): Cbo_FoodUnit 
---------------------------------------------------------------------------------------------------------------
SELECT '700' as ComboId , S_CD AS Code , S_NM AS Name, 
	'' AS EXT1, '' AS EXT2, '' AS EXT3, '' AS EXT4, '' AS EXT5 
FROM ACCT..AAA_T_09  
WHERE LTRIM(RTRIM(SCAT_NM1)) = LTRIM(RTRIM('')) 
AND L_CD  = '700' 
ORDER BY S_CD 

'��ǰ���� Combo 
oMulticomboE.SetCombo cboFoodGubun, Cbo_FoodGrp, addAll     '��ǰ����-> "751" 
cboFoodGubun.ListIndex = 0     

'���ұ��� Combo 
oMulticomboE.SetCombo cboFoodSubul, Cbo_FoodInOut, addNone, 1     '���ұ���-> "700" 
cboFoodSubul.ListIndex = 0 
===============================================================================================================

������������������� 2003.03.06(��) �۾� �������������������
---> 07:30 ~ 18:00

- �԰�ó�� ������Ȳ(������): EG141
EGB_T_02: ��������Ұ��� 
���ⱸ�� IO_SW char(1) NOT NULL Yes 
�߻��μ� DEPT_ID int NOT NULL Yes 
�������� IO_DT char(10) NOT NULL Yes 
�Ϸù�ȣ IO_NO int NOT NULL Yes 
���屸�� PLANT_CD char(5) NOT NULL No 
���ұ��� IO_CD char(5) NULL No 
�ŷ�ó Cust_Id int NOT NULL No 
���Һμ� Dept_Id2 int NOT NULL No 
�������� McdEvidKind char(5) NOT NULL No 
���ް� Supp_amt decimal(18,0) NOT NULL No 
�ΰ��� Vat decimal(18,0) NOT NULL No 
������� Remark varchar(50) NOT NULL No 
���Ǻμ� Dept_Id3 int NOT NULL No 
�������� Exp_dt3 char(10) NOT NULL No 
���ǹ�ȣ Exp_No3 int NOT NULL No 
�۾��� Work_id int NOT NULL No 
�۾����� work_DT smalldatetime NULL No  
--------------------------------------------------------------------------------------

SELECT * FROM EGB_T_02 ORDER BY FoodItem_ID -- ��������Ұ��� DB 
SELECT Cust_Id, Cust_Nm FROM ACCT..AAA_T_12 WHERE Cust_Id = '92' --�ŷ�ó 
--------------------------------------------------------------------------------------

- ���ں� �ֺν� ��Ȳ(������): EG139 
EGB_T_04: ������ ���Master 
�߻��μ� DEPT_ID int NOT NULL Yes 
ǰ���ڵ� FoodItem_ID char(5) NOT NULL Yes 
��� IO_YM char(7) NOT        NULL Yes 
������� before_qty decimal(15,3) NOT NULL No --�������(�����̿�) 
����԰� curr_iqty decimal(15,3) NOT NULL No 
������ curr_oqty decimal(15,3) NOT NULL No  
--------------------------------------------------------------------------------------  

SELECT * FROM EGB_T_04 -- ������ ���Master DB 
ORDER BY IO_YM DESC, FoodItem_ID DESC, DEPT_ID DESC 
===============================================================================================================
 
������������������� 2003.03.07(��) �۾� �������������������  
---> 07:30 ~ 18:00

- ������ ���Խ��� ��Ȳ( EG140) ���� 
  '�ֻ��� �࿡ �÷��� �հ� ������ ����(true:�Է¿�, False:��ȸ��) 
        Call SS1.AddNewLineForCalc(False, SS1.ColX(SS1_QTY), SS1.ColX(SS1_SUPP_AMT), _ 
                                SS1.ColX(SS1_Vat), SS1.ColX(SS1_ToTal)) 
===============================================================================================================
 
-- ������ ���Ҹ� DB(EGB_T_03) - ��ü ����
SELECT  * 
FROM EXPMS..EGB_T_03 A 
    INNER JOIN EGB_T_01 as B       --ǰ��� 
        On A.FoodItem_ID = B.FoodItem_ID   
    INNER JOIN ACCT..AAA_T_09 as C   --����            
        On B.UNIT = C.S_Cd 
            and C.L_CD='752'  
    INNER JOIN ACCT..AAA_T_09 as D   --��ǰ�����ڵ�             
        On B.Food_GRP = D.S_Cd 
            and D.L_CD='751'   
ORDER BY A.FoodItem_ID ASC, A.IO_SW, A.DEPT_ID, A.IO_DT, A.IO_NO, A.IO_NO2 ASC 
===============================================================================================================
 
-- ������ ���Ҹ� DB(EGB_T_03) - ǰ��� ��ȸ: A.FoodItem_ID�� ������ ��� ����Ÿ �׷�] 
SELECT    MAX(D.S_Nm) as ��ǰ���� 
,       MAX(B.FoodItem_NM) as ǰ���     
,       SUM(A.QTY) as ���� 
,       MAX(C.S_Nm) as ���� 
,       AVG(A.REQ_UP) as �ܰ� 
,       SUM(A.Supp_Amt) as ���ް� 
,       SUM(A.Vat) as �ΰ��� 
,       �հ� = (Cast(SUM(A.Supp_Amt) as FLOAT) + Cast(SUM(A.Vat) as FLOAT)) 
FROM EXPMS..EGB_T_03 A 
    INNER JOIN EGB_T_01 as B       --ǰ���             
        On A.FoodItem_ID = B.FoodItem_ID   
    INNER JOIN ACCT..AAA_T_09 as C   --����            
        On B.UNIT = C.S_Cd 
            and C.L_CD='752'  
    INNER JOIN ACCT..AAA_T_09 as D   --��ǰ�����ڵ�             
        On B.Food_GRP = D.S_Cd 
            and D.L_CD='751'  
WHERE A.IO_DT between '2003-03-01' and '2003-03-07' 
     and A.DEPT_ID = CASE WHEN -1 = -1 THEN A.DEPT_ID                      
                          ELSE -1 END 
     and A.FoodItem_ID = CASE WHEN '%' = '%' THEN A.FoodItem_ID 
                              ELSE '%' END   
     and A.IO_SW = right('0'+Cast('00001' as varChar),1)    --1�ڸ��� �����Ͽ� �� 
GROUP BY A.FoodItem_ID 
===============================================================================================================

% ������ ���Ҹ� DB(EGB_T_03) ���� ǰ���( A.FoodItem_ID)�� ���� ��ǰ����(D.S_Nm), ����(C.S_Nm)�� ���Ѵ�. 
bc_EG140.dll ����, ���� 
===============================================================================================================

������������������� 2003.03.08(��) �۾� ������������������� 
---> 07:30 ~ 18:00

- ������ ���Խ��� ��Ȳ( EG140) ���� 
 - SS1_DblClick�� �ش� Row ��� ���� ���� 
  
With SS1    '<SNAME> ����ǰ�� ��� ���� ���� Main 
	.ReDraw = False 
	.CellEditMode = False 
	'SSinit 0, , , , Col��, Hidden Col��ġ, 0, Me.name, ��Ʈ���� 
	.SSinit 0, "", "", "", 14, 15, 0, Me.Name, "SS1.Name" 
	'SSinit   Display����, Cell Type, Cell Color, Lock����, 
	'         Cell Width, Display length, �Ҽ�����ġ, Column��, Remark, Key, nHalign 
	.SSinit SS1_TOTAL_DT, "H", " ", "", 10, 8, 0, "��������", ""            '--HIDDEN COLUMN       
	.ReDraw = True 
	.RowAccentCase = WhenDbclick 
	.RowAccentColor = RGBRowAccent 
End With 
===============================================================================================================

������������������� 2003.03.10(��) �۾� �������������������  
---> 07:30 ~ 18:00 ==> �ְ����� 03_03 2°��

- �μ����ο� ���( EG142) ���� 
- ���� �ڷ� �������� 
- ���� ���� 
Const SS1_DEPT_ID2_CD_Org = 6   �߰� 
===============================================================================================================

'================== <Name> Sheet ��� ����=========================== 
'SS1 ===> 
Const SS1_DEPT_ID2 = 1          '<Name> �ͼӺμ� 
Const SS1_DIVI_ID = 2           '<Name> ����� 
Const SS1_Food_EatCnt = 3       '<Name> �ο� 
Const SS1_DEPT_ID3 = 4          '<Name> ����μ� 
Const SS1_DEPT_ID2_CD = 5       '<Name> �ͼӺμ��ڵ�                            'Hidden 
Const SS1_DEPT_ID2_CD_Org = 6   '<Name> �ͼӺμ��ڵ�_Origin(Open�� ���� �ڵ�)   'Hidden    ' \\\\\\\\\\\ 
Const SS1_DIVI_ID_CD = 7        '<Name> ������ڵ�                              'Hidden 
Const SS1_DEPT_ID3_CD = 8       '<Name> ����μ��ڵ�                            'Hidden 
===============================================================================================================

- ���ں� �ֺν� ��Ȳ( EG139) ���� 
- 0��° ROW  ����κ��� 2���� �ϱ�
  With SS1    '<SNAME> ���ں� �ֺν� ���� 
        .ColHeaderRows = 2              '<DESC>����κ��� 2�����Ѵ�. 
        .Row = 1 
        .RowHeight(-1) = CFONTSIZE + 1  '<DESC>����� 11�� 
        .FontBold = True                '<DESC>����۾� ���� 
  
        'SSinit 0, , , , Col��, Hidden Col��ġ, 0, Me.name, ��Ʈ���� 
        .SSinit 0, "", "", "", SS1_ToTal, 0, 0, Me.Name, "SS1.Name" 
        'SSinit   Display����, Cell Type, Cell Color, Lock����, 
        '         Cell Width, Display length, �Ҽ�����ġ, Column��, Remark, Key, nHalign 
        .SSinit SS1_Food_GRP, "E", "", "L", 10, 10, 0, "��ǰ����", "" 
        .SSinit SS1_FoodItem_NM, "E", "", "L", 20, 20, 0, "ǰ���", "" 
        .SSinit SS1_REQ_UP, "F", "", "L", 10, 10, 0, "�ܰ�", "" 
        .SSinit SS1_Unit, "E", "", "L", 8, 8, 0, "����", "" 
        .SSinit SS1_BF_Stock_QTY, "F", "", "L", 12, 12, 0, "�������", "" 
        .SSinit SS1_IN_QTY, "F", "", "L", 10, 10, 1, "�԰�", ""                 '<NAME>�԰� 
        .SSinit SS1_IN_Amt, "F", "", "L", 10, 10, 0, "�԰�", "" 
        .SSinit SS1_OUT_QTY, "F", "", "L", 10, 10, 1, "���", ""                '<NAME>��� 
        .SSinit SS1_OUT_Amt, "F", "", "L", 10, 10, 0, "���", "" 
        .SSinit SS1_ToTal, "F", "", "L", 10, 10, 1, "�����", "" 
         
        .SetValue SS1_Food_GRP, -999, "��ǰ����"       '<NAME>��ǰ���� 
        .SetValue SS1_FoodItem_NM, -999, "ǰ���"      '<NAME>ǰ��� 
        .SetValue SS1_REQ_UP, -999, "�ܰ�"             '<NAME>�ܰ� 
        .SetValue SS1_Unit, -999, "����"               '<NAME>���� 
        .SetValue SS1_BF_Stock_QTY, -999, "�������"   '<NAME>������� 
        .SetValue SS1_IN_QTY, -999, "����"             '<NAME>����(�԰�) 
        .SetValue SS1_IN_Amt, -999, "����"             '<NAME>����(�԰�) 
        .SetValue SS1_OUT_QTY, -999, "����"            '<NAME>����(���) 
        .SetValue SS1_OUT_Amt, -999, "����"            '<NAME>����(���) 
        .SetValue SS1_ToTal, -999, "�����"            '<NAME>����� 
                 
        '<DESC> MERGE ��Ŵ 
        .SetValue 0, 0, " " 
        .SetValue 0, -999, " " 
         
        .Row = 0:           .Row2 = -999 
        .RowMerge = 1 

        .Col = 0:           .Col2 = 0 
        .ColMerge = 1 
         
        .AddCellSpan SS1.ColX(SS1_Food_GRP), -1000, 1, 2        '��ǰ���� 
        .AddCellSpan SS1.ColX(SS1_FoodItem_NM), -1000, 1, 2     'ǰ��� 
        .AddCellSpan SS1.ColX(SS1_REQ_UP), -1000, 1, 2          '�ܰ� 
        .AddCellSpan SS1.ColX(SS1_Unit), -1000, 1, 2            '���� 
        .AddCellSpan SS1.ColX(SS1_BF_Stock_QTY), -1000, 1, 2    '������� 
        .AddCellSpan SS1.ColX(SS1_ToTal), -1000, 1, 2           '����� 
         
        '<DESC>������ ���� 
        .SortDisable = True 
        '<DESC>Ÿ��Ʋ�� �������� ���ϰ� 
        .ColMovingDisable = True 
        .BlockMode = False 
         
    End With 
            SS1.CellEditMode = False 
            SS1.ReDraw = False 
===============================================================================================================

������������������� 2003.03.11(ȭ) �۾� �������������������
---> 07:30 ~ 18:00

- ���ں� �ֺν� ��Ȳ( EG139) ���� 
- �������, �԰�, ����� 
===============================================================================================================

2003-03-05�̸� 
������� = �����̿�(before_qty) + (1, 2���� curr_iqty - curr_oqty) + �������(03-01~04)���� EGB_T_03 DB�� ����� ���� 
2003-03-05 �԰�� �԰� ��ô�� 
����� ��� = ������� + �������(03-01~04) + �������(03-05) 
===============================================================================================================

������������������� 2003.03.12(��) �۾� ������������������� 
---> 07:30 ~ 18:00

- ���ں� �ֺν� ��Ȳ( EG139) ���� 
- �������, �԰�, ����� 
- #temp ���̺� ����Ͽ� ���� 
===============================================================================================================

SELECT * FROM EXPMS..EGB_T_03 A WHERE A.IO_DT>= '2004-03-01' and A.DEPT_ID = 16 
SELECT *FROM EXPMS..EGB_T_04 A WHERE A.IO_YM = '2004-03' and A.DEPT_ID = 16 
SELECT *FROM #temp 
===============================================================================================================

������������������� 2003.03.13(��) �۾� ������������������� 
---> 07:30 ~ 18:00

- ���ں� �ֺν� ��Ȳ( EG139) ���� 
===============================================================================================================

- ������ ��� 
�ܰ� = A.IAMT1 / (CASE WHEN A.IQTY1 = 0 THEN 1 ELSE A.IQTY1 END) 

% ����, 2003-03-12�̸� 
EGB_T_04 DB���� 
1. �������(STOCK_MON_BF) = �����̿�(STOCK_MON) + (2003�� 1, 2���� ���԰�(BF_MON_IQTY) - ���԰�(BF_MON_OQTY)) 
-- 2003-01���� 2003-02���� 
EGB_T_03 DB���� 
���� ������ �԰�(IQTY) -- 2003-03-01���� 2003-03-11����  
���� ������ ���(OQTY) -- 2003-03-01���� 2003-03-11����   
2. �������(STOCK) = �������(STOCK_MON) + (���� ������ �԰�(IQTY) - ���� ������ �԰�(OQTY)) 
���� �԰�,�ݾ�(IQTY1, IAMT1) 
���� ���,�ݾ�(OQTY1, OAMT1) 
3. ����� = �������(STOCK) + (���� �԰�(IQTY1) - ���� ���(OQTY1)) 

SELECT * FROM EXPMS..EGB_T_03 A WHERE A.IO_DT>= '2004-03-01' and A.DEPT_ID = 16 
SELECT *FROM EXPMS..EGB_T_04 A WHERE A.IO_YM >= '2004-01' and A.DEPT_ID = 16 

% ����, 2003-01-10 �̸�( �ش� ���� 1���̸�) 
EGB_T_04 DB���� �������(STOCK_MON)�� 2003-01�� �ش��ϴ� �����̿�(STOCK_MON)�� ������ 
% ����, 2003-02-01 �̸�( �ش� ���� 1���̸�) 
EGB_T_03 DB���� �������(STOCK)�� �������(STOCK_MON)�� ������ 
===============================================================================================================

- �μ����ο� ���(EG142) ���� 
- ��ȸ���, ���� ������ �������� ���� 
ó�� �ε�� ����(2003-02) ������ �������⸦ �ؼ� ��ȸ���(2003-03)�� ����Ÿ�� Ȯ���ϰ� ����Ÿ�� �����ϸ� ��ȸ �Ұ��� 
===============================================================================================================

������������������� 2003.03.14(��) �۾� ������������������� 
---> 07:30 ~ 18:00

- �μ����ο� ���(EG142) ���� 
- �ͼӺμ� �ߺ� ��� 
 begin 
      RAISERROR ('�ͼӺμ�(%d)�� �̹� �����Ͽ� ������ �� �����ϴ�.',16, 1, @pDEPT_ID2)  WITH SETERROR 
      return 
 end 

SELECT * FROM EXPMS..EGB_T_05 A WHERE A.IO_YM= '2003-02' and A.DEPT_ID = 16 
===============================================================================================================

- ������� �ű� ���(EF101) ���� 
- SS2�� ���屸��(SS2_Plant_NM), �����(SS2_PTEM_NM), �������(SS2_PLine_NM), ����(SS2_Proc_NM),   -- �޺� 
   �ߺз�(SS2_GoodsLine_NM), ��ǰ��(SS2_Item_nm) �߰� -- �ڵ����� 

MCD_ITEM = "095" Mcd_Item_Id = "398" 

 Set adoRs = oMulticomboE.GetComboRs(MCD_ITEM) 
    Call SSComboAddByRs(SS2, adoRs, SS2_ITEM_NM, -1)   '��ǰ��(SS2 Combo) -> 410 
    adoRs.Close 
    Set adoRs = Nothing 

   SELECT * FROM PRDT..PAG_T_02 AS H 
===============================================================================================================

������������������� 2003.03.15(��) �۾� �������������������   

- ������� �ű� ���(EF101) ���� 
- ��ǰ��
If .ColX(SS2_Plant_NM) = Col Then          '���屸�� �̸� ==================== 
        strPlant_CD = SSGetComboCode(SS2, .ColX(SS2_Plant_NM), Row) 
        .Row = Row:      .Col = .ColX(SS2_Plant_CD) 
        .Text = strPlant_CD     '���屸��CD �Է� 

'("#PTT", strPlant_CD)�� ��ȸ�Ͽ� �����(SS2_PTEM_NM) ��Ʈ�� �ش� ����Ÿ�� �Ѹ��� 
        Set adoRs = oMulticomboE.GetComboRs("#PTT", strPlant_CD) 
        Call SSComboAddByRs(SS2, adoRs, SS2_PTEM_NM, Row)   '�����(SS2 Combo) -> 071 
        adoRs.Close 
        Set adoRs = Nothing 
end if 
===============================================================================================================

- EFA_T_01(����Master)���� ��ǰ��(Item_Id), �ߺз�GoodsLine_Cd(), ��ǰ����(PLine_Cd) ���� 
EFA_T_03 -- �����ûǰ�� �߰� �κ� 
��ǰ�ߺз� GoodsLine_Cd char(5) 
������� PLine_Cd char(3) 
��ǰ Item_Id char(9) 

���ΰ��� ProcD_Cd char(5) 
�����ڻ꿩�� Asst_YN char(1) 
�����ڻ��ȣ Asset_Cd char(6) 
�ջ꿩�� Add_TY char(5) 

���� Plant_Cd char(2) 
����� PTEM_ID int 
���� Proc_Cd varchar(4) 
------------------------------------------------------------- 

EFA_T_09 -- ���翹��ǰ�� �߰� �κ� 
��ǰ�ߺз� GoodsLine_Cd char(5) 
������� PLine_Cd char(3) 
��ǰ Item_Id char(9) 
���� Plant_Cd char(2) 
����� PTEM_ID int 
���� Proc_Cd varchar(4) 
===============================================================================================================

���屸��(SS2_Plant_NM), �����(SS2_PTEM_NM), �������(SS2_PLine_NM), ����(SS2_Proc_NM),  
   ��ǰ�ߺз�(SS2_GoodsLine_NM), ��ǰ(SS2_Item_nm) �߰� 
------------------------------------------------------------- 

-- ����(Plant_Cd) 
      SELECT @pComboId as ComboId , CODE_CD as Code , CODE_NM AS Name, 
               '' AS EXT1, '' AS EXT2, '' AS EXT3, '' AS EXT4, '' AS EXT5 
           FROM PRDT..PAA_T_02 
          WHERE CODEMNG_NO = '071' 
===============================================================================================================

-- �����(PTEM_ID)  
  SELECT DISTINCT a.pteam_id as CODE, isnull(b.dept_nm,'') as NAME 
FROM PRDT..PAP_T_22 A LEFT JOIN HRMS..HHA_T_01 B  
ON A.PTEAM_ID = B.DEPT_ID 
WHERE NOT A.PTEAM_ID IS NULL  
===============================================================================================================

������������������� 2003.03.17(��) �۾� ������������������� 
---> 07:30 ~ 18:00 ==> �ְ����� 03_03 3°��

- ������� �ű� ���(EF101) ����  
- ����(Plant_Cd) 
SELECT CODE_CD, CODE_NM 
FROM PRDT..PAA_T_02 
WHERE CODEMNG_NO = '071' 
CODE_CD  CODE_NM 
11 ������ 
12 õ�� 
13 �Ȼ� 
15 ���� 
31 ���������� 
32 õ�ȿ��� 
33 �Ȼ���� 
90 ������� 
99 ���� 
----------------------------------------------------------------------------------------------------------- 

- �����(PTEM_ID) ==> '#PT', �������� 
SELECT DISTINCT A.PLANT_CD, a.pteam_id, B.DEPT_NM 
FROM PRDT..PAP_T_22 A LEFT JOIN HRMS..HHA_T_01 B  
ON A.PTEAM_ID = B.DEPT_ID 
WHERE NOT A.PTEAM_ID IS NULL 
AND A.PLANT_CD = '' -- and A.PLANT_CD='11' --���� 

A.PLANT_CD a.pteam_id, B.DEPT_NM 
11 102 ����1�� 
11 103 ����2�� 
12 114 ����� 
31 196 ��������� 
----------------------------------------------------------------------------------------------------------- 

- �������(PLine_Cd) ==> '072', ��������, ����� 
SELECT  G.PLINE_CD, F.CODE_NM, G.PTEAM_ID 
FROM PRDT..PAA_T_02 as F 
INNER JOIN PRDT..PAP_T_22 as G 
    On F.CODE_CD = G.PLINE_CD 
    WHERE F.CODEMNG_NO = '072' 
     and G.PLANT_CD = '11' -- and MNGLIST2='11'     -�������� 
     and PTEAM_ID  ='102' -- and MNGLIST2='503' -����� 

CODE_CD CODE_NM MNGLIST2 
101 I/C ���ս� 102 
102 VITA-1ȣ 102 
390 ������ǰ 114 
----------------------------------------------------------------------------------------------------------- 

- ����(Proc_Cd) ==> '073', ��������, ������� 
SELECT H.CODE_CD, H.CODE_NM, H.MNGLIST1, H.MNGLIST2 
FROM PRDT..PAA_T_02 as H  
WHERE H.CODEMNG_NO = '073'  
and H.MNGLIST1 = '11' -- and MNGLIST1='11'  -�������� AND PLANT_CD = @pWhere1 
and H.MNGLIST2 = '101' -- and MNGLIST2='101'  -������� AND PTEAM_ID  = H.MNGLIST2 
----------------------------------------------------------------------------------------------------------- 

- ���� ����(ProcD_Cd) ==> '074', ��������, �������, ���� 
SELECT I.CODE_CD, I.CODE_NM, I.MNGLIST1, I.MNGLIST1, I.MNGLIST2, I.MNGLIST3 
FROM PRDT..PAA_T_02 as I 
WHERE I.CODEMNG_NO = '074'  
and I.MNGLIST1='11' -- and MNGLIST1='11'  -�������� 
and I.MNGLIST2='101' -- and MNGLIST2='101'  -������� 
and I.MNGLIST2='101' -- and MNGLIST2='1000'  -���� 
----------------------------------------------------------------------------------------------------------- 

- ComboBoxList �޺� ���� ���� 
 .Col = .ColX(SS2_PTEM_NM): .Row = .Row + 1 
MsgBox .TypeComboBoxList 
===============================================================================================================

������������������� 2003.03.18(ȭ) �۾� ������������������� 
---> 07:30 ~ 18:00

- ������� �ű� ���(EF101) ���� 
UP_EF101M02 ����, UP_EF101Q04 ���� 
c.f) ����- PE720 
===============================================================================================================

- ��ǰ �����Ƿ� ���(EF103) ����  
 SS2�� ���屸��(SS2_Plant_NM), �����(SS2_PTEM_NM), �������(SS2_PLine_NM), ����(SS2_Proc_NM), 
   ��ǰ�ߺз�(SS2_GoodsLine_NM), ��ǰ(SS2_Item_nm) �߰� ----> Hidden 
 SS3�� ���屸��(SS2_Plant_NM), �����(SS2_PTEM_NM), �������(SS2_PLine_NM), ����(SS2_Proc_NM), 
   ��ǰ�ߺз�(SS2_GoodsLine_NM), ��ǰ(SS2_Item_nm) �߰� 
 ------------------------------------------------------------------------------------------------------------------------- 

'��Ʈ�� ������޺� �缳�� 
oMultiCombo.SSSetCombo SS, SS.ColX(SS_PTEAM), -1, CD�����, strPlant    '<Name>����� <PName>SS 

'��Ʈ�� ��������޺� �缳�� 
oMultiCombo.SSSetCombo SS, SS_PLINE, SS.Row, CD���������, strPlant, _ 
	 GetComboCode(cboPteam_Id)                    '<Name>������� <PName>SS 

'��Ʈ�� �����޺� �缳�� 
oMultiCombo.SSSetCombo SS, SS.ColX(SS_PROC), -1, CD�����ڵ�, strPlant   '<Name>���� <PName>SS 
------------------------------------------------------------------------------------------------------------------------- 

SELECT * FROM EFA_T_03  WHERE Cont_Ym>='2003-03' 
===============================================================================================================

������������������� 2003.03.19(��) �۾� �������������������
---> 07:30 ~ 18:00

- ��ǰ �����Ƿ� ���(EF103) ���� 
 SS2 �Ϻ� �߰�, SS3 �Ϻ� �߰� 
UP_EF103M01 ����, UP_EF103Q03 ���� 
===============================================================================================================

- ��ǰ �����Ƿ� ����(EF110) ����  --> �Ƿڹ�ȣ ��(cmdSearchNum) Click  
 UP_EF110Q02 ����  
===============================================================================================================

- ǰ��(��-�ߺз�) ����(EF141) ����  --> ���߰�(cmdInsert) Click 
 With FrmEF103.SS3 �Ϻ� Į����ġ ����  
===============================================================================================================

- ���� ������ ���(EF105) ���� 
 ��ǰ���Ǽ� Print���� �����, ��ǰ����, ������� ����  
UP_EF105Q09 
===============================================================================================================

- Inner JOIN 
�ΰ��� ���õ� Ű�� �ִ� ���̺��� Column�� ���� �� �� 
Join ���ǿ� �´� �ุ �˻��մϴ�.  

- OUTER JOIN 
�� ���̺��� ������ ���� LEFT �Ǵ� RIGHT ���� 
��� ����� �������� �ݴ��ʿ� ���ش� ��Ī���� ��� 
�����ִ� JOIN�� �ǹ� 
===============================================================================================================

������������������� 2003.03.20(��) �۾� ������������������� 
---> 07:30 ~ 18:00

- ������ �Ϸ� ���(EF111) ���� 
����ǰ��������Ȳ Print���� ��ǰ�ߺз�, ��ǰ����, ������� ���� 
UP_EF111Q03 
===============================================================================================================

- ���ں��ļ��ο� ���(EG145) �߰� 
===============================================================================================================

SELECT * FROM EGB_T_06 --���ں��ļ��ο� DB 
ORDER BY IO_DT DESC 

�߻��μ� Dept_Id int 
���� IO_DT char(10) 
�����ο� InWon1 int 
�߽��ο� InWon2 int 
�����ο� InWon3 int 
�߽��ο� InWon4 int 
���ο� TotInWon int 
===============================================================================================================

������������������� 2003.03.21(��) �۾� ������������������� 
---> 07:30 ~ 18:00

- ������� �ű� ���(EF101) ���� 
- ������� ����() 
�� ��DB ���� ����Ÿ ��� 
�� ���� ���� COM ��� 
-  EF101, EF103,  EF105, EF110, EF111 
===============================================================================================================

- [��¥ ���� ����] 
- ������� ���Ϸ� 
===============================================================================================================

IO_DT = 2003-03-01 
strIO_YM = Mid(IO_YM , 1, 7)    ' ������� ����� ��ȯ 
strIO_YM = 2003-03
===================================================================================== 

If Mid(Arr(lngI, 1), 1, 7) <> Trim(txtIO_YM.Text) Then      '�����̸� 
	MsgBox "��ȸ����� ���ڰ� ���� ����̿��� �մϴ�.", vbInformation, "GetItem" 
	GetItem = Null 
	.Row = lngI:         .Col = SS1_IO_DT 
	.Action = SS_ACTION_ACTIVE_CELL 
	Exit Function 
End If 
===============================================================================================================

- SP����  
' ����Ϸ� ��ȸ 
WHERE SUBSTRING(A.IO_DT, 1, 7) = @pIO_YM 
===============================================================================================================

- �� ���� ����
- Dbclick�� �� ���� ���� 
  .RowAccentCase = WhenDbclick 
   .RowAccentColor = RGBRowAccent 
===============================================================================================================

- ���� ���� COM ���
- Code Help ã�� 
-����, ����, ȸ�� SP���� HelpCode1_Query�� ���� 
( 000 ~ : ���� 100 ~ : ���� 300 ~      : ���� 
400 ~ 699 : ȸ�� 700 ~ 799 : ������� 900 ~     : �λ�/�޿�)  
   ��. Sheet ������ CodeHelp ��� 
'      Call objcodehelp.GetHelpCodeFromSheet( _ 
'          "Major Code", ��Ʈ, ��Ʈ_row, Code_Column, Name_Column, _ 
'           '���� �Ѱܹ��� control', '���� �Ѱܹ��� control', 0, 0, 0, 0 (<- ���� ���� Control �� ���ٸ�  
0 ���� �Ѵ�.), _ 
'          '(True or False)', '(True or False)', "��ȸ���ǰ� ", " ��ȸ���ǰ� ", " ��ȸ���ǰ� ", " ��ȸ���ǰ� ", " ") 
Help Key Press ����, �˻�����(�����˻� or ���ð˻� - �Ϲ������� False �� �Ѵ�.)  
------------------------------------------------------------------------------------------------------------------- 

'      Call objcodehelp.GetHelpCodeFromSheet( _ 
'          "135", ss1, ss1.ActiveRow, ss1.ColX(SS1_CAR_CD2), ss1.ColX(SS1_CAR_CD3), _ 
'           ss1.ColX(SS1_CAR_ID), 0, 0, 0, ss1.ColX(SS1_CAR_CLASS), 0, _ 
'           Bool, False, " ", " ", " ", " ", " ") 

��. Control ���� CodeHelp ��� 
��Ʈ������ ���� �����ϴ�  (�������� ��Ʈ���� ����� �� ��Ʈ�� ROW �� �����Ѵٴ� ���̴�.) 
'      Call objcodehelp.GetHelpCodeFromControl("001", txtPart_Cd, txtPart_nm, _ 
'                  Nothing, Nothing, lblPart_ex, Nothing, Nothing, Nothing, _ 
'                  Bool, False, "", "", "", "") 
------------------------------------------------------------------------------------------------------------------- 

  ElseIf Control = "txtPart_nm" Then 
'      Call objcodehelp.GetHelpCodeFromControl("001", txtPart_Cd, txtPart_nm, _ 
'                  Nothing, Nothing, lblPart_ex, Nothing, Nothing, Nothing, _ 
'                  Bool, False, "", "", "", "") 
  end if 
===============================================================================================================

������������������� 2003.03.22(��) �۾� ������������������� 
---> 07:30 ~ 18:00

- ���ں� �ֺν� ��Ȳ(EG139) ���� 
===============================================================================================================
 
������������������� 2003.03.24(��) �۾� ������������������� 
---> 07:30 ~ 18:00 ==> �ְ����� 03_03 4°��

- ���ں��ļ��ο� ���(EG145) ���� 
- �հ� ��� ���� 
�� �μ����ο� ���(EG142) ���� 
- ��ȸ�� data�� ������ ������ �ļ��ο� clear 
- ���ǹ�ȣ ����� �߰��Է� �Ұ� 
- ���� ��ư �߰� 
===============================================================================================================

������������������� 2003.03.25(ȭ) �۾� ������������������� 
---> 07:30 ~ 18:00

- �μ����ο� ���(EG142) ���� 
- �ͼӺμ� ������ ����  
- ���ں� �ֺν� ��Ȳ(EG139) ���� 
- ��ȸ����(�������, ǰ�񱸺�,ǰ���) ������ ��ȸ 
- ��¹� �߰� 
===============================================================================================================

������������������� 2003.03.26(��) �۾� �������������������
---> 07:30 ~ 18:00

- �μ����ο� ���(EG142) ���� 
- �ͼӺμ� ������ ���� 
===============================================================================================================

- Long �� ""�� ��� 
Len���� ""�ɷ����� Trim(.Text) ���� 0�� �ƴ� �� �ɷ��� 

If Len(Trim(.Text)) <> 0 Then '���ǹ�ȣ�� �����ϸ� 
           If Trim(.Text) <> 0 Then 
===============================================================================================================

-  ����(SSHD_CUT)�� ������ �����[SSHD_CUT = "��"] 
NewData(), Form_Default()���� SS1�� �ʱ�ȭ 

   SS1.SSClear 
   SS1.AddEditLine 
===============================================================================================================

������������������� 2003.03.27(��) �۾� �������������������
---> 07:30 ~ 18:00

- �μ����ο� ���(EG142) ����  
�� �ּ� ��������[ cf.) frmSB160 ] 
 COMMON database���� 
 - HelpCode1_Query 
 CHS_T_31_city_L DB(�뵵��),  CHS_T_32_city_S DB(�߼ҵ���),  CHS_T_33 DB(��) 
 CHS_T_01 DB(�з��ڵ�-��), CHS_T_02 DB(�з��ڵ�-��) 
---------------------------------------------------------------------------------------------------------- 

 SELECT C.ZipCode, rtrim(A.Name)+' '+ rtrim(B.Name)+' '+ rtrim(C.Name) 
FROM   CHS_T_31_city_L A, CHS_T_32_city_S B, CHS_T_33 C 
WHERE  ((A.Level1 = C.Level1) and (B.Level1=C.Level1 and B.Level2=C.Level2))  
	AND  C.ZipCode like   rtrim(ltrim(@iStartCode+'%' ))  
ORDER BY C.ZipCode 
---------------------------------------------------------------------------------------------------------- 

SELECT C.ZipCode  as �����ȣ , rtrim(A.Name)+' '+ rtrim(B.Name)+' '+ rtrim(C.Name) as Ǯ�ּ� 
FROM CHS_T_31_city_L A, CHS_T_32_city_S B, CHS_T_33 C  
WHERE ((A.Level1 = C.Level1) And (B.Level1 = C.Level1 And B.Level2 = C.Level2))    
	-- AND C.ZipCode like  '%3%'  
---------------------------------------------------------------------------------------------------------- 

SELECT * 
FROM  CHS_T_33 C  
WHERE  C.Name  like  '%%' 

IF @imajorcode='003' 
BEGIN 
        SELECT c.ZipCode,rtrim(a.Name)+' '+ rtrim(b.Name)+' '+ rtrim(c.Name),'','','','','','','' 
        FROM   CHS_T_31_city_L a  with (nolock), CHS_T_32_city_S b  with (nolock), CHS_T_33 c   with (nolock) 
        WHERE  ((a.Level1 = c.Level1) and (b.Level1=c.Level1 and b.Level2=c.Level2))  
AND  c.ZipCode like   rtrim(ltrim(@iStartCode+'%' ))  
        ORDER BY c.ZipCode 
     
        RETURN 
END 
===============================================================================================================
 
- 2�� �̻� ����� ��� 
- cf.) ����� ���Ǽ� ����(EF119) ���� 
EF111Q02 
===============================================================================================================

������������������� 2003.03.28(��) �۾� ������������������� 
---> 07:30 ~ 18:00

- VB6.0 Package ����� 
1. DAO Drivers���� Jet 2.x: Jet 2.x ���� 
2. Include File���� �ּҷ�(03_03.24).mdb���ϰ� �ʿ��� .dll .ocx ���� ����(���� ���� ���� ��� ����) 
===============================================================================================================

- msado25.tlb ���� 
��ü�뷮 15M -> 6.29M (������ �뷮: 3.35M) 
- ������ �Ϸ� ���(EF111) ����  
- SS2�� ���屸��(SS2_Plant_NM), �����(SS2_PTEM_NM), �������(SS2_PLine_NM), ����(SS2_Proc_NM), 
   ��ǰ�ߺз�(SS2_GoodsLine_NM), ��ǰ(SS2_Item_nm) �߰� 
- ������ �Ϸ� ����(EF132) ���� 
- SS2�� ���屸��(SS2_Plant_NM), �����(SS2_PTEM_NM), �������(SS2_PLine_NM), ����(SS2_Proc_NM), 
   ��ǰ�ߺз�(SS2_GoodsLine_NM), ��ǰ(SS2_Item_nm) �߰� 
===============================================================================================================

������������������� 2003.03.29(��) �۾� �������������������
---> 07:30 ~ 18:00

- ���� ������ ���(EF105) ���� 
===============================================================================================================

������������������� 2003.03.31(��) �۾� ������������������� 
---> 07:30 ~ 18:00 ==> [�ְ����� 03_04 1°��

- ������� �ű� ���(EF101) ���� 
- SS2�� ���屸��(SS2_Plant_NM), �����(SS2_PTEM_NM), �������(SS2_PLine_NM), ����(SS2_Proc_NM) �κ� ���� 
===============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������