

����������������������������������������������������������
+----------------------------------------------// Memo(2018.08) //----------------------------------------------+
����������������������������������������������������������


������������������� 2018.08.01(��) �۾� �������������������
---> 06:40 ~ 21:00 ==> �ް�1

- �ް�1[2018.08.01(��) ~ 08.03(��)]
11:00 ���
11:35 TV ��û
12:00 Ŀ��((�ƽ�] ��ī/ȭ��Ʈ��� 320T: Ƽ��, ����: 30,420��) �ֹ�
13:00 ����
18:30 ���
19:40 ����(���� �ϳ��� ��Ʈ ����): ����, ����, ���, �ݹ�, �� -> 29,010��
20:30 ����(���)
01:00 ��ħ
==============================================================================================================
 
������������������� 2018.08.02(��) �۾� �������������������
---> 06:40 ~ 22:00 ==> �ް�2

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- �޴� ���� ����
1. �����׷캰 �޴����� ��� ȭ��(/CM_TskGrpLyMenuAuthInput.xfdl) ���� ���� 
 1) Grid üũ�ڽ� ����
============================================================================================================== 
 
-- �����׷� ���� ��� @@@
INSERT INTO QMSMGR.HSSCR100_02
(
 ACL_GRP_CD,
    ACL_GRP_NM,
    ACL_GRP_PT,
    USE_YN,
   CID,            -- ������ID
    CDT,
    MID,             -- ������ID
  MDT,
    REGISTER,	-- ���� ������ID(������ ��)
    REG_DDTT,
    MODIFIER,
    MOD_DDTT
    )
    SELECT
        ACL_GRP_CD,
        ACL_GRP_NM,
        ACL_GRP_PT,
        USE_YN,
       REGISTER AS CID,            -- ������ID
         TO_CHAR(SYSDATE,'YYYYMMDDHH24MMSS')	AS CDT,   	-- CDT(�������)
        MOD_DDTT AS MID,           -- ������ID
         TO_CHAR(SYSDATE,'YYYYMMDDHH24MMSS') AS MDT,		-- MDT(�������)
    REGISTER,	-- ���� ������ID(������ ��)
	REG_DDTT,   
    MODIFIER,
    MOD_DDTT
    FROM QMSMGR.HSSCR100  
;    
------------------------------------------------------------------------------------------------------
 
-- ���� ���� Į�� ���� @@@   ===> �����׷� ����[HSSCR100], �����׷캰 ����ڵ�� ����[HSSCR110]
ALTER TABLE HSSCR100
DROP (
    REGISTER 
    , REG_DDTT
    ,  MODIFIER
    ,  MOD_DDTT
)
; 
--------------------------------------------------------------------------------
 
 -- Į�� �߰� @@@
ALTER TABLE QMSMGR.HSSCM100 ADD
(  
	CID             VARCHAR(20),
    CDT             VARCHAR(14),
    MID             VARCHAR(20),
    MDT             VARCHAR(14)
)
; 
COMMENT ON COLUMN QMSMGR.HSSCU100.CDT IS '������';
COMMENT ON COLUMN QMSMGR.HSSCU100.CID IS '������ID';
COMMENT ON COLUMN QMSMGR.HSSCU100.MDT IS '������';
COMMENT ON COLUMN QMSMGR.HSSCU100.MID IS '������ID';
--; 
============================================================================================================== 

-- ���̺� �÷� �ּ��� ��ȸ 
SELECT T.COLUMN_NAME AS "Į����(PHYSICAL)",            -- PHYSICAL_NAME
        C.COMMENTS AS "Į����(LOGICAL)",         -- LOGICAL_NAME
        T.DATA_TYPE AS "Į�� Ÿ��", 
        --T.DATA_LENGTH,
        (CASE
            WHEN T.DATA_TYPE = 'NUMBER' THEN T.DATA_PRECISION
            ELSE 
            (CASE 
                WHEN T.DATA_LENGTH != 0 THEN T.DATA_LENGTH ELSE NULL 
                END
            )
        END) AS "Į�� ����",
        T.DATA_SCALE,
        T.DATA_DEFAULT,
        T.NULLABLE AS "Į�� �� ����"
FROM USER_TAB_COLUMNS T, USER_COL_COMMENTS C
WHERE T.TABLE_NAME = C.TABLE_NAME
    AND T.COLUMN_NAME = C.COLUMN_NAME
    AND T.TABLE_NAME = 'HSSCR110'  -- ���̺� ��
ORDER BY T.COLUMN_ID ASC
;  
--------------------------------------------------------------------------------------------------

-- ���̺� �ּ��� ��ȸ
SELECT  TABLE_NAME, TABLE_TYPE, COMMENTS 
FROM USER_TAB_COMMENTS
WHERE COMMENTS IS NOT NULL
    AND TABLE_NAME = 'HSSCR100'   -- ���̺� ��
;   

-- ���̺� �÷� �ּ��� ��ȸ  
SELECT TABLE_NAME, COLUMN_NAME, COMMENTS
 FROM USER_COL_COMMENTS
 WHERE COMMENTS IS NOT NULL 
    AND TABLE_NAME = 'HSSCR110'  -- ���̺� ��
;   

-- ���̺� �ּ� ���� 
COMMENT ON TABLE emp IS '���'
;

-- ���̺� �÷� �ּ� ����
COMMENT ON COLUMN emp.empno IS '�����ȣ'
;  
  
-- ���̺� �� �ּ� ���� ����
COMMENT ON COLUMN emp.empno IS ''
;
============================================================================================================== 

- Grid���� URL ID�� ���� ���ϴ� Į���� ����(#F1F1F1) ����
0. ��ü Į��(ACL_ALL) ==> tooltiptext --> expr:(UI_ID == null) ? "�ش� Row, Į���� ���� �Ұ� �մϴ�." : ""
1. �����׷캰 �޴����� ��� ȭ��(/CM_TskGrpLyMenuAuthInput.xfdl) ���Ͽ���
<Formats>
<Format id="default">
  <Columns>
    <Column size="280" />
    <Column size="80" />
    <Column size="80" />
    <Column size="80" />
    <Column size="80" />
    <Column size="80" />
    <Column size="80" />
    <Column size="96" />
  </Columns>
  <Rows>
    <Row size="32" band="head" />
    <Row size="24" />
  </Rows>
  <Band id="head">
    <Cell text="�޴���" wordwrap="english"/>
    <Cell col="1" text="��ü"/>
    <Cell col="2" text="��ȸ[�б�]"/>
    <Cell col="3" text="�ű�[�߰�]"/>
    <Cell col="4" text="����[����]"/>
    <Cell col="5" text="����"/>
    <Cell col="6" text="�μ�[���]"/>
    <Cell col="7" text="�޴��������"/>
  </Band>
  <Band id="body">
    <Cell displaytype="tree" edittype="tree" style="align:left;background:EXPR((USE_FLAG==&apos;N&apos;)&#32;?&#32;&apos;#efefef&apos;&#32;:&#32;&apos;&apos;);background2:EXPR((USE_FLAG==&apos;N&apos;)&#32;?&#32;&apos;#efefef&apos;&#32;:&#32;&apos;&apos;);font:EXPR((DIV_LVL_NUM==1)&#32;?&#32;&apos;bold&#32;antialias&#32;9&#32;Malgun&#32;Gothic&apos;&#32;:&#32;&apos;&apos;);selectfont:EXPR((DIV_LVL_NUM==1)&#32;?&#32;&apos;bold&#32;antialias&#32;9&#32;Malgun&#32;Gothic&apos;&#32;:&#32;&apos;&apos;);" cssclass="padding7" text="bind:CAPTION1" treestartlevel="0" treelevel="bind:TREE_LEVEL"/>
    <Cell col="1" displaytype="checkbox" edittype="checkbox" style="background:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));background2:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));selectbackground:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));" text="bind:ACL_ALL" editdisplay="display" tooltiptext="expr:(UI_ID&#32;==&#32;null)&#32;?&#32;&quot;�ش�&#32;Row,&#32;Į����&#32;����&#32;�Ұ�&#32;�մϴ�.&quot;&#32;:&#32;&quot;&quot;"/>
    <Cell col="2" displaytype="checkbox" edittype="checkbox" style="background:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));background2:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));selectbackground:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));" text="bind:ACL_INQ_YN" editdisplay="display" tooltiptext="expr:(UI_ID&#32;==&#32;null)&#32;?&#32;&quot;�ش�&#32;Row,&#32;Į����&#32;����&#32;�Ұ�&#32;�մϴ�.&quot;&#32;:&#32;&quot;&quot;"/>
    <Cell col="3" displaytype="checkbox" edittype="checkbox" style="background:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));background2:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));selectbackground:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));" text="bind:ACL_REG_YN" editdisplay="display" tooltiptext="expr:(UI_ID&#32;==&#32;null)&#32;?&#32;&quot;�ش�&#32;Row,&#32;Į����&#32;����&#32;�Ұ�&#32;�մϴ�.&quot;&#32;:&#32;&quot;&quot;"/>
    <Cell col="4" displaytype="checkbox" edittype="checkbox" style="background:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));background2:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));selectbackground:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));" text="bind:ACL_MOD_YN" editdisplay="display" tooltiptext="expr:(UI_ID&#32;==&#32;null)&#32;?&#32;&quot;�ش�&#32;Row,&#32;Į����&#32;����&#32;�Ұ�&#32;�մϴ�.&quot;&#32;:&#32;&quot;&quot;"/>
    <Cell col="5" displaytype="checkbox" edittype="checkbox" style="background:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));background2:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));selectbackground:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));" text="bind:ACL_DEL_YN" editdisplay="display" tooltiptext="expr:(UI_ID&#32;==&#32;null)&#32;?&#32;&quot;�ش�&#32;Row,&#32;Į����&#32;����&#32;�Ұ�&#32;�մϴ�.&quot;&#32;:&#32;&quot;&quot;"/>
    <Cell col="6" displaytype="checkbox" edittype="checkbox" style="background:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));background2:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));selectbackground:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;1));" text="bind:ACL_PRINT_YN" editdisplay="display" tooltiptext="expr:(UI_ID&#32;==&#32;null)&#32;?&#32;&quot;�ش�&#32;Row,&#32;Į����&#32;����&#32;�Ұ�&#32;�մϴ�.&quot;&#32;:&#32;&quot;&quot;"/>
    <Cell col="7" displaytype="checkbox" edittype="checkbox" style="background:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;7));background2:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;7));selectbackground:EXPR(comp.parent.fn_setBgColor(UI_ID,&#32;7));" text="bind:DISP_YN" editdisplay="display" tooltiptext="����&#32;Ŭ���ϸ�&#32;�޴����������&#32;&apos;��ü&apos;&#32;����,&#32;�����˴ϴ�."/>
  </Band>
</Format>
</Formats>
 
/***********************************************************************
 * �Լ���  	: fn_setBgColor
 * ���� 		: Grid���� URL ID�� ���� ���ϴ� Į���� ����(#F1F1F1) ����
 * params  		: sUiId(URL ID), nNo(Į�� ��ȣ)
 * return Type 	: sRtn(����) 
***********************************************************************/ 
this.fn_setBgColor = function(sUiId, nNo) 
{ 
	//trace("[/CM_TskGrpLyMenuAuthInput.xfdl][fn_setBgColor()]==> [TEST_01][sUiId]"+ sUiId ); 
 
	var sRtn = "";   
 
	if(nNo == 7)		// �޴�������� Į������ ������(���� ����)
	{
		sRtn = "#B6D2D6";
	} 
	else
	{ 
		if(gfn_isNull(sUiId))		// URL ID�� ���̸�(���� ����)
		{
			sRtn = "#F1F1F1";  
		} 
		else
		{
			sRtn = "#ffffffff";
		} 
	} 
	//trace("[/CM_TskGrpLyMenuAuthInput.xfdl][fn_setBgColor()]==> [TEST_end][nNo]"+ nNo +"[sRtn]"+ sRtn +"[sRtn]"+ sRtn ); 
	
	return sRtn;
} 
============================================================================================================== 
 
������������������� 2018.08.03(��) �۾� �������������������
---> 06:50 ~ 19:40 ==> �ް�3, ������(20:12 ~ 22:07, �𱳿� -> ��������)

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- ���� ���԰˻�(/QI_SteelPipeImpInsp.xfdl) ����
1. �������� Flow ����
============================================================================================================== 
 
- �Ŀ�����Ʈ ���ø�
1. PPT#01 ����� ����Ƽ ǥ��������(���� > �����̴� ������) ==> https://www.youtube.com/watch?v=Cfzowjg5C-Q
2. PPT#02 ����� ����Ƽ ���ø������� ==> https://www.youtube.com/watch?v=7B5AUhL0MU8 

- �Ŀ�����Ʈ �� ����
1. Ȩ > �ܶ�: Ŭ�� > ��(T)..: Ŭ�� >
============================================================================================================== 
 
- ���� �ҽ� �̰�
1. ���� �������� � ������ �ҽ� �̰�(15:30)
============================================================================================================== 

- ��Ĺ 8 �α� ����
1. ������� Tail ���α׷� 
�� �����̳� ��Ÿ ������ �ϴٺ��� �ǽð����� �α� ������ Ȯ���ϰ� �������� �ֽ��ϴ�.
���н� �迭�� O/S������ "tail -f ���ϸ�"���� Ư�� ������ ��ȭ ���¸� �ǽð����� ������ �� ������
�������� �迭�� ������ ����� ���� ��ƿ�� �����ϴ�.
 ---------------------------------------------------------------------------------------------------

- ������� Tail ���α׷� 
1. tomcat cmd ���������Ʈ â���� ���� �α� Ȯ��
2. mTAIL ==>http://blog.naver.com/PostView.nhn?blogId=dev4unet&logNo=120156780438
3. baretail ==> http://bigenergy.tistory.com/405
4. Windows Tail ���α׷�  ==> http://bryan7.tistory.com/1009
==============================================================================================================

������������������� 2018.08.04(��) �۾� �������������������
---> 07:40 ~ 19:40 ==>  

- �ָ�
08:00 ���
08:35 ����(���)
11:20 �����(����)
11:30 �븲�� ������(6511�� ����: ����)
12:40 ����� ������ ����
12:50 ���ǹ�ȭ������ 1��
13:00 ���ǹ�ȭ������ �Ĵ�(�޹�): �� �� ����
13:20 ���ǹ�ȭ������ 3��
14:00 ���ǻ� ��� ��� �������� �湮(���� ������ ��): �����̰� ���� ��
15:00 ����
15:10 ����� ������ ����
16:10 �븲�� ������(6511�� ����: ����)
16:15 ���θ� ����(����, ������: ���� ģ��)
17:00 ����
17:10 ���� ����(�����ν��� ��) ==> ���� ����(���̳�: �ұ�â�� �������� ����)
17:20 ġŲ(�������� �ν�Ʈ[8,900��], ���� ����ũ[10,900��]
17:30 �ֵ���(2��: ����): �츮 ���� ������
17:50 �Ͱ�
18:30 ����
20:30 ����(�̸�Ʈ ������): ��Ÿ �����(�峭��, ����), ��� ������ Ʈ��ũ(��Ƽ, 95M)
22:20 �Ͱ� ==> �翺 ��� ���� ��Ƽ�� ���� (21�ÿ� �Ͱ�)
23:00 ��ħ
==============================================================================================================

������������������� 2018.08.05(��) �۾� �������������������
---> 07:00 ~ 23:00 ==> 

�� �౸
08:00 ���  
09:30 ����(���)
10:30 ����
11:50 ���
12:00 �߽� ==> �翺, ���� ������ ��
14:00 �����
14:10 �����ν��� ==> �ӿ� ���� ����(BYC, TRY �ӿ� ���� 5õ��)
12:30 ����(�̸�Ʈ ������): ��� ������ Ʈ��ũ(��Ƽ, 95M) 6��(�� 3õ��)���� ==> �۾Ƽ� �� ����: ����Ͽ� ��ǰ�� ��
15:40 �븲��� 
16:00 ����(������ȸ��: ��︲ ==> 3���� ��): 34��, ��ô �������� �ٶ��� �ణ �Ұ� ������ ���Ƽ� ���� �� ����
18:00 ����
18:20 ����Ʈ(��, ���� ����)
19:00 �Ͱ�  
19:50 �����
20:05 �븲�� 7ȣ�� �������� ������(������04 ���� ž��)
20:30 �������� ����
20:49 ������(20:49 ~ 22:36, �������� -> �𱳿�) ž��
22:40 �𱳿� ����(5�� ����)(Ȳ���� ������ Ÿ�� ������)
23:10 �Ͱ�
23:40 TV ��û(�ǰ��ؼ� ��)
01:00 ��ħ
==============================================================================================================

������������������� 2018.08.06(��) �۾� �������������������
---> 07:40 ~ 22:00 ==>  

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- � ���� ���� �غ�
============================================================================================================== 

- �˻���ص��(/QI_InspStdInput.xfdl) ��ȸ �ӵ� ����
1. ����: � ������ ����Ÿ �Ǽ��� 100���� ������ �ӵ��� �������� ���� ������
2. ����:  ���� ��ȸ�� 1���� Ds(ds_listMaster)���� ��� ó���� �� �ִ� �߰� ds_infoMaster�� �����Ͽ�
����Ÿ�� 100�� �̻� ��ȸ�Ǹ� ���� ��ȸ �ӵ��� ������
3. ��ġ: �ʿ� ���� Ds ������ ��(�����ϰ� ���ߵ� ȭ�� ��� ������ ��)
/* �˻������ȸ ==> [qi:QI_InspStdInput_S01.xml] [2018.07.18, by �̻�Ź] -> �ӵ�����  */   --> 2609 ��, 0.63 sec
	SELECT   '' AS "�˻������ȸ"
				--, COUNT(*) AS "��ȸ ����"
				-- , A.CRE_DT AS "�����Ⱓ"  
				, A.*
FROM (
SELECT  /*+ LEADING(T001) USE_NL(T001 T002 T003) */
			  0 AS CHK
			, T001.ITM_CD
			, T002.ITM_NM 
			, T001.MODEL_CD		
			, T003.SUB_CD || ' - ' || T003.TITLE AS MODEL_NM
			, T001.INSP_BC
			, (SELECT T006.TITLE FROM HSBCA200 T006 WHERE T006.BASE_CD = T001.INSP_BC) AS INSP_NM
			, T001.REV_NO
			, MAX(T001.REV_NO) OVER (PARTITION BY T001.ITM_CD, T001.INSP_BC) MAX_REV_NO
			, T001.EO_NO
			, T001.CHK_STEP_BC
			, (SELECT T007.TITLE FROM HSBCA200 T007 WHERE T007.BASE_CD = T001.CHK_STEP_BC) AS CHK_STEP_NM
			, T001.FIX_DESC
			, T001.PHOTO1
			, T001.PHOTO2
			, T001.PHOTO3
			, FN_CM_GET_USER_NAME(T001.CRE_UID) CRE_UID
			, T001.CRE_DT
			, FN_CM_GET_USER_NAME(T001.CRE_UID) IQC_ENO 
			, T001.CRE_UID AS IQC_ENO_CD
			, T001.CONF_NO
			, (SELECT FN_CM_GET_APPROVE_STATUS(T001.CONF_NO) FROM DUAL)  AS CONF_STATE  --����
			, (SELECT FN_CM_GET_APPROVE_STATUS(T001.CONF_NO,'CODE') FROM DUAL)  AS CUR_STATUS	--����
			, ''  P_IN_WORK_CODE   									--����
			, ''  P_IN_ACTION_NO  									--����
			, ''  P_IN_REJECT_DESC  								--����
			, T001.EXAM_UID
			, (SELECT FN_CM_GET_USER_NAME(T001.EXAM_UID) FROM DUAL) AS EXAM_UNM
			, T001.EXAM_DT
			, T001.EXAM_RET
			, T001.CONF_UID
			, (SELECT FN_CM_GET_USER_NAME(T001.CONF_UID) FROM DUAL) AS CONF_UNM
			, T001.CONF_DT
			, T001.CONF_RET
			,  (SELECT FN_CM_GET_USER_NAME(T001.CID) FROM DUAL) CID  
			, TO_CHAR(TO_DATE(T001.CDT)) AS CDT 
			,  (SELECT FN_CM_GET_USER_NAME(T001.MID) FROM DUAL) MID  
			, TO_CHAR(TO_DATE(T001.MDT)) AS MDT
FROM HSQMZ660 T001
,	 HSDMA100 T002 
,	 HSBCA200 T003	
WHERE 1=1
	AND  T001.ITM_CD   = T002.ITM_CD(+)
	AND  T001.MODEL_CD = T003.BASE_CD(+)
	AND T001.CRE_DT BETWEEN '20170806' AND '20180806'   -- �����Ⱓ(20180709, 20180710, 20170806, 20180806)
 ) A
WHERE 1=1	
	AND A.REV_NO = A.MAX_REV_NO
ORDER BY A.ITM_NM, A.MODEL_NM, A.ITM_CD, A.INSP_BC, A.REV_NO
 ;
============================================================================================================== 

- ������ö �޽��� ��ȣ ����
1. ����: Auotoway M+ ��ȣ�� ����
 1) �׷����ý��ۿ��� ��ȣ ���� �Ͻ� �� ��α������ּ���.
2. ��ġ: ������ö �׷����ý���(https://hsteelro.hyundai-steel.com)���� �α��� ������ ��
============================================================================================================== 
 
- ������� Tail ���α׷� ��� ��û ����(�̻�Ź ���忡�� ���� ����)
1. tomcat cmd ���������Ʈ â���� ���� �α� Ȯ��
 1) itail : http://idev.ibksystem.co.kr ���� ����(�ǽð� log Ȯ�� ���α׷�) ==> � ������ ����(��� ���� �㰡 ����)
2. mTAIL ==>http://blog.naver.com/PostView.nhn?blogId=dev4unet&logNo=120156780438
3. baretail ==> http://bigenergy.tistory.com/405
4. Windows Tail ���α׷�  ==> http://bryan7.tistory.com/1009
==============================================================================================================

- QI-01-020: �˻���� �̹��� ��� ���� ����
UPDATE HSSCR120 A   -- �����׷캰 ȭ����� ���� TB
SET A.ACL_REG_YN = 'N'      -- �޴�_�ű�_���� 
		, A.ACL_DEL_YN = 'N'      -- �޴�_����_���� 
WHERE 1=1
    AND A.SCR_ID = 'QI-01-020' 		-- ȭ��ID(�޴�ID) ==> QI-01-020: �˻���� �̹��� ���
; 
-- ========================================================================================================= 
 
- ������ö AP QMS � ���� �α� ����(Tomca ������ ������)
1. itail ����(�ǽð� log Ȯ�� ���α׷�) ==> � ������ ����(��� ���� �㰡 ����)
2. D:\QMS\Tomcat\logs �������� ���ϴ� ��¥�� log ����(tomcat8_fsp-stdout.2018-08-06.log, tomcat8_fsp-stderr.2018-08-06.log)
3. clear(ESC) �� �α� ����
========================================================================================================= 
 
- ���� ���԰˻�(/QI_SteelPipeImpInsp.xfdl) ���� ��û����(�� ��û)
1. �ű� �Է½� ��������/�������� �ڵ�ǥ�� ����
2. ��û���¿��� �󼼳��� ������ ������ ���·� ��ȯ���� ����. 
==============================================================================================================

������������������� 2018.08.07(ȭ) �۾� �������������������
---> 05:50 ~ 21:10 ==>  

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- ������ö Prj 1�� ����(18��, ����)
1. ǰ���˻�(QI), 7. ��������(CM), 8. �ý��۰���(SY)  ==> 3�� ���� 
2. 8�� 7��(ȭ): ��� ���� ����, 8�� 8��(��): ���� ���� ����
============================================================================================================== 

- �α� �ƿ� ���� ����
1. TOP ������(/frmTop.xfdl) ����
 1) ����: �α׾ƿ��� �ϸ� �޴� ȭ���� ������� ����
 2) ��ġ:  application.av_mdiFrame.form.btn_home_onclick();	�Լ� �߰�  
/***********************************************************************
 * �Լ���  	: exitConfirmCallback
 * ���� 		: �ݹ� �Լ�
***********************************************************************/
this.exitConfirmCallback = function(sid, rtn)
{
	trace("[/frmTop.xfdl][exitConfirmCallback()] ==> [�ý��� ���� �ݹ�][TEST_01][sid]"+ sid +"[rtn]"+ rtn ); 
	
	if(rtn) 
	{ 		
		application.av_mdiFrame.form.btn_home_onclick();	 // Home ȭ������ �̵��ϴ� �Լ� ȣ��(�߰�)
	 
		application.JSESSIONID = ""; 
		application.gds_session.clearData();
		application.gds_openMenu.clearData();
		application.gds_menu.clearData();
		application.gds_myMenu.clearData();
		application.gds_message.clearData();
		application.gv_userId = "";	// �α��� ID
		application.gv_token = "";	// �α��� ID(SSO)
		
		this.afn_loginPopup();		// �α��� �˾� �Լ� ȣ�� ȣ��  
	}
}
============================================================================================================== 

-- �����׷� ����� ���� @@@
-- UPDATE HSSCR110 A
 SET  A.MNG_YN =  'Y'    --- �޴� ���� ��뿩��
WHERE 1=1
	AND A.ACL_GRP_CD =  '260'		-- ���ѱ׷��ڵ�
	AND A.USER_ID =  '1515826'		-- �����ID
;
============================================================================================================== 

- Microsoft Word 2002�� ����Ͽ� HTML ������ �����ϴ� ���
1. https://support.microsoft.com/ko-kr/help/310521/how-to-create-and-edit-an-html-document-with-microsoft-word-2002

- Convert document files online
https://www.aconvert.com/document/ppt-to-html/

- �Ŀ�����Ʈ ���� pptx�� ������ mht�� �����ϱ� : ���̹� ��α�
1. http://blog.naver.com/PostView.nhn?blogId=radiobj5&logNo=221201127664&parentCategoryNo=&categoryNo=80&viewDate=&isShowPopularPosts=false&from=postView
============================================================================================================== 
 
- � ���� ��� ����
1. ����: � ������ ���� ������ ������ �� �Ȱ��� ȯ�濡 �Ȱ��� �ҽ��� ���� �ߴµ� � ���� ��ü�� ����(CPU ���� ��� ����)
 1) 2018/08/07 14:11:05 �濡 �α����� ���� ������ ���ϰ� �߻�(��Ĺ ������ ���� �� ����� �ߴµ��� ���� ���� �߻�)
2018/08/07 14:11:05,SYSTEM_ERROR,[SVC__00058]Exception occurred in stop() processing of Service "FSPManager#DatasourceJndiFinder"
javax.naming.OperationNotSupportedException: Context is read only
	at org.apache.naming.NamingContext.checkWritable(NamingContext.java:961)
	at org.apache.naming.NamingContext.close(NamingContext.java:758)
	at com.sz.service.jndi.DefaultJndiFinderService.stopService(Unknown Source)
	at com.sz.core.ServiceBase.stop(Unknown Source)
	at com.sz.core.DefaultServiceManagerService.changeServiceState(Unknown Source)
	at com.sz.core.DefaultServiceManagerService.changeServiceState(Unknown Source)
	at com.sz.core.DefaultServiceManagerService.changeServiceState(Unknown Source)
	at com.sz.core.DefaultServiceManagerService.changeServiceState(Unknown Source)
	at com.sz.core.DefaultServiceManagerService.changeServiceState(Unknown Source)
	at com.sz.core.DefaultServiceManagerService.destroyService(Unknown Source)
	at com.sz.core.DefaultServiceLoaderService.shutdownServiceManager(Unknown Source)
	at com.sz.core.DefaultServiceLoaderService.undeployServerMetaData(Unknown Source)
	at com.sz.core.DefaultServiceLoaderService.stopService(Unknown Source)
	at com.sz.core.ServiceBase.stop(Unknown Source)
	at com.sz.core.ServiceManagerFactory.unloadManager(Unknown Source)
	at com.sz.core.ServiceManagerFactory.unloadManager(Unknown Source)
	at com.sz.ui.ServiceLoaderFilter.destroy(Unknown Source)
	at org.apache.catalina.core.ApplicationFilterConfig.release(ApplicationFilterConfig.java:312)
	at org.apache.catalina.core.StandardContext.filterStop(StandardContext.java:4605)
	at org.apache.catalina.core.StandardContext.stopInternal(StandardContext.java:5403)
	at org.apache.catalina.util.LifecycleBase.stop(LifecycleBase.java:226)
	at org.apache.catalina.core.ContainerBase$StopChild.call(ContainerBase.java:1435)
	at org.apache.catalina.core.ContainerBase$StopChild.call(ContainerBase.java:1424)
	at java.util.concurrent.FutureTask.run(FutureTask.java:266)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:745)
2018/08/07 14:11:06,SYSTEM_INFO,[SVCMF00012]Unloading of a service definition was completed. : file:/D:/QMS/APQMS/workspace/APQMS/WebContent/WEB-INF/fsp/conf/service.xml

2. ����:
 1) � ������ ��Ĺ ���� 2���� ����� ��ŭ�� ������ �ƴ� �ɷ� �Ǵܵ�
 2) �����˻� ����͸�(/QI_GenMonitoring.xfdl) ȭ���� 15�� DB ȣ���ϰ� for���� ���鼭 Grid�� �۾��� �ϸ鼭 ���ϸ� ��� ���� 
    == >������ ���ϰ� ��û���� �߻��Ǵ� ������ QI_GenMonitoring_S01 �Ǹ��� ������(����)
 /* ��������͸� ��ȸ  ==> [qi:QI_GenMonitoring_S01.xml] [2018.06.01, by �赵��] */  ==> �����˻� ����͸�(/QI_GenMonitoring.xfdl) ȭ��
 SELECT 
  	count(*) TOTAL,
     T002.FAC_CD, --�����ڵ�
     DECODE(T002.FAC_CD,'4100','USA1','4200','USA1','4300','USA1','6100','YSA1','6300','YSA1','6110','YSA2','6310','YSA2','') AS FAC_NM,
     T002.LINE_CD, --ȣ��
     SUBSTR(T002.LINE_CD,-2) AS LINE_SEQ,
     MIN(CASE WHEN T003.FCE_GUB IS NULL THEN 'BLACK' ELSE 'GREEN' END) AS STATUS_FLAG,
     NVL(min(case when T003.FCE_GUB = 'QM130100' then DECODE(T003.SHIFT_CD,'QM483300','BLUE','GREEN') end),'WHITE') as INSP_1TH_LED, --������
     NVL(min(case when T003.FCE_GUB = 'QM130200' then DECODE(T003.SHIFT_CD,'QM483300','BLUE','GREEN') end),'WHITE') as INSP_2ND_LED, --������
     NVL(min(case when T003.FCE_GUB = 'QM130300' then DECODE(T003.SHIFT_CD,'QM483300','BLUE','GREEN') end),'WHITE') as INSP_3TH_LED --������
 FROM HSBCC300 T001 
	 LEFT JOIN HSBCC400 T002 ON T001.FAC_CD = T002.FAC_CD
	 LEFT JOIN HSQMM100 T003 ON T002.FAC_CD = T003.IN_FAC 
		 AND T002.LINE_CD = T003.LINE_CD 
		 AND  T003.INSP_BC IN ('QM49021','QM49022','QM49023','QM49024','QM49025','QM49026') 
 AND    T003.IQC_DT = MESMGR.MON_FN_GET_BASE_DATE('')
 AND    (CASE WHEN T003.IQC_TIME BETWEEN '063000' AND '173000' THEN '�ְ�' ELSE '�߰�' END)
		 = (CASE WHEN TO_CHAR(SYSDATE,'HH24:MI') BETWEEN '06:30' AND '17:30' THEN '�ְ�' ELSE '�߰�' END)
 GROUP BY  T002.FAC_CD, --������

3. ��ġ:
 1) �����˻� ����͸�(/QI_GenMonitoring.xfdl) ȭ�鸦 � �������� ���� ��Ű�� � ���� ������ �غ��� �Լ�
==============================================================================================================

- � ���� HW ȯ��
1. CPU: Intel(R) Xeon(R) CPU E7-4870 @2.40GHz, �޸�: 8G, OS: ������ ���� 2012 R2
2. IP: 10.10.221.91,  https://apqm.hyundai-steel.com/APQMS
- ���� ���� HW ȯ��
1. CPU: Intel(R) Xeon(R) CPU E7-4870 @2.40GHz, �޸�: 8G, OS: ������ ���� 2012 R2
2. IP: 10.10.180.91,  https://apqmsdev.hyundai-steel.com/APQMS
==============================================================================================================

- ���̸޴�(/frmLeft.xfdl) ����
1. ���� ����
============================================================================================================== 
  
������������������� 2018.08.08(��) �۾� �������������������
---> 06:20 ~ 22:00 ==>  ���� ���� ����

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- ������ö Prj 1�� ����(18��, ����)
1. ǰ���˻�(QI), 7. ��������(CM), 8. �ý��۰���(SY)  ==> 3�� ���� 
2. 8�� 7��(ȭ): ��� ���� ����, 8�� 8��(��): ���� ���� ����
============================================================================================================== 

- �α� �ƿ� ���� ����
1. TOP ������(/frmTop.xfdl) ����
 1) ����: TypeError: Cannot read property 'handler' of undefined
	��. �α׾ƿ� ��ư Ŭ�� �� 'handler' of undefined �߻�
	��. �ٽ� �ѹ� �α׾ƿ� ��ư Ŭ�� �ϸ� ���������� �α׾ƿ� ó����
 2) ����: �α׾ƿ� ��ư Ŭ�� �� gds_menu�� ���������� DataSet���� �Ѿ�Դµ��� handler ���� �߻�(Nexacro ��ü ������ ������)
 3) ��ġ: try������ ���� �̸� catch�� �Ѿ�� clearData ó��
this.afn_loginPopup = function()
{
	trace("[/frmTop.xfdl][afn_loginPopup()]==> [�α��� �˾� �Լ� ȣ��][TEST_01]" ); 
	
	application.gds_menu.clearData();  	// �޴� gds Clear  ==> TypeError: Cannot read property 'handler' of undefined
	
	try    // 2) ��ġ: try catch���� ����
	{ 
		application.gds_menu.clearData();  	// �޴� gds Clear 
	}
	catch (e)
	{ 
		application.gds_menu.clearData();  	// �޴� gds Clear 
	}
} 
--------------------------------------------------------------------------------------------------------------------------------
 
- try...catch...finally ��(JavaScript)
1. �� ��Ͽ��� throw�� ������ �ٸ� ��Ͽ��� ó���Ǵ� �ڵ� ����� �����մϴ�. try ��� ���ο��� throw�Ǵ� ������ catch ��Ͽ��� 
catch�˴ϴ�. 
try 
{
    tryStatements		// �ʼ� ���: ������ �߻��� �� �ִ� ��
}
catch(exception) 		// �ʼ� ���: ������ ���� �̸�(exception�� �ʱ� ���� throw�� ������ ��)
{
    catchStatements		// ������ ���: ������ tryStatements���� �߻��� ������ ó���ϴ� ��
}
finally 
{	
    finallyStatements		// ������ ���: ��� �ٸ� ���� ó���� �߻��� �� ������ ����Ǵ� ��
}
============================================================================================================== 

- [����] � ���� ��� ���� �̸��� �߼�
1. �̻�Ź ���忡�� ����
============================================================================================================== 

- ���� ���� ����Ÿ ����
1. C ����̺꿡 20GB �߰�
============================================================================================================== 

- ���� ���μ��� ���� ���ȭ ó�� 
1. ���� ���԰˻�(/QI_SteelPipeImpInsp.xfdl) ����
============================================================================================================== 
  
������������������� 2018.08.09(��) �۾� �������������������
---> 06:20 ~ 22:00 ==>  ������ö Prj � ���� ����(18��, ����)

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- ���� ���μ��� ���� ���ȭ ó�� 
1. ���� ���԰˻�(/QI_SteelPipeImpInsp.xfdl) ����
============================================================================================================== 
 
- ������ö Prj � ���� ����(18��, ����)
1. CPU: Intel(R) Xeon(R) CPU E7-4870 @2.40GHz, 2 �ھ� ����(�� 12�ھ�), �޸�: 4G ����(�� 12GB)
2. 8�� 9��(��) 18�� ~ 20�� 
-------------------------------------------------------------------------------------------------------------------------------

- � ���� HW ȯ��
1. CPU: Intel(R) Xeon(R) CPU E7-4870 @2.40GHz[����: 492��], �޸�: 8G, OS: ������ ���� 2012 R2
2. IP: 10.10.221.91,  https://apqm.hyundai-steel.com/APQMS
https://ark.intel.com/ko/products/53579/Intel-Xeon-Processor-E7-4870-30M-Cache-2_40-GHz-6_40-GTs-Intel-QPI
==============================================================================================================

- �α��ν� ��뿩�� ����
/* �α��� ����� �н����� üũ ==> [cm:CM_UserPwdchk_S01.xml] [2018.06.18, by ���¸�] */ 
SELECT *
FROM HSSCU100   -- ����� ���� TB
WHERE USER_ID = 'Y2018009'   -- �����ID
  AND PWD = 'a4ayc/80/OGda4BO/1o/V0etpOqiLx1JwB5S3beHW0s='
  AND USE_YN = 'Y'  		-- ��뿩�� ==> �α��ν� ��뿩��(USE_YN)�� Y�� �͸� �α��� �����ϰ� ���� 
;
==============================================================================================================

- ũ�ҿ��� �α��ν� ��й�ȣ 2�ڸ� ���̴� ����(IE������ �� ����)
1. ����: ũ�ҿ��� �α��ν� ��й�ȣ 2�ڸ� ����
2. ����: ũ�ҿ��� �α��� �� "Google Smart Lock�� �� ����Ʈ���� ��й�ȣ ������ �ϵ��� �ϽðԾ��ϱ�?" --> ������ ������ ��й�ȣ �����
3. ��ġ: ũ�ҿ��� ���ͳ� ��� ��� �������� ��?��ȣ üũ�� �ϰ� ���׳� ��� ������ �ϸ� ��й�ȣ �� ����
==============================================================================================================

- Oracle DB ���� Toad �� ����Ͽ� Procedure ����� �ϱ�
1. http://mainia.tistory.com/778, http://www.gurubee.net/lecture/2209
2. ���ν���(Procedure)��? ==> http://www.gurubee.net/lecture/1041
==============================================================================================================
  
- Ƽ���� ���ν���(PROCEDURE) �α� ó��
1. Tibero Amin 6.0.11 ���α׷� ����
2. Schema Tree Browser > QMSMGR > PSM(4) > Procedure > PR_CM_APPROVE_WORK_02: ���콺 �� Ŭ�� > Edit Procedure: Ŭ��
3. PR_CM_APPROVE_WORK_02���� �Ʒ� dbms_output.put_line�� �ۼ� 
4. ��ܿ� �ִ� PSM Compile(Ctrl + Shift + P) >> PSM Run(Ctrl + Shift + O)  ==> ������, ������ ��

dbms_output.put_line('[/PR_CM_APPROVE_WORK]==>[Start][TEST_01][##########] ====> '); 
dbms_output.put_line('[/PR_CM_APPROVE_WORK]==>[TEST_02_2][�����ȣ(V_WORK_FLOW_NO)]'|| TRIM(V_WORK_FLOW_NO) );

	-- �����ȣ�� ������ ä�� -->  ä��RULE : YYYYMMDD + �������� + �Ϸù�ȣ3�ڸ�
	IF TRIM(V_WORK_FLOW_NO) IS NULL THEN
		dbms_output.put_line('[/PR_CM_APPROVE_WORK]==>[TEST_03_1]');
 
		BEGIN
			SELECT NVL(MAX(TO_NUMBER(SUBSTR(WORK_FLOW_NO,13,3))+1),1)	-- ä��(13)
			INTO   V_HEAD_SEQ
			FROM   QMSMGR.HSCMA100
			WHERE  WORK_FLOW_NO LIKE V_BASE_DATE || P_IN_WORK_CODE ||'%'
			;
			
			V_STEP := '10';
		EXCEPTION
		WHEN OTHERS THEN
		    V_HEAD_SEQ := 1;	
		END;		
		V_WORK_FLOW_NO := V_BASE_DATE || P_IN_WORK_CODE || TO_CHAR(V_HEAD_SEQ,'FM000');  -- �����ȣ
	END IF;	  
dbms_output.put_line('[/PR_CM_APPROVE_WORK]==>[TEST_11_2][�����ȣ(V_WORK_FLOW_NO)]'|| V_WORK_FLOW_NO ||'[ó������(P_IN_ACTION_NO)]'|| P_IN_ACTION_NO );

dbms_output.put_line('[/PR_CM_APPROVE_WORK] ==>[End][TEST_end][#########################]'); 
==============================================================================================================
  
- Procedure
1. �����: 
QMSMGR.PR_CM_APPROVE_WORK
(  
    #P_IN_WORK_CODE#, 		 -- �����������
    #P_IN_ACTION_NO#, 			-- ó������
    #IQC_ENO_CD#, 				-- �˻���ID
    #EXAM_UID#,						-- ������ID
    #CONF_UID#, 					-- ������ID
    #P_IN_REJECT_DESC#, 		-- �ݷ�����
    #IQC_NO#|| ',', 					-- �˻��ȣ
    NVL(#CONF_NO#, ''), 	 	-- �����ȣ
    '',  				 					-- ó�� ���(���� : S, ����: E)
    ''                						-- ������ �����޽���
)
;
----------------------------------------------------------------------------------------
 
- Procedure
EXECUTE QMSMGR.PR_CM_APPROVE_WORK
(   
    'QI14',     		-- �����������
   '1' ,           		-- ó������
   '1519927',      -- �˻���ID
   '1519929',       -- ������ID
   '1519929',   	-- ������ID
	'',        			-- �ݷ����� ===> null �̸� ���� @@@@@
	'20180808-14-0004'|| ',' ,   	-- �˻��ȣ
   '',             		-- �����ȣ===> null �̸� ���� @@@@@
   '' ,    				-- ó�� ���(���� : S, ����: E)
   ''                   -- ������ �����޽���
)
;
============================================================================================================== 
 
- ��� �޴� ���� ���(/HSSY700) ���
1. �ش� ���Ͽ� ��ȣȭ�� Ǭ �� �Ŀ�����Ʈ(ppt)�� ���� ȭ�� �۾��� �Ϸ��� �� pdt ���Ϸ� ��ȯ �� �ش� ��ο� �ø�
 1) ���� �������� �ش� ��ο� ����(D:\QMS\APQMS\workspace\APQMS\WebContent\APQMS\manual\SY/SY_ScreenInput_Help.pdf)
-----------------------------------------------------------------------------------------------------------------------

- webBrowser���� pdf ���� ���̱�
/***********************************************************************
 * �Լ���  	: form_onload
 * ���� 		: Form �ε� 
***********************************************************************/
this.form_onload = function(obj:Form, e:nexacro.LoadEventInfo)
{
	trace("[/commManualViewer.xfdl][form_onload()] ==> [�� �ε�][TEST_01_2][T: ���� ��� ȭ��][this.pSvcGrp]"+ this.pSvcGrp
			+"[this.pFileNm]"+ this.pFileNm );  
  
	try
	{
		if(!gfn_isNull(this.pSvcGrp) && !gfn_isNull(this.pFileNm))
		{  
			var wbb_manualViewer_url = application.gv_server_url + "APQMS/manual/"+ this.pSvcGrp +"/"+ this.pFileNm;		
			// ���ϸ�(.pdf) ==> this.pFileNm: SY_ScreenInput_Help.pdf
			/ /wbb_manualViewer_url = application.gv_server_url + "APQMS/manual/"+ this.pSvcGrp +"/SY_ScreenInput_Help.pdf";	 
	 
			this.web_manualViewer.set_url(wbb_manualViewer_url);		// webBrowser���� URL ����
			trace("[/commManualViewer.xfdl][form_onload()]==> [TEST_91][web_manualViewer.url]"+ this.web_manualViewer.url );  
		}
	} 
	catch(e) 
	{
		return;
	}
}
============================================================================================================== 

������������������� 2018.08.10(��) �۾� �������������������
---> 07:40 ~ 19:40 ==> ������(20:12 ~ 22:07, �𱳿� -> ��������)
 
- ������ö AP ǰ������ �ý��� ���� Prj [��]
- ���� ���μ��� ���� ���ȭ ó�� 
1. ���� ���԰˻�(/QI_SteelPipeImpInsp.xfdl) ����
  1) ���� ó�� ���� ��� ȭ��(/commAppvDlng.xfdl) ���� �� �׽�Ʈ
============================================================================================================== 
 
- � ���� C ����̹��� ����Ÿ ����
1. ����: Tibero JDBC log�� ����
C:\Windows\System32\config\systemprofile\Tibero_5.0.85723_JDBC_1.6_debug_20140702-180809-185346-466-D551.log
2. ��ġ: Tibero JDBC log�� ������� ��
============================================================================================================== 
 
������������������� 2018.08.11(��) �۾� �������������������
---> 07:40 ~ 19:40 ==>  

- �ָ�
08:00 ���
08:35 ����(���)
10:00 �����(����): ������
10:20 �̸�Ʈ ������ ==> ��Ƽ 6�� �ݳ�(95M �۾ �� ����)
10:40 �̸�Ʈ ������ ==> ��Ƽ 6�� �籸��(105M), ���̼��� ����(105M, 7,900)��, �Ҵ� ������ ������(7,900��)
11:10 ���ε����п� ������(150�� ���� ž��: ����)
12:10 ����1�� ������ ����
12:30 ���� ����(�������� ����1��): ������ �峭���̸���(���� ������)
13:30 ����
13:40 �߽�(����ġ��, ��¡���, ��⸸��, ���õ��): ����
14:30 ����
14:40 ������(����, ��ȭ�� �м���)
15:50 ����
16:00 ��ȭ�� => ��û
16:10 ��â�� ���� ������(501�� ���� ž��: ����)
16:30 ��û�� ����ö ž��
17:20 ���ε����п� ����
17:40 ������ ž��(���ε����п� ������ ��ó)
17:50 �Ͱ�
19:30 ����
21:00 TV ��û
24:00 ��ħ
==============================================================================================================

������������������� 2018.08.12(��) �۾� �������������������
---> 07:00 ~ 23:00 ==> 

�� �౸
08:00 ���
08:30 ����
10:30 �翺, ���� �ٿ� ��ϳ��� ���
10:40 TV ��û
12:00 �߽�
14:00 ����
15:30 ��� 
15:50 ����� 
15:55 ������ ������(������ Ÿ�̾� �ٶ� �ֱ�) 
16:10 �븲��� ==> �ʰ� ���� �����ϰ� �־���
16:20 ����(������ȸ��: ��︲ ==> 3���� ��, ��� 36��): ��ô ���� ����� ���� ������ ����Ӱ� ������
18:00 ���� 
18:20 ����Ʈ(���� ����)
19:00 �Ͱ�
19:10 ����
19:50 �����
20:00 �븲�� 7ȣ�� �������� ������(ž��)
20:20 �������� ����
20:49 ������(20:49 ~ 22:36, �������� -> �𱳿�) ž��
22:40 �𱳿� ����
23:05 �Ͱ�
23:40 TV ��û
24:10 Memo ����
01:00 ��ħ 
==============================================================================================================
 
������������������� 2018.08.13(��) �۾� �������������������
---> 07:40 ~ 21:10 ==> �̻�Ź ���� ��� �ٹ�(08.13 ~ 14)

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- ���� ���μ��� ���� ���ȭ ó��
1. ���� ���԰˻�(/QI_SteelPipeImpInsp.xfdl) ����
 1) ���� ó�� ���� ��� ȭ��(/commAppvDlng.xfdl) ���� �� �׽�Ʈ
============================================================================================================== 
 
- ���� �����۸�ũ �ɱ�(1. ���� ��Ʈ �� �̵�/ 2. �ٸ� ��Ʈ�� �̵�)
1. http://meaningone.tistory.com/54
============================================================================================================== 
 
������������������� 2018.08.14(ȭ) �۾� �������������������
---> 07:40 ~ 22:00 ==> 

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- ���� ���μ��� ���� ���ȭ ó��
1. ���� ���԰˻�(/QI_SteelPipeImpInsp.xfdl) ����
 1) ���� ó�� ���� ��� ȭ��(/commAppvDlng.xfdl) ���� �� �׽�Ʈ
 2) ��ũ ���԰˻�(/QI_BlankImpInsp.xfdl) �׽�Ʈ 
 3) HF ���� �˻�(/QI_HSblankImpInsp.xfdl) �׽�Ʈ 
============================================================================================================== 

- 2. ���ڰ��� ? ����� ���� 1.0 documentation - KT bizmeka EZ
1. https://ezportal.bizmeka.com/help/ko/gw-docs/PRO_000147.html
============================================================================================================== 
 
������������������� 2018.08.15(��) �۾� �������������������
---> 06:50 ~ 21:10 ==> ������(����)

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- ���� ���μ��� ���� ���ȭ ó��
1. ���� ���԰˻�(/QI_SteelPipeImpInsp.xfdl) ���� 
============================================================================================================== 

- �ػ� ����
0. ����
 1) 1260, 860
1. Work Frame �Ϲ� �ػ�
 1) 1260, 677
2. Work Frame ǰ���˻�(QI) �ػ�
 1) 1366, 768
==============================================================================================================

������������������� 2018.08.16(��) �۾� �������������������
---> 07:50 ~ 21:20 ==> ����(21:30 ~ 23:30, ������ ȣ��, ������ ����, �赵�� �븮)

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- ���� ���μ��� ���� ���ȭ ó��
1. ���� ���԰˻�(/QI_SteelPipeImpInsp.xfdl) ����
 1) HF ���� �˻�(/QI_HSblankImpInsp.xfdl) �׽�Ʈ 
============================================================================================================== 

-- �����׷캰 ȭ����� ���� ����  @@@ ==>  
UPDATE HSSCR120 A   -- �����׷캰 ȭ����� ���� TB
SET   A.ACL_REG_YN = 'N'     -- �޴�_���_����   -- �űԱ���
		, A.ACL_MOD_YN = 'N'     -- �޴�_����_����   -- �������    
		, A.ACL_DEL_YN = 'N'     -- �޴�_����_����
WHERE 1=1 
  --AND A.ACL_GRP_CD  = '100'   -- ���ѱ׷��ڵ�  
   AND A.SCR_ID = 'NC-02-030'  -- ȭ��ID(NC-02-03: ���� ��ȸ/�ٿ�ε� )
;
==============================================================================================================
 
- PR_CM_APPROVE_WORK ���ν��� ȣ�� ����
1. ����: 
(start:2018-08-16 20:16:29)(response time:48ms) all 2018-08-16
2018/08/16 20:16:29,SYSTEM_ERROR,[SUIA_00007]It failed to execute SQL[SQL_ID:cm:CM_AppvDlng_I01
INSERT_SQL_ID:
UPDATE_SQL_ID:
DELETE_SQL_ID:
KEY_SQL_ID:
KEY_INCREMENT:0
SAVE_FLAG_COLUMN:
TYPE:M].
2018/08/16 20:16:29,SYSTEM_ERROR,[SUIA_00003]It failed to execute (action:nDefaultAction/execute)(client:all).
java.sql.SQLException: Invalid object status.   
at line 1, column 2:
CALL 	 /* ���� ����/���� ó��(Procedure) ==> [cm:CM_AppvDlng_I01.xml] **
^
	at com.tmax.tibero.jdbc.msg.common.TbMsgError.readErrorStackInfo(Unknown Source)
	at com.tmax.tibero.jdbc.msg.TbMsgEreply.deserialize(Unknown Source)
	at com.tmax.tibero.jdbc.comm.TbStream.readMsg(Unknown Source)
	at com.tmax.tibero.jdbc.comm.TbCommType4.prepareExecute(Unknown Source)
	at com.tmax.tibero.jdbc.TbPreparedStatement.executeCompleteSQL(Unknown Source)
	at com.tmax.tibero.jdbc.TbPreparedStatement.executeInternal(Unknown Source)
	at com.tmax.tibero.jdbc.TbPreparedStatement.execute(Unknown Source)

2. ����: PR_CM_APPROVE_WORK ���� �ڵ� ����(�̽��� ������ �����ϰ� Ȯ�ε� ���ؼ� ������)
/* ���� ����/���� ó��(Procedure) ==> [cm:CM_AppvDlng_I01.xml] [2018.08.13, by ���¸�] */  
	QMSMGR.PR_CM_APPROVE_WORK
	(  
		#P_IN_WORK_CODE#, 		-- �����������(QI11: ��ũ ���԰˻�, QI12: TWB ���԰˻�, QI13: H/S ���԰˻�, QI14: ���� ���԰˻�...)
		#P_IN_ACTION_NO#, 			-- ó������(1:���ʵ�� �� �����û, 2: �����ڰ� Ȯ��, 3: �����ڰ� �ݷ�, 
		4: �����ڰ� Ȯ�����, 5: �����ڰ� Ȯ��, 6: �����ڰ� �ݷ�, 7: �����ڰ� Ȯ�����)
		#IQC_ENO_CD#, 				-- �˻���ID
		#EXAM_UID#,						-- ������ID
		#CONF_UID#, 					-- ������ID
		#P_IN_REJECT_DESC#, 		-- �ݷ����� ===> null �̸� DB ���� @@@@@
		#IQC_NO#|| ',', 					-- �˻��ȣ
		NVL(#CONF_NO#, ''), 	 		-- �����ȣ ===> null �̸� DB ���� @@@@@
		'',  				 					-- ó�� ���(���� : S, ����: E)
		''                						-- ������ �����޽���
	)

3. ��ġ: PR_CM_APPROVE_WORK ���� �ڵ� �ҽ� ���� ó��
4. �׽�Ʈ ���:
execute PR_CM_APPROVE_WORK
		(  
			'QI14', 		-- �����������(QI11: ��ũ ���԰˻�, QI12: TWB ���԰˻�, QI13: H/S ���԰˻�, QI14: ���� ���԰˻�...)
			'3', 			-- ó������(1:���ʵ�� �� �����û, 2: �����ڰ� Ȯ��, 3: �����ڰ� �ݷ�, 4: �����ڰ� Ȯ�����
			, 5: �����ڰ� Ȯ��, 6: �����ڰ� �ݷ�, 7: �����ڰ� Ȯ�����)
			'', 				-- �˻���ID 	===> null �̸� DB ���� @@@@@
			'1519929',						-- ������ID
			'1519929', 					-- ������ID
			'', 		-- �ݷ����� ===> null �̸� DB ���� @@@@@
			'20180816-14-0004'|| ',', 					-- �˻��ȣ
			NVL('20180816QI14004', ''), 	 		-- �����ȣ ===> null �̸� DB ���� @@@@@
			'',  				 					-- ó�� ���(���� : S, ����: E)
			''                						-- ������ �����޽���
		)
==============================================================================================================

������������������� 2018.08.17(��) �۾� �������������������
---> 07:40 ~ 19:40 ==> ������(20:12 ~ 22:07, �𱳿� -> ��������), ��ȣ������ ��ȭ��(���� ��� ��Ź)

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- ���� ���μ��� ���� ���ȭ ó��
1. HF ���� �˻�(/QI_HSblankImpInsp.xfdl) ���� ���ȭ ����, �׽�Ʈ 
============================================================================================================== 

- ���� ���α׷� ������ �ּ� ó��
 --> 2018.08.17: �������� null ó�� ����(by ���¸�)
 --> 2018.08.17: �������� null ó�� ����by ���¸�) 
// ����[����: �������� null ó��, ������: 2018.08.17, by ���¸�]
// �߰�[����: servicePath �߰���, ������: 2018.08.17, by ���¸�]
============================================================================================================== 

������������������� 2018.08.18(��) �۾� �������������������
---> 07:40 ~ 19:40 ==>  

- �ָ�
08:00 ���
08:35 ����(���)
10:30 �����(����): ������ 
10:20 ���� ưư����(�����ν��� �Ա�) ����
10:40 ����, ����ġ��, �߸� ��ȣ��(���� ưư����): ���� ���� �߸� �λ� ==> ���� �� �ٿ� �̸����� ���� ��ٰ� ��ħ
11:40 ����(�Ѹ����౹)
11:45  ����
12:00 �Ͱ� ==> �翺 ģ�� ������ ��
12:50 �����
13:00 �Ŵ�� ��� �󶼺� ������(����)
13:45 ����1�� ������ ����
13:55 ��Ǿ ����(����1�� ��Ÿ�): ������ �峭���̸���(���� ������)
14:00 ����
14:10 �߽�(ġ��, ��¡���, ��⸸��, ���õ��): ����
14:49 ����
14:40 ������ ����(����, ��ȭ�� �м���)
15:50 ����
16:00 ������ȭȸ�� ������(150�� ���� ž��: ����)
16:50 ���￵���ʱ� ������ ���� 
17:00 ������ ž��(���ε����п� ������ ��ó)
17:10 �Ͱ�
19:00 ���� ==> �翺 �Ͱ�
19:20 ����
20:00 �̸�Ʈ ������(����) ==> ������ ���� ĵ ������(6,800��) ����
21:30 �Ͱ�
21:50 TV ��û
24:00 ��ħ
==============================================================================================================

������������������� 2018.08.19(��) �۾� �������������������
---> 07:00 ~ 23:00 ==> 

�� �౸
08:00 ���
08:30 ����
10:40 TV ��û
12:00 �߽�
14:00 TV ��û
15:30 ����� 
15:50 �븲���
16:20 ����(������ȸ��: ��︲ ==> 4���� ��, ��� 34��): ���� ���׷���, ü�� ����, ��︲ ���� ���� 3�� ����
		--> �̿������� �湮(���̽�ũ��): ���� ��ġ�� � ���ؼ� �㸮 34���� 36���� ���� �ߴٰ� ��(�Ƿ� ��ü)
18:30 ����(�౸ 20�� �� ��)
18:40 �÷��� ��Ʈ(���̽�ũ��, ��� ����)
18:20 ����Ʈ(����, �� ����)
19:10 �Ͱ�
19:30 ����
19:50 �����
20:00 �븲�� 7ȣ�� �������� ������(ž��)
20:20 �������� ����
20:49 ������(20:49 ~ 22:36, �������� -> �𱳿�) ž��
22:40 �𱳿� ����
23:00 �Ͱ�
23:40 TV ��û
01:00 ��ħ 
==============================================================================================================
 
������������������� 2018.08.20(��) �۾� �������������������
---> 07:40 ~ 21:10 ==> �̻�Ź ���� ��� �ٹ�(08.20)

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- ���� ���μ��� ���� ���ȭ ó��
1. HF ���� �˻�(/QI_HSblankImpInsp.xfdl) ���� ���ȭ ����, �׽�Ʈ 
============================================================================================================== 
 
������������������� 2018.08.21(ȭ) �۾� �������������������
---> 07:40 ~ 21:10 ==> ���, �̻�Ź ���� ���� ���,  [������] Ŀ�ǹͽ� 170T ȭ��Ʈ��� 340T �ֹ�: 29,410��

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- ���� ���μ��� ���� ���ȭ ó��
1. HF ���� �˻�(/QI_HSblankImpInsp.xfdl) ���� ���ȭ ����, �׽�Ʈ 
2. H/S������ �����˻� (����)(/QI_HSLaserProcInsp.xfdl) ���� ���ȭ ����, �׽�Ʈ 
============================================================================================================== 

- ���������ڵ�
QI11: ��ũ ���԰˻�, QI12: TWB ���԰˻�, QI13: H/S ���԰˻�, QI14: ���� ���԰˻� 
QI21: ��ũ �����˻�(����), QI22: TWB �����˻�(����), QI23: H/S ������ �����˻�(����), QI24: H/S ������ �����˻�(����)
QI25: H/S ������ �����˻�(�˻��), QI26: H/F �����˻�(����), QI27: H/F �����˻�(�˻��)
QI31: TWB ���ϰ˻�, QI32: H/S ���ϰ˻�, QI33: H/F ���ϰ˻� 
QI41: ����˻�
==============================================================================================================
 
- � �������� ���� ��Ͻ� ���� Procedure ���� �м�
1. ����:
  QMSMGR.PR_CM_APPROVE_WORK
(  'QI11'     , 			-- QI11: ��ũ ���԰˻�,
   '1'      , 
                , 
               ,
               , 
     , 
     || ','          , 
   ''         , 
   ''  		,  
   ''                
)

this.fn_afterSave2 = function()
{
    this.fsp_clear();
    
    this.ds_approvefirst.insertRow(0);
	this.ds_approvefirst.setColumn(0,"P_IN_WORK_CODE", MAIN_WORK_CODE);		// �����������
	this.ds_approvefirst.setColumn(0,"P_IN_ACTION_NO","1");		// �����������(1:���ʵ��)
   	this.ds_approvefirst.setColumn(0,"IQC_ENO_CD",this.ds_infoMaster.getColumn(0,"IQC_ENO_CD" ));	// �����ID
  	this.ds_approvefirst.setColumn(0,"EXAM_UID",this.ds_infoMaster.getColumn(0,"EXAM_UID" ));		// ������ID
   	this.ds_approvefirst.setColumn(0,"CONF_UID",this.ds_infoMaster.getColumn(0,"CONF_UID" ));			// ������ID
   	this.ds_approvefirst.setColumn(0,"IQC_NO",this.ds_infoMaster.getColumn(0,"IQC_NO" ));					/ �����ȣ
  
	this.fsp_addMulti("qi:QI_TWBProcInsp_I06", "", 0, "", 0, "B");	// QI_TWBProcInsp_I06: ���� ����/���� ó�� Procedure 
	
	// ���� ȣ�� 
	this.fsp_callService(
			""
			,""
			,"ds_MListViewGrid=ds_approvefirst:U"	// inDs
			,""	// outDs
			,""	// args 
			,"fn_afterSaveApproveWork"
			, false				// error�� callback ȣ�� ���� 
			, false				// "ó�� ���Դϴ�."��� â ǥ�� ����
			, true				// ������ ��� ���(true: �񵿱�(Default), false: ����)	
			, ""		// ���� ��û ���̵�(�ݹ� �Լ����� ��� ����)
	);
}

2. ����: ���� ���ϰ� ���� �ɸ��ų� ����Ÿ�� ������ this.ds_infoMaster.getColumn(0,"EXAM_UID" )�� ����� �������ؼ� ����
������ ������
3. ��ġ: ���� ���� �Լ����� ����Ÿ�� ���� �޾ƿ��� ���� ==> this.edt_reviId.value 
this.fn_saveAprvDlng = function(sNo)
{
    trace("[/commAprvDlng.xfdl][fn_saveAprvDlng()]==> [���� ó�� ����][TEST_01][sNo]"+ sNo +"[v_sWorkCode]"+ v_sWorkCode ); 
	
	this.fsp_clear();	// [FSP ����] fsp clear(Dataset�� ������ ����)
	
	this.fsp_addMulti("cm:CM_AppvDlng_I01", "", 0, "", 0, "B");		// [FSP ����] ����(CM_AppvDlng_I01: ���� ����/���� ó�� Procedure ȣ��)
	
	if(sNo == "1") 		// ���� ��ư Ŭ��(1:���ʵ�� �� �����û) �̸�
	{ 
		this.ds_infoMaster.clearData();
		
		var nRow = v_ojbDs_list.rowposition;	// Main Ds
		
		this.ds_infoMaster.insertRow(0);	// ������ info ���� Ds
		this.ds_infoMaster.setColumn(0, "P_IN_WORK_CODE", v_sWorkCode);			// �����������
		this.ds_infoMaster.setColumn(0, "P_IN_ACTION_NO", sNo);					// ó������
		this.ds_infoMaster.setColumn(0, "IQC_ENO_CD", v_userId); 				// �˻���ID
		this.ds_infoMaster.setColumn(0, "EXAM_UID", this.edt_reviId.value);		// ������ID
		this.ds_infoMaster.setColumn(0, "CONF_UID", this.edt_aprvId.value);		// ������ID
		 
		if(v_sWorkCode == "QI14") 		// ������������� '���� ���԰˻�'�� �̸�
		{
			this.ds_infoMaster.setColumn(0, "IQC_NO", this.parent.div_detail.edt_iqcNo.value);		// �˻��ȣ[�θ� â ȣ��]
			this.ds_infoMaster.setColumn(0, "CONF_NO", v_ojbDs_list.getColumn(nRow, "CONF_NO"));	// �����ȣ
		} 
		else
		{
			var sIqcNo = v_ojbDs_iqcNo.getColumn(0,"IQC_NO");		// �˻��ȣ
	 
			if(this.parent.div_search.edt_newInputYn.value == "Y") 	// �űԵ�� Y �̸�(�ű�)
			{   
				this.ds_infoMaster.setColumn(0, "IQC_NO", sIqcNo);		// �˻��ȣ  
				this.ds_infoMaster.setColumn(0, "CONF_NO", "");		// �����ȣ   
			}
			else	// �űԵ�� ������(����)
			{
				this.ds_infoMaster.setColumn(0, "IQC_NO", v_ojbDs_list.getColumn(nRow,"IQC_NO"));		// �˻��ȣ
				this.ds_infoMaster.setColumn(0, "CONF_NO", v_ojbDs_list.getColumn(nRow, "CONF_NO"));	// �����ȣ 
			}
			this.parent.div_search.edt_newInputYn.set_value("N");	// �űԵ�� ���� 
		}
	}
 
	this.fsp_callService( 		// [FSP ����] ���� ȣ��
			""
			, ""
			,"ds_appvDlng=ds_infoMaster:U"	// inDs
			, ""	// outDs
			, ""	// args 
			,"fn_callback"			// �ݹ� �Լ� ��
			, false					// error�� callback ȣ�� ���� 
			, false					// "ó�� ���Դϴ�."��� â ǥ�� ����
			, true					// ������ ��� ���(true: �񵿱�(Default), false: ����)	
			, "sid_approve"			// ���� ��û ���̵�(�ݹ� �Լ����� ��� ����)
	);
}
==============================================================================================================

- Menu ���(�ٱ���)(/SY_MenuInputMtGual) ����
1. ��ȸ, ���� 
==============================================================================================================

- ����(google) �̸��� �������� ����
1. taemario@gmail.com / �����¸�1*0*@
==============================================================================================================
  
- [�������� ����] ���� MY CAR KBO  ���� ���⿹�� ����
1. ���¹�ȣ: 200-424-960233
2. �ݸ�: �� 2.0% ����(����, �����ݸ�), ���� ������: ����赿����(�ȱ���)
3. ���ݾ�: 3õ ����
4. ���Ⱓ: 1��, 2018�� ���� �����: �λ� ���
5. ������: 2019.0.08.21, ������: 2019.08.21 ==> ����Ϸ� ����
============================================================================================================== 
 
������������������� 2018.08.22(��) �۾� �������������������
---> 07:40 ~ 21:10 ==> �ְ����� �ۼ�, ���̻� �湮(13��: ���� ���� ǰ���� �ҷ��ϴٰ� �ߴٰ� ��)

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- ���� ���μ��� ���� ���ȭ ó�� ����
1. ������ > ����  ==> alert 2�� �߻�
/***********************************************************************************
* ��      ��   : ���� �ݹ��Լ�
***********************************************************************************/
this.fn_saveConfirmCallback = function(sid, rtn)
{ 
	if (rtn) 
	{   
		if (gfn_isNull(this.div_Detail.edt_IqcNo.value)) 	// �ű� ��� �̸�
		{
			this.fn_getIqcNo(); 		// �˻��ȣ ä�� �Լ� ȣ��
		} 
		else	// ���� �̸�
		{ 
			this.fn_saveProcess();		// ��ü ����Ÿ ���� 
			//this.div_appvDlng.fn_saveAprvDlng("1");		  // ���� ����[���� ���� ��� ȣ��] ==> �ּ� ó�� @@@ 
		}
	}
}
============================================================================================================== 

- �޴� ������ ����
1. ������ ��������/����ݿ� ���(/NC_PastCarPrblImproveChecFloorPlanInput)
==> ������ ����/����ݿ� ���� ���(/NC_PastCarPrblDrawActChkInput)
==============================================================================================================

- ���� ���԰˻�(/QI_SteelPipeImpInsp.xfdl) ����
1. ���� ��ư Ŭ�� �� ���� ==> ����Ÿ ���� ��: alert ��(���� ó���ǵ��� ����)
============================================================================================================== 
 
- Menu ���(�ٱ���)(/SY_MenuInputMtGual) ����  ==> �Ϸ�
1. ��ȸ, ����  ==> /SY_MenuInputMtGual_S01.xfdl, /SY_MenuInputMtGual_U01.xfdl
==============================================================================================================

- �Ⱓ�� �α��� ��Ȳ(/CM_TermLyLginStat) ����
1. /SY_LoginAction.java, /commLogin.xfdl, /SY_LoginLog_I01.xml, /CM_TermLyLginStat_S01.xml
==============================================================================================================

- PK�ε��� ���� 
ALTER TABLE [���̺��] DROP PRIMARY KEY CASCADE;
DROP INDEX [�ε�����];

ALTER TABLE HSSCU210 DROP PRIMARY KEY CASCADE;
DROP INDEX HSSCU210_PK; 
DROP TABLE HSSCU210;
- PK�ε��� ������ ���, �ش� ���̺� �÷� ���������� DROP �� �Ŀ� PK�ε��� ������ ����
==============================================================================================================
 
������������������� 2018.08.23(��) �۾� �������������������
---> 07:40 ~ 21:10 ==> ������ö �赿�� ���� �湮(13��, ���α׷� �׽�Ʈ)

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- ���� ���μ��� ���� ���ȭ ó�� ����
1. ���� ó�� �������� ó�� ���� �ϵ��� ����
============================================================================================================== 

 - üũ �ڽ� readonly ó��
1. expr:comp.parent.fn_setAprvDlngCheck(EXAM_UID, CONF_UID,  7)

 <Band id="head">
    <Cell displaytype="checkbox" edittype="checkbox"/>
    <Cell col="1" text="NO"/>
    <Cell col="2" text="�˻�����"/>
    <Cell col="3" text="�������"/>
    <Cell col="4" text="����"/>
    <Cell col="5" text="����"/>
    <Cell col="6" text="�ٹ���"/>
    <Cell col="7" text="�˻���"/>
    <Cell col="8" text="�˻�ð�"/>
    <Cell col="9" text="�˻��ȣ"/>
    <Cell col="10" text="�����ȣ"/>
  </Band>
  <Band id="body">
    <Cell displaytype="checkbox" edittype="checkbox" style="background:expr:comp.parent.fn_setAprvDlngCheck(EXAM_UID,&#32;CONF_UID,&#32;&#32;7);
	background2:expr:comp.parent.fn_setAprvDlngCheck(EXAM_UID,&#32;CONF_UID,&#32;&#32;7);selectbackground:
	expr:comp.parent.fn_setAprvDlngCheck(EXAM_UID,&#32;CONF_UID,&#32;&#32;7);controlbordertype:&#32;;" text="bind:CHK"/>
    <Cell col="1" expr="expr:currow+1"/>
    <Cell col="2" displaytype="normal" text="bind:IQC_DT" mask="####-##-##"/>
    <Cell col="3" text="bind:CONF_STATE"/>
    <Cell col="4" style="align:left;" text="bind:FAC_NM"/>
    <Cell col="5" displaytype="combo" style="align:left;" text="bind:MODEL_CD" combodataset="ds_bscCdVhiType" combocodecol="SUB_CD" combodatacol="TITLE"/>
    <Cell col="6" displaytype="combo" text="bind:SHIFT_CD" combodataset="ds_bscCdQm483" combocodecol="SUB_CD" combodatacol="TITLE"/>
    <Cell col="7" text="bind:IQC_ENM"/>
    <Cell col="8" text="bind:IQC_TIME" mask="##:##"/>
    <Cell col="9" text="bind:IQC_NO"/>
    <Cell col="10" text="bind:CONF_NO"/>
  </Band>
</Format>
</Formats>

/***********************************************************************
 * �Լ���  	: fn_setAprvDlngCheck
 * ���� 		: ���� ���� üũ 
***********************************************************************/ 
this.fn_setAprvDlngCheck = function(sReviId, sAprvId, nNo) 
{ 
	//trace("[/QI_SteelPipeImpInsp.xfdl][fn_setAprvDlngCheck()]==> [TEST_01][sReviId]"+ sReviId +"[sAprvId]"+ sAprvId +"[nNo]"+ nNo ); 
 
	var sRtn = "";
 
	if(nNo == 7)		// �޴�������� Į������ ������(���� ����)
	{ 
		if(v_userId == sReviId || v_userId == sAprvId)		// �α���ID�� ������ID, ������ID�Ϳ� ������ 
		{
			sRtn = "#ffffffff";		// ���� ������� ó�� 
		}
		else
		{
			sRtn = "#B6D2D6"; 		// ���� ��������� ó��
		}
	} 
 
	return sRtn;
}

/***********************************************************************
 * �Լ���  	: ds_list_cancolumnchange
 * ���� 		: ds_list Ds ���� �̺�Ʈ(cancolumnchange: �����ͼ��� ��(column) ���� ����Ǳ� ���� �߻��ϴ� �̺�Ʈ ) 
***********************************************************************/ 
this.ds_list_cancolumnchange = function(obj:Dataset, e:nexacro.DSColChangeEventInfo)
{
	//trace("[/QI_SteelPipeImpInsp.xfdl][ds_list_cancolumnchange()]==> [TEST_01][e.columnid]"+ e.columnid +"[e.row]"+ e.row );
 
	var sChk = this.ds_list.getColumn(e.row,"CHK");  // üũ����
	var sReviId = this.ds_list.getColumn(e.row,"EXAM_UID");  // ������ID(���䳻��) 
	var sAprvId = this.ds_list.getColumn(e.row,"CONF_UID");  // ������ID(���γ���) 
  
	if(e.columnid == "CHK")		// Į���� 'üũ����' Į�� �̸�
	{
		if(v_userId == sReviId || v_userId == sAprvId)		// �α���ID�� ������ID, ������ID�Ϳ� ������ 
		{ 
		}
		else
		{ 
			trace("[/QI_SteelPipeImpInsp.xfdl][ds_list_cancolumnchange()]==> [TEST_51][�ش� Į�� readonly ó��]" );
			return false;		// �ش� Į�� readonly ó��
		} 
	}
} 
=========================================================================================================

- ���� ����� ������ö Prj ������ MK240 ���콺, Ű���� �޺� �嵥�� ���� ����[����: 2016.11.24(��)]
1. �嵥�� ����(Ű����: 2��, ���콺: 1��,  2��), ����: 27,280��
http://itempage3.auction.co.kr/DetailView.aspx?ItemNo=B239830970&frm3=V2 
2017.04.20(��): 1�� ��ü(6���� ���[���������� AA ��ī���� �嵥��]) 
2017.07.03(��): 2�� ��ü(3���� ���[GIDAMAX AA ��ī���� �嵥��])  
2018.07.23(��): 3�� ��ü(1���� ���[GIDAMAX AA ��ī���� �嵥��]) ==> MK240 NANO ���콺 ������ ������ ��(����忡�� ���)
2018.08.23(��): 4�� ��ü(3���� ���[GIDAMAX AA ��ī���� �嵥��]) 
=========================================================================================================
  
������������������� 2018.08.24(��) �۾� �������������������
---> 07:40 ~ 19:40 ==> ��ǳ �ָ� �泲 ���(3��): ���� ������, ������(20:12 ~ 22:07, �𱳿� -> ��������)

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- �̸��� ������ ó��
1. Mail ����(/CM_MailMngm.xfdl)
=========================================================================================================
 
- Mail �߼� ==> https://softzam.atlassian.net/wiki/spaces/svrdoc/pages/31457291/Mail
--------------------------------------------------------------------------------------

 - GEOYONG �̸��� ������ ó��
<!-- Mail Action -->
<service name="MailAction" code="sample.mail.MailAction">
	<attribute name="FileRootDir">C:/GEO_PROJECT/mail/</attribute>
</service>
=========================================================================================================

 ������������������� 2018.08.25(��) �۾� �������������������

---> 07:40 ~ 19:40 ==>  

- �ָ�
09:00 ���
09:35 �翺 �ڵ��� Google ���� ���� ==> taemario@gmail���� luyen94@gmail.com / lu**339@�� ����
10:20 �����(����)
10:30 ���� ưư����(�����ν��� �Ա�) ����
10:40 ����, X-Ray, ����ġ��: �� ������ ==> 2~3�� ������ �ָ���� ���� �հ����� ����
		 --> �� �˻� �� ��Ȯ�� ������ ���´ٰ� ��(���༺ ���������� �縶Ƽ�� ���������� Ȯ���� ��)
11:20 ���̼� ���ν����� ����(ũ��, ����, ��ũ)
11:40 ����(�Ѹ����౹)
12:00 ����Ʈ(��)(�� ����)
12:20 �Ͱ�
13:30 ����� 
14:00 �븲��(6511�� ����, ����)
14:40 ������?�� ������ ���� 
14:50 Ű��ī������ ==> ��������(2�ð�): 7õ��, � ����(Ŀ��): 4õ��, ���̽�ũ��: 3õ ==> �� �� 4õ��
16:50 ����
17:10 ��õ�߾ӽ��� ������ ���� 
17:40 �븲��(6511�� ����, ����)
17:50 ����(����, ġ�����, ��� ����: ���õ�� ������): ����
18:30 �Ͱ�
23:00 ��ħ
==============================================================================================================

- �� ������
1. INL75-�հ������� ���ؼ� (�赿��) ==> https://www.youtube.com/watch?v=cwbLV-EFef4&feature=youtu.be
2. ���༺ �������� ġ���==> https://www.youtube.com/watch?v=PFQU_d-EzdM&feature=youtu.be
==> ���༺ ���������� �縶Ƽ�� ���������� Ȯ���� ��
==============================================================================================================

������������������� 2018.08.26(��) �۾� �������������������
---> 07:00 ~ 23:00 ==> 

�� �౸
09:00 ���  
09:30 ����(���) 
12:00 �߽� ==> �翺, ���� �ٿ����� ��
13:30 �����
13:50 �븲 ����� �湮 ==> ȭ��� ���� ����(�����̶� �� �ȿ�) : �鿭�� 80W(800�� ����)
14:99 �Ͱ�
15:40 �븲��� 
16:00 ����(������ȸ��: ��︲ ==> 4���� ��): �� �ణ ���� ������, ����� ������
18:00 ����
18:20 ����Ʈ(���� ����)
19:00 �Ͱ�  
19:50 �����
20:05 �븲�� 7ȣ�� �������� ������(������04 ���� ž��)
20:30 �������� ����
20:49 ������(20:49 ~ 22:36, �������� -> �𱳿�) ž��
22:40 �𱳿� ����(�� ���� ��: ��� ���� �ݹ����� ��)
23:00 �Ͱ�
23:40 TV ��û, Memo ����
01:00 ��ħ
==============================================================================================================

������������������� 2018.08.27(��) �۾� �������������������
---> 07:40 ~ 20:20 ==> ��, �̻�Ź ���� �׷�� ����(08.27 ~ 28), �ƽþ� ���� �౸ 8��(�ѱ� 4:3 ���)

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- �̸��� ������ ó��
1. Mail ����(/CM_MailMngm.xfdl) 
 1) Mail �߼� ���� ���� ��û(������ �븮���� �̸��� ������)
  ��. ���� ���� �޾Ƽ� SY_MailAction�� �� ã�� ���� �ذ� 
   A. ����: service.xml ���Ͽ��� <manager name="sql">��  <service name="SY_MailAction" code="com.aqqms.mes.sy.action.SY_MailAction">
   �� �Է�
  ��. ���� ���� �޾Ƽ� duplicate SY_MailAction ���� �ذ�
   A. ����: anotation �ּ� ó��
==============================================================================================================

- �̸��� �߼� flow
/***********************************************************************
 * �Լ���  	: btn_sendMail_onclick
 * ���� 		: �̸��� �߼� 
***********************************************************************/
this.btn_sendMail_onclick = function(obj:Button,  e:nexacro.ClickEventInfo)
{
	trace("[/CM_MailMngm.xfdl][btn_sendMail_onclick()]==> [�̸��� �߼�][TEST_01]" ); 
 
	trace("[/CM_MailMngm.xfdl][btn_search_onclick()]==>  [TEST_02][ds_cond(�Է�).CNT]"+ this.ds_mail.getRowCount() 
		+"[ds_mail.saveXML()] \n"+ this.ds_mail.saveXML() );
	
 	this.fsp_callService(
 		"SY_MailAction"		//ȣ���� ����(Java)
		,"Send"				//�޼ҵ�(Java)
 		,"ds_mail=ds_mail"	//Input DataSet
 		,""					//Output DataSet
 		,""					//Aguments
 		,"fn_callback"		// �ݹ� �Լ� ��
		, false				// error�� callback ȣ�� ���� 
		, false				// "ó�� ���Դϴ�."��� â ǥ�� ����
		, true				// ������ ��� ���(true: �񵿱�(Default), false: ����)	
		, "sid_send"		// ���� ��û ���̵�(�ݹ� �Լ����� ��� ����)
	); 
}

/***********************************************************************
 * �Լ���  	: fn_callback
 * ���� 		: �ݹ� �Լ� 
***********************************************************************/	 
this.fn_callback = function(nErrorCode, sErrorMag, sid)
{ 
	trace("[/CM_MailMngm.xfdl][fn_callback()]==> [�ݹ�][TEST_01][sid]"+ sid +"[nErrorCode]"+ nErrorCode +"[sErrorMag]"+ sErrorMag); 
  
	if(nErrorCode < 0)
	{ 
		gfn_alert(this, "E0006", "���Ϲ߼�");		// E0006: [M1]�� �����Ͽ����ϴ�.
		return;
	}  
	gfn_alert(this, "I0002");		// I0002: ���������� ó���Ǿ����ϴ�.  	  
}
--------------------------------------------------------------------------------------------------------------------------------

- /SY_MailAction.java ���̿���
package com.aqqms.mes.sy.action;

import com.sz.service.mail.MailSendService;		// FSP���� service.xml���� ���õȰ� �޾� �� 
import com.sz.service.mail.MailSender;				// FSP���� service.xml���� ���õȰ� �޾� ��

public class SY_MailAction extends AbstractAction {
	
	private static final long serialVersionUID = 1L;
   
	public void Send(BusinessContext ctx) throws Exception
	{
		System.out.println("[/SY_MailAction.java] [Send()] ==> [���� ó��] [TEST_01]" ); 

		MailSendService mailSvc = (MailSendService) ServiceManagerFactory.getServiceObject("MailService");		// Service ��

		MailSender sendObj = mailSvc.createMailSender();

		//���� �����ͼ�
		DataSet dsMaster = (DataSet)ctx.getInputObject("ds_mail");

		//������ ��� �ּ�
		sendObj.setFrom(dsMaster.getString(0, "FROM"));

		//�޴� ��� �ּ�
		sendObj.setTo(dsMaster.getString(0, "TO"));

		//����
		sendObj.setSubject(dsMaster.getString(0, "SUBJECT")); 

		//����
		sendObj.setBody(dsMaster.getString(0, "BODY"));

		//���� �߼�
		sendObj.sendMessage();
	}
}
--------------------------------------------------------------------------------------------------------------------------------

- /service.xml ���Ͽ���
<!-- Mail Action -->
<service name="SY_MailAction" code="com.aqqms.mes.sy.action.SY_MailAction"> 
	<attribute name="FileRootDir">D:\QMS\APQMS\workspace\APQMS\upload\mail\</attribute> 
	<!-- mail���� ���ε�� ������ ����� �ֻ��� ���丮(��� ���: ���߼���)  -->
</service>
	
<!-- ���� ���� �߰�  -->
<service name="MailService" code="com.sz.service.mail.SimpleMailSendService">
		<attribute name="MailSenderClassName">com.sz.service.mail.DefaultMailSender</attribute> 
		<attribute name="ContentType">text/plain</attribute>							<!-- Mail ������ ������ Ÿ�� --> 
		<attribute name="Encoding">utf-8</attribute>	  								<!-- ���ڿ� ���ڵ� -->	 
		<attribute name="MailHostName">hyunai-steel.com</attribute>	  		<!-- ���� ������ ȣ��Ʈ�� --> 
		<attribute name="MailHostPort">587</attribute>		   							<!-- ���� ���۽� ����� ��Ʈ��ȣ --> 
		<attribute name="Mailer">geonet</attribute>		   								<!-- ���� ��� X-Mailer �׸��� �� --> 
		<attribute name="RequiredAuth">true</attribute>		   						<!-- ���� ������ ���ӽ� ����ó�� ���� --> 
		<attribute name="AuthUserId">tamario@hyunai-steel.com</attribute>	<!-- ���� ���� ���ӽ� ����� ����� ���̵� --> 
		<attribute name="AuthPassword">qwqw1212!</attribute>		 			<!-- ���� ���� ���ӽ� ����� ����� ��й�ȣ --> 
		<attribute name="ConnectionTimeOut">1000</attribute> 		 			 <!-- ���� ���� ���� Ÿ�� �ƿ� �ð� --> 
		<attribute name="DefaultProperties">mail.smtp.auth=true </attribute>   <!-- ���� ������ ���� �⺻ �Ӽ� ���� --> 
</service>  
--------------------------------------------------------------------------------------------------------------------------------

- Java Mail ���� ���� 
1. ���� ���ۼ��񽺿��� Java Mail�� ����Ͽ� ���ϸ� ���񽺸� �ϱ� ������ �ش� ���񽺸� �����ϱ� ���ؼ� activation.jar, mail.jar 2���� 
������ �����ؼ� �Ʒ� ������ �ٿ��ֱ�
D:\QMS\APQMS\workspace\APQMS\WebContent\WEB-INF\lib
=========================================================================================================

- ���� �߼� ����
1. ����:
[/SY_MailAction.java] [Send()] ==> [TEST_91][FROM]tamario@hyunai-steel.com[TO]tamario@gidata.co.kr[SUBJECT]TEST[BODY]DDDDDD
2018/08/27 15:26:55,SYSTEM_ERROR,[SUIA_00003]It failed to execute (action:SY_MailAction/Send)(client:all).
javax.mail.MessagingException: Unknown SMTP host: hyunai-steel.com;
  nested exception is:
	java.net.UnknownHostException: hyunai-steel.com
	at com.sun.mail.smtp.SMTPTransport.openServer(SMTPTransport.java:1960)
	at com.sun.mail.smtp.SMTPTransport.protocolConnect(SMTPTransport.java:654)

2. ����: Unknown SMTP host�� �߸� ��
=========================================================================================================

- FSP ���� ���� ���̼��� ��û(9��, ����)
1. FSP ���� ���� License: 2���� ���� ����Ʈ�� Ȩ���������� Q&A �Խ��ǿ��� ��û�� �ۼ� ==> http://www.softzam.com:8080/board.html
2. ������: 2018-08-31
=========================================================================================================

- Publishing(Ctrl + Alt + P) ó��[������](eclipse����)
1. Tomcat v7.0 Server at localhost-config: ���콺 �� Ŭ�� > Publishing(Ctrl + Alt + P): Ŭ��
2. Publishing ����
 1) omcat v7.0 Server at localhost-config: ���콺 ���� Ŭ�� > Publishing: Modify settings for publishing. 
   ��. 1��: Never publish automatically
   ��. 2��: Automatically publish when resoures change.  --> ���ҽ��� ����� �� publishing��
   ��. 3��: Automatically publish after a built event --> maven build ������ build event�� �߻���Ű�� ��� publishing��
==> 1,2,3 ������ JSP, Java ������ ���� �� �����ϵǴ� �� Ȯ�� (2�� ����)
 2) Publishing ���� ���� ��ġ
 D:\QMS\APQMS\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\APQMS\WEB-INF\fsp\conf
 Eclipse\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps  
--------------------------------------------------------------------------------------------------
 
- eclipse tomcat publish ���� hot deploy 
1. https://blog.naver.com/dici11/220404784476
=========================================================================================================

- WAS�� �������� ����
1. apach����:  http �� ����
2. tomcat: WAS(Web Application Server)
3. WAS(Web Application Server): �������� �� �����̳��� �������� �پ��� ����� �����̳ʿ� �����Ͽ� �پ��� ������ ������ 
�� �ִ� ����(������ �����͸� ó��). DB�� ����Ǿ� �����͸� �ְ� �ްų� ���α׷����� ������ ������ �ʿ��� ��쿡�� WAS�� Ȱ��
4. �� ����: ������ �����͸� ó���ϴ� �����̴�. �̹����� �ܼ� html���ϰ� ���� ���ҽ��� ����
=========================================================================================================

������������������� 2018.08.28(ȭ) �۾� �������������������
---> 08:00 ~ 20:30 ==> ��2, �߼� ����ǥ ����(7��, ����)

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- ���� ���� ����Ʈ ó�� �м�
1. ���� ����
/**
 * �� Method�� Session ����� �۾��� ��
 */
public void makeSession(BusinessContext ctx, String sUserId, String sKoNm, String sDeptCd, String sDeptNm
										, String sAclGrpCd) throws Exception {
 
	DefaultUserInfo userInfo = new DefaultUserInfo();		 // ����� ������ ���� ��ü ����
	
	userInfo.setUserId(sUserId);	// ����� ID ����

	userInfo.set("USER_ID", sUserId);				// ����� ID ���� 
	userInfo.set("USER_NAME", sKoNm);		// ����� �ѱ��̸�
	userInfo.set("DEPT_CODE", sDeptCd);		// �μ��ڵ�
	userInfo.set("DEPT_NAME", sDeptNm);		// �μ���
 
	//�������� ���Ͽ� ��ϵ� ���� ������ ���� ��������
	// ���� ������ ���񽺴� SessionManager �� ���� ������ ��ϵǾ� �ִ�.
	SessionManager sessionService = (SessionManager) ServiceManagerFactory.getServiceObject("SessionManager");
	
	// ������ ����� ������ �̿� ����
	HttpServletRequest request = (HttpServletRequest) ctx.getInputRequest();

	sessionService.makeNewUserInfo(request, userInfo);
}
==============================================================================================================
 
- �޴� ������ ����
1. Menu ���(�ٱ���)(/SY_MenuInputMtGual) ==> �޴� ���(�ٱ���)(/SY_MenuInputMtGual)
2. �ʵ� ���(�ٱ���)(/SY_FieldInputMtGual) ==> ȭ�� ���(�ٱ���)(/SY_ScreenInputMtGual)
==============================================================================================================

- �߼� ����ǥ ����(7��, ����)
0. ���Ӵ���ȣ: 3200����
1. 6�� 59�� 58�ʿ� Ŭ����
2. ���� �ð�: 07:00 ~ 07:30
3. �����Ⱓ : 2018.8.29.(��) 16:00 ~ 2018.9.2.(��) 24:00 ==> �Ⱓ �� �̰��� �� ������ �ڵ� ���
4. ���� ����
2018.09.23(��) 09:25 ~ 11:49, ����-> ����, KTX-��õ 457(1ȣ�� 8C, 8D), 107,200��(2��) 
==> 455(08:15 ~ 10:40), 457(09:25 ~ 11:49), 459(10:45 ~ 13:13), 463(12:40 ~ 14:59), 461(13:00 ~ 15:29), 465(14:35 ~ 17:03)
2018.09.25(ȭ) 18:00 ~ 20:27, ����-> ����, KTX470(13ȣ�� 4A, 4B), 107,200��(2��) 
==> 468(16:25 ~ 18;55), 470(18:00 ~ 20:27), 472(19:20 ~ 21:54), 474(21:35 ~ 00:05)
==============================================================================================================

- ���� ����(�ϴ�ä 303ȣ) ���� ��� ����[2018.08.28(ȭ)] 
1 ���ð��� ��� ==> ���� �Ϸ�(7�� 24�� ����)
 1) 7�� ���(07.01 ~ 07.31), ���αݾ�: 930��, ���θ�����: 2018.07.31, û�����: �ֽ�ȸ��̷������ؿ�����
 2) ����: �ӿ��, �����ڹ�ȣ(���ڳ��ι�ȣ): 3002861831001, ���ι�ȣ: 4029498 
  ��. INTERNET GIRO(���ͳ�����) ==> https://www.giro.or.kr/index.giro(����) ���ͳ����� > �Ϲ����ο�� >  ���ι�ȣ: 4029498 
    > �����ڹ�ȣ(���ڳ��ι�ȣ): 3002861831001 
2. ���� ���  ==> ���� �Ϸ�(7�� 24�� ����)
 1) 7�� ���(07.10 ~ 08.09), ���αݾ�: 6,420�� ==> ���ι�ȣ: 4029498
 2) ����: �ӿ��, �����ڹ�ȣ(���ڳ��ι�ȣ), ����ȣ: 06 4155 7892(0641557892)
  ��. INTERNET GIRO(���ͳ�����) ==> https://www.giro.or.kr/index.giro(����) ���ͳ����� > ����/��ȭ��� > ����ȣ(10�ڸ�): 0641557892 
==============================================================================================================
 
- 2018�� �ֹμ� ����
1. �ֹμ�: 5,850��
==============================================================================================================

- Fiddler(�ǵ鷯) ����
1. �ǵ鷯(Fiddler) �ǽ�: Step01. ���־�(Warming Up) ==> http://blog.kinesis.kr/148, http://blog.kinesis.kr/115?category=647687 
2. http://dsiol.blog.me/120177646288 ���� �ٿ�ε� ����
4. Fiddler�� Web Debugging ����, ������ � ������ �������� ���� �ľ��� �ϴ� ��
5. Fiddler 5.0 Download ==> https://www.techspot.com/downloads/5461-fiddler.html
6. ������ ���
 1) ��ü �� ���� 
  ��. ��ü ��: ���콺 �� Ŭ�� > Remove > All  Sessions(����Ű: Ctrl + X)
 2) �������� ���� �� ���� 
  ��. �ش� ��: ���콺 �� Ŭ�� > Remove > Unselected  Sessions(����Ű: Shift + Del)
--------------------------------------------------------------------------------------------------------------------------------

- Fiddler(�ǵ鷯) ����2
1. Filter ���
 1) ����� Use Filters üũ
 2) Show only the following Hosts: ���� ==> Hosts �׸񿡴� Ʈ������ �� ����Ʈ�� ������ ���� 
homestead.app
google.com

2. Mark ���
���� ������Ʈ�� �� �ǹ��ִ� ������Ʈ�� Mark �ϴ� ���

3. Save ���
���״�� ���� ���. ���� ���¸� �״�� �����Ѵ�. ���� ��ũ�� �ڸ�Ʈ�� �޾Ƴ��� ������ �״�� ����ȴ�. �м��� ������ Ÿ�ο��� 
�ְų� ����� �ʰ� �����ص� �� �ִ�. 
[File - Save] ��ư�� ���� ������ �� �ִ�. 
==> http://nisam.tistory.com/5
--------------------------------------------------------------------------------------------------------------------------------

- Fiddler(�ǵ鷯)���� HTTPS ���
1. ����: HTTPS decryption is disabled. Click to configure.
2. ��ġ: Optoins > HTTPS 
 1) Captures HTTPS CONNECTs: üũ
 2) Decrypt HTTPS  traffic 
==> To intercept HTTPS traffic, Fiddler generates a unique root certificate.
==============================================================================================================

������������������� 2018.08.29(��) �۾� �������������������
---> 07:40 ~ 21:00 ==> �߽�(Į����, ��, ����, ��ٸ� Į����: ������ -> �̻�Ź ������ ��),  �ƽþ� ���� �౸ 4��(18��, �ѱ� 3:1 ��Ʈ��)

- ������ö AP ǰ������ �ý��� ���� Prj [��]
- ���� ���� ����Ʈ ó�� �м�  
1. �Ⱓ�� �α��� ��Ȳ ==> https://apqmsdev.hyundai-steel.com/APQMS/CM/CM_TermLyLginStat.xfdl.js
 1) �м� ==> ũ�� > Ctrl + Shit + I > Network(��)
  ��. Name: CM_TermLyLginStat.xfdl.js: Ŭ�� > Headers(��) > Genearl > 
	Request URL: https://apqmsdev.hyundai-steel.com/APQMS/CM/CM_TermLyLginStat.xfdl.js
==============================================================================================================

- �̸��� ������ ó��
<!-- ���� ���� �߰�  -->
<service name="MailService" code="com.sz.service.mail.SimpleMailSendService">
	<attribute name="MailSenderClassName">com.sz.service.mail.DefaultMailSender</attribute> 
	<attribute name="ContentType">text/plain</attribute>							<!-- Mail ������ ������ Ÿ�� --> 
	<attribute name="Encoding">euc-kr</attribute>	  								<!-- ���ڿ� ���ڵ� -->	 
	<attribute name="MailHostName">steelro.hyundai-steel.com</attribute>	  		<!-- ���� ������ ȣ��Ʈ�� --> 
	<attribute name="MailHostPort">25</attribute>		   							<!-- ���� ���۽� ����� ��Ʈ��ȣ --> 
	<attribute name="Mailer">hyndai-steel Mail</attribute>		   				<!-- ���� ��� X-Mailer �׸��� �� --> 
	<attribute name="RequiredAuth">true</attribute>		   						<!-- ���� ������ ���ӽ� ����ó�� ���� --> 
	<attribute name="AuthUserId">gqms@hyundai-steel.com</attribute>	<!-- ���� ���� ���ӽ� ����� ����� ���̵� --> 
	<attribute name="AuthPassword">gqmssteel!</attribute>		 			<!-- ���� ���� ���ӽ� ����� ����� ��й�ȣ --> 
	<attribute name="ConnectionTimeOut">1000</attribute> 		 			 <!-- ���� ���� ���� Ÿ�� �ƿ� �ð� --> 
	<attribute name="DefaultProperties">mail.smtp.auth=true </attribute>   <!-- ���� ������ ���� �⺻ �Ӽ� ���� --> 
</service>   	 
--------------------------------------------------------------------------------------------------------------------------------

1. Mail ����(/CM_MailMngm.xfdl) 
 1) Mail �߼� ����
======================= OUTDATA ========================
[DataSets]

[Variables]
variable=[
	index=0 (errorSqlCode, string, "")
	, index=1 (errorSqlStatus, string, "")
	, index=2 (ErrorCode, int, "-999999999")
	, index=3 (ErrorMsg, string, "535 5.7.3 Authentication unsuccessful
")
	, index=4 (errorTrace, string, "javax.mail.AuthenticationFailedException: 535 5.7.3 Authentication unsuccessful

	at com.sun.mail.smtp.SMTPTransport$Authenticator.authenticate(SMTPTransport.java:826)
	at com.sun.mail.smtp.SMTPTransport.authenticate(SMTPTransport.java:761)
	at com.sun.mail.smtp.SMTPTransport.protocolConnect(SMTPTransport.java:685)
	at javax.mail.Service.connect(Service.java:317)
==============================================================================================================

- ���� ���԰˻�(/QI_SteelPipeImpInsp.xfdl) ���� ������
1. ���� ��ư: Ŭ�� > ������, ������ ���Ϸ� �ڵ� ���� ������ 
2. ���� ������ ��ư: Ŭ�� > ���õ� ����ڿ��� ���� ������
==============================================================================================================
 
- ������ö nexacro platform ���̼��� � ���� �� ����
1. D:\QMS\APQMS\workspace\APQMS\WebContent\WEB-INF\lib ==> nexacro14_server_license.xml
==============================================================================================================
 
- �������� ���� �˾�(/pop_chgPropile.xfdl)
1. Top ������(/frmTop.xfdl) ����
==============================================================================================================

- ���� VGA ����̹� ��ġ ����(GIGABYTE ��Ʈ�Ͽ���) ==> ���� �Ϸ�(���� ó����) @@@
1. ����: GIGABYTE ��Ʈ���� ������10���� ���� �� ������7���� �缳ġ
 1) ���÷��� ����Ͱ� ǥ�� VGA �׷��� ����ͷ� ��ġ�� --> Intel�� HD Graphics 630 ����̹��� ��ġ�ȵ�(������7 ��ġ ���� ����)
2. ��ġ: 3DP Chip�� �ٿ� �޾Ƽ� ��ġ
 1) 3DP Chip ���α׷� ���� �� Intel_HD_(764_2120164505)_by3DP.exe �ٿ� �޾Ƽ� ��ġ
 2) ���ڢ� HD �׷����� ��ġ �Ϸ� �� �� Ȯ�� ���
  ��. ����ȭ�� > ���ڢ�׷��� ���� > ���ڢ� HD �׷��� ������(��â) > ���÷��� > �Ϲݼ��� > ������ > ���: ���� ==> ����: Ŭ��
==============================================================================================================

������������������� 2018.08.30(��) �۾� �������������������
---> 07:40 ~ 22:00 ==> ���� ���� �׽�Ʈ(19:00 ~ 21:00)

- ������ö AP ǰ������ �ý��� ���� Prj [��] 
- �������� ���� �˾�(/pop_chgPropile.xfdl)
1. ��й�ȣ ���� ����
==============================================================================================================

- �̹��� ���
1. � ���� ==> ���� ����
 1) ��� ==> D:\QMS\APQMS\workspace\APQMS\upload\img\apqms
==============================================================================================================
 
- FSP ���� ���� ���̼��� ����(7��, ����)
1. ������: 2018-08-31 ==> 2018-12-31
2. ��û��(����Ʈ�� �Խ��� �� ���): 2018-08-27 ==> ���̼��� ���Ϸ� ���� ��: 2018-08-30
==============================================================================================================

- AuthUserId �����ϰ� ���� ������
1. ����(/service.xml ���Ͽ���)
<service name="SessionManager"  code= "com.sz.ui.session.HttpSessionManagerService">
	<attribute name="UserInfoKeyName">userObj</attribute>
	<attribute name="NotLogginActionName">  ==> NotLogginActionName���� SY_LoginAction �߰��ϸ� ��
		<!-- �α��� ���� ����� �� �ִ� Action ���  -->
		SY_LoginAction
		,sql#SqlMapManagerAction
	</attribute>
</service> 
 
<!-- ���� ���� �߰�  --> 
<service name="MailService" code="com.sz.service.mail.SimpleMailSendService">
	<attribute name="MailSenderClassName">com.sz.service.mail.DefaultMailSender</attribute> 
	<attribute name="ContentType">text/plain</attribute>							<!-- Mail ������ ������ Ÿ�� --> 
	<attribute name="Encoding">euc-kr</attribute>	  								<!-- ���ڿ� ���ڵ� -->	 
	<attribute name="MailHostName">10.10.222.100</attribute>	  			<!-- ���� ������ ȣ��Ʈ�� --> 
	<!-- hsteelrocas.hyundai-steel.com = "10.10.222.100"-->
	<attribute name="MailHostPort">25</attribute>		   							<!-- ���� ���۽� ����� ��Ʈ��ȣ --> 
	<attribute name="Mailer">hyundai-steel Mail</attribute>		   				<!-- ���� ��� X-Mailer �׸��� �� --> 
	<attribute name="RequiredAuth">false</attribute>		   						<!-- ���� ������ ���ӽ� ����ó�� ���� --> 
	<attribute name="AuthUserId"></attribute>										<!-- ���� ���� ���ӽ� ����� ����� ���̵�  -->    
   <attribute name="AuthPassword"></attribute>		 								<!--  ���� ���� ���ӽ� ����� ����� ��й�ȣ��ȣ   -->
	<attribute name="ConnectionTimeOut">1000</attribute> 		 			 <!-- ���� ���� ���� Ÿ�� �ƿ� �ð� --> 
	<attribute name="DefaultProperties">mail.smtp.auth=false</attribute>   <!-- ���� ������ ���� �⺻ �Ӽ� ���� --> 
</service>  
 
3. ������ö �������� �ش� ����, � ���� IP�� ���� �ؾ� ��
==> ��ƿ�� ���ϼ����� Ÿ�ý��� �߽ż��� IP ������ ���(�����Ͻô� ������ IP ȸ�� �ʿ�) 
10.10.221.91 > 10.10.221.1 ? 10.10.221.255 ��ϵǾ� �̹� ���ԵǾ� ���� 
HOSTNAME : hsteelrocas.hyundai-steel.com or 10.10.222.100 
==> ����Ʈ�� �豤ȣ �븮�� ���� ó���ؼ� �ذ���
==============================================================================================================
 
- ��й�ȣ ����ǥ����(�н�����): ��й�ȣ ����
/***********************************************************************
 * �Լ���  	: fn_validCheck
 * ���� 		: Validation Check 
***********************************************************************/
this.fn_validCheck = function()
{
	// this.div_propile.edt_newPwd.set_value("hptnwhd1601@"); 	// ���ο� ��ȣ(edt_newPwd)
	// ���ο� ��ȣ(edt_newPwd): 12: ---> a1HUMd9dfxQcvs7M957fPdhhw7QGnwsRZho+76y7qRg=
	
	var objRegExp = /^.*(?=^.{8,12}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!,@,#,$,%,^,&,*]).*$/;  		// 06. ����, Ư������, ����(3����) 8 ~ 12�ڸ� ����ǥ����
	trace("[/pop_chgPropile.xfdl][fn_validCheck()]==> [valid_check][TEST_42][���ο� ��ȣ(edt_newPwd)]"+ 
		this.div_propile.edt_newPwd.value +"[objRegExp]"+ objRegExp );

	var objArr = this.div_propile.edt_newPwd.value.match(objRegExp);  
	trace("[/pop_chgPropile.xfdl][fn_validCheck()]==> [valid_check][TEST_44][objArr]"+ objArr );

	if(gfn_isNull(objArr))
	{ 
		alert("���ο� ��ȣ�� ����, ����, Ư������(!@#$%^&*) ������ �������� 8�ڸ� �̻� 12�ڸ� ���Ϸ� ����ʽÿ�."); 
		v_nAlertId = 2;		// alert ID
		return false;
	}  
	
	if(!gfn_isNull(this.div_propile.edt_email.value))  // �̸����� �����ϸ�
	{
	 	var objRegExp_02 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/;	// �̸��� ���� ����ǥ����
		var objArr_02 = this.div_propile.edt_email.value.match(objRegExp_02);  
		//trace("[/pop_chgPropile.xfdl][fn_validCheck()]==> [valid_check][TEST_44][objArr_02]"+ objArr_02 
		+"[�̸���(edt_email)]"+ this.div_propile.edt_email.value +"[objRegExp_02]"+ objRegExp_02 );
	 
		if(gfn_isNull(objArr_02))
		{   
			v_nAlertId = 4;		// alert ID 
			gfn_alert(this, "I0075", "", "fn_alertCallback");	// I0075: �̸��� ������ �ƴմϴ�.
			return false;
		} 
	}
}
=========================================================================================================

������������������� 2018.08.31(��) �۾� �������������������
---> 07:40 ~ 19:40 ==> ������(20:12 ~ 22:07, �𱳿� -> ��������)

- ������ö AP ǰ������ �ý��� ���� Prj [��] 
- �������� ���� �˾�(/pop_chgPropile.xfdl)
1. div_popupSet ����(pdv_popupSet�� �ػ�, application.mainframe.width ���� ��ġ�� �޶����� ���� �� ��)
/***********************************************************************
 * �Լ���  	: st_userNmDept_onclick
 * ���� 		: ����, �μ��� Static Ŭ�� �̺�Ʈ 
***********************************************************************/ 
this.st_userNmDept_onclick = function(obj:Static,  e:nexacro.ClickEventInfo)
{
	trace("[/frmTop.xfdl][st_userNmDept_onclick()]==> [TEST_01]]");
	
	this.div_popupSet.set_visible(true);		// div_popupSet ���̱�
	trace("[/frmTop.xfdl][st_userNmDept_onclick()] ==> [TEST_end][pdv_popupSetdiv_popupSet]"+ this.div_popupSet.visible );  
}

/***********************************************************************
 * �Լ���  	: st_userNmDept_onclick
 * ���� 		: ����, �μ��� Static �������� ���콺�� Ŀ���� ��� ���� �� �߻� �̺�Ʈ  ==> �ּ� ó��
***********************************************************************/ 
this.st_userNmDept_onmouseenter = function(obj:Static, e:nexacro.MouseEventInfo)
{
	//trace("[/frmTop.xfdl][st_userNmDept_onmouseenter()]==> [TEST_01]]");
	
	this.pdv_popupSet.set_visible(true);		// dv_popupSetset ���̱�
 
	if(this.pdv_popupSet.isPopup) this.pdv_popupSet.closePopup();
	
	var left_2 = parseInt(obj.left) - 90;	// Left �� 
	var top_2 = obj.getOffsetHeight(); 		// Top ���� 
	trace("[/frmTop.xfdl][st_userNmDept_onmouseenter()] ==> [TEST_03][obj.left]"+ parseInt(obj.left) +"[obj.top]"+ obj.top
		+"[obj.height]"+ obj.height +"[obj.getOffsetHeight()]"+ obj.getOffsetHeight() );
	trace("[/frmTop.xfdl][st_userNmDept_onmouseenter()] ==> [TEST_04][left_2]"+ left_2 +"[top_2]"+ top_2 );  
 
	this.pdv_popupSet.trackPopupByComponent(obj, left_2, top_2);	// ������ ������Ʈ�� ���������� PopupMenu ������Ʈ��
		ȭ�鿡 ��Ÿ���� �����ϴ� �޼ҵ�
 	trace("[/frmTop.xfdl][st_userNmDept_onmouseenter()] ==> [TEST_end][pdv_popupSet.visible]"+ this.pdv_popupSet.visible );  
 
	trace("[/frmTop.xfdl] [st_userNmDept_onmouseenter()] ==> [ȭ�� ũ��_00][application.mainframe.width]"+ 
	application.mainframe.width +"[application.mainframe.height]"+ application.mainframe.height ); 
  
	var nIndex = system.getMonitorIndex(application.mainframe.left, application.mainframe.top);		// ����� Index
	var strRes = system.getScreenResolution(nIndex);
	trace("[/frmTop.xfdl] [st_userNmDept_onmouseenter()] ==> [ȭ�� �ػ�_02][nIndex]"+ nIndex +"[strRes]"+ 
	strRes +"[objScreenSize.left]"+ objScreenSize.left +"[objScreenSize.top]"+ objScreenSize.top ); 
}
--------------------------------------------------------------------------------------------------------------------------------

- �������� ���� �˾�(/pop_chgPropile.xfdl)���� ����� ���� ����
1. ���� ��ȸ/�ٿ�ε�(/NC_FloorPlanInqyDwnld.xfdl) ���� ���� ==>  ������ȸ/�ٿ�ε� �ٿ�ε� �̷°���(/NC_FloorPlanInqyDwnId_U01.xml])
2. CM_UsrtMngm_U02.xm���� ���� �߻�
<statement> 
	 /* ����� ���� ���� ==> [cm:CM_UsrtMngm_U02.xml] [2018.08.30, by ���¸�] */ 
	UPDATE HSSCU100
	 SET EMAIL= #EMAIL# 			-- �̸��� 
		, PWD = TRIM(#NEW_PWD#) 		-- ��ȣ(���ο� ��ȣ)
		-- <isNotNull col="NEW_PWD">  ===> ���� �߻�   --> �ּ� ó�� @@@
		--	, PWD  = TRIM(#NEW_PWD#) 		-- ��ȣ(���ο� ��ȣ)
		-- </isNotNull>
		 , PHONE= #PHONE# 			-- �ڵ���
		 , MID = #MID#					-- ������ID
		 , MDT= TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS')
	WHERE USER_ID  = #USER_ID#		-- �����ID 
</statement>
  ==============================================================================================================

- ���� ��û
1. ���λ���CD�� ������, ��û��� ==> ������, ������ ���� �����ϰ� ���� @@@ 
2. ��������, �������� ���ý� ���� ��¥�� �Էµǰ� ���� @@@
3. ���λ���CD2�� ������, ��û��� �̸� Ȯ�����(���γ���) ��ư enable ó��
var sConfStateCd2 = this.ds_list.getColumn(this.ds_list.rowposition, "CONF_STATE_CD_02");   // ���λ���CD_02
 
if(!gfn_isNull(sConfStateCd_02) && (sConfStateCd_02 == "CHK_WAIT" || sConfStateCd_02 == "REQ_WAIT"))	
// ���λ���CD2�� ������, ��û��� �̸�
{ 
	this.btn_aprvCnfmCanc.set_enable(true);  	// Ȯ�����(���γ���) ��ư enable
}
else
{ 
	this.btn_aprvCnfmCanc.set_enable(false);  	// Ȯ�����(���γ���) ��ư Disable  
}
==============================================================================================================

- 4M���� �Ƿ� ���(/ UM_4MChngReqtInput.xfd) ȭ�� ����
1. ����� ��û��ȣ�� Grid ù �� ��ȣ�� �ԷµǼ� insert ������(�̽��� ���� ����)  ==> ���� ���԰˻� �ҽ��� �����ϰ� ����
============================================================================================================== 
���������������������������������������������������������� 
+----------------------------------------------------// End //----------------------------------------------------+
����������������������������������������������������������

 



