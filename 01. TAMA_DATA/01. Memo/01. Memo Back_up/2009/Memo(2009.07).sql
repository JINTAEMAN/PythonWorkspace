

�����������������������������������������������������������
+---------------------------------------------// Memo(2009.07) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2009.07.01(��) �۾� �����������������
---> 06:50 ~ 19:00 

- KIAT SM
1. ���� R&D ���������ý��� �м�
==============================================================================================================

- ����ᳳ�ΰ�ȹ �� ���� ��Ͽ��� ��ȹ ����� ������ ��
���İ��� --> ��������  --> ����� ���ΰ�ȹ �� ����
����ᳳ�ΰ�ȹ �� ���� ���(http://rnd.risnet.or.kr/pms/sahu/royaltydetails.do)
 1) �����(TJDRLDYD/mssky1)  --> ������ȣ: 70000235
��������: ���Ἲ ���� ����(ITEP_SADBA.SAPMNT_PLAN_PK)�� ���� 
����: �����ȯ����d���� ����(SEQ�� 0�� ���� 2�� �����ϸ� �ϳ� ����) 
 2) 062-602-7363 ��ȫ��(HSPAK1749/pak1749)  
--> ������ȣ: 70000918, 70000906, 70000894, 70000874, 70000869, 70000836, 10018071, 10015639  
 3) ����� �Է� �ȵ�
����ȯ(JHB6025/min3311) 052-219-8575
������ȣ: 70000366
--> ������ȣ: 70000467, 70000443, 70000399, 70000366, 70000278, 10025052, 10025049, 10025041, 10025040, 10025029
---------------------------------------------------------------------------------------------------------

- �򰡰��� -> ������ --> �����������: �������Tab 3�� ==> ��� ������ ������ ��
��â��(SALIMWINDOW/dusghk48)

- ������ ���� �ο�
���ؿ�(SUNHW/sun3721) 
---------------------------------------------------------------------------------------------------------

- ������ ȭ��(http://rnd.risnet.or.kr/pms/index.jsp) ����
--> ���� �� ���� Tab: Ŭ�� --> ������ȸ --> �������� ȭ�鿡��
������ȣ: 70002369�� �Է� �� ��ȸ �Ͻø� �Ʒ� ������ ����
�鳫��(NJBAEK/a09210) 
==============================================================================================================

- �̹��� ���� ��ġ 
�� ����(Webto B) IP: 110.14.182.194) ==> C:\TmaxSoft\WebtoB4.1.2\docs\pms-web\images
http://rnd.risnet.or.kr/pms-web/images/homepg/sub_topvisual_logo.gif 
==============================================================================================================

- ����� �� �� ���̱�(eclipse����)
â(W) --> ȯ�漳��(P) --> ����/����� --> �ܼ� --> �ܼ� ���� ũ��(����)(B): 999000
==============================================================================================================

 - TABLESPACE ����
 -- DB ���� ���� ��ȸ    @@@@@@@@@@@@@  
SELECT TABLESPACE_NAME, FILE_NAME 
FROM DBA_DATA_FILES 
WHERE TABLESPACE_NAME LIKE 'ITEP%'
--;
 -- DB�� ��� ����� ���̺����̽� ����  ��ȸ    @@@@@@@@@@@@@  
SELECT * 
FROM DBA_TS_QUOTAS
WHERE TABLESPACE_NAME <> 'EXAMPLE'    --���̺����̽���
--; 
-------------------------------------------------------------------------------------------------------------

-- TABLESPACE ���� ����[ITEP_RDBA]   =========>  SQL PLUS���� �۾� (system/manager01, kiattest)
SQL> CREATE TABLESPACE REGION_DATA_TS
DATAFILE 'E:\oracle\ora92\OHome\REGION_DATA_TS.dbs' SIZE 6M
DEFAULT STORAGE( INITIAL 10160K 
MINEXTENTS 1
MAXEXTENTS UNLIMITED  
PCTINCREASE 0);

 -- TABLESPACE ���� ����[ITEP_DBA] 
SQL> CREATE TABLESPACE ITEP_DATA_TS
DATAFILE 'E:\oracle\ora92\OHome\ITEP_DATA_TS.dbs' SIZE 6M
DEFAULT STORAGE( INITIAL 304K 
MINEXTENTS 1
MAXEXTENTS UNLIMITED  
PCTINCREASE 0);

 -- TABLESPACE ���� ����[ITEP_BBA]
SQL> CREATE TABLESPACE ITEP_BSN_DATA_TS
DATAFILE 'E:\oracle\ora92\OHome\ITEP_BSN_DATA_TS.dbs' SIZE 6M
DEFAULT STORAGE( INITIAL 1760K 
MINEXTENTS 1
MAXEXTENTS UNLIMITED
PCTINCREASE 0);

 -- TABLESPACE ���� ����[ITEP_SADBA] 
SQL> CREATE TABLESPACE SAITEP_DATA_TS
DATAFILE 'E:\oracle\ora92\OHome\SAITEP_DATA_TS.dbs' SIZE 6M
DEFAULT STORAGE( INITIAL 64K 
MINEXTENTS 1
MAXEXTENTS UNLIMITED  
PCTINCREASE 0);

 -- TABLESPACE ���� ����[ITEP_GBA]   -- ===> 5
SQL> CREATE TABLESPACE ITEP_GOV_DATA_TS
DATAFILE 'E:\oracle\ora92\OHome\ITEP_GOV_DATA_TS.dbs' SIZE 6M
DEFAULT STORAGE( INITIAL 242M 
MINEXTENTS 1
MAXEXTENTS UNLIMITED  
PCTINCREASE 0); 
  
 -- TABLESPACE ���� ����[ITEP_INFRA] 
SQL> CREATE TABLESPACE INFRANET_DATA_TS
DATAFILE 'E:\oracle\ora92\OHome\INFRANET_DATA_TS.dbs' SIZE 6M
DEFAULT STORAGE( INITIAL 64K 
MINEXTENTS 1
MAXEXTENTS UNLIMITED  
PCTINCREASE 0);

 -- TABLESPACE ���� ����[ITEP_URIC] 
SQL> CREATE TABLESPACE ITEP_DATA_URIC
DATAFILE 'E:\oracle\ora92\OHome\ITEP_DATA_URIC.dbs' SIZE 6M
DEFAULT STORAGE( INITIAL 64K 
MINEXTENTS 1
MAXEXTENTS UNLIMITED  
PCTINCREASE 0);

 -- TABLESPACE ���� ����[]
SQL> CREATE TABLESPACE INFRANET_INDEX_TS
DATAFILE 'E:\oracle\ora92\OHome\INFRANET_INDEX_TS.dbs' SIZE 6M
DEFAULT STORAGE( INITIAL 64K 
MINEXTENTS 1
MAXEXTENTS UNLIMITED  
PCTINCREASE 0); 

  -- TABLESPACE ���� ����[]
SQL> CREATE TABLESPACE ITEP_INDEX_TS
DATAFILE 'E:\oracle\ora92\OHome\ITEP_INDEX_TS.dbs' SIZE 6M
DEFAULT STORAGE( INITIAL 64K 
MINEXTENTS 1
MAXEXTENTS UNLIMITED  
PCTINCREASE 0); 

   -- TABLESPACE ���� ����[]
SQL> CREATE TABLESPACE REGION_INDEX_TS
DATAFILE 'E:\oracle\ora92\OHome\REGION_INDEX_TS.dbs' SIZE 6M
DEFAULT STORAGE( INITIAL 64K 
MINEXTENTS 1
MAXEXTENTS UNLIMITED  
PCTINCREASE 0); 

   -- TABLESPACE ���� ����[]
SQL> CREATE TABLESPACE ITEP_BSN_INDEX_TS
DATAFILE 'E:\oracle\ora92\OHome\ITEP_BSN_INDEX_TS.dbs' SIZE 6M
DEFAULT STORAGE( INITIAL 64K 
MINEXTENTS 1
MAXEXTENTS UNLIMITED  
PCTINCREASE 0); 
--------------------------------------------------------------------------------------------

-- DB�� ��� ����� ���� ��ȸ    @@@@@@@@@@@@@  
SELECT USERNAME, DEFAULT_TABLESPACE FROM DBA_USERS
WHERE DEFAULT_TABLESPACE <> 'SYSTEM'
--; 

-- ITEP_BBA ����
-- ALTER USER ITEP_BBA IDENTIFIED BY kiat1234  DEFAULT TABLESPACE ITEP_BSN_DATA_TS;
-- ITEP_BBA ����
-- DROP USER ITEP_SADBBA CASCADE; 
-------------------------------------------------------------------

-- ����� ����
-- ITEP_BBA �����
CREATE USER ITEP_BBA IDENTIFIED BY kiat1234  DEFAULT TABLESPACE ITEP_BSN_DATA_TS;
GRANT CONNECT, DBA TO ITEP_BBA;   
-- ITEP_BSN �����
CREATE USER ITEP_BSN IDENTIFIED BY kiat1234  DEFAULT TABLESPACE ITEP_BSN_DATA_TS;
GRANT CONNECT, DBA TO ITEP_BSN; 
-- ITEP_DBA �����
CREATE USER ITEP_DBA IDENTIFIED BY kiat1234  DEFAULT TABLESPACE ITEP_DATA_TS;
GRANT CONNECT, DBA TO ITEP_DBA;
-- ITEP_DEV �����
CREATE USER ITEP_DEV IDENTIFIED BY kiat1234 DEFAULT TABLESPACE ITEP_DATA_TS; 
GRANT CONNECT, DBA TO ITEP_DEV;
-- ITEP_GBA �����
CREATE USER ITEP_GBA IDENTIFIED BY kiat1234 DEFAULT TABLESPACE ITEP_GOV_DATA_TS; 
GRANT CONNECT, DBA TO ITEP_GBA;
-- ITEP_INFRA �����
CREATE USER ITEP_INFRA IDENTIFIED BY kiat1234 DEFAULT TABLESPACE INFRANET_DATA_TS; 
GRANT CONNECT, DBA TO ITEP_INFRA;
-- ITEP_RDBA �����
CREATE USER ITEP_RDBA IDENTIFIED BY kiat1234 DEFAULT TABLESPACE REGION_DATA_TS; 
GRANT CONNECT, DBA TO ITEP_RDBA;
-- ITEP_RIS �����
CREATE USER ITEP_RIS IDENTIFIED BY kiat1234 DEFAULT TABLESPACE ITEP_DATA_TS; 
GRANT CONNECT, DBA TO ITEP_RIS;
-- ITEP_SADBA �����
CREATE USER ITEP_SADBA IDENTIFIED BY kiat1234 DEFAULT TABLESPACE SAITEP_DATA_TS;
GRANT CONNECT, DBA TO ITEP_SADBA; 
-- ITEP_URIC �����
CREATE USER ITEP_URIC IDENTIFIED BY kiat1234 DEFAULT TABLESPACE ITEP_DATA_URIC;
GRANT CONNECT, DBA TO ITEP_URIC;  
==============================================================================================================
 
������������������� 2009.07.02(��) �۾� �����������������
---> 07:00 ~ 19:00 

- KIAT SM
1. ���� R&D ���������ý��� �м� 
- ����������� ����
- ������ ȭ��(http://rnd.risnet.or.kr/pms/index.jsp) ����
--> ���/���� --> �򰡰������ --> ��������Ȳ ȭ�鿡��
������ȣ: 70002369 �� �Է� �� ��ȸ �Ͻø� �Ʒ� ������ ����(�ƴ�: ���� ���� ȭ����)
�������� ���� ȭ���� ���� --> �ش� ���ϸ� ��ȸ���� ���� �߼�(��������_���������ý���.hwp)
�鳫��(NJBAEK/a09210) --> �������� ���� �� �شٰ� ����ȭ���� ������(ȫå�� KCC���� ������, �� ����)
��������: �輺�� ������(SJKIM/itep)
----------------------------------------------------------------------------------------------------

- resource ���� ���� ����
1. /itep-pms/common/include/BODY_TITLE.jsp ���Ͽ���
<%@ page import="itep.pms.common.application.*"%> 
 2. /WEB-INF/src/resources/ancm/naming_ko_KR.properties ���Ͽ���(��Ŭ������)
title.no=�����ȣ
title.type=������
title.title=�����
title.reg_date=������
title.media=�����ü  --> ������
==============================================================================================================

- ������� URL ���� ��û(/s_menu_flash.swf ���� �����û)
http://rnd.risnet.or.kr/pms/homepage/policy_content/mb_2100.jsp ==> 
http://infra.itech.go.kr/mb_notice/mb_2100.asp?m=m1
<param name='movie' value='/pms-web/images/homepg/s_menu_flash.swf'> 
==============================================================================================================

[����Ŭ DB dump]

 - ����Ŭ DB dump ����
1. DB�� ��� ����� ���̺����̽�
2. DB�� ����ڰ� �ʹ� ���Ƽ� DB dump import�� ������ ��
--------------------------------------------------------------------------------------- 
#KIAT(���� R&D TEST DB) --> ID/PWD: ITEP_RDBA/kiat1234
#KIAT(���� R&D �� DB)  (�ܺ�IP: 110.14.182.198 --> ����IP: 210.124.3.33)

SQL PLUS���� �۾�(system/manager01, kiattest)
system/manager01
-------------------------------------------------------------------

# TNSNAMES.ORA ����
#KIAT(���� R&D TEST DB)
kiattest =
  (DESCRIPTION =
    (ADDRESS_LIST =
      (ADDRESS = (PROTOCOL = TCP)(HOST = 210.124.3.37)(PORT = 1521))
    )
    (CONNECT_DATA =
      (SERVER = DEDICATED)
      (SERVICE_NAME = kiattest)
    )
  )
==============================================================================================================

������������������� 2009.07.03(��) �۾� �����������������
---> 06:50 ~ 19:00

- KIAT SM
1. ���� R&D ���������ý��� �м�

- �������(������: ��������)
2009�⵵ �������������߻�����ű����� �ȳ� ����
�����Է� �Ⱓ(��������) : 2009.8.10(��) ~ 8.19(��), 18:00����
��з���� ���� : 1. �������, 2. ��������, 3. ��������, 4. ������ȹ

1. ����������ȹ����о� �ű�����
������ : ���������� ��ǥ�� ���� ���̿�Ĩ ��� ���κ�  ���⿹�� �� ����
������� (���α���о�)--> 
��. �Ѱ� ����(�ܰ��ִ��Ѱ�����): ���������� ��ǥ�� ���� ���̿�Ĩ ��� ���κ� ���⿹�� �� ����
��. ���� ����: �索/������ ��ȯ ������ ���� ��ǥ�� ���� POCT �ý��� ���� �� ��ȿ�� ��
---------------------------------------------------------------------------------------------------- 
�輺�� ������(SJKIM/itep)  ==> ����ڷα��� ȭ��(http://rnd.risnet.or.kr/pms/index.jsp)
���� �� ���� Tab(2��° ��) --> ������� --> ������ȸ �� ���(h/ancm.do?actmode=list)

���������� ������� �Խ���
http://www.itech.go.kr/mb_notice/business_content/content_9055.asp
������� ����(�赿�� �븮)
http://infra.itech.go.kr/mb_notice/mb_2100.asp?m=m1
==============================================================================================================

-- ���� R&D ���������ý��� ���� ����
1. ������� --> 2. ���� --> 3. ���� �� --> 4. ���� --> 5. ���������(������) --> 6. �߰����� --> 7. �� 
--> 8. ��������--> 9. ��
==============================================================================================================

-- ���� ���� �ȵ�
������(MTR/mtr2047), ������ȣ: 70002369
������ �ܰ迡�� ������ ������ ����ϱ� ����
==============================================================================================================

- ���� ���Ϸ� ����(��� V9.5.03 ����): �ѱ� ���� �ذ�
Save Grid Contents Ŭ��(��â ����) --> Output: test.xls, Delimiter: Tab
==============================================================================================================

- STOCKS
��(3,155), ȭ(3,195), ��(3,185), ��(3,195), ��(3,100)
==============================================================================================================

������������������� 2009.07.06(��) �۾� �����������������
---> 07:00 ~ 19:00   --> �̰��� �ε� ���ⱹ(20:00)

- KIAT SM
1. ���� R&D ���������ý��� �м�
- �������(������: ��������) 
�輺�� ������(SJKIM/itep)  ==> ����ڷα��� ȭ��(http://rnd.risnet.or.kr/pms/index.jsp)
���� �� ���� Tab(2��° ��) --> ������� --> ������ȸ �� ���(h/ancm.do?actmode=list)

���������� ������� �Խ���
http://www.itech.go.kr/mb_notice/business_content/content_9055.asp
������� ����(�赿�� �븮)
http://infra.itech.go.kr/mb_notice/mb_2100.asp?m=m1
http://infra.itech.go.kr/admin/index.asp  --> SJKIM/itep
==============================================================================================================

 - ����ᳳ�ΰ�ȹ �� ���� ��Ͽ��� ��ȹ ����� ������ ��
���İ��� --> ��������  --> ����� ���ΰ�ȹ �� ����
����ᳳ�ΰ�ȹ �� ���� ���(http://rnd.risnet.or.kr/pms/sahu/royaltydetails.do) 
2. �ٸ��� �ƴ϶� ���������� �����帰�ٿ� ����
risnet���� ���İ���   ����� ���� ����Ḧ ������ ��ü���� �����ߴٰ� �����ؾ��ϴµ� 
÷�ε� �׸����� ������ ���� �ʽ��ϴ�. �׷��� 
����Ḧ ���� ��� �̳�����risnet�� ǥ�õ˴ϴ�.  
������ȣ : 70000202
������ : ������ ���ö��� ���д��� ������ �̿��� ������ CAM Ÿ�� Diff Case�� ��ǰ�� ���ȭ ����
--> ������ȣ: 70000188, 10027701, 10027620, 10027583, 10027457, 10027314, 10027285, 10027251, 10027244, 10027234
--> ������ȣ: 10027216, 10027201, 10027195, 10027055, 10024758, 10018271, 10018218, 10027251, 10017671, 10017641, 10027141

3. ��ȭ����� ������� ��������� �ƽþ���ũ�߰� ������� ����� ���ߺ� 
�����ϰ��� �մϴ�. �׷��� ȸ������� �����ּ����� �մϴ�. 
�ְ���� : ��ȭ���, ������ȣ : 70004089
������ : �ǷѺνľ���ȭ��ġ�� ����
ȸ�������� --> ��Źȸ�����
���� �� ���� --> ������ȸ --> �����̷� ȭ�鿡�� ��������� Tab���� Ȯ��(��������ڰ� ó���ؾ� ��) 
�泲���������ȹ�� ����� 055-259-3372   * 
==============================================================================================================

- ������������� ���ö ������ H)010-5397-5382, T) 6009-3727
==============================================================================================================

- ������� URL ���� ��û(/10.14.182.194/pms-web/images/homepg/s_menu_flash.swf ���� ����) 
http://rnd.risnet.or.kr/pms/homepage/policy_content/mb_2100.jsp ==> 
http://infra.itech.go.kr/mb_notice/mb_2100.asp?m=m1
<param name='movie' value='/pms-web/images/homepg/s_menu_flash.swf'> 
C:\Jeus42\webserver\docs\pms-web\common\js\s_menu_flash.swf
s_menu_flash.swf --> s_menu_flash-ver2.swf
http://rnd.risnet.or.kr/pms/homepage/main_T.jsp  --> /common/js/flash.js
==============================================================================================================

- ���ñ��� �� ����(�����) ==> ����ȯ *@*.* 
����: ���ñ��� �� ����(http://rnd.risnet.or.kr/pms/homepage/store_content/td_form.jsp)
���ñ��� �� ���� �ش� ������ Ŭ�� �ϸ� CMS�� ������ ������ ���� �ٿ��� �ȵ˴ϴ�. 
����: /itep-pms/homepage/store_content/td_form_list.jsp ���Ͽ��� 
@ page import="cwise.cms.content.*"  ����
����2: cms ������ ���谡 ������

÷�������� WEBTOB������ 
 \TmaxSoft\WebtoB4.1.2\docs\pms-web\homepage\store_content �Ʒ��� �ֽ��ϴ�. 
 ���ϸ��� ���ðų� ����ø� ���� � �������� �ƽǲ�����. 
==============================================================================================================

- �Խ��� ���� �������(iframe: ASP����) --> /homepage/biz_content/GogoBoard.jsp ���Ͽ���
<iframe src="http://infra.itech.go.kr/mb_notice/mb_2100_other.asp?m=m1" name="i_kait2" width="100%" 
height="600" frameborder=no scrolling=yes ></iframe>
- ��ü �������
http://rnd.risnet.or.kr/pms/homepage/biz_content/GogoBoard.jsp 
- �ֿ�������(����)
http://rnd.risnet.or.kr/pms/homepage/main_T.jsp  
==============================================================================================================

- ���� �� ����
���ؿ�(SUNHW/sun3721) ������ 3735  ===> ���� Ȯ��
�����(SHKIM/kshkim) ������ 3733  ===> ���� �ο�
������ȣ: 7004896 
==============================================================================================================

������������������� 2009.07.07(ȭ) �۾� �����������������
---> 07:00 ~ 14:30   --> KIAT ���ʼ�Ÿ�� ���(����IC ��ó), KIAT ���꼾�� ���ҽ�

- KIAT SM
1. ���� R&D ���������ý��� �м�
- �������(������: ��������) 
�輺�� ������(SJKIM/itep)  ==> ����ڷα��� ȭ��(http://rnd.risnet.or.kr/pms/index.jsp)
���� �� ���� Tab(2��° ��) --> ������� --> ������ȸ �� ���(h/ancm.do?actmode=list)

���������� ������� �Խ���
http://www.itech.go.kr/mb_notice/business_content/content_9055.asp
������� ����(�赿�� �븮)
http://infra.itech.go.kr/mb_notice/mb_2100.asp?m=m1
http://infra.itech.go.kr/admin/index.asp  --> SJKIM/itep
==============================================================================================================

- ������� �׽�Ʈ(KIAT ���ʼ�Ÿ) ���� ���� 
1. �¶������� --> �������� --> ������ûȭ�鿡�� [���� ���� �޴��� �ٿ�ε�] �̹���ȭ
http://rnd.risnet.or.kr/pms/subject/subjectApp-list.do?actmode=list
(http://rnd.risnet.or.kr/pms-web/images/btn_reg.gif --> btn_reg.gif)
2. ��ü���� �ٿ� ��� �߰��䱸(���� ����)
3. Ű����(�� ���� �ֱ�)
4. �����(�������� ��): �ѻ���� �Է�(�ǹ�) 
5. ������� ��ũ�� ȭ��
http://kiat.or.kr/02_publicity/notice_list.asp?sdata=0001030201 ===> �ֿ�������
110.14.182.82  --> administrator/dufmadusrk(��������)
==============================================================================================================

- �ѱ������������ SM ��Ʈ��(IP �ּ�)
IP: 192.168.12.54 G.W: 192.168.12.1
S.M: 255.255.255.0 DNS: 168.126.63.1
- KIAT ���ʼ�Ÿ(����IC ��ó)
IP: 10.0.1.119 G.W: 10.0.1.1
S.M: 255.255.255.0 DNS: 168.126.63.1, 164.124.101.2
��Ʈ��ũ: kmac0301
��Ʈ��ũ Ű: 76581283821738779255471085
==============================================================================================================

- KIAT ���ʼ�Ÿ(�����뿪 --> ����IC ��ó(���� ��Ʈ ���� ����))
�����߰�.����̼��� --> ���ʵ�����������Ʈ(461��, 641��)
- KIAT ���ʼ�Ÿ(������ȭ�� --> ����IC ��ó)
������ȭ��(141��)  --> ����ѽž���Ʈ  --> �ź��Ｚ����Ʈ.SK��������(ȯ��)(406��)  --> ���ʱ�û
==============================================================================================================

- �¿��������� ��û �� RFID �±� �߱�(���Ǳ� �� �ֹμ��� �湮)
1. ����
�¿��������� ��û��� �� ��ƼĿ(�����±�)�� ���� ��,�� ����â�� ������ ������ ���Ͽ� �پ��� �μ�Ƽ�� ���� 
�¿��������� �������� ��Ű�� ���� ������ Ȯ��(�ڵ����� : 3ȸ�̻�, ����� : 1ȸ�̻�)�ǰų� ��ε� �����±׸� 
�̺��� �Ǵ� �Ѽսÿ��� �ڵ����� �� ȥ������� ����� ����� ���ο��� ����
2. ����
- �ڵ����� 5% ����
- �ڵ�������� �� 2.7%����(�޸���ȭ��)
- ���������� ��� 20%����
- �����ڿ켱������ ��� 20%����
3. ��Ÿ
- ���޿���: ȭ����
- �ڵ�����Ϲ�ȣ: 21�� 6365
- �����ȣ: KMHDN41APYU030174 D16 
==============================================================================================================

������������������� 2009.07.08(��) �۾� �����������������
---> 07:00 ~ 19:00   --> DDOS (Distributed Danial Of Service) ����(������ �� �ֿ����Ʈ ���� �Ҵ� ����)

- KIAT SM
1. ���� R&D ���������ý��� �м�
- �򰡰��� -> ������ --> �����������: �������Tab 3�� ==> ��� ������ ������ ��
��â��(SALIMWINDOW/dusghk48)  --> 051-974-9122
������ȣ: 10017480, 10017464, 10017481
������: ���� �׿� ž�� ������ ���� �ý��� ����
���������̷� ���� ���̺��� ��������з�(4511:������������ȹ����, 4521:�������������ȹ����) ������
===> ��������Tab���� ������(�����������(������))

-- ������������ȹ ��ȸ   @@@@@@@@@@@@@
SELECT PLAN_ID ������ȹ,  BUSI_ID �������ü, DUTY_CLSF ����������ȹ������������ 
FROM RDUTY_SBJCT DS
WHERE DS.SBJCT_ID = '10017480'    --������ȣ
    AND DS.DUTY_CLSF IN ('4521','4511')      -- ���/�������� ��ȹ����
    AND DS.AVAIL_EDATE = '99991231'   --70009291
--; 
-- ������������ȹ ���� ����    @@@@@@@@@@@@@ 
-- DELETE FROM RDUTY_SBJCT DS
WHERE DS.SBJCT_ID = '10017480'    --������ȣ
    AND DS.DUTY_CLSF IN ('4521','4511')      -- ���/�������� ��ȹ����
    AND DS.AVAIL_EDATE = '99991231'   --70009291
--; 
==============================================================================================================

- ������ �߰�
���� : ���� (680202- xxxxxxx) 
�Ҽ� : ����������п� ���ؼ��꿬���� 
ȸ������ ��ϵǾ� ������ ��ȹ�� ���������� �߰�
-- �������߷��̷� ���   @@@@@@@@@@@@@
-- INSERT INTO JDGE_HSTR 
VALUES ('12915624','0','','99991231', to_char(sysdate,'yyyymmdd'), '10071297', SYSDATE,'R000',100)
--;  
-- �������߷��̷� ����   @@@@@@@@@@@@@ 
-- UPDATE JDGE_HSTR 
SET AVAIL_EDATE=to_char(sysdate-1,'yyyymmdd'), 
    REG_TIME=SYSDATE 
WHERE MBR_ID='12915624'  --�ǹ߷���ID
    AND ANNC_CLSF='0' 
    AND DEPT_ID = 'R000' 
    AND AVAIL_EDATE = '99991231'
--;  
-- �������߷��̷� ���   @@@@@@@@@@@@@
-- INSERT INTO JDGE_HSTR 
VALUES ('12915624','5','','99991231', to_char(sysdate,'yyyymmdd'), '10071297', SYSDATE,'R000',100)
--;  
-- �������߷��̷� ��ȸ   @@@@@@@@@@@@@
SELECT * 
FROM RJDGE_HSTR A
WHERE MBR_ID = '12915624'  --�ǹ߷���ID 
--; 
==============================================================================================================

- �������Tab : ����������ȸ(������)
������ȣ : 70002317
�ְ���� : �����ɹ�Į
��簣�� : ����ȭ(JONG28/ddc9090) --> 042-930-2862  
����: �����򰡰�� �����ǰ߼��� ����� �ݿ��� �ȵ�  
����: ���������̷� ���� ���̺��� P.DCSN_TECH_RATE(Ȯ���������)�� 0��
- �ϰ� ���ΰ�ȹ��
http://localhost:8080/pms/estm/result_print.do?actmode=batch&sbjct_id=70002317&seq=32
-- ���������̷� ���� ��ȸ   @@@@@@@@@@@@@
SELECT SBJCT_ID ������ȣ, P.DCSN_TECH_RATE Ȯ��������� 
FROM RSBJCT_PRGS P
WHERE SBJCT_ID = '70002317'  --������ȣ
    AND P.DUTY_CD = '6623' -- ����������
ORDER BY SEQ DESC 
--;  
-- ���������̷� ���� ����   @@@@@@@@@@@@@  ===>  DCSN_TECH_RATE NULL --> 20%
-- UPDATE RSBJCT_PRGS
SET DCSN_TECH_RATE = '20' --Ȯ���������(AND DCSN_TECH_RATE = NULL)
WHERE SBJCT_ID = '70002317' --������ȣ
    AND P.DUTY_CD  = '6623 -- ����������
--; 
2. �ְ�������� ������� �����Է��� �ϴµ� ���������� �ְ������ ���� ���� 
------------------------------------------------------------------------------------- 
- ����Ϸ� ����� ���� ���� ��û
������ȣ : 70002317
����Ϸ�(2-->1)....�߰����� --> ���������� �Ѿ����
http://localhost:8080/pms/estm/result_sbjct.do?actmode=fin_region_main&plan_id=70009292&sbjct_id=70002317&seq=32 
- ���� �� �ϴ� ��ȭ��ȣ ���� ��û(�̹����� �Ǿ� ����): �������������ȹ�� ����ȭ ������
����: 042-471-0262  --> 042-930-2862
/pms-web/images/homepg/copyright_center.gif
==============================================================================================================

- �Ѱ�å���� �������� ������ ��(������ȣ: 70002234) --> ����� ������055-259-3372
����: ȸ�������� �򰡿����� �� �޾ƿ� ������ ����(����/���ǽ�û --> ������� --> �����û����)
--ȸ�������� �̰��� �� �� ������ �� �� �����ϴ�. �̱⿵ ������������ ��û�� �ؾ��� �� �մϴ�.
SELECT  *  FROM MEMBER M
WHERE  M.MBR_ID IN ('12891815')      --������ID  
==============================================================================================================

-- ���������̷� ������ 2�� �̻��� �� ��ȸ @@@@@@@@@@@@@ 
SELECT P.*
FROM RSBJCT_PRGS  P
WHERE ROWID > ( SELECT MIN(ROWID) FROM RSBJCT_PRGS  B
                WHERE B.SBJCT_ID = P.SBJCT_ID
                    --AND B.DUTY_CD  = P.DUTY_ID  
  ) 
  AND P.DUTY_CD IN ('9323')   --��������з�(9323:������������(����))
  AND P.DUTY_CD NOT IN ('4511', '4521')
ORDER BY P.SBJCT_ID DESC
--;
==============================================================================================================

- ���� �� ����
���ؿ�(SUNHW/sun3721) ����: 3735  ===> ���� Ȯ��
�����(SHKIM/kshkim) ������ ����: 3733  ===> ���� Ȯ��
������ȣ: 7004896 
==============================================================================================================

- �ҽ� �ڸ�Ʈ ó��(����Ŭ Toad 9.5.0.31 ����)
���� ���� --> ���콺 �����P Ŭ�� --> Comment Code --> Comment Block(ó��)
==============================================================================================================

- ��ȹ��, ������, ������
�Ϲݻ����: ����å����, ������û��, ������, ��Ÿ����ڵ� �� ��Ī
�Ϲݰ�����: ����ڿ���, �������������ȹ��, �������򰡿�, ������������ȸ�� �ٹ��ϴ� ���� ġ¡
==============================================================================================================

������������������� 2009.07.09(��) �۾� �����������������
---> 07:00 ~ 19:00

- KIAT SM
1. ���� R&D ���������ý��� �м�
  
 - ���ñ��� �� ����(�����) ==> ����ȯ(*@*.*)
���� �ڷ��(FORM_ATTACH_DOC) ���̺� ����
FIRST_IN: �������1, SECOND_IN: �������2, GUBUN_IN: �������3 
���� �ڷ�� --->  439 167  197
http://localhost:8080/pms/qanda/qanda.do?actmode=list2
Q&A 
http://localhost:8080/pms/qanda/qanda.do?actmode=list 
÷�������� WEBTOB������ \TmaxSoft\WebtoB4.1.2\docs\pms-web\homepage\store_content 
http://kiat.or.kr/02_publicity/notice_list_01.asp?sdata=0001030204
==============================================================================================================

- �ֿ�������(����)
http://rnd.risnet.or.kr/pms/homepage/main_T.jsp  
�ֿ�������: iframe name=i_kait_main, �ֿ�������:  iframe name=i_kait_main2
- ��ü �������
http://rnd.risnet.or.kr/pms/homepage/biz_content/GogoBoard.jsp
- ��������
http://rnd.risnet.or.kr/pms/homepage/biz_content/GojiBoard.jsp
==============================================================================================================

- �÷��� �޴� ���� ��û
1. �ֿ�������
 1) ��ü������� --> http://rnd.risnet.or.kr/pms/homepage/biz_content/GogoBoard.jsp
2. ������
 1) �������� --> http://rnd.risnet.or.kr/pms/homepage/biz_content/GojiBoard.jsp
 2) FAQ(��â �߸� �ȵ�: Q&A�� ����) --> http://rnd.risnet.or.kr/pms/faq/faq.do?actmode=main
  FAQ ���� ���ֱ�(/itep-pms/WEB-INF/config/faq/biz-faq-config.xml) ==> accessMenuId="${LOGIN}" ����
  FAQ ù ȭ�� �α��� ���� ��ȸ �����ϰ� ����
 3) Q&A(���������� ó����) --> http://rnd.risnet.or.kr/pms/qanda/qanda.do?actmode=list  
==============================================================================================================

- ��Ź������� ����
�����(SHKIM/kshkim) ������ 3733  ===> ���� �ο�
(�򰡰��� --> ��������� --> ��â����: ��Ź������� ����)
var nxt_calc = getFloatCashValue(frm.elements["nxt_calc"]);   ===> ��Ͽ��� Ȯ���ϸ� ���� �ȳ�
==============================================================================================================

- �Ǽ��� ����
1. ���İ��� --> ��������  --> ����� ���ΰ�ȹ �� ����(���� �ο�) 
/itep-pms/WEB-INF/sql/sahu/sql-sahu-royalty.xml
SELECT (CASE WHEN NDEPT_ID LIKE 'R%' THEN NDEPT_ID
WHEN NDEPT_ID ='M998' THEN 'R%'      --�μ�ID �߰�(M998:�ѱ������������)
WHEN NDEPT_ID = (SELECT DEPT_ID FROM DEPT_V
WHERE DEPT_ID = NDEPT_ID
CONNECT BY PRIOR DEPT_ID = PRE_DEPT_ID
START WITH DEPT_ID = 'M000') THEN 'R%' 
 END)
FROM MEMBER
WHERE MBR_ID = ?    --ȸ��ID
FAQ ���� ���ֱ�(/itep-pms/WEB-INF/config/faq/biz-faq-config.xml) ==> accessMenuId="${LOGIN}" ����
==============================================================================================================

- �ְ�ȸ��(ó�� ����)
1. ���� �ݿ� 14:00 �ְ�ȸ�� �ǽ�
2. ���� ����� �ľ�
 1) PECOM �ý���(���±� ����, ���� �븮)
 2) Intranet �ý���(����� ����)
 3) PMS �ý���(�η¾缺: ������, �̹̿�)
 4) ������� �ý���(���¸�, ������ �븮, �赿�� �븮)
==============================================================================================================

������������������� 2009.07.10(��) �۾� �����������������
---> 06:50 ~ 19:00   --> �赿�� �븮 ����

- KIAT SM
1. ���� R&D ���������ý��� �м�
 - ���ñ��� �� ����(�����) ==> ����ȯ(*@*.*)
���� �ڷ��(FORM_ATTACH_DOC) ���̺� ����  --> form_attach
FIRST_IN: �������1, SECOND_IN: �������2, THIRD_IN: �������3 
���� �ڷ�� --->  439 167  197
http://localhost:8080/pms/qanda/qanda.do?actmode=list2
Q&A 
http://localhost:8080/pms/qanda/qanda.do?actmode=list 
÷�������� WEBTOB������ \TmaxSoft\WebtoB4.1.2\docs\pms-web\homepage\store_content 
http://kiat.or.kr/02_publicity/notice_list_01.asp?sdata=0001030204

System.out.println("[/qanda/QandaDAO.java]:[getForm_attachList()]:[TEST]"); 

- ��� ��� ����(/qanda/struts-qanda-config.xml ���Ͽ���
<forward name="list2" path="/board/form_attach_doc/list.jsp" contextRelative="true" />
contextRelative �Ӽ��� true �̸� path ��η� ��

- bean name ����(�ش� /config\qanda ���� biz-qanda-config.xml ���Ͽ��� ����)
<form-beans>
<form-bean name="boardForm" type="org.apache.struts.action.DynaActionForm">
<form-property name="firstIn" type="java.lang.String" />
</form-bean>
</form-beans>
==============================================================================================================

- ����ī��翡 �ѱ� ����Ÿ ��û(�Ѹ������ý��� ����ȣ)
1. 09�� �ű� ������ ��� ����(�ٳ⵵ ����) �и�
- Ư�� �ʵ� ������ �Ѱ� �ֽø� �˴ϴ�. (ex. '�ű�', ���')
2. ��� ����(�ٳ⵵ ����) �� �ܰ谡 �ٲ�� ������ �űԷ� ó�� 
==============================================================================================================

- ��Ʈ�� ����Ʈ ��ġ ����(uesetup.exe)  
ie7, ie8�� �浹�� ����Ŵ ==> (ie7, ie8 ���� -> C:\WINDOWS\ie7\spuninst\spuninst.exe ����)
02. UltraEdit-v10.00c �ٽ� ��ġ(uesetup.exe ���� ��)
�� ����: ����(V) --> ���� ����(C): ���
==============================================================================================================

- STOCKS
��(3,180), ȭ(3,320), ��(3,340), ��(3,210), ��(3,200)
==============================================================================================================

������������������� 2009.07.13(��) �۾� �����������������
---> 06:50 ~ 19:00 

- KIAT SM
1. ���� R&D ���������ý��� �м�
 - ���ñ��� �� ����(�����)
���� �ڷ��(FORM_ATTACH_DOC) ���̺� ����  --> form_attach
FIRST_IN: �������1, SECOND_IN: �������2, THIRD_IN: �������3 
���� �ڷ�� --->  439 167  197
http://localhost:8080/pms/qanda/qanda.do?actmode=list2
Q&A 
http://localhost:8080/pms/qanda/qanda.do?actmode=list 
÷�������� WEBTOB������ \TmaxSoft\WebtoB4.1.2\docs\pms-web\homepage\store_content 
http://kiat.or.kr/02_publicity/notice_list_01.asp?sdata=0001030204

- ���� �ڷ�� ���
INSERT INTO FORM_ATTACH_DOC (
CATEGORY, NO, FIRST_NO, PARENT_NO, DEPTH,
SEQ, TITLE, WRITER, REG_DATE, BUSI_PROC,
FAQ_CLSF, FIRST_IN, SECOND_IN, THIRD_IN, ATTACH_NM,  
ATTACH_OLINK)
VALUES(?, ?, ?, ?, ?, 
?, ?, ?, ?, ?,
?, ?, ?, ?, ?,
?)]
==============================================================================================================

- �޺� �ڽ� innerHTML���� ó��
function goCate(form, p_index,  p_code) { 
var row_html ='';

if (p_index == 1) {   // firstIn �̸�
if (p_code == 439) {   // firstIn �������������߻��(439) ���� ���� ���
row_html = '<select name="secondIn" class="input_all">'; 
row_html += '<option value="">����</option>';  
  row_html += '<option value="167">���������߻��</option>'; 
  row_html += '<option value="441">����������߻��</option>';
  row_html += '<option value="442">����������߻��</option>';   

} else {   // firstIn ����������񽺻��(443) ���� ���� ���
row_html = '<select name="secondIn" class="input_all">'; 
row_html += '<option value="">����2</option>';  
  row_html += '<option value="445">�������</option>'; 
  row_html += '<option value="446">�ű������</option>';
  row_html += '<option value="447">�ؿܸ�����</option>';   
} 
} 
document.getElementById("div_selectBox").innerHTML = row_html; 
}  

<table class="list" width="100%" border=0>
  <tr>
  <td width="40%">�������������
<select name="firstIn" class="input_all" onChange="return goCate(this.form, 1, this.value)">
  <option value="">����</option>
  <option value="439" <%=(firstIn.equals("439")? "selected":"")%>>�������������߻��</option>
  <option value="443" <%=(firstIn.equals("443")? "selected":"")%>>����������񽺻��</option>
</select></td>
<td id="div_selectBox" width="20%">
<select name="secondIn" class="input_all">
<option value="">����</option>
  <option value="167" <%=(secondIn.equals("167")? "selected":"")%>>���������߻��</option> 
  <option value="441" <%=(secondIn.equals("441")? "selected":"")%>>����������߻��</option> 
  <option value="442" <%=(secondIn.equals("442")? "selected":"")%>>���ʱ�����߻��</option> 
</select> 
 </td>  
==============================================================================================================

- �ǹ����׺� ���೻�� �� �ټ��������೻���� Ȯ�� ����(���� �� ���� --> ������ȸ --> �������忡�� ��ȸ ��
�ֹ���ȣ Ŭ��(��â�� ��)): ����� ������ H)010-8882-8035, T)6009-3729
��������: itep.pms.estm.common.CommonSB.getSbjctReferInfo(ActionForm f) : �Ƣ� DB exception �߻����� �Ƣ� 
QueryException : [ORA-00980: ���Ǿ��� �ؼ��� �Ұ����մϴ� ]
����: ITEP_SADBA(���ջ��İ���) ����ڿ� SMSUBJECT ���̺� �� ����(���� �� ����Ÿ �� ������ �� �ɷ� ����)
SELECT * FROM DBA_SYNONYMS
WHERE SYNONYM_NAME = 'SMSUBJECT'
SELECT * FROM SMSUBJECT 
 1. Synonym ����
CREATE [PUBLIC] SYNONYM synonym_name FOR object_name; 
- PUBLIC : ��� ����ڰ� ���� ������ �ó���� �����Ѵ�.
- PUBLIC  �ó���� ���� �� ������ DBA���� �� �� �ִ�.
- ��� ����ڰ� ���� ������ ��ü�� ����� ���ؼ��� PUBLIC Synonym ������ ���Ҿ� ������ �ο��Ǿ�� �Ѵ�. 
   (GRANT SELECT ON owner.object_name TO PUBLIC)
 2. Synonym ����
DROP SYNONYM synonym_name; 
SMsubject �� �߼ұ��û ������߻���̹Ƿ� �̰���� ���Ե��� �ʽ��ϴ�. 
==============================================================================================================

- ���� 3���� ����  ===> �̻� ����
�ֹ���ȣ:10024382, (��)��ī ������(*/password), 055-371-3421
�ֹ���ȣ:10024356, (��)��ũ Ȳ��ȣ(DACCHJH/aa7989) ����, 055-281-2528
==============================================================================================================

������������������� 2009.07.14(ȭ) �۾� �����������������
---> 07:40 ~ 18:30 --> �ι����Ʒ�(8����, ���Ǳ� �����ʱ�(T:876-4061)(07:00 ~ 07:10)), �������� ���

- KIAT SM
1. ���� R&D ���������ý���
 - ���ñ��� �� ����(�����)
���� �ڷ��(FORM_ATTACH_DOC) ���̺� ����  --> form_attach
FIRST_IN: �������1, SECOND_IN: �������2, THIRD_IN: �������3 
���� �ڷ�� --->  439 167  197
http://localhost:8080/pms/qanda/qanda.do?actmode=list2
1. Q&A
http://localhost:8080/pms/qanda/qanda.do?actmode=list
÷�������� WEBTOB������ \TmaxSoft\WebtoB4.1.2\docs\pms-web\homepage\store_content 
http://kiat.or.kr/02_publicity/notice_list_01.asp?sdata=0001030204  
SELECT *
FROM BOARD_HEADER
WHERE CATEGORY = /*[#1=QANDA]*/ 'qanda' 
- �Խ��� 4���� ���̺�� ������(BOARD_CATEGORY, BOARD_HEADER, BOARD_CONTENTS, BOARD_FILE)
--> 2���� ���̺�� ����(���� �ڷ��(FORM_ATTACH_DOC))
2. FAQ 
http://rnd.risnet.or.kr/pms/faq/faq.do?actmode=main
SELECT *
FROM BOARD_HEADER
WHERE FAQ_CLSF = /*[#1=01]*/ '01'  --FAQ����(01:�������, 02:�ش���, 03:����Ʈ�̿�)
==============================================================================================================

- �������� �м�(/110.14.182.82 IP����)
http://localhost:8080/pms/qanda/qanda.do?actmode=list
ITEP_DBA ��� �����Ϳ� �������±�����߻��
response.write("[/notice_list.asp]:[where]"+ where +"<BR>")
- �Խ��� ���̺�: ACTKOR, NOTICEKORFILE, CODE
SELECT A.* 
FROM ( SELECT B.* , rownum rnum FROM 
( SELECT num, subject, 
(select actName from actkor where actCode=workkind) as workkindName, 
(select cdName from code where cdCode=datakind) as datakindName, viewnum, viewuse, regDate, 
(SELECT count(*) FROM noticekorfile WHERE noticenum=num) as fileCount FROM noticekor 
WHERE not num is null and viewuse='Y' and datakind='0001030201' and agree ='3' ORDER BY regDate desc ) B ) 
A WHERE RNUM >= 1 AND RNUM <= 10 

#########  ITIS ���� ����    ###########################
dbConnect="Provider=OraOLEDB.Oracle.1;User ID=kiat;Password=kiat123;Unicode=True;Data Source=ITIS_SERVICE_SBE;"  

ITIS_SERVICE_SBE =   =====> �� IP�� ���� �� ���� ������
(DESCRIPTION =
(ADDRESS_LIST =
(ADDRESS = (PROTOCOL = TCP)(HOST = 222.234.3.89)(PORT = 1521))
)
(CONNECT_DATA =
(SERVICE_NAME = itis)
)
)

KOTEFMIS =
  (DESCRIPTION =
    (ADDRESS_LIST =
      (ADDRESS = (PROTOCOL = TCP)(HOST = 222.234.3.55)(PORT = 1521))
    )
    (CONNECT_DATA =
      (SERVICE_NAME = kotefmis)
    )
  ) 
==============================================================================================================

- Struts ����
[common : DEBUG]  : [itep.pms.qanda.QandaSB (Object Hashcode : 18505680)] Poolable Object Returned .
[common : DEBUG]  : SessionHandler notice : Session attribute replaced. [org.apache.struts.action.TOKEN :
0f12d4794881cec0a411edca12eab6e8]
[org.apache.struts.action.RequestProcessor : WARN ]  : Unhandled Exception thrown: class java.lang.NullPointerException
����: struts-qanda-config.xml ���Ͽ��� <forward name="input" path="/input.jsp" /> �� ���� �Ǿ���
==============================================================================================================

- ����� �����Է� �Ұ�����
�ְ������ ���̹�Ʈ��(10027531)���� ������������ 18,324,600��(������: 2009.11.17, ������: 2009.4.23)�̰�
��������� ��������(������ȣ:�ڰ�01952020)������ ���¾������� 14,231,700�� (������: 2009.11.17, 
������: 2009.5.4, �������� �����л����������)�Դϴ�. ȸ��ó��: 2009.5.4
���� ���� �����Է��� �ҷ��ص� ������ �����Ͱ� �����־ �׷��� �Է��� �ȵ˴ϴ�. 
==> ����� ������ ������� ����ó�� �� ���̹�Ʈ���� ����� ������ �������ڸ� �����ϸ� ����(���� ���̴� ����)
å�ӿ�����/���йڻ�  �̻�ȭ(RDMP/ljy1008) Tel:053-757-3713

�ѱ�����(70002055)(������ȣ:�ڰ�18801485, �ڰ�1880148, �ڰ�18801487),
�¹����(70002427)(������ȣ:�ڰ�00419318)  ===> ��Ӿ��� ��Ͻ� 
������ ��  ===> ����: ��ǥ�������� ���� ���̺�(BILL_DEED)�� ��ϵǾ�����, ��ġ: ���� ó��(���� ����Ÿ��
�����ϸ� �˸�â�� ��쵵�� ������ ��) 
�ѱ����� ---> 3��
-------------------------------------------------------------------------------

- ����� ������ ������� ����ó��
-- ���������̷� ���� ����     @@@@@@@@@@@@@
-- DELETE FROM RSBJCT_PRGS P 
WHERE P.SBJCT_ID IS NOT NULL
     AND P.SBJCT_ID = '10027531'   --������ȣ
     AND P.DUTY_CD= '8815'         --��������з�(8815:���ΰ�ȹ������)
--; 

-- �����ȯ����d���� ����     @@@@@@@@@@@@@  
-- DELETE FROM FROM SAPMNT_PLAN P
WHERE P.SBJCT_ID = '10027531'    --������ȣ
      AND P.SEQ <> 0   --���ΰ�ȹ_SEQ
--; 
==============================================================================================================

- ����ڷ� ��û(����� ������ ��û)
����R&D��������Ʈ.xls --�� 3,780��
==============================================================================================================

- ���� VLOOKUP ����
1. ���� �� ���� = �� ģ��.
2. �Լ� �����翡�� VLOOKUP ã��(���)
3. VLOOKUP ����
Lookup Value = B:B ==> �迭�� ù° ������ ã�� ���Դϴ�. 
Lookup_value�� ����, ���� ���� �Ǵ� ���ڿ��� ������ �� �ֽ��ϴ�.
Table Value = A:A ==> �����͸� ã�� ���� ǥ�Դϴ�. �����ͺ��̽��� ��ϰ� ���� ������ ���� ���� �Ǵ� ���� 
�̸��� ����մϴ�. (F4:���� �ּҰ�)
Col_index_numy =  2 ==> �񱳰��� ���� �࿡ �ִ� ���� ǥ���� table_array�� �� ��ȣ�Դϴ�
Range_lookup =  false ==> (false ��Ȯ�ϰ� ��ġ�� ��ȸ)

��) �������� 
����(A��)  ����
96(A3�࿭) A(B3�࿭)  ====> Lookup Value e: A3�࿭ ����, B3�࿭�� =VLOOKUP(A3,$A11:$B15,2) ����
84(A4�࿭) B(B4�࿭) 
��) ����ȯ��ǥ 
����  ����
0(A11�࿭) F(B11�࿭)       
60(A12�࿭) D(B12�࿭)
70(A13�࿭) C(B13�࿭)
80(A14�࿭) B(B14�࿭)
90(A15�࿭) A(B15�࿭)   ====> Table Value: $A11:$B15(���밪 A11���� B15���� ���� ��)

=COUNTIF(C4:C69,"��*") �̸��� C4���� C69������ �������� �达�� ���۵Ǵ� ������� ������ ��
==============================================================================================================

������������������� 2009.07.15(��) �۾� �����������������
---> 07:00 ~ 19:30

- KIAT SM
1. ���� R&D ���������ý���
- ���ñ��� �� ����(�����)
���� �ڷ��(FORM_ATTACH_DOC) ���̺� ����  --> form_attach
FIRST_IN: �������1, SECOND_IN: �������2, THIRD_IN: �������3 
���� �ڷ�� --->  439 167  197
http://localhost:8080/pms/qanda/qanda.do?actmode=list2
1. Q&A
http://localhost:8080/pms/qanda/qanda.do?actmode=list
÷�������� WEBTOB������ \TmaxSoft\WebtoB4.1.2\docs\pms-web\homepage\store_content 
http://kiat.or.kr/02_publicity/notice_list_01.asp?sdata=0001030204  
SELECT *
FROM BOARD_HEADER
WHERE CATEGORY = /*[#1=QANDA]*/ 'qanda' 
- �Խ��� 4���� ���̺�� ������(BOARD_CATEGORY, BOARD_HEADER, BOARD_CONTENTS, BOARD_FILE)
--> 2�� ���̺�� ����(���� �ڷ��(FORM_ATTACH_DOC))
2. FAQ 
http://rnd.risnet.or.kr/pms/faq/faq.do?actmode=main
SELECT *
FROM BOARD_HEADER
WHERE FAQ_CLSF = /*[#1=01]*/ '01'  --FAQ����(01:�������, 02:�ش���, 03:����Ʈ�̿�)
==============================================================================================================

 - ������� �߰�
�������������ȹ�� �򰡰����� ��ȫ�� ������(HSPAK1749/pak1749) 
���ױ���� ���ΰ�ȹ�� �Է��ϴٰ� ��������� ��� ������� �߰��� ��û�帮�� ���Դϴ�.
������ȣ : 10018071  
�Ѱ�å���� : ��ȣ��(LEEHOJAE/muhan2010) 
������� : ���ؽý��� (��ǥ�� : ������, ����ڵ�Ϲ�ȣ : 130-35-62482) 
(��)�������� (��ǥ�� : ��ǳ��, ����ڵ�Ϲ�ȣ : 125-81-71273) 
==============================================================================================================

- ȸ�� ���� ����(/homepage/memjoin.jsp  --> /homepage/member/memjoin.jsp)
���ö: *@*.*,  1. *@*.* ��μ�
2. �輺�� *, 3. ������ *, 4. ������ ���� 02-6388-6630 
���±�: 730625-10 
��������: [2009.07.15 12:30:13][2] [SRVL-2457] [I] (jeus_jspwork._homepage._403_memjoin) destroyed
���״�� ���� �������̽��� destroy �޼ҵ尡 ȣ��� �� ������ �α�
�̷� �޽����� ������ ���� JSP, Servlet�� ����Ǽ� ��ε��� ��  ���� �� �ֱ���.
���콺�� ��쿡�� EJB �� deploy/undeploy �� �ڿ��� �� �޽����� ���� �� �ֽ��ϴ�. 
--> ���� �޼����� �Ǵ��� �ȵ�
����: �ٺ������� ���μ����� ���� WAS������ ���̶�� �Ǵܵ�
/homepage/memjoin.jsp ���Ͽ���
<html:form action="join" onsubmit="return checkValue(this)">
  <html:hidden property="actmode" value="insmember"/> 
  <input type="hidden" name="returnURL" value="../homepage/main.jsp"/>   ===> �̰� �ν� ���ϴ� ������ ����
  <input type="hidden" name="returnURL" value="join.do?actmode=in_main"/> ===> �̷��� ������
  <html:hidden property="membertype" /> 
----------------------------------------------------------------------------------------------- 
- WEB2B ����(������) ����
wsboot.exe, wsdown.exe
http://rnd.risnet.or.kr/pms/home/join.do?actmode=detail&membertype=2&soid1=730625&soid2=1703418&name=���±�
==============================================================================================================

������������������� 2009.07.16(��) �۾� �����������������
---> 07:00 ~ 18:30

- KIAT SM
1. ���� R&D ���������ý���
- ��������� ����
������ȣ:70002411, ������ȣ:70000366
��������� �� ���� ���� Table�� 95,000,000�� �������� ���� 
����(������ȣ:70002409) ���� ����(112,000,000)+�����(30,000,000)
=�� ����(142,000,000) ������, �򰡰����ý��ۿ����� 112,000,000���� ���ɴϴ�. 
��������� �� ���� ���� Table�� 112,000,000�� �������� ���� (������ ������)
===> ��� �������� ������ �Ǵܵ� 
����ȯ(JHB6025/min3311) 052-219-8575
���������⿬��: 112,000,000, ���عΰ�����: 19,000,000  ==> 131,000,000
������û --> ����� tab
����ݾ�(����): 161,000,000, ����ݾ�(����): 28,400,000  ==> 189,400,000(����ݾ��հ�)
==============================================================================================================

- ���Ȯ�� --> ������� �ܰ�� �ǵ�����(�򰡰��� --> ������ --> ����������ȸ)
�����̷¾����з�����(5511 --> 5514))  
�泲���������ȹ�� �����(TJDRLDYD/mssky1) 055-259-3372    *  
10027642   �������ֽ�ȸ�� (5511 --> 5514))  

������ ����������ȸ �򰡰��
http://localhost:8080/pms/estm/result_sbjct.do?actmode=fin_region_main&plan_id=70008804&sbjct_id=10017378&seq=70 
System.out.println("[/pms/estm/result/ResultSB.java]:[getMain()]:[user_no]"+ user_no +"[isEditable]"+ isEditable); 
==============================================================================================================

������������������� 2009.07.17(��) �۾� �����������������
---> 07:10 ~ 18:30   --> �ְ�����

- KIAT SM
1. ���� R&D ���������ý���
 - ���ñ��� �� ����(�����)
���� �ڷ��(FORM_ATTACH_DOC) ���̺� ����  --> form_attach
FIRST_IN: �������1, SECOND_IN: �������2, THIRD_IN: �������3 
���� �ڷ�� --->  439 167  197
http://localhost:8080/pms/qanda/qanda.do?actmode=list2
==============================================================================================================

 - �ְ�����
1. ���� �ݿ� 14:00 �ְ�ȸ�� �ǽ�
2. ���� ����ں� ����(�׽�Ʈ ����, DB ������ �䱸)
==============================================================================================================

- STOCKS
��(3,190), ȭ(3,190), ��(3,380), ��(3,395), ��(3,900)
==============================================================================================================

������������������� 2009.07.20(��) �۾� �����������������
---> 07:10 ~ 18:40

- KIAT SM
1. ���� R&D ���������ý���
 - ���ñ��� �� ����(�����)
���� �ڷ��(BOARD_FORM_ATTACH) ���̺� ����  --> form_attach
FIRST_IN: �������1, SECOND_IN: �������2, THIRD_IN: �������3 
���� �ڷ�� --->  439 167  197
http://localhost:8080/pms/qanda/qanda.do?actmode=list2 
==============================================================================================================

- �������� �߰� ��û 
���� : �ֿ���(*) ����������(�ڻ�)
�Ҽ� : KT���α��������
��û: ���ֱ�ȹ�ܿ� �Ӽ��� ������
==============================================================================================================

������������������� 2009.07.21(ȭ) �۾� �����������������
---> 07:00 ~ 19:00

- KIAT SM
1. ���� R&D ���������ý���
 - ���ñ��� �� ����(�����)
���� �ڷ��(BOARD_FORM_ATTACH) ���̺� ����  --> formatt 
���� �ڷ�� --->  439 167  197
http://localhost:8080/pms/qanda/qanda.do?actmode=list2 

- �ڷḶ�� > ������������ڷ� > ����ǥ(�ѱ��������򰡿�)
http://www.keit.re.kr/sub04/sub04_11.jsp?flashNum=4/1/1&cate_idx=3&cate_title=�������� 
==============================================================================================================

������������������� 2009.07.22(��) �۾� �����������������
---> 07:00 ~ 18:30

- KIAT SM
1. ���� R&D ���������ý���
 - ���ñ��� �� ����(�����)
���� �ڷ��(BOARD_FORM_ATTACH) ���̺� ����  --> formatt
http://localhost:8080/pms/qanda/qanda.do?actmode=list2
- �ڷḶ�� > ������������ڷ� > ����ǥ(�ѱ��������򰡿�)
http://www.keit.re.kr/sub04/sub04_11.jsp?flashNum=4/1/1&cate_idx=3&cate_title=��������
 1.  ������� �˻�
/itep-pms/WEB-INF/config/subject/subjectApp/biz-subjectApp-config.xml
http://rnd.risnet.or.kr/pms/subject/busi-find.do?actmode=find&gubun=witak&leng=1
--> /subject/popup/subject_busi_find.jsp
http://rnd.risnet.or.kr/pms/subject/mbr-find.do
--> /subject/popup/subject_mbr_find.jsp 
==============================================================================================================

- �������� ÷�� --> ÷������ ���ε�  ====> Ajax�� �ذ��ؾ� ��
��±�(KIMSG/k6427762): *
��������: dynsrc �Ӽ��� ������ �� �����ϴ�. �׼����� �ź� �Ǿ����ϴ�.(IE7. �̻󿡼�) 
var img = new Image();
img.dynsrc = filePath;    //===> ���� ������ ����
- �������� --> ���ε�
http://rnd.risnet.or.kr/pms/report/reportresult.do?actmode=&filelist  ==> /report/report_fileupload.jsp

- IE7���� DYNSRC �±� ��ü�ϱ�(http://www.jiny.kr/jiny/378) 
var fso = new ActiveXObject("Scripting.FileSystemObject"); 
var f = fso.getFile(filePath);
var fileSize = f.size;   //===> ���� ������ ����
f = null;
fso = null; 
���ͳ� ����� ���� ���ؿ���  ��ũ�����ϱ� �������� ���� ������ ǥ�õ� ActiveX��Ʈ�� �ʱ�ȭ �� ��ũ���� 
�׸��� "���"���� ����� �Ѵ�...  
���â: ���� ���� �������� ���� ��ǻ�Ͱ� ���迡 ����� �� ����
==============================================================================================================

- ¡������ᰡ 0���� ������ �� ó��
������ȣ : 70001374, �ְ���� : ���޽���
�����(TJDRLDYD/mssky1) 055-259-3372
�� ������ �������������߻�� ���ױ���� ���ΰ�ȹ���� ���� 
������ �������(%)�� �����־ ¡������ᰡ 0���� ���ɴϴ�.
�򰡰��� -> ������ -> ����������ȸ
����, ó��: ���������̷� ���� ���̺��� DUTY_CD(�����̷¾����з�����(6624:������Ȯ��(ü��)))�� 
DCSN_TECH_RATE(Ȯ���������) = 20�� �߰�
-- ���������̷� ���� ��ȸ   @@@@@@@@@@@@@ 
-- SELECT *
FROM RBUSI_CALC M
WHERE M.SBJCT_ID IN ('70001374')    --������ȣ
     AND M.DUTY_CD IN ('6623', '6624')   --�����̷¾����з�����(6623:����������)
==============================================================================================================

- ������ �̻�(���� ����� 2���ε� 6���� ����Ÿ�� �����)
������ȣ; 70001255, �Ӽ���(MARKSMUS/lim3390)
������ �����������(���) �򰡰�� 
-- ���������� ���� �̷� ����(������)   @@@@@@@@@@@@@  
SELECT * 
FROM RSBJCT_MBR M
WHERE M.SBJCT_ID IS NOT NULL
    AND M.PLAN_ID = /*[#1=70009361]*/ '70009361'
    AND M.SBJCT_ID = '70001255'   --������ȣ ������
    AND M.JOIN_ROLE_CD = '1007' 
    --AND M.SEQ IN (4, 6, 5, 3) 
ORDER BY M.SEQ
--; 
==============================================================================================================

- �Ǽ��� ����
1. ���ñ��� �� ���� �ڷ�� �Ǽ��� ����
struts-qanda-config.xml ���� ������ ��  ===> ����: �ѱ� �ּ� ���� �� ��
==============================================================================================================

������������������� 2009.07.23(��) �۾� �����������������
---> 07:20 ~ 18:40

- KIAT SM
1. ���� R&D ���������ý���
- �ֿ�������
http://localhost:8080/pms/qanda/qanda.do?actmode=list_gong&p_url=gongo
- ��������
http://localhost:8080/pms/qanda/qanda.do?actmode=list_gong&p_url=gongi 

- �ֿ�������(����)
http://admin.kiat.or.kr/login.asp  --> kiatadmin/rhksflwkwk
==============================================================================================================

- �������� ÷�� --> ÷������ ���ε�  ====> Ajax�� �ذ��ؾ� ��
��±�(KIMSG/k6427762): *
��������: dynsrc �Ӽ��� ������ �� �����ϴ�. �׼����� �ź� �Ǿ����ϴ�.(IE7. �̻󿡼�) 
var img = new Image();
img.dynsrc = filePath;    //===> ���� ������ ����
- �������� --> ���ε�
http://rnd.risnet.or.kr/pms/report/reportresult.do?actmode=&filelist  ==> /report/report_fileupload.jsp
==============================================================================================================

- ���� ������ üũ(/report/result/ReportResultSB.java ���Ͽ���): 10M�̸� ���ε� �Ұ���
for(int i = 0; files != null && i < files.length; i++){   //����
	finfo = FileUtil.uploadFileWrite(files[i], true, saveDir.toString(), maxFileSize); 

	if(int_total_size > int_max_size){   //������ ũ�Ⱑ 10M ���� ũ��    
		int_total_Msize  = (int_total_size/int_MB_size);   //�� ���ϻ�����(M)  
		throw new UserDefineException("[���Ͼ��ε� ����]<br>�ش� ������ ����� �� �����ϴ�.<br>
		��� �Ͻ÷��� �� ���� ũ�Ⱑ �� "+ int_total_Msize +"MB �Դϴ�.
		<br>�� ������ ũ�Ⱑ 10M �̸� �̿��� ��� ���� �մϴ�.");
	}
}

- 5MB�� ������ �Ʒ��� ���� ������ ��(������ �����ð��� ������ ������ ���� ������ ������)
[org.apache.struts.actions.DispatchAction : ERROR]  : Request[/reportresult] doe
s not contain handler parameter named 'actmode'.  This may be caused by whitespace in the label text.
-------------------------------------------------------------------------------------------------------

- IE7���� DYNSRC �±� ��ü�ϱ�(http://www.jiny.kr/jiny/378) ===> �ٺ��� ���� �ذ� �ȵ�
var fso = new ActiveXObject("Scripting.FileSystemObject"); 
var f = fso.getFile(filePath);
var fileSize = f.size;   //===> ���� ������ ����
f = null;
fso = null; 
���ͳ� ����� ���� ���ؿ���  ��ũ�����ϱ� �������� ���� ������ ǥ�õ� ActiveX��Ʈ�� �ʱ�ȭ �� ��ũ���� 
�׸��� "���"���� ����� �Ѵ�.. 
���â: ���� ���� �������� ���� ��ǻ�Ͱ� ���迡 ����� �� ���� 
==============================================================================================================

- parseInt �Լ�
import java.util.HashMap;
int_total_Msize = util.parseInt(finfo.getFileSize()/int_total_size);   //�� ���ϻ�����(M)
==============================================================================================================

- �������� �߰� ��û 
��û��: ������������ȹ�� ����ȯ(JHB6025/min3311) 052-219-8575 
����: �����, ���ϳ��̹���, *
��ȭ : 051-612-1917, FAX : 051-312-1916
�ּ� : �λ�� �ϱ� ��õ2�� 396-4 �̼�Ÿ�� �λ걹�溥ó���� 402ȣ
==============================================================================================================

- �ְ�����
1. �ð� ����: ���� ��� 14:00 �ְ�ȸ�� �ǽ�
2. ���� �ڷ�� ���� �Ϸ�, ÷������ ���ε� IE7 �̻� ���� �ذ�
==============================================================================================================

������������������� 2009.07.24(��) �۾� �����������������
---> 07:00 ~ 18:30

- KIAT SM
1. ���� R&D ���������ý���

- �ֿ�������
http://localhost:8080/pms/qanda/qanda.do?actmode=list_gong&p_url=gongo
- ��������
http://localhost:8080/pms/qanda/qanda.do?actmode=list_gong&p_url=gongi 

- �ֿ�������(����)
http://admin.kiat.or.kr/login.asp  --> kiatadmin/rhksflwkwk
http://admin.kiat.or.kr/kor/notice/noticeReg.asp?&currPage=1&swork=&sdata=&field=&key=
==============================================================================================================

-- Į�� ����
ALTER TABLE BOARD_FORM_ATTACH ADD ( 
TEXT_CONTS       CLOB                  --����(TEXT_CONTS_2)
)
--- Į�� ����  ---------(HPHONE Į�� ����) 
ALTER TABLE BOARD_FORM_ATTACH DROP COLUMN TEXT_CONTS
--------------------------------------------------------------------------

- CLOB���� ���� 
TEXT_CONTS  VARCHAR2(4000 BYTE)  --> TEXT_CONTS  CLOB   
����Ŭ ��ɾ� empty_clob()�� �̿��� ������ Ȯ���Ѵ�
qanda : ERROR]  : UpdateException : [������ ũ�Ⱑ �ش� ������ �ִ� ũ�⺸�� Ů�ϴ�: 5872]
http://blog.naver.com/qogpcks?Redirect=Log&logNo=110046288783
http://dooji.tistory.com/172
==============================================================================================================

- Struts Logic Ŀ���� �±�
 http://blog.naver.com/sjm0928?Redirect=Log&logNo=17870631
==============================================================================================================

- �����⿬�� ����(����� ���� �߰�) 
������ȣ:70002411, ������ȣ:70000366
��������� �� ���� ���� Table�� 95,000,000�� �������� ����(������(AJH2170/AJH2170))
����ȯ(JHB6025/min3311) 052-219-8575
������ȣ:70002411  --> RBUSI_CALC ���̺��� ����� 25,000,000�� ����
������ȣ:70002409  --> RBUSI_CALC ���̺��� ����� 30,000,000�� ����
------------------------------------------------------------------------------------------------------

 -- ����� �������Ѱ� ���� ��ȸ(����� --> ���� ������ --> ������ �Ѱ�)    @@@@@@@@@@@@@ 
SELECT NVL(SUM(DECODE(A.ALLOT_ROLE_CD, '1003', 0, '1006', 0, A.CASH_MNY) ), 0) / 1000 �����⿬�� 
, NVL(SUM(DECODE(A.ALLOT_ROLE_CD, '1003', CASH_MNY, 0) ), 0) / 1000 �ΰ��δ��_����
, NVL(SUM(ARTCL), 0) / 1000 �ΰ��δ��_����
, NVL(SUM(DECODE(A.ALLOT_ROLE_CD, '1003', A.CASH_MNY, 0) + A.ARTCL), 0) / 1000 �ΰ��δ�ݰ�
, NVL(SUM(DECODE(A.ALLOT_ROLE_CD, '1006', 0, A.CASH_MNY) + A.ARTCL), 0) / 1000 �հ� 
-- SELECT A.SEQ, A.ALLOT_ROLE_CD, A.CASH_MNY ����, A.ARTCL ����
FROM RSBJCT_PRGS P, RSBJCT_ALLOT_PRGS A  
WHERE P.SBJCT_ID = /*[#1=70002411]*/ '70002409'  --������ȣ 
  AND P.SEQ = /*[#2=23]*/ '23'   --�д�������CD(1001:����, 1002:����ü, 1003:�⺻�����(�ΰ�), 
  -- 1004:�����1, 1005:�����2, 1006:��Ź�����))
  AND A.SBJCT_ID = P.SBJCT_ID 
  AND A.SBJCT_STEP = /*[#3=0]*/ '0' 
  AND A.SBJCT_ORDR = /*[#4=1]*/ '1' 
  AND A.SBJCT_SEQ = (SELECT MAX(A2.SBJCT_SEQ) 
                        FROM RSBJCT_ALLOT_PRGS A2 
                        WHERE A2.SBJCT_ID = P.SBJCT_ID 
                        AND A2.SBJCT_STEP = P.SBJCT_STEP 
                        AND A2.SBJCT_ORDR = P.ORDR 
                        AND A2.SBJCT_SEQ <= P.SEQ 
                        GROUP BY A2.SBJCT_ID) 
  AND A.AVAIL_SDATE <= P.AVAIL_SDATE 
  AND A.AVAIL_EDATE >= P.AVAIL_SDATE
-- 

-- ��������� �� ���� ����(������ --> ����� ���� --> ������� --> ���������(��â)   @@@@@@@@@@@@@ 
SELECT  M.PLAN_ID, M.SBJCT_ID ����ID, M.PAY_MNY ���ޱݾ�_����, M.RMN_GRVN_MNY �ܾ������⿬��, M.ALLOT_ROLE_CD �д�ݱ���,
        M.SBJCT_STEP �����ܰ�, M.SBJCT_YEAR �����⵵,M.SBJCT_ORDR ����������, M.BUSI_CALC_CLSF ���������_���걸��CD
--�д�ݱ���(1001:����,1004:�����1,1005:�����2), 
FROM RBUSI_CALC M
WHERE M.SBJCT_ID IS NOT NULL 
     AND M.SBJCT_ID IN ('70002409')   --������ȣ 
    --AND M.ALLOT_ROLE_CD IN ('1004', '1005')    --�д�ݱ���(1001:����, 1002:����ü, 1003:�⺻�����(�ΰ�), 1004:�����1, 1005:�����2, 1006:��Ź�����))
     --AND M.BUSI_CALC_CLSF = '11'     --���������_���걸��(11: �Ϲ�����, 12: �̿�����, 13 ��������, 
     --14 �սǺ���, 21 ���׻��, 23 �ܾ�ȯ��, 24 ������������, 25 ����ȯ��)
--;  
------------------------------------------------------------------------------------------------------

-- ��������� �� ���� ���� ���� @@@@@@@@@@@@@
INSERT INTO RBUSI_CALC ( 
SBJCT_ID, SBJCT_STEP, SBJCT_ORDR, BUSI_CALC_CLSF, ORGN_DATE,
SBJCT_SEQ,  SBJCT_YEAR, AVAIL_EDATE, PAY_TYPE, PAY_RQST_DATE,
REAL_PAY_DATE, PAY_MNY, CALC_TYPE_CLSF, FUND_CD, FIX_YEAR,
ORDR, FUND_ROOT_TYPE, RMN_GRVN_MNY, RMN_CIVIL, RMN_CIVIL_ARTCL,
PLAN_ID, REG_MBR_ID, REG_TIME, ADIT_BUSI_ID, ALLOT_ROLE_CD,
CALC_SBJCT_CLSF,  REDM_MNY
)   
SELECT X.SBJCT_ID, X.SBJCT_STEP, X.SBJCT_ORDR, X.BUSI_CALC_CLSF, X.ORGN_DATE, 
       X.SBJCT_SEQ, X.SBJCT_YEAR, X.AVAIL_EDATE, X.PAY_TYPE, X.PAY_RQST_DATE,  
   X.REAL_PAY_DATE, A.CASH_MNY PAY_MNY, X.CALC_TYPE_CLSF, '' FUND_CD, X.FIX_YEAR, 
       ORDR, '' FUND_ROOT_TYPE, X.RMN_GRVN_MNY, X.RMN_CIVIL, X.RMN_CIVIL_ARTCL, 
       X.PLAN_ID, X.REG_MBR_ID, X.REG_TIME, X.ADIT_BUSI_ID, A.ALLOT_ROLE_CD,
       X.CALC_SBJCT_CLSF, X.REDM_MNY
FROM ( 
  SELECT SBJCT_ID, SBJCT_STEP, SBJCT_ORDR, BUSI_CALC_CLSF, ORGN_DATE, SBJCT_SEQ, SBJCT_YEAR, AVAIL_EDATE, PAY_TYPE, 
    PAY_RQST_DATE, REAL_PAY_DATE, CALC_TYPE_CLSF, FUND_CD, FIX_YEAR, ORDR, FUND_ROOT_TYPE, RMN_GRVN_MNY, RMN_CIVIL, 
 RMN_CIVIL_ARTCL, PLAN_ID, REG_MBR_ID, REG_TIME, ADIT_BUSI_ID, CALC_SBJCT_CLSF, REDM_MNY   
  FROM RBUSI_CALC
  WHERE SBJCT_ID = '70002409'   --������ȣ 
          AND BUSI_CALC_CLSF = '11'
          AND PLAN_ID = '70004743'   --PLAN_ID 
  ) X, RSBJCT_ALLOT_PRGS A
WHERE A.SBJCT_ID = X.SBJCT_ID
    AND A.SBJCT_STEP = X.SBJCT_STEP
    AND A.SBJCT_ORDR = X.SBJCT_ORDR
    AND A.ALLOT_ROLE_CD IN ('1005','1004') --�д�ݱ���(1001:����,1004:�����1,1005:�����2), 
    AND A.AVAIL_EDATE = '99991231' 
    AND A.CASH_MNY >0     --�д���� �����ϴ� ��
==============================================================================================================

- STOCKS
��(3,760), ȭ(3,500), ��(3,365), ��(3,295), ��(3,295) 
==============================================================================================================

������������������� 2009.07.27(��) �۾� �����������������
---> 06:50 ~ 18:30

- KIAT SM
1. ���� R&D ���������ý���
- �ֿ�������
http://localhost:8080/pms/qanda/qanda.do?actmode=list_gong&p_url=gongo
- ��������
http://localhost:8080/pms/qanda/qanda.do?actmode=list_gong&p_url=gongi 

- �ֿ�������(����)
http://admin.kiat.or.kr/login.asp  --> kiatadmin/rhksflwkwk
http://admin.kiat.or.kr/kor/notice/noticeReg.asp?&currPage=1&swork=&sdata=&field=&key=
==============================================================================================================

- ���ñ��� �� ����(�����)
���� �ڷ��(BOARD_FORM_ATTACH) ���̺� ����  --> formatt 
���� �ڷ�� --->  439 167  197
http://localhost:8080/pms/qanda/qanda.do?actmode=list2 

- �ڷḶ�� > ������������ڷ� > ����ǥ(�ѱ��������򰡿�)
http://www.keit.re.kr/sub04/sub04_11.jsp?flashNum=4/1/1&cate_idx=3&cate_title=�������� 

-- ���ñ��� �� ���� ���� ��� ����
UPDATE BOARD_FORM_ATTACH 
SET FILEPATH = 'Z:\board\200907' 
WHERE no=/*[#1=1190]*/ '1190' 
   AND seq=/*[#2=1]*/ '1'
==============================================================================================================

-- Į�� ����
ALTER TABLE BOARD_FORM_ATTACH ADD ( 
TEXT_CONTS       CLOB                  --����(TEXT_CONTS_2)
)
--- Į�� ����  ---------(HPHONE Į�� ����) 
ALTER TABLE BOARD_FORM_ATTACH DROP COLUMN TEXT_CONTS
--------------------------------------------------------------------------

- CLOB���� ���� 
TEXT_CONTS  VARCHAR2(4000 BYTE)  --> TEXT_CONTS  CLOB   
����Ŭ ��ɾ� empty_clob()�� �̿��� ������ Ȯ���Ѵ�
qanda : ERROR]  : UpdateException : [������ ũ�Ⱑ �ش� ������ �ִ� ũ�⺸�� Ů�ϴ�: 5872]
http://blog.naver.com/qogpcks?Redirect=Log&logNo=110046288783
http://dooji.tistory.com/172
==============================================================================================================

- ����������ȸ --> ������������(����Ȯ������): �����ؾ�������
��� ������(YEUNKYU/y29998)  052-219-8575
-- ������ȹ ���� ��ȸ   @@@@@@@@@@@@@ 
SELECT A.PLAN_ID, A.PLAN_STATUS, A.MMNGR_MBR_ID,   A.WIWON_CONTACT,
        A.PLAN_ID, A.DUTY_PLAN_CLSF, A.WIWON_CONTACT ����������ü, A.MBR_APPR_TIME ����������������, 
        A.PLAN_STATUS ��ȹ������, A. PLAN_NM ��ȹ��Ī,  A.CONTACT_FNSH, 
DECODE(A.CONTACT_FNSH,'N','Ȯ����','Y','Ȯ��') Ȯ������
FROM RDUTY_PLAN A
WHERE A.PLAN_ID IS NOT NULL 
     AND A.PLAN_ID IN ( '70002039')   --PLAN_ID  10091473
--; 
  
-- ������ȹ ���� ����   @@@@@@@@@@@@@
UPDATE RDUTY_PLAN A
SET A.CONTACT_FNSH = 'Y',   --Ȯ������(Y: Ȯ��)
      A.PLAN_STATUS = '1500'    --��ȹ������(1500:(��ȹ)����, 2000:��������Ϸ�, 2500:(���)����)
WHERE A.PLAN_ID IS NOT NULL 
     AND A.PLAN_ID IN ( '70009362')   --PLAN_ID
--; 

 -- ������ȹ ���� ��ȸ   @@@@@@@@@@@@@  
SELECT A.PLAN_ID, A.PLAN_STATUS, A.MMNGR_MBR_ID, M.MBR_ID, A.WIWON_CONTACT
FROM RDUTY_PLAN A, RMEMBER M
WHERE A.DUTY_PLAN_CLSF = /*[#1=5511]*/ '5511' --1
--AND A.PLAN_STATUS >= '1000' //20090305
AND A.PLAN_STATUS <= '2000'
AND A.IS_OPERATION = '0001'
AND A.AVAIL_EDATE = '99991231'
AND A.PLAN_STIME BETWEEN NVL(/*[#2=]*/ '','19900101') AND NVL(/*[#3=]*/ '','99991231')  --2,3
AND M.MBR_ID = /*[#4=10060651]*/ '10060651' --4 
AND  (A.MMNGR_MBR_ID = M.MBR_ID)  
==============================================================================================================

- ������ ���� �ο�
�̸� : ������ å�ӿ����� : syoon, ������� : 630227 
�̸� : �ڳ빫 ������ : p4n2m2, ������� : 750722
==============================================================================================================

- �Ѱ�����å���� ���� ���� ����
������ȣ:70004970, �Ѱ�����å���� ����(���� --> �̺���)
==============================================================================================================

- �����⿬�� ����(����� ���� �߰�)  
�������������ȹ�� ������(JSYOUN/y00724)  
70002926, 70002806, 70003155, 70003020, 70003299 
70003153, 70003000, 70002988, 70002929, 70003213, 70002751
==============================================================================================================

- ���������(������ȹ���� ������) 
������ȣ: 70002806,  ���(HRSKSY/fdcm19) ������
����������� �Է��ϴٰ� �����ܰ�(������ȹ �� �������)�� �� �� �Ѿ ������ ���� 
ó�� ������ȹ�ܰ�� ������ ��Ź�帳�ϴ�. 

 -- ��������� ��ȸ(������ȹ)  @@@@@@@@@@@@@
SELECT 1 FROM RSBJCT_PRGS P1
WHERE P1.SBJCT_ID = S.SBJCT_ID
AND P1.SBJCT_STEP = CC.SBJCT_STEP
AND P1.ORDR = CC.ORDR
AND P1.DUTY_CD IN ('7710', '7720', '7730')   --��������з�(6624:������Ȯ��(ü��))
--;  
 - ���������̷� ���� ���� @@@==> ��������з���('7710', '7720', '7730') �ΰ͵��� ����
-- DELETE FROM  RSBJCT_PRGS P
WHERE P.SBJCT_ID IS NOT NULL
AND P.SBJCT_ID = '70002806'    --������ȣ
AND P.DUTY_CD= '7710'         --��������з�(6624:������Ȯ��(ü��))
--;      
==============================================================================================================

- DB dump
\\110.14.182.194\pms-web\01. DATA\52. DB dump ������ ����(itep_rdba_09_0727.dmp)
==============================================================================================================

������������������� 2009.07.28(ȭ) �۾� �����������������
---> 07:20 ~ 18:10   --> ��� ȸ��(������:ȫ����, Ī��)

- KIAT SM
1. ���� R&D ���������ý���
- �ֿ�������
http://localhost:8080/pms/qanda/qanda.do?actmode=list_gong&p_url=gongo
- ��������
http://localhost:8080/pms/qanda/qanda.do?actmode=list_gong&p_url=gongi 
==============================================================================================================

- �ֿ�������(����)
http://admin.kiat.or.kr/login.asp  --> kiatadmin/rhksflwkwk
http://admin.kiat.or.kr/kor/notice/noticeReg.asp?&currPage=1&swork=&sdata=&field=&key=
==============================================================================================================

- ����������ȸ --> ������������(����Ȯ������): �����ؾ�������(70002409, 10018295)
��� ������(YEUNKYU/y29998)  052-219-8575 
- ��ȹȮ��(����������ȸ)
http://localhost:8080/pms/estm/approval_plan.do?actmode=fin_region
������ �ϸ� RSBJCT_PRGS ���̺��� ��������з�(5511:������:����������ȸ��ȹ����) ���� 
- ������������(����������ȸ)
http://localhost:8080/pms/estm/person.do?actmode=fin_region --> committee/person/estm_person.jsp 
- ��������Ȯ��(����������ȸ)
http://localhost:8080/pms/estm/person.do?actmode=fin_region
==============================================================================================================

- �����⿬�� ����(����� ���� �߰�)  
�������������ȹ�� �Ӽ���(MARKSMUS/lim3390)
70002668(��������) (110,000 --> 135,000) 
70002847(����) (114,000 --> 135,000) 
70002551(�̻���ũ) (114,000 --> 135,000) 
70003178(����Ż��ũ) (114,000 --> 135,000) 
70003048(ī���) (114,000 --> 135,000)  
70002709(�Ѻ��������) (112,000 --> 133,000)  
70001472, 70001521, 70001760, 70001714, 70001558
70001322, 70001332, 70001764, 70001523, 70001537
70001255  

- ���������(������ȹ���� ������)   ==> ������Ƽ(70001332) 1���⵵ �̿��� 158,700,000��
������ȣ: 70002806,  ���(HRSKSY/fdcm19) 
����������� �Է��ϴٰ� �����ܰ�(������ȹ �� �������)�� �߸� �Ѿ ������ ����  

-- ��������� ��ȸ(������ȹ)  @@@@@@@@@@@@@
SELECT SBJCT_ID ������ȣ, P.SEQ, P.SBJCT_STEP �����ܰ�, P.ORDR ������, P.DUTY_CD, --�����̷¾����з����� 
       (SELECT V.CODE_NAME FROM RDUTY_CDV V WHERE V.SUB_CODE = P.DUTY_CD) ��������з�
FROM  RSBJCT_PRGS P
WHERE P.SBJCT_ID IS NOT NULL
     AND P.SBJCT_ID = '70001332'    --������ȣ
   --AND P.ORDR= '2'    --������ 
   AND DUTY_CD IN ('7710', '7720', '7730')
--;  
-- ���������̷� ���� ���� @@@==> ��������з���('7710', '7720', '7730') �ΰ͵��� ����
-- DELETE FROM  RSBJCT_PRGS P
WWHERE P.SBJCT_ID IS NOT NULL
     AND P.SBJCT_ID = '70001332'    --������ȣ
   --AND P.ORDR= '2'    --������ 
   AND DUTY_CD IN ('7710', '7720', '7730')  --������з���('7710', '7720', '7730') �ΰ͵��� ����
--;      
==============================================================================================================

- ������������� ����
�����(TJDRLDYD/mssky1)
����Ḧ �뺸�ҷ��� ���� ������������ �Ѱ������� ����ᰡ ���µ� 
�Ѱ����� ����ᰡ 20%�� �Ǿ� �־ 0%�� ���ľ� �� �� ���Ƽ� ������ �帳�ϴ�. 
������ȣ : 70000584 
�Ѱ��ְ���� : �߿�����ũ  
����������ȸ �򰡰�� -> �ϰ����ΰ�ȹ��, ���� ���ΰ�ȹ�� �������������(%)�� 0���� ����

-- ���������̷� ���� ����   @@@@@@@@@@@@@
-- UPDATE RSBJCT_PRGS P
SET P.DCSN_TECH_RATE = '0' --Ȯ���������(20 -->0) 
         WHERE P.SBJCT_ID = '70000584'
         AND P.DUTY_CD = '6624'
         AND P.SBJCT_STEP = '1'
         AND P.ORDR IN ('1', '2')
 -- AND P.SEQ = '50'
--;   
==============================================================================================================

- ����ó�� ����   
1. �����û���� ó��
2. ����ó�� -->�������ȭ�鿡�� [���]�� Ŭ���ϸ� ������ ��
- ���� ���� Ȯ�� 
���� �� ���� --> ������ȸ --> �������忡�� ��ȸ�Ͽ� ���� ���� Ȯ��
- �������
http://localhost:8080/pms/change/Conduct.do?actmode=cre_state
==============================================================================================================

-- ���ñ��� �� ���� �ڷ�� ���� ����  @@@@ ==> 2�� ���̺� ������ UPDATE
-- UPDATE BOARD_FORM_ATTACH U
SET (U.IDX_NO) = (SELECT B.IDX_NO
FROM BOARD_FORM_ATTACH_T B
          WHERE U.NO = B.NO
                )
WHERE EXISTS
      (SELECT 'x'
            FROM BOARD_FORM_ATTACH_T B 
            WHERE U.NO = B.NO    
      )
     AND U.IDX_NO IS NULL
--; 
==============================================================================================================

- ����Ÿ import(����Ŭ���� ����Ʈ)
Database --> import --> import Table Data 
Schema: ITEMP_RDBA
Object Type: Tables
Object Name: BOARD_FORM_ATTACH_T 
���� �� ==> Show Data --> Excute Wizrd(��â���� .excel ���� -> �� �ʵ带 ����)
==============================================================================================================

������������������� 2009.07.29(��) �۾� �����������������
---> 06:50 ~ 18:30

- KIAT SM
1. ���� R&D ���������ý���
- �ֿ�������
http://localhost:8080/pms/qanda/qanda.do?actmode=list_gong&p_url=gongo
- ��������
http://localhost:8080/pms/qanda/qanda.do?actmode=list_gong&p_url=gongi 
==============================================================================================================

- �ֿ�������(����)
http://admin.kiat.or.kr/login.asp  --> kiatadmin/rhksflwkwk
http://admin.kiat.or.kr/kor/notice/noticeReg.asp?&currPage=1&swork=&sdata=&field=&key=
==============================================================================================================

- ������ �ڷ� ��û(�鳫��(NJBAEK/a09210)
RISNET/�������׻��ü/������ ��ȸ���� 1ȸ �̻�(��������Ȳ ����) �򰡰����� �ִ� ������ ��ü 
������ ������ �ٿ�ε��Ͽ� �ֽñ� �ٶ��ϴ�. (��������, �Ҽ�, ����, ����ó, �̸���, ��)
==============================================================================================================

- ���ñ��� �� ���� �ڷ�� ����
- CLOB���� ���� 
TEXT_CONTS  VARCHAR2(4000 BYTE)  --> TEXT_CONTS_2(����CLOB)
����Ŭ ��ɾ� empty_clob()�� �̿��� ������ Ȯ���Ѵ�
qanda : ERROR]  : UpdateException : [������ ũ�Ⱑ �ش� ������ �ִ� ũ�⺸�� Ů�ϴ�: 5872] 
--------------------------------------------------------------------------

- ���� ��ȸ�ؼ� DB ó��
//���� �ڷ��(���ñ��� �� ����) ��� ��ȸ(/pms/qanda/QandaSB.java ���Ͽ���)
public void getQandaListForm(ActionForm f) throws Exception
{  
StringBuffer sql = new StringBuffer("");
//�������1
if (first_in!=null && !first_in.equals("")){
sql.append(" AND FIRST_IN ='"+ first_in +"'  \n");
} 

String sql2 = SQLLoader.getQuery("board.getForm_attachList", new String[]{ sql.toString()});
dba.setString(1, category);
dba.setQuery(sql2, false);

list = dba.executeQuery(new Paging(page, listnum));  
}
==============================================================================================================

- ���������(������ȹ���� ������)   ==> ������Ƽ(70001332) 1���⵵ �̿��� 158,700,000��
������ȣ: 70001332,  �������������ȹ�� �Ӽ���(MARKSMUS/lim3390)
����������� �Է��ϴٰ� �����ܰ�(������ȹ �� �������)�� �߸� �Ѿ ������ ����  

 -- ��������� ���� ����  @@@@@@@@@@@@@  ==> ��� �ʼ�
-- CREATE TABLE RSBJCT_PRGS_20090729 AS 
SELECT *  
FROM  RSBJCT_PRGS P
WHERE P.SBJCT_ID IS NOT NULL
     AND P.SBJCT_ID = '70001332'    --������ȣ
--;

-- ��������� ��ȸ(������ȹ)  @@@@@@@@@@@@@
SELECT P.plan_id, P.SBJCT_ID ������ȣ, P.SEQ, P.SBJCT_STEP �����ܰ�, P.ORDR ������, P.DUTY_CD, 
       (SELECT V.CODE_NAME FROM RDUTY_CDV V WHERE V.SUB_CODE = P.DUTY_CD) ��������з�
FROM  RSBJCT_PRGS P
WHERE P.SBJCT_ID IS NOT NULL
     AND P.SBJCT_ID = '70001332'    --������ȣ
    AND P.ORDR= '1'    --������ 
   -- AND DUTY_CD IN ('7710')
--;
-- ���������̷� ���� ���� @@@ 
--  DELETE FROM  RSBJCT_PRGS P
WHERE P.SBJCT_ID IS NOT NULL
     AND P.SBJCT_ID = '70001332'    --������ȣ
    AND P.ORDR= '1'    --������ 
   AND DUTY_CD IN ('7710', '7720', '7730')   ---��������з���('7710', '7720', '7730') �ΰ͵��� ����
--;

-- ������������ȹ ���� ��ȸ   @@@@@@@@@@@@@
SELECT PLAN_ID, SBJCT_ID ������ȣ, P.BUSI_ID �������ü, 
       P.PLAN_STIME ��ȹ������, P.PLAN_ETIME ��ȹ������ 
-- SELECT *
FROM RDUTY_SBJCT P
WHERE P.SBJCT_ID IS NOT NULL
     AND P.SBJCT_ID = '70001332'    --������ȣ
     AND P.PLAN_ID = /*[#2=70009443]*/ '70009443' 
--;
-- ������������ȹ �������� @@@ 
--  DELETE FROM RDUTY_SBJCT P
WHERE P.SBJCT_ID IS NOT NULL
     AND P.SBJCT_ID = '70001332'    --������ȣ
     AND P.PLAN_ID = /*[#2=70009443]*/ '70009443' --������
--;
==============================================================================================================

������������������� 2009.07.30(��) �۾� �����������������
---> 07:00 ~ 18:30

- KIAT SM
1. ���� R&D ���������ý���
- ���ñ��� �� ���� �ڷ�� ����
http://blog.naver.com/qogpcks?Redirect=Log&logNo=110046288783
http://dooji.tistory.com/172
http://integer.kr/bbs/zboard.php?id=java&page=1&sn1=on&divpage=1&sn=on&ss=off&sc=off&keyword=CLOB&select_arrange=headnum&desc=asc&no=19

- Clob�� ��뷮 �ؽ�Ʈ�� �����Ҽ��մµ� 4GB ���� ����

/**  ���� �ڷ�� ���   */ 
public void insertBoardForm(ActionForm f) throws Exception {    
}

 /** ���� �ڷ�� ���(���� ���� ����)   */ 
public int insertBoardFormNOfile(.....) throws DBException {

}
==============================================================================================================

- ������� ���� ��û 
������ȣ: 10017520, �ڱ͵�(KDPARK/pkd370) *@*.*  
������ �������(%)�� �����־ ¡������ᰡ 40 --> 20 �� ���Ͽ� 
- ����� ���ݾ�: 930,469õ��
- ����� (20%): 930,469õ�� * 0.2 = 186,093õ���ε�
   (930,469õ�� * 0.4 = 372,187õ�� ��)   
 ����� ���ΰ�ȹ������ 40% �� 20%�� ����Ǿ�������
  40%¡���ݾ��� 372,187õ������ ��� ǥ�õ˴ϴ�. 
 <�����ǰ߼�> �� <����� ���ΰ�ȹ��> ���� ¡������Ḧ  
 372,187õ��  �� 186,093õ������ ������ ��Ź�帳�ϴ�.
 --------------------------------------------------------------

-- ���������̷� ���� ����   @@@@@@@@@@@@@
-- UPDATE RSBJCT_PRGS P
SET P.DCSN_TECH_RATE = '20' --Ȯ���������(40 --> 20)  
WHERE P.SBJCT_ID IS NOT NULL
   AND P.SBJCT_ID = '10017520'    --������ȣ
   AND P.DUTY_CD IN (' 6623', '6624')  --��������з�(6623:��������ް������, 6624:������Ȯ��(ü��)) 
--;

- ¡�� ����� ���
SELECT GET_TECH_AMT2_R('10017520')/1000 TECH_MNY FROM DUAL;

-- 1.����Ϸ� �Ǵ� ���� �̷��� �ִ� ��쿡�� ����� ��� 
SELECT 1 
FROM RSBJCT_PRGS B
WHERE ROWID =  (SELECT /*+ INDEX_DESC(A RSBJCT_PRGS_PK) */ A.ROWID
FROM RSBJCT_PRGS A
WHERE SBJCT_ID = '10017520'  --������ȣ 
AND DUTY_CD IN ('5314', '5324', '5414', '5424', '5514', '5524', '5614')    
AND ROWNUM = 1 )
AND ((DUTY_CD IN ('5314', '5324') AND GRADE_CD = 'R0015')
OR (DUTY_CD IN ('5414', '5424') AND GRADE_CD = 'R0020')
OR (DUTY_CD IN ('5514', '5524') AND GRADE_CD = 'R0022')
OR (DUTY_CD IN ('5614')         AND GRADE_CD = 'R0029'))

-- 2.���������� ����Ϸᳪ ��������-����������� ����(���)�� ���� ����� ���� ����
SELECT /*+ INDEX(P2 RSBJCT_PRGS_IDX2) */
   TRUNC(SUM(X.PAY_MNY * NVL(P.DCSN_TECH_RATE,0)) / 100, -3)
--INTO OUT_TECH_AMT
FROM (
SELECT /*+ ORDERED USE_NL(A S) INDEX(A RBUSI_CALC_PK)*/
A.SBJCT_ID, A.SBJCT_STEP, A.SBJCT_ORDR,
NVL(SUM(DECODE(A.BUSI_CALC_CLSF,'11',A.PAY_MNY)),0) - 
NVL(SUM(DECODE(A.BUSI_CALC_CLSF,'23',A.RMN_GRVN_MNY)),0) PAY_MNY
FROM RBUSI_CALC A ,RSUBJECT S
 WHERE A.SBJCT_ID =  '10017520'  --������ȣ 
 AND A.BUSI_CALC_CLSF IN ('11','23')
 AND A.AVAIL_EDATE = '99991231'
 AND S.SBJCT_ID = A.SBJCT_ID
 GROUP BY A.SBJCT_ID, A.SBJCT_STEP, A.SBJCT_ORDR
 ) X, RSBJCT_PRGS P
WHERE P.SBJCT_ID   = X.SBJCT_ID
AND P.DUTY_CD      = '6623'             -- ����������
AND P.SBJCT_STEP   = X.SBJCT_STEP
AND P.ORDR         = X.SBJCT_ORDR
==============================================================================================================

- �ְ�����
1. [�ű�] ���ñ��� �� ���� �ڷ�� ����
- ������� �߰�(������� ������߻��(�űԻ��)), ����(����������񽺻��)
2. [�ű�] ���ñ��� �� ���� �ڷ�� ���� ����
- �ڷ�� ���� ���� ��뷮 �ؽ�Ʈ ó��(����:VARCHAR2(4000)�� Clob���� ����)
==============================================================================================================

- �Ʒ��� �ѱ۷� ��Ʈ ���� ���� ���
http://cafe.daum.net/fpuser  --> Daum ����Ŭ���÷��� �������� ����(��Ʈ ����)
==============================================================================================================

������������������� 2009.07.31(��) �۾� �����������������
---> 07:00 ~ 18:30

- KIAT SM
- ���� Clob ����(���� �ڷ�� ����) 
http://blog.naver.com/qogpcks?Redirect=Log&logNo=110046288783
http://dooji.tistory.com/172

- Oracle ��Ű�� ���(PL/SQL)
CREATE OR REPLACE PACKAGE "PKG_CLOB_BOARD_FORM_ATTACH" AS 
PROCEDURE INSERT_CLOB (
    );  
END PKG_CLOB_BOARD_FORM_ATTACH; 
/

- procedure ȣ��� ORA-00900 ���� �߻�
-------------------------------------------------------------------------------------

-- DB ������ȸ 
SELECT * FROM ALL_USERS -- ����� 
SELECT * FROM USER_TABLES -- ����ڿ� ���� ���̺� 
SELECT * FROM ALL_TABLES -- ��� ���̺� 
SELECT * FROM USER_CONSTRAINTS -- ����� ����  
SELECT * FROM USER_SOURCE  -- ���ν��� & ��Ű�� ��ȸ
WHERE NAME = 'PKG_CLOB_BOARD_FORM_ATTACH'  
==============================================================================================================

- STOCKS
��(3,195), ȭ(3,190), ��(3,210), ��(3,190), ��(3,190) 
==============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������