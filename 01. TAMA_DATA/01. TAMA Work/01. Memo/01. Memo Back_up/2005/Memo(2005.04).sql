

�����������������������������������������������������������
+---------------------------------------------// Memo(2005.04) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2005.04.01(��) �۾� ������������������� 
---> 07:50 ~ 20:00 

- ���θ� ����
- ����Ʈ ����(SQL GATE����): ���̽� �ſ�ī�� ũ�ν� üũ 
����(T) -> ����Ʈ(I) -> 
Import Wizard ���� 
���̺� ����: T_TEMP_NICE_CARD(���̽�_�ſ�ī��_����) ���� Ŭ�� -> Import ���� ->  
Import data Wizard ���� 
Import From: MS excel 
Source File Name: 2005_02(L&B).xls ���� 
Next(���� ������ �� ������ �� �Ѿ� ��) ->  
Fields: SEQ_NO - AĮ�� ���� 
Fields: ORDER_DT - EĮ�� ���� 
Fields: ORDER_NO_FULL - JĮ�� ���� 
Fields: AMT - GĮ�� ���� 
Next -> Base formats 
Next -> Execute -> OK 
==============================================================================================================

-- ���̽�_�ſ�ī��_���� ��ȸ  @@@@@ 
SELECT * FROM T_TEMP_NICE_CARD; 
------------------------------------------  COMMIT 

-- ���̽�_�ſ�ī��_���� ����  @@@@@ 
DELETE T_TEMP_NICE_CARD; 
------------------------------------------------------------------------------------ 

-- ���̽�_�ſ�ī��_���� ��ȸ @@@@@@@@@@@@@ 
SELECT A.ORDER_NO_FULL, B.ORDER_STS, A.AMT AS �ݾ�, 
       B.ORDER_DT, B.ORDER_NO, 
       B.RECEIVER_NM AS �����ڸ� 
FROM T_TEMP_NICE_CARD A, T_ORDER B 
WHERE A.ORDER_NO_FULL = B.COMPANY_CD  B.MERCHANT_CD  B.ORDER_DT  B.ORDER_NO     --�ֹ���ȣFULL 
  AND B.ORDER_DT >= '20050101' 
  AND B.ORDER_STS = '00'      --�ֹ�����(00:ī����ο���) 
ORDER BY B.ORDER_DT DESC 
; 
==============================================================================================================

-- 200503 ���� ���� �߻� ����Ÿ 
-- L&B: 2,351�� 
0100012005033100866(samsungcard), 0100012005030900546(samsungcard), 0100012005030700088(HDcard), 0100012005030700745(samsungcard) 
-- R&F: 1,256�� 
0100012005033100685(LOTTE_Gucard), 0100012005031000366(YAEWHANcard), 010001 2005030700535(samsungcard) 
-- LG���ŷ�: 1,408�� 
010001 2005033100473(LGcard), 01000120050306 00315(LGcard), 0100012005030400012(LGcard) 
==============================================================================================================

- �ſ�ī�� ���� 
���̽� http://www.nicepay.co.kr/nicepay/login.htm 
02)2187-2778 ����ȣ �븮(*@*.*) ---> 02)2187-2740 ������ �븮(i3shop���): * 
02-2187-2822 ����(*@*.*): ���������� 
L&B ==> ith3597/3597(������ �ڵ�: 3597, �����ڵ�:�ֽ�ȸ�� ���̾�����), LG���ŷ�: its2023/its2023 
R&F ==> LG���ŷ�: its2023/its2023(������ �ڵ�: 2023, �����ڵ�:�ֽ�ȸ�� ���̾�����3) 
     LG�̿� ��� ī��: itp3596/3596(������ �ڵ�: 3596, �����ڵ�:�ֽ�ȸ�� ���̾�����2) 
==============================================================================================================

- ISP UI ���� 
��������("/order/arInputS.jsp)���� 2�� �ʵ� �߰�  
<input type=hidden name= KVP_OACERT_INF value="NONE"> 
<input type=hidden name= KVP_CARD_PREFIX value="">  
==============================================================================================================

���� DB ===> 211.233.5.110   SID: IIISHOP IIISHOP/IIISHOP 
TEST DB ===> 211.233.5.110   SID: I3SHOP I3SHOP/I3SHOP  
--211.233.5.110   SID: OraHome92  IIIshop/i3shop  
==============================================================================================================

- ���¾�ü �˾� ���� 
����ڵ���� ���� �ȳ�(popup_20050401.html) 
http://support.i3shop.com 
==============================================================================================================

- [������ ����] 
������ڸ�.........�������..........��ġ���� 
ó������ 
A/S �ֹ��� ��Ȯ��  
������ڸ�......��ġ��û. ..................... 
==============================================================================================================

������������������� 2005.04.02(��) �۾� �����������������
---> 7:20 ~ 13:00 

- ���θ� ����
- �����ī �α��� ���� 
�ַ��� ������ ���� 
==============================================================================================================

- SMS���� ���� 
150�� ������ ���� ����(����) 
����PC���� ���� ����  
==============================================================================================================

������������������� 2005.04.04(��) �۾� �����������������
---> 7:20 ~ 20:00 

- ���θ� ����
- ���޺��� ���� �����(���� �ջ�) 
���α׷� - �������α׷� - �ý��� ���� - ��� 
A ����̺� ��ġ 
==============================================================================================================

- �������(www.mobilians.co.kr) ������ ����(*@*.*) 
T) 02-2192-2057 H) * 
�ӿ��� ����(*@*.*) T) 02-2192-2163 
==============================================================================================================

������������������� 2005.04.06(��) �۾� ����������������� 
---> 7:20 ~ 20:00

04.06(��) ~ 07(��): ����  
==============================================================================================================

������������������� 2005.04.08(��) �۾� �����������������
---> 8:00 ~ 20:00 

- ���θ� ����
- ���α׷� ��ġ 
A: ����̺� �߰�(���޺��� ���� �����) 
���α׷� - �������α׷� - �ý��� ���� - ��� 
==============================================================================================================

������������������� 2005.04.11(��) �۾� �����������������
---> 8:10 ~ 20:00 

- ���θ� ����
- Eclipse ����(����, ���θ�, ���¾�ü) 
�ϵ� C(40GB),  D(80GB) �и� 
����Ŭ ��ġ(C: ����̺�) 
==============================================================================================================

������������������� 2005.04.12(ȭ) �۾� �����������������
---> 7:30 ~ 23:00 

- ���θ� ����
- Eclipse ����(����, ���θ�, ���¾�ü) �Ϸ� 
==============================================================================================================

- �ſ�ī�� ���� ����(���� ����Ÿ ������) 
0100012005040900232: LGī�� ���� ���� 
==============================================================================================================

������������������� 2005.04.13(��) �۾� �����������������
---> 7:40 ~ 23:00 

- ���θ� ����
- ���θ� �˾� �ø��� ��� ����ȭ 
==============================================================================================================

- ����Ʈ���� �̰�(Package ���, ũ���� ����) 
==============================================================================================================

- �׽�ƮDB 
211.233.5.110 SID: I3SHOP iiishop/i3shop 
- ��DB 
211.233.5.110 SID: IIISHOP iiishop/iiishop 
==============================================================================================================

- �ſ�ī��� ������ �߱�(����) 
http://www.yessign.or.kr/card/ 
��ȿ�Ⱓ(20060412) 
==============================================================================================================
  
640210052309 
��ȣ: 9410 4683 9841 8016 08/07 

�˾�â ������ϴ�. 
B2B > ��Ȱ���� > ���� 
�������� : display\main\b2b\l_hair.jsp 
==============================================================================================================

- �Ƚ�Ŭ�� �ſ�ī�� �˾� ���� 
������ 051-305-0868 -> ��� �����帰���̿���. 
��ȭ�Ͻð� ������ �޸��Ź����� 
------------------------------------------------------------------------------------ 

- �Ƚ�Ŭ�� �ſ�ī�� �˾� ���� ��ó ��� 
����: 2005�� �ʿ� ���̽����� �Ƚ�Ŭ�� ������Ʈ�� �ϸ鼭 â�� ��鼭 ���� ���� �ϴµ�  
�̶� �ݵ�� ��(Y) üũ �ؾ߸� �Ƚ�Ŭ�� â�� ��� �� 
��ó: 
1. OS�� XP Home Editon �̸� 
�������(IE6.0) -> ����(T) -> �˾�����(P) -> �˾����� ���� �� ������ ���� 
2. ��Ÿ OS �̸� 
�ֹ��� �� �Ƚ�Ŭ�� üũ �� ������ ������ â�� ��鼭 ���� ���� üũ ���θ� ������ 
�ݵ�� ��(Y) üũ�� �Ѵ�. 
==============================================================================================================

- ���������� ���� 
������ (lgweb1) ---> ���� ������ �߱޹������� �ϴϱ�,  �̸��� �ּҰ� ����. 
==============================================================================================================

- Eclipse ���� 
���콺 ���� ===> SMS���� ����Ÿ ��� ��ȸ(/BizMgr/SMSMgr/smsResultListP.jsp) 
[DSET-50012]����Ÿ �ٿ�ε� �� ������ �߻� 
-------------------------------------------------------------------------------------------------------------------------------

�޺��ڽ� ���� ===> ���Ѽ��� ��ǰ ���/BizMgr/ItemMgr/LimitCount/buyLimitItemP.jsp) 
java.lang.NullPointerException 
at /BizMgr/ItemMgr/LimitCount/selectTimesPopB.jsp._jspService(/BizMgr/ItemMgr/LimitCount/selectTimesPopB.jsp.java:582) (JSP page line 5) 
at com.orionserver[Orion/2.0 (build 11018)].http.OrionHttpJspPage.service(.:68) 
-------------------------------------------------------------------------------------------------------------------------------

for(Iterator it = ((Vector)codeHash.get("data")).iterator(); it.hasNext(); ) {  
Hashtable row = (Hashtable)it.next(); 
} 
==============================================================================================================

 ������������������� 2005.04.14(��) �۾� �����������������
---> 8:20 ~ 19:00 

- ���θ� ����
- �ſ�ī�� ���� ����(���� ����Ÿ ������) 
0100012005041300124: LGī�� ���� ����(L&B) 
==============================================================================================================

- ���������� ����(���� ����) 
�̼���(jua33306) *-2231628  
==============================================================================================================

������������������� 2005.04.15(��) �۾� �����������������
---> 8:30 ~ 23:00 

- ���θ� ����
- �ſ�ī�� ���� ����(���� ����Ÿ ������) 
0100012005041400316: LGī�� ���� ����(L&B) 
0100012005041400286: LGī�� ���� ����(R&F) 
==============================================================================================================

- ���� ����
- SMS����(����Ʈ���� ��ġ �̺�Ʈ) 
���� -> Oracle DB ��ȯ �� ����(���� ��ȯ_VB ���α׷� ����) 
------------------------------------------------------------------------------------ 

- ���� -> Oracle DB ��ȯ 
���̹��� ���ۿ��� sqlldr �̶� �ĵ� �ڷᰡ ���� ���´�. 
==============================================================================================================

������������������� 2005.04.16(��) �۾� �����������������
---> 10:00 ~ 18:00(���� ����) 

- ���θ� ����
- ��ٱ��� ���� �帧�� 

1. ������� ����(S065) üũ 
2. �����ǰ����(L&B��ǰ, R&F��ǰ) üũ 
==============================================================================================================

- ������ �̻�(A/S�ֹ�->���ͱ�ȯ��(��ȯ���)) 
�ֹ���ȣ: 0100012004020600205 
00142161: ���ͱ�ȯ��(��ȯ���), 00137113: 52in ��Ҽ���  
==============================================================================================================

-ȣ���� ��ü(daegudiplays.co.kr) 
http://www.netsvill.net/ 
http://www.wafertop.com/infor/silicon.asp 
http://www.adsdyes.com/index.html 
==============================================================================================================

������������������� 2005.04.18(��) �۾� �����������������
---> 07:30 ~ 21:00 

- ���θ� ����
- �ſ�ī�� ���� ����(���� ����Ÿ ������) 
0100012005041500272: LGī�� ���� ����(L&B) 
==============================================================================================================

* ����: ������ (id:82gaja22 /*�ֹι�ȣ: 640627-20) 
* ī���ȣ: 4404-4644-6289-1005   ��Ƽ����ī�� (������) 
051-469-1395 
------------------------------------------------------------------------------------------------------------- 

- ����ö    mirzzang26    Management-M 
����ī�尡  ���簡 �ȵȴٰ� �Ͻ� -- ����ī�� ��ü��..�Ѥ�;;  
isp�� ����ߴٰ��Ͻø�.. ����â�� �ȶ�ٰ��Ͻ�  
���� ��ǻ�Ϳ� ������ �ִ��� �ƴϸ�.. �츮�� ���� �������� ������ ������ ���� ��û�Ͻ�   
����ó :  *  ����ö   
==============================================================================================================

http://www.j2eestudy.co.kr/lecture/lecture_read.jsp?table=j2ee&db=lecture0201_1&id=22 
==============================================================================================================

������������������� 2005.04.19(ȭ) �۾� �����������������
---> 07:30 ~ 21:30 

- ���θ� ����
- ��ٱ��� ���� 
��ٱ��� ���� �帧�� �ۼ� 
����, PV, VB ����(cartSelectDB_P.jsp) ��ȸ���� JOIN 
==============================================================================================================

- ���̵�, �н����� ã��(/customer/findPasswdfP.jsp) 
www.i3shop.co.kr �������� "���̵�, �н����� ã��" ��ư 
index_noble.jsp �� �ּ����� ó���� �ξ����ϴ�.  
==============================================================================================================

- nicepg.properties ���� ����(i3shop.war\WEB-INF\classes) 
#################################################### 
## 
## Log_File ��� ���� 
#################################################### 
## 
## LOG_PATH = Logfile directory 
## 
#LOG_PATH = /usr/local/jakarta-tomcat-4.1.12/logs/nicepg 
LOG_PATH =/home/i3shop/nicepg/log 
#\\211.233.5.108\i3shop\nicepg\log 
################################################### 
==============================================================================================================

- SID ���� 
WINDOWS ���������� ODCA(Oracle Database Administration Assistant)��  
���� SID �� ���� ���ּ���.. 
�׷��� ������ ������ �ǰ� ���߿� �������� ������ ȭ�� 
 �α� ȭ�� �� INIT(PARAMETER FILE) �� ���� �� �ֽð�  
 �ٽ� ODCA �� �� ������ ������.... �׷��� �ɰ̴ϴ�  
==============================================================================================================

������������������� 2005.04.20(��) �۾� �����������������
---> 07:30 ~ 20:00 

- ���θ� ����
- ��ٱ��� ��ȸ ���� ���� 
���� ���� ���� ����(T_CART, T_ITEM ����) 
- ���� ���� ����(/BizMgr/SaleMgr/SalePriceMgr/itemSellPriceP.jsp) 
���Ű�(BUYING_PRICE), �Ϲ��ǸŰ�(SALE_PRICE), ��������(RESELLER_PRICE), BV, PV 
==============================================================================================================

- �ſ�ī�� �α�(NICE) 
/opt/payment/nice/log 
==============================================================================================================

- SMS����(����Ʈ���� ��ġ �̺�Ʈ) 
1�� 842�� ������ 
2�� 223�� ���� 
==============================================================================================================

������������������� 2005.04.21(��) �۾� �����������������
---> 7:20~ 19:30 

- ���θ� ����
- ��ٱ��� ���� 
1. �ǸŻ��±���(SALE_STS_CL) ==> (03:INACTIVE,  05:DELETE) 
2. �����Ǹſ���Y �̰� �����Ǹż��� 0 
3. ī�װ��� ��뿩��(Y),  
4. �������� �Ϸ�����  
==============================================================================================================

���� DB ===> 211.233.5.110   SID: IIISHOP IIISHOP/IIISHOP 
TEST DB ===> 211.233.5.110   SID: I3SHOP I3SHOP/I3SHOP  
TEST DB ===> 211.233.5.110   SID: I3SHOP IIIshop/i3shop     ---> ��� ����  
--211.233.5.110   SID: OraHome92  IIIshop/i3shop 
==============================================================================================================

-  �˾� 
/popup/popup_20050421.html 
��ġ: L&B���� "���/����/�Ƶ�" ���忡���� �ߵ��� ���ּ���!  
==============================================================================================================

������������������� 2005.04.22(��) �۾� �����������������
---> 7:40~ 20:30 

- ���� ����
- SMS ���� ���� ���� 
WAS���� ��� ���� SMS 922�� ���� 
SMS ����(/BizMgr/SMSMgr//smsSend.jsp) 

Thread.sleep(1000); // 1�� ���� ���μ��� ����(1~2�ʰ� ����) 
------------------------------------------------------------------------------------------------------------ 

Remote Method ȣ�� �����Դϴ�. 
java.rmi.ServerException: RemoteException occurred in server thread; nested exception is:  
[�����ڵ�] : 71E 
[�����޼���] : �ý��� �����Դϴ�. 
�����ڿ��� �����Ͻʽÿ�. 
------------------------------------------------------------------------------------------------------------ 

- �̿���� ������ 
https://mcash.mobilians.co.kr/smsgw/ i3shop/757913 

- �������(www.mobilians.co.kr) ������ ����(*@*.*) 
T) 02-2192-2057 H) * 
�ӿ��� ����(*@*.*) T) 02-2192-2163 -2053 
==============================================================================================================

������������������� 2005.04.25(��) �۾� �����������������
---> 7:40~ 19:00 

- ���θ� ����
- ���Ի������ �ڷ�(���θ�) 
==============================================================================================================

- �ſ�ī�� �α�(NICE) 
���߰ŷ�(0204): �ֹ���ȣ(0100012005041500551) 
������ ���� ������ ���� �� �ӵ��� ��Ÿ ������ �ؼ� 2�� ���� Ȯ���� Ŭ�� ���� �� �߻� 
1��° ������ ���� ���������� ���εǰ� 2��° ������ ���� ���߰ŷ��� ���� ������ �� 
==============================================================================================================

- [����� ȸ��]
- 19:00 �Ĵ�(��븮, ������)  
- 24:00 �Ͱ� 
==============================================================================================================

������������������� 2005.04.26(ȭ) �۾� �����������������
---> 7:40~ 21:30 

- ���� ����
- SMS����(����Ʈ���� ��ġ �̺�Ʈ) 
3�� 185�� ����  
==============================================================================================================

- SMS���� 
McashSmsgwEA ���� socket ������ �ޱ� ���� ������ ���鼭 ����Ÿ�� ���̴� ������ �Ǵ�  
���� ����:  
[05-04-26   9:27:55:929 KST] 36c39c4d HttpTransport X server socket accept failure: ���� ������ �ʹ� ���� 
��å: Thread ���� 
------------------------------------------------------------------------------------------------------------- 

AckParam ap = mm.McashSmsgwEA(  ID, PWD, Title, 
     Key_no, SendPhoneNo, RecvPhoneNo, 
     SmsMsg, Remark, ResultCd 
  ); 
   
Thread.sleep(2000);	// 2�� ���� ���μ��� ����(2�ʰ� ����) 
==============================================================================================================

- ���θ� ����
- �ݽſ�� ����(/order/orderPutP_1.jsp) 
==============================================================================================================

- (K)���� ������ �з¹��(10�ο�) CRP-C1090FI 
145,000��(ų���� ����), 168,000 ��(���� ���� ����) 
==============================================================================================================

������������������� 2005.04.27(��) �۾� �����������������
---> 07:30 ~ 19:00 

- ���� ����
- ������ ���� �̰� �ڷ� ��� 
==============================================================================================================

- DB_CALENAR ���̺�  
2005�� 04�� 01�� ���� ==> �� 2,542�� 
==============================================================================================================

- ���̾�Ʈ (3�ο�) ����(i3shop)  ==> 351,000�� 
http://tamario.i3shop.cc/display/prd/prd.jsp?p_store_cd=S001&p_category_cd=T04090102&p_item_cd=00149087&p_display_cd=01 

- [�ڽ�Ʈ]���̸� ��ǰ�� �������� ����(3�ο�)(�Ｚ��)  ==> 287,200�� 
http://www.samsungmall.co.kr/catalog/general/detail.jsp?disp_class_cd=0902&goods_cd=410306160005&urlpath=0@0902@A01@C01@C01@F01 
==============================================================================================================

- �� ����ȸ ����
- 19:00 ���뱸 ��ü��(���뿪 2�� �ⱸ) 
- 19:30 Ƚ��(�����) 
- 22:00 ��â�� 
- 24:00 �Ͱ� 
==============================================================================================================

������������������� 2005.04.28(��) �۾� �����������������
---> 08:00 ~ 22:00 

- ���� ����
- ������ ���� �̰� �ڷ� ��� 
1. ��Ҽ��� �ֹ��ڷ�(��ǰ ����) 20030901 ~ 20040831   
�ֹ�: 4,422��, ��ǰ:452��  ===> 3,970��(MS-SQL) 
-- �ֹ�: 3,859��, ��ǰ: 446��  ===> 3,423��(Oralce) 
0100012004020700795 �Ա�����: 20041208 
0100012004021200577 �Ա�����: 20040924 
--------------------------------------------------------------------------------------------------------    

2. ���� �ֹ��ڷ�(��ǰ ����) 20030901 ~ 20050430 
�ֹ�: 1,872 ��, ��ǰ: 8 �� ===> 1,859 �� 

00142158: �����Ʈ����(1��)+����ī������(2��) ---->  925 �� 
00142159: �ױ�/UF�߰��縷����(3��) ---->  359 �� 
00142160: ����Ʈī������(4��)+ �ױ�īƮ���� ---->  505 ��   ====> 1,789 �� 
--------------------------------------------------------------------------------------------------------
 - ��Ÿ(����) 
00155473: sediment ���� (1��), 00155474: precarbon ���� (2��), 
00155475: UF ���߻縷 ���� (3��), 00155476: postcarbon ���� (4��) 
==============================================================================================================

- ���θ� ����
- 5�� ������ �� ��ȹ��(/display/event/W18010000/categoryP.jsp)  
/display/event/com/mainP.jsp?p_store_cd=S063&p_category_cd=W18010000&p_display_cd=51 
(/display/event/com/mainP.jsp ���� �б�) 

- ž �޴� ����(/main_tpl/top.jsp ���� ����) ==> S001: L&B, S013: R&F, S019: I3MART, S063: ��ȹ���� 
--------------------------------------------------------------------------------------------------------
<% 
String categorycd = ""; 
if(!p_category_cd.equals("")){ 
categorycd = p_category_cd.substring(0,3); 
} 

if(p_store_cd.equals("S063")&&(  categorycd.equals("U79")  categorycd.equals("U70")  categorycd.equals("U95")  
 categorycd.equals("V41")  categorycd.equals("V21")  categorycd.equals("V23")  categorycd.equals("V70")  
 categorycd.equals("V76")  categorycd.equals("V88")  categorycd.equals("W18"))){ 
%> 
<%  System.out.println("[/top.jsp]:i3Mart]  ===============>"); %> 
<jsp:include page="/main_tpl/topmenui3MartP.jsp" flush="true" /> 
<% 
}else{ 
%> 
<%  System.out.println("[/top.jsp]:[L&B]  ===============>"); %> 
<jsp:include page="/main_tpl/topmenuLnbP.jsp" flush="true" /> 
<% 
} 
%>  
==============================================================================================================

������������������� 2005.04.29(��) �۾� �����������������
---> 07:50 ~ 21:00 

- ���θ� ����
- ��ȹ�� �޴���(��ȹ�� ����) 
- 5�� ������ �� ��ȹ��(/display/event/W18010000/categoryP.jsp)  
/display/event/com/mainP.jsp?p_store_cd=S063&p_category_cd=W18010000&p_display_cd=51 
(==> /display/event/com/mainP.jsp ���� �б�) 

- 5�� ������ �� ��ȹ�� ��ǰ���(/display/prdlist/tpl/type51/itemListP.jsp) 
/display/event/com/mainP.jsp?p_store_cd=S063&p_category_cd=W18010100&p_display_cd=51 

- 5�� ������ �� ��ȹ�� ��ǰ���(R&F)(/display/event/W18010300/categoryP.jsp) 
/display/event/com/mainP.jsp?p_store_cd=S063&p_category_cd=W18010300&p_display_cd=51  

- 5�� ������ �� ��ȹ�� ��ǰ�� ����(/display/prd/tpl/type51/catalogP.jsp p) 
/display/prd/prd.jsp?p_store_cd=S063&p_category_cd=W18010101&p_display_cd=51&p_item_cd=00155233 
==============================================================================================================

- R&F ����- ����������-�����ɾ�(/display/prdlist/prdlist.jsp  
--> /display/prdlist/tpl/type11/itemListP.jsp --> /display/prdlist/tpl/type11/itemsListByListP.jsp) 
/display/sml/smlctg.jsp?p_store_cd=S013&p_category_cd=T03010100&p_display_cd=11 
- 52in��Ҽ��� ���Ͱ��� �ȳ� ������ 
/etc/52infilter/rnf52infilterP.jsp?p_store_cd=S013 
==============================================================================================================

- CVS �׽�Ʈ ����  
1. ��Ÿ(O) --> CVS����� Ž�� --> �ű�(N) -->  
��ġ 
ȣ��Ʈ(H): 210.123.133.218 
����� ���(R): i3shop 
���� 
�����(U): tamario 
��ȣ(P): tamario 
----------------------------------------------------- 

2. HEAD ����  
CCDOM ���� ������ Ŭ�� --> �������� üũ �ƿ�(A) Ŭ�� 
3. Orion ���� 
==============================================================================================================

������������������� 2005.04.30(��) �۾� �����������������
---> 07:50 ~ 21:30 

- ���θ� ����
- R&F ���� ����(/display/prdlist/tpl/type11/itemListP.jsp) 
http://test.mart.cc/display/sml/smlctg.jsp?p_store_cd=S013&p_category_cd=T03010100&p_display_cd=11 
==============================================================================================================

 %%   ��ȫ��   ks1128   Member 
���� ���� �Ͻôµ�  \ 5,124,200 �����ϴ� ������ ���鼭 ��Ƽ�������� Ȯ���ϴ� �ݾ��� �ʹ� ũ�ٰ� ����������  
������ ��� ���� �����ϴٰ��ߴ��� �Ѥ�;; 
[��Ƽ����  5485 9601 3253 8008  Ȳ����]  - ��Ƽ�������� ��ȭ�ش޶�ø�~ 
Ȯ���� ��ȭ ���  *   Ȳ����   
�� - �����    ksj777    Gold-M 
==============================================================================================================

- �ſ�ī�� ���� ����(���� ����Ÿ ������) ==> 20050425 ~ 20050430 
0100012005042900150: LGī�� ���� ����(R&F) 
0100012005042900083: LGī�� ���� ����(L&B) 
0100012005042600397: LGī�� ���� ����(R&F) 
==============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������