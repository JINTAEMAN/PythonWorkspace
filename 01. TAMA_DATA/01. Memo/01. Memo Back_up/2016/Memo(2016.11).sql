

�����������������������������������������������������������
+---------------------------------------------// Memo(2016.11) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2016.11.01(ȭ) �۾� �������������������
---> 08:30 ~ 18:00  ==>  

- �Ե� �鼼�� ȸ������ Prj[��]
- ��߱�(/cs01/CS01_ReIss_M.xml) ����
1. �ε��׽þ� �����׸� : ���� ���� �� �δ� �Ե������ ī�� ��ȣ �߰� ��. - Read Only ó��
==============================================================================================================

1. ������ > CRM > ī��߱ް���
- �űԹ߱�(/cs01/CS01_NewIss_M.xml)  
==> �����ڵ�[NATN_CD]
	��ϱ����Ͻ�[RGST_DTTZ]    TIMESTAMP(6) WITH TIME ZONE ==> SELECT current_timestamp FROM DUAL;
       ��������Ͻ�[CHNG_DTTZ]    TIMESTAMP(6) WITH TIME ZONE  ==> SELECT current_timestamp FROM DUAL;
- ��߱�(/cs01/CS01_ReIss_M.xml)
==============================================================================================================

- �߰��� �ʵ�  ==> �ε��׽þ� �����׸�(���� ���� �� �δ� �Ե������ī���ȣ) �߰�(2016.11.01, by ���¸�) 
meLmbsCrdtCardno	-- �Ե������ī���ȣ
edEmbsId			-- ����ID
edEmbsCardno		--  ����ī���ȣ 

coEmbsNatltCd		-- ���������ڵ�  
embsDeptNm		-- �����μ���
embsJobttlNm		-- ��������
==============================================================================================================

- ��Ŭ����(eclipse)���� ���� ����
1. ����: 
Error occurred during initialization of VM
Could not reserve enough space for object heap
2. ����: �޸� ������ ���� ��ǻ�Ϳ��� �ʹ� ũ�� ������ �׷��� �մϴ�.
3. ��ġ :eclipse.ini ������ ��� -Xmx1024m�� -Xmx256m ���� �ٿ��� ����
http://codepedia.tistory.com/entry/Eclipse-Ver33-runError
==============================================================================================================

- ��Ŭ����(eclipse) �޸𸮰���, eclipse.ini
http://blog.daum.net/say_young/6710278 
==============================================================================================================

������������������� 2016.11.02(��) �۾� �������������������

- �Ե� �鼼�� ȸ������ Prj[��]
- ��߱�(/cs01/CS01_ReIss_M.xml) ����
1. �ε��׽þ� �����׸� : ���� ���� �� �δ� �Ե������ ī�� ��ȣ �߰� ��. - Read Only ó��
==============================================================================================================

- ���� ���� Height �߰�(/CS01_ReIss_M.xfdl)
imCardIssHistList.Top = 762; 		// �ű԰��� �� ��߱� �̷� Image Div(Top ��ġ) ����(2016.11.02, ���¸�) 
==> 2�� �߰�(�ε��׽þ� �����׸�)
//imCardIssHistList.Top = 703; // 699;   				// �ű԰��� �� ��߱� �̷� Image Div(Top ��ġ)
stCardIssHistList.Top = imCardIssHistList.Top + 1;		// �ű԰��� �� ��߱� �̷� Static Div(Top ��ġ)	
shCardIssHistList.Top = imCardIssHistList.Top + 17;	// �ű԰��� �� ��߱� �̷� Shape Div(Top ��ġ)
grCardIssHistList.Top = imCardIssHistList.Top + 19;		// �ű԰��� �� ��߱� �̷� Grid Div(Top ��ġ) 
trace("[/CS01_ReIss_M.xfdl] [fInit()] [�� �ʱ�ȭ �Լ�] [�ű԰��� �� ��߱� �̷� Image Div]"+ imCardIssHistList.Top
+"[iCardIssHistListGap]"+ iCardIssHistListGap ); 
---------------------------------------------------------------------------------------------------------

- ���� ���� Height �߰�(�Ե������ī�� ����)(/CS01_ReIss_M.xfdl)
imCardIssHistList.Top = 762 + 30 ;		// �ű԰��� �� ��߱� �̷� Image Div(Top ��ġ) ����(2016.11.02, ���¸�) 
--> VIPī�屸�� Combo���� �Ե������ī�带 �����ϸ� 1�� �߰���(������)
==============================================================================================================

������������������� 2016.11.03(��) �۾� �������������������
---> 08:30 ~ 18:00  ==>  

- �Ե� �鼼�� ȸ������ Prj[��]
- ������ī��߱���Ȳ(/cs01/CS01_ByDayCardIssPrsts_M.xml) ����
1. ���� ���� ȭ��(���ѹα�, �߱�, �Ϻ�, RST(��ܱ���), �ε��׽þ�, �±�, ��Ÿ) 
==============================================================================================================

������������������� 2016.11.04(��) �۾� �������������������
---> 08:30 ~ 18:00  ==>  

- �Ե� �鼼�� ȸ������ Prj[��]
- ������ī��߱���Ȳ(/cs01/CS01_ByDayCardIssPrsts_M.xml) ����
1. ���� ���� ȭ��(���ѹα�, �߱�, �Ϻ�, RST(��ܱ���), �ε��׽þ�, �±�, ��Ÿ) 
==============================================================================================================

- ������ ���(���)
/domain/Domain_KO.xml, /Domain_EN.xml, /Domain_KO.xml
<item id="DM00015931" text="RST(��ܱ���)"/>
<item id="DM00015931" text="Rst (Overseas Koreans)"/>
==============================================================================================================

- gloB VIP������������_��ȯ�ǳ�����ȸ(/cs01/CS01_ReIss_M.xml) ����
1. /ExchSQL.xml(select id="cs02.exch.selectExchPtcls"): gloB CS_VIP_MEMB_GL2  ���� ���� ��� --> ����
-->  /* VIP������������_��ȯ�ǳ�����ȸ(/ExchSQL.xml): cs02.exch.selectExchPtcls */
==============================================================================================================

- gloB  ���������������� - ȸ���߱ޱ�����ȸ(/cs01/CS01_ReIss_M.xml) ����
1. /IndvInfoOffrAgreeSQL.xml(select id="cs02.indvInfoOffrAgree.selectMembIssNatn"): gloB CS_VIP_MEMB_GL2  ���� ���� ��� --> ����
==============================================================================================================
 
- ������������������ȸ - ������������������ȸ(/cs01/CS02_IndvInfoOffrAgreeInqry_M.xml) ����
1. /IndvInfoOffrAgreeSQL.xml(select id="cs02.indvInfoOffrAgreeInqry.selectIndvInfoOffrAgreeInqryDtl"): gloB CS_VIP_MEMB_GL2  ���� ���� ��� --> ���� 
-->  /* ������������������ȸ - ���������������Ǹ����ȸ(/IndvInfoOffrAgreeSQL.xml)l */  ---> TO-BE 
==============================================================================================================

- SQL Formatter ����
1. Standard Formatting
 1) Indent: \t		2) Indent Width: 900
 3) Max Width: 900
2. Expand Comma Lists
 1) Space After Comma: üũ
==============================================================================================================

������������������� 2016.11.05(��) �۾� �������������������
---> 09:15 ~ 19:00  ==> 

- �ָ�  
08:00 ���
08:20 ����(���)
10:30 �����(�翺, ����)
10:45 �븲��(6511�� ����)
11:20 ��õ��
11:30 ���� ����(3��, 24��): �ʹ� ����
11:50 �߽�(����, ������, ���): ������ �Ĵ�
12:40 ��õ��(5515A�� ����)
13:10 �����
13:30 ���ǻ� ����(��ǳ ����) ==> ���� �Ȱ� �ٴϴ��� �ǰ���
14:30 ����
15:40 �Ｚ��(5525�� ����)
16:00 �Ÿ���  ==> ���� ����ö ���սǿ��� ������Ʈ ��
16:40 �Ͱ�
19:00 ����
22:30 ��ħ
==============================================================================================================

������������������� 2016.11.06(��) �۾� �������������������
---> 07:40 ~ 18:10 ==>  

�� �����౸
06:30 ���
07:10 ������(����APT -> �븲���)
07:20 �븲��� 
07:30 �ڰ���
08:00 ���� ==> 3������(����FC�� ģ����) --> 1���� ����Ʈ ������ ��
12:00 ����
12:30 �߽�(����Ĵ�)
13:20 ����
14:00 ����Ʈ �籸�� ==> �籸(������, �⼮�� 1:1 �����, �����) �����ؼ� ���, ���� ���� ����
16:00 ����
16:30 �Ͱ�
17:00 �̸�Ʈ
19:40 ����
22:30 ��ħ
==============================================================================================================
 
������������������� 2016.11.07(��) �۾� �������������������
---> 08:30 ~ 18:00  ==> �߽�(«��, ������): �ۺ�ȸ, PM�� ��  

- �Ե� �鼼�� ȸ������ Prj[��] 
- gloB L.DREAM POINT vipȸ����ȸ�˾�(����,�ؿ� ��ü��ȸ) ����
1. /LdreamPointUseActrsltInqrySQL.xml(select id="cs02.ldreamPointUseActrsltInqry.selectVipMembListAll"): 
gloB CS_VIP_MEMB_GL2  ���� ���� ��� --> ����  

<!--vipȸ����ȸ�˾�(����,�ؿ� ��ü��ȸ)	-->    														
<select id="cs02.ldreamPointUseActrsltInqry.selectVipMembListAll"  parameterClass="parameterMap" resultClass="resultMap">		
	<!-- 	/* �ּ� ó��: CS_VIPȸ��(�ؿ�) TB: ȸ���������λ�� ����(2016.11.07, ���¸�) 
	<isEqual property="retrieveAllYn" compareValue="1">
													
	UNION ALL		
	</isEqual> -->
</select>	 
==============================================================================================================
  
- gloB VIPȸ����ȸ �˾�(ȸ����ȣ��ü) ����
1. /VipMembSQL.xml(select id="cs02.vipMemb.selectVipNoAll"): 
gloB CS_VIP_MEMB_GL2  ���� ���� ��� --> ����  

<select id="cs02.vipMemb.selectVipNoAll"  parameterClass="parameterMap" resultClass="resultMap">				 
	SELECT MAX(VM.VIP_NO) VIP_NO						
	     , MAX(VM.NATN_CD) NATN_CD						
	  FROM 
			<!--// CS_VIP_MEMB_GL2 TB �ּ� ó��: ȸ���������λ�� ����(2016.11.04, ���¸�) 
			(SELECT VM.VIP_NO						
		     , VM.NATN_CD						
		  FROM CS_VIP_MEMB_GL2 VM			/*CS_VIPȸ��(�ؿ�) TB  */ 		
			 WHERE VM.VIP_NO = #vipNo#						
		 UNION ALL					 
		SELECT VM.VIP_NO						
		     , 'KR' NATN_CD						
		  FROM CS_VIP_MEMB VM					/* CS_VIPȸ�� TB */	
			 WHERE VM.VIP_NO = #vipNo#						
	       ) VM			 -->		
		(SELECT VM.VIP_NO						
				, VM.NATN_CD						
		  FROM CS_VIP_MEMB VM		  	/* CS_VIPȸ�� TB */
			 WHERE VM.VIP_NO = #vipNo#		 
	       ) VM				
							
	--[comment]$_comment$						
</select>		
==============================================================================================================
  
- gloB VIPȸ����ȸ�˾�(����,�ؿ� ��ü��ȸ) ����
1. /VipMembSQL.xml(select id="cs02.vipMemb.selectVipMembListAll"): 
gloB CS_VIP_MEMB_GL2  ���� ���� ��� --> ����  

<!-- Desc     : vipȸ����ȸ�˾�(����,�ؿ� ��ü��ȸ)														
     author   : ȫ����														
     date     : 2016.05.10														
-->    														
<select id="cs02.vipMemb.selectVipMembListAll"  parameterClass="parameterMap" resultClass="resultMap">	 
	<!--// CS_VIP_MEMB_GL2 TB �ּ� ó��: ȸ���������� ��� ����(2016.11.04, ���¸�) 
	<isEqual property="retrieveAllYn" compareValue="1">
													
     UNION ALL													
													
	SELECT VM.NATN_CD												
	     , VM.VIP_NO												
	     , SP.PSPTNO		
		 , VM.CUST_NM													     										
	     , VM.CUST_ENGNM												
	     , VM.BIRTHDT												
	     , VM.MPNO												
	     , VM.EMAIL												
	     , VM.NATLT_CD												
	     , DECODE((SELECT COUNT(1)
				  FROM CS_AGREE_NATN AN
				 WHERE AN.VIP_NO = VM.VIP_NO
				   AND AN.AGREE_NATN_CD = 'KR'
				   AND AN.TNNO   = GREATEST( (SELECT NVL(MAX(AI.TNNO),0)
												    FROM CS_AGREE_INFO AI
												   WHERE AI.VIP_NO = AN.VIP_NO		  
											      ),( 		
												  SELECT NVL(MAX(AI.TNNO),0)
												    FROM CS_AGREE_INFO_GL2 AI
												   WHERE AI.VIP_NO = AN.VIP_NO
											      ) 
											    )  
				  ), 0, '0','1') AGREE_YN												
	  FROM CS_VIP_MEMB_GL2 VM			/* CS_VIPȸ��(�ؿ�) TB */									
	     , SL_PSPT_RCGNT_NO_GL2 SP	
 WHERE VM.PSPT_RCGNT_NO  = SP.PSPT_RCGNT_NO		 
 <isNotEmpty property = "vipNo">												
	   AND VM.VIP_NO            = #vipNo#												
	 </isNotEmpty>												
	 <isNotEmpty property = "psptno">												
	   AND SP.PSPTNO            = #psptno#												
	 </isNotEmpty>												
	 <isNotEmpty property = "custEngnm">												
	   AND UPPER(VM.CUST_ENGNM) LIKE '%'||UPPER(#custEngnm#)||'%'												
	 </isNotEmpty>												
	 <isNotEmpty property = "birthdt">												
	   AND VM.BIRTHDT           = #birthdt#												
	 </isNotEmpty>												
	 <isNotEmpty property = "mpno">												
	   AND VM.MPNO              = #mpno#												
	 </isNotEmpty>												
	 <isNotEmpty property = "email">												
	   AND VM.EMAIL             = #email#												
	 </isNotEmpty>													
</isEqual> --> 										
</select>													
==============================================================================================================
  
- gloB VIP������������_�ؿ�VIP�Ǹ�����_�߰����� ����
1. /VipSlAgrgSQL.xml(update id="cs02.vipSlAgrg.mergeOvsVipSlAgrg"): 
gloB CS_VIP_MEMB_GL2  ���� ���� ��� --> ����  

<update id="cs02.vipSlAgrg.mergeOvsVipSlAgrg" parameterClass="parameterMap"> 
	/* VIP������������_�ؿ�VIP�Ǹ�����_�߰����� */

	MERGE INTO CS_OVS_VIP_SL_AGRG VS /* CS_�ؿ�VIP�Ǹ����� */
       USING (
		JOIN CS_MGR.CS_VIP_MEMB     VM 			/* CS_VIPȸ�� TB�� ���̺�� ����(2016.11.07, ���¸�) */
		// JOIN CS_MGR.CS_VIP_MEMB_GL2     VM		/* CS_VIPȸ��(�ؿ�) */
	) 
</update>
==============================================================================================================

- gloB+  ���������������� - ȸ���߱ޱ�����ȸ ����
1. /IndvInfoOffrAgreeSQL.xml(update id="cs02.indvInfoOffrAgree.selectMembIssNatn"): 
gloB CS_VIP_MEMB_GL2  ���� ���� ��� --> ����  

<!-- Desc     : ���������������� - ȸ���߱ޱ�����ȸ 
--> 
<select id="cs02.indvInfoOffrAgree.selectMembIssNatn" parameterClass="parameterMap" resultClass="resultMap"> 
	/* �ּ� ó��: CS_VIPȸ��(�ؿ�) TB: ȸ���������λ�� ����(2016.11.04, ���¸�) 
	 UNION ALL
	 
	SELECT VM.VIP_NO
	     , VM.NATN_CD
	     , NVL(IC.INTGCD_NM, VM.NATN_CD) NATN_NM
	     , VM.CUST_ENGNM
	  FROM CS_VIP_MEMB_GL2 VM		--> CS_VIPȸ��(�ؿ�) TB 
	     , CO_INTGCD IC
	 WHERE VM.NATN_CD            = IC.INTGCD(+)
	   AND IC.INTGCD_GROUP_ID(+) = 'CS708'
	   AND VM.PSPT_RCGNT_NO      = (SELECT FN_SL_PSPTNO_FIND_GL2('R2', #psptno#, #_usrId#) FROM DUAL) 
	*/ 
</select> 
==============================================================================================================
 
������������������� 2016.11.08(ȭ) �۾� �������������������
---> 08:30 ~ 18:00  ==> ����(��ġ�ֳ�, �������� ��ó, �¿�, ������ ����), �ȸ�(����, ������ ����)

- �Ե� �鼼�� ȸ������ Prj[��]
- gloB+  vip��ȣ��ȸ ����
1. /VipMembSQL.xml(update id="cs02.vipMemb.selectVipNoAll"): 
gloB CS_VIP_MEMB_GL1  ���� ���� ��� --> ����

<select id="cs02.vipMemb.selectVipNoAll"  parameterClass="parameterMap" resultClass="resultMap">
	SELECT MAX(VM.VIP_NO) VIP_NO
	     , MAX(VM.NATN_CD) NATN_CD
	  FROM (SELECT VM.VIP_NO
		     , VM.NATN_CD
		  FROM CS_VIP_MEMB VM
		<!--// CS_VIP_MEMB_GL1 TB �ּ� ó��: ȸ���������� ��� ����(2016.11.07, ���¸�)
		 UNION ALL
		SELECT VM.VIP_NO
		     , 'KR' NATN_CD
		  FROM CS_VIP_MEMB_GL1 VM) VM --> 
	 WHERE 1 = 1
	<isNotEmpty property="vipNo">
	   AND VM.VIP_NO = #vipNo#
	</isNotEmpty>
	
	--[comment]$_comment$
</select>
==============================================================================================================

- gloB+  vipȸ����ȸ�˾�(����,�ؿ� ��ü��ȸ) ����
1. /VipMembSQL.xml(select id="cs02.vipMemb.selectVipMembListAll"): 
gloB CS_VIP_MEMB_GL1  ���� ���� ��� --> ���� 

<!-- Desc     : vipȸ����ȸ�˾�(����,�ؿ� ��ü��ȸ)
     author   : ȫ����
     date     : 2016.05.10
-->    
<select id="cs02.vipMemb.selectVipMembListAll"  parameterClass="parameterMap" resultClass="resultMap">
 
       <!--// CS_VIPȸ��_GL1 TB �ּ� ó��: ȸ���������� ��� ����(2016.11.07, ���¸�) 
		UNION ALL
	 
	SELECT 'KR' NATN_CD
	     , VM.VIP_NO
	     , SP.PSPTNO
	     , VM.CUST_ENGNM
	     , VM.BIRTHDT
	     , VM.MPNO
	     , VM.EMAIL
	     , VM.NATLT_CD
	  FROM CS_VIP_MEMB_GL1 VM			/* CS_VIPȸ��_GL1 TB */			
	     , SL_PSPT_RCGNT_NO_GL1 SP
	 WHERE VM.PSPT_RCGNT_NO  = SP.PSPT_RCGNT_NO -->
	 ) VM
		   
	 --[comment]$_comment$
</select> 
==============================================================================================================

- gloB+  VIP������������_VIP�Ǹ��������� �ѱ��� ����
1. /VipSlAgrgSQL.xml(update id="cs02.vipSlAgrg.mergeVipSlAgrg"): 
gloB CS_VIP_MEMB_GL1  ���� ���� ��� --> ���� 

<update id="cs02.vipSlAgrg.mergeVipSlAgrg" parameterClass="parameterMap">    
	<isEqual property="aplyVipNoNatnCd" compareValue="KR">
		BEGIN
		    /* VIP������������_VIP�Ǹ��������� �ѱ���*/
		    MERGE INTO CS_KR_VIP_SL_AGRG VS /* CS_�ѱ�VIP�Ǹ����� */
			 USING
			     (
			      SELECT SUBSTR(SH.SL_DT, 1, 6)              AS SL_YM        /* [PK] �Ǹ����� VARCHAR2(8) */
				  
			      FROM  SL_SALE_HDR         SH /* SL_�Ǹ� */
				  , SL_DPTCTR_CUST_INFO DC /* SL_�ⱹ������ */
				 //, CS_VIP_MEMB_GL1     VM		/* CS_VIPȸ��_GL1 TB */ 
					, CS_VIP_MEMB      VM		/* CS_VIPȸ�� TB */		/* CS_VIPȸ�� TB�� ���̺�� ����(2016.11.07, ���¸�) */
			      WHERE   SH.GL2_EXCH_NO              = #gl2ExchNo#
				  AND VM.NATN_CD = 'KR'									/* �����ڵ�(NATN_CD) �ѱ�(KR)���� �߰�(2016.11.07, ���¸�) */ 
			     ) VT
			    ON 
		     
			MERGE INTO CS_KR_VIP_SALES VS /*�ѱ�VIP����*/
			USING (SELECT VM.VIP_NO 
				 FROM SL_SALE_HDR         SH
				    , SL_DPTCTR_CUST_INFO DC
				   // , CS_VIP_MEMB_GL1     VM		/* CS_VIPȸ��_GL1 TB */
				   , CS_VIP_MEMB      VM		/* CS_VIPȸ�� TB */		/* CS_VIPȸ�� TB�� ���̺�� ����(2016.11.07, ���¸�) */
				WHERE SH.DPTCTR_CUST_SEQ = DC.DPTCTR_CUST_SEQ
				  AND VM.NATN_CD = 'KR'							/* �����ڵ�(NATN_CD) �ѱ�(KR)���� �߰�(2016.11.07, ���¸�) */ 
				  AND ROWNUM             = 1) VT
			ON (    VS.VIP_NO      = VT.VIP_NO 
		END;
	</isEqual>
</update>
==============================================================================================================

- gloB+  ���������ȸ ����
1. /CustCnslSQL.xml( select id="cs04.custCnsl.selectCnslInfo"): 
gloB CS_VIP_MEMB_GL1  ���� ���� ��� --> ����  

<select id="cs04.custCnsl.selectCnslInfo"  parameterClass="parameterMap" resultMap="procesClob"> 
	/* ���������ȸ */ 
		<!--// CS_VIPȸ��_GL1 TB �ּ� ó��: ȸ���������� ��� ����(2016.11.07, ���¸�) 
	 
			UNION ALL 
</select>
==============================================================================================================

- �ڹ� Log4j ���� �� ��ġ
https://search.naver.com/search.naver?where=nexearch&query=eclipse+log4j&sm=top_hty&fbm=2&ie=utf8
http://cafe.naver.com/easyit1/508
==============================================================================================================
 
������������������� 2016.11.09(��) �۾� �������������������
---> 08:30 ~ 18:00  ==> �̱� �뼱(Ʈ���� �缱)

- �Ե� �鼼�� ȸ������ Prj[��]
- gloB+  vip��ȣ��ȸ ����
1. /VipMembSQL.xml(update id="cs02.vipMemb.selectVipNoAll"): 
gloB CS_VIP_MEMB_GL1  ���� ���� ��� --> ����

<select id="cs02.vipMemb.selectVipNoAll"  parameterClass="parameterMap" resultClass="resultMap">
	SELECT MAX(VM.VIP_NO) VIP_NO
	     , MAX(VM.NATN_CD) NATN_CD
	  FROM (SELECT VM.VIP_NO
		     , VM.NATN_CD
		  FROM CS_VIP_MEMB VM
		<!--// CS_VIP_MEMB_GL1 TB �ּ� ó��: ȸ���������� ��� ����(2016.11.07, ���¸�)
		 UNION ALL
		SELECT VM.VIP_NO
		     , 'KR' NATN_CD
		  FROM CS_VIP_MEMB_GL1 VM) VM --> 
	 WHERE 1 = 1
	<isNotEmpty property="vipNo">
	   AND VM.VIP_NO = #vipNo#
	</isNotEmpty>
	
	--[comment]$_comment$
</select>
==============================================================================================================
 
������������������� 2016.11.10(��) �۾� ������������������� 
---> 08:30 ~ 18:00  ==> �翺 �˿� �Կ�(06��, ���ذ���): 8�ÿ� ���� ����� ��� ��Ŵ, ������ ����(15��, Ŀ�Ǽ� �輺�� ����)
								, �ɻ�� ���� ö��(17��), ���̻�Կ��� �ϰ� �� ������� ���� ���� ����, ���� ����(������ ���Ϸ�)

- �Ե� �鼼�� ȸ������ Prj[��]
- gloB+VIPȸ�������� ȭ��(/CS01_ReIss_M_inc) ����
==============================================================================================================

- ������ �߰�
<item id="DM00027054" text="����������/���"/>
<item id="DM00027055" text="���ͳ���ID/���"/>
<item id="DM00027056" text="�߱ޱ���"/> 
<item id="DM00027057" text="DM�����ּ�"/>
   
<item id="DM00027054" text="Employee Classification/Employee No."/>
<item id="DM00027055" text="Internet Shop Id/Tiers"/>
<item id="DM00027056" text="Issued Country"/> 
<item id="DM00027057" text="DM Received Address"/>
==============================================================================================================

-- ���̺� Į�� �ڸ�Ʈ ��ȸ
-- ���̺� �ڸ�Ʈ  ��ȸ @@@@
SELECT *
FROM ALL_TAB_COMMENTS
WHERE TABLE_NAME = 'TB_CM_BLBR'
;
 
-- ���̺�  Į�� ���� ��ȸ @@@@
SELECT *
FROM ALL_TAB_COLUMNS
WHERE TABLE_NAME = 'TB_CM_BLBR'
;
 
-- ���̺� Į�� �ڸ�Ʈ ��ȸ @@@@
SELECT *
FROM USER_COL_COMMENTS
WHERE TABLE_NAME = 'TB_CM_BLBR'
;
==============================================================================================================

- ORACLE ����Ŭ SQL Developer Tips
http://302.pe.kr/379
==============================================================================================================
 
- Oracle SQL Developer ��ġ 
1. Oracle Ȩ������(http://www.oracle.com/technetwork/developer-tools/sql-developer/downloads/index.html) ����
SQL Developer 4.1.5(sqldeveloper-4.1.5.21.78-x64.zip) �ٿ� �޾Ƽ� ��ġ
 1) �α��� ���� ==> tamario@naver.com / hp����1601@A
==============================================================================================================

������������������� 2016.11.11(��) �۾� �������������������
---> 08:30 ~ 18:00  ==> 

- �Ե� �鼼�� ȸ������ Prj[��]
- gloB CS_VIP_MEMB_GL2 ���� ����
- gloB2 CS_VIP_MEMB_GL1 ���� ����
==============================================================================================================

������������������� 2016.11.12(��) �۾� �������������������
---> 09:15 ~ 19:00  ==> 

- ������  
05:20 ���
05:50 �����(�翺, ����)
06:05 ����ö(�븲�� -> ���￪)
06:35 ���￪ ����
06:50 ������ KTX ���
09:26 ���׿� ����
09:40 �ý�(���׿� -> ������): 6,400��
10:00 ������ ����(������ �����ƹ��� ���� ���� �庸�� ���� ��)
11:00 �߽�(�ع��δ�� + ������ + ����, 27,000��: ������ �δ��)
12:00 �Ͱ�(���� ����)
13:00 ū���� ����
13:10 ū���� ������ ������ ����̺� ��
12:30 �����
15:40 ��� ��̰��� ����(������ ���� ����(����ȸ ȸ��, �ε���), �ּ���, �Լ�, ���� �Ĺ� 2��)
15:50 ���� ����(3�� 1��)  --> ��û ����־���
18:00 ����
18:30 �Ͱ�(�����̰� ���� �¿���)
19:30 �߽�
22:30 ��ħ
==============================================================================================================

������������������� 2016.11.13(��) �۾� �������������������
---> 07:40 ~ 18:10 ==>  

- ����  
07:30 ��� 
08:50 ����
10:00 ���� �ƹ��� ����(���� �ۼ�, ���� �̸� �ۼ�)
10:30 ���� �غ�(�� ������)
10:30 ��� �� ����, ��� ����
12:00 ���� ==> �û� ���� �ٽ� �ۼ�(�ϻ��� ������ ��� ������ ���� ó������ ����)
	���� �ƹ���(����, ���), ������ ����(����), 
	�ϻ��� ����, ������ ����(����),
	������ ����(����), ������ ����(����, �Ƶ�),
	�Ǽ��� ���, ����� ���  --> 45����(�� �� 5����) ��Ƽ� ȸ��� ���
13:30 ���� ����
13:50 �Ļ� 
15:30 ����
15:40 ���� 
16:40 ���
18:10 �����
18:15 �ý�(������ -> ���׿�): 7,200��
18:50 KTX ž��
21:26 ���￪ ����
21:40 ����ö(���￪ -> �븲��)
22:25 �Ͱ�
00:20 ��ħ  
==============================================================================================================

������������������� 2016.11.14(��) �۾� �������������������
---> 08:30 ~ 18:00  ==> 

- �Ե� �鼼�� ȸ������ Prj[��]
- gloB VIPȸ�� �ű԰��� ����
1. 
<![CDATA[  AND BB.PSPTNO <> #psptno1#  ]]>	

/*AND SH.SL_DT = TO_CHAR(SYSDATE, 'YYYYMMDD') */		/* �Ǹ����� */
<![CDATA[ AND (SH.SL_DT >= TO_CHAR(SYSDATE-30, 'YYYYMMDD') 
AND SH.SL_DT <= TO_CHAR(SYSDATE, 'YYYYMMDD') )	]]>	 		/*  �Ǹ�����  TEST @@@ */ 
==============================================================================================================

������������������� 2016.11.15(ȭ) �۾� �������������������
---> 08:30 ~ 18:00  ==> 

- �Ե� �鼼�� ȸ������ Prj[��]
- gloB VIPȸ�� �ű԰��� ����
1. ���� �������� ���ǹ�ȣ ���� VIP�ڰݸ�� ��ȸ ó��
==============================================================================================================
 
- �͹̳� �α�
devuser@dftestap:[/sw/logs/jeuslog/dftestap]#> cd dftestap_container1 
devuser@dftestap:[/sw/logs/jeuslog/dftestap/dftestap_container1]#> tail -f dftestap_container1_20161115.log	-- �ǽð� �α� ����

[i3shop@newint i3shop logs]$ tail -f Default_Server_stdout.log		  -- �ǽð� �α� ����
==============================================================================================================

- SecureCRT �ѱ� ������ ���� �ذ�� 
1. Options > Session Options < Session Options(��â)
 1) Category > Terminal > Apperance > Windows and Text Apperance(������ ��)
 ��. Fonts > Character encoding ���� UTF-8�� ���� ==> Font ������, ��ũ��Ʈ�� �ݵ�� "�ѱ�" �� ����
http://blog.daum.net/minpc/18
==============================================================================================================
 
 ������������������� 2016.11.16(��) �۾� �������������������
---> 08:30 ~ 18:00  ==> 

- �Ե� �鼼�� ȸ������ Prj[��]
- ��߱�(/cs01/CS01_ReIss_M.xml) ����
1. �ε��׽þ� �����׸� : ���� ���� �� �δ� �Ե������ ī�� ��ȣ �߰� ��. - Read Only ó��
==============================================================================================================

- eclipse ���� ����
1. ����: ��Ŭ����(eclipse)�� �õ� �� �������. (building workspace 0%)
2. ��ġ:��ũ�����̽� ������ .metadata\.plugins\org.eclipse.core.resources\Prj[ects �� ���� ������Ʈ�� 
������ �ٸ� ������ �Űܳ��� �õ��ϴ� �ߵ�. 
==> C:\Dev_LDFS\workspace\.metadata\.plugins\org.eclipse.core.resources\.Prj[ects
http://dev.azki.org/entry/%EC%9D%B4%ED%81%B4%EB%A6%BD%EC%8A%A4eclipse%EA%B0%80-%EC%8B%9C%EB%8F%
99-%EC%8B%9C-%EC%9D%91%EB%8B%B5%EC%97%86%EC%9D%8C-building-workspace-0
==============================================================================================================

- ��Ŭ���� �ӵ� ��� (eclipse.ini ����) 
http://blog.naver.com/PostView.nhn?blogId=sungback&logNo=90097516641
http://blog.naver.com/PostView.nhn?blogId=kdi0373&logNo=120167336633&redirect=Dlog&widgetTypeCall=true
==============================================================================================================

������������������� 2016.11.17(��) �۾� �������������������
---> 08:30 ~ 18:00  ==> 2016�� ������

- �Ե� �鼼�� ȸ������ Prj[��]
- ��߱�(/cs01/CS01_ReIss_M.xml) ����
1. �ε��׽þ� �����׸� : ���� ���� �� �δ� �Ե������ ī�� ��ȣ �߰� ��. - Read Only ó��
==============================================================================================================

- ��Ŭ����(eclipse) Dev_LDFS �缳��  
1. ��Ŭ����(eclipse)�� �õ� �� ������ ��� �赿�� å�ӿ��� Dev_LDFS �ҽ� ���� �޾Ƽ� �� ����
C:\Dev_LDFS\workspace\LDFS\src\main\webapp\ui\ldfs
C:\Dev_LDFS\workspace\gloB2.ui\ui\gloB2
==============================================================================================================

-- �߱ޱ���  �����ڵ� ��ȸ @@@@
SELECT * 
FROM CO_MGR.CO_INTGCD
WHERE INTGCD_GROUP_ID = 'CO001'
   AND( INTGCD = 'KR' OR MGT_ATTR_VAL6 = '1')
;
==============================================================================================================

- ���� ����, TEST ����, ��� ���� �ҽ� �ݿ�
1. eclipse���� Ŀ�� ==> gloB ���� ������ �ݿ�
2. gloB ���� �������� �׽�Ʈ ==> �Ϸ�
3. gloB ���� �������� ���α׷� �ݿ� ��û ȭ�鿡�� �ݿ� ��û ==> ¦���ð� 30�� �� �ݿ��� T���� H�� �ٲ�
   (�����ڰ� �����ϸ� ������ Y�� �ٲ�� � ������ �ݿ���) --> ���� ����(��� �ݿ�), TEST ����(2�ð� ���� �ݿ���) 
==============================================================================================================

- xecure db
1. xecureweb ��ġ
==> fast_sync_encrypt64 ���� ==> 64��Ʈ�� ����(��Ʈ���� 32��Ʈ������ ��ġ)
==============================================================================================================

������������������� 2016.11.18(��) �۾� �������������������
---> 08:30 ~ 18:00  ==>

- �Ե� �鼼�� ȸ������ Prj[��] 
- �߱ޱ��ص��(/cs01/CS01_IssStdRgst_M.xml) @@@    ==> �Ϸ� [�ڡڡ�]
1. �߱ޱ����ڵ�, ��ϱ����Ͻ�, ��������Ͻ� �߰�
==============================================================================================================

- Filtering �� ��ü �޺� ����
dsNatnCd1.Copy(dsNatnCd);	// �߱ޱ���1 DS ���� ó��(2016.11.17, ���¸�) 
 
// �߱ޱ���D S Filter ó��[�����ڵ� CO001 �� �ڵ� 'KR���Ǵ� �����Ӽ����� 1�� ������ ���͸�](2016.11.17, ���¸�) 
dsNatnCd.Filter("intgcd==" + quote("KR") +"||intgcd==" + quote("JP") +"||intgcd==" + quote("TH") +"||intgcd==" + quote("ID") +"||intgcd==" + quote("GU") );
dsNatnCd.insertrow(0);						// �߱ޱ��� insertrow ����(2016.11.17, ���¸�) 
dsNatnCd.SetColumn(0, "intgcd", "");		// �߱ޱ��� code�� ����(2016.11.17, ���¸�) 
dsNatnCd.SetColumn(0, "intgcdNm", "��ü");	// �߱ޱ��� name�� ����(2016.11.17, ���¸�)  
dvIssStdInqryCndt.coNatnCd.Index = 0;		// �߱ޱ��� ��Ŀ�� ����(2016.11.17, ���¸�) 

// �߱ޱ���1 DS Filter ó��[�����ڵ� CO001 �� �ڵ� 'KR���Ǵ� �����Ӽ����� 1�� ������ ���͸�](2016.11.17, ���¸�) 
dsNatnCd1.Filter("intgcd==" + quote("KR") +"||intgcd==" + quote("JP") +"||intgcd==" + quote("TH") +"||intgcd==" + quote("ID") +"||intgcd==" + quote("GU") );
dsNatnCd1.insertrow(0);						// �߱ޱ��� insertrow ����(2016.11.17, ���¸�) 
dsNatnCd1.SetColumn(0, "intgcd", "");		// �߱ޱ��� code�� ����(2016.11.17, ���¸�) 
dsNatnCd1.SetColumn(0, "intgcdNm", "����");	// �߱ޱ��� name�� ����(2016.11.17, ���¸�)  
==============================================================================================================

������������������� 2016.11.19(��) �۾� �������������������
---> 09:15 ~ 19:00  ==> 

- �ָ�  
098:00 ���(��ͼ� �౸ �� ��)
08:20 ����(���) 
09:30 ����(��Ҿư�): ���� ����
09:50 ����(���̾� ���� �౹): ���� ���� 
11:00 �Ͱ�
14:00 ����
17:00 ���
18:00 ����(��Ʈ�� �ұ���)
18:50 �̸�Ʈ(���� �Ź� ����)
19:30 ���� 
20:00 �Ͱ� 
22:30 ��ħ
==============================================================================================================

������������������� 2016.11.20(��) �۾� �������������������
---> 07:40 ~ 18:10 ==>  

�� �����౸
06:30 ���
06:50 ������(����APT -> �븲���)
07:01 �븲��� 
07:10 �ڰ���
08:00 ���� ==> 2������
12:00 ����
12:30 �߽�(����Ĵ�)
13:20 ����
14:00 ����Ĵ�==> ������,�ּ���, ������, ��������, �¿�: ���� ��(3�� 6õ ��)
16:00 ����
16:30 �Ͱ�
19:40 ����(����): ���� ������
22:30 ��ħ
==============================================================================================================
 
������������������� 2016.11.21(��) �۾� �������������������
---> 08:30 ~ 21:00  ==>  ����(��, ���극�� �븲��), �翺 ù ���(������ũ�ַ��), ����ī�� ����(���� üũ ī��), ����� ���� ����(L-CAMP)

- �Ե� �鼼�� ȸ������ Prj[��] 
- ������ ī��߱���Ȳ(/cs01/CS01_BydayCardIssPrsts_M.xml) @@@ 
1. ��ȸ����- ���ڵ�(�ؿ�) �߰�, �߱ޱ��� �߰�, �߱���Ȳ��ȸ-�δ�,�±� �߰�.
2. ������ �ؿ� �� ����
<!-- ��Ƽ ���̺�(SL_STR_INFO) �ڵ� ��ȸ -->
 <select id="co02.code.selectTableMultiComboLoadStoreCode"  parameterClass="parameterMap" resultClass="resultMap">
	    <dynamic>
 </select> 
--------------------------------------------------------------------------------------------------------------

SELECT AA.NATN_CD, ISS_STR_CD AS �߱����ڵ�, GL2_ISS_STR_CD AS GL2�߱����ڵ�, AA.*
FROM CS_VIP_ISS AA /* CS_VIP�߱� TB */ 
WHERE AA.NATN_CD <> 'KR'
;

SELECT BB.NATN_CD, BB.*     
FROM  CS_VIP_MEMB BB /* CS_VIPȸ�� TB */   ---> No Data
WHERE  BB.NATN_CD <> 'KR'
;

SELECT  CC.STR_CD AS ���ڵ�, CC.*
 FROM  SL_STR_INFO CC  -- SL_������ TB
 --   WHERE  BB.NATN_CD <> 'KR'
; 

SELECT  DD.GL2_STR_CD AS GL2���ڵ� 
``, DD.*   ```--  , AA.ISS_STR_CD AS �߱����ڵ�,  AA.GL2_ISS_STR_CD AS GL2�߱����ڵ�
FROM  SL_STR_INFO_GL2 DD  -- SL_������2 TB
--   WHERE  BB.NATN_CD <> 'KR'
  ;
-- =========================================================================================================
 
- ldfs[41. gloB] (MiPlatform Prj[ect Manager����)
1. Name: ldfs
2. Desc: 41. gloB
3. Start XML: C:\Dev_LDFS\workspace\LDFS\src\main\webapp\ui\ldfs\LDFS_GLOB_start.xml
4. Working Folder: C:\Dev_LDFS\workspace\LDFS\src\main\webapp\ui\ldfs
5. Character Set: utf-8
BaseUrl: C:\gloB2_dev\workspace\gloB2.ui\ui\gloB2\DefApp\Win32\
Script Url:
--------------------------------------------------------------------------------------------------------

- gloB2[42. gloB2(�ؿ�)] (MiPlatform Prj[ect Manager����)
1. Name: gloB2
2. Desc: 42. gloB2(�ؿ�)
3. Start XML: C:\gloB2_dev\workspace\gloB2.ui\ui\gloB2\gloB2_start.xml   
		1) gloB2_start.xml ���� �뷮 92KB Ȯ��(4KB�� ����Ǹ� �ű� ������ ����: gloB2_start_local.xml @@@
		2) C :\gloB2_dev\workspace\gloB2.ui\ui\gloB2\gloB2_start_local.xml   
4. Working Folder: C:\gloB2_dev\workspace\gloB2.ui\ui\gloB2
5. Character Set: utf-8  
--------------------------------------------------------------------------------------------------------

- gloB2_02[42. gloB2(�ؿ�)_02] (MiPlatform Prj[ect Manager����)  ==> TEST @@@ ==>
1. Name: gloB2_02
2. Desc: 42. gloB2(�ؿ�)_02
3. Start XML: C:\Dev_LDFS\workspace\gloB2.ui\ui\gloB2\gloB2_start.xml
		1) gloB2_start.xml ���� �뷮 92KB Ȯ��(4KB�� ����Ǹ� �ű� ������ ����: gloB22_start_local.xml @@@
		2) C :\gloB2_dev\workspace\gloB2.ui\ui\gloB2\gloB22_start_local.xml   
4. Working Folder: C:\Dev_LDFS\workspace\gloB2.ui\ui\gloB2
5. Character Set: utf-8  
==============================================================================================================

- �翺 ���� ù ���(2��°: 2015.07.21(ȭ)�� 3�� ����ϰ� �׸� ��)
1. ������ũ�ַ��(���� ��õ�� ���굿 481-2, 02)855-9100)  --> http://www.pcbassembly.co.kr
2. ������ũ�ַ��(����A -> �����ο� 5�� �ⱸ -> ����(�ʹ� ����) -> ������ũ�ַ��) 
==============================================================================================================

- �������
1. ���̻���� �ϰ� �� ���� �϶�� ������
2. ����� ==> ������ ���: 010-3200-4063  --> 19�ÿ� ����(���): ���� �ڷ� ���Ϸ� �شٰ� ��
==============================================================================================================
 
������������������� 2016.11.22(ȭ) �۾� �������������������
---> 08:00 ~ 21:00  ==> ����(���ö�, GS25 �Ұ���) 

- �Ե� �鼼�� ȸ������ Prj[��] 
- �Ⱓ�� ī��߱���Ȳ(/cs01/CS01_PrdByCardIssPrsts_M.xml) @@@    ==> �Ϸ� [�ڡڡ�]
1. ��ȸ����- ���ڵ�(�ؿ�) �߰�, �߱ޱ��� �߰�, ���� ī�� �÷� �߰�
==============================================================================================================

-- ���� ��ȸ @@@  --> E58146943[���ǹ�ȣ ��ȸ]
SELECT  xdbutl_acct.xdbpkg.xdb_fsdec('LDFS','LDFS','LDFS','NORMAL', B.PSPTNO) AS ����_��ȣ
  , NATLT_CD AS ����
    , A.* 
FROM  SL_MGR.SL_DPTCTR_CUST_INFO A
   , SL_MGR.SL_PSPT_RCGNT_NO  B
WHERE A.PSPT_RCGNT_NO > 60100000
  AND A.VIP_NO IS NULL
  --AND A.VIP_NO = 'E58146943'    -- ���ǹ�ȣ
  AND A.PSPT_RCGNT_NO = B.PSPT_RCGNT_NO
ORDER BY A.PSPT_RCGNT_NO
 ;
-- =========================================================================================================
 
- Oracle SQL Developer �� ���
http://mkeasy.inmu.net/wp/%EC%98%A4%EB%9D%BC%ED%81%B4-oracle-sql-developer-%ED%8C%81-%EB%AA%87%EA%B0%80%EC%A7%80/
1. SQL�����Ϳ��� �ٹ�ȣ ���̰� ����
 1) ���� / ȯ�漳�� / �ڵ� ������ / �� ���� / �� ��ȣǥ�ÿ� üũ
2. Toad�� ���� ���̺� �������� ����Ű 
 1) SHIFT + F4
==============================================================================================================
 
������������������� 2016.11.23(��) �۾� ������������������� \
---> 08:00 ~ 18:00  ==>  ���� ȸ��(�Ե��鼼��, 18:30 ~12:30): �屺����(���̻��, PM, ��å��, POS)
 
- �Ե� �鼼�� ȸ������ Prj[��] 
- ȸ����������(/cs01/CS02_MembInfoMgt_M.xml)   @@@ 
1. �ε��׽þ� �����׸�(���� ���� �� �δ� �Ե������ī���ȣ), �߱ޱ��� ȭ�� �߰� 
==============================================================================================================

- �������� �߱�
1. �����б� Ȩ���������� �߱�
 1) ���ͳ� �߱�: http://www.kmu.ac.kr  ==> tamario@naver.com / hp����1**1@
==============================================================================================================
  
- ������ �߱�(i-pin)  ==>  
1. tamario/ hp����1**1@ --> hp����1**1
2. �߱ޱ��: �ѱ��ſ������� 
3. ������ �ſ� Ȯ��(���� �޴��� �ƴ�)
==============================================================================================================
 
������������������� 2016.11.24(��) �۾� �������������������
---> 08:00 ~ 21:00  ==> ����(��¥��, ����)

- �Ե� �鼼�� ȸ������ Prj[��] 
- ȸ����������(/cs01/CS02_MembInfoMgt_M.xml)   @@@ 
1. �ε��׽þ� �����׸�(���� ���� �� �δ� �Ե������ī���ȣ), �߱ޱ��� ȭ�� �߰� 
==============================================================================================================

- PL/SQL Develper ���μ���[DBMS ���� ���α׷�]
Code: jw6frj46k6db55y2yskp43elmjlhsmthl2pcj8ptd35r
s/n: 1883678366
Pw: xs374ca
==> plsqldev1106.exe ���׷��̵�
------------------------------------------------------------------------------------------------------

- ��ì��[DBMS ���� ���α׷�]
http://cafe.naver.com/aonenetworks/706

- squirrel SQL[DBMS ���� ���α׷�]
http://opennaru.tistory.com/86
https://www.google.co.kr/#q=squirrel+sql+%ED%95%9C%EA%B8%80
==============================================================================================================

- ������ MK240 ���콺, Ű���� �޺� ����
1. �嵥�� ����(Ű����: 2��, ���콺: 1��, AA 2��), ����: 27,280��
http://itempage3.auction.co.kr/DetailView.aspx?ItemNo=B239830970&frm3=V2
------------------------------------------------------------------------------------------------------

- ������ MK240 Ű��Ų ����
1. ����: 6,000�� 
http://itempage3.auction.co.kr/DetailView.aspx?itemno=B283117787&frm3=V2
==============================================================================================================
 
������������������� 2016.11.25(��) �۾� �������������������
---> 08:00 ~ 21:00  ==> ����(��¥��, ����)

- �Ե� �鼼�� ȸ������ Prj[��] 
- VIPȸ�����Ž�����ȸ(/cs01/CS02_VipMembPchsActrsltInqry_M.xml) @@@ 
1. �α��� �� ����� ������  �߱ޱ���(�ڱ�)�� �ϴ� VIPȸ�� ���Ž��� ��ȸ 
==> /cs/cs02/VipMembSQL.xml --> cs02.vipMemb.selectVipMembList ����
==============================================================================================================

- VIPȸ�� �ؿ��� ���Ž��� ��ȸ(/cs01/CS01_BydayCardIssPrsts_M.xml) @@@ 
1. gloB�ý��� VIPȸ���� �ؿ� �� ���Ž��� �� ���Ż� �ڷ� ��ȸ 
==============================================================================================================

- SVN ���� ���� ����
1. ��α� å��: 010-4437-8859
---------------------------------------------------------------------------------------

- SVN �α��� 
1. gloB: svn://10.50.13.41/svn ==> mpgift1/1234, �ż���/ldf 
2. gloB2: svn://10.50.5.41/svn ==> mpgift1/1234
==============================================================================================================

- Grid ���� �ڵ� Resize
<Split BKColor="red" Height="50" Id="spHorz" Left="1255" Top="740" Visible="FALSE" Width="1">
	<Contents>
		<LeftOrTop>
			<Bind BindType="Resize" CompID="dvVipMembInqryCndt"/> 
			<Bind BindType="Resize" CompID="shVipMembList"/>
			<Bind BindType="Resize" CompID="grVipMembList"/>
			<Bind BindType="Resize" CompID="grVipMembOvsStrPchsActrsltList"/>
			<Bind BindType="Resize" CompID="grVipMembPchsActrsltDtlList"/> 	<!--//  VIPȸ�����Ž����󼼸�� DS �߰� //-->
		</LeftOrTop>
		<RightOrBottom></RightOrBottom>
	</Contents>
</Split>
<Split BKColor="blue" Direct="VERT" Height="2" Id="spVert" Left="1206" Top="789" Visible="FALSE" Width="50">
	<Contents>
		<LeftOrTop></LeftOrTop>
		<RightOrBottom></RightOrBottom>
	</Contents>
</Split>
==============================================================================================================

������������������� 2016.11.26(��) �۾� �������������������
---> 09:15 ~ 19:00  ==> ù �� ��

- �ָ�  
09:00 ���
09:20 ����(���)
10:30 �����(����)
11:00 �븲��(6511�� ����)
11:30 ��õ��(ù �� ��)
11:50 �ۺ�����������(2��: ��̵�����): ������ å �о� ��
13:00 ����
13:40 �߽�(���, �Һ�): ������ �Ĵ�
15:00 ��õ��Ÿ�(6511�� ����)
15:30 �Ͱ�
19:00 ����
22:30 ��ħ
==============================================================================================================

������������������� 2016.11.27(��) �۾� �������������������
---> 07:40 ~ 18:10 ==>  

�� �����౸
06:30 ���
07:10 ������(����APT -> �븲���)
07:20 �븲��� 
07:40 �ڰ���(���� �� �ͼ� �౸ȭ ����)
08:00 ���� ==> 2������ --> 1���� ����Ʈ ������ ��
10:00 ����
10:30 �߽�(�����屹: ���� �ɰ� ������&������ �Ĵ�): ȸ���� ��
11:30 ����
11:50 �������屹(������, 3�׸�: �������屹): ����ũ�ƿ� 
12:30 �Ͱ�
19:00 ����
22:30 ��ħ
==============================================================================================================

- ���ͳ� �ֹ�(23��)
1. ��ǳ��, ����, ���콺 �е� ����
 1) ��ο��� ����ũ�ι� ũ����Ż �� ���콺�е�(91141), ����: 13,400�� ==> http://www.enuri.com/detail.jsp?modelno=10487112
 2) HP ��Ʈ�� ����_H5M90AA, ����: 30.560�� ==> http://www.enuri.com/detail.jsp?modelno=10487112
 3) �����Ǿ� WINDPIA-6A [6��ġ ��ǳ��, �߰�ǰ], ����: 10,400�� ==> http://www.enuri.com/detail.jsp?modelno=12225591
2. ��ũ => ���� �� ��  
==============================================================================================================

������������������� 2016.11.28(��) �۾� �������������������
---> 08:10 ~ 21:00  ==> ����(��, ���극�� �븲��)

- �Ե� �鼼�� ȸ������ Prj[��] 
- ȸ�����������̷���ȸ(/cs01/CS02_MembInfoChngHistInqry_M.xml) @@@   ==> �Ϸ� [�ڡڡ�]
1. �߱ޱ��� �߰�
==============================================================================================================

������������������� 2016.11.29(ȭ) �۾� �������������������
---> 08:10 ~ 21:00  ==> ����(��¥��, ����)

- �Ե� �鼼�� ȸ������ Prj[��] 
- �����(/cs04/CS04_CnslRgst_M.xml) @@@ 
1. �߱ޱ�����(NATN_CD)  �߰� ��(Read Only)- VIPȸ���� ��� �� ��ȸ ��  ==> �Ϸ� [�ڡڡ�]
==============================================================================================================

- mtputty ��ġ
==============================================================================================================

- MiPlatform ���� ����Ű ����
01. gloB ���� ����(LDFS_dev) ==> http://devap.ldfs.com 
C:\Windows\System32\MiUpdater331.exe -V 3.3 -D Win32U -R FALSE -K LDFS_dev -L TRUE -LE TRUE -BI "%component%next_upd.gif"
02. gloB �׽�Ʈ ����(LDFS_test) ==> http://testap.ldfs.com
C:\Windows\System32\MiUpdater331.exe -V 3.3 -D Win32U -R FALSE -K LDFS_test -L TRUE -LE TRUE -BI "%component%next_upd.gif" 
51. gloB2 ���� ����(gloB+_dev) ==> http://devglobplus.lottedfs.co.kr
C:\devglobplus\System32\MiUpdater331.exe -V 3.3 -D Win32U -R FALSE -K gloB2_dev -L TRUE -LE TRUE -BI "%component%next_upd.gif"   
52. gloB2 �׽�Ʈ ����(gloB+_test) ==> http://testglobplus.lottedfs.co.kr
C:\Windows\System32\MiUpdater331.exe -V 3.3 -D Win32U -R FALSE -K gloB2_test -L TRUE -LE TRUE -BI "%component%next_upd.gif"  
==============================================================================================================

������������������� 2016.11.30(��) �۾� �������������������
---> 08:10 ~ 21:00  ==> ����(��ä��, ����)

- �Ե� �鼼�� ȸ������ Prj[��] 
- ������ ī��߱���Ȳ(/cs01/CS01_BydayCardIssPrsts_M.xml) ���� ==> �Ϸ� [�ڡڡ�]
1. ī��߱޻󼼳��� Grid: �ؿ� �����ڵ� ��ȸ ����
==============================================================================================================

- VIPȸ�����Ž�����ȸ ���� ó��
/cs02/CS02_VipMembPchsActrsltInqry_M.xml
==============================================================================================================

- �����ڵ�(NATN_CD)�� �߰��� ���̺�
CS_VIP_MEMB: CS_VIPȸ�� 
CS_VIP_ISS: CS_VIP�߱�
CS_VIP_MEMB_RMKS: CS_VIPȸ�����
CS_VIP_MEMB_MKTG_ATTR: CS_VIPȸ�������üӼ�
CS_VIP_MEMB_CHNG_HIST: CS_VIPȸ�������̷� 
--------------------------------------------------------------------------------------------

-- CS_VIPȸ�� ���� ��ȸ @@@@@
SELECT  M.NATN_CD	AS �����ڵ�	        /* �����ڵ� �߰�(2016.11.02, ���¸�) */
      , M.RGST_DTTZ AS �����ڵ�	      /* ��ϱ����Ͻ� �߰�(2016.11.02, ���¸�) */
      , M.CHNG_DTTZ AS ��������Ͻ�   /* ��������Ͻ� �߰�(2016.11.02, ���¸�) */ 
      , M.RGSTPSN_ID AS �����ID    
      , M.RGST_DTTM AS ����Ͻ� 
      , M.*
FROM CS_VIP_ISS M		-- CS_VIP_MEMB, CS_VIP_MEMB_CHNG_HIST, CS_VIP_ISS, CS_VIP_MEMB_RMKS, CS_VIP_MEMB_MKTG_ATTR
WHERE 1 = 1  
 AND M.NATN_CD IS NULL 
ORDER BY M.RGST_DTTM DESC
 ; 
============================================================================================================== 
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������
