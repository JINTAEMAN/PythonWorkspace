

�����������������������������������������������������������
+---------------------------------------------// Memo(2004.03) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2004.03.01(��) �۾� �������������������
---> 08:00 ~ 18:00

- ȸ�� Test
- �ϰ�ǥ �׽�Ʈ 
==============================================================================================================

������������������� 2004.03.02(ȭ) �۾� �����������������
---> 06:50 ~ 23:00 

- ȸ�� Test
- �ϰ�ǥ �׽�Ʈ 
- ���� ���� ��ǰ�󼼺���: �Ѱ���� �����ֱ� 
==============================================================================================================

������������������� 2004.03.03(��) �۾� �����������������
---> 07:00 ~ 23:00 

- ȸ�� ȸ��
- ȸ����, ���־�ü ��ü Review 
- ���������� ����, ��ǥ ��� ���� 
- �ϰ�ǥ ��, �뺯 ��ġ ����ġ 
- ���� ȸ�踦 �����ϰ� Ÿ �ý����� �����Ͽ� ����ϱ�� ���� 
==============================================================================================================

- �������� ���
- EJB ��� ��� 
210.123.133.56 ���� @@@@@@@@@@@  ==> ���� ���⼭ AccMgr.jar ������ ���� �� 211.233.5.108�� �ٿ� ���� 
----------------------------------------------------------------------------------------------------------------------------

1. C:\i3shop\Int\IntEjb\AccMgr\com\i3shop\ejb\MisMgr\AccMgrBean.java ����   
2. \\210.123.133.56\i3shop\src\ejb\AccMgrEJB ���ÿ��� �Ʒ� 3�� ������ �����Ͽ� �ٿ� �ֱ��� 
AccMgr.java AccMgrBean.java AccMgrHome.java  
3. �͹̳� ���� ����(Ztem) 
IP: 210.123.133.56 i3shop/dacosystem  
4. ������ �ϱ� 
[i3shop@newint i3shop]$  su 
[i3shop@newint i3shop]$  i3shop566414 
[i3shop@newint i3shop]# cd src/ejb/AccMgrEJB 
[i3shop@newint i3shop]# ./build.sh AccMgr 
.jar ���� ������(---> \\210.123.133.56\i3shop\component\ejb\AccMgr.jar ���Ϸ� ����� ��) 
\\211.233.5.108\websphere\installedApps\i3shop.ear ����(AccMgr.jar) �ٿ� �ֱ�  
5. .108���� Websphere ���� �� �����
6. ����� --> �͹̳� ���� ����(Ztem) 
[i3shop@newint i3shop i3shop]$  cd /opt/WebSphere/AppServer/logs 
[i3shop@newint i3shop logs]$ tail -f Default_Server_stdout.log 
==============================================================================================================

- local ���� Bean ���� 
C:\CCDOM\Ccdom\bin\com\i3shop\beans\BizStore 
CartBean.class 
C:\CCDOM\Ccdom\CcdomWeb ���� JSP������ 
----------------------------------------------------------------------------------------------------------------------------

\\210.123.133.52\i3shop �� EJB, Bean ��� @@@@@  i3shop / i3shop520321 
(Bean: C:\CCDOM\Ccdom\bin\com\i3shop\beans\BizStore���� ����)  
(\\210.123.133.52\i3shop\src\bean   build.cmd �����...)  
\\210.123.133.52\websphere\installedApps\BizStore.ear\BizStore.war\WEB-INF\classes\com\i3shop\beans\BizStore 

- ���� �� ���� --- 
\\211.233.5.111\i3shop @@@@@   i3shop/i3shop1115974 (su i3shop1116414) 
(Bean: \\211.233.5.111\i3shop\src\bean   build.cmd �����.... ������ �ٿ� CartBean.java ����) 

- ���� �� ���� --- 
\\211.233.5.112\i3shop @@@@@  i3shop/i3shop1125974 (su i3shop1126414) 
\\211.233.5.111\websphere\installedApps\BizStore.ear\BizStore.war\WEB-INF\classes\com\i3shop\beans\BizStore 
Bean.class�� �����Ͽ� �Ʒ��� �ٿ� �ֱ� �� 
\\211.233.5.112\websphere\installedApps\BizStore.ear\BizStore.war\WEB-INF\classes\com\i3shop\beans\BizStore 

- ���� �� ���� --- 
\\211.233.5.113\i3shop @@@@@   i3shop/i3shop1135974(su i3shop1136414) 
\\211.233.5.111\websphere\installedApps\BizStore.ear\BizStore.war\WEB-INF\classes\com\i3shop\beans\BizStore 
Bean.class�� �����Ͽ� �Ʒ��� �ٿ� �ֱ� �� 
\\211.233.5.113\websphere\installedApps\BizStore.ear\BizStore.war\WEB-INF\classes\com\i3shop\beans\BizStore 
==============================================================================================================

- WebSphere 4.06 Start / Stop 
./apachectl stop 
cd /opt/WebSphere/AppServer/bin  
./adminclient.sh     - Ŭ���̾�Ʈ ���� 
- WebSphere ����Ʈ ���� ���� -> ���� 
./apachectl start 
==============================================================================================================

#---  ���θ� Test���� TNS ���� DB ȯ��( iiishop/iiishop): I3SHOPDB   
#---  ����(���θ�) ��DB���� TNS ���� DB ȯ��( iiishop / iiishop): IIISHOP  
==============================================================================================================

- �͹̳� ���� ����(Ztem) 
IP: 210.123.133.56 @@@@@   i3shopi3shop/dacosystem 
-------------------------------------------------------------------------------------------------- 

cd /opt/WebSphere/AppServer/logs 
[i3shop@newint logs]$ tail -f Default_Server_stdout.log 
==============================================================================================================
\\210.123.133.52\i3shop\src\bean\ ���� ������ �ٿ� CartBean.java ���� 
-------------------------------------------------------------------------------------------------- 
#!/bin/sh 

####################################################################### 
# 
# ���α׷�����  :       Build(shell) 
# ���α׷���    :       build.sh 
# Version               :       1.0 
# �ۼ���                :       2003/09/5 
# �ۼ���                :       ������ 
# ������                : 
# ������                : 
# ����                  :       �ֹ����� bean�� �������Ѵ�. 
# 
# ������Ʈ��    :       i3shop 
# 
####################################################################### 

PHOME=${PHOME:-"/home/i3shop"} 
JAVA_HOME=${JAVA_HOME:-"/opt/WebSphere/AppServer/java"} 
APP_HOME=${APP_HOME:-"/opt/WebSphere/AppServer/installedApps/BizStore.ear/BizStore.war/WEB-INF/classes"} 
WASLIB=${WASLIB:-"/opt/WebSphere/AppServer/lib"} 
CPATH=.:$PHOME/lib/dev_stand.jar:$PHOME/component/class:$WASLIB/app/jcert.jar:$WASLIB/app/jnet.jar:
$WASLIB/app/AclMgr.jar:$WASLIB/app/jsse.jar:$WASLIB/app/xerces_1_2.jar:$WASLIB/app/log4j.jar:$WASLIB/app/trs.jar:
$WASLIB/j2ee.jar:$APP_HOME 
PATH=$JAVA_HOME/bin:/pt/WebSphere/AppServer/bin:$PATH 
javac -d /opt/WebSphere/AppServer/installedApps/BizStore.ear/BizStore.war/WEB-INF/classes  -classpath $CPATH CartBean.java
==============================================================================================================

[i3shop@testCcdom i3shop]$ 
Red Hat Linux release 7.3 (Valhalla) 
Kernel 2.4.18-3 on an i686 
login: i3shop 
Password: 
Last login: Wed Mar  3 15:02:43 from 210.123.133.121 
[i3shop@testCcdom i3shop]$ cd src 
[i3shop@testCcdom src]$ ls 
bean  ejb 
[i3shop@testCcdom src]$ cd bean/ 
[i3shop@testCcdom bean]$ ls  
[i3shop@testCcdom bean]$ sh build.sh 
==============================================================================================================
  
- �������ż��� ���� ���� 
/order/rnf/checkRnFSes.jsp --> �Ѱ���� ��ȸ(�ٷα���) 
/cart/cartPut.jsp --> �Ѱ���� ��ȸ(��ٱ���) 
/order/orderPut_3.jsp --> �Ѱ���� ����(�ֹ��ϱ�) 
/display/com/itemDetaiInfoP.jsp -->��ǰ�� ���� 

/Ccdom/CcdomBeans/com/i3shop/beans/BizStore/CartBean.java
==============================================================================================================

������������������� 2004.03.04(��) �۾� �����������������
---> 07:00 ~ 23:00 

- ���θ� ����
--// ��ǰ ��� 
INSERT INTO T_BuyLimitCount(ITEM_CD, TIMES_CD, SALE_MAX_QTY, COMPANY_CD, STORE_CD, 
       CATEGORY_CD, MERCHANT_CD, REG_DT)   
SELECT ITEM_CD, '000002', DISPLAY_SEQ, COMPANY_CD, STORE_CD, 
    CATEGORY_CD, '0001', SYSDATE 
FROM T_CATEGORY_ITEM  
WHERE STORE_CD = 'S065'  AND CATEGORY_CD = 'U02010101' AND END_DT IS NULL  
--------------------------------------------------------------------------------------------------------------------------- 

-- ��ǰ ��� ��ȸ     
SELECT * FROM T_CATEGORY_ITEM WHERE STORE_CD = 'S065' AND CATEGORY_CD = 'U02010101' AND END_DT IS NULL  
--// '000002' ��ǰ ��� 
==============================================================================================================

������������������� 2004.03.05(��) �۾� �����������������
---> 07:30 ~ 22:00 

- ���θ� ���� ����
- ų���� �������� ��ǰ '000002'ȸ�� ���(04.03.05 ~ 03.18) 
--------------------------------------------------------------------------------------------------------------------------- 

-- ���� ���� ���� ��ȸ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
SELECT  B.ITEM_CD, B.TIMES_CD, B.COMPANY_CD, B.STORE_CD, B.CATEGORY_CD, B.MERCHANT_CD, 
 NVL(MAX(B.SALE_MAX_QTY),0) LIMIT_QTY, NVL(SUM(A.QTY),0) BUYED_QTY, -- (�������� ����, ���� ������ ������ ��) 
(NVL(MAX(B.SALE_MAX_QTY),0) - NVL(SUM(A.QTY),0))POS_QTY -- ���� ���� ������ �� 
FROM  T_BuyCount A, T_BuyLimitCount B, T_BuyTimes C 
WHERE B.ITEM_CD = A.ITEM_CD(+) 
  AND B.TIMES_CD = C.TIMES_CD(+)  
  AND C.ST_DT  <= SYSDATE 
  AND C.ED_DT  >= SYSDATE 
  --AND B.TIMES_CD = '000002' 
  AND A.MNO(+) = '92201'   
GROUP BY B.ITEM_CD, B.TIMES_CD, A.MNO, B.COMPANY_CD, B.STORE_CD, B.CATEGORY_CD, B.MERCHANT_CD 
==============================================================================================================

-- ��ǰ �ڵ� ��ȸ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
SELECT ITEM_CD, A.TIMES_CD, STORE_CD, CATEGORY_CD 
FROM T_BuyLimitCount A, T_BuyTimes C  
WHERE A.TIMES_CD = C.TIMES_CD(+) 
AND C.ST_DT  <= SYSDATE 
AND C.ED_DT  >= SYSDATE 
==============================================================================================================

�������ʴϴ�, ���Ӵ�, �ٸ��� �ƴ϶�  ���� ��������� 
�ȿ� ų���ۿ��� ���������� �ϰ� �ִµ���, �Ʒ� ���� 
���� �ֹ��� ���ߴµ� �̹� 2�� �ֹ��Ѱ� ó�� ���� -2���� 
�ֹ��� �ȵȴٰ� �Ǿ� �޸�帳�ϴ�~  
������   ���̵�:  donkas1   ���: jsc4144  
����� ���忡  ��õ�� �ֹ������Ѱ͵� ����, 2�־ȿ� �ֹ������� ���µ� �ֹ��ϼ̴���ó�� �����ҷ��� ���� -2���� �ֹ��Ұ��ϴٴ� 
��������  
==============================================================================================================

������������������� 2004.03.06(��) �۾� �����������������
---> 06:50 ~ 18:00 

- ȸ�� ����
- ȸ�� ���� �ߴ� ���� 
1. ���� 
A. ���α׷� ���� 
B. ������ ����  
- �������� ���õ� ���� 
�䱸�� ������ ��Ȯ�ϰ� �� ��Ŵ 
�������� ȸ�� �ý��ۿ� ���� ��� ���� 
- ȸ�� ���� ���� 
ȸ�������� ���ý� ���� ���� ���� ���� 
C. ��Ÿ 
��Ⱓ ���߿� ���� ��ȣ �ŷ� ���� �Ῡ 
������ C/S ȸ�� ���α׷����� �������� ��ȯ ��� ���� 
�������� ���� ���� ���� 
2. �ذ�å 
A. Active X ��� ERP�� ���� 
==============================================================================================================

- Win32/MyDoom.worm.34568  
 TCP 1080�� ��Ʈ�� ����д�.  
- Ư���Ͽ� ����ũ�μ���Ʈ��� RIAA�� �����Ѵ�.  
- ���� ���� ���α׷�, Windows �۾� ������, ������Ʈ�� ������ ���� �ڵ� ����ȴ�.  
==============================================================================================================

http://www.hauri.co.kr/virus/virusinfo/virussearch_read.html?code=WOW3000438&start=1&before_page=/virus/index.html
&orderby=&virus_name=agobot&summary_symptom1=&summary_symptom2=&category=&active_month=&active_day=
&active_week=&link_field=&link_method=
2003�� 9�� 9�� �ѱ����� �߰ߵǾ�����, �ܱ����� ���� �ñ⿡ �߰� �Ǿ���.  
==============================================================================================================

- [���� ����ϴ� Ȯ�� ��� �� ������ ���� �ٺ� ��å]
Worm.Win32.Agobot�� ������ ������ �����ϸ�, �� ���� �����ڴ� ����ؼ� ������ �����Ͽ� ������Ű�� �ִ�.  
�׷��Ƿ� ����ؼ� ������ Agobot ������ �������� ��������, �� ���� ����ϴ� Ȯ�� ��θ� �ٺ������� �����ϸ�, ���� �������� 
���� �� �ִ�. ������ �� ���� ����ϴ� Ȯ�� ����̴�.  

- IPC$(������) �н����� �����(�����ϱ� ���� �н������ ���� ����)  
- RPC DCOM �����(MS03-026)  
- RPC Locator �����(MS03-001)  
- IIS ����ڸ� �ش� WebDAV �����(MS03-007)  

*���� Ȯ�� ������ �����Ҷ��� �ý����� ������ �ɸ� �� ������, Ư�� TCP 9900, 135, 445  
�� ����Ͽ� Ȯ��Ǵµ�, �� ��Ʈ���� Ʈ������ ����� ������ �� �ִ�.  
==============================================================================================================

- [���� �� ����]  
1.���� �����Ǹ� ������ �ý��� ������ ������ ���ϸ����� ���� ���纻�� �����Ѵ�.  
- scvhost.exe (201,216 ����Ʈ) 
- ���̷κ� �������� 2003-09-10.01 �������� ���� �� ġ��(�� ���� ����) �����ϴ�.  
==============================================================================================================
  
������������������� 2004.03.08(��) �۾� �����������������
---> 07:00 ~ 19:00 

- �������� �м�
- ��ǰ����  
==============================================================================================================

������������������� 2004.03.09(ȭ) �۾� ����������������� 
---> 07:10 ~ 19:00 

- �������� �м�
- ��ǰ����  
/SaleMgr/com/i3shop/ejb/BizMgr/SaleMgrBean.java ���� @@@@@@@@	// ��ǰ�������� �߰� 
------------------------------------------------------------------------------------------------------------------------------ 

public Hashtable update(Hashtable inputHash) throws Err {
	SQL +=  "  RETURNACCEPT_DT = sysdate WHERE " +   // ��ǰ�������� �߰� 
}  
==============================================================================================================

- �������ý��� ȭ�� ���� 
���Գ�����ȸ, �������, ���ݰ�꼭 ���� ����, �۱ݰ��� 
http://int.i3shop.com/login/login.jsp(210.123.133.108) admin/bukwin2k 
==> jdbc:oracle:thin:@211.233.5.110:1521:iiishop IIISHOP/IIISHOP 
http://210.123.133.56 admin/admin 
==> jdbc:oracle:thin:@211.233.5.110:1521:i3shop iiishop/i3shop 
==============================================================================================================

SELECT * FROM T_MEIP_JUNGSAN 
SELECT * FROM T_STOREIN -- �԰����� 
SELECT * FROM T_STOREIN_DTL -- �԰��ǰ���� 
SELECT * FROM T_STOREIN_RI -- �԰��ǰ���� 
SELECT * FROM T_STOREIN_RI_DTL -- �԰��ǰ��ǰ����  
==============================================================================================================

������������������� 2004.03.10(��) �۾� �����������������
---> 07:30 ~ 23:00 

- �������� �м�
- ��ǰ����  
dlog( "[SaleMgrBean.java]::[setOrderStsProdure()]=====>\n"+ SQL ); 
dlog( "[SaleMgrBean.java]::[getReturnOrderList()]:: [p_order_dt]"+ p_order_dt ); 
==============================================================================================================

-- ��ǰ �������� ��� 
String p_order_sts  = (String)inputHash.get("p_order_sts"); 
if( p_order_sts.equals("22")) {  // �ֹ����°� ��ǰ���� �̸�(��ǰ �������� ���) 
	SQL += "  , RETURNACCEPT_DT =  TO_CHAR ( SYSDATE , 'YYYYMMDD')  WHERE   "; 
}  else { 
	SQL += " WHERE  "; 
} 
SQL +=  "   COMPANY_CD = ? AND MERCHANT_CD = ? AND ORDER_DT = ? AND ORDER_NO = ?  "; 
==============================================================================================================

-- ��ǰȸ������ ��� 
if( p_ship_sts.equals("22")) { // ��ۻ��°� ��ǰȸ�����(21) �̸�(��ǰȸ������ ���) 
SQL +=  "  , RETURNRECALL_DT =  TO_CHAR ( SYSDATE , 'YYYYMMDD') WHERE      "; 
} else { 
SQL +=  " WHERE "; 
} 
SQL +=  "  COMPANY_CD = ? AND MERCHANT_CD = ? AND ORDER_DT = ? AND ORDER_NO = ? AND SEQ_NO = ?  "; 
==============================================================================================================

- ���� �� ���� --- 
\\211.233.5.108\i3shop i3shop/i3shop1085974 
-------------------------------------------------------------------------------------------------------------- 

- EJB, Bean ��Ϲ��
A. Bean ��� ���  @@@@@@@@@@@ 
C:\i3shop\Int\BizMgrBean\com\i3shop\dao\BizMgr 
OrderDAO.java OrderDtlDAO.java ���� ����(����) 

-- Bean ��� ��� 
eclipse���� �������� -> jar ���� 
���� PC C:\i3shop\intLib�� ������ 
���� PC C:\orion2\lib�� ������ 
BizMgr.jar ����(����) 
-------------------------------------------------------------------------------------------------------------- 
\\211.233.5.108\i3shop\src\bean\BizMgrDAO\com\i3shop\dao\BizMgr 
OrderDAO.java OrderDtlDAO.java ���� ���� ���� 
\\211.233.5.108\websphere\lib\app 
BizMgr.jar ���� ���� ����  
==============================================================================================================

B. EJB ��� ��� =========> 211.233.5.108 ���� @@@@@@@@@@@  ==> ���� (210.123.133.56)  
210.123.133.56 ���� @@@@@@@@@@@  ==> ���� ���⼭ AccMgr.jar ������ ���� �� 211.233.5.108�� �ٿ� ���� 
-------------------------------------------------------------------------------------------------------------- 

1. C:\i3shop\Int\IntEjb\AccMgr\com\i3shop\ejb\MisMgr\AccMgrBean.java ����  
2. \\210.123.133.56\i3shop\src\ejb\AccMgrEJB ���ÿ��� �Ʒ� 3�� ������ �����Ͽ� �ٿ� �ֱ��� 
AccMgr.java AccMgrBean.java AccMgrHome.java 
3. �͹̳� ���� ����(Ztem) 
IP: 210.123.133.56 i3shop/dacosystem 
4. ������ �ϱ� 
[i3shop@newint i3shop]$  su 
[i3shop@newint i3shop]$  i3shop566414 
[i3shop@newint i3shop]# cd src/ejb/AccMgrEJB 
[i3shop@newint i3shop]# ./build.sh AccMgr 
.jar ���� ������(---> \\210.123.133.56\i3shop\component\ejb\AccMgr.jar ���Ϸ� ����� ��) 
\\211.233.5.108\websphere\installedApps\i3shop.ear ����(AccMgr.jar) �ٿ� �ֱ� 
5. .108���� Websphere ���� �� ����� 
6. ����� --> �͹̳� ���� ����(Ztem) 
[i3shop@newint i3shop i3shop]$  cd /opt/WebSphere/AppServer/logs 
[i3shop@newint i3shop logs]$ tail -f Default_Server_stdout.log 
==============================================================================================================

not found: java.lang.Exception: com.i3shop.ejb.MisMgr.AccMgr: method getBuyingRemittance(Ljava/util/Hashtable;)Ljava
/util/Hashtable; not found 

-- Į�� ����  --------- 
ALTER TABLE T_ORDER drop column RETURNACCEPTDATE; 

-- Į�� �߰�  --------- 
ALTER TABLE T_ORDER add ( 
	RETURNACCEPT_DT    CHAR (8) 
); 
-------------------------------------------------------------------------------------------------------------- 

-- Į�� ����  --------- 
ALTER TABLE T_ORDER_DTL drop column RETURNRECALLDATE; 

-- Į�� �߰�  --------- 
ALTER TABLE T_ORDER_DTL add ( 
	RETURNRECALL_DT   CHAR (8) 
);  
============================================================================================================== 

������������������� 2004.03.11(��) �۾� �����������������
---> 07:10 ~ 23:00 

- �������� �м�
- ��ǰ����(�Ǽ��� ���) 
- �������2��: �ѽ��� �븮(9058) 
============================================================================================================== 

- T_ORDER_DTL: �ֹ������� 
RETURNRECALL_DT ��ǰȸ���Ϸ���(���������) 
RETURNRECALL_DT ��ǰȸ������� 
-------------------------------------------------------------------------------------------------------------- 

- �Ա� Ȯ�� 
/BizMgr/SaleMgr/WebOrderMgr/standByReceiptsP.jsp 
-------------------------------------------------------------------------------------------------------------- 

logUtil.dlog( "orderDtlB.jsp ��ȸ���� : " + inputHash.toString() ); 
dlog( "[SaleMgrBean.java]::[setOrderStsProdure()]=====>\n"+ SQL);  
dlog( "[SaleMgrBean.java]::[update()]::[p_storeout_dt]"+ p_storeout_dt); 
dlog( "[SaleMgrBean.java]::[update()]::[p_storeout_no]"+ p_storeout_no); 
dlog( "[SaleMgrBean.java]::[update()]=====>\n"+ SQL); 
============================================================================================================== 

������������������� 2004.03.12(��) �۾� �����������������
---> 07:20 ~ 23:00 

- �������� �м�
- �Ա�Ȯ�� ���� 
- ��۰Ǽ� 2�� �߻� ���� ���� 
-------------------------------------------------------------------------------------------------------------- 

dlog( "[OrderDAO.java]::[update()]::[p_merchant_cd]"+ p_merchant_cd); 
dlog( "[OrderDAO.java]::[update()]::[p_order_dt]"+ p_order_dt); 
dlog( "[OrderDAO.java]::[update()]::[p_order_no]"+ p_order_no); 

dlog( "[SaleMgrBean.java]::[update()]::[p_order_dt_from]"+ p_order_dt_from); 
dlog( "[SaleMgrBean.java]::[update()]::[SQL]=====>\n"+ SQL); 
============================================================================================================== 

-- 1�� �̻��� ��� ����Ÿ�� ��ȸ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
select a, b, c, d 
from ���̺� 
group by a, b, c, d 
having count( * ) > 1 
-------------------------------------------------------------------------------------------------------------- 

SELECT COMPANY_CD, MERCHANT_CD, STOREOUT_DT, STOREOUT_NO  
FROM T_STOREOUT 
GROUP BY  COMPANY_CD, MERCHANT_CD, STOREOUT_DT, STOREOUT_NO  
HAVING COUNT(*) > 1 
WHERE STOREOUT_DT >='20040301'  
AND STOREOUT_DT <='20040311' 
============================================================================================================== 

SELECT COMPANY_CD, MERCHANT_CD, STOREOUT_DT, STOREOUT_NO, SEQ_NO,  
RECV_MERCHANT_CD, RECV_DT, RECV_NO, RECV_DTL_SEQ_NO, ITEM_CD, 
RECV_MERCHANT_CD, RECV_DT, RECV_NO, RECV_DTL_SEQ_NO, ITEM_CD, 
ITEM_NM, ITEM_SHORT_NM, DEPART1_CD, DEPART2_CD, DEPART3_CD, 
MFG_NM, UNIT_CD, MODEL_NM, ITEM_SPEC, EMPTY_ITEM_CL, 
TAX_YN, TAX_RATE, FEE_ITEM_YN, FEE_RATE, FEE, 
ENTR_NO, BUYING_PRICE, RECV_ORD_PRICE, RECV_ORDER_QTY, RECV_ORDER_AMT,  
SP_PRICE, QTY, AMT, REAL_STOREOUT_DT, STOREOUT_ITEM_STS, 
SETTLE_YN, SETTLE_DT, REG_ID, REG_IP, REG_DT, 
UP_ID, UP_DT, UP_IP 
FROM T_STOREOUT_DTL 
GROUP BY  COMPANY_CD, MERCHANT_CD, STOREOUT_DT, STOREOUT_NO, SEQ_NO, 
RECV_MERCHANT_CD, RECV_DT, RECV_NO, RECV_DTL_SEQ_NO, ITEM_CD, 
RECV_MERCHANT_CD, RECV_DT, RECV_NO, RECV_DTL_SEQ_NO, ITEM_CD, 
ITEM_NM, ITEM_SHORT_NM, DEPART1_CD, DEPART2_CD, DEPART3_CD, 
MFG_NM, UNIT_CD, MODEL_NM, ITEM_SPEC, EMPTY_ITEM_CL, 
TAX_YN, TAX_RATE, FEE_ITEM_YN, FEE_RATE, FEE, 
ENTR_NO, BUYING_PRICE, RECV_ORD_PRICE, RECV_ORDER_QTY, RECV_ORDER_AMT,  
SP_PRICE, QTY, AMT, REAL_STOREOUT_DT, STOREOUT_ITEM_STS, 
SETTLE_YN, SETTLE_DT, REG_ID, REG_IP, REG_DT, 
UP_ID, UP_DT, UP_IP 
HAVING COUNT(*) > 1 
WHERE STOREOUT_DT >='20040301'  
AND STOREOUT_DT <='20040311' 
============================================================================================================== 

- ���� ���:  
���� --> ���� �ٽ� ���� ���� 
call ��Ÿ --> ���� �ٽ� ���� �Ұ��� 
============================================================================================================== 

������������������� 2004.03.13(��) �۾� �����������������
---> 07:20 ~ 18:30 

- �������� �м�
- �������ý��� ȭ�� ���� 
���Գ�����ȸ, �������, ���ݰ�꼭 ���� ����, �۱ݰ��� 
==============================================================================================================

dlog( "[SaleMgrBean.java]::[getTempPoDtlList()]::[findCond]"+ findCond); 
dlog( "[SaleMgrBean.java]::[getTempPoDtlList()]::[SQL]=====>\n"+ SQL); 
JNDI ��� ��üȣ���� �����߽��ϴ�. 
javax.naming.NameNotFoundException: BizMgr/BuyingMgr not found in IntEar 
----> C:\i3shop\intLib/MisMgr.jar�� �߸� �������� �߱� ����(�ٽ� �������� ��) 
==============================================================================================================

������������������� 2004.03.15(��) �۾� �����������������
---> 07:15 ~ 22:00 

- �������� �м�
A. ȸ�� ���� �������ý��� ȭ�� �м�(���� ȸ������� ����) 
1. ���Գ��� Ȯ��(T_STOREOUT_DTL, T_SOTREIN_DTL, T_STOREIN_RI_DTL ���̺� ���) 
����- ���꿩��, �������� ���� 
2. ���Լ۱� �Է¼ӵ��� ���� 
==============================================================================================================

dlog( "[AccMgrBean.java]::[getBuyingRemittance()]::[findCond]"+ findCond); 
dlog( "[AccMgrBean.java]::[getBuyingRemittance()]::[SQL]=====>\n"+ SQL); 
==============================================================================================================

- ��ǰȸ�� ��� Query
-- ��ǰȸ����� ��ǰ Ȯ�� ��ȸ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
SELECT A.ORDER_NO, A.ORDER_STS, A.UP_DT, A.RETURNACCEPT_DT, B.SEQ_NO, B.SHIP_STS, B.QTY, B.REAL_QTY, B.RETURNRECALL_DT 
FROM T_ORDER A, T_ORDER_DTL B 
WHERE  A.COMPANY_CD = B.COMPANY_CD 
	AND A.MERCHANT_CD = B.MERCHANT_CD 
	AND A.ORDER_DT = B.ORDER_DT 
	AND A.ORDER_NO = B.ORDER_NO 
	--AND B.REAL_QTY = '0' 
	AND A.ORDER_STS like '23%'       --// �ֹ�����(��ǰȸ���Ϸ�) 
	AND A.ORDER_TP = '03'   --// �ֹ�����(��ǰ�ֹ�) 
	AND B.SHIP_STS like '27%'       --//  ��ۻ��� ����(��ǰ�Ұ�:27) 
	AND B.ORDER_DT IS NOT NULL 
	AND A.UP_DT IS NOT NULL 
	AND B.ORDER_DT >= '20040312'  
	AND B.ORDER_DT <= '20040315'   
--==============================================================================================================

 -- ��ǰȸ����� ��ǰ Ȯ�� ��ȸ_2 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
SELECT ORDER_NO, UP_DT, SEQ_NO, SHIP_STS, QTY, REAL_QTY, RETURNRECALL_DT 
FROM  T_ORDER_DTL 
WHERE  SHIP_STS like '27%'       --//  ��ۻ��� ����(��ǰ�Ұ�:27)  
	AND ORDER_DT >= '20040313'  
	AND ORDER_DT <= '20040315'   
--==============================================================================================================

-- ��ǰ ȸ�� ��� ���� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
UPDATE T_ORDER_DTL 
SET UP_DT = sysdate , 
	ORDER_DT = '20040311',  
	ORDER_NO = '00179',  
	SHIP_STS = '27',  --// ��ۻ���(SHIP_STS)��(��ǰ�Ұ�:27)�� ���� 
	REAL_QTY = '0', --// ���� '0'���� ���� 
	MERCHANT_CD = '0001', 
	COMPANY_CD = '01',  
	SEQ_NO = '1'  
WHERE COMPANY_CD =  '01'  
	AND MERCHANT_CD = '0001' 
	AND ORDER_DT =  '20040311'  
	AND ORDER_NO = '00179'  
	AND SEQ_NO =  '1'  
--==============================================================================================================
  
������������������� 2004.03.16(ȭ) �۾� �����������������
---> 07:10 ~ 21:00 

- �������� �м�
- �������ý��� ȭ�� ���� 
���Գ�����ȸ --> ���ݰ�꼭 ���� --> �������-->  �۱ݰ���  
==============================================================================================================

- ��������(T_MEIP_JUNGSAN), �������� ������(T_MEIP_JUNGSAN_DTL) ���̺� ���� 
- ���� �������ý����� �ӵ� ����(���� ���̺��� ����Ͽ� ����) 

ȸ���� ��ٹ� ����� ȸ��(16:00 ~ 16:40) 
��Ȯ�� ���� �м��� ���� 
���Գ��� ��Ȳ(���걸�� ���ʿ�, ���ݰ�꼭 ���� �߰���) 

- ���Գ��� Ȯ�� ��ȸ 2�� ����(/AccMgr/fundsMgt/remittance/buyingRemittanceP.jsp) 
==============================================================================================================

- EJB, Bean ��Ϲ��
A. Bean ��� ���  @@@@@@@@@@@ 
C:\i3shop\Int\BizMgrBean\com\i3shop\dao\BizMgr 
OrderDAO.java OrderDtlDAO.java ���� ����(����) 

-- Bean ��� ��� 
eclipse���� �������� -> jar ���� 
���� PC C:\i3shop\intLib�� ������ 
���� PC C:\orion2\lib�� ������ 
BizMgr.jar ����(����) 
--------------------------------------------------------------------------------------------------------------  

\\211.233.5.108\i3shop\src\bean\BizMgrDAO\com\i3shop\dao\BizMgr 
OrderDAO.java OrderDtlDAO.java ���� ���� ���� 
\\211.233.5.108\websphere\lib\app 
BizMgr.jar ���� ���� ����  
==============================================================================================================

B. EJB ��� ���  @@@@@@@@@@@ 
C:\i3shop\Int\IntEjb\BuyingMgr\com\i3shop\ejb\BizMgr 
BuyingMgrBean.java  ���� 
eclipse���� ������Ʈ(P) --> �ٽú���(L) 
-------------------------------------------------------- 

\\211.233.5.108\i3shop\src\ejb\BuyingMgr�� 3�� ���� �پ� �ֱ� 
BuyingMgr.java BuyingMgrBean.java BuyingMgrHome.java 

- �͹̳� ���� ����(Ztem) 
IP: 210.123.133.108 i3shop/i3shop1085974 
-------------------------------------------------------- 

> cd /i3shop/src/ejb  
i3shop/src/ejb> ./build.sh BuyingMgr 

.jar ���� ������(---> \\211.233.5.108\i3shop\component\ejb\.BuyingMgr.jar ���Ϸ� ����� ��) 
\\211.233.5.108\websphere\installedApps\i3shop.ear ����(BuyingMgr.jar) �ٿ� �ֱ�
==============================================================================================================

������������������� 2004.03.17(��) �۾� �����������������
---> 08:00 ~ 20:30 

- �������� ����
- �������ý��� ȭ�� ���� 
��������(T_MAGAM_MEIP) TB Sprocedure�� ����  --> �ŷ�ó ���ݰ�꼭 ���� --> �ŷ�ó �۱� ����  
=============================================================================================================

- �ŷ��߻������ڵ�(MEIP_GUBUN) 
���θ� R&F - 01 
L&B - 02 
���� R&F - 03 
L&B - 04 
��Ʈ ��Ʈ - 05  
==============================================================================================================

-- ���Գ��� Ȯ�� ��ȸ(��� Grid) 
SELECT  AAA.ENTR_NO, 
( SELECT  ENTR_NM FROM T_ENTERPRISE 
WHERE COMPANY_CD = '01' AND ENTR_NO = AAA.ENTR_NO) ENTR_NM, 
SUM(AAA.BUYING_AMT) AS BUYING_AMT,   -- ���ް��� 
SUM(AAA.BUYING_VAT) AS BUYING_VAT,   -- �ΰ��� 
SUM(AAA.TOTAL_AMT) AS TOTAL_AMT,   -- �հ�ݾ� 
DD.BANK_CD,   -- �Ա�����CD 
( SELECT ENTR_NM FROM T_ENTERPRISE_CODE 
WHERE ENTR_CD = DD.BANK_CD) BANK_NM, 
DD.ACCOUNT_NO,   -- ���¹�ȣ 
DD.DEPOSITOR   -- ������ 
FROM( SELECT  AA.ENTR_NO ENTR_NO, AA.BUYING_AMT BUYING_AMT, 
AA.BUYING_VAT BUYING_VAT, AA.TOTAL_AMT TOTAL_AMT 
FROM( 
SELECT  A.ENTR_NO ENTR_NO, AX.ENTR_NM, 
SUM(CASE WHEN A.TAX_YN = 'Y' THEN NVL(A.QTY,0)  * NVL(A.GONGUP_AMT,0) /1.1  
 WHEN A.TAX_YN = 'N' THEN NVL(A.QTY,0)  * NVL(A.GONGUP_AMT,0) END) AS BUYING_AMT,  --���ް���(�ΰ��� ����) 
SUM(CASE WHEN A.TAX_YN = 'Y' THEN NVL(A.QTY,0)  * NVL(A.GONGUP_AMT,0) / 11 
 WHEN A.TAX_YN = 'N' THEN 0 END ) AS BUYING_VAT,     --�ΰ��� 
SUM(NVL(A.QTY,0) * NVL(A.GONGUP_AMT,0)) AS TOTAL_AMT  --�հ�ݾ� 
FROM( SELECT ENTR_NO, ENTR_NM FROM T_ENTERPRISE 
WHERE COMPANY_CD = '01' AND SETTLE_TP_CD = '01') AX, 
T_MAGAM_MEIP A 
WHERE A.ENTR_NO = AX.ENTR_NO 
AND A.COMPANY_CD = '01' 
AND A.MERCHANT_CD = '0001'  
AND A.MAGAM_DATE >= '20040301' 
AND A.MAGAM_DATE <= '20040318' 
GROUP BY A.ENTR_NO) AA 
) AAA, 
( SELECT ENTR_NO,BANK_CD,ACCOUNT_NO,DEPOSITOR 
FROM T_ENTR_BANK_ACCOUNT -- �ŷ�ó �����������TB 
WHERE COMPANY_CD = '01' ) DD 
WHERE AAA.ENTR_NO = DD.ENTR_NO 
GROUP BY AAA.ENTR_NO,DD.BANK_CD,DD.ACCOUNT_NO,DD.DEPOSITOR 
================================================================================================== 

-- ���Գ��� Ȯ�� ��ȸ(�ϴ� Grid) 
SELECT  * FROM T_MAGAM_MEIP 
WHERE  COMPANY_CD = '01'                                                      
AND MERCHANT_CD = '0001'        
AND MAGAM_DATE >= '20040315'   
AND MAGAM_DATE <= '20040315'        
AND ENTR_NO = '00046' -- �ŷ�óNO 
==============================================================================================================

������������������� 2004.03.18(��) �۾� �����������������
---> 07:30 ~ 23:00 

- �������� ����
- �������ý��� ȭ�� ���� 
��������(T_MAGAM_MEIP) TB Sprocedure�� ����  --> �ŷ�ó ���ݰ�꼭 ���� --> �ŷ�ó �۱� ����  
==============================================================================================================

- ȸ�� ȸ��(09:10 ~ 10:10) 
- �ŷ��߻������ڵ�(MEIP_GUBUN) ���� ���� 
- ȭ�� ������ �Ϻ� ���� 
==============================================================================================================

-- ������� ��ü�޴��� ��ȯ�Ѵ�.(������ �ִ� �޴��� ���õ�, �ý��۱��к� ��ȸ����)  @@@@@@@@@@@@@ 
SELECT A.*, LEVEL MENU_LEVEL 
FROM(  SELECT DISTINCT MENU_NO,PMENU_NO,MENU_NM, 
SUBSYSTEM_CD,PRG_ID,PROGRAM_YN,PRG_PATH, 
DISPLAY_ORDER 
FROM T_MENUINFO 
CONNECT BY PRIOR PMENU_NO = MENU_NO 
START WITH MENU_NO IN ( 
  SELECT MENU_NO 
  FROM T_USERAUTHORITY 
  WHERE USER_ID = 'admin') 
ORDER BY PMENU_NO, DISPLAY_ORDER 
) A 
CONNECT BY PRIOR A.MENU_NO = A.PMENU_NO 
START WITH A.PMENU_NO = 0 
--==============================================================================================================

-- �������� ���� ��ȸ Data ���� @@@@@ 
INSERT INTO T_MAGAM_MEIP(MAGAM_DATE, COMPANY_CD, MERCHANT_CD, MAGAM_GUBUN, MEIP_GUBUN, 
ENTR_NO, SEQ_NO, MEIP_NO, ITEM_CD, QTY, 
TAX_YN, MEIP_DANGA, GONGUP_DANGA, TAX_DANGA, MEIP_AMT,  
GONGUP_AMT, TAX_AMT, SALE_DANGA, SALE_GONGUP_DANGA, SALE_TAX_DANGA,  
SALE_AMT, SALE_GONGUP_AMT, SALE_TAX_AMT, RESELLER_DANGA, ILBAN_DANGA,  
SHIP_CHARGE_DANGA, SHIP_CHARGE_AMT, SHIP_BILL_DANGA, SHIP_BILL_AMT, PV, 
BV, EMONEY, CMONEY, RNFMONEY, BANKPV,  
DIRECT_CMONEY, DIRECT_MONEY, SALE_BONUS, BILL_CHECK_YN, BILL_YN)   
SELECT A.REAL_STOREOUT_DT AS MAGAM_DATE, A.COMPANY_CD AS COMPANY_CD, A.RECV_MERCHANT_CD 
AS MERCHANT_CD, '01'AS MAGAM_GUBUN, '01'AS MEIP_GUBUN, 
A.ENTR_NO AS ENTR_NO, A.SEQ_NO AS SEQ_NO, '00001'AS MEIP_NO, A.ITEM_CD AS ITEM_CD, NVL(A.QTY,0)AS QTY, 
A.TAX_YN AS TAX_YN, NVL(A.BUYING_PRICE,0)AS MEIP_DANGA,  
CASE WHEN A.TAX_YN = 'Y' THEN (NVL(A.QTY,0) * NVL(A.BUYING_PRICE,0)/1.1)  
 WHEN A.TAX_YN = 'N' THEN (NVL(A.QTY,0) * NVL(A.BUYING_PRICE,0)) END AS GONGUP_DANGA,   
'0'AS TAX_DANGA, '0'AS MEIP_AMT, 
'0'AS GONGUP_AMT, '0'AS TAX_AMT, '0'AS SALE_DANGA, '0'AS SALE_GONGUP_DANGA, '0'AS SALE_TAX_DANGA, 
'0'AS SALE_AMT, '0'AS SALE_GONGUP_AMT, '0'AS SALE_TAX_AMT, '0' AS RESELLER_DANGA, '0'AS ILBAN_DANGA,  
'0'AS SHIP_CHARGE_DANGA, '0'AS SHIP_CHARGE_AMT, '0'AS SHIP_BILL_DANGA, '0'AS SHIP_BILL_AMT, '0'AS PV, 
'0'AS BV, '0'AS EMONEY, '0'AS CMONEY, '0'AS RNFMONEY, '0'AS BANKPV, 
'0'AS DIRECT_CMONEY, '0'AS DIRECT_MONEY, '0'AS SALE_BONUS, 'N'AS BILL_CHECK_YN, 'N'AS BILL_YN 
FROM T_STOREOUT_DTL@IIISHOP_MAIN A, T_ORDER@IIISHOP_MAIN C                              
WHERE A.COMPANY_CD = C.COMPANY_CD                  
AND A.RECV_MERCHANT_CD = C.MERCHANT_CD                              
AND A.RECV_DT = C.ORDER_DT                               
AND A.RECV_NO = C.ORDER_NO               
AND A.COMPANY_CD = '01'                         
AND A.MERCHANT_CD = '0001'                         
AND A.ENTR_NO = '00046'    -- �ŷ�óNO                                                 
AND A.SETTLE_YN = 'N'      -- ���꿩��('N')                                   
AND A.REAL_STOREOUT_DT >= '20040315'                                          
AND A.REAL_STOREOUT_DT <= '20040315'   
==============================================================================================================

������������������� 2004.03.19(��) �۾� �����������������
---> 07:30 ~ 05:00 

- �������� ����
- �������ý��� ȭ�� ���� 
��������(T_MAGAM_MEIP) TB Sprocedure�� ����  --> �ŷ�ó ���ݰ�꼭 ���� --> �ŷ�ó �۱� ����  
==============================================================================================================

- �ŷ�ó ���ݰ�꼭 ���� ����(buyingRemittanceP.jsp) 
---------------------------------------------------------------------------------------- 

clearDataSet( f1.ds_list_d);  // �ڵ����� ���� Grid ���� 

function clearDataSet( dataSet ){ /*** ������ �� û��   */ 
	dataSet.ClearData(); 
} 
  
==============================================================================================================

saveBuyingRemittanceMS.jsp  ���� ����  
----------------------------------------------------------------------------------------

// DB Į���� ��ġ���� ���� �ʵ�� ���� 
 Exception���� �߻� : java.lang.IndexOutOfBoundsException:  
sColumn index[-1] is out of the range of the count[20] of GauceDataColumn! 
==============================================================================================================

������������������� 2004.03.20(��) �۾� �����������������
---> 09:00 ~ 18:00 

- �������� ����
- �������ý��� ȭ�� ���� 
��������(T_MAGAM_MEIP) TB Sprocedure�� ����  --> �ŷ�ó ���ݰ�꼭 ���� --> �ŷ�ó �۱� ����  
==============================================================================================================

- �ŷ�ó ���ݰ�꼭 ����(buyingRemitCheckP.jsp) ���� 
-------------------------------------------------------------------------------------------------------------------

- ����: �Ķ�(param) ��ȣ�� ������� �� �� �־��� 
java.sql.SQLException: ORA-01008: �Ϻ� ������ ���յ��� �ʾҽ��ϴ�  
param.put(3 ,p_settle_tp_cd,Code.DB_VARCHAR); // ���� 
param.put(3 ,p_company_cd,Code.DB_VARCHAR); 
==============================================================================================================

- ����: Į������ ���� ��� 
Exception���� �߻� : java.lang.IndexOutOfBoundsException:  
Column index[-1] is out of the range of the count[15] of GauceDataColumn! 
==============================================================================================================

������������������� 2004.03.22(��) �۾� �����������������
---> 08:00 ~ 23:00 

- �������� ����
- �������ý��� ȭ�� ���� 
��������(T_MAGAM_MEIP) TB Sprocedure�� ����  --> �ŷ�ó ���ݰ�꼭 ���� --> �ŷ�ó �۱� ����  
==============================================================================================================

-  �ŷ�ó �۱� ����(buyingRemittanceP.jsp)  ����  
- ���ݰ�꼭 �ݾ� ���� 
���ް���(���Դܰ�*����/1.1) 
�ΰ���((���Դܰ�*����)- ���ް���) 
�հ�ݾ�(���Դܰ�*����) 
-------------------------------------------------------------------------------------------------------------------

( SELECT NVL(MAX(NVL(BILL_CHECK_DT_SEQ,0)),0)+1" +  // SEQ �ѹ� 
FROM  T_MAGAM_MEIP) 
==============================================================================================================

- TRUNC(n[,m])  
�뵵 : n�� �Ҽ����Ʒ� m�ڸ���������� �����Ѵ�.  
m�� ������ ROUND �Լ��� ���� ����  
�� : SELECT TRUNC(12.645,2) FROM DUAL  
==============================================================================================================

-- ���� ���� ���� ��ȸ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
SELECT   B.ITEM_CD, B.TIMES_CD, B.COMPANY_CD, B.STORE_CD, B.CATEGORY_CD, B.MERCHANT_CD, 
		 NVL(MAX(B.SALE_MAX_QTY),0) AS LIMIT_QTY, NVL(SUM(A.QTY),0) AS BUYED_QTY, -- (�������� ����, ���� ������ ������ ��) 
		(NVL(MAX(B.SALE_MAX_QTY),0) - NVL(SUM(A.QTY),0))AS POS_QTY -- ���� ���� ������ �� 
		 --, MAX(C.ST_DT), MAX(C.ED_DT), SYSDATE 
FROM  T_BuyCount A, T_BuyLimitCount B, T_BuyTimes C 
WHERE B.ITEM_CD(+) = A.ITEM_CD 
  AND B.TIMES_CD = C.TIMES_CD  
  AND A.TIMES_CD = '000003' 
  --AND B.ITEM_CD(+) = A.ITEM_CD 
  AND A.MNO(+) = '92201'   -- TEST01 �����(�׽�Ʈ��): '92201' 
GROUP BY B.ITEM_CD, B.TIMES_CD, A.MNO, B.COMPANY_CD, B.STORE_CD, B.CATEGORY_CD, B.MERCHANT_CD 
--==============================================================================================================

������������������� 2004.03.23(ȭ) �۾� ����������������� 
---> 07:30 ~ 23:00 

- �������� ����
- �������ý��� ȭ�� ���� 
��������(T_MAGAM_MEIP) TB Sprocedure�� ����  --> �ŷ�ó ���ݰ�꼭 ���� --> �ŷ�ó �۱� ����  
==============================================================================================================

-  �ŷ�ó �۱� ����(buyingRemittanceP.jsp)  ����
����  ==> MERCHANT_CD ��ȸ 
�˻�����(�����)  ==> MEIP_GUBUN ��ȸ 
==============================================================================================================

L&B(��Ʈ����)�� dep940�� ������ ��� ��ǰ�Դϴ�. 
R&F��ǰ dep940�� ���߼� �Ѱ��� �ֽ��ϴ�. 

if(p_store_cd.equals("02")) {  //����(R&F����) �̸�  
SQL +=  "  AND A.DEPART1_CD = '940' "; // depart_cd1 ��ȸ 
} else if(p_store_cd.equals("03")) { //����(L&B����) �̸�  
SQL +=  "  AND A.DEPART1_CD <> '940' "; // depart_cd1 ��ȸ  
} 
==============================================================================================================

Return Hash : {mcnt=1, yn=Y} 
[AccMgrBean.java]::[updateBuyingRemittance()]:: Return Hash : {mcnt=0, yn=N, txcnt=1}
 dlog("[AccMgrBean.java]::[updateBuyingRemittance()]::[p_entr_no]"+ getData("p_entr_no",irowHash)); 
--==============================================================================================================
  
-  ��ǰ ���� Query
-- ��ǰ ���� ���� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
UPDATE T_ORDER 
SET UP_DT = sysdate , 
	ORDER_STS = '22',	--// �ֹ����� : 22 ��ǰ���� 
	ORDER_NO = '00179',   
	MERCHANT_CD = '0001', 
	COMPANY_CD = '01',  
	RETURNACCEPT_DT = '20040311',	--// ��ǰ�������� ���� 
	SEQ_NO = '1'  
WHERE COMPANY_CD =  '01'  
	AND MERCHANT_CD = '0001' 
	AND ORDER_DT =  '20040309'  
	AND ORDER_NO = '00657'  
--==============================================================================================================
  
-- ��ǰ ȸ�� ���� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
UPDATE T_ORDER_DTL 
SET UP_DT = sysdate , 
	ORDER_DT = '20040311',  
	ORDER_NO = '00179',  
	SHIP_STS = '22',  --// ��ۻ���(SHIP_STS)�� (��ǰ����:22)�� ����  
	MERCHANT_CD = '0001', 
	COMPANY_CD = '01',  
	RETURNRECALL_DT = '20040311', --// ��ǰȸ���Ϸ���(ȸ�������) ���� 
	SEQ_NO = '1'  
WHERE COMPANY_CD =  '01'  
	AND MERCHANT_CD = '0001' 
	AND ORDER_DT =  '20040311'  
	AND ORDER_NO = '00179'  
	AND SEQ_NO =  '1'  
--==============================================================================================================

-- ��ǰ ȸ�� ��� ���� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
UPDATE T_ORDER_DTL 
SET UP_DT = sysdate , 
	ORDER_DT = '20040311',  
	ORDER_NO = '00179',  
	SHIP_STS = '27',  --// ��ۻ���(SHIP_STS)�� (��ǰ�Ұ�:27)�� ���� 
	REAL_QTY = '0', --// ���� '0'���� ���� 
	MERCHANT_CD = '0001', 
	COMPANY_CD = '01',  
	RETURNRECALL_DT = '20040311', --//  ��ǰȸ���Ϸ���(ȸ�������) ���� 
	SEQ_NO = '1'  
WHERE COMPANY_CD =  '01'  
	AND MERCHANT_CD = '0001' 
	AND ORDER_DT =  '20040311'  
	AND ORDER_NO = '00179'  
	AND SEQ_NO =  '1'  
--==============================================================================================================

������������������� 2004.03.24(��) �۾� �����������������
---> 07:20 ~ 19:00 

- �������� ����
- �������ý��� ȭ�� ���� 
��������(T_MAGAM_MEIP) TB Sprocedure�� ����  --> �ŷ�ó ���ݰ�꼭 ���� --> �ŷ�ó �۱� ����  
==============================================================================================================

- �ŷ�ó ���ݰ�꼭 ���� 
EJB���� ����Ÿ ������ �Ǿ��µ� ��DB���� ������ �� �Ǵ� ���� 
ENTR_NO CHAR(6)���� �����ؼ� ������ �ڸ����� ���� ���� CHAR(5)�� ���� 

[p_entr_no]00485
SQL += " AND ENTR_NO =  ? " ; //�ŷ�ó��ȣ 
urowparam.put(8,getData("p_entr_no",irowHash),Code.DB_VARCHAR); //�ŷ�ó��ȣ  
==============================================================================================================

\\211.233.5.100 administrator/ozoz100# 
==============================================================================================================

- DB ������  
C:\i3shop\OZProduct\OZServer25\conf���� @@@@@@@@ 
-------------------------------------------------------------------------------------------------------- 
newmis.vendor=oracle 
newmis.serverAddress=210.123.133.51 
newmis.dsn=thin 
newmis.portNo=1521 
newmis.sid=I3SHOPDB 
newmis.user=iiishop 
newmis.password=iiishop 
newmis.maxconns=30 
newmis.initconns=5 
newmis.timeout=10 
==============================================================================================================
###    End.  
### 1. I3SHOPDB =   iiishop/iiishop #---  ���� Test���� TNS ���� DB ȯ�� 

C:\i3shop\OZReport\OZDesigner25\Report\nobless.xml ���� @@@@@@@@ 
------------------------------------------------------------------------------------------------------------------ 
  
1. I3SHOPDB =   iiishop/iiishop #---  ���� Test���� TNS ���� DB ȯ�� 
<OZORACLE NAME="I3SHOPDB" VENDOR="Oracle" SERVERNAME="I3SHOPDB" DBNAME="" DATASOURCENAME="thin" 
USERNAME="iiishop" PASSWORD="iiishop" 
<OZQUERY NAME="Main" MASTERSET="" DBINFOID="I3SHOPDB" SCRIPT="false" MAXROW="0" HIDDEN="false"  
LOADSFIELDINFODYNAMICALLY="false" SDMTYPE="0" SIGN="false" PREPARED="false" HIDEDESIGNTIME="false"> 
------------------------------------------------------------------------------------------------------------------ 

2. IIISHOP =   IIISHOP/IIISHOP #--- �Ǽ��� TNS ���� DB ȯ�� 
  <OZORACLE NAME="IIISHOP" VENDOR="Oracle" SERVERNAME="IIISHOP" DBNAME="" DATASOURCENAME="thin" 
  USERNAME="IIISHOP" PASSWORD="IIISHOP" 
<OZQUERY NAME="Main" MASTERSET="" DBINFOID="IIISHOP" SCRIPT="false" MAXROW="0" HIDDEN="false"  
LOADSFIELDINFODYNAMICALLY="false" SDMTYPE="0" SIGN="false" PREPARED="false" HIDEDESIGNTIME="false"> 
------------------------------------------------------------------------------------------------------------------ 

ALIASFILENAME="C:\i3shop\OZProduct\OZServer25\conf\db.properties" 
==============================================================================================================  

������������������� 2004.03.25(��) �۾� �����������������
---> 08:30 ~ 23:00 

- �������� ����
- �������ý��� ȭ�� ���� 
1. ������ ���� ���� �帧�� 
2. ���ݰ�꼭 ���� ���� �帧�� 
3. �۱� ���� ���� �帧�� 
==============================================================================================================

- ���� ����Ʈ ��� �׽�Ʈ 
- �ŷ�ó ���ݰ�꼭 ���� 
==============================================================================================================

������������������� 2004.03.26(��) �۾� �����������������
---> 07:30 ~ 23:00 

- �������� ����
- ���� ����Ʈ ��� 
 \\211.233.5.100 administrator/ozoz100# 

- ����(T) -> ��ũ��Ʈ Ž����(S) 
Ÿ��Ʋ ���1 ���� @@@@@@@@@@@@@ 
global double mamt_dtl; // ���Դܰ� 
global double qty_dtl; // ���� 
global double gongup_dtl; // ���ް��� 
global double tax_dtl; // �ΰ��� 
global double total_dtl; // �հ�ݾ� 
------------------------------------------------------------------------------------------------------------------ 

- ������ ���2 ���� @@@@@@@@@@@@@ 
::mamt_dtl=::mamt_dtl+#MEIP_AMT#; // ���Դܰ� 
::qty_dtl= ::qty_dtl+#BUYING_QTY#; // ���� 
::gongup_dtl=::gongup_dtl+#GONGUP_AMT#;// ���ް��� 
::tax_dtl=::tax_dtl+#TAX_AMT#; // �ΰ��� 
::total_dtl=::total_dtl+#TOTAL_AMT#; // �հ�ݾ� 
==============================================================================================================

- ���� ����Ʈ ���� Query ��� ����(����� p_remittance_yn_SQL �Ķ���� ����) 
buyingRemitCheckP.jsp ���� @@@@@@@@ 
------------------------------------------------------------------------------------------------------------------ 

if(!p_remittance_yn.equals("A")) p_remittance_yn_SQL =  "  AND  A.BILL_YN = ? "; // �۱�����  ��ü�� �ƴϸ� 
<param name="connection.args9" value="p_remittance_yn_SQL=<%=p_remittance_yn_SQL%>"> 
==============================================================================================================

- ���� ����(�Ǽ��� ����) 
������ ��û�� ����Ÿ ����� ���� �� �� �����ϴ�. 
<<Server side message>> 
Error Message : [Error Code : 12503] Error on Data-Module-Binding. 
Error code : 12503 
==============================================================================================================

http://support.i3shop.com/index.jsp B0000360 / p81918  
 http://support.i3shop.com/VendorMgr/SettleInfo/storeOutDtlP.jsp 
System.out.println("[getBuyingRemittanceMListB.jsp]::[p_store_cd]"+ p_store_cd); 
==============================================================================================================

- Support clipse ����
1. �ٸ� ��ǻ�Ϳ��� �ҷ���(����) 
\\210.123.133.24\d$\i3shop\support 
C:\eclipse\eclipse.exe -data C:\CCDOM
2. C:\support�� �ٿ� ���� 
3. ����ȭ�鿡 eclipse ���� 
C:\eclipse\eclipse.exe -data C:\support 
4. eclipse ���� 
5. Support(���� ���� Click) --> Ư��(R) --> JAVA���� ��� 
���̺귯��(L) --> �ܺ�JAR�߰�(X) 
C:\orion2 
C:\i3shop\intLib 
6. â(W) --> ȯ�漳��(P) 
JAVA --> ��ġ�� JRE 
C:\j2sdk1.4.1_05 
Lomboz 
C:\j2sdk1.4.1_05\lib\tools.jar 
Orion  
C:\orion2 
localhost:23791 
-Denvfile=C:\i3shop\i3shop_env\daco.env 
------------------------------------------------------------------------------------------------------------- 

Ŭ���� ��ΰ� �������� �ʾ� ������Ʈ�� ������� ���߽��ϴ�. 
�� ������ ������ ���������� ������ java.lang.Object ������ �����մϴ�. 
include file problem:  com.daco�� �м��� �� ���ų� ������ �ƴմϴ�. 

C:\orion2\config\int-web-site.xml ���� @@@@@@@@  
------------------------------------------------------------------------------------------------------------- 

 <web-site host="[ALL]" port="5001" display-name="IntWeb"> 
==============================================================================================================  

�� �Ǽ���(.211.233.5.108) �ҽ� ���� ���� ====================== 
-- Enitiy ��� ��� 
\\211.233.5.108\i3shop\src\bean  ���� ���� 
C:\CCDOM\Ccdom\CcdomBeans\com\i3shop\beans\BizStore  eclipse���� �ٿ� �ֱ� 

-- Bean ��� ��� 
\\211.233.5.108\i3shop\src\ejb  ���� ���� 
C:\CCDOM\Ccdom\CcdomEjb eclipse���� �ٿ� �ֱ� 

-- web ����(.jsp) ��� ��� 
\\211.233.5.108\websphere\installedApps\support.ear\support ���� ����  
C:\CCDOM\Ccdom\CcdomWeb�ٿ� �ֱ� 
==============================================================================================================
  
������������������� 2004.03.27(��) �۾� �����������������
---> 07:30 ~ 18:00 

- �������� ����
- Package 
����Ŭ ����Ÿ���̽��� ����� ������ �ִ� PL/SQL ���ν���(Store Procedure)��  
�Լ�(Function)���� ����ü 
�����(Specitfication)�� ����(Body)���� ���� 

SQL PLUS ���� @@@@@@@@  ======> ���� 
------------------------------------------------------------------------------------------------------------- 

SQL> EXECUTE PKG_MEIP_MAGAM.DAY_MEIP('20040101'); 
SQL> EXECUTE PKG_MEIP_MAGAM.DAY_MEIP('20040102'); 
SQL> EXECUTE PKG_MEIP_MAGAM.DAY_MEIP('20040103'); 
SQL> EXECUTE PKG_MEIP_MAGAM.DAY_MEIP('20040104'); 

EXECUTE PKG_MEIP_MAGAM.DAY_MEIP('20040120'); 

EXECUTE PKG_MEIP_MAGAM.DAY_MEIP('20040131'); 

PL/SQL ó���� ���������� �Ϸ�Ǿ����ϴ�. 
==============================================================================================================

- Clone Job �۾�(���� �ð�(24:00)�� ������ �ڵ����� SP ȣ��) 
==============================================================================================================

������������������� 2004.03.28(��) �۾� �����������������
---> 13:00 ~ 18:00 

- �������� ����
- Package ����Ÿ ����
SQL> EXECUTE PKG_MEIP_MAGAM.DAY_MEIP('20040104'); 
PL/SQL ó���� ���������� �Ϸ�Ǿ����ϴ�. 
==============================================================================================================

 - ���� ����(�Ǽ��� ����) 
���� JSP�� ȣ���ϴ� ����� .100����  IIISHOP(211.233.5.110) DBȣ�� 
\\211.233.5.100 administrator/ozoz100# 
==============================================================================================================

������������������� 2004.03.29(��) �۾� �����������������
---> 07:10 ~ 23:00 

- �������� ����
- crontab ���� 
���н�/���������� ����ϴ� �۾����� ������ ���α׷��� ���մϴ�.  
�������α׷� ���� ���ϰ�ο� ���۽ð��� ����� ������ �׽ð��� �ڵ����� ����ǰ� �ϴ°�������  

����Ŭ������ job queue��� ���� ���������.. crontab�� OS level ���� ����˴ϴ�..  
����Ŭ�� job�� crontab�� ��ġ �������� ������ ���� ���մϴ�. 
���� �� �ʿ��� ��찡 �ƴϸ� ������� �ʰų�...  
OS ������ ��� �ϼ���. 
=================================================================================================================

- crontab ���� ��� 
1. meip_magam_cron.sh ����
. /user1/oracle/cron_job/env.sh 
##################################################################### 
# 
# �Ϻ� ������ ����  ����(���۾�) 
# 
# �ۼ��� : ���¸� 
# �ۼ����� : 2004/03/29 
# 
##################################################################### 

sqlplus /nolog <<! 
CONNECT iiishop/iiishop 

set serveroutput on size 1000000; 
set timing on; 

CALL PKG_MEIP_MAGAM.DAY_MEIP_INSERT(''); 

EXIT; 
! 
=================================================================================================================

2. FTP�� 211.233.5.110(�Ǽ��� DB) ����(oracle/i3shop1105974) 
3. /user1/oracle/cron_job �� �پ� �ֱ� 
4. zterm(�͹̳�)���� 211.233.5.110(�Ǽ��� DB) IIISHOP ����(oracle/i3shop1105974)  ===> su/Ÿ�ڽý���(��������) 
5. ������� cront ���� 
$ cd cron_job 
$ crontab -e 

=============================================> ���� ���(vió�� ���� ����) 

###################################################################### 
# 
# ��ġ �۾� ���� 
# 
# �ۼ��� : ������ 
# �ۼ��� : 2003/08/06 
# 
# 
# 
###################################################################### 
#### �Ϻ� ������ ����  ����(���۾�)    ####  ==============> �߰� 
2 1 * * * /user1/oracle/cron_job/meip_magam_cron.sh > /user1/oracle/cron_job/log/meip_magam_cron_log 
#### ���� ȸ�� ���� ����(���۾�)    #### 
2 3 * * * /user1/oracle/cron_job/month_member_cron.sh > /user1/oracle/cron_job/log/month_member_log 
#### ��� ����Ʈ ���� ����(���۾�)  #### 
#### �±�/���� ó�� ����(���۾�)    #### 
3 3 * * * /user1/oracle/cron_job/batch_job.sh > /user1/oracle/cron_job/log/batch_job_log 
0 3 * * * /user1/oracle/cron_job/day_sale_close_cron.sh > /user1/oracle/cron_job/log/day_sale_close.log 
## �������� ## 
1 3 * * * /user1/oracle/cron_job/bizmgr_item_price.sh > /user1/oracle/cron_job/log/bizmgr_item_price.log 
1 2 * * * /user1/oracle/cron_job/day_subul_cron.sh > /user1/oracle/cron_job/log/day_subul_cron.log 
#### ���ǹ�ȣ ó��  #### 
0 8 * * * /user1/oracle/cron_job/reqbill.sh > /user1/oracle/cron_job/log/reqbill_08.log 
0 20 * * * /user1/oracle/cron_job/reqbill.sh > /user1/oracle/cron_job/log/reqbill_20.log 
#### �������ó�� 
0 9 * * * /user1/oracle/cron_job/cancelbill.sh > /user1/oracle/cron_job/log/cancelbill_09.log 
0 21 * * * /user1/oracle/cron_job/cancelbill.sh > /user1/oracle/cron_job/log/cancelbill_20.log 

#### ����Ŭ ��ī�̺� �α� ����  ��� ��ũ��Ʈ���� �����ϵ��� ������#### 
####59 2 * * * /user1/oracle/cron_job/clean_log/clean_log > /user1/oracle/cron_job/log/clean_log 

:wq! ==============> ����(������ �Ϸ��) 
=================================================================================================================
  
- The crontab file format �м�  
The crontab file format  
crontab file�� �� entry���� �������� field�� �����Ǿ��ִ�. �� �ʵ�� space �� tab���� �����Ѵ�.  
5      4      *      *      6       /usr/lib/newsyslog  
���ʵ�(0, 59)  �ð��ʵ�(0,23)  ��/���ʵ�(1,31)  ���ʵ�(1,12)  ��/���ʵ�(0,6)  ��ɾ����(log�� ������) 
* �� ����� ���Ѵ�. 

#### �Ϻ� ������ ����  ����(���۾�)    ####  �� ��� 
2 1 * * * /user1/oracle/cron_job/meip_magam_cron.sh > /user1/oracle/cron_job/log/meip_magam_cron_log 
���� ���� 1�� 2�п� �ش��۾��� ó���϶�� ���̴�. 

#### ���ǹ�ȣ ó��  ####  �� ��� 
0 8 * * * /user1/oracle/cron_job/reqbill.sh > /user1/oracle/cron_job/log/reqbill_08.log 
0 20 * * * /user1/oracle/cron_job/reqbill.sh > /user1/oracle/cron_job/log/reqbill_20.log 
���� ���� 8�� 0�п� �ش��۾��� ó���϶�� ���̴�. 
���� ���� 8�� 0�п� �ش��۾��� ó���϶�� ���̴�. 
==============================================================================================================

- ���� ��¥ ����  
/AccMgr/fundsMgt/remittance/buyingRemittanceP.jsp ���� @@@@@@@@ 
---------------------------------------------------------------------------------------------------------------------------- 

Calendar calendar = Calendar.getInstance(); 
String YESTERDAY = null; 
String tmpYY = null; 
String tmpMM = null; 
String tmpDD = null; 

//-- ���� ��¥ -- 
calendar.add(Calendar.DAY_OF_MONTH , -1);  

tmpYY = Integer.toString( calendar.get(Calendar.YEAR) );  
tmpMM = Integer.toString( calendar.get(Calendar.MONTH) + 1 ); 
tmpDD = Integer.toString( calendar.get(Calendar.DAY_OF_MONTH) ); 

if( tmpMM.length() < 2 ) tmpMM = "0" + tmpMM; 
if( tmpDD.length() < 2 ) tmpDD = "0" + tmpDD; 
YESTERDAY = tmpYY + tmpMM + tmpDD; 
==============================================================================================================

- ���Ű���/���� ���� ��ȸ���� ���� ���� ���� 
���� ���� ��ȸ 
���ֹ�ȣ:0100012004031900006 
��ǰ�ڵ�:001437741 
��ǰ��;SIO2 ����ũ ��  
���� : 500EA 
�԰� ��� ���� ��Ź �帳�ϴ�. 
---------------------------------------------------------------------------------------------------------------------------- 

SELECT * FROM T_PO_DTL 
WHERE COMPANY_CD ='01' 
AND MERCHANT_CD ='0001'  
AND PO_DT = '20040319' 
AND PO_NO = '00006' 
============================================================================================================== 

������������������� 2004.03.30(ȭ) �۾� �����������������
---> 06:40 ~ 23:00 

- �������� ����
- EJB ��� ��� 
210.123.133.56 ���� @@@@@@@@@@@  ==> ���� ���⼭ AccMgr.jar ������ ���� �� 211.233.5.108�� �ٿ� ���� 
---------------------------------------------------------------------------------------------------------------------------- 

1. C:\i3shop\Int\IntEjb\AccMgr\com\i3shop\ejb\MisMgr\AccMgrBean.java ����
2. \\210.123.133.56\i3shop\src\ejb\AccMgrEJB ���ÿ��� �Ʒ� 3�� ������ �����Ͽ� �ٿ� �ֱ��� 
AccMgr.java AccMgrBean.java AccMgrHome.java 
3. �͹̳� ���� ����(Ztem) 
IP: 210.123.133.56 i3shop/dacosystem 
4. ������ �ϱ� 
[i3shop@newint i3shop]$  su 
[i3shop@newint i3shop]$  i3shop566414 
[i3shop@newint i3shop]# cd src/ejb/AccMgrEJB 
[i3shop@newint i3shop]# ./build.sh AccMgr 
.jar ���� ������(---> \\210.123.133.56\i3shop\component\ejb\AccMgr.jar ���Ϸ� ����� ��) 
\\211.233.5.108\websphere\installedApps\i3shop.ear ����(AccMgr.jar) �ٿ� �ֱ� 
5. .108���� Websphere ���� �� ����� 
6. ����� --> �͹̳� ���� ����(Ztem) 
[i3shop@newint i3shop i3shop]$  cd /opt/WebSphere/AppServer/logs 
[i3shop@newint i3shop logs]$ tail -f Default_Server_stdout.log 
==============================================================================================================

������ 3.22 ~3.29 
������/���� 
==============================================================================================================

- ���Դܰ�(MEIP_DANGA) 
���ް���(GONGUP_AMT), ���Աݾ�(MEIP_AMT) = (���Դܰ�(MEIP_DANGA)*����(QTY)/1.1) 
�ΰ���(TAX_AMT) = ((���Դܰ�(MEIP_DANGA)*����(QTY))- ���ް���) 
�հ�ݾ�(TOTAL_AMT) = (���Դܰ�(MEIP_DANGA)*����(QTY)) 
==============================================================================================================

- ���ݰ�꼭 ���� �̷�(T_MAGAM_BILL_COLLECT) 
�۱� ���� �̷�(T_MAGAM__REMIT_COLLECT) 
==============================================================================================================

- sequence ��ü�� sequence ��ü�� �����ؼ� next value�� ���ϸ� �ȴ�... 
============================================================================================================== 

- ���� 2004-03-23  00144475 
==============================================================================================================

������������������� 2004.03.31(��) �۾� �����������������

- �������� ����
- ������� ���� �ο��� 
������� ����� 
ȸ���� - ������, ������ 
�¶����� - ����� 
---------------------------------------------------------------------------------------------------------------------------- 

- �¶����� ������ 
������������ ������, ������, ȫ��ȣ) 
���ι������� ������, ���ذ�, �̰浿 
==============================================================================================================

- DAY_MEIP_01_01 ==>(����, ���θ�) 
A.COMPANY_CD  A.RECV_MERCHANT_CD  A.RECV_DT  A.RECV_NO AS MEIP_NO, 
T_STOREOUT A 
�ֹ���ȣ = ȸ���ڵ�  �������ڵ�  ���� ����  ���� ��ȣ 

- DAY_MEIP_02_01 ==>(��ǰ, ���θ�) 
A.COMPANY_CD  A.RECV_MERCHANT_CD  A.RECV_DT  A.RECV_NO AS MEIP_NO, 
T_STOREOUT A 
�ֹ���ȣ = ȸ���ڵ�  �������ڵ�  ���� ����  ���� ��ȣ 

- DAY_MEIP_01_02 ==>(����, ����/��Ʈ) 
A.COMPANY_CD  A.MERCHANT_CD  A.STOREIN_DT  A.STOREIN_NO AS MEIP_NO, 
T_STOREIN A 
�ֹ���ȣ = ȸ���ڵ�  ���ڵ�  �԰� ����  �԰� ��ȣ 

- DAY_MEIP_02_02 ==>(��ǰ, ����/��Ʈ) 
A.COMPANY_CD  A.MERCHANT_CD  A.STOREIN_RI_DT  A.STOREIN_RI_NO AS MEIP_NO, 
T_STOREIN_RI A 
�ֹ���ȣ = ȸ���ڵ�  ���ڵ�  �԰��ǰ ����  �԰��ǰ ��ȣ 
==============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������