

�����������������������������������������������������������
+---------------------------------------------// Memo(2006.06) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2006.06.01(��) �۾� ������������������
---> 07:30 ~ 23:00 

- ���θ� ����
- SMS VB ���� 
-- �������� ��ȸ(�����Ա� Ȯ��) @@@@@@@@@@@@@ 
SELECT ORDER_DT AS �ֹ�����, 
   AR_DT AS �Ա�����, 
   (TO_DATE(AR_DT,'yyyymmdd') - TO_DATE(ORDER_DT,'yyyymmdd')) AS �����Ա���_��,     
   AR_PERSON_NM AS �Ա��ڸ�, 
   AR_BANK_ACCOUNT AS �Ա�����_���¹�ȣ, 
   (CASE WHEN AR_STS = '11' THEN '�����Ա� ����' WHEN AR_STS = '12' THEN '�����Ա� ���'  
WHEN AR_STS = '13' THEN '�����Ա� �Ϸ�' WHEN AR_STS = '14' THEN '����ȯ�� ����'  
WHEN AR_STS = '15' THEN '����ȯ�� ����' WHEN AR_STS = '16' THEN '����ȯ�� ���'  
WHEN AR_STS = '17' THEN '����ȯ�� �Ϸ�'  
ELSE AR_STS END) AS ��������,     
       AR_AMT AS �����ݾ�,  
       '����' ��������  --���������ڵ�(10:����, 20:ī��, 30:����Ʈ, 40:����)   
-- SELECT COUNT(*) 
FROM T_AR 
WHERE ORDER_DT >= '20060101' --�ֹ����� 
AND ORDER_DT <= '20060531'  
AND AR_WAY_CD ='10' --���������ڵ�(10:����, 20:ī��, 30:����Ʈ, 40:����) 
AND AR_STS ='13' --��������(11:�����Ա� ����, 13:�����Ա� �Ϸ�) 
--AND (TO_DATE(AR_DT,'yyyymmdd') - TO_DATE(ORDER_DT,'yyyymmdd')) < 3  --�����Ա����ڰ� 2�� �̳� 
--AND (TO_DATE(AR_DT,'yyyymmdd') - TO_DATE(ORDER_DT,'yyyymmdd')) > 2  --�����Ա����ڰ� 3�� ����   
ORDER BY �����Ա���_�� 
--; 
==============================================================================================================

- ���ݰ�꼭 ���� 
==============================================================================================================

������������������� 2006.06.02(��) �۾� �����������������
---> 07:30 ~ 23:00 

- ���θ� ����
- SMS VB ���� 
���ݹ��Աݰ� ����(06) �߼� ���� 
1. ������� ����Ʈ(frmPopReservP) 
==============================================================================================================

- ī�� ���� 
������   jin1103   Member   *��-������   21job   Gold-M 
Ȯ�� �� �����帮��� ��. *������  * 
��Ȯ�εǴ� �����޼��� : ī��� �ѵ��ʰ�  8326 
��ī���ȣ:����ī��  5409-3547-8466-6015   (CVC :458)  
------------------------------------------------------------------------------------------------------------ 
����: ����ī�忡�� ���� �ŷ� �ҷ��̰ų� �ѵ��� ���� "ī��� �ѵ��ʰ�"��� �޼����� �����µ� �̷� ��� 
����ī��� ���� ī�������� ������. 
�̹����� �����ǵ� ������ ȸ���� ������ ȸ���� ī�带 ����ϴٰ� �̷� ������ �޼����� ���ϱ� ī��翡 
������ �� �غ��� �츮�ʿ� ��ȭ�ؼ� �ο��� ���� ������ ������. 
==============================================================================================================

-- �ֹ� ���� ��ȸ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 
SELECT A.ORDER_DT, A.ORDER_NO, 
       A.ORDER_STS,    --�ֹ�����(00:ī����ο���, 01:�ֹ�����, 02:�������, 03:�����Ϸ�, 04:�����, 09:��ۿϷ�         
       A.MEM_NM,   
   A.RECEIVER_NM AS �����ڸ�, A.RECEIVER_HP AS �������ڵ���, 
    TO_DATE(SYSDATE) AS ������, 
   (TO_DATE(SYSDATE) - TO_DATE(A.ORDER_DT,'yyyymmdd')) AS �ֹ�������_��,      
   A.REG_ID, A.AMT AS �ֹ��ݾ� 
FROM T_ORDER A, T_AR B 
WHERE A.COMPANY_CD = B.COMPANY_CD 
AND A.MERCHANT_CD = B.MERCHANT_CD 
AND A.ORDER_DT = B.ORDER_DT 
AND A.ORDER_NO = B.ORDER_NO 
AND A.COMPANY_CD = '01' 
AND A.MERCHANT_CD = '0001' 
AND A.ORDER_TP IN ('01')         --�ֹ�����(01:�����ֹ�, 03:��ǰ�ֹ�) 
AND A.ORDER_STS NOT IN ('00', '02')   --�ֹ�����(03:�����Ϸ�) 
AND A.ORDER_DT >= '20060501'    --�ֹ����� 
AND A.ORDER_DT <= '20060602'     
AND B.AR_WAY_CD ='10'    --���������ڵ�(10:����, 20:ī��, 30:����Ʈ, 40:����) 
AND B.AR_STS ='11'    --��������(11:�����Ա� ����, 13:�����Ա� �Ϸ�) 
--AND (TO_DATE(AR_DT,'yyyymmdd') - TO_DATE(ORDER_DT,'yyyymmdd')) < 3  --�����Ա����ڰ� 2�� �̳� 
AND (TO_DATE(SYSDATE) - TO_DATE(A.ORDER_DT,'yyyymmdd')) > 2  --�����Ա����ڰ� 3�� ���� 
ORDER BY A.ORDER_DT DESC, A.ORDER_NO DESC 
--; 
==============================================================================================================

������������������� 2006.06.03(��) �۾� �����������������
---> 07:30 ~ 13:00 

- ���θ� ����
- SMS VB ���� 
���ݹ��Աݰ� ����(06) ���� ���� 
1. SMS���� ���۰���(frmSmsListReservP) 
---------------------------------------------------------------------------------------------------------------------------- 

-- �ε��� ����  @@@@@@@@ 
CREATE INDEX XIF56T_T_SMS_SEND_RESERVATION ON  
  "IIISHOP".T_SMS_SEND_RESERVATION(SEQ_NO) 
  TABLESPACE IIISHOPX PCTFREE 10 STORAGE(INITIAL 64K) 
; 
----------------------------------------------------------------------------------------------------------------------------

- SMS���� ���� ���� ��ȸ(MAX �� ���ϱ�) 
SELECT /*+ INDEX_DESC(T_SMS_SEND_RESERVATION XIF56T_T_SMS_SEND_RESERVATION) */  
   NVL(MAX(SEQ_NO),0)+1  
FROM T_SMS_SEND_RESERVATION 
WHERE ROWNUM = 1  
==============================================================================================================
  
--�������� ��ȸ(�����Ա� Ȯ��) @@@@@@@@@@@@@   
SELECT A.ORDER_DT, A.ORDER_NO, 
   TO_CHAR(TO_DATE(SYSDATE),'YYYYMMDD') AS ��������,  
   (TO_DATE(SYSDATE) - TO_DATE(A.ORDER_DT,'yyyymmdd')) AS �����Ա�����, 
       A.ORDER_STS,    --�ֹ�����(00:ī����ο���, 01:�ֹ�����, 02:�������, 03:�����Ϸ�, 04:�����, 09:��ۿϷ�         
       A.MEM_NM,   
   A.RECEIVER_NM AS �����ڸ�, A.RECEIVER_HP AS �������ڵ���, 
    TO_DATE(SYSDATE) AS ������, 
   (TO_DATE(SYSDATE) - TO_DATE(A.ORDER_DT,'yyyymmdd')) AS �ֹ�������_��,      
   A.REG_ID, A.AMT AS �ֹ��ݾ� 
FROM T_ORDER A, T_ORDER_DTL B, T_AR C 
WHERE A.COMPANY_CD = B.COMPANY_CD 
AND A.MERCHANT_CD = B.MERCHANT_CD 
AND A.ORDER_DT = B.ORDER_DT 
AND A.ORDER_NO = B.ORDER_NO 
AND A.COMPANY_CD = C.COMPANY_CD 
AND A.MERCHANT_CD = C.MERCHANT_CD 
AND A.ORDER_DT = C.ORDER_DT 
AND A.ORDER_NO = C.ORDER_NO 
AND B.DISPLAY_STORE_CD NOT IN ('S013')  --R&F��ǰ�� �ƴ� ��     
AND ( 
   SELECT COUNT(*)  
   FROM T_SMS_SEND_INFO 
   WHERE ORDER_NO_FULL = C.COMPANY_CD  C.MERCHANT_CD  C.ORDER_DT  C.ORDER_NO 
AND SMS_GB = '06'     --SMS���� ����(06:���ݹ��Աݰ���) 
) < 1    --���ݹ��Աݰ����� �ѹ��� ���� �� �� �� 
AND A.COMPANY_CD = '01' 
AND A.MERCHANT_CD = '0001' 
AND A.ORDER_TP IN ('01')         --�ֹ�����(01:�����ֹ�, 03:��ǰ�ֹ�) 
AND A.ORDER_STS NOT IN ('00', '02')   --�ֹ�����(03:�����Ϸ�) 
AND A.ORDER_DT >=  TO_CHAR(TO_DATE(SYSDATE - 15),'YYYYMMDD')    --�ֹ����� 
AND A.ORDER_DT <= TO_CHAR(TO_DATE(SYSDATE),'YYYYMMDD') 
AND C.AR_WAY_CD ='10'    --���������ڵ�(10:����, 20:ī��, 30:����Ʈ, 40:����) 
AND C.AR_STS ='11'    --��������(11:�����Ա� ����, 13:�����Ա� �Ϸ�) 
--AND (TO_DATE(AR_DT,'yyyymmdd') - TO_DATE(ORDER_DT,'yyyymmdd')) < 3  --�����Ա����ڰ� 2�� �̳� 
AND (TO_DATE(SYSDATE) - TO_DATE(A.ORDER_DT,'yyyymmdd')) > 2  --�����Ա����ڰ� 3�� ���� 
ORDER BY A.ORDER_DT DESC, A.ORDER_NO DESC 
--;  
==============================================================================================================

- DB ������ PT�ڷ� �ۼ� 
==============================================================================================================

������������������� 2006.06.05(��) �۾� �����������������
---> 07:20 ~ 20:00 

- ���θ� ����
- SMS VB ���� 
--�������� ��ȸ(�����Ա� Ȯ��) @@@@@@@@@@@@@   
SELECT A.ORDER_DT, A.ORDER_NO, REPLACE(A.RECEIVER_HP , '-' , '') AS CEL_PHONE 
   --TO_CHAR(TO_DATE(SYSDATE),'YYYYMMDD') AS ��������,  
   --(TO_DATE(SYSDATE) - TO_DATE(A.ORDER_DT,'yyyymmdd')) AS �����Ա�����,    
   --A.RECEIVER_HP AS �������ڵ��� 
   --TO_DATE(SYSDATE) AS ������, 
FROM T_ORDER A, T_ORDER_DTL B, T_AR C 
WHERE A.COMPANY_CD = B.COMPANY_CD 
AND A.MERCHANT_CD = B.MERCHANT_CD 
AND A.ORDER_DT = B.ORDER_DT 
AND A.ORDER_NO = B.ORDER_NO 
AND A.COMPANY_CD = C.COMPANY_CD 
AND A.MERCHANT_CD = C.MERCHANT_CD 
AND A.ORDER_DT = C.ORDER_DT 
AND A.ORDER_NO = C.ORDER_NO 
--AND B.DISPLAY_STORE_CD IN ('S013')  
AND B.DISPLAY_STORE_CD NOT IN ('S013')  
AND ( 
   SELECT COUNT(*)  
   FROM T_SMS_SEND_INFO 
   WHERE ORDER_NO_FULL = C.COMPANY_CD  C.MERCHANT_CD  C.ORDER_DT  C.ORDER_NO 
AND SMS_GB = '06'     --SMS���� ����(06:���ݹ��Աݰ���) 
) < 1    --���ݹ��Աݰ����� �ѹ��� ���� �� �� �� 
AND A.COMPANY_CD = '01' 
AND A.MERCHANT_CD = '0001' 
AND A.ORDER_TP IN ('01')         --�ֹ�����(01:�����ֹ�, 03:��ǰ�ֹ�) 
AND A.ORDER_STS NOT IN ('00', '02')   --�ֹ�����(03:�����Ϸ�) 
AND A.ORDER_DT >=  TO_CHAR(TO_DATE(SYSDATE - 15),'YYYYMMDD')    --�ֹ����� 
AND A.ORDER_DT <= TO_CHAR(TO_DATE(SYSDATE),'YYYYMMDD') 
AND C.AR_WAY_CD ='10'    --���������ڵ�(10:����, 20:ī��, 30:����Ʈ, 40:����) 
AND C.AR_STS ='11'    --��������(11:�����Ա� ����, 13:�����Ա� �Ϸ�) 
--AND (TO_DATE(AR_DT,'yyyymmdd') - TO_DATE(ORDER_DT,'yyyymmdd')) < 3  --�����Ա����ڰ� 2�� �̳� 
AND (TO_DATE(SYSDATE) - TO_DATE(A.ORDER_DT,'yyyymmdd')) > 2  --�����Ա����ڰ� 3�� ���� 
GROUP BY A.COMPANY_CD, A.MERCHANT_CD, A.ORDER_DT, A.ORDER_NO, A.RECEIVER_HP 
ORDER BY A.ORDER_DT 
--; 
==============================================================================================================

- WC ��ǰ �̺�Ʈ ��� ��� 
WC��ǰ�̺�Ʈ ���, WC �ֹ����� 

-- WC ��ǰ��, ���κ� ����� ��ȸ @@@@@@@@@@@@@  
--SELECT COUNT(*) FROM (   
SELECT O.MNO AS ȸ����ȣ, O.MEM_ID AS ȸ��ID, M.MEM_NM AS ȸ����, 
   (SELECT GRADE_NM FROM T_GRADE WHERE GRADE_CD = M.GRADE_CD) AS ����, --A.GRADE_CD AS ����CD, 
   (SELECT BIZCENTER_NM FROM T_BIZCENTER WHERE BIZCENTER_CD = M.BIZCENTER_CD) AS ���Ÿ, 
     O.ENTRY_CNT AS �����, 
   M.POST AS �����ȣ, M.FIX_ADDR AS �ּ�, M.DTL_ADDR AS �ּһ�,  
   M.PHONE AS ��ȭ, M.HPHONE AS �޴��� 
FROM (   
SELECT B.MNO, B.MEM_ID, A.MEM_NM, SUM(B.ENTRY_CNT) AS ENTRY_CNT 
-- SELECT COUNT(*) 
FROM T_MEMBER A, T_WC_ENTRY_TRY B  -- WC ���� �õ�  
WHERE A.MNO = B.MNO 
 AND B.ITEM_CD = '00200601'    --��ǰ�ڵ� 
 AND ( 
  -- WC �ֹ� ���� ��ȸ @@@@@@@@@@@@@ 
SELECT MNO 
-- SELECT COUNT(*) 
FROM T_WC_ENTRY_ORDER 
WHERE MNO = B.MNO 
GROUP BY MNO, ITEM_CD 
   ) > 0  -- WC �ֹ� ������ �����ϴ� ��  
GROUP BY B.MNO, B.MEM_ID, A.MEM_NM 
ORDER BY A.MEM_NM 
) O, T_MEMBER M 
WHERE O.MNO = M.MNO 
--; 
--------------------------------------------------------------------------------------------------------- 

-- WC �ֹ� ���� ��ȸ @@@@@@@@@@ 
SELECT A.COMPANY_CD  A.MERCHANT_CD  A.ORDER_DT  A.ORDER_NO AS �ֹ���ȣ, 
   A.REG_ID AS ȸ��ID, A.MEM_NM AS ȸ����, 
   (SELECT BIZCENTER_NM FROM T_BIZCENTER WHERE BIZCENTER_CD = A.BIZCENTER_CD) AS ���Ÿ, 
   SUM(B.REAL_QTY) AS ���ż���, SUM(B.REAL_SALE_PRICE) AS ���űݾ�,   
   SUM(B.BUYING_PRICE) AS ���԰�,    
   SUM(B.SHIP_PRICE) AS �ù��, 
   (CASE WHEN A.AR_WAY_CD= '01' THEN '����' 
     WHEN A.AR_WAY_CD = '02' THEN 'ī��' 
 WHEN A.AR_WAY_CD = '03' THEN '����/ī��' 
 WHEN A.AR_WAY_CD = '04' THEN 'R_F�Ӵ�' 
 ELSE A.AR_WAY_CD END) AS �������,   
   (SELECT REPLACE(CARD_NM,'card','') FROM T_CARD_BIN WHERE CARD_BIN = SUBSTR(D.CARD_NO,1,6)) AS ī��� 
FROM T_ORDER A, T_ORDER_DTL B, T_WC_ENTRY_ORDER C, T_CARD_LOG D 
WHERE A.COMPANY_CD = B.COMPANY_CD 
AND A.MERCHANT_CD = B.MERCHANT_CD 
AND A.ORDER_DT = B.ORDER_DT 
AND A.ORDER_NO = B.ORDER_NO 
AND A.COMPANY_CD = C.COMPANY_CD 
AND A.MERCHANT_CD = C.MERCHANT_CD 
AND A.ORDER_DT = C.ORDER_DT 
AND A.ORDER_NO = C.ORDER_NO 
AND A.COMPANY_CD = D.COMPANY_CD 
AND A.MERCHANT_CD = D.MERCHANT_CD 
AND A.ORDER_DT = D.ORDER_DT 
AND A.ORDER_NO = D.ORDER_NO 
AND A.COMPANY_CD = '01' 
AND A.MERCHANT_CD = '0001' 
AND A.ORDER_TP IN ('01')         --�ֹ�����(01:�����ֹ�, 03:��ǰ�ֹ�) 
AND A.ORDER_STS >= '03'    --�ֹ�����(03:�����Ϸ�) 
AND A.ORDER_DT >= '20060501'  
AND A.ORDER_DT <= '20060604'  
GROUP BY A.COMPANY_CD, A.MERCHANT_CD, A.ORDER_DT, A.ORDER_NO, C.ENTRY_CNT,  
    A.MEM_NM, A.REG_ID, A.BIZCENTER_CD, A.AR_WAY_CD, D.CARD_NO 
ORDER BY A.ORDER_DT, A.ORDER_NO 
--; 
--=================================================================================================== 

- �ſ�ī�� ���� 
�ڻ���        bcmarket        Member    *��-> �����/hyuni26/mm 
��� cd ���� �ҷ��� �ϴµ�, [�ֹ��Է¿� �����߽��ϴ�, �Һΰ��� �Է¿���] ��� �����޼��� ��ٽ�.  
�� ���̵�� �ѵ� 300�����ε�, ���� �ʾҴ��� ���庸�� �ȳѾ��ٰ� �Ͻ�.  
* ī���ȣ: 9430-0300-2475-8912  �����ī�� 
�����޼���: �Һΰ����Է¿����Һΰ���������� 
����: ī�� ��ü ���� �� �� ���׿�..ī������ڰ� ���� ī��翡 ���Ǹ� �ؾ� �մϴ�. 
--=================================================================================================== 

- ����������(���Ǻ��� ����) 
�絵��: �����(zizon05/*)   �����: �ֱ��(zizon05/*)    
���������� �������� ===> �ֱ�� ���� ����   
--------------------------------------------------------------------------------------------------------- 
�絵��: �ֱ��(tepung/*)   �����: �����(tepung/()    
���������� �������� ===> ����� ���� ����   
==============================================================================================================

- ���ݰ�꼭 ���� 
���� --> ������� ��� �� 
������  sususu02  Management-M 
20060605, (��)��ȫö��, 0100012006060500154, 20060605 
--=================================================================================================== 

- ������ ���� 
����ȭ    tittat   Master 
������: 20060529�� ���� �߾��. 
(������ =  ��������) 
������ --> ���� ���̸� �ֱ� �ֹ���ȣ�� �������� 
--------------------------------------------------------------------------------------------------------- 

- ���ݰ�꼭 ���� ���� @@@@@@@@ 
-- UPDATE T_TAX_BILL 
SET REPUBLISH_DT = TO_DATE('20060529 16:50:55', 'YYYY-MM-DD HH24:MI:SS') --�������� 
WHERE PUBLIC_NO IS NOT NULL            
 AND REG_ID = 'tittat' 
--;   
==============================================================================================================

������������������� 2006.06.06(ȭ) �۾� �����������������
---> 10:30 ~ 20:00 --> ������ 

- ���θ� ����
- ���� ��꼭 ���� 
������ ���� --> (������ =  ��������): ���� ���̸� �ֱ� �ֹ���ȣ�� �������� 
���� �޸� ���ݰ�꼭 ���� ���� 
--------------------------------------------------------------------------------------------------------- 
-- ���ݰ�꼭 �� ���� ��ȸ(MAX �� ���ϱ�) 
SELECT /*+ INDEX_DESC(T_TAX_BILL_DTL XIF02_T_TAX_BILL_DTL) */  
  (COMPANY_CD  MERCHANT_CD  ORDER_DT  ORDER_NO) AS ORDER_NO_FULL 
FROM T_TAX_BILL_DTL 
WHERE PUBLIC_NO = '35336214'  
  AND ROWNUM = 1  
--------------------------------------------------------------------------------------------------------- 
-- �ε��� ����  @@@@@@@@ 
CREATE INDEX XIF02_T_TAX_BILL_DTL ON  
  "IIISHOP".T_TAX_BILL_DTL(ORDER_DT,  ORDER_NO) 
  TABLESPACE IIISHOPX PCTFREE 10 STORAGE(INITIAL 64K) 
==============================================================================================================

-- �ε��� ����  @@@@@@@@@@@@@ 
CREATE INDEX XIF01_T_ORDER ON  
  "IIISHOP".T_ORDER(COMPANY_CD, MERCHANT_CD, ORDER_DT, ORDER_NO, ORDER_TP, ORDER_STS) 
  TABLESPACE IIISHOPX PCTFREE 10 STORAGE(INITIAL 64K) 
;  
-- �ε��� ����  @@@@@@@@@@@@@ 
CREATE INDEX XIF01_T_ORDER_DTL ON  
  "IIISHOP".T_ORDER_DTL(COMPANY_CD, MERCHANT_CD, ORDER_DT, ORDER_NO, DISPLAY_STORE_CD) 
  TABLESPACE IIISHOPX PCTFREE 10 STORAGE(INITIAL 64K) 
;  
-- �ε��� ����  @@@@@@@@@@@@@ 
CREATE INDEX XIF01_T_MEMBER ON  
  "IIISHOP".T_MEMBER(MEM_ID, MEM_STS) 
  TABLESPACE IIISHOPX PCTFREE 10 STORAGE(INITIAL 64K) 
;  
==============================================================================================================

-- SMS���� �̸����� ���� ��ȸ  @@@@@@ ====> �ֱ� 3���� �� MART���� �ִٰ� 2,500�� (�����) 
SELECT T_SMS_SEND_PREV_SEQ.nextval, 
'79' AS SMS_GB, X.MNO, X.REG_ID AS MEM_ID, X.MEM_NM, X.CEL_PHONE, 
TO_CHAR(TO_DATE(SYSDATE),'YYYYMMDD') AS SMS_CAUSE_DT, 'test01' AS REG_ID, X.MEM_GRADE, 
X.ORDER_NO_FULL, '210.123.1333.31' AS REG_IP, SYSDATE AS REG_DT   
FROM ( 
SELECT A.MNO, A.REG_ID, A.MEM_NM, REPLACE(A.RECEIVER_HP, '-' , '') AS CEL_PHONE, A.MEM_GRADE,        
   SUM(B.REAL_SALE_PRICE) AS ORDER_NO_FULL 
FROM T_ORDER A, T_ORDER_DTL B 
WHERE A.COMPANY_CD = B.COMPANY_CD 
AND A.MERCHANT_CD = B.MERCHANT_CD 
AND A.ORDER_DT = B.ORDER_DT 
AND A.ORDER_NO = B.ORDER_NO 
AND A.COMPANY_CD = '01' 
AND A.MERCHANT_CD = '0001' 
AND A.ORDER_TP IN ('01')         --�ֹ�����(01:�����ֹ�, 03:��ǰ�ֹ�) 
AND A.ORDER_STS IN ('03', '04', '09')   --�ֹ�����(03:�����Ϸ�, 04:�����, 09:��ۿϷ�) 
AND A.ORDER_DT >= '20060306'  
AND A.ORDER_DT <= '20060606'  
AND B.DISPLAY_STORE_CD = 'S019'  --�����ڵ�(S001:L&B����, S013:R&F����, S019:I3MART) 
--AND B.DEPART1_CD = '980'   --DEPART1�ڵ� 
--AND A.AMT >= 50000      --�ֹ� �ݾ��� 5���� �̻� 
AND ( 
   SELECT COUNT(*) 
   FROM T_MEMBER 
   WHERE MEM_ID = A.MEM_ID 
AND MEM_STS = '01'  --ȸ�������ڵ�(01:����, 06:Ż��Ϸ�) 
) > 0   --���� ȸ���� �� 
GROUP BY A.COMPANY_CD, A.MERCHANT_CD, A.ORDER_DT, A.ORDER_NO, 
 A.MNO, A.REG_ID, A.MEM_NM, A.RECEIVER_HP, A.MEM_GRADE 
ORDER BY ORDER_NO_FULL 
) X 
--; 
==============================================================================================================

������������������� 2006.06.07(��) �۾� �����������������
---> 07:10 ~ 23:00 

- ���θ� ����
- SMS VB ���� 
���ݹ��Աݰ� ����(06) ���� ���� 
1. SMS���� ���۰���(frmSmsListReservP) 

- �Լ���� �ε��� ��� 
CREATE INDEX T_SMS_SEND_PREV_idx_ORDER_DT ON T_SMS_SEND_PREV (SUBSTR(ORDER_NO_FULL,7, 8));    
CREATE INDEX T_SMS_SEND_PREV_idx_ORDER_NO ON T_SMS_SEND_PREV (SUBSTR(ORDER_NO_FULL,15, 5));    

--�������� ��ȸ(�����Ա� Ȯ��) @@@@@@@@ 
SELECT  REPLACE(A.HPHONE, '-', '') AS CEL_PHONE, 
   A.MEM_NM, A.MEM_ID, C.ORDER_DT, SUBSTR(C.ORDER_DT,5,2) '/' SUBSTR(C.ORDER_DT,7,2) AS ORDER_DT2, C.AR_AMT, 
   (SELECT  (CASE WHEN REPLACE(ENTR_NM,'�߾�ȸ','') = '����' THEN REPLACE(ENTR_NM,'�߾�ȸ','') 
        WHEN ENTR_NM = '22' THEN '��ҽ���' 
  ELSE REPLACE(ENTR_NM,'����','') END) AS BANK_NM  
   FROM T_ENTERPRISE WHERE COMPANY_CD = '01' AND ENTR_NO = C.AR_BANK_ENTR_NO) AS BANK_NM, 
   REPLACE(C.AR_BANK_ACCOUNT, '-', '')  AS BANK_ACCOUNT 
-- SELECT COUNT(*) 
FROM T_SMS_SEND_PREV A, T_AR C 
WHERE SUBSTR(A.ORDER_NO_FULL, 7, 8) = C.ORDER_DT 
AND SUBSTR(A.ORDER_NO_FULL, 15, 5) = C.ORDER_NO   
AND A.SMS_GB = '06'   --SMS���� ����(04:��� ����, 06:���ݹ��Աݰ���, 03:������)   
AND C.AR_WAY_CD = '10' --���������ڵ�(10:����)  
ORDER BY A.SEQ_NO, A.ORDER_NO_FULL DESC, A.HPHONE ASC, A.MEM_NM ASC 
--;  
------------------------------------------------------------------------------------------------------------------------ 

--�������� ��ȸ(�����Ա� Ȯ��) @@@@@@@@@@@@@   
-- SELECT COUNT (*) FROM ( 
SELECT  REPLACE(A.RECEIVER_HP, '-', '') AS CEL_PHONE, 
   A.MEM_NM, A.ORDER_DT, C.AR_AMT,      --C.AR_PERSON_NM, 
   (SELECT  (CASE WHEN REPLACE(ENTR_NM,'�߾�ȸ','') = '����' THEN REPLACE(ENTR_NM,'�߾�ȸ','') 
        WHEN ENTR_NM = '22' THEN '��ҽ���' 
  ELSE REPLACE(ENTR_NM,'����','') END) AS BANK_NM  
   FROM T_ENTERPRISE WHERE COMPANY_CD = '01' AND ENTR_NO = C.AR_BANK_ENTR_NO) AS BANK_NM, 
   REPLACE(C.AR_BANK_ACCOUNT, '-', '')  AS BANK_ACCOUNT      
FROM T_ORDER A, T_ORDER_DTL B, T_AR C 
WHERE A.COMPANY_CD = B.COMPANY_CD 
AND A.MERCHANT_CD = B.MERCHANT_CD 
AND A.ORDER_DT = B.ORDER_DT 
AND A.ORDER_NO = B.ORDER_NO 
AND A.COMPANY_CD = C.COMPANY_CD 
AND A.MERCHANT_CD = C.MERCHANT_CD 
AND A.ORDER_DT = C.ORDER_DT 
AND A.ORDER_NO = C.ORDER_NO 
AND B.DISPLAY_STORE_CD NOT IN ('S013')  --R&F��ǰ�� �ƴ� �� 
AND ( 
   SELECT COUNT(*)  
   FROM T_SMS_SEND_INFO 
   WHERE ORDER_NO_FULL = C.COMPANY_CD  C.MERCHANT_CD  C.ORDER_DT  C.ORDER_NO 
AND SMS_GB = '06'     --SMS���� ����(06:���ݹ��Աݰ���) 
) < 1    --���ݹ��Աݰ����� �ѹ��� ���� �� �� �� 
AND A.COMPANY_CD = '01' 
AND A.MERCHANT_CD = '0001' 
AND A.ORDER_TP IN ('01')         --�ֹ�����(01:�����ֹ�, 03:��ǰ�ֹ�) 
AND A.ORDER_STS NOT IN ('00', '02')   --�ֹ�����(03:�����Ϸ�) 
AND A.ORDER_DT >=  TO_CHAR(TO_DATE(SYSDATE - 3),'YYYYMMDD')    --�ֹ����� 
AND A.ORDER_DT <= TO_CHAR(TO_DATE(SYSDATE),'YYYYMMDD') 
AND C.AR_WAY_CD ='10'    --���������ڵ�(10:����, 20:ī��, 30:����Ʈ, 40:����) 
AND C.AR_STS ='11'    --��������(11:�����Ա� ����, 13:�����Ա� �Ϸ�)   
AND (TO_DATE(SYSDATE) - TO_DATE(A.ORDER_DT,'yyyymmdd')) > 2  --�����Ա����ڰ� 3�� ���� 
AND LENGTH(RTRIM(REPLACE(A.RECEIVER_HP, '-', ''))) > 8   --�޴�����ȣ_���� 
AND (REPLACE(A.RECEIVER_HP, '-', '') LIKE '010%' OR REPLACE(A.RECEIVER_HP, '-', '') LIKE '011%'  
OR REPLACE(A.RECEIVER_HP, '-', '') LIKE '016%' OR REPLACE(A.RECEIVER_HP, '-', '') LIKE '017%'  
OR REPLACE(A.RECEIVER_HP, '-', '') LIKE '018%' OR REPLACE(A.RECEIVER_HP, '-', '') LIKE '019%')  
GROUP BY A.COMPANY_CD, A.MERCHANT_CD, A.ORDER_DT, A.ORDER_NO, A.RECEIVER_HP, A.MEM_NM, 
    C.AR_BANK_ACCOUNT, C.AR_PERSON_NM, C.AR_AMT, C.AR_BANK_ENTR_NO 
ORDER BY A.ORDER_DT 
-- ) 
==============================================================================================================

- �������� ���(78) SMS ���� 
��� : �ֱ� 3���� Dept 980 �ִٰ� 2,500�� (�����) 
����: [i3shop] ���ѹα� �౸ �¸���� ���!! ����������+��ǰ�� ���� ����ǰ �������!! 
==============================================================================================================

-- ���ݰ�꼭 �� ���� ��ȸ(MAX �� ���ϱ�) 
SELECT /*+ INDEX_DESC(T_TAX_BILL_DTL XIF02_T_TAX_BILL_DTL) */  
   SUBSTR(ORDER_DT,5,2) AS ORDER_MONTH, SUBSTR(ORDER_DT,7,2) AS ORDER_DAY,  
   ORDER_DT AS ORDER_DT, ITEM_NM AS ITEM_NM  
FROM T_TAX_BILL_DTL 
WHERE PUBLIC_NO = 35336215 --�����ȣ  
  AND ROWNUM = 1 
==============================================================================================================

- ���������� ���� 
���̵� : csb61(�ּ���) lgī�� 
��������: ��� �� 30���� ���� �������� ������ �� �����ϴ�. 
��ġ: ���� �������� ��û ���� ���� 

-- �������� ���� 
-- UPDATE T_KICA_REQ 
SET REQ_YN = 'Y', REQ_DATE = '', DN_YN = 'N', DN_DATE = '',  
BILL_METHOD = 'N', BILL_SEQ = NULL, BILL_DATE = NULL, USER_DN = NULL  
WHERE MEM_ID = 'csb61'  
--; 
----------------------------------------------------------------------------  
- �������� Ȯ��(�ѱ���������)  --> ������ ���� --> 4. ������ ���� 
http://www.signgate.com/business/bus05.htm 
==============================================================================================================

- ����������(���Ǻ��� ����) 
�絵��: �����(rjs57/*)   �����: �����(rjs57/*)    
���������� �������� ===> ����� ���� ���� 
==============================================================================================================

- ���� ���� ���� 
1. �˱� ���� �ؼ��� ����Ŭ SQLƩ��& ����Ʃ��   ==> ���� ��ǰ������ ���� ���� 
���� / ������ 27,000��  
2. ����Ŭ �ǹ� Ʃ�װ� SQL ���� �н� ==> ���� ��ǰ������ ���� ���� 
�����ع̵�� / �ְ�ȣ  25,000�� 
3. 30���� ��� ������ ����Ŭ ����� ���� 
�Ѻ��̵�� / ������  20,000�� 
4/ ���� �� ����Ʈ���� : ������ �������� ��α� 
������ / Joel Spolsky  22,000�� 
==============================================================================================================

������������������� 2006.06.08(��) �۾� �����������������
---> 07:40 ~ 23:00 

- ���θ� ����
- SMS VB ���� 
���ݹ��Աݰ� ����(06) ���� ���� 
1. SMS���� ���۰���(frmSmsListReservP) 
04:��۽���, 06:���ݹ��Աݰ���, ��Ÿ �̺�Ʈ 
==============================================================================================================

- ��ǰ ���� ��û 
������  bori1004   Active-Master 
20060608, ������, 0100012006060800104, 20060608 
1 - I3MART - ��Ű�� �� 3kg() -  - 26000 - 1 
-------------------------------------------------------------------------------------------------- 
��������: Warning: ORA-02292: integrity constraint 
-- ���� �Ұ����ϰ� �ϴ� ���ϵ� ���̺� ��ȸ 
SELECT CONSTRAINT_NAME, TABLE_NAME, R_CONSTRAINT_NAME 
FROM user_constraints 
WHERE CONSTRAINT_NAME = 'SYS_C004497'    --> ������ ������ ��ġ�� ���̺� 
; 
==============================================================================================================

������������������� 2006.06.09(��) �۾� ����������������� 
---> 07:40 ~ 23:00 

- ���θ� ����
- SMS VB ���� 
���� �߼� 
04:��۽���, 06:���ݹ��Աݰ���, ��Ÿ �̺�Ʈ  --> �Ϸ� 
==============================================================================================================

-- �ε��� ����  @@@@@@@@@ 
CREATE INDEX I_01_I2_T_SMS_SEND_INFO ON T_SMS_SEND_INFO(SMS_GB, ORDER_NO_FULL) 

-- ��۽��� ���� ��ȸ @@@@@@@@@   
SELECT    A.MNO, A.MEM_ID, A.MEM_NM, REPLACE(A.RECEIVER_HP, '-', '') AS RECEIVER_HP,       
                (A.COMPANY_CD  A.MERCHANT_CD  A.ORDER_DT  A.ORDER_NO) ORDER_NO_FULL      
FROM T_ORDER A, T_STOREOUT B                      
WHERE A.COMPANY_CD = B.COMPANY_CD                   
   AND A.MERCHANT_CD = B.RECV_MERCHANT_CD           
   AND A.ORDER_DT = B.RECV_DT                       
   AND A.ORDER_NO = B.RECV_NO                       
   AND A.COMPANY_CD = '01'                          
   AND B.MERCHANT_CD = '9001'       
   AND B.STOREOUT_CL ='01'          
   AND B.STOREOUT_TP ='01'          
   AND B.STOREOUT_STS ='09'         
   AND B.INVOICE_PRINT_YN = 'Y'     
   AND B.STOREOUT_END_DT >= TO_CHAR(TO_DATE(SYSDATE - 1),'YYYYMMDD')        
   AND B.STOREOUT_END_DT <= TO_CHAR(TO_DATE(SYSDATE - 1),'YYYYMMDD')        
   AND NOT EXISTS (                                 
       SELECT SEQ_NO                                
       FROM T_SMS_SEND_INFO                         
       WHERE ORDER_NO_FULL = '010001'  A.ORDER_DT  A.ORDER_NO       
   AND SMS_GB = '04'                        
   )   
------------------------------------------------------------------------------- 

-- �ε��� ���̺� ���� ��ȸ @@@@@@@@@@@@@ 
SELECT x.table_name as ���̺��, x.num_rows num_rows, 
a.index_name as �ε�����, b.column_name as Į����,  
decode(a.uniqueness, 'UNIQUE', 'U', 'N') as ����ũ�ε�������,  
a.tablespace_name as ���̺����̽���, y.num_distinct num_distinct, 
a.pct_free, a.clustering_factor, a.blevel, a.leaf_blocks, 
(c.del_lf_rows_len / c.del_lf_rows_len) *100 as Balance 
FROM dba_tables x, dba_tab_columns y , dba_indexes a, dba_ind_columns b, index_stats c 
WHERE  x.owner = 'IIISHOP'   
AND x.table_name = 'T_SMS_SEND_INFO'   -- ���̺��(T_SMS_SEND_PREV, T_SMS_SEND_INFO) 
AND a.owner = x.owner 
AND a.table_owner =  b.index_owner 
AND x.table_name =  a.table_name 
AND a.table_name =  b.table_name 
AND a.index_name = b.index_name 
AND x.owner = y.owner 
AND x.table_name =  y.table_name 
AND b.column_name =  y.column_name 
AND b.index_name =  c.name(+) 
ORDER BY x.table_name 
==============================================================================================================

 -- �ε��� ����  @@@@@  ---> �ε��� ���� ���� 
CREATE INDEX I_01_I2_T_SMS_SEND_INFO ON T_SMS_SEND_INFO(SMS_GB, ORDER_NO_FULL) 
==============================================================================================================

- ���� �Ƶ���Event(79) SMS ���� 
6�� 9�� ���� �Ƶ��� �귣�� �ű� ���� �ְ� 50% ����!! 
���� : [i3shop] ���ǾƵ��� �ű� ���� ������! �����Ż�ǰ �ְ� 55%����!! 6,500������~ 
��� : �ֱ� 3���� �� MART���� �ִٰ� 2,500�� (�����) 
==============================================================================================================

������������������� 2006.06.10(��) �۾� �����������������
---> 07:40 ~ 19:00 --> ���� �޹� 

- ���θ� ����
- SMS VB ���� 
- ��ġ�ؽ�Ʈ�ڽ� ������ �޸𸮰� ���� ����(RICHTX32.OCX): ������ ���� ��ǻ��(XP Pro) 
Load frmLog '��� �α� PopUp 
==============================================================================================================

������������������� 2006.06.12(��) �۾� �����������������
---> 07:00 ~ 22:00 

- ���θ� ����
- SMS VB ����  
- ��ġ�ؽ�Ʈ�ڽ� ������ �޸𸮰� ���� ����(RICHTX32.OCX): ������ ���� ��ǻ��(XP Pro) 
Load frmLog '��� �α� PopUp 
==============================================================================================================

- ��������: '7'��Ÿ�� ����, �޸𸮰� �����մϴ�.  
 "7" ��Ÿ�� "�޸� ����" ���� 
 xp���� ���α׷��� �����ϸ� "7" ��Ÿ�� "�޸𸮺���" ������ ��ϴ�. 
���� �˱�δ� ���α׷� ������ �ƴϰ� �ý��� ������ �˰� �ֽ��ϴ�. 
�������� �̷����� �־ �ذ��� �ߴµ� �� ������ ���� �ʾƼ� ���� �ø��ϴ�. 
��� ��ǻ�Ϳ��� �̷� ������ �ߴ°� �ƴϰ� �Ϻ� �Ŀ��� �ߴµ� ��ġ����� �� ����� �ȳ���... 
����ƮƮ������ �ý��ۿ��� ������ �����ߴ� �⿪��....(2������ �̷� ������ �߻��ؼ� ��ġ�� �ߴµ�) 
�˰� ��ôº� �����ֽø� ����... 
  ====>  
����: �ϴ� msg �������� ���� ms���� os ������ ���ƾ� �ǰڽ��ϴ�. 
��� ���� ������ �� �޼����� �߻��ߴ��� ������ �˼� �ֵ��� �޼����� �־�� �ϴµ� ���������� ������ �����ϴ�. 
�׷����� ���� ms�絵 ���� ..... 
����pc�� ȯ�� ������ ��ġ pc�� ȯ���� Ʋ����� �̷� ���� �޼����� ���� ��Ÿ���°� �����ϴ� 
���α׷����� �Է�, ������ ���ڸ� db�� �����ϴ� ��� ����ȯ���� pc�� ���� ������ �ѱ���� �Ǿ� �ִµ�  
��ġ�� pc�� ���� ������ �ѱ��� �ƴ� Ÿ������ �Ǿ� ������ �޼����� ������ �޸𸮺������� �ߴ±���. 
�޸� ���� �޼����� �߸� ���α׷� ������ �ְ����� ȯ�漳���� Ȯ���ϴ°��� ������... 
�������� �丸 ���� ������ ������... 
�츮�� �������� ���ϴ� �����Ѱ��� �Ƿڷ� ����... 
�� ���� ���ô� �� ������ �Ǿ����� �𸣰ڳ׿�. 
--------------------------------------------------------------------------------------------------------- 

�ذ�å1:  Install Factory �� OCX ���� ���� �� �� ���� ����� �� �� 
�ذ�å2: VB 6.0 ���α׷� ��ġ �� ������ ��  
==============================================================================================================

������������������� 2006.06.13(ȭ) �۾� ����������������� 
---> 07:00 ~ 21:20 

- ���θ� ����
- SMS VB ����  
SMS VB ����ȭ �۾�(���� ���� �߰�) 
---------------------------------------------------------------------------------------------------------
- ����Ŭ 9i Clinet ��ġ���� 
XP Pro�� ����Ŭ9i Ŭ���̾�Ʈ�� ��ġ�ϴµ� 
������(560M), ��Ÿ��(150M)���� ��Ÿ�� üũ�ϰ� ���� ������ 33%���� ���̻� ��ġ�� �ȵȴ�. 
�ذ�å: XP Pro �ٽ� ��ġ �� 
---------------------------------------------------------------------------------------------------------
����: ����ġ ���� ����(������ XP Pro ��ǻ��) 
����: 1. ico_i3shop_4.ico �������� XP �԰ݿ� �� �´� ������ ������  --> ico_i3shop.ico ���������� ���� 
2. MSFLXGRD.OCX ���� --> Server ��� ���� MSFLXGRD.OCX ���� �� ������ 
==============================================================================================================

210.123.133.93 ������(EC��) (VNC PWD: i3shop2006)  
==============================================================================================================

������������������� 2006.06.14(��) �۾� �����������������
---> 07:30 ~ 23:00 

- ���θ� ����
- SMS VB ���� 
����: ����ġ ���� ����(������ XP Pro ��ǻ��) 
����: 1. ico_i3shop_4.ico �������� XP �԰ݿ� �� �´� ������ ������  --> ico_i3shop.ico ���������� ���� 
2. MSFLXGRD.OCX ���� --> Server ��� ���� MSFLXGRD.OCX ���� �� ������ 
==============================================================================================================

- SMS���� ���� 
����: i3shop_sendSMS.exe �� ������ �־� ���α׷� ���� �ϰڽ��ϴ�. 
����: Log Directory :C:\Program Files\i3shop_sendSMS\SMS_log ���� �� ���� 
(C:\Program Files\i3shop_sendSMS ���� �Ʒ��� SMS_log ���� ���� �� �� ��) 

- SMS���� ����2 
����: '3706' ��Ÿ�� �����߻�. �����ڸ� ã�� �� �����ϴ�. 
����: DB OPEN�� Conn_Open���� fun_DB_Connection�� ���� 

- SMS���� ����3 
����: '50003' ��Ÿ�� �����߻�.  ����ġ ���� ���� 
����: frmLog2 ������ ����(ico_i3shop_4.ico) --> ico_i3shop.ico �� ���� 
==============================================================================================================

- ������ ���� 
0100012003121000710(6060) 
��ǰ���� ǥ�� �Ǿ��ֽ��ϴ�.  --> �ֹ����� �ٽ� ǥ�� ��(��ǰ����(RETURN_DT) ����) 
==============================================================================================================

- ���� �̸Ӵ� ���� 
- ���� �̸Ӵ� ����(����) 
/emoney/highEmoneyCatalogP.jsp?p_order_store=mart(���� �̸Ӵ�) 
display/event/com/mainP.jsp?p_store_cd=S063&p_category_cd=W51000000&p_display_cd=51 
--> /display/prdlist/tpl/type51/itemHiE_ListP.jsp  
==============================================================================================================

������������������� 2006.06.15(��) �۾� �����������������
---> 07:30 ~ 18:30   --> �濵�������� ����Ʈ ȸ�� 

- ���θ� ����
- ���� �̸Ӵ� ���� 
- ���� �̸Ӵ� ����(����) 
/emoney/highEmoneyCatalogP.jsp?p_order_store=mart(���� �̸Ӵ�) 
display/event/com/mainP.jsp?p_store_cd=S063&p_category_cd=W51000000&p_display_cd=51 
--> /display/prdlist/tpl/type51/itemHiE_ListP.jsp  

- ���� �̸Ӵ� ī�װ� 
W51010101:�ǰ���ɽ�ǰ, W51010102:1����ǰ/������ǰ 
W51020101:ȭ��ǰ, W51020201:�۽����ɾ�, W51020301:��Ȱ��ǰ/����, W51020401:�м� 
----------------------------------------------------------------------------------------------------------------------- 

- ���� �м� 
select level, id, sort 
connect by prior id = sort  ... (2) 
start with id = 1  ... (1) 
Ʈ���˻��̶�� ���ε�... 
(1) id ���� 1�� �ڷḦ ã�Ƽ� ����ϰ� 
(2) ��µ� id ���� ���� sort ���� ���� �ڷḦ ã�� ����ϴ� ���� �ݺ��ϰ� �˴ϴ�. 
�̿Ͱ��� level �� ���� ����� �ָ� �� �ڷ��� ���̸� �� ���� �ִµ� 
���� level �� ��ġ�ϴ� �ڷᰡ id ������ ���ĵ��� ���� �� ���׿�. 
==============================================================================================================

- ������ ���� 
�ֹ���ȣ : 19988 
�ű� �ֹ���ȣ : 0100012004083111402 
�ֹ��� : ����� 
������ : ����� 
==============================================================================================================

������������������� 2006.06.16(��) �۾� �����������������
---> 07:30 ~ 18:30    ---> ������ ���� Ƚ�� ����(�ؿ��� Ƚ��) 

- ���θ� ����
- ���� �̸Ӵ� ���� 
- ���� �̸Ӵ� ����(����) 
/emoney/highEmoneyCatalogP.jsp?p_order_store=mart(���� �̸Ӵ�) 
/emoney/itemHiE_ListP.jsp?p_store_cd=S063&p_category_cd=W51000000&p_display_cd=51 
--> /display/prdlist/tpl/type51/itemHiE_ListP.jsp  

- ���� �̸Ӵ� ī�װ� 
W51010101:�ǰ���ɽ�ǰ, W51010102:1����ǰ/������ǰ 
W51020101:ȭ��ǰ, W51020201:�۽����ɾ�, W51020301:��Ȱ��ǰ/����, W51020401:�м� 
----------------------------------------------------------------------------------------------------------------------- 

- ��ǰ --> �õ���ǰ: ��ۺ� �߰�(��ü���) 
�¶�����: �ŷ�ó�� ���� �ù�� ���� ���� 
==============================================================================================================

������������������� 2006.06.19(��) �۾� �����������������
---> 07:00 ~ 22:00 

- ���θ� ����
- ���� �̸Ӵ� ���� 
- ���� �̸Ӵ� ����(����) 
/emoney/highEmoneyCatalogP.jsp?p_order_store=mart(���� �̸Ӵ�)
/emoney/itemHiE_ListP.jsp?p_store_cd=S063&p_category_cd=W51000000&p_display_cd=51 
--> /display/prdlist/tpl/type51/itemHiE_ListP.jsp  
==============================================================================================================

- ���� ��� ���� 
����ȭ   07tjsk    ����ȸ��(*) 
20060519, ����ȭ, 0100012006051900318, 20060519 salle.i3shop.cc 
��ȣ : (��)�̰�âȣ�ý��� 
���ݰ�꼭 ������!(*->������������.. �鼼 ������ ����....) 
����: ��� ����, �����ڰ� �����м����� ���� �ʾҴ�. ������ ���ܵǾ��ٶ�� Ȯ�εȴٰ���. 
����: ����ڰ� ��ǻ�͸� �� �ȴٰ� http://www.i3shop.com �ڷ�ǿ��� �ٿ��� ���� �� ������ ������ �ʰ� 
�ٷ� ������ ������ ���� ����(�����м��� ������ ���� Windows XP�� JVM�� ��ġ ���� ����) 
----------------------------------------------------------------------------------------------------------------------- 

- ���� ����Ʈ ��� ����(Windows XP�� �� ���) 
1. Windows XP�� JVM �� �ٿ� �޾Ƽ� ��ġ �Ͻð� ����� �غ�����. 
(http://www.i3shop.com/board/data_view.asp?i_id=169) 
2. ����Ʈ(������ ��µ�) ���â ���� �� ��ġ���(1���� ��ġ �ߴµ��� �ȵǸ�) 
(http://www.i3shop.com/board/data_view.asp?i_id=189) 
 ��. appletregistry.zip (621K) �� ���� �ް� appletregistry.zip�� ������ Ǭ��. 
 ��. ������ Ǭ appletregistry �������� ozappletviewer_xp.reg�� ���� Ŭ�� 
 ��. �������͸� ��� ���θ� ������ "��"�� Ŭ�� 
 ��. �������͸� ��� ���� 
 ��. ����� �� ����� �������� 
-----------------------------------------------------------------------------------------------------------------------
- ������ ��Ʈ�� ��ġ(���� ����: ����) ---> http://neturo.dacom.net/main/main.html  ewds/ewds  
==============================================================================================================

- �ſ�ī�� ���� 
������    kms3414  
ī���ȣ : 4599-3052-6851-7903  ��ȯ 
��������: �ҺκҰ�ī��    �ϽúҰŷ���� 
==============================================================================================================

- ����͵� ���� ���� 
��(21), ȭ(27), ��(29), ��(30) 
==============================================================================================================

������������������� 2006.06.20(ȭ) �۾� �����������������
---> 07:00 ~ 23:00 

- ���θ� ����
- ���� �̸Ӵ� ���� 
- ���� �̸Ӵ� ����(����) 
/emoney/highEmoneyCatalogP.jsp?p_order_store=mart(���� �̸Ӵ�) 
/emoney/itemHiE_ListP.jsp?p_store_cd=S063&p_category_cd=W51000000&p_display_cd=51 
--> /display/prdlist/tpl/type51/itemHiE_ListP.jsp 
-----------------------------------------------------------------------------------------------------------------------
��ǰ: �ǰ���ɽ�ǰ, 1����ǰ/������ǰ, �õ���ǰ/�������� --> 3�� 
���ǰ: ȭ��ǰ, �۽����ɾ�, ��Ȱ��ǰ/����, �м� --> 4�� 
==============================================================================================================

- ������ ���� 
�ֹ���ȣ : 17800 
ó�����ڸ� 20060619 �� ���� 
==============================================================================================================

������������������� 2006.06.21(��) �۾� �����������������
---> 07:00 ~ 22:00 

- ���θ� ����
- ���� �̸Ӵ� ���� 
- ���� �̸Ӵ� ����(����) 
/emoney/highEmoneyCatalogP.jsp?p_order_store=mart(���� �̸Ӵ�) 
/emoney/itemHiE_ListP.jsp?p_store_cd=S063&p_category_cd=W51000000&p_display_cd=51 
--> /display/prdlist/tpl/type51/itemHiE_ListP.jsp 
-----------------------------------------------------------------------------------------------------------------------
��ǰ: �ǰ���ɽ�ǰ, 1����ǰ/������ǰ, �õ���ǰ/��������    --> 3�� 
���ǰ: ȭ��ǰ, �۽����ɾ�, ��Ȱ��ǰ/����, �м�  --> 4�� 
==============================================================================================================

- ų���� ���� 
1. ų���� ȸ�� ��ȸ ���� 
������ ORDER BY �� ����( ȸ��, ���� ȸ�� ����) 
2. ų��ų �޴� ����(�ѹ��� ������� ����) 
-----------------------------------------------------------------------------------------------------------------------
SELECT TIMES_CD, ST_DT, ED_DT 
FROM T_BUYTIMES 
WHERE ITEM_TP = '02' 
AND ( TIMES_CD  IN ( 
SELECT LTRIM(TO_CHAR(NVL(NVL(TIMES_CD,0)+1,0), '000000')) 
FROM T_BUYTIMES  
WHERE ST_DT <= TO_CHAR(SYSDATE, 'YYYYMMDD')   
AND ED_DT >= TO_CHAR(SYSDATE, 'YYYYMMDD')  
AND ITEM_TP = '02' 
) 
OR TIMES_CD  IN ( 
SELECT TIMES_CD 
FROM T_BUYTIMES  
WHERE ST_DT <= TO_CHAR(SYSDATE, 'YYYYMMDD')   
AND ED_DT >= TO_CHAR(SYSDATE, 'YYYYMMDD')  
AND ITEM_TP = '02' 
) 
) 
ORDER BY REG_DT DESC   ---> ORDER BY �� ���� 
==============================================================================================================

������������������� 2006.06.22(��) �۾� �����������������
---> 07:30 ~ 18:40 

- ���θ� ����
- ������� ���� ���� 
- �������_VB ���� 
211.33.193.151 '��ȯ�� �븮(VNC PWD: i3shop2006)  
==============================================================================================================

��ǲ��(ù��)
18:30 ��� 
18:40 ����ö ���뱸�� 
19:30 ����ö ���뿪 
19:40 ���� ÿ�ñ��� 
20:00 ����(8:8) 
21:00 ���� ���� 
21:30 ���Ѱ� �Ĵ�(����: ��ȣ, ��ȣ ģ��)
01:40 ���� 
02:00 �Ͱ�(�ý�) 
==============================================================================================================

������������������� 2006.06.23(��) �۾� �����������������
---> 08:10 ~ 18:40 

- ���θ� ����
- ������� ���� ���� 
- �������_VB ���� 
==============================================================================================================

- Win XP Professional 
������ �븮, ������, ������, ������  
- Win XP Home Edition 
��ȯ�� �븮(����Ŭ ���� ����) 
"Microsoft OLE DB Provider for Oracle" �� ���� �߻� 
����: Win XP Home���� MSDAORA(DB�� ���� �����ϴ� ������� ������ �ȵ�) 
�ذ�: 1. Oracle client ��Ȯ�� ��ġ �Ǿ����� Ȯ�� 
2. ODBC�� DB�� �����ϴ� ���(OraOLEDB)���� ����  --> ����å 

Public Function Conn_Open(Con As ADODB.Connection) As Integer  --> ODBC�� DB�� �����ϴ� ��� 
Public Function fun_DB_Connection(ByRef Conn As ADODB.Connection) As Boolean  --> DB�� ���� �����ϴ� ��� 
--------------------------------------------------------------------------------------------------------------------------- 

1. �ֽ� OS ������ ��ġ 
2. SLQ PLUS�� Oracle client �α���(IIISHOP/IIISHOP) 
3. �ٸ� XPȨ�� Oracle client ��ġ �� ���α׷� ��ġ �׽�Ʈ 
==============================================================================================================

- ���� ��� ���� 
�� ����ó: ������ ����(*) 
��ȣ : (��)�̰�âȣ�ý��� 
���ݰ�꼭 ������!(*->������������.. �鼼 ������ ����....) 
����: ��� ����, �����ڰ� �����м����� ���� �ʾҴ�. ������ ���ܵǾ��ٶ�� Ȯ�εȴٰ���. 
����: ����ڰ� ��ǻ�͸� �� �ȴٰ� http://www.i3shop.com �ڷ�ǿ��� �ٿ��� ���� �� ������ ������ �ʰ� 
�ٷ� ������ ������ ���� ����(�����м��� ������ ���� Windows XP�� JVM�� ��ġ ���� ����) 
----------------------------------------------------------------------------------------------- 
- ���� ����Ʈ ��� ����(Windows XP�� �� ���) 
1. Windows XP�� JVM �� �ٿ� �޾Ƽ� ��ġ �Ͻð� ����� �غ�����. 
(http://www.i3shop.com/board/data_view.asp?i_id=169) 
2. ����Ʈ(������ ��µ�) ���â ���� �� ��ġ���(1���� ��ġ �ߴµ��� �ȵǸ�) 
(http://www.i3shop.com/board/data_view.asp?i_id=189) 
 ��. appletregistry.zip (621K) �� ���� �ް� appletregistry.zip�� ������ Ǭ��. 
 ��. ������ Ǭ appletregistry �������� ozappletviewer_xp.reg�� ���� Ŭ�� 
 ��. �������͸� ��� ���θ� ������ "��"�� Ŭ�� 
 ��. �������͸� ��� ���� 
 ��. ����� �� ����� �������� 
 -------------------------------------- 
 - ������ ��Ʈ�� ��ġ(���� ����: ����) ---> http://neturo.dacom.net/main/main.html  ewds/ewds 
----------------------------------------------------------------------------------------------- 
- ���� ��� ����(���� �ݼ�Ÿ) 
����ó: *@*.*  02)828-1488 
==============================================================================================================

- [i3shopȸ��] 
18:30 ��� 
18:50 ���� Ƚ��(�� ���� ����: ����� ����) 
21:30 ������ ������ ���(14����: ���� 22���� ���� ������) 
22:00 �뷡��(116,000�� ���� ���) 
23:50 ���� 
24:10 �Ͱ� 
----------------------------------------------------------------------------------------------- 

- �ؿ��� Ƚ�� T:053)745-1288 
MBC��۱����� GSī�� ������ ��Ÿ����� 2�� ��ɺ� �������� ���ٰ� ���� �ʵ��б� 4�Ÿ�  --> ���� �ʵ��б� �� 
==============================================================================================================

������������������� 2006.06.24(��) �۾� �����������������
---> 07:30 ~ 19:00 

- ���θ� ����
- ������� ���� ���� 
-- �Ǹź� ��ȸ @@@@@@@ 
SELECT * 
FROM T_STOCK_INQUIRY_PANMAEBUN 
WHERE USE_YN = 'Y' --��뿩�� 
==============================================================================================================

- SMS ���� ���� ���� 
4,5�� 160, 130 dept ������ �� ���� 
dept: 130  --> 588 �� 
dept: 160  --> 2,350 �� 
==============================================================================================================

- ī�� ���� ���� 
20060615, ��ȿ��, 0100012006061500394, \4,217,200(����\2,517,200 + ī��\1,700,000)  
��-> ī�常 ������ ���¿��� ������ҿ�û�Ͽ� �ֹ��� ������һ���! (*-> ī��翡 ���� ��ȭ�غôµ�  
��ҵǾ��ٰ� Ȯ���ߴٽ�) 
>>> ��ī�� �����Ϸ��� �Ѵٽ�! �����ݾ��� ����(2���) + ī�� \1,700,000���̶��.  
������ ��� cd �����Ѱ� �ְ� �̹��� ī�� �κ� 170���� �����ϸ� 300���� �̸��ε�, ������ 300���� �ѵ��ʰ���  
�����Ұ���� ������Ʈ ��ٽ�!  
�� ī���ȣ: 4553-1140-9094-6874 ��ī��  
==============================================================================================================

������������������� 2006.06.26(��) �۾� �����������������
---> 07:00 ~ 23:00 

- ���θ� ����
- ������� ���� ����  
==============================================================================================================

- �����̸Ӵ� ����  
1. �м�ī�װ��� ��Ȱ/���� ī�װ� ������ �� ���ּ���. 
2. �õ���ǰ/��������(��ü ���)���� �� �߰� �ش޶�� �մϴ�    
3. �׸��� ���� �̹����� ���ϴٰ� �մϴ�.(�������� ��κ��� ������� �ǰ� �Դϴ�.) 
==============================================================================================================

������������������� 2006.06.27(ȭ) �۾� �����������������
---> 07:00 ~ 23:00 

- ���θ� ����
- ������� ���� ���� 
�׽�Ʈ ������� 
==============================================================================================================

- ���ݰ�꼭 ������ ���� 
==============================================================================================================

������������������� 2006.06.28(��) �۾� �����������������
---> 07:20 ~ 01:00 --> ��ݱ� ������� 

- ���θ� ����
- ��ݱ� ������� 
stockInquiryStatDeclinP.jsp ���� 
������� �ǻ������ ���� �������� ���� ���(�������� �������� ����) 
�Ͽ� ��� ������ �ľ� 
----------------------------------------------------------------------------------------------------------------------------
1. ���ڵ� �߰� �ȵ� 
����: Unique �ε��� �߸� ���� 
�ذ�: Unique �ε��� ���� 
INSERT INTO T_STOCK_INQUIRY_TEMP (.... 
java.sql.SQLException: ORA-00001: unique constraint (IIISHOP.I_01_T_STOCK_INQUIRY_TEMP) violated 

2. ��ǰ ã�⿡ ��ǰ�ڵ带 ��ȸ �� ����� ���ڵ� �ڸ��� ��ǰ�ڵ� �� 
505-A 8809053011023(00145208) 
----------------------------------------------------------------------------------------------------------------------------

- ������ ����(��ȯ�� �븮 ������) 
MSHOME --> I3SHOP�� HP LaserJet 2200 Series PCL 
==============================================================================================================

--'20051230', '20060628'  VAT���Կ���(01:����)   ---> 6�� 28��(��) 21�� 50�� ����  
MECHUL_WONGA_LNB = 3684303467,    MECHUL_MEGA_LNB = 4624660254, 
MECHUL_WONGA_RNF = 2243000099, MECHUL_MEGA_RNF = 14762049569 

--'20051230', '20060628'  VAT���Կ���(00:����) 
MECHUL_WONGA_LNB = 4040637038,   MECHUL_MEGA_LNB = 5073056851, 
MECHUL_WONGA_RNF = 2467296109,   MECHUL_MEGA_RNF = 2467296109 
---------------------------------------------------------------------------------------------------------------------------- 

--'20051230', '20060628'  VAT���Կ���(01:����)   ---> 6�� 28��(��) 21�� ���� ��  ---> 
MECHUL_WONGA_LNB = 3681995334,    MECHUL_MEGA_LNB = 4620835877, 
MECHUL_WONGA_RNF = 2236382773, MECHUL_MEGA_RNF = 14725768023 

--'20051230', '20060628'  VAT���Կ���(00:����) 
MECHUL_WONGA_LNB = 4038239685,   MECHUL_MEGA_LNB = 5068960691, 
MECHUL_WONGA_RNF = 2460017051,   MECHUL_MEGA_RNF = 16198304826  
==============================================================================================================

������������������� 2006.06.29(��) �۾� �����������������
---> 08:20 ~ 18:40 --> ǲ�� 

- ���θ� ����
- ������� ��� ��� ���� �ۼ�(����) 
==============================================================================================================

������������������� 2006.06.30(��) �۾� �����������������
---> 07:20 ~ 18:30 --> ������ ȸ�� ���� 

- ���θ� ����
- ���ݰ�꼭 ���� 
���ݰ�꼭�������, ���ݰ�꼭�հ�ǥ���� ���� ���� 
==============================================================================================================

- �ſ�ī�� ���� 
�ؿ����޽���: ī����ν��� �¶��ΰ����� �ŷ��Ұ� 8375 
��ī���ȣ : 4518-4300-8228-2696  �������� 
��->Ȯ�� �� �����帮��� ��. �ֽ���  * 
----------------------------------------------------------------------------------------------------------------------------
����: ������ ī��翡�� �������� �� �Ѿ�ͼ� �׷��� �� �� ���� 
�ذ�å: �ϴ��� �ٸ� ��ǻ�Ϳ��� ������ �ٽ� �غ��� �׷��� �� �Ǹ� ������ ���� ī��翡 ���� 
�϶�� �ϼ���. 
==============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������