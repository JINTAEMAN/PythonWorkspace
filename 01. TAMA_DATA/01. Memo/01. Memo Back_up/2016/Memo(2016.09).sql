

�����������������������������������������������������������
+---------------------------------------------// Memo(2016.09) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2016.09.01(��) �۾� �������������������
---> 06:30 ~ 21:00  ==> 

- �ٶ� �ڸ��� ������ ����ERP Prj[��]
- ���� �귣�� ����
1. select box�귣�� ��ȸ ����
 1) ���� �귣�带 ����Ʈ�� ����
 2) ��ü �귣�� ��ȸ�϶��� brndSelAllYn="Y" �� ����
 --> �귣����ü��ȸ����(brndSelAllYn): N:����� �귣�� ��ȸ(D), Y:��ü �귣�� ��ȸ)  
 ==> ���� �׽�Ʈ �Ŀ� ���߼����� �ݿ��� ��
 3) ��������(CM:����, CS:��, PN:��ȹ, PO:����, PP:����, SA:����, SB:����, SM:��������, SP:������Ż, SR:���¾�ü, EI:������, WM:����)
==============================================================================================================

- �����ڵ� ��ȸ @@@
 SELECT CD        AS GRP_CD 
	     , DTL_CD    AS CODE 
	     , DTL_NM    AS CODE_NM
	     , SORT_ORD
	  FROM CM_CD_D
	 WHERE 1=1
	   AND ( BUKRS      =  'F100' /**P*/
		 OR BUKRS      = '0000'
		  )  
		   AND JOB_GBN    =  'PN' /**P*/             --�������� 
	   AND CD         =  '001' /**P*/         --�ڵ�
	   AND USE_YN     = 'Y'
;
-----------------------------------------------------------------------------------

SELECT /* selectCommCdList - �����ڵ� ��ȸ(/CommCode_sqlmap.xml) */ 
		       GRP_CD
		     , CODE
         
             , '['||CODE||']'||CODE_NM      AS CODE_NM
             
             
             , CODE_NM						AS ORG_CODE_NM
		  FROM (
				SELECT CD        AS GRP_CD
				 
					 , DTL_CD    AS CODE
					 
					 , DTL_NM    AS CODE_NM
					 , SORT_ORD
				  FROM CM_CD_D
				 WHERE 1=1
				   AND ( BUKRS	  =  'F100' /**P*/
				   	  OR BUKRS	  = '0000'
				   	   ) 
				 	 /* jobGbn�� *�� �ƴϸ�(����: jobGbn�� null�� �� ����)[ó����: 2016.06.09, by ���¸�]  */
		           		AND JOB_GBN    =  'PN' /**P*/	 		--��������
		              
				    
				   AND CD         =  '300' /**P*/		 --�ڵ�
				   AND USE_YN     = 'Y'
				 
		       )
		 ORDER BY SORT_ORD
		        , CODE
;
==============================================================================================================

- select box ������ �׽�Ʈ @@@@  ==> ���Ҹ����ݾ���ȸ(/SB_ClpyClsnAmtInqy.xml) ����
<!--// 01. ih_select_commcd �귣�� ��ȸ UDC ó��: ����ڱ���(grpCd): 001, ����ڱ���(jobGbn): PN, �귣����ü��ȸ����
(brndSelAllYn): N:����� �귣�� ��ȸ(D), Y:��ü �귣�� ��ȸ) //--> 
<w2:ih_select_commcd id="sbx_brndCd" grpCd="001" jobGbn="PN" brndSelAllYn="Y" displayType="1" 
	allOption="false" appearance="minimal" chooseOption="false" chooseOptionLabel="����"
	direction="auto" disabled="false" disabledClass="w2selectbox_disabled" displayMode="label"  
	 optionOrder="false" ref="data:dma_requestData.brndCdSrch" style="width: 50px;" submenuSize="auto"
	syncYn="false" textAlign="center"> 
</w2:ih_select_commcd>

<!--// 02. ih_select_commcd_m �귣�� ��ȸ UDC ó�� //-->
<w2:ih_select_commcd_m id="sbx_brndCd" grpCd="001" jobGbn="PN"  visibleRowNum="5" displayType="1" chooseOption="false"
	style="width: 130px;height: 21px;" search="start" interactionMode="" displayMode="label" syncYn="false" useKeywordHighlight="false"
	editType="select" submenuSize="auto" ref="" chooseOptionLabel=""
	ev:onchange="">
</w2:ih_select_commcd_m>  
 
<!--// 03. ih_select_commcd_atc �귣�� ��ȸ UDC ó��(AutoComplete) //-->
 <w2:ih_select_commcd_atc id="sbx_brndCd" grpCd="001" jobGbn="PN" brndSelAllYn="N" appearance="minimal" allOption="false" 
 chooseOption="false" chooseOptionLabel=""  
	direction="auto" disabled="false" disabledClass="w2selectbox_disabled" 
	displayMode="label" displayType="1" mandatory="true"
	optionOrder="false" ref="data:dma_requestData.brndCdSrch" style="width:130px;" userData1="data" submenuSize="auto" 
	syncYn="2" ev:onchange="scwin.sbx_brndCd_onchange">
</w2:ih_select_commcd_atc> 

<!--// 01. ih_select_commBrnd �귣�� ��ȸ UDC ó�� //-->
<w2:ih_select_commBrnd id="sbx_brndCd" grpCd="001" jobGbn="PN" displayType="1" disabledClass="w2selectbox_disabled" appearance="minimal"
	style="width: 148px;height: 21px;" direction="auto" chooseOption="false" allOption="false" displayMode="label"
	optionOrder="false" disabled="false" submenuSize="auto">
</w2:ih_select_commBrnd>

<!--// 02. ih_select_commBrndd_m �귣�� ��ȸ UDC ó�� //-->
<w2:ih_select_commBrnd_m id="sbx_brndCd" grpCd="001" jobGbn="PN" brndSelAllYn="Y" displayType="1" 
disabledClass="w2selectbox_disabled" appearance="minimal"
	style="width: 148px;height: 21px;" direction="auto" chooseOption="false" allOption="false" displayMode="label"
	optionOrder="false" disabled="false" submenuSize="auto">
</w2:ih_select_commBrnd_m>

<!--// 03. ih_select_commBrndd_atc �귣�� ��ȸ UDC ó�� //-->
<w2:ih_select_commBrnd_atc id="sbx_brndCd" grpCd="001" jobGbn="PN" brndSelAllYn="Y" displayType="1" 
disabledClass="w2selectbox_disabled" appearance="minimal"
	style="width: 148px;height: 21px;" direction="auto" chooseOption="false" allOption="false" displayMode="label"
	optionOrder="false" disabled="false" submenuSize="auto">
</w2:ih_select_commBrnd_atc>
 ==============================================================================================================

[09/01] [���� ����] ���� ó���߽��ϴ�. --> DEFC-0000003556   --> ���� �Ϸ�(����) @@@@
1. ����: ���κ� DEFAULT �귣�带 �����ϴ� �޴��� ������ �����ϴ� . 
2. ��ġ: ���� �޴� �� �������� ���� ȭ�鿡�� ��ǥ�귣�� �ʵ带 �߰��ؼ� �����ϰ� ������ �α��� �� ���ǿ���
��ǥ�귣���ڵ�(RPRS_BRND_CD)�� ��������ϴ�. Ȯ��;  
$w.log("[/quickmenu.xml] [RPRS_BRND_CD]"+ cmCommon.getSessionKey("RPRS_BRND_CD");		// ��ǥ�귣��
==============================================================================================================
 
[09/01] [���� ����] ���� ó���߽��ϴ�. --> DEFC-0000001766  --> �Ϸ� @@@@
1. ����: ������ ���� ��� ��ư, �޴� Ŭ���� �α��� �������� �̵�  
==============================================================================================================

- SONA ����
1. WAS�� ���� ó���϶�� ��.
http://172.16.41.114:23035/sonar/component_issues/index?id=kr.co.fila%3AFilaKoreaERP#resolved=false
==============================================================================================================

- �������� ���
������� ��, �α��� �ÿ���
������� �������� IE �̸�, ���ý��丮�� �����͸� Ȯ���ؼ� ������� ���ڿ� ���ϰ�,
������� �������� IE�� �ƴϸ�, "���ý��丮��" �� "HTML5 websql" �� �����͸� ��� Ȯ���ؼ�
1������ ����ϸ� ������� ����ϴ� ������ �����մϴ�.
 ----------------------------------------------------------------------------------------------------

* HTML5 websql ó�� �����ؼ��� ���� URL���� ��Ź�帳�ϴ�.
http://m.mkexdev.net/61
http://www.sqler.com/396957
http://xguru.net/624
http://roqkffhwk.tistory.com/210
==============================================================================================================

������������������� 2016.09.02(��) �۾� �������������������
---> 06:30 ~ 21:00  ==> 

- �ٶ� �ڸ��� ������ ����ERP Prj[��]
- ���ѱ׷캰 ���α׷����� �ϰ����(/CM_AuthGrpPgAuthBtchInput.xml)   --> ����
==============================================================================================================

- ��մܰ� ���(/SB_ClpyAgvCostCalc.xml) ����  ==> �Ϸ� @@@
1. �̿�����, �̿��ݾ� --> ��������, �����ݾ�
==============================================================================================================
 
- ���� ����(/SB_ClpyClsn.xml) ���� ==> �Ϸ� @@@
1. ������ ���� �����̸� ���� alert, ������ �ƴϸ� ���� ���� alert ó��
==============================================================================================================

������������������� 2016.09.03(��) �۾� �������������������
---> 09:00 ~ 20:00 ==> �����౸(06:00 ~ 08:00)

- �ָ�
06:00 ���
06:20 ������(����APT -> �븲���)
06:30 �븲���
06:30 ������(���� �ÿ�����)
07:30 ����(�������� ����ȸ���� �����౸��ȸ�Ѵٰ� ���� ��ħ) 
08:10 �Ͱ�
08:10 ����(��ġ���, ����� �Ĵ�): ȸ����� ��
08:30 �Ͱ�
09:30 ����(���ﰡ�����а��ǿ�): ���� ����
10:00 ����(���̾� ���� �౹): ���� ����
10:30 �븲�� -> �����տ�(�翺, ����)
11:20 �峭��(������): �����ϱ� --> ���� �峭������ ��û ���� ��
11:40 ���� ��ó ������� ����
13:00 �߽�(�˹�+���Ұ��): ���ӳø� â����
15:00 �Ͱ�
15:30 ����
19:00 ����(¥���2, ������: ���ٸ� ): ���
23:00 ��ħ
==============================================================================================================

������������������� 2016.09.04(��) �۾� �������������������
---> 07:40 ~ 18:10 ==> 

�� �����౸
07:00 ���
07:20 ������(����APT -> ��õ���: A����): ���� ���� ��
08:00 �� 36ȸ ��������û��� ���� �����
08:30 ����
09:00 ����(�ñ�): ���� ���� ���ٰ� ȸ������ ����� ����.(����, ���� �ۿ� ������)
09:00 �����̰� ���� ���ڰ� �ؼ� ���� ������ ������ ��
09:50 30�� ����(�븲3�� 1:1 �ű� 7��) --> �� ���� ���(�ű� 7�� 41�� ���� ���� ����̶� �� ����: ����� �� ������)
12:30 40�� ����(�븲3�� 0:0 �ű� 1��) --> �º����� 4:3 ��(����� ���� 2�� ������)
14:30 30�� ����(�븲3�� 4:2 �븲 1��) --> 4�� ����
15:00 40�� ����(�븲3�� 4:0 �븲 1��) --> 4�� ����
	==> 30��, 40��, 50�� ���� 4�� ����
16:00 ����(������ �ּ� �� ���� ����)
17:00 �ټ� �Ĵ�(�δ����) --> ȸ���� �� ==> ���� �� ��� ��
19:00 ��¡�� ��Ǭ�� ��ħ(ö���� ����) --> �ּ����� ��
20:30 ����
20:50 �Ͱ�
22:30 ��ħ
==============================================================================================================

������������������� 2016.09.05(��) �۾� �������������������
---> 06:30 ~ 21:00  ==> ����(��¥��(2), ����:�ӱ���, ������): û���� ��, ���� ������ �̻�� ö��

- �ٶ� �ڸ��� ������ ����ERP Prj[��]
- ��ǰ�̹��������ȸ(/CM_ProdImgListInqy.xml) ����  ==> 
1. Paging ó��
==============================================================================================================

- GV���� ���� �� DB�� �ֱ�
1. /CmProdImgListService.java ���Ͽ���
public String saveCmFileInfoProd(List<Map<String, Object>> paramList) {
	 
	Map<String, Object> info = new HashMap<String, Object>();
	Map<String, Object> param = new HashMap<String, Object>();
 
	if(null != paramList && paramList.size() > 0)		// ��ǰ�̹������ dataList�� �����ϸ�
	{ 
		for (int i = 0 ; i < paramList.size() ; i++) { 
			
			fileId = dao.selectCmFileId();
			sFileId = ""+ fileId;
		 
			if(fileId < 1) throw new ProcessException("÷������ ���̵� ������ �� �����ϴ�.");
			
			info = (Map<String, Object>) paramList.get(i); 
			
			if (i==0)  	// �̹��� ���ε� �õ� �̸�
			{
				fileIdArray =  sFileId;
			}
			else
			{
				fileIdArray = fileIdArray + ","+ fileId;		// ����ID Array
			}
	 
			param.put("list", paramList);  
			
			param.put("burks", info.get("GV_BUKRS"));		// �����ڵ�	 ===> ���� @@@
			param.put("fileId", fileId);			// ����ID	
			param.put("fileSeq", "1");	 				// �����Ϸù�ȣ
			param.put("filePhNm", info.get("filePhNm").toString().trim()); 		// ���� ���
			param.put("strgFlNm", info.get("strgFlNm").toString().trim()); 		// ���ϸ�
			param.put("orcpFlNm", info.get("orcpFlNm").toString().trim()); 		// �������ϸ� 
			param.put("fileExtnNm", info.get("fileExtnNm").toString().trim()); 	// ���� ����  
			param.put("fileSz", info.get("fileSz").toString().trim()); 		// ���� ������ 
			 
			param.put("usrId", info.get("GV_USR_ID"));		// �����ID		 ===> ���� @@@
			param.put("programId", info.get("GV_PROGRAM_ID"));		// PROGRAM ID     ===> ���� @@@
		 
	 		dao.insertCmFileProd(param);		// ��ǰ �̹��� ���� �Է�(DB)   
			}
		}
	 
		return fileIdArray;		 // ����ID Array
	}
}

2. /CmFile_sqlmap.xml ���Ͽ���
<insert id="insertCmFileProd" parameterType="HashMap"> 
	<![CDATA[
		INSERT 	/* CmFile_sqlmap.insertCmFileProd AS ��ǰ �̹��� ÷������ ���� */
		  INTO CM_FILE
			   (
				  BUKRS
				, FILE_ID
				, FILE_SEQ
				, FILE_PH_NM
				, STRG_FL_NM
				, ORCP_FL_NM
				, FILE_EXTN_NM
				, FILE_SZ
				, INPUT_PG_ID
				, INPUT_ID
				, INPUT_DTTM
				, UPDT_PG_ID
				, UPDT_ID
				, UPDT_DTTM
			   )
		VALUES
			   (
				 #{burks}				-- �����ڵ�
				, #{fileId}				-- ����ID
				, #{fileSeq}			-- �����Ϸù�ȣ
				, #{filePhNm}
				, #{strgFlNm}
				, #{orcpFlNm}
				, #{fileExtnNm}
				, #{fileSz}
				, #{programId} 		 -- PROGRAM ID  
				, #{usrId}				-- �����ID
				, SYSDATE
				, #{programId}		 -- PROGRAM ID  
				, #{usrId}				 -- �����ID
				, SYSDATE
			   ) 
	]]>
</insert>
==============================================================================================================

1. /CmFileController.java ���Ͽ���
/**
 * ��ǰ �̹��� ÷������ �ٿ�ε� 
 */
@RequestMapping("/cm/filedownAllProdIgm.do")
public ModelAndView getFileDownLoadAllProdIm(@RequestParam("xmlValue") String xmlValue, HttpServletRequest request, SessionToken sessionToken) {
  
	paramMap.put("brndCd", sBrndCd); 	// ��з�(�귣���ڵ�)
	paramMap.put("usrId", sUsrId); 		// �����ID
	paramMap.put("dwnKdIp", usrIP);		// �ٿ�ε�����IP
	paramMap.put("dwnCnt", list.size());	// �ٿ�ε尳��  
	sessionUtil.setSessionInfoParameterNoAdaptor(paramMap, request, programId);	// WebSquare Adaptor �����ϴ� ��쿡 ���� ���� ó�� 
  
	service2.saveCmFileProdIgm(paramMap);	// 01. ��ǰ�̹��� �ٿ�ε� ���� ����
}

2. /CmFile_sqlmap.xml ���Ͽ���
<insert id="insertProdIgmDnInfo" parameterType="HashMap">
		<selectKey keyProperty="imgDwSqorSeq" resultType="String" order="BEFORE">
			SELECT NVL(MAX(DWN_SQOR), 0) +1 FROM CM_STYL_IMG_DWN  	-- �̹�������
			WHERE 1=1  
		</selectKey>  
	<![CDATA[
		  INSERT /* CmProdImgList_sqlmap.insertProdIgmDnInfo AS ��ǰ�̹��� �ٿ�ε� ���� ���� */
		  INTO CM_STYL_IMG_DWN 
	           (  
	       		BUKRS            		-- �����ڵ�  
	           	, DWN_SQOR          -- �ٿ�ε����
	           	, BRND_CD    	 		-- �귣�� �ڵ� 
	        	, IMG_KD_CNTN 		-- �̹������г��� 
		  	 	, DWN_USR_ID 		-- �ٿ�ε�����ID 
		 		, DWN_USR_IP 		-- �ٿ�ε�����IP 
	  	 		, DWN_CNT 			-- �ٿ�ε尳�� 

  			 	, INPUT_PG_ID 		 -- ������α׷� ID 
	        	, INPUT_ID        		--�����ID 
	        	, INPUT_DTTM       --����Ͻ� 
	        	, UPDT_PG_ID       --�������α׷�ID 
	        	, UPDT_ID          	--������ID 
	         	, UPDT_DTTM        --�����Ͻ� 
	           ) 
	   		VALUES 
	          (  
	          	#{GV_BUKRS}					 	-- �����ڵ�  
	        	, #{imgDwSqorSeq}   -- �ٿ�ε����
	        	, #{brndCd} 				-- �귣���ڵ� 
	         	 
	         	, #{imgKdCntn}	 		-- �̹������г���
	         	, #{usrId} 		 			-- �ٿ�ε�����ID
		    	, #{dwnKdIp}	 		 	-- �ٿ�ε�����IP
		    	, #{dwnCnt}	 		 	-- �ٿ�ε尳�� 
	 
	      	  , #{GV_PROGRAM_ID} 	 --������α׷�ID 
	          , #{GV_USR_ID} 			--�����ID 
	          , SYSDATE 				 	--����Ͻ� 
	          , #{GV_PROGRAM_ID} 	 --�������α׷�ID 
	          , #{GV_USR_ID} 			--������ID 
	          , SYSDATE 			 		--�����Ͻ� 
	          )   
	]]>
 </insert> 
==============================================================================================================

- ��ǰ�̹��� ���� ���� ���� ��� ���� --> /CmFileController.java ���Ͽ���
String host = request.getServerName();
int port = request.getServerPort();
if(host.indexOf("http://")<0){
	host = "http://"+host;
}
String strDomain = host+":"+port;

//� SCM�� ��� �̹��������� host�� ����
if(host.toString().indexOf("172.16.41.212")>-1 || host.toString().indexOf("172.16.41.108")>-1
|| host.toString().indexOf("172.16.41.109")>-1 ) {
	strDomain = propertiesUtil.getFileUploadInfo("image2.url").toString();
}
==============================================================================================================

- ���� �ٿ�ε� ����
1. ���� ��� ���� �� ���� �߻�
 1) ���� ���: image/prodimg/
 2) ���� �� ���: /image2/web/image/prodimg/
==============================================================================================================
 
- indexOf: �� ���ڰ� ����ִ� ��ġ �˷��ִ� �Լ�
if(null != fullPath2 && !"".equals(fullPath2) && (fullPath2.indexOf("/prodimg") < 0)) {   
   // ��ǰ�̹��� ��ΰ� �����ϸ�  ==> �ش� ���ڰ� ����ִ� ��ġ�� �˷� �ݴϴ�.(���ڰ� ������ -1 ��ȯ)
	 fullPath2 = (String)"/image2/web"+ fullPath2.toString(); 
}
==============================================================================================================

[09/05] [���� ����] ���� ó���߽��ϴ�. --> DEFC-0000006154 --> �Ϸ� @@@@
1. ����: [���Ҹ���] ������ ����ó�� �Ǿ����� �޼��� �˸� ��� �߰�
==============================================================================================================
 
[09/05] [���� ����] ���� ó���߽��ϴ�. --> DEFC-0000006153 --> �Ϸ� @@@@
1. ����:  [��մܰ� ���]�̿������� ������������ ����
==============================================================================================================
 
[09/05] [���� ����] ���� ó���߽��ϴ�. --> DEFC-0000006156--> �Ϸ� @@@@
1. ����:  [��մܰ� ���] �� ���� �߰�, ��Ÿ�� �ڵ� �߰�
==============================================================================================================

������������������� 2016.09.06(ȭ) �۾� �������������������
---> 06:30 ~ 21:00  ==> ������ ���� Prj ������ ����ǥ�԰� 1�ð� ��� �ߴٰ� ��.

- �ٶ� �ڸ��� ������ ����ERP Prj[��]
- ���ѱ׷캰 ���α׷����� �ϰ����(/CM_AuthGrpPgAuthBtchInput.xml)   --> �Ϸ� @@@
==============================================================================================================

- ���ѱ׷캰 ���α׷�����(/CM_AuthGrpPgAuth.xml)  --> ���� 
==============================================================================================================

- WebSquare ����
1. ����: :  /CM_ProdImgListInqy.xml ���Ͽ���
07:39:31.048 00007 003585 websquare] WebSquare.BootLoader.globalEval: Error occurs during the execution.  
* message     : Invalid left-hand side in assignment

<<Internal JavaScript Source Block [/wqui/cm/CM_ProdImgListInqy.xml] Start>>
2. ����:  sScmFileDomain = "http://222.231.17.69:80"�� ó���ؼ� ������ �߻�
if(cmCommon.isNull(sScmFileDomain) == false && sScmFileDomain = "http://222.231.17.69:80")
{		
	imgfileFullNm2 = sScmFileDomain + imgfileFullNm;
}
else
{
	imgfileFullNm2 = "http://172.16.41.114:10090"+ imgfileFullNm;
}
 
3. ��ġ:  sScmFileDomain == "http://222.231.17.69:80"�� ���� ó��
==============================================================================================================

������������������� 2016.09.07(��) �۾� �������������������
---> 06:30 ~ 21:00  ==> ����(��¥��(3), ����(3): �ӱ���, ������, �̰���): û���� ��

- �ٶ� �ڸ��� ������ ����ERP Prj[��]
- ���ѱ׷캰 ���α׷�����(/CM_AuthGrpPgAuth.xml)  --> ����
1. ���Ѻ���׷� �˾�(/CM_AuthCopyGrp_P01.xml) ���� ����
==============================================================================================================

- Grid���� ����Ÿ ���� ���
1. grd_prodImgList, dma_requestData ����(/CM_ProdImgListInqy_P01.xml)
cmCommon.commSaveGridsData("/cmProd/saveUpProdImg.do", [grd_prodImgList], true, 
	"scwin.sbm_saveUpProdImg_submitdone", "1", "", {"dma_requestData":dma_requestData.getJSON()});	
	// 11. ��ǰ �̹��� ���ε� ����(����) 

2. dma_authGrpPgAuthCond, dma_authGrpPgAuthCond ����(/CM_AuthGrpPgAuth.xml) 
cmCommon.commSaveGridsData("/cmAuthGrpPg/saveAuthGrpMeueList.do", [grd_programAuthList], true, "scwin.sbm_saveAuthGrpMenuList_submitdone",
							"", "", {"dma_authGrpPgAuthCond":dma_authGrpPgAuthCond.getJSON()});  // �׷����� ó�� 
--> Grid ����Ÿ �� ���ص� chk �ڽ� ���� ����  ���� 

2. grd_prodImgList, dma_requestData ����(/CM_ProdImgListInqy_P01.xml) 
cmCommon.commSaveGridsData("/cmAuthGrpPg/saveAuthCopyList.do", [grd_authGrpList], true, "scwin.sbm_saveAuthCopyList_submitdone", 
				"", ["chk"], {"dma_requestData":dma_requestData.getJSON()});	 // ���Ѻ���[���Ѻ���׷� �˾�]
--> Grid ����Ÿ �� ���ص� chk �ڽ��� üũ�� �͸� ���� 

2. grd_prodImgList, dma_requestData ����(/CM_ProdImgListInqy_P01.xml) 
if(confirm(cmCommon.formattingMessage(FILAErpMessage.INF_0006, "����"))){		 
			cmCommon.commSaveGridsData("/cmAuthGrpUsr/saveAuthGrpUsrNewList.do", [grd_authGrpUsrList], true, "scwin.saveAuthGrpUsrNewList",
			"", ["chk"], "");		// ���ѱ׷캰 ����� ��Ȳ ����
--> Grid ����Ÿ �� ���ص� chk �ڽ��� üũ�� �͸� ���� 
			}	

3. grd_menuList, grd_authGrpList ����(/CM_AuthGrpPgAuthBtchInput.xml)
cmCommon.commSaveGridsData("/cmAuthGrpPg/saveReflAuthGrpList.do", [grd_menuList, grd_authGrpList], true, 
"scwin.sbm_saveReflAuthGrpList_submitdone", "", ["chk","chk"]); // �ݿ��� ���ѱ׷� ����[���ѱ׷캰 ���α׷����� �ϰ����]
--> Grid ����Ÿ �� ���ص� chk �ڽ��� üũ�� �͸� ����  
==============================================================================================================

- WebSquare ����[2016.09.07(��)] @@@
1. ����: :  /CM_AuthCopyGrp_P01.xml ���Ͽ���
* message     : Unexpected identifier 
<<Internal JavaScript Source Block Start>>
[0001]
[0002]		 
[0003]		
 
2. ����: scwin.btn_authCopy_onclick k�� ó���ؼ� ������ �߻� ==> 
	   ���� ����--> unexpected identifier ������ �ߴµ� �ؼ��ϸ� ����ġ ���� �ĺ���(identifier) �� ���Դٴ� �ǹ��̴�.
scwin.btn_authCopy_onclick k = function() {
}
 
3. ��ġ: scwin.btn_authCopy_onclick = function() �� ����
==============================================================================================================

- WebSquare ����[2016.09.07(��)] @@@
1. ����: :  /CM_AuthCopyGrp_P01.xml ���Ͽ���
 message     : Unexpected token {
<<Internal JavaScript Source Block Start>>	
 
2. ����: sif(cmCommon.isNull(ibx_usrId.getValue()) { �� ó���ؼ� ������ �߻� ==> (�� ��� { ���� �߻�

3. ��ġ: if(cmCommon.isNull(ibx_usrId.getValue())) { �� ����
==============================================================================================================
 
- �α���-����(/CM_LoginHdof.xml) ����
1. ��й�ȣ �ϵ� �ڵ����� �ڵ� ������ �� ����
==============================================================================================================

- ����� ����(/CM_UsrMngm.xml)���� ���»� ����Ÿ ���� �ȵ�
1. ����(��ü) �����ID�� ����� �͸� �����ϵ��� ����(��ü) �����ID �ߺ�üũ�� �ϵ��� ����
if ("U" == grd_usrMngmList.getFocusedRowStatus()) { 	// ���� �̸�
	if (sbx_usrKd.getValue() == "02" || sbx_usrKd.getValue() == "03") {   // ����ڱ����� '����', '���»�' �̸� 
		if(scwin.isShopVndrDplcChkYn == false){ 	// ����/���»� �ߺ� üũ ���� 
			var shopLoginIdOld = dma_requestData.get("shopLoginIdSrch");	// �˻�-����(��ü) �����ID
		 
			if(ibx_shopLoginId.getValue() != shopLoginIdOld) { 	// ����(��ü)�����ID�� ���� �Ǿ�����
				alert("[����(��ü)�����ID] ����(��ü)�����ID�� ���� �Ǿ����ϴ�.\n�ߺ�üũ�� �����Ͽ� �ֽñ� �ٶ��ϴ�."); 
				btn_joinInfoShopChk.focus();
				return; 
			}
		}
	}
}
==============================================================================================================

- �����  ==> �̴�ȩ���� ���� Ȯ���� ��
1. SCM ����
http://srm.fila.co.kr/websquare/websquare.html?w2xPath=/wqui/cm/CM_LoginHdof.xml

2. POS ����
http://tpos.fila.co.kr/websquare/websquare.html?w2xPath=/wqui/cm/CM_LginShopPotal.xml

3. SRM ����
http://srm.fila.co.kr/websquare/websquare.html?w2xPath=/wqui/cm/CM_LoginVndrMbl.xml
==============================================================================================================

- ����� �͹̳�
1. 01. � S[FilaK]  ==>  172.16.41.105, scmadm / !dlatl01
2) ��ǰ �̹��� Ȯ��
[fkerpwas1(scmadm):/home/scmadm] cd /image2/web/image/prodimg  

2. 02. ���� S[FilaK]  ==>  172.16.41.114, scmadm / !dlatl00
==============================================================================================================

������������������� 2016.09.08(��) �۾� �������������������
---> 06:30 ~ 21:00  ==>  

- �ٶ� �ڸ��� ������ ����ERP Prj[��]
- ����ں� ���α׷��߰�����(/CM_UsrPgAuth.xml)  --> ����
1. ���� ���� ����� �˾�(/CM_AuthCopyUsr_P01.xml) ���� ����
==============================================================================================================

[09/08] [���� ����] ���� ó���߽��ϴ�. --> DEFC-0000006299 --> �Ϸ� @@@@
1. ����: [�α���-����] ��й�ȣ���� ���� �Ǵ� ��Ű �Է� �� �α��� ��ư���� ��Ŀ�� �̵� �ǰ� ����
==============================================================================================================
 
[09/08] [���� ����] ���� ó���߽��ϴ�. --> DEFC-0000005953 --> �Ϸ� @@@@
1. ����:  [�α���-������Ż] ��й�ȣ �Է� �� ��Ŀ���� �α��� ��ư���� ���� ���ֽð� ���� ������ �α��� �����ϰ� ó��
==============================================================================================================
 
- ��ǰ �̹��� ��� ������ �� 410 (Gone) ���� ����(400����)
1. 410 (Gone): �������� block ��Ŵ(��ȭ�� ����)
http://222.231.17.69/image/prodimg/2015/1100/F1CDX0212/F1CDX0212_BBK/F1CDX0212_01.jgp 410 (Gone)
---------------------------------------------------------------------------------------------------------

- ��ǰ �̹��� Ȯ�� ���� ���
[fkerpwas1(scmadm):/home/scmadm] cd /image2/web/image/prodimg 
==============================================================================================================
 
http://222.231.17.69/image/prodimg/2015/1100/F1CDX0211/F1CDX0211_WWT/F1CDX0211_01.jpg  
cd /image2/web/image/prodimg/2015/1100/F1CDX0211/F1CDX0211_WWT 
==============================================================================================================
 
������������������� 2016.09.09(��) �۾� �������������������
---> 06:30 ~ 20:30  ==> ����(��¥��, �ӱ���): û���� ��

- �ٶ� �ڸ��� ������ ����ERP Prj[��]
- ���ѱ׷캰 ����ڵ��(/CM_AuthGrpMngm.xml)  --> ����
==============================================================================================================

- ��ǰ �̹��� Ȯ�� ���� ���
cd /image2/web/image/prodimg/2016/1100/F1MRY0051/F1MRY0051_BWT 
http:://222.231.17.69/image/prodimg/2016/1100/F1MRY0051/F1MRY0051_BWT/F1MRY0051_BWT_01.jpg

222.231.17.69/image/prodimg/2016/1100/F1MRY0051/F1MRY0051_BWT/F1MRY0051_BWT_01.jpg

total 1120
drwxr-xr-x    2 root     staff          4096 Sep  3 10:43 .
drwxr-xr-x    3 root     staff          4096 Sep  2 17:50 ..
-rwxr-xr-x    1 root     staff        141664 Jan 27 2016  F1MRY0051_BWT_01.jpg
-rwxr-xr-x    1 root     staff        162313 Jan 27 2016  F1MRY0051_BWT_02.jpg
-rwxr-xr-x    1 root     staff        150039 Jan 27 2016  F1MRY0051_BWT_03.jpg
-rwxr-xr-x    1 root     staff         88784 Jan 27 2016  F1MRY0051_BWT_04.jpg
[fkerpwas1(scmadm):/image2/web/image/prodimg/2016/1100/F1MRY0051/F1MRY0051_BWT] 
==============================================================================================================

http://scm.fila.co.kr:10090/websquare/websquare.html?w2xPath=/wqui/cm/CM_LoginHdof.xml#02. ����S[SCM] 
==============================================================================================================

- ��Ÿ�� LIKE ����
1. AND M.STYL_CD LIKE '%'|| #{stylCd} || '%'		-- ��Ÿ��(F1CDY0) 
  -- LIKE #{clpyYymmSrch} || '%'	 

2, �׽�Ʈ(��Ÿ��: F1CDY0)  ==> ���߼�������
Z:\Blob_Mig\�Կ��̹����׽���\web\image\prodimg\2016\1100
==============================================================================================================

- ����Ŭ ���ϵ� ī��
SQL> SELECT employee_id, last_name
        FROM employees
        WHERE last_name LIKE 'Au\%%' ESCAPE '\';
==============================================================================================================

������������������� 2016.09.10(��) �۾� �������������������
---> 10:10 ~ 21:00  ==> �ָ� �ٹ�, ������ ���� ���

- �ָ� 
06:00 ���
06:20 ������(����APT -> �븲���)
06:30 �븲���
06:30 ������
08:00 ����
08:30 ����(�������, ����� �Ĵ�): ȸ����� ��
09:00 �Ͱ� 
09:30 �븲�� -> ��迪
10:10 ���
06:40 ���� ����
12:00 �߽�(ȸ ����[����], ���̽Ĵ�): û���� ��
12:20 ���� ����
16:20 � �������� jboss jdbc���� ������ �� ==> SWA ����ȣ �븮�� � ���� �ش޶�� ��û��.
20:00 ����
20:10 ����(��¥��[8õ��], �ӱ���): û���� ��
20:40 �� ����(�ĸ��ٰԶ� �����) 
21:30 �Ͱ�
23:00 ��ħ
==============================================================================================================

- �ٶ� �ڸ��� ������ ����ERP Prj[��]
- ���ѱ׷캰 ����ڵ��(/CM_AuthGrpMngm.xml)  --> �Ϸ� @@@
==============================================================================================================

- � ���� ����(��Ų������) --> SWA �븮�� �ش޶�� ��û��.
1. scm_dev ���� scm_build ����  ==> http://172.16.41.114:23030/jenkins/view/scm_dev����
2. scm_prod ���� ����� ==> scm_prod_restart_1, scm_prod_restart_2
==> scm_prod_restart_1: ���� #97 (2016. 9. 10 ���� 3:47:27) --> SWA �븮�� �������� �ذ�(�ٸ� ���� ���� ������ ������)
==> ũ�ҿ��� ���� �ϴٰ� ���� �߻� --> ����� ��.
==============================================================================================================

- ũ��(Chrome)���� ���� ����(��Ű ����, ��� ���� �� �����ϱ�)
1. ������ ����� �޴� �޴�(Ŭ��) > ����(S) > ��� ���� ǥ��(Ŭ��)
4.'��������' ���ǿ��� ������ ������ Ŭ���մϴ�.
5.'��Ű'���� ��� ��Ű �� ����Ʈ �����͸� Ŭ���մϴ�. 
==============================================================================================================

- Grid ����
1. dlt_authGrpUsrList.setRowJSON( dlt_authGrpUsrList.getRowCount()+1 , json);
==============================================================================================================

[09/10] [Ȯ�� ����] ���� ó���߽��ϴ�. --> DEFC-0000006351 --> �Ϸ� @@@@
1. ����: [������������]  
2. �ǰ�
  1) POS�� ��� ���������� ��й�ȣ�� ���������� ���� ���ֳ� SM�ܿ� ����
   ==> ����/���»� ����ڰ��� ȭ�鿡�� ���������� �� �� �ֽ��ϴ�. �� �κ��� ��å������ ���ֳ� SM�� ���� ������
        �����ϸ� �� ������ �Ǵܵ˴ϴ�.(���� �ο��� �������� �Ǵܿ� ���� ������ �����ϰ� �Ǿ� �ֽ��ϴ�.)
   2) SSO�ε� ����Ʈ���� ��й�ȣ�� ����
   ==> SSO �α��� ȭ���� �����ʿ��� ����, �����ϴ� ���� �ƴ϶� "�繫. �λ�"�� SSO�� ������ �ͼ� ���� ����ϴ� ���̶�
   �����ʿ��� ������ ���� �����ϴ�.
==============================================================================================================

[09/10] [Ȯ�� ����] ���� ó���߽��ϴ�. --> DEFC-0000006515  --> Ȯ�� �� @@@@
1. ����: [������������]  
2. �ǰ�
  1) SSO�� �����Ǳ⿡ ��й�ȣ�� ���渦 ���⼭ �� �ʿ䰡 ������ �մϴ�
   ==> ��й�ȣ�� ������ ���������� ��ȭ�Ǿ� �Ϲ������� �޴��� �����̳� �̸��Ϸ� �޵��� ������ �Ǿ��µ�
   ���� �ٶ� ERP������ ���������� �׳� �����ϵ��� ��ȹ �Ǿ����ϴ�. ����ڿ� ���ǰ� �ʿ��� ������ �Ǵܵ˴ϴ�.
   2) ���� ������� ��й�ȣ�� ������ �ʿ䰡 �������?
   ==> 
   3) ��ǥ�귣��� �Ϻ� �귣�尡 �ȶ�ϴ�. 
   ==> ����� ���� DB���� �귣���ڵ�(1130, 1180, 1220, 1230)�� �����ڵ�� TB�� ��� �� ������ ���Դϴ�. 
            SELECT  *    --DTL_NM
          FROM CM_CD_D  -- �����ڵ�� TB
            WHERE 1=1
                  AND ( BUKRS      =  'F100' 
                  OR BUKRS      = '0000'
                  )  
               AND JOB_GBN    =  'PN'         --�������� 
               AND CD         =  '001'   --�ڵ�
               AND  DTL_CD  = '1130'            -- �귣���ڵ� (1130, 1180, 1220, 1230)
               AND USE_YN     = 'Y'
   ; 
==============================================================================================================

������������������� 2016.09.11(��) �۾� �������������������
---> 07:40 ~ 18:10 ==> 

�� �����౸
07:00 ���
07:10 ������(����APT -> ��õ���: A����)
07:40 ���ư� ����(�� 36ȸ ��������û��� 4����)
08:00 50�� ����(�븲3�� 0:2 �ű�) --> �������� �Ǽ��� �Ѱ� �Ծ���. �Ƿ�, ü�� ��� �� ����.
10:00 40�� ����(�븲3�� 1:0 ��ȣ) --> �������� ��°� �־���. --> ��� ����
		==> �������� �Ӹ� ���� ��ȣ�� ���� ������ �ð� ������ ==> �ں���� ��� ��Ű�� ��� �簳��.
13:00 30�� ����(�븲3�� 1:1 �糲) --> �º�����(1:2) --> ��� ��Ű�۰� �ʹ� ������.
15:00 40�� ����(�븲3�� 0:1 �糲) --> 10���� �����̶� ����, ������� ���������� 1���Ӹ� �پ �� ��.
							��Ű�� ���� 2�� ������. --> 40�� �ؿ��
16:04 ����(������)
17:00 �ټ� �Ĵ�(����) --> ȸ���� ��
        --> 30�� 3��, 40�� �ؿ��, 50�� 3�� Ʈ���Ƿ� ���Ͽ�(ȸ����� ������ ���� ��뿡 ���� ���� --> �ͻ��
	    �� ������ ���� �θ�)
20:00 ��¡�� ��Ǭ�� ��ħ(ö���� ����) --> �⼮�����̶� ���������̶� ���� ������ �ο�.
	--> ������ �ο� ������ �Ѿ����鼭 �� ��ġ�� ���޾���.
	--> ���������� �ο� ������ �Ȱ� �η����� ���� ��ó����.
20:30 ����
20:50 �Ͱ�
22:30 ��ħ
==============================================================================================================

������������������� 2016.09.12(��) �۾� �������������������
---> 06:30 ~ 18:00  ==> ��ġ��(18��, ��迪, ������), �ȸ�, ������ �̻簡 ������

- �ٶ� �ڸ��� ������ ����ERP Prj[��]
- ��� ���� ����(������ �̻翡�� ���Ϸ� ������)
==============================================================================================================

- �α��ι��
01. ����
 1. ���� �׷����(SSO) Ȱ��: scm.fila.co.kr, http://172.16.41.114:10090
 2. ���� �α���- SSM: pssm.fila.co.kr(���� �� ssm.fila.co.kr)
 3. �α���-��������: mscm.fila.co.kr, http://172.16.41.114:10090/index_mscm.html
02. ������Ż
 1. �α���-������Ż: tpos.fila.co.kr(���� �� pos.fila.co.kr), http://172.16.41.114:11090
 2. �α���-��������: mpos.fila.co.kr	http://172.16.41.114:11090/index_mpos.html 
03. ���»�
 1. �α���-���»�: srm.fila.co.kr	http://172.16.41.114:12090
==============================================================================================================

- ���ѱ׷캰 ���α׷�����(/CM_AuthGrpPgAuth.xml)  --> ����
==============================================================================================================
 
- ��ǰ�̹��� ���̱� ó��
1. ����: SCM � ������ ���ο����� ����ϴ� ULR�� ��ϱ� ������ �ܺ� URL�� ���� �Ұ���
2. ��ġ: ��ǰ�̹��� ���⸦ ���� CM � ������ ������ �ϸ� SRM � ����(222.231.17.69)����
	  ��ǰ�̹��� ���̰� �������� SWA�� ó�����߹Ƿ� �����ϸ� �ϸ� ��.
-------------------------------------------------------------------------------------------------------

1. ��ǰ�̹��������ȸ(/CM_ProdImgListInqy.xml) ���� ��ȸ 
<!--// 01. ��ǰ�̹������ dataList(dlt_prodImgList) //-->
<w2:dataList id="dlt_prodImgListMain" baseNode="list" saveRemovedData="true" repeatNode="map">
	<w2:columnInfo>
		<w2:column id="chk" name="����" dataType="text" ignoreStatus="true"></w2:column> 
		<w2:column id="stylCd" name="��Ÿ���ڵ�" dataType="text"></w2:column>
		<w2:column id="fileFullNm" name="�̹���(���ϸ�) Ǯ URL" dataType="text"></w2:column>  
	</w2:columnInfo>
</w2:dataList>
 
scwin.doInit = function(){
	//$w.log("[/CM_ProdImgListInqy.xml] [doInit()] ==> [ȭ�� �ʱ�ȭ ����] [TEST_01]");
 
	var sHost = $(location).attr("host"); // ������
	
	if(cmCommon.isNull(sHost) == false && (sHost.indexOf("172.16.41.212") > -1 || sHost.indexOf("172.16.41.108") > -1 || sHost.indexOf("172.16.41.109") > -1   
				|| sHost.indexOf("scm.fila.co.kr") > -1))  // HOST�� � ���� �̸�
	{	
		$w.log("[/CM_ProdImgListInqy.xml] [doInit()] ==> [ȭ�� �ʱ�ȭ] [44. SCM � ���� �̸�] [sHost]"+ sHost ); 
		dma_requestData.set("scmFileDomain", "222.231.17.69");		// SCM � ���� ������  
	}
	$w.log("[/CM_ProdImgListInqy.xml] [doInit()] ==> [ȭ�� �ʱ�ȭ] [scmFileDomain]"+ dma_requestData.get("scmFileDomain") ); 
};   

<!--// 01. ��ǰ�̹��� ��� ��ȸ submission ����(sbm_searchProdImgList) ==> ref:������ DC, target:���� DC //-->
<xf:submission id="sbm_searchProdImgList" ref="data:json,dma_requestData" target="data:json,dlt_prodImgList"
	action="/cmProd/getProdImgList.do" method="post" mediatype="application/json" encoding="UTF-8" instance="" replace="" errorHandler=""
	customHandler="" mode="asynchronous" processMsg="" ev:submit="" doneMsg="true" ev:submitdone="scwin.sbm_searchProdImgList_submitdone"
	ev:submiterror="">
</xf:submission> 
 
<select id="selectProdImgList"  parameterType="HashMap"  resultType="HashMap">  
/* CmProdImgList_sqlmap.selectProdImgList AS ��ǰ�̹��� ��� ��ȸ */ 
.........
.......
		<choose>
		    <when test="scmFileDomain != null and scmFileDomain == '222.231.17.69'.toString()">
			SELECT ('http://222.231.17.69' || A.FILE_PH_NM || '/' || A.STRG_FL_NM) AS IMAGE_NM 		-- SCM � ���� ������
		    </when>  
		    <otherwise> 
					SELECT (A.FILE_PH_NM || '/' || A.STRG_FL_NM) AS IMAGE_NM		-- �Ϲ� ������
		    </otherwise> 
		</choose> 
				FROM CM_FILE A 		-- ���� TB       
				WHERE 1 = 1
					AND A.FILE_ID = C.IMG_FILE_ID 	-- �̹�������ID   
					AND ROWNUM <= 1
				) AS FILE_FULL_NM 		-- �̹������� Ǯ ��
		 
</select>

2. ��ǰ�̹��������ȸ(/CM_ProdImgListInqy.xml) ���� Display 
<!-- �׸���� -->  
<w2:gridView id="grd_prodImgList" autoFit="allColumn" autoFitMinWidth="1155" dataList="dlt_prodImgListMain"
	class="scm-grid auto-height" rowNumVisible="true" rowNumHeaderValue="No" rowStatusVisible="false" rowStatusHeaderValue="����"
	style="height:338px;" summary="" ev:oncellclick="scwin.grd_prodImgList_oncellclick" 
	ev:onbodymouseover="scwin.grd_prodImgList_onbodymouseover" ev:onmouseout="scwin.grd_prodImgList_onmouseout" 
	ev:onscrollend="scwin.grd_prodImgList_onscrollend">
	<w2:header>
		<w2:row style="height:20px;">
			<w2:column id="th1" inputType="checkbox" width="20" value="����" style="height:0px;"></w2:column> 	<!--// üũ�ڽ� //-->
			<w2:column id="th01" inputType="text" width="100" value="��Ÿ���ڵ�"></w2:column> 
			<w2:column id="th03" inputType="text" width="50" value="�̹���"></w2:column> 
		</w2:row>
	</w2:header>
	<w2:gBody>
		<w2:row style="height:20px;">
			<w2:column id="chk" inputType="checkbox" dataType="text" textAlign="center"></w2:column>	<!--// üũ�ڽ� //-->
			<w2:column id="stylCd" inputType="text" dataType="text" textAlign="center" readOnly="true"></w2:column>		<!--// ��Ÿ���ڵ� //--> 
			<w2:column id="fileFullNm" inputType="image" dataType="text" textAlign="center" imageWidth="20" imageHeight="20"
			style="padding:5px; border:1px solid #dadada;" imageSrc="" readOnly="true"></w2:column>  	<!--// �̹���(���ϸ�) //-->	 
			 
		</w2:row>
	</w2:gBody>
</w2:gridView>
<!-- //�׸���� -->  
==============================================================================================================
 
-- ���ѱ׷캰 �޴� ���� ����  @@@@@@@@@@@@@   
UPDATE CM_AUTH_GRP_MENU A 
SET SPCF_BTTN_ID_4_YN = 0          -- Ư����ư4����(��ư ����: :1���� 0���� ó��)
WHERE 1 = 1
    AND A.BUKRS = 'F100'    -- �����ڵ�   
    AND MENU_ID = 'CM1070'                     -- �޴� ID(CM2030: �Խ�����ȸ)   SR8020
  AND A.PG_ID = 'CM_AuthGrpPgAuth'    -- ���α׷�ID  
; 
==============================================================================================================

- ��ǰ�̹��� ���� �ٿ�ε� �ϱ�
1. ��ǰ�̹��������ȸ(/CM_ProdImgListInqy.xml) ���� ��ȸ 
cmCommon.downFilesAllProdImg(sBrndCd, sStylCd, sClrCd, sYyCd, sDwnldImgKdChedAll2, sUsrId);  // ��ǰ�̹��� ���� �ٿ�ε� �ϱ� �Լ� ȣ�� 

2. ��ǰ�̹��������ȸ(/cmCommon.js) ���� ��ȸ 
cmCommon.downFilesAllProdImg = function(sBrndCd, sStylCd, sClrCd, sYyCd, sDwnldImgKd, sUsrId) {
	 
	var pgId = parent.tac_main.getWindow(parent.tac_main.getSelectedTabIndex()).txb_programId.getValue(); 
	var datas = new Array();
 
	datas.push(sBrndCd);	// ��з�(�귣���ڵ�) 
	datas.push(sDwnldImgKd);	// �ٿ�ε� �̹��� ���� �ڵ�
	
	datas.push(pgId=='' ? "undefined":pgId);
	var dataStr = JSON.parse(JSON.stringify(datas));
 
	WebSquare.net.download("/cm/filedownAllProdIgm.do", dataStr, "post");   // ��ǰ �̹��� ÷������ �ٿ�ε� �Լ� ȣ��
};

3. ��ǰ�̹��������ȸ(/CmFileController.java) ���� ��ȸ 
@RequestMapping("/cm/filedownAllProdIgm.do")
public ModelAndView getFileDownLoadAllProdIm(@RequestParam("xmlValue") String xmlValue, HttpServletRequest request, SessionToken sessionToken) { 
	return this.downLoadFiles(list);	//÷������ �ٿ�ε� ����
} 
  
/**
 * ÷������ �ٿ�ε� ����
 */
private ModelAndView downLoadFiles(List<Map<String, Object>> list) { 
	ModelAndView mv = null;

	if(list.size() == 1)   // ÷������ �ٿ�ε尡 1�� �̸�
	{
		mv = new ModelAndView("fileDownloadView");		// FileDownloadView() �Լ� ȣ��
		mv.addObject(SINGLE_FILE_INFO, list.get(0));
	}
	 
	else	 // ÷������ �ٿ�ε尡 2�� �̻� �̸�(zip���� ���� �ٿ�ε�)
	{
		mv = new ModelAndView("zipFileDownloadView");		// zipFileDownloadView() �Լ� ȣ�� 
		String zipName = "zip_"+DateUtil.getDateLong()+".zip";

		//�Ķ��Ÿ����
		mv.addObject(ZIP_FILE_LIST, list);		// ���ϸ�� 
		mv.addObject(ZIP_FILE_NAME, zipName);	// ZIP���� �̸�
	} 
	return mv; 
}

public class FileDownloadView extends AbstractView implements FileDownload
{
	private static final Logger logger = Logger.getLogger(FileDownloadView.class);

	@Autowired
	private UploadFileUtil uploadFileUtil;

	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request, HttpServletResponse response) throws Exception 
	{ 
		@SuppressWarnings("unchecked")
		Map<String, Object> info = (Map<String, Object>)model.get(SINGLE_FILE_INFO);
		
		String originalFilename = (String)info.get(KEYNAME_ORG_FILENAME);
	  
		String filePath = (String)info.get(KEYNAME_FILE_PATH);
		String fileFullPath = uploadFileUtil.getUploadPath(filePath, (String)info.get(KEYNAME_SAVE_FILE));	// Root�� ������ ��ü��� ����  �Լ� ȣ��
	}
}

- /UploadFileUtil.java ���Ͽ���
/**
* Root�� ������ ��ü��� ����(+���ϸ�)
*/
public String getUploadPath(String filePath, String fileName) throws Exception{  
	filePath = getUploadPath(filePath);		// ROOT���� �ش� ���͸�

	if(null != filePath && !"".equals(filePath) && ((filePath.indexOf("/prodimg") > 0) && (filePath.indexOf("/image2/web") < 0))) {   // ��ǰ�̹��� ��ΰ� �����ϸ�
		filePath = (String)"/image2/web"+ filePath.toString();  // image ���� ��� ����(/image2/web �߰�) @@@
		logger.debug("\n\n[/UploadFileUtil.java] [getUploadPath()] @@@@@ ===> [��ǰ�̹��� ��ΰ� �����ϸ�] [filePath]"+ filePath );
	}   
	logger.debug("\n\n[/UploadFileUtil.java] [getUploadPath()] @@@@@ ===> [��ü �̹��� ��� Ȯ��(filePath)]"+ filePath );
 
	return getFileFullPath(filePath, fileName);	// ���ϸ� �߰��ؼ� Return
}

- /ZipFileDownloadView.java ���Ͽ���
@Override
protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request, HttpServletResponse response) throws Exception {
	/** 1. ZIP���� ������ ���� ���� ó�� **/
	@SuppressWarnings("unchecked")
	List<Map<String, Object>> fList = (List<Map<String, Object>>)model.get(ZIP_FILE_LIST);
	ServletOutputStream sos = response.getOutputStream();
	try {
		if(null != fList && fList.size() > 0) {
		this.isFiles(fList);
		byte[] zip = this.zipFiles(fList);	// ���ϵ��� zip���Ϸ� ����
		    response.setContentType("application/zip");
		    response.setHeader("Content-Disposition", "attachment; filename="+(String)model.get(ZIP_FILE_NAME));
		    sos.write(zip);
		    sos.flush();
		}
	}
	catch(Exception e)
	{
		logger.debug(e);
		logger.error("ZipFile �����߻� : {} "+e);     
	}
	finally {
	    if(null != sos) {
		try {sos.close();}catch(Exception e){logger.error(e);}
		sos = null;
	    }
	} 
}
	
/**
 * ���ϵ��� zip���Ϸ� ����
 */
private byte[] zipFiles(List<Map<String, Object>> fList) throws IOException {
	ByteArrayOutputStream baos = new ByteArrayOutputStream();
	ZipOutputStream zos = new ZipOutputStream(baos);
	byte bytes[] = new byte[1024];
	FileInputStream fis = null;
	BufferedInputStream bis = null;

	try {
		for (Map<String, Object> file : fList) {
			String filePath = (String)file.get(KEYNAME_FILE_PATH);
				String fullFilePath = uploadFileUtil.getUploadPath(filePath, (String)file.get(KEYNAME_SAVE_FILE));	// Root�� ������ ��ü��� ����  �Լ� ȣ��
				File f = new File(fullFilePath);
				
			fis = new FileInputStream(f);
		    bis = new BufferedInputStream(fis);
		    
		    String rename = this.makeFileName(fList, (String)file.get(KEYNAME_ORG_FILENAME), (String)file.get(KEYNAME_SAVE_FILE));
		    logger.debug("["+(String)file.get(KEYNAME_ORG_FILENAME)+"]>>>>> ["+rename+"]");
		    zos.putNextEntry(new ZipEntry(rename));	// �������ϸ� ����

		    int bytesRead;
		    while ((bytesRead = bis.read(bytes)) != -1) {
			zos.write(bytes, 0, bytesRead);
		    }
		    zos.closeEntry();
		    bis.close();
		    fis.close();
		}
		zos.flush();
		baos.flush();
		zos.close();
		baos.close();        
	}  
	return baos.toByteArray();
}
==============================================================================================================

[09/12] [���� ����] ���� ó���߽��ϴ�. --> DEFC-0000006297 --> �Ϸ� @@@@
1. ����: [�����ڵ����] TO-DO list ȭ���� ��� �ε� �� ���� ��� ����� �ڵ� �˻��ǰ� ó��
 ==> �躻��(TEST01)�� �α��� --> ���� �޴����� 34��(Ŭ��): To Do ����Ʈȭ�鿡�� 13�� ��ȸ�� 
					     --> To Do ����Ʈȭ�鿡�� ��û�Ⱓ(20150812 ~ 20160912)�� ��ȸ�ϸ� 34�� ��ȸ�� 
==============================================================================================================

- eclipse debug ����
1. [��Ŭ���� ��] �����(Debug) ��� Ȱ���ϱ�   ==> http://androphil.tistory.com/267
2. Eclipse Debug (�����) Ȱ�� ==> https://slipp.net/wiki/pages/viewpage.action?pageId=5177364
==============================================================================================================
 
������������������� 2016.09.13(ȭ) �۾� �������������������
---> 06:30 ~ 18:00  ==> ������ �̻簡 ������2

- �ٶ� �ڸ��� ������ ����ERP Prj[��]
- ���ѱ׷캰 ���α׷�����(/CM_AuthGrpPgAuth.xml)  --> ����
==============================================================================================================

- /CmUserMgmt_sqlmap.xml ���Ͽ���
1. ONSL_CERT_NO   --����������ȣ  ==> ����
==============================================================================================================

- ���� �α���- SSM
http://localhost:8081/websquare/websquareSSM.jsp?w2xPath=/wqui/cm/CM_LoginHdofSSM.xml
==============================================================================================================

������������������� 2016.09.14(��) �۾� �������������������
---> 09:00 ~ 20:00 ==> 1���� �� ���ֿ� 5.8 ���� �߻�(���� ���ϴ� ���� �ٴ� ������)

- �߼� ����1
04:00 ���
04:30 �� �غ�
05:00 īī�� �ý�(�翺, ����)
05:05 �����
05:30 ���� ����
06:01 KTX ���
08:15 ���׿� ����
08:30 �ý�(���׿� -> ������): 6,300��
08:30 �� ����
10:00 �߽�
13:00 ���̼� ������(���� �峲��: 3,00��) ==> �θ�� �뵷(20����)
15:00 ū���� �湮
16:00 ū���� �̿��(�̹�, �����̵� ���� ��)
17:30 ū���� �̿�� ���(�����̴� ���� �� Ÿ�� ��) 
17:40 �ý�(���糡 -> �强 �ʱ� ��ó): 6,000�� --> �翺�� ���� ��.
18:00 ����
18:05 ������Ұ��� ����(���װ� ����)
18:20 ��ö, ��ö, ����, ����, ��ǥ, �ֳ���(����, ��1��)
18:30 ����(��������) --> ����: ���� ��ǰ��(5����) ����
20:30 ���� 
20:40 �Ͱ�(��ö�� ��) ==> �翺 ���� Ÿ�� ��, ������ ��ӴϿ� �ۿ� ���ͼ� ��ٸ�.
20:50 �Ž� TV �ڵ� ������ ���峪�� �� ���� --> ��ȣ �� ��(�ڵ��� �̾��� ������ �� ��)  
23:00 ��ħ
==============================================================================================================

������������������� 2016.09.15(��) �۾� �������������������
---> 09:00 ~ 20:00 ==>

- �߼� 
08:30 ���
09:30 ���� ������ ==> ���� �ƹ��� ���� �����ؼ� ���� �� ���� ���� ���� ����, ���� �Ѻ� ����
	--> �翺 ������ �ϴٰ� �׸� ���� �հ��� 2���� �ǳ�
10:00 ����
10:20 ����(���ݸ� ����)
12:30 ����
15:00 ū������ ����(�ɰ氰�� ��)
15:30 â���̳� ����(����, ���ؿ��� ������ ��)
18:00 ����
19:00 â���̳� ���ư�
23:00 ��ħ
==============================================================================================================

������������������� 2016.09.16(��) �۾� �������������������
---> 09:00 ~ 20:00 ==>

- �߼� ����3
09:00 ���
10:30 ���� 
11:30 ū������ ���ư�(�ɰ濡�� 3���� ��) 
15:00 ū������ ���ƿ�
15:00 �����
15:50 �����(�� ���� ��)
16:30 ����(�����): ���� �� ���� �����Ǿ �� ���� 
17:00 �Ͱ�
17:10 ����--> �翺 ��ä ������µ� �丮 �� �ߴٰ� ��ӴϿ��� Ī�� ����
18:00 �����
18:30 ���׿�
21:30 ���￪
21:50 ���￪ -> �븲��
22:20 �Ͱ�(���� �߼� ���޿� �ݻ꿡�� ���� �湮)
00:00 ��ħ
==============================================================================================================

������������������� 2016.09.17(��) �۾� �������������������
---> 06:30 ~ 18:00  ==> �ָ� �ٹ�

- �ָ� 
08:10 ���(	��ͼ� �౸ �� ��) 
08:20 �븲�� -> ��迪
10:15 ���
06:40 ���� ����
12:00 �߽�(¥���, ������): LG CNS ����� ������ ��
12:20 ���� ���� 
20:10 ����(��[�ĸ�����Ʈ �����: 8õ��]): û���� ��
21:30 �Ͱ�
23:00 ��ħ
==============================================================================================================

- �ٶ� �ڸ��� ������ ����ERP Prj[��]
- ���� ���� ���� �׽�Ʈ
1. ���ѱ׷캰 ����ڵ��(/CM_AuthGrpMngm.xml)  --> �Ϸ� @@@
==============================================================================================================
 
������������������� 2016.09.18(��) �۾� �������������������
---> 07:40 ~ 18:10 ==> 
�� �����౸
05:50 ���
06:20 ������(����APT -> �븲���) 
06:40 �븲��� 
07:00 �ڰ��� ==> ��� ���� ��ũ ��(�� �ߴٰ� Ī�� ����)
08:00 ���� ==> 4������
10:10 ����
10:20 �߽�(��ġ���: ���� �Ĵ�, �� �ణ ��)  ==> ����ȸ���� ��
11:30 ����  
12:30 �Ͱ�(���� �ݻ����� ���ư�) 
13:00 ����
16:00 ���
16:40 TV��û 
19:40 ����
22:30 ��ħ
==============================================================================================================
 
������������������� 2016.09.19(��) �۾� �������������������
---> 06:30 ~ 21:00  ==> ���� ���� ���� ������ ��� ��

- �ٶ� �ڸ��� ������ ����ERP Prj[��]
- ���� ���� ���� �׽�Ʈ
1. ���ѱ׷캰 ����ڵ��(/CM_AuthGrpMngm.xml)  --> �Ϸ� @@@
==============================================================================================================

[09/10] [Ȯ�� ����] ���� ó���߽��ϴ�. --> DEFC-0000006112 --> ���� �� @@@@
1. ����: [�������������]   
  1) ���������� PC�� �Ѱ� �ۿ� ���� �ʱ� ������ ���� ���̵𺰷� ������ �ټ� �����ϴ�. 
	������ �����ڵ������ �� ������ �����մϴ�. 
	���¾�ü�� ���¾�ü���� �� ������ �����մϴ�.
	�������ڴ� ����ó�� ������� �� �����մϴ�. 

	�������ڴ� �̸� �Ǵ� ��� �� �ٷ� �Է� �˻� �Ҽ� �ֵ��� ��ȸ ���� ������ �ּ���.
	==> ����(��ü) �����ID, �μ�/����/���»�(11017)
==============================================================================================================

- ���� �α���- SSM ����  --> �Ϸ� @@@
http://172.16.41.114:15090/websquare/websquare.html?w2xPath=/wqui/cm/CM_LoginHdofSSM.xml
http://localhost:8084/websquare/websquare.html?w2xPath=/wqui/cm/CM_LoginHdofSSM.xml

1. ���� ��ġ: /FilaKoreaERP.SCMSystem/src/main/webapp/ssm/wqui/cm/CM_LoginHdofSSM.xml
(C:\FilaKoreaERP\workspace\FilaKoreaERP\FilaKoreaERP.SCMSystem\src\main\webapp\ssm\wqui
\cm\CM_LoginHdofSSM.xml)
==============================================================================================================
 
[09/19] [���� ����] ���� ó���߽��ϴ�. --> DEFC-0000006652 --> �Ϸ� @@@
1. ����: [�α���-����] SSM �α��� �߰� ���߹ٶ��ϴ�.
==============================================================================================================
 
[09/19] [���� ����] ���� ó���߽��ϴ�. --> DEFC-0000006674 --> �Ϸ� @@@
1. ����: [���α׷�����] GRID���� Ư����ưID-1,  Ư����ưID-2,  Ư����ưID-3,  Ư����ưID-4,  Ư����ưID-5 ������ �� 
==============================================================================================================
 
[09/19] [���� ����] ���� ó���߽��ϴ�. --> DEFC-0000006372 --> �Ϸ� @@@
1. ����: [����&���»� ����ڰ���] 1101701 ���̵�� ��ȸ ������ ��뿩�ΰ� N���� �Ǿ� ������ �α����� �ǰ� ����.
==============================================================================================================

[09/19] [���� ����] ���� ó���߽��ϴ�. --> DEFC-0000006372 -->  �����  @@@@
1. ����: [����ڰ���] ���� ������� ��� ����ڰ��� ȭ�鿡���� ��й�ȣ�� ���� �� �� ������ ���ƾ��� 
==============================================================================================================
  
������������������� 2016.09.20(ȭ) �۾� �������������������
---> 06:30 ~ 21:00  ==> 

- �ٶ� �ڸ��� ������ ����ERP Prj[��]
- ���� ���� ���� �׽�Ʈ
==============================================================================================================
 
[09/20] [���� ����] ���� ó���߽��ϴ�. --> DEFC-0000006652 --> �Ϸ� @@@
1. ����: [�α���-����] SSM �α��� �߰� ���߹ٶ��ϴ�.
==============================================================================================================

[09/20] [���� ����] ���� ó���߽��ϴ�. --> DEFC-0000006804 --> �Ϸ� @@@
1. ����: [���ѱ׷캰 ���α׷����� �ϰ����]
	1. �޴����� ���� �� ���α׷�ID/�� ��)�μ��� �Է��ϰ� ��ȸ�ϸ� �ش� ���α׷��� ��Ÿ���� �ʰ� ��ü�� ��Ÿ��
	2. ���ѿ� �Է��� �Ǿ�� ��(���α׷� ������ ���α׷� ������ ���� ��� �� ���ѱ׷캰�� �ϰ� ����ϴ� ����)
	3. Ư����ư������ �ڷ� ��Ÿ���� ����(��:���ѱ׷캰 ���α׷�����)
	4. �ݿ��� ���� �׷��� �޴�����Ʈ�� Ŭ���Ҷ����� ��ȸ�Ǵ°� �ƴ϶� ��ȸ�� Ŭ���Ҷ� 1���� ��ȸ�Ǹ� ��(�޴������� �ش�Ǵ� ���ѱ׷��̹Ƿ�)
==============================================================================================================
 
[09/20] [���� ����] ���� ó���߽��ϴ�. --> DEFC-0000006799 --> �Ϸ� @@@
1. ����: [���ѱ׷����α׷�����]
	1. ���α׷����� SQL Ȯ�� �ٶ�(���� �޴� ���·� ������ ���� �ߺ��ڷ� ��Ÿ��)
	   1-1 ��ȸ ���� Ŭ���ϰ� ��ũ���ϰ� �Ǹ� ȭ��� �������� �ڷᰡ 2�� 3������ ��Ÿ��(Ȳ���ﾾ�� ������ ��ʰ� �־����� ���ǹٶ�)
	2. ���ѱ׷� ���� �� ���α׷�����(CM_AUTH_GRP_MENU) �� �ڷᰡ ������ ���� ���ϰ�(�޽����� ���α׷����ѿ� �ڷᰡ �־� 
	������ �� �����ϴ�. ��������� N�� �����Ͻʽÿ�.)
	==> 
	2-1 �׷����� 
	3. �������� �� ����� ���� �߻� �޽��� �߻���. 
==============================================================================================================

[09/20] [���� ����] ���� ó���߽��ϴ�. --> DEFC-0000006813  --> �Ϸ� @@@
1. ����: [��������α׷�����] 
	0. ���α׷����� SQLȮ�� �ٶ�(��� ���Ѱ����� �޴�TREE �ڷ� �̻���)
	1. ����ڿ��� �ٸ� ����� Ŭ�� �� Ư����ư ���� ���� �ڷ� CLEAR ��ų��
	2. �ӵ� �����ϴ�. TUNNING�ٶ�
	3. ���α׷����ѿ��� ����ϴ� ���� Y/N �� ����(G�� ������ �ʰ� ó���� ��, G�� �׷쿡�� ���� ������(ȭ��󿡼� ó���ϴ� ��� ����ٶ�)
	==> G�� ������ �ʰ� ó��

	4. Ư����ư�� ������ �� �� ����(��: ���ѱ׷캰 ���α׷�����)
	 
	5. ��� ��ư�� �뵵�� �����ΰ���?
	==> ��� ����(�� �������� ������ ���忡�� ����� ó����)

	6. �����ư�� ���α׷����� �׸��� ��ܿ� �ִ� ������?
	==> ���� ��ư ��ȸ ��ư ������ �̵�

	7. ���Ѻ��� Ŭ�� �� ��Ÿ���� �˾� ������ ������ ��(�ϴ� ���� ����)
	   - TO. �����ID�� �˻��� �� �ְ� �� ��  ==> �ۺ��� �ʿ���.

	8. ����ں� ���α׷��߰�����-���Ѻ����� TITLE����ٶ�
	   �� ����ں� ���� ����� ����

	9. ����ں� ���α׷��߰�����-���Ѻ����� �˾����� �޴� ������ �����ǹ��ΰ�?
	==>  �޴� ���� ����

	10. TO. �����ID�� SQL Ȯ�� �ٶ�(���� �ǵ��� FROM �����ID�� ������ ��� ID ��)  
         ==>  
SELECT /* CmUsrPgAuth_sqlmap.selectToUsrList AS To. �����ID ��ȸ[���Ѻ��� ����� �˾�] */
	A.USR_ID AS USR_ID -- �����ID
	,A.USR_NM -- ����ڸ�       
	,'' AS BUKRS -- �����ڵ�  
	,A.STRUC_CD AS DEPT_CD -- �μ��ڵ�  
	,A.STRUC_NM AS DEPT_NM -- �μ���
	,'' AS MENU_TYPE_ID -- �޴�����
FROM VW_CM_USR_DEPT_SHOP_CSTR A
WHERE A.USR_ID <> 'TEST11011' /**P*/ -- FROM �����ID 
ORDER BY A.STRUC_CD
	,A.STRUC_NM 
 ; 
==============================================================================================================
  
������������������� 2016.09.21(��) �۾� �������������������
---> 06:30 ~ 22:50  ==> 

- �ٶ� �ڸ��� ������ ����ERP Prj[��]
- ���� ���� ���� �׽�Ʈ
==============================================================================================================

- [����Ŭ] ������ ���� --> http://www.gurubee.net/lecture/2223, http://m.blog.naver.com/javaking75/220010288704
1. ������ ���� ( connect by ) ==> http://www.underroom.com/318, http://joke00.tistory.com/89, http://www.gurubee.net/lecture/1300
SELECT LPAD(' ',(LEVEL-1)*2,' ') || ���� ����, ����, ���ӻ��
FROM ����
START WITH ���ӻ�� IS NULL
CONNECT BY PRIOR ���� = ���ӻ��		--> Prior�� ���� ���� �����ϴ� �� @@@
 
   ����      ����		���ӻ��	  LEVEL 
---------------------------------------		 	
����         ����          NULL		-- LEVEL1
  ����       ����		����		-- LEVEL2
    ����     ����          ����		-- LEVEL3
      ö��   �븮		����		-- LEVEL4
      �浿   �븮		����		-- LEVEL4
---------------------------------------------------------------------------------------------------

SELECT LEVEL, ID, SORT 
CONNECT BY PRIOR ID = SORT  ... (2) 
START WITH ID = 1  ... (1)    ---> ���� �߸��ϸ� �ߺ� ����Ÿ�� ���� @@@
Ʈ���˻��̶�� ���ε�... 
(1) ID ���� 1�� �ڷḦ ã�Ƽ� ����ϰ� 
(2) ��µ� ID ���� ���� SORT ���� ���� �ڷḦ ã�� ����ϴ� ���� �ݺ��ϰ� �˴ϴ�. 
�̿Ͱ��� LEVEL �� ���� ����� �ָ� �� �ڷ��� ���̸� �� ���� �ִµ� 
���� LEVEL �� ��ġ�ϴ� �ڷᰡ ID ������ ���ĵ��� ���� �� ���׿�. 
==============================================================================================================

-- ���α׷� ���� ��ȸ @@@
SELECT /* CmAuthGrpAuth_sqlmap.selectProgramAuthList AS ���α׷� ���� ��ȸ[���ѱ׷캰 ���α׷�����] */ ---> 635�� @@@@
            (
                SELECT DTL_NM
                FROM CM_CD_D
                WHERE BUKRS = 'F100'
                    AND JOB_GBN = 'CM'
                    AND CD = '0001'
                    AND DTL_CD = SUBSTR(MM2.MENU_ID, 0, 2)
                ) AS PG_FG --�����ڵ��
                
             ,LEVEL AS ���� 
             ,MM2.MENU_ID AS �޴�ID
             ,MM2.HRNK_MENU_ID  AS �θ�_�޴�ID  
             ,LPAD(' ', 2 * (LEVEL - 1)) || MM2.MENU_NM AS �޴���_DISP
         
            ,MM2.MENU_ID -- �޴�ID    
            ,MM2.MENU_NM AS MENU_NM
            ,MM2.MENU_NM_DISP AS MENU_NM_DISP -- �޴�/���α׷���
            ,MM2.PG_ID AS PG_ID -- ���α׷�ID
            ,DECODE(MM2.PG_ID, NULL, NULL, MM2.INQY_BTTN_YN) AS INQY_BTTN_YN
            ,DECODE(MM2.PG_ID, NULL, NULL, MM2.SAV_BTTN_YN) AS SAV_BTTN_YN
            ,DECODE(MM2.PG_ID, NULL, NULL, MM2.SPCF_BTTN_ID_1_YN) AS SPCF_BTTN_ID_1_YN
            ,DECODE(MM2.PG_ID, NULL, NULL, MM2.SPCF_BTTN_ID_2_YN) AS SPCF_BTTN_ID_2_YN
            ,DECODE(MM2.PG_ID, NULL, NULL, MM2.SPCF_BTTN_ID_3_YN) AS SPCF_BTTN_ID_3_YN
            ,DECODE(MM2.PG_ID, NULL, NULL, MM2.SPCF_BTTN_ID_4_YN) AS SPCF_BTTN_ID_4_YN
            ,DECODE(MM2.PG_ID, NULL, NULL, MM2.SPCF_BTTN_ID_5_YN) AS SPCF_BTTN_ID_5_YN
FROM (
	......
	)
WHERE 1 = 1
    AND MM2.HRNK_MENU_ID <> '00000' 
    --AND MM2.PG_ID = 'CM_CmmCdMngm' -- ���α׷�ID(�����ڵ����:CM_CmmCdMngm)
    START WITH MM2.PG_ID IS NULL						-- 1. LEVEL1 ���ϱ� ==> PG_ID IS NULL ��(�ֻ��� �θ�(LEVEL:1), ������������)�� �������� ����
    CONNECT BY PRIOR MM2.MENU_ID = MM2.HRNK_MENU_ID	-- 2. LEVEL2 ���ϱ� ==> HRNK_MENU_ID(CM1000)�� LEVEL1 
	�ڵ��� MENU_ID(CM1000)�� ���� MENU_ID ã��(�����ڵ����, �μ�����...) ���ϱ�
    ORDER SIBLINGS BY MM2.MENU_ID						-- 3. ���������� �״�� �����ϸ鼭 ���� �θ� ���� �ڽĵ鳢���� ���� ������ �ִ� ��
                                ,MM2.MENU_TYPE_ID
                                ,MM2.PG_ID
;
==============================================================================================================

- Grid ���� �����ͼ¿� �ִ� row �ε��� ��������
1. Grid�� ����
drilldownRealRowIndex="true"
2.
 1) ����: var focIdx = grd_programAuthList.getFocusedRowIndex();  
 2) ����: var focIdx = grd_programAuthList.getFocusedRowIndex();
var idx = grd_programAuthList.getRealRowIndex(focIdx); //���� �����ͼ¿� �ִ� row�ε����� �����´�. 
==============================================================================================================
 
[09/20] [���� ����] ���� ó���߽��ϴ�. --> DEFC-0000006807 --> �Ϸ�  @@@
1. ����: [���ѱ׷캰����ڰ���]
1. �����ID/�� ���� �Է����� �ʰ� ����� ��ȸ�� Ŭ���ϸ� �ϴܿ� ��ȸ�ǰ� ó���� ��(���� �����⸦ ���� ����� �����ϹǷ� )   
2. ���ѱ׷캰 ����� ��Ȳ���� ��� �ڷḦ �����Ͽ� ����� �����ϸ� {0} ���¿����� ������ �����մϴ�. ��� �޽��� ��Ÿ��.(����) 
3. ��� ��ư Ŭ�� �� �𷡽ð�(?) ǥ���� �� �뷮�� �ڷ� ��� �� ���α׷��� ����� ó�� ������  
4. �ϴ��� ����� ��� �����ϰ� �� Ŭ���ϸ� ������(��ܿ� �ִ� �ڷ�� �ϴܿ� �ִ� �ڷ� ������ ���� ��Ÿ��)  
5. ���ѱ׷쿡 SQL����ٶ�(����ڱ��� �߰�) 
�۾���\8500 SCM\8599 ��Ʈ�� �۾� ����\1000. ����AA\10. ���밳��SQL\015. ���Ѱ���_��������\���Ѽ�������_0825.sql ���� 0919 
�����κ� Ȯ�� �ٶ�) 
 CM_AUTH_GRP  ==>  USR_KD IS '����ڱ���'; 
==============================================================================================================

������������������� 2016.09.22(��) �۾� �������������������
---> 06:30 ~ 21:00  ==> ����(��¥��(3), ����(3): �ӱ���, ������, �̰���): û���� ��, ����ǥ�� ���(����� �̾߱� �� ��)

- �ٶ� �ڸ��� ������ ����ERP Prj[��]
- ���� ���� ���� �׽�Ʈ
1. ����ں� ���α׷��߰�����(/CM_UsrPgAuth.xml)  --> ����
==============================================================================================================

- MERGE ���� ����
1. ORACLE MERGE  ==> http://www.gurubee.net/lecture/2225
==============================================================================================================

- ��մܰ� ���(/SB_ClpyAgvCostCalc.xml) ���� ==> �Ϸ� @@@
1. Ȯ�� ��ҽ� --> Ȯ����� Ȯ��
==============================================================================================================

- ���� ���� �ٿ�ε� ���� ==> �Ϸ� @@@
- ���� ��մܰ� ���(/SB_ClpyAgvCostCalc.xml)	--> �Ϸ� @@@ 
- ���/�Ǹ� ��մܰ� �̵�� ��ȸ(/SB_AgvCostNoRegInqy.xml)	--> �Ϸ� @@@ 
- ���Ҹ����ݾ���ȸ(/SB_ClpyClsnAmtInqy.xml)	--> �Ϸ� @@@ 
- ���� ����(/SB_ClpyClsn.xml	--> �Ϸ� @@@ 
- ��Ÿ�� �Ⱓ ���Һ�(/SB_StylTermClpyInqy.xml)	--> �Ϸ� @@@ 
- ����/â�� �����Ȳ(/SB_ShopWrhsInqy.xml)	--> �Ϸ� @@@ 
- ���庰 �Ǹſ��� ��Ȳ(/SB_ShopSleCostInqy.xml)	--> �Ϸ� @@@  
==> Z:\8500 SCM\8599 ��Ʈ�� �۾� ����\8050.����\QUERY
==============================================================================================================

������������������� 2016.09.23(��) �۾� �������������������
---> 06:40 ~ 21:00  ==>  

- �ٶ� �ڸ��� ������ ����ERP Prj[��]
- ���� ���� ���� �׽�Ʈ
1. ���Ѻ���׷� �˾� ȭ��(CM_AuthCopyUsr_P01.xm) ����
 1) ���Ѻ��� ó��[���Ѻ��� ����� �˾�] ���ν��� ȣ�� ó��
	{ call /* CmAuthGrpAuth_sqlmap.callAuthCopyProd AS ���Ѻ��� ó��[���Ѻ��� ����� �˾�] ���ν��� */
					SP_CM_AUTH_GRP_USR_COPY(?,?,?,? ,?,?)} 
==============================================================================================================

- ����/â�� �����Ȳ(/SB_ShopWrhsInqy.xml) ==> �Ϸ� @@@
1. Grid�� ��� Į��(PBRND_CD) �߰�
==============================================================================================================

- ����Ŭ ���ν��� ���� 
http://www.gurubee.net/lecture/1041 
1. SQL �����Ͱ� �ƴ϶� PL/SQL ȭ�鿡��
==============================================================================================================

- PL/SQL Developer���� ���ν��� �׽�Ʈ
1. SQL �����Ϳ���
 1) SP_CM_AUTH_GRP_USR_COPY(���콺 �� Ŭ��) > Test(Ŭ��)

 begin
  -- Call the procedure
  sp_cm_auth_grp_usr_copy(p_bukrs => :p_bukrs,
                          p_from_usr_id => :p_from_usr_id,
                          p_to_usr_id => :p_to_usr_id,
                          p_input_id => :p_input_id,
                          o_err_cd => :o_err_cd,
                          o_err_msg => :o_err_msg);
end;
==> ����(F8)

2. TEST
 1) Value �Է�  --> ����(F8)
 2) o_err_msg ==> [�������� : SP_CM_AUTH_GRP_USR_COPY - [0] ORA-0000: normal, successful completion

- ���� �����
1. �극��ŷ ó��
==============================================================================================================

- Oracle DB ���� Toad �� ����Ͽ� Procedure ����� �ϱ�
http://mainia.tistory.com/778
--> Toad���� ����� ����Ű --> F7: trace into, F8: step over, F10: trace out
----------------------------------------------------------------------------------------

 -- ���Ѻ��� ó��[���Ѻ��� ����� �˾�] ���ν��� @@@@  ==> PROCEDURE
DECLARE 
  P_BUKRS CHAR(4);
  P_FROM_USR_ID VARCHAR2(30);
  P_TO_USR_ID VARCHAR2(30);
  P_INPUT_ID VARCHAR2(27);
  O_ERR_CD VARCHAR2(32767);
  O_ERR_MSG VARCHAR2(32767);

BEGIN 
  P_BUKRS := 'F100';			-- �����ڵ� @@@@ 
  P_FROM_USR_ID := 'TEST51';	-- FROM �����ID @@@@ 
  P_TO_USR_ID := 'TEST61';		-- �����ID @@@@ 
  P_INPUT_ID := 'TEST51';		-- �����ID   @@@@ 
  O_ERR_CD := NULL;
  O_ERR_MSG := NULL;

  SCMADM.SP_CM_AUTH_GRP_USR_COPY ( P_BUKRS, P_FROM_USR_ID, P_TO_USR_ID, P_INPUT_ID, O_ERR_CD, O_ERR_MSG );
  -- // ���Ѻ��� ó��[���Ѻ��� ����� �˾�] ���ν��� ȣ�� @@@

  COMMIT; 
END;
==============================================================================================================

[09/23] [���� ����] ���� ó���߽��ϴ�. --> DEFC-0000007027 --> �Ϸ�  @@@
1. ����: [To Do ����Ʈ ��ȸ] ���� ��� to-list ��ư Ŭ�� ��  ���� ������ �ִ� �޴��� ������� �ʽ��ϴ�.
==============================================================================================================

������������������� 2016.09.24(��) �۾� �������������������
---> 10:00 ~ 19:00  ==> �ָ� �ٹ�, ���� ����

- �ָ�  
06:00 ���
06:20 ������(����APT -> �븲���)
06:30 �븲���
06:30 ������
08:00 ����
08:30 ����(��ġ���, ������ �Ĵ�): �� ������ ��
09:00 �Ͱ� 
09:30 �븲�� -> ��迪
10:00 ���
10:10 �μ�/����/���»� ��ȸ ���� �߰�
12:00 �߽�(ȸ ����[����], ���̽Ĵ�): û���� ��
12:20 ���� ����
21:00 ����
21:10 �� ����(8,300��, �ĸ��ٰԶ� �����): û���� �� 
19:30 ����(������ũ, ������, ����, �δϷ�Ƽ, �Ÿ���(4�� �ⱸ) ��ó �Ĵ�) ==> ���� ����
20:30 ����(�Ÿ��� -> ���ε����д�����)
21:00 �̸�Ʈ(���� �峭�� ���ٰ� ����)
21:50 ���� ���� ���� ����(23,000��, �ĸ��ٰԶ� ������)
22:00 �Ͱ�
22:30 ���� ���� ��Ƽ
23:00 ��ħ
==============================================================================================================

- �ٶ� �ڸ��� ������ ����ERP Prj[��]
- ����ڰ���(/CM_AuthGrpMngm.xml)  ���� --> �Ϸ� @@@
1. �μ�/����/���»� ��ȸ ���� �߰�
==============================================================================================================

- ���ѱ׷캰 ����ڵ��(/CM_AuthGrpMngm.xml)  --> �Ϸ� @@@
1. ����� ORACLE MERGE ���� ==> �Ϲ� ������ ���� ó����
==============================================================================================================

������������������� 2016.09.25(��) �۾� �������������������
---> 07:40 ~ 18:10 ==> 

�� �����౸
07:00 ���
07:20 ������(����APT -> ��õ���: A����)
08:50 ��õ���(�߱��� �� ���) ���� 
09:00 16���� ����(�븲3�� 0:0 ���2��[�Ķ��� ������]) 
10:00 ��9ȸ �븲���𺴿� û�Ϲ� �౸��ȸ �����  --> �����(2��) ����(��� 20����)
10:30 ����
09:00 16���� �Ĺ�(�븲3�� 3:1 ���2��[�Ķ��� ������])
	--> ���� ���� �԰� ���� ��
14:00 8����(�븲3�� 1:0 �ű�3��[�������� ��� �ٹ��� ������]) --> ��� ���� ���ؼ� ���� ����, �ܿ� �̱�, ���� �ö󰡼� ��
14:50 �߽�(���������� ������ �غ���)
14:00 4����(�븲3�� 2:5 �ű�7��[�������� ��� �ٹ��� ������]) --> ü�� �������� �Ĺݿ� �� ���� ����
	--> �ž��� �� ���ο��ϴٰ� ��� ����: ���� ����
14:00 4����(�븲2�� 3:4 �糲[������ ������]) --> 10�� ������� ������ PK �� ������
16:00 ����(������ Ÿ�� ��)
17:00 �ټ� �Ĵ�(����) --> ȸ���� ��
20:00 �ּ��� �� �湮(�ŵ����� ��ó) --> ������ �Ƶ鿡�� ���� ��
22:30 ����
22:50 �Ͱ�
22:30 ��ħ
==============================================================================================================

- ������ ��Ȱ ü�� ����ȸ �м�
01. �븲1��(������ ������): ����
02. �븲2��(��ȣ, ��� ������): ����, ������ �پ
03. �븲3��(�Ķ���, ������ ������): ����, ����̿� ��ȣ�� ���� ���񿡼� �� ����

04. ���1��
05. ���2��(�Ķ��� ������): ����
06. ���3��(������ ������): ����

07. �ű�1��(��� ������, ���� ������): ����, �ܱ���(�����), ����
08. �ű�3�� 
09. �ű�4��
10. �ű�5�� 
11. �ű�6��(������ ������): ����, �츮���� ���� ������
12. �ű�7��(���� ���ٹ��� ������): ����, �۳� �����

13. ����1��(������ ���ٹ���): ����
14. ����2��
15. ����3��

16. ������1��
17. ������2��
  
18. ����1��
19. ����2��

20. �糲(������ ������): ����, ���� �����, 10���� ������� ���� ���
21. ��ȣ(�Ķ� ������): ����
22. �ű�(���������): ����, ������ �پ
23. ����
24. ����(��� ������): ����, �����ʱ�, ����� ����.
25. ����(��� ������): ����
==============================================================================================================

������������������� 2016.09.26(��) �۾� �������������������
---> 06:45 ~ 18:30  ==> ������ �̻簡 DB�� �ҽ� ��鼭 ���� ��ü�� ����(�������� ������ ����)

- �ٶ� �ڸ��� ������ ����ERP Prj[��]
- ���� ����
==============================================================================================================

- REGEXP_LIKE ����
1. ����:
<if test="@kr.co.fila.common.util.MyBatisUtils@isNotEmpty(usrNmSrch)">
	AND ( REGEXP_LIKE(A.USR_ID, #{usrNmSrch, jdbcType=VARCHAR}, 'ix')			-- �����ID(�����ID/��)
		OR REGEXP_LIKE(A.USR_NM, #{usrNmSrch, jdbcType=VARCHAR}, 'ix')			 
	)
</if> 

2. ����:  
 <if test="@kr.co.fila.common.util.MyBatisUtils@isNotEmpty(usrNmSrch)">
	AND (A.USR_ID LIKE TRIM(#{p_usrNm}) || '%'					-- �����ID/�� ��ȸ 
		OR A.USR_NM LIKE TRIM(#{p_usrNm}) || '%')
</if>  

 <if test="@kr.co.fila.common.util.MyBatisUtils@isNotEmpty(usrIdSrch)">
	AND A.USR_ID LIKE TRIM(#{usrIdSrch}) || '%'		-- �����ID  
</if>  
<if test="@kr.co.fila.common.util.MyBatisUtils@isNotEmpty(usrNmSrch)">
	AND A.USR_NM LIKE TRIM(#{usrNmSrch}) || '%'		-- ����ڸ�  
</if>
==============================================================================================================

������������������� 2016.09.27(ȭ) �۾� ������������������� 
---> 06:30 ~ 21:00  ==> ����ǥ�Կ��� ���� �߼�(�Ե��鼼�� ���� ����), ������ �ް� ������ ���̻�� �浹

- �ٶ� �ڸ��� ������ ����ERP Prj[��]
- �귣�� ���� ����
1. ��ǥ �귣�� ���� �귣�忡 �߰� 
<!--// 01. ih_select_commcd �귣�� ��ȸ UDC ó��: brndSelAllYn="Y"  //-->	OK @@@ 
<!--// 02. ih_select_commcd_m �귣�� ��ȸ UDC ó��(Multi ������Ʈ): brndSelAllYn="Y"   //-->	OK @@@
<!--// 03. ih_select_commcd_atc �귣�� ��ȸ UDC ó��(AutoComplete): brndSelAllYn="Y"  //-->	OK @@@
<!--// 01. ih_select_commBrnd �귣�� ��ȸ UDC ó�� //-->	 OK @@@
<!--// 02. ih_select_commBrnd_m �귣�� ��ȸ UDC ó��(Multi ������Ʈ) //-->   OK @@@
<!--// 03. ih_select_commBrnd_atc �귣�� ��ȸ UDC ó��(AutoComplete) //-->   OK @@@
==============================================================================================================

- ���α׷��� �귣����� ����(/CM_PgUsrBrnd.xml)  --> ����
1. BrndLmtPgId  --> ibx_brndLmtPgId
==============================================================================================================

- ���� �й� ���(/SA_ShopDstrGrd.xml)
1. ���� ó��: /ih_commCode.xml ���Ͽ��� syncYn="false" ����
<w2:ih_select_commcd_atc id="sbx_brndCd" grpCd="001" jobGbn="PN" appearance="minimal" 
	direction="auto" disabled="false" disabledClass="w2selectbox_disabled" allOption="false" chooseOption="false" chooseOptionLabel=""   
	displayMode="label" displayType="1" mandatory="true" syncYn="false"
	optionOrder="false" style="width:130px;" userData1="data" submenuSize="auto">
</w2:ih_select_commcd_atc> 
==============================================================================================================

- ��ü�ֹ� �� ����Ƿ�(/SA_GrpOrdOreq.xml)	
1. ���� ó��: /ih_commCode.xml ���Ͽ��� syncYn="false" ����
<w2:ih_select_commBrnd_atc allOption="" appearance="minimal" chooseOption="false" chooseOptionLabel="-����-"
	direction="auto" disabled="false" displayMode="label" displayType="1" ev:onviewchange="scwin.component_onviewchange" id="sbx_brndCd"
	invalidMessageFunc="cmCommon.invalidMessage('�귣��')" mandatory="true" ref="data:dma_request.srchBrndCd" style="width:130px;"
	submenuSize="auto" syncYn="false">
</w2:ih_select_commBrnd_atc> 
==============================================================================================================

/**
* ���ѱ׷� ����� ó��  
*/
scwin.btn_authGrpGridRowRemove_onclick = function() {
	//$w.log("[/CM_AuthGrpPgAuth.xml] [btn_authGrpGridRowRemove_onclick()] ==> [���ѱ׷� ����� ó��] [TEST_01]" );
	
	var cRow = grd_authGrpList.getFocusedRowIndex();		//������
	var authGrpCnt = dlt_authGrpList.getCellData(cRow, "authGrpCnt" );		//�޴�������Ī : �⺻������ ������� ǥ��
	var useYn = dlt_authGrpList.getCellData(cRow, "useYn" );	//��뿩�� 
 
	if(authGrpCnt > 0 && useYn == "Y") { 	//���ѱ׷��� �����ϸ�
		alert("���α׷����ѿ� �ڷᰡ �־� ������ �� �����ϴ�. ��������� N�� �����Ͻʽÿ�. "); 
		return false;
	}
	
	if(grd_authGrpList.getTotalRow() > 0) { 	//�ű����� �ƴϸ�  
		if ("C" == grd_authGrpList.getFocusedRowStatus()) { //�ű��� ����  
		}				
		
		cmCommon.delRow(grd_authGrpList, "");
		
		//row���� �̺�Ʈ
		scwin.grd_authGrpList_onrowindexchange(grd_authGrpList.getFocusedRowIndex(),-1);
	}  
};
==============================================================================================================
 
������������������� 2016.09.28(��) �۾� �������������������
---> 06:30 ~ 21:00  ==>  

- �ٶ� �ڸ��� ������ ����ERP Prj[��]
- ���ѱ׷캰 ���α׷�����(/CM_AuthGrpPgAuth.xml) ����
1. ���� �κ� ����(üũ�� �͸� ���� ó��)
==============================================================================================================

- �������� ���� �˾� ȭ��(/CM_IndiInfrChng_P.xml) ����
1. KSignSecureDB ��ȣȭ �м� 
2. ���� ������ �� PW_RST_YN = ��N�� ���� Ȯ�� �ϰ� Ȱ��ȭ ��ų 
==============================================================================================================

- ���� �귣�� ���� ���� --> �Ϸ� @@@@
1. select box �귣�� ��ȸ ����
 1) ���� ��ǥ �귣�带 ����Ʈ�� ����
 2) ��ü �귣�� ��ȸ�϶��� brndSelAllYn="Y" �� ����
 --> �귣����ü��ȸ����(brndSelAllYn): N:����� �귣�� ��ȸ(D), Y:��ü �귣�� ��ȸ)   
 3) ���α׷�/����ں� �귣������ ó��
 4) ��������(CM:����, CS:��, PN:��ȹ, PO:����, PP:����, SA:����, SB:����, SM:��������, SP:������Ż, SR:���¾�ü, EI:������, WM:����) 
==============================================================================================================

[09/28] [���� ����] ���� ó���߽��ϴ�. --> DEFC-0000007051 --> �Ϸ� @@@@
1. ����: [TO-DO ����Ǽ� ��ȸ] To-do List�� ���� ����� ���� �ǿ� ���� Ȯ�������� Ȯ���� �� �־����� ��
==============================================================================================================

- ��й�ȣ üũ ���Խ�
http://blog.naver.com/PostView.nhn?blogId=0131v&logNo=110116184746

/**
 * ��й�ȣ ���Խ� ��ȿ�� ���� 
 * @param sValue - üũ �� ��
 * 		  type - üũ ����
 * 				 01: ����, Ư������(2����), 02: 02. ����, ����(2����), 03: ����, Ư������(2����), 04: ����, Ư������, ����(3����)
 * @return  : 0(����) / 1(������)
 */
cmCommon.pwCheckRegChar = function(sValue, type){
	//$w.log("[/cmCommon.js] [pwCheckRegChar()] ==> [��й�ȣ ���Խ� ��ȿ�� ����] [TEST_01] [sValue]"+ sValue );
	
cmCommon.pwCheckRegChar = function(sValue, type){
	//$w.log("[/cmCommon.js] [pwCheckRegChar()] ==> [��й�ȣ ���Խ� ��ȿ�� ����] [TEST_01] [sValue]"+ sValue );
	
	var nRtnVal = 0;   
	var check21 = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-]).{10,16}$/; 	// 01. ����, Ư������(2����) 10 ~ 16�ڸ�
	var check22 = /^(?=.*[��-?])(?=.*[!@#$%^*+=-]).{10,16}$/; 		// 02. �ѱ�, Ư������(2����) 10 ~ 16�ڸ�  
	var check31 = /^(?=.*[a-zA-Z])(?=.*[0-9]).{10,16}$/; 			// 03. ����, ����(2����) 10 ~ 16�ڸ�
	var check32 = /^(?=.*[��-?])(?=.*[0-9]).{10,16}$/; 			// 04. �ѱ�, ����(2����) 10 ~ 16�ڸ� 
	var check41 = /^(?=.*[a-zA-Z])(?=.*[0-9]).{10,16}$/; 			// 05. ����, Ư������(2����) 10 ~ 16�ڸ� 
	var check51 = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}$/;  		// 06. ����, Ư������, ����(3����) 8 ~ 16�ڸ� 
	var check61 = /^(?=.*[��-?])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}$/;  		// 07. �ѱ�, Ư������, ����(3����) 8 ~ 16�ڸ�  
	//$w.log("[/cmCommon.js] [pwCheckRegChar()] ==> [��й�ȣ ���Խ� ��ȿ�� ����_üũ] [00. sValue]"+ sValue +"[type]"+ type );
  
	 switch(type){
		case "01" :		// 01. ����, Ư������(2����)
			if(!sValue.match(check21)){		// ���Խ� ���� ����[01. ����, Ư������(2����)] �̸�
				nRtnVal =  1;
			}
	 		break;
		case "02" :		// 02. �ѱ�, Ư������(2����)
			if(!sValue.match(check22)){ 	// ���Խ� ���� ����[02. �ѱ�, Ư������(2����)] �̸�
				nRtnVal =  1;
		    }
		    break;
		case "03" :		// 03. ����, Ư������(2����)
			if(!sValue.match(check31)){ 	// ���Խ� ���� ����[03. ����, Ư������(2����)] �̸�
				nRtnVal =  1;
			}
			break;
		case "04" :		// 04. �ѱ�, ����(2����)
			if(!sValue.match(check32)){ 	// ���Խ� ���� ����[04. �ѱ�, ����(2����)] �̸�
				nRtnVal =  1;
			}
			break;
		case "05" :		// 05. ����, Ư������(2����)
			if(!sValue.match(check41)){		// ���Խ� ���� ����[05. ����, Ư������(2����)] �̸�
				nRtnVal =  1;
			}
	 		break;
		case "06" :		// 06. ����, Ư������, ����(3����)
			if(!sValue.match(check51)){ 	// ���Խ� ���� ����[06. ����, Ư������, ����(3����)] �̸�
				nRtnVal =  1;
		    }
		    break;
		case "07" :		// 07. �ѱ�, Ư������, ����(3����)
			if(!sValue.match(check61)){ 	// ���Խ� ���� ����[07. �ѱ�, Ư������, ����(3����)] �̸�
				nRtnVal =  1;
		    }
		    break;
	} 
	$w.log("[/cmCommon.js] [pwCheckRegChar()] ==> [��й�ȣ ���Խ� ��ȿ�� ����_üũ] [00. sValue]"+ sValue 
	+"[sValue.length]"+ sValue.length +"[type]"+ type +"[nRtnVal]"+ nRtnVal );
	
	return nRtnVal;
};

/**
* Ȯ�� ��ư Ŭ�� �̺�Ʈ(���� ó��)
*/
scwin.btn_save_onclick = function() {
	if(cmCommon.isNull(ibx_newPw.getValue()) == false && cmCommon.isNull(ibx_newPwCnfm.getValue()) == false) {	
	// �� ��й�ȣ�� �� ��й�ȣ Ȯ���� NULL�� �ƴϸ�
		var nPwCheckRegChar1 = cmCommon.pwCheckRegChar(sNewPwCnfm, "01"); 	// 01. ����, Ư������(2����) 10 ~ 16�ڸ� üũ
		var nPwCheckRegChar2 = cmCommon.pwCheckRegChar(sNewPwCnfm, "02"); 	// 02. �ѱ�, Ư������(2����) 10 ~ 16�ڸ� üũ
		var nPwCheckRegChar3 = cmCommon.pwCheckRegChar(sNewPwCnfm, "03"); 	// 03. ����, ����(2����) 10 ~ 16�ڸ� üũ
		var nPwCheckRegChar4 = cmCommon.pwCheckRegChar(sNewPwCnfm, "04"); 	// 04. �ѱ�, ����(2����) 10 ~ 16�ڸ� üũ 
		var nPwCheckRegChar5 = cmCommon.pwCheckRegChar(sNewPwCnfm, "05"); 	// 05. ����, Ư������(2����) 10 ~ 16�ڸ� üũ
		var nPwCheckRegChar6 = cmCommon.pwCheckRegChar(sNewPwCnfm, "06"); 	// 06. ����, Ư������, ����(3����) 8 ~ 16�ڸ� üũ
		var nPwCheckRegChar7 = cmCommon.pwCheckRegChar(sNewPwCnfm, "07"); 	// 07. �ѱ�, Ư������, ����(3����) 8 ~ 16�ڸ� üũ 
		var nPwCheckRegCharTot = nPwCheckRegChar1 + nPwCheckRegChar2 + nPwCheckRegChar3 + nPwCheckRegChar4
								+ nPwCheckRegChar5 + nPwCheckRegChar6 + nPwCheckRegChar7; 
		$w.log("[/CM_MblCertMngm.xml] [btn_save_onclick()] ==> [Ȯ�� ��ư Ŭ�� �̺�Ʈ] [sNewPwCnfm]"+ sNewPwCnfm
		+"[nPwCheckRegCharTot]"+ nPwCheckRegCharTot );

		if(nPwCheckRegCharTot > 6) // ��й�ȣ ���Խ� ��ȿ�� ���� ��� 7�� ��� �����̸�
		{
			alert("����, ����, Ư������ �� 2���� �����Ͽ� 10~16�ڸ�(3������ 8~16�ڸ�)�� �����Ͻʽÿ�."); 
			ibx_newPw.focus();	// �� ��й�ȣ ��Ŀ�� ���� 
			return false;  
		}  
	}
	if(confirm(cmCommon.formattingMessage(FILAErpMessage.INF_0006, "����"))){  	
	// ���� confirm ==> INF_0006: "{0} �Ͻðڽ��ϱ�?", 
		cmCommon.saveExecuteSbm("sbm_saveIndiInf", true); 
	}
};
==============================================================================================================
 
������������������� 2016.09.29(��) �۾� �������������������
---> 06:30 ~ 21:00  ==> ������ ���忡�� ��Ʈ�� SSD 256G �߰� ��û(�����ֿ� �ù�� �����شٰ� ��)

- �ٶ� �ڸ��� ������ ����ERP Prj[��] 
- �������� ���� �˾� ȭ��(/CM_IndiInfrChng_P.xml) ����
1. KSignSecureDB ��ȣȭ �м� 
2. ���� ������ �� PW_RST_YN = ��N�� ���� Ȯ�� �ϰ� Ȱ��ȭ ��ų 
3. ��й�ȣ ���Խ� üũ TEST @@@ 
TESTaa����!@		--- 01. ����, Ư������(2����)
TESTaa����222		--- 02. ����, ����(2����)
4444444332!@		--- 03. ����, Ư������(2����) 
TESTaa����102!@	--- 04. ����, Ư������, ����(3����)
TESTaa����ta		--- No 
==============================================================================================================
 
- DB ��ȣȭ(Mybatis)
http://huskdoll.tistory.com/192
==============================================================================================================

- Character Functions (������ �Լ�)
http://www.gurubee.net/lecture/1025
==============================================================================================================

- NVL2 �Լ�
1. NVL2 (A, B, C): A���� NULL �ƴϸ� B, NULL �̸� C���̱�
http://jinuws.tistory.com/entry/NVL-NVL2-%ED%95%A8%EC%88%98
==============================================================================================================

[09/29] [Ȯ�� ����] ���� ó���߽��ϴ�. --> DEFC-0000006515  --> �Ϸ� @@@@
1. ����: [������������]  
2. �ǰ�
  1) SSO�� �����Ǳ⿡ ��й�ȣ�� ���渦 ���⼭ �� �ʿ䰡 ������ �մϴ�  
   ==> ���� ������ �̻�԰� ���� ����ڿ� ���ǰ� ���� ���� ������ �˰� �ֽ��ϴ�.

   2) ���� ������� ��й�ȣ�� ������ �ʿ䰡 �������?
   ==> ���� ������� ��й�ȣ ����ŷ ó�� �߽��ϴ�.[�Ϸ�]

   3) ��ǥ�귣��� �Ϻ� �귣�尡 �ȶ�ϴ�. 
   ==> ��ǥ�귣�� ������̽� ������ �̻�Բ� ������ ��� ����ں� �귣�� ���̺�(CM_USR_BRND)���� �Ϻ� �귣���ڵ忡 
	�귣����� �� ������ ���� �ִٰ� �մϴ�.	
==============================================================================================================
 
[09/29] [���� ����] ���� ó���߽��ϴ�. --> DEFC-0000006515  --> �Ϸ� @@@@
1. ����: [���α׷�����] �׸����� Ư����ư�̹��� ���� selectbox���� �ѱ� �� �Է� �� �ڵ� �ϼ� �ǵ���
==============================================================================================================

[09/29] [���� ����] ���� ó���߽��ϴ�. --> DEFC-0000007360  --> �Ϸ� @@@@
1. ����: [To Do ����Ʈ ] ��û ������ ��ϸ� ���;���
==============================================================================================================
 
[09/29] [Ȯ�� ����] ���� ó���߽��ϴ�. --> DEFC-0000007364  --> �Ϸ� @@@@
1. ����: [To Do ����Ʈ] ���� �޴��� TO-DO�� ī��Ʈ�� 31�ε� ��ȸ �� 31�� �ƴ� ==>
��ȸ�ÿ��� ��û�Ⱓ�� ��ȸ���ǿ� ���ԵǾ� ��ȸ ����� �ٸ� �� �ֽ��ϴ�. --> �׷��� �̻��� �����ø� To Do ����Ʈ ȭ���� ĸ���ؼ�
�ٽ� �÷��ּ���.
==============================================================================================================

[09/29] [���� ����] ���� ó���߽��ϴ�. --> DEFC-0000007359 --> �Ϸ� @@@@
1. ����: [�����������Ȳ] ����ڸ����ε� �˻� �����ϰ� �˻� ���� �߰�
==============================================================================================================
 
[09/29] [���� ����] ���� ó���߽��ϴ�. --> DEFC-0000007349 --> �Ϸ� @@@@
1. ����: [����ں� ���α׷��߰�����] ���� �׸��� �μ� -> �μ�/�����/���»��
==============================================================================================================
 
[09/29] [���� ����] ���� ó���߽��ϴ�. --> DEFC-0000007409 --> �Ϸ� @@@@
1. ����: [����ں� ���α׷��߰�����] �����ID �Է��� 'TAB', 'Enter' Ű ������ �� �����. �����ID �Է��� �˾��˻� ������ �� ���� �ȵ�.
==============================================================================================================
  
������������������� 2016.09.30(��) �۾� �������������������
---> 06:30 ~ 21:00  ==> 

- �ٶ� �ڸ��� ������ ����ERP Prj[��]
[09/30] [���� ����] ���� ó���߽��ϴ�. --> DEFC-0000007351 --> �Ϸ� @@@@
1. ����: [����ں� ���α׷��߰�����] ���� Y�� ���� �� ������ �Ǵµ� �ٽ� N���� �����Ͽ� �����ϸ� ���� �ȵ�
==============================================================================================================

- ���� ��մܰ� ���(/SB_ClpyAgvCostCalc.xml) ����
1. ���� Ʃ��(DBA���� ��������)
==============================================================================================================

[09/30] [���� ����] ���� ó���߽��ϴ�. --> DEFC-0000007433 --> �Ϸ� @@@@
1. ����: [��ǰ�̹����ٿ�ε���ȸ] �ٿ�ε� ���� �̹����� �������� �ĸ��������� �˼��� ����.
	===> �̹������� Į�� �߰� �߽��ϴ�.
==============================================================================================================

[09/30] [���� ����] ���� ó���߽��ϴ�. --> DEFC-0000007434 --> �Ϸ� @@@@
1. ����: [��ǰ�̹����ٿ�ε���ȸ] �ٿ�ε� �� �˾����� �̹��� Ŭ���� �ƹ��͵� �ȳ����� ����
==============================================================================================================
    
[09/30] [���� ����] ���� ó���߽��ϴ�. --> DEFC-0000007436 --> �Ϸ� @@@@
1. ����: [��ǰ�̹����ٿ�ε���ȸ] �� �˾����� �̹����� �۾� ������ �ȵ�. ���콺 �÷����� ū �̹����� �������� ����
	===> �̹����� ���콺�� Ŭ�� ���� �� ū �̹����� �������� ���� �߽��ϴ�.
==============================================================================================================

[09/30] [Ȯ�� ����] Ȯ�� ó���߽��ϴ�. --> DEFC-0000007426 --> �Ϸ� @@@@
1. ����: [��ǰ�̹��������ȸ] �׸����� ���� ��ư Ŭ�� �� �̹����� ���� alert �� ==> ��з�(�귣���ڵ�)��
���� ���ε�� ���� ��θ� �����ϹǷ� ��з�(�귣���ڵ�)�� ������ ���ε尡 �Ұ�[�ʼ�]�ϰ� ó�� �߽��ϴ�
���� ���� ���: /image/prodimg/2016/1100/F1CDY0002/F1CDY0002_GPK/F1CDY0002_GPK_01.jpg
--> 1100(FILA: ��з�(�귣���ڵ�))
==============================================================================================================

[09/30] [���� ����] ���� ó���߽��ϴ�. --> DEFC-0000007435 --> �Ϸ� @@@@
1. ����: [��ǰ�̹��������ȸ] �̹����� �۾� ������ �ȵ�.  ���콺 �÷����� ū �̹����� �������� ���� 
	===> ���������� �̹��� ���ε�� �̹����� ���콺 �÷����� ū �̹����� �������� ���� �߽��ϴ�.
==============================================================================================================
 
[09/30] [���� ����] ���� ó���߽��ϴ�. --> DEFC-0000007423 --> �Ϸ� @@@@
1. ����: [��ǰ�̹��������ȸ] �̹����� ���� ��ȸ ������ �ְ� �˻� �� ��ǰ ��ȸ�� �ȵ�
	===> ���߼���, ��������� ���� ��ȸ�Ǵ� �� Ȯ�� �߽��ϴ�.  
==============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������