

�����������������������������������������������������������
+---------------------------------------------// Memo(2003.11) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2003.11.01(��) �۾� �������������������
---> 07:40 ~ 13:00 ==> ���� 

- B2C �̺�Ʈ
- �������� ��ǰã�� �̺�Ʈ �� 2ź  
==============================================================================================================

- DB link �м�
SELECT *  FROM user_db_links --// DB ��ũ Ȯ�� 

SELECT * FROM STK_IN@DL_1BDEV 
SELECT * FROM cust@DL_1BDEV WHERE cust_no='1096006' 
  
DROP  DATABASE LINK DL_1BDEV --// DB ��ũ ���� 
  
CREATE DATABASE LINK DL_1BDEV 
CONNECT TO LEADER IDENTIFIED       --// DB ��ũ ���� 
BY LEADER01 USING '1BDEV.world' 

CREATE DATABASE LINK DL_SE1BDB 
CONNECT TO LEADER IDENTIFIED       --// DB ��ũ ���� 
BY solomon USING 'SE1BDB.world' 
 
select *  from global_name 
------------------------------------------------------------------------------------------------------------------------------ 

HIBCPDB:/home/b2cprod> oerr ora 2085 
02085, 00000, "database link %s connects to %s" 
// *Cause: a database link connected to a database with a different name. 
//  The connection is rejected. 
// *Action: create a database link with the same name as the database it 
//  connects to, or set global_names=false. 
==============================================================================================================

- ���� �ذ�: 
C:\oracle\admin\TAMAora\pfile\initTAMAora.ora 
global_names=false�� ���� 
==============================================================================================================

- DB ����Ÿ �ű��(DB link�� �ɾ Table�� ����� ���� ����) 
create table cust 
as 
	SELECT * FROM cust@T_SE1BDB WHERE cust_no >='2861000' and cust_no <='2861020' 
------------------------------------------------------------------------------------------------------------

SELECT *  FROM cust 
DROP table cust 
==============================================================================================================

- Export ��� 
c:\> exp tama/tama339 file=C:\ALL_WEB\Calendar_ora\DB\PDA\EXPDAT_cust.DMP tables=cust log=cust.log 
===============================================================================================================
 
������������������� 2003.11.03(��) �۾� ������������������� 
---> 07:40 ~ 19:00 ==> ���� 

- B2C �̺�Ʈ
- �������� ��ǰã�� �̺�Ʈ �� 2ź 
- 1ȸ�� ====>  �������� 410�� ����(���� 397��, ���� 13) 
==============================================================================================================

- PDA ����
- ���α׷� Test ��� 
1. ��ȭ���� PDA(iPhone �̿�) ��� 
- HiMobileD/iphone���� �׽�Ʈ(ũ���鿡 ����)
2. ������ PDA(������ �̿�) ��� 
- HiMobile(������ �̿�) 
- HiMobileD/iphone���� �׽�Ʈ(������ �̿�)  ===> ���� Comp(.34)�� �̿� 
- HiMobileD/iphone���� �׽�Ʈ_126(������ �̿�)  ===> Test ���� Comp(.126)�� �̿� 
===============================================================================================================

������������������� 2003.11.04(ȭ) �۾� ������������������� 
---> 07:30 ~ 19:00 ==> ���� 

- PDA ����
-- ���̺� ����(user) �˻�  
SELECT owner, object_name FROM dba_objects  
WHERE object_type='TABLE' AND owner='TAMA' 
-- �ڽ��� ������ ���̺� �˻� 
sselect * from tab; 
-- �ڱⰡ �׼����� �� �ִ� ���̺��� ��ȸ 
select table_name from all_tables; 
==============================================================================================================

- ������� ��ȸ
 == ������� ��ȸ(/store/StockWDbWrap.java����) 
SELECT c.ware_name, a.possible_vol+b.possible_vol,  
a.available_quantity+b.available_quantity, a.ows_quantity+b.ows_quantity  
FROM   
(SELECT w.ware_name, w.ware_code, 0 possible_vol, NVL(TO_CHAR(a.available_quantity),'0') available_quantity,  
NVL(TO_CHAR(a.ows_quantity),'0') ows_quantity  
FROM  
(SELECT vrs.organization_code, vrs.available_quantity, vrs.ows_quantity 
 FROM xinvk_stock_v@hiup_erpprod_link vrs --// ��ǰ  ###### 
 WHERE vrs.item_code= 'AHA-RV21CB'   
UNION  
 SELECT vrs.organization_code, MIN(TRUNC(vrs.available_quantity/sm.comp_qty)),  
MIN(TRUNC(vrs.ows_quantity/sm.comp_qty)) 
 FROM xinvk_set_model_stock_v@hiup_erpprod_link vrs,SET_MODEL SM --// ��Ʈ ��  ###### 
 WHERE vrs.item_code= 'F-3130CD' 
   and vrs.item_code=  sm.p_model_code 
         GROUP BY vrs.organization_code) a, warehouse w  
 WHERE w.ware_code = a.organization_code(+)) a, 
(SELECT w.ware_name, w.ware_code, NVL(TO_CHAR(a.possible_vol),'0') possible_vol, 
0 available_quantity, 0 ows_quantity  
FROM  
(SELECT s.store_code,min(trunc(s.possible_vol/sd.comp_qty)) possible_vol FROM stock_month s,SET_MODEL SD 
WHERE sd.p_model_code = 'F-3130CD' 
AND sd.m_model_code = s.model_code 
AND s.branch_code = 'AAA' 
AND s.store_gb = '1' 
AND s.comp_cd = '1100' 
AND s.stk_date = TO_CHAR(SYSDATE,'yyyymm') 
AND s.possible_vol != 0 
group by s.store_code) a, warehouse w   
WHERE w.ware_code = a.store_code(+)  
AND w.ware_code >= 'YPZ'  AND w.ware_code <= 'YPZ' ) b,  
warehouse c  
WHERE b.ware_code = a.ware_code  
AND c.ware_name=b.ware_name  
AND (a.possible_vol + b.possible_vol != 0  
OR a.available_quantity + b.available_quantity != 0  
OR a.ows_quantity + b.ows_quantity != 0)  
==============================================================================================================
  
- ������: warehouse Table���� c.ware_name 
HI�ǸŰ������: a������ �ǸŰ������(v_rdc_stock Table���� 0 possible_vol)��  
b������ �ǸŰ������(stock_month Table���� a.possible_vol)�� �� 
LGE�ֹ�������: a������ �ֹ�������(v_rdc_stock Table���� a.wait_qty)��  
b������ �ֹ�������(stock_month Table���� 0 wait_qty)�� �� 
OWS: a������ OWS(v_rdc_stock Table���� a.ows_qty)��  
b������ OWS(stock_month Table���� 0 ows_qty)�� �� 
================================================================================================================

v_rdc_stock --> xinvk_stock_v@hiup_erpprod_link(Eagle ��ǰ��� view) 
mlct_cd organization_code 
modl item_code 
wait_qty available_quantity 
ows_qty ows_quantity 

v_rdc_stock --> xinvk_set_model_stock_v@hiup_erpprod_link(Eagle �¸�ǰ��� view) 
mlct_cd organization_code 
modl child_item_code 
wait_qty available_quantity 
ows_qty ows_quantity 
================================================================================================================
 
������������������� 2003.11.05(��) �۾� ������������������� 
---> 08:00 ~ 19:00 ==> ���� 

- Oracle ����
- ���̺����̽� ���� ����(C:\oracle\OHome) 
����: ���� �뷮�� ����ġ�� ũ�� ����Ŭ ���� �� ���� 
ó��: ����Ŭ�� Startup�ϸ鼭 ������ ���̺����̽� ������  �Ʒ� ���Ͽ��� ã���Ƿ� �缳ġ �ؾ� �� 
C:\oracle\admin\TAMAora\bdump/tamaoraALRT.LOG 
------------------------------------------------------------------------------------------------------- 

- ora-01033 
:oracle initialization or shutdown in progress 
�� �״�� ����Ŭ�� �⵿ Ȥ�� �ٿ����Դϴ�. 
��, �⵿���̶�� ����Ϸ��� �޸� �� �ý��� �ڿ��� Ȯ������ ���̸� 
�ٿ����̶�� ����ߴ� �޸� �� �ý��� �ڿ��� �����ϴ� ���� ���Դϴ�. 
1~2�� ���� ��޷ȴٰ� �ٽ� �õ��� ������. 
===================================================================================================================

1.�켱 �ش��ϴ� user �� ������ ����Ÿ�� ����� ������ 
  drop user aa cascade; �Ͻø� �ش�Ǵ� ����Ÿ�� �� �������ϴ�. 
2.user�� ������ �Ŀ� tablespace �� �������ϴµ�...�̶��� 
   �� tablespace�� aa ��� �����̿ܿ� �ٸ� ������ ���� ����Ÿ�� 
   ������ �ȵ˴ϴ�....�� Ȯ���Ͻð� 
    drop tablespace aaa INCLUDING CONTENTS; �Ͻø� ��ųʸ��� 
   �� tablespace �� �����˴ϴ�.....���Ŀ� unix ��ɾ�� �ش��ϴ�  
   datafile�� �����Ͻø� �˴ϴ�. 
====================================================================================================================

������������������� 2003.11.06(��) �۾� �������������������  
---> 07:30 ~ 19:00 ==> ���� 

- PDA ����
-- ���� Table ����Ÿ(DB_CALEDNAR_2 ����) 
create table DB_CALEDNAR_2 
as 
SELECT * FROM DB_CALEDNAR 
WHERE writeday >= '2003-11-01' AND cc_id <= '2003-09-01' 
-- SELECT *  FROM DB_CALEDNAR_2 

-- DB_CALEDNAR ���̺� �߰� 
INSERT INTO DB_CALEDNAR(  
SELECT * FROM DB_CALEDNAR_2) 
-- SELECT *  FROM DB_CALEDNAR 
===================================================================================================================

Initialization error 
Could not locate OCI dll 
1. �ϴ� Ŭ���̾�Ʈ PC �� Net8 ����Ʈ��� ��ġ�Ǿ����� �ñ��ϱ���.  
���� ��ġ���� �ʾҴٸ� personal oracle ���� Net8 ����Ʈ��� ��ġ�ϰ� �ٽ� �õ��� �غ�����. 
2. Toad Server Login���� SQL * Net compatible Net8 ����Ʈ �ڽ� üũ �� �α��� 
===================================================================================================================

��ü���� ������ ���� ��Ȯ�� ������ ������ �ϴ����� �� �𸣰�����...   
1. ������ ������ 9GB�� �Ѿ��ٴ� ���� ������ �ִ�.  
���� �����ͷ��� ���� �� �̻��� �� ���� ������ �� PC���� �׽�Ʈ�� Ȱ���ϴ� DB���� ũ�Ⱑ �� ������� .... ��.��;;  
DBȯ��, �۾����� ���� ������ ���� �� ������ �����ϱ�� �Ұ��ϴ�.  

2. ���� �ҷ��� �ϴµ� ������ �ȵȴٴ�. ������ �߻��� �Ŷ�� �����ڵ嵵 �Բ� �÷Ⱦ����....  
��Ȯ�� � ��Ȳ������ �� �𸣰����� �Ʒ� ������ ���� tama USER�� default tablespace�� ������ε� �����Ϸ��� �ϴ� ������ 
�ȵǴ°� ����. 
tama user�� ���� ������ tablespace ���� �׸��� �ٽ� tablespace�� user�� �����ϴ���, �ش� tablespace�� ������� ������ tama user���� 
�����ϰ� tama user���� default tablespace�� ������ �Ҵ��� tablespace�� �����ϸ� ���� ������?  
�׸��� Drop tablespace ..... �̰��� �ܼ��� ����Ŭ ���� ���� ������ �����ϴ� ���̴�.  
���� �� ������ ���� �� ���������� �ش������� �����־�� �Ѵ�.  

3. ���ο� Tablespace ���� ���п��� ...  
default storage ������ �� minextents ���� 10���� ������ ������ �ִ� �� �𸣰ڴ�. �Ϲ������� rollback segment�� tablespace������ 
�ּ� 2 �̻��� �Ǿ�� �ϰ�  ��Ÿ tablespace�� 1�ν� �����Ѵ�.  
maxextents ���� 121�� �����ߴµ� �� ũ�� ������ �� ���� ������ �����ͷ��� ���� ȯ���̶�� unlimited�� �����ϴ� �͵� ������.  
���� �̰͵��� �ǹ��ϴ� ���� �װ� �ٸ� ������ ã�ƺ��� ���������� ���� �ض�.  

��ü������ tama USER���� ���ο� �۾������� �Ҵ��ϴ� �۾��� �����Ѱ� ������ �� ����������� ������ ������ �� 2������ ���� �۾��� 
�ʿ��ϴٸ�  alter user ... ���� ������ �����ϸ� �ȴ�.  
==============================================================================================================

A. ������ ��� 
--// ����� tama ����(TAMAORA Database����) 
Drop USER tama CASCADE; 
-------------------------------------------------------------------------------------------------------

--// TAMA_DATA�� DB ���� ��� ���� ���� ����(TAMAORA Database����) 
Drop tablespace TAMA_DATA including contents; 
-------------------------------------------------------------------------------------------------------

- TABLESPACE TAMA_DATA  �ٽ� ���� 
CREATE DATABASE tama_data 
DATAFILE 'C:\oracle\OHome\tama_data.dbs' SIZE 200M 
autoextend on next 10M 
maxsize 1000M 
DEFAULT STORAGE( INITIAL 50K 
NEXT 50K 
MINEXTENTS 2 
MAXEXTENTS unlimited 
PCTINCREASE 50); 
-------------------------------------------------------------------------------------------------------

-- ����� tama �ٽ� ���� 
SQL> CREATE USER tama 
       IDENTIFIED BY tama339 
       DEFAULT    TABLESPACE tama_data 
       TEMPORARY  TABLESPACE temporary_data 
       QUOTA 5M   ON tama_data 
       QUOTA 3M   ON temporary_data; 

-- tama ����ڿ��� DBA���� �ο� 
GRANT CONNECT, DBA TO tama; 
==============================================================================================================

SELECT a.tablespace_name, a.bytes, a.status, b.status, b.enabled, b.name 
FROM DBA_DATA_FILES a, V$DATAFILE b 
WHERE a.FILE_ID = b.FILE#  
AND a.tablespace_name = 'TAMA_DATA'; 
==============================================================================================================

create tablespace testdb  
  2  datafile 'd:\testdb\test_db.dat' size 1000M    
  3  default storage (initial 50M next 50M  
  4  minextents 1 maxextents 4096  
  5  pctincrease 0);  

table���� ������ storage���� �����ϸ� Tablespace�� ���� ���󰩴ϴ�. (Dictionary managed TS������) 
���� ��쿣 table ������ Storage���� ���������Ƿ�, 
Tablespace�� ����Ʈ�� initial 50M minextents 1 �������� ���� ���̺� ������ 50M¥�� extents 1���� table segment�� �Ҵ�˴ϴ�. 
==============================================================================================================

extent�� ���� ���������Դϴ�.  
�÷��� ���״�� �ش� ���� �� data �Դϴ�. 
ó�� create table �������� segment������ extent�� �Ҵ��ϰ� ���� ����Ÿ�� �߰��Ǿ� �߰����� extent�� �ʿ��ҽ� ���� extent�� �Ҵ��մϴ�.  
storage �Ҵ��� oracle Default(���� �ƹ� �ɼ� ������), tablespace, table level�� �Ҵ� �����մϴ�. 
tablespace ������ default storage���� �����ϰ�, 
table������ storage���� �����մϴ�. 
�켱������ minimum_extent(dictionary����), uniform_size(local����) �� ����� table level���� �����Ѱ� �켱�Դϴ�.  
���ɼ��� tablespace level���� �����մϴ�. 
===============================================================================================================

������������������� 2003.11..07(��) �۾� ������������������� 
---> 07:50 ~ 19:00 ==> ���� 

- PDA ����
- �������� ��ǰã�� �̺�Ʈ �� 2ź
===============================================================================================================
 
������������������� 2003.11.10(��) �۾� ������������������� 
---> 07:50 ~ 19:00 ==> ���� 

- B2C �̺�Ʈ
- �������� ��ǰã�� �̺�Ʈ �� 2ź 
- 2ȸ�� ====>  �� ������ 711�� ����(���� 662��, ���� 49) 
==============================================================================================================

- PDA ����
- ������(/store/Sale_register.jsp): t_sale_save_i
set_model    comp_qty    ������ ���� �߰�  ===> �̰����(/store/Trans_request_input.jsp) 
===============================================================================================================

������������������� 2003.11.11(ȭ) �۾� ������������������� 
---> 07:00 ~ 19:00 ==> ���� 

- PDA ����
- CAPA üũ ����(�߰�: out_type_i, house_type_i, setup_type_i) ==> /Sale_register_ulisCapaInput.jsp 
- ��ǰ��ġ���� ���� ==> /Sale_register_item.jsp?str_modelCode=DA-6000T 
- ����ֹ� ���� ==> /Sale_register_itemEmgc.jsp 
==============================================================================================================

Calendar Calendar = Calendar.getInstance();
String NowDate = Integer.toString(Calendar.get(Calendar.YEAR)) + "-"; 
NowDate = NowDate + Integer.toString(Calendar.get(Calendar.MONTH)+1) + "-"; 
NowDate = NowDate + Integer.toString(Calendar.get(Calendar.DATE)); // ���� ��¥ 
==============================================================================================================

- ��ǰ��ġ ���� ��ȸ(/classes/sale/SaleRegisterDbWrap.java����)  ==> DA-3530(�ܼ�, ����, �߰� ��ġ code) 
SELECT DISTINCT install_type, install_type_nm 
FROM vi_li_modelfee 
WHERE corp_type= '1100'  
AND model_cd IN ( SELECT DISTINCT m_model_code  
FROM set_model 
WHERE p_model_code = 'F-3130CD' 
UNION 
SELECT model_code 
FROM model 
WHERE model_code =  'F-3130CD') 
AND install_type IS NOT NULL 
------------------------------------------------------------------------------------------------------------------------- 

 // ����ֹ� ���� ��ȸ(/classes/sale/SaleRegisterDbWrap.java����)  ===> ���繰����Ÿ(���絿) 
SELECT DECODE(distance_type, '1', 'Y', 'N')  ft_deliv_emergency_chk( TO_DATE('20031117'  '2100', 'YYMMDDHH24MI')) distance_type 
FROM vi_ld_distance  
WHERE dc_cd ='YPZ' AND zip_cd ='435755' 
===============================================================================================================

������������������� 2003.11.12(��) �۾� ������������������� 
---> 07:20 ~ 22:00 ==> ���� 

- PDA ����
IDD_SALE_REGISTER_DEL ���� 
- �ְ�����(IDC_C_HOUSE_TYPE2) ����: IDD_SALE_REGISTER_INFO���� �Űܿ�(CAPAüũ�� ����) 
- ��ġ����(IDC_C_SETUP_TYPE) �߰�  

  <VARIABLE NAME="house_type_i"   FORMNAME="house_type_i"    COMMENT="�ְ�����"/>     
  <VARIABLE NAME="setup_type_i"   FORMNAME="setup_type_i"  COMMENT="��ġ����"/> 
==============================================================================================================

- Oracle ����
ORA-01659: 5 ��(��) �Ѿ ���̺����̽� TAMA_DATA�� MINEXTENTS�� �Ҵ��� �� �� 
���ϴ� 
ORA-01659: unable to allocate MINEXTENTS beyond 3 in tablespace USER_DATA 
------------------------------------------------------------------------------------------------------------------------- 

--//  tablespace�� ���� ����Ÿ ���� ��ȸ 
SELECT owner, segment_name, segment_type, bytes, bytes/1024  'M' AS MAX_Mega  
FROM dba_segments 
WHERE tablespace_name = 'TAMA_DATA'  
------------------------------------------------------------------------------------------------------------------------- 

--// tablespace�� ���� ����Ÿ ���� 
SELECT SUM(bytes), SUM(bytes/1024)  'M' AS SUM_Mega 
FROM dba_segments  
WHERE tablespace_name = 'TAMA_DATA'  
------------------------------------------------------------------------------------------------------------------------- 

--// ���� �����ִ� ���������� �� �հ�, �� ���������߿��� ���� ū ������ size�� Ȯ�� 
SELECT SUM(bytes), SUM(bytes/1024)  'M' AS SUM_Mega,  
SUM((bytes/1024)/100)  'G' AS SUM_Giga,MAX(bytes), MAX(bytes/1024)  'M' AS MAX_Mega 
FROM dba_free_space  
WHERE tablespace_name = 'TAMA_DATA' 
===============================================================================================================

������������������� 2003.11.13(��) �۾� ������������������� 
---> 07:20 ~ 22:00 ==> ���� 

- PDA ����
IDD_SALE_REGISTER_DEL ���� 
- �ְ�����(IDC_C_HOUSE_TYPE2) ����: IDD_SALE_REGISTER_INFO���� �Űܿ�(CAPAüũ�� ����) 
- ��ġ����(IDC_C_SETUP_TYPE) �߰� 
==============================================================================================================

- ��Ʈ�� �� �߰�(512N) ==> �ӵ���� ȿ��  
===============================================================================================================
 
������������������� 2003.11.14(��) �۾� ������������������� 
---> 07:00 ~ 19:00 ==> ���� 

- PDA ����
- �Ķ���� �˶� 
string_t mess = bExceptionMessage(outputs); 
wchar_t* w_message = ansi2uni(mess);  
MessageBox(hDlg,w_message, TEXT("[_DONE] :: [Test_0]"),TEXT("[�׽�Ʈ â]"),MB_OK);// �Ķ���� �˶� mgsbox  
===============================================================================================================
 
������������������� 2003.11.17(��) �۾� ������������������� 
---> 08:30 ~ 22:00 ==> ���� 

- B2C �̺�Ʈ
- �������� ��ǰã�� �̺�Ʈ �� 2ź 
- 3ȸ�� ====>  �������� 346�� ����(���� 341��, ���� 5) 
==============================================================================================================

- PDA ����
- Ÿ�� ����
itoa : ���� -> ���� 
atoi : ���� -> ����  
// ��ġ���� 
wchar_t wszBuffer[100];  
int isetup_type2 = SendMessage(GetDlgItem(hDlg, IDC_C_SETUP_TYPE), CB_GETCURSEL, 0, 0); 
wchar_t * w2_message =_itow(isetup_type2, wszBuffer,  10 ); 
MessageBox(hDlg, w2_message, TEXT("[DelDlg_isetup_type2 -��ġ����]"),MB_OK); // �Ķ���� �˶� mgsbox  
strcpy(deliData[33], setupType_number2[isetup_type2]); //��ġ���� 
wchar_t* ws2_message = ansi2uni(setupType_number2[isetup_type2]); 
MessageBox(hDlg, ws2_message, TEXT("[DelDlg -��ġ����]"),MB_OK); // �Ķ���� �˶� mgsbox 
===============================================================================================================

������������������� 2003.11.18(ȭ) �۾� ������������������� 
---> 07:50 ~ 19:00 ==> ���� 

- PDA ����
- CAPA ��ȸ(CAPA����, CAPA��) �ѱ�� 
HWND hList = GetDlgItem(hDlg, IDC_ULISCAPA_LIST); 
int index = ListView_GetNextItem(hList, -1, LVNI_ALL  LVNI_SELECTED); 
if( index == -1 ) break; 
SetDlgItemText(GetParent(hDlg), IDC_DELTIME, ansi2uni(bmGet(matrix,index,1)));   

strcpy(deliData[31], bmGet(matrix, index, 2));	 // CAPA���� 
strcpy(deliData[34], bmGet(matrix, index, 3));	// CAPA�� 
------------------------------------------------------------------------------------------------------------------ 

bInput(bin, "as_it_atp_sign", regiData[iCnt][31]); //CAPA����: ���� 
bInput(bin, "as_it_capa_rate", regiData[iCnt][34]); //CAPA��: �߰� 
==============================================================================================================

System.out.println("Delivery_search.jsp:: [s_o_jmnno]"+ s_o_jmnno[i]); //�ֹ�����ȣ 
===============================================================================================================

������������������� 2003.11.19(��) �۾� ������������������� 
---> 07:50 ~ 19:00 ==> ���� 

- PDA ����
- ���� �׽�Ʈ  
- PDA �������
S/N: 4G29DW33616W -->  ���� 
S/N: HV11D02A010386 --> (CDMA2000 i-Kit PLUS): i-kit�� ����(�α��ν� ������) 
===============================================================================================================

������������������� 2003.11.20(��) �۾� ������������������� 
---> 07:30 ~ 19:00 ==> ���� 

- Oracle ���� 
- import ���� ����
c:\> imp tama/tama339 file=C:\ALL_WEB\Calendar_ora\DB\CALENDAR_DB\EXPDAT.DMP  
tables=DB_CALENDAR log=DB_CALENDAR.log 

IMP-00003: ORACLE ���� 1659 �� �߻��߽��ϴ� 
ORA-01659: 5 ��(��) �Ѿ ���̺����̽� TAMA_DATA�� MINEXTENTS�� �Ҵ��� �� �� 
���ϴ� 
--------------------------------------------------------------------------------------------------------------------- 

- �ذ�å: 
1. C:\oracle\OHome\TAMA_DATA.DBS�� 10GB�� �ÿ��� 
2. �ٸ� ���̺����̽� THIBCPDB_data�� ��� export ��Ŵ 
(�� �� ������ MINEXTENTS 1�� �� ���̺����̽��� ����Ÿ �ѱ� ��) 
3. DB_CALENDAR ���̺� ���� 
SQL> DROP TABLE DB_CALENDAR CASCADE CONSTRAINTS ;  
3. TABLESPACE ����(MINEXTENTS 1�� ����) 

ALTER TABLESPACE THIBCPDB_DATA  
DEFAULT STORAGE( INITIAL 50K 
NEXT 50K 
MINEXTENTS 1 
MAXEXTENTS unlimited 
PCTINCREASE 50); 

4. TAMA_DATA ���̺����̽��� 1000M�� �ٿ���  
SQL> ALTER DATABASE DATAFILE 'C:\oracle\OHome\TAMA_DATA.DBS' RESIZE 1000M; 
5. �ٽ� import ��Ŵ 
===============================================================================================================

- listener.ora �� sqlnet.ora tnsnames.ora�� ������ ���� Ȯ���� Ů�ϴ�.   
sqlnet.ora���� "NAMES.DEFAULT_DOMAIN = xx.co.kr" �� ���� ������ �־�� �ϸ�   
listener.ora���� IPC �������ݿ� ���� ����, �� LISTENER�� ADDRESS_LIST�ȿ�  
"(ADDRESS = (PROTOCOL = IPC)(KEY = EXTPROC))" �� ����� �Ͱ�  
SID_LIST_LISTENER�ȿ� SID_LIST��  
"(SID_DESC =  
(SID_NAME = PLSExtProc)  
(ORACLE_HOME = /usr/local/oracle/apps/oracle/product/8.1.6) 
(PROGRAM = extproc) 
)"����� ���� �־�� �մϴ�. 

��, tnsnames.ora ����  
EXTPROC_CONNECTION_DATA.xxx.co.kr =  
(DESCRIPTION =  
(ADDRESS_LIST =  
(ADDRESS = (PROTOCOL = IPC)(KEY = EXTPROC))  
)  
(CONNECT_DATA =  
(SID = PLSExtProc)  
(PRESENTATION = RO)  
)  
)  
�� ���� ������ �־�� �մϴ�. 

3���� ���Ͻø� �������� �˼� ���� �̴ϴ�.  
tnsping EXTPROC_CONNECTION_DATA.xxx.co.kr 
��� ������ ���� ���� �ؾ� �մϴ�. 

lsnrctl status�� 
(DESCRIPTION=(ADDRESS=(PROTOCOL=IPC)(KEY=EXTPROC)))�� ����Ǿ����ϴ� 
�� ���� ���� ���;� �մϴ�. 
===============================================================================================================

Net8������ �ٵǾ��ٸ� �����ʸ� ����� �մϴ�. 
C:\> lsnrctl stop -> lsnrctl start 

C:\> tnsping EXTPROC_CONNECTION_DATA.127.0.0.1  
===============================================================================================================

����:==> TNS-03505: �̸� ó���� �����߽��ϴ� 
ctxsrv -user ctxsys/ctxsys -logfile /tmp/ctxsrv.log & 
�� ��׶��� ���μ����� ��켼��..   
===============================================================================================================

������������������� 2003.11.21(��) �۾� ������������������� 
---> 07:00 ~ 19:00 ==> ���� 

- Oracle ����
- index ���� ����(intermedia Text) 
SQL> create index DB_CALENDAR_comment on DB_CALENDAR(cc_desc) 
 indextype is ctxsys.context 
 parameters('lexer han_lexer 
             filter comment_filter'); 

create index DB_CALENDAR_comment on DB_CALENDAR(cc_desc) 
* 
1�࿡ ����: 
ORA-29855: ODCIINDEXCREATE ��ƾ�� �����ϴµ� ������ �߻��߽��ϴ� 
ORA-20000: interMedia Text ����: 
DRG-10700: ȯ�漳���� �������� �ʽ��ϴ�: comment_filter 
ORA-06512: "CTXSYS.DRUE", �� 126���� 
ORA-06512: "CTXSYS.TEXTINDEXMETHODS", �� 78���� 
ORA-06512: �� 1���� 
-------------------------------------------------------------------------------------------------------------------- 

����: comment_filter�� ȯ�漳�� �� �Ǿ� ���� 
�ذ�å: comment_filter�� ���� ���� 
SQL> begin   
ctx_ddl.create_preference('COMMENT_FILTER', 'NULL_FILTER'); 
end; 
/   
===============================================================================================================

- PDA �м�
/iPAQ File Store/HiMobileD/ �ؿ� iPhone2002.CAB������ �����Ͽ� �־���(����) 

c.f) HiMobileDSetup.exe�� ���� 
HiMobileD.CAB ���ϰ� iPhone2002.CAB ������ Temp/������ copy�� ��  
HiMobileD.CAB ������ �����Ų��. 

- PDA ���
- 14:00 PDA ����� �� PDA �ϵ����˽� ���α׷� �ν��� ����  
===============================================================================================================

������������������� 2003.11.22(��) �۾� ������������������� 
---> 08:10 ~ 13:00 ==> ���� 

- B2C �м�
- Weblsphere ����
Dynamo.ear/ dyn.war
===============================================================================================================
   
������������������� 2003.11.24(��) �۾� ������������������� 
---> 07:30 ~ 19:00 ==> ���� 

- B2C �̺�Ʈ
- �������� ��ǰã�� �̺�Ʈ �� 5ź 
- 4ȸ�� ====>  �������� 339�� ����(���� 328��, ���� 11) 
---------------------------------------------------------------------------------------------------- 

- B2C ����
- mypage ����
/mypage -->   
/www/MyPage.jsp ���� 
---------------------------------------------------------------------------------------------------- 

function browseOpen2( code,service, check ) {  
	if (code=='dmc'){   // DMC �϶�(â ����) 
		 noticeWindow  =  window.open('/shop/www/order/dmc_point2.jsp?code='+ code+'&service='+ service+'&check='+ 
		 check+'','popup','toolbar=yes,location=yes,directories=yes,status=yes,menubar=yes,scrollbars=yes,resizable=yes,
		 width=950,height=700,top=10,left=20'); 
		 noticeWindow.opener = self;  
	} else { 
		var fo = document.channelForm; 
		var serviceId = service; 
		fo.service.value = service; 
		fo.action = '/shop/www/common/MyPageChannel.jsp'; 

		if (code=='dmc'){ 
			 fo.action="/shop/main/dmc"; 
		 } 
		fo.submit();  
	}  
}         
//--> 

<a href="javascript:browseOpen('dmc','SVC_USE', <%=check%>);">[����������� ���� ��ȸ]</a>  
===============================================================================================================

 /www/order/dmc_point2.jsp ���� 
<!-- My Page ���� �޴� --> 
<%@ include file="../common/MyPageChannel2.jsp"%> 

<iframe src="/shop/main/dmcmain?service=<%=service%>&k=<%=randomSessionId%>" border="0" bordercolor="white"
height="700"  width="600"  scrolling="auto"  noresize framespacing="0" frameborder="no" marginheight="0" marginwidth="0" 
name="iFrame">
</iframe>  
===============================================================================================================

/dmcmain --> /www/order/redirect.jsp 
/dmc  --> /www/order/dmc_point.jsp 
/dmcNewWin --> /www/order/dmc_point2.jsp 
===============================================================================================================

������������������� 2003.11.25(ȭ) �۾� ������������������� 
---> 07:40 ~ 19:00 ==> ���� 

- B2C ����
- mypage ���� 
������ ����� ī��
===============================================================================================================
 
������������������� 2003.11.26(��) �۾� ������������������� 
---> 07:35 ~ 19:00 ==> ���� 

- B2C ����
- mypage ���� 
-------------------------------------------------------------------------------------------------- 

- ���� ����Ʈ 
http://www.lgnara.com/lgnara/Home.jhtml 
-------------------------------------------------------------------------------------------------- 

 /www/order/dmc_point2.jsp ���� 
<!-- ���̳��� ���� �ʿ��� �ҽ����� -->  
<%@ taglib uri="/dspTaglib" prefix="dsp" %> 
<%@ page import="atg.userprofiling.*"%> 
<%@ page import="atg.servlet.*"%> 
<%@ page import="atg.nucleus.*"%>  
<%@ page import="javax.naming.*"%> 
<%@ page import="com.hiplaza.util.CommonUtil.*"%> 

<dsp:page> 
<!-- ���̳��� ���� �ʿ��� �ҽ���--> 
<!-- ���̳��� ���� �±� --> 
</dsp:page> 
<!-- ���̳��� ���� �±� -->  
//=====================================================================================================

- �ѱ� ���ǽ� Update 
http://office.microsoft.com/officeupdate/default.aspx?CTT=6&Origin=EC010749131042 
===============================================================================================================

������������������� 2003.11.27(��) �۾� ������������������� 
---> 07:50 ~ 19:00 �帲 

- B2C �м�
- Websphere ����  
dyn.ear  
dyn.war 
===============================================================================================================

- ��ġ��� 
��ġ���, ��α� �׳� �ְ�... ��ġ���� ����, ��, ��ġ �Ǵ� ������� �ֱ�... ǫǫ... ����. 
�������� �κγ�, �������� ���� ���� ����... 
(������� ��ġ��� �ѱٿ� 3õ��) 
===============================================================================================================
 
������������������� 2003.11.28(��) �۾� ������������������� 
---> 07:40 ~ 19:00 ==> �� 

- B2C �м�
- Websphere ����
dyn.ear  
dyn.war 
===============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������