

�����������������������������������������������������������
+---------------------------------------------// Memo(2009.08) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2009.08.03(��) �۾� �����������������
---> 07:00 ~ 18:30   --> �赿�� �븮 ����(14:40, ����)

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

- /QandaDAO.java ���Ͽ���
CallableStatement cstmt = dba.getCallableStatement("{call PKG_CLOB_BOARD_FORM_ATTACH(?, ?, ?, ?, ?, ?, ?)}");   
//Oracle ��Ű�� ���(PL/SQL)
--> call PKG_CLOB_BOARD_FORM_ATTACH(?, ?, ?, ?, ?, ?, ?)
 CALL PKG_CLOB_BOARD_FORM_ATTACH.INSERT_CLOB(1229, 1, 'formatt', 'P_TITLE', 'P_TEXT_CONTS', '');

 call PKG_CLOB_BOARD_FORM_ATTACH(1229, 1, 'formatt', 'P_TITLE', 'P_TEXT_CONTS', 'P_TEXT_CONTS_2', 'P_OUTMSG')

- procedure ȣ��� ORA-00900 ���� �߻�
 ORA-06577

 dbms_output.put_line ( '������ : '  v_doffset  'Bytes' );
==============================================================================================================

- ���� ����������߻�� ����Ÿ �̰�
�������� �����帰 ���� ����������߻�� ��ȸ�� ���Ͽ� 
��� ���� ����� �����帮���� RND,RISNET���� ��ȸ�� �� �ְ� ó���� ��Ź�帳�ϴ� 
==============================================================================================================

- ������� ������ ��� ���� ����
���غ��� ���İ����� ��� ���ձ����� �����Ǿ ������ ��� ������ ����� ������ �˰� �ִµ���
�׷��ٸ�  8�� 10�� ���� ������ ���� ����ȭ�鿡�� ������ �Է� ȭ�� �� DB ���� ����, ������ ī�� ���蹮��
� ���� ���� �� ������ ���� �Ǿ�� �� �� �����ϴ�. 
����������ȹ������ ��û��(��ȹ��)�� �����ϸ� �˴ϴ�. Ÿ ����� 2009�� 1�� ����� ������ �ɷ� �˰� �ֽ��ϴ�  
÷�� ������ ������ �κ��� �����Ͻþ� �����Ͻø� �˴ϴ�. 

- �����(����������) --> ����� �Է�(�ΰǺ�, ������, ������, ��Ź���� ���ߺ�)
/itep-pms/subject/subjectApp/sub_input_exp_org.jsp
alert("[/subject/subjectApp/sub_input_exp_org.jsp][ncom_role_cd]"+ ff.ncom_role_cd.value +"[tempStr]"+ '<%= tempStr %>');

<< ���ǻ��� >>
�� ���������� ���س⵵ ������߻������ 5%�̳����� �����⿬��(������������ 100%)���� ����� �� ������, 
����� ¡����� ���Ե��� �ʽ��ϴ�.
�� ��ü ������� �� �����ȸ � ���� ���� �ΰǺ�, ��������, ȸ�Ǻ�, �����, ���̳� ���ֺ�, �������ȸ 
���ֺ� ���� ������� ����մϴ�.
�� �ΰ��δ�� ������ �δ����� �ʾƵ� �˴ϴ�.
�� �ΰ��δ�� ������ �Ѱ���������� ��� ����(�ΰǺ�, ������)�� �ǹ��մϴ�. 
==============================================================================================================

- ��з� ��� �߰� ��û 
�����: "�������Ż����ݱ�����" --> ����з��ڵ�: S1312
�з��۾��� ���� ����Ÿ�� �����ϴ� ���� �ʿ��� �� �����ϴ�.
���� ���� ����Ÿ ������ ���� ����������� �ΰ����� �ִµ�
1. �������������
2. �������Ż����ݱ����� 
---------------------------------------------------------------------------
/pms/common/application/ApplicationSB.java ���Ͽ��� 
 /** ����ڵ� �޸� ���� */
private void initBusiClsf(DBAction dba) throws DataTypeException, DBException { 
dba.setSQL("common.application.connectByBusiClsf");
}

- ������ ������� ������ ���(common.application.connectByBusiClsf)  ==> 
����ڵ� �޸� ����(���α׷� ���� ���۽� ������)
SELECT LEVEL AS LV, BCLSF_CD, BCLSF_NM
FROM RBUSI_CLSF_V   ---- RBUSI_CLSF_V view ���̺� ����
WHERE LEVEL= '1'
CONNECT BY PRIOR BCLSF_CD = PRE_BCLSF_CD
START WITH BCLSF_CD IN ('S1803','S1802','S1801','S1431','S1430','S1257','S2000', 'S1312')       --����з��ڵ�
--; 
 - ��з���� ����  
1. �������Ż����ݱ�����(S1312)  --> �߰�    ============>
2. �ű���������(4������)(S1257) 
3. �������������߻��(������-4������)(S1430) 
4. �������������߻��(������-9������)(S1431) 
5. �������������߻��(S1801) 
6. ���������Ǽ�������������(S2000) 
7. �����������������߻��(S1802) 
8. ����������ȹ������߻��(S1803) ============>
--------------------------------------------------------------------------------------------------

-- ����з� ����  @@@@@@@@@@@@@  
INSERT INTO RBUSI_CLSF
(  
  PRE_BCLSF_CD, BCLSF_CD, BCLSF_NM, AVAIL_EDATE, AVAIL_SDATE, DESCR,
  REG_MBR_ID, REG_TIME, AGRE_CLSF, PRSN_TIME,
  QNA_TIME, SHT_NM, DISP_ORDR, MNGR_MBR_ID, INDSTR_DEPT_ID, CALC_MBR_ID,  
  SYSTEM_CD, BUSI_TYPE, DEPT_ID, ZIP_CD, RBUSI_TYPE
) 
SELECT    'S1342', 'S1355', 'UP'  BCLSF_NM, AVAIL_EDATE, AVAIL_SDATE, DESCR,
          REG_MBR_ID, REG_TIME, AGRE_CLSF, PRSN_TIME,
          QNA_TIME, SHT_NM, DISP_ORDR, MNGR_MBR_ID, INDSTR_DEPT_ID, CALC_MBR_ID,  
          SYSTEM_CD, BUSI_TYPE, DEPT_ID, ZIP_CD, RBUSI_TYPE
FROM RBUSI_CLSF
WHERE BCLSF_CD IS NOT NULL 
    AND BCLSF_CD IN ('S1822')
--;  

-- ǥ�ر���з� ����  @@@@@@@@@@@@@  
INSERT INTO STNRD_CODE
(  
   BCLSF_CD, STNRD_CD, STNRD_NM, DESCR, PRE_STNRD_CD, STNRD_CLSF,
  STNRD_NM_ENG, PRE_SPHEAD_CLSF, AVAIL_EDATE, AVAIL_SDATE, REG_MBR_ID,
  REG_TIME
)  
SELECT 'S1343', 'NR00173', STNRD_NM, DESCR, PRE_STNRD_CD, STNRD_CLSF,
  STNRD_NM_ENG, PRE_SPHEAD_CLSF, AVAIL_EDATE, AVAIL_SDATE, REG_MBR_ID,
  REG_TIME
FROM STNRD_CODE
WHERE BCLSF_CD IS NOT NULL 
    AND BCLSF_CD IN ('S1822') AND STNRD_CD  IN ('NR00043') --S1810, S1811, S1812
--; 
--------------------------------------------------------------------------------------------------

SELECT LEVEL AS LV, BCLSF_CD, PRE_BCLSF_CD, BCLSF_NM
FROM RBUSI_CLSF_V
CONNECT BY PRIOR BCLSF_CD = PRE_BCLSF_CD
START WITH BCLSF_CD IN ( 'S1803','X1275')
http://c36wn.egloos.com/4350031
1. START WITH�� ó�� ������ ������ �ǹ��մϴ�.
2. CONNECT BY�� 1.�� �����Ϳ� ����� �ο츦 �ݺ��Ͽ� ã���ϴ�.  
==============================================================================================================

������������������� 2009.08.04(ȭ) �۾� �����������������
---> 07:00 ~ 18:30   --> �ִ븮 �ް�

- KIAT SM
- ���� Clob ����(���� �ڷ�� ����) 
- Proceure ����
CREATE OR REPLACE PROCEDURE ITEP_RDBA.SP_BOARD_FORM_ATTACH_INSERT( 
    I_NO         IN     VARCHAR,    --NO
    I_CATEGORY    IN     VARCHAR,    --ī�װ�
    I_FIRST_NO        IN     VARCHAR,   --���ʹ�ȣ
    I_PARENT_NO    IN     VARCHAR,  --�θ��ȣ
    I_DEPTH        IN     VARCHAR,       -- ���� ---------->
    I_SEQ        IN      VARCHAR,       --SEQ
    I_TITLE        IN      VARCHAR,        --����
    I_WRITER_ID    IN     VARCHAR,        --�ۼ���_ID
    I_REG_DATE    IN    VARCHAR,         --�����
    I_BUSI_PROC    IN    VARCHAR,        --  ������� �׸�   --  ----------------> 
    I_FAQ_CLSF    IN      VARCHAR,    --FAQ���� 
    I_FIRST_IN        IN      VARCHAR,    --�������1
    I_SECOND_IN    IN     VARCHAR,        --�������2
    I_THIRD_IN        IN    VARCHAR,          --�������3
    I_TEXT_CONTS_2    IN   CLOB,         --����2    --  ---------->
    I_DAMDANG_ID        IN      VARCHAR,    --�����ID
    I_DAMDANG_NM        IN      VARCHAR,    --�����
    I_DAMDANG_BUSEO    IN     VARCHAR,        --����ںμ�
    I_DAMDANG_BUSEO_ID    IN    VARCHAR,         --����ںμ�ID
    I_DAMDANG_TEL    IN   VARCHAR,         --����ڿ���ó   --  ----------------> 
    I_REALFILENAME    IN      VARCHAR,    --���������̸�
    I_ORGFILENAME        IN      VARCHAR,    --���������̸�
    I_FILEPATH    IN     VARCHAR,        --���ϰ��
    I_FILESIZE        IN    VARCHAR,         --����ũ��
    I_CONTTYPE    IN    VARCHAR          --����Ÿ��   --  ---------->
)

- ������ CLOB�˻� 
SELECT  NO, SEQ, READ_CNT, TITLE, WRITER_ID, TEXT_CONTS_2 TEXT_CONTS, 
    WHERE dbms_lob.instr(TEXT_CONTS_2, 'dd')>0 
==============================================================================================================

- ���༭��Ȯ��
������ȣ: 70006520, �����̷¾����з�����(2320: ���������ȹ������, 6620:���༭��Ȯ��) 
��������� --> ������� --> ���༭��Ȯ��
/itep-pms/WEB-INF/sql/contract/sql-contract.xml(contract.ContractDocument.subjectCheckList)
==============================================================================================================

������������������� 2009.08.05(��) �۾� �����������������
---> 07:40 ~ 18:00

- KIAT SM
- ���� Clob ����(���� �ڷ�� ����)  
dbms_output.put_line ( '������ : '  v_doffset  'Bytes' ); 
clob ��Ʈ����,  

- /config/qanda/struts-qanda-config.xml ���Ͽ���
<struts-config>
  <form-beans>
    <form-bean name="boardForm" type="org.apache.struts.action.DynaActionForm">
<form-property name="idx_no" type="java.lang.String" />    <!-- ADD(idx_no)   -->     
<form-property name="text_conts_3" type="nshell.fw.db.clob.StringClobType" />  <!-- ADD(text_conts_3)   --> 
    </form-bean>
  </form-beans>
</struts-config>

StringClobType.java, LobCleanUpInterceptor.java   
http://cafe.naver.com/deve.cafe?iframe_url=/ArticleRead.nhn%3Farticleid=921
==============================================================================================================

- ���� ����������߻�� ����Ÿ �̰�
�������� �����帰 ���� ����������߻�� ��ȸ�� ���Ͽ� ��� ���� ����� �����帮���� RND,RISNET���� 
��ȸ�� �� �ְ� ó��
DB ������ ITEP_DBA --> ITEP_RDBA�� �̵�(�����⺻ ���� 3,286 ��)
1. SUBJECT -> RSUBJECT(�����⺻ ����)
2. SBJCT_PRGS -> RSBJCT_PRGS(�����̷� ����)
3. SBJCT_BFUND_PRGS -> RSBJCT_BFUND_PRGS(����� ����)

4. SBJCT_RELCO -> RSBJCT_RELCO(�������þ�ü ����)  
5. SBJCT_MBR_HSTR -> RSBJCT_MBR_HSTR(�������ñ����� ����)
6. SBJCT_ORDR -> RSBJCT_ORDR(�������߱Ⱓ ����)

--- Į�� �߰�  ---------
ALTER TABLE RSUBJECT ADD ( 
T_WHERE_FROM    VARCHAR2(1 BYTE)    --���� ��ó(1:���� ����������߻��)
);
==============================================================================================================

 - ����ó�� ����
�λ����������ȹ�� ��â��(SALIMWINDOW/dusghk48) ������ 
����ó�� ������ȹ���� ������ȣ 70000519�� ������ ����ó�� �ϱ����Ͽ� 
ǥ�Ʒ��� [����ó��]�� Ŭ���� ��� ����â �߻�
==============================================================================================================

 - �������������� �����ý��� � �� �������� ���� ����(RFP)
1. ��������
 ��. �����Ⱓ : ��09�� 8�� 4��(ȭ) ~ ��09�� 8�� 12��(��) 15:00
 ��. �������ȸ : ����
 ��. ������ : �ѱ������������ �λ��ѹ���(�ѱ�������� 7��)
 ��. ���ݰ���
  1) �Ͻ� : ��09�� 8�� 12��(��) 15:00 ����
  2) ��� : ����û ��������
 ��. ����������ȸ
  1) �Ͻ� : ���� ���� ����
  2) ��� : ���� ���� ����
  3) ���ȹ�ǥ : �����Ϸ� �� ��ü�� �ð�����
 ��. �����ǥ : ��09�� 8 ��
2. �����о�(����) : �������������� �����ý��� � �� ��������(22õ����, VAT����)
�뿪�Ⱓ : ����� ~ 2010. 6. 30
 ������������
 �� �������������������ý��� � �� ��������
�� ���� ��� �̰��� ���� �ý��� ���� ���� ����
�� �ý��� ����� �� �������� ����
�� �߰� ��� ����
�� ���⹰ ����
�� ���� �μ� �ΰ� ����
------------------------------------------------------------------------------------------
. �߰� ��� ����
1) ���������Ǽ������������� ���� ���� �� �� ������� ��� ����
2) ���� �򰡰����� �ý��� ����κ� ������ ���Ͽ� �߻��� �� �ִ� ����� ������� �ؼҸ� ���� ��ü���
���� �� ���� ����
3) ����� ���ڰ��� �ý��� �����, ���� ����
4) ����� ī�忬�� ���� �� ���� ���� ����
5) ��Ÿ �űԾ����� �߰� ������ ���� �ұԸ��� ���� ����
--------------------------------------------------------------------------------------- 
. ���� ���
1) ������������������
 �� ��������������Ʈ(infra.itech.go.kr) ===> �赿�� �븮(ASP �)
 �� ��������������(infra.kiat.or.kr) ===> �赿�� �븮(ASP �)
2) ����������߻������(rnd.risnet.or.kr) ===> ���¸�(JAVA �)
3) RIC �������ͽ� ��Ʈ��ũ �ý���(www.uric.re.kr) ===> ������ �븮(JAVA �)
4) �����������������(www.risnet.or.kr) ===> �赿�� �븮(ASP �)
5) ���������Ǽ�������������(rnd.risnet.or.kr) ===> ������ �븮(JAVA �)
==============================================================================================================

- ���� ����ID ���� �Ϸ�
openid.daum.net/tamario  PW:ss*****2
==============================================================================================================

������������������� 2009.08.06(��) �۾� �����������������
---> 06:50 ~ 18:30

- KIAT SM
- ���� ����������߻�� ����Ÿ �̰�
���� ����������߻�� ����Ÿ�� ITEP_DBA�� �ֱ� ������ ITEP_RDBA�� �̰��� �ؾ� �մϴ�.
�׷��� �Ʒ� 6���� ����Ÿ�� Ȯ���غ� ��� �̰��� ����Ÿ�� �̰� ���� ����Ÿ�� �ʵ���� ���� �Ͱ�
�ʼ� �Է� �ʵ尡 ���� ���� �ټ� �����ؼ� �̰��� �Ұ��� �մϴ�. ���������� �̰��Ѵٰ� �ϴ���
����Ÿ ���ߴµ� ���� �ð��� �ҿ�� ������ �Ǵܵ˴ϴ�. 
DB ������ ITEP_DBA --> ITEP_RDBA�� �̵�(�����⺻ ���� 3,286 ��)
1. SUBJECT -> RSUBJECT(�����⺻ ����)
2. SBJCT_PRGS -> RSBJCT_PRGS(�����̷� ����)
3. SBJCT_BFUND_PRGS -> RSBJCT_BFUND_PRGS(����� ����)
4. SBJCT_RELCO -> RSBJCT_RELCO(�������þ�ü ����) 
5. SBJCT_MBR_HSTR -> RSBJCT_MBR_HSTR(�������ñ����� ����) 
6. SBJCT_ORDR -> RSBJCT_ORDR(�������߱Ⱓ ����) 
==============================================================================================================

- �׽�Ʈ ����� ���� �� �ù����̼� �ǽ�(�� �����ܺ�)
ID/PWD:  risnet/rnd12 
���ü ����(BUSI) ��� --> ����ڹ�ȣ:2208150346, ���ι�ȣ:5048125300 
-- UPDATE MEMBER M
SET M.CITI_NO= '5605052615839', M.PASSWORD= 'rnd12', M.MBR_NM= '�����',  M.EMAIL= '*@*.*'
WHERE M.MBR_ID IS NOT NULL 
     AND M.LOGIN_ID = UPPER('risnet')
==============================================================================================================

- ������ ����
����ȭ(JONG28/ddc9090) 
- �����(����������) --> /subjectApp/sub_view_expensess.jsp
http://localhost:8080/pms/subject/subjectApp-exp.do?actmode=expensess&sbjct_id=70007002&c_step=0&c_ordr= 
- 1���� ����� �Է�  --> /subjectApp/sub_input_exp_org.jsp
http://localhost:8080/pms/subject/subjectApp-exp.do?actmode=orgexp&sbjct_id=70007002&c_step=0&c_ordr=&nsbjct_id=70007002&n

- �Ż���� : �ش� ������ ����� ���񺰷� ������ �´� 
2009�� �ű԰������ ���� 4��� 15������ 4��� 7�������� ����
���� ��ȣ 1280 ���� ������ 4��� 15������ ����
--------------------------------------------------------------------------------

-- ����񿹻��� ���� ��ȸ  @@@@@@@@@@@@@  
SELECT  
     BITEM_CD ������,  BITEM_NM �������Ī,   AVAIL_SDATE ��ȿ������,
    AVAIL_EDATE ��ȿ������,  DESCR ����,  PRE_BITEM_CD ����������,  REG_TIME
FROM BUSI_ITEM F   --�������񱸼�
WHERE F.BITEM_CD IS NOT NULL
  AND F.BITEM_CD IN ( 'S1343')    -- ����з��ڵ� --> S1341 
  --AND F.BCLSF_CD IN ( 'S1343') 
--;

-- �������񱸼� ���� ��ȸ  @@@@@@@@@@@@@  
SELECT  
    BITEM_CD ������,  BCLSF_CD ����з�,  RDMTN_CLSF ȯ������,  CALC_BASE ��������,  AVAIL_SDATE ��ȿ������,
    AVAIL_EDATE ��ȿ������,  DISP_ORDR ���ü���,  REG_MBR_ID,  REG_TIME
FROM RBFUND_ITEM F   --�������񱸼�
WHERE F.BCLSF_CD IS NOT NULL
  AND F.BCLSF_CD IN ( 'S1343')    -- ����з��ڵ� --> S1341 
  --AND F.BCLSF_CD IN ( 'S1343') 
--;   

-- �������񱸼� ���� ����  @@@@@@@@@@@@@  
INSERT INTO RBFUND_ITEM
(  
   BITEM_CD,  BCLSF_CD,  RDMTN_CLSF,  CALC_BASE,  AVAIL_SDATE,
   AVAIL_EDATE,  DISP_ORDR,  REG_MBR_ID,  REG_TIME
)   
SELECT  
    BITEM_CD,  'S1355' ����з�,  RDMTN_CLSF ȯ������,  CALC_BASE ��������,  '20090806' ��ȿ������,
    AVAIL_EDATE ��ȿ������,  DISP_ORDR ���ü���,  REG_MBR_ID,  REG_TIME
FROM RBFUND_ITEM F
WHERE F.BCLSF_CD IS NOT NULL
  AND F.BCLSF_CD IN ( 'S1835')    -- ����з��ڵ� 
--; 
==============================================================================================================

- �ְ�����
1. ���� ����������߻�� ����Ÿ �̰�(����: ��ȸ�� ������ ������ ����)
2. ���� ��Ͻ� ��з� ��� �߰� ��û
3. �׽�Ʈ ����� ����
4. �ù����̼� �ǽ�(�� �����ܺ�)
- ������ ����
1. ���ȼ��� ���� ��纰�� ����(RFP�� ������ ����)
2. �ǰ��� �� 20���� ��� ����
==============================================================================================================

������������������� 2009.08.07(��) �۾� �����������������
---> 07:50 ~ 18:30

- KIAT SM
- ����񿡼� �����⿬�� ���� ��� ����
�⺻���� tab --> ����ã�⿡�� �Ѱ����� ��� ���� ���ΰ��� ��� ��ü�� �Ұ��� �մϴ�(������ ���� ������ ���) 
�������� ��ϵ� �Ѱ������� �����⿬�� ������ DB���� ������ �����⿬�� ������ �ʰ��ϸ� alertâ�� ��
--> ����� ������ ��û���� ���뿡�� ���� 
/subject/subjectApp/sub_input_exp_org.jsp ����
if(ff.grate.value > <%= govMax %>){    //�����⿬�� ����(ff.grate.value)�� DB���� ������ �����⿬�� ����(govMax)���� ũ�� 
errMsg += "�����⿬�� ������ <%= govMax %>%�� �ʰ� �Ͽ����ϴ�.\n[ff.grate.value ]"+ ff.grate.value 
+"[tempStr]"+ '<%= tempStr %>'; 
}
==============================================================================================================

- ���� ��� ���� �� �׽�Ʈ ����Ÿ ����
������ȹ --> ��������(310 2009-278), �׿� --> �������� (310, 2009-277)
==============================================================================================================

- ����������ȸ ����������� ��ȸ �ȵ�
������ȣ; 70001332, �Ӽ���(MARKSMUS/lim3390)  
RDUTY_SBJCT: ������������ȹ  ���� �߰�, RSBJCT_PRGS: ���������� ���� �̷� ���� �߰� 
-- ������������ȹ ���� ����  @@@@@@@@@@@@@
CREATE TABLE RDUTY_SBJCT_20090007 AS SELECT * FROM RDUTY_SBJCT
--;
-- ���������� ���� �̷� ����  ����  @@@@@@@@@@@@@
CREATE TABLE RSBJCT_PRGS_20090007 AS SELECT * FROM RSBJCT_PRGS
--;
==============================================================================================================

- STOCKS
��(3,110), ȭ(3,085), ��(3,130), ��(2,910), ��(3,100) 
==============================================================================================================

������������������� 2009.08.08(��) �۾� �����������������
---> 08:10 ~ 18:00

- KIAT SM
- ���ȼ� �ۼ�
��.2 ��������������_54p.ppt 
��. ����ι�
2. �����������
2.1 ����
2.2 ������������
2.3 ���⹰
2.4 Ȱ�뵵���� ���
2.5 ������
3. ����ȯ��
3.1 ������� ������Ȳ �� ������
3.2 ���õ��� ���� Ȯ����Ȳ
==============================================================================================================

������������������� 2009.08.10(��) �۾� �����������������
---> 07:00 ~ 19:00  --> 2009�⵵ �������������߻�� �������� ����, ��븮 �ް�

- KIAT SM
- ������û(�¶��� ����) --> /subjectApp/sub_input_list.jsp
http://localhost:8080/pms/subject/subjectApp-list.do?actmode=list
==============================================================================================================

- ���� ÷������ ó��
����: ÷������ ���ε�� �Ǿ �ٿ�ε� �Ұ���
-- ���� ÷���ڷ� ���� ��ȸ    @@@@@@@@@@@@@ 
SELECT  SEQ SEQ, ESACT_ID ÷����ü, ATTACH_NM ÷�ι���Ī, ATTACH_TYPE_CD ÷�ι�������, 
ATTACH_OLINK Obj�ڷ�link,  SBJCT_ID �ش�÷�ι��̼ҼӵȰ���, RPT_ID, ESACT_GB, ESACT_SEQ, 
ESACT_DEPT_ID, REG_MBR_ID �����, REG_TIME ����Ͻ�
-- SELECT *
FROM RESACT_ATTACH_DOC A
WHERE A.SEQ IS NOT NULL
      AND A.ESACT_ID IN ('1311')         --÷����ü(����ID) 
ORDER BY A.SEQ DESC
--;   
==============================================================================================================

- ��ü�� ���� ��û --> ����ȹ�� ����ȯ(JHB6025/min3311) ������
���� ������/���ü ���� ���ü������ȸ�׺��� �׸񿡼� ����ڵ�Ϲ�ȣ 610-81-03763 �� �˻��ϸ� ���ü 
���� �ߵ��������� �˻��� �Ǵµ�, �ٲ� ���ü ���� ��DH-Holdings��   6108103763
==============================================================================================================

- �Ǽ��� ���� ���
1. �ҽ� ���� �Ϸ�
2. �ҽ� ����
3. \\110.14.182.195\itep-pms������ ����(src������ .java���Ͽ��� �� ����)
4. \\110.14.182.195\01. tama_195\01. ���� �۾� ���� ����Ʈ����
 1) 01. ���� �۾� ���� ����Ʈ(kiat).xls �ۼ�
 2) ������ ��� ���� ��¥���� ���� ���� ����(��: 2009-08-07)
==============================================================================================================

- �۾� ������ �̻ڰ� ���� ���(���۱۾�)
http://www.korea700.com --> N-283/tama12
==============================================================================================================

������������������� 2009.08.11(ȭ) �۾� �����������������
---> 07:00 ~ 19:00

- KIAT SM
- �ܱ��� ȸ������ ����
�ܱ��� ��Ϲ�ȣ: *
p_soid = theForm.soid1.value + theForm.soid2.value;   //�ܱ��� ��Ϲ�ȣ(���� ����)
�ڱ��: 010-4811-0
������ �ֹι�ȣ �˻� �߰�(�Ǹ�Ȯ���� ������ ����)
==============================================================================================================

- �Ǽ��� ����(����)
1. ���� ÷������ ó�� 
-- ���ñ��� �� ���� ���� ��� ����    @@@@@@@@@@@@@
--UPDATE BOARD_FORM_ATTACH 
SET CONTTYPE= 'hwp'   
WHERE CONTTYPE= 'application/haansofthwp'   
--;  

-- ���ñ��� �� ���� ���� ��� ����    @@@@@@@@@@@@@
--UPDATE BOARD_FORM_ATTACH 
SET FILEPATH= 'Z:\form_attach_doc\200908'      
WHERE FILEPATH= 'Z:\board\200908'   
--;  

- ���� �Լ� ó�� 
- /common/util/CMStringUtil.java ����
public static String getContentType(String strFileName, String strContentType)  //����Ÿ�� ���� ���� ���� �Լ�
{
if (strFileName != null && !"".equals(strFileName.trim()) && strFileName.indexOf('.') != -1) {
  strFileName = strFileName.toLowerCase();
  strContentType = strFileName.substring(strFileName.lastIndexOf('.') + 1,  strFileName.length());
  } else {
  strContentType = "��Ÿ";
}   
return strContentType;
}  

p_ContentType = CMStringUtil.getContentType(finfo.getSaveFileName(), finfo.getContentType());    //����Ÿ�� ���� ����  
==============================================================================================================

 --���� ��ġ ���� ��ȸ   @@@@@@@@@@@@@
SELECT P.SBJCT_SEQ SEQ, P.PNSMNT_TRGT_CLSF �����󱸺�,  --�����󱸺�(1: ������, 2:���ü)
            P.PNSMNT_CD ��������, P.RSN_CLSF ���αٰ�,   --���αٰ�(1:����, 2:�ܺ�)
            P.PNSMNT_SDATE ��������, P.PNSMNT_SDATE ���������, P.PNSMNT_EDATE ����������, 
            P.SBJCT_ID ���ο��αٰŰ���, P.DESCR �������, RCPT_NO ��������ó����_������ȣ
FROM PNSMNT P
WHERE P.PNSMNT_TRGT_CLSF = '1'
   -- AND P.PNSMNT_TRGT_ID    = M.MBR_ID
    AND P.PNSMNT_CLSF       = '2500'
    AND P.AVAIL_EDATE       = '99991231'
    AND P.PNSMNT_EDATE      >= TO_CHAR(SYSDATE,'YYYYMMDD')
    AND (P.PNSMNT_CD NOT IN ('1008','1001') AND PNSMNT_GB IS NULL)
==============================================================================================================

- ��Ź��� �ߺ� ��� ����
����: ������û --> �����⺻���� Tab���� ��Ź��� �˻���
        �泲���б� �������´��� 2�� �����ϰ� ����� �ϸ� ��Ź��� �ߺ����� ����� �ȵ�
����: ��Ź����� ���� ����ڹ�ȣ(3148209264) �̱� ������ ��� �Ұ�
��ġ: ��Ź����� ����ڹ�ȣ(3148209264)�� FK�̱� ������ �ߺ� ��� �Ұ���(�ߺ��� ����ϸ�
        ��ü ����Ÿ�� ������ ����)
����: 
�泲���б� �������´� ���Ͽ� �泲���Ǵ� �񴢱���� ȣ��⳻�� �� ���� ��Ź������ 
�ֱ�� �ϰ�  �Է��� �Ͽ����ϴٸ� "���� �ܰ�"�� �Ѿ �� ��Ź����� �ߺ��ȴٴ� �޼����� 
������ ������ �� �� �� ���� ��Ȳ�Դϴ�.
(��)�����Ʈ��  �濵������ ����� ���� *
==============================================================================================================

 - ��Ź��� �˻����� ��ǥ�ڸ� �� ����
������(042-612-3199)
����: ���ؼ� ==> ȸ�� ������ �ȵǾ� ����
SELECT * FROM RMBR_BUSICEO_HSTR A
WHERE A.BUSI_ID = '10016133' 

-- ��ǥ�ڱ����̷� ���� ����  @@@@@@@@@@@@@  
INSERT INTO MBR_BUSICEO_HSTR
(  
   BUSI_ID,  MBR_ID,  ROLE_CD, AVAIL_SDATE, AVAIL_EDATE,   
   REG_MBR_ID,  REG_TIME
)     
SELECT   '10016133' BUSI_ID,  '12915991' MBR_ID,  ROLE_CD, '20090812' AVAIL_SDATE,'99991231' AVAIL_EDATE,   
'12915493' REG_MBR_ID,  SYSDATE REG_TIME
FROM MBR_BUSICEO_HSTR S 
WHERE S.BUSI_ID IS NOT NULL 
 AND S.BUSI_ID IN ('00008863')       --���üID
--; 
==============================================================================================================

- ���ü ����
��û: ���ü ����ڸ� ����(GUNGJUNG/cjdgh) --> ���ȯ(KHKIM450/450kim)) ���� ��û
����ڹ�ȣ: 6218147591, (��)ûȣ��Ǫ��, T) 051-999-6967
�����û ���� --> �������� ���� ������ ���ؼ��� ���� 
--��ǥ�ڱ����̷� ���� ���� @@@@@@@@@@@@@  ===> ó�� ����
UPDATE RMBR_BUSICEO_HSTR B
SET B.MBR_ID = '10089675'  --������ID
WHERE B.BUSI_ID IN ('10033495')   --���ü ID
--; 
-- ���ι�ȣ ���(COBUSI_NO)�� ��� �Ǿ� �־�� �� ��� ����
 (�ΰ���б�  ������, �Ŷ���б� �Ϲ��� �ȵ�)

 --���ü ���� ��ȸ  @@@@@@@@@@@@@   
SELECT  COBUSI_NO, M.BUSI_ID AS ���üID, M.BUSI_NM AS ���ü��, 
    (SELECT MBR_ID FROM RMBR_BUSICEO_HSTR WHERE ROLE_CD='1001' AND AVAIL_EDATE='99991231' 
AND M.BUSI_ID = BUSI_ID AND ROWNUM = 1) AS ��ǥ��ID, M.COBUSI_NO ���ι�ȣ, M.BUSI_NO AS ����ڹ�ȣ, M.BUSI_CLSF, 
    (SELECT CODE_NAME FROM RCODE WHERE MAIN_CODE='1032' AND AVAIL_EDATE='99991231' 
AND SUB_CODE=M.BUSI_CLSF) AS ANCM_CLSF_NM 
FROM BUSI M
WHERE M.BUSI_ID IS NOT NULL
     AND M.BUSI_NM LIKE '%���Ͼ˹̴�%'       --���ü��
   --AND M.BUSI_ID  IN ('05002299')  --���üID
    AND M.BUSI_NO  IN ('5028107788')  --����ڹ�ȣ
--;

--���ü ���� ����  @@@@@@@@@@@@@  
-- UPDATE  BUSI M
SET M.COBUSI_NO= '5403012122612'    ---���ι�ȣ�� ������ �ֹι�ȣ�� ��ġ�ؼ� ���
WHERE M.BUSI_ID IS NOT NULL
     AND M.BUSI_NM LIKE '%���Ͼ˹̴�%'       --���ü��
   --AND M.BUSI_ID  IN ('05002299')  --���üID
    AND M.BUSI_NO  IN ('5028107788')  --����ڹ�ȣ
--;
    
-- ��ǥ�ڱ����̷� ���� ����  @@@@@@@@@@@@@  
INSERT INTO MBR_BUSICEO_HSTR
(  
   BUSI_ID,  MBR_ID,  ROLE_CD, AVAIL_SDATE, AVAIL_EDATE,   
   REG_MBR_ID,  REG_TIME
)     
SELECT   '10016133' BUSI_ID,  '12915991' MBR_ID,  ROLE_CD, '20090812' AVAIL_SDATE,'99991231' AVAIL_EDATE,   
'12915493' REG_MBR_ID,  SYSDATE REG_TIME
FROM MBR_BUSICEO_HSTR S 
WHERE S.BUSI_ID IS NOT NULL 
 AND S.BUSI_ID IN ('00008863')       --���üID
--; 
==============================================================================================================
 
������������������� 2009.08.12(��) �۾� �����������������
---> 06:50 ~ 19:00

- KIAT SM
- �ý���ȸ������������ �ۼ�(�ý���ȸ������������.xls)
1. ��������򰡰����ý��� ���� ȹ�� ���
 1) ȸ�� ���Խ� �Ϲݰ�����(����ڿ���, �������������ȹ��, ����������� ��)�� ȸ�� ����
- MEMBER ���̺� NDEPT_ID(���ҼӺμ�ID)�� R%, L%, M%�� ��ϵ�
(R%, L%, M% NDEPT_ID MEMBER   R:������, M:�����(��Ÿ �������), L:�����)
 2) ���� �����ڰ� MBR_ROLE_SYSTEM(�ý��ۺ� ��뿪��) ���̺� PRG_ROLE_CD(����) �ʵ忡 �Ʒ� ���� ���
- C0000: ������ ����
 3) ��������򰡰����ý��� ���� �α����� NDEPT_ID(���ҼӺμ�ID)�� ���� R%, L%, M%�� ��ȸ
 (DB ���α׷� �ҽ��� R:������, M:������� �����Ͽ� ���ѿ� ���� ��ȸ�� ����)
2. ������
 1) ���������� ȸ�����̺�(MEMBER) NDEPT_ID(���ҼӺμ�ID)���� ��������򰡰����ý��� ������ ����
  --> MBR_ROLE_SYSTEM(�ý��ۺ� ��뿪��) ���̺��� �����ϴ� ���� �ٶ����ϴٰ� �Ǵٵ�
  2) ���α׷� �ҽ��� R:������, M:������� �����Ͽ� ���ѿ� ���� ��ȸ ó��
  --> DB ���α׷� �ҽ��� ���� ������ �����ϴ� ���� ���輺�� ũ�� �ٶ������� �ʴٰ� �Ǵܵ�

--���� ���� ����   @@@@@@@@@@@@@ 
SELECT (CASE WHEN NDEPT_ID LIKE 'R%' THEN NDEPT_ID
WHEN NDEPT_ID ='M998' THEN 'R%'      --�μ�ID �߰�(M998:�ѱ������������)
WHEN NDEPT_ID = (SELECT DEPT_ID FROM DEPT_V
WHERE DEPT_ID = NDEPT_ID
CONNECT BY PRIOR DEPT_ID = PRE_DEPT_ID
START WITH DEPT_ID = 'M000') THEN 'R%' 
 END)
FROM MEMBER
WHERE MBR_ID = ?    --ȸ��ID

--�μ� ���� ����   @@@@@@@@@@@@@ 
UPDATE DEPT
SET PRE_DEPT_ID= 'M400'  --���� �μ�ID(M400: �������ź���)
WHERE DEPT_ID = 'M998'    --�μ�ID(M998: �����)
==============================================================================================================

- ��ü ������������ �ٿ�ε�
�ߺ����˻缭��(�˻����������(�ߺ����˻缭��).xls)
- DB ���� 2�� �׸��带 1�� �׸��� ��ȸ�� ����(���� ����Ÿ -> ���� ���� ����Ÿ�� ����)
--Ű���� ���� ��ȸ   @@@@@@@@@@@@@ 
SELECT M.SBJCT_ID, MAX(M.KEYWORD_1) Ű����_1, MAX(M.KEYWORD_2) Ű����_2, MAX(M.KEYWORD_3) Ű����_3
FROM
 ( 
    SELECT K.SBJCT_ID, K.KEYWORD KEYWORD_1, '' KEYWORD_2, '' KEYWORD_3
    FROM RSUBJECT C, RSKEYWD K
    WHERE C.SBJCT_ID = K.SBJCT_ID
        AND K.SBJCT_ID = '70006974'
        AND K.KEY_CLSF = '1'
        AND K.KEYWORD = '�׽�Ʈ'
    GROUP BY K.SBJCT_ID, K.KEYWORD 
    UNION ALL
    SELECT K.SBJCT_ID, '' KEYWORD_1, K.KEYWORD KEYWORD_2, '' KEYWORD_3
    FROM RSUBJECT C, RSKEYWD K
    WHERE C.SBJCT_ID = K.SBJCT_ID
        AND K.SBJCT_ID = '70006974'
        AND K.KEY_CLSF = '1'
        AND K.KEYWORD = '�׽�Ʈ_��'
    GROUP BY K.SBJCT_ID, K.KEYWORD
    UNION ALL
    SELECT K.SBJCT_ID, '' KEYWORD_1, '' KEYWORD_2, K.KEYWORD KEYWORD_3
    FROM RSUBJECT C, RSKEYWD K
    WHERE C.SBJCT_ID = K.SBJCT_ID
        AND K.SBJCT_ID = '70006974'
        AND K.KEY_CLSF = '1'
        AND K.KEYWORD = '�׽�Ʈ_��'
    GROUP BY K.SBJCT_ID, K.KEYWORD
) M
GROUP BY M.SBJCT_ID    
--; 
==============================================================================================================

- ���ҼӺμ����� ����
������ 053-850-3748
 --ȸ������ ����   @@@@@@   --> ���ҼӺμ�����(3 --> 2�� ����)
UPDATE MEMBER M
SET M.NDEPT_CLSF= '2'   --���ҼӺμ�����(1:��������, 2:�ܺλ����, 3:����, �ܺ�X)
WHERE M.MBR_ID IS NOT NULL 
   AND M.MBR_ID IN ('05030274') 
==============================================================================================================

- ������ ���(�Ϲݰ����� �߰�)
������������ȹ�� ����ȯ
���� �ʿ��� �ٹ��Ͻô� �������� �ڻ�ԡ����� ���λ������� �����Ͻð� �������� �������� �ڻ�ԡ����� ���̽��ϴ�.
�̿� ������ �ڻ�Բ��� �Ͻô� ������ �μ��ΰ� �޾� �ڵ���/���� ��� �о� ���翪���� �ϽŴٰ� �մϴ�.
�̿� ������������� ���հ����ý����� ��������� �򰡰����ý��ۡ� ����� ��� �� �� �ֵ��� ���� ��û �帳�ϴ�.
����: ������, SDS18/7301sds
==============================================================================================================

- ȸ�� ���� ����
��õ��(OHCR/ohcr0324): NDEPT_CLSF AS ���ҼӺμ�_���ü����CD   --> �迵��(ANGELSON/dwst7280)

 --ȸ������ ����   @@@@@@   --> ���ҼӺμ�����(3 --> 2�� ����)
UPDATE MEMBER M
SET M.NDEPT_CLSF= '2'   --���ҼӺμ�����(1:��������, 2:�ܺλ����, 3:����, �ܺ�X) -> 1:151, 2:373,89, 3:12,391
WHERE M.MBR_ID IS NOT NULL 
   AND M.MBR_ID IN ('05030274')
==============================================================================================================

������������������� 2009.08.13(��) �۾� �����������������
---> 07:20 ~ 19:00

- KIAT SM
- ������� --> �����û����(�����û) ===> ������ ȭ��
1. ������ ����
2. �ְ����(�Ѱ��������) ����: �ְ���� ��ǥ�� ����, �ְ���� ����, �Ѱ�å���� ����
3. ������� ����: ������� ��ǥ�� ����, ������� ����
4. ��Ź��� ����: ��Ź���å���� ����, ��Ź��� ����
5. �ǹ� ����� ����
6. �Ѱ��߱Ⱓ�׸�ǥ���� ����: �Ѱ��߱Ⱓ�׸�ǥ���� ����, �Ѱ��߱Ⱓ ����
7. ��Ÿ ����: ������ ����, ����� ����, ��Ÿ ����
==============================================================================================================

- �Ѱ����� ���(������ȣ: 70007041)
�Ѱ��ְ����, �Ѱ�å���� ���
�������, ��Ź��� ��� ����
- ���ΰ��� ���
�����ְ����, �����ְ�å���� ���
�������, ��Ź���(����) ���
�ְ������ ������ü�� �� --> ����������� ���
��Ÿ:
�� ����� �Ѱ�����, ���ΰ��� ��� ����
������Ͻ� �Ѱ�����å���� ���� �Ұ� --> ������ ȭ�鿡�� ó�� ����
==============================================================================================================

- ȸ������ ���� ����
������(YWKIM1/1066824) 033-248-2631
ȸ������ �������� ���ҼӺμ����� 3���� ���� ���� 
<html:hidden property="classcd" value="CODE"/> <!--// ����_13��° --> �߰�
ȸ������ �������� ���� �����ϸ� ���ҼӺμ����� 3���� 2�� ������ 
==============================================================================================================

-- �α��� ���� ��ȸ   @@@@@@@@@@@@@ 
SELECT  L.MBR_ID AS ������ID, L.LOGIN_TIME AS �α���_�ð�, L.LOGOUT_TIME �α׾ƿ�_�ð�, L.IP_ADDR AS IP�ּ�,
        M.LOGIN_ID AS �α���ID, M.PASSWORD, M.MBR_NM AS ����, M.CITI_NO AS �ֹι�ȣ, M.NDEPT_ID AS ���ҼӺμ�ID, 
        M.FRGN_CLSF ���ܱ��α���,    -- �ܱ��α���(null:������,1:�ܱ���) 
        (SELECT MAX(DEPT_NM) FROM DEPT WHERE DEPT_ID=M.NDEPT_ID) AS ���ҼӺμ�,  
        M.NDEPT_CLSF AS ���ҼӺμ�_���ü����CD, M.PHONE_NO1 ��ǥ����ó, M.PHONE_NO2 ��ǥ����ó2, M.EMAIL �̸���,
        M.NOW_PSTN AS ������, M.NBLNG_CO_NM AS ���Ҽ�ȸ���, M.NCO_ADDR AS ��Ÿ�ּ�, M.PRG_ROLE_CD AS ���α׷���뿪��, 
        M.NDEPT_CLSF AS ���ҼӺμ�_���ü����, M.REG_TIME, M.REG_TIME   
FROM MEMBER M, LOGIN_INFO L   
WHERE L.MBR_ID IS NOT NULL
    AND M.MBR_ID = L.MBR_ID
    --AND M.MBR_ID IN ('10025687')      --������ID(�鳫��(12912862), �����(10003062), ���¸�(12915493))  
ORDER BY L.LOGOUT_TIME DESC 
--;
==============================================================================================================

- �繫�����
�����(KOMIS913/komisl0ver)
���(ȸ��)�⵵ ����
/home/business/BusinessSB.java ����
setAttribute("YYYY", DateUtil.getYear(15, 0));    //���(ȸ��)�⵵ ����((���� ���� -15�⵵ �޺� �ڽ��� ����)
--> 4���� 15�� ����
==============================================================================================================

- ���ü ���� ����
������������ȹ�� ��ö�� 
�̿�ȣ ��ǥ���� ����� ���Խ� �ֹι�ȣ��  650830-50�� ���� --> ���� �Ǿ� �־���
���ι�ȣ�� �̿�ȣ���ü ���/�������� ó�� �ϵ��� ����
-- ��ǥ�ڱ����̷� ���� ����  @@@@@@@@@@@@@  
INSERT INTO MBR_BUSICEO_HSTR
(  
   BUSI_ID,  MBR_ID,  ROLE_CD, AVAIL_SDATE, AVAIL_EDATE,   
   REG_MBR_ID,  REG_TIME
)      
SELECT   '10016592' BUSI_ID,  '12915942' MBR_ID,  ROLE_CD, '20090813' AVAIL_SDATE,'99991231' AVAIL_EDATE,   
'12915493' REG_MBR_ID,  SYSDATE REG_TIME
FROM MBR_BUSICEO_HSTR S 
WHERE S.BUSI_ID IS NOT NULL 
 AND S.BUSI_ID IN ('00008863')       --���üID
--; 
==============================================================================================================

- �ְ�����
1. ��Ź��� �ߺ� ��� ���� �м�
2. ���ü ���� ����
3. ��� ���� ���� ó�� �� �䱸���� ����(�����Ϻ��� ���� ��)
==============================================================================================================

OCI --> 031-734-2743  
==============================================================================================================

������������������� 2009.08.14(��) �۾� �����������������
---> 06:50 ~ 18:30

- KIAT SM
- ���� ����R&D ����Ʈ �ۼ�
���� ����R&D ����Ʈ(200908).xls
==============================================================================================================

- ���� �ڷ�� ����
���� �ڷ�� ���̺� ����
BOARD_FORM_ATTACH(���� �ڷ�� Table) ==> 
DATAROOM_FORM(���� �ڷ�� Table), DATAROOM_FILE(�ڷ�� ÷������ Table)�� ����
���� ����: ÷�������� ������ ��� �� �� �־�� �� 
-------------------------------------------------------------------------------------------

- �������� ��� 
�������, �������� ���̺� ����
BOARD_NOTICE(�������, �������� Table), DATAROOM_FILE(�ڷ�� ÷������ Table)
- �ֿ�������(����: �������)
http://admin.kiat.or.kr/login.asp  --> kiatadmin/rhksflwkwk 
==============================================================================================================

-- �ߺ� ����Ÿ ��ȸ    @@@@@@@@@@@@@  ==> 2�� �̻�
SELECT  *
FROM BOARD_FORM_ATTACH M
WHERE ROWID > ( SELECT MIN(ROWID)  
FROM BOARD_FORM_ATTACH  B
WHERE B.NO= M.NO  
)
--AND A.IDX > 76241   --IDX
ORDER BY M.NO DESC
--; 

-- ���� �ڷ�� ���� ����  @@@@@@@@@@@@@  
INSERT INTO DATAROOM_FORM
(  
NO, IDX_NO, SEQ, FIRST_NO, PARENT_NO, DEPTH,
TITLE, TEXT_CONTS, TEXT_CONTS_2, CATEGORY, SORT_CD,  ---------->
BUSI_PROC, FIRST_IN, SECOND_IN, THIRD_IN, WRITER_ID,
  REG_DATE, DAMDANG_ID,  ---------->
DAMDANG_NM, DAMDANG_BUSEO, DAMDANG_BUSEO_ID, DAMDANG_TEL, READ_CNT,
UP_DATE
)      
SELECT  
NO, IDX_NO, SEQ,  FIRST_NO, PARENT_NO, DEPTH,
TITLE, TEXT_CONTS, TEXT_CONTS_2, CATEGORY, FAQ_CLSF,  ---------->
BUSI_PROC, FIRST_IN, SECOND_IN, THIRD_IN, WRITER_ID,
REG_DATE, DAMDANG_ID,  ---------->
DAMDANG_NM, DAMDANG_BUSEO, DAMDANG_BUSEO_ID, DAMDANG_TEL, READ_CNT,
UP_DATE
FROM BOARD_FORM_ATTACH   
--; 

-- �ڷ�� ÷������ ���� ����  @@@@@@@@@@@@@  
INSERT INTO DATAROOM_FILE
(  
NO, SEQ, REALFILENAME, ORGFILENAME, FILEPATH,
FILESIZE, CONTTYPE 
)      
SELECT  
NO, SEQ, REALFILENAME, ORGFILENAME, FILEPATH,
FILESIZE, CONTTYPE 
FROM BOARD_FORM_ATTACH   
--;  
==============================================================================================================

- �������´��� ����
�������������ȹ�� ����ȭ
*@*.*  --> �輼�� 042-821-6748  �泲���б� �������´�(3148209264)
�赵��(DOJIN/djk1067021) --> �輼��(KIM7463/kimsebin7463)
���̵�� sbkim�̱���, ��ǥ�� ������ �輼�� 
 --���ü ���� ��ȸ  @@@@@@@@@@@@@    ===> �Ѱ�å���� ����
SELECT  COBUSI_NO, M.BUSI_ID AS ���üID, M.BUSI_NM AS ���ü��, M.BUSI_NO AS ����ڹ�ȣ, 
    M.COBUSI_NO ���ι�ȣ, M.BUSI_CLSF, 
        (SELECT MBR_ID FROM RMBR_BUSICEO_HSTR WHERE ROLE_CD='1001' AND AVAIL_EDATE='99991231' 
    AND M.BUSI_ID = BUSI_ID AND ROWNUM = 1) AS ��ǥ��ID, --> Ȯ�� �ʿ�
        (SELECT CODE_NAME FROM RCODE WHERE MAIN_CODE='1032' AND AVAIL_EDATE='99991231' 
AND SUB_CODE=M.BUSI_CLSF) AS ANCM_CLSF_NM 
FROM BUSI M
WHERE M.BUSI_ID IS NOT NULL 
    AND M.BUSI_ID  IN ('10022690')  --���üID 
--;

-- ��ǥ�ڱ����̷� ���� ��ȸ  @@@@@@@@@@@@@  
SELECT *
FROM RMBR_BUSICEO_HSTR WHERE ROLE_CD='1001' AND AVAIL_EDATE='99991231' 
    AND  BUSI_ID = '10022690'
    
-- ��ǥ�ڱ����̷� ���� ����  @@@@@@@@@@@@@    ===> ����� �̸�(�輼��)���� ���
INSERT INTO MBR_BUSICEO_HSTR
(  
   BUSI_ID,  MBR_ID,  ROLE_CD,  AVAIL_EDATE,  AVAIL_SDATE,
  REG_MBR_ID,  REG_TIME
)      
SELECT  BUSI_ID,  '10120518' MBR_ID,  ROLE_CD,  '99991231' AVAIL_EDATE,  
to_char(sysdate,'yyyymmdd') ��ȿ������, REG_MBR_ID,  REG_TIME
FROM MBR_BUSICEO_HSTR S 
WHERE S.BUSI_ID IS NOT NULL 
 AND S.BUSI_ID = '10022690'
--; 

--��ǥ�ڱ����̷� ���� ���� @@@@@@@@@@@@@  ===> ���� �̸�(�赵��) ��ȿ������ ó��
UPDATE RMBR_BUSICEO_HSTR B
SET B.AVAIL_EDATE = '20090813'   --��ȿ������(���� ��¥��) ó�� --> ���̻� ��� ����
WHERE B.BUSI_ID IN ('10022690')   --���ü ID
--; 
==============================================================================================================

- ���� ���� ���� ����ó �ȳ� ����â �ٿ��
090814_allstop.html
==============================================================================================================

- STOCKS
��(3,070), ȭ(3,200), ��(3,185), ��(3,160), ��(3,150) 
==============================================================================================================

������������������� 2009.08.17(��) �۾� �����������������
---> 06:50 ~ 19:00  --> ����(�������� �ָ��� �� ��)

- KIAT SM
- ���� �ڷ�� ����
���� �ڷ�� ���̺� ����
BOARD_FORM_ATTACH(���� �ڷ�� Table) ==> 
DATAROOM_FORM(���� �ڷ�� Table), DATAROOM_FILE(�ڷ�� ÷������ Table)�� ����
���� ����: ÷�������� ������ ��� �� �� �־�� �� 
-------------------------------------------------------------------------------------------
- �������� ��� 
�������, �������� ���̺� ����
BOARD_NOTICE(�������, �������� Table), DATAROOM_FILE(�ڷ�� ÷������ Table)
- �ֿ�������(����: �������)
http://admin.kiat.or.kr/login.asp  --> kiatadmin/rhksflwkwk 
==============================================================================================================

- MY PAGE�� �߰����� �Է� ����
���ϱ�(IKOH/qwer1234)
MBR_CARRER.CARR_NM IS '��¸�';

-- Į�� ����
ALTER TABLE ITEP_DBA.MBR_CARRER MODIFY ( -- ��»��� Table
 CARR_NM       VARCHAR2(1000)           --��¸�(300 --> 1000)
);  
------------------------------------------------------------------------------------------
  
- �����ڵ� ã��(�����ڵ� ����Ʈ) 
select sub_code, code_name, disp_ordr
from rcode
where main_code = /*[#1=1004]*/ '1004'
and avail_edate = '99991231'

- /home/carrer/CarrerSB.java ���Ͽ��� 
public void getCarrer(DBAction dba, DynaActionForm form) throws QueryException, Exception {
dba.setQuery(SQLLoader.getQuery("home.carrer.memberadditiondetail"));
form.set("nat_cd", ie.getString("NAT_CD"));   //���(���)���� �ڵ�
}
- /sql/home/sql-carrer.xml ���Ͽ���
SELECT B.NAT_CD, CARR_OWNR_ID, SEQ,   ----> B.NAT_CD(�����ڵ�) �߰�
FROM RMBR_CARRER A, RRIGHT B
WHERE A.LCNS_RIGHT_NO = B.RIGHT_NO(+)
AND CARR_OWNR_CLSF = ?
AND SEQ = ?
AND CARR_CLSF = ?

- /home/integration/assespro.jsp ���Ͽ���
<html:select property="nat_cd" styleClass="select">
<html:options name="nationIdList" labelName="nationNmList"/> <!-- // ���� �޺� ����Ʈ Display -->
</html:select>
==============================================================================================================

- ��������� --> �������(Ȯ��) Tab���� Ȯ���� �ȵ�
������ȹID; 70009474(ó��), 70009471(����), 70009453(����), �Ӽ���(MARKSMUS/lim3390)
==============================================================================================================

- ��������(�������)
http://rnd.risnet.or.kr/pms/subject/subjectLedger.do#
==============================================================================================================

- �����������(�ű���)
Ȳ�ݿ�(HWANGTWO/chindo), ���� --> �泲���� �Ǿ� ����
http://192.168.12.54:8080/pms/estm/manager.do
==============================================================================================================

- ���ü ����
���üID:00009978, �ܾ��������(��) --> ������ ��
-------------------------------------------------------------------

- ���ü ����
(��) �ص��(128-81-53406)��  ��õ�Բ��� ����ȸ������ ���ԵǾ� ������, ���ü�� �߰�����ϴµ� ��� ����
* �ص���� ���� ��ϵ� ��ü�ε� ��ǥ�ڰ� �����Ǿ� �ִ°� �����ϴ�. ó�� �� Ȯ���Ͻ� �� 019-463-7956(��õ)
==============================================================================================================

������ȣ: 70006550  ---> �����û�������� ��ȸ �ȵ� 
������ȣ: 70006525 �ߵ� ����
063-219-2215 �鹮�� ������
==============================================================================================================

- �߰�����(������������) �� ���� ��
�Ѻ���(BHHAN3312/bhhan4263, 10036912), �蹫��(CNASC2/cnasc5643, 10116815)
--������ �� ���� ���� ��ȸ   @@@@@@@@@@@@@ 
SELECT  M.PBLC_YYMM ���࿬��, M.PBLC_MGZ ������, M.CARR_NM ��������, M.VOL_NO, M.MAIN_ATHR ������, 
M.MAIN_ATHR  ��������, CHNG_ATHR  ��������,
        M.CARR_CLSF ��±���, M.CARR_CLSF ��±���, M.CARR_OWNR_CLSF ��»�����ü����,   
--��»�����ü���� 1:������, 2:���ü
        M.PAPER_NM ��������, M.LCNS_RIGHT_NO Ư���Ϲ�ȣ 
FROM RMBR_CARRER M
WHERE M.CARR_OWNR_ID IS NOT NULL
 AND M.CARR_OWNR_ID = /*[#4=12916158]*/ '12916158'    --��»�����üID
 AND M.CARR_CLSF =  '2'          -- ��±���(1:�з�,2:��������,3:�ֿ���,4:�ڰ���/����,5:��������,6:��ȸ����ȸȰ��,
 -- 7:����Ȱ��,8:��ǰ��������,9:�����⿬���� �������)
--AND M.NDEPT_CLSF IN ('3')         --���ҼӺμ�����(1:��������, 2:�ܺλ����, 3:����, �ܺ�X)
ORDER BY M.PBLC_YYMM DESC 
--;  
==============================================================================================================

- ����� 08�� �ֹμ�(���αյ���) ����� ����
������ȣ: 62057511010400120090810018609, �����ݾ�: 6,000��
���ι��: �ſ�ī��(����)
http://etax.seoul.go.kr
==============================================================================================================

- ���� �ֹ�(�� ���: 55,600�� �ҿ�) 0.5m ==> 60��, 0.5m(��) ==> 12��, 1.0m ==> 120��, 1.4m ==> 24�� ====> ��: 216�� ����
1. ���� �ִϺ� 501/12�ڷ�/1.4m/����/������, ����: 4,200�� ===> 1��(12�ڷ�)
��(0.5) 4,200��(���� ����: 288��) * 1
��(1.4) 4,200�� (���� ����: 288��) * 2
(http://itempage3.auction.co.kr/DetailView.aspx?itemNo=A517065524&frm3=V2)
���� �ִϺ� 1.0m ==> 24�ڷ�(���� ����: 558��)
���ʽ�(12�ڷ�): 1.0m ����: 2,700�� ===> 2��(24��)(��۷�: 2,500��)(���� ����: 288��) 
2. ���� �ִϺ� ���ʽ�/1.4m/12�ڷ�/����, 2,700��(���� ����: 225��) --> ����ɸ� �Ǹ�
�ִϺ����ʽ�/0.5(��)  2,700��(���� ����: 225��) * 5
�ִϺ����ʽ�/1.0(��)  2,700��(���� ����: 225��) *10
(http://itempage3.auction.co.kr/DetailView.aspx?itemno=A519118555&frm3=V2)
==============================================================================================================

- ���ۼձ۾� ����, �ֹ�
==============================================================================================================

������������������� 2009.08.18(ȭ) �۾� �����������������
---> 07:30 ~ 19:00

- KIAT SM
- ID, PWD ã�� 
http://www.itis.or.kr/member/find.asp?mnum=4
DEBUG: JavaMail version 1.3
DEBUG: java.io.FileNotFoundException: C:\j2sdk1.4.2_13\jre\lib\javamail.providers (������ ������ ã�� �� �����ϴ�)
DEBUG: !anyLoaded
DEBUG: not loading resource: /META-INF/javamail.providers

- JavaMail ��ġ(Window��)  ===> i3shop
��ġ���(http://okjsp.pe.kr/lecture/lec02/mail01.htm)
CLASSPATH=C:\j2sdk1.4.2_08\lib\tools.jar;C:\j2sdk1.4.2_08\lib\mail.jar;C:\j2sdk1.4.2_08\lib\activation.jar
- ���� ����(/MainMgr/Maill/javamail.htm): ����
- ���ϸ� ����Ʈ(/MainMgr/Maillinglist/maillistP.jsp)
==============================================================================================================

- �̸� ���� ��û(����)
�����(PTJ1004/kt9999)-> �跮ȯ(������) *
==============================================================================================================

- ���ü ����
���üID:10013887, (��)���̵��, ��ǥ�̻� ���: �̿���(10036607) 
-------------------------------------------------------------------
���ִ��б��������´� ��ǥ�� ����: ������(*)
-------------------------------------------------------------------
- ���ü�� ����
1. �ܾ����� --> (��)�������Ŀ�
==============================================================================================================

- ��й�ȣ �н�(�̸��� �н�)
������(SMNDT/smndt123), ������ �� email: *@*.*
==============================================================================================================

- infra.itech.go.kr ����
IP: 110.14.182.193  ID/PWD: admininfra / ����Į��
==============================================================================================================

- ��ü ������������ �ٿ�ε�
�ߺ����˻缭��(�˻����������(�ߺ����˻缭��).xls)
--------------------------------------------------------------------------------------------------------
- ���� ����R&D ����Ʈ �ۼ�
���� ����R&D ����Ʈ(200908).xls
==============================================================================================================

- ����ڹ�ȣ ��� ���� ����
����ڹ�ȣ: 1298624578
==============================================================================================================

- �߰�����(������������) �� ���� ��
������(ICART2000/yun8307), �ֹι�ȣ: 680914-10
������: 010-6424-0
��±���(1:�з�,2:��������,3:�ֿ���,4:�ڰ���/����,5:��������,6:��ȸ����ȸȰ��,
 -- 7:����Ȱ��,8:��ǰ��������,9:�����⿬���� �������)
==============================================================================================================
 
������������������� 2009.08.19(��) �۾� �����������������
---> 07:40 ~ 20:00  --> ��������(��â�� ������ �������� �佺Ʈ �����)

- KIAT SM
- ���ü ����
���üID:10013887, (��)���̵��, ��ǥ�̻� ���: �̿���(10036607) 
----------------------------------------------------------------------------------------------------------------------------- 
- ���ü�� ����
1. ���ؾ� --> (��)���ؾ�
2. �泲�����й�ȭ�������� --> �泲��ȭ��������  ��ǥ��: �赿��
==============================================================================================================

- ���ε�Ϲ�ȣ ���� ����
���ε�Ϲ�ȣ: 1349110002839
�����̿��� ������ (02-6300-8222)
(��)�ѱ����̿��ַ��(������: 051-999-588)   ==> ó�� 
����������Ƽ(��): 064-821-1872  ==> ó��
==============================================================================================================

- ����� �Է�
 -- 6. �ΰ��δ�ݳ���  ���� ��ȸ   @@@@@@@@@@@@@  
SELECT  M.SBJCT_ID ����ID,  M.SBJCT_STEP, M.SBJCT_ORDR, M.SEQ, M.ALLOT_ROLE_CD �д�������, 
M.CASH_MNY ����, M.ARTCL ����,  --�д�������CD(1001:����, 1002:����ü, 1003:�⺻�����(�ΰ�), 
-- 1004:�����1, 1005:�����2, 1006:��Ź�����))
        M.AVAIL_SDATE AS ��ȿ������, M.AVAIL_EDATE AS ��ȿ������, 
        M.REG_MBR_ID AS �����ID, M.REG_TIME AS ����Ͻ�
FROM RSBJCT_ALLOT_PRGS M
WHERE M.SBJCT_ID IS NOT NULL 
    AND M.SBJCT_ID IN ('70007193')  --������ȣ  
    -- AND M.SBJCT_ORDR = '2'          --����������  
   -- AND M.SEQR = '1'      
--;  

 --  6. �ΰ��δ�ݳ���  ���� ��ȸ   @@@@@@@
UPDATE RSBJCT_ALLOT_PRGS M
SET M.CASH_MNY = '' 
WHERE M.SBJCT_ID IS NOT NULL
    AND M.SBJCT_ID IN ('70007193')  --������ȣ  
     AND M.SBJCT_ORDR = '1'          --����������
 --;     
==============================================================================================================

-- �繫������� ��ȸ   @@@@@@@@@@@@@ 
SELECT *  
 FROM RBUSI_FNCL_HSTR A1
WHERE BUSI_ID = /*[#1=10096469]*/ '10096469' 
AND    FNCL_YEAR = '2009' 

-- �繫������� ����   @@@@@@@@@@@@@  
DELETE FROM RBUSI_FNCL_HSTR A1
WHERE BUSI_ID = /*[#1=10096469]*/ '10096469' 
AND    FNCL_YEAR = '2009'  
==============================================================================================================

- �ѱ������������� ȫ���� (051-974-9332)
�������� ���� ��Ź����� ����ؾ��ϴµ� �̱��б���
����� �ȸ´´�ϴ�. ����ڵ�Ϲ�ȣ������ �ȸ´´ٰ� �ϴµ���
�ƹ��ų� ������ �ȵ��ٰ� �ϴ��󱸿�;
==============================================================================================================

- ������û���� �����ȹ�� �μⰡ �ȵ� 
������(HCHUNG/6297934z, 12916053), ���¹�: 042-384-8772
������: 064-720-2346  js0307
����: IE7.0�̻󿡼� �ȵǴ� ������ ������
var printObj = document.getElementById("factory");
if(printObj.printing != null){
printObj.printing.header = ""; //�Ӹ��� ����
printObj.printing.footer = "&b������ &p/&P"; //������ ����
printObj.printing.portrait = true; //��¹��� ����: true-����, false-����
printObj.printing.leftMargin = 1.0; //���� ���� ����
printObj.printing.topMargin = 15.0; //���� ���� ����
printObj.printing.rightMargin = 1.0; //������ ���� ����
printObj.printing.bottomMargin = 1.0; //�Ʒ��� ���� ����
//    printObj.printing.printBackground = true; //����̹��� ��� ����:���̼��� �ʿ�
printObj.printing.Print(true); //����ϱ�
}
==============================================================================================================

--RSUBJECT �����⺻ �������� OFFCL_SBJCT_NM(���İ�����) �ʵ� ����Ÿ �ʵ� ���̱� 
 OFFCL_SBJCT_NM     VARCHAR2(300 BYTE)   -->    VARCHAR2(500 BYTE)  
==============================================================================================================

- �ΰ��δ����ݺ��� ����
�߼ұ�� �ְ��� ��� ��������� ���¿� ������� �ΰ��δ���� 10%�̻� �������� �����ϸ� ��.
�׷��� ���� ������ ����������� ������ ���� ���, �ΰ��δ���� 20%�̻��� �䱸
������ȣ: 70007285 --> ������(DAESUNGKS/ds1106)
/itep-pms/subject/subjectApp/sub_input_exp_org.jsp
---------------------------------------------------------------------------------------
- �ΰ��δ����ݺ��� ����  --> ó��
�߼ұ�� �ְ��� ��� ��������� ���¿� ������� �ΰ��δ���� 10%�̻� �������� �����ϸ� ��.
�׷��� ���� ������ ����������� ������ ���� ���, �ΰ��δ���� 20%�̻��� �䱸 
�̵���(ROCKBEAT/1234)  --> 97,395
==============================================================================================================

- ��� �� ���� 
����ȣ(HPTS2071/hpts2071)  *, ������ȣ: 70007191
==============================================================================================================

- �ǹ����
�����Է� ������ ������� ��Ȳ�������� 
�ǹ�����ڰ� ��� �ְ���� �ǹ�����ڷ� ���´ٰ� �մϴ�.
�̿� ���� ������ ��û�帳�ϴ�. (��������� ����ڷ� ��������)
==============================================================================================================

- Contact us �����ּ� ����
*@*.* --> *@*.*  --> *@*.*r
==============================================================================================================

- 2009�� �������������߻�� �������� ����
1. �������: 2009.7.14(ȭ)
2. �����ȹ �����Է�: 2009.8.10(��) ~ 8.19(��), 18:00
3. �����ȹ�� ����: 8.13��8.20
4. ������: 8��~9��
==============================================================================================================

������������������� 2009.08.20(��) �۾� �����������������
---> 07:00 ~ 19:00

- KIAT SM
--�����⺻ ���� ���� @@@@@@@@@@@@@ 
DELETE FROM RSUBJECT S
WHERE S.SBJCT_ID IS NOT NULL
AND S.SBJCT_ID IN ('70007437', '70007467','70007449', '70007101')        --������ȣ
==============================================================================================================

- �Ѱ�å���� ����
������ȣ: 70006550
���༭���� �Ѱ�å����: ����ȭ(AMATO50/yamato51, 12915411), �̿��� *
�����⺻����ȭ�鿡�� �Ѱ�å���ڰ� (��)�������� ��ǥ�̻��� �ڵο����� �Ǿ��ֽ��ϴ�.  
���� �Ѱ�å������ "����ȭ"�� ����

-- �Ѱ�å���� ���� ��ȸ ------> 
SELECT    E.AVAIL_SDATE E_AVAI_SDATE,   A.AVAIL_SDATE A_AVAI_SDATE, 
E.AVAIL_EDATE E_AVAI_EDATE, A.AVAIL_SDATE A_AVAI_EDATE,  
E.MBR_ID ���̵�   -->  10081310  -->  ����ȭ(YAMATO50/yamato51, 12915411)
FROM RSUBJECT C, RSBJCT_PRGS A, RSUBJECT G, RSBJCT_RELCO B, RANCM D, RSBJCT_MBR_HSTR E, RBUSI F
WHERE C.SBJCT_ID = /*[#1=70006550]*/ '70006550'
AND A.SBJCT_ID = C.SBJCT_ID 
AND G.SBJCT_ID = DECODE(C.SBJCT_CLSF, '1001', C.SBJCT_ID, C.GNRL_SBJCT_ID)       
AND B.SBJCT_ID = C.SBJCT_ID
AND B.JOIN_ROLE_CD = '1001'
AND B.AVAIL_SDATE <= A.AVAIL_SDATE
AND B.AVAIL_EDATE >= A.AVAIL_SDATE
AND D.ANCM_ID = C.ANCM_ID
AND E.SBJCT_ID = C.SBJCT_ID
AND E.ROLE_CD = '1005'
AND E.AVAIL_SDATE <= A.AVAIL_SDATE   ---> ��κ� Ȯ��
AND E.AVAIL_EDATE >= A.AVAIL_SDATE
AND F.BUSI_ID = E.BUSI_ID
AND E.MBR_ID = '12915411'        --���̵�
AND E.BUSI_ID = '10006824' 
--; 
==============================================================================================================

- ����������� ��û
(2009_0820) �����������(�������).xls
1. �������з� ��-��-��
2. �����⿬��, �ΰ��δ��(����, ���� ����)
==============================================================================================================

- �������� ���� ���� ��û
������ȣ: 70007442, ��������: 04 --> 07(�����Ϸ�)�� ����
==============================================================================================================

- �������� ���� ó��
������ȣ: 70007268
�Ͽ�ö(ADEPT72/world21)
�Ѱ����� ������ �ȵǾ��ٰ� �մϴ�.  
���������� �Ͻ������� �ֽñ� �ٶ� ==> ����� ������ 
/subject/subjectApp/sub_input_list.jsp ���Ͽ���
SessionHandler sess_handler = SessionHandler.getHandler(pageContext);
User user = sess_handler.getUser();
DateUtil date = new DateUtil();

if(user == null) {
} else { 
strUserNo = user.getUserNo(); 
if(user != null && (strUserNo.equals("10087528"))) {  //���Ѻο� 
strRight= "1";
}   
} 
-----------------------------------------------------------------------------

 - �����ְ����  ����å���� ���� 
������(��)  (PHDLSK1/ysavera) --> ���μ�(KIMINS016/kis016, 12916584)  064-799-1000 
ó���Ұ�: �����ְ���� ����å���� ���� �Է������� �ʾҰ� �Ѱ�����å���ڸ� ���� �����ֱ⸸ ��
------------------------------------------------------------------------------------------------------
- �������������� ����� ����(������ũ)
�迵�� --> ������(EDUTEC00/edu8274, 00309975)  ===> ����� ���� ���� ó��
------------------------------------------------------------------------------------------------------

-- ��ϵ� ������ȸ(����з�����) ��ȸ   @@@@@@@@@@@@@ 
 SELECT A.ANCM_ID, A.ANCM_ID, A.BCLSF_CD, A.RCPT_SDATE, A.RCPT_EDATE
FROM RANCM_BUSI A
WHERE A.ANCM_ID IS NOT NULL
       AND A.ANCM_ID IN ('1310')         --����ID
      --AND A.A2009-08-20NCM_TITLE LIKE '%�׽�Ʈ%'  --���İ�����
ORDER BY A.ANCM_ID DESC
--;

-- ��ϵ� ������ȸ(����з�����) ����   @@@@@@@@@@@@@ 
UPDATE RANCM_BUSI A
SET A.RCPT_EDATE = '20090820'   --����������(���� �������� ����)
WHERE A.ANCM_ID IS NOT NULL
       AND A.ANCM_ID IN ('1310')         --����ID
--; 
==============================================================================================================

- ���������Ȳ
������� ���� --> �ڼ�ȭ: *, ȫ����(BSK/2234)
==============================================================================================================

- ������� ����� ���� ��û
�������������ȹ�� �鹮��
�ٸ��� �ƴϿ��� �������������ȸ�ܿ� ������� ����ڰ� ����Ǿ� �����û�� �帳�ϴ�  
�űͼ� : haazi  ���� �鹮��(mybaek/jb2215)���� �����û�� �帳�ϴ�. 
����, risnet ����/���ǽ�û-�������-����ó���� �ִ�
�������������߻��(9������-����) ������ȣ:70006550 ������ : ����� ���̹��� ��ȿ���� �̿��� ��ɼ���ǰ 
����, �ְ����: ��������(��) �Ѱ�å���� : ����ȭ 
�� ���� �Ѱ�å���ں����û�� �Ͽ����� ������ ���� �����̾����� ������ �Ǿ��⿡ 
�����û�� ���ʿ��ϰ� �Ǿ����ϴ�. �̿� �ش���׿� ���� ������ ��Ź�帳�ϴ�.
==============================================================================================================

 - �ְ�����
1. ��� ���� ���� ó�� �� �䱸���� ����
- �Ⱓ: '09.08/10(��) ~ '09.08/19(��)
- ��ġ: ���� �߻��� ���� ���� ó�� �� ���� ���� ���� 
- ���: 1. 09.08/19(��) 18�ÿ� ���� ���Ḧ �ϰ� ������ �κ��� �־ 09.08/20(��) 11�ÿ��� 15�� ���̿� �ٽ� 
������ ����, 2. �� ��� �Ǽ�: 385������ ���� �����ڼ��� ���� �ʾƼ� ���� ���ϴ� ũ�� ���� ������ ������
==============================================================================================================
 
������������������� 2009.08.21(��) �۾� �����������������
---> 07:00 ~ 19:30

- KIAT SM
 - ����� ���� Ȯ�� Ȯ�� ��û --> ó�� �Ϸ�
�������������ȹ�� ��ȫ��(HSPAK1749/pak1749) ������  
���İ��� �ǿ��� ����� ������ �Ա�Ȯ���� �ҷ��� �ϴµ� 
����� ���δ�� ��������Ʈ�� �� 41���߿��� 10�� �� Ȯ�ΰ� �ȵ�
����ݱ��� �������(1:�����, 2:��ȹ��, 3:����)
==============================================================================================================

- ������������(/subject/report/demand_report_list.jsp) --> ó�� �Ϸ�
[���/����] �޴����� ����[�򰡰������ -> �ű�����Ȳ -> ������������] �޴��� �ֽ��ϴ�.
���� �޴����� [�����]�� �����Ͽ� �������� ��Ȳ�� ������ ���� �� �ְ� �Ǿ� �ֽ��ϴ�.
���� [�����] ���ö��� 2009�� ������ ���� �ְ� ���� ������ �Ϸ�� [�����]�� ���� ������Ȳ �ڷḦ ���� 
�� �� �����ϴ�.  
==============================================================================================================

- ��������� ���Ȯ�� �������� ������ --> ó�� �Ϸ�
�������������ȹ�� �Ӽ���(MARKSMUS/lim3390) ���ӿ����� 
������ȣ : 70003308, �ְ���� : �������̿���
��������� ���Ȯ�� �������� �����ֽñ� �ٶ��ϴ�.
-- ������ȹ ����  ����   @@@@@@@@@@@@@   ====> ��������� --> �������(Ȯ��) Tab ȭ������ ������
-- UPDATE RDUTY_PLAN A
SET A.PLAN_STATUS = '1500'      --��ȹ ������(1500:(��ȹ)����), 2500:(���)����))
WHERE A.PLAN_ID IS NOT NULL 
     AND A.PLAN_ID IN ('70009449')   --PLAN_ID
--;
==============================================================================================================

- ����� ���ΰ�ȹ �� ���� ����  --> ó�� �Ϸ�
������ȣ: 70001332, ���δ���ü: (��)������Ƽ
���δ��ݾ�: 140000000 --> 0
-- �����ȯ����d���� ����   @@@@@@@@@@@@@ 
DELETE FROM  SAPMNT_PLAN P
WHERE P.SBJCT_ID = '70001332'    --������ȣ
    AND P.SEQ = 1  --���ΰ�ȹ_SEQ
--;  
-- �����ȯ����d���� ����   @@@@@@@@@@@@@ 
UPDATE  SAPMNT_PLAN P
SET P.SBJCT_ORDR = 1   --����������
WHERE P.SBJCT_ID = '70001332'    --������ȣ   
--; 
==============================================================================================================

- �����������(�������) �ڷ� ��û--> ó�� �Ϸ�
(2009_0820) �����������(�������).xls  --> 70007019
1. �Ѱ�å���� ����ó, �����ּ� --> O
2. �ǹ������ ����ó, �����ּ�  --> O
1. �ְ���� ����ڵ�Ϲ�ȣ  --> O
2. �ְ���� �Ѱ�å���� �ֹε�Ϲ�ȣ  --> O 
3. ������� ����ڵ�Ϲ�ȣ   -->  O
4. ������� ��ǥ �ֹε�Ϲ�ȣ   -->  O 
5. ��Ź���� å���� �ֹε�Ϲ�ȣ   - --> O  
6. ������� ��ǥ�� ����   -->  O
7. ��Ź���� å���� ����    - --> O

-- ��Ź���� å���� �ֹε�Ϲ�ȣ ��ȸ   @@@@@@@@@@@@@ 
SELECT MAX(DECODE(Y.NO,1,DECODE(X.CITI_NO,NULL,NULL,X.CITI_NO)))
       MAX(DECODE(Y.NO,2,DECODE(X.CITI_NO,NULL,NULL,', 'X.CITI_NO)))
       MAX(DECODE(Y.NO,3,DECODE(X.CITI_NO,NULL,NULL,', 'X.CITI_NO)))
       MAX(DECODE(Y.NO,4,DECODE(X.CITI_NO,NULL,NULL,', 'X.CITI_NO)))
       MAX(DECODE(Y.NO,5,DECODE(X.CITI_NO,NULL,NULL,', 'X.CITI_NO)))
       MAX(DECODE(Y.NO,6,DECODE(X.CITI_NO,NULL,NULL,', 'X.CITI_NO)))
       MAX(DECODE(Y.NO,7,DECODE(X.CITI_NO,NULL,NULL,', 'X.CITI_NO)))
       MAX(DECODE(Y.NO,8,DECODE(X.CITI_NO,NULL,NULL,', 'X.CITI_NO)))
       MAX(DECODE(Y.NO,9,DECODE(X.CITI_NO,NULL,NULL,', 'X.CITI_NO)))
       MAX(DECODE(Y.NO,10,DECODE(X.CITI_NO,NULL,NULL,', 'X.CITI_NO)))
       MAX(DECODE(Y.NO,11,DECODE(X.CITI_NO,NULL,NULL,', 'X.CITI_NO)))
       MAX(DECODE(Y.NO,12,DECODE(X.CITI_NO,NULL,NULL,', 'X.CITI_NO)))
       MAX(DECODE(Y.NO,13,DECODE(X.CITI_NO,NULL,NULL,', 'X.CITI_NO)))
       MAX(DECODE(Y.NO,14,DECODE(X.CITI_NO,NULL,NULL,', 'X.CITI_NO))) O_CITI_NO
FROM   (
        SELECT ROWNUM RK, A.SBJCT_ID, F.CITI_NO 
        FROM RSUBJECT A, RSBJCT_PRGS B, RSBJCT_RELCO C, RSBJCT_MBR_HSTR D, RBUSI E, RMEMBER F
        WHERE C.JOIN_ROLE_CD = '1005'
            AND D.ROLE_CD = '1011'   --������ ���� ����(1011: ��Źå����)
            AND A.SBJCT_ID = /*[#1=70007019]*/ '70007019'  --������ȣ
            AND B.SBJCT_ID = A.SBJCT_ID
            AND B.SBJCT_STEP = /*[#2=0]*/ '0' 
            AND B.SEQ = (SELECT /*+ INDEX_DESC(RSBJCT_PRGS RSBJCT_PRGS_PK) */ SEQ FROM RSBJCT_PRGS
                WHERE SBJCT_ID = A.SBJCT_ID AND ROWNUM = 1  AND SBJCT_STEP = B.SBJCT_STEP) 
            AND C.SBJCT_ID = A.SBJCT_ID
            AND D.SBJCT_ID = A.SBJCT_ID
            AND D.BUSI_ID = C.BUSI_ID
            AND E.BUSI_ID = C.BUSI_ID
            AND F.MBR_ID = D.MBR_ID
            AND C.AVAIL_SDATE <= B.AVAIL_SDATE
            AND C.AVAIL_EDATE >= B.AVAIL_SDATE
            AND D.AVAIL_SDATE <= B.AVAIL_SDATE
            AND D.AVAIL_EDATE >= B.AVAIL_SDATE 
          ) X, COPY_T Y
WHERE Y.NO = X.RK
--; 
==============================================================================================================

- �������������� �����ý��� � �� �������� ���� ��ǥȸ ����
�ð�: 2009.08.21(��) 10:50 ~ 11:10
��ǥ: KCC ���缺
==============================================================================================================

- STOCKS
��(3,060), ȭ(3,090), ��(3,845), ��(3,560), ��(3,340)
==============================================================================================================

������������������� 2009.08.24(��) �۾� �����������������
---> 06:00 ~ 18:30

- KIAT SM
- ���� �ڷ�� ����
���� �ڷ�� ���̺� ����: BOARD_FORM_ATTACH(���� �ڷ�� Table) ==> 
DATAROOM_FORM(���� �ڷ�� Table), DATAROOM_FILE(�ڷ�� ÷������ Table)�� ����
-- ���� �ڷ�� ����(executeBoardFormFile(...),   public int updateBoardForm(...))
call SP_BOARD_FORM_ATTACH_UPDATE(  1002, 'formatt', 1002, 1002, 1,  '1', 'd2_edite22', 'TAMARIO', 
'2009-08-24', '', '', '103', '283', '303', 'dDDSDDD',  '', '', '', '', '',  '', '', '', 0, ''  )
-------------------------------------------------------------------------------------------
- �������� ��� 
�������, �������� ���̺� ����
BOARD_NOTICE(�������, �������� Table), DATAROOM_FILE(�ڷ�� ÷������ Table)
- �ֿ�������(����: �������)
http://admin.kiat.or.kr/login.asp  --> kiatadmin/rhksflwkwk 
==============================================================================================================

- �ߺ����˻缭�� ����Ʈ ����Ÿ ��û--> ó�� �Ϸ�
�鳫�� ������
�ֽ� �ڷ�� �̼����� �ڷ���� ��� ����� �� �����ϴ�. 2009�� 1��(4��)���� ����(����)�� ������ ������ 
�ֽñ� �ٶ��ϴ�.    ===> 2,231��
==============================================================================================================

-- �������� ��û öȸ  --> ó�� �Ϸ�
������ȣ:70004241, �����(MINJW316/ghddlr1) ������
���ຯ��: ����Ⱓ ���� '09.9.30 --> '09.11.30
���� ����ó���� �Ͽ�����, �ٽ� ������� �������ֽñ� ��Ź�帳�ϴ�.(���ຯ����� ��� ������ ������ �ּ���) 

-- �������� ��û ���� ��ȸ   @@@@@@@@@@@@@ 
SELECT *
FROM RCHNG_DISS P
WHERE P.SBJCT_ID IS NOT NULL
     AND P.SBJCT_ID = '70004241'    --������ȣ
ORDER BY SEQ DESC 
--;    
-- �������� ��û ���� ����   @@@@@@@@@@@@@ 
DELETE FROM RCHNG_DISS P
WHERE P.SBJCT_ID IS NOT NULL
     AND P.SBJCT_ID = '70004241'    --������ȣ  
ORDER BY SEQ DESC 
--;   
--------------------------------------------------------------------------

-- �Ѱ��߱Ⱓ, ���߸�ǥ�׳��� �����û ���� ��ȸ   @@@@@@@@@@@@@ 
SELECT *
FROM MBR_HSTR_CHNG P
WHERE P.SBJCT_ID IS NOT NULL
     AND P.SBJCT_ID = '70004241'    --������ȣ
--;    
-- �Ѱ��߱Ⱓ, ���߸�ǥ�׳��� �����û ���� ����   @@@@@@@@@@@@@ 
DELETE FROM MBR_HSTR_CHNG P
WHERE P.SBJCT_ID IS NOT NULL
     AND P.SBJCT_ID = '70004241'    --������ȣ 
--;   
--------------------------------------------------------------------------

-- �ܰ躰���߱Ⱓ �����û ���� ��ȸ   @@@@@@@@@@@@@ 
SELECT *
FROM RSBJCT_ORDR_CHNG P
WHERE P.SBJCT_ID IS NOT NULL
     AND P.SBJCT_ID = '70004241'    --������ȣ     
--; 
-- �ܰ躰���߱Ⱓ �����û ���� ����   @@@@@@@@@@@@@ 
DELETE FROM RSBJCT_ORDR_CHNG P
WHERE P.SBJCT_ID IS NOT NULL
     AND P.SBJCT_ID = '70004241'    --������ȣ 
--;   
--------------------------------------------------------------------------

-�����⺻���� ����  @@@@@@@@@@@@@
-- UPDATE RSUBJECT S
SET   S.GROSS_DVLP_EDATE = '20090930'    --�Ѱ�����������  09.9.30
, S.REG_TIME = SYSDATE
WHERE SBJCT_ID = '70004241'  --������ȣ 
--; 
==============================================================================================================

- ������ ȫ���ڷ�  �ݾ� �ڸ��� ����  --> ó�� �Ϸ� 
���ȣ(SHKIM5/im2509)
�����(õ��) 8�ڸ� --> 11�ڸ�(maxlength="10" --> maxlength="14")
�����, ��������, �ں��Ѱ�, ��ä�Ѱ踦 ���� ��Ź �帳�ϴ�
������ ȫ���ڷ�(/report/final_best_prdata.jsp)
==============================================================================================================

- ����ī�忡�� ��û
1. �����(����) ����
memberid(�� itep���������ϴ� key��), ���̵�, �н�����, �̸�, �̸���
2. ������ ���� ����
������ȣ, �ܰ�, ����, ����ڸ� or member id
==============================================================================================================

- ���� ���̼��� �߱޽�û(���Ⱓ 2����)
1. ��Ŭ�������� ���� ����:
Invalid License
License is expired
2. ��ġ: Jeus ���� ���̼��� �߱޽�û
http://technet.tmax.co.kr/kr/download/license.do?fc=down&sc=down_license
��ǰ��: Jeus
�߱�����: Jeus Fix#18 Under 4.2 Over
Host ID(host ID): 20C4ACFC
JEUS 4.2 Under demo 2 months None Server IP

����) HostID(ncpu ����� �����)
C:\Documents and Settings\TAMA2> ncpu
HOST NAME1: TAMA
HOST NAME2: TAMA
Volume[C:\] type: NTFS
Volume[C:\] serial: 20C4ACFC   =======> �̰�
NCPUS: 2
IPADDRESS: 192.168.12.54
3. ���Ϸ� ���� --> license.dat ������ license ���Ϸ� �ٲپ� C:\Jeus42\license������ �پ� �ֱ�
4. license ���� Ȯ��
C:\Documents and Settings\TAMA2> jeusadmin -licenseinfo
[ErrorMsgManager] Message Manager is initialized
================ JEUS LICENSE INFORMATION ===================
=== EDITION : JEUS DEMO
=== DUE-DAY : 2009/10/24
============================================================= 
-----------------------------------------------------------------
- WTOB ���� ����
[2009.08.24 09:38:39][1] [WTOB-2346] [E] worker(webtob1-hth0(127.0.0.1:9900)-w0:) : fail to reconnect
<<__Exception__>>
java.net.ConnectException: Connection refused: connect
5. WTOB ���� ó��: ws_engine.m �� ������
C:\Jeus42\webserver\config> wscfl -i ws_engine.m
        Current configuration:
                Number of client handler(HTH) = 1
                Supported maximum user per node = 969
                Supported maximum user per handler = 969
CFL is done successfully for node(TAMA(TAMA))
==============================================================================================================

������������������� 2009.08.25(ȭ) �۾� �����������������
---> 06:50 ~ 18:30

- KIAT SM
- ���� �ڷ�� ����
���� �ڷ�� ���̺� ����: BOARD_FORM_ATTACH(���� �ڷ�� Table) ==> 
DATAROOM_FORM(���� �ڷ�� Table), DATAROOM_FILE(�ڷ�� ÷������ Table)�� ����

- �����ڷ�� ���Ͼ��ε� ��� ����
/itep-pms/WEB-INF/web.xml ���Ͽ���
<param-name>DataroomUpload_Directory</param-name>
    <param-value>Z:/form_attach_doc</param-value>
    <description>�����ڷ�� ���Ͼ��ε� ���</description>
</context-param>
<context-param>
    <param-name>TestUpload_maxMBSize</param-name>
    <param-value>20</param-value>
    <description>�ִ� ���ε� ũ��(MB)</description>
</context-param>

/qanda/QandaSB.java ���Ͽ���
private void executeDataroomForm(DynaActionForm form, DBAction dba, String no) throws DBException
{
String saveDir = context.getInitParameter("DataroomUpload_Directory");   //�����ڷ�� ���Ͼ��ε� ���丮(ȯ�� ���Ͽ� ����)
int maxFileSize = StrUtil.StrToInt(context.getInitParameter("TestUpload_maxMBSize"));   // �ִ� ���ε� ũ��(20MB)
}

- ����� 
dbms_output.put_line('TEST');
==============================================================================================================

- ������ �̻�, ����� �Ϻ� ����
�̵��� 054-770-2224 (*)
==============================================================================================================

- ��ȸ �� ��ȸȰ��, ������ �� ���� ����Ÿ ����   --> ó�� �Ϸ� 
�蹫��(CNASC2/cnasc5643) 041-735-5624 ~5
�蹫�� �������� �����Ͻñ� �Է�����: 2007�� �߼��̶�� ��
-- ��ȸ �� ��ȸȰ��, ������ �� ���� ��ȸ   @@@@@@@@@@@@@ 
SELECT  M.PBLC_YYMM ���࿬��, M.PBLC_MGZ ������, M.CARR_NM ��������, M.VOL_NO, 
M.MAIN_ATHR ������, M.MAIN_ATHR  ��������, CHNG_ATHR  ��������,
        M.CARR_CLSF ��±���, M.CARR_CLSF ��±���, M.CARR_OWNR_CLSF ��»�����ü����,   
        M.PAPER_NM ��������, M.LCNS_RIGHT_NO Ư���Ϲ�ȣ 
FROM RMBR_CARRER M
WHERE M.CARR_OWNR_ID IS NOT NULL
 AND M.CARR_OWNR_ID = '10116815'    --��»�����üID
 AND M.CARR_CLSF IN ('2',  '7') --��±���(2:�������� 7:����Ȱ��)
ORDER BY M.PBLC_YYMM DESC
--;  
==============================================================================================================

 - ��з����(������� ���)
1. �ű���������(4������) 
2. �������Ż����ݱ�����  
3. �������������߻��(������-4������) 
4. �������������߻��(������-9������) 
5. �������������߻�� 
6. �����������������߻�� 
7. ����������ȹ������߻��

-- ������� ������ ��ȸ   @@@@@@@@@@@@@ 
SELECT LEVEL AS LV, BCLSF_CD, BCLSF_NM
FROM RBUSI_CLSF_V
CONNECT BY PRIOR BCLSF_CD = PRE_BCLSF_CD
START WITH BCLSF_CD IN ('S1803','S1802','S1801','S1431','S1430','S1257','S2000', 'S1312')
==============================================================================================================

- ������û(�¶�������)(/subject/subjectApp/sub_input_list.jsp)���� �˶��� �ǹ�
�Ѱ�å������ ȸ�������� ������ ���ü�˻��Ͽ� ����Ǿ����� �ʽ��ϴ�.<br>MyPage>���������������� ������ 
���ü�˻��Ͽ� �����Ͻð� �����Ͻñ� �ٶ��ϴ�.<br>���ü�� �˻��� ���� �ʴ� ��쿡�� ���ü�� ��ϵǾ�
���� �������̹Ƿ� ���� ��ǥ�ڷ� �α����Ͻþ� ���ü�� ����Ͻʽÿ�.
--�Ѱ�å����(�α��λ����)���� ������ ����   @@@@@@@@@@@@@ 
    MBR_ID, NDEPT_ID, MBR_NM, CITI_NO, NBLNG_DEPT_NM, PHONE_NO1, NOW_PSTN, FAX_NO, EMAIL, PHONE_NO2,
    (CASE WHEN NDEPT_ID IS NULL THEN '2' ELSE '1' END) CHABLE   --���ҼӺμ�ID(���翩�θ� Ȯ��)
FROM RMEMBER
WHERE MBR_ID = '12916017'     --������ID
 --; 

- ���ü�� �˻��� ���� �ʴ� ���  ===> ���ü ���� ���� ���� Ȯ��(����ڰ� ���ü ��ǥ�� �ƴϿ��� ��)
--���ü ���� ��ȸ  @@@@@@@@@@@@@ 
SELECT  M.BUSI_ID AS ���üID, (SELECT MBR_ID FROM RMBR_BUSICEO_HSTR WHERE ROLE_CD='1001' 
AND AVAIL_EDATE='99991231' AND M.BUSI_ID = BUSI_ID AND ROWNUM = 1) ��ǥ��ID, 
M.BUSI_NM AS ���ü��, M.BUSI_NO AS ����ڹ�ȣ, M.COBUSI_NO ���ι�ȣ, M.BUSI_CLSF,  
(SELECT CODE_NAME FROM RCODE WHERE MAIN_CODE='1032' AND AVAIL_EDATE='99991231' 
AND SUB_CODE=M.BUSI_CLSF) AS ANCM_CLSF_NM 
FROM BUSI M
WHERE M.BUSI_ID IS NOT NULL
    AND M.BUSI_NM LIKE '%�����̸޵���%'  --���ü��
    AND M.BUSI_ID IN ('10030863')  --���üID
--; 
==============================================================================================================

������������������� 2009.08.26(��) �۾� �����������������
---> 07:40 ~ 18:30  --> �߼�����ǥ ����

- KIAT SM
- �������� �����ڷ� ���
��û: ������������� ����� ������, 6009-3731, *@*.*
'09�⵵ �������� �����ڷ� �ۼ��� ���Ͽ� ÷�� ����� �ڷ������ ��û
�� ���� : �ֱ� 3�Ⱓ ��������(07, 08, 09�� ���� ���� ��Ʈ�� ��¿��)
�� ����� : �������(�ý��ۺ� ���ī�װ� ����)
  - �����PMS(rnd.risnet.or.kr) : �������Ż����ݱ�����, �ű���������(4������), �������������߻��(4������),
    �������������߻��(9������), �������������߻��, �����������������߻��, ����������ȹ������߻��
  - �������򰡰����ý���(infra.kiat.or.kr) : ������������� �� (�������ż��ͻ��, �������Ż����ݱ�����, 
     ������������������)
------------------------------------------------------------------------------------------------------------------------

/** �ְ���� �ߺ����� ���� ������ */   ---> 2�� �̻� ���
SELECT SUBSTR(TB.FULL_NM,0,2) "������", TA.CNT "����"
FROM (
    SELECT NVL(ZIP_CD,'10000') ZIP_CD, COUNT(A.SBJCT_ID) CNT
    FROM (
            SELECT (SELECT ZIP_CD FROM RBUSI_CLSF_V WHERE BCLSF_CD = A.BCLSF_CD) ZIP_CD, 
A.SBJCT_ID, A.CHRGR_BUSI_ID
    FROM RSUBJECT A
    WHERE A.SBJCT_ID IN (SELECT DISTINCT SBJCT_ID
 FROM RBUSI_CALC
 WHERE FIX_YEAR IN ('2007','2008')))A
    GROUP BY ROLLUP(ZIP_CD)
     ) TA, ZONE_INFO TB
WHERE TA.ZIP_CD = TB.ZIP_CD
--;
==============================================================================================================

- �߰����� �� ����    --> ó�� �Ϸ� 
������ȣ: 70004231  �߰����꺸�� �����ؾ��ϴ� ����
063-212-2323  43�� ��â�� �븮  --> �嵿��(I969009/f4514188)�� �α��� �ؼ� ó���ϸ� �� 
==============================================================================================================

- 2008 �� ���߸�ǥ �� ���߳��� �����Է�    --> ó�� �Ϸ� 
������ȣ: 10024267  ���߸�ǥ, ���߳��� ���� ��û
�ڿ�ö(DWMECHA/iso9001)
==============================================================================================================

- ������ ����� ��� ���
������/���ü --> �Ϲݰ����� --> ������ ����ڰ������� ��ȹ�� ����� ��� 
-- ��ȹ�� ����� ����
--ȸ�� ���� ��ȸ   @@@@@@@@@@@@@ 
SELECT MBR_ID, MBR_NM, LOGIN_ID, PASSWORD
FROM MEMBER
WHERE MBR_NM IN ('����ö','ȫ����','�ڱ͵�')
AND NDEPT_ID LIKE 'R%'
--�����⺻ ���� ����   @@@@@@@@@@@@@
UPDATE RSUBJECT
SET MNGR_MBR_ID = '10002524'    --�����������ID
WHERE SBJCT_ID IN ('10025011','10025080','10025110') 
--�����⺻ ���� ��ȸ   @@@@@@@@@@@@@
UPDATE RSBJCT_MBR_HSTR
SET MBR_ID = '12822377'   --�������� ������ID
WHERE SBJCT_ID IN ('10017512')
  AND ROLE_CD = '1006' 
  AND AVAIL_EDATE = '99991231' 
----------------------------------------------------------------------------------

- �ű��� --> ����������� --> ��������
==============================================================================================================

- ��� ����
�ð�: 2009.08.26(��) 15:00 ~ 15:30
�����ο�: KIAT ��â�� ������, KCC ���缺 ����, ������ ����
==============================================================================================================

- 2009�� �߼�����ǥ ���� 
1. �����Ͻ�: 8�� 26��(��) 06:00 ~ 08:00  ���, ���, ���, �뱸, ����, ���س��μ�
2. 2009�� �߼� ������ ���Ŵ�󿪤��������Ȳ
3. ����ó: ����114 ����: ����� ������ ���ﵿ 701 ���ȸ�� 1�� 02-3452-0101  --> 10�ú��� ����
   ������ȣ:1251, 1ȣ�� 16��, �ð�: 10�� 2�� 12:05 ~ 16:02, �ݾ�:20,500��
4. ����(����): 10�� 2��(��) 11:00 ����ȭȣ(���￪ --> ���뱸��)
==============================================================================================================

������������������� 2009.08.27(��) �۾� �����������������
---> 06:50 ~ 19:00  --> �ִ븮 ���� ����(���� PT)

- KIAT SM
- �������� �����ڷ� ���
��û: ������������� ����� ������, 6009-3731, *@*.*
'09�⵵ �������� �����ڷ� �ۼ��� ���Ͽ� ÷�� ����� �ڷ������ ��û
�� ���� : �ֱ� 3�Ⱓ ��������(07, 08, 09�� ���� ���� ��Ʈ�� ��¿��)
�� ����� : �������(�ý��ۺ� ���ī�װ� ����)
K.VISIT_DATE "�ǻ���", K.GRADE_DATE "����"

CREATE INDEX ITEP_RDBA.RSBJCT_GRADE_INFO_IDX ON ITEP_RDBA.RSBJCT_GRADE_INFO
(SBJCT_ID, GRD_DUTY_CD, SBJCT_SEQ)
LOGGING
TABLESPACE REGION_DATA_TS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;
==============================================================================================================

- ��簣�� ��ȸ �ȵ�    --> ó�� �Ϸ�  
����� ����� ������
-- UPDATE MEMBER M
SET M.DISMISS_DATE= '99991231'    --�����(����� �����ؾ� ��)
WHERE M.MBR_ID IS NOT NULL           
     AND M.MBR_ID IN ('12915602')      --������I
     AND M.MBR_NM = '�����'  
--;
==============================================================================================================

- �Ϲ�ȸ�� => �����ڷ� ���� ó��  --> ó�� �Ϸ�  
 UPDATE MEMBER M 
SET M.NDEPT_ID= 'R006' ,    --���ҼӺμ�ID(R006:����)
     M.NDEPT_CLSF = '1'      --���ҼӺμ�_���ü����CD
WHERE M.MBR_ID IS NOT NULL 
      AND M.MBR_ID IN ('12915835','12916566','05002800')  --������ID  
--;
==============================================================================================================

- ����������� �ý��۰��� ȸ��
�Ͻ�: 2009.08.26(��) 15:00 ~ 16:30
----------------------------------------------------------------------------
- ������Ȳ ���, ������Ȳ�� ������ ����, �������
1. ������Ȳ�� ������ ����
 1) ��й�ȣ �нǽ� ���� �߼� �ȵ�(��ȭ�� ����)
 2) ���ü ���� ������ ���� ����
  - ���ü ��Ͻ� ��ǥ�� ��� ����
  - ����ڵ�� ��ȣ�� �ֹι�ȣ ����
  - ���ü ��ǥ�� ���� ��û
 3) �������±��п� ���� ����
2. �������
 1) ��й�ȣ �нǽ� ���� �߼� �ȵ�
   - ��й�ȣ �нǽ� ���� �߼�(���� �ý��� ����)
 2) ���ü ���� ������ ���� ����
  - ���ü ���� ������ ���� �����ܿ� �̰�(���α׷� ����)
 3) �������±��п� ���� ����
   - ���α׷� ����
3. ������Ȳ ���
- �� ���� �Ǽ�: 385��, ���� �Ϸ� �Ǽ�: 379��, ���� �̿Ϸ� �Ǽ�: 6��
----------------------------------------------------------------------------

1. ���İ��� �ý���
 - e-bank(�򰡿� ���) ��� ��û
2. �ý��� �ľ� ����Ʈ �ۼ�(ERD ���ַ� �ۼ�)
 - 9�� 16��(��) ��� ��ǥ
 - ���Ļ�� ����
3. ��������� ȭ�� ���� ��û
- ����� ���� ����, �� ��� ���� ����
4. ����� �α��� �ڵ� ��ũ
5. ���սý��� ����
- ���� ���� �ý��� ��ü ���� --> ���� ���� �ý��� ���� �� ���� 
==============================================================================================================

������������������� 2009.08.28(��) �۾� �����������������
---> 07:10 ~ 18:50

- KIAT SM
- �������� �����ڷ� ���
��û: ������������� ����� ������, 6009-3731, *@*.*
'09�⵵ �������� �����ڷ� �ۼ��� ���Ͽ� ÷�� ����� �ڷ������ ��û
�� ���� : �ֱ� 3�Ⱓ ��������(07, 08, 09�� ���� ���� ��Ʈ�� ��¿��)
�� ����� : �������(�ý��ۺ� ���ī�װ� ����)
�����: 150,000õ��, -->  150,000,000��

�ش�⵵ �������(�򰡱���) ������  ---> AVAIL_SDATE: �߻���(��ȿ������)�� ����
SELECT TO_CHAR(NVL(SUM('45853000'), 0)/1000, '999,999,999,990')  FROM DUAL 
==============================================================================================================

- STOCKS
��(3,140), ȭ(3,120), ��(3,090), ��(3,045), ��(3,065)
==============================================================================================================

������������������� 2009.08.31(��) �۾� �����������������
---> 06:50 ~ 18:50

- KIAT SM
- �������� �����ڷ� ���
��û: ������������� ����� ������, 6009-3731, *@*.*
'09�⵵ �������� �����ڷ� �ۼ��� ���Ͽ� ÷�� ����� �ڷ������ ��û
�� ���� : �ֱ� 3�Ⱓ ��������(07, 08, 09�� ���� ���� ��Ʈ�� ��¿��)
�� ����� : �������(�ý��ۺ� ���ī�װ� ����)
==============================================================================================================

- �߰����� ó�� --> ó�� �Ϸ�
UPDATE  rreport rr
SET rr.rpt_step = 'X'  
WHERE    rr.report_cd = /*[#2=1001]*/ '1001'
and rr.sbjct_id= /*[#5=1001]*/ '70004470'
==============================================================================================================

- ���� ���ε� ���� --> ó�� �Ϸ�
�ݹ� �������������߻���� ���������� �ۼ��Ͽ� rnd.risnet.or,kr�� ����ϴ� �߿� 
�߰����� ÷�� �κп��� ȭ�� ���ε尡 ��� ������ ������ ���� ȭ���� ÷�ε��� ���� ���¿��� 
���� �Ϸᰡ �Ǿ����ϴ�.  
1. ������ȣ : 70004487
2. ����� : �������������߻��
3. ������ : ������ Ư�� ������ ������ȯ�� ���� �˷����� ����ȭ �� �������� ���� �� ��ǰ����
4. �ְ���� : (��)���ǵ�
5. ����å���� : �Ǻ�
==============================================================================================================

- ���� ����R&D ����Ʈ �ڷ� ��� --> ó�� �Ϸ�
01. ���� ����R&D ����Ʈ(20090831).xls --> ����� ������
- �ߺ����˻缭�� ����Ʈ ����Ʈ �ڷ� ��� --> ó�� �Ϸ�
02. �ߺ����˻缭�� ����Ʈ(20090831).xls --> �鳫�� ������
==============================================================================================================

- STOCKS
��(3,030), ȭ(3,120), ��(3,090), ��(3,045), ��()
==============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������