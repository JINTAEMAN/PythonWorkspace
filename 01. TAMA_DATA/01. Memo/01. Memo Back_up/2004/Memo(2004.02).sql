

�����������������������������������������������������������
+---------------------------------------------// Memo(2004.02) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2004.02.02(��) �۾� �������������������
---> 07:00 ~ 23:00 

- ȸ�� �м�
- ���콺 ���̼���(�ſ� �ٲ�)  
����: alert("����Ÿ �ٿ�ε��� ������ �߻��߽��ϴ�"); 
C:/gauce30/license/license.conf ���� 
--------------------------------------------------------------------------------------------------------------- 

gauce.license.serial=30855286-02204-30401-9B 
---------------------------------------------------------------------------------------------------------------

- �ذ�å: ���콺 Ȩ������ �ڷ�ǿ� ���� ���̼��� �����Ͽ� �ְ� Orion �����
http://member.shift.co.kr/index.php?member=sh_board_gdata&view_html=gaucedb&mode=board_click_view 
���콺 ���̼���(2004.02��)  
���콺 ���̼��� 2004�� 02�� 29�ϱ����Դϴ�.  
30855286-02204-30401-9B  
==============================================================================================================

������������������� 2004.02.03(ȭ) �۾� �����������������
---> 06:55 ~ 23:00 

- ȸ�� �м�
-- ��������ǥ(������) ��ȸ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 
SELECT  *                                                                     
FROM ( SELECT  *   FROM T_ACCTITLE ) A, 
  ( SELECT *   
FROM ( SELECT *   FROM T_ACCTITLE ) A, 
  ( SELECT *   FROM T_ACCSLIP ) B 
  ) B 
WHERE A.COMPANY_CD = B.COMPANY_CD(+)                                                                              
  AND A.ACCGROUP2 = B.ACCGROUP2(+) 
==============================================================================================================

-- ���Ͱ�꼭(������) ��ȸ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
SELECT  *                                                                     
FROM ( SELECT  *    
FROM ( SELECT  A.ACCTITLE_CD,                                                                   
( SELECT  C5                                                               
FROM  T_MISCOMMON                                                      
WHERE  COMPANY_CD = '01'                                                   
AND MISGROUP_ID = 'A001'                                         
AND MISCODE =  A.ACCGROUP) ACCTITLE_NM,                          
NVL(B.MNY1,0) MNY1,                                                              
NVL(B.MNY2,0) MNY2,                                                              
NVL(B.MNY3,0) MNY3,                                                              
NVL(B.MNY4,0) MNY4,                                                              
A.ACCGROUP'10' ORSEQ  
FROM ( SELECT *   FROM ( SELECT *   FROM  ) A, 
SELECT *    
FROM ( SELECT *   FROM T_ACCTITLE ) A,  
  ( SELECT *   FROM T_ACCSLIP ) B                                                                 
WHERE A.COMPANY_CD = B.COMPANY_CD                                                                            
   AND A.ACCTITLE_CD = B.ACCTITLE_CD                                                                          
GROUP BY A.COMPANY_CD,A.ACCGROUP ) B  
WHERE  A.COMPANY_CD = B.COMPANY_CD                                                                                   
AND A.ACCGROUP = B.ACCGROUP 

UNION ALL    ---// ===================================== 

SELECT  A.ACCTITLE_CD,                                                                                                
DECODE(A.ACCTITLE_CD,'451','��ǰ�������','455','��ǰ�������') ACCTITLE_NM,                                  
0 MNY1,                                                                                                       
NVL(A.DEBTOR_AMT - CREDITOR_AMT,0) MNY2,                                                                      
0 MNY3,                                                                                                       
NVL(A.DEBTOR_AMT_BEFORE - CREDITOR_AMT_BEFORE,0) MNY4,                                                        
'13''30' ORSEQ                                    
FROM  ( SELECT *   FROM T_ACCSLIP ) A             

UNION ALL    ---// ===================================== 

SELECT  A.ACCTITLE_CD,                                                          
DECODE(A.ACCTITLE_CD,'451','���ʻ�ǰ����','455','������ǰ����') ACCTITLE_NM,                              
0 MNY1,                                                                                                       
NVL(A.TR_AMT,0) MNY2,                                                                                         
0 MNY3,                                                                                                       
NVL(A.TR_AMT_BEFORE,0) MNY4,                                                                                  
'13'DECODE(A.ACCTITLE_CD,'451','40','455','50') ORSEQ       
FROM  ( SELECT *   FROM  T_COSTBASE ) A 

UNION ALL    ---// ===================================== 

-----------------------------..............(���) 

ORDER BY ORSEQ) AA                                                                                                 
ORDER BY AA.ORSEQ ) BB 
==============================================================================================================

-- �����׿��� ��꼭 ��ȸ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
SELECT  *                                                                     
FROM ( SELECT  *    
FROM ( SELECT A.ACCTITLE_CD ACCTITLE_CD,                                                                          
   'ó���������׿��� ' ACCTITLE_NM,                                                                    
   0 MNY1,                                                                                             
   NVL(CREDITOR_AMT,0) MNY2,                                                                           
   0 MNY3,                                                                                             
   NVL( CREDITOR_AMT_BEFORE,0) MNY4,                                                                   
   '10'A.ACCTITLE_CD ORSEQ              
FROM ( SELECT *   FROM ( SELECT *   FROM  ) A, 
SELECT *    
FROM ( SELECT *   FROM DUAL ) A,  
  ( SELECT *   FROM  T_ACCSLIP ) B                                                                           
 WHERE A.COMPANY_CD = B.COMPANY_CD(+)                                                                      
   AND A.ACCTITLE_CD = B.ACCTITLE_CD(+)     

UNION ALL    ---// ===================================== 

SELECT  A.ACCTITLE_CD ACCTITLE_CD,                                                                                 
CASE WHEN A.ACCTITLE_CD = '375' THEN '�����̿������׿���'                                                  
 WHEN A.ACCTITLE_CD = '369' THEN 'ȸ�躯���Ǳ���ȿ��'                                                  
 WHEN A.ACCTITLE_CD = '370' THEN '���������������'                                                    
 WHEN A.ACCTITLE_CD = '371' THEN '������������ս�' END ACCTITLE_NM,                                   
CASE WHEN A.ACCTITLE_CD = '375' OR A.ACCTITLE_CD = '371' THEN NVL(B.CREDITOR_AMT,0)                        
 WHEN A.ACCTITLE_CD = '369' OR A.ACCTITLE_CD = '370' THEN NVL(B.DEBTOR_AMT,0) END MNY1,                
0 MNY2,                                                                                                    
CASE WHEN A.ACCTITLE_CD = '375' OR A.ACCTITLE_CD = '371' THEN NVL(B.CREDITOR_AMT_BEFORE,0)                 
 WHEN A.ACCTITLE_CD = '369' OR A.ACCTITLE_CD = '370' THEN NVL(B.DEBTOR_AMT_BEFORE,0) END MNY3,         
0 MNY4,                                                                                                    
'20'A.ACCTITLE_CD ORSEQ          
FROM  ( SELECT *   FROM  T_ACCTITLE ) A, 
   ( SELECT *   FROM T_ACCSLIP ) B                                                                       
WHERE A.COMPANY_CD = B.COMPANY_CD(+)                                                                      
AND A.ACCTITLE_CD = B.ACCTITLE_CD(+)           

UNION ALL    ---// ===================================== 

SELECT  A.ACCTITLE_CD,                                                                                             
'��������' ACCTITLE_NM,                                                                                  
NVL(B.DEBTOR_AMT - B.CREDITOR_AMT,0) MNY1,                                                                 
0 MNY2,                                                                                                    
NVL(B.DEBTOR_AMT_BEFORE - B.CREDITOR_AMT_BEFORE,0) MNY3,                                                   
0 MNY4,                                                                                                    
'20'A.ACCTITLE_CD ORSEQ                  
FROM  ( SELECT *   FROM DUAL ) A,  
   ( SELECT *   FROM T_ACCSLIP ) B                                                                           
WHERE A.COMPANY_CD = B.COMPANY_CD(+)                                                                      
AND A.ACCTITLE_CD = B.ACCTITLE_CD(+) 

UNION ALL    ---// ===================================== 

-----------------------------..............(���) 

ORDER BY ORSEQ) AA                                                                                                 
ORDER BY ORSEQ ) BB 
==============================================================================================================

������������������� 2004.02.04(��) �۾� �����������������
---> 06:58 ~ 23:00 

- ȸ�� �м�
- ��� ���(������ȸ) 
http://211.43.195.98/Lec/lec001_01/default.htm  
-- [����] --  
2004 JS Project ����ȸ 
- 17:00 ~ 19:00 
==============================================================================================================

������������������� 2004.02.05(��) �۾� ����������������� 
---> 07:30 ~ 23:00 ==> �� 

- ȸ�� �м�
- EnterŰ ����
<script language="javascript"  for="grid_ds_list" event=OnKeyPress(kcode)>   
	if(kcode == "13"){ //����Ű�� ������ �� 
	if(grid_ds_list.GetColumn() == "ACCSLIP_DAY") {  // ������ �� 
	grid_ds_list.SetColumn("DCTYPE_NM");  //�߻��� ��ġ�� �÷�   
	f1.grid_ds_list.Focus();  
	return; 
	  
	} else if(grid_ds_list.GetColumn() == "VATTYPE_NM") {  // VAT�� ��   

	if(ds_list.rowposition == ds_list.CountRow){ // DataSet(ds_list)�� ������ ������ row���� ������(�������̸�) 
	grid_ds_list.SetColumn("ACCSLIP_DAY"); //�߻��� ��ġ�� �÷�   
	btn_new();    //  dsAddRowFocus(f1.ds_list,f1.grid_ds_list,"ACCSLIP_DAY");�� ��   
	} else { 
	grid_ds_list.SetColumn("ACCSLIP_DAY"); //�߻��� ��ġ�� �÷�  
	ds_listt.rowposition = ds_list.rowposition+1; //�߻��� ��ġ�� rowposition  
	grid_ds_list.Focus(); 
	return; 
	} 
	} 
	} 
</script> 
==============================================================================================================

-- [����] -- 
�ڻ��ǰ ����(����) 
- 15:00 ~ 16:00 
==============================================================================================================

������������������� 2004.02.06(��) �۾� �����������������
---> 07:30 ~ 23:00 

- ȸ�� �м�
- ��������
System.out.println("[TAMA] :: [_qryhash]"+ _qryhash); 
==============================================================================================================

������������������� 2004.02.07(��) �۾� ����������������� 
---> 07:20 ~ 16:00 ==> �� 

- ȸ�� �м�
- �������� ���α׷� list ���� 
==============================================================================================================

- [�ְ����� 04_02  1°��] 
�� ���� ���� ����  
 ȸ�����  
- �ڱݰ��� ���α׷� list ���� 
- �������� ���α׷� list ���� 
---------------------------------------------------------- 

�� ���� ���� ��ȹ 
 ȸ�����  
- �ڻ� ���� ���α׷� list ���� 
- �濵�������� ���α׷� list ����
==============================================================================================================

������������������� 2004.02.09(��) �۾� ����������������� 
---> 07:20 ~ 21:00 

- ȸ�� �м�
- ȸ����ǥ �Է� �м�, ���� 
�� ������ 
- �ŷ�ó��(ENTR_NM), �μӸ�(ACCSUB_NM), VATTYPE_NM(VAT) Code���� �ʿ��� 
- �����(SPOT_NM) Combo�� ó�� �ؾ� �� 
==============================================================================================================

������������������� 2004.02.10(ȭ) �۾� �����������������
---> 07:20 ~ 23:00 

- ȸ�� �м�
- Grid���� Combo ���� 
1. �������� ��� �� ���� 
2. DB���� Data �ҷ��ͼ� �� ���� 

<!-- "���׸�׷�"�� ���� �޺� DataSet --> 
<object id="ds_E212" classid=<%= CLASSID_TOINB_DATA %> codebase="<%= CD_TOINB_DATA %>"> 
<param name="DataID" value="/BaseCode/comCode/getMisCommonListB.jsp?MISGROUP_ID=E212"> 
<param name="syncload" value=true> 
</object> 
--------------------------------------------------------------------------------------------------------------------- 

<C>id=SPOT_CD <%=  CLR_GRID_EDITABLE %> <%=  CLR_GRID_HDCOLOR %> <%=  CLR_GRID_COLOR %>  
name=����CD2   width=60  align=Center  EditStyle=Combo Data='00:��ü,01:R&F,02:���θ�'</C> 
<C>id=SPOT_NM <%=  CLR_GRID_EDITABLE %> <%=  CLR_GRID_HDCOLOR %> <%=  CLR_GRID_COLOR %>  
name=�����2 width=60 HeadAlign=Center  EditStyle=Lookup data='ds_spot_combo:MISCODE:C1' </C>  
==============================================================================================================

-- MIS�����ڵ� ��ȸ(�����)  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 
SELECT A.* 
FROM T_MISCOMMON A 
WHERE A.COMPANY_CD = '01'   
AND A.MISGROUP_ID = 'A003'   
ORDER BY MISGROUP_ID,MISCODE 
------------------------------------------------------------------------------------------------------ - 

- ������ - ��ǥ �Է½� VAT���� ��ǥ�� �ڵ� �߰��ϱ� ����  
==============================================================================================================
  
- [i3shop  ��ǻ�� ���]
��ü SN: 50068 741 00136(�ﺸ Dreamsys) 
��Ƽ��4, DDR SDRAM  
==============================================================================================================

������������������� 2004.02.11(��) �۾� �����������������
---> 07:25 ~ 19:30 

- ȸ�� �м�
- �ڵ�Help ���� 
- MS-SQL DB 210.123.133.121 ID/PWD sa/project 
==============================================================================================================

- ��������Ȯ�ο�(���������� �������� �ʴ� �ʵ� �� ��ȣ�� ��ġ�ϴ� �ʵ� ���� ����) 
select  A.* 
from  "DB_Acc" A, 
(SELECT B.��ȣ,  B.��ǥ���� 
FROM  "DB_Acc" B 
WHERE B.�����ڵ� IS NULL 
GROUP BY B.��ȣ, B.��ǥ���� ) C 
where C.��ȣ = A.��ȣ 
 AND C.��ǥ���� = A.��ǥ����  
 -- AND A.��ǥ����='20030630' 
------------------------------------------------------------------ 

SELECT * FROM  "DB_Acc" A 
WHERE A.�����ڵ� IS NULL 
AND A.�ʵ�8<>'FFF'  
------------------------------------------------------------------ 

UPDATE "DB_Acc" A 
SET A.�����ڵ� = '209' 
WHERE A.�����ڵ� IS NULL 
AND A.�ʵ�7 = '�����󰢴����' 
==============================================================================================================

--// DB_Acc2 ���̺��� deliv_date�ʵ带 buy_date�� �̿��Ͽ� ����  @@@@@@@@@@@@@@@  @!!!!!!!!!  
UPDATE DB_Acc2 a 
SET a.�����ڵ� = (SELECT �����ڵ� FROM DB_Acc2 b  
 WHERE  a.�����ڵ� b.�����ڵ� 
   AND a.seq= b.seq) 
WHERE EXISTS (SELECT 'X' FROM DB_Acc2 b WHERE  a.cust_no= b.cust_no 
     AND a.seq= b.seq); 
------------------------------------------------------------------ 

--// DB_Acc2 ���̺� ����  @@@@@@@@@@@@@@@  @!!!!!!!!!  
UPDATE "DB_Acc" A 
SET A.�ʵ�8 = 'GGG' 
WHERE EXISTS (SELECT 'X' FROM "DB_Acc" B WHERE A.ID= B.ID 
     AND B.�ʵ�8='FFF'); 
==============================================================================================================
  
������������������� 2004.02.12(��) �۾� ����������������� 
---> 07:20 ~ 23:00 

- ȸ�� �м�
- ��������Ȯ�ο� ����
��������(148) �Ǹ������(929) ��������ǰ(198) 
AM����(��)(871) �����󰢴����(209) 

UPDATE "DB_Acc" A 
SET A.�����ڵ� = '209' 
WHERE A.�����ڵ� IS NULL 
AND A.�ʵ�7 = '�����󰢴����' 
==============================================================================================================

- ���ð��� ��ġ(859-7810) -> 24,000�� 
==============================================================================================================

- �ڵ�Help ����(�μ���, VAT) 
==============================================================================================================

- ��â �߱�(�Ϲ�  window.open) 
var target = "/BizMgr/common/popup/popEnterpriseP.jsp?p_entr_nm_para="+p_entr_no_nm2+ 
"&p_CountRow_para="+f1.ds_entr_detail.CountRow;  // ��â �߱� 

var result = window.open(target,"","width=460, height=485,scrollbars=yes,resizable=no,top=0,left=0"); 
alert("[TAMA] OnExit() :: [result]"+ result); 
==============================================================================================================

- ��â �߱�(�Ϲ�  ModalDialog) 
var target = "/BizMgr/common/popup/popEnterpriseP.jsp?p_entr_nm_para="+p_entr_no_nm2+ 
"&p_CountRow_para="+f1.ds_entr_detail.CountRow;  // ��â �߱� 
var result = searchPopup2( target, '250', '550','500', '450'); 
------------------------------------------------------------------------------------------------------- 

/********************************** 
* �˾�â ����(��, ���� �߰�) 
***********************************/ 
function searchPopup2( openFile, top, left, width, height )  
	var editForm = document.editForm; 
	var result = window.showModalDialog( openFile, null, "dialogTop:" + top + "px;dialogLeft:" + left + "px;dialogWidth:" 
	+ width + "px;dialogHeight:" + height + "px; edge:Sunken;" ); 
	return result; 
} 
==============================================================================================================

������������������� 2004.02.13(��) �۾� �����������������
---> 07:10 ~ 23:00 

- ȸ�� Test
- TEST(.56) DB ����(Net8) --- 
IP: 210.123.133.56 I3SHOP iiishop/i3shop 
------------------------------------------------------------------------------------------------------------- 

- ���� ����Ŭ ���� ���� ���� ���(NET8) 
Network administrator --> Net8 Configuration Assistant   
1. ���ó�Ʈ�� �̸� ����(radioüũ) --> �߰� --> ������ �̸�: I3SHOP --> TCP --> 
ȣ��Ʈ �̸�: 210.123.133.56 --> ��Ʈ�� �̸�: I3SHOP 
2. tnsnames.ora ���Ͽ� �������� �߰�  
 #---  ���� Test���� TNS ���� DB ȯ��( iiishop/i3shop)  ========================== 
I3SHOP = 
  (DESCRIPTION = 
    (ADDRESS_LIST = 
      (ADDRESS = (PROTOCOL = TCP)(HOST = 211.233.5.110)(PORT = 1521)) 
    ) 
    (CONNECT_DATA = 
      (SERVICE_NAME = I3SHOP) 
    ) 
  ) 
#--- ================================================================================================= 

- �͹̳� ���� ����(Ztem) 
IP: 210.123.133.56 i3shop/dacosystem 
------------------------------------------------------------------------------------------------------------- 
cd /opt/WebSphere/AppServer/logs 
[i3shop@newint logs]$ tail -f Default_Server_stdout.log 
==============================================================================================================

- ��뷮 DBȣ�� ����  
============> 1824   ==================> ���� 
AND B.ACCSLIP_DT >='20030101' 
AND B.ACCSLIP_DT <='20030107'  
------------------------------------------------------------------------------------------------------------- 
[�޼���] 
Called AccMgrBean ==> ejbCreate() 

============> 2089   ==================> ���� �߻� 
AND B.ACCSLIP_DT >='20030101' 
AND B.ACCSLIP_DT <='20030108'  

[�޼���] 
Remote Method ȣ�� �����Դϴ�. 
java.rmi.ServerError: Error occurred in server thread; nested exception is: 
        java.lang.OutOfMemoryError 
==============================================================================================================

- subquery ���� 
ORA-01427: single-row subquery returns more than one row 
subquery ���� single row �� ���ƿ;� �ϴµ� �� ����� ���ƿ� row �� 2�� �̻��϶� �߻��ϴ� �����Դϴ� 

sub_query ����� �������� ���� return�ϱ⶧���Դϴ�.  
���� �������� ���� ������ '=' ��ſ� 'IN'�� ����ϼž� �˴ϴ�. 
select u.upchname from projupch u, bidding t  
where u.upchcode IN (select company_no from bidding  
where notice_no=''1000000030'' group by company_no)  
==============================================================================================================

�� ��ǥ���� =================== 
- ��������� �ܺο� ������ �� ��ǥ�������� ���� �� 

@ ������ @ ����� 
----------------- ----------------- 
 ����    ���ݰ� ���  
----------------- ----------------- 
     ���¿���     
-----------------    
     ���뿹��     
----------------- ----------------- 
==============================================================================================================

�� ������ =================== 
- VAT �ڵ� 
01 ~ 10: ���� 11 ~ 20: ����� 
21: ����(����) 11 ~ : �����(����) 
-------------------------------------------------------- 

[ȸ����ǥ �Է�]���� ���������� ��ǰ�̰� VAT �ڵ尡 01 ~ 10�̸� �ܻ�����, �ΰ��� �ʵ尡 �ڵ� �߰��� 
[ȸ����ǥ �Է�]���� ���������� ��ǰ�̰� VAT �ڵ尡 11 ~ 20�̸� �ܻ����� �ʵ尡 �ڵ� �߰��� 
==============================================================================================================

�� �ϰ�ǥ ====================== 
1. �����ڻ��̶� ����Ϸ� ���� 1���̳� ����ȭ �� �� �ִ� �ڻ��̱��� 
�����ڻ��� ī�װ�(���丮) �Ʒ��� ������������ 
�����ڻ�� ����ڻ��� �ֽ��ϴ�. 
�����ڻ��� ����, �ܱ�Ÿ�, �ܱ� ����, �ܱ�ä��,�ܱ���� ���� �ֱ��� 
����ڻ��� ��ǰ, ����ǰ, ���ǰ, ����� ���� �ֽ��ϴ�.  

2. �����ڻ��� �ں��� ���ϴ� �Ű� 
3. �����ڻ��� �ں��� 
4. �����ڻ��� �ں��׿���, �����׿���, �ں����� ���� �ǰڽ��ϴ�.  
==============================================================================================================

������������������� 2004.02.14(��) �۾� �����������������
---> 07:30 ~ 13:00 ==> �帲 

- ȸ�� Test
- �ϰ�ǥ Test 
==============================================================================================================

- [�ְ����� 04_02 2°��] 
�� ���� ���� ����
 ȸ�����  
- �ڻ� ���� ���α׷� list ���� 
- �濵�������� ���α׷� list ���� 
---------------------------------------------------------- 

�� ���� ���� ��ȹ 
 ȸ�����  
- ȸ�� Data �׽�Ʈ(ȸ����ǥ����)
==============================================================================================================

������������������� 2004.02.16(��) �۾� �����������������
---> 07:38 ~ 21:40 

- ȸ�� Test
- ����ǥ Test 
--------------------------------------------------------------------------------------------------- 

- inline-view 
SELECT a.* 
FROM AAA a,  
(SELECT * FROM BBB ) b 
WHERE a.id = b.id 
AND a.id in (SELECT id FROM CCC ); 

������ FROM ���� �� SELECT * FROM BBB�� inline-view�� �ǰ� WHERE ���� �� SELECT id FROM CCC�� sub-query�� �˴ϴ�.  
==============================================================================================================

- ������� * 
������ �ݰ� 5.2% ����� 
==============================================================================================================

������������������� 2004.02.17(ȭ) �۾� �����������������
---> 07:00 ~ 18:30 

- ȸ�� Test
- ���޺�� 
1. ���޺���̶� ���� ���� �Ǵ� ���⿡ ����� ��� �� �� ��뿡 ���� �ش� �Ⱓ�� ������� �ƴ������� ����  
���� ������ ������� �̿��Ǵ� �κ��� ���մϴ�. ��, ��������� ������ ������ �ޱ�� �ϴ� ����� ü���ϰ� �����  
������ ���, �� ����׿� ����ϴ� �뿪�߿��� ����Ͽ� �̸������ ���� �������� �ƴ��� �뿪�� �ش��ϴ� �κ��� ���մϴ�.  
���� ���ں��, �����, ���������� ���� �ֽ��ϴ�. 

���޺���� �̹� ������ ��� �� ���������� �� ����� ȿ���� ��ġ�� ���� ���� ���Ѵ�.  
���� ��� 6�� 1�Ͽ� 12������ ����� 120,000���� ����翡 ������ ��� �������� 12������ ������ ������  
6�������� 60,000���� �ش��ϸ�, ������ 60,000���� ���޺����μ� ���޺���� �Ǵ� ���̴�. 
���޺��  60,000  /  �����  60,000 

�׸��� ������������ ������ 60,000���� ���ؿ��� ����ῡ �ش��ϹǷ� ������ ���� ó���Ѵ�. 
�����  60,000  /  ���޺��  60,000 
==============================================================================================================

- �巡��, ������ Ŭ�� ���� 
<BODY oncontextmenu="return false" onselectstart="return false"  
ondragstart="return false" text=black vLink=purple aLink=red link=blue  
bgColor=white leftMargin=0 topMargin=0 marginheight="0" marginwidth="0"> 
==============================================================================================================

������������������� 2004.02.19(��) �۾� �����������������
---> 07:30 ~ 18:30 

- ȸ�� Test
- �հ��ܾ� �û�ǥ 
==============================================================================================================

- ���θ� clipse ����
\\210.123.133.39\c$\CVS_ROOT\CCDOM 
C:\eclipse\eclipse.exe -data C:\CCDOM 
==============================================================================================================

#---  ���θ� Test���� TNS ���� DB ȯ��( iiishop/iiishop)  ==========================  
I3SHOPDB = 
  (DESCRIPTION = 
    (ADDRESS_LIST = 
      (ADDRESS = (PROTOCOL = TCP)(HOST = 210.123.133.51)(PORT = 1521)) 
    ) 
    (CONNECT_DATA = 
      (SERVICE_NAME = i3shopdb.testoracle) 
    ) 
  ) 
#--- ================================================================================================= 

- ��Ÿ(O) --> CVS����� Ž�� --> �ű�(N) -->  
��ġ 
ȣ��Ʈ(H): 210.123.133.39 
����� ���(R): C:\CVS_ROOT 
���� 
�����(U): bychan 
��ȣ(P): wjd0wn   
----------------------------------------------------------------------------------------- 

C:\WINNT\system32\drivers\etc\hosts 
#127.0.0.1       localhost 
210.123.133.31 test.mart.cc 
210.123.133.52 tamario.i3shop.cc 
==============================================================================================================

�� �Ǽ���(.111) �ҽ� ���� ���� ====================== 
-- Enitiy ��� ��� 
\\211.233.5.111\i3shop\src\bean  ���� ���� 
C:\CCDOM\Ccdom\CcdomBeans\com\i3shop\beans\BizStore  eclipse���� �ٿ� �ֱ� 

-- Bean ��� ��� 
\\211.233.5.111\i3shop\src\ejb  ���� ���� 
C:\CCDOM\Ccdom\CcdomEjb eclipse���� �ٿ� �ֱ� 

-- web ����(.jsp) ��� ��� 
\\211.233.5.111\websphere\installedApps\BizStore.ear\BizStore.war  ���� ����  
C:\CCDOM\Ccdom\CcdomWeb�ٿ� �ֱ� 
==============================================================================================================

- ���� �� ���� --- 
\\211.233.5.111\i3shop i3shop/i3shop1115974 
==============================================================================================================

- ����) �뱸�� ���� ��õ4�� 461-4 
==============================================================================================================

������������������� 2004.02.20(��) �۾� �����������������
---> 07:40 ~ 24:00 

- ���θ� ����
- �������� ���� TABLE(��ǰ��, �Ⱓ��)   
-- ���� ���� TABLE ���� 
CREATE TABLE T_BuyCount ( 
	USER_ID VARCHAR2 (20) NOT NULL -- ȸ��ID 
	ITEM_CD CHAR (4) NOT NULL, -- ��ǰ�ڵ� 
	COUNT NUMBER(3), -- ���ż��� 
	BUY_DT CHAR (8) -- ��������  
 ) 
------------------------------------------------------------------------------------------------------------------------ 

-- �������� ���� TABLE ���� 
CREATE TABLE T_BuyLimitCount ( 
	ITEM_CD CHAR (4) NOT NULL, -- ��ǰ�ڵ� 
	COUNT NUMBER(3) -- �������� ���� 
)  
==============================================================================================================

- �������� ���� TABLE(��ǰ��, �Ⱓ��)  
��ٱ��Ͽ� ���� ��, �ٷα����ϱ�:  ���� ���� Ȯ�� 
/cart/cartGetP.jsp?p_cartshow=Y /order/rnf/checkRnFSes.jsp 
�ֹ��� ������ �������� ��: ���� ���� ����  
==============================================================================================================

- eclipse ���� 
/Ccdom/CcdomWeb/common/bz_property.jsp ���Ͽ��� �Ʒ� ���� �κ� ����  
<jsp:useBean id="filedistlog" class="com.daco.util.FileDistLog" scope="application" /> 
==============================================================================================================

- ���θ� Test����  
http://test.mart.cc/index.jsp test01/unit 
------------------------------------------------------------------------------------------------------------------------ 

- ���θ� Test DB ���� 
C:\orion_ccdom\config\data-sources.xml���� 
------------------------------------------------------------- 

<data-source  
        class="oracle.jdbc.xa.client.OracleXADataSource"  
        name="i3shopDataSource"  
        location="jdbc/i3shop_Oracle_DBPool"  
        username="iiishop"  
        password="iiishop"  
        url="jdbc:oracle:thin:@210.123.133.51:1521:I3SHOPDB"  
        inactivity-timeout="5"  
        wait-timeout="10"  
        max-connections="10"  
        min-connections="2"  
 >  
------------------------------------------------------------------------------------------------------------------------ 

 - ���θ� �� DB ���� 
C:\orion_ccdom\config\data-sources.xml���� 
 ------------------------------------------------------------- 
<data-source  
        class="oracle.jdbc.xa.client.OracleXADataSource"  
        name="i3shopDataSource"  
        location="jdbc/i3shop_Oracle_DBPool"  
        username="iiishop"  
        password="iiishop"  
        url="jdbc:oracle:thin:@211.233.5.110:1521:iiishop"  
        inactivity-timeout="5"  
        wait-timeout="10"  
        max-connections="10"  
        min-connections="2"  
 >   
==============================================================================================================

- [inputHash]{p_company_cd=01, p_point=0, p_store_cd=S065, p_use_cmoney=0, p_bv=0, p_cmoney_useyn=N,  
p_direct_cmoney=0, p_gift_yn=N, p_reseller_price=187000, p_merchant_cd=0001, p_category_cd=U02010101,  
p_direct_money=0, p_ship_cl_cd=01, p_bonus_item_cl=01, p_gift_no=0, p_gift_nm=0, p_cyberpv=0,  
p_sale_price=187000, p_item_nm=(K)�������丮��帲 3�ܰ� 800g*12�� ����,  
p_limit_sale_yn=Y, p_old_qty=0, p_sale_max_qty=2, p_qty=4, p_cyberbv=0, p_gift_seq_no=0,  
p_bank_pv=0, p_consumer_price=187000, p_pv=0, p_ar_way_cd=01, p_sale_min_qty=1, p_item_cd=00143392, p_limit_sale_qty=996} 

// p_qty : ����  
// p_sale_max_qty : �Ǹ��ִ���� 
// p_sale_min_qty : �Ǹ��ּҼ��� 
==============================================================================================================

������������������� 2004.02.21(��) �۾� ����������������� 
---> 08:20 ~ 18:30 

- ���θ� ����
1. �������� �ʰ� ���� Ȯ��(�ٷα���, ��ٱ��� ������ üũ) 
/cart/cartPut.jsp ���� @@@@@@@@ 
------------------------------------------------------------------------------------------------------------------------ 

// īƮ���. PV�� �ִ� ��ǰ���δ� �̰����� üũ�Ѵ�. 
resultHash = cart.addItemOnCart(inputHash); 
------------------------------------------------------------------------------------------------------------------------ 

/Ccdom/CcdomBeans/com/i3shop/beans/BizStore/CartBean.java ���� @@@@@@@@ 
------------------------------------------------------------------------------------------------------------------------ 

public Hashtable addOnCart(Hashtable inputHash) throws Err { // ��ٱ��Ͽ� �ϳ��� ��ǰ�� Append 

// 1ȸ �ִ� �Ǹż���, 1ȸ �ּ� �Ǹż��� ���� 
//  retHash = checkSaleQty(inputHash);  ====================> ���� 
} 
==============================================================================================================

2. �������� �ʰ� ���� Ȯ��(��ٱ��� �������� üũ) 
/order/rnf/checkRnFSes.jsp ���� @@@@@@@@ 
------------------------------------------------------------------------------------------------------------------------ 

<%-- �ʿ��� �����Ͻ������� ����--%> 
<jsp:include page="/cart/cartGet.jsp" flush="true" /> 

<% //��������/�⺻������/cartGet.jsp���� �ѱ䰪 ���� 
Vector inputHash = (Vector)request.getAttribute("itemVec");  

// �и��� ������ ī�忡 ��� 
try { 
//īƮ���. PV�� �ִ� ��ǰ���δ� �̰����� üũ�Ѵ�. 
resultHash = cart.checkSaleQtyArr(inputHash); 

//��� �м� 
errflag = (String)util.getData("errflag",resultHash); 
errstr  = (String)util.getData("errstr",resultHash); 

//īƮ�� ���� ���ϸ� ����ó�� 
if (errflag.equals("true")) { 
util.log(MNAME,"��ǰ�� ��ٱ��Ͽ� ���� ���߽��ϴ�.\n"+ errstr); 
util.setErr(request,"A3E","��ǰ�� ��ٱ��Ͽ� ���� ���߽��ϴ�.\n <br>[����:"+errstr+"]"); 
%> 
<script language="JavaScript"> 
alert("[TEST_checkRnFSes]"); 
alert("<%= errstr%>"); 
history.go(-1); 
</script> 
<% 
return; 
} else { 

//�α��� ���� Ȯ�� 
if (!cart.getLogin()) { 
if(!util.isValidSession("MNO",request)) { 
%> 
<script language="javascript"> 
window.location.replace("/customer/loginfP.jsp?p_location=<%= p_url%>"); 
</script> 
<%   
return; 
} else { 
cart.setLogin(true); //�α��� ����� ��ٱ��Ͽ� ����  
} 
}//end if (�α��� ����) 

} //end if (��ٱ��Ͽ� ��Ҵ��� ����) 

} catch (Err err) { 
util.log(MNAME,err.getEXStr()); 
util.setErr(request,err.getCode(),err.getMsg()); %> 
<jsp:forward page="/err/errMsg.jsp" /> 
<% } catch (Exception e) { 
util.log(MNAME,"���� �߻� \n" + e.toString()); 
util.setErr(request,"123","�ý��� �����Դϴ�.\n�����ڿ��� ���� �ϼ���"); %> 
<jsp:forward page="/err/errMsg.jsp" /> 
<% } %> 
------------------------------------------------------------------------------------------------------------------------ 

/Ccdom/CcdomBeans/com/i3shop/beans/BizStore/CartBean.java ���� @@@@@@@@ 
------------------------------------------------------------------------------------------------------------------------ 

public Hashtable checkSaleQtyArr(Hashtable inputHash) throws Err {  // ��ٱ��Ͽ��� �����ϱ�� ��ǰ���� �ֹ� ������ 
�Ǹ� ������ �������� Ȯ�� 

/*================================================== 
�Է°��� �и��Ѵ�. 
==================================================*/ 
boolean _errflag = false; //���ڰ� �и����� ���� ���� 
String _errstr = "" ; //�������� 
  
//���ڵ� : ����Ʈ(Web��) 
String p_merchant_cd = (String)inputHash.get("p_merchant_cd"); 
if(p_merchant_cd == null  p_merchant_cd.equals("")) { 
p_merchant_cd = "0001" ; 
} 
//�����id 
String p_reg_id = (String)inputHash.get("p_reg_id"); 
if(p_reg_id == null  p_reg_id.equals("")) { 
_errflag = true; 
_errstr += " [p_reg_id] " ; 
} 
//�����ip 
String p_reg_ip = (String)inputHash.get("p_reg_ip"); 
if(p_reg_ip == null  p_reg_ip.equals("")) { 
_errflag = true; 
_errstr += " [p_reg_ip] " ; 
} 
//TERMINAL_NO 
String p_terminal_no = (String)inputHash.get("p_terminal_no"); 
if(p_terminal_no == null  p_terminal_no.equals("")) { 
p_terminal_no = ""; 
} 
if(_errflag) {   
log(MNAME+".checkSaleQty()","["+getDate()+"]"+"checkSaleQty(). �ǸŰ��ɿ��� Ȯ���Ҷ� ���� �߻�" + _errstr); 
throw new Err("A","2","G","["+getDate()+"]"+"�ý��� �����Դϴ�.\n�����ڿ��� �����Ͻʽÿ�."); 
} 

// �������� ���� ��ȸ 
String SQL = " SELECT COUNT(*) " + 
 " FROM T_BuyLimitCount A, T_BuyCount B " + 
 " WHERE A. ITEM_CD = B.ITEM_CD " + 
 " AND A.ITEM_CD = ? " + 
 " AND A.USER_ID = ? " + 
  " AND A.QTY > B.SALE_MAX_QTY ; 
/*================================================*/ 
// DB �Ķ���� ���� 
Vector param = new Vector(); 

//�ֹ��������� 
Vector p_arVec = (Vector)inputHash.get("p_arVec"); 

for(int i = 0; i < p_arVec.size(); i++) { 
ParamType rowparam = new ParamType(); 
Hashtable rowHash = (Hashtable)p_arVec.elementAt(i); 

rowparam.put(1,p_company_cd,Code.DB_VARCHAR); 
rowparam.put(2,p_merchant_cd,Code.DB_VARCHAR);  

param.addElement(rowparam); 
} 

//������ ȣ�� �Է°��� �����Ѵ�. 
Hashtable _qryhash = new Hashtable(); 
_qryhash.put("SQL",SQL); 
_qryhash.put("param",param); 

/*==================================================*/ 
// ���� �����͸� �����Ѵ�. 
Hashtable retHash = null; 

try{ 
//�������� �Է� 
retHash = setMMData(_qryhash); 
} catch(Err err) { 
log(MNAME+".checkSaleQtyArr()","���������� �����߽��ϴ�.\n" + SQL + "\n" + err.getEXStr()); 
throw err; 
} catch(Exception e2) { 
log(MNAME+".checkSaleQtyArr()","���� �߻�.\n" + e2.toString()); 
throw new Err("A","2","G","["+getDate()+"]"+"�ý��� �����Դϴ�.\n�����ڿ��� �����Ͻʽÿ�.");   
} 

return retHash; 
}//End of checkSaleQtyArr()  
==============================================================================================================

-- �������� ���� ��ȸ 
String CSQL = " SELECT COUNT(*) " + 
 " FROM T_BuyLimitCount A, T_BuyCount B " + 
 " WHERE A. ITEM_CD = B.ITEM_CD " + 
 " AND A.USER_ID = " + USER_ID= +"" + 
  " AND A.QTY > B.SALE_MAX_QTY ; 
 ------------------------------------------------------------------------------------------------------------------------ 

-- ���� ���� ����  
String ISQL ="INSERT INTO T_BuyCount(USER_ID , " +  //�����ID 
" ITEM_CD , " +  //��ǰ�ڵ�  
" QTY , " +  //���ż���   
" BUY_DT) " +  //�������� 
" VALUES ( ? , " +  //�����ID 
" ? , " +  //��ǰ�ڵ� 
" ? , " +  //���ż��� 
" SYSDATE) " ;  //�������� 
----------------------------------------------------------------------------------------------------------------------- 

-- ���� ���� ����  
String USQL = " UPDATE T_BuyCount SET  QTY = ? , " +  //���ż���  
" BUY_DT = SYSDATE " +  //�������� 
" WHERE USER_ID = ? " ;  //ȸ���ڵ� 
USQL += "  AND ITEM_CD  = ? " ;  //��ǰ�ڵ� 
==============================================================================================================

-- ���� ���� TABLE ���� 
CREATE TABLE T_BuyCount ( 
	---SEQ VARCHAR2 (20) NOT NULL -- SEQ 
	USER_ID VARCHAR2 (20) NOT NULL -- ȸ��ID 
	ITEM_CD CHAR (4) NOT NULL, -- ��ǰ�ڵ� 
	QTY NUMBER(3), -- ���ż��� 
	BUY_DT CHAR (8) -- ��������  
 ) 
------------------------------------------------------------------------------------------------------------------------ 

-- �������� ���� TABLE ���� 
CREATE TABLE T_BuyLimitCount ( 
	ITEM_CD CHAR (4) NOT NULL, -- ��ǰ�ڵ� 
	SALE_MAX_QTY NUMBER(3) -- �������� ���� 
)  
==============================================================================================================

������������������� 2004.02.22(��) �۾� �����������������
---> 08:20 ~ 19:00 

- ���θ� ����
- Vector�� Hashtable�� ���� 
------------------------------------------------------------------------------------------------------------------------ 

 <%-- �ʿ��� �����Ͻ������� ����--%> 
<jsp:include page="/cart/cartGet.jsp" flush="true" /> 

<% //��������/�⺻������/cartGet.jsp���� �ѱ䰪 ����  
Vector inputVec = (Vector)request.getAttribute("itemVec");   //Hashtable�� �޾ƾ� �� 
System.out.println("[TAMA] :: [inputVec_00]"+ inputVec); 

try { 
if (inputVec!=null && inputVec.size()>0) { 

for (int i=0; i<inputVec.size(); ++i) { 
//��ǰ����/�������� �и� 
inputHash = (Hashtable)inputVec.elementAt(i);   
} 
} 
} catch (Exception e) { 
util.log(MNAME,"���� �߻� ==> " + e.toString()); 
util.setErr(request,"123","�ý��� �����Դϴ�.<br>�����ڿ��� ���� �ϼ���"); 
%> 
<jsp:forward page="/err/errMsg.jsp" /> 
<% 
} %> 
 
<% 
//�и��� ������ ī�忡 ��� 
try { 
//īƮ���. PV�� �ִ� ��ǰ���δ� �̰����� üũ�Ѵ�.   
resultHash = cart.checkSaleQtyArr(inputHash); 
} 
==============================================================================================================

// ��ǰ������ �и�  
// p_item_cd : ��ǰ�ڵ� 
// p_qty : ����  
------------------------------------------------------------------------------------------------------------------------ 
  
- ���� ī�� ���� 
1. ����ǻ�� -> �ϵ���� -> ��ġ������-> ����, ����� �� ���� ��Ʈ�ѷ� 
���̿� �ڵ�/ ����� �ڵ� �ؿ� SoundMX I Digital Audio��� ���� ī�尡 ���������� �۵� �� 
2. ������ -> ���� �� ��Ƽ�̵�� -> �Ҹ�  
���޼���/ chord.wav ���� ���� �Ҹ��� ���� ���� 
==============================================================================================================

15:25 ������� 
16:00 ������� --> ���� ���� ����(053-350-2114) 
==============================================================================================================

210.123.133.56 ����(root/i3shop566414) 
2. �������� 
- cd /opt/WebSphere/AppServer/bin 
./adminserver.sh& 

3. Ŭ���̾�Ʈ ���� 
- cd /opt/WebSphere/AppServer/bin 
./adminclient.sh 
==============================================================================================================

// USER_ID (�Է���:�����ֹ��ÿ��� ��) 
if (getSesValue("USERID",req)==null getSesValue("USERID",req).equals("")) { 
ordHash.put("p_user_id",""); 
} else { 
ordHash.put("p_user_id",getSesValue("USERID",req)); 
} 
//ȸ��ID 
if (getSesValue("ID",req)==null getSesValue("ID",req).equals("")) { 
_errflag = true; 
_errstr += " [ȸ��ID] " ; 
} else { 
ordHash.put("p_mem_id",getSesValue("ID",req)); 
} 
==============================================================================================================

// ��������/�⺻������/cartGet.jsp���� �ѱ䰪 ����  
//Vector inputHash = (Vector)request.getAttribute("itemVec");   //Hashtable�� �޾ƾ� �� 
//System.out.println("[TAMA] :: [inputHash_00]"+ inputHash); 

Hashtable inputHash =  cart.getCartItems(); //cartVec(������ü) ��ȯ 
request.setAttribute("itemVec",itemVec); 
==============================================================================================================

[itemVec][{p_company_cd=01, p_point=0, p_store_cd=S065, p_use_cmoney=0, p_bv=0, p_cmoney_useyn=N, p_direct_cmoney=0,  
p_gift_yn=N, p_reseller_price=187000, p_merchant_cd=0001, p_category_cd=U02010101, p_direct_money=0, p_ship_cl_cd=01,  
p_bonus_item_cl=01, p_gift_no=0, p_gift_nm=0, p_cyberpv=0, p_sale_price=187000, p_item_nm=(K)�������丮��帲 3�ܰ� 800g*12�� ����,  
p_limit_sale_yn=Y, p_old_qty=0, p_sale_max_qty=2, p_qty=1, p_cyberbv=0, p_gift_seq_no=0, p_bank_pv=0, p_consumer_price=187000,  
p_pv=0, p_ar_way_cd=01, p_sale_min_qty=1, p_item_cd=00143392, p_limit_sale_qty=996}, {p_company_cd=01, p_point=0, p_store_cd=S065,  
p_use_cmoney=0, p_bv=0, p_cmoney_useyn=N, p_direct_cmoney=0, p_gift_yn=N, p_reseller_price=187000, p_merchant_cd=0001,  
p_category_cd=U02010101, p_direct_money=0, p_ship_cl_cd=01, p_bonus_item_cl=01, p_gift_no=0, p_gift_nm=0, p_cyberpv=0,  
p_sale_price=187000, p_item_nm=(K)���� ���丮��帲4�ܰ� 800g*12 ����, p_limit_sale_yn=Y, p_old_qty=0, p_sale_max_qty=2,  
p_qty=2, p_cyberbv=0, p_gift_seq_no=0, p_bank_pv=0, p_consumer_price=187000, p_pv=0, p_ar_way_cd=01, p_sale_min_qty=1,  
p_item_cd=00143393, p_limit_sale_qty=999} 
==============================================================================================================
  
- MS PROJECT CDŰ 
KW77G-TBTQ2-3V7V6-9DWP2-98VDJ 
==============================================================================================================
  
������������������� 2004.02.23(��) �۾� �����������������
---> 07:00 ~ 23:00 

- ���θ� ����
java.lang.IllegalStateException  
�� �ͼ����� �� �Ͼ������ �����ϸ�.. ���� ó���� �����մϴ�. (���� ���������� �ذ��ϱⰡ ���� ��쵵 ������..)  
�� �ͼ����� forward�� redirect�� �ϱ�����.. out.println() �Ǵ� response.setHeader(..)�� ���� �Լ��� ȣ���ؼ� �߻��մϴ�. 
�� �������� ���� �����͸� ���ۿ� �� ���ķδ� redirect�� forward�� �Ҽ� ���ٴ� ���Դϴ�.  
�߻��� jsp���� ���� ���� ������ ������ ���캸�ñ�..  
------------------------------------------------------------------------------------------------------------------------  

/usr/local/tomcat/work/Standalone/yphoo.com/_/Notice_jsp.java:48: cannot resolve symbol 
symbol  : class M_notice  
location: class org.apache.jsp.Notice_jsp 
      M_notice Notice = null; 

M_notice ��� class ȭ���� �ν��� ���ϰ� �ֽ��ϴ�.  
import ������ �� �غ��ñ�...  
------------------------------------------------------------------------------------------------------------------------  

java.lang.ClassCastException 
beans ȭ���̳� ���� ȭ���� �� ������ ������� �������� ��õ����ּž� �մϴ�.  
==============================================================================================================

- Bean ���� 
�׺������ ==> /Ccdom/bin/com/i3shop/beans/BizStore �ش� ���� ���� 
��Ű�� Ž���� ==> /Ccdom/CcdomWeb/WEB-INF/classes/com/i3shop/beans/BizStore �ٿ� �ֱ� 
==============================================================================================================
  
getSesValue("ID",req)  
util.setSesValue("ID",util.getData("MEM_ID",memHash).toLowerCase(),request); 

// �����id 
String p_reg_id = (String)inputHash.get("p_reg_id"); 
if(p_reg_id == null  p_reg_id.equals("")) { 
	_errflag = true; 
	_errstr += " [p_reg_id] " ; 
} 

param.put(1, (String)sessHash.get("USER_ID"), Code.DB_VARCHAR); 

/** 
 * ������ ������ �����Ѵ�. 
 *  
 * @param sessHash ����� hash 
 * @param inputHash ���� ���� 
 *      <pre> 
 *      Key              ����          �ʼ����� 
 *      --------------------------------------- 
 *      p_company_cd     ȸ���ڵ�         Y 
 *      p_buyer_id       ������ID         Y 
 *      p_seq_no         �������Ϸù�ȣ   Y 
 *      p_po_qty         ���ּ���         Y 
 *      </pre> 
 * @ejb.interface-method 
 */ 
public void updateTempPoDtl(Hashtable sessHash, Hashtable inputHash) throws Err { 
TempPoDtlDAO dao = new TempPoDtlDAO(MNAME); 

String p_po_qty = (String)inputHash.get("p_po_qty"); 

//--- �Է°� �˻� --- 
TempPoDtlDAO.checkDetailInput(inputHash); 
if( p_po_qty == null  p_po_qty.trim().equals("") ) 
throw new Err("9", "1", "E", "���ּ���[p_po_qty]�� �ʼ��Է��׸��Դϴ�."); 

//--- update --- 
inputHash.put("p_up_id", sessHash.get("USER_ID")); 
inputHash.put("p_up_ip", sessHash.get("USER_IP")); 

dao.update(inputHash); 
} 
==============================================================================================================

iBuyingMgr.updateTempPoDtl( sessHash, inputHash ); 
tempPoMerchantEditS.jsp 

addReturnOrderDtl 
addReturnItemReq 

// �������� ���� ��ȸ 
String SQL = " SELECT COUNT(*) " + 
 "FROM T_BuyLimitCount A, T_BuyCount B, T_BuyTimes C" + 
 "WHERE A. ITEM_CD = B.ITEM_CD " + 
  " AND A.TIMES_CD = C.TIMES_CD " + 
 " AND A.ITEM_CD = ? " + 
 " AND A.USER_ID = ? " + 
 " AND A.TIMES_CD = ? " + 
 " AND A.QTY  >  B.SALE_MAX_QTY "; 
==============================================================================================================

������������������� 2004.02.24(ȭ) �۾� �����������������
---> 07:20 ~ 23:00 

- ���θ� ����
-- ���� ���� ���� ���� TABLE ���� 
CREATE TABLE T_BuyCount (  
	USER_ID VARCHAR2 (20) NOT NULL, -- ȸ��ID 
	TIMES_CD CHAR (6) NOT NULL, -- ȸ������ 
	ITEM_CD CHAR (8) NOT NULL, -- ��ǰ�ڵ� 
	QTY NUMBER(3) DEFAULT '0',  -- ���ż��� 
	BUY_DT DATE            DEFAULT SYSDATE -- ��������  
) 
------------------------------------------------------------------------------------------------------------------------ 

-- �������� ���� TABLE ���� 
CREATE TABLE T_BuyLimitCount ( 
	ITEM_CD CHAR (8) NOT NULL, -- ��ǰ�ڵ� 
	TIMES_CD CHAR (6) NOT NULL, -- ȸ������ 
	SALE_MAX_QTY NUMBER DEFAULT '0',  -- �������� ���� 
	COMPANY_CD   CHAR (4), -- ȸ���ڵ� 
	STORE_CD   CHAR (4), -- �����ڵ� 
	CATEGORY_CD   CHAR (9), -- ī�װ� �ڵ� 
	  MERCHANT_CD   CHAR (4), -- ���ڵ� 
	USE_YN   CHAR (1), -- ��뿩�� 
	REG_DT DATE            DEFAULT SYSDATE, -- �������  
	PRIMARY KEY ( ITEM_CD, TIMES_CD ) 
) 
------------------------------------------------------------------------------------------------------------------------ 

-- �Ⱓ�� ȸ�� ���� TABLE ���� 
CREATE TABLE T_BuyTimes ( 
	TIMES_CD CHAR (6) NOT NULL, -- ȸ������ 
	ST_DT CHAR (8),   -- �������� 
	ED_DT CHAR (8),   -- ��������   
	REG_DT DATE            DEFAULT SYSDATE, -- �������  
	PRIMARY KEY ( TIMES_CD ) 
) 
==============================================================================================================

SELECT * FROM T_BuyCount	 -- ���� ���� ���� ���� 
SELECT * FROM T_BuyLimitCount	-- �������� ���� ���� 
SELECT * FROM T_BuyTimes	-- �Ⱓ�� ȸ�� ���� 
==============================================================================================================

-- �������� ����   
INSERT INTO T_BuyLimitCount (ITEM_CD, 
TIMES_CD, 
SALE_MAX_QTY,  
REG_DT) 
VALUES ('00143395', 
'200401', 
'2',   
SYSDATE) 
------------------------------------------------------------------------------------------------------------------------ 

-- �Ⱓ�� ȸ�� ���� 
INSERT INTO T_BuyTimes (TIMES_CD, 
ST_DT, 
ED_DT,  
REG_DT) 
VALUES (  '200401', 
'20040223', 
'20040306',   
SYSDATE) 
==============================================================================================================

-- �������� ���� ���� �ʵ� ���� 
ALTER TABLE T_BuyCount modify ( 
	ITEM_CD    CHAR (8) 
); 
==============================================================================================================

- ���� --> HashTable   @@@@@@@@@@@@@ 
 irowHash = (Hashtable)inputVec.elementAt(i); // ���� --> HashTable 
------------------------------------------------------------------------------------------------------------------------ 


 HashTable --> ����  @@@@@@@@@@@@@ 
<%  
//��������/�⺻������/cartGet.jsp���� �ѱ䰪 ����  
Vector inputVec = (Vector)request.getAttribute("itemVec");   //Hashtable�� �޾ƾ� �� 
  
try { 
if (inputVec!=null && inputVec.size()>0) { 
for (int i=0; i<inputVec.size(); ++i) {  
inputHash = (Hashtable)inputVec.elementAt(i); //��ǰ����/�������� �и�   
} 
} 
}  

try { 
//īƮ���. PV�� �ִ� ��ǰ���δ� �̰����� üũ�Ѵ�.   
boolean resultHash = cart.checkSaleQtyArr(sessHash, inputVec); // Vector �ѱ� 
%> 
==============================================================================================================

SELECT  COUNT(*) AS CNT 
FROM  T_BuyCount A, T_BuyLimitCount B, T_BuyTimes C   
WHERE A.ITEM_CD = B.ITEM_CD 
  AND A.TIMES_CD = B.TIMES_CD 
  AND A.ITEM_CD = B.ITEM_CD 
  AND A.TIMES_CD = C.TIMES_CD 
  AND A.TIMES_CD = '200401' 
  AND A.ITEM_CD = '00143395' 
  AND A.USER_ID = '9221' 
  AND B.SALE_MAX_QTY < 2 
==============================================================================================================

.111 ===> (Bean, EJB ����)        <-----------  .52 ���� �׽�Ʈ �� �ø� 
.112 
.113 

- ���� �ý��� 
tgcorp   ---> jar�� ���� 
nice ---> .class�� ���� 
==============================================================================================================

- �ֹ� ����  DB�� ���� �Ѵ�.(�������� ���� ������ ����) 
/order/orderPut_3.jsp ���� @@@@@@@@ 
------------------------------------------------------------ 

<% 
Hashtable inputHash = null; 
Vector itemVec = null;  

//��ٱ��� ��ȸ 
itemVec = cart.getCartItems(); //cartVec(������ü) ��ȯ 
request.setAttribute("itemVec",itemVec); 

//��������/�⺻������/cartGet.jsp���� �ѱ䰪 ����  
Vector inputVec = (Vector)request.getAttribute("itemVec");   //Hashtable�� �޾ƾ� �� 

Hashtable sessHash = new Hashtable(); 
sessHash.put("USER_ID",  (String)util.getSesValue("MNO", request));   // ȸ�� ��ȣ�� user id   
   
   
//�и��� ������ ī�忡 ��� 
try { 
// �ֹ� ���� ���� 
boolean resultHash = cart.setSaleQtyArr(sessHash, inputVec); // Vector �ѱ� 
     
} catch (Err err) { 
util.log(MNAME,err.getEXStr()); 
util.setErr(request,err.getCode(),err.getMsg()); %> 
<jsp:forward page="/err/errMsg.jsp" /> 
<% } catch (Exception e) { 
util.log(MNAME,"���� �߻� \n" + e.toString()); 
util.setErr(request,"123","�ý��� �����Դϴ�.\n�����ڿ��� ���� �ϼ���"); %> 
<jsp:forward page="/err/errMsg.jsp" /> 
<% } %> 
==============================================================================================================

/order/cartListDispS.jsp ���� @@@@@@@@ 
------------------------------------------------------------ 

Hashtable itemHash = null; 

//��������/��ۺ� Ȯ�� 
itemListVec=cart.getCartItems(); 

try { 
//���հ踦 ��� 
int sum_ship_price = cart.getShipPrice(); 
int pv = 0; 
int bv = 0; 
int point = 0; 
if (itemListVec!=null && itemListVec.size()>0) { 
for (int i=0; i<itemListVec.size(); ++i) { 

//��ǰ����,�������� �и� 
itemHash = (Hashtable)itemListVec.elementAt(i); 
itemTypeVec = (Vector)itemHash.get("p_itemTypeVec"); //��ٱ��Ͽ� ��� �������� 

//�ǸŰ�,������ �д´� 
item_cd = (String)util.getData("p_item_cd", itemHash); 
} 
} 
} 
==============================================================================================================

- int ���� 
qty_count = parseInt(getData("PO_CNT",retHash)); 
==============================================================================================================

������������������� 2004.02.25(��) �۾� �����������������
---> 07:35 ~ 23:00 

- ���θ� ����
- DB Ŀ��Ʈ ����(set: INSERT, UPDATE, DELETE get: SELECT) 
retHash = setMMData(_iqryHash);     
{mcnt=2, yn=N, txcnt=2}  
==============================================================================================================

- �����Ǹſ���,  ������ǰ�ܿ����� 
E.LIMIT_SALE_YN,  E.LIMIT_SALE_QTY 
==============================================================================================================
   
- �������ż��� ���� ���� 
/order/rnf/checkRnFSes.jsp 
/cart/cartGetP.jsp 
/order/orderPut_3.jsp 

/Ccdom/CcdomBeans/com/i3shop/beans/BizStore/CartBean.java  
==============================================================================================================

NVL Function   
���� NULL �� NVL Function�� �̿��Ͽ� �ٸ� ������ ��ġ ����. 
���� ��밡���� datatype�� ��¥, ���� �� ������. 
���� ������ ���� �������� �Ѵ�. 
         ��NVL(start_date, '01-JAN-95') 
         ��NVL(title, 'NO Title Yet') 
         ��NVL(salary, 100) 

NVL(expr1, expr2) 
  
�� expr1 : �ΰ��� ������ �� �ִ� ���̰ų� ǥ����. 
�� expr2 : �ΰ��� ��ȯ�� ����� ��.   
Note : �������� ��� datatype���� NVL �Լ�������� �� ������ �ǵ��� �޴� ���� �׻� expr1�� datatype�� �����ؾ� �Ѵ�.   

SELECT  LAST_NAME, TITLE, salary*NVL(commission_pct,0)/100 COMM 
FROM    s_emp;  
==============================================================================================================

/cart/cartGetP.jsp ���� @@@@@@@@ 
------------------------------------------------------------ 
<% 

String errflag = "false"; 
String errstr = ""; 
Hashtable inputHash = null; 
//Hashtable resultHash = null;   
Vector itemVec = null;  
  
//��ٱ��� ��ȸ 
itemVec = cart.getCartItems(); //cartVec(������ü) ��ȯ 
request.setAttribute("itemVec",itemVec); 

//��������/�⺻������/cartGet.jsp���� �ѱ䰪 ����  
Vector inputVec = (Vector)request.getAttribute("itemVec");   //Hashtable�� �޾ƾ� �� 
  
try { 
if (inputVec!=null && inputVec.size()>0) { 

for (int i=0; i<inputVec.size(); ++i) { 
//��ǰ����/�������� �и� 
inputHash = (Hashtable)inputVec.elementAt(i);   
} 
} 
} catch (Exception e) { 
util.log(MNAME,"���� �߻� ==> " + e.toString()); 
util.setErr(request,"123","�ý��� �����Դϴ�.<br>�����ڿ��� ���� �ϼ���"); 
%> 
<jsp:forward page="/err/errMsg.jsp" /> 
<% 
} %> 

<% 

Hashtable sessHash = new Hashtable(); 
//sessHash.put("USER_ID", util.getSession("p_user_id",request)); 
sessHash.put("USER_ID",  (String)util.getSesValue("MNO", request));   // ȸ�� ��ȣ�� user id 

//ȸ����ȣ 
String p_mno = (String)util.getSesValue("MNO",request); 

//String strMemgbn = (String)util.getSesValue("MEMGBN", request); 
//util.getSession("p_reseller_ord_cl",request); 
 System.out.println("[test-p_mno]"+ p_mno); 
 System.out.println("[test-sessHash]"+ sessHash);  
   

//�и��� ������ ī�忡 ��� 
try { 
//īƮ���. PV�� �ִ� ��ǰ���δ� �̰����� üũ�Ѵ�. 
//resultHash = cart.checkSaleQtyArr(inputHash); 
//resultHash = cart.checkSaleQtyArr(inputVec); 
//boolean resultHash = cart.checkSaleQtyArr(sessHash, inputHash); // inputHash �ѱ� 
boolean resultHash = cart.getSaleQtyArr(sessHash, inputVec); // Vector �ѱ� 
  
  
if (resultHash == false) {  // �Ѱ� ���� ����Ÿ�� �߰� �Ұ��� �ϸ� 
util.log(MNAME,"�Ѱ� �������� ���� ��ǰ�� �������� ���߽��ϴ�.\n"+ errstr); 
util.setErr(request,"A3E","�Ѱ� �������� ���� ��ǰ�� �������� ���߽��ϴ�.\n <br>[����:"+errstr+"]"); 
%> 
<script language="JavaScript"> 
//alert("[TEST_checkRnFSes]"); 
alert("�Ѱ� �������� ���� ��ǰ�� �������� ���߽��ϴ�."); 
history.go(-1); 
</script> 
<% 
return; 
} else { 

//�α��� ���� Ȯ�� 
if (!cart.getLogin()) { 
if(!util.isValidSession("MNO",request)) {   
return; 
} else { 
cart.setLogin(true); //�α��� ����� ��ٱ��Ͽ� ����  
} 
}//end if (�α��� ����) 

} //end if (��ٱ��Ͽ� ��Ҵ��� ����) 

} catch (Err err) { 
util.log(MNAME,err.getEXStr()); 
util.setErr(request,err.getCode(),err.getMsg()); %> 
<jsp:forward page="/err/errMsg.jsp" /> 
<% } catch (Exception e) { 
util.log(MNAME,"���� �߻� \n" + e.toString()); 
util.setErr(request,"123","�ý��� �����Դϴ�.\n�����ڿ��� ���� �ϼ���"); %> 
<jsp:forward page="/err/errMsg.jsp" /> 
<% } %>  
==============================================================================================================

- ���� ���� ���� ��ȸ 
String SQL =  
" SELECT  SUM(DECODE(AA.SUM_1, NULL, 0, AA.SUM_1 - BB.SUM_1)) POS_CNT " + 
"  FROM ( SELECT SUM(DECODE(A.SALE_MAX_QTY,NULL,0,A.SALE_MAX_QTY)) AS SUM_1 " + 
"  FROM  T_BuyLimitCount A, T_BuyTimes B, T_BuyTimes C " + 
" WHERE A.TIMES_CD = B.TIMES_CD " + 
"  AND A.TIMES_CD = C.TIMES_CD " + 
"  AND C.ST_DT <= SYSDATE " +  
"  AND C.ED_DT >= SYSDATE " +  
"  AND A.ITEM_CD = ? ) AA,  " +   
"    ( SELECT SUM(DECODE(A.QTY,NULL,0, A.QTY)) AS SUM_1 " + 
"  FROM  T_BuyCount A, T_BuyTimes C " + 
" WHERE A.TIMES_CD = C.TIMES_CD " + 
"  AND C.ST_DT <= SYSDATE " +  
"  AND C.ED_DT >= SYSDATE " +  
"  AND A.ITEM_CD = ? " + 
"  AND A.USER_ID = ? " + 
" GROUP BY A.TIMES_CD, A.ITEM_CD, A.USER_ID ) BB " ; 
==============================================================================================================

������������������� 2004.02.26(��) �۾� ����������������� 
---> 07:35 ~ 23:00 

- ���θ� ����
- Hashtable sessHash(ȸ����ȣ, ��ǰ�ڵ�, ����, �Ѱ���� ����) 
Hashtable sessHash = new Hashtable();  
sessHash.put("MNO",  (String)util.getSesValue("MNO", request));   // ȸ����ȣ 
// sessHash.put("MNO",  (String)util.getSesValue("MNO", request));   // ���� 

 - Hashtable sessHash( ��ǰ�ڵ�, �Ѱ����, ������ ����, ���Ű��� ����) 
==============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������