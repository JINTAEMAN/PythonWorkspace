

�����������������������������������������������������������
+---------------------------------------------// Memo(2004.04) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2004.04.01(��) �۾� ������������������� 
---> 06:40 ~ 23:00 
  
- ��Ʈ�� ID/PWD ����
\\210.123.133.39\f$(���� ����) administrator/i3shop390321 
\\210.123.133.51(����Ŭ Test����) (������)root/i3shop511092 
\\210.123.133.52(���θ� Test����) i3shop/i3shop520321 ========> ��� �� �� 
\\210.123.133.56(���� Test����)   i3shop/dacosystem ========> ��� �� �� 
\\211.233.5.100(OZ ����Ʈ)         administrator/ozoz100# 
\\211.233.5.102(Nmail ����) administrator/i3shop1020321 ========> Ʋ�� 
\\211.233.5.103(��������/Mail ����) administrator/i3shop1030321  
\\211.233.5.104(i3.1004.cc����) administrator/i3shop1040321  
\\211.233.5.107((MS-SQL DB����) i3shop/i3shop1070321 sa/ckrladl(������) MSDB-SERVER 
\\211.233.5.108(���� �Ǽ���) i3shop/i3shop1080506 --> su/i3shop1089121 http://int.i3shop.com(admin/bukwin2k) 

\\211.233.5.111(���θ� �Ǽ���_1) i3shop/iiishop1110506 (���)i3shop/iiishop9125 --> su/iiishop1119563 
\\211.233.5.112(���θ� �Ǽ���_2) i3shop/iiishop1120506 (���)i3shop/iiishop9125 --> su/iiishop1129563 
\\211.233.5.113(���θ� �Ǽ���_3) i3shop/iiishop1130506 (���)i3shop/iiishop9125 --> su/iiishop1139563 
\\211.233.5.114(���θ� �Ǽ���_4) i3shop/i3shop1140506 --> su/i3shop1149121 
\\211.233.5.115(���θ� �Ǽ���_5) i3shop/i3shop1159121 --> su/i3shop1159121 
\\211.233.5.116(���θ� �Ǽ���_6) i3shop/i3shop1160506 --> su/i3shop1169121 
\\211.233.5.117(���θ� �Ǽ���_7) i3shop/i3shop1170506 --> su/i3shop1179121 
\\211.233.5.110(�� DB����) oracle/i3shop1105974 --> su/ekzhtltmxpa(���ڽý���) 
\\210.123.133.121(MS-SQL DB����) administrator/i3shop649563 sa/project 
\\210.123.133.39(MS-SQL ��� DB����) administrator/i3shop390321 sa/ckrladl(������) 
\\210.123.133.123\i3shop(CVS ����) administrator/i3shop 
------------------------------------------------------------------------------------------------------  

\\210.123.133.23(4�� Print) administrator/i3shop   ===> �ۼ�(EPSON EPL-6200L) 
\\Jjung(4�� �����̳� Print) administrator/i3shop   ===> HP(deskjet 920C) 
\\210.123.133.148(3�� ������ �븮 Print) ���¸�/tama12 
\\210.123.133.185(3�� ������ ���� Print) ������/9035 
==============================================================================================================

- i3shop TAMA ������ ��Ʈ��(IP �ּ�) --------- 
IP:    210.123.133.31 
S.M: 255.255.255.0 G.W: 210.123.133.1 
DNS: 211.233.5.93 DNS2: 168.126.63.1 
==============================================================================================================

- ���¾�ü
���θ� ������ȭ(��) B0000520/2431 
���θ� ������[(��)�������] B0087207/87207 
���θ� ������[�����̽�����] B0000602/pr55036 
���θ� �����[(��)���ؾ�Ŭ��] B0000404/4926 
�ӿ���[Ace inc] B0000286/4166 
������[����Ŵ����] 31666/1666 
��â��[SK(��)] B0000587/4762 
������[�������] B0000046/4888 
���� ���ѿ�[�߿��޸���] B0000511/3532 
��Ʈ �����[(��)���ؾ�Ŭ��] B0000404/4926  
==============================================================================================================

����� --> �͹̳� ���� ����(Ztem) 
[i3shop@iiishop_int i3shop]$  cd /opt/WebSphere/AppServer/logs 
[i3shop@iiishop_int logs]$ tail -f Default_Server_stdout.log 
==============================================================================================================

- ������� ����
- �ǹ� ����� �׽�Ʈ 
- ��������CD ��� ���ݰ�꼭 ������ �� ����(�ŷ�ó�������� �������� ��� ���) 
==============================================================================================================

- ���Ա���(����/��Ʈ)  ���������� ��ǰ�̸�  
/BizMgr/DeliveryMgr/StoreIn/storeinRiStatP.jsp?  
/BizMgr/SaleMgr/WebOrderMgr/returnItemOrderStatP.jsp 
==============================================================================================================

- ��ǰ �ֹ���ȣ 
/BizMgr/SaleMgr/WebOrderMgr/returnItemOrderStatP.jsp 
0100012004030800893 
--------------------------------------------------------------- 

- ���� L&B   2004.1.1 ~ 1.31   5��   ======> 
�ŷ�ó ����� �� �� ������¹�ȣ, �����ڵ带 ��� ���� 
==============================================================================================================

- OZ Script ����  
global double gongup_dtl; // ���ް���  
global double total_dtl; // �հ�ݾ� 
global double tax_dtl; // �ΰ��� 
------------------------------------------------------------------------------------------------------ ------------ 
  
::total_dtl=::total_dtl+#TOTAL_AMT#; // �հ�ݾ� 
::gongup_dtl=::gongup_dtl+#BUYING_AMT#; // ���ް��� 
::tax_dtl=::tax_dtl+#BUYING_VAT#; // �ΰ���  
==============================================================================================================

- ��ü��: �������  00023 
������ü ���� ���̵�: B0000023 
�н�����: 0001 
�Դϴ�. �̰� 3/16���� 3/31�ϱ��� ��ȸ�߰ŵ��. 
�ݾ��� ���� �ٸ��ϴ�. Ȯ�ιٶ��ϴ�.  
==============================================================================================================
  
������������������� 2004.04.02(��) �۾� �����������������
---> 07:10 ~ 00:30 

- ������� ����
- �ǹ� ����� �׽�Ʈ 
- ����(����, ��ǰ) Ȯ�� 
- �ŷ��� �۱ݰ���(��������) �߰� 
out.println("<br>[smlctg.jsp] :: [p_store_cd_1]"+ p_store_cd);  
---------------------------------------------------------------------------------------------------------------- 

--  ����� ��ȸ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 
SELECT A.ENTR_NO, A.ENTR_NM, A.SETTLE_TP_CD, 
   (SELECT B.CODE_NM FROM T_BASECODE B 
WHERE B.GROUP_ID ='G123'AND B.CODE = A.SETTLE_TP_CD) SETTLE_TP_NM 
FROM T_ENTERPRISE A 
WHERE A.COMPANY_CD = '01'   
 AND A.ENTR_NM LIKE 'ü��%'  
--================================================================================================================

- ���������� UPDATE 
UPDATE T_MAGAM_MEIP SET QTY = QTY * -1 
WHERE COMPANY_CD ='01' 
  AND MERCHANT_CD ='9001' -- ������(0002:��Ʈ 9001:����) 
  AND MAGAM_GUBUN ='02' --��������(01:���� 02:��ǰ) 
  AND MEIP_GUBUN='02' --���Ա���(01:���θ��Ǹ� 02:�԰�(��Ʈ/����) 03:�������ǰ�Ǹ�) 
==============================================================================================================

- TR ������Ʈ(Dataset) 
. tr component�� keyvalue���� ������ ���� tr�� ���񽺿� �����ϰ��� �ϴ� dataset�� �����ϵ��� �Ǿ� �ֽ��ϴ�.  
<param name="KeyValue" value="test_tr(I:input1=tbds_1)">  
�̷��� �ϰ� �Ǹ� tbds_1�̶�� dataset�� column������ test_tr�̶�� tr�� ������ instance��������  
input1���� ������ ���� ����Ʈ�� ���� �� ������ ���� �ͳ��� ���� ��ġ���� �־��ְ� �˴ϴ�.  
==============================================================================================================

2. �޴��󿡼� Ȯ���Ͻø� �ƽð����� parameters���� �Է°��� �ѱ⵵�� �Ǿ� �ֽ��ϴ�. 
������ ���κ� ����ؼ� �������� �ʺ� ���α׷����Դϴ�.  
��TR�� ����ϰ� �ִµ� �ñ��� ���� ������.  
���ϴ� �� �ñ��� �͵��� �����ϸ�...  
��  
��1. Ʈ�����ǿ��� �����̳� ���� �۾��� �ϰԵǴµ�  
�� TR�� ��� �����ͼ��� �޾Ƽ� �� element �� ����  
�� �����ϳ���?  
�� ��, SOB�� sql������ �ԷµǴ� ���� dataset�� �÷�����  
�� ��� ��Ī�����ִ��� �ϴ� ���Դϴ�.  
��  
��2. TR���� parameter�� ����ؼ� �Է°��� ����� ��  
�� ����� �ƴ� ������ �������� ��� �ؾ��ϳ���?  
�� ���� ��� "val1=tiger" �̷� �� ��ſ�  
�� tiger��� ���ڿ��� �ƴ� point��� ������ �־��ַ�  
�� �� ������.   
 ============================================================================================================== 
 
- [EJB, Bean ��� ���]  ==========> ����(i3shop)  
C:\i3shop\Int\BizMgrBean\com\i3shop\dao\BizMgr 
OrderDAO.java OrderDtlDAO.java ���� ����(����) 

-- Bean ��� ��� 
eclipse���� �������� -> jar ���� 
���� PC C:\i3shop\intLib�� ������ 
���� PC C:\orion2\lib�� ������ 
BizMgr.jar ����(����) 
--------------------------------------------------------------------------------------------------------------- 

\\210.123.133.56\i3shop\lib �� BizMgr.jar ���� ���� ���� 
\\211.233.5.108\i3shop\src\bean\BizMgrDAO\com\i3shop\dao\BizMgr 
OrderDAO.java OrderDtlDAO.java ���� ���� ���� 
\\211.233.5.108\websphere\lib\app�� BizMgr.jar ���� ���� ����  
.108���� Websphere ���� �� �����  
==============================================================================================================

- EJB ��� ��� 
210.123.133.56 ���� @@@@@@@@@@@  ==> ���� ���⼭ ItemMgr.jar ������ ���� �� 211.233.5.108�� �ٿ� ���� 
--------------------------------------------------------------------------------------------------------------- 

1. C:\i3shop\Int\IntEjb\ItemMgr\com\i3shop\ejb\BizMgr\ItemMgrBean.java ����  

2. \\210.123.133.56\i3shop\src\ejb\ItemMgrEJB ���ÿ��� �Ʒ� 3�� ������ �����Ͽ� �ٿ� �ֱ��� 
ItemMgr.java ItemMgrBean.java ItemMgrHome.java 

3. �͹̳� ���� ����(Ztem) 
IP: 210.123.133.56 i3shop/dacosystem 

4. ������ �ϱ� 
[i3shop@newint i3shop]$  su 
[i3shop@newint i3shop]$  i3shop566414 
[i3shop@newint i3shop]# cd src/ejb/ItemMgr 
[i3shop@newint ItemMgr]$ ./build.sh ItemMgr 
.jar ���� ������(---> \\210.123.133.56\i3shop\component\ejb\ItemMgr.jar ���Ϸ� ����� ��) 
\\211.233.5.108\websphere\installedApps\i3shop.ear ����(ItemMgr.jar) �ٿ� �ֱ� 

5. .108���� Websphere ���� �� ����� 

6. ����� --> �͹̳� ���� ����(Ztem) 
[i3shop@newint i3shop i3shop]$  cd /opt/WebSphere/AppServer/logs 
[i3shop@newint i3shop logs]$ tail -f Default_Server_stdout.log 
==============================================================================================================
   
- [EJB, Bean ��� ���]  ==========> ���θ�(CCDOM)  
local ���� EJB, Bean ����  ======> 
C:\CCDOM\Ccdom\bin\com\i3shop\beans\BizStore 
CartBean.class 
C:\CCDOM\Ccdom\CcdomWeb ���� JSP���� ���� 
---------------------------------------------------------------------------------------------------------------

- �׽�Ʈ ����(.52) --- 
\\210.123.133.52\i3shop   @@@@@  i3shop/i3shop520321(su/i3shop526414)  
(Bean: C:\CCDOM\Ccdom\CcdomBeans\com\i3shop\beans\BizStore ���� CartBean.java ���� ���� -->  
\\210.123.133.52\i3shop\src\bean �� �ٿ� �ֱ�) 

- �͹̳� ���� ����(Ztem)==> IP: 211.233.5.52 
[i3shop@newint i3shop]$  su 
[i3shop@newint i3shop]$  i3shop526414 
[root@newint src]# cd src/bean 
[root@inewint bean]#  ./build.sh CartBean 
\\210.123.133.52\websphere\installedApps\BizStore.ear\BizStore.war\WEB-INF\classes\com\i3shop\beans\BizStore  
�� CartBean.class �ڵ� ���� 

- ���� �� ����(.111) --- 
\\211.233.5.111\i3shop @@@@@   i3shop/i3shop1115974 (su/i3shop1116414)  
(Bean:  C:\CCDOM\Ccdom\CcdomBeans\com\i3shop\beans\BizStore ���� CartBean.java ���� ���� --> 
\\210.123.133.111\i3shop\src\bean �� �ٿ� �ֱ�) 

�͹̳� ���� ����(Ztem)==> IP: 211.233.5.111 
[i3shop@iiishop_ccdom1 i3shop]$  su 
[i3shop@iiishop_ccdom1 i3shop]$  i3shop1116414 
[root@iiishop_ccdom1 src]# cd src/bean 
[root@iiishop_ccdom1 bean]#  ./build.sh CartBean 
\\210.123.133.111\websphere\installedApps\BizStore.ear\BizStore.war\WEB-INF\classes\com\i3shop\beans\BizStore  
�� CartBean.class �ڵ� ���� 

- ���� �� ����(.112) --- 
\\210.123.133.111 ����� ����(CartBean.class)�� �Ʒ� ������ �ٿ� �ֱ� 
\\210.123.133.112\websphere\installedApps\BizStore.ear\BizStore.war\WEB-INF\classes\com\i3shop\beans\BizStore  

- ���� �� ����(.113) --- 
\\210.123.133.111 ����� ����(CartBean.class)�� �Ʒ� ������ �ٿ� �ֱ� 
\\210.123.133.113\websphere\installedApps\BizStore.ear\BizStore.war\WEB-INF\classes\com\i3shop\beans\BizStore 
==============================================================================================================

- Bean ���� ���� 
�׺������ ==> /Ccdom/bin/com/i3shop/beans/BizStore/CartBean.class ���� ���� 
(C:\CCDOM\bin\CartBean.class) 
��Ű�� Ž���� ==> /Ccdom/CcdomWeb/WEB-INF/classes/com/i3shop/beans/BizStore �ٿ� �ֱ� 
(C:\CCDOM\Ccdom\CcdomWeb\WEB-INF\classes\com\i3shop\beans\BizStore) 
==============================================================================================================

������������������� 2004.04.03(��) �۾� �����������������
---> 06:40 ~ 15:00 

- ������� ����
- �ŷ�ó �۱� ����(��������) �߰� 
- �������� ���� 
�۱ݰ��¿���(REMIT_ACCOUNT_YN) �߰�
out.println("[storeinP.jsp] :: [p_meip_no_bill]"+ p_meip_no_bill);  
---------------------------------------------------------------------------------------------------------------------
  
entrBankAccountB.jsp 
/Int/IntEjb/VendorMgr/com/i3shop/ejb/BizMgr/VendorMgrBean.java 
C:\i3shop\Int\BizMgrBean\com\i3shop\dao\BizMgr\EntrBankAccountDAO.java 
==============================================================================================================

http://127.0.0.1:5001/BizMgr/VendorMgr/vendorP.jsp
String p_remit_account_yn = null2str(dataHash.get("REMIT_ACCOUNT_YN")); 
p_remit_account_yn = p_remit_account_yn.trim(); 
out.println("[entrBankAccountP.jsp] :: [p_remit_account_yn]"+ p_remit_account_yn);  
==============================================================================================================

������������������� 2004.04.03(��) �۾� �����������������
---> 06:40 ~ 14:30 

- ������� ����
- �ŷ�ó �۱� ����(��������) �߰� 
- �������� ���� 
�۱ݰ��¿���(REMIT_ACCOUNT_YN) �߰� 
out.println("[storeinP.jsp] :: [p_meip_no_bill]"+ p_meip_no_bill);  
==============================================================================================================

������������������� 2004.04.05(��) �۾� �����������������
---> 09:00 ~ 20:00 

- ������� ����
- �������� ���� 
�۱ݰ��¿���(REMIT_ACCOUNT_YN) �߰�
out.println("[storeinP.jsp] :: [p_meip_no_bill]"+ p_meip_no_bill);  
==============================================================================================================

-- �۱ݰ��¿��� Y�� 2�� �̻��ΰ� ��ȸ @@@@@@@@@@@@@@@@@@@ 
SELECT COMPANY_CD, ENTR_NO, REMIT_ACCOUNT_YN      --���( 45001, 45090): cf)45086  
FROM T_ENTR_BANK_ACCOUNT 
GROUP BY  COMPANY_CD, ENTR_NO, REMIT_ACCOUNT_YN  
HAVING COUNT(*) > 1 
   AND REMIT_ACCOUNT_YN ='Y' 
==============================================================================================================

- �������� ���� ���� 
C:\i3shop\Int\IntWeb\BasicInfoMgr\inc\entrBankAccountLayer.jsp 
C:\i3shop\Int\IntWeb\BasicInfoMgr\ 
entrBankAccountEditP.jsp 
entrBankAccountS.jsp
C:\i3shop\Int\IntEjb\VendorMgr\com\i3shop\ejb\BizMgr\VendorMgrBean.java 
C:\i3shop\Int\BizMgrBean\com\i3shop\dao\BizMgr\EntrBankAccountDAO.java  
==============================================================================================================

- �������� ����
- EJB ��� ��� 
210.123.133.56 ���� @@@@@@@@@@@  ==> ���� ���⼭ VendorMgr.jar ������ ���� �� 211.233.5.108�� �ٿ� ���� 
---------------------------------------------------------------------------------------------------------------------

1. C:\i3shop\Int\IntEjb\VendorMgr\com\i3shop\ejb\BizMgr\VendorMgrBean.java ����  
  
2. \\210.123.133.56\i3shop\src\ejb\VendorMgrEJB ���ÿ��� �Ʒ� 3�� ������ �����Ͽ� �ٿ� �ֱ��� 
VendorMgr.java VendorMgrBean.java VendorMgrHome.java 

3. �͹̳� ���� ����(Ztem) 
IP: 210.123.133.56 i3shop/dacosystem 

4. ������ �ϱ� 
[i3shop@newint i3shop]$  su 
[i3shop@newint i3shop]$  i3shop566414 
[i3shop@newint i3shop]# cd src/ejb/VendorMgr 
[i3shop@newint i3shop]# ./build.sh VendorMgr 
.jar ���� ������(---> \\210.123.133.56\i3shop\component\ejb\VendorMgr.jar ���Ϸ� ����� ��) 
\\211.233.5.108\websphere\installedApps\i3shop.ear ����(VendorMgr.jar) �ٿ� �ֱ� 

5. .108���� Websphere ���� �� ����� 

6. ����� --> �͹̳� ���� ����(Ztem) 
[i3shop@newint i3shop i3shop]$  cd /opt/WebSphere/AppServer/logs 
[i3shop@newint i3shop logs]$ tail -f Default_Server_stdout.log 
==============================================================================================================

- Bean ��� ���  @@@@@@@@@@@ 
C:\i3shop\Int\BizMgrBean\com\i3shop\dao\BizMgr 
OrderDAO.java OrderDtlDAO.java ���� ����(����)  
-- Bean ��� ��� 
eclipse���� �������� -> jar ���� 
���� PC C:\i3shop\intLib�� ������ 
���� PC C:\orion2\lib�� ������ 
BizMgr.jar ����(����) 
---------------------------------------------------------------------------------------------------------------------

\\211.233.5.108\i3shop\src\bean\BizMgrDAO\com\i3shop\dao\BizMgr 
OrderDAO.java OrderDtlDAO.java ���� ���� ���� 
\\211.233.5.108\websphere\lib\app 
BizMgr.jar ���� ���� ���� 
 
.108���� Websphere ���� �� �����  
==============================================================================================================

������������������� 2004.04..06(ȭ) �۾� �����������������
---> 07:10 ~ 23:00 

- ������� ����
- SP ����(��ǰ�� ��)
-- MAGAM_GUBUN = 02 ��ǰ 
-- MEIP_GUBUN  = 01 ���θ� 
FUNCTION DAY_MEIP_02_01 

SUM(B.QTY) QTY, 
T_STOREOUT_DTL B ===========>   -�� 

SELECT COMPANY_CD, MERCHANT_CD, SEQ_NO, ITEM_CD, QTY 
FROM T_STOREOUT_DTL  
WHERE COMPANY_CD='01' 
AND MERCHANT_CD='0001' --���θ� 
AND REAL_STOREOUT_DT >='20040404' 
AND REAL_STOREOUT_DT <='20040405' 
AND QTY < 0 
-------------------------------------------------------------------------------------------------------------- 

-- MAGAM_GUBUN = 02 ��ǰ 
-- MEIP_GUBUN  = 02 �԰�(��Ʈ/����) 
FUNCTION DAY_MEIP_02_02 

-SUM(B.RI_QTY) AS QTY, ===========>   + �� 
T_STOREIN_RI_DTL B  

SELECT COMPANY_CD, MERCHANT_CD, SEQ_NO, ITEM_CD, RI_QTY 
FROM T_STOREIN_RI_DTL  
WHERE COMPANY_CD='01' 
AND MERCHANT_CD IN('0002', '9001') --�԰�(��Ʈ/����) 
AND STOREIN_RI_DT >='20040404' 
AND STOREIN_RI_DT <='20040405' 
AND RI_QTY < 0 
==============================================================================================================

- Support ���� �䱸 ���� 
���ް���, �ΰ��� �߰��� ��(����: �հ�ݾ�) 
��ü���� ���̱� ��� 
�� �հ�(TOTAL ATM) �ݾ��� ���̱� ��� 
Excel�� ����Ÿ ���̱� 
�������� 
��� ���� �Աݿ���(Y,N) 
==============================================================================================================

- ų���� ���� ���δ��� �߰� 
- ���Ѽ��� ��ǰ ��� �޴� �߰�  
763  BIZ_BuyLimitItemP    /BizMgr/ItemMgr/buyLimitItemP.jsp 
==============================================================================================================

������������������� 2004.04.07(��) �۾� �����������������
---> 07:00 ~ 19:00 

- ���Ѽ��� ����- ���Ѽ��� ��ǰ ��� �޴� �߰�
System.out.println("[getBuyingRemittanceMListB.jsp]::[p_store_cd]"+ p_store_cd); 
dlog("[ItemMgrBean.java]::[findCond]"+ findCond); 
dlog("[ItemMgrBean.java]::[SQL]"+ SQL); 
==============================================================================================================

- ��ȹ ���� 
http://test.mart.cc/display/event/com/mainP.jsp?p_store_cd=S063&p_category_cd=U91010100&p_display_cd=51  
- ų���� 
http://test.mart.cc/display/event/com/mainP.jsp?p_store_cd=S065&p_category_cd=U02010100&p_display_cd=51 
==============================================================================================================
   
������������������� 2004.04.08(��) �۾� �����������������
---> 07:00 ~ 24:00 

- ���Ѽ��� ����
- ���Ѽ��� ��ǰ ��� �޴� �߰�  
==============================================================================================================

--�ŷ�ó ����������� ����(Update ��) 
SQL = " UPDATE T_ENTR_BANK_ACCOUNT " + 
  " SET UP_DT = sysdate "; 

int i = 1; 
for( Enumeration enum = inputHash.keys(); enum.hasMoreElements(); ) { 
String key = (String)enum.nextElement(); 
String colName = null; 

if( !"p_mode".equals(key) && !"p_up_dt".equals(key) && typeHash.containsKey(key) ) { 
try { 
colName = key.substring(2); 
colName = colName.toUpperCase(); 

param.put( i, (String)inputHash.get(key), ((Integer)typeHash.get(key)).intValue() ); 
SQL = SQL + ", " + colName + " = ?"; 
System.out.println("[PoDAO.java]::[update()]::[colName]"+ colName); //�ʵ�� 
System.out.println("[PoDAO.java]::[update()]::[colName_Value]"+ (String)inputHash.get(key)); //�ʵ尪 
} catch( Exception e ) { 
dlog( getClass().getName() + ".update() : " + key + "�� ���� update�� ������� �ʾҽ��ϴ�."); 
} 
i++; // param index 
} 
} 
==============================================================================================================

- Supprt(���¾�ü) ����(eclipse) @@@@@@@@ 
1. ������Ʈ ��� 
�ű�(W) --> ������Ʈ(R) 
/Support.Ear C:\support\Support.Ear 

2. EJB��� �߰� 
C:\support\Support.Ear\META-INF\application.xml ���� 
add ejb module --> ejb-jar uri: DeliveryMgr(����) 

3. EJB��� ���� �߰� 
�ű�(W) --> �ҽ����� 
�ҽ� ������Ʈ �̸�(N): Support.Ear 
���� �̸�(D): /EjbSrc/DeliveryMgr(����) 
��ø�ذ��� ���� �ٸ� �ҽ� ������ ���� �ʵ� ���� üũ(U) 

�ű�(W) --> ��Ű��  
�ҽ� ����(D): Support.Ear/EjbSrc/DeliveryMgr 
�̸�(N): com.i3shop.ejb.BizMgrr(����) 
  
�ű�(W) --> ����  
���� ����(D): Support.Ear/EjbSrc/DeliveryMgr 
���� �̸�(N): DeliveryMgrBean.java(����) 

4. ��� ���� ���� 
Support.Ear --> Ư��(R) --> Java���� ���--> �ҽ�(S)  
Support.Ear/EjbSrc/DeliveryMgr/��� ���� 
Ư����� ������ üũ: DeliveryMgr(����) 
---------------------------------------------------------------------------------------------------------------------- 

5. ���̺귯�� ���� 
Support.Ear --> Ư��(R) --> Java���� ���--> ���̺귯��(L) --> �ܺ�  JAR�߰�(X) 
C:\orion_support\lib\BizMgr.jar dev_stand.jar classes12.zip gauce.jar  
---------------------------------------------------------------------------------------------------------------------- 
C:\j2sdk1.4.1_05\lib\tools.jar 

6. ȯ�漳�� 
â(W) --> ȯ�漳��(P)  
Lomboz --> JDK Tools jar: C:\j2sdk1.4.1_05\lib\tools.jar 
Orion --> 
Orion History Directoy: C:\orion_support 
PWD:  bukwin2k 
Host: C:localhost:23791 
Optical JAVA VM Arguments: -Denvfile=C:\support\Support.Ear\env\daco.env 
==============================================================================================================

- Support.Ear ���� 
server.xml ���� @@@@@@@@ 
---------------------------------------------------------------------------------------------------------------------- 

<application name="Support.Ear" path="C:\Support\Support.Ear" /> 
<web-site path="./support-web-site.xml" /> 
==============================================================================================================

- URL ����(http://127.0.0.1�� ����) 
support-web-site.xml ���� @@@@@@@@ 
----------------------------------------------------------------------------------------------------------------------  

<web-site host="[ALL]" port="80" display-name="Support"> 
	<!-- The default web-app for this site, bound to the root --> 
	<default-web-app application="Support.Ear" name="Support" root="/" /> 
	<access-log path="../log/support-web-site-access.log" /> 
</web-site> 
==============================================================================================================

- �ѱ� ���� 
D:\orion_support\application-deployments\default\defaultWebApp 
persistence ���� ���� 
D:\orion_support\application-deployments\support\WEB_ROOT 
orion-web.xml ���� @@@@@@@@ 
---------------------------------------------------------------------------------------------------------------------- 

default-charset ="euc-kr" 
==============================================================================================================

������������������� 2004.04.09(��) �۾� ����������������� 
---> 07:30 ~ 20:00 

- ���Ѽ��� ����
- ���Ѽ��� ��ǰ ��� �޴� �߰� 
- R&F��ǰ �Ͻ� �Ǹ� �ߴܵ� ��ǰ ���� �� �ߴ� �ȳ� Alert â 
---------------------------------------------------------------------------------------------------------------------- 

out.println("<br>[smlctg.jsp] :: [p_store_cd_1]"+ p_store_cd);  
System.out.println("[ItemWebMgrBean.java]:[getStoreList())]:[findCond]"+ findCond); 
dlog( "[SaleMgrBean.java]::[getOrderDtlList()]::[SQL]=====>\n"+ SQL); 
==============================================================================================================

- ��ũ��Ʈ ���� 
javascript DS_Order���� ������ ��(javascript DS_Member�� ����) 
C:\i3shop\Int\IntWeb\BizMgr\SaleMgr\WebOrderMgr\returnItemOrderEditP.jsp ���� @@@@@@@@ 
---------------------------------------------------------------------------------------------------------------------- 

<script language="javascript" for="DS_Order" event="OnLoadError()"> 
</script> 

<script language="javascript" for="DS_Member" event="OnLoadCompleted(rowcnt)"> 
if( rowcnt > 0 ){  
var p_mno = DS_Order.NameValue(DS_Order.RowPosition , "MNO" ); 
var p_hpHone = DS_Member.NameValue(DS_Order.RowPosition , "HPHONE" ); 
if( p_hpHone != null && p_hpHone.length > 0 ) { 
editForm.p_mem_hphone.value = p_hpHone; 
} 

var p_ri_reason_cd = DS_ReturnItemReq.NameValue(DS_ReturnItemReq.RowPosition , "RI_REASON_CD" ); 
if( p_ri_reason_cd != null && p_ri_reason_cd.length > 0 ) { 
editForm.p_ri_reason_cd.CodeValue = p_ri_reason_cd; 
}  
} 
</script> 
==============================================================================================================

������������������� 2004.04.10(��) �۾� �����������������
---> 07:00 ~ 19:00 

- ���Ѽ��� ����
- ���Ѽ��� ��ǰ ��� �޴� �߰� 
dlog("[AccMgrBean.java]::[getBuyingRemitCheckD()]::[p_company_cd]"+ p_company_cd +"" + 
"[p_merchant_cd(����)]"+ p_merchant_cd+"[p_from_date(����)]"+ p_from_date +"" + 
"[p_to_date(����_2)]"+ p_to_date+"[p_entr_no(�ŷ�óNO)]"+ p_entr_no +"" + 
"[p_store_cd(���Ա���)]"+ p_store_cd+"[p_remittance_yn(�۱�����)]"+ p_remittance_yn +"" + 
"[p_magam_gubun(��������)]"+ p_magam_gubun+"[p_remmit_url(���� �������� URL)]"+ p_remmit_url); 
dlog("[AccMgrBean.java]::[getBuyingRemitCheckD()]::[SQL]=====>\n"+ SQL); 
==============================================================================================================

- �ֹ� ���� ��ȸ 
http://int.i3shop.com/BizMgr/SaleMgr/WebOrderMgr/orderP.jsp 
  
- �������ں�������ȸ  
http://int.i3shop.com/BizMgr/DeliveryMgr/StoreOut/storeoutStsP.jsp  
==============================================================================================================

- Grid �ʵ� ���簡�� 
<Param Name="Editable"  value="true"> 
<Param Name="ColSelect",   value="true">  
<C>id=ORDER_NO_FULL  name='�ֹ���ȣ'  edit=Yes</C>  
==============================================================================================================

������������������� 2004.04.12(��) �۾� �����������������
---> 07:00 ~ 19:00 

- ���Ѽ��� ����- ���Ѽ��� ��ǰ ��� list ����  
dlog("[AccMgrBean.java]::[updateBuyingRemittance()]::[p_company_cd]-->"+getData("p_company_cd",irowHash) +"" + 
"[p_merchant_cd]-->"+ getData("p_merchant_cd",irowHash) +"[p_storeout_dt]-->"+ getData("p_storeout_dt",irowHash) +"" + 
"[p_seq_no]-->"+ getData("p_seq_no",irowHash) +"[p_magamtype]-->"+ getData("p_magamtype",irowHash) +"" + 
"[p_meip_gubun]-->"+ getData("p_meip_gubun",irowHash) +"[p_entr_no]-->"+ getData("p_entr_no",irowHash) +"" + 
"[p_settle_yn]-->"+ getData("p_settle_yn",irowHash)+"[p_settle_dt]-->"+ getData("p_settle_dt",irowHash)); 

dlog("[AccMgrBean.java]::[getBuyingRemitCheckD()]::[SQL]=====>\n"+ SQL); 
==============================================================================================================
  
- CJ�ù� ȸ�� 031-460-7571 B0000587/4762  
��۵��  
- �����忡�� ��Ʈ ��� �̻� 
==============================================================================================================
   
������������������� 2004.04.13(ȭ) �۾� �����������������
---> 06:50 ~ 24:00 

- ���Ѽ��� ����
- ���Ѽ��� ��ǰ ��� list ����  
==============================================================================================================
  
1. MD�� �����ΰ�? 
�Ϲ������� �Ƿ��Ӹ��� �ƴ� ��� ��ǰ�� buyer ��ɰ� 
��ǰ��ȹ ��� (�ȸ����� ��ǰ�� �����Ͽ� �ּҺ������ �����ϰ� 
������ ������ ���곻���� Ȯ���Ͽ� �Һ��ڿ��� ������ �� �ִ� �������� ��.) 
�̷��� 2���� ����� ��ģ ������ ��õ������(MD)��� �մϴ�. 
==============================================================================================================

- [DB ���� ����] 
- DB ���� ����(����, ���θ����� log��  DB���� �ȵ�) ==> 21:00�п� ���������� ���� 
�ذ�å: �α�(archive) ���� �뷮�� 100%���� /user2������  
�α�(archive) ������ ���� �� �ٽ� ����� 
-----------------------------------------------------------------------------------------------------------------------------

- zterm(�͹̳�)���� 211.233.5.110(�Ǽ��� DB) IIISHOP ����(oracle/i3shop1105974)   
 ===> su/ekzhtltmxpa(���ڽý���: ��������) 
> topas 
> df --- �뷮 Ȯ�� 
> su 
> ekzhtltmxpa(���ڽý���: ��������) 
> shutdown -Fr (cf: reboot -Fr)  =====> ����� 
-----------------------------------------------------------------------------------------------------------------------------

- �α� ���� �м�(.110) 
> df 
> cd cd /user2 
> cd ORACLE_DATA 
> cd IIISHOP_ARCH 
> cd log 
> vi 3335.arc 
==============================================================================================================

- .110 DB���� ���� 
zterm(�͹̳�)���� 211.233.5.110(�Ǽ��� DB) IIISHOP ����(oracle/i3shop1105974)   
 ===> su/ekzhtltmxpa(���ڽý���: ��������) 
> topas 
> df --- �뷮 Ȯ�� 
> su 
> ekzhtltmxpa(���ڽý���: ��������) 
> shutdown -Fr (cf: reboot -Fr)  =====> ����� 
-----------------------------------------------------------------------------------------------------------------------------

- �α� ���� �м�(.110) 
> df 
> cd cd /user2 
> cd ORACLE_DATA 
> cd IIISHOP_ARCH 
> cd log 
> vi 3335.arc 
==============================================================================================================

- [��DB STOP, START] 
A. DB STOP 
1. I3SHOP Stop 
env <--- ���� ȯ�� Ȯ�� 
ORALCLE_SID=I3SHOP <--- Ȯ�� 

 lsnrctl stop 
sqlplus " / as  sysdba" 
SQL> shtudown; <--- ���� ���� �ȵ�(�ð��� ���� �ɸ�) 

-- �ȵ� ���.... 
SQL> shtudown abort; 
SQL> startup; 
SQL> shtudown; 
SQL> exit; 

2. IIISHOP Stop 
env <--- ���� ȯ�� Ȯ�� 
ORALCLE_SID=I3SHOP <--- Ȯ�� 
export ORALCLE_SID=IIISHOP 
env <--- ���� ȯ�� Ȯ�� 
ORALCLE_SID=IIISHOP <--- Ȯ�� 

sqlplus " / as  sysdba" 
SQL> shtudown; <--- ���� ���� �ȵ�(�ð��� ���� �ɸ�) 

-- �ȵ� ���.... 
SQL> shtudown abort; 
SQL> startup; 
SQL> shtudown; 
SQL> exit; 

1. I3SHOP Stop 
env <--- ���� ȯ�� Ȯ�� 
ORALCLE_SID=I3SHOP <--- Ȯ�� 

 lsnrctl stop 
sqlplus " / as  sysdba" 
SQL> shtudown; <--- ���� ���� �ȵ�(�ð��� ���� �ɸ�) 

-- �ȵ� ���.... 
SQL> shtudown abort; 
SQL> startup; 
SQL> shtudown; 
SQL> exit; 
-----------------------------------------------------------------------------------------------------------------------------

B. DB Start 
1. IIISHOP 
env <--- ���� ȯ�� Ȯ�� 
ORALCLE_SID=IIISHOP <--- Ȯ�� 
export ORALCLE_SID=IIISHOP 
env <--- ���� ȯ�� Ȯ�� 
ORALCLE_SID=IIISHOP <--- Ȯ�� 

sqlplus " / as  sysdba" 
SQL> starttup; 
SQL> exit; 

 lsnrctl start 

2. I3SHOP 
env <--- ���� ȯ�� Ȯ�� 
ORALCLE_SID=I3SHOP <--- Ȯ��  
env <--- ���� ȯ�� Ȯ�� 
ORALCLE_SID=I3SHOP <--- Ȯ�� 

sqlplus " / as  sysdba" 
SQL> starttup; 
SQL> exit; 
==============================================================================================================

getLimitItemList getItemRsvList 
convertLimitItemListToSql convertItemRsvInputToSql 
==============================================================================================================

������������������� 2004.04.14(��) �۾� �����������������
---> 06:50 ~ 01:00 

- ���Ѽ��� ����
- ���Ѽ��� ��ǰ ��� list ���� 
==============================================================================================================

- ����� ��� ��ȣ ����(����) 
- R&F��ǰ �Ͻ� �Ǹ� �ߴܵ� ��ǰ ���� �� �ߴ� �ȳ� Alert â ���� 
==============================================================================================================

dlog("[AccMgrBean.java]::[updateBuyingRemittance()]::[p_company_cd]-->"+getData("p_company_cd",irowHash) +"" + 
"[p_merchant_cd]-->"+ getData("p_merchant_cd",irowHash) +"[p_storeout_dt]-->"+ getData("p_storeout_dt",irowHash) +"" + 
"[p_seq_no]-->"+ getData("p_seq_no",irowHash) +"[p_magamtype]-->"+ getData("p_magamtype",irowHash) +"" + 
"[p_meip_gubun]-->"+ getData("p_meip_gubun",irowHash) +"[p_entr_no]-->"+ getData("p_entr_no",irowHash) +"" + 
"[p_settle_yn]-->"+ getData("p_settle_yn",irowHash)+"[p_settle_dt]-->"+ getData("p_settle_dt",irowHash)); 
==============================================================================================================
  
- Oralce ��� ���� 
�㺴�� ���� 053)741-4513 
--================================================================================================================

SELECT * FROM T_CLOSE_TOT 
WHERE SELLING_DT BETWEEN  '20040413' AND '20040413' 
------------------------------------------------------------------------------------------------------------------------  

- �� ���� ����  
EXECUTE PKG_DAYOFCLOSE.FINALYDAY_YESTERDAY_INSERT; 

EXECUTE PKG_DAYOFCLOSE.FINALYDAY_CLOSE_INSERT('01', '0001', '20040413', 'Y')  

SELECT * FROM T_MERCHANT_ITEM_RSV 
WHERE  RSV_DT      = '20040413'  
==============================================================================================================

- ������ǰ ���� ������ �����Ϳ� ��  
CALL PKG_ITEM_RSV.ITEM_RSV_UPD(''); 
EXECUTE ITEM_RSV_UPD('20040413')  
SELECT * FROM T_MERCHANT_ITEM_RSV 
WHERE  RSV_DT      = '20040413'  
==============================================================================================================
  
--���� ���� ��ȸ @@@@@@@@@@@@@@@ 
SELECT * FROM T_CLOSE_TOT 
WHERE SELLING_DT BETWEEN  '20040413' AND '20040413' 
  
--��ǰ�� ���� ��ȸ @@@@@@@@@@@@@@@ 
SELECT * FROM T_CLOSE_ITEM 
WHERE SELLING_DT BETWEEN  '20040413' AND '20040413' 

--�ŷ�ó�� ���� ��ȸ @@@@@@@@@@@@@@@ 
SELECT * FROM T_CLOSE_ENTR 
WHERE SELLING_DT BETWEEN  '20040413' AND '20040413' 

--DEPART�� ���� ��ȸ @@@@@@@@@@@@@@@ 
SELECT * FROM T_CLOSE_DEPART 
WHERE SELLING_DT BETWEEN  '20040413' AND '20040413' 

--���Ÿ�� �������� ��ȸ @@@@@@@@@@@@@@@ 
SELECT * FROM T_CLOSE_BIZ 
WHERE SELLING_DT BETWEEN  '20040413' AND '20040413' 

--���Ÿ��  �ϸ������ ��ȸ @@@@@@@@@@@@@@@ 
SELECT * FROM T_CLOSE_BIZINOUT 
WHERE SELLING_DT BETWEEN  '20040413' AND '20040413'  
==============================================================================================================

<C>id=USE_YN  name='��뿩��1'  HeadAlign=center  align=center  width='50' EditStyle=Lookup 
Data='DS_store:USE_YN:USE_YN_NM'
</C> 
==============================================================================================================

������������������� 2004.04.15(��) �۾� �����������������
---> 07:50 ~ 22:00 

- ���Ѽ��� ����- ���Ѽ��� ��ǰ ��� list ���� 
- Oracle DB ����(.112�� ���� ������ archieve ���� �����ϰ� ����)  
ID: sky2727 sky27.i3tour.cc * 
==============================================================================================================

������������������� 2004.04.16(��) �۾� �����������������
---> 06:50 ~ 19:00 

- ���Ѽ��� ����
- ���Ѽ��� ��ǰ ��� list ���� 
==============================================================================================================
  
 dlog("[AccMgrBean.java]::[updateBuyingRemittance()]::[p_company_cd]-->"+getData("p_company_cd",irowHash) +"" + 
"[p_merchant_cd]-->"+ getData("p_merchant_cd",irowHash) +"[p_storeout_dt]-->"+ getData("p_storeout_dt",irowHash) +"" + 
"[p_seq_no]-->"+ getData("p_seq_no",irowHash) +"[p_magamtype]-->"+ getData("p_magamtype",irowHash) +"" + 
"[p_meip_gubun]-->"+ getData("p_meip_gubun",irowHash) +"[p_entr_no]-->"+ getData("p_entr_no",irowHash) +"" + 
"[p_settle_yn]-->"+ getData("p_settle_yn",irowHash)+"[p_settle_dt]-->"+ getData("p_settle_dt",irowHash)); 
==============================================================================================================

������������������� 2004.04.17(��) �۾� �����������������
---> 06:50 ~ 19:00 

- ���Ѽ��� ����
- ���Ѽ��� ��ǰ ��� list ���� 
String p_times_cd = (request.getParameter("p_times_cd") == null) ? "": request.getParameter("p_times_cd"); // ȸ�� 
==============================================================================================================

������������������� 2004.04.01(��) �۾� �����������������
 2004.04.18(��) �۾�  
������������������� 2004.04.01(��) �۾� ����������������� 
---> 10:10 ~ 20:30 

- ���Ѽ��� ����
- ���Ѽ��� ��ǰ ��� list ����  
==============================================================================================================

- ��¥ ��ȯ 
"TO_CHAR(TO_DATE(ED_DT) -1, 'YYYYMMDD') AS ED_DT  " + // �������� 
==============================================================================================================

- ȸ�� String 
( SELECT LTRIM(TO_CHAR(NVL(MAX(NVL(TIMES_CD,0)),0)+1, '000000') 
==============================================================================================================

- [[EJB, Bean ��� ���]  ==========> ���θ�(CCDOM) 
local ���� EJB, Bean ����  ======> 
C:\CCDOM\Ccdom\bin\com\i3shop\beans\BizStore 
CartBean.class 
C:\CCDOM\Ccdom\CcdomWeb ���� JSP���� ���� 
---------------------------------------------------------------------------------------------------------------------- 

- �׽�Ʈ ����(.52) --- 
\\210.123.133.52\i3shop   @@@@@  i3shop/i3shop520321(su/i3shop521092)  
(Bean: C:\CCDOM\Ccdom\CcdomBeans\com\i3shop\beans\BizStore ���� CartBean.java ���� ���� -->  
\\210.123.133.52\i3shop\src\bean �� �ٿ� �ֱ�) 

�͹̳� ���� ����(Ztem)==> IP: 211.233.5.52 
[root@testCcdom i3shop]# su 
[root@testCcdom i3shop]# i3shop521092 
[root@testCcdom i3shop]# cd src/bean 
[root@testCcdom bean]# ./build.sh CatBean  
\\210.123.133.52\websphere\installedApps\BizStore.ear\BizStore.war\WEB-INF\classes\com\i3shop\beans\BizStore  
�� CartBean.class �ڵ� ���� 

- ���� �� ����(.111) --- 
\\211.233.5.111\i3shop @@@@@   i3shop/i3shop1115974 (su/i3shop1116414)  
(Bean:C:\CCDOM\Ccdom\CcdomBeans\com\i3shop\beans\BizStore ���� CartBean.java ���� ���� --> 
\\210.123.133.111\i3shop\src\bean �� �ٿ� �ֱ�) 

�͹̳� ���� ����(Ztem)==> IP: 211.233.5.111 
[i3shop@iiishop_ccdom1 i3shop]$  su 
[i3shop@iiishop_ccdom1 i3shop]$  i3shop1116414 
[root@iiishop_ccdom1 src]# cd src/bean 
[root@iiishop_ccdom1 bean]#  ./build.sh CartBean 
\\210.123.133.111\websphere\installedApps\BizStore.ear\BizStore.war\WEB-INF\classes\com\i3shop\beans\BizStore  
�� CartBean.class �ڵ� ���� 

- ���� �� ����(.112) --- 
\\210.123.133.111 ����� ����(CartBean.class)�� �Ʒ� ������ �ٿ� �ֱ� 
\\210.123.133.112\websphere\installedApps\BizStore.ear\BizStore.war\WEB-INF\classes\com\i3shop\beans\BizStore  

- ���� �� ����(.113) --- 
\\210.123.133.111 ����� ����(CartBean.class)�� �Ʒ� ������ �ٿ� �ֱ� 
\\210.123.133.113\websphere\installedApps\BizStore.ear\BizStore.war\WEB-INF\classes\com\i3shop\beans\BizStore 
==============================================================================================================

������������������� 2004.04.19(��) �۾� �����������������
---> 06:30 ~ 01:00 

- ���Ѽ��� ����
- ���Ѽ��� ���� ���� �� ���� ��� 
---------------------------------------------------------------------------------------------------------------------- 

-- ���� ���� ���� ��ȸ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
SELECT  AA.ITEM_CD, AA.TIMES_CD, AA.COMPANY_CD, AA.STORE_CD, AA.CATEGORY_CD,  
AA.LIMIT_QTY,            --���� ���� 
DECODE(BB.BUYED_QTY, '', 0, BB.BUYED_QTY) AS BUYED_QTY, --������ ������ �� 
(NVL(AA.LIMIT_QTY,0) - NVL(BB.BUYED_QTY,0)) AS POS_QTY --���� ���� ������ ��(���� ���� - ������ ������ ��) 
FROM  (SELECT B.ITEM_CD, B.TIMES_CD AS TIMES_CD, B.COMPANY_CD, B.STORE_CD, B.CATEGORY_CD, 
B.MERCHANT_CD, 
NVL(MAX(B.SALE_MAX_QTY),0) AS LIMIT_QTY, 0AS BUYED_QTY,  
0 AS POS_QTY  
FROM  T_BuyCount A, T_BuyLimitCount B, T_BuyTimes C 
WHERE B.ITEM_CD = A.ITEM_CD(+)  
AND B.TIMES_CD = C.TIMES_CD 
AND C.ST_DT <= TO_CHAR(SYSDATE, 'YYYYMMDD') 
AND C.ED_DT >= TO_CHAR(SYSDATE, 'YYYYMMDD')   
AND A.MNO(+) = '92201' 
GROUP BY B.ITEM_CD, B.TIMES_CD, A.MNO, B.COMPANY_CD, B.STORE_CD,  
 B.CATEGORY_CD, B.MERCHANT_CD) AA,  
(SELECT  B2.ITEM_CD, B2.TIMES_CD, B2.COMPANY_CD, B2.STORE_CD, B2.CATEGORY_CD, B2.MERCHANT_CD, 
 NVL(MAX(B2.SALE_MAX_QTY),0) AS LIMIT_QTY, NVL(SUM(A2.QTY),0) AS BUYED_QTY, --������ ������ �� 
(NVL(MAX(B2.SALE_MAX_QTY),0) - NVL(SUM(A2.QTY),0))AS POS_QTY      --���� ���� ������ �� 
FROM  T_BuyCount A2, T_BuyLimitCount B2, T_BuyTimes C2 
WHERE B2.ITEM_CD(+) = A2.ITEM_CD 
AND B2.TIMES_CD = C2.TIMES_CD 
AND C2.ST_DT <= TO_CHAR(SYSDATE, 'YYYYMMDD') 
AND C2.ED_DT >= TO_CHAR(SYSDATE, 'YYYYMMDD') 
AND A2.TIMES_CD = '000006' --ȸ�� 
AND A2.MNO(+) = '92201' 
GROUP BY B2.ITEM_CD, B2.TIMES_CD, A2.MNO, B2.COMPANY_CD, B2.STORE_CD,  
 B2.CATEGORY_CD, B2.MERCHANT_CD) BB  
WHERE AA.ITEM_CD = BB.ITEM_CD(+) 
==============================================================================================================

������������������� 2004.04.20(ȭ) �۾� �����������������
---> 07:40 ~ 23:00 

- Support ����
���ް���, �ΰ��� �߰��� ��(����: �հ�ݾ�) 
��ǰ�� ���ް���(�ܰ�) ����  �ΰ���  �հ�ݾ�(�ݾ�) �Ա� 
------------------------------------------------------------------------------------------------------------------------------

- ��ü���� ���̱� ��� 
�� �հ�(TOTAL ATM) �ݾ��� ���̱� ��� 
Excel�� ����Ÿ ���̱� 
�������� 
��� ���� �Աݿ���(Y,N) 
------------------------------------------------------------------------------------------------------------------------------

- �ӿ���[Ace inc] B0000286/4166 ��â��[SK(��)] B0000587/4762  
==============================================================================================================
 
- ���ڸ��޾Ƽ� 3�ڸ����� ,�� �ִ� �Լ� 
function ChangeMoney(str) //���ڸ��޾Ƽ� 3�ڸ����� ,�� �ִ� �Լ� 
{ 
   var Money; 
   Money = "";    
   //alert("[ChangeMoney()]:[str]"+ str);  
   while(parseInt(str) >= 1000) 
   { 
      if((parseInt(str)/1000) > 0) 
      { 
         if((parseInt(str) % 1000) == 0 ) 
         { 
            Money = "," + parseInt(str) % 1000 + "00" + Money; 
         } 
         else 
         { 
            if((parseInt(str) % 1000) > 99 ) 
               Money = "," + parseInt(str) % 1000 + Money; 
            else if((parseInt(str) % 1000) > 9 ) 
               Money = ",0" + parseInt(str) % 1000 + Money; 
            else 
               Money = ",00" + parseInt(str) % 1000 + Money; 
         } 
      } 
      str = parseInt(str)/1000; 
   }    
   //alert("[ChangeMoney()]:[str_2]"+ str);  
   Money = parseInt(str) + Money;  
   return Money; 
} 
==============================================================================================================
  
- �Ļ� ���(�Ļ��ֹ�) 
������: 745-5565 û��: 745-6055 
���Ϲ���: 751-5404 �̵�����: 755-7524 ���ﰢ: 753-3988 ��õ��: 752-5100 
==============================================================================================================

������������������� 2004.04.21(��) �۾� �����������������
---> 06:50 ~ 23:00 

- Support ����
- ���¾�ü ������� ���� 
1. DB ����(T_MAGAM_MEIP ���� ����) 
2. ������� �鼼, ����, ���հ� ���ϱ� 
��ü���� ���̱� ��� 
�� �հ�(TOTAL ATM) �ݾ��� ���̱� ��� 
Excel�� ����Ÿ ���̱� 
�������� 
��� ���� �Աݿ���(Y,N) 
----------------------------------------------------------------------------------------------------------------- 

http://210.123.133.31/Excel_test/viewcell.jsp 
http://210.123.133.31/Excel_test/test.jsp 

- �ӿ���[Ace inc] B0000286/4166 ��â��[SK(��)] B0000587/4762  
==============================================================================================================
 
- �ѱ� ���� ���� 
������->Ű����->�Է·�����->����->Ű���� ���� ���ǹ迭 �Է±⸦ �����ϼ��� 
ms-ime98�̳� 2000�ΰ��� �����Ͻø� �ɰ̴ϴ�. 
==============================================================================================================

������������������� 2004.04.22(��) �۾� �����������������
---> 06:50 ~ 23:00 

- Support ����
- ������� ����
�ӿ���[Ace inc] B0000286/4166 ��â��[SK(��)] B0000587/4762 
������[����Ŵ����] 31666/1666 ���ѿ�[�߿��޸���] B0000511/3532 
----------------------------------------------------------------------------------------------------------------- 

- Excel ���Ϸ� ����Ÿ ���� 
<%@ page language="java" contentType="application/vnd.ms-excel;charset=euc-kr" %> 

<% 
response.setHeader("Content-Disposition", "attachment; filename=Settle_Accounts.xls"); 
response.setHeader("Content-Description", "JSP Generated Data"); 
%> 

<%@page import="javax.naming.*, com.i3shop.ejb.BizMgr.*, java.util.Hashtable"%> 
<%@page import="com.i3shop.ejb.BizMgr.*, java.math.*"%>  
<%@page import="com.i3shop.util.BizMgr.CodeConstants" %> 
<%@include file="/common/property.jsp"%> 
==============================================================================================================

- ���ο�������/��������/�ŷ�ó�� ���Գ���(�������� ��) 
http://int.i3shop.com/BizMgr/ReportMgr/entrReportP.jsp  
==============================================================================================================

- url ��ũ 
go_url ="ToExcel.jsp?ToExcel=1&p_merchant_cd="+ p_merchant_cd +"&p_store_cd="+ p_store_cd +" "+ 
"&p_storeout_end_dt_from="+ p_storeout_end_dt_from +"&p_storeout_end_dt_to="+ p_storeout_end_dt_to+" "+ 
"&storeout_end_dt_from="+ storeout_end_dt_from +"&storeout_end_dt_to="+ storeout_end_dt_to+" "+ 
"&search_mode="+ search_mode +"&p_settle_yn="+ p_settle_yn; 
System.out.println("[ItemWebMgrBean.java]:[getStoreList())]:[findCond]"+ findCond); 
dlog( "[SaleMgrBean.java]::[getOrderDtlList()]::[SQL]=====>\n"+ SQL); 
==============================================================================================================

---������ ��ȸ(ȸ��� �߰�) @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 
SELECT  A.ITEM_CD, B.ITEM_NM, 
B.ENTR_NO, C.ENTR_NM 
--select SUM(*) 
FROM T_DAY_SUBUL A, T_MAGAM_MEIP B, T_ENTERPRISE C 
WHERE B.COMPANY_CD = '01' 
 AND A.ITEM_CD =  B.ITEM_CD 
 AND B.ENTR_NO =  C.ENTR_NO 
 AND A.MERCHANT_CD = '9001'   
 AND A.SUBUL_DATE >= '20040101' 
 AND A.SUBUL_DATE <= '20040331' 
GROUP BY A.ITEM_CD, B.ITEM_NM, B.ENTR_NO, C.ENTR_NM 
----------------------------------------------------------------------------------------------------------------- 

--������ ��ȸ @@@@@@@ 
SELECT  B.ENTR_NO, B.ITEM_NM 
--select SUM(*) 
FROM T_MAGAM_MEIP B 
WHERE B.COMPANY_CD = '01'  
 AND B.MERCHANT_CD = '9001'   
 AND B.MAGAM_DATE >= '20040101' 
 AND B.MAGAM_DATE <= '20040331' 
 AND B.ITEM_CD =  '00000550' 
----------------------------------------------------------------------------------------------------------------- 

--������ ��ȸ @@@@@@@ 
SELECT  * 
--select SUM(*) 
FROM T_DAY_SUBUL A 
WHERE A.COMPANY_CD = '01'  
 AND A.MERCHANT_CD = '9001'   
 AND A.SUBUL_DATE >= '20040101' 
 AND A.SUBUL_DATE <= '20040331' 
 AND A.ITEM_CD =  '00000550' 
--================================================================================================================  
  
������������������� 2004.04.23(��) �۾� �����������������
---> 07:10 ~ 22:00 

- Support ����
- ������� ���� 
- Excel ���Ϸ� ����Ÿ ���� ���� 
----------------------------------------------------------------------------------------------------------------- 

- ���θ� �����[(��)���ؾ�Ŭ��] B0000404/4926 
�ӿ���[Ace inc] B0000286/4166 
������[����Ŵ����] 31666/1666 
��â��[SK(��)] B0000587/4762 
������[�������] B0000046/4888 
���� ���ѿ�[�߿��޸���] B0000511/3532 
��Ʈ �����[(��)���ؾ�Ŭ��] B0000404/4926   
--================================================================================================================

������������������� 2004.04.24(��) �۾� �����������������
---> 07:20 ~ 18:30 

- Support ����
- ������� ���� 
----------------------------------------------------------------------------------------------------------------- 

- ���θ� �����[(��)���ؾ�Ŭ��] B0000404/4926 
�ӿ���[Ace inc] B0000286/4166 
������[����Ŵ����] 31666/1666 
��â��[SK(��)] B0000587/4762 
������[�������] B0000046/4888 
���� ���ѿ�[�߿��޸���] B0000511/3532 
��Ʈ �����[(��)���ؾ�Ŭ��] B0000404/4926 
==============================================================================================================

��ȹ����- ����������(V13010000)  =========> S063:��ȹ���� 
��ȹ���忡 ������ ����: MD ī�װ� ��ǰ 
��ȹ����- ����������(V13010000)   00146155 �ݽſ� �ѹ� �Կ��� 7����Ʈ 
���� ���õǾ��µ�  �̹����� �ȳ��ɴϴ�. 

http://test.mart.cc/display/event/com/mainP.jsp?p_store_cd=S063&p_category_cd=V13010100&p_display_cd=51 
==============================================================================================================

- ��Ư������ - ��Ȱ/�ֹ�(T01010106)  =========> S064:��Ư������  
õ���� *  
http://test.mart.cc/display/big/bigctg.jsp?p_store_cd=S064&p_category_cd=T01000000&p_display_cd=41 
==============================================================================================================

������������������� 2004.04.26(��) �۾� �����������������
---> 07:10 ~ 23:00 

- ���� ����
�ֹ� ���� ��ȸ(/SaleMgr/WebOrderMgr/orderFullB.jsp) 
- �ֹ� ��ǰ ����(/SaleMgr/WebOrderMgr/orderDtlB.jsp)  
// inputHash.put( "p_merchant_cd", (String)sessHash.get("MERCHANT_CD") ); ===> ���ڵ� ����(��� �� ����� ��ȸ ����) 
==============================================================================================================
  
- �ְ����� ����  MIS_weekleyReport 
/BizMgr/GitaMgr/WeekleyReport/WeekleyReportP.jsp 
==============================================================================================================

- ��� ���� URL ���� 
�ŷ�ó ����  ��꼭���� - /BizMgr/Remittance/EntrTaxAccountP.jsp  
�ŷ�ó �۱� ����(��������) - /BizMgr/Remittance/EntrRemittanceDailyP.jsp   
�ŷ�ó �۱� ���� -/BizMgr/Remittance/EntrRemittanceP.jsp  
==============================================================================================================
 
- �԰� ���� ��ǰ ��ȸ
http://int.i3shop.com/BizMgr/DeliveryMgr/StoreIn/storeinPoP.jsp 
��Ʈ- ������(jys142/96143142) 
���� - ������ �븮(euijae1970/700420) �¶��� - ���ȣ(sunkwh/sun9434) 
��������/�԰����/�԰� ���� ��ǰ ��ȸ  
- PO_SHEET_SEND_YN ���ּ����ۿ���(Y) 
==============================================================================================================

JNDI ��� ��üȣ���� �����߽��ϴ�. 
javax.naming.NameNotFoundException: BizMgr/BuyingMgr not found in IntEar 

- �ذ�å 
1. /Int/IntEjb/BuyingMgr �ҽ� ������ META-INF ���� Ȯ�� 
C:\i3shop\Int\IntEjb\BuyingMgr\META-INF\ejb-jar.xml ���� ���� 
/Int/IntEjb/BuyingMgr/META-INF/orion-ejb-jar.xml ���� ���� 
(location="BizMgr/BuyingMtgr ==> location="BizMgr/BuyingMgr �� ����) 
----------------------------------------------------------------------------------------------------------------- 
 <!-- Session Beans --> 
<session-deployment name="BuyingMgr"  location="BizMgr/BuyingMtgr" > 
==============================================================================================================
2. C:\orion2\application-deployments\IntEar IntWeb������ �����ϰ� ��� ���� 
3. ��� �ٽ� ����(L)   
==============================================================================================================

������������������� 2004.04.27(ȭ) �۾� ����������������� 
---> 07:10 ~ 19:00 

- ���� ����
- �ְ����� ���� ����(MIS_weekleyReport) 
1. �ְ����� ���� TB ����   
/BizMgr/GitaMgr/WeekleyReport/WeekleyReportP.jsp 
GitaMgr\WeekleyReport  
==============================================================================================================

 2. �԰� ���� ��ǰ ��ȸ(http://int.i3shop.com/BizMgr/DeliveryMgr/StoreIn/storeinPoP.jsp) 
 AND APPROVER_ID IS NOT NULL   --������ �� �͸� ��ȸ �������� ���� 
----------------------------------------------------------------------------------------------------------------- 

<param name="RowHeight" value=20> 
<C>id=BUSINESS_TP_NM name='�������и�'  suppress=2</C> 
<C>id=B_GUBUN_NM  name='����'     suppress=1 </C> 
==============================================================================================================

System.out.println("[storeinB.jsp]::[p_store_cd]"+ p_store_cd); 
dlog("[AccMgrBean.java]::[updateBuyingRemittance()]::[p_company_cd]-->"+ p_company_cd +"" + 
   "[p_merchant_cd]-->"+ p_merchant_cd +"[p_from_date]-->"+ p_from_date +"" + 
   "[p_to_date]-->"+ p_to_date +"[p_store_cd_���Ա���]-->"+ p_store_cd +"" + 
   "[p_entr_no]-->"+ p_entr_no +"[p_entr_no]-->"+p_entr_no +"" + 
   "[p_tax_yn_�ΰ���]-->"+ p_tax_yn +"[p_bill_collect_yn]-->"+ p_bill_collect_yn); 
==============================================================================================================
  
������������������� 2004.04.28(��) �۾� �����������������
---> 06:30 ~ 23:30 

- ���� ����
- �ְ����� ���� ����(MIS_weekleyReport)  
�ְ����� ���� DB �ۼ� 
==============================================================================================================

- Grid �ɼ� 
<Param Name="DataID"        value="DS_item">  
<Param Name="TitleHeight",  value="18"> 
<Param Name="ViewHeader" value="true"> 
<Param Name="HeadLineColor" value="red"> 
<Param Name="RowHeight" value="50">  
<Param Name="AllshowEdit"  value="true">   
<Param Name="Editable"  value="true"> 
<Param Name="ColSizing",  value="true"> 
<Param Name="Fillarea"  value="true"> 
==============================================================================================================

C:\i3shop\i3shop_env\daco.env ���� 
--------------------------------------------------------------------------------------------------------- 
#��Ÿ 
GitaMgrconntype=pool 
GitaMgrpoolname=jdbc/i3shop_Oracle_DBPool 
==============================================================================================================
  
editForm.p_limit_qty.value  = editForm.em_p_limit_qty.Text;   //���Ѽ��� 
//alert("[p_limit_qty]"+ editForm.p_limit_qty.value); 
if( editForm.p_limit_qty.value == "" ) { 
alert("���Ѽ����� �Է��ϼ���!"); 
editForm.em_p_limit_qty.focus(); 
return false; 
} 

 response.sendRedirect("purchase.jsp?m_num=<%=m_num%>&imsi_pcount=<%=imsi_pcount%>");  
 String p_times_cd = (request.getParameter("p_times_cd") == null) ? "": request.getParameter("p_times_cd"); // ȸ�� 
==============================================================================================================

- MS Office ������Ʈ 
http://office.microsoft.com/home/default.aspx 
==============================================================================================================

<script language="javascript"  for="tr_saveEntrTaxAccountMS" event="OnSuccess"> 
	//alert("[ EntrTaxAccountP.jsp]::[OnSuccess]::[tr_saveEntrTaxAccountMS]"); 
	btn_search(2); // ���忡 �����ϸ� ����Grid �������� 
	</script> 

	<script language="javascript" for="tr_saveEntrTaxAccountMS" event="OnFail"> 
	btn_search(2); 
</script> 
==============================================================================================================

<script>  
	alert("������ ������ϴ�."); 
	parent.location.replace("/login/login.jsp"); 
	</script> 

	<script language="JavaScript">  
	alert("������ ������ϴ�."); 
	parent.window.document.location.href="/login/login.jsp";   
	</script> 
==============================================================================================================
  
������������������� 2004.04.29(��) �۾� �����������������
---> 07:20 ~ 23:00 

- ���� ����
- �ְ����� ���� ����(MIS_weekleyReport)  
�ְ����� ���� 
BIZ_weekleyReport 
/BizMgr/GitaMgr/WeekleyReport/WeekleyReportP.jsp 
---------------------------------------------------------------------------------------------------------------------- 

- �ְ����� ����_���� 
BIZ_weekleyReport_Team 
/BizMgr/GitaMgr/WeekleyReport_Team/WeekleyReport_TeamP.jsp  
==============================================================================================================

- ��������/�԰����/�԰� ���� ��ǰ ��ȸ 
(http://210.123.133.31:5001/BizMgr/DeliveryMgr/StoreIn/storeinPoP.jsp) 
- SQL += "\n  AND APPROVER_ID IS NOT NULL"; //���� ������ �� �͸� 
---------------------------------------------------------------------------------------------------------------------- 

- �ֹ�����/���� ���ΰ���/���� ���� ���� 
(http://int.i3shop.com/BizMgr/BuyingMgr/PlacingOrderMgr/poAppP.jsp) 
============================================================================================================== 

������������������� 2004.04.30(��) �۾� �����������������
---> 06:50 ~ 20:30 

- ���� ����
- �ְ����� ���� ����(MIS_weekleyReport)   
OZ ��� 
============================================================================================================== 

- ���¾�ü/�������ι��ֳ��� 
(http://support.i3shop.com/VendorMgr/PoState/storeinP.jsp) 
- ���ΰź� ���� 
============================================================================================================== 

- ���θ� �����[(��)���ؾ�Ŭ��] B0000404/4926 
�ӿ���[Ace inc] B0000286/4166 
������[����Ŵ����] 31666/1666 
��â��[SK(��)] B0000587/4762 
������[�������] B0000046/4888 
���� ���ѿ�[�߿��޸���] B0000511/3532 
��Ʈ �����[(��)���ؾ�Ŭ��] B0000404/4926  
==============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������