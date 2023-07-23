

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2016.11) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2016.11.01(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:30 ~ 18:00  ==>  

- 롯데 면세점 회원통합 Prj[★]
- 재발급(/cs01/CS01_ReIss_M.xml) 수정
1. 인도네시아 관리항목 : 대사관 정보 및 인니 롯데멤버스 카드 번호 추가 됨. - Read Only 처리
==============================================================================================================

1. 마케팅 > CRM > 카드발급관리
- 신규발급(/cs01/CS01_NewIss_M.xml)  
==> 국가코드[NATN_CD]
	등록기준일시[RGST_DTTZ]    TIMESTAMP(6) WITH TIME ZONE ==> SELECT current_timestamp FROM DUAL;
       변경기준일시[CHNG_DTTZ]    TIMESTAMP(6) WITH TIME ZONE  ==> SELECT current_timestamp FROM DUAL;
- 재발급(/cs01/CS01_ReIss_M.xml)
==============================================================================================================

- 추가할 필드  ==> 인도네시아 관리항목(대사관 정보 및 인니 롯데멤버스카드번호) 추가(2016.11.01, by 진태만) 
meLmbsCrdtCardno	-- 롯데멤버스카드번호
edEmbsId			-- 대사관ID
edEmbsCardno		--  대사관카드번호 

coEmbsNatltCd		-- 대사관국적코드  
embsDeptNm		-- 대사관부서명
embsJobttlNm		-- 대사관직위
==============================================================================================================

- 이클립스(eclipse)에서 시작 에러
1. 현상: 
Error occurred during initialization of VM
Could not reserve enough space for object heap
2. 원인: 메모리 영역이 지금 컴퓨터에서 너무 크게 잡혀서 그런듯 합니다.
3. 조치 :eclipse.ini 파일을 열어서 -Xmx1024m을 -Xmx256m 으로 줄여서 실행
http://codepedia.tistory.com/entry/Eclipse-Ver33-runError
==============================================================================================================

- 이클립스(eclipse) 메모리관리, eclipse.ini
http://blog.daum.net/say_young/6710278 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.11.02(수) 작업 ■■■■■■■■■■■■■■■■■■

- 롯데 면세점 회원통합 Prj[★]
- 재발급(/cs01/CS01_ReIss_M.xml) 수정
1. 인도네시아 관리항목 : 대사관 정보 및 인니 롯데멤버스 카드 번호 추가 됨. - Read Only 처리
==============================================================================================================

- 높이 차이 Height 추가(/CS01_ReIss_M.xfdl)
imCardIssHistList.Top = 762; 		// 신규가입 및 재발급 이력 Image Div(Top 위치) 수정(2016.11.02, 진태만) 
==> 2줄 추가(인도네시아 관리항목)
//imCardIssHistList.Top = 703; // 699;   				// 신규가입 및 재발급 이력 Image Div(Top 위치)
stCardIssHistList.Top = imCardIssHistList.Top + 1;		// 신규가입 및 재발급 이력 Static Div(Top 위치)	
shCardIssHistList.Top = imCardIssHistList.Top + 17;	// 신규가입 및 재발급 이력 Shape Div(Top 위치)
grCardIssHistList.Top = imCardIssHistList.Top + 19;		// 신규가입 및 재발급 이력 Grid Div(Top 위치) 
trace("[/CS01_ReIss_M.xfdl] [fInit()] [폼 초기화 함수] [신규가입 및 재발급 이력 Image Div]"+ imCardIssHistList.Top
+"[iCardIssHistListGap]"+ iCardIssHistListGap ); 
---------------------------------------------------------------------------------------------------------

- 높이 차이 Height 추가(롯데멤버스카드 선택)(/CS01_ReIss_M.xfdl)
imCardIssHistList.Top = 762 + 30 ;		// 신규가입 및 재발급 이력 Image Div(Top 위치) 수정(2016.11.02, 진태만) 
--> VIP카드구분 Combo에서 롯데멤버스카드를 선택하면 1줄 추가됨(직위명)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.11.03(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:30 ~ 18:00  ==>  

- 롯데 면세점 회원통합 Prj[★]
- 국적별카드발급현황(/cs01/CS01_ByDayCardIssPrsts_M.xml) 수정
1. 통합 관리 화면(대한민국, 중국, 일본, RST(재외국민), 인도네시아, 태국, 기타) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.11.04(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:30 ~ 18:00  ==>  

- 롯데 면세점 회원통합 Prj[★]
- 국적별카드발급현황(/cs01/CS01_ByDayCardIssPrsts_M.xml) 수정
1. 통합 관리 화면(대한민국, 중국, 일본, RST(재외국민), 인도네시아, 태국, 기타) 
==============================================================================================================

- 도메인 등록(언어)
/domain/Domain_KO.xml, /Domain_EN.xml, /Domain_KO.xml
<item id="DM00015931" text="RST(재외국민)"/>
<item id="DM00015931" text="Rst (Overseas Koreans)"/>
==============================================================================================================

- gloB VIP실적사후적립_교환권내역조회(/cs01/CS01_ReIss_M.xml) 수정
1. /ExchSQL.xml(select id="cs02.exch.selectExchPtcls"): gloB CS_VIP_MEMB_GL2  통합 수정 대상 --> 수정
-->  /* VIP실적사후적립_교환권내역조회(/ExchSQL.xml): cs02.exch.selectExchPtcls */
==============================================================================================================

- gloB  개인정보제공동의 - 회원발급국가조회(/cs01/CS01_ReIss_M.xml) 수정
1. /IndvInfoOffrAgreeSQL.xml(select id="cs02.indvInfoOffrAgree.selectMembIssNatn"): gloB CS_VIP_MEMB_GL2  통합 수정 대상 --> 수정
==============================================================================================================
 
- 개인정보제공동의조회 - 개인정보제공동의조회(/cs01/CS02_IndvInfoOffrAgreeInqry_M.xml) 수정
1. /IndvInfoOffrAgreeSQL.xml(select id="cs02.indvInfoOffrAgreeInqry.selectIndvInfoOffrAgreeInqryDtl"): gloB CS_VIP_MEMB_GL2  통합 수정 대상 --> 수정 
-->  /* 개인정보제공동의조회 - 개인정보제공동의목록조회(/IndvInfoOffrAgreeSQL.xml)l */  ---> TO-BE 
==============================================================================================================

- SQL Formatter 설정
1. Standard Formatting
 1) Indent: \t		2) Indent Width: 900
 3) Max Width: 900
2. Expand Comma Lists
 1) Space After Comma: 체크
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.11.05(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 09:15 ~ 19:00  ==> 

- 주말  
08:00 기상
08:20 조식(라면)
10:30 집출발(루옌, 수종)
10:45 대림역(6511번 버스)
11:20 봉천중
11:30 빌라 구경(3억, 24평): 너무 좁음
11:50 중식(알탕, 볶음밥, 돈까스): 포마토 식당
12:40 봉천중(5515A번 버스)
13:10 서울대
13:30 관악산 공원(단풍 구경) ==> 수종 안고 다니느라 피곤함
14:30 종료
15:40 삼성중(5525번 버스)
16:00 신림역  ==> 수종 지하철 대합실에서 오바이트 함
16:40 귀가
19:00 석식
22:30 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.11.06(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==>  

▦ 조기축구
06:30 기상
07:10 자전거(문영APT -> 대림운동장)
07:20 대림운동장 
07:30 솟게임
08:00 게임 ==> 3게임함(도신FC와 친선전) --> 1게임 레프트 윙으로 뜀
12:00 종료
12:30 중식(서울식당)
13:20 종료
14:00 포인트 당구장 ==> 당구(수춘형, 기석형 1:1 기우형, 상배형) 내기해서 통닭, 맥주 시켜 먹음
16:00 종료
16:30 귀가
17:00 이마트
19:40 석식
22:30 취침
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.11.07(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:30 ~ 18:00  ==> 중식(짬뽕, 탕수육): 송별회, PM이 쏨  

- 롯데 면세점 회원통합 Prj[★] 
- gloB L.DREAM POINT vip회원조회팝업(국내,해외 전체조회) 수정
1. /LdreamPointUseActrsltInqrySQL.xml(select id="cs02.ldreamPointUseActrsltInqry.selectVipMembListAll"): 
gloB CS_VIP_MEMB_GL2  통합 수정 대상 --> 수정  

<!--vip회원조회팝업(국내,해외 전체조회)	-->    														
<select id="cs02.ldreamPointUseActrsltInqry.selectVipMembListAll"  parameterClass="parameterMap" resultClass="resultMap">		
	<!-- 	/* 주석 처리: CS_VIP회원(해외) TB: 회원통합으로사용 안함(2016.11.07, 진태만) 
	<isEqual property="retrieveAllYn" compareValue="1">
													
	UNION ALL		
	</isEqual> -->
</select>	 
==============================================================================================================
  
- gloB VIP회원조회 팝업(회원번호전체) 수정
1. /VipMembSQL.xml(select id="cs02.vipMemb.selectVipNoAll"): 
gloB CS_VIP_MEMB_GL2  통합 수정 대상 --> 수정  

<select id="cs02.vipMemb.selectVipNoAll"  parameterClass="parameterMap" resultClass="resultMap">				 
	SELECT MAX(VM.VIP_NO) VIP_NO						
	     , MAX(VM.NATN_CD) NATN_CD						
	  FROM 
			<!--// CS_VIP_MEMB_GL2 TB 주석 처리: 회원통합으로사용 안함(2016.11.04, 진태만) 
			(SELECT VM.VIP_NO						
		     , VM.NATN_CD						
		  FROM CS_VIP_MEMB_GL2 VM			/*CS_VIP회원(해외) TB  */ 		
			 WHERE VM.VIP_NO = #vipNo#						
		 UNION ALL					 
		SELECT VM.VIP_NO						
		     , 'KR' NATN_CD						
		  FROM CS_VIP_MEMB VM					/* CS_VIP회원 TB */	
			 WHERE VM.VIP_NO = #vipNo#						
	       ) VM			 -->		
		(SELECT VM.VIP_NO						
				, VM.NATN_CD						
		  FROM CS_VIP_MEMB VM		  	/* CS_VIP회원 TB */
			 WHERE VM.VIP_NO = #vipNo#		 
	       ) VM				
							
	--[comment]$_comment$						
</select>		
==============================================================================================================
  
- gloB VIP회원조회팝업(국내,해외 전체조회) 수정
1. /VipMembSQL.xml(select id="cs02.vipMemb.selectVipMembListAll"): 
gloB CS_VIP_MEMB_GL2  통합 수정 대상 --> 수정  

<!-- Desc     : vip회원조회팝업(국내,해외 전체조회)														
     author   : 홍지용														
     date     : 2016.05.10														
-->    														
<select id="cs02.vipMemb.selectVipMembListAll"  parameterClass="parameterMap" resultClass="resultMap">	 
	<!--// CS_VIP_MEMB_GL2 TB 주석 처리: 회원통합으로 사용 안함(2016.11.04, 진태만) 
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
	  FROM CS_VIP_MEMB_GL2 VM			/* CS_VIP회원(해외) TB */									
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
  
- gloB VIP실적사후적립_해외VIP판매집계_추가저장 수정
1. /VipSlAgrgSQL.xml(update id="cs02.vipSlAgrg.mergeOvsVipSlAgrg"): 
gloB CS_VIP_MEMB_GL2  통합 수정 대상 --> 수정  

<update id="cs02.vipSlAgrg.mergeOvsVipSlAgrg" parameterClass="parameterMap"> 
	/* VIP실적사후적립_해외VIP판매집계_추가저장 */

	MERGE INTO CS_OVS_VIP_SL_AGRG VS /* CS_해외VIP판매집계 */
       USING (
		JOIN CS_MGR.CS_VIP_MEMB     VM 			/* CS_VIP회원 TB로 테이블명 변경(2016.11.07, 진태만) */
		// JOIN CS_MGR.CS_VIP_MEMB_GL2     VM		/* CS_VIP회원(해외) */
	) 
</update>
==============================================================================================================

- gloB+  개인정보제공동의 - 회원발급국가조회 수정
1. /IndvInfoOffrAgreeSQL.xml(update id="cs02.indvInfoOffrAgree.selectMembIssNatn"): 
gloB CS_VIP_MEMB_GL2  통합 수정 대상 --> 수정  

<!-- Desc     : 개인정보제공동의 - 회원발급국가조회 
--> 
<select id="cs02.indvInfoOffrAgree.selectMembIssNatn" parameterClass="parameterMap" resultClass="resultMap"> 
	/* 주석 처리: CS_VIP회원(해외) TB: 회원통합으로사용 안함(2016.11.04, 진태만) 
	 UNION ALL
	 
	SELECT VM.VIP_NO
	     , VM.NATN_CD
	     , NVL(IC.INTGCD_NM, VM.NATN_CD) NATN_NM
	     , VM.CUST_ENGNM
	  FROM CS_VIP_MEMB_GL2 VM		--> CS_VIP회원(해외) TB 
	     , CO_INTGCD IC
	 WHERE VM.NATN_CD            = IC.INTGCD(+)
	   AND IC.INTGCD_GROUP_ID(+) = 'CS708'
	   AND VM.PSPT_RCGNT_NO      = (SELECT FN_SL_PSPTNO_FIND_GL2('R2', #psptno#, #_usrId#) FROM DUAL) 
	*/ 
</select> 
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.11.08(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:30 ~ 18:00  ==> 석식(참치애난, 영등포역 근처, 태용, 곽현준 차장), 안마(가인, 곽현준 차장)

- 롯데 면세점 회원통합 Prj[★]
- gloB+  vip번호조회 수정
1. /VipMembSQL.xml(update id="cs02.vipMemb.selectVipNoAll"): 
gloB CS_VIP_MEMB_GL1  통합 수정 대상 --> 수정

<select id="cs02.vipMemb.selectVipNoAll"  parameterClass="parameterMap" resultClass="resultMap">
	SELECT MAX(VM.VIP_NO) VIP_NO
	     , MAX(VM.NATN_CD) NATN_CD
	  FROM (SELECT VM.VIP_NO
		     , VM.NATN_CD
		  FROM CS_VIP_MEMB VM
		<!--// CS_VIP_MEMB_GL1 TB 주석 처리: 회원통합으로 사용 안함(2016.11.07, 진태만)
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

- gloB+  vip회원조회팝업(국내,해외 전체조회) 수정
1. /VipMembSQL.xml(select id="cs02.vipMemb.selectVipMembListAll"): 
gloB CS_VIP_MEMB_GL1  통합 수정 대상 --> 수정 

<!-- Desc     : vip회원조회팝업(국내,해외 전체조회)
     author   : 홍지용
     date     : 2016.05.10
-->    
<select id="cs02.vipMemb.selectVipMembListAll"  parameterClass="parameterMap" resultClass="resultMap">
 
       <!--// CS_VIP회원_GL1 TB 주석 처리: 회원통합으로 사용 안함(2016.11.07, 진태만) 
		UNION ALL
	 
	SELECT 'KR' NATN_CD
	     , VM.VIP_NO
	     , SP.PSPTNO
	     , VM.CUST_ENGNM
	     , VM.BIRTHDT
	     , VM.MPNO
	     , VM.EMAIL
	     , VM.NATLT_CD
	  FROM CS_VIP_MEMB_GL1 VM			/* CS_VIP회원_GL1 TB */			
	     , SL_PSPT_RCGNT_NO_GL1 SP
	 WHERE VM.PSPT_RCGNT_NO  = SP.PSPT_RCGNT_NO -->
	 ) VM
		   
	 --[comment]$_comment$
</select> 
==============================================================================================================

- gloB+  VIP실적사후적립_VIP판매집계저장 한국점 수정
1. /VipSlAgrgSQL.xml(update id="cs02.vipSlAgrg.mergeVipSlAgrg"): 
gloB CS_VIP_MEMB_GL1  통합 수정 대상 --> 수정 

<update id="cs02.vipSlAgrg.mergeVipSlAgrg" parameterClass="parameterMap">    
	<isEqual property="aplyVipNoNatnCd" compareValue="KR">
		BEGIN
		    /* VIP실적사후적립_VIP판매집계저장 한국점*/
		    MERGE INTO CS_KR_VIP_SL_AGRG VS /* CS_한국VIP판매집계 */
			 USING
			     (
			      SELECT SUBSTR(SH.SL_DT, 1, 6)              AS SL_YM        /* [PK] 판매일자 VARCHAR2(8) */
				  
			      FROM  SL_SALE_HDR         SH /* SL_판매 */
				  , SL_DPTCTR_CUST_INFO DC /* SL_출국고객정보 */
				 //, CS_VIP_MEMB_GL1     VM		/* CS_VIP회원_GL1 TB */ 
					, CS_VIP_MEMB      VM		/* CS_VIP회원 TB */		/* CS_VIP회원 TB로 테이블명 변경(2016.11.07, 진태만) */
			      WHERE   SH.GL2_EXCH_NO              = #gl2ExchNo#
				  AND VM.NATN_CD = 'KR'									/* 국가코드(NATN_CD) 한국(KR)으로 추가(2016.11.07, 진태만) */ 
			     ) VT
			    ON 
		     
			MERGE INTO CS_KR_VIP_SALES VS /*한국VIP매출*/
			USING (SELECT VM.VIP_NO 
				 FROM SL_SALE_HDR         SH
				    , SL_DPTCTR_CUST_INFO DC
				   // , CS_VIP_MEMB_GL1     VM		/* CS_VIP회원_GL1 TB */
				   , CS_VIP_MEMB      VM		/* CS_VIP회원 TB */		/* CS_VIP회원 TB로 테이블명 변경(2016.11.07, 진태만) */
				WHERE SH.DPTCTR_CUST_SEQ = DC.DPTCTR_CUST_SEQ
				  AND VM.NATN_CD = 'KR'							/* 국가코드(NATN_CD) 한국(KR)으로 추가(2016.11.07, 진태만) */ 
				  AND ROWNUM             = 1) VT
			ON (    VS.VIP_NO      = VT.VIP_NO 
		END;
	</isEqual>
</update>
==============================================================================================================

- gloB+  상담정보조회 수정
1. /CustCnslSQL.xml( select id="cs04.custCnsl.selectCnslInfo"): 
gloB CS_VIP_MEMB_GL1  통합 수정 대상 --> 수정  

<select id="cs04.custCnsl.selectCnslInfo"  parameterClass="parameterMap" resultMap="procesClob"> 
	/* 상담정보조회 */ 
		<!--// CS_VIP회원_GL1 TB 주석 처리: 회원통합으로 사용 안함(2016.11.07, 진태만) 
	 
			UNION ALL 
</select>
==============================================================================================================

- 자바 Log4j 설명 및 설치
https://search.naver.com/search.naver?where=nexearch&query=eclipse+log4j&sm=top_hty&fbm=2&ie=utf8
http://cafe.naver.com/easyit1/508
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.11.09(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:30 ~ 18:00  ==> 미국 대선(트럼프 당선)

- 롯데 면세점 회원통합 Prj[★]
- gloB+  vip번호조회 수정
1. /VipMembSQL.xml(update id="cs02.vipMemb.selectVipNoAll"): 
gloB CS_VIP_MEMB_GL1  통합 수정 대상 --> 수정

<select id="cs02.vipMemb.selectVipNoAll"  parameterClass="parameterMap" resultClass="resultMap">
	SELECT MAX(VM.VIP_NO) VIP_NO
	     , MAX(VM.NATN_CD) NATN_CD
	  FROM (SELECT VM.VIP_NO
		     , VM.NATN_CD
		  FROM CS_VIP_MEMB VM
		<!--// CS_VIP_MEMB_GL1 TB 주석 처리: 회원통합으로 사용 안함(2016.11.07, 진태만)
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
 
■■■■■■■■■■■■■■■■■■ 2016.11.10(목) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 08:30 ~ 18:00  ==> 루옌 검역 촬영(06시, 김해공항): 8시에 수종 어린이집 등원 시킴, 성예방 교육(15시, 커피숍 김성욱 차장)
								, 심상우 부장 철수(17시), 최이사님에게 일과 후 반출관리 개발 지시 받음, 난방 시작(린나이 보일러)

- 롯데 면세점 회원통합 Prj[★]
- gloB+VIP회원상세정보 화면(/CS01_ReIss_M_inc) 수정
==============================================================================================================

- 도메인 추가
<item id="DM00027054" text="임직원구분/사번"/>
<item id="DM00027055" text="인터넷점ID/등급"/>
<item id="DM00027056" text="발급국가"/> 
<item id="DM00027057" text="DM수신주소"/>
   
<item id="DM00027054" text="Employee Classification/Employee No."/>
<item id="DM00027055" text="Internet Shop Id/Tiers"/>
<item id="DM00027056" text="Issued Country"/> 
<item id="DM00027057" text="DM Received Address"/>
==============================================================================================================

-- 테이블 칼럼 코멘트 조회
-- 테이블 코멘트  조회 @@@@
SELECT *
FROM ALL_TAB_COMMENTS
WHERE TABLE_NAME = 'TB_CM_BLBR'
;
 
-- 테이블  칼럼 정보 조회 @@@@
SELECT *
FROM ALL_TAB_COLUMNS
WHERE TABLE_NAME = 'TB_CM_BLBR'
;
 
-- 테이블 칼럼 코멘트 조회 @@@@
SELECT *
FROM USER_COL_COMMENTS
WHERE TABLE_NAME = 'TB_CM_BLBR'
;
==============================================================================================================

- ORACLE 오라클 SQL Developer Tips
http://302.pe.kr/379
==============================================================================================================
 
- Oracle SQL Developer 설치 
1. Oracle 홈페이지(http://www.oracle.com/technetwork/developer-tools/sql-developer/downloads/index.html) 에서
SQL Developer 4.1.5(sqldeveloper-4.1.5.21.78-x64.zip) 다운 받아서 설치
 1) 로그인 정보 ==> tamario@naver.com / hp수종1601@A
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.11.11(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:30 ~ 18:00  ==> 

- 롯데 면세점 회원통합 Prj[★]
- gloB CS_VIP_MEMB_GL2 통합 수정
- gloB2 CS_VIP_MEMB_GL1 통합 수정
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.11.12(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 09:15 ~ 19:00  ==> 

- 포항행  
05:20 기상
05:50 집출발(루옌, 수종)
06:05 지하철(대림역 -> 서울역)
06:35 서울역 도착
06:50 포항행 KTX 출발
09:26 포항역 도착
09:40 택시(포항역 -> 포항집): 6,400원
10:00 포항집 도착(엄마는 작은아버지 차로 묘사 장보러 시장 감)
11:00 중식(해물부대찌개 + 돈가스 + 피자, 27,000원: 쉐프의 부대찌개)
12:00 귀가(엄마 도착)
13:00 큰누나 도착
13:10 큰누나 수종이 데리고 드라이브 감
12:30 집출발
15:40 양덕 어린이공원 도착(동지고 동문 김대길(족구회 회장, 부동산), 최성우, 함섭, 동네 후배 2명)
15:50 족구 게임(3승 1패)  --> 엄청 재미있었음
18:00 종료
18:30 귀가(김대길이가 차로 태워줌)
19:30 중식
22:30 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.11.13(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==>  

- 묘사  
07:30 기상 
08:50 조식
10:00 작은 아버지 도착(제문 작성, 조상 이름 작성)
10:30 묘사 준비(상 차리기)
10:30 대규 새 엄마, 대규 도착
12:00 묘사 ==> 시사 조문 다시 작성(일생이 아제가 써온 조문을 내가 처음으로 읽음)
	작은 아버지(숙모, 대규), 종욱이 아제(중협), 
	일생이 아제, 병엽이 아제(숙모),
	병일이 아제(숙모), 병일이 아제(숙모, 아들),
	판섭이 고모, 재원이 고모  --> 45만원(집 당 5만원) 모아서 회비로 사용
13:30 묘사 종료
13:50 식사 
15:30 종료
15:40 낮잠 
16:40 기상
18:10 집출발
18:15 택시(포항집 -> 포항역): 7,200원
18:50 KTX 탑승
21:26 서울역 도착
21:40 지하철(서울역 -> 대림역)
22:25 귀가
00:20 취침  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.11.14(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:30 ~ 18:00  ==> 

- 롯데 면세점 회원통합 Prj[★]
- gloB VIP회원 신규가입 수정
1. 
<![CDATA[  AND BB.PSPTNO <> #psptno1#  ]]>	

/*AND SH.SL_DT = TO_CHAR(SYSDATE, 'YYYYMMDD') */		/* 판매일자 */
<![CDATA[ AND (SH.SL_DT >= TO_CHAR(SYSDATE-30, 'YYYYMMDD') 
AND SH.SL_DT <= TO_CHAR(SYSDATE, 'YYYYMMDD') )	]]>	 		/*  판매일자  TEST @@@ */ 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.11.15(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:30 ~ 18:00  ==> 

- 롯데 면세점 회원통합 Prj[★]
- gloB VIP회원 신규가입 수정
1. 로컬 서버에서 여권번호 없이 VIP자격목록 조회 처리
==============================================================================================================
 
- 터미널 로그
devuser@dftestap:[/sw/logs/jeuslog/dftestap]#> cd dftestap_container1 
devuser@dftestap:[/sw/logs/jeuslog/dftestap/dftestap_container1]#> tail -f dftestap_container1_20161115.log	-- 실시간 로그 보기

[i3shop@newint i3shop logs]$ tail -f Default_Server_stdout.log		  -- 실시간 로그 보기
==============================================================================================================

- SecureCRT 한글 깨지는 현상 해결법 
1. Options > Session Options < Session Options(새창)
 1) Category > Terminal > Apperance > Windows and Text Apperance(오른쪽 탭)
 가. Fonts > Character encoding 값을 UTF-8로 변경 ==> Font 선택후, 스크립트를 반드시 "한글" 로 설정
http://blog.daum.net/minpc/18
==============================================================================================================
 
 ■■■■■■■■■■■■■■■■■■ 2016.11.16(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:30 ~ 18:00  ==> 

- 롯데 면세점 회원통합 Prj[★]
- 재발급(/cs01/CS01_ReIss_M.xml) 수정
1. 인도네시아 관리항목 : 대사관 정보 및 인니 롯데멤버스 카드 번호 추가 됨. - Read Only 처리
==============================================================================================================

- eclipse 시작 오류
1. 현상: 이클립스(eclipse)가 시동 시 응답없음. (building workspace 0%)
2. 조치:워크스페이스 폴더의 .metadata\.plugins\org.eclipse.core.resources\Prj[ects 에 들어가서 프로젝트들 
폴더를 다른 곳으로 옮겨놓고 시동하니 잘됨. 
==> C:\Dev_LDFS\workspace\.metadata\.plugins\org.eclipse.core.resources\.Prj[ects
http://dev.azki.org/entry/%EC%9D%B4%ED%81%B4%EB%A6%BD%EC%8A%A4eclipse%EA%B0%80-%EC%8B%9C%EB%8F%
99-%EC%8B%9C-%EC%9D%91%EB%8B%B5%EC%97%86%EC%9D%8C-building-workspace-0
==============================================================================================================

- 이클립스 속도 향상 (eclipse.ini 수정) 
http://blog.naver.com/PostView.nhn?blogId=sungback&logNo=90097516641
http://blog.naver.com/PostView.nhn?blogId=kdi0373&logNo=120167336633&redirect=Dlog&widgetTypeCall=true
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.11.17(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:30 ~ 18:00  ==> 2016년 수능일

- 롯데 면세점 회원통합 Prj[★]
- 재발급(/cs01/CS01_ReIss_M.xml) 수정
1. 인도네시아 관리항목 : 대사관 정보 및 인니 롯데멤버스 카드 번호 추가 됨. - Read Only 처리
==============================================================================================================

- 이클립스(eclipse) Dev_LDFS 재설정  
1. 이클립스(eclipse)가 시동 시 응답이 없어서 김동현 책임에서 Dev_LDFS 소스 파일 받아서 재 설정
C:\Dev_LDFS\workspace\LDFS\src\main\webapp\ui\ldfs
C:\Dev_LDFS\workspace\gloB2.ui\ui\gloB2
==============================================================================================================

-- 발급국가  국가코드 조회 @@@@
SELECT * 
FROM CO_MGR.CO_INTGCD
WHERE INTGCD_GROUP_ID = 'CO001'
   AND( INTGCD = 'KR' OR MGT_ATTR_VAL6 = '1')
;
==============================================================================================================

- 개발 서버, TEST 서버, 운용 서버 소스 반영
1. eclipse에서 커밋 ==> gloB 개발 서버에 반영
2. gloB 개발 서버에서 테스트 ==> 완료
3. gloB 개발 서버에서 프로그램 반영 요청 화면에서 반영 요청 ==> 짝수시간 30분 후 반영이 T에서 H로 바뀜
   (관리자가 승인하면 승인이 Y로 바뀌고 운영 서버에 반영됨) --> 개발 서버(즉시 반영), TEST 서버(2시간 마다 반영됨) 
==============================================================================================================

- xecure db
1. xecureweb 설치
==> fast_sync_encrypt64 에러 ==> 64비트용 전용(노트북은 32비트용으로 설치)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.11.18(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:30 ~ 18:00  ==>

- 롯데 면세점 회원통합 Prj[★] 
- 발급기준등록(/cs01/CS01_IssStdRgst_M.xml) @@@    ==> 완료 [★★★]
1. 발급국가코드, 등록기준일시, 변경기준일시 추가
==============================================================================================================

- Filtering 후 전체 콤보 생성
dsNatnCd1.Copy(dsNatnCd);	// 발급국가1 DS 복사 처리(2016.11.17, 진태만) 
 
// 발급국가D S Filter 처리[공통코드 CO001 중 코드 'KR’또는 관리속성값이 1인 국가만 필터링](2016.11.17, 진태만) 
dsNatnCd.Filter("intgcd==" + quote("KR") +"||intgcd==" + quote("JP") +"||intgcd==" + quote("TH") +"||intgcd==" + quote("ID") +"||intgcd==" + quote("GU") );
dsNatnCd.insertrow(0);						// 발급국가 insertrow 설정(2016.11.17, 진태만) 
dsNatnCd.SetColumn(0, "intgcd", "");		// 발급국가 code값 설정(2016.11.17, 진태만) 
dsNatnCd.SetColumn(0, "intgcdNm", "전체");	// 발급국가 name값 설정(2016.11.17, 진태만)  
dvIssStdInqryCndt.coNatnCd.Index = 0;		// 발급국가 포커스 설정(2016.11.17, 진태만) 

// 발급국가1 DS Filter 처리[공통코드 CO001 중 코드 'KR’또는 관리속성값이 1인 국가만 필터링](2016.11.17, 진태만) 
dsNatnCd1.Filter("intgcd==" + quote("KR") +"||intgcd==" + quote("JP") +"||intgcd==" + quote("TH") +"||intgcd==" + quote("ID") +"||intgcd==" + quote("GU") );
dsNatnCd1.insertrow(0);						// 발급국가 insertrow 설정(2016.11.17, 진태만) 
dsNatnCd1.SetColumn(0, "intgcd", "");		// 발급국가 code값 설정(2016.11.17, 진태만) 
dsNatnCd1.SetColumn(0, "intgcdNm", "선택");	// 발급국가 name값 설정(2016.11.17, 진태만)  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.11.19(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 09:15 ~ 19:00  ==> 

- 주말  
098:00 기상(비와서 축구 안 감)
08:20 조식(라면) 
09:30 진료(명소아과): 수종 감기
09:50 조제(래미안 나나 약국): 수종 감기 
11:00 귀가
14:00 낮잠
17:00 기상
18:00 석식(베트남 쌀국수)
18:50 이마트(장인 신발 구입)
19:30 종료 
20:00 귀가 
22:30 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.11.20(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==>  

▦ 조기축구
06:30 기상
06:50 자전거(문영APT -> 대림운동장)
07:01 대림운동장 
07:10 솟게임
08:00 게임 ==> 2게임함
12:00 종료
12:30 중식(서울식당)
13:20 종료
14:00 서울식당==> 수춘형,최선형, 동주형, 형근이형, 태우: 내가 쏨(3만 6천 원)
16:00 종료
16:30 귀가
19:40 피자(요기요): 맛이 없었음
22:30 취침
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.11.21(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:30 ~ 21:00  ==>  석식(빵, 맛브레드 대림점), 루옌 첫 출근(광명테크솔루션), 출입카드 수령(신한 체크 카드), 장덕수 과장 투입(L-CAMP)

- 롯데 면세점 회원통합 Prj[★] 
- 국적별 카드발급현황(/cs01/CS01_BydayCardIssPrsts_M.xml) @@@ 
1. 조회조건- 점코드(해외) 추가, 발급국가 추가, 발급현황조회-인니,태국 추가.
2. 점에는 해외 점 포함
<!-- 멀티 테이블(SL_STR_INFO) 코드 조회 -->
 <select id="co02.code.selectTableMultiComboLoadStoreCode"  parameterClass="parameterMap" resultClass="resultMap">
	    <dynamic>
 </select> 
--------------------------------------------------------------------------------------------------------------

SELECT AA.NATN_CD, ISS_STR_CD AS 발급점코드, GL2_ISS_STR_CD AS GL2발급점코드, AA.*
FROM CS_VIP_ISS AA /* CS_VIP발급 TB */ 
WHERE AA.NATN_CD <> 'KR'
;

SELECT BB.NATN_CD, BB.*     
FROM  CS_VIP_MEMB BB /* CS_VIP회원 TB */   ---> No Data
WHERE  BB.NATN_CD <> 'KR'
;

SELECT  CC.STR_CD AS 점코드, CC.*
 FROM  SL_STR_INFO CC  -- SL_점정보 TB
 --   WHERE  BB.NATN_CD <> 'KR'
; 

SELECT  DD.GL2_STR_CD AS GL2점코드 
``, DD.*   ```--  , AA.ISS_STR_CD AS 발급점코드,  AA.GL2_ISS_STR_CD AS GL2발급점코드
FROM  SL_STR_INFO_GL2 DD  -- SL_점정보2 TB
--   WHERE  BB.NATN_CD <> 'KR'
  ;
-- =========================================================================================================
 
- ldfs[41. gloB] (MiPlatform Prj[ect Manager에서)
1. Name: ldfs
2. Desc: 41. gloB
3. Start XML: C:\Dev_LDFS\workspace\LDFS\src\main\webapp\ui\ldfs\LDFS_GLOB_start.xml
4. Working Folder: C:\Dev_LDFS\workspace\LDFS\src\main\webapp\ui\ldfs
5. Character Set: utf-8
BaseUrl: C:\gloB2_dev\workspace\gloB2.ui\ui\gloB2\DefApp\Win32\
Script Url:
--------------------------------------------------------------------------------------------------------

- gloB2[42. gloB2(해외)] (MiPlatform Prj[ect Manager에서)
1. Name: gloB2
2. Desc: 42. gloB2(해외)
3. Start XML: C:\gloB2_dev\workspace\gloB2.ui\ui\gloB2\gloB2_start.xml   
		1) gloB2_start.xml 파일 용량 92KB 확인(4KB로 변경되면 신규 파일을 적용: gloB2_start_local.xml @@@
		2) C :\gloB2_dev\workspace\gloB2.ui\ui\gloB2\gloB2_start_local.xml   
4. Working Folder: C:\gloB2_dev\workspace\gloB2.ui\ui\gloB2
5. Character Set: utf-8  
--------------------------------------------------------------------------------------------------------

- gloB2_02[42. gloB2(해외)_02] (MiPlatform Prj[ect Manager에서)  ==> TEST @@@ ==>
1. Name: gloB2_02
2. Desc: 42. gloB2(해외)_02
3. Start XML: C:\Dev_LDFS\workspace\gloB2.ui\ui\gloB2\gloB2_start.xml
		1) gloB2_start.xml 파일 용량 92KB 확인(4KB로 변경되면 신규 파일을 적용: gloB22_start_local.xml @@@
		2) C :\gloB2_dev\workspace\gloB2.ui\ui\gloB2\gloB22_start_local.xml   
4. Working Folder: C:\Dev_LDFS\workspace\gloB2.ui\ui\gloB2
5. Character Set: utf-8  
==============================================================================================================

- 루옌 직장 첫 출근(2번째: 2015.07.21(화)에 3일 출근하고 그만 둠)
1. 광명테크솔루션(서울 금천구 가산동 481-2, 02)855-9100)  --> http://www.pcbassembly.co.kr
2. 광명테크솔루션(문영A -> 남구로역 5번 출구 -> 육교(너무 힘듬) -> 광명테크솔루션) 
==============================================================================================================

- 반출관리
1. 최이사님이 일과 후 몰래 하라고 지시함
2. 담당자 ==> 고의정 사원: 010-3200-4063  --> 19시에 미팅(취소): 관련 자료 메일로 준다고 함
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.11.22(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 21:00  ==> 석식(도시락, GS25 소공점) 

- 롯데 면세점 회원통합 Prj[★] 
- 기간별 카드발급현황(/cs01/CS01_PrdByCardIssPrsts_M.xml) @@@    ==> 완료 [★★★]
1. 조회조건- 점코드(해외) 추가, 발급국가 추가, 대사관 카드 컬럼 추가
==============================================================================================================

-- 국적 조회 @@@  --> E58146943[여권번호 조회]
SELECT  xdbutl_acct.xdbpkg.xdb_fsdec('LDFS','LDFS','LDFS','NORMAL', B.PSPTNO) AS 국적_번호
  , NATLT_CD AS 국적
    , A.* 
FROM  SL_MGR.SL_DPTCTR_CUST_INFO A
   , SL_MGR.SL_PSPT_RCGNT_NO  B
WHERE A.PSPT_RCGNT_NO > 60100000
  AND A.VIP_NO IS NULL
  --AND A.VIP_NO = 'E58146943'    -- 여권번호
  AND A.PSPT_RCGNT_NO = B.PSPT_RCGNT_NO
ORDER BY A.PSPT_RCGNT_NO
 ;
-- =========================================================================================================
 
- Oracle SQL Developer 팁 몇가지
http://mkeasy.inmu.net/wp/%EC%98%A4%EB%9D%BC%ED%81%B4-oracle-sql-developer-%ED%8C%81-%EB%AA%87%EA%B0%80%EC%A7%80/
1. SQL에디터에서 줄번호 보이게 설정
 1) 도구 / 환경설정 / 코드 편집기 / 행 여백 / 행 번호표시에 체크
2. Toad와 같이 테이블 정보보기 단축키 
 1) SHIFT + F4
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.11.23(수) 작업 ■■■■■■■■■■■■■■■■■■ \
---> 08:00 ~ 18:00  ==>  종료 회식(롯데면세점, 18:30 ~12:30): 장군보쌈(최이사님, PM, 김책임, POS)
 
- 롯데 면세점 회원통합 Prj[★] 
- 회원정보관리(/cs01/CS02_MembInfoMgt_M.xml)   @@@ 
1. 인도네시아 관리항목(대사관 정보 및 인니 롯데멤버스카드번호), 발급국가 화면 추가 
==============================================================================================================

- 졸업증명서 발급
1. 계명대학교 홈페이지에서 발급
 1) 인터넷 발급: http://www.kmu.ac.kr  ==> tamario@naver.com / hp수종1**1@
==============================================================================================================
  
- 아이핀 발급(i-pin)  ==>  
1. tamario/ hp수종1**1@ --> hp수종1**1
2. 발급기관: 한국신용평가정보 
3. 아이핀 신원 확인(본인 휴대폰 아님)
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.11.24(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 21:00  ==> 석식(탕짜면, 남경)

- 롯데 면세점 회원통합 Prj[★] 
- 회원정보관리(/cs01/CS02_MembInfoMgt_M.xml)   @@@ 
1. 인도네시아 관리항목(대사관 정보 및 인니 롯데멤버스카드번호), 발급국가 화면 추가 
==============================================================================================================

- PL/SQL Develper 라인센스[DBMS 관리 프로그램]
Code: jw6frj46k6db55y2yskp43elmjlhsmthl2pcj8ptd35r
s/n: 1883678366
Pw: xs374ca
==> plsqldev1106.exe 업그레이드
------------------------------------------------------------------------------------------------------

- 올챙이[DBMS 관리 프로그램]
http://cafe.naver.com/aonenetworks/706

- squirrel SQL[DBMS 관리 프로그램]
http://opennaru.tistory.com/86
https://www.google.co.kr/#q=squirrel+sql+%ED%95%9C%EA%B8%80
==============================================================================================================

- 로지텍 MK240 마우스, 키보드 콤보 구입
1. 밧데리 수명(키보드: 2명, 마우스: 1년, AA 2개), 가격: 27,280원
http://itempage3.auction.co.kr/DetailView.aspx?ItemNo=B239830970&frm3=V2
------------------------------------------------------------------------------------------------------

- 로지텍 MK240 키스킨 구입
1. 가격: 6,000원 
http://itempage3.auction.co.kr/DetailView.aspx?itemno=B283117787&frm3=V2
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.11.25(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 21:00  ==> 석식(탕짜면, 남경)

- 롯데 면세점 회원통합 Prj[★] 
- VIP회원구매실적조회(/cs01/CS02_VipMembPchsActrsltInqry_M.xml) @@@ 
1. 로그인 한 사용자 국가를  발급국가(자국)로 하는 VIP회원 구매실적 조회 
==> /cs/cs02/VipMembSQL.xml --> cs02.vipMemb.selectVipMembList 수정
==============================================================================================================

- VIP회원 해외점 구매실적 조회(/cs01/CS01_BydayCardIssPrsts_M.xml) @@@ 
1. gloB시스템 VIP회원의 해외 점 구매실적 및 구매상세 자료 조회 
==============================================================================================================

- SVN 문의 메일 보냄
1. 김민규 책임: 010-4437-8859
---------------------------------------------------------------------------------------

- SVN 로그인 
1. gloB: svn://10.50.13.41/svn ==> mpgift1/1234, 신성훈/ldf 
2. gloB2: svn://10.50.5.41/svn ==> mpgift1/1234
==============================================================================================================

- Grid 넓이 자동 Resize
<Split BKColor="red" Height="50" Id="spHorz" Left="1255" Top="740" Visible="FALSE" Width="1">
	<Contents>
		<LeftOrTop>
			<Bind BindType="Resize" CompID="dvVipMembInqryCndt"/> 
			<Bind BindType="Resize" CompID="shVipMembList"/>
			<Bind BindType="Resize" CompID="grVipMembList"/>
			<Bind BindType="Resize" CompID="grVipMembOvsStrPchsActrsltList"/>
			<Bind BindType="Resize" CompID="grVipMembPchsActrsltDtlList"/> 	<!--//  VIP회원구매실적상세목록 DS 추가 //-->
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

■■■■■■■■■■■■■■■■■■ 2016.11.26(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 09:15 ~ 19:00  ==> 첫 눈 옴

- 주말  
09:00 기상
09:20 조식(라면)
10:30 집출발(수종)
11:00 대림역(6511번 버스)
11:30 봉천중(첫 눈 옴)
11:50 글빛정보도서관(2층: 어린이도서관): 수종이 책 읽어 줌
13:00 종료
13:40 중식(돈까스, 뚝불): 포마토 식당
15:00 봉천사거리(6511번 버스)
15:30 귀가
19:00 석식
22:30 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.11.27(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==>  

▦ 조기축구
06:30 기상
07:10 자전거(문영APT -> 대림운동장)
07:20 대림운동장 
07:40 솟게임(전날 비가 와서 축구화 젖음)
08:00 게임 ==> 2게임함 --> 1게임 레프트 윙으로 뜀
10:00 종료
10:30 중식(뼈해장국: 전복 꽃게 감자탕&감자탕 식당): 회에서 쏨
11:30 종료
11:50 양평해장국(뼈해장, 3그릇: 양평해장국): 테이크아웃 
12:30 귀가
19:00 석식
22:30 취침
==============================================================================================================

- 인터넷 주문(23시)
1. 선풍기, 백팩, 마우스 패드 구매
 1) 펠로우즈 마이크로밴 크리스탈 젤 마우스패드(91141), 가격: 13,400원 ==> http://www.enuri.com/detail.jsp?modelno=10487112
 2) HP 노트북 백팩_H5M90AA, 가격: 30.560원 ==> http://www.enuri.com/detail.jsp?modelno=10487112
 3) 윈드피아 WINDPIA-6A [6인치 선풍기, 중고품], 가격: 10,400원 ==> http://www.enuri.com/detail.jsp?modelno=12225591
2. 잉크 => 구매 못 함  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.11.28(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:10 ~ 21:00  ==> 석식(빵, 맛브레드 대림점)

- 롯데 면세점 회원통합 Prj[★] 
- 회원정보변경이력조회(/cs01/CS02_MembInfoChngHistInqry_M.xml) @@@   ==> 완료 [★★★]
1. 발급국가 추가
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.11.29(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:10 ~ 21:00  ==> 석식(탕짜면, 남경)

- 롯데 면세점 회원통합 Prj[★] 
- 상담등록(/cs04/CS04_CnslRgst_M.xml) @@@ 
1. 발급국가”(NATN_CD)  추가 함(Read Only)- VIP회원일 경우 만 조회 됨  ==> 완료 [★★★]
==============================================================================================================

- mtputty 설치
==============================================================================================================

- MiPlatform 서버 단축키 셋팅
01. gloB 개발 서버(LDFS_dev) ==> http://devap.ldfs.com 
C:\Windows\System32\MiUpdater331.exe -V 3.3 -D Win32U -R FALSE -K LDFS_dev -L TRUE -LE TRUE -BI "%component%next_upd.gif"
02. gloB 테스트 서버(LDFS_test) ==> http://testap.ldfs.com
C:\Windows\System32\MiUpdater331.exe -V 3.3 -D Win32U -R FALSE -K LDFS_test -L TRUE -LE TRUE -BI "%component%next_upd.gif" 
51. gloB2 개발 서버(gloB+_dev) ==> http://devglobplus.lottedfs.co.kr
C:\devglobplus\System32\MiUpdater331.exe -V 3.3 -D Win32U -R FALSE -K gloB2_dev -L TRUE -LE TRUE -BI "%component%next_upd.gif"   
52. gloB2 테스트 서버(gloB+_test) ==> http://testglobplus.lottedfs.co.kr
C:\Windows\System32\MiUpdater331.exe -V 3.3 -D Win32U -R FALSE -K gloB2_test -L TRUE -LE TRUE -BI "%component%next_upd.gif"  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.11.30(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:10 ~ 21:00  ==> 석식(잡채밥, 남경)

- 롯데 면세점 회원통합 Prj[★] 
- 국적별 카드발급현황(/cs01/CS01_BydayCardIssPrsts_M.xml) 수정 ==> 완료 [★★★]
1. 카드발급상세내역 Grid: 해외 국가코드 조회 가능
==============================================================================================================

- VIP회원구매실적조회 원복 처리
/cs02/CS02_VipMembPchsActrsltInqry_M.xml
==============================================================================================================

- 국가코드(NATN_CD)가 추가된 테이블
CS_VIP_MEMB: CS_VIP회원 
CS_VIP_ISS: CS_VIP발급
CS_VIP_MEMB_RMKS: CS_VIP회원비고
CS_VIP_MEMB_MKTG_ATTR: CS_VIP회원마케팅속성
CS_VIP_MEMB_CHNG_HIST: CS_VIP회원변경이력 
--------------------------------------------------------------------------------------------

-- CS_VIP회원 정보 조회 @@@@@
SELECT  M.NATN_CD	AS 국가코드	        /* 국가코드 추가(2016.11.02, 진태만) */
      , M.RGST_DTTZ AS 국가코드	      /* 등록기준일시 추가(2016.11.02, 진태만) */
      , M.CHNG_DTTZ AS 변경기준일시   /* 변경기준일시 추가(2016.11.02, 진태만) */ 
      , M.RGSTPSN_ID AS 등록자ID    
      , M.RGST_DTTM AS 등록일시 
      , M.*
FROM CS_VIP_ISS M		-- CS_VIP_MEMB, CS_VIP_MEMB_CHNG_HIST, CS_VIP_ISS, CS_VIP_MEMB_RMKS, CS_VIP_MEMB_MKTG_ATTR
WHERE 1 = 1  
 AND M.NATN_CD IS NULL 
ORDER BY M.RGST_DTTM DESC
 ; 
============================================================================================================== 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
